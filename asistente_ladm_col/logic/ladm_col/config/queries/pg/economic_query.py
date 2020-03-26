from asistente_ladm_col.logic.ladm_col.config.queries.pg.pg_queries_config_utils import (get_custom_filter_parcels,
                                                                                         get_custom_filter_plots)


def get_igac_economic_query(schema, plot_t_ids, parcel_fmi, parcel_number, previous_parcel_number):
    custom_filter_plots = get_custom_filter_plots(schema, plot_t_ids)
    custom_filter_parcels = get_custom_filter_parcels(schema, plot_t_ids)

    query = """
            WITH
             unidad_avaluo_predio AS (
                 SELECT ' [' || setting || ']' FROM {schema}.t_ili2db_column_prop WHERE tablename LIKE 'op_predio' AND columnname LIKE 'avaluo_predio' LIMIT 1
             ),
             unidad_avaluo_terreno AS (
                 SELECT ' [' || setting || ']' FROM {schema}.t_ili2db_column_prop WHERE tablename = 'op_terreno' AND columnname = 'avaluo_terreno' LIMIT 1
             ),
             unidad_area_terreno AS (
                 SELECT ' [' || setting || ']' FROM {schema}.t_ili2db_column_prop WHERE tablename = 'op_terreno' AND columnname = 'area_terreno' LIMIT 1
             ),
             unidad_avaluo_construccion AS (
                 SELECT ' [' || setting || ']' FROM {schema}.t_ili2db_column_prop WHERE tablename = 'op_construccion' AND columnname = 'avaluo_construccion' LIMIT 1
             ),
             unidad_area_construida_uc AS (
                 SELECT ' [' || setting || ']' FROM {schema}.t_ili2db_column_prop WHERE tablename = 'op_unidadconstruccion' AND columnname = 'area_construida' LIMIT 1
             ),
             unidad_avaluo_uc AS (
                 SELECT ' [' || setting || ']' FROM {schema}.t_ili2db_column_prop WHERE tablename = 'op_unidadconstruccion' AND columnname = 'avaluo_unidad_construccion' LIMIT 1
             ),
             unidad_valor_m2_construccion_u_c AS (
                 SELECT ' [' || setting || ']' FROM {schema}.t_ili2db_column_prop WHERE tablename = 'av_unidad_construccion' AND columnname = 'valor_m2_construccion' LIMIT 1
             ),
             terrenos_seleccionados AS (
                {custom_filter_plots}
                SELECT col_uebaunit.ue_op_terreno FROM {schema}.op_predio LEFT JOIN {schema}.col_uebaunit ON op_predio.t_id = col_uebaunit.baunit  WHERE col_uebaunit.ue_op_terreno IS NOT NULL AND CASE WHEN '{parcel_fmi}' = 'NULL' THEN  1 = 2 ELSE (op_predio.codigo_orip || '-'|| op_predio.matricula_inmobiliaria) = '{parcel_fmi}' END
                    UNION
                SELECT col_uebaunit.ue_op_terreno FROM {schema}.op_predio LEFT JOIN {schema}.col_uebaunit ON op_predio.t_id = col_uebaunit.baunit  WHERE col_uebaunit.ue_op_terreno IS NOT NULL AND CASE WHEN '{parcel_number}' = 'NULL' THEN  1 = 2 ELSE op_predio.numero_predial = '{parcel_number}' END
                    UNION
                SELECT col_uebaunit.ue_op_terreno FROM {schema}.op_predio LEFT JOIN {schema}.col_uebaunit ON op_predio.t_id = col_uebaunit.baunit  WHERE col_uebaunit.ue_op_terreno IS NOT NULL AND CASE WHEN '{previous_parcel_number}' = 'NULL' THEN  1 = 2 ELSE op_predio.numero_predial_anterior = '{previous_parcel_number}' END
             ),
             predios_seleccionados AS (
                {custom_filter_parcels}
                SELECT t_id FROM {schema}.op_predio WHERE CASE WHEN '{parcel_fmi}' = 'NULL' THEN  1 = 2 ELSE (op_predio.codigo_orip || '-'|| op_predio.matricula_inmobiliaria) = '{parcel_fmi}' END
                    UNION
                SELECT t_id FROM {schema}.op_predio WHERE CASE WHEN '{parcel_number}' = 'NULL' THEN  1 = 2 ELSE op_predio.numero_predial = '{parcel_number}' END
                    UNION
                SELECT t_id FROM {schema}.op_predio WHERE CASE WHEN '{previous_parcel_number}' = 'NULL' THEN  1 = 2 ELSE op_predio.numero_predial_anterior = '{previous_parcel_number}' END
             ),
             construcciones_seleccionadas AS (
                 SELECT ue_op_construccion FROM {schema}.col_uebaunit WHERE col_uebaunit.baunit IN (SELECT predios_seleccionados.t_id FROM predios_seleccionados WHERE predios_seleccionados.t_id IS NOT NULL) AND ue_op_construccion IS NOT NULL
             ),
             unidadesconstruccion_seleccionadas AS (
                 SELECT op_unidadconstruccion.t_id FROM {schema}.op_unidadconstruccion WHERE op_unidadconstruccion.op_construccion IN (SELECT ue_op_construccion FROM construcciones_seleccionadas)
             ),
             info_uc AS (
                 SELECT op_unidadconstruccion.op_construccion,
                        json_agg(json_build_object('id', op_unidadconstruccion.t_id,
                                          'attributes', json_build_object(CONCAT('Avalúo' , (SELECT * FROM unidad_avaluo_uc)), op_unidadconstruccion.avaluo_construccion
                                                                          , CONCAT('Área construida' , (SELECT * FROM unidad_area_construida_uc)), op_unidadconstruccion.area_construida
                                                                          , CONCAT('Área privada construida' , (SELECT * FROM unidad_area_construida_uc)), op_unidadconstruccion.area_privada_construida
                                                                          , 'Número de pisos', op_unidadconstruccion.total_pisos
                                                                          , 'Ubicación en el piso', op_unidadconstruccion.planta_ubicacion
                                                                          , 'Uso',  (SELECT dispname FROM {schema}.op_usouconstipo WHERE t_id = op_unidadconstruccion.uso)
                                                                          , 'Año construcción',  op_unidadconstruccion.anio_construccion
                                                                         )) ORDER BY op_unidadconstruccion.t_id) FILTER(WHERE op_unidadconstruccion.t_id IS NOT NULL)  as op_unidadconstruccion
                 FROM {schema}.op_unidadconstruccion
                 WHERE op_unidadconstruccion.t_id IN (SELECT * FROM unidadesconstruccion_seleccionadas)
                 GROUP BY op_unidadconstruccion.op_construccion
             ),
             info_construccion as (
                 SELECT col_uebaunit.baunit,
                        json_agg(json_build_object('id', op_construccion.t_id,
                                          'attributes', json_build_object(CONCAT('Avalúo' , (SELECT * FROM unidad_avaluo_construccion)), op_construccion.avaluo_construccion,
                                                                          'Área construcción', op_construccion.area_construccion,
                                                                          'op_unidadconstruccion', COALESCE(info_uc.op_unidadconstruccion, '[]')
                                                                         )) ORDER BY op_construccion.t_id) FILTER(WHERE op_construccion.t_id IS NOT NULL) as op_construccion
                 FROM {schema}.op_construccion
                 LEFT JOIN info_uc ON op_construccion.t_id = info_uc.op_construccion
                 LEFT JOIN {schema}.col_uebaunit ON col_uebaunit.ue_op_construccion = op_construccion.t_id
                 WHERE op_construccion.t_id IN (SELECT * FROM construcciones_seleccionadas)
                 GROUP BY col_uebaunit.baunit
             ),
            info_predio AS (
                 SELECT col_uebaunit.ue_op_terreno,
                        json_agg(json_build_object('id', op_predio.t_id,
                                          'attributes', json_build_object('Nombre', op_predio.nombre,
                                                                          'Departamento', op_predio.departamento,
                                                                          'Municipio', op_predio.municipio,
                                                                          'NUPRE', op_predio.nupre,
                                                                          'FMI', (op_predio.codigo_orip || '-'|| op_predio.matricula_inmobiliaria),
                                                                          'Número predial', op_predio.numero_predial,
                                                                          'Número predial anterior', op_predio.numero_predial_anterior,
                                                                          CONCAT('Avalúo predio' , (select * from unidad_avaluo_predio)), op_predio.avaluo_predio,
                                                                          'Tipo', (SELECT dispname FROM {schema}.op_prediotipo WHERE t_id = op_predio.tipo),
                                                                          'op_construccion', COALESCE(info_construccion.op_construccion, '[]')
                                                                         )) ORDER BY op_predio.t_id) FILTER(WHERE op_predio.t_id IS NOT NULL) as op_predio
                 FROM {schema}.op_predio LEFT JOIN {schema}.col_uebaunit ON col_uebaunit.baunit = op_predio.t_id
                 LEFT JOIN info_construccion ON op_predio.t_id = info_construccion.baunit
                 	 WHERE op_predio.t_id IN (SELECT * FROM predios_seleccionados)
                     AND col_uebaunit.ue_op_terreno IS NOT NULL
                     AND col_uebaunit.ue_op_construccion IS NULL
                     AND col_uebaunit.ue_op_unidadconstruccion IS NULL
                     GROUP BY col_uebaunit.ue_op_terreno
                 ),
                 info_terreno AS (
                    SELECT op_terreno.t_id,
                      json_build_object('id', op_terreno.t_id,
                                        'attributes', json_build_object(CONCAT('Avalúo', (SELECT * FROM unidad_avaluo_terreno)), op_terreno.Avaluo_Terreno
                                                                        , CONCAT('Área' , (SELECT * FROM unidad_area_terreno)), op_terreno.area_terreno
                                                                        , 'op_predio', COALESCE(info_predio.op_predio, '[]')
                                                                       )) as terreno
                    FROM {schema}.op_terreno LEFT JOIN info_predio ON info_predio.ue_op_terreno = op_terreno.t_id
                    WHERE op_terreno.t_id IN (SELECT * FROM terrenos_seleccionados)
                    ORDER BY op_terreno.t_id
                 )
                SELECT json_build_object('op_terreno', json_agg(info_terreno.terreno)) FROM info_terreno
    """

    query = query.format(schema= schema, custom_filter_plots=custom_filter_plots, custom_filter_parcels=custom_filter_parcels, parcel_fmi=parcel_fmi, parcel_number=parcel_number, previous_parcel_number=previous_parcel_number)

    return query
