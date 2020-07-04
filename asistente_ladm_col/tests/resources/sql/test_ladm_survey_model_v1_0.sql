PGDMP          9    
            x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) �   &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            &           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false                        2615    582059    test_ladm_survey_model    SCHEMA     &   CREATE SCHEMA test_ladm_survey_model;
 $   DROP SCHEMA test_ladm_survey_model;
             postgres    false            �           1259    582060    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_ladm_survey_model.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE test_ladm_survey_model.t_ili2db_seq;
       test_ladm_survey_model       postgres    false    15            �           1259    582096    cc_metodooperacion    TABLE     [  CREATE TABLE test_ladm_survey_model.cc_metodooperacion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    formula character varying(255) NOT NULL,
    dimensiones_origen integer,
    ddimensiones_objetivo integer,
    col_transformacion_transformacion bigint,
    CONSTRAINT cc_metodooperacion_ddimensiones_objetivo_check CHECK (((ddimensiones_objetivo >= 0) AND (ddimensiones_objetivo <= 999999999))),
    CONSTRAINT cc_metodooperacion_dimensiones_origen_check CHECK (((dimensiones_origen >= 0) AND (dimensiones_origen <= 999999999)))
);
 6   DROP TABLE test_ladm_survey_model.cc_metodooperacion;
       test_ladm_survey_model         postgres    false    409    15            &           0    0    TABLE cc_metodooperacion    COMMENT       COMMENT ON TABLE test_ladm_survey_model.cc_metodooperacion IS 'Estructura que proviene de la traducción de la clase CC_OperationMethod de la ISO 19111. Indica el método utilizado, mediante un algoritmo o un procedimiento, para realizar operaciones con coordenadas.';
            test_ladm_survey_model       postgres    false    414            &           0    0 !   COLUMN cc_metodooperacion.formula    COMMENT     {  COMMENT ON COLUMN test_ladm_survey_model.cc_metodooperacion.formula IS 'Fórmulas o procedimientos utilizadoa por este método de operación de coordenadas. Esto puede ser una referencia a una publicación. Tenga en cuenta que el método de operación puede no ser analítico, en cuyo caso este atributo hace referencia o contiene el procedimiento, no una fórmula analítica.';
            test_ladm_survey_model       postgres    false    414            &           0    0 ,   COLUMN cc_metodooperacion.dimensiones_origen    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.cc_metodooperacion.dimensiones_origen IS 'Número de dimensiones en la fuente CRS de este método de operación de coordenadas.';
            test_ladm_survey_model       postgres    false    414            	&           0    0 /   COLUMN cc_metodooperacion.ddimensiones_objetivo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.cc_metodooperacion.ddimensiones_objetivo IS 'Número de dimensiones en el CRS de destino de este método de operación de coordenadas.';
            test_ladm_survey_model       postgres    false    414            
&           0    0 ;   COLUMN cc_metodooperacion.col_transformacion_transformacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.cc_metodooperacion.col_transformacion_transformacion IS 'Fórmula o procedimiento utilizado en la transformación.';
            test_ladm_survey_model       postgres    false    414                       1259    583334    ci_forma_presentacion_codigo    TABLE     �  CREATE TABLE test_ladm_survey_model.ci_forma_presentacion_codigo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_survey_model.ci_forma_presentacion_codigo;
       test_ladm_survey_model         postgres    false    409    15            9           1259    583622    col_areatipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_areatipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_survey_model.col_areatipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582103    col_areavalor    TABLE     �  CREATE TABLE test_ladm_survey_model.col_areavalor (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    tipo bigint NOT NULL,
    area numeric(15,1) NOT NULL,
    datos_proyeccion text,
    lc_construccion_area bigint,
    lc_terreno_area bigint,
    lc_servidumbretransito_area bigint,
    lc_unidadconstruccion_area bigint,
    CONSTRAINT col_areavalor_area_check CHECK (((area >= 0.0) AND (area <= 99999999999999.9)))
);
 1   DROP TABLE test_ladm_survey_model.col_areavalor;
       test_ladm_survey_model         postgres    false    409    15            &           0    0    COLUMN col_areavalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_areavalor.tipo IS 'Indica si el valor a registrar corresponde al área gráfica o alfanumérica de la base de datos catastral.';
            test_ladm_survey_model       postgres    false    415            &           0    0    COLUMN col_areavalor.area    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_areavalor.area IS 'Corresponde al valor del área registrada en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    415            &           0    0 %   COLUMN col_areavalor.datos_proyeccion    COMMENT     P  COMMENT ON COLUMN test_ladm_survey_model.col_areavalor.datos_proyeccion IS 'Parametros de la proyección utilizada para el cálculo del área de la forma proj, ejemplo: ''EPSG:3116'', ''+proj=tmerc +lat_0=4.59620041666667 +lon_0=-74.0775079166667 +k=1 +x_0=1000000 +y_0=1000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs''';
            test_ladm_survey_model       postgres    false    415            &           0    0 )   COLUMN col_areavalor.lc_construccion_area    COMMENT     ~   COMMENT ON COLUMN test_ladm_survey_model.col_areavalor.lc_construccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_survey_model       postgres    false    415            &           0    0 $   COLUMN col_areavalor.lc_terreno_area    COMMENT     y   COMMENT ON COLUMN test_ladm_survey_model.col_areavalor.lc_terreno_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_survey_model       postgres    false    415            &           0    0 0   COLUMN col_areavalor.lc_servidumbretransito_area    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_areavalor.lc_servidumbretransito_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_survey_model       postgres    false    415            &           0    0 /   COLUMN col_areavalor.lc_unidadconstruccion_area    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_areavalor.lc_unidadconstruccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_survey_model       postgres    false    415            �           1259    582372    col_baunitcomointeresado    TABLE     3  CREATE TABLE test_ladm_survey_model.col_baunitcomointeresado (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint NOT NULL
);
 <   DROP TABLE test_ladm_survey_model.col_baunitcomointeresado;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582281    col_baunitfuente    TABLE     �   CREATE TABLE test_ladm_survey_model.col_baunitfuente (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    unidad bigint NOT NULL
);
 4   DROP TABLE test_ladm_survey_model.col_baunitfuente;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582296    col_cclfuente    TABLE     �   CREATE TABLE test_ladm_survey_model.col_cclfuente (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl bigint NOT NULL,
    fuente_espacial bigint NOT NULL
);
 1   DROP TABLE test_ladm_survey_model.col_cclfuente;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582336    col_clfuente    TABLE     �   CREATE TABLE test_ladm_survey_model.col_clfuente (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 0   DROP TABLE test_ladm_survey_model.col_clfuente;
       test_ladm_survey_model         postgres    false    409    15                       1259    583280    col_contenidoniveltipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_contenidoniveltipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_survey_model.col_contenidoniveltipo;
       test_ladm_survey_model         postgres    false    409    15            )           1259    583478    col_dimensiontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_dimensiontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_survey_model.col_dimensiontipo;
       test_ladm_survey_model         postgres    false    409    15                       1259    583145    col_estadodisponibilidadtipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_estadodisponibilidadtipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_survey_model.col_estadodisponibilidadtipo;
       test_ladm_survey_model         postgres    false    409    15            &           1259    583451    col_estadoredserviciostipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_estadoredserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_survey_model.col_estadoredserviciostipo;
       test_ladm_survey_model         postgres    false    409    15            =           1259    583658    col_estructuratipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_estructuratipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_survey_model.col_estructuratipo;
       test_ladm_survey_model         postgres    false    409    15                       1259    583325    col_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_survey_model.col_fuenteadministrativatipo;
       test_ladm_survey_model         postgres    false    409    15                        1259    583109    col_fuenteespacialtipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_fuenteespacialtipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_survey_model.col_fuenteespacialtipo;
       test_ladm_survey_model         postgres    false    409    15            +           1259    583496    col_grupointeresadotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_grupointeresadotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_survey_model.col_grupointeresadotipo;
       test_ladm_survey_model         postgres    false    409    15                       1259    583244    col_interpolaciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_interpolaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_survey_model.col_interpolaciontipo;
       test_ladm_survey_model         postgres    false    409    15            3           1259    583568    col_iso19125_tipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_iso19125_tipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_survey_model.col_iso19125_tipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582315 
   col_masccl    TABLE     e  CREATE TABLE test_ladm_survey_model.col_masccl (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_mas bigint NOT NULL,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint,
    ue_mas_lc_construccion bigint
);
 .   DROP TABLE test_ladm_survey_model.col_masccl;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582353 	   col_mascl    TABLE     G  CREATE TABLE test_ladm_survey_model.col_mascl (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint,
    ue_mas_lc_construccion bigint
);
 -   DROP TABLE test_ladm_survey_model.col_mascl;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582304    col_menosccl    TABLE     q  CREATE TABLE test_ladm_survey_model.col_menosccl (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_menos bigint NOT NULL,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint,
    ue_menos_lc_construccion bigint
);
 0   DROP TABLE test_ladm_survey_model.col_menosccl;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582343    col_menoscl    TABLE     Q  CREATE TABLE test_ladm_survey_model.col_menoscl (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint,
    ue_menos_lc_construccion bigint
);
 /   DROP TABLE test_ladm_survey_model.col_menoscl;
       test_ladm_survey_model         postgres    false    409    15                       1259    583289    col_metodoproducciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_metodoproducciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_survey_model.col_metodoproducciontipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582399    col_miembros    TABLE     +  CREATE TABLE test_ladm_survey_model.col_miembros (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    agrupacion bigint NOT NULL
);
 0   DROP TABLE test_ladm_survey_model.col_miembros;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582326    col_puntoccl    TABLE     ;  CREATE TABLE test_ladm_survey_model.col_puntoccl (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint,
    ccl bigint NOT NULL
);
 0   DROP TABLE test_ladm_survey_model.col_puntoccl;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582363    col_puntocl    TABLE     !  CREATE TABLE test_ladm_survey_model.col_puntocl (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint
);
 /   DROP TABLE test_ladm_survey_model.col_puntocl;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582260    col_puntofuente    TABLE     J  CREATE TABLE test_ladm_survey_model.col_puntofuente (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint
);
 3   DROP TABLE test_ladm_survey_model.col_puntofuente;
       test_ladm_survey_model         postgres    false    409    15            :           1259    583631    col_puntotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_survey_model.col_puntotipo;
       test_ladm_survey_model         postgres    false    409    15            -           1259    583514    col_redserviciostipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_redserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_survey_model.col_redserviciostipo;
       test_ladm_survey_model         postgres    false    409    15            #           1259    583424    col_registrotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_registrotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_survey_model.col_registrotipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582245    col_relacionfuente    TABLE     �   CREATE TABLE test_ladm_survey_model.col_relacionfuente (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL
);
 6   DROP TABLE test_ladm_survey_model.col_relacionfuente;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582289    col_relacionfuenteuespacial    TABLE     �   CREATE TABLE test_ladm_survey_model.col_relacionfuenteuespacial (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 ?   DROP TABLE test_ladm_survey_model.col_relacionfuenteuespacial;
       test_ladm_survey_model         postgres    false    409    15            2           1259    583559    col_relacionsuperficietipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_relacionsuperficietipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_survey_model.col_relacionsuperficietipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582381    col_responsablefuente    TABLE     ?  CREATE TABLE test_ladm_survey_model.col_responsablefuente (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint
);
 9   DROP TABLE test_ladm_survey_model.col_responsablefuente;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582225    col_rrrfuente    TABLE       CREATE TABLE test_ladm_survey_model.col_rrrfuente (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    rrr_lc_restriccion bigint,
    rrr_lc_derecho bigint
);
 1   DROP TABLE test_ladm_survey_model.col_rrrfuente;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582390    col_topografofuente    TABLE     5  CREATE TABLE test_ladm_survey_model.col_topografofuente (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    topografo_lc_interesado bigint,
    topografo_lc_agrupacioninteresados bigint
);
 7   DROP TABLE test_ladm_survey_model.col_topografofuente;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582146    col_transformacion    TABLE     �  CREATE TABLE test_ladm_survey_model.col_transformacion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    localizacion_transformada public.geometry(PointZ,38820) NOT NULL,
    lc_puntocontrol_transformacion_y_resultado bigint,
    lc_puntolindero_transformacion_y_resultado bigint,
    lc_puntolevantamiento_transformacion_y_resultado bigint
);
 6   DROP TABLE test_ladm_survey_model.col_transformacion;
       test_ladm_survey_model         postgres    false    409    15            &           0    0    TABLE col_transformacion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.col_transformacion IS 'Registro de la fórmula o procedimiento utilizado en la transformación y de su resultado.';
            test_ladm_survey_model       postgres    false    418            &           0    0 3   COLUMN col_transformacion.localizacion_transformada    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_transformacion.localizacion_transformada IS 'Geometría una vez realizado el proceso de transformación.';
            test_ladm_survey_model       postgres    false    418            &           0    0 D   COLUMN col_transformacion.lc_puntocontrol_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_transformacion.lc_puntocontrol_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_survey_model       postgres    false    418            &           0    0 D   COLUMN col_transformacion.lc_puntolindero_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_transformacion.lc_puntolindero_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_survey_model       postgres    false    418            &           0    0 J   COLUMN col_transformacion.lc_puntolevantamiento_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_transformacion.lc_puntolevantamiento_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_survey_model       postgres    false    418            �           1259    582234    col_uebaunit    TABLE     V  CREATE TABLE test_ladm_survey_model.col_uebaunit (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    baunit bigint NOT NULL
);
 0   DROP TABLE test_ladm_survey_model.col_uebaunit;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582270    col_uefuente    TABLE     _  CREATE TABLE test_ladm_survey_model.col_uefuente (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    fuente_espacial bigint NOT NULL
);
 0   DROP TABLE test_ladm_survey_model.col_uefuente;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582215    col_ueuegrupo    TABLE     G  CREATE TABLE test_ladm_survey_model.col_ueuegrupo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    parte_lc_terreno bigint,
    parte_lc_servidumbretransito bigint,
    parte_lc_unidadconstruccion bigint,
    parte_lc_construccion bigint
);
 1   DROP TABLE test_ladm_survey_model.col_ueuegrupo;
       test_ladm_survey_model         postgres    false    409    15                       1259    583343 "   col_unidadadministrativabasicatipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_unidadadministrativabasicatipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_ladm_survey_model.col_unidadadministrativabasicatipo;
       test_ladm_survey_model         postgres    false    409    15            	           1259    583190    col_unidadedificaciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_unidadedificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_survey_model.col_unidadedificaciontipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582252    col_unidadfuente    TABLE       CREATE TABLE test_ladm_survey_model.col_unidadfuente (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    unidad bigint NOT NULL
);
 4   DROP TABLE test_ladm_survey_model.col_unidadfuente;
       test_ladm_survey_model         postgres    false    409    15            %           1259    583442    col_volumentipo    TABLE     �  CREATE TABLE test_ladm_survey_model.col_volumentipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_survey_model.col_volumentipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582204    col_volumenvalor    TABLE       CREATE TABLE test_ladm_survey_model.col_volumenvalor (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    volumen_medicion numeric(15,1) NOT NULL,
    tipo bigint NOT NULL,
    lc_construccion_volumen bigint,
    lc_terreno_volumen bigint,
    lc_servidumbretransito_volumen bigint,
    lc_unidadconstruccion_volumen bigint,
    CONSTRAINT col_volumenvalor_volumen_medicion_check CHECK (((volumen_medicion >= 0.0) AND (volumen_medicion <= 99999999999999.9)))
);
 4   DROP TABLE test_ladm_survey_model.col_volumenvalor;
       test_ladm_survey_model         postgres    false    409    15            &           0    0    TABLE col_volumenvalor    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.col_volumenvalor IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar la medición de un volumen y la naturaleza de este.';
            test_ladm_survey_model       postgres    false    424            &           0    0 (   COLUMN col_volumenvalor.volumen_medicion    COMMENT     n   COMMENT ON COLUMN test_ladm_survey_model.col_volumenvalor.volumen_medicion IS 'Medición del volumen en m3.';
            test_ladm_survey_model       postgres    false    424            &           0    0    COLUMN col_volumenvalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_volumenvalor.tipo IS 'Indicación de si el volumen es calculado, si figura como oficial o si se da otra circunstancia.';
            test_ladm_survey_model       postgres    false    424            &           0    0 /   COLUMN col_volumenvalor.lc_construccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_volumenvalor.lc_construccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_survey_model       postgres    false    424            &           0    0 *   COLUMN col_volumenvalor.lc_terreno_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_volumenvalor.lc_terreno_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_survey_model       postgres    false    424            &           0    0 6   COLUMN col_volumenvalor.lc_servidumbretransito_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_volumenvalor.lc_servidumbretransito_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_survey_model       postgres    false    424            &           0    0 5   COLUMN col_volumenvalor.lc_unidadconstruccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.col_volumenvalor.lc_unidadconstruccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_survey_model       postgres    false    424            �           1259    582192 
   extarchivo    TABLE       CREATE TABLE test_ladm_survey_model.extarchivo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    fecha_aceptacion date,
    datos character varying(255),
    extraccion date,
    fecha_grabacion date,
    fecha_entrega date,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    snr_fuentecabidalndros_archivo bigint,
    lc_fuenteadministrtiva_ext_archivo_id bigint,
    lc_fuenteespacial_ext_archivo_id bigint
);
 .   DROP TABLE test_ladm_survey_model.extarchivo;
       test_ladm_survey_model         postgres    false    409    15            &           0    0    TABLE extarchivo    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
            test_ladm_survey_model       postgres    false    423            &           0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     z   COMMENT ON COLUMN test_ladm_survey_model.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
            test_ladm_survey_model       postgres    false    423             &           0    0    COLUMN extarchivo.datos    COMMENT     a   COMMENT ON COLUMN test_ladm_survey_model.extarchivo.datos IS 'Datos que contiene el documento.';
            test_ladm_survey_model       postgres    false    423            !&           0    0    COLUMN extarchivo.extraccion    COMMENT     q   COMMENT ON COLUMN test_ladm_survey_model.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
            test_ladm_survey_model       postgres    false    423            "&           0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
            test_ladm_survey_model       postgres    false    423            #&           0    0    COLUMN extarchivo.fecha_entrega    COMMENT     t   COMMENT ON COLUMN test_ladm_survey_model.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
            test_ladm_survey_model       postgres    false    423            $&           0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_survey_model       postgres    false    423            %&           0    0 7   COLUMN extarchivo.lc_fuenteadministrtiva_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extarchivo.lc_fuenteadministrtiva_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_survey_model       postgres    false    423            &&           0    0 2   COLUMN extarchivo.lc_fuenteespacial_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extarchivo.lc_fuenteespacial_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_survey_model       postgres    false    423            �           1259    582117    extdireccion    TABLE       CREATE TABLE test_ladm_survey_model.extdireccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    tipo_direccion bigint NOT NULL,
    es_direccion_principal boolean,
    localizacion public.geometry(PointZ,38820),
    codigo_postal character varying(255),
    clase_via_principal bigint,
    valor_via_principal character varying(100),
    letra_via_principal character varying(20),
    sector_ciudad bigint,
    valor_via_generadora character varying(100),
    letra_via_generadora character varying(20),
    numero_predio character varying(20),
    sector_predio bigint,
    complemento character varying(255),
    nombre_predio character varying(255),
    extunidadedificcnfsica_ext_direccion_id bigint,
    extinteresado_ext_direccion_id bigint,
    lc_construccion_ext_direccion_id bigint,
    lc_predio_direccion bigint,
    lc_terreno_ext_direccion_id bigint,
    lc_servidumbretransito_ext_direccion_id bigint,
    lc_unidadconstruccion_ext_direccion_id bigint
);
 0   DROP TABLE test_ladm_survey_model.extdireccion;
       test_ladm_survey_model         postgres    false    409    15            '&           0    0    TABLE extdireccion    COMMENT     v   COMMENT ON TABLE test_ladm_survey_model.extdireccion IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_survey_model       postgres    false    416            (&           0    0     COLUMN extdireccion.localizacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extdireccion.localizacion IS 'Par de valores georreferenciados (x,y) en la que se encuentra la dirección.';
            test_ladm_survey_model       postgres    false    416            )&           0    0 2   COLUMN extdireccion.extinteresado_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extdireccion.extinteresado_ext_direccion_id IS 'Identificador externo del interesado.';
            test_ladm_survey_model       postgres    false    416            *&           0    0 4   COLUMN extdireccion.lc_construccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extdireccion.lc_construccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_survey_model       postgres    false    416            +&           0    0 '   COLUMN extdireccion.lc_predio_direccion    COMMENT     g   COMMENT ON COLUMN test_ladm_survey_model.extdireccion.lc_predio_direccion IS 'Dirección del predio.';
            test_ladm_survey_model       postgres    false    416            ,&           0    0 /   COLUMN extdireccion.lc_terreno_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extdireccion.lc_terreno_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_survey_model       postgres    false    416            -&           0    0 ;   COLUMN extdireccion.lc_servidumbretransito_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extdireccion.lc_servidumbretransito_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_survey_model       postgres    false    416            .&           0    0 :   COLUMN extdireccion.lc_unidadconstruccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extdireccion.lc_unidadconstruccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_survey_model       postgres    false    416            /           1259    583532     extdireccion_clase_via_principal    TABLE     �  CREATE TABLE test_ladm_survey_model.extdireccion_clase_via_principal (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 D   DROP TABLE test_ladm_survey_model.extdireccion_clase_via_principal;
       test_ladm_survey_model         postgres    false    409    15            7           1259    583604    extdireccion_sector_ciudad    TABLE     �  CREATE TABLE test_ladm_survey_model.extdireccion_sector_ciudad (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_survey_model.extdireccion_sector_ciudad;
       test_ladm_survey_model         postgres    false    409    15            �           1259    583091    extdireccion_sector_predio    TABLE     �  CREATE TABLE test_ladm_survey_model.extdireccion_sector_predio (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_survey_model.extdireccion_sector_predio;
       test_ladm_survey_model         postgres    false    409    15            ;           1259    583640    extdireccion_tipo_direccion    TABLE     �  CREATE TABLE test_ladm_survey_model.extdireccion_tipo_direccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_survey_model.extdireccion_tipo_direccion;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582174    extinteresado    TABLE     �  CREATE TABLE test_ladm_survey_model.extinteresado (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    nombre character varying(255),
    documento_escaneado character varying(255),
    extredserviciosfisica_ext_interesado_administrador_id bigint,
    lc_agrupacionintersdos_ext_pid bigint,
    lc_interesado_ext_pid bigint
);
 1   DROP TABLE test_ladm_survey_model.extinteresado;
       test_ladm_survey_model         postgres    false    409    15            /&           0    0    TABLE extinteresado    COMMENT     w   COMMENT ON TABLE test_ladm_survey_model.extinteresado IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_survey_model       postgres    false    421            0&           0    0    COLUMN extinteresado.nombre    COMMENT     d   COMMENT ON COLUMN test_ladm_survey_model.extinteresado.nombre IS 'Campo de nombre del interesado.';
            test_ladm_survey_model       postgres    false    421            1&           0    0 (   COLUMN extinteresado.documento_escaneado    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extinteresado.documento_escaneado IS 'Ruta de almacenamiento del documento escaneado del interesado.';
            test_ladm_survey_model       postgres    false    421            2&           0    0 J   COLUMN extinteresado.extredserviciosfisica_ext_interesado_administrador_id    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extinteresado.extredserviciosfisica_ext_interesado_administrador_id IS 'Identificador de referencia a un interesado externo que es el administrador.';
            test_ladm_survey_model       postgres    false    421            3&           0    0 3   COLUMN extinteresado.lc_agrupacionintersdos_ext_pid    COMMENT     z   COMMENT ON COLUMN test_ladm_survey_model.extinteresado.lc_agrupacionintersdos_ext_pid IS 'Identificador del interesado.';
            test_ladm_survey_model       postgres    false    421            4&           0    0 *   COLUMN extinteresado.lc_interesado_ext_pid    COMMENT     q   COMMENT ON COLUMN test_ladm_survey_model.extinteresado.lc_interesado_ext_pid IS 'Identificador del interesado.';
            test_ladm_survey_model       postgres    false    421            �           1259    582186    extredserviciosfisica    TABLE     �   CREATE TABLE test_ladm_survey_model.extredserviciosfisica (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    orientada boolean
);
 9   DROP TABLE test_ladm_survey_model.extredserviciosfisica;
       test_ladm_survey_model         postgres    false    409    15            5&           0    0    TABLE extredserviciosfisica    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.extredserviciosfisica IS 'Referencia a una clase externa para gestionar las redes físicas de servicios.';
            test_ladm_survey_model       postgres    false    422            6&           0    0 &   COLUMN extredserviciosfisica.orientada    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.extredserviciosfisica.orientada IS 'Indica si la red de servicios tiene un gradiente o no.';
            test_ladm_survey_model       postgres    false    422            �           1259    582159    extunidadedificacionfisica    TABLE     �   CREATE TABLE test_ladm_survey_model.extunidadedificacionfisica (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 >   DROP TABLE test_ladm_survey_model.extunidadedificacionfisica;
       test_ladm_survey_model         postgres    false    409    15            7&           0    0     TABLE extunidadedificacionfisica    COMMENT        COMMENT ON TABLE test_ladm_survey_model.extunidadedificacionfisica IS 'Control externo de la unidad de edificación física.';
            test_ladm_survey_model       postgres    false    419            �           1259    582138    fraccion    TABLE     �  CREATE TABLE test_ladm_survey_model.fraccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    denominador integer NOT NULL,
    numerador integer NOT NULL,
    col_miembros_participacion bigint,
    lc_predio_copropiedad_coeficiente bigint,
    CONSTRAINT fraccion_denominador_check CHECK (((denominador >= 0) AND (denominador <= 999999999))),
    CONSTRAINT fraccion_numerador_check CHECK (((numerador >= 0) AND (numerador <= 999999999)))
);
 ,   DROP TABLE test_ladm_survey_model.fraccion;
       test_ladm_survey_model         postgres    false    409    15            8&           0    0    TABLE fraccion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.fraccion IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar una fracción o quebrado cona serie específica de condiciones.';
            test_ladm_survey_model       postgres    false    417            9&           0    0    COLUMN fraccion.denominador    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.fraccion.denominador IS 'Parte inferior de la fracción. Debe ser mayor que 0. Debe ser mayor que el numerador.';
            test_ladm_survey_model       postgres    false    417            :&           0    0    COLUMN fraccion.numerador    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.fraccion.numerador IS 'Parte superior de la fracción. Debe ser mayor que 0. Debe sder menor que el denominador.';
            test_ladm_survey_model       postgres    false    417            �           1259    582408 	   gc_barrio    TABLE     S  CREATE TABLE test_ladm_survey_model.gc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 -   DROP TABLE test_ladm_survey_model.gc_barrio;
       test_ladm_survey_model         postgres    false    409    15            ;&           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
            test_ladm_survey_model       postgres    false    446            <&           0    0    COLUMN gc_barrio.codigo    COMMENT     g   COMMENT ON COLUMN test_ladm_survey_model.gc_barrio.codigo IS 'Código de identificación del barrio.';
            test_ladm_survey_model       postgres    false    446            =&           0    0    COLUMN gc_barrio.nombre    COMMENT     S   COMMENT ON COLUMN test_ladm_survey_model.gc_barrio.nombre IS 'Nombre del barrio.';
            test_ladm_survey_model       postgres    false    446            >&           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
            test_ladm_survey_model       postgres    false    446            ?&           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_ladm_survey_model       postgres    false    446            �           1259    582418 !   gc_calificacionunidadconstruccion    TABLE     �  CREATE TABLE test_ladm_survey_model.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 E   DROP TABLE test_ladm_survey_model.gc_calificacionunidadconstruccion;
       test_ladm_survey_model         postgres    false    409    15            @&           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
            test_ladm_survey_model       postgres    false    447            A&           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
            test_ladm_survey_model       postgres    false    447            B&           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
            test_ladm_survey_model       postgres    false    447            C&           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
            test_ladm_survey_model       postgres    false    447            D&           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
            test_ladm_survey_model       postgres    false    447            �           1259    582428    gc_comisionesconstruccion    TABLE     *  CREATE TABLE test_ladm_survey_model.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 =   DROP TABLE test_ladm_survey_model.gc_comisionesconstruccion;
       test_ladm_survey_model         postgres    false    409    15            E&           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    448            F&           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    448            G&           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_survey_model       postgres    false    448            �           1259    582438    gc_comisionesterreno    TABLE     $  CREATE TABLE test_ladm_survey_model.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 8   DROP TABLE test_ladm_survey_model.gc_comisionesterreno;
       test_ladm_survey_model         postgres    false    409    15            H&           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    449            I&           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    449            J&           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_survey_model       postgres    false    449            �           1259    582448    gc_comisionesunidadconstruccion    TABLE     0  CREATE TABLE test_ladm_survey_model.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 C   DROP TABLE test_ladm_survey_model.gc_comisionesunidadconstruccion;
       test_ladm_survey_model         postgres    false    409    15            K&           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    450            L&           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    450            M&           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_survey_model       postgres    false    450                       1259    583181    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_survey_model.gc_condicionprediotipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582458    gc_construccion    TABLE     U  CREATE TABLE test_ladm_survey_model.gc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    identificador character varying(30),
    etiqueta character varying(50),
    tipo_construccion bigint,
    tipo_dominio character varying(20),
    numero_pisos integer,
    numero_sotanos integer,
    numero_mezanines integer,
    numero_semisotanos integer,
    codigo_edificacion integer,
    codigo_terreno character varying(30),
    area_construida numeric(16,2),
    geometria public.geometry(MultiPolygonZ,38820),
    gc_predio bigint NOT NULL,
    CONSTRAINT gc_construccion_area_construida_check CHECK (((area_construida >= 0.0) AND (area_construida <= 99999999999999.98))),
    CONSTRAINT gc_construccion_codigo_edificacion_check CHECK (((codigo_edificacion >= 0) AND (codigo_edificacion <= 2147483647))),
    CONSTRAINT gc_construccion_numero_mezanines_check CHECK (((numero_mezanines >= 0) AND (numero_mezanines <= 99))),
    CONSTRAINT gc_construccion_numero_pisos_check CHECK (((numero_pisos >= 0) AND (numero_pisos <= 200))),
    CONSTRAINT gc_construccion_numero_semisotanos_check CHECK (((numero_semisotanos >= 0) AND (numero_semisotanos <= 99))),
    CONSTRAINT gc_construccion_numero_sotanos_check CHECK (((numero_sotanos >= 0) AND (numero_sotanos <= 99)))
);
 3   DROP TABLE test_ladm_survey_model.gc_construccion;
       test_ladm_survey_model         postgres    false    409    15            N&           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_survey_model       postgres    false    451            O&           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_survey_model       postgres    false    451            P&           0    0    COLUMN gc_construccion.etiqueta    COMMENT     f   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
            test_ladm_survey_model       postgres    false    451            Q&           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_survey_model       postgres    false    451            R&           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_survey_model       postgres    false    451            S&           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     x   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_survey_model       postgres    false    451            T&           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     }   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_survey_model       postgres    false    451            U&           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_survey_model       postgres    false    451            V&           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_survey_model       postgres    false    451            W&           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     y   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
            test_ladm_survey_model       postgres    false    451            X&           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
            test_ladm_survey_model       postgres    false    451            Y&           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     g   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.area_construida IS 'Área total construida.';
            test_ladm_survey_model       postgres    false    451            Z&           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    451            �           1259    582596    gc_copropiedad    TABLE     �  CREATE TABLE test_ladm_survey_model.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 2   DROP TABLE test_ladm_survey_model.gc_copropiedad;
       test_ladm_survey_model         postgres    false    409    15            [&           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
            test_ladm_survey_model       postgres    false    465            �           1259    582470    gc_datosphcondominio    TABLE     �  CREATE TABLE test_ladm_survey_model.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    area_total_terreno_privada numeric(16,2),
    area_total_terreno_comun numeric(16,2),
    area_total_construida_privada numeric(16,2),
    area_total_construida_comun numeric(16,2),
    total_unidades_privadas integer,
    total_unidades_sotano integer,
    valor_total_avaluo_catastral numeric(16,1),
    gc_predio bigint NOT NULL,
    CONSTRAINT gc_datosphcondominio_area_total_constrd_prvada_check CHECK (((area_total_construida_privada >= 0.0) AND (area_total_construida_privada <= 99999999999999.98))),
    CONSTRAINT gc_datosphcondominio_area_total_construid_cmun_check CHECK (((area_total_construida_comun >= 0.0) AND (area_total_construida_comun <= 99999999999999.98))),
    CONSTRAINT gc_datosphcondominio_area_total_terreno_comun_check CHECK (((area_total_terreno_comun >= 0.0) AND (area_total_terreno_comun <= 99999999999999.98))),
    CONSTRAINT gc_datosphcondominio_area_total_terreno_prvada_check CHECK (((area_total_terreno_privada >= 0.0) AND (area_total_terreno_privada <= 99999999999999.98))),
    CONSTRAINT gc_datosphcondominio_total_unidades_privadas_check CHECK (((total_unidades_privadas >= 0) AND (total_unidades_privadas <= 99999999))),
    CONSTRAINT gc_datosphcondominio_total_unidades_sotano_check CHECK (((total_unidades_sotano >= 0) AND (total_unidades_sotano <= 99999999))),
    CONSTRAINT gc_datosphcondominio_valor_total_avalu_ctstral_check CHECK (((valor_total_avaluo_catastral >= 0.0) AND (valor_total_avaluo_catastral <= '999999999999999'::numeric)))
);
 8   DROP TABLE test_ladm_survey_model.gc_datosphcondominio;
       test_ladm_survey_model         postgres    false    409    15            \&           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
            test_ladm_survey_model       postgres    false    452            ]&           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_survey_model       postgres    false    452            ^&           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_survey_model       postgres    false    452            _&           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_survey_model       postgres    false    452            `&           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_survey_model       postgres    false    452            a&           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_survey_model       postgres    false    452            b&           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
            test_ladm_survey_model       postgres    false    452            c&           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
            test_ladm_survey_model       postgres    false    452            �           1259    582477    gc_datostorreph    TABLE     �  CREATE TABLE test_ladm_survey_model.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    torre integer,
    total_pisos_torre integer,
    total_unidades_privadas integer,
    total_sotanos integer,
    total_unidades_sotano integer,
    gc_datosphcondominio bigint,
    CONSTRAINT gc_datostorreph_torre_check CHECK (((torre >= 0) AND (torre <= 1500))),
    CONSTRAINT gc_datostorreph_total_pisos_torre_check CHECK (((total_pisos_torre >= 0) AND (total_pisos_torre <= 100))),
    CONSTRAINT gc_datostorreph_total_sotanos_check CHECK (((total_sotanos >= 0) AND (total_sotanos <= 99))),
    CONSTRAINT gc_datostorreph_total_unidades_privadas_check CHECK (((total_unidades_privadas >= 0) AND (total_unidades_privadas <= 99999999))),
    CONSTRAINT gc_datostorreph_total_unidades_sotano_check CHECK (((total_unidades_sotano >= 0) AND (total_unidades_sotano <= 99999999)))
);
 3   DROP TABLE test_ladm_survey_model.gc_datostorreph;
       test_ladm_survey_model         postgres    false    409    15            d&           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
            test_ladm_survey_model       postgres    false    453            e&           0    0    COLUMN gc_datostorreph.torre    COMMENT     m   COMMENT ON COLUMN test_ladm_survey_model.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
            test_ladm_survey_model       postgres    false    453            f&           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     m   COMMENT ON COLUMN test_ladm_survey_model.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
            test_ladm_survey_model       postgres    false    453            g&           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT        COMMENT ON COLUMN test_ladm_survey_model.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
            test_ladm_survey_model       postgres    false    453            h&           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     l   COMMENT ON COLUMN test_ladm_survey_model.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
            test_ladm_survey_model       postgres    false    453            i&           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
            test_ladm_survey_model       postgres    false    453            �           1259    582484    gc_direccion    TABLE     B  CREATE TABLE test_ladm_survey_model.gc_direccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 0   DROP TABLE test_ladm_survey_model.gc_direccion;
       test_ladm_survey_model         postgres    false    409    15            j&           0    0    COLUMN gc_direccion.valor    COMMENT     j   COMMENT ON COLUMN test_ladm_survey_model.gc_direccion.valor IS 'Registros de la direcciones del predio.';
            test_ladm_survey_model       postgres    false    454            k&           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
            test_ladm_survey_model       postgres    false    454            l&           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
            test_ladm_survey_model       postgres    false    454            m&           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
            test_ladm_survey_model       postgres    false    454            �           1259    582495    gc_estadopredio    TABLE     D  CREATE TABLE test_ladm_survey_model.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 3   DROP TABLE test_ladm_survey_model.gc_estadopredio;
       test_ladm_survey_model         postgres    false    409    15            n&           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    455            o&           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    455            p&           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
            test_ladm_survey_model       postgres    false    455            q&           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
            test_ladm_survey_model       postgres    false    455            r&           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
            test_ladm_survey_model       postgres    false    455            �           1259    582502 
   gc_manzana    TABLE     ^  CREATE TABLE test_ladm_survey_model.gc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 .   DROP TABLE test_ladm_survey_model.gc_manzana;
       test_ladm_survey_model         postgres    false    409    15            s&           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
            test_ladm_survey_model       postgres    false    456            t&           0    0    COLUMN gc_manzana.codigo    COMMENT     q   COMMENT ON COLUMN test_ladm_survey_model.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
            test_ladm_survey_model       postgres    false    456            u&           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     t   COMMENT ON COLUMN test_ladm_survey_model.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
            test_ladm_survey_model       postgres    false    456            v&           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
            test_ladm_survey_model       postgres    false    456            w&           0    0    COLUMN gc_manzana.geometria    COMMENT     k   COMMENT ON COLUMN test_ladm_survey_model.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
            test_ladm_survey_model       postgres    false    456            �           1259    582512    gc_perimetro    TABLE     �  CREATE TABLE test_ladm_survey_model.gc_perimetro (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 0   DROP TABLE test_ladm_survey_model.gc_perimetro;
       test_ladm_survey_model         postgres    false    409    15            x&           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
            test_ladm_survey_model       postgres    false    457            y&           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
            test_ladm_survey_model       postgres    false    457            z&           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
            test_ladm_survey_model       postgres    false    457            {&           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     y   COMMENT ON COLUMN test_ladm_survey_model.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
            test_ladm_survey_model       postgres    false    457            |&           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
            test_ladm_survey_model       postgres    false    457            }&           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     j   COMMENT ON COLUMN test_ladm_survey_model.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
            test_ladm_survey_model       postgres    false    457            ~&           0    0    COLUMN gc_perimetro.geometria    COMMENT     g   COMMENT ON COLUMN test_ladm_survey_model.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
            test_ladm_survey_model       postgres    false    457            �           1259    582585    gc_prediocatastro    TABLE     �  CREATE TABLE test_ladm_survey_model.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_catastro character varying(255),
    numero_predial character varying(30),
    numero_predial_anterior character varying(20),
    nupre character varying(11),
    circulo_registral character varying(4),
    matricula_inmobiliaria_catastro character varying(80),
    tipo_predio character varying(100),
    condicion_predio bigint,
    destinacion_economica character varying(150),
    sistema_procedencia_datos bigint,
    fecha_datos date NOT NULL
);
 5   DROP TABLE test_ladm_survey_model.gc_prediocatastro;
       test_ladm_survey_model         postgres    false    409    15            &           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
            test_ladm_survey_model       postgres    false    464            �&           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
            test_ladm_survey_model       postgres    false    464            �&           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT       COMMENT ON COLUMN test_ladm_survey_model.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_survey_model       postgres    false    464            �&           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT       COMMENT ON COLUMN test_ladm_survey_model.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_survey_model       postgres    false    464            �&           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     N  COMMENT ON COLUMN test_ladm_survey_model.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_survey_model       postgres    false    464            �&           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
            test_ladm_survey_model       postgres    false    464            �&           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
            test_ladm_survey_model       postgres    false    464            �&           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
            test_ladm_survey_model       postgres    false    464            �&           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     y   COMMENT ON COLUMN test_ladm_survey_model.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_survey_model       postgres    false    464            �&           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     M  COMMENT ON COLUMN test_ladm_survey_model.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_survey_model       postgres    false    464            �&           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
            test_ladm_survey_model       postgres    false    464            �&           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT     p   COMMENT ON COLUMN test_ladm_survey_model.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
            test_ladm_survey_model       postgres    false    464            �           1259    582522    gc_propietario    TABLE     <  CREATE TABLE test_ladm_survey_model.gc_propietario (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento character varying(100),
    numero_documento character varying(50),
    digito_verificacion character varying(1),
    primer_nombre character varying(255),
    segundo_nombre character varying(255),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255),
    gc_predio_catastro bigint NOT NULL
);
 2   DROP TABLE test_ladm_survey_model.gc_propietario;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
            test_ladm_survey_model       postgres    false    458            �&           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    458            �&           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    458            �&           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
            test_ladm_survey_model       postgres    false    458            �&           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     w   COMMENT ON COLUMN test_ladm_survey_model.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
            test_ladm_survey_model       postgres    false    458            �&           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     y   COMMENT ON COLUMN test_ladm_survey_model.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
            test_ladm_survey_model       postgres    false    458            �&           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     {   COMMENT ON COLUMN test_ladm_survey_model.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
            test_ladm_survey_model       postgres    false    458            �&           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     }   COMMENT ON COLUMN test_ladm_survey_model.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
            test_ladm_survey_model       postgres    false    458            �&           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
            test_ladm_survey_model       postgres    false    458            �           1259    582532    gc_sectorrural    TABLE       CREATE TABLE test_ladm_survey_model.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 2   DROP TABLE test_ladm_survey_model.gc_sectorrural;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
            test_ladm_survey_model       postgres    false    459            �&           0    0    COLUMN gc_sectorrural.codigo    COMMENT     {   COMMENT ON COLUMN test_ladm_survey_model.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_survey_model       postgres    false    459            �&           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    459            �           1259    582542    gc_sectorurbano    TABLE       CREATE TABLE test_ladm_survey_model.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 3   DROP TABLE test_ladm_survey_model.gc_sectorurbano;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
            test_ladm_survey_model       postgres    false    460            �&           0    0    COLUMN gc_sectorurbano.codigo    COMMENT     |   COMMENT ON COLUMN test_ladm_survey_model.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_survey_model       postgres    false    460            �&           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    460                       1259    583379    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_ladm_survey_model.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_survey_model.gc_sistemaprocedenciadatostipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582552 
   gc_terreno    TABLE     Z  CREATE TABLE test_ladm_survey_model.gc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    area_terreno_alfanumerica numeric(16,2),
    area_terreno_digital numeric(16,2),
    manzana_vereda_codigo character varying(17),
    numero_subterraneos integer,
    geometria public.geometry(MultiPolygon,38820),
    gc_predio bigint NOT NULL,
    CONSTRAINT gc_terreno_area_terreno_alfanumerica_check CHECK (((area_terreno_alfanumerica >= 0.0) AND (area_terreno_alfanumerica <= 99999999999999.98))),
    CONSTRAINT gc_terreno_area_terreno_digital_check CHECK (((area_terreno_digital >= 0.0) AND (area_terreno_digital <= 99999999999999.98))),
    CONSTRAINT gc_terreno_numero_subterraneos_check CHECK (((numero_subterraneos >= 0) AND (numero_subterraneos <= 2147483647)))
);
 .   DROP TABLE test_ladm_survey_model.gc_terreno;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
            test_ladm_survey_model       postgres    false    461            �&           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    461            �&           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    461            �&           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
            test_ladm_survey_model       postgres    false    461            �&           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT     v   COMMENT ON COLUMN test_ladm_survey_model.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
            test_ladm_survey_model       postgres    false    461            �&           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    461            �           1259    582563    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_ladm_survey_model.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    identificador character varying(2),
    etiqueta character varying(50),
    tipo_dominio character varying(20),
    tipo_construccion bigint,
    planta character varying(10),
    total_habitaciones integer,
    total_banios integer,
    total_locales integer,
    total_pisos integer,
    uso character varying(255),
    anio_construccion integer,
    puntaje integer,
    area_construida numeric(16,2),
    area_privada numeric(16,2),
    codigo_terreno character varying(30),
    geometria public.geometry(MultiPolygonZ,38820),
    gc_construccion bigint NOT NULL,
    CONSTRAINT gc_unidadconstruccion_anio_construccion_check CHECK (((anio_construccion >= 1512) AND (anio_construccion <= 2500))),
    CONSTRAINT gc_unidadconstruccion_area_construida_check CHECK (((area_construida >= 0.0) AND (area_construida <= 99999999999999.98))),
    CONSTRAINT gc_unidadconstruccion_area_privada_check CHECK (((area_privada >= 0.0) AND (area_privada <= 99999999999999.98))),
    CONSTRAINT gc_unidadconstruccion_puntaje_check CHECK (((puntaje >= 0) AND (puntaje <= 200))),
    CONSTRAINT gc_unidadconstruccion_total_banios_check CHECK (((total_banios >= 0) AND (total_banios <= 999999))),
    CONSTRAINT gc_unidadconstruccion_total_habitaciones_check CHECK (((total_habitaciones >= 0) AND (total_habitaciones <= 999999))),
    CONSTRAINT gc_unidadconstruccion_total_locales_check CHECK (((total_locales >= 0) AND (total_locales <= 999999))),
    CONSTRAINT gc_unidadconstruccion_total_pisos_check CHECK (((total_pisos >= 0) AND (total_pisos <= 150)))
);
 9   DROP TABLE test_ladm_survey_model.gc_unidadconstruccion;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT     v   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_survey_model       postgres    false    462            �&           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
            test_ladm_survey_model       postgres    false    462            �&           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_survey_model       postgres    false    462                       1259    583352    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_survey_model.gc_unidadconstrucciontipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582575 	   gc_vereda    TABLE     ~  CREATE TABLE test_ladm_survey_model.gc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 -   DROP TABLE test_ladm_survey_model.gc_vereda;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
            test_ladm_survey_model       postgres    false    463            �&           0    0    COLUMN gc_vereda.codigo    COMMENT     o   COMMENT ON COLUMN test_ladm_survey_model.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
            test_ladm_survey_model       postgres    false    463            �&           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     x   COMMENT ON COLUMN test_ladm_survey_model.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
            test_ladm_survey_model       postgres    false    463            �&           0    0    COLUMN gc_vereda.nombre    COMMENT     U   COMMENT ON COLUMN test_ladm_survey_model.gc_vereda.nombre IS 'Nombre de la vereda.';
            test_ladm_survey_model       postgres    false    463            �&           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
            test_ladm_survey_model       postgres    false    463            �&           0    0    COLUMN gc_vereda.geometria    COMMENT     b   COMMENT ON COLUMN test_ladm_survey_model.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
            test_ladm_survey_model       postgres    false    463            �           1259    582073    gm_multisurface2d    TABLE     �   CREATE TABLE test_ladm_survey_model.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 5   DROP TABLE test_ladm_survey_model.gm_multisurface2d;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582090    gm_multisurface3d    TABLE     �   CREATE TABLE test_ladm_survey_model.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 5   DROP TABLE test_ladm_survey_model.gm_multisurface3d;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582062    gm_surface2dlistvalue    TABLE       CREATE TABLE test_ladm_survey_model.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 9   DROP TABLE test_ladm_survey_model.gm_surface2dlistvalue;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582079    gm_surface3dlistvalue    TABLE       CREATE TABLE test_ladm_survey_model.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 9   DROP TABLE test_ladm_survey_model.gm_surface3dlistvalue;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582165    imagen    TABLE     +  CREATE TABLE test_ladm_survey_model.imagen (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    uri character varying(255),
    extinteresado_huella_dactilar bigint,
    extinteresado_fotografia bigint,
    extinteresado_firma bigint
);
 *   DROP TABLE test_ladm_survey_model.imagen;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0    TABLE imagen    COMMENT     ^   COMMENT ON TABLE test_ladm_survey_model.imagen IS 'Referencia a una imagen mediante su url.';
            test_ladm_survey_model       postgres    false    420            �&           0    0    COLUMN imagen.uri    COMMENT     L   COMMENT ON COLUMN test_ladm_survey_model.imagen.uri IS 'url de la imagen.';
            test_ladm_survey_model       postgres    false    420            �&           0    0 +   COLUMN imagen.extinteresado_huella_dactilar    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.imagen.extinteresado_huella_dactilar IS 'Imagen de la huella dactilar del interesado.';
            test_ladm_survey_model       postgres    false    420            �&           0    0 &   COLUMN imagen.extinteresado_fotografia    COMMENT     k   COMMENT ON COLUMN test_ladm_survey_model.imagen.extinteresado_fotografia IS 'Fotografía del interesado.';
            test_ladm_survey_model       postgres    false    420            �&           0    0 !   COLUMN imagen.extinteresado_firma    COMMENT     `   COMMENT ON COLUMN test_ladm_survey_model.imagen.extinteresado_firma IS 'Firma del interesado.';
            test_ladm_survey_model       postgres    false    420            0           1259    583541    ini_emparejamientotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.ini_emparejamientotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_survey_model.ini_emparejamientotipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582670    ini_predioinsumos    TABLE     2  CREATE TABLE test_ladm_survey_model.ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_emparejamiento bigint,
    observaciones text,
    gc_predio_catastro bigint,
    snr_predio_juridico bigint
);
 5   DROP TABLE test_ladm_survey_model.ini_predioinsumos;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0    TABLE ini_predioinsumos    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.ini_predioinsumos IS 'Clase que relaciona los predios en los modelos de insumos para el Gestor Catastral y la SNR.';
            test_ladm_survey_model       postgres    false    473            �&           0    0 ,   COLUMN ini_predioinsumos.tipo_emparejamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.ini_predioinsumos.tipo_emparejamiento IS 'Tipo de emparejamiento de insumos Catastro-Registro';
            test_ladm_survey_model       postgres    false    473            �&           0    0 &   COLUMN ini_predioinsumos.observaciones    COMMENT     n   COMMENT ON COLUMN test_ladm_survey_model.ini_predioinsumos.observaciones IS 'Observaciones de la relación.';
            test_ladm_survey_model       postgres    false    473            6           1259    583595    lc_acuerdotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_acuerdotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_survey_model.lc_acuerdotipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582682    lc_agrupacioninteresados    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_agrupacioninteresados (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 <   DROP TABLE test_ladm_survey_model.lc_agrupacioninteresados;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0    TABLE lc_agrupacioninteresados    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_agrupacioninteresados IS 'Clase que hereda los atributos de la  Clase COL_Agrupación_Interesados.';
            test_ladm_survey_model       postgres    false    474            �&           0    0 $   COLUMN lc_agrupacioninteresados.tipo    COMMENT     }   COMMENT ON COLUMN test_ladm_survey_model.lc_agrupacioninteresados.tipo IS 'Indica el tipo de agrupación del que se trata.';
            test_ladm_survey_model       postgres    false    474            �&           0    0 &   COLUMN lc_agrupacioninteresados.nombre    COMMENT     f   COMMENT ON COLUMN test_ladm_survey_model.lc_agrupacioninteresados.nombre IS 'Nombre del interesado.';
            test_ladm_survey_model       postgres    false    474            �&           0    0 :   COLUMN lc_agrupacioninteresados.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_agrupacioninteresados.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    474            �&           0    0 5   COLUMN lc_agrupacioninteresados.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_agrupacioninteresados.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    474            �&           0    0 2   COLUMN lc_agrupacioninteresados.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_agrupacioninteresados.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    474            �&           0    0 (   COLUMN lc_agrupacioninteresados.local_id    COMMENT     m   COMMENT ON COLUMN test_ladm_survey_model.lc_agrupacioninteresados.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    474                       1259    583226    lc_anexotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_anexotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_survey_model.lc_anexotipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582926    lc_calificacionconvencional    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_calificacionconvencional (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_calificar bigint NOT NULL,
    total_calificacion integer NOT NULL,
    lc_unidad_construccion bigint,
    CONSTRAINT lc_calificacionconvencnal_total_calificacion_check CHECK (((total_calificacion >= 0) AND (total_calificacion <= 999999999)))
);
 ?   DROP TABLE test_ladm_survey_model.lc_calificacionconvencional;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0 !   TABLE lc_calificacionconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_calificacionconvencional IS 'Proceso mediante el cual se le asigna un puntaje a las edificaciones de acuerdo a sus características constructivas';
            test_ladm_survey_model       postgres    false    494            �&           0    0 1   COLUMN lc_calificacionconvencional.tipo_calificar    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_calificacionconvencional.tipo_calificar IS 'Indica si la calificación de construcción corresponde a residencial, comercial o industrial.';
            test_ladm_survey_model       postgres    false    494            �&           0    0 5   COLUMN lc_calificacionconvencional.total_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_calificacionconvencional.total_calificacion IS 'Puntaje total de la calificación de la unidad de construcción.';
            test_ladm_survey_model       postgres    false    494            �           1259    582935    lc_calificacionnoconvencional    TABLE       CREATE TABLE test_ladm_survey_model.lc_calificacionnoconvencional (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_anexo bigint NOT NULL,
    lc_unidad_construccion bigint
);
 A   DROP TABLE test_ladm_survey_model.lc_calificacionnoconvencional;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0 #   TABLE lc_calificacionnoconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_calificacionnoconvencional IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_survey_model       postgres    false    495            �&           0    0 /   COLUMN lc_calificacionnoconvencional.tipo_anexo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_calificacionnoconvencional.tipo_anexo IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_survey_model       postgres    false    495                       1259    583154    lc_calificartipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_calificartipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_survey_model.lc_calificartipo;
       test_ladm_survey_model         postgres    false    409    15            1           1259    583550    lc_categoriasuelotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_categoriasuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_survey_model.lc_categoriasuelotipo;
       test_ladm_survey_model         postgres    false    409    15            ?           1259    583676    lc_clasecalificaciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_clasecalificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_survey_model.lc_clasecalificaciontipo;
       test_ladm_survey_model         postgres    false    409    15            
           1259    583199    lc_clasesuelotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_clasesuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_survey_model.lc_clasesuelotipo;
       test_ladm_survey_model         postgres    false    409    15            ,           1259    583505    lc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_survey_model.lc_condicionprediotipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582693    lc_construccion    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    identificador character varying(2) NOT NULL,
    tipo_construccion bigint,
    tipo_dominio bigint,
    numero_pisos integer NOT NULL,
    numero_sotanos integer,
    numero_mezanines integer,
    numero_semisotanos integer,
    anio_construccion integer,
    avaluo_construccion numeric(16,1),
    area_construccion numeric(15,1) NOT NULL,
    altura integer,
    observaciones text,
    dimension bigint,
    etiqueta character varying(255),
    relacion_superficie bigint,
    geometria public.geometry(MultiPolygonZ,38820),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_construccion_altura_check CHECK (((altura >= 1) AND (altura <= 1000))),
    CONSTRAINT lc_construccion_anio_construccion_check CHECK (((anio_construccion >= 1550) AND (anio_construccion <= 2500))),
    CONSTRAINT lc_construccion_area_construccion_check CHECK (((area_construccion >= 0.0) AND (area_construccion <= 99999999999999.9))),
    CONSTRAINT lc_construccion_avaluo_construccion_check CHECK (((avaluo_construccion >= 0.0) AND (avaluo_construccion <= '999999999999999'::numeric))),
    CONSTRAINT lc_construccion_numero_mezanines_check CHECK (((numero_mezanines >= 0) AND (numero_mezanines <= 99))),
    CONSTRAINT lc_construccion_numero_pisos_check CHECK (((numero_pisos >= 0) AND (numero_pisos <= 300))),
    CONSTRAINT lc_construccion_numero_semisotanos_check CHECK (((numero_semisotanos >= 0) AND (numero_semisotanos <= 99))),
    CONSTRAINT lc_construccion_numero_sotanos_check CHECK (((numero_sotanos >= 0) AND (numero_sotanos <= 99)))
);
 3   DROP TABLE test_ladm_survey_model.lc_construccion;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0    TABLE lc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_construccion IS 'Es la unión de materiales adheridos al terreno, con carácter de permanente, cualesquiera sean los elementos que la constituyan.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 $   COLUMN lc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 (   COLUMN lc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 #   COLUMN lc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 #   COLUMN lc_construccion.numero_pisos    COMMENT     x   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 %   COLUMN lc_construccion.numero_sotanos    COMMENT     }   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 '   COLUMN lc_construccion.numero_mezanines    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 )   COLUMN lc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 (   COLUMN lc_construccion.anio_construccion    COMMENT     {   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.anio_construccion IS 'Año de edificación de la construcción.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 *   COLUMN lc_construccion.avaluo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.avaluo_construccion IS 'Avalúo total catastral de la construcción.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 (   COLUMN lc_construccion.area_construccion    COMMENT     i   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.area_construccion IS 'Área total construida.';
            test_ladm_survey_model       postgres    false    475            �&           0    0    COLUMN lc_construccion.altura    COMMENT     h   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.altura IS 'Altura total de la construcción.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 $   COLUMN lc_construccion.observaciones    COMMENT     z   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.observaciones IS 'Observaciones generales de la construcción.';
            test_ladm_survey_model       postgres    false    475            �&           0    0     COLUMN lc_construccion.dimension    COMMENT     `   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.dimension IS 'Dimensión del objeto.';
            test_ladm_survey_model       postgres    false    475            �&           0    0    COLUMN lc_construccion.etiqueta    COMMENT     {   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 *   COLUMN lc_construccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_survey_model       postgres    false    475            �&           0    0     COLUMN lc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 1   COLUMN lc_construccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 ,   COLUMN lc_construccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    475            �&           0    0 )   COLUMN lc_construccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    475            �&           0    0    COLUMN lc_construccion.local_id    COMMENT     d   COMMENT ON COLUMN test_ladm_survey_model.lc_construccion.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    475                       1259    583217    lc_construccionplantatipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_construccionplantatipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_survey_model.lc_construccionplantatipo;
       test_ladm_survey_model         postgres    false    409    15            "           1259    583415    lc_construcciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_construcciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_survey_model.lc_construcciontipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582708    lc_contactovisita    TABLE     7  CREATE TABLE test_ladm_survey_model.lc_contactovisita (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_documento_quien_atendio bigint NOT NULL,
    numero_documento_quien_atendio character varying(50) NOT NULL,
    primer_nombre_quien_atendio character varying(100) NOT NULL,
    segundo_nombre_quien_atendio character varying(100),
    primer_apellido_quien_atendio character varying(100) NOT NULL,
    segundo_apellido_quien_atendio character varying(100),
    relacion_con_predio bigint NOT NULL,
    domicilio_notificaciones character varying(255),
    celular character varying(20),
    correo_electronico character varying(100),
    autoriza_notificaciones boolean,
    lc_datos_adicionales bigint NOT NULL
);
 5   DROP TABLE test_ladm_survey_model.lc_contactovisita;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0 5   COLUMN lc_contactovisita.tipo_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_contactovisita.tipo_documento_quien_atendio IS 'Indica el tipo de documento de la persona que atendió la visita predial.';
            test_ladm_survey_model       postgres    false    476            �&           0    0 7   COLUMN lc_contactovisita.numero_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_contactovisita.numero_documento_quien_atendio IS 'Indica el número de documento de la persona que atendió la visita predial.';
            test_ladm_survey_model       postgres    false    476            �&           0    0 4   COLUMN lc_contactovisita.primer_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_contactovisita.primer_nombre_quien_atendio IS 'Primer nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_survey_model       postgres    false    476            �&           0    0 5   COLUMN lc_contactovisita.segundo_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_contactovisita.segundo_nombre_quien_atendio IS 'Segundo nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_survey_model       postgres    false    476            �&           0    0 6   COLUMN lc_contactovisita.primer_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_contactovisita.primer_apellido_quien_atendio IS 'Primer apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_survey_model       postgres    false    476            �&           0    0 7   COLUMN lc_contactovisita.segundo_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_contactovisita.segundo_apellido_quien_atendio IS 'Segundo apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_survey_model       postgres    false    476            �&           0    0 ,   COLUMN lc_contactovisita.relacion_con_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_contactovisita.relacion_con_predio IS 'Relación con el predio de la persona encargada de atender la visita, por ejemplo propietario, encargado, administrador, poseedor, etc.';
            test_ladm_survey_model       postgres    false    476            �&           0    0 1   COLUMN lc_contactovisita.domicilio_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_contactovisita.domicilio_notificaciones IS 'Dirección de domicilio para notificaciones.';
            test_ladm_survey_model       postgres    false    476            �&           0    0     COLUMN lc_contactovisita.celular    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_contactovisita.celular IS 'Número de celular de la persona que atendió la visita de actividades catastrales.';
            test_ladm_survey_model       postgres    false    476            �&           0    0 +   COLUMN lc_contactovisita.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_contactovisita.correo_electronico IS 'Correo electrónico de la persona que atendió la visita de actividades catastrales.';
            test_ladm_survey_model       postgres    false    476            �&           0    0 0   COLUMN lc_contactovisita.autoriza_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_contactovisita.autoriza_notificaciones IS 'Indica si autoriza las notificaciones administrativas por medio de vía electrónica.';
            test_ladm_survey_model       postgres    false    476            �           1259    582944 )   lc_datosadicionaleslevantamientocatastral    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tiene_area_registral boolean NOT NULL,
    area_registral_m2 numeric(25,2),
    procedimiento_catastral_registral bigint NOT NULL,
    destinacion_economica bigint NOT NULL,
    clase_suelo bigint NOT NULL,
    categoria_suelo bigint,
    observaciones character varying(500),
    fecha_visita_predial date NOT NULL,
    tipo_documento_reconocedor bigint NOT NULL,
    numero_documento_reconocedor character varying(50) NOT NULL,
    primer_nombre_reconocedor character varying(100) NOT NULL,
    segundo_nombre_reconocedor character varying(100),
    primer_apellido_reconocedor character varying(100) NOT NULL,
    segundo_apellido_reconocedor character varying(100),
    resultado_visita bigint NOT NULL,
    suscribe_acta_colindancia boolean,
    lc_predio bigint NOT NULL,
    CONSTRAINT lc_dtsdcnlslvntmntctstral_area_registral_m2_check CHECK (((area_registral_m2 >= 0.0) AND (area_registral_m2 <= '10000000000000000000000'::numeric)))
);
 M   DROP TABLE test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0 /   TABLE lc_datosadicionaleslevantamientocatastral    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral IS 'Datos de adicionales del predio para catastro multipropósito';
            test_ladm_survey_model       postgres    false    496            �&           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.tiene_area_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.tiene_area_registral IS 'Indica si el predio según la información registral cuenta con el valor de área en la cabida y linderos.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 B   COLUMN lc_datosadicionaleslevantamientocatastral.area_registral_m2    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.area_registral_m2 IS 'Indica el valor del área registral del predio en metros cuadrados.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 R   COLUMN lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral    COMMENT     �  COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral IS 'Se considerará como procedimientos catastrales con efectos registrales los siguientes: actualización de linderos, rectificación de área por imprecisa determinación, actualización masiva y puntual de linderos y áreas, rectificación de linderos por acuerdo entre las partes, e inclusión de área y/o linderos.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 F   COLUMN lc_datosadicionaleslevantamientocatastral.destinacion_economica    COMMENT     e  COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 <   COLUMN lc_datosadicionaleslevantamientocatastral.clase_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.clase_suelo IS 'Clasificación del suelo según el instrumento de planeación vigente.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 @   COLUMN lc_datosadicionaleslevantamientocatastral.categoria_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.categoria_suelo IS 'Categoría del suelo según el instrumento de planeación vigente.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 >   COLUMN lc_datosadicionaleslevantamientocatastral.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.observaciones IS 'Observaciones generales respecto del predio.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.fecha_visita_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.fecha_visita_predial IS 'Fecha de la visita en campo al predio.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor IS 'Indica el tipo de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor IS 'Indica el número de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor IS 'Primer nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor IS 'Segundo nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 L   COLUMN lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor IS 'Primer apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor IS 'Segundo apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 A   COLUMN lc_datosadicionaleslevantamientocatastral.resultado_visita    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.resultado_visita IS 'Posibles situaciones que se presentan y afectan el resultado del levantamiento de la información en campo.';
            test_ladm_survey_model       postgres    false    496            �&           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia    COMMENT       COMMENT ON COLUMN test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia IS 'Indica si dentro del proceso de formación o actualización catastral se suscribe acta de colindancia para el predio objeto de levantamiento catastral.';
            test_ladm_survey_model       postgres    false    496            �           1259    582721    lc_datosphcondominio    TABLE       CREATE TABLE test_ladm_survey_model.lc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    area_total_terreno numeric(16,2),
    area_total_terreno_privada numeric(16,2),
    area_total_terreno_comun numeric(16,2),
    area_total_construida numeric(16,2),
    area_total_construida_privada numeric(16,2),
    area_total_construida_comun numeric(16,2),
    numero_torres integer,
    total_unidades_privadas integer,
    lc_predio bigint NOT NULL,
    CONSTRAINT lc_datosphcondominio_area_total_constrd_prvada_check CHECK (((area_total_construida_privada >= 0.0) AND (area_total_construida_privada <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_area_total_construid_cmun_check CHECK (((area_total_construida_comun >= 0.0) AND (area_total_construida_comun <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_area_total_construida_check CHECK (((area_total_construida >= 0.0) AND (area_total_construida <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_area_total_terreno_check CHECK (((area_total_terreno >= 0.0) AND (area_total_terreno <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_area_total_terreno_comun_check CHECK (((area_total_terreno_comun >= 0.0) AND (area_total_terreno_comun <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_area_total_terreno_prvada_check CHECK (((area_total_terreno_privada >= 0.0) AND (area_total_terreno_privada <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_numero_torres_check CHECK (((numero_torres >= 0) AND (numero_torres <= 1000))),
    CONSTRAINT lc_datosphcondominio_total_unidades_privadas_check CHECK (((total_unidades_privadas >= 0) AND (total_unidades_privadas <= 99999999)))
);
 8   DROP TABLE test_ladm_survey_model.lc_datosphcondominio;
       test_ladm_survey_model         postgres    false    409    15            �&           0    0    TABLE lc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal.';
            test_ladm_survey_model       postgres    false    477            �&           0    0 .   COLUMN lc_datosphcondominio.area_total_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosphcondominio.area_total_terreno IS 'Área total del terreno del PH o Condominio Matriz.';
            test_ladm_survey_model       postgres    false    477            �&           0    0 6   COLUMN lc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_survey_model       postgres    false    477            �&           0    0 4   COLUMN lc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_survey_model       postgres    false    477             '           0    0 1   COLUMN lc_datosphcondominio.area_total_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosphcondominio.area_total_construida IS 'Área total de construida del PH o Condominio Matriz.';
            test_ladm_survey_model       postgres    false    477            '           0    0 9   COLUMN lc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_survey_model       postgres    false    477            '           0    0 7   COLUMN lc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_survey_model       postgres    false    477            '           0    0 )   COLUMN lc_datosphcondominio.numero_torres    COMMENT     {   COMMENT ON COLUMN test_ladm_survey_model.lc_datosphcondominio.numero_torres IS 'Número de torres en el PH o Condominio.';
            test_ladm_survey_model       postgres    false    477            '           0    0 3   COLUMN lc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_survey_model       postgres    false    477            �           1259    582729 
   lc_derecho    TABLE       CREATE TABLE test_ladm_survey_model.lc_derecho (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    fraccion_derecho numeric(11,10) NOT NULL,
    fecha_inicio_tenencia date,
    descripcion character varying(255),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_derecho_fraccion_derecho_check CHECK (((fraccion_derecho >= 0.0) AND (fraccion_derecho <= 1.0)))
);
 .   DROP TABLE test_ladm_survey_model.lc_derecho;
       test_ladm_survey_model         postgres    false    409    15            '           0    0    TABLE lc_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_derecho IS 'Clase que registra las instancias de los derechos que un interesado ejerce sobre un predio. Es una especialización de la clase COL_DRR del propio modelo.';
            test_ladm_survey_model       postgres    false    478            '           0    0    COLUMN lc_derecho.tipo    COMMENT     V   COMMENT ON COLUMN test_ladm_survey_model.lc_derecho.tipo IS 'Derecho que se ejerce.';
            test_ladm_survey_model       postgres    false    478            '           0    0 "   COLUMN lc_derecho.fraccion_derecho    COMMENT     �  COMMENT ON COLUMN test_ladm_survey_model.lc_derecho.fraccion_derecho IS 'Indica la fracción del derecho en relación a la forma de tenencia y el área que esta ocupa dentro de la extensión del predio. Ejemplo: un predio informal que se encuentra sobre un predio baldío y un predio privado tendrá un porcentaje de derecho de ocupación y posesión expresado en tanto por uno (0.0000000000 a 1.0000000000).';
            test_ladm_survey_model       postgres    false    478            '           0    0 '   COLUMN lc_derecho.fecha_inicio_tenencia    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_derecho.fecha_inicio_tenencia IS 'Fecha de inicio de tenencia del interesado con respecto al predio.';
            test_ladm_survey_model       postgres    false    478            	'           0    0    COLUMN lc_derecho.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_derecho.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_survey_model       postgres    false    478            
'           0    0 ,   COLUMN lc_derecho.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_derecho.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    478            '           0    0 '   COLUMN lc_derecho.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_derecho.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    478            '           0    0 $   COLUMN lc_derecho.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_derecho.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    478            '           0    0    COLUMN lc_derecho.local_id    COMMENT     _   COMMENT ON COLUMN test_ladm_survey_model.lc_derecho.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    478                       1259    583307    lc_derechotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_derechotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_survey_model.lc_derechotipo;
       test_ladm_survey_model         postgres    false    409    15            >           1259    583667    lc_destinacioneconomicatipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_destinacioneconomicatipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_survey_model.lc_destinacioneconomicatipo;
       test_ladm_survey_model         postgres    false    409    15                       1259    583136    lc_dominioconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_dominioconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_survey_model.lc_dominioconstrucciontipo;
       test_ladm_survey_model         postgres    false    409    15            $           1259    583433    lc_estadoconservaciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_estadoconservaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_survey_model.lc_estadoconservaciontipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582743    lc_estructuranovedadfmi    TABLE     (  CREATE TABLE test_ladm_survey_model.lc_estructuranovedadfmi (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(3),
    numero_fmi character varying(80),
    lc_dtsdcnlstmntctstral_novedad_fmi bigint
);
 ;   DROP TABLE test_ladm_survey_model.lc_estructuranovedadfmi;
       test_ladm_survey_model         postgres    false    409    15            '           0    0 A   COLUMN lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi IS 'Relaciona los cambios del predio respecto de la información registral vigente.';
            test_ladm_survey_model       postgres    false    479            �           1259    582750 !   lc_estructuranovedadnumeropredial    TABLE     @  CREATE TABLE test_ladm_survey_model.lc_estructuranovedadnumeropredial (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    numero_predial character varying(30) NOT NULL,
    tipo_novedad bigint,
    lc_dtsdcnlstmntctstral_novedad_numeros_prediales bigint
);
 E   DROP TABLE test_ladm_survey_model.lc_estructuranovedadnumeropredial;
       test_ladm_survey_model         postgres    false    409    15            '           0    0 Y   COLUMN lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales IS 'Relaciona los cambios del predio respecto de la información catastral vigente.';
            test_ladm_survey_model       postgres    false    480                       1259    583298 .   lc_estructuranovedadnumeropredial_tipo_novedad    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_estructuranovedadnumeropredial_tipo_novedad (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 R   DROP TABLE test_ladm_survey_model.lc_estructuranovedadnumeropredial_tipo_novedad;
       test_ladm_survey_model         postgres    false    409    15                       1259    583235    lc_fotoidentificaciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_fotoidentificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_survey_model.lc_fotoidentificaciontipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582758    lc_fuenteadministrativa    TABLE     2  CREATE TABLE test_ladm_survey_model.lc_fuenteadministrativa (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    ente_emisor character varying(255),
    observacion character varying(255),
    numero_fuente character varying(150),
    estado_disponibilidad bigint NOT NULL,
    tipo_principal bigint,
    fecha_documento_fuente date,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 ;   DROP TABLE test_ladm_survey_model.lc_fuenteadministrativa;
       test_ladm_survey_model         postgres    false    409    15            '           0    0    TABLE lc_fuenteadministrativa    COMMENT     	  COMMENT ON TABLE test_ladm_survey_model.lc_fuenteadministrativa IS 'Clase que almacena las fuentes administrativas (escrituras, sentencias, actos administrativos, etc) que sustentan el Derecho respecto de la relación de tenencia entre el Interesado y el predio.';
            test_ladm_survey_model       postgres    false    481            '           0    0 #   COLUMN lc_fuenteadministrativa.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteadministrativa.tipo IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_survey_model       postgres    false    481            '           0    0 *   COLUMN lc_fuenteadministrativa.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteadministrativa.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_survey_model       postgres    false    481            '           0    0 *   COLUMN lc_fuenteadministrativa.observacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteadministrativa.observacion IS 'Observaciones o descripción del documento de la fuente administrativa.';
            test_ladm_survey_model       postgres    false    481            '           0    0 ,   COLUMN lc_fuenteadministrativa.numero_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteadministrativa.numero_fuente IS 'Identificador del documento, ejemplo: número de la resolución, número de la escritura pública o número de radicado de una sentencia.';
            test_ladm_survey_model       postgres    false    481            '           0    0 4   COLUMN lc_fuenteadministrativa.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteadministrativa.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_survey_model       postgres    false    481            '           0    0 -   COLUMN lc_fuenteadministrativa.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteadministrativa.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_survey_model       postgres    false    481            '           0    0 5   COLUMN lc_fuenteadministrativa.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteadministrativa.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_survey_model       postgres    false    481            '           0    0 1   COLUMN lc_fuenteadministrativa.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteadministrativa.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    481            '           0    0 '   COLUMN lc_fuenteadministrativa.local_id    COMMENT     l   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteadministrativa.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    481            5           1259    583586    lc_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_survey_model.lc_fuenteadministrativatipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582771    lc_fuenteespacial    TABLE       CREATE TABLE test_ladm_survey_model.lc_fuenteespacial (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    nombre character varying(255) NOT NULL,
    tipo bigint NOT NULL,
    descripcion text NOT NULL,
    metadato text,
    estado_disponibilidad bigint NOT NULL,
    tipo_principal bigint,
    fecha_documento_fuente date,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 5   DROP TABLE test_ladm_survey_model.lc_fuenteespacial;
       test_ladm_survey_model         postgres    false    409    15            '           0    0    TABLE lc_fuenteespacial    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_fuenteespacial IS 'Clase que hereda los atributos de la  Clase COL_FuenteEspacial.';
            test_ladm_survey_model       postgres    false    482            '           0    0    COLUMN lc_fuenteespacial.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteespacial.nombre IS 'Nombre de la fuente espacial del levantamiento catastral de un predio.';
            test_ladm_survey_model       postgres    false    482            '           0    0    COLUMN lc_fuenteespacial.tipo    COMMENT     _   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteespacial.tipo IS 'Tipo de fuente espacial.';
            test_ladm_survey_model       postgres    false    482            '           0    0 $   COLUMN lc_fuenteespacial.descripcion    COMMENT     q   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteespacial.descripcion IS 'Descripción de la fuente espacial.';
            test_ladm_survey_model       postgres    false    482            '           0    0 !   COLUMN lc_fuenteespacial.metadato    COMMENT     j   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteespacial.metadato IS 'Metadato de la fuente espacial.';
            test_ladm_survey_model       postgres    false    482            '           0    0 .   COLUMN lc_fuenteespacial.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteespacial.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_survey_model       postgres    false    482             '           0    0 '   COLUMN lc_fuenteespacial.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteespacial.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_survey_model       postgres    false    482            !'           0    0 /   COLUMN lc_fuenteespacial.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteespacial.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_survey_model       postgres    false    482            "'           0    0 +   COLUMN lc_fuenteespacial.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteespacial.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    482            #'           0    0 !   COLUMN lc_fuenteespacial.local_id    COMMENT     f   COMMENT ON COLUMN test_ladm_survey_model.lc_fuenteespacial.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    482            �           1259    582784    lc_grupocalificacion    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_grupocalificacion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    clase_calificacion bigint NOT NULL,
    conservacion bigint NOT NULL,
    subtotal integer NOT NULL,
    lc_calificacion_convencional bigint NOT NULL,
    CONSTRAINT lc_grupocalificacion_subtotal_check CHECK (((subtotal >= 0) AND (subtotal <= 9999999)))
);
 8   DROP TABLE test_ladm_survey_model.lc_grupocalificacion;
       test_ladm_survey_model         postgres    false    409    15            $'           0    0    TABLE lc_grupocalificacion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_grupocalificacion IS 'Calificación de la construccion según los item determinados para calificar.';
            test_ladm_survey_model       postgres    false    483            %'           0    0 .   COLUMN lc_grupocalificacion.clase_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_grupocalificacion.clase_calificacion IS 'Indica los elementos generales de la calificación de la construcción de acuerdo al método vigente.';
            test_ladm_survey_model       postgres    false    483            &'           0    0 (   COLUMN lc_grupocalificacion.conservacion    COMMENT        COMMENT ON COLUMN test_ladm_survey_model.lc_grupocalificacion.conservacion IS 'Estado de conservación del grupo calificado.';
            test_ladm_survey_model       postgres    false    483            ''           0    0 $   COLUMN lc_grupocalificacion.subtotal    COMMENT     l   COMMENT ON COLUMN test_ladm_survey_model.lc_grupocalificacion.subtotal IS 'Subtotal del grupo calificado.';
            test_ladm_survey_model       postgres    false    483            (           1259    583469    lc_grupoetnicotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_grupoetnicotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_survey_model.lc_grupoetnicotipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582794    lc_interesado    TABLE     C  CREATE TABLE test_ladm_survey_model.lc_interesado (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    tipo_documento bigint NOT NULL,
    documento_identidad character varying(50) NOT NULL,
    primer_nombre character varying(100),
    segundo_nombre character varying(100),
    primer_apellido character varying(100),
    segundo_apellido character varying(100),
    sexo bigint,
    grupo_etnico bigint,
    razon_social character varying(255),
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 1   DROP TABLE test_ladm_survey_model.lc_interesado;
       test_ladm_survey_model         postgres    false    409    15            ('           0    0    TABLE lc_interesado    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_interesado IS 'Es la parte que tiene una relación con el predio por algún tipo de derecho, restricción, publicidad o responsabilidad';
            test_ladm_survey_model       postgres    false    484            )'           0    0    COLUMN lc_interesado.tipo    COMMENT     c   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.tipo IS 'Tipo de persona del que se trata';
            test_ladm_survey_model       postgres    false    484            *'           0    0 #   COLUMN lc_interesado.tipo_documento    COMMENT     p   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_survey_model       postgres    false    484            +'           0    0 (   COLUMN lc_interesado.documento_identidad    COMMENT     x   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.documento_identidad IS 'Documento de identidad del interesado.';
            test_ladm_survey_model       postgres    false    484            ,'           0    0 "   COLUMN lc_interesado.primer_nombre    COMMENT     p   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.primer_nombre IS 'Primer nombre de la persona física.';
            test_ladm_survey_model       postgres    false    484            -'           0    0 #   COLUMN lc_interesado.segundo_nombre    COMMENT     r   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.segundo_nombre IS 'Segundo nombre de la persona física.';
            test_ladm_survey_model       postgres    false    484            .'           0    0 $   COLUMN lc_interesado.primer_apellido    COMMENT     t   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_survey_model       postgres    false    484            /'           0    0 %   COLUMN lc_interesado.segundo_apellido    COMMENT     v   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_survey_model       postgres    false    484            0'           0    0    COLUMN lc_interesado.sexo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.sexo IS 'Condición orgánica que distingue a los machos de las hembras.';
            test_ladm_survey_model       postgres    false    484            1'           0    0 !   COLUMN lc_interesado.razon_social    COMMENT     l   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.razon_social IS 'Nombre con el que está inscrito.';
            test_ladm_survey_model       postgres    false    484            2'           0    0    COLUMN lc_interesado.nombre    COMMENT     [   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.nombre IS 'Nombre del interesado.';
            test_ladm_survey_model       postgres    false    484            3'           0    0 /   COLUMN lc_interesado.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    484            4'           0    0 *   COLUMN lc_interesado.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    484            5'           0    0 '   COLUMN lc_interesado.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    484            6'           0    0    COLUMN lc_interesado.local_id    COMMENT     b   COMMENT ON COLUMN test_ladm_survey_model.lc_interesado.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    484            �           1259    582808    lc_interesadocontacto    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_interesadocontacto (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    telefono1 character varying(20),
    telefono2 character varying(20),
    domicilio_notificacion character varying(500),
    direccion_residencia character varying(500),
    correo_electronico character varying(100),
    autoriza_notificacion_correo boolean,
    departamento character varying(100) NOT NULL,
    municipio character varying(100) NOT NULL,
    vereda character varying(100),
    corregimiento character varying(100),
    lc_interesado bigint NOT NULL
);
 9   DROP TABLE test_ladm_survey_model.lc_interesadocontacto;
       test_ladm_survey_model         postgres    false    409    15            7'           0    0    TABLE lc_interesadocontacto    COMMENT     n   COMMENT ON TABLE test_ladm_survey_model.lc_interesadocontacto IS 'Datos de contacto de la parte interesada.';
            test_ladm_survey_model       postgres    false    485            8'           0    0 &   COLUMN lc_interesadocontacto.telefono1    COMMENT     ~   COMMENT ON COLUMN test_ladm_survey_model.lc_interesadocontacto.telefono1 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_survey_model       postgres    false    485            9'           0    0 &   COLUMN lc_interesadocontacto.telefono2    COMMENT     ~   COMMENT ON COLUMN test_ladm_survey_model.lc_interesadocontacto.telefono2 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_survey_model       postgres    false    485            :'           0    0 3   COLUMN lc_interesadocontacto.domicilio_notificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_interesadocontacto.domicilio_notificacion IS 'Domicilio para notificaciones del interesado.';
            test_ladm_survey_model       postgres    false    485            ;'           0    0 1   COLUMN lc_interesadocontacto.direccion_residencia    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_interesadocontacto.direccion_residencia IS 'Dirección de residencia del interesado.';
            test_ladm_survey_model       postgres    false    485            <'           0    0 /   COLUMN lc_interesadocontacto.correo_electronico    COMMENT     |   COMMENT ON COLUMN test_ladm_survey_model.lc_interesadocontacto.correo_electronico IS 'Correo electrónico del interesado.';
            test_ladm_survey_model       postgres    false    485            ='           0    0 9   COLUMN lc_interesadocontacto.autoriza_notificacion_correo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_interesadocontacto.autoriza_notificacion_correo IS 'Indica si el interesado autoriza notificación vía correo electrónico';
            test_ladm_survey_model       postgres    false    485            >'           0    0 )   COLUMN lc_interesadocontacto.departamento    COMMENT     }   COMMENT ON COLUMN test_ladm_survey_model.lc_interesadocontacto.departamento IS 'Departamento de residencia del interesado.';
            test_ladm_survey_model       postgres    false    485            ?'           0    0 &   COLUMN lc_interesadocontacto.municipio    COMMENT     w   COMMENT ON COLUMN test_ladm_survey_model.lc_interesadocontacto.municipio IS 'Municipio de residencia del interesado.';
            test_ladm_survey_model       postgres    false    485            @'           0    0 #   COLUMN lc_interesadocontacto.vereda    COMMENT     q   COMMENT ON COLUMN test_ladm_survey_model.lc_interesadocontacto.vereda IS 'Vereda de residencia del interesado.';
            test_ladm_survey_model       postgres    false    485            A'           0    0 *   COLUMN lc_interesadocontacto.corregimiento    COMMENT        COMMENT ON COLUMN test_ladm_survey_model.lc_interesadocontacto.corregimiento IS 'Corregimiento de residencia del interesado.';
            test_ladm_survey_model       postgres    false    485                       1259    583388    lc_interesadodocumentotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_interesadodocumentotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_survey_model.lc_interesadodocumentotipo;
       test_ladm_survey_model         postgres    false    409    15                       1259    583253    lc_interesadotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_interesadotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_survey_model.lc_interesadotipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582819 
   lc_lindero    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_lindero (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    longitud numeric(6,1) NOT NULL,
    geometria public.geometry(LineStringZ,38820),
    localizacion_textual character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_lindero_longitud_check CHECK (((longitud >= 0.0) AND (longitud <= 10000.0)))
);
 .   DROP TABLE test_ladm_survey_model.lc_lindero;
       test_ladm_survey_model         postgres    false    409    15            B'           0    0    TABLE lc_lindero    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_lindero IS 'Linea de división que separa un bien inmueble de otro, que puede o no estar materializada físicamente.';
            test_ladm_survey_model       postgres    false    486            C'           0    0    COLUMN lc_lindero.longitud    COMMENT     c   COMMENT ON COLUMN test_ladm_survey_model.lc_lindero.longitud IS 'Longitud en metros del lindero.';
            test_ladm_survey_model       postgres    false    486            D'           0    0    COLUMN lc_lindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_lindero.geometria IS 'Geometría lineal que define el lindero. Puede estar asociada a geometrías de tipo punto que definen sus vértices o ser una entidad lineal independiente.';
            test_ladm_survey_model       postgres    false    486            E'           0    0 &   COLUMN lc_lindero.localizacion_textual    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_lindero.localizacion_textual IS 'Descripción de la localización, cuando esta se basa en texto.';
            test_ladm_survey_model       postgres    false    486            F'           0    0 ,   COLUMN lc_lindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_lindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    486            G'           0    0 '   COLUMN lc_lindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_lindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    486            H'           0    0 $   COLUMN lc_lindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_lindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    486            I'           0    0    COLUMN lc_lindero.local_id    COMMENT     _   COMMENT ON COLUMN test_ladm_survey_model.lc_lindero.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    486            �           1259    582830    lc_objetoconstruccion    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_objetoconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_objeto_construccion bigint NOT NULL,
    puntos integer NOT NULL,
    lc_grupo_calificacion bigint NOT NULL,
    CONSTRAINT lc_objetoconstruccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 16)))
);
 9   DROP TABLE test_ladm_survey_model.lc_objetoconstruccion;
       test_ladm_survey_model         postgres    false    409    15            J'           0    0    TABLE lc_objetoconstruccion    COMMENT        COMMENT ON TABLE test_ladm_survey_model.lc_objetoconstruccion IS 'Puntaje de cada item de la calificación de construcción.';
            test_ladm_survey_model       postgres    false    487            K'           0    0 5   COLUMN lc_objetoconstruccion.tipo_objeto_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_objetoconstruccion.tipo_objeto_construccion IS 'Item de la calificación de construcción según la método de calificación vigente.';
            test_ladm_survey_model       postgres    false    487            L'           0    0 #   COLUMN lc_objetoconstruccion.puntos    COMMENT     j   COMMENT ON COLUMN test_ladm_survey_model.lc_objetoconstruccion.puntos IS 'Puntaje del ítem calificado.';
            test_ladm_survey_model       postgres    false    487            '           1259    583460    lc_objetoconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_objetoconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_survey_model.lc_objetoconstrucciontipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582839    lc_ofertasmercadoinmobiliario    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_ofertasmercadoinmobiliario (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_oferta bigint NOT NULL,
    valor_pedido numeric(16,1) NOT NULL,
    valor_negociado numeric(16,1) NOT NULL,
    fecha_captura_oferta date NOT NULL,
    tiempo_oferta_mercado integer,
    numero_contacto_oferente character varying(20) NOT NULL,
    nombre_oferente character varying(255) NOT NULL,
    lc_predio bigint,
    CONSTRAINT lc_ofertasmercadoinmblrio_tiempo_oferta_mercado_check CHECK (((tiempo_oferta_mercado >= 0) AND (tiempo_oferta_mercado <= 1000))),
    CONSTRAINT lc_ofertasmercadoinmblrio_valor_negociado_check CHECK (((valor_negociado >= 0.0) AND (valor_negociado <= '999999999999999'::numeric))),
    CONSTRAINT lc_ofertasmercadoinmblrio_valor_pedido_check CHECK (((valor_pedido >= 0.0) AND (valor_pedido <= '999999999999999'::numeric)))
);
 A   DROP TABLE test_ladm_survey_model.lc_ofertasmercadoinmobiliario;
       test_ladm_survey_model         postgres    false    409    15            M'           0    0 0   COLUMN lc_ofertasmercadoinmobiliario.tipo_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_ofertasmercadoinmobiliario.tipo_oferta IS 'La clase de oferta corresponde a una oferta de venta o a una oferta de arriendo del predio.';
            test_ladm_survey_model       postgres    false    488            N'           0    0 1   COLUMN lc_ofertasmercadoinmobiliario.valor_pedido    COMMENT        COMMENT ON COLUMN test_ladm_survey_model.lc_ofertasmercadoinmobiliario.valor_pedido IS 'Dato del valor en pesos de la oferta';
            test_ladm_survey_model       postgres    false    488            O'           0    0 4   COLUMN lc_ofertasmercadoinmobiliario.valor_negociado    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_ofertasmercadoinmobiliario.valor_negociado IS 'Dato del valor en pesos negociado entre el vendedor y el posible comprador';
            test_ladm_survey_model       postgres    false    488            P'           0    0 9   COLUMN lc_ofertasmercadoinmobiliario.fecha_captura_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_ofertasmercadoinmobiliario.fecha_captura_oferta IS 'Año, mes y día de captura de la oferta en campo.';
            test_ladm_survey_model       postgres    false    488            Q'           0    0 :   COLUMN lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado IS 'Número de meses de la publicitación de la oferta en el mercado inmobiliario.';
            test_ladm_survey_model       postgres    false    488            R'           0    0 =   COLUMN lc_ofertasmercadoinmobiliario.numero_contacto_oferente    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_ofertasmercadoinmobiliario.numero_contacto_oferente IS 'Número de teléfono fijo o número celular de la persona que está publicitando el bien inmueble.';
            test_ladm_survey_model       postgres    false    488                       1259    583316    lc_ofertatipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_ofertatipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_survey_model.lc_ofertatipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582848 	   lc_predio    TABLE     :  CREATE TABLE test_ladm_survey_model.lc_predio (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    departamento character varying(2) NOT NULL,
    municipio character varying(3) NOT NULL,
    id_operacion character varying(30) NOT NULL,
    tiene_fmi boolean NOT NULL,
    codigo_orip character varying(3),
    matricula_inmobiliaria character varying(80),
    numero_predial character varying(30),
    numero_predial_anterior character varying(20),
    nupre character varying(11),
    avaluo_catastral numeric(16,1),
    tipo bigint NOT NULL,
    condicion_predio bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_predio_avaluo_catastral_check CHECK (((avaluo_catastral >= 0.0) AND (avaluo_catastral <= '999999999999999'::numeric)))
);
 -   DROP TABLE test_ladm_survey_model.lc_predio;
       test_ladm_survey_model         postgres    false    409    15            S'           0    0    TABLE lc_predio    COMMENT     &  COMMENT ON TABLE test_ladm_survey_model.lc_predio IS 'Clase especializada de BaUnit, que describe la unidad administrativa básica para el caso de Colombia.
El predio es la unidad territorial legal propia de Catastro. Está formada por el terreno y puede o no tener construcciones asociadas.';
            test_ladm_survey_model       postgres    false    489            T'           0    0    COLUMN lc_predio.departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.departamento IS 'Corresponde al código del departamento al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 2 dígitos.';
            test_ladm_survey_model       postgres    false    489            U'           0    0    COLUMN lc_predio.municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.municipio IS 'Corresponde al código del municipio al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 3 dígitos.';
            test_ladm_survey_model       postgres    false    489            V'           0    0    COLUMN lc_predio.id_operacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.id_operacion IS 'Identificador único temporal de cada predio que se asigna en el desarrollo del levantamiento catastral.';
            test_ladm_survey_model       postgres    false    489            W'           0    0    COLUMN lc_predio.tiene_fmi    COMMENT     u   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.tiene_fmi IS 'Indica si el predio tiene matricula inmobiliaria.';
            test_ladm_survey_model       postgres    false    489            X'           0    0    COLUMN lc_predio.codigo_orip    COMMENT     W   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.codigo_orip IS 'Circulo registral';
            test_ladm_survey_model       postgres    false    489            Y'           0    0 '   COLUMN lc_predio.matricula_inmobiliaria    COMMENT     g   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.matricula_inmobiliaria IS 'Matricula inmobiliaria';
            test_ladm_survey_model       postgres    false    489            Z'           0    0    COLUMN lc_predio.numero_predial    COMMENT     )  COMMENT ON COLUMN test_ladm_survey_model.lc_predio.numero_predial IS 'Nuevo Código numérico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_survey_model       postgres    false    489            ['           0    0 (   COLUMN lc_predio.numero_predial_anterior    COMMENT     2  COMMENT ON COLUMN test_ladm_survey_model.lc_predio.numero_predial_anterior IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi.';
            test_ladm_survey_model       postgres    false    489            \'           0    0    COLUMN lc_predio.nupre    COMMENT     F  COMMENT ON COLUMN test_ladm_survey_model.lc_predio.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_survey_model       postgres    false    489            ]'           0    0 !   COLUMN lc_predio.avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.avaluo_catastral IS 'Valor catastral del predio, obtenido mediante investigación y análisis estadístico del mercado inmobiliario y la metodología de aplicación correspondiente.';
            test_ladm_survey_model       postgres    false    489            ^'           0    0 !   COLUMN lc_predio.condicion_predio    COMMENT     q   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_survey_model       postgres    false    489            _'           0    0    COLUMN lc_predio.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.nombre IS 'Nombre que recibe la unidad administrativa básica, en muchos casos toponímico, especialmente en terrenos rústicos.';
            test_ladm_survey_model       postgres    false    489            `'           0    0 +   COLUMN lc_predio.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    489            a'           0    0 &   COLUMN lc_predio.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    489            b'           0    0 #   COLUMN lc_predio.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    489            c'           0    0    COLUMN lc_predio.local_id    COMMENT     ^   COMMENT ON COLUMN test_ladm_survey_model.lc_predio.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    489            �           1259    582990    lc_predio_copropiedad    TABLE     �   CREATE TABLE test_ladm_survey_model.lc_predio_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    predio bigint NOT NULL,
    copropiedad bigint NOT NULL
);
 9   DROP TABLE test_ladm_survey_model.lc_predio_copropiedad;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582998    lc_predio_ini_predioinsumos    TABLE       CREATE TABLE test_ladm_survey_model.lc_predio_ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ini_predio_insumos bigint NOT NULL,
    lc_predio bigint NOT NULL
);
 ?   DROP TABLE test_ladm_survey_model.lc_predio_ini_predioinsumos;
       test_ladm_survey_model         postgres    false    409    15                       1259    583370    lc_prediotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_prediotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_survey_model.lc_prediotipo;
       test_ladm_survey_model         postgres    false    409    15            .           1259    583523 &   lc_procedimientocatastralregistraltipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_procedimientocatastralregistraltipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 J   DROP TABLE test_ladm_survey_model.lc_procedimientocatastralregistraltipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582860    lc_puntocontrol    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_puntocontrol (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    id_punto_control character varying(255) NOT NULL,
    puntotipo bigint NOT NULL,
    tipo_punto_control bigint,
    exactitud_horizontal numeric(5,3) NOT NULL,
    exactitud_vertical numeric(5,3) NOT NULL,
    posicion_interpolacion bigint,
    metodoproduccion bigint NOT NULL,
    geometria public.geometry(PointZ,38820) NOT NULL,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_puntocontrol_exactitud_horizontal_check CHECK (((exactitud_horizontal >= 0.0) AND (exactitud_horizontal <= 10.0))),
    CONSTRAINT lc_puntocontrol_exactitud_vertical_check CHECK (((exactitud_vertical >= 0.0) AND (exactitud_vertical <= 10.0)))
);
 3   DROP TABLE test_ladm_survey_model.lc_puntocontrol;
       test_ladm_survey_model         postgres    false    409    15            d'           0    0    TABLE lc_puntocontrol    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_puntocontrol IS 'Puntos topograficos o geodesicos utilizados como amarre para la ejecución del levantamiento catastral.';
            test_ladm_survey_model       postgres    false    490            e'           0    0 '   COLUMN lc_puntocontrol.id_punto_control    COMMENT     w   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.id_punto_control IS 'Nombre o código del punto de control.';
            test_ladm_survey_model       postgres    false    490            f'           0    0     COLUMN lc_puntocontrol.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_survey_model       postgres    false    490            g'           0    0 )   COLUMN lc_puntocontrol.tipo_punto_control    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.tipo_punto_control IS 'Si se trata de un punto de control o de apoyo.';
            test_ladm_survey_model       postgres    false    490            h'           0    0 +   COLUMN lc_puntocontrol.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.exactitud_horizontal IS 'Exactitud horizontal de la medición del punto.';
            test_ladm_survey_model       postgres    false    490            i'           0    0 )   COLUMN lc_puntocontrol.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.exactitud_vertical IS 'Exactitud vertical de la medición del punto.';
            test_ladm_survey_model       postgres    false    490            j'           0    0 -   COLUMN lc_puntocontrol.posicion_interpolacion    COMMENT     s   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_survey_model       postgres    false    490            k'           0    0 '   COLUMN lc_puntocontrol.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_survey_model       postgres    false    490            l'           0    0     COLUMN lc_puntocontrol.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_survey_model       postgres    false    490            m'           0    0 1   COLUMN lc_puntocontrol.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    490            n'           0    0 ,   COLUMN lc_puntocontrol.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    490            o'           0    0 )   COLUMN lc_puntocontrol.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    490            p'           0    0    COLUMN lc_puntocontrol.local_id    COMMENT     d   COMMENT ON COLUMN test_ladm_survey_model.lc_puntocontrol.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    490            !           1259    583406    lc_puntocontroltipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_puntocontroltipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_survey_model.lc_puntocontroltipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582961    lc_puntolevantamiento    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_puntolevantamiento (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    id_punto_levantamiento character varying(255) NOT NULL,
    puntotipo bigint NOT NULL,
    tipo_punto_levantamiento bigint NOT NULL,
    fotoidentificacion bigint,
    exactitud_horizontal numeric(5,3) NOT NULL,
    exactitud_vertical numeric(5,3),
    posicion_interpolacion bigint,
    metodoproduccion bigint NOT NULL,
    geometria public.geometry(PointZ,38820) NOT NULL,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_puntolevantamiento_exactitud_horizontal_check CHECK (((exactitud_horizontal >= 0.0) AND (exactitud_horizontal <= 10.0))),
    CONSTRAINT lc_puntolevantamiento_exactitud_vertical_check CHECK (((exactitud_vertical >= 0.0) AND (exactitud_vertical <= 10.0)))
);
 9   DROP TABLE test_ladm_survey_model.lc_puntolevantamiento;
       test_ladm_survey_model         postgres    false    409    15            q'           0    0    TABLE lc_puntolevantamiento    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_puntolevantamiento IS 'Puntos que definen los limites de las construcciones, unidad de construcción y servidumbres de transito.';
            test_ladm_survey_model       postgres    false    497            r'           0    0 3   COLUMN lc_puntolevantamiento.id_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.id_punto_levantamiento IS 'Nombre o código del punto levantamiento.';
            test_ladm_survey_model       postgres    false    497            s'           0    0 &   COLUMN lc_puntolevantamiento.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_survey_model       postgres    false    497            t'           0    0 5   COLUMN lc_puntolevantamiento.tipo_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.tipo_punto_levantamiento IS 'Indica si el tipo de punto corresponde a una construcción o servidumbre de tránsito.';
            test_ladm_survey_model       postgres    false    497            u'           0    0 /   COLUMN lc_puntolevantamiento.fotoidentificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_survey_model       postgres    false    497            v'           0    0 1   COLUMN lc_puntolevantamiento.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto levantamiento.';
            test_ladm_survey_model       postgres    false    497            w'           0    0 /   COLUMN lc_puntolevantamiento.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto levantamiento';
            test_ladm_survey_model       postgres    false    497            x'           0    0 3   COLUMN lc_puntolevantamiento.posicion_interpolacion    COMMENT     y   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_survey_model       postgres    false    497            y'           0    0 -   COLUMN lc_puntolevantamiento.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_survey_model       postgres    false    497            z'           0    0 &   COLUMN lc_puntolevantamiento.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_survey_model       postgres    false    497            {'           0    0 7   COLUMN lc_puntolevantamiento.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    497            |'           0    0 2   COLUMN lc_puntolevantamiento.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    497            }'           0    0 /   COLUMN lc_puntolevantamiento.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    497            ~'           0    0 %   COLUMN lc_puntolevantamiento.local_id    COMMENT     j   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolevantamiento.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    497            *           1259    583487    lc_puntolevtipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_puntolevtipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_survey_model.lc_puntolevtipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582879    lc_puntolindero    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_puntolindero (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    id_punto_lindero character varying(255) NOT NULL,
    puntotipo bigint NOT NULL,
    acuerdo bigint NOT NULL,
    fotoidentificacion bigint,
    exactitud_horizontal numeric(5,3) NOT NULL,
    exactitud_vertical numeric(5,3),
    posicion_interpolacion bigint,
    metodoproduccion bigint NOT NULL,
    geometria public.geometry(PointZ,38820) NOT NULL,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_puntolindero_exactitud_horizontal_check CHECK (((exactitud_horizontal >= 0.0) AND (exactitud_horizontal <= 10.0))),
    CONSTRAINT lc_puntolindero_exactitud_vertical_check CHECK (((exactitud_vertical >= 0.0) AND (exactitud_vertical <= 10.0)))
);
 3   DROP TABLE test_ladm_survey_model.lc_puntolindero;
       test_ladm_survey_model         postgres    false    409    15            '           0    0    TABLE lc_puntolindero    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_puntolindero IS 'Puntos que definen los lindero de un terreno. La sucesión de estos puntos forman una línea que representa el límite entre dos terrenos.';
            test_ladm_survey_model       postgres    false    491            �'           0    0 '   COLUMN lc_puntolindero.id_punto_lindero    COMMENT     s   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.id_punto_lindero IS 'Nombre o código del punto lindero';
            test_ladm_survey_model       postgres    false    491            �'           0    0     COLUMN lc_puntolindero.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_survey_model       postgres    false    491            �'           0    0    COLUMN lc_puntolindero.acuerdo    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.acuerdo IS 'Indica si existe acuerdo o no entre los colindantes en relación al punto lindero que se está midiendo.';
            test_ladm_survey_model       postgres    false    491            �'           0    0 )   COLUMN lc_puntolindero.fotoidentificacion    COMMENT     {   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_survey_model       postgres    false    491            �'           0    0 +   COLUMN lc_puntolindero.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto lindero';
            test_ladm_survey_model       postgres    false    491            �'           0    0 )   COLUMN lc_puntolindero.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto lindero';
            test_ladm_survey_model       postgres    false    491            �'           0    0 -   COLUMN lc_puntolindero.posicion_interpolacion    COMMENT     s   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_survey_model       postgres    false    491            �'           0    0 '   COLUMN lc_puntolindero.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_survey_model       postgres    false    491            �'           0    0     COLUMN lc_puntolindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_survey_model       postgres    false    491            �'           0    0 1   COLUMN lc_puntolindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    491            �'           0    0 ,   COLUMN lc_puntolindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    491            �'           0    0 )   COLUMN lc_puntolindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    491            �'           0    0    COLUMN lc_puntolindero.local_id    COMMENT     d   COMMENT ON COLUMN test_ladm_survey_model.lc_puntolindero.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    491                       1259    583163    lc_puntotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_survey_model.lc_puntotipo;
       test_ladm_survey_model         postgres    false    409    15                       1259    583262    lc_relacionprediotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_relacionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_survey_model.lc_relacionprediotipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582899    lc_restriccion    TABLE     T  CREATE TABLE test_ladm_survey_model.lc_restriccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    descripcion character varying(255),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 2   DROP TABLE test_ladm_survey_model.lc_restriccion;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0    TABLE lc_restriccion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_restriccion IS 'Restricción legalmente constituida y registrada que afecta el derecho de un persona en relación con el predio.';
            test_ladm_survey_model       postgres    false    492            �'           0    0    COLUMN lc_restriccion.tipo    COMMENT     o   COMMENT ON COLUMN test_ladm_survey_model.lc_restriccion.tipo IS 'Tipo de Restricción que afecta el derecho.';
            test_ladm_survey_model       postgres    false    492            �'           0    0 !   COLUMN lc_restriccion.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_restriccion.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_survey_model       postgres    false    492            �'           0    0 0   COLUMN lc_restriccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_restriccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    492            �'           0    0 +   COLUMN lc_restriccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_restriccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    492            �'           0    0 (   COLUMN lc_restriccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_restriccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    492            �'           0    0    COLUMN lc_restriccion.local_id    COMMENT     c   COMMENT ON COLUMN test_ladm_survey_model.lc_restriccion.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    492                       1259    583361    lc_restricciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_restricciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_survey_model.lc_restricciontipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    583100    lc_resultadovisitatipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_resultadovisitatipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_survey_model.lc_resultadovisitatipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    583006    lc_servidumbretransito    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_servidumbretransito (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    area_servidumbre numeric(15,1) NOT NULL,
    dimension bigint,
    etiqueta character varying(255),
    relacion_superficie bigint,
    geometria public.geometry(MultiPolygonZ,38820),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_servidumbretransito_area_servidumbre_check CHECK (((area_servidumbre >= 0.0) AND (area_servidumbre <= 99999999999999.9)))
);
 :   DROP TABLE test_ladm_survey_model.lc_servidumbretransito;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0    TABLE lc_servidumbretransito    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_servidumbretransito IS 'Tipo de unidad espacial que permite la representación de una servidumbre de paso asociada a una COL_BAUnit.';
            test_ladm_survey_model       postgres    false    501            �'           0    0 .   COLUMN lc_servidumbretransito.area_servidumbre    COMMENT     v   COMMENT ON COLUMN test_ladm_survey_model.lc_servidumbretransito.area_servidumbre IS 'Área total de la servidumbre.';
            test_ladm_survey_model       postgres    false    501            �'           0    0 '   COLUMN lc_servidumbretransito.dimension    COMMENT     g   COMMENT ON COLUMN test_ladm_survey_model.lc_servidumbretransito.dimension IS 'Dimensión del objeto.';
            test_ladm_survey_model       postgres    false    501            �'           0    0 &   COLUMN lc_servidumbretransito.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_servidumbretransito.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_survey_model       postgres    false    501            �'           0    0 1   COLUMN lc_servidumbretransito.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_servidumbretransito.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_survey_model       postgres    false    501            �'           0    0 '   COLUMN lc_servidumbretransito.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_servidumbretransito.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_survey_model       postgres    false    501            �'           0    0 8   COLUMN lc_servidumbretransito.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_servidumbretransito.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    501            �'           0    0 3   COLUMN lc_servidumbretransito.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_servidumbretransito.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    501            �'           0    0 0   COLUMN lc_servidumbretransito.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_servidumbretransito.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    501            �'           0    0 &   COLUMN lc_servidumbretransito.local_id    COMMENT     k   COMMENT ON COLUMN test_ladm_survey_model.lc_servidumbretransito.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    501                       1259    583118    lc_sexotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_sexotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_ladm_survey_model.lc_sexotipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582913 
   lc_terreno    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    area_terreno numeric(15,1) NOT NULL,
    avaluo_terreno numeric(16,1),
    manzana_vereda_codigo character varying(21),
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL,
    dimension bigint,
    etiqueta character varying(255),
    relacion_superficie bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_terreno_area_terreno_check CHECK (((area_terreno >= 0.0) AND (area_terreno <= 99999999999999.9))),
    CONSTRAINT lc_terreno_avaluo_terreno_check CHECK (((avaluo_terreno >= 0.0) AND (avaluo_terreno <= '999999999999999'::numeric)))
);
 .   DROP TABLE test_ladm_survey_model.lc_terreno;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0    TABLE lc_terreno    COMMENT     u   COMMENT ON TABLE test_ladm_survey_model.lc_terreno IS 'Porción de tierra con una extensión geográfica definida.';
            test_ladm_survey_model       postgres    false    493            �'           0    0    COLUMN lc_terreno.area_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_terreno.area_terreno IS 'Área total del terreno  resultante del levantamiento catastral..';
            test_ladm_survey_model       postgres    false    493            �'           0    0     COLUMN lc_terreno.avaluo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_terreno.avaluo_terreno IS 'Valor catastral asignado en el proceso de valoración económica masiva al terreno del predio.';
            test_ladm_survey_model       postgres    false    493            �'           0    0 '   COLUMN lc_terreno.manzana_vereda_codigo    COMMENT     _  COMMENT ON COLUMN test_ladm_survey_model.lc_terreno.manzana_vereda_codigo IS 'Corresponde la identificación del número predial hasta la posición 21, permite identificar la relación espacial en sus componentes: departamento, municipio, zona, sector, comuna, barrio, manzana o vereda y terreno de acuerdo a su codificación en el número predial.';
            test_ladm_survey_model       postgres    false    493            �'           0    0    COLUMN lc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_terreno.geometria IS 'Corresponde a la figura geométrica vectorial poligonal, generada a partir de los linderos del predio.';
            test_ladm_survey_model       postgres    false    493            �'           0    0    COLUMN lc_terreno.dimension    COMMENT     [   COMMENT ON COLUMN test_ladm_survey_model.lc_terreno.dimension IS 'Dimensión del objeto.';
            test_ladm_survey_model       postgres    false    493            �'           0    0    COLUMN lc_terreno.etiqueta    COMMENT     v   COMMENT ON COLUMN test_ladm_survey_model.lc_terreno.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_survey_model       postgres    false    493            �'           0    0 %   COLUMN lc_terreno.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_terreno.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_survey_model       postgres    false    493            �'           0    0 ,   COLUMN lc_terreno.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_terreno.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    493            �'           0    0 '   COLUMN lc_terreno.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_terreno.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    493            �'           0    0 $   COLUMN lc_terreno.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_terreno.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    493            �'           0    0    COLUMN lc_terreno.local_id    COMMENT     _   COMMENT ON COLUMN test_ladm_survey_model.lc_terreno.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    493            �           1259    582981    lc_tipologiaconstruccion    TABLE       CREATE TABLE test_ladm_survey_model.lc_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint NOT NULL,
    lc_unidad_construccion bigint
);
 <   DROP TABLE test_ladm_survey_model.lc_tipologiaconstruccion;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0    TABLE lc_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_tipologiaconstruccion IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_survey_model       postgres    false    498            �'           0    0 .   COLUMN lc_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_tipologiaconstruccion.tipo_tipologia IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_survey_model       postgres    false    498                        1259    583397    lc_tipologiatipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_tipologiatipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_survey_model.lc_tipologiatipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    583019    lc_unidadconstruccion    TABLE     �	  CREATE TABLE test_ladm_survey_model.lc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    identificador character varying(3) NOT NULL,
    tipo_dominio bigint,
    tipo_construccion bigint,
    tipo_unidad_construccion bigint NOT NULL,
    tipo_planta bigint NOT NULL,
    planta_ubicacion integer NOT NULL,
    total_habitaciones integer,
    total_banios integer,
    total_locales integer,
    total_pisos integer,
    uso bigint,
    anio_construccion integer,
    avaluo_unidad_construccion numeric(16,1),
    area_construida numeric(15,1) NOT NULL,
    area_privada_construida numeric(15,1),
    altura integer,
    observaciones text,
    lc_construccion bigint NOT NULL,
    dimension bigint,
    etiqueta character varying(255),
    relacion_superficie bigint,
    geometria public.geometry(MultiPolygonZ,38820),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_unidadconstruccion_altura_check CHECK (((altura >= 1) AND (altura <= 1000))),
    CONSTRAINT lc_unidadconstruccion_anio_construccion_check CHECK (((anio_construccion >= 1512) AND (anio_construccion <= 2500))),
    CONSTRAINT lc_unidadconstruccion_area_construida_check CHECK (((area_construida >= 0.0) AND (area_construida <= 99999999999999.9))),
    CONSTRAINT lc_unidadconstruccion_area_privada_construida_check CHECK (((area_privada_construida >= 0.0) AND (area_privada_construida <= 99999999999999.9))),
    CONSTRAINT lc_unidadconstruccion_avaluo_unidad_constrccion_check CHECK (((avaluo_unidad_construccion >= 0.0) AND (avaluo_unidad_construccion <= '999999999999999'::numeric))),
    CONSTRAINT lc_unidadconstruccion_planta_ubicacion_check CHECK (((planta_ubicacion >= 0) AND (planta_ubicacion <= 500))),
    CONSTRAINT lc_unidadconstruccion_total_banios_check CHECK (((total_banios >= 0) AND (total_banios <= 999999))),
    CONSTRAINT lc_unidadconstruccion_total_habitaciones_check CHECK (((total_habitaciones >= 0) AND (total_habitaciones <= 999999))),
    CONSTRAINT lc_unidadconstruccion_total_locales_check CHECK (((total_locales >= 0) AND (total_locales <= 999999))),
    CONSTRAINT lc_unidadconstruccion_total_pisos_check CHECK (((total_pisos >= 0) AND (total_pisos <= 150)))
);
 9   DROP TABLE test_ladm_survey_model.lc_unidadconstruccion;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0    TABLE lc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.lc_unidadconstruccion IS 'Es cada conjunto de materiales consolidados dentro de un predio que tiene unas características específicas en cuanto a elementos constitutivos físicos y usos de la misma.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 *   COLUMN lc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 )   COLUMN lc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 .   COLUMN lc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 5   COLUMN lc_unidadconstruccion.tipo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.tipo_unidad_construccion IS 'Indica si la unidad de construcción es residencial, comercial, industrial o anexo.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 (   COLUMN lc_unidadconstruccion.tipo_planta    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.tipo_planta IS 'Indica el tipo de planta donde se ubica la unidad de construcción.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 -   COLUMN lc_unidadconstruccion.planta_ubicacion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.planta_ubicacion IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 /   COLUMN lc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 )   COLUMN lc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 *   COLUMN lc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 (   COLUMN lc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_survey_model       postgres    false    502            �'           0    0     COLUMN lc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 .   COLUMN lc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 7   COLUMN lc_unidadconstruccion.avaluo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.avaluo_unidad_construccion IS 'Avalúo catastral de la unidad de construcción.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 ,   COLUMN lc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 4   COLUMN lc_unidadconstruccion.area_privada_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.area_privada_construida IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 #   COLUMN lc_unidadconstruccion.altura    COMMENT     x   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.altura IS 'Altura total de la unidad de construcción.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 *   COLUMN lc_unidadconstruccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.observaciones IS 'Observaciones generales respecto de la unidad de construcción.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 &   COLUMN lc_unidadconstruccion.dimension    COMMENT     f   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.dimension IS 'Dimensión del objeto.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 %   COLUMN lc_unidadconstruccion.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 0   COLUMN lc_unidadconstruccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 &   COLUMN lc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 7   COLUMN lc_unidadconstruccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 2   COLUMN lc_unidadconstruccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 /   COLUMN lc_unidadconstruccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_survey_model       postgres    false    502            �'           0    0 %   COLUMN lc_unidadconstruccion.local_id    COMMENT     j   COMMENT ON COLUMN test_ladm_survey_model.lc_unidadconstruccion.local_id IS 'Identificador único local.';
            test_ladm_survey_model       postgres    false    502                       1259    583271    lc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_survey_model.lc_unidadconstrucciontipo;
       test_ladm_survey_model         postgres    false    409    15            <           1259    583649    lc_usouconstipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_usouconstipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_survey_model.lc_usouconstipo;
       test_ladm_survey_model         postgres    false    409    15                       1259    583208 
   lc_viatipo    TABLE     �  CREATE TABLE test_ladm_survey_model.lc_viatipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_ladm_survey_model.lc_viatipo;
       test_ladm_survey_model         postgres    false    409    15                       1259    583127    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_survey_model.snr_calidadderechotipo;
       test_ladm_survey_model         postgres    false    409    15            4           1259    583577    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_ladm_survey_model.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_survey_model.snr_clasepredioregistrotipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582604    snr_derecho    TABLE     i  CREATE TABLE test_ladm_survey_model.snr_derecho (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 /   DROP TABLE test_ladm_survey_model.snr_derecho;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0    TABLE snr_derecho    COMMENT     `   COMMENT ON TABLE test_ladm_survey_model.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
            test_ladm_survey_model       postgres    false    466            �'           0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     s   COMMENT ON COLUMN test_ladm_survey_model.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
            test_ladm_survey_model       postgres    false    466            �'           0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
            test_ladm_survey_model       postgres    false    466            �           1259    583082    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_ladm_survey_model.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_survey_model.snr_documentotitulartipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582613    snr_estructuramatriculamatriz    TABLE     I  CREATE TABLE test_ladm_survey_model.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 A   DROP TABLE test_ladm_survey_model.snr_estructuramatriculamatriz;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_survey_model       postgres    false    467            �'           0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_survey_model       postgres    false    467            �'           0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
            test_ladm_survey_model       postgres    false    467            �           1259    582620    snr_fuentecabidalinderos    TABLE     w  CREATE TABLE test_ladm_survey_model.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 <   DROP TABLE test_ladm_survey_model.snr_fuentecabidalinderos;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
            test_ladm_survey_model       postgres    false    468            �'           0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_survey_model       postgres    false    468            �'           0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_survey_model       postgres    false    468            �'           0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_survey_model       postgres    false    468            �'           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_survey_model       postgres    false    468            �           1259    582630    snr_fuentederecho    TABLE     p  CREATE TABLE test_ladm_survey_model.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 5   DROP TABLE test_ladm_survey_model.snr_fuentederecho;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0    TABLE snr_fuentederecho    COMMENT     l   COMMENT ON TABLE test_ladm_survey_model.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
            test_ladm_survey_model       postgres    false    469            �'           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_survey_model       postgres    false    469            �'           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_survey_model       postgres    false    469            �'           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_survey_model       postgres    false    469            �'           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_survey_model       postgres    false    469            8           1259    583613    snr_fuentetipo    TABLE     �  CREATE TABLE test_ladm_survey_model.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_survey_model.snr_fuentetipo;
       test_ladm_survey_model         postgres    false    409    15                       1259    583172    snr_personatitulartipo    TABLE     �  CREATE TABLE test_ladm_survey_model.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_survey_model.snr_personatitulartipo;
       test_ladm_survey_model         postgres    false    409    15            �           1259    582651    snr_predioregistro    TABLE     9  CREATE TABLE test_ladm_survey_model.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_orip character varying(3),
    matricula_inmobiliaria character varying(80),
    numero_predial_nuevo_en_fmi character varying(100),
    numero_predial_anterior_en_fmi character varying(100),
    nomenclatura_registro character varying(255),
    cabida_linderos text,
    clase_suelo_registro bigint,
    fecha_datos date NOT NULL,
    snr_fuente_cabidalinderos bigint
);
 6   DROP TABLE test_ladm_survey_model.snr_predioregistro;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0    TABLE snr_predioregistro    COMMENT     i   COMMENT ON TABLE test_ladm_survey_model.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
            test_ladm_survey_model       postgres    false    471            �'           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_survey_model       postgres    false    471            �'           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_survey_model       postgres    false    471            �'           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     Q  COMMENT ON COLUMN test_ladm_survey_model.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_survey_model       postgres    false    471            �'           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     U  COMMENT ON COLUMN test_ladm_survey_model.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_survey_model       postgres    false    471            �'           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
            test_ladm_survey_model       postgres    false    471            �'           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
            test_ladm_survey_model       postgres    false    471            �'           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_survey_model.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
            test_ladm_survey_model       postgres    false    471            �'           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT     p   COMMENT ON COLUMN test_ladm_survey_model.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
            test_ladm_survey_model       postgres    false    471            �           1259    582640    snr_titular    TABLE     �  CREATE TABLE test_ladm_survey_model.snr_titular (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 /   DROP TABLE test_ladm_survey_model.snr_titular;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0    TABLE snr_titular    COMMENT     m   COMMENT ON TABLE test_ladm_survey_model.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
            test_ladm_survey_model       postgres    false    470            �'           0    0    COLUMN snr_titular.tipo_persona    COMMENT     X   COMMENT ON COLUMN test_ladm_survey_model.snr_titular.tipo_persona IS 'Tipo de persona';
            test_ladm_survey_model       postgres    false    470            �'           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     n   COMMENT ON COLUMN test_ladm_survey_model.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_survey_model       postgres    false    470            �'           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     s   COMMENT ON COLUMN test_ladm_survey_model.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
            test_ladm_survey_model       postgres    false    470            �'           0    0    COLUMN snr_titular.nombres    COMMENT     b   COMMENT ON COLUMN test_ladm_survey_model.snr_titular.nombres IS 'Nombres de la persona física.';
            test_ladm_survey_model       postgres    false    470            �'           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     r   COMMENT ON COLUMN test_ladm_survey_model.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_survey_model       postgres    false    470            �'           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     t   COMMENT ON COLUMN test_ladm_survey_model.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_survey_model       postgres    false    470            �'           0    0    COLUMN snr_titular.razon_social    COMMENT     ~   COMMENT ON COLUMN test_ladm_survey_model.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
            test_ladm_survey_model       postgres    false    470            �           1259    582662    snr_titular_derecho    TABLE     4  CREATE TABLE test_ladm_survey_model.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_ladm_survey_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 7   DROP TABLE test_ladm_survey_model.snr_titular_derecho;
       test_ladm_survey_model         postgres    false    409    15            �'           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_survey_model.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
            test_ladm_survey_model       postgres    false    472            A           1259    583693    t_ili2db_attrname    TABLE     �   CREATE TABLE test_ladm_survey_model.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 5   DROP TABLE test_ladm_survey_model.t_ili2db_attrname;
       test_ladm_survey_model         postgres    false    15            �           1259    583038    t_ili2db_basket    TABLE       CREATE TABLE test_ladm_survey_model.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 3   DROP TABLE test_ladm_survey_model.t_ili2db_basket;
       test_ladm_survey_model         postgres    false    15            @           1259    583685    t_ili2db_classname    TABLE     �   CREATE TABLE test_ladm_survey_model.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 6   DROP TABLE test_ladm_survey_model.t_ili2db_classname;
       test_ladm_survey_model         postgres    false    15            B           1259    583701    t_ili2db_column_prop    TABLE       CREATE TABLE test_ladm_survey_model.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 8   DROP TABLE test_ladm_survey_model.t_ili2db_column_prop;
       test_ladm_survey_model         postgres    false    15            �           1259    583047    t_ili2db_dataset    TABLE     {   CREATE TABLE test_ladm_survey_model.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 4   DROP TABLE test_ladm_survey_model.t_ili2db_dataset;
       test_ladm_survey_model         postgres    false    15            �           1259    583052    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_ladm_survey_model.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 8   DROP TABLE test_ladm_survey_model.t_ili2db_inheritance;
       test_ladm_survey_model         postgres    false    15            D           1259    583713    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_ladm_survey_model.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 7   DROP TABLE test_ladm_survey_model.t_ili2db_meta_attrs;
       test_ladm_survey_model         postgres    false    15            �           1259    583074    t_ili2db_model    TABLE        CREATE TABLE test_ladm_survey_model.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 2   DROP TABLE test_ladm_survey_model.t_ili2db_model;
       test_ladm_survey_model         postgres    false    15            �           1259    583060    t_ili2db_settings    TABLE     �   CREATE TABLE test_ladm_survey_model.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 5   DROP TABLE test_ladm_survey_model.t_ili2db_settings;
       test_ladm_survey_model         postgres    false    15            C           1259    583707    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_ladm_survey_model.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 7   DROP TABLE test_ladm_survey_model.t_ili2db_table_prop;
       test_ladm_survey_model         postgres    false    15            �           1259    583068    t_ili2db_trafo    TABLE     �   CREATE TABLE test_ladm_survey_model.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 2   DROP TABLE test_ladm_survey_model.t_ili2db_trafo;
       test_ladm_survey_model         postgres    false    15            Y%          0    582096    cc_metodooperacion 
   TABLE DATA               �   COPY test_ladm_survey_model.cc_metodooperacion (t_id, t_seq, formula, dimensiones_origen, ddimensiones_objetivo, col_transformacion_transformacion) FROM stdin;
    test_ladm_survey_model       postgres    false    414   ~�	      �%          0    583334    ci_forma_presentacion_codigo 
   TABLE DATA               �   COPY test_ladm_survey_model.ci_forma_presentacion_codigo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    537   ��	      �%          0    583622    col_areatipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_areatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    569   a�	      Z%          0    582103    col_areavalor 
   TABLE DATA               �   COPY test_ladm_survey_model.col_areavalor (t_id, t_seq, tipo, area, datos_proyeccion, lc_construccion_area, lc_terreno_area, lc_servidumbretransito_area, lc_unidadconstruccion_area) FROM stdin;
    test_ladm_survey_model       postgres    false    415   ��	      u%          0    582372    col_baunitcomointeresado 
   TABLE DATA               �   COPY test_ladm_survey_model.col_baunitcomointeresado (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad) FROM stdin;
    test_ladm_survey_model       postgres    false    442   ��	      k%          0    582281    col_baunitfuente 
   TABLE DATA               d   COPY test_ladm_survey_model.col_baunitfuente (t_id, t_ili_tid, fuente_espacial, unidad) FROM stdin;
    test_ladm_survey_model       postgres    false    432   ��	      m%          0    582296    col_cclfuente 
   TABLE DATA               ^   COPY test_ladm_survey_model.col_cclfuente (t_id, t_ili_tid, ccl, fuente_espacial) FROM stdin;
    test_ladm_survey_model       postgres    false    434   ��	      q%          0    582336    col_clfuente 
   TABLE DATA               X   COPY test_ladm_survey_model.col_clfuente (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_survey_model       postgres    false    438    �	      �%          0    583280    col_contenidoniveltipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_contenidoniveltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    531   �	      �%          0    583478    col_dimensiontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_dimensiontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    553   !�	      �%          0    583145    col_estadodisponibilidadtipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_estadodisponibilidadtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    516   ��	      �%          0    583451    col_estadoredserviciostipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_estadoredserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    550   j�	      �%          0    583658    col_estructuratipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_estructuratipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    573   �	      �%          0    583325    col_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    536   ��	      �%          0    583109    col_fuenteespacialtipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_fuenteespacialtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    512   e�	      �%          0    583496    col_grupointeresadotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_grupointeresadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    555   ��	      �%          0    583244    col_interpolaciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_interpolaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    527   {�	      �%          0    583568    col_iso19125_tipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_iso19125_tipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    563   �	      o%          0    582315 
   col_masccl 
   TABLE DATA               �   COPY test_ladm_survey_model.col_masccl (t_id, t_ili_tid, ccl_mas, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion, ue_mas_lc_construccion) FROM stdin;
    test_ladm_survey_model       postgres    false    436   ��	      s%          0    582353 	   col_mascl 
   TABLE DATA               �   COPY test_ladm_survey_model.col_mascl (t_id, t_ili_tid, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion, ue_mas_lc_construccion) FROM stdin;
    test_ladm_survey_model       postgres    false    440   ��	      n%          0    582304    col_menosccl 
   TABLE DATA               �   COPY test_ladm_survey_model.col_menosccl (t_id, t_ili_tid, ccl_menos, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion, ue_menos_lc_construccion) FROM stdin;
    test_ladm_survey_model       postgres    false    435   ��	      r%          0    582343    col_menoscl 
   TABLE DATA               �   COPY test_ladm_survey_model.col_menoscl (t_id, t_ili_tid, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion, ue_menos_lc_construccion) FROM stdin;
    test_ladm_survey_model       postgres    false    439   ��	      �%          0    583289    col_metodoproducciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_metodoproducciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    532   �	      x%          0    582399    col_miembros 
   TABLE DATA               �   COPY test_ladm_survey_model.col_miembros (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, agrupacion) FROM stdin;
    test_ladm_survey_model       postgres    false    445   C�	      p%          0    582326    col_puntoccl 
   TABLE DATA               �   COPY test_ladm_survey_model.col_puntoccl (t_id, t_ili_tid, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento, ccl) FROM stdin;
    test_ladm_survey_model       postgres    false    437   `�	      t%          0    582363    col_puntocl 
   TABLE DATA               �   COPY test_ladm_survey_model.col_puntocl (t_id, t_ili_tid, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento) FROM stdin;
    test_ladm_survey_model       postgres    false    441   }�	      i%          0    582260    col_puntofuente 
   TABLE DATA               �   COPY test_ladm_survey_model.col_puntofuente (t_id, t_ili_tid, fuente_espacial, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento) FROM stdin;
    test_ladm_survey_model       postgres    false    430   ��	      �%          0    583631    col_puntotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    570   ��	      �%          0    583514    col_redserviciostipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_redserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    557   ,�	      �%          0    583424    col_registrotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_registrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    547   ��	      g%          0    582245    col_relacionfuente 
   TABLE DATA               d   COPY test_ladm_survey_model.col_relacionfuente (t_id, t_ili_tid, fuente_administrativa) FROM stdin;
    test_ladm_survey_model       postgres    false    428   S�	      l%          0    582289    col_relacionfuenteuespacial 
   TABLE DATA               g   COPY test_ladm_survey_model.col_relacionfuenteuespacial (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_survey_model       postgres    false    433   p�	      �%          0    583559    col_relacionsuperficietipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_relacionsuperficietipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    562   ��	      v%          0    582381    col_responsablefuente 
   TABLE DATA               �   COPY test_ladm_survey_model.col_responsablefuente (t_id, t_ili_tid, fuente_administrativa, interesado_lc_interesado, interesado_lc_agrupacioninteresados) FROM stdin;
    test_ladm_survey_model       postgres    false    443   *�	      e%          0    582225    col_rrrfuente 
   TABLE DATA               �   COPY test_ladm_survey_model.col_rrrfuente (t_id, t_ili_tid, fuente_administrativa, rrr_lc_restriccion, rrr_lc_derecho) FROM stdin;
    test_ladm_survey_model       postgres    false    426   G�	      w%          0    582390    col_topografofuente 
   TABLE DATA               �   COPY test_ladm_survey_model.col_topografofuente (t_id, t_ili_tid, fuente_espacial, topografo_lc_interesado, topografo_lc_agrupacioninteresados) FROM stdin;
    test_ladm_survey_model       postgres    false    444   d�	      ]%          0    582146    col_transformacion 
   TABLE DATA               �   COPY test_ladm_survey_model.col_transformacion (t_id, t_seq, localizacion_transformada, lc_puntocontrol_transformacion_y_resultado, lc_puntolindero_transformacion_y_resultado, lc_puntolevantamiento_transformacion_y_resultado) FROM stdin;
    test_ladm_survey_model       postgres    false    418   ��	      f%          0    582234    col_uebaunit 
   TABLE DATA               �   COPY test_ladm_survey_model.col_uebaunit (t_id, t_ili_tid, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, baunit) FROM stdin;
    test_ladm_survey_model       postgres    false    427   ��	      j%          0    582270    col_uefuente 
   TABLE DATA               �   COPY test_ladm_survey_model.col_uefuente (t_id, t_ili_tid, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, fuente_espacial) FROM stdin;
    test_ladm_survey_model       postgres    false    431   ��	      d%          0    582215    col_ueuegrupo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_ueuegrupo (t_id, t_ili_tid, parte_lc_terreno, parte_lc_servidumbretransito, parte_lc_unidadconstruccion, parte_lc_construccion) FROM stdin;
    test_ladm_survey_model       postgres    false    425   ��	      �%          0    583343 "   col_unidadadministrativabasicatipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_unidadadministrativabasicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    538   ��	      �%          0    583190    col_unidadedificaciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_unidadedificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    521   k�	      h%          0    582252    col_unidadfuente 
   TABLE DATA               j   COPY test_ladm_survey_model.col_unidadfuente (t_id, t_ili_tid, fuente_administrativa, unidad) FROM stdin;
    test_ladm_survey_model       postgres    false    429   ��	      �%          0    583442    col_volumentipo 
   TABLE DATA               �   COPY test_ladm_survey_model.col_volumentipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    549   ��	      c%          0    582204    col_volumenvalor 
   TABLE DATA               �   COPY test_ladm_survey_model.col_volumenvalor (t_id, t_seq, volumen_medicion, tipo, lc_construccion_volumen, lc_terreno_volumen, lc_servidumbretransito_volumen, lc_unidadconstruccion_volumen) FROM stdin;
    test_ladm_survey_model       postgres    false    424   y�	      b%          0    582192 
   extarchivo 
   TABLE DATA                 COPY test_ladm_survey_model.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo, lc_fuenteadministrtiva_ext_archivo_id, lc_fuenteespacial_ext_archivo_id) FROM stdin;
    test_ladm_survey_model       postgres    false    423   ��	      [%          0    582117    extdireccion 
   TABLE DATA               *  COPY test_ladm_survey_model.extdireccion (t_id, t_seq, tipo_direccion, es_direccion_principal, localizacion, codigo_postal, clase_via_principal, valor_via_principal, letra_via_principal, sector_ciudad, valor_via_generadora, letra_via_generadora, numero_predio, sector_predio, complemento, nombre_predio, extunidadedificcnfsica_ext_direccion_id, extinteresado_ext_direccion_id, lc_construccion_ext_direccion_id, lc_predio_direccion, lc_terreno_ext_direccion_id, lc_servidumbretransito_ext_direccion_id, lc_unidadconstruccion_ext_direccion_id) FROM stdin;
    test_ladm_survey_model       postgres    false    416   ��	      �%          0    583532     extdireccion_clase_via_principal 
   TABLE DATA               �   COPY test_ladm_survey_model.extdireccion_clase_via_principal (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    559   ��	      �%          0    583604    extdireccion_sector_ciudad 
   TABLE DATA               �   COPY test_ladm_survey_model.extdireccion_sector_ciudad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    567   ��	      �%          0    583091    extdireccion_sector_predio 
   TABLE DATA               �   COPY test_ladm_survey_model.extdireccion_sector_predio (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    510   P�	      �%          0    583640    extdireccion_tipo_direccion 
   TABLE DATA               �   COPY test_ladm_survey_model.extdireccion_tipo_direccion (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    571   ��	      `%          0    582174    extinteresado 
   TABLE DATA               �   COPY test_ladm_survey_model.extinteresado (t_id, t_seq, nombre, documento_escaneado, extredserviciosfisica_ext_interesado_administrador_id, lc_agrupacionintersdos_ext_pid, lc_interesado_ext_pid) FROM stdin;
    test_ladm_survey_model       postgres    false    421   N�	      a%          0    582186    extredserviciosfisica 
   TABLE DATA               W   COPY test_ladm_survey_model.extredserviciosfisica (t_id, t_seq, orientada) FROM stdin;
    test_ladm_survey_model       postgres    false    422   k�	      ^%          0    582159    extunidadedificacionfisica 
   TABLE DATA               Q   COPY test_ladm_survey_model.extunidadedificacionfisica (t_id, t_seq) FROM stdin;
    test_ladm_survey_model       postgres    false    419   ��	      \%          0    582138    fraccion 
   TABLE DATA               �   COPY test_ladm_survey_model.fraccion (t_id, t_seq, denominador, numerador, col_miembros_participacion, lc_predio_copropiedad_coeficiente) FROM stdin;
    test_ladm_survey_model       postgres    false    417   ��	      y%          0    582408 	   gc_barrio 
   TABLE DATA               n   COPY test_ladm_survey_model.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_survey_model       postgres    false    446   ��	      z%          0    582418 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_ladm_survey_model.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
    test_ladm_survey_model       postgres    false    447   ��	      {%          0    582428    gc_comisionesconstruccion 
   TABLE DATA               o   COPY test_ladm_survey_model.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_survey_model       postgres    false    448   ��	      |%          0    582438    gc_comisionesterreno 
   TABLE DATA               j   COPY test_ladm_survey_model.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_survey_model       postgres    false    449   �	      }%          0    582448    gc_comisionesunidadconstruccion 
   TABLE DATA               u   COPY test_ladm_survey_model.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_survey_model       postgres    false    450   6�	      �%          0    583181    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    520   S�	      ~%          0    582458    gc_construccion 
   TABLE DATA                 COPY test_ladm_survey_model.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
    test_ladm_survey_model       postgres    false    451   V�	      �%          0    582596    gc_copropiedad 
   TABLE DATA               m   COPY test_ladm_survey_model.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
    test_ladm_survey_model       postgres    false    465   s�	      %          0    582470    gc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_survey_model.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
    test_ladm_survey_model       postgres    false    452   ��	      �%          0    582477    gc_datostorreph 
   TABLE DATA               �   COPY test_ladm_survey_model.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
    test_ladm_survey_model       postgres    false    453   ��	      �%          0    582484    gc_direccion 
   TABLE DATA               �   COPY test_ladm_survey_model.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
    test_ladm_survey_model       postgres    false    454   ��	      �%          0    582495    gc_estadopredio 
   TABLE DATA               �   COPY test_ladm_survey_model.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
    test_ladm_survey_model       postgres    false    455   ��	      �%          0    582502 
   gc_manzana 
   TABLE DATA               x   COPY test_ladm_survey_model.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
    test_ladm_survey_model       postgres    false    456   �	      �%          0    582512    gc_perimetro 
   TABLE DATA               �   COPY test_ladm_survey_model.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_ladm_survey_model       postgres    false    457   !�	      �%          0    582585    gc_prediocatastro 
   TABLE DATA                 COPY test_ladm_survey_model.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
    test_ladm_survey_model       postgres    false    464   >�	      �%          0    582522    gc_propietario 
   TABLE DATA               �   COPY test_ladm_survey_model.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
    test_ladm_survey_model       postgres    false    458   [�	      �%          0    582532    gc_sectorrural 
   TABLE DATA               \   COPY test_ladm_survey_model.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_survey_model       postgres    false    459   x�	      �%          0    582542    gc_sectorurbano 
   TABLE DATA               ]   COPY test_ladm_survey_model.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_survey_model       postgres    false    460   ��	      �%          0    583379    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_ladm_survey_model.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    542   ��	      �%          0    582552 
   gc_terreno 
   TABLE DATA               �   COPY test_ladm_survey_model.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
    test_ladm_survey_model       postgres    false    461   g�	      �%          0    582563    gc_unidadconstruccion 
   TABLE DATA               <  COPY test_ladm_survey_model.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
    test_ladm_survey_model       postgres    false    462   ��	      �%          0    583352    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    539   ��	      �%          0    582575 	   gc_vereda 
   TABLE DATA                  COPY test_ladm_survey_model.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_survey_model       postgres    false    463   o�	      V%          0    582073    gm_multisurface2d 
   TABLE DATA               H   COPY test_ladm_survey_model.gm_multisurface2d (t_id, t_seq) FROM stdin;
    test_ladm_survey_model       postgres    false    411   ��	      X%          0    582090    gm_multisurface3d 
   TABLE DATA               H   COPY test_ladm_survey_model.gm_multisurface3d (t_id, t_seq) FROM stdin;
    test_ladm_survey_model       postgres    false    413   ��	      U%          0    582062    gm_surface2dlistvalue 
   TABLE DATA               p   COPY test_ladm_survey_model.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
    test_ladm_survey_model       postgres    false    410   ��	      W%          0    582079    gm_surface3dlistvalue 
   TABLE DATA               p   COPY test_ladm_survey_model.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
    test_ladm_survey_model       postgres    false    412   ��	      _%          0    582165    imagen 
   TABLE DATA               �   COPY test_ladm_survey_model.imagen (t_id, t_seq, uri, extinteresado_huella_dactilar, extinteresado_fotografia, extinteresado_firma) FROM stdin;
    test_ladm_survey_model       postgres    false    420    �	      �%          0    583541    ini_emparejamientotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.ini_emparejamientotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    560   �	      �%          0    582670    ini_predioinsumos 
   TABLE DATA               �   COPY test_ladm_survey_model.ini_predioinsumos (t_id, t_ili_tid, tipo_emparejamiento, observaciones, gc_predio_catastro, snr_predio_juridico) FROM stdin;
    test_ladm_survey_model       postgres    false    473   c�	      �%          0    583595    lc_acuerdotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_acuerdotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    566   ��	      �%          0    582682    lc_agrupacioninteresados 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_agrupacioninteresados (t_id, t_ili_tid, tipo, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    474   #�	      �%          0    583226    lc_anexotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_anexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    525   @�	      �%          0    582926    lc_calificacionconvencional 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_calificacionconvencional (t_id, t_ili_tid, tipo_calificar, total_calificacion, lc_unidad_construccion) FROM stdin;
    test_ladm_survey_model       postgres    false    494   �
      �%          0    582935    lc_calificacionnoconvencional 
   TABLE DATA               |   COPY test_ladm_survey_model.lc_calificacionnoconvencional (t_id, t_ili_tid, tipo_anexo, lc_unidad_construccion) FROM stdin;
    test_ladm_survey_model       postgres    false    495   �
      �%          0    583154    lc_calificartipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_calificartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    517   

      �%          0    583550    lc_categoriasuelotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_categoriasuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    561   �
      �%          0    583676    lc_clasecalificaciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_clasecalificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    575   2	
      �%          0    583199    lc_clasesuelotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_clasesuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    522   �
      �%          0    583505    lc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    556   �
      �%          0    582693    lc_construccion 
   TABLE DATA               �  COPY test_ladm_survey_model.lc_construccion (t_id, t_ili_tid, identificador, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, anio_construccion, avaluo_construccion, area_construccion, altura, observaciones, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    475   �
      �%          0    583217    lc_construccionplantatipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_construccionplantatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    524   �
      �%          0    583415    lc_construcciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_construcciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    546   b
      �%          0    582708    lc_contactovisita 
   TABLE DATA                 COPY test_ladm_survey_model.lc_contactovisita (t_id, t_ili_tid, tipo_documento_quien_atendio, numero_documento_quien_atendio, primer_nombre_quien_atendio, segundo_nombre_quien_atendio, primer_apellido_quien_atendio, segundo_apellido_quien_atendio, relacion_con_predio, domicilio_notificaciones, celular, correo_electronico, autoriza_notificaciones, lc_datos_adicionales) FROM stdin;
    test_ladm_survey_model       postgres    false    476   ,
      �%          0    582944 )   lc_datosadicionaleslevantamientocatastral 
   TABLE DATA               �  COPY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral (t_id, t_ili_tid, tiene_area_registral, area_registral_m2, procedimiento_catastral_registral, destinacion_economica, clase_suelo, categoria_suelo, observaciones, fecha_visita_predial, tipo_documento_reconocedor, numero_documento_reconocedor, primer_nombre_reconocedor, segundo_nombre_reconocedor, primer_apellido_reconocedor, segundo_apellido_reconocedor, resultado_visita, suscribe_acta_colindancia, lc_predio) FROM stdin;
    test_ladm_survey_model       postgres    false    496   I
      �%          0    582721    lc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_survey_model.lc_datosphcondominio (t_id, t_ili_tid, area_total_terreno, area_total_terreno_privada, area_total_terreno_comun, area_total_construida, area_total_construida_privada, area_total_construida_comun, numero_torres, total_unidades_privadas, lc_predio) FROM stdin;
    test_ladm_survey_model       postgres    false    477   f
      �%          0    582729 
   lc_derecho 
   TABLE DATA                 COPY test_ladm_survey_model.lc_derecho (t_id, t_ili_tid, tipo, fraccion_derecho, fecha_inicio_tenencia, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    478   �
      �%          0    583307    lc_derechotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_derechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    534   �
      �%          0    583667    lc_destinacioneconomicatipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_destinacioneconomicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    574   h
      �%          0    583136    lc_dominioconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_dominioconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    515   �#
      �%          0    583433    lc_estadoconservaciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_estadoconservaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    548   �$
      �%          0    582743    lc_estructuranovedadfmi 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_estructuranovedadfmi (t_id, t_seq, codigo_orip, numero_fmi, lc_dtsdcnlstmntctstral_novedad_fmi) FROM stdin;
    test_ladm_survey_model       postgres    false    479   M'
      �%          0    582750 !   lc_estructuranovedadnumeropredial 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_estructuranovedadnumeropredial (t_id, t_seq, numero_predial, tipo_novedad, lc_dtsdcnlstmntctstral_novedad_numeros_prediales) FROM stdin;
    test_ladm_survey_model       postgres    false    480   j'
      �%          0    583298 .   lc_estructuranovedadnumeropredial_tipo_novedad 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_estructuranovedadnumeropredial_tipo_novedad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    533   �'
      �%          0    583235    lc_fotoidentificaciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_fotoidentificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    526   �(
      �%          0    582758    lc_fuenteadministrativa 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_fuenteadministrativa (t_id, t_ili_tid, tipo, ente_emisor, observacion, numero_fuente, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    481   f)
      �%          0    583586    lc_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    565   �)
      �%          0    582771    lc_fuenteespacial 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_fuenteespacial (t_id, t_ili_tid, nombre, tipo, descripcion, metadato, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    482   ,
      �%          0    582784    lc_grupocalificacion 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_grupocalificacion (t_id, t_ili_tid, clase_calificacion, conservacion, subtotal, lc_calificacion_convencional) FROM stdin;
    test_ladm_survey_model       postgres    false    483   <,
      �%          0    583469    lc_grupoetnicotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_grupoetnicotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    552   Y,
      �%          0    582794    lc_interesado 
   TABLE DATA               0  COPY test_ladm_survey_model.lc_interesado (t_id, t_ili_tid, tipo, tipo_documento, documento_identidad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, sexo, grupo_etnico, razon_social, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    484   �0
      �%          0    582808    lc_interesadocontacto 
   TABLE DATA                 COPY test_ladm_survey_model.lc_interesadocontacto (t_id, t_ili_tid, telefono1, telefono2, domicilio_notificacion, direccion_residencia, correo_electronico, autoriza_notificacion_correo, departamento, municipio, vereda, corregimiento, lc_interesado) FROM stdin;
    test_ladm_survey_model       postgres    false    485   1
      �%          0    583388    lc_interesadodocumentotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_interesadodocumentotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    543   .1
      �%          0    583253    lc_interesadotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_interesadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    528   (4
      �%          0    582819 
   lc_lindero 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_lindero (t_id, t_ili_tid, longitud, geometria, localizacion_textual, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    486   X5
      �%          0    582830    lc_objetoconstruccion 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_objetoconstruccion (t_id, t_ili_tid, tipo_objeto_construccion, puntos, lc_grupo_calificacion) FROM stdin;
    test_ladm_survey_model       postgres    false    487   u5
      �%          0    583460    lc_objetoconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_objetoconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    551   �5
      �%          0    582839    lc_ofertasmercadoinmobiliario 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_ofertasmercadoinmobiliario (t_id, t_ili_tid, tipo_oferta, valor_pedido, valor_negociado, fecha_captura_oferta, tiempo_oferta_mercado, numero_contacto_oferente, nombre_oferente, lc_predio) FROM stdin;
    test_ladm_survey_model       postgres    false    488   fB
      �%          0    583316    lc_ofertatipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_ofertatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    535   �B
      �%          0    582848 	   lc_predio 
   TABLE DATA               N  COPY test_ladm_survey_model.lc_predio (t_id, t_ili_tid, departamento, municipio, id_operacion, tiene_fmi, codigo_orip, matricula_inmobiliaria, numero_predial, numero_predial_anterior, nupre, avaluo_catastral, tipo, condicion_predio, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    489   rC
      �%          0    582990    lc_predio_copropiedad 
   TABLE DATA               Z   COPY test_ladm_survey_model.lc_predio_copropiedad (t_id, predio, copropiedad) FROM stdin;
    test_ladm_survey_model       postgres    false    499   �C
      �%          0    582998    lc_predio_ini_predioinsumos 
   TABLE DATA               u   COPY test_ladm_survey_model.lc_predio_ini_predioinsumos (t_id, t_ili_tid, ini_predio_insumos, lc_predio) FROM stdin;
    test_ladm_survey_model       postgres    false    500   �C
      �%          0    583370    lc_prediotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_prediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    541   �C
      �%          0    583523 &   lc_procedimientocatastralregistraltipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_procedimientocatastralregistraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    558   �F
      �%          0    582860    lc_puntocontrol 
   TABLE DATA               �  COPY test_ladm_survey_model.lc_puntocontrol (t_id, t_ili_tid, id_punto_control, puntotipo, tipo_punto_control, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    490   1K
      �%          0    583406    lc_puntocontroltipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_puntocontroltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    545   NK
      �%          0    582961    lc_puntolevantamiento 
   TABLE DATA               �  COPY test_ladm_survey_model.lc_puntolevantamiento (t_id, t_ili_tid, id_punto_levantamiento, puntotipo, tipo_punto_levantamiento, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    497   bL
      �%          0    583487    lc_puntolevtipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_puntolevtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    554   L
      �%          0    582879    lc_puntolindero 
   TABLE DATA               �  COPY test_ladm_survey_model.lc_puntolindero (t_id, t_ili_tid, id_punto_lindero, puntotipo, acuerdo, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    491   HM
      �%          0    583163    lc_puntotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    518   eM
      �%          0    583262    lc_relacionprediotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_relacionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    529   =P
      �%          0    582899    lc_restriccion 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_restriccion (t_id, t_ili_tid, tipo, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    492   �Q
      �%          0    583361    lc_restricciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_restricciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    540   �Q
      �%          0    583100    lc_resultadovisitatipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_resultadovisitatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    511   �[
      �%          0    583006    lc_servidumbretransito 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_servidumbretransito (t_id, t_ili_tid, area_servidumbre, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    501   �]
      �%          0    583118    lc_sexotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_sexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    513   �]
      �%          0    582913 
   lc_terreno 
   TABLE DATA                  COPY test_ladm_survey_model.lc_terreno (t_id, t_ili_tid, area_terreno, avaluo_terreno, manzana_vereda_codigo, geometria, dimension, etiqueta, relacion_superficie, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    493   L^
      �%          0    582981    lc_tipologiaconstruccion 
   TABLE DATA               {   COPY test_ladm_survey_model.lc_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, lc_unidad_construccion) FROM stdin;
    test_ladm_survey_model       postgres    false    498   i^
      �%          0    583397    lc_tipologiatipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    544   �^
      �%          0    583019    lc_unidadconstruccion 
   TABLE DATA                 COPY test_ladm_survey_model.lc_unidadconstruccion (t_id, t_ili_tid, identificador, tipo_dominio, tipo_construccion, tipo_unidad_construccion, tipo_planta, planta_ubicacion, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, avaluo_unidad_construccion, area_construida, area_privada_construida, altura, observaciones, lc_construccion, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_survey_model       postgres    false    502   qd
      �%          0    583271    lc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    530   �d
      �%          0    583649    lc_usouconstipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    572   �e
      �%          0    583208 
   lc_viatipo 
   TABLE DATA               �   COPY test_ladm_survey_model.lc_viatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    523   0�
      �%          0    583127    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    514   �
      �%          0    583577    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_ladm_survey_model.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    564   r�
      �%          0    582604    snr_derecho 
   TABLE DATA               �   COPY test_ladm_survey_model.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
    test_ladm_survey_model       postgres    false    466   .�
      �%          0    583082    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_ladm_survey_model.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    509   K�
      �%          0    582613    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_ladm_survey_model.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
    test_ladm_survey_model       postgres    false    467   r�
      �%          0    582620    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_ladm_survey_model.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_survey_model       postgres    false    468   ��
      �%          0    582630    snr_fuentederecho 
   TABLE DATA               �   COPY test_ladm_survey_model.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_survey_model       postgres    false    469   ��
      �%          0    583613    snr_fuentetipo 
   TABLE DATA               �   COPY test_ladm_survey_model.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    568   ɓ
      �%          0    583172    snr_personatitulartipo 
   TABLE DATA               �   COPY test_ladm_survey_model.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_survey_model       postgres    false    519   [�
      �%          0    582651    snr_predioregistro 
   TABLE DATA                 COPY test_ladm_survey_model.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
    test_ladm_survey_model       postgres    false    471   }�
      �%          0    582640    snr_titular 
   TABLE DATA               �   COPY test_ladm_survey_model.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
    test_ladm_survey_model       postgres    false    470   ��
      �%          0    582662    snr_titular_derecho 
   TABLE DATA               �   COPY test_ladm_survey_model.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
    test_ladm_survey_model       postgres    false    472   ��
      �%          0    583693    t_ili2db_attrname 
   TABLE DATA               _   COPY test_ladm_survey_model.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
    test_ladm_survey_model       postgres    false    577   ԗ
      �%          0    583038    t_ili2db_basket 
   TABLE DATA               r   COPY test_ladm_survey_model.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
    test_ladm_survey_model       postgres    false    503   Z�
      �%          0    583685    t_ili2db_classname 
   TABLE DATA               N   COPY test_ladm_survey_model.t_ili2db_classname (iliname, sqlname) FROM stdin;
    test_ladm_survey_model       postgres    false    576   w�
      �%          0    583701    t_ili2db_column_prop 
   TABLE DATA               l   COPY test_ladm_survey_model.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
    test_ladm_survey_model       postgres    false    578   ��
      �%          0    583047    t_ili2db_dataset 
   TABLE DATA               M   COPY test_ladm_survey_model.t_ili2db_dataset (t_id, datasetname) FROM stdin;
    test_ladm_survey_model       postgres    false    504   �
      �%          0    583052    t_ili2db_inheritance 
   TABLE DATA               T   COPY test_ladm_survey_model.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
    test_ladm_survey_model       postgres    false    505   *�
      �%          0    583713    t_ili2db_meta_attrs 
   TABLE DATA               `   COPY test_ladm_survey_model.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
    test_ladm_survey_model       postgres    false    580   ��
      �%          0    583074    t_ili2db_model 
   TABLE DATA               n   COPY test_ladm_survey_model.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
    test_ladm_survey_model       postgres    false    508   �"      �%          0    583060    t_ili2db_settings 
   TABLE DATA               I   COPY test_ladm_survey_model.t_ili2db_settings (tag, setting) FROM stdin;
    test_ladm_survey_model       postgres    false    506   #      �%          0    583707    t_ili2db_table_prop 
   TABLE DATA               V   COPY test_ladm_survey_model.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
    test_ladm_survey_model       postgres    false    579         �%          0    583068    t_ili2db_trafo 
   TABLE DATA               O   COPY test_ladm_survey_model.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
    test_ladm_survey_model       postgres    false    507   �      �'           0    0    t_ili2db_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('test_ladm_survey_model.t_ili2db_seq', 587, true);
            test_ladm_survey_model       postgres    false    409            �!           2606    582101 *   cc_metodooperacion cc_metodooperacion_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_survey_model.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_survey_model.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_pkey;
       test_ladm_survey_model         postgres    false    414            �#           2606    583342 >   ci_forma_presentacion_codigo ci_forma_presentacion_codigo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.ci_forma_presentacion_codigo
    ADD CONSTRAINT ci_forma_presentacion_codigo_pkey PRIMARY KEY (t_id);
 x   ALTER TABLE ONLY test_ladm_survey_model.ci_forma_presentacion_codigo DROP CONSTRAINT ci_forma_presentacion_codigo_pkey;
       test_ladm_survey_model         postgres    false    537            �#           2606    583630    col_areatipo col_areatipo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.col_areatipo
    ADD CONSTRAINT col_areatipo_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.col_areatipo DROP CONSTRAINT col_areatipo_pkey;
       test_ladm_survey_model         postgres    false    569            �!           2606    582111     col_areavalor col_areavalor_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor
    ADD CONSTRAINT col_areavalor_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor DROP CONSTRAINT col_areavalor_pkey;
       test_ladm_survey_model         postgres    false    415            >"           2606    582377 6   col_baunitcomointeresado col_baunitcomointeresado_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_survey_model.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_pkey;
       test_ladm_survey_model         postgres    false    442            
"           2606    582286 &   col_baunitfuente col_baunitfuente_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_survey_model.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_survey_model.col_baunitfuente DROP CONSTRAINT col_baunitfuente_pkey;
       test_ladm_survey_model         postgres    false    432            "           2606    582301     col_cclfuente col_cclfuente_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_survey_model.col_cclfuente
    ADD CONSTRAINT col_cclfuente_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_survey_model.col_cclfuente DROP CONSTRAINT col_cclfuente_pkey;
       test_ladm_survey_model         postgres    false    434            )"           2606    582341    col_clfuente col_clfuente_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.col_clfuente
    ADD CONSTRAINT col_clfuente_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.col_clfuente DROP CONSTRAINT col_clfuente_pkey;
       test_ladm_survey_model         postgres    false    438            �#           2606    583288 2   col_contenidoniveltipo col_contenidoniveltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_contenidoniveltipo
    ADD CONSTRAINT col_contenidoniveltipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_survey_model.col_contenidoniveltipo DROP CONSTRAINT col_contenidoniveltipo_pkey;
       test_ladm_survey_model         postgres    false    531            �#           2606    583486 (   col_dimensiontipo col_dimensiontipo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_survey_model.col_dimensiontipo
    ADD CONSTRAINT col_dimensiontipo_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_survey_model.col_dimensiontipo DROP CONSTRAINT col_dimensiontipo_pkey;
       test_ladm_survey_model         postgres    false    553            q#           2606    583153 >   col_estadodisponibilidadtipo col_estadodisponibilidadtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_estadodisponibilidadtipo
    ADD CONSTRAINT col_estadodisponibilidadtipo_pkey PRIMARY KEY (t_id);
 x   ALTER TABLE ONLY test_ladm_survey_model.col_estadodisponibilidadtipo DROP CONSTRAINT col_estadodisponibilidadtipo_pkey;
       test_ladm_survey_model         postgres    false    516            �#           2606    583459 :   col_estadoredserviciostipo col_estadoredserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_estadoredserviciostipo
    ADD CONSTRAINT col_estadoredserviciostipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_survey_model.col_estadoredserviciostipo DROP CONSTRAINT col_estadoredserviciostipo_pkey;
       test_ladm_survey_model         postgres    false    550            �#           2606    583666 *   col_estructuratipo col_estructuratipo_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_survey_model.col_estructuratipo
    ADD CONSTRAINT col_estructuratipo_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_survey_model.col_estructuratipo DROP CONSTRAINT col_estructuratipo_pkey;
       test_ladm_survey_model         postgres    false    573            �#           2606    583333 >   col_fuenteadministrativatipo col_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_fuenteadministrativatipo
    ADD CONSTRAINT col_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 x   ALTER TABLE ONLY test_ladm_survey_model.col_fuenteadministrativatipo DROP CONSTRAINT col_fuenteadministrativatipo_pkey;
       test_ladm_survey_model         postgres    false    536            i#           2606    583117 2   col_fuenteespacialtipo col_fuenteespacialtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_fuenteespacialtipo
    ADD CONSTRAINT col_fuenteespacialtipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_survey_model.col_fuenteespacialtipo DROP CONSTRAINT col_fuenteespacialtipo_pkey;
       test_ladm_survey_model         postgres    false    512            �#           2606    583504 4   col_grupointeresadotipo col_grupointeresadotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_grupointeresadotipo
    ADD CONSTRAINT col_grupointeresadotipo_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_survey_model.col_grupointeresadotipo DROP CONSTRAINT col_grupointeresadotipo_pkey;
       test_ladm_survey_model         postgres    false    555            �#           2606    583252 0   col_interpolaciontipo col_interpolaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_interpolaciontipo
    ADD CONSTRAINT col_interpolaciontipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.col_interpolaciontipo DROP CONSTRAINT col_interpolaciontipo_pkey;
       test_ladm_survey_model         postgres    false    527            �#           2606    583576 (   col_iso19125_tipo col_iso19125_tipo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_survey_model.col_iso19125_tipo
    ADD CONSTRAINT col_iso19125_tipo_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_survey_model.col_iso19125_tipo DROP CONSTRAINT col_iso19125_tipo_pkey;
       test_ladm_survey_model         postgres    false    563            "           2606    582320    col_masccl col_masccl_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_survey_model.col_masccl
    ADD CONSTRAINT col_masccl_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_survey_model.col_masccl DROP CONSTRAINT col_masccl_pkey;
       test_ladm_survey_model         postgres    false    436            1"           2606    582358    col_mascl col_mascl_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_survey_model.col_mascl
    ADD CONSTRAINT col_mascl_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_survey_model.col_mascl DROP CONSTRAINT col_mascl_pkey;
       test_ladm_survey_model         postgres    false    440            "           2606    582309    col_menosccl col_menosccl_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.col_menosccl
    ADD CONSTRAINT col_menosccl_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.col_menosccl DROP CONSTRAINT col_menosccl_pkey;
       test_ladm_survey_model         postgres    false    435            +"           2606    582348    col_menoscl col_menoscl_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_survey_model.col_menoscl
    ADD CONSTRAINT col_menoscl_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_survey_model.col_menoscl DROP CONSTRAINT col_menoscl_pkey;
       test_ladm_survey_model         postgres    false    439            �#           2606    583297 6   col_metodoproducciontipo col_metodoproducciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_metodoproducciontipo
    ADD CONSTRAINT col_metodoproducciontipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_survey_model.col_metodoproducciontipo DROP CONSTRAINT col_metodoproducciontipo_pkey;
       test_ladm_survey_model         postgres    false    532            N"           2606    582404    col_miembros col_miembros_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.col_miembros
    ADD CONSTRAINT col_miembros_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.col_miembros DROP CONSTRAINT col_miembros_pkey;
       test_ladm_survey_model         postgres    false    445            #"           2606    582331    col_puntoccl col_puntoccl_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.col_puntoccl
    ADD CONSTRAINT col_puntoccl_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.col_puntoccl DROP CONSTRAINT col_puntoccl_pkey;
       test_ladm_survey_model         postgres    false    437            7"           2606    582368    col_puntocl col_puntocl_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_survey_model.col_puntocl
    ADD CONSTRAINT col_puntocl_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_survey_model.col_puntocl DROP CONSTRAINT col_puntocl_pkey;
       test_ladm_survey_model         postgres    false    441            �!           2606    582265 $   col_puntofuente col_puntofuente_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.col_puntofuente
    ADD CONSTRAINT col_puntofuente_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.col_puntofuente DROP CONSTRAINT col_puntofuente_pkey;
       test_ladm_survey_model         postgres    false    430            �#           2606    583639     col_puntotipo col_puntotipo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_survey_model.col_puntotipo
    ADD CONSTRAINT col_puntotipo_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_survey_model.col_puntotipo DROP CONSTRAINT col_puntotipo_pkey;
       test_ladm_survey_model         postgres    false    570            �#           2606    583522 .   col_redserviciostipo col_redserviciostipo_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_survey_model.col_redserviciostipo
    ADD CONSTRAINT col_redserviciostipo_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_survey_model.col_redserviciostipo DROP CONSTRAINT col_redserviciostipo_pkey;
       test_ladm_survey_model         postgres    false    557            �#           2606    583432 &   col_registrotipo col_registrotipo_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_survey_model.col_registrotipo
    ADD CONSTRAINT col_registrotipo_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_survey_model.col_registrotipo DROP CONSTRAINT col_registrotipo_pkey;
       test_ladm_survey_model         postgres    false    547            �!           2606    582250 *   col_relacionfuente col_relacionfuente_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_survey_model.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_survey_model.col_relacionfuente DROP CONSTRAINT col_relacionfuente_pkey;
       test_ladm_survey_model         postgres    false    428            "           2606    582294 <   col_relacionfuenteuespacial col_relacionfuenteuespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespacial_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_survey_model.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespacial_pkey;
       test_ladm_survey_model         postgres    false    433            �#           2606    583567 :   col_relacionsuperficietipo col_relacionsuperficietipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_relacionsuperficietipo
    ADD CONSTRAINT col_relacionsuperficietipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_survey_model.col_relacionsuperficietipo DROP CONSTRAINT col_relacionsuperficietipo_pkey;
       test_ladm_survey_model         postgres    false    562            D"           2606    582386 0   col_responsablefuente col_responsablefuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.col_responsablefuente DROP CONSTRAINT col_responsablefuente_pkey;
       test_ladm_survey_model         postgres    false    443            �!           2606    582230     col_rrrfuente col_rrrfuente_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_survey_model.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_survey_model.col_rrrfuente DROP CONSTRAINT col_rrrfuente_pkey;
       test_ladm_survey_model         postgres    false    426            G"           2606    582395 ,   col_topografofuente col_topografofuente_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_survey_model.col_topografofuente
    ADD CONSTRAINT col_topografofuente_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_survey_model.col_topografofuente DROP CONSTRAINT col_topografofuente_pkey;
       test_ladm_survey_model         postgres    false    444            �!           2606    582154 *   col_transformacion col_transformacion_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_survey_model.col_transformacion
    ADD CONSTRAINT col_transformacion_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_survey_model.col_transformacion DROP CONSTRAINT col_transformacion_pkey;
       test_ladm_survey_model         postgres    false    418            �!           2606    582239    col_uebaunit col_uebaunit_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit DROP CONSTRAINT col_uebaunit_pkey;
       test_ladm_survey_model         postgres    false    427            "           2606    582275    col_uefuente col_uefuente_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente
    ADD CONSTRAINT col_uefuente_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente DROP CONSTRAINT col_uefuente_pkey;
       test_ladm_survey_model         postgres    false    431            �!           2606    582220     col_ueuegrupo col_ueuegrupo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_survey_model.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_survey_model.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_pkey;
       test_ladm_survey_model         postgres    false    425            �#           2606    583351 J   col_unidadadministrativabasicatipo col_unidadadministrativabasicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_unidadadministrativabasicatipo
    ADD CONSTRAINT col_unidadadministrativabasicatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_survey_model.col_unidadadministrativabasicatipo DROP CONSTRAINT col_unidadadministrativabasicatipo_pkey;
       test_ladm_survey_model         postgres    false    538            {#           2606    583198 8   col_unidadedificaciontipo col_unidadedificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_unidadedificaciontipo
    ADD CONSTRAINT col_unidadedificaciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_survey_model.col_unidadedificaciontipo DROP CONSTRAINT col_unidadedificaciontipo_pkey;
       test_ladm_survey_model         postgres    false    521            �!           2606    582257 &   col_unidadfuente col_unidadfuente_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_survey_model.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_survey_model.col_unidadfuente DROP CONSTRAINT col_unidadfuente_pkey;
       test_ladm_survey_model         postgres    false    429            �#           2606    583450 $   col_volumentipo col_volumentipo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.col_volumentipo
    ADD CONSTRAINT col_volumentipo_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.col_volumentipo DROP CONSTRAINT col_volumentipo_pkey;
       test_ladm_survey_model         postgres    false    549            �!           2606    582209 &   col_volumenvalor col_volumenvalor_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_pkey;
       test_ladm_survey_model         postgres    false    424            �!           2606    582200    extarchivo extarchivo_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_survey_model.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_survey_model.extarchivo DROP CONSTRAINT extarchivo_pkey;
       test_ladm_survey_model         postgres    false    423            �#           2606    583540 F   extdireccion_clase_via_principal extdireccion_clase_via_principal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion_clase_via_principal
    ADD CONSTRAINT extdireccion_clase_via_principal_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion_clase_via_principal DROP CONSTRAINT extdireccion_clase_via_principal_pkey;
       test_ladm_survey_model         postgres    false    559            �!           2606    582125    extdireccion extdireccion_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_pkey;
       test_ladm_survey_model         postgres    false    416            �#           2606    583612 :   extdireccion_sector_ciudad extdireccion_sector_ciudad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion_sector_ciudad
    ADD CONSTRAINT extdireccion_sector_ciudad_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_survey_model.extdireccion_sector_ciudad DROP CONSTRAINT extdireccion_sector_ciudad_pkey;
       test_ladm_survey_model         postgres    false    567            e#           2606    583099 :   extdireccion_sector_predio extdireccion_sector_predio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion_sector_predio
    ADD CONSTRAINT extdireccion_sector_predio_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_survey_model.extdireccion_sector_predio DROP CONSTRAINT extdireccion_sector_predio_pkey;
       test_ladm_survey_model         postgres    false    510            �#           2606    583648 <   extdireccion_tipo_direccion extdireccion_tipo_direccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion_tipo_direccion
    ADD CONSTRAINT extdireccion_tipo_direccion_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_survey_model.extdireccion_tipo_direccion DROP CONSTRAINT extdireccion_tipo_direccion_pkey;
       test_ladm_survey_model         postgres    false    571            �!           2606    582182     extinteresado extinteresado_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_survey_model.extinteresado
    ADD CONSTRAINT extinteresado_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_survey_model.extinteresado DROP CONSTRAINT extinteresado_pkey;
       test_ladm_survey_model         postgres    false    421            �!           2606    582191 0   extredserviciosfisica extredserviciosfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extredserviciosfisica
    ADD CONSTRAINT extredserviciosfisica_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.extredserviciosfisica DROP CONSTRAINT extredserviciosfisica_pkey;
       test_ladm_survey_model         postgres    false    422            �!           2606    582164 :   extunidadedificacionfisica extunidadedificacionfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extunidadedificacionfisica
    ADD CONSTRAINT extunidadedificacionfisica_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_survey_model.extunidadedificacionfisica DROP CONSTRAINT extunidadedificacionfisica_pkey;
       test_ladm_survey_model         postgres    false    419            �!           2606    582143    fraccion fraccion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY test_ladm_survey_model.fraccion
    ADD CONSTRAINT fraccion_pkey PRIMARY KEY (t_id);
 P   ALTER TABLE ONLY test_ladm_survey_model.fraccion DROP CONSTRAINT fraccion_pkey;
       test_ladm_survey_model         postgres    false    417            Q"           2606    582416    gc_barrio gc_barrio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_survey_model.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_survey_model.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
       test_ladm_survey_model         postgres    false    446            S"           2606    582426 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_survey_model.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
       test_ladm_survey_model         postgres    false    447            W"           2606    582436 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_survey_model.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
       test_ladm_survey_model         postgres    false    448            Z"           2606    582446 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_survey_model.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_survey_model.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
       test_ladm_survey_model         postgres    false    449            ]"           2606    582456 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 ~   ALTER TABLE ONLY test_ladm_survey_model.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
       test_ladm_survey_model         postgres    false    450            y#           2606    583189 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_survey_model.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
       test_ladm_survey_model         postgres    false    520            a"           2606    582466 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
       test_ladm_survey_model         postgres    false    451            �"           2606    582601 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_survey_model.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_survey_model.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
       test_ladm_survey_model         postgres    false    465            e"           2606    582475 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_survey_model.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_survey_model.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
       test_ladm_survey_model         postgres    false    452            h"           2606    582482 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
       test_ladm_survey_model         postgres    false    453            l"           2606    582492    gc_direccion gc_direccion_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
       test_ladm_survey_model         postgres    false    454            o"           2606    582500 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
       test_ladm_survey_model         postgres    false    455            r"           2606    582510    gc_manzana gc_manzana_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_survey_model.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_survey_model.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
       test_ladm_survey_model         postgres    false    456            u"           2606    582520    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
       test_ladm_survey_model         postgres    false    457            �"           2606    582593 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_survey_model.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_survey_model.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
       test_ladm_survey_model         postgres    false    464            x"           2606    582530 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_survey_model.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_survey_model.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
       test_ladm_survey_model         postgres    false    458            {"           2606    582540 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_survey_model.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_survey_model.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
       test_ladm_survey_model         postgres    false    459            ~"           2606    582550 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
       test_ladm_survey_model         postgres    false    460            �#           2606    583387 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
 |   ALTER TABLE ONLY test_ladm_survey_model.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
       test_ladm_survey_model         postgres    false    542            �"           2606    582560    gc_terreno gc_terreno_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_survey_model.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_survey_model.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
       test_ladm_survey_model         postgres    false    461            �"           2606    582571 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
       test_ladm_survey_model         postgres    false    462            �#           2606    583360 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_survey_model.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
       test_ladm_survey_model         postgres    false    539            �"           2606    582583    gc_vereda gc_vereda_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_survey_model.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_survey_model.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
       test_ladm_survey_model         postgres    false    463            �!           2606    582078 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_survey_model.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_survey_model.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
       test_ladm_survey_model         postgres    false    411            �!           2606    582095 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_survey_model.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_survey_model.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
       test_ladm_survey_model         postgres    false    413            �!           2606    582070 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
       test_ladm_survey_model         postgres    false    410            �!           2606    582087 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
       test_ladm_survey_model         postgres    false    412            �!           2606    582170    imagen imagen_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY test_ladm_survey_model.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (t_id);
 L   ALTER TABLE ONLY test_ladm_survey_model.imagen DROP CONSTRAINT imagen_pkey;
       test_ladm_survey_model         postgres    false    420            �#           2606    583549 2   ini_emparejamientotipo ini_emparejamientotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.ini_emparejamientotipo
    ADD CONSTRAINT ini_emparejamientotipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_survey_model.ini_emparejamientotipo DROP CONSTRAINT ini_emparejamientotipo_pkey;
       test_ladm_survey_model         postgres    false    560            �"           2606    582678 (   ini_predioinsumos ini_predioinsumos_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_survey_model.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_survey_model.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_pkey;
       test_ladm_survey_model         postgres    false    473            �#           2606    583603 "   lc_acuerdotipo lc_acuerdotipo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_survey_model.lc_acuerdotipo
    ADD CONSTRAINT lc_acuerdotipo_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_survey_model.lc_acuerdotipo DROP CONSTRAINT lc_acuerdotipo_pkey;
       test_ladm_survey_model         postgres    false    566            �"           2606    582691 6   lc_agrupacioninteresados lc_agrupacioninteresados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_survey_model.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_pkey;
       test_ladm_survey_model         postgres    false    474            �#           2606    583234    lc_anexotipo lc_anexotipo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.lc_anexotipo
    ADD CONSTRAINT lc_anexotipo_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.lc_anexotipo DROP CONSTRAINT lc_anexotipo_pkey;
       test_ladm_survey_model         postgres    false    525            #           2606    582932 <   lc_calificacionconvencional lc_calificacionconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencional_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencional_pkey;
       test_ladm_survey_model         postgres    false    494             #           2606    582941 @   lc_calificacionnoconvencional lc_calificacionnoconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvencional_pkey PRIMARY KEY (t_id);
 z   ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvencional_pkey;
       test_ladm_survey_model         postgres    false    495            s#           2606    583162 &   lc_calificartipo lc_calificartipo_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_survey_model.lc_calificartipo
    ADD CONSTRAINT lc_calificartipo_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_survey_model.lc_calificartipo DROP CONSTRAINT lc_calificartipo_pkey;
       test_ladm_survey_model         postgres    false    517            �#           2606    583558 0   lc_categoriasuelotipo lc_categoriasuelotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_categoriasuelotipo
    ADD CONSTRAINT lc_categoriasuelotipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.lc_categoriasuelotipo DROP CONSTRAINT lc_categoriasuelotipo_pkey;
       test_ladm_survey_model         postgres    false    561            �#           2606    583684 6   lc_clasecalificaciontipo lc_clasecalificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_clasecalificaciontipo
    ADD CONSTRAINT lc_clasecalificaciontipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_survey_model.lc_clasecalificaciontipo DROP CONSTRAINT lc_clasecalificaciontipo_pkey;
       test_ladm_survey_model         postgres    false    575            }#           2606    583207 (   lc_clasesuelotipo lc_clasesuelotipo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_survey_model.lc_clasesuelotipo
    ADD CONSTRAINT lc_clasesuelotipo_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_survey_model.lc_clasesuelotipo DROP CONSTRAINT lc_clasesuelotipo_pkey;
       test_ladm_survey_model         postgres    false    522            �#           2606    583513 2   lc_condicionprediotipo lc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_condicionprediotipo
    ADD CONSTRAINT lc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_survey_model.lc_condicionprediotipo DROP CONSTRAINT lc_condicionprediotipo_pkey;
       test_ladm_survey_model         postgres    false    556            �"           2606    582702 $   lc_construccion lc_construccion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.lc_construccion
    ADD CONSTRAINT lc_construccion_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.lc_construccion DROP CONSTRAINT lc_construccion_pkey;
       test_ladm_survey_model         postgres    false    475            �#           2606    583225 8   lc_construccionplantatipo lc_construccionplantatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_construccionplantatipo
    ADD CONSTRAINT lc_construccionplantatipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_survey_model.lc_construccionplantatipo DROP CONSTRAINT lc_construccionplantatipo_pkey;
       test_ladm_survey_model         postgres    false    524            �#           2606    583423 ,   lc_construcciontipo lc_construcciontipo_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_survey_model.lc_construcciontipo
    ADD CONSTRAINT lc_construcciontipo_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_survey_model.lc_construcciontipo DROP CONSTRAINT lc_construcciontipo_pkey;
       test_ladm_survey_model         postgres    false    546            �"           2606    582717 (   lc_contactovisita lc_contactovisita_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_survey_model.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_survey_model.lc_contactovisita DROP CONSTRAINT lc_contactovisita_pkey;
       test_ladm_survey_model         postgres    false    476            $#           2606    582953 X   lc_datosadicionaleslevantamientocatastral lc_datosadicionaleslevantamientocatastral_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey;
       test_ladm_survey_model         postgres    false    496            �"           2606    582727 .   lc_datosphcondominio lc_datosphcondominio_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_survey_model.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_survey_model.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_pkey;
       test_ladm_survey_model         postgres    false    477            �"           2606    582738    lc_derecho lc_derecho_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_survey_model.lc_derecho
    ADD CONSTRAINT lc_derecho_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_survey_model.lc_derecho DROP CONSTRAINT lc_derecho_pkey;
       test_ladm_survey_model         postgres    false    478            �#           2606    583315 "   lc_derechotipo lc_derechotipo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_survey_model.lc_derechotipo
    ADD CONSTRAINT lc_derechotipo_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_survey_model.lc_derechotipo DROP CONSTRAINT lc_derechotipo_pkey;
       test_ladm_survey_model         postgres    false    534            �#           2606    583675 <   lc_destinacioneconomicatipo lc_destinacioneconomicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_destinacioneconomicatipo
    ADD CONSTRAINT lc_destinacioneconomicatipo_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_survey_model.lc_destinacioneconomicatipo DROP CONSTRAINT lc_destinacioneconomicatipo_pkey;
       test_ladm_survey_model         postgres    false    574            o#           2606    583144 :   lc_dominioconstrucciontipo lc_dominioconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_dominioconstrucciontipo
    ADD CONSTRAINT lc_dominioconstrucciontipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_survey_model.lc_dominioconstrucciontipo DROP CONSTRAINT lc_dominioconstrucciontipo_pkey;
       test_ladm_survey_model         postgres    false    515            �#           2606    583441 8   lc_estadoconservaciontipo lc_estadoconservaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_estadoconservaciontipo
    ADD CONSTRAINT lc_estadoconservaciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_survey_model.lc_estadoconservaciontipo DROP CONSTRAINT lc_estadoconservaciontipo_pkey;
       test_ladm_survey_model         postgres    false    548            �"           2606    582748 4   lc_estructuranovedadfmi lc_estructuranovedadfmi_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_pkey;
       test_ladm_survey_model         postgres    false    479            �"           2606    582755 H   lc_estructuranovedadnumeropredial lc_estructuranovedadnumeropredial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranovedadnumeropredial_pkey;
       test_ladm_survey_model         postgres    false    480            �#           2606    583306 b   lc_estructuranovedadnumeropredial_tipo_novedad lc_estructuranovedadnumeropredial_tipo_novedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadnumeropredial_tipo_novedad
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadnumeropredial_tipo_novedad DROP CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey;
       test_ladm_survey_model         postgres    false    533            �#           2606    583243 8   lc_fotoidentificaciontipo lc_fotoidentificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_fotoidentificaciontipo
    ADD CONSTRAINT lc_fotoidentificaciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_survey_model.lc_fotoidentificaciontipo DROP CONSTRAINT lc_fotoidentificaciontipo_pkey;
       test_ladm_survey_model         postgres    false    526            �"           2606    582767 4   lc_fuenteadministrativa lc_fuenteadministrativa_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_pkey;
       test_ladm_survey_model         postgres    false    481            �#           2606    583594 <   lc_fuenteadministrativatipo lc_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteadministrativatipo
    ADD CONSTRAINT lc_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteadministrativatipo DROP CONSTRAINT lc_fuenteadministrativatipo_pkey;
       test_ladm_survey_model         postgres    false    565            �"           2606    582780 (   lc_fuenteespacial lc_fuenteespacial_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_pkey;
       test_ladm_survey_model         postgres    false    482            �"           2606    582790 .   lc_grupocalificacion lc_grupocalificacion_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_survey_model.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_survey_model.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_pkey;
       test_ladm_survey_model         postgres    false    483            �#           2606    583477 *   lc_grupoetnicotipo lc_grupoetnicotipo_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_survey_model.lc_grupoetnicotipo
    ADD CONSTRAINT lc_grupoetnicotipo_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_survey_model.lc_grupoetnicotipo DROP CONSTRAINT lc_grupoetnicotipo_pkey;
       test_ladm_survey_model         postgres    false    552            �"           2606    582803     lc_interesado lc_interesado_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_survey_model.lc_interesado
    ADD CONSTRAINT lc_interesado_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_survey_model.lc_interesado DROP CONSTRAINT lc_interesado_pkey;
       test_ladm_survey_model         postgres    false    484            �"           2606    582817 0   lc_interesadocontacto lc_interesadocontacto_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_pkey;
       test_ladm_survey_model         postgres    false    485            �#           2606    583396 :   lc_interesadodocumentotipo lc_interesadodocumentotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_interesadodocumentotipo
    ADD CONSTRAINT lc_interesadodocumentotipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_survey_model.lc_interesadodocumentotipo DROP CONSTRAINT lc_interesadodocumentotipo_pkey;
       test_ladm_survey_model         postgres    false    543            �#           2606    583261 (   lc_interesadotipo lc_interesadotipo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_survey_model.lc_interesadotipo
    ADD CONSTRAINT lc_interesadotipo_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_survey_model.lc_interesadotipo DROP CONSTRAINT lc_interesadotipo_pkey;
       test_ladm_survey_model         postgres    false    528            �"           2606    582828    lc_lindero lc_lindero_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_survey_model.lc_lindero
    ADD CONSTRAINT lc_lindero_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_survey_model.lc_lindero DROP CONSTRAINT lc_lindero_pkey;
       test_ladm_survey_model         postgres    false    486            �"           2606    582836 0   lc_objetoconstruccion lc_objetoconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_pkey;
       test_ladm_survey_model         postgres    false    487            �#           2606    583468 8   lc_objetoconstrucciontipo lc_objetoconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_objetoconstrucciontipo
    ADD CONSTRAINT lc_objetoconstrucciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_survey_model.lc_objetoconstrucciontipo DROP CONSTRAINT lc_objetoconstrucciontipo_pkey;
       test_ladm_survey_model         postgres    false    551            �"           2606    582845 @   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmobiliario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmobiliario_pkey PRIMARY KEY (t_id);
 z   ALTER TABLE ONLY test_ladm_survey_model.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmobiliario_pkey;
       test_ladm_survey_model         postgres    false    488            �#           2606    583324     lc_ofertatipo lc_ofertatipo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_survey_model.lc_ofertatipo
    ADD CONSTRAINT lc_ofertatipo_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_survey_model.lc_ofertatipo DROP CONSTRAINT lc_ofertatipo_pkey;
       test_ladm_survey_model         postgres    false    535            >#           2606    582995 0   lc_predio_copropiedad lc_predio_copropiedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_pkey;
       test_ladm_survey_model         postgres    false    499            D#           2606    583003 <   lc_predio_ini_predioinsumos lc_predio_ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsumos_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_survey_model.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsumos_pkey;
       test_ladm_survey_model         postgres    false    500            �"           2606    582857    lc_predio lc_predio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_survey_model.lc_predio
    ADD CONSTRAINT lc_predio_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_survey_model.lc_predio DROP CONSTRAINT lc_predio_pkey;
       test_ladm_survey_model         postgres    false    489            �#           2606    583378     lc_prediotipo lc_prediotipo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_survey_model.lc_prediotipo
    ADD CONSTRAINT lc_prediotipo_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_survey_model.lc_prediotipo DROP CONSTRAINT lc_prediotipo_pkey;
       test_ladm_survey_model         postgres    false    541            �#           2606    583531 R   lc_procedimientocatastralregistraltipo lc_procedimientocatastralregistraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_procedimientocatastralregistraltipo
    ADD CONSTRAINT lc_procedimientocatastralregistraltipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_procedimientocatastralregistraltipo DROP CONSTRAINT lc_procedimientocatastralregistraltipo_pkey;
       test_ladm_survey_model         postgres    false    558            �"           2606    582869 $   lc_puntocontrol lc_puntocontrol_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_pkey;
       test_ladm_survey_model         postgres    false    490            �#           2606    583414 ,   lc_puntocontroltipo lc_puntocontroltipo_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontroltipo
    ADD CONSTRAINT lc_puntocontroltipo_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontroltipo DROP CONSTRAINT lc_puntocontroltipo_pkey;
       test_ladm_survey_model         postgres    false    545            0#           2606    582970 0   lc_puntolevantamiento lc_puntolevantamiento_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_pkey;
       test_ladm_survey_model         postgres    false    497            �#           2606    583495 $   lc_puntolevtipo lc_puntolevtipo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevtipo
    ADD CONSTRAINT lc_puntolevtipo_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevtipo DROP CONSTRAINT lc_puntolevtipo_pkey;
       test_ladm_survey_model         postgres    false    554            	#           2606    582888 $   lc_puntolindero lc_puntolindero_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_pkey;
       test_ladm_survey_model         postgres    false    491            u#           2606    583171    lc_puntotipo lc_puntotipo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_survey_model.lc_puntotipo
    ADD CONSTRAINT lc_puntotipo_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_survey_model.lc_puntotipo DROP CONSTRAINT lc_puntotipo_pkey;
       test_ladm_survey_model         postgres    false    518            �#           2606    583270 0   lc_relacionprediotipo lc_relacionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_relacionprediotipo
    ADD CONSTRAINT lc_relacionprediotipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.lc_relacionprediotipo DROP CONSTRAINT lc_relacionprediotipo_pkey;
       test_ladm_survey_model         postgres    false    529            #           2606    582908 "   lc_restriccion lc_restriccion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_survey_model.lc_restriccion
    ADD CONSTRAINT lc_restriccion_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_survey_model.lc_restriccion DROP CONSTRAINT lc_restriccion_pkey;
       test_ladm_survey_model         postgres    false    492            �#           2606    583369 *   lc_restricciontipo lc_restricciontipo_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_survey_model.lc_restricciontipo
    ADD CONSTRAINT lc_restricciontipo_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_survey_model.lc_restricciontipo DROP CONSTRAINT lc_restricciontipo_pkey;
       test_ladm_survey_model         postgres    false    540            g#           2606    583108 2   lc_resultadovisitatipo lc_resultadovisitatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_resultadovisitatipo
    ADD CONSTRAINT lc_resultadovisitatipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_survey_model.lc_resultadovisitatipo DROP CONSTRAINT lc_resultadovisitatipo_pkey;
       test_ladm_survey_model         postgres    false    511            H#           2606    583015 2   lc_servidumbretransito lc_servidumbretransito_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_survey_model.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_pkey;
       test_ladm_survey_model         postgres    false    501            k#           2606    583126    lc_sexotipo lc_sexotipo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_survey_model.lc_sexotipo
    ADD CONSTRAINT lc_sexotipo_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_survey_model.lc_sexotipo DROP CONSTRAINT lc_sexotipo_pkey;
       test_ladm_survey_model         postgres    false    513            #           2606    582922    lc_terreno lc_terreno_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_survey_model.lc_terreno
    ADD CONSTRAINT lc_terreno_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_survey_model.lc_terreno DROP CONSTRAINT lc_terreno_pkey;
       test_ladm_survey_model         postgres    false    493            :#           2606    582987 6   lc_tipologiaconstruccion lc_tipologiaconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_survey_model.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_pkey;
       test_ladm_survey_model         postgres    false    498            �#           2606    583405 &   lc_tipologiatipo lc_tipologiatipo_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_survey_model.lc_tipologiatipo
    ADD CONSTRAINT lc_tipologiatipo_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_survey_model.lc_tipologiatipo DROP CONSTRAINT lc_tipologiatipo_pkey;
       test_ladm_survey_model         postgres    false    544            N#           2606    583028 0   lc_unidadconstruccion lc_unidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_pkey;
       test_ladm_survey_model         postgres    false    502            �#           2606    583279 8   lc_unidadconstrucciontipo lc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstrucciontipo
    ADD CONSTRAINT lc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstrucciontipo DROP CONSTRAINT lc_unidadconstrucciontipo_pkey;
       test_ladm_survey_model         postgres    false    530            �#           2606    583657 $   lc_usouconstipo lc_usouconstipo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.lc_usouconstipo
    ADD CONSTRAINT lc_usouconstipo_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.lc_usouconstipo DROP CONSTRAINT lc_usouconstipo_pkey;
       test_ladm_survey_model         postgres    false    572            #           2606    583216    lc_viatipo lc_viatipo_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_survey_model.lc_viatipo
    ADD CONSTRAINT lc_viatipo_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_survey_model.lc_viatipo DROP CONSTRAINT lc_viatipo_pkey;
       test_ladm_survey_model         postgres    false    523            m#           2606    583135 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_survey_model.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
       test_ladm_survey_model         postgres    false    514            �#           2606    583585 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_survey_model.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
       test_ladm_survey_model         postgres    false    564            �"           2606    582609    snr_derecho snr_derecho_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_survey_model.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_survey_model.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
       test_ladm_survey_model         postgres    false    466            c#           2606    583090 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_survey_model.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
       test_ladm_survey_model         postgres    false    509            �"           2606    582618 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 z   ALTER TABLE ONLY test_ladm_survey_model.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
       test_ladm_survey_model         postgres    false    467            �"           2606    582628 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_survey_model.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
       test_ladm_survey_model         postgres    false    468            �"           2606    582638 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_survey_model.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_survey_model.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
       test_ladm_survey_model         postgres    false    469            �#           2606    583621 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_survey_model.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_survey_model.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
       test_ladm_survey_model         postgres    false    568            w#           2606    583180 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_survey_model.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
       test_ladm_survey_model         postgres    false    519            �"           2606    582659 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_survey_model.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_survey_model.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
       test_ladm_survey_model         postgres    false    471            �"           2606    582667 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_survey_model.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_survey_model.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
       test_ladm_survey_model         postgres    false    472            �"           2606    582648    snr_titular snr_titular_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_survey_model.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_survey_model.snr_titular DROP CONSTRAINT snr_titular_pkey;
       test_ladm_survey_model         postgres    false    470            �#           2606    583700 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (colowner, sqlname);
 b   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
       test_ladm_survey_model         postgres    false    577    577            W#           2606    583045 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
       test_ladm_survey_model         postgres    false    503            �#           2606    583692 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 d   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
       test_ladm_survey_model         postgres    false    576            Z#           2606    583051 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
       test_ladm_survey_model         postgres    false    504            \#           2606    583059 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 h   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
       test_ladm_survey_model         postgres    false    505            a#           2606    583081 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (modelname, iliversion);
 \   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
       test_ladm_survey_model         postgres    false    508    508            ^#           2606    583067 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 b   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
       test_ladm_survey_model         postgres    false    506            �!           1259    582102 1   cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx    INDEX     �   CREATE INDEX cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx ON test_ladm_survey_model.cc_metodooperacion USING btree (col_transformacion_transformacion);
 U   DROP INDEX test_ladm_survey_model.cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx;
       test_ladm_survey_model         postgres    false    414            �!           1259    582113 &   col_areavalor_lc_construccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_construccion_area_idx ON test_ladm_survey_model.col_areavalor USING btree (lc_construccion_area);
 J   DROP INDEX test_ladm_survey_model.col_areavalor_lc_construccion_area_idx;
       test_ladm_survey_model         postgres    false    415            �!           1259    582115 ,   col_areavalor_lc_servidumbretransito_rea_idx    INDEX     �   CREATE INDEX col_areavalor_lc_servidumbretransito_rea_idx ON test_ladm_survey_model.col_areavalor USING btree (lc_servidumbretransito_area);
 P   DROP INDEX test_ladm_survey_model.col_areavalor_lc_servidumbretransito_rea_idx;
       test_ladm_survey_model         postgres    false    415            �!           1259    582114 !   col_areavalor_lc_terreno_area_idx    INDEX     v   CREATE INDEX col_areavalor_lc_terreno_area_idx ON test_ladm_survey_model.col_areavalor USING btree (lc_terreno_area);
 E   DROP INDEX test_ladm_survey_model.col_areavalor_lc_terreno_area_idx;
       test_ladm_survey_model         postgres    false    415            �!           1259    582116 ,   col_areavalor_lc_unidadconstruccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_unidadconstruccion_area_idx ON test_ladm_survey_model.col_areavalor USING btree (lc_unidadconstruccion_area);
 P   DROP INDEX test_ladm_survey_model.col_areavalor_lc_unidadconstruccion_area_idx;
       test_ladm_survey_model         postgres    false    415            �!           1259    582112    col_areavalor_tipo_idx    INDEX     `   CREATE INDEX col_areavalor_tipo_idx ON test_ladm_survey_model.col_areavalor USING btree (tipo);
 :   DROP INDEX test_ladm_survey_model.col_areavalor_tipo_idx;
       test_ladm_survey_model         postgres    false    415            ;"           1259    582379 7   col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx ON test_ladm_survey_model.col_baunitcomointeresado USING btree (interesado_lc_agrupacioninteresados);
 [   DROP INDEX test_ladm_survey_model.col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx;
       test_ladm_survey_model         postgres    false    442            <"           1259    582378 5   col_baunitcomointeresado_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_interesado_idx ON test_ladm_survey_model.col_baunitcomointeresado USING btree (interesado_lc_interesado);
 Y   DROP INDEX test_ladm_survey_model.col_baunitcomointeresado_interesado_lc_interesado_idx;
       test_ladm_survey_model         postgres    false    442            ?"           1259    582380 #   col_baunitcomointeresado_unidad_idx    INDEX     z   CREATE INDEX col_baunitcomointeresado_unidad_idx ON test_ladm_survey_model.col_baunitcomointeresado USING btree (unidad);
 G   DROP INDEX test_ladm_survey_model.col_baunitcomointeresado_unidad_idx;
       test_ladm_survey_model         postgres    false    442            "           1259    582287 $   col_baunitfuente_fuente_espacial_idx    INDEX     |   CREATE INDEX col_baunitfuente_fuente_espacial_idx ON test_ladm_survey_model.col_baunitfuente USING btree (fuente_espacial);
 H   DROP INDEX test_ladm_survey_model.col_baunitfuente_fuente_espacial_idx;
       test_ladm_survey_model         postgres    false    432            "           1259    582288    col_baunitfuente_unidad_idx    INDEX     j   CREATE INDEX col_baunitfuente_unidad_idx ON test_ladm_survey_model.col_baunitfuente USING btree (unidad);
 ?   DROP INDEX test_ladm_survey_model.col_baunitfuente_unidad_idx;
       test_ladm_survey_model         postgres    false    432            "           1259    582302    col_cclfuente_ccl_idx    INDEX     ^   CREATE INDEX col_cclfuente_ccl_idx ON test_ladm_survey_model.col_cclfuente USING btree (ccl);
 9   DROP INDEX test_ladm_survey_model.col_cclfuente_ccl_idx;
       test_ladm_survey_model         postgres    false    434            "           1259    582303 !   col_cclfuente_fuente_espacial_idx    INDEX     v   CREATE INDEX col_cclfuente_fuente_espacial_idx ON test_ladm_survey_model.col_cclfuente USING btree (fuente_espacial);
 E   DROP INDEX test_ladm_survey_model.col_cclfuente_fuente_espacial_idx;
       test_ladm_survey_model         postgres    false    434            '"           1259    582342     col_clfuente_fuente_espacial_idx    INDEX     t   CREATE INDEX col_clfuente_fuente_espacial_idx ON test_ladm_survey_model.col_clfuente USING btree (fuente_espacial);
 D   DROP INDEX test_ladm_survey_model.col_clfuente_fuente_espacial_idx;
       test_ladm_survey_model         postgres    false    438            "           1259    582321    col_masccl_ccl_mas_idx    INDEX     `   CREATE INDEX col_masccl_ccl_mas_idx ON test_ladm_survey_model.col_masccl USING btree (ccl_mas);
 :   DROP INDEX test_ladm_survey_model.col_masccl_ccl_mas_idx;
       test_ladm_survey_model         postgres    false    436            "           1259    582325 %   col_masccl_ue_mas_lc_construccion_idx    INDEX     ~   CREATE INDEX col_masccl_ue_mas_lc_construccion_idx ON test_ladm_survey_model.col_masccl USING btree (ue_mas_lc_construccion);
 I   DROP INDEX test_ladm_survey_model.col_masccl_ue_mas_lc_construccion_idx;
       test_ladm_survey_model         postgres    false    436            "           1259    582323 )   col_masccl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_survey_model.col_masccl USING btree (ue_mas_lc_servidumbretransito);
 M   DROP INDEX test_ladm_survey_model.col_masccl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_survey_model         postgres    false    436            "           1259    582322     col_masccl_ue_mas_lc_terreno_idx    INDEX     t   CREATE INDEX col_masccl_ue_mas_lc_terreno_idx ON test_ladm_survey_model.col_masccl USING btree (ue_mas_lc_terreno);
 D   DROP INDEX test_ladm_survey_model.col_masccl_ue_mas_lc_terreno_idx;
       test_ladm_survey_model         postgres    false    436             "           1259    582324 )   col_masccl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_survey_model.col_masccl USING btree (ue_mas_lc_unidadconstruccion);
 M   DROP INDEX test_ladm_survey_model.col_masccl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_survey_model         postgres    false    436            2"           1259    582362 $   col_mascl_ue_mas_lc_construccion_idx    INDEX     |   CREATE INDEX col_mascl_ue_mas_lc_construccion_idx ON test_ladm_survey_model.col_mascl USING btree (ue_mas_lc_construccion);
 H   DROP INDEX test_ladm_survey_model.col_mascl_ue_mas_lc_construccion_idx;
       test_ladm_survey_model         postgres    false    440            3"           1259    582360 (   col_mascl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_survey_model.col_mascl USING btree (ue_mas_lc_servidumbretransito);
 L   DROP INDEX test_ladm_survey_model.col_mascl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_survey_model         postgres    false    440            4"           1259    582359    col_mascl_ue_mas_lc_terreno_idx    INDEX     r   CREATE INDEX col_mascl_ue_mas_lc_terreno_idx ON test_ladm_survey_model.col_mascl USING btree (ue_mas_lc_terreno);
 C   DROP INDEX test_ladm_survey_model.col_mascl_ue_mas_lc_terreno_idx;
       test_ladm_survey_model         postgres    false    440            5"           1259    582361 (   col_mascl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_survey_model.col_mascl USING btree (ue_mas_lc_unidadconstruccion);
 L   DROP INDEX test_ladm_survey_model.col_mascl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_survey_model         postgres    false    440            "           1259    582310    col_menosccl_ccl_menos_idx    INDEX     h   CREATE INDEX col_menosccl_ccl_menos_idx ON test_ladm_survey_model.col_menosccl USING btree (ccl_menos);
 >   DROP INDEX test_ladm_survey_model.col_menosccl_ccl_menos_idx;
       test_ladm_survey_model         postgres    false    435            "           1259    582314 )   col_menosccl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_construccion_idx ON test_ladm_survey_model.col_menosccl USING btree (ue_menos_lc_construccion);
 M   DROP INDEX test_ladm_survey_model.col_menosccl_ue_menos_lc_construccion_idx;
       test_ladm_survey_model         postgres    false    435            "           1259    582312 +   col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_survey_model.col_menosccl USING btree (ue_menos_lc_servidumbretransito);
 O   DROP INDEX test_ladm_survey_model.col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_survey_model         postgres    false    435            "           1259    582311 $   col_menosccl_ue_menos_lc_terreno_idx    INDEX     |   CREATE INDEX col_menosccl_ue_menos_lc_terreno_idx ON test_ladm_survey_model.col_menosccl USING btree (ue_menos_lc_terreno);
 H   DROP INDEX test_ladm_survey_model.col_menosccl_ue_menos_lc_terreno_idx;
       test_ladm_survey_model         postgres    false    435            "           1259    582313 +   col_menosccl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_survey_model.col_menosccl USING btree (ue_menos_lc_unidadconstruccion);
 O   DROP INDEX test_ladm_survey_model.col_menosccl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_survey_model         postgres    false    435            ,"           1259    582352 (   col_menoscl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_construccion_idx ON test_ladm_survey_model.col_menoscl USING btree (ue_menos_lc_construccion);
 L   DROP INDEX test_ladm_survey_model.col_menoscl_ue_menos_lc_construccion_idx;
       test_ladm_survey_model         postgres    false    439            -"           1259    582350 *   col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_survey_model.col_menoscl USING btree (ue_menos_lc_servidumbretransito);
 N   DROP INDEX test_ladm_survey_model.col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_survey_model         postgres    false    439            ."           1259    582349 #   col_menoscl_ue_menos_lc_terreno_idx    INDEX     z   CREATE INDEX col_menoscl_ue_menos_lc_terreno_idx ON test_ladm_survey_model.col_menoscl USING btree (ue_menos_lc_terreno);
 G   DROP INDEX test_ladm_survey_model.col_menoscl_ue_menos_lc_terreno_idx;
       test_ladm_survey_model         postgres    false    439            /"           1259    582351 *   col_menoscl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_survey_model.col_menoscl USING btree (ue_menos_lc_unidadconstruccion);
 N   DROP INDEX test_ladm_survey_model.col_menoscl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_survey_model         postgres    false    439            J"           1259    582407    col_miembros_agrupacion_idx    INDEX     j   CREATE INDEX col_miembros_agrupacion_idx ON test_ladm_survey_model.col_miembros USING btree (agrupacion);
 ?   DROP INDEX test_ladm_survey_model.col_miembros_agrupacion_idx;
       test_ladm_survey_model         postgres    false    445            K"           1259    582406 +   col_miembros_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_grpcnntrsdos_idx ON test_ladm_survey_model.col_miembros USING btree (interesado_lc_agrupacioninteresados);
 O   DROP INDEX test_ladm_survey_model.col_miembros_interesado_lc_grpcnntrsdos_idx;
       test_ladm_survey_model         postgres    false    445            L"           1259    582405 )   col_miembros_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_interesado_idx ON test_ladm_survey_model.col_miembros USING btree (interesado_lc_interesado);
 M   DROP INDEX test_ladm_survey_model.col_miembros_interesado_lc_interesado_idx;
       test_ladm_survey_model         postgres    false    445            !"           1259    582335    col_puntoccl_ccl_idx    INDEX     \   CREATE INDEX col_puntoccl_ccl_idx ON test_ladm_survey_model.col_puntoccl USING btree (ccl);
 8   DROP INDEX test_ladm_survey_model.col_puntoccl_ccl_idx;
       test_ladm_survey_model         postgres    false    437            $"           1259    582332 &   col_puntoccl_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntocontrol_idx ON test_ladm_survey_model.col_puntoccl USING btree (punto_lc_puntocontrol);
 J   DROP INDEX test_ladm_survey_model.col_puntoccl_punto_lc_puntocontrol_idx;
       test_ladm_survey_model         postgres    false    437            %"           1259    582334 +   col_puntoccl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolevantaminto_idx ON test_ladm_survey_model.col_puntoccl USING btree (punto_lc_puntolevantamiento);
 O   DROP INDEX test_ladm_survey_model.col_puntoccl_punto_lc_puntolevantaminto_idx;
       test_ladm_survey_model         postgres    false    437            &"           1259    582333 &   col_puntoccl_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolindero_idx ON test_ladm_survey_model.col_puntoccl USING btree (punto_lc_puntolindero);
 J   DROP INDEX test_ladm_survey_model.col_puntoccl_punto_lc_puntolindero_idx;
       test_ladm_survey_model         postgres    false    437            8"           1259    582369 %   col_puntocl_punto_lc_puntocontrol_idx    INDEX     ~   CREATE INDEX col_puntocl_punto_lc_puntocontrol_idx ON test_ladm_survey_model.col_puntocl USING btree (punto_lc_puntocontrol);
 I   DROP INDEX test_ladm_survey_model.col_puntocl_punto_lc_puntocontrol_idx;
       test_ladm_survey_model         postgres    false    441            9"           1259    582371 *   col_puntocl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolevantaminto_idx ON test_ladm_survey_model.col_puntocl USING btree (punto_lc_puntolevantamiento);
 N   DROP INDEX test_ladm_survey_model.col_puntocl_punto_lc_puntolevantaminto_idx;
       test_ladm_survey_model         postgres    false    441            :"           1259    582370 %   col_puntocl_punto_lc_puntolindero_idx    INDEX     ~   CREATE INDEX col_puntocl_punto_lc_puntolindero_idx ON test_ladm_survey_model.col_puntocl USING btree (punto_lc_puntolindero);
 I   DROP INDEX test_ladm_survey_model.col_puntocl_punto_lc_puntolindero_idx;
       test_ladm_survey_model         postgres    false    441            �!           1259    582266 #   col_puntofuente_fuente_espacial_idx    INDEX     z   CREATE INDEX col_puntofuente_fuente_espacial_idx ON test_ladm_survey_model.col_puntofuente USING btree (fuente_espacial);
 G   DROP INDEX test_ladm_survey_model.col_puntofuente_fuente_espacial_idx;
       test_ladm_survey_model         postgres    false    430            �!           1259    582267 )   col_puntofuente_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntocontrol_idx ON test_ladm_survey_model.col_puntofuente USING btree (punto_lc_puntocontrol);
 M   DROP INDEX test_ladm_survey_model.col_puntofuente_punto_lc_puntocontrol_idx;
       test_ladm_survey_model         postgres    false    430            �!           1259    582269 .   col_puntofuente_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolevantaminto_idx ON test_ladm_survey_model.col_puntofuente USING btree (punto_lc_puntolevantamiento);
 R   DROP INDEX test_ladm_survey_model.col_puntofuente_punto_lc_puntolevantaminto_idx;
       test_ladm_survey_model         postgres    false    430             "           1259    582268 )   col_puntofuente_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolindero_idx ON test_ladm_survey_model.col_puntofuente USING btree (punto_lc_puntolindero);
 M   DROP INDEX test_ladm_survey_model.col_puntofuente_punto_lc_puntolindero_idx;
       test_ladm_survey_model         postgres    false    430            �!           1259    582251 ,   col_relacionfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_relacionfuente_fuente_administrativa_idx ON test_ladm_survey_model.col_relacionfuente USING btree (fuente_administrativa);
 P   DROP INDEX test_ladm_survey_model.col_relacionfuente_fuente_administrativa_idx;
       test_ladm_survey_model         postgres    false    428            "           1259    582295 .   col_relacionfuenteuespcial_fuente_espacial_idx    INDEX     �   CREATE INDEX col_relacionfuenteuespcial_fuente_espacial_idx ON test_ladm_survey_model.col_relacionfuenteuespacial USING btree (fuente_espacial);
 R   DROP INDEX test_ladm_survey_model.col_relacionfuenteuespcial_fuente_espacial_idx;
       test_ladm_survey_model         postgres    false    433            @"           1259    582387 /   col_responsablefuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_responsablefuente_fuente_administrativa_idx ON test_ladm_survey_model.col_responsablefuente USING btree (fuente_administrativa);
 S   DROP INDEX test_ladm_survey_model.col_responsablefuente_fuente_administrativa_idx;
       test_ladm_survey_model         postgres    false    443            A"           1259    582389 4   col_responsablefuente_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_grpcnntrsdos_idx ON test_ladm_survey_model.col_responsablefuente USING btree (interesado_lc_agrupacioninteresados);
 X   DROP INDEX test_ladm_survey_model.col_responsablefuente_interesado_lc_grpcnntrsdos_idx;
       test_ladm_survey_model         postgres    false    443            B"           1259    582388 2   col_responsablefuente_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_interesado_idx ON test_ladm_survey_model.col_responsablefuente USING btree (interesado_lc_interesado);
 V   DROP INDEX test_ladm_survey_model.col_responsablefuente_interesado_lc_interesado_idx;
       test_ladm_survey_model         postgres    false    443            �!           1259    582231 '   col_rrrfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_rrrfuente_fuente_administrativa_idx ON test_ladm_survey_model.col_rrrfuente USING btree (fuente_administrativa);
 K   DROP INDEX test_ladm_survey_model.col_rrrfuente_fuente_administrativa_idx;
       test_ladm_survey_model         postgres    false    426            �!           1259    582233     col_rrrfuente_rrr_lc_derecho_idx    INDEX     t   CREATE INDEX col_rrrfuente_rrr_lc_derecho_idx ON test_ladm_survey_model.col_rrrfuente USING btree (rrr_lc_derecho);
 D   DROP INDEX test_ladm_survey_model.col_rrrfuente_rrr_lc_derecho_idx;
       test_ladm_survey_model         postgres    false    426            �!           1259    582232 $   col_rrrfuente_rrr_lc_restriccion_idx    INDEX     |   CREATE INDEX col_rrrfuente_rrr_lc_restriccion_idx ON test_ladm_survey_model.col_rrrfuente USING btree (rrr_lc_restriccion);
 H   DROP INDEX test_ladm_survey_model.col_rrrfuente_rrr_lc_restriccion_idx;
       test_ladm_survey_model         postgres    false    426            E"           1259    582396 '   col_topografofuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_topografofuente_fuente_espacial_idx ON test_ladm_survey_model.col_topografofuente USING btree (fuente_espacial);
 K   DROP INDEX test_ladm_survey_model.col_topografofuente_fuente_espacial_idx;
       test_ladm_survey_model         postgres    false    444            H"           1259    582398 2   col_topografofuente_topografo_lc_agrpcnntrsdos_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_agrpcnntrsdos_idx ON test_ladm_survey_model.col_topografofuente USING btree (topografo_lc_agrupacioninteresados);
 V   DROP INDEX test_ladm_survey_model.col_topografofuente_topografo_lc_agrpcnntrsdos_idx;
       test_ladm_survey_model         postgres    false    444            I"           1259    582397 /   col_topografofuente_topografo_lc_interesado_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_interesado_idx ON test_ladm_survey_model.col_topografofuente USING btree (topografo_lc_interesado);
 S   DROP INDEX test_ladm_survey_model.col_topografofuente_topografo_lc_interesado_idx;
       test_ladm_survey_model         postgres    false    444            �!           1259    582156 1   col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx ON test_ladm_survey_model.col_transformacion USING btree (lc_puntocontrol_transformacion_y_resultado);
 U   DROP INDEX test_ladm_survey_model.col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx;
       test_ladm_survey_model         postgres    false    418            �!           1259    582157 1   col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx ON test_ladm_survey_model.col_transformacion USING btree (lc_puntolindero_transformacion_y_resultado);
 U   DROP INDEX test_ladm_survey_model.col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx;
       test_ladm_survey_model         postgres    false    418            �!           1259    582158 1   col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx ON test_ladm_survey_model.col_transformacion USING btree (lc_puntolevantamiento_transformacion_y_resultado);
 U   DROP INDEX test_ladm_survey_model.col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx;
       test_ladm_survey_model         postgres    false    418            �!           1259    582155 0   col_transformacion_localizacion_transformada_idx    INDEX     �   CREATE INDEX col_transformacion_localizacion_transformada_idx ON test_ladm_survey_model.col_transformacion USING gist (localizacion_transformada);
 T   DROP INDEX test_ladm_survey_model.col_transformacion_localizacion_transformada_idx;
       test_ladm_survey_model         postgres    false    418            �!           1259    582244    col_uebaunit_baunit_idx    INDEX     b   CREATE INDEX col_uebaunit_baunit_idx ON test_ladm_survey_model.col_uebaunit USING btree (baunit);
 ;   DROP INDEX test_ladm_survey_model.col_uebaunit_baunit_idx;
       test_ladm_survey_model         postgres    false    427            �!           1259    582243 #   col_uebaunit_ue_lc_construccion_idx    INDEX     z   CREATE INDEX col_uebaunit_ue_lc_construccion_idx ON test_ladm_survey_model.col_uebaunit USING btree (ue_lc_construccion);
 G   DROP INDEX test_ladm_survey_model.col_uebaunit_ue_lc_construccion_idx;
       test_ladm_survey_model         postgres    false    427            �!           1259    582241 *   col_uebaunit_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_servidumbretransito_idx ON test_ladm_survey_model.col_uebaunit USING btree (ue_lc_servidumbretransito);
 N   DROP INDEX test_ladm_survey_model.col_uebaunit_ue_lc_servidumbretransito_idx;
       test_ladm_survey_model         postgres    false    427            �!           1259    582240    col_uebaunit_ue_lc_terreno_idx    INDEX     p   CREATE INDEX col_uebaunit_ue_lc_terreno_idx ON test_ladm_survey_model.col_uebaunit USING btree (ue_lc_terreno);
 B   DROP INDEX test_ladm_survey_model.col_uebaunit_ue_lc_terreno_idx;
       test_ladm_survey_model         postgres    false    427            �!           1259    582242 )   col_uebaunit_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_unidadconstruccion_idx ON test_ladm_survey_model.col_uebaunit USING btree (ue_lc_unidadconstruccion);
 M   DROP INDEX test_ladm_survey_model.col_uebaunit_ue_lc_unidadconstruccion_idx;
       test_ladm_survey_model         postgres    false    427            "           1259    582280     col_uefuente_fuente_espacial_idx    INDEX     t   CREATE INDEX col_uefuente_fuente_espacial_idx ON test_ladm_survey_model.col_uefuente USING btree (fuente_espacial);
 D   DROP INDEX test_ladm_survey_model.col_uefuente_fuente_espacial_idx;
       test_ladm_survey_model         postgres    false    431            "           1259    582279 #   col_uefuente_ue_lc_construccion_idx    INDEX     z   CREATE INDEX col_uefuente_ue_lc_construccion_idx ON test_ladm_survey_model.col_uefuente USING btree (ue_lc_construccion);
 G   DROP INDEX test_ladm_survey_model.col_uefuente_ue_lc_construccion_idx;
       test_ladm_survey_model         postgres    false    431            "           1259    582277 *   col_uefuente_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_servidumbretransito_idx ON test_ladm_survey_model.col_uefuente USING btree (ue_lc_servidumbretransito);
 N   DROP INDEX test_ladm_survey_model.col_uefuente_ue_lc_servidumbretransito_idx;
       test_ladm_survey_model         postgres    false    431            "           1259    582276    col_uefuente_ue_lc_terreno_idx    INDEX     p   CREATE INDEX col_uefuente_ue_lc_terreno_idx ON test_ladm_survey_model.col_uefuente USING btree (ue_lc_terreno);
 B   DROP INDEX test_ladm_survey_model.col_uefuente_ue_lc_terreno_idx;
       test_ladm_survey_model         postgres    false    431            "           1259    582278 )   col_uefuente_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_unidadconstruccion_idx ON test_ladm_survey_model.col_uefuente USING btree (ue_lc_unidadconstruccion);
 M   DROP INDEX test_ladm_survey_model.col_uefuente_ue_lc_unidadconstruccion_idx;
       test_ladm_survey_model         postgres    false    431            �!           1259    582224 '   col_ueuegrupo_parte_lc_construccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_construccion_idx ON test_ladm_survey_model.col_ueuegrupo USING btree (parte_lc_construccion);
 K   DROP INDEX test_ladm_survey_model.col_ueuegrupo_parte_lc_construccion_idx;
       test_ladm_survey_model         postgres    false    425            �!           1259    582222 ,   col_ueuegrupo_parte_lc_servidumbrtrnsito_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_servidumbrtrnsito_idx ON test_ladm_survey_model.col_ueuegrupo USING btree (parte_lc_servidumbretransito);
 P   DROP INDEX test_ladm_survey_model.col_ueuegrupo_parte_lc_servidumbrtrnsito_idx;
       test_ladm_survey_model         postgres    false    425            �!           1259    582221 "   col_ueuegrupo_parte_lc_terreno_idx    INDEX     x   CREATE INDEX col_ueuegrupo_parte_lc_terreno_idx ON test_ladm_survey_model.col_ueuegrupo USING btree (parte_lc_terreno);
 F   DROP INDEX test_ladm_survey_model.col_ueuegrupo_parte_lc_terreno_idx;
       test_ladm_survey_model         postgres    false    425            �!           1259    582223 ,   col_ueuegrupo_parte_lc_unidadconstrccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_unidadconstrccion_idx ON test_ladm_survey_model.col_ueuegrupo USING btree (parte_lc_unidadconstruccion);
 P   DROP INDEX test_ladm_survey_model.col_ueuegrupo_parte_lc_unidadconstrccion_idx;
       test_ladm_survey_model         postgres    false    425            �!           1259    582258 *   col_unidadfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_unidadfuente_fuente_administrativa_idx ON test_ladm_survey_model.col_unidadfuente USING btree (fuente_administrativa);
 N   DROP INDEX test_ladm_survey_model.col_unidadfuente_fuente_administrativa_idx;
       test_ladm_survey_model         postgres    false    429            �!           1259    582259    col_unidadfuente_unidad_idx    INDEX     j   CREATE INDEX col_unidadfuente_unidad_idx ON test_ladm_survey_model.col_unidadfuente USING btree (unidad);
 ?   DROP INDEX test_ladm_survey_model.col_unidadfuente_unidad_idx;
       test_ladm_survey_model         postgres    false    429            �!           1259    582211 ,   col_volumenvalor_lc_construccion_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_construccion_volumen_idx ON test_ladm_survey_model.col_volumenvalor USING btree (lc_construccion_volumen);
 P   DROP INDEX test_ladm_survey_model.col_volumenvalor_lc_construccion_volumen_idx;
       test_ladm_survey_model         postgres    false    424            �!           1259    582213 /   col_volumenvalor_lc_servidumbretranst_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_servidumbretranst_vlmen_idx ON test_ladm_survey_model.col_volumenvalor USING btree (lc_servidumbretransito_volumen);
 S   DROP INDEX test_ladm_survey_model.col_volumenvalor_lc_servidumbretranst_vlmen_idx;
       test_ladm_survey_model         postgres    false    424            �!           1259    582212 '   col_volumenvalor_lc_terreno_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_terreno_volumen_idx ON test_ladm_survey_model.col_volumenvalor USING btree (lc_terreno_volumen);
 K   DROP INDEX test_ladm_survey_model.col_volumenvalor_lc_terreno_volumen_idx;
       test_ladm_survey_model         postgres    false    424            �!           1259    582214 /   col_volumenvalor_lc_unidadconstruccin_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_unidadconstruccin_vlmen_idx ON test_ladm_survey_model.col_volumenvalor USING btree (lc_unidadconstruccion_volumen);
 S   DROP INDEX test_ladm_survey_model.col_volumenvalor_lc_unidadconstruccin_vlmen_idx;
       test_ladm_survey_model         postgres    false    424            �!           1259    582210    col_volumenvalor_tipo_idx    INDEX     f   CREATE INDEX col_volumenvalor_tipo_idx ON test_ladm_survey_model.col_volumenvalor USING btree (tipo);
 =   DROP INDEX test_ladm_survey_model.col_volumenvalor_tipo_idx;
       test_ladm_survey_model         postgres    false    424            �!           1259    582203 )   extarchivo_lc_fuenteespacl_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_fuenteespacl_xt_rchv_id_idx ON test_ladm_survey_model.extarchivo USING btree (lc_fuenteespacial_ext_archivo_id);
 M   DROP INDEX test_ladm_survey_model.extarchivo_lc_fuenteespacl_xt_rchv_id_idx;
       test_ladm_survey_model         postgres    false    423            �!           1259    582202 )   extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx ON test_ladm_survey_model.extarchivo USING btree (lc_fuenteadministrtiva_ext_archivo_id);
 M   DROP INDEX test_ladm_survey_model.extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx;
       test_ladm_survey_model         postgres    false    423            �!           1259    582201 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_ladm_survey_model.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 M   DROP INDEX test_ladm_survey_model.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
       test_ladm_survey_model         postgres    false    423            �!           1259    582128 $   extdireccion_clase_via_principal_idx    INDEX     |   CREATE INDEX extdireccion_clase_via_principal_idx ON test_ladm_survey_model.extdireccion USING btree (clase_via_principal);
 H   DROP INDEX test_ladm_survey_model.extdireccion_clase_via_principal_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582132 +   extdireccion_extinteresado_ext_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extinteresado_ext_drccn_id_idx ON test_ladm_survey_model.extdireccion USING btree (extinteresado_ext_direccion_id);
 O   DROP INDEX test_ladm_survey_model.extdireccion_extinteresado_ext_drccn_id_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582131 +   extdireccion_extndddfccnfsc_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extndddfccnfsc_xt_drccn_id_idx ON test_ladm_survey_model.extdireccion USING btree (extunidadedificcnfsica_ext_direccion_id);
 O   DROP INDEX test_ladm_survey_model.extdireccion_extndddfccnfsc_xt_drccn_id_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582133 +   extdireccion_lc_construccin_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_construccin_xt_drccn_id_idx ON test_ladm_survey_model.extdireccion USING btree (lc_construccion_ext_direccion_id);
 O   DROP INDEX test_ladm_survey_model.extdireccion_lc_construccin_xt_drccn_id_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582137 +   extdireccion_lc_nddcnstrccn_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_nddcnstrccn_xt_drccn_id_idx ON test_ladm_survey_model.extdireccion USING btree (lc_unidadconstruccion_ext_direccion_id);
 O   DROP INDEX test_ladm_survey_model.extdireccion_lc_nddcnstrccn_xt_drccn_id_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582134 $   extdireccion_lc_predio_direccion_idx    INDEX     |   CREATE INDEX extdireccion_lc_predio_direccion_idx ON test_ladm_survey_model.extdireccion USING btree (lc_predio_direccion);
 H   DROP INDEX test_ladm_survey_model.extdireccion_lc_predio_direccion_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582136 +   extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx ON test_ladm_survey_model.extdireccion USING btree (lc_servidumbretransito_ext_direccion_id);
 O   DROP INDEX test_ladm_survey_model.extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582135 +   extdireccion_lc_terreno_ext_direccin_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_terreno_ext_direccin_id_idx ON test_ladm_survey_model.extdireccion USING btree (lc_terreno_ext_direccion_id);
 O   DROP INDEX test_ladm_survey_model.extdireccion_lc_terreno_ext_direccin_id_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582127    extdireccion_localizacion_idx    INDEX     m   CREATE INDEX extdireccion_localizacion_idx ON test_ladm_survey_model.extdireccion USING gist (localizacion);
 A   DROP INDEX test_ladm_survey_model.extdireccion_localizacion_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582129    extdireccion_sector_ciudad_idx    INDEX     p   CREATE INDEX extdireccion_sector_ciudad_idx ON test_ladm_survey_model.extdireccion USING btree (sector_ciudad);
 B   DROP INDEX test_ladm_survey_model.extdireccion_sector_ciudad_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582130    extdireccion_sector_predio_idx    INDEX     p   CREATE INDEX extdireccion_sector_predio_idx ON test_ladm_survey_model.extdireccion USING btree (sector_predio);
 B   DROP INDEX test_ladm_survey_model.extdireccion_sector_predio_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582126    extdireccion_tipo_direccion_idx    INDEX     r   CREATE INDEX extdireccion_tipo_direccion_idx ON test_ladm_survey_model.extdireccion USING btree (tipo_direccion);
 C   DROP INDEX test_ladm_survey_model.extdireccion_tipo_direccion_idx;
       test_ladm_survey_model         postgres    false    416            �!           1259    582183 ,   extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx    INDEX     �   CREATE INDEX extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx ON test_ladm_survey_model.extinteresado USING btree (extredserviciosfisica_ext_interesado_administrador_id);
 P   DROP INDEX test_ladm_survey_model.extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx;
       test_ladm_survey_model         postgres    false    421            �!           1259    582184 ,   extinteresado_lc_agrupacionntrsds_xt_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_agrupacionntrsds_xt_pid_idx ON test_ladm_survey_model.extinteresado USING btree (lc_agrupacionintersdos_ext_pid);
 P   DROP INDEX test_ladm_survey_model.extinteresado_lc_agrupacionntrsds_xt_pid_idx;
       test_ladm_survey_model         postgres    false    421            �!           1259    582185 '   extinteresado_lc_interesado_ext_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_interesado_ext_pid_idx ON test_ladm_survey_model.extinteresado USING btree (lc_interesado_ext_pid);
 K   DROP INDEX test_ladm_survey_model.extinteresado_lc_interesado_ext_pid_idx;
       test_ladm_survey_model         postgres    false    421            �!           1259    582144 '   fraccion_col_miembros_participacion_idx    INDEX     �   CREATE INDEX fraccion_col_miembros_participacion_idx ON test_ladm_survey_model.fraccion USING btree (col_miembros_participacion);
 K   DROP INDEX test_ladm_survey_model.fraccion_col_miembros_participacion_idx;
       test_ladm_survey_model         postgres    false    417            �!           1259    582145 '   fraccion_lc_predio_copropidd_cfcnte_idx    INDEX     �   CREATE INDEX fraccion_lc_predio_copropidd_cfcnte_idx ON test_ladm_survey_model.fraccion USING btree (lc_predio_copropiedad_coeficiente);
 K   DROP INDEX test_ladm_survey_model.fraccion_lc_predio_copropidd_cfcnte_idx;
       test_ladm_survey_model         postgres    false    417            O"           1259    582417    gc_barrio_geometria_idx    INDEX     a   CREATE INDEX gc_barrio_geometria_idx ON test_ladm_survey_model.gc_barrio USING gist (geometria);
 ;   DROP INDEX test_ladm_survey_model.gc_barrio_geometria_idx;
       test_ladm_survey_model         postgres    false    446            T"           1259    582427 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_ladm_survey_model.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 X   DROP INDEX test_ladm_survey_model.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
       test_ladm_survey_model         postgres    false    447            U"           1259    582437 '   gc_comisionesconstruccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_ladm_survey_model.gc_comisionesconstruccion USING gist (geometria);
 K   DROP INDEX test_ladm_survey_model.gc_comisionesconstruccion_geometria_idx;
       test_ladm_survey_model         postgres    false    448            ["           1259    582457 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_ladm_survey_model.gc_comisionesunidadconstruccion USING gist (geometria);
 L   DROP INDEX test_ladm_survey_model.gc_comisionesnddcnstrccion_geometria_idx;
       test_ladm_survey_model         postgres    false    450            X"           1259    582447 "   gc_comisionesterreno_geometria_idx    INDEX     w   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_ladm_survey_model.gc_comisionesterreno USING gist (geometria);
 F   DROP INDEX test_ladm_survey_model.gc_comisionesterreno_geometria_idx;
       test_ladm_survey_model         postgres    false    449            ^"           1259    582469    gc_construccion_gc_predio_idx    INDEX     n   CREATE INDEX gc_construccion_gc_predio_idx ON test_ladm_survey_model.gc_construccion USING btree (gc_predio);
 A   DROP INDEX test_ladm_survey_model.gc_construccion_gc_predio_idx;
       test_ladm_survey_model         postgres    false    451            _"           1259    582468    gc_construccion_geometria_idx    INDEX     m   CREATE INDEX gc_construccion_geometria_idx ON test_ladm_survey_model.gc_construccion USING gist (geometria);
 A   DROP INDEX test_ladm_survey_model.gc_construccion_geometria_idx;
       test_ladm_survey_model         postgres    false    451            b"           1259    582467 %   gc_construccion_tipo_construccion_idx    INDEX     ~   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_ladm_survey_model.gc_construccion USING btree (tipo_construccion);
 I   DROP INDEX test_ladm_survey_model.gc_construccion_tipo_construccion_idx;
       test_ladm_survey_model         postgres    false    451            �"           1259    582602    gc_copropiedad_gc_matriz_idx    INDEX     l   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_ladm_survey_model.gc_copropiedad USING btree (gc_matriz);
 @   DROP INDEX test_ladm_survey_model.gc_copropiedad_gc_matriz_idx;
       test_ladm_survey_model         postgres    false    465            �"           1259    582603    gc_copropiedad_gc_unidad_idx    INDEX     l   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_ladm_survey_model.gc_copropiedad USING btree (gc_unidad);
 @   DROP INDEX test_ladm_survey_model.gc_copropiedad_gc_unidad_idx;
       test_ladm_survey_model         postgres    false    465            �"           1259    584345    gc_copropiedad_gc_unidad_key    INDEX     s   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_ladm_survey_model.gc_copropiedad USING btree (gc_unidad);
 @   DROP INDEX test_ladm_survey_model.gc_copropiedad_gc_unidad_key;
       test_ladm_survey_model         postgres    false    465            c"           1259    582476 "   gc_datosphcondominio_gc_predio_idx    INDEX     x   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_ladm_survey_model.gc_datosphcondominio USING btree (gc_predio);
 F   DROP INDEX test_ladm_survey_model.gc_datosphcondominio_gc_predio_idx;
       test_ladm_survey_model         postgres    false    452            f"           1259    582483 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     �   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_ladm_survey_model.gc_datostorreph USING btree (gc_datosphcondominio);
 L   DROP INDEX test_ladm_survey_model.gc_datostorreph_gc_datosphcondominio_idx;
       test_ladm_survey_model         postgres    false    453            i"           1259    582494 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_ladm_survey_model.gc_direccion USING btree (gc_prediocatastro_direcciones);
 O   DROP INDEX test_ladm_survey_model.gc_direccion_gc_prediocatastro_dirccnes_idx;
       test_ladm_survey_model         postgres    false    454            j"           1259    582493 %   gc_direccion_geometria_referencia_idx    INDEX     }   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_ladm_survey_model.gc_direccion USING gist (geometria_referencia);
 I   DROP INDEX test_ladm_survey_model.gc_direccion_geometria_referencia_idx;
       test_ladm_survey_model         postgres    false    454            m"           1259    582501 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_ladm_survey_model.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 R   DROP INDEX test_ladm_survey_model.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
       test_ladm_survey_model         postgres    false    455            p"           1259    582511    gc_manzana_geometria_idx    INDEX     c   CREATE INDEX gc_manzana_geometria_idx ON test_ladm_survey_model.gc_manzana USING gist (geometria);
 <   DROP INDEX test_ladm_survey_model.gc_manzana_geometria_idx;
       test_ladm_survey_model         postgres    false    456            s"           1259    582521    gc_perimetro_geometria_idx    INDEX     g   CREATE INDEX gc_perimetro_geometria_idx ON test_ladm_survey_model.gc_perimetro USING gist (geometria);
 >   DROP INDEX test_ladm_survey_model.gc_perimetro_geometria_idx;
       test_ladm_survey_model         postgres    false    457            �"           1259    582594 &   gc_prediocatastro_condicion_predio_idx    INDEX     �   CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_ladm_survey_model.gc_prediocatastro USING btree (condicion_predio);
 J   DROP INDEX test_ladm_survey_model.gc_prediocatastro_condicion_predio_idx;
       test_ladm_survey_model         postgres    false    464            �"           1259    582595 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_ladm_survey_model.gc_prediocatastro USING btree (sistema_procedencia_datos);
 S   DROP INDEX test_ladm_survey_model.gc_prediocatastro_sistema_procedencia_datos_idx;
       test_ladm_survey_model         postgres    false    464            v"           1259    582531 %   gc_propietario_gc_predio_catastro_idx    INDEX     ~   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_ladm_survey_model.gc_propietario USING btree (gc_predio_catastro);
 I   DROP INDEX test_ladm_survey_model.gc_propietario_gc_predio_catastro_idx;
       test_ladm_survey_model         postgres    false    458            y"           1259    582541    gc_sectorrural_geometria_idx    INDEX     k   CREATE INDEX gc_sectorrural_geometria_idx ON test_ladm_survey_model.gc_sectorrural USING gist (geometria);
 @   DROP INDEX test_ladm_survey_model.gc_sectorrural_geometria_idx;
       test_ladm_survey_model         postgres    false    459            |"           1259    582551    gc_sectorurbano_geometria_idx    INDEX     m   CREATE INDEX gc_sectorurbano_geometria_idx ON test_ladm_survey_model.gc_sectorurbano USING gist (geometria);
 A   DROP INDEX test_ladm_survey_model.gc_sectorurbano_geometria_idx;
       test_ladm_survey_model         postgres    false    460            "           1259    582562    gc_terreno_gc_predio_idx    INDEX     d   CREATE INDEX gc_terreno_gc_predio_idx ON test_ladm_survey_model.gc_terreno USING btree (gc_predio);
 <   DROP INDEX test_ladm_survey_model.gc_terreno_gc_predio_idx;
       test_ladm_survey_model         postgres    false    461            �"           1259    582561    gc_terreno_geometria_idx    INDEX     c   CREATE INDEX gc_terreno_geometria_idx ON test_ladm_survey_model.gc_terreno USING gist (geometria);
 <   DROP INDEX test_ladm_survey_model.gc_terreno_geometria_idx;
       test_ladm_survey_model         postgres    false    461            �"           1259    582574 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_ladm_survey_model.gc_unidadconstruccion USING btree (gc_construccion);
 M   DROP INDEX test_ladm_survey_model.gc_unidadconstruccion_gc_construccion_idx;
       test_ladm_survey_model         postgres    false    462            �"           1259    582573 #   gc_unidadconstruccion_geometria_idx    INDEX     y   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_ladm_survey_model.gc_unidadconstruccion USING gist (geometria);
 G   DROP INDEX test_ladm_survey_model.gc_unidadconstruccion_geometria_idx;
       test_ladm_survey_model         postgres    false    462            �"           1259    582572 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_ladm_survey_model.gc_unidadconstruccion USING btree (tipo_construccion);
 O   DROP INDEX test_ladm_survey_model.gc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_survey_model         postgres    false    462            �"           1259    582584    gc_vereda_geometria_idx    INDEX     a   CREATE INDEX gc_vereda_geometria_idx ON test_ladm_survey_model.gc_vereda USING gist (geometria);
 ;   DROP INDEX test_ladm_survey_model.gc_vereda_geometria_idx;
       test_ladm_survey_model         postgres    false    463            �!           1259    582071     gm_surface2dlistvalue_avalue_idx    INDEX     s   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_ladm_survey_model.gm_surface2dlistvalue USING gist (avalue);
 D   DROP INDEX test_ladm_survey_model.gm_surface2dlistvalue_avalue_idx;
       test_ladm_survey_model         postgres    false    410            �!           1259    582072 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_ladm_survey_model.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 X   DROP INDEX test_ladm_survey_model.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
       test_ladm_survey_model         postgres    false    410            �!           1259    582088     gm_surface3dlistvalue_avalue_idx    INDEX     s   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_ladm_survey_model.gm_surface3dlistvalue USING gist (avalue);
 D   DROP INDEX test_ladm_survey_model.gm_surface3dlistvalue_avalue_idx;
       test_ladm_survey_model         postgres    false    412            �!           1259    582089 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_ladm_survey_model.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 X   DROP INDEX test_ladm_survey_model.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
       test_ladm_survey_model         postgres    false    412            �!           1259    582173    imagen_extinteresado_firma_idx    INDEX     p   CREATE INDEX imagen_extinteresado_firma_idx ON test_ladm_survey_model.imagen USING btree (extinteresado_firma);
 B   DROP INDEX test_ladm_survey_model.imagen_extinteresado_firma_idx;
       test_ladm_survey_model         postgres    false    420            �!           1259    582172 #   imagen_extinteresado_fotografia_idx    INDEX     z   CREATE INDEX imagen_extinteresado_fotografia_idx ON test_ladm_survey_model.imagen USING btree (extinteresado_fotografia);
 G   DROP INDEX test_ladm_survey_model.imagen_extinteresado_fotografia_idx;
       test_ladm_survey_model         postgres    false    420            �!           1259    582171 %   imagen_extinteresado_huell_dctlar_idx    INDEX     �   CREATE INDEX imagen_extinteresado_huell_dctlar_idx ON test_ladm_survey_model.imagen USING btree (extinteresado_huella_dactilar);
 I   DROP INDEX test_ladm_survey_model.imagen_extinteresado_huell_dctlar_idx;
       test_ladm_survey_model         postgres    false    420            �"           1259    582680 (   ini_predioinsumos_gc_predio_catastro_idx    INDEX     �   CREATE INDEX ini_predioinsumos_gc_predio_catastro_idx ON test_ladm_survey_model.ini_predioinsumos USING btree (gc_predio_catastro);
 L   DROP INDEX test_ladm_survey_model.ini_predioinsumos_gc_predio_catastro_idx;
       test_ladm_survey_model         postgres    false    473            �"           1259    582681 )   ini_predioinsumos_snr_predio_juridico_idx    INDEX     �   CREATE INDEX ini_predioinsumos_snr_predio_juridico_idx ON test_ladm_survey_model.ini_predioinsumos USING btree (snr_predio_juridico);
 M   DROP INDEX test_ladm_survey_model.ini_predioinsumos_snr_predio_juridico_idx;
       test_ladm_survey_model         postgres    false    473            �"           1259    582679 )   ini_predioinsumos_tipo_emparejamiento_idx    INDEX     �   CREATE INDEX ini_predioinsumos_tipo_emparejamiento_idx ON test_ladm_survey_model.ini_predioinsumos USING btree (tipo_emparejamiento);
 M   DROP INDEX test_ladm_survey_model.ini_predioinsumos_tipo_emparejamiento_idx;
       test_ladm_survey_model         postgres    false    473            �"           1259    582692 !   lc_agrupacioninteresados_tipo_idx    INDEX     v   CREATE INDEX lc_agrupacioninteresados_tipo_idx ON test_ladm_survey_model.lc_agrupacioninteresados USING btree (tipo);
 E   DROP INDEX test_ladm_survey_model.lc_agrupacioninteresados_tipo_idx;
       test_ladm_survey_model         postgres    false    474            #           1259    582934 5   lc_calificacionconvencinal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_lc_unidad_construccion_idx ON test_ladm_survey_model.lc_calificacionconvencional USING btree (lc_unidad_construccion);
 Y   DROP INDEX test_ladm_survey_model.lc_calificacionconvencinal_lc_unidad_construccion_idx;
       test_ladm_survey_model         postgres    false    494            #           1259    582933 -   lc_calificacionconvencinal_tipo_calificar_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_tipo_calificar_idx ON test_ladm_survey_model.lc_calificacionconvencional USING btree (tipo_calificar);
 Q   DROP INDEX test_ladm_survey_model.lc_calificacionconvencinal_tipo_calificar_idx;
       test_ladm_survey_model         postgres    false    494            !#           1259    582943 5   lc_calificacionnoconvncnal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_lc_unidad_construccion_idx ON test_ladm_survey_model.lc_calificacionnoconvencional USING btree (lc_unidad_construccion);
 Y   DROP INDEX test_ladm_survey_model.lc_calificacionnoconvncnal_lc_unidad_construccion_idx;
       test_ladm_survey_model         postgres    false    495            "#           1259    582942 )   lc_calificacionnoconvncnal_tipo_anexo_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_tipo_anexo_idx ON test_ladm_survey_model.lc_calificacionnoconvencional USING btree (tipo_anexo);
 M   DROP INDEX test_ladm_survey_model.lc_calificacionnoconvncnal_tipo_anexo_idx;
       test_ladm_survey_model         postgres    false    495            �"           1259    582705    lc_construccion_dimension_idx    INDEX     n   CREATE INDEX lc_construccion_dimension_idx ON test_ladm_survey_model.lc_construccion USING btree (dimension);
 A   DROP INDEX test_ladm_survey_model.lc_construccion_dimension_idx;
       test_ladm_survey_model         postgres    false    475            �"           1259    582707    lc_construccion_geometria_idx    INDEX     m   CREATE INDEX lc_construccion_geometria_idx ON test_ladm_survey_model.lc_construccion USING gist (geometria);
 A   DROP INDEX test_ladm_survey_model.lc_construccion_geometria_idx;
       test_ladm_survey_model         postgres    false    475            �"           1259    582706 '   lc_construccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_construccion_relacion_superficie_idx ON test_ladm_survey_model.lc_construccion USING btree (relacion_superficie);
 K   DROP INDEX test_ladm_survey_model.lc_construccion_relacion_superficie_idx;
       test_ladm_survey_model         postgres    false    475            �"           1259    582703 %   lc_construccion_tipo_construccion_idx    INDEX     ~   CREATE INDEX lc_construccion_tipo_construccion_idx ON test_ladm_survey_model.lc_construccion USING btree (tipo_construccion);
 I   DROP INDEX test_ladm_survey_model.lc_construccion_tipo_construccion_idx;
       test_ladm_survey_model         postgres    false    475            �"           1259    582704     lc_construccion_tipo_dominio_idx    INDEX     t   CREATE INDEX lc_construccion_tipo_dominio_idx ON test_ladm_survey_model.lc_construccion USING btree (tipo_dominio);
 D   DROP INDEX test_ladm_survey_model.lc_construccion_tipo_dominio_idx;
       test_ladm_survey_model         postgres    false    475            �"           1259    582720 *   lc_contactovisita_lc_datos_adicionales_idx    INDEX     �   CREATE INDEX lc_contactovisita_lc_datos_adicionales_idx ON test_ladm_survey_model.lc_contactovisita USING btree (lc_datos_adicionales);
 N   DROP INDEX test_ladm_survey_model.lc_contactovisita_lc_datos_adicionales_idx;
       test_ladm_survey_model         postgres    false    476            �"           1259    582719 )   lc_contactovisita_relacion_con_predio_idx    INDEX     �   CREATE INDEX lc_contactovisita_relacion_con_predio_idx ON test_ladm_survey_model.lc_contactovisita USING btree (relacion_con_predio);
 M   DROP INDEX test_ladm_survey_model.lc_contactovisita_relacion_con_predio_idx;
       test_ladm_survey_model         postgres    false    476            �"           1259    582718 0   lc_contactovisita_tipo_documento_quien_tndio_idx    INDEX     �   CREATE INDEX lc_contactovisita_tipo_documento_quien_tndio_idx ON test_ladm_survey_model.lc_contactovisita USING btree (tipo_documento_quien_atendio);
 T   DROP INDEX test_ladm_survey_model.lc_contactovisita_tipo_documento_quien_tndio_idx;
       test_ladm_survey_model         postgres    false    476            �"           1259    582728 "   lc_datosphcondominio_lc_predio_idx    INDEX     x   CREATE INDEX lc_datosphcondominio_lc_predio_idx ON test_ladm_survey_model.lc_datosphcondominio USING btree (lc_predio);
 F   DROP INDEX test_ladm_survey_model.lc_datosphcondominio_lc_predio_idx;
       test_ladm_survey_model         postgres    false    477            %#           1259    582957 .   lc_datsdcnlslvntmntctstral_categoria_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_categoria_suelo_idx ON test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral USING btree (categoria_suelo);
 R   DROP INDEX test_ladm_survey_model.lc_datsdcnlslvntmntctstral_categoria_suelo_idx;
       test_ladm_survey_model         postgres    false    496            &#           1259    582956 *   lc_datsdcnlslvntmntctstral_clase_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_clase_suelo_idx ON test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral USING btree (clase_suelo);
 N   DROP INDEX test_ladm_survey_model.lc_datsdcnlslvntmntctstral_clase_suelo_idx;
       test_ladm_survey_model         postgres    false    496            '#           1259    582955 4   lc_datsdcnlslvntmntctstral_destinacion_economica_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_destinacion_economica_idx ON test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral USING btree (destinacion_economica);
 X   DROP INDEX test_ladm_survey_model.lc_datsdcnlslvntmntctstral_destinacion_economica_idx;
       test_ladm_survey_model         postgres    false    496            (#           1259    582960 (   lc_datsdcnlslvntmntctstral_lc_predio_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_lc_predio_idx ON test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral USING btree (lc_predio);
 L   DROP INDEX test_ladm_survey_model.lc_datsdcnlslvntmntctstral_lc_predio_idx;
       test_ladm_survey_model         postgres    false    496            )#           1259    582954 9   lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx ON test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral USING btree (procedimiento_catastral_registral);
 ]   DROP INDEX test_ladm_survey_model.lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx;
       test_ladm_survey_model         postgres    false    496            *#           1259    582959 /   lc_datsdcnlslvntmntctstral_resultado_visita_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_resultado_visita_idx ON test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral USING btree (resultado_visita);
 S   DROP INDEX test_ladm_survey_model.lc_datsdcnlslvntmntctstral_resultado_visita_idx;
       test_ladm_survey_model         postgres    false    496            +#           1259    582958 9   lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx ON test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral USING btree (tipo_documento_reconocedor);
 ]   DROP INDEX test_ladm_survey_model.lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx;
       test_ladm_survey_model         postgres    false    496            �"           1259    582741 )   lc_derecho_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_grpcnntrsdos_idx ON test_ladm_survey_model.lc_derecho USING btree (interesado_lc_agrupacioninteresados);
 M   DROP INDEX test_ladm_survey_model.lc_derecho_interesado_lc_grpcnntrsdos_idx;
       test_ladm_survey_model         postgres    false    478            �"           1259    582740 '   lc_derecho_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_interesado_idx ON test_ladm_survey_model.lc_derecho USING btree (interesado_lc_interesado);
 K   DROP INDEX test_ladm_survey_model.lc_derecho_interesado_lc_interesado_idx;
       test_ladm_survey_model         postgres    false    478            �"           1259    582739    lc_derecho_tipo_idx    INDEX     Z   CREATE INDEX lc_derecho_tipo_idx ON test_ladm_survey_model.lc_derecho USING btree (tipo);
 7   DROP INDEX test_ladm_survey_model.lc_derecho_tipo_idx;
       test_ladm_survey_model         postgres    false    478            �"           1259    582742    lc_derecho_unidad_idx    INDEX     ^   CREATE INDEX lc_derecho_unidad_idx ON test_ladm_survey_model.lc_derecho USING btree (unidad);
 9   DROP INDEX test_ladm_survey_model.lc_derecho_unidad_idx;
       test_ladm_survey_model         postgres    false    478            �"           1259    582749 6   lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx    INDEX     �   CREATE INDEX lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx ON test_ladm_survey_model.lc_estructuranovedadfmi USING btree (lc_dtsdcnlstmntctstral_novedad_fmi);
 Z   DROP INDEX test_ladm_survey_model.lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx;
       test_ladm_survey_model         postgres    false    479            �"           1259    582757 9   lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx ON test_ladm_survey_model.lc_estructuranovedadnumeropredial USING btree (lc_dtsdcnlstmntctstral_novedad_numeros_prediales);
 ]   DROP INDEX test_ladm_survey_model.lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx;
       test_ladm_survey_model         postgres    false    480            �"           1259    582756 +   lc_estructuranvddnmrprdial_tipo_novedad_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_tipo_novedad_idx ON test_ladm_survey_model.lc_estructuranovedadnumeropredial USING btree (tipo_novedad);
 O   DROP INDEX test_ladm_survey_model.lc_estructuranvddnmrprdial_tipo_novedad_idx;
       test_ladm_survey_model         postgres    false    480            �"           1259    582769 1   lc_fuenteadministrativa_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_estado_disponibilidad_idx ON test_ladm_survey_model.lc_fuenteadministrativa USING btree (estado_disponibilidad);
 U   DROP INDEX test_ladm_survey_model.lc_fuenteadministrativa_estado_disponibilidad_idx;
       test_ladm_survey_model         postgres    false    481            �"           1259    582768     lc_fuenteadministrativa_tipo_idx    INDEX     t   CREATE INDEX lc_fuenteadministrativa_tipo_idx ON test_ladm_survey_model.lc_fuenteadministrativa USING btree (tipo);
 D   DROP INDEX test_ladm_survey_model.lc_fuenteadministrativa_tipo_idx;
       test_ladm_survey_model         postgres    false    481            �"           1259    582770 *   lc_fuenteadministrativa_tipo_principal_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_tipo_principal_idx ON test_ladm_survey_model.lc_fuenteadministrativa USING btree (tipo_principal);
 N   DROP INDEX test_ladm_survey_model.lc_fuenteadministrativa_tipo_principal_idx;
       test_ladm_survey_model         postgres    false    481            �"           1259    582782 +   lc_fuenteespacial_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_estado_disponibilidad_idx ON test_ladm_survey_model.lc_fuenteespacial USING btree (estado_disponibilidad);
 O   DROP INDEX test_ladm_survey_model.lc_fuenteespacial_estado_disponibilidad_idx;
       test_ladm_survey_model         postgres    false    482            �"           1259    582781    lc_fuenteespacial_tipo_idx    INDEX     h   CREATE INDEX lc_fuenteespacial_tipo_idx ON test_ladm_survey_model.lc_fuenteespacial USING btree (tipo);
 >   DROP INDEX test_ladm_survey_model.lc_fuenteespacial_tipo_idx;
       test_ladm_survey_model         postgres    false    482            �"           1259    582783 $   lc_fuenteespacial_tipo_principal_idx    INDEX     |   CREATE INDEX lc_fuenteespacial_tipo_principal_idx ON test_ladm_survey_model.lc_fuenteespacial USING btree (tipo_principal);
 H   DROP INDEX test_ladm_survey_model.lc_fuenteespacial_tipo_principal_idx;
       test_ladm_survey_model         postgres    false    482            �"           1259    582791 +   lc_grupocalificacion_clase_calificacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_clase_calificacion_idx ON test_ladm_survey_model.lc_grupocalificacion USING btree (clase_calificacion);
 O   DROP INDEX test_ladm_survey_model.lc_grupocalificacion_clase_calificacion_idx;
       test_ladm_survey_model         postgres    false    483            �"           1259    582792 %   lc_grupocalificacion_conservacion_idx    INDEX     ~   CREATE INDEX lc_grupocalificacion_conservacion_idx ON test_ladm_survey_model.lc_grupocalificacion USING btree (conservacion);
 I   DROP INDEX test_ladm_survey_model.lc_grupocalificacion_conservacion_idx;
       test_ladm_survey_model         postgres    false    483            �"           1259    582793 3   lc_grupocalificacion_lc_calificacion_convencnal_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_lc_calificacion_convencnal_idx ON test_ladm_survey_model.lc_grupocalificacion USING btree (lc_calificacion_convencional);
 W   DROP INDEX test_ladm_survey_model.lc_grupocalificacion_lc_calificacion_convencnal_idx;
       test_ladm_survey_model         postgres    false    483            �"           1259    582807    lc_interesado_grupo_etnico_idx    INDEX     p   CREATE INDEX lc_interesado_grupo_etnico_idx ON test_ladm_survey_model.lc_interesado USING btree (grupo_etnico);
 B   DROP INDEX test_ladm_survey_model.lc_interesado_grupo_etnico_idx;
       test_ladm_survey_model         postgres    false    484            �"           1259    582806    lc_interesado_sexo_idx    INDEX     `   CREATE INDEX lc_interesado_sexo_idx ON test_ladm_survey_model.lc_interesado USING btree (sexo);
 :   DROP INDEX test_ladm_survey_model.lc_interesado_sexo_idx;
       test_ladm_survey_model         postgres    false    484            �"           1259    582805     lc_interesado_tipo_documento_idx    INDEX     t   CREATE INDEX lc_interesado_tipo_documento_idx ON test_ladm_survey_model.lc_interesado USING btree (tipo_documento);
 D   DROP INDEX test_ladm_survey_model.lc_interesado_tipo_documento_idx;
       test_ladm_survey_model         postgres    false    484            �"           1259    582804    lc_interesado_tipo_idx    INDEX     `   CREATE INDEX lc_interesado_tipo_idx ON test_ladm_survey_model.lc_interesado USING btree (tipo);
 :   DROP INDEX test_ladm_survey_model.lc_interesado_tipo_idx;
       test_ladm_survey_model         postgres    false    484            �"           1259    582818 '   lc_interesadocontacto_lc_interesado_idx    INDEX     �   CREATE INDEX lc_interesadocontacto_lc_interesado_idx ON test_ladm_survey_model.lc_interesadocontacto USING btree (lc_interesado);
 K   DROP INDEX test_ladm_survey_model.lc_interesadocontacto_lc_interesado_idx;
       test_ladm_survey_model         postgres    false    485            �"           1259    582829    lc_lindero_geometria_idx    INDEX     c   CREATE INDEX lc_lindero_geometria_idx ON test_ladm_survey_model.lc_lindero USING gist (geometria);
 <   DROP INDEX test_ladm_survey_model.lc_lindero_geometria_idx;
       test_ladm_survey_model         postgres    false    486            �"           1259    582838 /   lc_objetoconstruccion_lc_grupo_calificacion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_lc_grupo_calificacion_idx ON test_ladm_survey_model.lc_objetoconstruccion USING btree (lc_grupo_calificacion);
 S   DROP INDEX test_ladm_survey_model.lc_objetoconstruccion_lc_grupo_calificacion_idx;
       test_ladm_survey_model         postgres    false    487            �"           1259    582837 2   lc_objetoconstruccion_tipo_objeto_construccion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_tipo_objeto_construccion_idx ON test_ladm_survey_model.lc_objetoconstruccion USING btree (tipo_objeto_construccion);
 V   DROP INDEX test_ladm_survey_model.lc_objetoconstruccion_tipo_objeto_construccion_idx;
       test_ladm_survey_model         postgres    false    487            �"           1259    582847 (   lc_ofertasmercadoinmoblrio_lc_predio_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_lc_predio_idx ON test_ladm_survey_model.lc_ofertasmercadoinmobiliario USING btree (lc_predio);
 L   DROP INDEX test_ladm_survey_model.lc_ofertasmercadoinmoblrio_lc_predio_idx;
       test_ladm_survey_model         postgres    false    488            �"           1259    582846 *   lc_ofertasmercadoinmoblrio_tipo_oferta_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_tipo_oferta_idx ON test_ladm_survey_model.lc_ofertasmercadoinmobiliario USING btree (tipo_oferta);
 N   DROP INDEX test_ladm_survey_model.lc_ofertasmercadoinmoblrio_tipo_oferta_idx;
       test_ladm_survey_model         postgres    false    488            �"           1259    582859    lc_predio_condicion_predio_idx    INDEX     p   CREATE INDEX lc_predio_condicion_predio_idx ON test_ladm_survey_model.lc_predio USING btree (condicion_predio);
 B   DROP INDEX test_ladm_survey_model.lc_predio_condicion_predio_idx;
       test_ladm_survey_model         postgres    false    489            <#           1259    582997 %   lc_predio_copropiedad_copropiedad_idx    INDEX     ~   CREATE INDEX lc_predio_copropiedad_copropiedad_idx ON test_ladm_survey_model.lc_predio_copropiedad USING btree (copropiedad);
 I   DROP INDEX test_ladm_survey_model.lc_predio_copropiedad_copropiedad_idx;
       test_ladm_survey_model         postgres    false    499            ?#           1259    582996     lc_predio_copropiedad_predio_idx    INDEX     t   CREATE INDEX lc_predio_copropiedad_predio_idx ON test_ladm_survey_model.lc_predio_copropiedad USING btree (predio);
 D   DROP INDEX test_ladm_survey_model.lc_predio_copropiedad_predio_idx;
       test_ladm_survey_model         postgres    false    499            @#           1259    584871     lc_predio_copropiedad_predio_key    INDEX     {   CREATE UNIQUE INDEX lc_predio_copropiedad_predio_key ON test_ladm_survey_model.lc_predio_copropiedad USING btree (predio);
 D   DROP INDEX test_ladm_survey_model.lc_predio_copropiedad_predio_key;
       test_ladm_survey_model         postgres    false    499            A#           1259    583004 1   lc_predio_ini_predioinsmos_ini_predio_insumos_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_ini_predio_insumos_idx ON test_ladm_survey_model.lc_predio_ini_predioinsumos USING btree (ini_predio_insumos);
 U   DROP INDEX test_ladm_survey_model.lc_predio_ini_predioinsmos_ini_predio_insumos_idx;
       test_ladm_survey_model         postgres    false    500            B#           1259    583005 (   lc_predio_ini_predioinsmos_lc_predio_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_lc_predio_idx ON test_ladm_survey_model.lc_predio_ini_predioinsumos USING btree (lc_predio);
 L   DROP INDEX test_ladm_survey_model.lc_predio_ini_predioinsmos_lc_predio_idx;
       test_ladm_survey_model         postgres    false    500            �"           1259    582858    lc_predio_tipo_idx    INDEX     X   CREATE INDEX lc_predio_tipo_idx ON test_ladm_survey_model.lc_predio USING btree (tipo);
 6   DROP INDEX test_ladm_survey_model.lc_predio_tipo_idx;
       test_ladm_survey_model         postgres    false    489            �"           1259    582874    lc_puntocontrol_geometria_idx    INDEX     m   CREATE INDEX lc_puntocontrol_geometria_idx ON test_ladm_survey_model.lc_puntocontrol USING gist (geometria);
 A   DROP INDEX test_ladm_survey_model.lc_puntocontrol_geometria_idx;
       test_ladm_survey_model         postgres    false    490            �"           1259    582873 $   lc_puntocontrol_metodoproduccion_idx    INDEX     |   CREATE INDEX lc_puntocontrol_metodoproduccion_idx ON test_ladm_survey_model.lc_puntocontrol USING btree (metodoproduccion);
 H   DROP INDEX test_ladm_survey_model.lc_puntocontrol_metodoproduccion_idx;
       test_ladm_survey_model         postgres    false    490            �"           1259    582872 *   lc_puntocontrol_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_posicion_interpolacion_idx ON test_ladm_survey_model.lc_puntocontrol USING btree (posicion_interpolacion);
 N   DROP INDEX test_ladm_survey_model.lc_puntocontrol_posicion_interpolacion_idx;
       test_ladm_survey_model         postgres    false    490            �"           1259    582870    lc_puntocontrol_puntotipo_idx    INDEX     n   CREATE INDEX lc_puntocontrol_puntotipo_idx ON test_ladm_survey_model.lc_puntocontrol USING btree (puntotipo);
 A   DROP INDEX test_ladm_survey_model.lc_puntocontrol_puntotipo_idx;
       test_ladm_survey_model         postgres    false    490            �"           1259    582871 &   lc_puntocontrol_tipo_punto_control_idx    INDEX     �   CREATE INDEX lc_puntocontrol_tipo_punto_control_idx ON test_ladm_survey_model.lc_puntocontrol USING btree (tipo_punto_control);
 J   DROP INDEX test_ladm_survey_model.lc_puntocontrol_tipo_punto_control_idx;
       test_ladm_survey_model         postgres    false    490             #           1259    582878 &   lc_puntocontrol_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_construccion_idx ON test_ladm_survey_model.lc_puntocontrol USING btree (ue_lc_construccion);
 J   DROP INDEX test_ladm_survey_model.lc_puntocontrol_ue_lc_construccion_idx;
       test_ladm_survey_model         postgres    false    490            #           1259    582876 -   lc_puntocontrol_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_servidumbretransito_idx ON test_ladm_survey_model.lc_puntocontrol USING btree (ue_lc_servidumbretransito);
 Q   DROP INDEX test_ladm_survey_model.lc_puntocontrol_ue_lc_servidumbretransito_idx;
       test_ladm_survey_model         postgres    false    490            #           1259    582875 !   lc_puntocontrol_ue_lc_terreno_idx    INDEX     v   CREATE INDEX lc_puntocontrol_ue_lc_terreno_idx ON test_ladm_survey_model.lc_puntocontrol USING btree (ue_lc_terreno);
 E   DROP INDEX test_ladm_survey_model.lc_puntocontrol_ue_lc_terreno_idx;
       test_ladm_survey_model         postgres    false    490            #           1259    582877 ,   lc_puntocontrol_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_unidadconstruccion_idx ON test_ladm_survey_model.lc_puntocontrol USING btree (ue_lc_unidadconstruccion);
 P   DROP INDEX test_ladm_survey_model.lc_puntocontrol_ue_lc_unidadconstruccion_idx;
       test_ladm_survey_model         postgres    false    490            ,#           1259    582973 ,   lc_puntolevantamiento_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_fotoidentificacion_idx ON test_ladm_survey_model.lc_puntolevantamiento USING btree (fotoidentificacion);
 P   DROP INDEX test_ladm_survey_model.lc_puntolevantamiento_fotoidentificacion_idx;
       test_ladm_survey_model         postgres    false    497            -#           1259    582976 #   lc_puntolevantamiento_geometria_idx    INDEX     y   CREATE INDEX lc_puntolevantamiento_geometria_idx ON test_ladm_survey_model.lc_puntolevantamiento USING gist (geometria);
 G   DROP INDEX test_ladm_survey_model.lc_puntolevantamiento_geometria_idx;
       test_ladm_survey_model         postgres    false    497            .#           1259    582975 *   lc_puntolevantamiento_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_metodoproduccion_idx ON test_ladm_survey_model.lc_puntolevantamiento USING btree (metodoproduccion);
 N   DROP INDEX test_ladm_survey_model.lc_puntolevantamiento_metodoproduccion_idx;
       test_ladm_survey_model         postgres    false    497            1#           1259    582974 0   lc_puntolevantamiento_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_posicion_interpolacion_idx ON test_ladm_survey_model.lc_puntolevantamiento USING btree (posicion_interpolacion);
 T   DROP INDEX test_ladm_survey_model.lc_puntolevantamiento_posicion_interpolacion_idx;
       test_ladm_survey_model         postgres    false    497            2#           1259    582971 #   lc_puntolevantamiento_puntotipo_idx    INDEX     z   CREATE INDEX lc_puntolevantamiento_puntotipo_idx ON test_ladm_survey_model.lc_puntolevantamiento USING btree (puntotipo);
 G   DROP INDEX test_ladm_survey_model.lc_puntolevantamiento_puntotipo_idx;
       test_ladm_survey_model         postgres    false    497            3#           1259    582972 2   lc_puntolevantamiento_tipo_punto_levantamiento_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_tipo_punto_levantamiento_idx ON test_ladm_survey_model.lc_puntolevantamiento USING btree (tipo_punto_levantamiento);
 V   DROP INDEX test_ladm_survey_model.lc_puntolevantamiento_tipo_punto_levantamiento_idx;
       test_ladm_survey_model         postgres    false    497            4#           1259    582980 ,   lc_puntolevantamiento_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_construccion_idx ON test_ladm_survey_model.lc_puntolevantamiento USING btree (ue_lc_construccion);
 P   DROP INDEX test_ladm_survey_model.lc_puntolevantamiento_ue_lc_construccion_idx;
       test_ladm_survey_model         postgres    false    497            5#           1259    582978 3   lc_puntolevantamiento_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_servidumbretransito_idx ON test_ladm_survey_model.lc_puntolevantamiento USING btree (ue_lc_servidumbretransito);
 W   DROP INDEX test_ladm_survey_model.lc_puntolevantamiento_ue_lc_servidumbretransito_idx;
       test_ladm_survey_model         postgres    false    497            6#           1259    582977 '   lc_puntolevantamiento_ue_lc_terreno_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_terreno_idx ON test_ladm_survey_model.lc_puntolevantamiento USING btree (ue_lc_terreno);
 K   DROP INDEX test_ladm_survey_model.lc_puntolevantamiento_ue_lc_terreno_idx;
       test_ladm_survey_model         postgres    false    497            7#           1259    582979 2   lc_puntolevantamiento_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_unidadconstruccion_idx ON test_ladm_survey_model.lc_puntolevantamiento USING btree (ue_lc_unidadconstruccion);
 V   DROP INDEX test_ladm_survey_model.lc_puntolevantamiento_ue_lc_unidadconstruccion_idx;
       test_ladm_survey_model         postgres    false    497            #           1259    582890    lc_puntolindero_acuerdo_idx    INDEX     j   CREATE INDEX lc_puntolindero_acuerdo_idx ON test_ladm_survey_model.lc_puntolindero USING btree (acuerdo);
 ?   DROP INDEX test_ladm_survey_model.lc_puntolindero_acuerdo_idx;
       test_ladm_survey_model         postgres    false    491            #           1259    582891 &   lc_puntolindero_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_fotoidentificacion_idx ON test_ladm_survey_model.lc_puntolindero USING btree (fotoidentificacion);
 J   DROP INDEX test_ladm_survey_model.lc_puntolindero_fotoidentificacion_idx;
       test_ladm_survey_model         postgres    false    491            #           1259    582894    lc_puntolindero_geometria_idx    INDEX     m   CREATE INDEX lc_puntolindero_geometria_idx ON test_ladm_survey_model.lc_puntolindero USING gist (geometria);
 A   DROP INDEX test_ladm_survey_model.lc_puntolindero_geometria_idx;
       test_ladm_survey_model         postgres    false    491            #           1259    582893 $   lc_puntolindero_metodoproduccion_idx    INDEX     |   CREATE INDEX lc_puntolindero_metodoproduccion_idx ON test_ladm_survey_model.lc_puntolindero USING btree (metodoproduccion);
 H   DROP INDEX test_ladm_survey_model.lc_puntolindero_metodoproduccion_idx;
       test_ladm_survey_model         postgres    false    491            
#           1259    582892 *   lc_puntolindero_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_posicion_interpolacion_idx ON test_ladm_survey_model.lc_puntolindero USING btree (posicion_interpolacion);
 N   DROP INDEX test_ladm_survey_model.lc_puntolindero_posicion_interpolacion_idx;
       test_ladm_survey_model         postgres    false    491            #           1259    582889    lc_puntolindero_puntotipo_idx    INDEX     n   CREATE INDEX lc_puntolindero_puntotipo_idx ON test_ladm_survey_model.lc_puntolindero USING btree (puntotipo);
 A   DROP INDEX test_ladm_survey_model.lc_puntolindero_puntotipo_idx;
       test_ladm_survey_model         postgres    false    491            #           1259    582898 &   lc_puntolindero_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_construccion_idx ON test_ladm_survey_model.lc_puntolindero USING btree (ue_lc_construccion);
 J   DROP INDEX test_ladm_survey_model.lc_puntolindero_ue_lc_construccion_idx;
       test_ladm_survey_model         postgres    false    491            #           1259    582896 -   lc_puntolindero_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_servidumbretransito_idx ON test_ladm_survey_model.lc_puntolindero USING btree (ue_lc_servidumbretransito);
 Q   DROP INDEX test_ladm_survey_model.lc_puntolindero_ue_lc_servidumbretransito_idx;
       test_ladm_survey_model         postgres    false    491            #           1259    582895 !   lc_puntolindero_ue_lc_terreno_idx    INDEX     v   CREATE INDEX lc_puntolindero_ue_lc_terreno_idx ON test_ladm_survey_model.lc_puntolindero USING btree (ue_lc_terreno);
 E   DROP INDEX test_ladm_survey_model.lc_puntolindero_ue_lc_terreno_idx;
       test_ladm_survey_model         postgres    false    491            #           1259    582897 ,   lc_puntolindero_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_unidadconstruccion_idx ON test_ladm_survey_model.lc_puntolindero USING btree (ue_lc_unidadconstruccion);
 P   DROP INDEX test_ladm_survey_model.lc_puntolindero_ue_lc_unidadconstruccion_idx;
       test_ladm_survey_model         postgres    false    491            #           1259    582911 -   lc_restriccion_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_grpcnntrsdos_idx ON test_ladm_survey_model.lc_restriccion USING btree (interesado_lc_agrupacioninteresados);
 Q   DROP INDEX test_ladm_survey_model.lc_restriccion_interesado_lc_grpcnntrsdos_idx;
       test_ladm_survey_model         postgres    false    492            #           1259    582910 +   lc_restriccion_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_interesado_idx ON test_ladm_survey_model.lc_restriccion USING btree (interesado_lc_interesado);
 O   DROP INDEX test_ladm_survey_model.lc_restriccion_interesado_lc_interesado_idx;
       test_ladm_survey_model         postgres    false    492            #           1259    582909    lc_restriccion_tipo_idx    INDEX     b   CREATE INDEX lc_restriccion_tipo_idx ON test_ladm_survey_model.lc_restriccion USING btree (tipo);
 ;   DROP INDEX test_ladm_survey_model.lc_restriccion_tipo_idx;
       test_ladm_survey_model         postgres    false    492            #           1259    582912    lc_restriccion_unidad_idx    INDEX     f   CREATE INDEX lc_restriccion_unidad_idx ON test_ladm_survey_model.lc_restriccion USING btree (unidad);
 =   DROP INDEX test_ladm_survey_model.lc_restriccion_unidad_idx;
       test_ladm_survey_model         postgres    false    492            E#           1259    583016 $   lc_servidumbretransito_dimension_idx    INDEX     |   CREATE INDEX lc_servidumbretransito_dimension_idx ON test_ladm_survey_model.lc_servidumbretransito USING btree (dimension);
 H   DROP INDEX test_ladm_survey_model.lc_servidumbretransito_dimension_idx;
       test_ladm_survey_model         postgres    false    501            F#           1259    583018 $   lc_servidumbretransito_geometria_idx    INDEX     {   CREATE INDEX lc_servidumbretransito_geometria_idx ON test_ladm_survey_model.lc_servidumbretransito USING gist (geometria);
 H   DROP INDEX test_ladm_survey_model.lc_servidumbretransito_geometria_idx;
       test_ladm_survey_model         postgres    false    501            I#           1259    583017 .   lc_servidumbretransito_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_relacion_superficie_idx ON test_ladm_survey_model.lc_servidumbretransito USING btree (relacion_superficie);
 R   DROP INDEX test_ladm_survey_model.lc_servidumbretransito_relacion_superficie_idx;
       test_ladm_survey_model         postgres    false    501            #           1259    582924    lc_terreno_dimension_idx    INDEX     d   CREATE INDEX lc_terreno_dimension_idx ON test_ladm_survey_model.lc_terreno USING btree (dimension);
 <   DROP INDEX test_ladm_survey_model.lc_terreno_dimension_idx;
       test_ladm_survey_model         postgres    false    493            #           1259    582923    lc_terreno_geometria_idx    INDEX     c   CREATE INDEX lc_terreno_geometria_idx ON test_ladm_survey_model.lc_terreno USING gist (geometria);
 <   DROP INDEX test_ladm_survey_model.lc_terreno_geometria_idx;
       test_ladm_survey_model         postgres    false    493            #           1259    582925 "   lc_terreno_relacion_superficie_idx    INDEX     x   CREATE INDEX lc_terreno_relacion_superficie_idx ON test_ladm_survey_model.lc_terreno USING btree (relacion_superficie);
 F   DROP INDEX test_ladm_survey_model.lc_terreno_relacion_superficie_idx;
       test_ladm_survey_model         postgres    false    493            8#           1259    582989 3   lc_tipologiaconstruccion_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_lc_unidad_construccion_idx ON test_ladm_survey_model.lc_tipologiaconstruccion USING btree (lc_unidad_construccion);
 W   DROP INDEX test_ladm_survey_model.lc_tipologiaconstruccion_lc_unidad_construccion_idx;
       test_ladm_survey_model         postgres    false    498            ;#           1259    582988 +   lc_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_tipo_tipologia_idx ON test_ladm_survey_model.lc_tipologiaconstruccion USING btree (tipo_tipologia);
 O   DROP INDEX test_ladm_survey_model.lc_tipologiaconstruccion_tipo_tipologia_idx;
       test_ladm_survey_model         postgres    false    498            J#           1259    583035 #   lc_unidadconstruccion_dimension_idx    INDEX     z   CREATE INDEX lc_unidadconstruccion_dimension_idx ON test_ladm_survey_model.lc_unidadconstruccion USING btree (dimension);
 G   DROP INDEX test_ladm_survey_model.lc_unidadconstruccion_dimension_idx;
       test_ladm_survey_model         postgres    false    502            K#           1259    583037 #   lc_unidadconstruccion_geometria_idx    INDEX     y   CREATE INDEX lc_unidadconstruccion_geometria_idx ON test_ladm_survey_model.lc_unidadconstruccion USING gist (geometria);
 G   DROP INDEX test_ladm_survey_model.lc_unidadconstruccion_geometria_idx;
       test_ladm_survey_model         postgres    false    502            L#           1259    583034 )   lc_unidadconstruccion_lc_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_lc_construccion_idx ON test_ladm_survey_model.lc_unidadconstruccion USING btree (lc_construccion);
 M   DROP INDEX test_ladm_survey_model.lc_unidadconstruccion_lc_construccion_idx;
       test_ladm_survey_model         postgres    false    502            O#           1259    583036 -   lc_unidadconstruccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_relacion_superficie_idx ON test_ladm_survey_model.lc_unidadconstruccion USING btree (relacion_superficie);
 Q   DROP INDEX test_ladm_survey_model.lc_unidadconstruccion_relacion_superficie_idx;
       test_ladm_survey_model         postgres    false    502            P#           1259    583030 +   lc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_construccion_idx ON test_ladm_survey_model.lc_unidadconstruccion USING btree (tipo_construccion);
 O   DROP INDEX test_ladm_survey_model.lc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_survey_model         postgres    false    502            Q#           1259    583029 &   lc_unidadconstruccion_tipo_dominio_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_dominio_idx ON test_ladm_survey_model.lc_unidadconstruccion USING btree (tipo_dominio);
 J   DROP INDEX test_ladm_survey_model.lc_unidadconstruccion_tipo_dominio_idx;
       test_ladm_survey_model         postgres    false    502            R#           1259    583032 %   lc_unidadconstruccion_tipo_planta_idx    INDEX     ~   CREATE INDEX lc_unidadconstruccion_tipo_planta_idx ON test_ladm_survey_model.lc_unidadconstruccion USING btree (tipo_planta);
 I   DROP INDEX test_ladm_survey_model.lc_unidadconstruccion_tipo_planta_idx;
       test_ladm_survey_model         postgres    false    502            S#           1259    583031 2   lc_unidadconstruccion_tipo_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_unidad_construccion_idx ON test_ladm_survey_model.lc_unidadconstruccion USING btree (tipo_unidad_construccion);
 V   DROP INDEX test_ladm_survey_model.lc_unidadconstruccion_tipo_unidad_construccion_idx;
       test_ladm_survey_model         postgres    false    502            T#           1259    583033    lc_unidadconstruccion_uso_idx    INDEX     n   CREATE INDEX lc_unidadconstruccion_uso_idx ON test_ladm_survey_model.lc_unidadconstruccion USING btree (uso);
 A   DROP INDEX test_ladm_survey_model.lc_unidadconstruccion_uso_idx;
       test_ladm_survey_model         postgres    false    502            �"           1259    582610 (   snr_derecho_calidad_derecho_registro_idx    INDEX     �   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_ladm_survey_model.snr_derecho USING btree (calidad_derecho_registro);
 L   DROP INDEX test_ladm_survey_model.snr_derecho_calidad_derecho_registro_idx;
       test_ladm_survey_model         postgres    false    466            �"           1259    582611 "   snr_derecho_snr_fuente_derecho_idx    INDEX     x   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_ladm_survey_model.snr_derecho USING btree (snr_fuente_derecho);
 F   DROP INDEX test_ladm_survey_model.snr_derecho_snr_fuente_derecho_idx;
       test_ladm_survey_model         postgres    false    466            �"           1259    582612 #   snr_derecho_snr_predio_registro_idx    INDEX     z   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_ladm_survey_model.snr_derecho USING btree (snr_predio_registro);
 G   DROP INDEX test_ladm_survey_model.snr_derecho_snr_predio_registro_idx;
       test_ladm_survey_model         postgres    false    466            �"           1259    582619 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_ladm_survey_model.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 ]   DROP INDEX test_ladm_survey_model.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
       test_ladm_survey_model         postgres    false    467            �"           1259    582629 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_ladm_survey_model.snr_fuentecabidalinderos USING btree (tipo_documento);
 O   DROP INDEX test_ladm_survey_model.snr_fuentecabidalinderos_tipo_documento_idx;
       test_ladm_survey_model         postgres    false    468            �"           1259    582639 $   snr_fuentederecho_tipo_documento_idx    INDEX     |   CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_ladm_survey_model.snr_fuentederecho USING btree (tipo_documento);
 H   DROP INDEX test_ladm_survey_model.snr_fuentederecho_tipo_documento_idx;
       test_ladm_survey_model         postgres    false    469            �"           1259    582660 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_ladm_survey_model.snr_predioregistro USING btree (clase_suelo_registro);
 O   DROP INDEX test_ladm_survey_model.snr_predioregistro_clase_suelo_registro_idx;
       test_ladm_survey_model         postgres    false    471            �"           1259    582661 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_ladm_survey_model.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 T   DROP INDEX test_ladm_survey_model.snr_predioregistro_snr_fuente_cabidalinderos_idx;
       test_ladm_survey_model         postgres    false    471            �"           1259    582669 #   snr_titular_derecho_snr_derecho_idx    INDEX     z   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_ladm_survey_model.snr_titular_derecho USING btree (snr_derecho);
 G   DROP INDEX test_ladm_survey_model.snr_titular_derecho_snr_derecho_idx;
       test_ladm_survey_model         postgres    false    472            �"           1259    582668 #   snr_titular_derecho_snr_titular_idx    INDEX     z   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_ladm_survey_model.snr_titular_derecho USING btree (snr_titular);
 G   DROP INDEX test_ladm_survey_model.snr_titular_derecho_snr_titular_idx;
       test_ladm_survey_model         postgres    false    472            �"           1259    582650    snr_titular_tipo_documento_idx    INDEX     p   CREATE INDEX snr_titular_tipo_documento_idx ON test_ladm_survey_model.snr_titular USING btree (tipo_documento);
 B   DROP INDEX test_ladm_survey_model.snr_titular_tipo_documento_idx;
       test_ladm_survey_model         postgres    false    470            �"           1259    582649    snr_titular_tipo_persona_idx    INDEX     l   CREATE INDEX snr_titular_tipo_persona_idx ON test_ladm_survey_model.snr_titular USING btree (tipo_persona);
 @   DROP INDEX test_ladm_survey_model.snr_titular_tipo_persona_idx;
       test_ladm_survey_model         postgres    false    470            �#           1259    584960 &   t_ili2db_attrname_colowner_sqlname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_colowner_sqlname_key ON test_ladm_survey_model.t_ili2db_attrname USING btree (colowner, sqlname);
 J   DROP INDEX test_ladm_survey_model.t_ili2db_attrname_colowner_sqlname_key;
       test_ladm_survey_model         postgres    false    577    577            U#           1259    583046    t_ili2db_basket_dataset_idx    INDEX     j   CREATE INDEX t_ili2db_basket_dataset_idx ON test_ladm_survey_model.t_ili2db_basket USING btree (dataset);
 ?   DROP INDEX test_ladm_survey_model.t_ili2db_basket_dataset_idx;
       test_ladm_survey_model         postgres    false    503            X#           1259    584958     t_ili2db_dataset_datasetname_key    INDEX     {   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_ladm_survey_model.t_ili2db_dataset USING btree (datasetname);
 D   DROP INDEX test_ladm_survey_model.t_ili2db_dataset_datasetname_key;
       test_ladm_survey_model         postgres    false    504            _#           1259    584959 '   t_ili2db_model_modelname_iliversion_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_modelname_iliversion_key ON test_ladm_survey_model.t_ili2db_model USING btree (modelname, iliversion);
 K   DROP INDEX test_ladm_survey_model.t_ili2db_model_modelname_iliversion_key;
       test_ladm_survey_model         postgres    false    508    508            �#           2606    583731 E   cc_metodooperacion cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey FOREIGN KEY (col_transformacion_transformacion) REFERENCES test_ladm_survey_model.col_transformacion(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_survey_model.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey;
       test_ladm_survey_model       postgres    false    414    8647    418            �#           2606    583742 5   col_areavalor col_areavalor_lc_construccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_construccion_area_fkey FOREIGN KEY (lc_construccion_area) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor DROP CONSTRAINT col_areavalor_lc_construccion_area_fkey;
       test_ladm_survey_model       postgres    false    475    8889    415            �#           2606    583752 ;   col_areavalor col_areavalor_lc_servidumbretransito_rea_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey FOREIGN KEY (lc_servidumbretransito_area) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor DROP CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey;
       test_ladm_survey_model       postgres    false    501    9032    415            �#           2606    583747 0   col_areavalor col_areavalor_lc_terreno_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_terreno_area_fkey FOREIGN KEY (lc_terreno_area) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor DROP CONSTRAINT col_areavalor_lc_terreno_area_fkey;
       test_ladm_survey_model       postgres    false    415    8985    493            �#           2606    583757 ;   col_areavalor col_areavalor_lc_unidadconstruccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey FOREIGN KEY (lc_unidadconstruccion_area) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor DROP CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey;
       test_ladm_survey_model       postgres    false    415    502    9038            �#           2606    583736 %   col_areavalor col_areavalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor
    ADD CONSTRAINT col_areavalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_survey_model.col_areatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_survey_model.col_areavalor DROP CONSTRAINT col_areavalor_tipo_fkey;
       test_ladm_survey_model       postgres    false    9179    569    415            J$           2606    584195 Q   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_survey_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_survey_model       postgres    false    442    8884    474            K$           2606    584190 O   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_survey_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey;
       test_ladm_survey_model       postgres    false    8931    442    484            L$           2606    584200 =   col_baunitcomointeresado col_baunitcomointeresado_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_survey_model.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_unidad_fkey;
       test_ladm_survey_model       postgres    false    8951    489    442            +$           2606    584035 6   col_baunitfuente col_baunitfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_survey_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_survey_model.col_baunitfuente DROP CONSTRAINT col_baunitfuente_fuente_espacial_fkey;
       test_ladm_survey_model       postgres    false    432    482    8921            ,$           2606    584040 -   col_baunitfuente col_baunitfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_survey_model.col_baunitfuente DROP CONSTRAINT col_baunitfuente_unidad_fkey;
       test_ladm_survey_model       postgres    false    432    489    8951            .$           2606    584050 $   col_cclfuente col_cclfuente_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_cclfuente
    ADD CONSTRAINT col_cclfuente_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_survey_model.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_survey_model.col_cclfuente DROP CONSTRAINT col_cclfuente_ccl_fkey;
       test_ladm_survey_model       postgres    false    8940    486    434            /$           2606    584055 0   col_cclfuente col_cclfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_cclfuente
    ADD CONSTRAINT col_cclfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_survey_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_survey_model.col_cclfuente DROP CONSTRAINT col_cclfuente_fuente_espacial_fkey;
       test_ladm_survey_model       postgres    false    434    8921    482            >$           2606    584130 .   col_clfuente col_clfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_clfuente
    ADD CONSTRAINT col_clfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_survey_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_survey_model.col_clfuente DROP CONSTRAINT col_clfuente_fuente_espacial_fkey;
       test_ladm_survey_model       postgres    false    482    438    8921            5$           2606    584085 "   col_masccl col_masccl_ccl_mas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_masccl
    ADD CONSTRAINT col_masccl_ccl_mas_fkey FOREIGN KEY (ccl_mas) REFERENCES test_ladm_survey_model.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_survey_model.col_masccl DROP CONSTRAINT col_masccl_ccl_mas_fkey;
       test_ladm_survey_model       postgres    false    486    436    8940            6$           2606    584105 1   col_masccl col_masccl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_survey_model.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey;
       test_ladm_survey_model       postgres    false    8889    475    436            7$           2606    584095 5   col_masccl col_masccl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_survey_model       postgres    false    501    9032    436            8$           2606    584090 ,   col_masccl col_masccl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_survey_model.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey;
       test_ladm_survey_model       postgres    false    493    8985    436            9$           2606    584100 5   col_masccl col_masccl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_survey_model       postgres    false    436    9038    502            C$           2606    584170 /   col_mascl col_mascl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_survey_model.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey;
       test_ladm_survey_model       postgres    false    440    8889    475            D$           2606    584160 3   col_mascl col_mascl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_survey_model.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_survey_model       postgres    false    440    501    9032            E$           2606    584155 *   col_mascl col_mascl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_survey_model.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey;
       test_ladm_survey_model       postgres    false    440    493    8985            F$           2606    584165 3   col_mascl col_mascl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_survey_model.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_survey_model       postgres    false    9038    502    440            0$           2606    584060 (   col_menosccl col_menosccl_ccl_menos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_menosccl
    ADD CONSTRAINT col_menosccl_ccl_menos_fkey FOREIGN KEY (ccl_menos) REFERENCES test_ladm_survey_model.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_survey_model.col_menosccl DROP CONSTRAINT col_menosccl_ccl_menos_fkey;
       test_ladm_survey_model       postgres    false    486    8940    435            1$           2606    584080 7   col_menosccl col_menosccl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey;
       test_ladm_survey_model       postgres    false    435    475    8889            2$           2606    584070 9   col_menosccl col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_survey_model       postgres    false    501    9032    435            3$           2606    584065 2   col_menosccl col_menosccl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_survey_model.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey;
       test_ladm_survey_model       postgres    false    435    493    8985            4$           2606    584075 9   col_menosccl col_menosccl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_survey_model       postgres    false    9038    502    435            ?$           2606    584150 5   col_menoscl col_menoscl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey;
       test_ladm_survey_model       postgres    false    8889    439    475            @$           2606    584140 7   col_menoscl col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_survey_model       postgres    false    439    501    9032            A$           2606    584135 0   col_menoscl col_menoscl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_survey_model.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey;
       test_ladm_survey_model       postgres    false    493    439    8985            B$           2606    584145 7   col_menoscl col_menoscl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_survey_model       postgres    false    439    502    9038            S$           2606    584245 )   col_miembros col_miembros_agrupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_miembros
    ADD CONSTRAINT col_miembros_agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES test_ladm_survey_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_survey_model.col_miembros DROP CONSTRAINT col_miembros_agrupacion_fkey;
       test_ladm_survey_model       postgres    false    474    8884    445            T$           2606    584240 9   col_miembros col_miembros_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_survey_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_survey_model       postgres    false    8884    474    445            U$           2606    584235 7   col_miembros col_miembros_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_survey_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_interesado_fkey;
       test_ladm_survey_model       postgres    false    8931    484    445            :$           2606    584125 "   col_puntoccl col_puntoccl_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_puntoccl
    ADD CONSTRAINT col_puntoccl_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_survey_model.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_survey_model.col_puntoccl DROP CONSTRAINT col_puntoccl_ccl_fkey;
       test_ladm_survey_model       postgres    false    486    437    8940            ;$           2606    584110 4   col_puntoccl col_puntoccl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_survey_model.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_survey_model.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey;
       test_ladm_survey_model       postgres    false    8956    490    437            <$           2606    584120 9   col_puntoccl col_puntoccl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_survey_model.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey;
       test_ladm_survey_model       postgres    false    437    497    9008            =$           2606    584115 4   col_puntoccl col_puntoccl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_survey_model.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_survey_model.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey;
       test_ladm_survey_model       postgres    false    8969    437    491            G$           2606    584175 2   col_puntocl col_puntocl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_survey_model.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_survey_model.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey;
       test_ladm_survey_model       postgres    false    441    490    8956            H$           2606    584185 7   col_puntocl col_puntocl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_survey_model.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey;
       test_ladm_survey_model       postgres    false    441    9008    497            I$           2606    584180 2   col_puntocl col_puntocl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_survey_model.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_survey_model.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey;
       test_ladm_survey_model       postgres    false    8969    491    441            "$           2606    583990 4   col_puntofuente col_puntofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_puntofuente
    ADD CONSTRAINT col_puntofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_survey_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_survey_model.col_puntofuente DROP CONSTRAINT col_puntofuente_fuente_espacial_fkey;
       test_ladm_survey_model       postgres    false    8921    482    430            #$           2606    583995 :   col_puntofuente col_puntofuente_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_survey_model.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_survey_model.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey;
       test_ladm_survey_model       postgres    false    490    430    8956            $$           2606    584005 ?   col_puntofuente col_puntofuente_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_survey_model.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_survey_model.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey;
       test_ladm_survey_model       postgres    false    497    9008    430            %$           2606    584000 :   col_puntofuente col_puntofuente_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_survey_model.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_survey_model.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey;
       test_ladm_survey_model       postgres    false    430    8969    491            $           2606    583975 @   col_relacionfuente col_relacionfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_survey_model.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_survey_model.col_relacionfuente DROP CONSTRAINT col_relacionfuente_fuente_administrativa_fkey;
       test_ladm_survey_model       postgres    false    481    8916    428            -$           2606    584045 K   col_relacionfuenteuespacial col_relacionfuenteuespcial_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_survey_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey;
       test_ladm_survey_model       postgres    false    482    8921    433            M$           2606    584205 F   col_responsablefuente col_responsablefuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_survey_model.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.col_responsablefuente DROP CONSTRAINT col_responsablefuente_fuente_administrativa_fkey;
       test_ladm_survey_model       postgres    false    481    8916    443            N$           2606    584215 K   col_responsablefuente col_responsablefuente_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_survey_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_survey_model       postgres    false    8884    474    443            O$           2606    584210 I   col_responsablefuente col_responsablefuente_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_survey_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey;
       test_ladm_survey_model       postgres    false    484    8931    443            $           2606    583935 6   col_rrrfuente col_rrrfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_survey_model.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_survey_model.col_rrrfuente DROP CONSTRAINT col_rrrfuente_fuente_administrativa_fkey;
       test_ladm_survey_model       postgres    false    8916    481    426            $           2606    583945 /   col_rrrfuente col_rrrfuente_rrr_lc_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey FOREIGN KEY (rrr_lc_derecho) REFERENCES test_ladm_survey_model.lc_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_survey_model.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey;
       test_ladm_survey_model       postgres    false    478    426    8904            $           2606    583940 3   col_rrrfuente col_rrrfuente_rrr_lc_restriccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey FOREIGN KEY (rrr_lc_restriccion) REFERENCES test_ladm_survey_model.lc_restriccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_survey_model.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey;
       test_ladm_survey_model       postgres    false    8979    492    426            P$           2606    584220 <   col_topografofuente col_topografofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_topografofuente
    ADD CONSTRAINT col_topografofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_survey_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_survey_model.col_topografofuente DROP CONSTRAINT col_topografofuente_fuente_espacial_fkey;
       test_ladm_survey_model       postgres    false    8921    482    444            Q$           2606    584230 G   col_topografofuente col_topografofuente_topografo_lc_agrpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey FOREIGN KEY (topografo_lc_agrupacioninteresados) REFERENCES test_ladm_survey_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey;
       test_ladm_survey_model       postgres    false    474    444    8884            R$           2606    584225 D   col_topografofuente col_topografofuente_topografo_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey FOREIGN KEY (topografo_lc_interesado) REFERENCES test_ladm_survey_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_survey_model.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey;
       test_ladm_survey_model       postgres    false    484    444    8931            $           2606    583829 E   col_transformacion col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey FOREIGN KEY (lc_puntocontrol_transformacion_y_resultado) REFERENCES test_ladm_survey_model.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_survey_model.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey;
       test_ladm_survey_model       postgres    false    8956    418    490            $           2606    583834 E   col_transformacion col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolindero_transformacion_y_resultado) REFERENCES test_ladm_survey_model.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_survey_model.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey;
       test_ladm_survey_model       postgres    false    491    8969    418            $           2606    583839 E   col_transformacion col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolevantamiento_transformacion_y_resultado) REFERENCES test_ladm_survey_model.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_survey_model.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey;
       test_ladm_survey_model       postgres    false    9008    497    418            $           2606    583970 %   col_uebaunit col_uebaunit_baunit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_baunit_fkey FOREIGN KEY (baunit) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit DROP CONSTRAINT col_uebaunit_baunit_fkey;
       test_ladm_survey_model       postgres    false    8951    489    427            $           2606    583965 1   col_uebaunit col_uebaunit_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_construccion_fkey;
       test_ladm_survey_model       postgres    false    475    8889    427            $           2606    583955 8   col_uebaunit col_uebaunit_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey;
       test_ladm_survey_model       postgres    false    9032    427    501            $           2606    583950 ,   col_uebaunit col_uebaunit_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_terreno_fkey;
       test_ladm_survey_model       postgres    false    427    493    8985            $           2606    583960 7   col_uebaunit col_uebaunit_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey;
       test_ladm_survey_model       postgres    false    427    502    9038            &$           2606    584030 .   col_uefuente col_uefuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente
    ADD CONSTRAINT col_uefuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_survey_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente DROP CONSTRAINT col_uefuente_fuente_espacial_fkey;
       test_ladm_survey_model       postgres    false    482    431    8921            '$           2606    584025 1   col_uefuente col_uefuente_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_construccion_fkey;
       test_ladm_survey_model       postgres    false    8889    431    475            ($           2606    584015 8   col_uefuente col_uefuente_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey;
       test_ladm_survey_model       postgres    false    501    431    9032            )$           2606    584010 ,   col_uefuente col_uefuente_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_terreno_fkey;
       test_ladm_survey_model       postgres    false    493    8985    431            *$           2606    584020 7   col_uefuente col_uefuente_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey;
       test_ladm_survey_model       postgres    false    431    502    9038            $           2606    583930 6   col_ueuegrupo col_ueuegrupo_parte_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey FOREIGN KEY (parte_lc_construccion) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_survey_model.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey;
       test_ladm_survey_model       postgres    false    8889    425    475            $           2606    583920 ;   col_ueuegrupo col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_survey_model.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey FOREIGN KEY (parte_lc_servidumbretransito) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey;
       test_ladm_survey_model       postgres    false    501    9032    425            $           2606    583915 1   col_ueuegrupo col_ueuegrupo_parte_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey FOREIGN KEY (parte_lc_terreno) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_survey_model.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey;
       test_ladm_survey_model       postgres    false    8985    493    425            $           2606    583925 ;   col_ueuegrupo col_ueuegrupo_parte_lc_unidadconstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey FOREIGN KEY (parte_lc_unidadconstruccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey;
       test_ladm_survey_model       postgres    false    425    502    9038             $           2606    583980 <   col_unidadfuente col_unidadfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_survey_model.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_survey_model.col_unidadfuente DROP CONSTRAINT col_unidadfuente_fuente_administrativa_fkey;
       test_ladm_survey_model       postgres    false    481    429    8916            !$           2606    583985 -   col_unidadfuente col_unidadfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_survey_model.col_unidadfuente DROP CONSTRAINT col_unidadfuente_unidad_fkey;
       test_ladm_survey_model       postgres    false    8951    489    429            $           2606    583895 >   col_volumenvalor col_volumenvalor_lc_construccion_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey FOREIGN KEY (lc_construccion_volumen) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey;
       test_ladm_survey_model       postgres    false    475    8889    424            $           2606    583905 A   col_volumenvalor col_volumenvalor_lc_servidumbretranst_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey FOREIGN KEY (lc_servidumbretransito_volumen) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey;
       test_ladm_survey_model       postgres    false    9032    424    501            $           2606    583900 9   col_volumenvalor col_volumenvalor_lc_terreno_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey FOREIGN KEY (lc_terreno_volumen) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey;
       test_ladm_survey_model       postgres    false    493    8985    424            $           2606    583910 A   col_volumenvalor col_volumenvalor_lc_unidadconstruccin_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey FOREIGN KEY (lc_unidadconstruccion_volumen) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey;
       test_ladm_survey_model       postgres    false    424    502    9038            $           2606    583890 +   col_volumenvalor col_volumenvalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_survey_model.col_volumentipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_survey_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_tipo_fkey;
       test_ladm_survey_model       postgres    false    424    9139    549            $           2606    583884 5   extarchivo extarchivo_lc_fuenteespacl_xt_rchv_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extarchivo
    ADD CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteespacial_ext_archivo_id) REFERENCES test_ladm_survey_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.extarchivo DROP CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey;
       test_ladm_survey_model       postgres    false    423    8921    482            $           2606    583879 5   extarchivo extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.extarchivo
    ADD CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteadministrtiva_ext_archivo_id) REFERENCES test_ladm_survey_model.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.extarchivo DROP CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey;
       test_ladm_survey_model       postgres    false    423    8916    481            $           2606    583874 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_ladm_survey_model.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
       test_ladm_survey_model       postgres    false    8861    423    468            �#           2606    583767 2   extdireccion extdireccion_clase_via_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_clase_via_principal_fkey FOREIGN KEY (clase_via_principal) REFERENCES test_ladm_survey_model.extdireccion_clase_via_principal(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_clase_via_principal_fkey;
       test_ladm_survey_model       postgres    false    9159    416    559            �#           2606    583787 9   extdireccion extdireccion_extinteresado_ext_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey FOREIGN KEY (extinteresado_ext_direccion_id) REFERENCES test_ladm_survey_model.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey;
       test_ladm_survey_model       postgres    false    8659    421    416            �#           2606    583782 9   extdireccion extdireccion_extndddfccnfsc_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey FOREIGN KEY (extunidadedificcnfsica_ext_direccion_id) REFERENCES test_ladm_survey_model.extunidadedificacionfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey;
       test_ladm_survey_model       postgres    false    416    8649    419            �#           2606    583792 9   extdireccion extdireccion_lc_construccin_xt_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey FOREIGN KEY (lc_construccion_ext_direccion_id) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey;
       test_ladm_survey_model       postgres    false    475    8889    416            �#           2606    583812 9   extdireccion extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey FOREIGN KEY (lc_unidadconstruccion_ext_direccion_id) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey;
       test_ladm_survey_model       postgres    false    502    9038    416            �#           2606    583797 2   extdireccion extdireccion_lc_predio_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_lc_predio_direccion_fkey FOREIGN KEY (lc_predio_direccion) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_lc_predio_direccion_fkey;
       test_ladm_survey_model       postgres    false    416    489    8951            �#           2606    583807 9   extdireccion extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey FOREIGN KEY (lc_servidumbretransito_ext_direccion_id) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey;
       test_ladm_survey_model       postgres    false    501    9032    416            �#           2606    583802 9   extdireccion extdireccion_lc_terreno_ext_direccin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey FOREIGN KEY (lc_terreno_ext_direccion_id) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey;
       test_ladm_survey_model       postgres    false    493    8985    416            �#           2606    583772 ,   extdireccion extdireccion_sector_ciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_sector_ciudad_fkey FOREIGN KEY (sector_ciudad) REFERENCES test_ladm_survey_model.extdireccion_sector_ciudad(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_sector_ciudad_fkey;
       test_ladm_survey_model       postgres    false    9175    567    416            �#           2606    583777 ,   extdireccion extdireccion_sector_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_sector_predio_fkey FOREIGN KEY (sector_predio) REFERENCES test_ladm_survey_model.extdireccion_sector_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_sector_predio_fkey;
       test_ladm_survey_model       postgres    false    9061    416    510            �#           2606    583762 -   extdireccion extdireccion_tipo_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extdireccion
    ADD CONSTRAINT extdireccion_tipo_direccion_fkey FOREIGN KEY (tipo_direccion) REFERENCES test_ladm_survey_model.extdireccion_tipo_direccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_survey_model.extdireccion DROP CONSTRAINT extdireccion_tipo_direccion_fkey;
       test_ladm_survey_model       postgres    false    571    9183    416            $           2606    583859 ;   extinteresado extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.extinteresado
    ADD CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey FOREIGN KEY (extredserviciosfisica_ext_interesado_administrador_id) REFERENCES test_ladm_survey_model.extredserviciosfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.extinteresado DROP CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey;
       test_ladm_survey_model       postgres    false    421    8661    422            	$           2606    583864 ;   extinteresado extinteresado_lc_agrupacionntrsds_xt_pid_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.extinteresado
    ADD CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey FOREIGN KEY (lc_agrupacionintersdos_ext_pid) REFERENCES test_ladm_survey_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.extinteresado DROP CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey;
       test_ladm_survey_model       postgres    false    8884    474    421            
$           2606    583869 6   extinteresado extinteresado_lc_interesado_ext_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.extinteresado
    ADD CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey FOREIGN KEY (lc_interesado_ext_pid) REFERENCES test_ladm_survey_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_survey_model.extinteresado DROP CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey;
       test_ladm_survey_model       postgres    false    421    8931    484             $           2606    583819 1   fraccion fraccion_col_miembros_participacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.fraccion
    ADD CONSTRAINT fraccion_col_miembros_participacion_fkey FOREIGN KEY (col_miembros_participacion) REFERENCES test_ladm_survey_model.col_miembros(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_survey_model.fraccion DROP CONSTRAINT fraccion_col_miembros_participacion_fkey;
       test_ladm_survey_model       postgres    false    445    8782    417            $           2606    583824 1   fraccion fraccion_lc_predio_copropidd_cfcnte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.fraccion
    ADD CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey FOREIGN KEY (lc_predio_copropiedad_coeficiente) REFERENCES test_ladm_survey_model.lc_predio_copropiedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_survey_model.fraccion DROP CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey;
       test_ladm_survey_model       postgres    false    417    9022    499            V$           2606    584251 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_ladm_survey_model.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
       test_ladm_survey_model       postgres    false    447    8838    462            W$           2606    584267 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_survey_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_survey_model.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
       test_ladm_survey_model       postgres    false    8845    464    451            X$           2606    584256 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_survey_model.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_survey_model.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
       test_ladm_survey_model       postgres    false    539    451    9119            c$           2606    584346 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_ladm_survey_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_survey_model.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
       test_ladm_survey_model       postgres    false    8845    464    465            d$           2606    584351 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_ladm_survey_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_survey_model.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
       test_ladm_survey_model       postgres    false    464    465    8845            Y$           2606    584279 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_survey_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_survey_model.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
       test_ladm_survey_model       postgres    false    8845    452    464            Z$           2606    584289 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_ladm_survey_model.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
       test_ladm_survey_model       postgres    false    453    452    8805            [$           2606    584294 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_ladm_survey_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
       test_ladm_survey_model       postgres    false    454    8845    464            \$           2606    584299 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_ladm_survey_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_survey_model.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
       test_ladm_survey_model       postgres    false    455    464    8845            a$           2606    584335 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_survey_model.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
       test_ladm_survey_model       postgres    false    9081    464    520            b$           2606    584340 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_ladm_survey_model.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_survey_model.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
       test_ladm_survey_model       postgres    false    542    9125    464            ]$           2606    584304 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_survey_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
       test_ladm_survey_model       postgres    false    458    464    8845            ^$           2606    584312 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_survey_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_survey_model.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
       test_ladm_survey_model       postgres    false    8845    461    464            _$           2606    584330 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_ladm_survey_model.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_survey_model.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
       test_ladm_survey_model       postgres    false    462    451    8801            `$           2606    584317 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_survey_model.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_survey_model.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_survey_model       postgres    false    539    462    9119            �#           2606    583719 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_survey_model.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_ladm_survey_model.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
       test_ladm_survey_model       postgres    false    411    410    8607            �#           2606    583724 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_survey_model.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_ladm_survey_model.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
       test_ladm_survey_model       postgres    false    413    412    8613            $           2606    583854 &   imagen imagen_extinteresado_firma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.imagen
    ADD CONSTRAINT imagen_extinteresado_firma_fkey FOREIGN KEY (extinteresado_firma) REFERENCES test_ladm_survey_model.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_survey_model.imagen DROP CONSTRAINT imagen_extinteresado_firma_fkey;
       test_ladm_survey_model       postgres    false    421    8659    420            $           2606    583849 +   imagen imagen_extinteresado_fotografia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.imagen
    ADD CONSTRAINT imagen_extinteresado_fotografia_fkey FOREIGN KEY (extinteresado_fotografia) REFERENCES test_ladm_survey_model.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_survey_model.imagen DROP CONSTRAINT imagen_extinteresado_fotografia_fkey;
       test_ladm_survey_model       postgres    false    420    421    8659            $           2606    583844 -   imagen imagen_extinteresado_huell_dctlar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.imagen
    ADD CONSTRAINT imagen_extinteresado_huell_dctlar_fkey FOREIGN KEY (extinteresado_huella_dactilar) REFERENCES test_ladm_survey_model.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_survey_model.imagen DROP CONSTRAINT imagen_extinteresado_huell_dctlar_fkey;
       test_ladm_survey_model       postgres    false    421    420    8659            q$           2606    584422 ;   ini_predioinsumos ini_predioinsumos_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_survey_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey;
       test_ladm_survey_model       postgres    false    473    8845    464            r$           2606    584427 <   ini_predioinsumos ini_predioinsumos_snr_predio_juridico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey FOREIGN KEY (snr_predio_juridico) REFERENCES test_ladm_survey_model.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_survey_model.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey;
       test_ladm_survey_model       postgres    false    8872    471    473            s$           2606    584417 <   ini_predioinsumos ini_predioinsumos_tipo_emparejamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey FOREIGN KEY (tipo_emparejamiento) REFERENCES test_ladm_survey_model.ini_emparejamientotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_survey_model.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey;
       test_ladm_survey_model       postgres    false    9161    473    560            t$           2606    584432 ;   lc_agrupacioninteresados lc_agrupacioninteresados_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_survey_model.col_grupointeresadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_tipo_fkey;
       test_ladm_survey_model       postgres    false    474    555    9151            �$           2606    584763 R   lc_calificacionconvencional lc_calificacionconvencinal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey;
       test_ladm_survey_model       postgres    false    494    502    9038            �$           2606    584757 J   lc_calificacionconvencional lc_calificacionconvencinal_tipo_calificar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey FOREIGN KEY (tipo_calificar) REFERENCES test_ladm_survey_model.lc_calificartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey;
       test_ladm_survey_model       postgres    false    494    517    9075            �$           2606    584773 T   lc_calificacionnoconvencional lc_calificacionnoconvncnal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey;
       test_ladm_survey_model       postgres    false    495    9038    502            �$           2606    584768 H   lc_calificacionnoconvencional lc_calificacionnoconvncnal_tipo_anexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey FOREIGN KEY (tipo_anexo) REFERENCES test_ladm_survey_model.lc_anexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey;
       test_ladm_survey_model       postgres    false    495    9091    525            u$           2606    584455 .   lc_construccion lc_construccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_construccion
    ADD CONSTRAINT lc_construccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_survey_model.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_survey_model.lc_construccion DROP CONSTRAINT lc_construccion_dimension_fkey;
       test_ladm_survey_model       postgres    false    9147    553    475            v$           2606    584460 8   lc_construccion lc_construccion_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_construccion
    ADD CONSTRAINT lc_construccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_survey_model.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_survey_model.lc_construccion DROP CONSTRAINT lc_construccion_relacion_superficie_fkey;
       test_ladm_survey_model       postgres    false    562    9165    475            w$           2606    584437 6   lc_construccion lc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_survey_model.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_survey_model.lc_construccion DROP CONSTRAINT lc_construccion_tipo_construccion_fkey;
       test_ladm_survey_model       postgres    false    9133    475    546            x$           2606    584442 1   lc_construccion lc_construccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_survey_model.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_survey_model.lc_construccion DROP CONSTRAINT lc_construccion_tipo_dominio_fkey;
       test_ladm_survey_model       postgres    false    9071    475    515            y$           2606    584475 =   lc_contactovisita lc_contactovisita_lc_datos_adicionales_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey FOREIGN KEY (lc_datos_adicionales) REFERENCES test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_survey_model.lc_contactovisita DROP CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey;
       test_ladm_survey_model       postgres    false    496    8996    476            z$           2606    584470 <   lc_contactovisita lc_contactovisita_relacion_con_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_relacion_con_predio_fkey FOREIGN KEY (relacion_con_predio) REFERENCES test_ladm_survey_model.lc_relacionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_survey_model.lc_contactovisita DROP CONSTRAINT lc_contactovisita_relacion_con_predio_fkey;
       test_ladm_survey_model       postgres    false    476    9099    529            {$           2606    584465 C   lc_contactovisita lc_contactovisita_tipo_documento_quien_tndio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey FOREIGN KEY (tipo_documento_quien_atendio) REFERENCES test_ladm_survey_model.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_survey_model.lc_contactovisita DROP CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey;
       test_ladm_survey_model       postgres    false    476    543    9127            |$           2606    584488 8   lc_datosphcondominio lc_datosphcondominio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_survey_model.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_lc_predio_fkey;
       test_ladm_survey_model       postgres    false    477    489    8951            �$           2606    584794 Y   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_categoria_suelo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey FOREIGN KEY (categoria_suelo) REFERENCES test_ladm_survey_model.lc_categoriasuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey;
       test_ladm_survey_model       postgres    false    561    496    9163            �$           2606    584789 U   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_clase_suelo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey FOREIGN KEY (clase_suelo) REFERENCES test_ladm_survey_model.lc_clasesuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey;
       test_ladm_survey_model       postgres    false    496    522    9085            �$           2606    584784 _   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_destinacion_economica_fkey    FK CONSTRAINT     "  ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey FOREIGN KEY (destinacion_economica) REFERENCES test_ladm_survey_model.lc_destinacioneconomicatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey;
       test_ladm_survey_model       postgres    false    9189    496    574            �$           2606    584809 S   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey;
       test_ladm_survey_model       postgres    false    489    8951    496            �$           2606    584779 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey    FK CONSTRAINT     >  ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey FOREIGN KEY (procedimiento_catastral_registral) REFERENCES test_ladm_survey_model.lc_procedimientocatastralregistraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey;
       test_ladm_survey_model       postgres    false    496    9157    558            �$           2606    584804 Z   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_resultado_visita_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey FOREIGN KEY (resultado_visita) REFERENCES test_ladm_survey_model.lc_resultadovisitatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey;
       test_ladm_survey_model       postgres    false    511    496    9063            �$           2606    584799 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey    FK CONSTRAINT     +  ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey FOREIGN KEY (tipo_documento_reconocedor) REFERENCES test_ladm_survey_model.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey;
       test_ladm_survey_model       postgres    false    496    543    9127            }$           2606    584504 5   lc_derecho lc_derecho_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_survey_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_survey_model       postgres    false    8884    474    478            ~$           2606    584499 3   lc_derecho lc_derecho_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_survey_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_survey_model.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_interesado_fkey;
       test_ladm_survey_model       postgres    false    484    478    8931            $           2606    584493    lc_derecho lc_derecho_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_derecho
    ADD CONSTRAINT lc_derecho_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_survey_model.lc_derechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY test_ladm_survey_model.lc_derecho DROP CONSTRAINT lc_derecho_tipo_fkey;
       test_ladm_survey_model       postgres    false    9109    478    534            �$           2606    584509 !   lc_derecho lc_derecho_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_derecho
    ADD CONSTRAINT lc_derecho_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY test_ladm_survey_model.lc_derecho DROP CONSTRAINT lc_derecho_unidad_fkey;
       test_ladm_survey_model       postgres    false    478    8951    489            �$           2606    584514 O   lc_estructuranovedadfmi lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey    FK CONSTRAINT     -  ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_fmi) REFERENCES test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey;
       test_ladm_survey_model       postgres    false    479    496    8996            �$           2606    584524 \   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey    FK CONSTRAINT     H  ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_numeros_prediales) REFERENCES test_ladm_survey_model.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey;
       test_ladm_survey_model       postgres    false    496    480    8996            �$           2606    584519 N   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_tipo_novedad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey FOREIGN KEY (tipo_novedad) REFERENCES test_ladm_survey_model.lc_estructuranovedadnumeropredial_tipo_novedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey;
       test_ladm_survey_model       postgres    false    9107    480    533            �$           2606    584534 J   lc_fuenteadministrativa lc_fuenteadministrativa_estado_disponibilidad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_survey_model.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey;
       test_ladm_survey_model       postgres    false    516    481    9073            �$           2606    584529 9   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_survey_model.lc_fuenteadministrativatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_fkey;
       test_ladm_survey_model       postgres    false    565    481    9171            �$           2606    584539 C   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_principal_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_survey_model.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey;
       test_ladm_survey_model       postgres    false    537    481    9115            �$           2606    584549 >   lc_fuenteespacial lc_fuenteespacial_estado_disponibilidad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_survey_model.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey;
       test_ladm_survey_model       postgres    false    516    9073    482            �$           2606    584544 -   lc_fuenteespacial lc_fuenteespacial_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_survey_model.col_fuenteespacialtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_fkey;
       test_ladm_survey_model       postgres    false    512    482    9065            �$           2606    584554 7   lc_fuenteespacial lc_fuenteespacial_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_survey_model.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_principal_fkey;
       test_ladm_survey_model       postgres    false    9115    482    537            �$           2606    584559 A   lc_grupocalificacion lc_grupocalificacion_clase_calificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey FOREIGN KEY (clase_calificacion) REFERENCES test_ladm_survey_model.lc_clasecalificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_survey_model.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey;
       test_ladm_survey_model       postgres    false    483    9191    575            �$           2606    584564 ;   lc_grupocalificacion lc_grupocalificacion_conservacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_conservacion_fkey FOREIGN KEY (conservacion) REFERENCES test_ladm_survey_model.lc_estadoconservaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_conservacion_fkey;
       test_ladm_survey_model       postgres    false    9137    483    548            �$           2606    584570 I   lc_grupocalificacion lc_grupocalificacion_lc_calificacion_convencnal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey FOREIGN KEY (lc_calificacion_convencional) REFERENCES test_ladm_survey_model.lc_calificacionconvencional(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey;
       test_ladm_survey_model       postgres    false    8990    483    494            �$           2606    584590 -   lc_interesado lc_interesado_grupo_etnico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_interesado
    ADD CONSTRAINT lc_interesado_grupo_etnico_fkey FOREIGN KEY (grupo_etnico) REFERENCES test_ladm_survey_model.lc_grupoetnicotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_survey_model.lc_interesado DROP CONSTRAINT lc_interesado_grupo_etnico_fkey;
       test_ladm_survey_model       postgres    false    484    9145    552            �$           2606    584585 %   lc_interesado lc_interesado_sexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_interesado
    ADD CONSTRAINT lc_interesado_sexo_fkey FOREIGN KEY (sexo) REFERENCES test_ladm_survey_model.lc_sexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_survey_model.lc_interesado DROP CONSTRAINT lc_interesado_sexo_fkey;
       test_ladm_survey_model       postgres    false    9067    513    484            �$           2606    584580 /   lc_interesado lc_interesado_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_survey_model.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_survey_model.lc_interesado DROP CONSTRAINT lc_interesado_tipo_documento_fkey;
       test_ladm_survey_model       postgres    false    543    484    9127            �$           2606    584575 %   lc_interesado lc_interesado_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_survey_model.lc_interesadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_survey_model.lc_interesado DROP CONSTRAINT lc_interesado_tipo_fkey;
       test_ladm_survey_model       postgres    false    484    528    9097            �$           2606    584595 >   lc_interesadocontacto lc_interesadocontacto_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_lc_interesado_fkey FOREIGN KEY (lc_interesado) REFERENCES test_ladm_survey_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_survey_model.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_lc_interesado_fkey;
       test_ladm_survey_model       postgres    false    8931    484    485            �$           2606    584607 F   lc_objetoconstruccion lc_objetoconstruccion_lc_grupo_calificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey FOREIGN KEY (lc_grupo_calificacion) REFERENCES test_ladm_survey_model.lc_grupocalificacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey;
       test_ladm_survey_model       postgres    false    8928    487    483            �$           2606    584601 I   lc_objetoconstruccion lc_objetoconstruccion_tipo_objeto_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey FOREIGN KEY (tipo_objeto_construccion) REFERENCES test_ladm_survey_model.lc_objetoconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey;
       test_ladm_survey_model       postgres    false    551    9143    487            �$           2606    584620 G   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey;
       test_ladm_survey_model       postgres    false    488    489    8951            �$           2606    584612 I   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_tipo_oferta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey FOREIGN KEY (tipo_oferta) REFERENCES test_ladm_survey_model.lc_ofertatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey;
       test_ladm_survey_model       postgres    false    535    488    9111            �$           2606    584631 )   lc_predio lc_predio_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_predio
    ADD CONSTRAINT lc_predio_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_survey_model.lc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_survey_model.lc_predio DROP CONSTRAINT lc_predio_condicion_predio_fkey;
       test_ladm_survey_model       postgres    false    9153    489    556            �$           2606    584877 <   lc_predio_copropiedad lc_predio_copropiedad_copropiedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_copropiedad_fkey FOREIGN KEY (copropiedad) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_survey_model.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_copropiedad_fkey;
       test_ladm_survey_model       postgres    false    8951    489    499            �$           2606    584872 7   lc_predio_copropiedad lc_predio_copropiedad_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_predio_fkey FOREIGN KEY (predio) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_predio_fkey;
       test_ladm_survey_model       postgres    false    8951    499    489            �$           2606    584882 N   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_ini_predio_insumos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey FOREIGN KEY (ini_predio_insumos) REFERENCES test_ladm_survey_model.ini_predioinsumos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey;
       test_ladm_survey_model       postgres    false    500    473    8880            �$           2606    584887 E   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_survey_model.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey;
       test_ladm_survey_model       postgres    false    8951    500    489            �$           2606    584626    lc_predio lc_predio_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_predio
    ADD CONSTRAINT lc_predio_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_survey_model.lc_prediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 W   ALTER TABLE ONLY test_ladm_survey_model.lc_predio DROP CONSTRAINT lc_predio_tipo_fkey;
       test_ladm_survey_model       postgres    false    489    9123    541            �$           2606    584653 5   lc_puntocontrol lc_puntocontrol_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_survey_model.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_metodoproduccion_fkey;
       test_ladm_survey_model       postgres    false    490    532    9105            �$           2606    584648 ;   lc_puntocontrol lc_puntocontrol_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_survey_model.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey;
       test_ladm_survey_model       postgres    false    490    527    9095            �$           2606    584636 .   lc_puntocontrol lc_puntocontrol_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_survey_model.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_puntotipo_fkey;
       test_ladm_survey_model       postgres    false    518    490    9077            �$           2606    584641 7   lc_puntocontrol lc_puntocontrol_tipo_punto_control_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey FOREIGN KEY (tipo_punto_control) REFERENCES test_ladm_survey_model.lc_puntocontroltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey;
       test_ladm_survey_model       postgres    false    490    9131    545            �$           2606    584673 7   lc_puntocontrol lc_puntocontrol_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey;
       test_ladm_survey_model       postgres    false    8889    490    475            �$           2606    584663 >   lc_puntocontrol lc_puntocontrol_ue_lc_servidumbretransito_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey;
       test_ladm_survey_model       postgres    false    490    501    9032            �$           2606    584658 2   lc_puntocontrol lc_puntocontrol_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey;
       test_ladm_survey_model       postgres    false    493    490    8985            �$           2606    584668 =   lc_puntocontrol lc_puntocontrol_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_survey_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey;
       test_ladm_survey_model       postgres    false    490    9038    502            �$           2606    584824 C   lc_puntolevantamiento lc_puntolevantamiento_fotoidentificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_survey_model.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey;
       test_ladm_survey_model       postgres    false    9093    526    497            �$           2606    584836 A   lc_puntolevantamiento lc_puntolevantamiento_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_survey_model.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey;
       test_ladm_survey_model       postgres    false    497    532    9105            �$           2606    584831 G   lc_puntolevantamiento lc_puntolevantamiento_posicion_interpolacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_survey_model.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey;
       test_ladm_survey_model       postgres    false    527    497    9095            �$           2606    584814 :   lc_puntolevantamiento lc_puntolevantamiento_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_survey_model.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_puntotipo_fkey;
       test_ladm_survey_model       postgres    false    9077    518    497            �$           2606    584819 I   lc_puntolevantamiento lc_puntolevantamiento_tipo_punto_levantamiento_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey FOREIGN KEY (tipo_punto_levantamiento) REFERENCES test_ladm_survey_model.lc_puntolevtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey;
       test_ladm_survey_model       postgres    false    9149    554    497            �$           2606    584856 C   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey;
       test_ladm_survey_model       postgres    false    8889    497    475            �$           2606    584846 J   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey;
       test_ladm_survey_model       postgres    false    497    501    9032            �$           2606    584841 >   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey;
       test_ladm_survey_model       postgres    false    497    493    8985            �$           2606    584851 I   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey;
       test_ladm_survey_model       postgres    false    9038    502    497            �$           2606    584683 ,   lc_puntolindero lc_puntolindero_acuerdo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_acuerdo_fkey FOREIGN KEY (acuerdo) REFERENCES test_ladm_survey_model.lc_acuerdotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_acuerdo_fkey;
       test_ladm_survey_model       postgres    false    9173    566    491            �$           2606    584688 7   lc_puntolindero lc_puntolindero_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_survey_model.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_fotoidentificacion_fkey;
       test_ladm_survey_model       postgres    false    526    491    9093            �$           2606    584700 5   lc_puntolindero lc_puntolindero_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_survey_model.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_metodoproduccion_fkey;
       test_ladm_survey_model       postgres    false    532    491    9105            �$           2606    584695 ;   lc_puntolindero lc_puntolindero_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_survey_model.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey;
       test_ladm_survey_model       postgres    false    9095    527    491            �$           2606    584678 .   lc_puntolindero lc_puntolindero_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_survey_model.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_puntotipo_fkey;
       test_ladm_survey_model       postgres    false    518    9077    491            �$           2606    584720 7   lc_puntolindero lc_puntolindero_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey;
       test_ladm_survey_model       postgres    false    8889    491    475            �$           2606    584710 >   lc_puntolindero lc_puntolindero_ue_lc_servidumbretransito_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_survey_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey;
       test_ladm_survey_model       postgres    false    491    9032    501            �$           2606    584705 2   lc_puntolindero lc_puntolindero_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_survey_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey;
       test_ladm_survey_model       postgres    false    493    491    8985            �$           2606    584715 =   lc_puntolindero lc_puntolindero_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_survey_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey;
       test_ladm_survey_model       postgres    false    9038    491    502            �$           2606    584735 =   lc_restriccion lc_restriccion_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_survey_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_survey_model.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_survey_model       postgres    false    8884    474    492            �$           2606    584730 ;   lc_restriccion lc_restriccion_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_survey_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_survey_model.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey;
       test_ladm_survey_model       postgres    false    484    8931    492            �$           2606    584725 '   lc_restriccion lc_restriccion_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_restriccion
    ADD CONSTRAINT lc_restriccion_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_survey_model.lc_restricciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_survey_model.lc_restriccion DROP CONSTRAINT lc_restriccion_tipo_fkey;
       test_ladm_survey_model       postgres    false    492    9121    540            �$           2606    584740 )   lc_restriccion lc_restriccion_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_restriccion
    ADD CONSTRAINT lc_restriccion_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_survey_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_survey_model.lc_restriccion DROP CONSTRAINT lc_restriccion_unidad_fkey;
       test_ladm_survey_model       postgres    false    489    492    8951            �$           2606    584893 <   lc_servidumbretransito lc_servidumbretransito_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_survey_model.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_survey_model.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_dimension_fkey;
       test_ladm_survey_model       postgres    false    553    9147    501            �$           2606    584898 F   lc_servidumbretransito lc_servidumbretransito_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_survey_model.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey;
       test_ladm_survey_model       postgres    false    9165    501    562            �$           2606    584747 $   lc_terreno lc_terreno_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_terreno
    ADD CONSTRAINT lc_terreno_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_survey_model.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_survey_model.lc_terreno DROP CONSTRAINT lc_terreno_dimension_fkey;
       test_ladm_survey_model       postgres    false    9147    553    493            �$           2606    584752 .   lc_terreno lc_terreno_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_terreno
    ADD CONSTRAINT lc_terreno_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_survey_model.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_survey_model.lc_terreno DROP CONSTRAINT lc_terreno_relacion_superficie_fkey;
       test_ladm_survey_model       postgres    false    493    562    9165            �$           2606    584866 M   lc_tipologiaconstruccion lc_tipologiaconstruccion_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_survey_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey;
       test_ladm_survey_model       postgres    false    502    9038    498            �$           2606    584861 E   lc_tipologiaconstruccion lc_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_ladm_survey_model.lc_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_survey_model.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey;
       test_ladm_survey_model       postgres    false    498    544    9129            �$           2606    584943 :   lc_unidadconstruccion lc_unidadconstruccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_survey_model.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_dimension_fkey;
       test_ladm_survey_model       postgres    false    553    502    9147            �$           2606    584938 @   lc_unidadconstruccion lc_unidadconstruccion_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey FOREIGN KEY (lc_construccion) REFERENCES test_ladm_survey_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey;
       test_ladm_survey_model       postgres    false    8889    502    475            �$           2606    584948 D   lc_unidadconstruccion lc_unidadconstruccion_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_survey_model.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey;
       test_ladm_survey_model       postgres    false    9165    562    502            �$           2606    584908 B   lc_unidadconstruccion lc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_survey_model.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_survey_model       postgres    false    502    9133    546            �$           2606    584903 =   lc_unidadconstruccion lc_unidadconstruccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_survey_model.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey;
       test_ladm_survey_model       postgres    false    9071    502    515            �$           2606    584918 <   lc_unidadconstruccion lc_unidadconstruccion_tipo_planta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey FOREIGN KEY (tipo_planta) REFERENCES test_ladm_survey_model.lc_construccionplantatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey;
       test_ladm_survey_model       postgres    false    9089    524    502            �$           2606    584913 I   lc_unidadconstruccion lc_unidadconstruccion_tipo_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey FOREIGN KEY (tipo_unidad_construccion) REFERENCES test_ladm_survey_model.lc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey;
       test_ladm_survey_model       postgres    false    530    502    9101            �$           2606    584928 4   lc_unidadconstruccion lc_unidadconstruccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_ladm_survey_model.lc_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_survey_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_uso_fkey;
       test_ladm_survey_model       postgres    false    9185    502    572            e$           2606    584357 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_ladm_survey_model.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_survey_model.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
       test_ladm_survey_model       postgres    false    514    9069    466            f$           2606    584362 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_ladm_survey_model.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_survey_model.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
       test_ladm_survey_model       postgres    false    466    469    8864            g$           2606    584367 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_ladm_survey_model.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_survey_model.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
       test_ladm_survey_model       postgres    false    471    8872    466            h$           2606    584372 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT     -  ALTER TABLE ONLY test_ladm_survey_model.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_ladm_survey_model.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_survey_model.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
       test_ladm_survey_model       postgres    false    8872    471    467            i$           2606    584377 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_survey_model.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_survey_model.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
       test_ladm_survey_model       postgres    false    568    468    9177            j$           2606    584382 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_survey_model.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_survey_model.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
       test_ladm_survey_model       postgres    false    469    568    9177            m$           2606    584397 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_ladm_survey_model.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_survey_model.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
       test_ladm_survey_model       postgres    false    9169    471    564            n$           2606    584402 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_survey_model.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_ladm_survey_model.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_survey_model.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
       test_ladm_survey_model       postgres    false    471    468    8861            o$           2606    584412 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_ladm_survey_model.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_survey_model.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
       test_ladm_survey_model       postgres    false    8854    466    472            p$           2606    584407 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_ladm_survey_model.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_survey_model.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
       test_ladm_survey_model       postgres    false    8867    470    472            k$           2606    584392 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_survey_model.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_survey_model.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
       test_ladm_survey_model       postgres    false    470    509    9059            l$           2606    584387 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_ladm_survey_model.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_survey_model.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
       test_ladm_survey_model       postgres    false    519    9079    470            �$           2606    584953 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_ladm_survey_model.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_survey_model.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
       test_ladm_survey_model       postgres    false    9050    503    504            Y%      x������ � �      �%   �   x���K
�0 D��)r��D�oW���Pp%��4)VO�#�b�j��
ٽa`È�s��0Ox�q�甍�U�1�ؾ�ګ�2����J7�  �D�̇�/G��FK�z�j�o9�GJ�#�Ð��AJAd��M�]��q��9l3���Xfg�rf� �@�+�Yp����A>��q���C�-#�>      �%     x�͑AN�0E��)�Q� Q@lJ�bU)�:�ʒ��N��K�8B.��@EPY�c����|�e���ۇ�~\7/�ͪH�ͨqVB��ζ�l��SS�G�Ms/�i�Q��K��L�(BK�VsV���mK��-gP[�D{�`v�(��E���`�;!��P@��E�:R~D��@Zױ����n�mv����SS?I���r�E^�7���g/��Ў=�o��L���X��G��]J��ezK�I\����j��K4��b�0d^*�O���{l�<�? �e��      Z%      x������ � �      u%      x������ � �      k%      x������ � �      m%      x������ � �      q%      x������ � �      �%   �   x���˪�0���S���޶E��\	%&b�Ħ/�έ/v���Bvs��>�I&1Y��V�t��wiG�.�\I��p���fPI��}Fb���X��UR��)�>�������&�$H�t�~5k|#��������|��CgH�)��9?ij��d��-b�s�asH��R���&j���3��#+�?�I#�	�=(��������~{F�{��w����ntQJ� ���      �%   j   x�363��qt�w���3�7���J�sR��@�.���yř�y!���1~��@!#3�*{xs�X���̌TA�ch5МT�8�K��!�AY\1z\\\ �G�      �%   �   x���M�0F��)���7�q�qEB*L�J	-��3�s��,ȟkV���d�e����1NQz�S�uיB���`,:��ԅ�I%Yj���#�.�XY):��q�k,,����AC��[ռ��{�)�V��tÚQ��hEB4��F�ypF="(�o����ډ���ɐ+�=&�^��6�QC��	��~����      �%   �   x�3�0��qt�w���3�7���J�sR��@���%�)�A�)��Ee�ə��!���1~��9�y�@Y/��edaA�����y��PS]�J��fZ�m��[ijQb�Kj<Lb<XX!%U�!�edi@�MƜ�%EPá,�=... ��r9      �%   �   x�355��qt�w���3�7���J�sR��@���%E��%�E�!���1~���E����� N���Ԅd�9}2�R���$S!f�^�S��WHE�ZeJ�UF�!�%��aL�If$�d��_������3�?�*����� o�p	      �%   �  x����R1�k�S�07�)�<�T`Rd���Ⱥ6����3�QP�����Kw�g�T�_������|1�^^ݬ/o��w��y]v�dk��o�}�˦/�����!���W���JmjqA���Ɖ-��A�n�>�q$v���G�@א��[Qo�L�z��������"�(Y��H�j�2�ݛ�iw��Jl�,��9j>�9�O�:z�əp�zpK�{_&�r��s-�h���$���l�y�A	�[��)�2�x��'�d/�O��x�J��$h��<��o�~A�(�/�j���6~�G�ɪC���+�`�qR0@�j1?��H}�F*�9��(���(��胱@j;��4b0�� 1�Q�iaݰ�PV�xRn�����F���y�/��f@=�J��%G��_�/9�������\      �%   !  x��T�n�@����2A���d9��T��q�\p���a���*\�K����B�HTI�cfv�ż�^�?ի�m�eY�g�i�F�E�&��x��
��z�U�je�9(W���P���L�F�-7�?� 34u������C�x8q��X�ck0b��(�Mg��������А��"dBć�����v�P��AO�V�����},�z��HY�@�v����0�t�OQ�>��%��Hc��4,�;�%_�==mz�0ZDM�>mՐxƯ���Ўo��G��I�Zyt,�����`XF� k�SQ��x@7h�^4�m��nVFje�y��=X���8.{�[��`�T�0�m�T�R�����S�a�E��v�y̪X�+ʼN�����ifD�9$�1n�|9t<||s�������mz��a`~�7բ�j�3#�c'F/��F�s2�ʲk9���'[�񖹲ݺ���|�̙#�<+�jc��P%K2
(���H���vy�������)�;�{��w�?�g����ﳃ      �%   �   x���M
�0F��)r�R͢�RE��qU!e�MJ~D��G��l�B����&�c�&q����v9;PG��:Q��z�ҮQkiA���c��bāo�/X���Dx����l���@�FIn���i^��B�̦E�>�˺��H ������Q���c>�c����*��7��=,Hݧ�p�$9'{+:͊~�6x�#�ڃ��!��v�(�@0�K      �%   |   x�343��qt�w���3�7���J�sR��@��y%�E�9�ə�y!���1~�����9�)`N���̌9�¹�)���E�P��
�A���X`�l�Of^j"�9��B��b���� �QZ�      �%   �   x�312��qt�w���3�7���J�sR��@�������F��!���1~��.��Y�y%`^2���ȈT�9C�!FAY@c�I5ƈ3�� �� ?/b2h�	�s��'���'g��|�"����� ��]�      o%      x������ � �      s%      x������ � �      n%      x������ � �      r%      x������ � �      �%   $  x��SKjA]K��!'{�X������Q��j����Z�s�Tό�2���~������������v����l�c�X\ ]��e��=�/α�O�u�{\lS��r$��\�x^j���}*�&���T�"	A8r����
P��<�Ć5�!��a`��JP��3	%`�
�������4�.4���~K�J7��'�ܲC�ë@;��+�]�p�v��N���]�f�o�!G</�JJ��b�D�4R�Jt�5�l(�!�/E:p���B߱�3f>־N�*+���3��cͬ ex&}���hN��-F�`%rE<F�d�t��'�G�y"�{�5ZA*�k�dQ�������m�1�9������~}2��)�l��X7��N�u
giZĿmFнo�a;W�������i����څU�"��Ѹ��̊�f���y�.yb�iT�j֫�V���ƨ�C�E�:Jvx�Ɩ�-q�����������b��߆��ǥ�����D����wO�4�h��5Ё�d�?�+8��H��}_��r��3Ð>      x%      x������ � �      p%      x������ � �      t%      x������ � �      i%      x������ � �      �%   e   x�311��qt�w���3�7���J�sR��@��y%�!���1~����y%E�9 N���Ĝ�9�K����&!x@�,H1ʈ�n������ �&A�      �%   �   x�3�0��qt�w���3�7���J�sR��@�A�)��Ee�ə��!���1~���%E�@% ^�wx3��elaF������������#K��q�F��a�'P4>$�hN"�T��B��0��dl�������[�4(�1U��f�0W� 	td      �%   f   x�327��qt�w���3�7���J�sR��@�A���%E�!���1~��A�E�9 f��ednA�9���EI�y���l�I�$�d���Á��b���� �`B      g%      x������ � �      l%      x������ � �      �%   �   x�314��qt�w���3�7���J�sR��@�A�9�ə�y���Ei�ə�!���1~���y�A�ŉy%� ~��P�s�Z�m�!���Ԝ|��eP�\K��5�\�T�bt1B���ȀlӍ9�K���BY\1z\\\ lp�      v%      x������ � �      e%      x������ � �      w%      x������ � �      ]%      x������ � �      f%      x������ � �      j%      x������ � �      d%      x������ � �      �%   f  x���Mn�0���)|�($��˴]R@@�B��� KI���Eo�5��b�h�.R�<o�������ӗ��y9�ޓ,
�j���Њo#@RR��I%@�<�d9lY��n�"����}�ޭ��_�։	�`E��Yٺ�&(� E�<#��VP2Z)�m�Lqa�[���a�u�1����d�y��'�3.���,粝�������e?�r���	ZS2[��
�;WW}0��eX�ěz�V >4�A;ه��a��������>͢׌�cw�ڬ�53C/�BO�����]��;g'��[s�֩7�mtM��|s�Q�ü�͂lc8n?�Rϼ��V@%k.�[�]=S]�a�� �Տ2y      �%   g   x�33��qt�w���3�7���J�sR��@��y�)�)�)�i�ɉə�y!���1~������E%�)`~*��̄\�9=�R2�2SJs &��b���� o':�      h%      x������ � �      �%   j   x�3�0��qt�w���3�7���J�sR�����9���y!���1~���i�ə�9 N���4�9�s�KsS�!�!s�ƙ�f��I�$(�+F��� �kDq      c%      x������ � �      b%      x������ � �      [%      x������ � �      �%   �   x���;n�0D��)rA6�JAJ�8)W�C��� ����v��)�+F����Ŵ�'sѦ,~�y�������;k�E�qp�Bhޘ��;z����fv�>д���niz��I�z'�lVf��ߔ���]ۄ�� dkh����0&��F�Qȯ�%�S��#/�|��Z�����UU�B��o�Jdo��t��}X�m�"}+��1��!	�!:��Q/G�>>�J�o��:b      �%   |   x�316��qt�w���3�7���J�sR��\+J\2�R��3���S�K��3KSS8c�88��JRA�48���،l9�K� �A@���6͈ӵ�<(h���s����1�b���� *�d�      �%   x   x����qt�w���3�7���J�sR��\+J\2�R��3���S�K���RS2�9c�88��JRA�48�˒l�9�K� �A\�df��Zs��ehH�qƜ��p�`L�=... �xc�      �%   f   x�31���qt�w���3�7���J�sR��\+J\2�R��3���B2���\�?NN�⒢��ҢĔD�H�����r���c�ᗯ��fM� �kB�      `%      x������ � �      a%      x������ � �      ^%      x������ � �      \%      x������ � �      y%      x������ � �      z%      x������ � �      {%      x������ � �      |%      x������ � �      }%      x������ � �      �%   �  x��VKO1>;��G��(B��F�@�R'��dwH�v��G��֟±�^��u�NB���J��׌�3<�´6%V&?�.���g輱�<8o�ʯy�w6�GF��PFgKe>�����l̃11ra�Ba	�������@j#��ѫ�H��m~�T�Z��Ӭ���o �q�<�M(���\.,��qF@�FE�%�,ϐ>3�3�қ����"+t��C����@��\F�y�|o�J�K��X�ś����[��E��7�DwA���[#=]´�37��y�����.0c����>��|J�]a�7��Z�L�d�[ކ�di~M+U�[P�P����V�y�����b}���{���M;��Ig+ؗ�m�^"Mpߵ w(.��X��/��e��	�ͥ�A'������OZ�}��=y�����
t�O�I���X*�|����vʧmY���2�-yT4�,ǔ�ͽE�!�dd��}���-��#P�� d&�5�y�]��yXN$w ��⊏��%dxU�e+��q�INvH��G��f�����wX$"z��&��PO�+	ll��'n�֭;!�u'$--hq*�$�W���nA!1roWT�Ⱦ,���'��E]�+�cz:��{����\�/8o�@��]��ˑ�t��I��b�(o�Kg�,D}%^�/�3k�Ĺ�N9���DGʈv��hH�:Y���
��x���Y�)M��T�,�\�����?.|{�
hS
2%Q��u:�ߛ>d&      ~%      x������ � �      �%      x������ � �      %      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%   �   x�321�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,�������b�qBU*�%&g��%�(��kQH� r�M2�v+�V��twt��221��k9���s �0�:������51z\\\ �Go�      �%      x������ � �      �%      x������ � �      �%   �   x���1�0E��9 ��N0w�X��*E�q�HiI��G�b$,������o�Vk֧�L魏i��[���q	��A�J���{k�4�3N�h����б�ezA_�B�Oң8Y(���9�b|;�Q)R�Ek��U��J)PXoR��F�Zm�#�XG�۽�b��~i�x@0y�����߼��? p�      �%      x������ � �      V%      x������ � �      X%      x������ � �      U%      x������ � �      W%      x������ � �      _%      x������ � �      �%   6  x����J�0���)�I�~��1Tz�"N��l�$�4%k_�[_��3G��qޝ���;ʟ�V�F靨uU4�x6|+uc�C���z��eQݨ��M�e�ѺDUE�z�Qc�n�^�x���3r����YKn�=��x�˷W%���F�$��=9��c{xj��;�X#����黽0��Ia�Й3���AC�F4��S?zt���_��L����cG_m� ���1�G���)��'�O:�o�� s ��I�Gʀ�;��ҝ�I"?I~L����x&���/�ta8�i��:p�      �%      x������ � �      �%   �   x���A
�0 ��+��%�@i���"�
KLW�lhZ�_>���(�'g.3Z)��H��N�;�<G4u�5�ACl��
��4X����>�����
���3���d>M�B�읿�"<���8��J��P����^l�;2����PH)�^�      �%      x������ � �      �%   �  x��\Ms�F=S�b.[eW12�����Q���ȉ���)U�!0��*S?eo>��C*�\���������7�{��!���L�랁/�f�d(b�~�����Lַ/�~u����V<�ox���Y/�oo�/�A��vr������$�[�l}#7"ͣG��D�EvN��Wy7{Ve��`�C�h<��[�Xd,�A$9��xw����ξ���"�xP�"�s���%��8ۊ���=��{N��Ss~��8��=DaI��ɘ��#�]�I��q(�ç�^����~OؽHD�c�)D���`�%s��.Od��T��kj��c�s&r�&Q�G(jp}��ԠW�b�ף8���O$�o ���Zv%���#��	��T��@�õ�c9��D:�:�=���@ȵa���w	1��-�iZ,my�f���N&"[�q�ew9�#`�}5�����\��}[��L�'w�%��X�R�"�#q\�4q�'ϖ��8O���K����)�%�Ȱ�Hi-��-=�8=�zzK�D3��	��$��S�" �(�ĝ��|[f.ƙq�0��#���������;��D��O#Kb.l��$\��֯a�&�^"6#�]5���C3�Ȕc��w����z:M�~���%�j�
1����̛Q�2QN��c3�ή���'˛B�h�Y!L���<JS�njr;��%�ZM]N�a�Y�\g�	w
#��5;N��z�	�"�qg72xG�֯`O�?_���
�n�)G�%Q�'v�_��)���^=�gV+k�]�8�,�5���Ɩ:[��S<'h��S��}S�����Ў7�G�tG����G��g4���V��jC�����zY���,��nv�ٛ(�U\��`��Qw�I��>0�Z�:M3�!3z+�� �ր���u�P!]�嚃r����v��d�/�[��-W�wW�ѝ�@)��?R^����	2�?�x/I !z�(�w�\�`a�C �u陝�7�� !#��y
3�QA\l0v��q�	�F�şs�a�f�o0���dZ�� d�!-TZ˚T���!��Z�����0�U#^��-?�&Mc ��q̏̆�#rGԂ
��R��X�3����A{�;�`w���?��W�Je����Mu�2�+���훇��-O`Lw����25%hk�x��
y��/6e;'���G�M�T<`H��tQ�K8��1	�����)<,K�:V�ˬ���l���Q�5j��l[ը	��T醡�-�wE�_$�F�iNR�q���'��V1��F���j�fzb�t �ҏ0�!�$���
�� V	D5�銔���"�]�	p�	pk��Ӧ�P�p�Յ�Ͼ��E�H�dF���8֬�m��ڊJVZ+-����n��5�1��NU�;��T�@m"��"$�=�"e̎�D����)b������l�~�Z4����G��2������̆o̱��V�L����T�e}G���s/��r�����@�� b��Iy��o1�2��Ub�|!�v���wͲ��Sm+&�"�5o����H��DUA;���95XwE��v��^hF5Hpn�s���L�!i�(O��t��{5{#��`P]���/7|)��Q�
1��h4�ù̵��5�DK���նpf^��*4Zk��K�?F�h/c�b�0
d�ݿJ�+=)C����S�ܵ�K���C7�i�]3%0��w"0�Z��-�h�=�NVc_+�M��Օ�E�~$֬�H��
�h V^�+uD+��Eoɶ^7f�V�Kw�V|�[Ft���d��]M���3�l��%i���/ۘ�aL�ر�\�>�I2��2g�M1�Z�٥���c��zc�s"�X��媍�F4���B������h��������ҟ��7H-<[���{m�r���2G7�!�GO^�|{�� ��ry1�؟��Hf:�i��u��r�7�Ȃ��.7�J��؋��(uD���JQ���,D|Z����Fb�ƽ�Lyy�n�	<���9���l�NPp��<�
�W?�Gęk-���6*���a$99c:��F��Z�yN�7�g,��Ǆ�18����A�����KJ�"��M���R�[�^�ǞxS�{�S5��9�?>Dtfx��w:[�Y�oe�O��`��9g��C�>�V\���n��� ��D�!�D���a���x�厷j���xO̗�a�����V�%�1:e�Z�x��-��ȾI�P��7��CuC�:���G�
��VM�6�w�&���v��9�_Z�L��uPVn��d~E�Jqa�Qe+�9=�Q��"Li���jmr���p̕�ob��=�R��c�,��VI�F!�~�3W��/�;m֚�2����g��Q�\C���w�6�6�4t_��j_ui-���)ް)ް)]�(GX��r9����H�^�зT��n7�EB3�A6�S�9�u^9v8O؁�7�:x�B.��qNE�g�3W."�F�󤿙V^������3r=��,qV�U��ϡ1��(/B��&�t��Q�4�}�^���O9�$��s�O�vi�Ew�{�r�ẓ��ۍ�e��f%n���j������p��.5�
��B3�D�g�����V�Tx�Lo@tH���e�:���.�1V0�XM;�+�+��Pd1�h��m0I�K��Z=�0e���d�R���@6RM�5w�8"�����K�7F��$e	P���\�Xp��r�|O�hO�������VC��Z>����x/��w&x��WG9���_��&�m��W}��q�G���}�庙E�[g��e�vo�v�I�Iߙ�þ�b K����o�;n��q�]��-��gK`�u��.�aD�V���ӻ����њ�tsL�UJ#�S����'�*�zA��y�`Fy���|�f'�L��3ge-2|g��4\���Z���\�i��ɣ�����,�ep�]���ll����7�j�@I6�-�6G�j��KT�S|����x��������#�֡X���������ھ>p\�Q�����oԠ;|�tv"ש��\�� k��{�pܣp�UC����܀�'�9+�i0y Rk��f?F|�-����-��=�k��~�!�������&K�3ux����=���wɜ.�R|o>�\�cAϕ�[��-�L��j��`61�^�n����W��e���J�LnR���[�vhe�IYB��Y��1��-S���nV��Ч�<:�
8j+���/�:~����^#��a�����g�~�O�?�c~�ɽ̔���4$��{��+��G����w����/P%��V;Q���������>�B����
�	v�-+6����MY!b����t�@O57�E�6;�p����4gq���jD�O�4�qm ȂN�o��!D�� �Lk��_����$�k�I)�$T��E��>GE��ֿ�ݘ�e��e���"Z#��^>�����תH��u(�G��V�}ׯ�#�g�*�Vi�={'��Q&�ӳ��.��X|��z&�ȝH�u�I���������1�j�����E�*V[���Ʋ�h2�Uys��{���:Ƀ\}����2Pʴ�=�H*!Y!BR��'�j&��~��0�5OE3n���o�������uup�8���84���z1�yoM u@�~��>	�&�����HʃZ&�ԿSDO��By{z���ԅs���G�����L
���(�n�S�Lay���C�c��e>w}~��yR�����{q���#/���	G�G=��x�D����J?�U�n�|�[W���-��u��m�яG�5C	��C�������l]҇?-V_�|�CytT�Zj�6��g7[�T��<�������h5�^`؇<���ފ���|�Y[C�F��j��O���#��@���N�����������      �%      x������ � �      �%      x������ � �      �%   �   x���A
�0E��)r��ZA]��ZW���	I��<�3]�iW]t7��y0�5F*mXi5.�t�.�Mu�Y�>��=s�Ѻ���W���A�e�<H�	�z(^�b�����qb��`<�����h����]:���&�Y^7�	�"�-"�x����\�պ΂�x�m1*Pe�ʥ'��n"F��b�����      �%   J  x��TM��6={�- q����bst� )zZ�Qc��QH�����So����)�۴@��3o�{3�ͫ�{����v�Βu���w��~��w|��Ѵ�s������%:��q�7����Ջ�����R(��g�w�����p��ؚ��D�S2�/���-*w��q����M�&�H�1���?g6�����B��Iҳ���A�P����|�4����.w�5�s�(��T4H��a�be���#��N�Sz���33@E#�'�;~�b<V���<:��r�̍>j#'� X�W��S�0�G
���<	��&�np�,�V=:�Mf<}m��R!B�QD�T壔Q8@�R��:�Ԛ?��=�����Kx�}9Ƿk�A�x�*�ь'.�|/.�E��F	�;���;��J(B��=�"�i}���!�4j���)�SQ��fi"��Ȑ=�tC����`���F�\T��i�v�NN��(J�- g'/�mLr�Z!�ёV*&M9�d�XNRGףD�S#��ښ�Q:�c3�K{�v���Q�N�J���]0����ͣp^Mȁc�4㔎yK�*�	戌΢�P��tl&��&(����8��l��mSs����7�^m7�z�lV���z����4�����<�B*�e���T@/�<F��g��P�9;��j
R7�bP]��G��!'NO(nq�g顗R�D����Ъ��؍�@��p]�XgvVu� (۲:�:��1����r쇻�������q��1��\��v��0z���i]T�����΁��uzu��ڹUm[G�b��-W����u��������      �%   e  x��T�n1<�~�?`Y%$�(�d�iHA�"�z<��F~L��D��#�O���}�9� �Ӹ��*���O�?����hD���廛�㼛�c�R�wG�y۵�"�dd���,�o�>4G�uL!��x�_;������o7U�����*����&2�f��JȖ��S����.��!P�$�N5@����&a�NR��j�X�HP����C�����p���E+I�6�M�"�b�NS�$d$y"7xE(��Ǵ��D{�
��ĄָTG�3f�6��4�я�P,=U�l�#�{a�9����®��RS_t�>A�#�k�'j�;���{��O�T[� �}�m�J��K���,%R0�-���xM\���d9�E�*a���e����(������-c͌��Z��S���e����zI�~A��{Pk�Gic��(��"��!��\��V��V�<e,)���e��h��zm�!���R`> ���'��D�@�i���{1BA|!��dN��kx�f�Y���,w�2��ojoA�t�y~��n�[�1�)�]o�h���bKR�*lX���r ��M�{oǿȘ���n6�L� )	       �%     x��U=o9��_���8�9Ii(�*�hp��,W��o\^�꺴����+Y�R�����̛7�o~�}H�CZݶ�[�>�������o�Ւw����W�W���j��?z��ӷiv�����/YS,�ʹ^��e��=G��tz����� ���&���I|2�wk
&�����kǈ�a?��K��3m���e�8��x�i>�ll�50���!����^��<b�0�V|C�$Ñe;<��8�O�H�R��9�oS��>�<<F�:F�����"ΰ�B)����5���.]���	��@ٲ�H�$|ϼM�PKPھ��_���dY� �Ӭ>�Դ�s��F���y D]�Х�]!UÝU�P��xW��t�i�!�H3���I�􂻗�86���}��ˣJ�R�$i�� F�B���x��kxj8R�񦒈�C� ��+E#k�W�T�'�����4w�DKc�#EO����@����ȯ�Y�S��L�9eOv�����a+�Pڤ
B���<<��^_�͒����[=z��ݛ�/nn~ȕW�ߡ�PMY�'�|!0%F[��*�KmV�$E�����J�t86�N���&�����ت�ѳ�E&��tn��XT�h��	��Z�sRO�Y����#�i�M�h��iJ<QC�RwJ��9J����gw�[���*c�*��[�����UF��T���;3�@�˨W�Ce�
����I���[��SIz~H�#)�hZ}�Ql�T��=��h���c� �G�$=�]�He�c��RWec��тŗ���Pmn���V}��� �s�|"����M�ELLt*P�ϓ��H���Ǒ�ZT�{��Ut��G�F��1�z�2�{�NOvu�� ��<z�MtU�O�~1���q�B#$�BPwE.7i�;E�=��A�2Mp͜⎣��ؗ���SB�)��j�)E�K�H	��5���I�����	�*^K��3�׾��s�Ō�~����Q(4:M�
�'-�����hG����}�����i{^      �%   �  x��VMo1=/���DBB�1��R��=N�V�����������CUn��������V����7f8:�.t��N��\��J���ه���i2��d.Y�~o:I&Ze�-b���_d���Yԏf�9����ѥ�2��F~��A�Biau�NfZ@.L�c%T"��c��p��=�A��.��ۀ� n��PlL6X?#ho�$RK��,ӊgH���(�tV�����Sh���-�;iO��ͽ�$�_�L������9�+0p�]"Z�V:-��tSI4B;���kY��gˆV�\񹸩X�*�xh}I�|
�lj�7)���J�p����<���$Q�%�F�uF����~���$A�3j�q{��4þOg�$J��Š����i{�T�x���-� �ESvn�7
W* ��ocg8}��=��K=���Г��A{��(CE�L�לy��a[���g�o7<rq�c���� �x:d��}���M�9&G��K�HD�~P]��u��� �
��5AC���9���\7����$i�A�ɞ4Ϫ��N*z�i ���!�*��^K�
��7A�5�Dcw������Z�F	���-ُ8h�*9��X������9�xLO0pg�;�B~���>�(s��pv9ҔN��P;���~���&�[�ĕ�'0�U�@Y�.���
����i"�̃��<R�ζY���9*�ǝU!r�[f�Rz2%Q��ǖ�?�b��ߞ��YÒbL�D��u:��pa�      �%      x������ � �      �%   n  x����NA�ϻO1`**W�GP�'�M�-Z3;������#�bvvAЋ.�����ׯ�)�h�9C4��&����yRMpS�!V��U�7Wc�!���hf�Fx!����3
m��yr�W�	�;{ڲ���Q%�0�\G�_'���~gI�Z'T5mHT��Q&�U`b��+�w��.��K;�[fWd#�kAD}G�$#�'�Ɂ��5JC %ʚr�,��a�)��L��w��<�x���5+�^RK��
�,m���dHcP�.�v[̱�3�|?G̳��ī�̰jЊ���P�:��t��odi�A$��?��@�s)#�`���=����,f�	�&蔷��Y}�47Σ�ě��нr�+��"�:      �%   �   x���A
�0E��)r 	��]��L�BqU!�B fj������W�n�ϛ�MYmH��ztV+m�KQ��f/��E6j���,�hd�>Na�:�Iߑ��t�3�r2|&`������L����9b¢5yO�UB�rɀYo�ħ�Ӳ��i�&�o���O޹M�A�4S����E�o�ӞSJ��      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%   �  x�Ŕ�n�0Eg�+���+�%v�lNӡ�@�%�e �*)H�&c�E?A?V^*�:�AϽ4���uv�z=��bL�:�l{�����ڃ~h�jj��6�������澘�e���<�tgcMZܽ.���G�>k
��A�M�|4�OK�w�ѽ�Iґ^m�k5��4[E�(~t^[�Wtr?��G�M��>
�|P���L^y���NzK�Q0��.ZظC�~�����Խ�nG�.��#!$���?R����(E��(����c�8��(

�������� \ . ��`��9�9`����Jp%�\	��s	��s	E	E�\� W�+��
p�`�(� , �� , ��j8׀kp5�H��_�׀k`� n`�@�@�@!��PH($
	��BB!��2M0�,/S�RM\'��0�0g�Ӡ�s��c�4Ǹ8&��@��.�봌��
	K��B�V�U═,�6(�l��A���D���B�M��ۃɲ�n�d���r�m�+��-O1��C�b~N:LؤNM*L)qk4G7,�'g�({=zb��Tz:ǜ�F���YȪi�������>�����DΖ&�}L��/�n�n��g	$5f�!������W�����ܽ�E�]l�|{Ê�:��k]��vmӽ�'k�	z����o�w����>~jGoT�y��l6 T	��      �%   }  x��ZM��8=;�B�0z�Nz:��l&�	��63{
`��f �
)��or�!����?��I}t��d�=�%��U�իb_\\.~��.��yS�\��������ſ_�_����j��]���~��I�����enk[��鈴�w�-/���m������,W�٢m�NY!��L���3[,3���ei}�8]�-l]����it�Qu�wek���3�v�6����b"��t��jct�j�ժ�*�3���>�=��x6ӖW��;7��΅��sjqd�l��j΄��*��Rm�ӓ��vN���+@�Ma�֩�o��T�OיͻF~6�)�il��9|�r<���fv�^�1^^��oU��H�k����U^�޹���b�~���]��~	�)o9���5���Z�D�ַf��m��Ӕ]�U�q�gIo�1�zw��涆΄�ma�Z�eo͒����l�\�ip�r���JzJn`
G�z3,���e�Y?��Y��%k��-�({�������;]afz�����d��C��#�ys�Pz8̅��]Α�=�e���n��bm��?<�	�'�[y@��5S�{P,3�ڔ:7	�{Q��^�W*�"i/g�c��&Ё ƾ:�(pX:�(`��f�� �8�^�y�]�Q�o�}�m�|k�)�ɵ�wD5�O/�'��S���s�$�k�mMbH���}�pӝk{���H��:p�[F[�����7�c��8�n�Ӂ���'�:$$��aϴH�u>\�8v�\��t���x@qk'.*\7��hBLV�#�1
]>T􀋪����	�g1;O�յ��h
�'$Of���Kp�"L��S����kҢ߈�u�`��'� 1�U<�%5�MpP��=��j��k	7)��^s�s��W�@��`�9Bi�w�"���Bۑ"�ç����t���9�fqA�z���z�j��.�n��L�\�<!ӟ�#ү�(�>��N����y)�LT�v55ctI)���5�ns���'$['����/�k%qгlD��>�&�'=V<���zli�����	��L�?[��6&,,�?ys� W�FG#Y�A�9�<�%�q���h8b�2x��0��::�f"_҅wС��B7�/޴23��Ac4�B��`�*HZ-E��S������W�������3a����-�*��=�]���A�T���Ug�����>>!��g��IO�HWmJ@���?�r�U�~��c5]����RH=L8����E���Ԏ4^�N�%�ٷ�e�Њ��A����Иs娫ǰ��)-0����{K��o"j��0�d�I�L�^�4�R㎧=��X���x�� C��%�ꈦ�u{&�1�������,����I��Q�ёy�q+��g�QH�|�l!��*���
�6�b*L_��7F�,ыnsz�l��ꎧ�b
�:�z�'����14�Vۏ�|������ki��d�A�:��YN,����[ih�.�]��4��D��a����/�E�CM��xJ!�!n��.�\I� |W��|e:*U]���"��TzrBb�\�s%��;>�V�:no�/0Xn����}�/0"ݢ�<�`��-�p@~�M���?s�$X�[6�zƝs�_�9�u��P|�Eх�R�W��pX�XN��	/���WO�P�:r`q�r���[�4�!�yWFw*�<�P��u8Ys�kt�F���)�c�8|�lp0�0I<rH�\���y9W��zz����P�>�x;|�ȇ^G0���gM}2Ž=m�Yu
�`I��%{�)�*�SRWh���hՀ�"ѱ�knD�!��`�H���8��8`{.C�j�i�Ѡ��s��RuH�Z�mA*d8������LsC75��? �Y��z���{\
�F�sBV���wi�Q�o�К-}�ܸp�bp*B�ė�Ċ{*��X��*&-�*�i��j!+�5dJ䈅sm:�G@G>ᰋ�����J������+����fa�`�LH�F3��*Nr���I����s�)V��׶��?)NN��7�?1t�M�m��tC���aB�<���_)cJ�eD�t����S�l}X���HL��[�!?�:��EA1E(�.'A$���ۑ@p����B���*�gS�K�_�������@��E�aF� v�� v���t�S|
e�p�\e�Տ����G�����&X�/�L�PC�t]�#�1c��
�y���5����>�E�Q�Lk5ra�C��N�^WFcî5�xD,S�	��ڸ]��ah��j�ob"`�N����ar4��5/��]�때�5����D���z�[�$R�����*�6�ұ�Bu'uc�(�V[�h)%>���x�bE���29�(Q>
9"�"�VuP�o���<"�s����t����9ys�n��Ȧ�h���^���i"�tB��5�uL���v�
q�2���g��&$�e����iƺ�H�,��-�v o��#�1��9 */lB,=��+����5�XW��n��[�����.������w'9�m+�p�V��o�M��J�iE�f�hC�L���|��͕�?Y�U��(=�B��M��y[Q�;I���'�H����1m�������>�Y��Ey)	��1��u����@Q�B�	5�ިR���[�<W>x�XF�^���p��ѷ×�J���?A	���GU��U��=�I!�ū0`��[F���)�mZGph�c>��iA,��e��p�,�X||���b��7��7`����ĺ������2Rm-_�.�����N��l��6�\����
�q�y��R"��7!_W��Qh�hU�i�!�5�� .��RjI�z���a���rj"{D8f�ҺN�i�_F�)F>xw��������      �%   �   x���K
�0�דS��5'(�2U�0�$�@�	}έ�ܸv�?��	qb��D�yℶ�s�h��mxo�Q�`�3%b�iݖݗ�2�x��{*�Q�뙠t2D�M�O����a�p]�p�+�k~���J�J��+R�      �%   �  x��TMk1=ۿB��I�K��zqZhJO3�ήZi�����J~��X�H�	9�J�yoޛ���br��~}3X�I�֫��w����w�%������|�\��D�_z9���_f��d![Vm]ݳ�.䁜b�bb���<$?S�'��e?d�r�Ǌ��i���T��%���"�!sS��~
f����j�)d�^�LV	Җ4b��I'Tٳ!㶴1�6��\�o�8��g�8bM#@�:b�K��H�힄$�@��{|[R��i��Oחg��r�l)T�_>n��������f�^�j��},�șJƹ���Q5t��?�Q�L}�������n�h�!�ɾ������xt+��v�#t�Wf1̽���)��m­�xpo�x!*��B\5= (�	r`p�1�q=7����'�I-�"���FJ��R����.�b�b�����K�q]+�{��>2t��W�5Gi���.�NN�����)���&]����жm�D�g'^S�n3L=�����>d=*��Qȝ���W��[��)s���"z;����Ί6kAC������ �ͬ]�Ő����f+t�)����(�h���V��<^\
/}L*ZJ���jW�F2@r�9 ���&Щ���oJ�:������ͿQf_6H�m�Q���L"��|:���^,�      �%      x������ � �      �%      x������ � �      �%   �   x���=��0��>ENa~V�D!]����!�E��q�\������dY��<����`+w��4ڒ�v�Cq�d��,��/!y�������`�ex���j;�U�{{�Q��;+熝k�`c2������d4'\l��a���t5����P���%+�E�;g���bP�f�l"���&�&�k�e<��&�_a�2�=�κW��Vk�z�	�7�s�9�l�Ei      �%   �   x���M��@�דS�	��{�ﭢnĕ0�3hH���x�����EAp�VMUE��G-�R#z�5lа8]��r]銎�Ĩ����U��$
[r��{tÝ��JMԖ�D�j���ف%H.'OF� ���!r&���8�{��b(�Я��g�M���P�!r�VF��z���Eh�2�H� p}�)>Q�����1�g�� wy�eWݙ�      �%      x������ � �      �%   �  x��T;n�@��S���U$� 'E '�
@�vG�
���mr�T���byCJ���*��}��3�����q#��k�%�%ԋ����ˢ^�S������ż�X8d����r��7��wR}�\]W��>�H�CYj,��b����@��CdJ0Nli�G
17�ga��D�ƿ�!@Q� ��?���9%91�l���ű���%"��D�
W��<�U�r�cK�J�A��c�|�NW�(�,#�ԁLGάK��vZ x�@�����j�&��
ܽ����j�M���`=՟
�xj���s/_P��	 FN��w����WH�i��L�z6�����/K��s��2Ҁ�L,%�嬌 qQ�����#�5�s�t�Lg�Րl.4`��������B�M��͈r���6U:W<���X�nZ
~�)�!J��CP+��HC����E4���!�YfJW�e��iݯ�o�6����uXI��[���b<��V�|�e*k�xEͺ����>T���h�a�/2F�n.ԡ���p-��П��ً���[4��.\�C�A��jw�P!�$�R���p��0�P	��ч��~+����?-A�:<ӖNnd�����	�%����p\R3}�F��h%/+      �%      x������ � �      �%      x������ � �      �%   �  x��V�nG<S_1G
Pʒ$7�!�"��� ����r�����.�������o���KR=���w^=�U]5<}���R*v�>o�-������.�.�Kޭ�ԭߟ�g�����з��-�7�����d6y�+[�'mt4ܥ�J�agj=c�}C^̧�����Tl��9TbJ�s�FB��v�c���b4\Y1��>�3��4TD�Ⱦ��1��&8�{��BBJ�5t�{�2>i�O���n)]9��� ���~���	��g�8'���������x2y�� ���3m�nԡS�N�C���8[iʀ�#ǥ�62B=ܦ�	�-�LK��1�
臈�ոQ㔽���=�}'Ma�ӱY��G�!p#@�4�ׄ��l634�#�ȴAv�c�/wk���F�M��NLA5}�44u�>�Y�H�g�%*7)f�ҲV��D+��@��N�w��#��6I��{g�f�e+ݣ�0��G7{T�Q���Bt�S�c����g)��y<㰕����m�$���j��1��0����Tj���5٫�;B+�����"�U�{�AdvG��h�F�%��
�-�V��L̟�dq99�EEV2��G2�}��)�}���ִ1Zr[�kǑq�V{	#`�G�҅C���N��	 \f�1�<XN��~�LG�1��L���x�^�r�j4����Z��w�zYKQ��J�UW0����s�L�5����n�S�^�����5��� ��G�vv�U�~�T�Wm��%lr�>'I5��Mn�����n	��dt�,2�Y��`xPu�ma��6�1g?�8@����[a.�W{W��3z3c"���3^t�f��	d/�J�3�@yD�P���Z�E�l��~��^Җ�����mވ�v���B"��ݿ���t�+)�TJ!�z��Y!�t�Xu��S� �刃��z�ס2~�2��&W\���w���K��k56��c�~�z6x�����y&��AJl�ɠh���Q'o-$��JoH^�?|��S�Ǔ��q/(TY�5����MR�A�����OM+�%R���Z��?z-��gݿٸ��kk�&p�^<��d�������9=O��${�~����;��� >Q�2~�2�_O�4�{����V�������_���?>�p|pp�?���      �%      x������ � �      �%      x������ � �      �%   �  x��T=o�0��_qcA�8m��q� ��F� ����Q��d�С�����(�N���'Q��{�ݻ��ŭצ��USY��zWN��oǟ��Ԭ�1������t:.o\k�����W�6��s���nV�c�S���&͚�e�^��O�'mH�G�_\L"%Gz�Lm[�=5>n6+��:ܦY���T4�-�خmE��y�_Z�xv��l�����)U>�A�x:�.���|�~��݃	��7�?���ʁ��}R�Tʥu&ʣ�tzf�G�NB[��֓۩���(���?����(X8+�.މrk�<B����!�H5:�T�bv3ﴑŤ���O�B���y�����n�n���>i��Y�]#�	E���u�9.Q��Y��X ��^�ze�h�e+6r*/���sx0-�!�c�o
+'/����B~�~�
�Hk�^7Dn ����1[��3�{A�����;�;�Q�w�/s?v4w{h6���j�.v��ȟm(=�I��`�|ݘVj3n�sm%m<��Q��;+?�,�츹�_�}�to�=^Sqk�X����������d��4�TgAr��%������l��|��?q���3b�c_��ǩ�e��P�MW�g�ݤ��'�G�r"���Z����ܰ��
����e�v�=σoe*AF�f#-J	�����}�ݍ,OvDH��;�D�&��Q��E]���Aܘ>Z�4�t��-̒��6�@�-�)�����`�W��      �%      x���MN�0F��)� U�l*`W�(-H V���=i]9�5N*ʝ� �^�Iմb����yr���V��j�ըm�^>���Z�tP��T�ԓ�)�	�6�l����+q
���э�� �|#`j��C��|7t������4ʫ����Ȃ���O�g,&�awS�F3��V�V[�#~�!�=�&�'�ޅG�����B���lM	�=XGi&2�$f�"L�G3^4�f'1}��Tw�S5��"���9L)���D�c��������憼|�&/�!�~��o�|S�y�\��      �%      x������ � �      �%      x������ � �      �%   �  x��[Ko��^ۿb�	��D�v�r�������E bD��1Hˇ���d�EEw����̋)).0��b�<3��9�y�yv1=z�R�����d������������Z<�+�ĿM�ӓ�U�v� �RE�TmB���TG~9:=��r�E'ox**N�釛����?>�]̂,9�K�T⎯+L����X~d��_�����0߫L�ފ�~��N (� (��&������m%��F֪�q��#I����� �,[���T�6~ÿ-ѲL�|�u�2:챭T�6��<��^�Z$U|Uӣ,sւ�_'�R�Zx�DO�΂�[Zt��G^	0&�L�Zķ��X^d�8�LXc���<�3���c{�t^}d�s��g�綋{������r���6v~<��~9aY� �D���Ѫ]KQ5|UoEO���x�`�Nn�^�64���8@�����"���+^��� ��M�����!�!���5����A����Fo�0>�ux�
�B�5�{��GYC�g����cٳ�>/���;H&L�X��h�o�(�^l���*Vۺ�m��C��a��4��_~Q���e�沐p��'��{F��P�@;v�J�1�D�E�-��I+�E���U.�Zf�Oyg���A�<�5~[<EóѾ�L��n�m��9X�Tl'L�.�~��G,yr�֕�l�3���i	��~��6�λ���\��ɢf�Jy����
kiK|�n�q�I�U�(d�D�T�Pf�!�w}��P�����5�*0��W�V����7=3�Y<%��͟�� c�`��������[0�rG��`�J�ˑL�r,��(0KF�.,D�kV�c��2I7n�))
��V�����H�V�Jd�����|&�<�oU���h��n1�(h�:	�5�@��Bx3_��&�Z�%��)HRzN^�\�pЖ0O6�,N@�0�����k�<���dW�v���T|�4j�' ��+3"�9�"sțG��_	� �A�Ќ�s�[N��jTA?{J��x"d#v�ǐ�S�����\��[!F[+�ۖ�Ye��Ʋ	$+j���&�Oն 5H2��*���U������{�3JZ�=���5
�b{P�5 v���eJ[��@�V�xॏ)j��w��
�^�fB�=r�%F���o�ӟ�ѭ��_k_��D��=���X�� �՚�qMP�mt�G��ir��y����ۦ�k�b�	co"�*ݔ�xahw�*X��[?�c��ԠK)R��1�H�g��>}2ڰ���S���Tq/�6e�@�����15�}¡�ͷb��
2j)O�{^���N�PF��� �����%��|�(0��d~[��yh�ܣ��{B�Z�������qP����gƼ��&�0���K�����6Q�M����鞒!%lN�W�*U�z�+m~�P��l�%��;Ʈ��G;'�L[�C֤k�ԇC.g�nvc�NyT;��ĳG�z����;����s�;Н,T_�Ml�^����]�=r�����I���>=��id�n�n"l�;���l�i�gxF*��,����:T���0��٩g�)S�t�O����|���=L�b��������E�{��F��T�U��C�4P�y��,
��7���y[���)4-"�\#�d�o�.vp�l%L�b6߱�����+�U�vK?���a�DE��p��;3�ô(f���(�h��y����n68�Oô f��p�\e���E��C�|�sֆ�+;8��f�#�8���6i����D/�3�z���s��W&��֘����`�p�Y`��9"���W<K�d����[��T1�<tv�u]�px��\�ν��,L1<�0���q0�$�Q��:"	��@H�*�S�"l% F���L�gd��'��b�`����@�=r��� ��ys�ӗ����a��|j�����V4�ev�HG�;*g��q�[ajv�	Β�9��Z�=#��5�����¤���`@t?thq�f�;���Aj�@���[��S������vk��L�ҙ\<� 'L*�G8��t�mN�KR���tUE�TJ>E]�Y�2_@����~��= �-�Mg���'�S��odٺ0BY�$��:L:�/���S��}�ǌ�S7�PM/���z�gGW�SD���"��h9,0ga���|������^���\�KM�<L�_p�P��w��~y����F�)3l�&6�ä��t��"�f�����vԨ���IP�t��W髊N�O\�݋v�
t��1>��aS4`��=49i/L_�
�*s�@&E�Q�ģ��޽Z���SZ`�ꓷi�گ� �*�h�E��C��Px��#�B�� �񐢺�/uW��Dd�ќ*s0��
���AF��l��G�/�����i9��鞯e��%\�Q�������c�,�)P�gy��B�T�rAAv�G�X��"IR����FJ�q���o��)�zj9�<3�����\�X�z4 ��R^���uO�X����4�	V��l�%�N���oZ4�{N�(#U�)��X�ۗ=;5�Dn5=r�2��F��ʐ�4����5w���v���N���%�y	��w��[����Q����2��J�2�CZS�D˱��� ;����z�W�}9��I���{�"��S����m�~�le:{�����t���R�O�?��������"�Ԟ��|�MUma{��Is��:x�.�]�ӷ������Io��[ j��f�u뒨gJ׍�e�ar��nx�R\�����u�[�{���'m��-��Y����[����u���@:'������e�i��/���ή�l4QÔ��٘�[yt'S�{�3L����~�������O�s[3;��y��.�X�)� ��#L-�8�0�0:�S!.�C�^�a*�EW���q�T�E���*
S�-�CT�sա�g��H58KEaJ�E4�S�NSQ�/q/��~�qj�y�y*
���!�r�rx�{���D�����T>�8SEa2�⼟����=Ty����E����؁��Ç�Nh����4��r���0b9݁e���J G�,����q��q@z��"LfXΏ��TAS4-3{��s����|�/-����E�kE��1_����{��I1�%jWp|���]�s�T�\<�v��d�y�tZ�+��S1߈���!��_�.�$���w_f�]�����N����vJq      �%      x������ � �      �%   �   x���1n�0Eg�<@aȹ��vs�%�@�m� ���,y�:w��Uj��s�n������5{�ȫkg�#�����q�z���:���8[��;\(D<���l�9�D,�r�O$AЙBn��n�`!��_b�u{[ o��U����!��D�0&���k���
��[�$��>�drK��S]�l�g�ƴ!0ɤ�`?���d�[bO�>_�CV�(�uUU����s      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%   $  x��U;o1�ϿBcF��kL�vrRyL�NvT�ī��1C��[��c%uw����&%R?~�M���e0���� 5�|qyu=���j��!���x���K�
�w����&;ΖqE18�
���[g_��[�	vׯ�}�"Z���
m˨VF�B��a�U�=^���Y�!)PP�o�������tv0���w�%�p[�}ª|���&X2>���EQ)�TbC?��T6(�P��t ��Px�`��iJ���t*���'���.��O����W�w��eҠC4���G^@Qj�}p	6���WT���z�\�G�8x_���H����ʇ�Œ�mI	t���Z�MjD��x�5��E`�y�Z���[͉%Z�[�D4�#P�@=�R�X*�c��?#����]��t�1o���}���& f����O�܋t�P���ҤhC�rNt�������<#���.�Ѧ��$�L�,[:��7���WE�4	�	��i0�]�PRĐ*&I 7�{�� \��^ry�F(`�&���կ��M�ƫ�	]��6R� �2o�FGLcC���Q��ہ^�g1>=fk|q1ev�f�$��5&�w��T���8Ja�UJ�c�3i��DH,��)�ym��U����ݪ_�%����l���C�R���hF6\��t0�-�~�6�[Jv��S;��Z�Nv+e�:��J�$�>n�6��]���d���~q0��H�������Ա0I4�&�9��A����<?U������Ӡ)4��/ݨ�%�҂"�<������v      �%   $  x��V�n7]K_�TI�]	N'0���Ja�!'$G��7^z�Uw���z.9/�V� Z^�����sϹ����F]Aƭ���J*��z�|����j����V�����l��]�NQ�KM6:,��4���i����n4-U���ߚp��]��p����Y�YA[Rc߆�0�Ո��P��[V��&� �	'�Y�X<_I	#"���i��H}q��p���MD�ed��YP��3�ך:�	3��:�mm9?�5�c�B�1Z�mYӆg+�*�����.LD�
|l��H!Oy)A�D��8��*/�㓲����a�AUpYw�D�Z�@@�'���L�����)���k��?����4�J�3(�	
T�<ӧ��|�U&=���]�+��~�`b":C �����Li�R�����K�R��\���S�:#����a���@(E��7��$�b�V�qb1���=)Oщ���q1[̦�w��[d>���")���=�Mb	qbE��g�CkͮK�M�B<�	���H �����E:��d��s3~��:���8� ġ�Zɝ�\��״T��S~�*���&r(t[6�ޥ$Z)��>���:�EP ���ȶ�i�8���_ί��řO���>�d��I���af�e��~�{ъ��.��e/����5h�6���������(�J9Ɨ��iU�9��5�)�֩%ÀGj��y�Ͷ�<��^S��k/�s�*Ǚ���wg���;�am�Η�w�I&m�2z~xO�6�h�Fzj�.�t�<��xzx.<;i�:�;���nF�2u�P��{ޙ�e�9��Jd)ٴ��ں�n�-�?T8ӕ�-�)�S�Gy�<os��:��k�_z��@Y�g�~?_�H^���tN@i����`d�f�?خ��57Ǥ�����&�4|'�>X�jn�H�s~ֲsZK�t:�l^"Sr	Ks�qOK8�	2���-e�<p�F4���,���c��͊���"ߌ�������
�5xǟ#y����ry�qۍ�F:?L���0���      �%      x������ � �      �%     x��P�n�0�����F�����v(:�(�JQ�I:��c��t�&�w����#w����-���iO���1�F5�[���ڼ&�\�Wa�f��bS����35y J"���P|��/���"|$�heȻ�#A@Ap�%��@k�ox���d�1��Vӂ����u�T�W��mѠ�ZM(�<���u��W./Q�%Ss�֮n9�˹;\�RrԑR;�U��?���mq|�����Z<UeY� ���      �%      x������ � �      �%   �   x���1
�0F��9Ai)K[�B�M"��&%I�3x�^̶����}߃�R;��egP�DgEU�j~�D��!�K&Ҥ�����&x�ΑfOR��r�fr[��i�b�43z �E=ց��l1�g�k��YoQ�ҋ��%4/�Tg����o�^����g�>������Kh�PJ_7�z      �%      x������ � �      �%   �  x��U�N1<�~�?`�x,!9�%�HAJ�Ҩ��%�<���J�79p�'쏥�1�,�47O�mWUW�̎�K�ظ��7Z��ζ�����E��u;���8j��:����57W�as�B�\�e��W�r��qA�;9�5���w�E�~�V(Ի{7MQ�@
G6$��!�$����uKO��TD�J�\�y��k��=WHϟ��֡�!iix*z�$�I�����5�@A8�!���$�Q��"�t�7��!|0��神��sv�p��w�� ��.4@��UΜ:ƑP"�}+߽H�2���=�8��x��^ Uѫ
v������O�ѝ�d�A�
��J�V�A��U�m�L�aH9O�V�X�Hk�ʞ�<�>�w������2<i>WH����_�
[�{In��4��A7�r���v��o��;�_��:!ԝ�p��г�\�YQ���c	Κk��S-ݰ���d�w�4���6ߴm/)�!����l�nw�-��}٘g�.]B��g����Y� ����<�A�v�]�g B�i,ln7L)�	}��d��bޗ.:+BV��m,��]N���Nˈ{�i�y��(��ͳ��<��y�I��[v" ���b��Cw
���G ��c��Kq�ұ!�}��#<�������@�����?uG���ˣ�;N���W�3�{s0�L� ��a      �%   5  x���Ak�0���x�D�
��c �Y��$�G�*b�����b۩e��l�$�$��~I����U��̜�K�F���v��eNg�� ���M�|%�(<)�o�8���(���S�
/iե��
oS@�v�����ؕ��x��W�t��6HŞJ6�����b5��6E��7JwO�zJh�~aB��2%�#��2����k���4Z�G[��3�X3����U}��n��n�y;`�����c$û���ؘD��q��u���do��c��h���ԉ��ǆ�������_��I�|4�t      �%      x������ � �      �%   �	  x��Y��9��_�pBK�62z�٠����4�*JM�U�a��Ё��3���9��j�^�j�V�H�}�s��|~~��ʍ�^l��tf����ů��~��7ۇ;�<�{�p>��{���o3�yk7�ٻ�g�go���<Ko�o�.k�ȓ��/�G��[���1���*7j�Mn+U[�4ecԟ��:��QƩ��[]�Rm��jc|a��*��P�����
u�vj�`��<�j|�N��_^�f�%�R��+<v�nz7}�l>����l���u���k��c1�窌�_�#m�	8���V���́�v6��9���Ln҈_}���Z�o{���{~����֛����?�t�������*hji�8@�����[|��Y�)ͬƖڬ��$�ŴO�=V���Z��r��3�ߖ������é8��D�)e�W�����3lĻ:K���H����5��Cki���6�P7�E��j2o�����_����|�t���&�Uݛ��]��ť��ⴔ]�R��_[��ҙ�+����"�Ƹ���M�T�i���#!1()���$n��R�Aeگ�H�v�,��e����5��
`�(��R��S�x�3�gB�(���r�.E�=�� ��[Fc�ךC�&�o���F�"M`��4+�f��'����%l%� #9��İv	���'^<5Щ�6�z��������I�R��`j���"d���xQA��&���&ʼG|��jk� 7�T��ږ���LSm�;gt<?7��^CԒ�J�  �����>��h�����\]�5��磓~ț��xs9��o����q��(���P���)uNQ���\�	*�2ԍ]:�ք��[�/ў`y�K�@�mzS���P\J�o[�����QU��ukm�B���%ZdAS�:Zq5�
`ҫ�-	i[f.�L�W���
L���D���k�|�Sdܶ�)y���U=�Z0R���[�N��1��u���wA�`\���Km]�E�(�H ~�0|��bb��N"�f����
(�+���K���3X�Yc�^`&����&�jd���[�f��h�R��pbj��iY`y`�[-8J~�8���~_�v�u��E�o��*��~��?��$G�|��A�s�9kG_/VPbJqf,�,r.�-l�];��@G��F��|M���50�"�� �`궣�]���bl����e��49���}�xL���[`q['����܆�´R�r��4&{ħH_�t�;ud�������)�	YI��m�vg^!z�S:R/�k��CU���b���E���_s�F��s���by=���-�E�8�+X�T���2�"������#}n3l���!�x��0LK���������!�ܬS�NJ�C��v��5��_��į�h/�:E�xK)���dkɼ�hշ��m�����9-O7S�������ś-W�H��p�!���evi�`x�0��D5���vJ=�(uZG��d�Z�R�#�h�*��XImHD�v:b��k*JS�j:�d���cs���n����8c��i.�m���	��suLiYˇ��7,ZS���sd�Kg�m8������:�Z|�t�5<�f�J;8�c���']C0ܞ��^Y��cpHO�H��Z�v�lL"����-H�laՋE�()Ҁ�1��HaI��N+� &u���8�	a	�cWS���@]@�?q�Z|���KC��� S�|&ݸ<��&t� ��L�*�<L]�H�B̠�4�.R���sAaA��g���5Ե�tEn�c��5����T}�ܐ���@���c�Nߠ�P���NC�e��cqAm���"
��{Ԏ�\��̫�*#����'۫��1)ҕM;�y�b^�2���O��.�N��ճǶ''I��ާ�P�t%}@�|!��D�1Qd���Z���[�����3^`-Nc�b�N��v��9��2����ш����!�R��HR�t m��
�u�����$�.b�;߄��;�K{+Ab�̹$;6QO���u�X$_1���vuG7�Cfa]�?�d5�jg��0MxŷMċ�lR+�A��&��S�����E�%�����D�.5uז�N�
�v,�I�sD1�ڈ���}$�-��p����lǌ�͜�� v�#
���8tv��@�RKtD|;�*��=]4�\&-@��o�g�+�W���X��5�zxC�B�=g�m��n�rW7��(���m5��b�-M�!6������b�,���ؿ�"ǻMa�8�hN�Qb%�Q�y����x(^��u���A�]nF�g.�V��#cF�˖{l����e[0��b�w֊H~Ǯ)a���(�w��%�h�)Sxk^P�?t��F��9�b9��{?�@IC߷�l X�(�p�K�d������A��zo��ލ�B����z6��_���œ�.\&�V@r������႑������v"�aG��v������,���ѱ��U���!0��`�;KÝ�q��'�h�wG#�=��a<���ΏG�����?������� 1U��b�|7}���ߜ�P      �%   �  x��R�n�0>�O�'0�vm�c��0 M���a( (�PDC���q� ;��k^l�d�K���H��~����KN�M�3��˛���z��t���c�Ϛ�B�8�d�<r�d���iU�Uw�9I,��k�0D���(*I2N��Y�����V�}'��Q��O�S�ބ�O᛺�0��Z�~1?�7�id���3_�+��w|��U/!3I�,��Bob�6����n�r���]dr@�sb
��xeyR�lz?�ƴ����;y	ڒ��Ǝ|J*�RR��Ƣ_yEN�eO�8��I��O�cJ��
R�`��Ͱ�{�[S=������76 �hob�E���AL���QR:��Cyh�؆�[GY�h4�|�������B,?s����s-�D�����"c���r4�:,LO��.tBR�d�J��#�?�P�2l���4_�u�NaSN����@�睝����PS?5u]����G      �%      x������ � �      �%   �   x���1
�0 �99ENڂ�%�*�8>��W�����<�����^�R�t4�i�C_o����'8�PX��Hw9�$�ݩB58�y��f���Lf��d��|A��$�hz
3w�u��3-Ֆ��˹�W9R���X�Z���:R�      �%      x������ � �      �%      x������ � �      �%   �  x���n�8Ư�S�����	��+`��HtuF{�BB&q[�;k'�vަ0���[^l�'�)`��J+U��N��}��߁�{ݺ���|��4�!�l>�z?�8�O��|������=�?Ӕ���b��5��u�z �F���muu���c�1r�����H���6@�8"ߢ�\p�_F�D�?I�g�!"��8�Y�|A��0JV����X",��q�[4��K����J��Yнq	�7�:��:�+�~Ƃ���/�%�)m�;@R� ���! �;x������x��$!,�	I�h����K�ȃ���ȁMd���:<>�/hBUpjZ����w���$F!O�?��b���(�dF�w��1�gF�̌� �"�U�Ɯ��d����"A�b��VQC#G\b=Y=,�@~Ƌ"�oW0��m�{�u��6�k��"�PSU�������BYQ��8�.�;��*���err=9{vF��_yF0�[q�PFaN�#�>�l��!�^��Nfy�	�X�&~E���c�v]����v���m�b]��X¡�AI�s�KO�-y�2g'�3�e{����m�*3�/��3��$A�b���=+��c N�D���B����4��{>I՘�a��8|�.|�����I��+Io����I���P�R���`XU5���
X�\����ӶgL�0n�����d�H��D$/ ʯ�_�q^:�8�����(�._E�c��xx&��xN��d�>9�:��5��4)�D�Z8ԔA]~�*Y����/����?*[M[�+SYRT�T���֙Z��=Y��d�H�T���/�ݤ���aߩ��֘'DG�K�����������xkv}ƴ��m]��+:�۴���mg�78�1��pB�1��O�5��^�쉽�5)��[��S+�w;�`�	m���J�\ܦg��\����	ն����{ێ��\�ݣs���N���m��D�r�4f�^��W��`��~��Ԧ4Q@-۷�c<t^o��/TB�j�ӵG6d| Oy�š���-kͪ���p�Xm�Q�_��T��ԯ�=�`�jY	��N�i��fs�6(��%��p��꣜0{���	�=F �2j;�9%��nrv�o;�]ߩ����w2%�:���X�&������-N��AI�dq�j�W}�mZ�Z���#��U"T*:����UEC��h����٨"�Z���p��i�4)F�5U��-�R��2("����ɕr�P����2S;X{B_(f�.����c�0W <�eu{S5�/���Ӛ�㭖S��ߘ�;��/���k����&�;�nǔ>N�np���Dִ�c�i_�`۽�@X�j��5��ݼq����*6cF�.6�/��'�э�?��F�I0SAU��ʍ5�*԰/�Z�T?��=��ӹ��=ٕ�O�A��T� e��r�?��޳�r����A7S�h��w^����@�m}�Օr�wg�����?-�!u      �%      x������ � �      �%     x����J�0�u�y��L��.K�QW�Nr�+��ҤE|-�3�����������5��ņ֬��&�ت��ޔw���W%x���uZ��ђS�u��t�>P�b{+�������� ֤A���K�#_�V���c�@����H�,�X�����N���OX�A� %t���=���Q��k�����8'��r�i�9O���d�G�rg��j�(,�� �CB-XɆ[�o�ojr�,�U�������_��	��B�y�/a ��6M���3      �%      x��]K��F�>K��G��Q��ׇ���{W7,�'�,Vv5{YL����:���M�[���/"2�d�,ɜ�����L�2"##�xe��>z�6w�e��&�\1���˫�_�_؇��i�?Ο����X��\Q��J���<z��[gK[������j�����'��|m�y�����o������G�N�g��d�����Jl��C�u�&y�2[,M���&�[�}�|��Cwf�5<[��p[$v��ft)���ʜ��J>�nm�l��X�}��hFx��\�٥Y&w��޺�!:��M`��~�]�k�13�t~���-�'YHӾ�hGO~I�Ux��;�����D��x_����%	�sK,aJ>��;���GH�~2�����LU�Ԍ�=w�:kψ�ͷ������Z�%�O�)ˉ��b~��wқߕ���:_��w��z�KI_������Vf]��������6Wef��[Ѕ����A�Ijl��bU@�R��بuZ�e���W�&u[��o��uC�K��}�=G�^��UxfBK�r3i�*ָ09��l�N{|zn���¥�a�QvѠ�E��8������CDM������MJ{x�A�0�^��Z���Km�mNl̅5�޵�C�m?xR�u>B�0JE�^s��K_�F;�C{=yA�ݾ��l5�!?H�}�huJ���9:MH��K��5��KQ��~�c��I
�-iM��V͸��AI7�Ԅ͓�]��f&Wg��̧�yb��e�=�������BA��b�G���gA=!�Z�^"�"i����2�F��=�q`/'�~ѣ�����+���4 D���d�;���o	e��j��5L@Q7U�ar
����A�x�SnQْ��z���Z��2�5�;�����y?3�LJjzɻ�&S����ja���h����f�_$�4�X��'�|��My[�p�(��0�
c�ѬH�[��m���I�ĉdr�1o2"�ِ�ڢ���!=�O��1��i�*�!ivb9}�Z�o�u�m�p�d�l
�=�ݟt��|��e��%a�+�F�{��Tbx�-��@c��̒��Nc�q"�4�_]N&r�掘V$%�.�3D3�y$JF68���	2�+�&���tФ�n�t�����2"�䷯f������``�ƔQ�0wMh&3����<'UU�{�pc�l�>_�oi���~0V�#�c�xG2�!���"{� 3m7��W!�2kl����Mb�ld���'B���k�/l��H�-�AB������{p�c
�><�~�74�\Q�s�*�3DmtO������@��\��.�Q�LsG��Zz�d�3��<o�+�b%}�4+DÃ�;���������(m6�j�G�W?l��kqj[=�+:�«�隍Wa"��v���f�A�]��Q٣�h��8������M��������C�ɐ&Q�>��4�#��\C�2U�:�L�̳��qR&���٘MqNO>M�g�u<�{��w��}�.����J����'�������BX�J�Yz͊�p�����C�Oś�^�1���cI�X�DL���0�K��Ѵ��L�!,��-�|)r>�C&�5�����έٷ&�-�C�D��,;33U�4���'E�-�iRvi��f�{���}��ߧ�A�g��{���c��w�-N��ϣ��b��[��E�A�"<���b�BMc.p�
�M�\w0#w�b��a�5��"ȃ��2C���8��w$��Y�������pt�
CEլ͆�B�n�LV����~[�#Z26S��Ë�^�}�ad%���z̾p�OqQ/����":�Gnl��}�~-T�P,�K`k9���!���Ⱥ�� r�
xZ�)d��J�(�o�J��yk*"x�y�$&X�r#��;�`���X�@*-+dr#r��<�fRR�,��Ѣ��,=�������
�sQ�) N�w��<��i@��;�{��|�H�����p�KC|�]���|���G���;�l��o����I	��1V�ә�Ϣ(��
g�v~��#�N�Ҏ�#�~Kz7�)�����1����e�o���"�0�>��oҼ�Iɱk�֑��-y��j2�����l�l҃�5�n���z�����ms1�	<:�sc���$VL�NwY�o��� o~7[�R2ş9������1��%��K�0���aD-h:��0@*����#5�nm- 6�QķY�f#Tla8������%ҧ�G�"=��1A�Å$zf�!_j�������.>��=�"0��:�"#��ߕ	�/3IS �Q�o8�;�=ت�@�.�df���]S��ߥ�@�HB��F��>�,�En��� /�
����E�"���2w���:�����dO.����';����>.��~�D�J�}W ��dH��S�9��8}o*�>b���(��R��z�e�r� L=O��(��P׷1���R�&��B �RV�l��޲~1��a����B�#ٷ����p
�>�����H�ͼ\���H�*�S\��ٺ����v��ȸG
fMc��I5M1����C��>2w�栠���e�8<�� eWS�� !ւ�j�Òr�qA�v3ͧsH�4q%���0.��j� �݋��Q�����"�!)G�@�8�t��a'	�\L���1|�I&�7|�h�~�`�E/Q�(�&���|%p�j(�)��t����������C����v�
���֟7�/�]LA��1�|m���UV������@�:b_ŚlQ��i��6g-�������8J�dK�/O�E�b�t"L�b�uɚܰT}ȋ)���b/����{V;*��2�D�/bM�1V{�%�ΏO.� ���G�˖�i���s��3�^�Z�n�OEI�������eDٴ�k�2���N��N��f�[��9��$u��NU���>]P��ӗS���aLb��!*�y�Eo�U��Fnv�<�F�:��0E�,�8�z���n��#�����q�._7$���K֪ǜ�oƚ)��8f�k��aI��7�۳W�>.R�E+�u��i�QU& ����QF���,���{RY�	�Gj�i�l��)��|I����(��|�`�d�x���6�F�C]Jo�l�u-\o]����xkP�)SʓTJ���BvΡM��5�Rb�Lur:`Ƴ��#�g����[o��*i"k��H
h�+���*u��	AZ�`�j���!�M�!w�.��gĂ��v��ti+%(4�4�w�[A��q�w_N�l'gf\�*�b�V\m��m�g�u���Mb�����*c��)r��L����"�$�@ʯ���r
X;9ߡ�V�G�j�Ò�c^p�x��w��;����� �	�d+�Fƥ�)��X�g�*�h��q���~\k�pi��!���`��'�����嵯W%Qɳy��/�����!�򌽞����f�‗P�n���3���ə����s�>J�D7�����_f8����c�K��C+��a��X��mX��1_H,59�<!!F��F�~VZA�7H�m��`�P�NoȊL{��ذ�
�/�kO�L��'��ur�%�o�? d	ڳ62<h{��8N;��[FQ��5l���+����Dom�H�<O�쒚�v�����l��)�'�F�K�N�[����Z	�����h
�<=Pt-�%�k�7�~�@�ܯ� �1 Z_ �/A
�����xZ^�3D��6���Ӑ��p��B�H�1��z��V�͍|��v�����������!-Nx7�}�u��$7��T�A��Ls%/�i��M����n��� ����n5���yZ�7��D����M�T.7E6z:d�פa�Ђ��Kgɭ�Y}�@+%(�"� n
P=��ļ�����CeR2 ��#�y%ix[���f��w�4�񅷸�f��UDԤf�!��y�1�|���L���ψS ��p~���K߈��-=��v��4��eØɅn)�l.-���D�F��W����%
_.��?G�	���U����{��FZ�����BiV��+�A�C_As�[y'2 j  ��d��5�>;���."����]k��w%�ٺG�M�~�&�H�u9��f��imU߅*��6�����
���*n^�X�]���8���p�8�(�PS��������Y1���E�f��(?.J��N��ƾBC$K{͡�k�S��<+	gi7C�"�۱�X+Է�b��WW?� ��!������,M��qw4;W?n1�.���'�p����V�ѹ�V<cHJQ��+i^�(iH��i����)��t�orSX��}Tw�ūa��rͱ���o�(�,���W�q�ާ� D��AS����Jj�<�׮ڇ}B~��1p�5�R+�qî�4�R����-������ʈ�����T��׀�)��l�	DAP@�+�=����A)����mP�̝vH	�EޙP󓝫�51ڛ(�(���:��\φ��e��}�{}S�zX��6*Eh��1��`Bz� ��d��Bϭ��e�����}����g�}L���0�_n�Ae�^B_,���v�J+�]�X̪�Ɨ��':����+����yl���ۍ�&_:Г~�"pv"-R����ז\��H@����VI�-� \�hM>�w�?S���?�+<����� u.���|��dw�����xd����l�bYI���c|j���R�F�0B)6�J�ڸ�(�eiw�Tb��~6��?�<ϟ{o��2��
ɚzR���D'����;٢�Ҍ&^���ItM:d��-+�v�Ҙ��=N�~���8��( s�k�|;3�
���]Ҝ#�"A�BsoA�`xv��]߃��B�)����g��'H��V��Vc7٨��F��H���,EjW_ů@I�v?�Z��ɫ���_�_�����DaM��[��+��	���0�&�
]��oDl�����S �مr��<6Lq��rup�/n��R��x�����""��>A���%�0�g�o�B�ؾ?��S��]�7�K���t�K?p�'��ӷ��8�(nbnS	B��S	^*ۼ��9h��1L��&x��x����h
�=�T�_����F�r|���x]v�S�~c9�J.9�.gn匂�Z?�wB�M���O���nw�r��X��ጇpBIj���x֜�w�s��ؐ�� ��f�c��G�\�.j+�0�#Z��e�ugȟk��E3 Mu&YV�p4md�[0�4��a�1yH�e�q�b�C��F8nM��Z�T�A$�b
�>?�/;������n�8ai*�G���$�ڷz�֚�g���a����,}~&N��1����ObгӸ� d^��bԁU�������+[o��X��/y�S�)`��f�����CFʆ��xϏ=���$�3�;�q��v�wuX�z,c�����^yw��Fq_�g�a!�`��O��r�_�R����������vm���fI��,��h��X�� 9�o��2G�2�'���k}�h���h�!�O=�.��n����}���7q������K���!~ ��?w
	S>7pӝ�e�ôj�NUs�
!�(���Ɇ�s<��v���g�"o�泏hZ�)�:;��)���h���T�ӣ)���,p�� ��k�.������!ǻ��#���Хx�]jh]�CPɆ��,���uKf��8�|N���s�p��� �*|�/��̭ܺ)�N�Os��/�hP��Ư�aZ2U���;��|�D�k�r�ځGK3頾�nip���U;���d�[?Iڎ#Xe��%��AM��	�l������C��e��l�jT�lz��|���X�ݡ!�����]��0�7S ��E�MUE-j�3z�U� �+!�~��K��ե7�č����� :����#�����4{�Ѭ�������]�OH.��nW-��Єa<�e=�w�c����<{�c�@t�`o\��0=W�%X�N� 3���
���)7�쪹�)H��I�:~���r�wz�}��}� �?rУ����Ě����t�/�Ƃ�o[�=��\��P�LRRQ�/���S���������u��clQ�V��>B�1�e[z�`�}Wx�>Tnm���7!_���蓝�E[�A>8��	՟�:K�HL�1�ʼz�^��pLP����Q����}���M^rV��ȳb���p�T7D`�N��(�P��=�MT�oltDb���G��c=H`;bDi+�����nD9���wew�Ē^�S��5�Z���|�k"���<dڽ�UI6��� r�f^�ٱ<S\��|K���R�vζ�aFo0wN�b'�κ�5,�����q���H���/�d[%#�vJ�2��m�̬��v-A����.��V�\Ch�"�6;���/<�aN`���7$�xK�x�)�"�Utt4tu�٥�u��MjBN�Hd�:��sC���II��E��]QrjD}�q`�ʉKU�#S0����/����o�Na��i�L4f^j��W��L���7��RY(pt��[kƅ�#����aÑw�p�8���w�ƁT(!3S���/�?�%���x'�U�9��HL=wŊ��r�7�� ��j�Ө;j�c�y��)�W��n��L�������&���U�}]Q5cZ��)������n����{��S�K���I��l%T����F��!k����Y���6�#��{T6.��K��imOn������#�Z#�J��ZK��ث�>��9�;<
��2�9�^z�z��j��O��`u%EFR�a�܇v瓒�Ѡ�it[#�qL��2/�޾O��a�ݳ�~-�\���߶DQ\�c��w!s�+ڗ�οZ�ΟL�����3Jv�D���a"�cw���F�B��`�b}t�7z�:cGIé�׽��6��[�{Dk U�%��Ddwط"���o�/� &$�V�����z���{;4&r��2!D��8c���ĵ��l���V�u���H�Z�L�;��_d�
^��SݥGt?�A�y0sp��Ǉ������8#�J�,�|2 #�#i�o���<^[����Ǫ��ǡ�.h(%�}�)�Ӟp"x:}^z�������<���1��,���
�Uc���$y m!EtP�
4�l�B����F�h493>�
�-�rb��z��l�v\.�A�f�X�EJ�5��p�&�u�V:�ޤ�l�5�Zg\�*�`�@�L���r�f�2��_�~K&���\C8 ��l�8�"����0��B#�w�R��(U�+j��K�@
̪
��uޙiV�Җ�H *+eо������%�?�9��,�~\ �\�\�K����~�����#߂�
�Q�B9_zd��-��;K.?����F�Ú���Ǒ��k̄���.�\Fѯ�tn����R��=��S0��E���,�(����C�+�©��[�g�0����\|�9�&oN2O�a��z�����`��9Y��a|ŀ�N�0�OlH� Βj�̗��j?���,�1��Ͼ.niQ�ң2_��j ٗw-��}&Ǣ�8�.f��Q�ܨ��l7�4�GS<T�"��͆9�ٹ��l��8�����~�+N#�$��d��߃(\��j)~�4�gE�x �Sf�B�e�u�	A�?��;7F3�<��C�Gp��" �-�a[��	~`*��1����?�o#�
      �%   �  x��VM��6=˿�����L���99@�=���I������s�C�[��cy3e;m/���Λy�7��w�&֋�Y��~�Zܽ[~X�Wԯ��]����g�����϶	՗��y��-E��؎���E��T�U����V��Nuq�}P&x�Dr8f����F��m��ɶA�����NX���%��wz%>��P3~㴼S���I�g^�]��g7o�A�W��c 9�� �h�U�1Q�#?!>���@��/�����1ZGE�Smh����P
�=igk�qZ��&22%E7yۓc�T[�Xn���c��F2-�
x�O&8�]����.|���۝�B�O�؄8D~6�=��̋j�#�G9����=����Z!���ζ6rAfJO������|�ӜxlJ��E�ƨw��g��OCqY-�q!v��[8�r���uk�O(���ش�N����nCDπ߮K���bZ�W�28p ��h~�z2}R�?;��-��3�����#f��P��&Zol$�o�_��<JD���3q�����}H�t9�uu�}�JT�e\�K��4�	��@uqgH�۫iA�To�e&��6kNug����r�q��X�WY�����i��\�o~ml���������⢠�7}�	tC7�R8�tK�A���\OK�m�
�T"?.�{>��� �Ayf�>�/T�0BAk -�u3-D8N�:��/#K,�Q^�i��PGIN�,��K4��A)I*U�nQ��|mHF��1���.���hq�J��C̃ ���F�CcgZ|ūR8�vZ&�T�eo��h-J�IyԎGF�����FȆ0��RD-��AM�H�ϫ�Fzǻ��\eaj��͠��S���2���L����#�������� ��ߝ^(#=��w��3s~Q},��XF�D��>o�������&���Y
��*�;� 96ݮqYͷ��<�@�.�z4�N�-@72?
�Y�;�5�ڿpDش��J��Q�佤k�p�_r~z�fL��"Q8��� �hjk�fq��a;��>a�����#��V��O�)K��2r5�uޖ����/���\��Ջ���s���]�y�T�o�U�62�� t��_�� d�(�Q���;^�9�`��7��z"�Ǌ;$f�"�`"7��
#�GP��?�a��><�}9��f? �      �%   u  x��V�n�6<�_��0K�(�=�N
,P��춧 -�^.$�KJ�?ꡇbo{���q��	�S.E��Q|�̫��q߻Vwn�ކ�wa���a�G�۬cg�:Ӫ�V{�|v���-��ŭ�5x9�/wkS�}5�u��T�7��,;yw2��c:0M�4-�ZuL[6Z�b�OΫn�N�+vt*ϞXk��Y�H�N1��f���k;����m�h
K_X�����O}�֭ٻ?���m�?��h�&�l�fhs��@[�����f�g�g�g�g�-����9�9�9�9X9X9X9X9X9X,�#"�ρ�������U�U Vnn	V	V	V	V	V	V	V	V�X�(��
�X,� K�%������������5�5�5�5��`ՈR�[�[�+���Jp%�\	�W�+��2i#IaS�G�I�4&m$ql�IMIHIH�Cb,	p$�c�9��W@bx�F"^"�W"�� %�H������F�$!:	�IHF"iR�+�2��f
������Uk�l2�!^���]`T�Ɔƛ�b���oB�X��AM��}Z���X�.����ΐG���Q��f �B�p�5��`���ol��S��ٙ>�F3���|+v�>8��th��g���ב�5�f��Wעo�v��Ǐ��4�������VlE ��" "	�S �Џ@nr+�U��V�V2,�a�dX@S"�
��3˼Z��m��c�v�]<%8�]�}�����߭¾60�&?��&ov̾�����2���[k�.�-��F���y*��K�y���4p����u��YMg�5�ץ63&���%�TM'[?Z��%@{���-�\�Z����HU�b�U�R��e�bؼvC�i::K��T�;Ã�Q����-� �$��Q]�aL8cf����P�� ��5&���i�&s��1���|ɳ���X�ƃ��S��w�Jq|�w����E,z�2=��A5c7������%�ԑ��� ad�I�O���V��Mq��Ɠ�������Ȭw��F{4d?�k�5��ug����F� �<Q���M�;�]J{�<�P��Ϊ#�z�E�5�i��_/;���y�s�Ahq�r�,���q�\.�"�A       �%   �  x����n1�g�)8��a�I�$ct(A�v2`�}P���.��6y�Lݲދ��|��[��;��x|�arӯ[qd�%澕����^}_�����*��r͍�%�W��dy99�\��7cx.1_�-G�\YS��4<
��pJD!��I�8P����6Qf�I�d�$r&�$8�>zg܌���=^�R4��#���4�d�gԘh'A���b#F>��)�M��>��h�v��[2��[-����}���9���
J�A��hF����SͲ8;;y?=>����ɷ�`�t������Ϩ�����FI���I^�if����=�;�#5��Gf�L�bE�.�
E��hZϱ��Ϟ�����J$7� U�"�[��[�T\]�I�J"����=;|/J7X>
��:���>�2�G'�u�U���% �x�;�(s3<F�U�X�eNW�P�	B�rB��Р����/�j7]��z���h�����p��P����#C��V��Uth��ܕ^+/��H1�T�\�Eg1���i�ل�2.�ŋ�$����-�Q��(��3T�N�����C5~7BD���
����G�:�*�>�s�w���#E�`t"�O�ɟT�
�j��U4�5���My}�)�t�j��q�E�f0&u��/��Ky�<����[*d��v⡮��!&����|:��Z�C      �%      x������ � �      �%     x��T�n1�O_�e��G�^Q 5�a+���׸#/|Q>%��)wi��2{<=b)ToI.gfgwTܥe�JS��ԆT�����.���CY|t:��F7�*��ܸ�~V�cS"�s*U�,+	��q�S�T��V�K�@�R��F��ȥ��y��[���*��i�)�Ϊ
Y*���pr���Q^Qc�\�nr�|�b�+�����_�ʅ=���Sَvl'� �>�
]��������=R�TՊ�	r�%��>������{�γ#�SgK!Q�\����%�"�<)����YQj�A�C�5� \?<2\�*�E1�γ��T4k���)T�/��=/���78�8��}.y3xޠ�g��F\BlcXA�%���� 1[a���Q^���ppu*��b����j�	�@�a>Nv^�ځ/C^���4
�m�~�������|>c�e�>��=
-��R�o1���̮���ܢ�LkC�Hl�[:4!Ӱ"og+�Y�ċ�	��Ս��y�p�?k����
%��e�)�*Y1/Nn�W�O��~�-o*y��X3�|���	H�wvҤ��_����s=0&��d�l���\��?1�ޑ�sR��W�ݩ�_��ӛ�Idu�%����f��q�I�_�	x�&�$�;W�z�2��TI�D��Ǩؠ`���Si��}��r#:�HbyЋU�z�
��RM�*�6�/�/�UZ�F�o�^�9ڗ��f2$��E&%�;#����Nt����iuR(���nk�̟a+E�z�7���	I���@;����5�� ������~8����      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%   �  x��T;n�@��S��5)�8�%�#r�@�0�1`�&H�.�.�7KJ��J� r���.�>T˼��N��>�^c���V������p��'�.�Vw�yu�$���^��(�Sq���ѱ�w���8��-����9&jd�ꝺ������p�Zv����ߪ��#�s���H#V���j�>G�)���[!ldI�3;���bvO�e�,u�S#jni��8�%�	�G� �) 2�'�Oc��-[<>�N�a�m�zq�h/�_t>[,�O#��� )��sAb�ao�#��;����k��=*�~�	Q9�L�� ��^9��<�3�u����=G9i@x�3��q���r-�' SfP$�;�=�3`B=�MT!��{��[[p�^�<	i���j�ܾ����8�������KFK�n$ao�4��+���
�1	$ɍr��a�5kb5�����-�_ l
�ʞF��v���
v�3�5���-N&nࠍ�ܒA��@�L�
p�yw���^b� ��4p��������Fln�7��,��1�1��p C��De�m9�~���!��X�:��픮N�tQ-���!&��4����ͫ	摞��l��`�y�n�Te�����Ê���a>���Y��      �%     x���AN�@E��)|�*j�p�����3u5��D�`ۋᠦ[v������˪-�!y
�{�Z��]�y�v�n�L����[K@�rN�~S-�+�68�0�~���%Ꙅ ! �~,Fl�������S��������[�p�[ߤ�x�=��u��<�H��B���R��C�7t�")8~�@��[S����R�O�~�L�[���tj�uN��t
�sތI39&}� ����g�K�sg���nG��C�|[Jgo�7u]� �^�'      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x��][oܸ�~���ƙ�a����d����X� -��R]�9���K�*R"դ�<$�H�[M�Ū����|us_^�\�x_���}����ۿ����ټ��񌪦/op��?=x,04ո�D�_�7����g�W}[����f:̸�q�V%9�Q]��8sE>�+������y�o�}�۾�:�ME��+�7ѯ��_�k4�?~�_�_Q7�S����͈|j�����C��=\u��-�-Ƴ�������|n��'�z�s��0��
��|(��5�zk�m]~��V�t�}m��y@>�e&?���t�]S���<��'>>w�8�����ǩ� �ѹA����麼G�/ԡ�u_7G2��k���\a�H����/]����#{�÷����tUsFm1�ӳ<����bҒ��<�nzh�q���������3���+��W���a$/��g�t����dΖߧ�<�%#]��k�]��E~3y����ٽ>�|-�� Q	R�4�s��~y=������}MM��<�.L0ķ�D��􁟔W-&Df/;C��2o�C�`5{�ˀ��/��@��R�^���?6��]��V�k>���ۦ����"/��.2<�N���F��/��9�#�̮/�1�l���T��|��pr�$��keOxU7�f2}F�Ru�>��ogܶ9x��Y�
�DF�ЉD�u��>R����Q���"��|x�-����X٣IT* @���o�P&@g  4�ŵ
�	��-�&�A���h��j=*E���K�~��[��̾�����M�K��߿��ʇ�W_���w}�/��vj���U��������Sy�]#tե�%[[�ے/$J��s�H\��'���ꨢ҄��g�ӗG����6�I����t��J�F��%�ʏ�wd6��3t#����c7�<�7��o?S%������3qS��Z��|RA���ż�1�,b2 ���wt�����x���T0���J�N\���z���*Ǐ�Hnc2Em@��1�ФB��92	Fq���	m�B�]�}�n�g�O�o�4�h8<�_dP�z��v2�:W'~U�7�@�o2��ն��~^BC��|��2�5�_�'yM-��+�X�w5�CEfQ˶F���І}{�ɥF�
����5:̖�ɤ8|?)���V��J�T�:�QBD(���9�6t��+��^(�H���1P�ʯ&c��/��;.���3�U?�W:?oŹ[�'XL�T��˯D`rIE�P/O�q��K�3^W\5�ǅ8��	��L���nlؠ�]WQ�d������j�������9.��S�Y紑YN�l�ҙ=��dq��!��]�ŉ���;������3}�z-�7�Bݼ�;��?>�yN�	j���a�y��J���R<�� 6��Js�	kMG�$yй�����v,Ъ�P]o4���c&V+Ū���z�	�併��<ߩo�}�O�T��%3�V\���t?��vͯ�6T��tx�ǆcT���}�_�Y47F�Cy��]s:��3"�P4��{�uM�D�I6�R,�6�N(FT��F"�+�|�>a��߇g���;�ޙ�F)E|�s]H�B��f&�**~��T-�2I�)p=xfh��7�� �x�0ޅ���v�{?SP���(
ۥ��W$0މ�*���X�>݀��G�B�]GJ�x����]��Dh�B�.7�����҃�Ǎ��*[N_~>r�^.Em:�w_�@�-_�%�A�Zo��o�om��i����n�'̝>����b��y�n�Abc�4� 	em�?���
��V�B7].p,�<���9���`*k8�:FJ�<T�u�#tC ���8=��B4��e7����̠Y����m�l���i��\��q8.�/̰������B�Is�����I޻��S�f�>�(L�9%�+/�hy��+��=���OͿfL�� ��� ���O��3Г<�[ɠ�+�Ѻ
�`a@N�k0fc���sl,shK�C����x� L�~h�1��W�q,`[i�E"
��Z�W�{3��a�N���n;W�i�{�\4��#,L�T�A9�mG���^Kat�)rOV�Id�)$�eD��Y��e2���<��E�i���7��l,�^ES�$ʹ�1%�}�|��`E�'u�9T0�'e�4��Nl��1s�h �>�߉e�x��c��U/��bB�#ڢ�҅�af	a�p�()Y�59f���àᲚCU�cMO�E�3:X�f9K�Kʝw3O�{o������5g�!/ 2rT��5	�.P�����6��)�`���:&#��8Z���p�����V�C�<z�Δ��aF�0:�*�:(�{K�1_U3ȺF�7j�Ju\ˮ��YF_m���5����j�>��
R��gJ�"�S�ե��<�a��u(��0�P�&I������W�[�/�&ǬC�S�I���
)�v�|C��D0�m�����Ɇ�k��dH����כZ��Y�J��G�ꉬ)T��36KK�b�zU�	�®�ؙ���7���%���%'tx���M��)�F~��g#����l�q{�SF:���U{�沵��BA@�R�ݎ�ɂZ9�-�隨X�3�̦�&��"z����grKy5�N<=�WC�/։��9+/�[6��<�/�+�\kn�4�g����I�B��^h䦟�q�<�ܦ���eV��2؛b%�5���#�N�!��(�����i����S7UW�`���p�oؘM��E�ϐd�֟��~��r���F��5|̉5�UC������Ȟ� "-�{^U�<�N��jCI��m������|�?q���Ԝ�Nv���j�]#��k4��ssj�6����/����ћ�Z�'�h�|��C'�����pL�!x�̖�"�J'c���#
�a'����m%{�ds�7g#�/ex��gOݨ�u�-�ZE��.��N��py�J`%Bd< %��h��h ����m�D!I�Tw�6���n���S|@�_�7�������=�9g���y��8�wAZ�%�:��bܑ�g�wy�uF���tD�����門M��E��A�����hZ��%2z_���}����/��J6,8����e`q42O�3y��� �x.7���%������U������P��WDO���R��Tˎ��pB�)ܓlۛ��P�w!Bc������"�t 	�=�g<�aj���Fն��?���8����BY��q���I�'ͦ�[��N�!\����G"��A^ټGC�,���#24C�JV�퀌���vEk������V��� -��._��q2���a�O�/�K�e�\I�'K�a�X��"pG��7��k���tO�\3�P��l�*���/�p�����3���[�d^�o�3��j�mߝFr��^�s�Y�f�0��n�{1�#�{,n$Bx��>�i�@��Z�LCS閃Fc������ÿ����}�ǉ�avv�g�h��%L�<�/�b(�C��=ʪ���c��'"2[�c��Q5����C���9��V��h�;��e�S�C9$��~�	�إgB��O�S��cY�����dW&`��.�A&�8|$����VU�=*�G;���F%!i��Pj�C�k��p��##�w�'�W�����W͹�(��\15�Cq��a��p���^)k E��X�-����Vv�,i>,�h�S�񱺥��f���V,[3�����`�eJ���s�a]ʵ�"��H�^�`"���!��^��Z8tj����BsQ$����m� y�:$x7����`�U�p�P.���6"v.�.<n�|�DT�ƞ��߂a������+]̉/l4P��)u�&2(F����Rj)/��D�VK�ЀǭGgF s������js�^��~���ľ�夆G� )����lw����@c/�#r�1 ]��=��s�M�9��"1ϑK���qt���N���DAY�I��SSd��D�&��rPԴ��yhȢ�W�Ҡ\���#���:44�a�5���'����ʄ�"�Iݞ}�    M�ғ���p�o�D���'7������^�QQA��I��rA����p���ń(w%�,*$��ҡ9}�bW� B3��|*����O� '
ݽ-֡A+��9b�.�zǤ���"B�t""¯�Ե��& �(�$����<��h^P��I�d�Ĺb!dq�c��m4���^�ќE�^�qx�sI���^\~|�3o�e�y�U��]�hWL��ϵ~�Vѭ"[���N��1����k�;�L`�&5Ā�㌰�Z�?��G;��Y�;���E�͈P+ԁ�G�X�&l�����/_s�E��
�^l�Vh�� �{������|?��ԓ�{�7����CaI�c��^YD9�vn0��:�9��c=�NriC�Lv�e5s)��Tܭ�$K�)	k�7w��P$z�z�:6!%���̷S�v�p�� ����D����6�_K�_�MO
���G����i��.8$ݜΦI�FzK�VH�TcUHMr�������a�y)�q�uQ@���L�QY{���[T����y{z/�"����_y���{���W�tA����l��V]���Iƥ�ZD=U*eX����r �__�h��%=hˤ��κ������N�>m�d�쵭������|#��-�z^T�ū"�������+0B�굪Ɓ����ۛdԲ�� �h+�.�(mۥ��ܐ����<����d��J_�ۋ3K�	YC�hV�T�\YC��2��*SE�RaZ�0�3_�Ea6�T��"��8mͲ(�vg�Z�v�↻��ׯ����?��)�GF�y�,jv&�7I���Z��tO����᪥�N����v�J:d�I�B!-��n5.��3�Ý��N��n�r�&��]Ùǽ�×������3��1�jeaHB;�p�i���z���(�5-|L�[��~��_u4Z�m��y}s�z{{�֥�F�5騅�L�� ���?6h�|�.>��<�RA��G�\>����c#�7��T�V>]��8�b��+�������HP�C[y���H�� ����A9+�Q�M,�,T���ŉ &���bʑ8�($���#�N� K��}u)���}�uB&7Ϭ��uf�0��&-y�Z[z|'u�?A�z��jE_&�Z��@A�ʄV�:�FaiVԬ-�@��TEa$g�A��������|D?B��L&q�F�lј�(2�)��,|Ė|��ɹ�N�Ԋ� )��Ld9��_#����rs��Ӏ��Fʱ��<�L�ҤD@������Ge?�\
�3��ѓ'3Kб��]��/o[�F����6o�ZS&4�(����&�:��[����d��v�$K4cZY�li�N��tQc���ۉ���ē�o3�/��?�Q8	N1��zSF��$ C'��c����Q��E��1�����!%����"�w�.+�������<���L�W��8Qؐ�`��ǚ�%/) 6�R�=ڴ7)(ӬwdU�K��K9"�_:c������������PY��'� �D	Խ�xnw:B�Y��9hf�"��,�8�� ���7M��P�@�i�7�6[WbX�nK_�Hf����N�8a��0G��AقL���fĪ]��	Ã�ČX��Z��%unw��r�}l����/J�z�;��7�L��ΎtZ�������_������l~	�����HN���۵`y	�΅<T:f0Ia���#t�U8�h���H��{�&��y��pn����<+geV&%����(�@��S���Pne0[A���)�5�����K�����%��<(_\]�e�^ǂ�����w��.H ���$��S��X
�O���JH����s:��<3,)�7$Ӕ#Ô��������!�>c6AMP��Q|C!�-����9�����Ze�kh4jNM50_�;�}D�hho�|U;�IL��$�Z�'�L��ͷ:�cqwBG��)迆���~�K�l�H�V9�������JTn��*£-茈غ�
��"P�w\���B#�g0�8�ڑ���>r�͗sF���trdLd�;�3�kb#˖)R��0��=ڞ��~}#�A�v�V�<3����E�v�3��$_#QmgY+ �hE`�E6��ˌ_�Vݱ���0v����u��Qc� $:q�~HюW��֞*���`U5���+ݡm��v����M����q�UW��������w5Otw@v�T$�C
�& ��.�t��v����6 ̛sZf27�s�JN�r_��P��})�6Y�\uZÏ3�;9gZd��W�Daa�e!�2e=��TZO"ރ�^��~��9��R��d�:b�[$Bs�s2���H�2�g]��T@�A� %���j� 	�T�ߒ�c+�>h6B�K>j��*��mn�߰<��x���"��y���N]Э+�W.8p5O>�L%\A��d�A�{���ۏ�&2vlD[��(�Ш 	'�w�}� ��dhHQY��J�}!y�P� Qe�=�Ơ<����&�ݗ;��D�5nOg�'�)�u`�mY�!.���������Q[�W��*|m:C�
mJ���U3���n|�j�V���^���4�6
_��,�T�G#���(;%�'C��a��֚GF�)��U:?KU "�`D��xA/��o������^��+�*�.�W�fg5b͍d��'QI���s&Ê�[���f���T#\����/!�˾(����k�>F��ގ�0�]��b�fr���uk,�/և"��ȡ���8Ԣ��{r�mG^3�A�:���C�W��T9��ۊ�y�Vғ�*I��)�2�zQ���.֫2EC3�e��V�~f��6-�޲j�ct�60\��Wy^3fqy��s���V��#�ю�t(�˛���J�b�q�>�~�s�Yɫ��CY��C#����b]UZ��K֧d� H��2��*��WD2����St�F]:��(��Na��dY�,yT�%���L)�(`v����-E��'M��X�4���m	l�"�ю{��TԲYw.�8����X-KǦ��Ad��H����(���^���8�R�[���[*�W�?ׂy�ҟgTK��(5��2N�@ SfP(��*d��DL��,�|N�p6��A��V����p�,Wd,��j����Sx���D�F|I6it�S�/Ա��t	��u1kݏ��E�/�#��]-�����+�`n�] ���~#_食�rYD�:wq_�J/��O<s2!��Eu ����?uK,|�k�brOQ�((Z�D����Q$��ҿ�u������VZҼ�_OI����F��=ߥ�@��W�5�Yt�[�W��i��*AѠw7��"��� :�J@H�Z@�2AI�����'hK�$��5,YU(TyU"C�����@��d��L~��U��;!4�g~�'n:&��M���Fp��Eeh'����ĕ��x��t�)L�%�5~�Z��?h���X�� z�����S,u�?�.ݩK���^
�����sox��7y�`ۿ�/�KFp(#�0�W�����
�S��W�b��"�z���=ǈ��b!�=�coug\~�F)��~BQc���7��kM�����p׺�d;rZg`�,�����a�h�Ύ�+�7�ڝsOD8�-�����+�o�`#�ǔ�&Ar������:6���,�"����lt\���z[�X�%rC�*��zV;�/�+c]��Ǿ���U����5�E���0B�j�x��8.�{>_�ˑf����	W�6�0o�+���XKI�(HZ��!���صU�B��Hc��e.���t?W^㓄9�����]��o�^�))˟/$��o�DA��{�'��!^ʷ p*�0����/fP�q��x�Q���lPIS��e߂z�5���#]�w'�7���x�F�dWl	�3[)��δX��V$��B�Ǘ��CQ{DW�\^�M����l�. j���zM�l�wL:��+�,%�'Kx�CL��^��0���%�0��+J�
��4�Z�'���B�r�G՘%QF��/'5;�V� ����馡 l  a'F�kq�Jc�F�$%hw�Ǧ����w-=�Z�����/��pfUk�m�b�$�rK�G;�<	@��v.���Rf�R2K%{Py��{��}+>W�)���$�ksa�W����U�+�.⑸! ������e�����{�������`��%X��%���t�)�Fn��R�LS� a���������K��z�jn�<�C,��䈉\l�Q�G�{ޫ\<da!�;��ș|C��w�w&�Q8#���a��a�Mv؎y��ҳ��E0u$F��h.�Zcn��A��(���'�֫q�o�#MA����^���\Ѵ��x���;��v$�i��LBA>����~���)��      �%      x������ � �      �%   5  x���n�:������b������ �n�@S��B��d��/�,�$c�)�C�s�i�okQ�J�M�ע-����X����$U�������t3����b)j�rѰ���5b��u�N�nn���C���÷��VL\SQ���Ě�1XK9Y8�t�3;,�oB֤XIֲ�#~V�XP^�!r�#)"��	��v�V��K^r*^^���o��.xL��4�z\ĆEW��H��l๧xr�F��'���������s|� �C�1����}��˂<!f��R4%Q��Z*���:��m��zo��V3�e���_���n��aP�n�n���(z��%l��ZR
ܧ�w�ĭ^Z�7j�F}+zd_�6�@@|kW�`���"GAP����C�~u7���X�_я�Rz�����iP��~�t��H����Ex������>���b�p�t�Ѥ��Xlz�F(�|����T=[��5в�AA�L�
��epჴ�g�-��y�aՃ�pŤҢ�V�(�2h���5��J��^��\1�;��|h��X�j��V��6�b�Vr���X׎��X��
��ʃ�}<z�k&�JYi�j1�F�hp�^�H�-7��,Q/K�f�}Żj��œ����n`,���׸���܁�����ުp����ҷGN�=�y�<��9uG?g_��-o���[^)�t@�#�	j9������]����0nӾ.N�-�J�0s-*��8�C�y����17�
%#:~ _Ik%n�k�h��d���3N+Am|ok����c�	2�� a�D���7�O��T*�c;�of��g}}�to��@�s*�!QR3�';c^_v��h3Z4�sqmL����������������F�4FСY<�N��yϤ�phQ#HXP���h@x^Mj �k���q{@DP��@=ʡa! �(UR8���DC��U7�,��,	Z�[��.�l�91YV�e�V[C�U���ы�M|9�����X�_����@<ɈPxe���=��9�C�4�3	�p:�QvB�#��Y�|�� $1�Ț�&~�=
C@�[�ʥJ��?�/)��Z'�,��7���ī��A��HAOm�H�)��[1��&�����;Ě��ᄿ��e�.���N�?��p��[�!���y��a�3a�@L"������QO)x��|�<�8�MT7=8Z�.g�V6�j*b?�d�K �+wyׁ�v��C{������wg�]��]T=ռ�TO58E��N��-GF���s���^sd�K�ͺ��A���u���c�����x��)4.)R��i�P��4-v\���2�qZ'����I^�Tn����5X�-S�e�$���D��%���.3� �����Ш��_լB�/��/^�:��:�S�0��Up�äv=�]d��˔�@*��s�]��N�~Z�N{Ԥ5��'�����њR:����6����H�A�~�����l�8M�{Qb���͖��Qe�ڜ[����'�j����;-���8��k;RD�\��N��p�����)N�4���d�ĸfF;�;>#J� wF�{3����H��T(w�'iA4���r�^���$��J�#�L�0`�@���cT=
��ϫ�qU|V����o����`p�o�g%���Gxv<~/E-�*4A]�;]���ӆA|��́�L��h/�r��������C��H�sC��%z�G�oz|V(U�P���2���{�
Cr��$0�E��)A3#M^v1�d-_/g�}��:��ؒm�F����Ժ�n����n�KQȰr4�K	��x���v��}�Ш$jh�>�Fi�������?>"p��TLx^ �h��DY۵����2K�ҍ���\:��,(�Ub�ɱ�,"��E|��2��`��b�1y�k/	�zV��u������#���؀�(z� PF瑩�
��$J*�����d)��~j�������G����&�o������ͽ����;��������?q��'�y�u��Ա4�;l�����n�U���{D+�I��DeJ�Q8G��G9���U�4ז�#&���w�s���T��ƨo��@L���4�d~��PS{�̗TC��@ehW�S�gg;��.�˛�(�`��Sw���D��@<8@pԩd1O5�/B�ԓ���W�׍a�-H1�V��N�3� ��O���Hd��:�D���`<;L8.�-�WfP�I�dd�g?A��Ѯ��)�g(�7��D3x�G��&h�~L�'�$�+��%��Uݞ���+�'�|�*|5�cs+)J�ڒ)��!r�φv�Qw3v���&��%�������8��C�c��VMtBd	��\�����'����+���[|J��h�b�����q��}�U�+ a�͆��d7S������]�G��/��
��n�oTi+-*�HaC�&���ѹ�����}��$��R��������J�&���ᾁwFG7sD$٩�c_u���U��V�C�1�4R����ڐD��x�B�A��-�(q�5���0�c�Y�j�Zl��}�(����n~�$һa��&��Sr����؍\�aj�|�Y�48�O�x�K�j��L_�����&[g=]�MH�z�{г���gSǝYϢ~�7;��[/��'��y����q���N���)�|ٲ8�K*�!������(5��Ɏ5�R?�<��N��̟�3��|{ꄇ?���n�a*r�hOgwm�P���za�4U�BcT
x�^��R�p%]o������Oӌ�}�xKk��O�v�E�b�(9�r����������9       �%      x��]K��ȑ>�E��x$xw�dF�@��F��@�Y�,��b5$����qs0t�ŀ�mF�� �6`��*"*�̌�����:M�k�z��'?�>����P�Ǧ��'͇o��7]�=��}��Χ���>���|�2��͡�.C����8����4�8���;��~<vM�z�hv�v'�n���Z&��R������S^����ρ��N��r���y��s7�g�wǖ���2�ǩ��_�OO���4|�8=�炀�#�ri���������{���9M��t��]�C�*�ױf�홉���T͸��b��h*��fK��(���K�� ���wl&�a�i�����~O�T�����_$����qi��;����{>/���T��F��3��/%,<Iy?p��MӃ�KT=�kQ���al��(Y��ӝۏ�.r j�&Y��c߉��Z�&�30vx�a���5���W��@�vja�ja��2�#{�l}����<L��͗��@VB���:x�A���E�*J>c���J���W�>�Le����j?�<���0N��s�� �'�U"̫W�;C���vb���N[�p��:�f����J�/ ����N���a��;ɸ���WG�G͎�j��/�
�_努\P�8!���d~+v���e��ꡝb����k8��*��o��~e����w5_:�u�g\��|�����TkPl��|���U�4�Գ�f��߁�^5m��[3���!^ɥU(&��f�Z������x���O��<2u���uߞ�u(����̻�r���jg�ƦݏS�g͉�y����FM����w㎟4B;�K��3���B��K����&L��LT=�u����mL��-��z�/\�����x�?Ʋ�,�>$�Nr��ƌ�y|����������cE/H��.�k|N
Z�тr��/��:��n8_�ʒ����Sr�� �wþ�Fa�8���2Mk�y�{Z�������^��G?K�������T��ҸpL��v�&�08���MՈ$=��fǆD�Cn�c?��!w���Θ��Tp½����/��s_�����0���IS�l��6u����Q������A5�vV+孖8���1�����i�Η;���@���h�}I��@O���Gb�L�P��6f;+GK4������6^��|`�n�9
��_ʘ�h��qH���wƏ]�a;���C��q3X<��:�j����K5\��<���إ֡��qp����e���63�:�M���� c!->i�fּ�&a�p,uh1�w��=S�4�y��M�Ol;w��39�/���k��a|��
�e�3c��d5u�MM�C;��d� n�k*m�-���l+:���e�(cD�P,��^Y��zj>t" ���~|I�������eȓY��m �G{�3�Σ������o��o;E�]�Ź�H�y'��e�c�dTe����؝�?4��@}������g�fk�Bk�W���$�A�ZXR����3�q���u�i>㷯�O��_��}�����8�}[�	���tb��__���ͫ����mɈ��ɳ��nɈ�(�<OlA=��,�;l����x _#�u��&r|�P���l�޼-bҿ�=��~�!���|�$A�(��<�(D��0>�\�0�[���G��Am�A�{؟B��OIA�V��	���(h)��J�9w�U(�#ؒm��y���wl�n�YB���\�2�a8QʨH�/3�=j�N�ڤ�����|����YbkZ�� J�;7�UG��3�
z*,���V�������S"*�{��˷13�T��Ȭ��n�g��t)��ㅹ*��J��"!����y<�����m'"2	gJ�*Ro�Hݏ[X�q���&��yF�6̳"���)a,�fܘ)�gϔ�3iJ����q+{e����2�
�0kJI/�]=XJ!%�r'"m"�����&�n~�R&�C�Lξ�<���\)������ŉ���<~���܍�F�,��$K��^ʊG���2��y�`�([1����\K�����O�����9��Q����h+a�lap����qrҵ����fK3W�	W*L�>*��i�G0����j#� ���s{qB���W(�4��[y��2�0��@�Dlm�	����X��y�N�Y|	eJpsv��<��*V2��f u\�0�ALo &\&=)�ۦ�y��R��4�k�{G<$7ꘁ�њ][rw��:뇤7Ax��GYψ]��5�˩�x5�o���P;��̎��	��*̣yB5�0�O�"�ۜ
��2��eb��_�+��"皗�����v������RP>�R}�Uy,É�#��#2�9�J�ټXx ��2k/�훗����
����ø@���t��\�y�nvLt��U;�d���;�r����k?�^u�Ǚ�a�d��L�4u�>���V�|?Na�I���Y��Y���a�|�>����#=꼱��s�XC?9���>3���E��֧�����G�:nϩdaɢ�e�V./��2y��?�p��;\h���b�d��K���lɤ�:���l�(�Qp� �F����~�������=Np� ң�<�:��ļ�[f�|�[^~B��4	�l�OfCʲQ�2l��e�ļ"q��D���������qk�=("h��/�4����SQ*�<��Y��R<�\CM��ҳ�3�MuU�P�H� �z'�e5��A�_u&3[g6��"�V�xSQF��7�d�n�LsM<��Q��F�����Zv�'Ё�����_���"V�5��G�J"�o)+�Og��P�8t����Wa��ˑ�����b۱�o�c}h��YJ������Cl!�B�ܲ��M�O���S�-�_2�h����EBR�7�qf�DC��]�` Lk����H	����g�,a��B��VTB�D#�5y%C�d蘕a�Va�����
|�4^؍]-j��]��<��Dj"����m8��K�:�JΡ�.�cj߳�u�����=�,N�C�c��΂P}�����|$t/o�at>o�a`>�/���qy��&7������A$�fV��߸���Ӹ�n'�w��ZuN���+�)4��-��J���5�t�	�$~"o��E/�Aط �����%@���G2���Oa�9x�i��z�`����zI��j~�B]�D@���L0L�8�����1��l� ���ˑ0�J,�P��s~�d1�2��~� &ȕ۸u�\Ж'I�Z�W����BEN!i�9u1O�D����/�.�LY%��)Q���^¿l̞IQ6fϮ(a���2V��(�̌.�^�/�>��� ��D}�;A���Z����g4�R����N�)�q1|�Wd+��b�֡m��ͱe�g�y���%QJV�,>I���B�v�p�[&y�ȸ��Â�#z^��>�i�Q�]�o�(���=@!؅v��9�i��(��I8ɇ�~�VR�1����I�V4���Q��S:��L�IZD ��!Ԣ2��ķ�@�`@p`���w|����� ��L��E����.��du��y!)��߁bN�����MΈ$w:�Rjլ0',���V������,���L�FR��̯R�*���N��~��	��_)�U{��)�A3E���+�2���2����1E�nЫ��M_�ۜ;@����&d $��)��_^��ׅ8���-���ϰ�C��k6c�76��9�@h5�HA�.��w�e���W�<�hKRfHo�o^�G)qή/�iA 8�A��Þ���������nYȖ�_�~����YØG�S\R�V�y��ʢ��J[�.J��AȢ�X�/�?I��.��������';7�z^�՛ٳ������St�(�����;��D))��HY8%Rm�[�/ް#FyQ"��PN��6¯_��~/(��j����s]�ra�O$n�8�e�X���e}
��()*(��/��J� �/� /x��,�[�JԻ��Y32yl��m��r����r'(��    ��]9ty����PyӠz�ӝk�dqZ��(θ5�aEJ�����N�����V�Q,���B�=\*Do�W/o_�{����>P��<P�����uDxU�\�RʍhX���C��t{��X}� &˦K��"��ʫ�2x�2�f�/͜(��:U��5t�/͌�⥹��Љo߈D�U��h��J��`9�w[���]����x^�ħ�->�c���F�"f��ƽ-��%8���П��073�U���g�=f���e��0�PY5��U����=WUy���\Qѹ��sY�檚M�O��q���4��]o��ZĽ<��+ܕ6w�q~�(���8$a�b�yJ�8%V�U���¬h�tOة��fB�S�t�� <J��7� �����h-������HhI|�l!�f���`�K�+���m�Q/�����5�#J�P�us�*EǓmb�����F$�X�9�ӢX۪����I&e�+�0x�h����g�G�D�bkg�0>1[�ȥ{�/���vE����n���ɮ�������E���g+����6�[��v��\P��Yދ>�לe"��w�]_,�ޠ+v�\��R�v��������}�N�:�t"��
�Ro%M-sοF#���U�ܮ�W��@�Da���"��1糸u^/�:/��l���L���3�:/o�D�f�u^+�:/�i���EU����8G�T�ڊa����*��P���
�$�^�yf�0?����m�)w�R�ܡ/Ĺ����k��f@�P=1���)3UP���p��>zu��$rR0wtO�Ǳ%����/1_�"_!,%щ����GkKr�w?/�$��!����b�G�~�سX5����k�ڜK nr����b�:�s�wa��B��zI���s����Ưɏ�p�[�B�������r ��J�# �,�@<�?�>	�>	���C��N���9n�m�
�Tp�jd������Ɋ��ݘ�PE��h��cO뤋5�.w	�U��I:y\�X�tG/�.�J$�]Ak��Wxn����j���CV,M7���сl	t� [)�A�
���<;�AE
�q�\~����b
���\q�J�K�8[W�Zux�nj.=��pC̋��S�4%^ұU)*�uh"��4U�K��#��97-�8d=`YHM���oɸ��r�}�����+JI�= hE�}■b�(�^|T�4�3z.��/�)�
�et�Kf9�0Zti����F����5�_H7�H���vdu��� �g5Ơ.�!.8���E��H^��9����^���/�<�{�4��<m(J)�U?�O������%���ŗ���{
�G����L�l�\.����*�l%Q����ŃD*xm�E:o	�'�?h
.��J.�*�3r򭛨��e/���9Ԭ憹��g۽]������:A\���\O)�Zܹ���p0K,E�v�}���������=�������7=���y�[��V,)���_���l�2�h���.�4�;�izb�B���Z�~<˫����ۅ��	��[SG@��� ����Nfi�xy�&��t'Mu�� W�K	�v�4��m���Y �y7I�
��7����e�w�$��ѫ�]t��[�y)�r�6�x.LT$m��������vJ})X_BH%���8��&�
�>������Y�]q�<�[�$!�))�^�w��k�e����������4�So\��\j�B��T����\	J�(����g���}qOQ�4��V�z��FT�'iv�M�����V��kb����[�5_�<��>�`��8t@��<����b��F�Z��\�(�!�������b,�} ސ���`-��mD�^���?���y� �P��_�c�Mf �ڽ��K���u�Q��Z��f\/0Ċ��� [vqT���8C�jI��1g��q{� �V�򲢦_x�2��Ո�6��)*5�˄�/	U	�t6L��v�=�pW1�^B�I��W��侨�r�m�=`}�APs�� ĴR^{Z'�׬~X/L��a���Jy^lt�4;P�N�s['����E;��<.E�d� �*�����ƴ��ј�+V��~��?���A�9��)�R�&U�DEX�sSm�raդd����!�M�t�~��/�C���l9�9�3,�D�4;c����7��j!���(l���~~�՚y�G�F�D㯒K2�8l�\���.$�^�e��x�n��Z@�1D�*�ͥ��2IC!op7(�v�D���
o������p^s�^^_fhV;^v%�=��$���{'���2k&�m�E��E�H�B�%���%V�iU�S2+�_�&�>~�^2(�
Hŭ{&����~�	��n�f�64��&��Q�V�ʚ������qJ�w:���JD�����e�q�"�)P���x�K�h|�<\��-;�J�"���X��XX;.�������2�w-;�f��A�ֱ6 ���;��Ep�K��4�
*��]��i�my�[9���9m�RCb�X"�(X�����s����l7տ�����:���x'T��Rg�Qˏ�tYͿ��B]��|�믠|5㟼��Em��"K����#���n�!�\tf`g��g�T�Q�'�� ���r]�pi�b�|c0˫�zqՎ���5��QK���d�ud6��A5���n�<�;d�Fp}�����{[�C`W�ye�D�V,�VUܫ���y7�](��w��ĐcZ��6�Ye�����h'ZK�;��f�Fƽ���7U.H+:U�`���i�����pM���G�jE8�k{�\6L��9\�������T.OV
n�.���.ah$�#?"(��W�t���.��s�����;�A	��Yz�{X��p͐MO _���29�2p�{��4��x/\�H��N����;đ�j��5,hf�,��c�צ��v�m��Y�J����J���V ��|���^JlYz�³W���ۑ*6m%�6s_:<E-3���MBP�A����j�f�Z?N���M��]�]�����CyV� �бe��<���4-�L&�ů�l.}-Ǫ{�V���L�:y�d()��gEhQ��HW��%���Plson�"��[r����P쾅�!�1C���S��g�Wp�f��$���IaH}룀ƽ6Pq��J�%YæF��雚��]F�a���v�H�ԑ���v���|�[�8p�����x�B���<��-��]<��M9򘍣�������$�Dꨋ���g$6�$Ɓ��n�$�/�����v6�ξ���4��_e՛s�/�v�˒�q+�Gv��T..��N�8O�cG�l�SE{��!���b���:r�g�z��i��f�3,�U}1���N�h���]��io�����!����ʵ_��tIUtV���UE��Ȫ謁�U�Y���lnUt���v�$�e<�����2f�%.�#@h%�KE`�Ke`�e�{��=˟'lbX*#�bX.�kcX(��cXȌmJ��|m�s�XX�R��B�$E��X@N0u%h�u��*Є�M��q�z����w̵}M�(Z��E���][i<M�f�;�lA����0�������|��(��~	Β��c�{�#���*g�E���~EZ|\�߉�,������ɠkB5j��V�]��^R�1����[��h�cߞ�n뗗�#���P_�eX2��yeg�|8�������'q��|jJ�4�g�λ�R�'����e�D��@p{	7�	A���2W�r1+��>�@�9��Gn�s�:���pC�=2���%� 	.-�_&�K����b�$��ĂR%��������`��_DE�F�F"j&Qڐ���+E�H��)��eám�B��@[���ߤ#�U-� �P6̔�9�Cz�N�1��6C6�R�9��Vw�D�ٵl�����dܕ�x� tdxF��9�����/�H�o�ō�%��}����t�G��,�E[�W 3ޣ-�)l�X`��{�o!+e����|	�� 7  ʩm[��o��NpI�j��;l��˕��%`Qڵ��E�1ڵ��<L�]��w� />���o1/�2q5��V"U�+/�Ѕ�^�����ȶV&!�$�.�ȓ�� ֻ<*�u���N\6Ycsb�8��А�sM�����%�ʼ.�赍@��R̷���A=V�1^�"L���`��~�b!��*hR��n���+���T��o�P���4o��lk(��r����E��.?�����I7UQ˧G�����_�����^&<�p�{�}�����*��u)JݲVK`#9ln$��d�ȑ���Б���ؑ><����B�nK��t��n_HTVIA֠dP0ډ�D��R��ɠ�49��2P��������� �'�����+bA@���7��w[-��<}�M۷";���_H��1O�Mό>�*�@���=����J8c���G)`�=��t+	!�aq�>,X���O�W/o_�{�����G�FFr�B�?����3�\G?�!��� �bt�@�Gl}G;��x���-r̩L��ĵ�#\�.�Z&�̝i��7777�[u
      �%      x������ � �      �%   �  x��ZKs�(>O~�k�9L�ё���l�e'9M�v�BB��kk~�6 [�ǝ�$���u�d8���yB�����ľ�*&�����	��8�%Ղ��"�)/�>P��o���W�p�޸.�M��T�\*2,�`�.�����%	5�����[��	�e�ii4��IB�b��t����8�=C�<yʵ�a�&�|N�i9�0�fY�2��8/�L�䉗F醺_zD͉o���x�&*w����p�µ�y�#��N�ˎs�5XKZ��xB��٢-7xءa*I�P?��
v�wlv�'(��Kl�z�Xrc�zEA��3%IQ�&&cE3L3���[�!�#��Bqm1��I�y*�%T�u�38���	�	��q(;�ePՏ�bɈ�;k�)�F�#���>l�ĸ����6z���O��*Ҁnu�s=��|'���N�T�U!l�<M�Lܝ;�Z���_D4�Z���F�*����o��3��r�X���ꩲV�p�Ν2 +$�	��!/O��~?y�4/�Jg4n~��~k/�o������'��p�'=Mɴ�F,+���ߍb���k���}�Ua���{8I��7U�,��`���Ve̶_�~�� �gU���'d��{Z��['�*��ߟq�xҡ����E�;ݡET���~Nh*<�!,*�>�g�ͧ{==
�Nq�"�"�u���6w�Cz�6�6z&��� �V�tĨ�� u��U���E���Xx�H�Hű(�TA;���z��8r�)8&+4�%6�hJ�
s��'�J�k酳wE�n�׈%��q�Z�j�5�ȧ��9�Z	)Σ�3�5<\oPK��"� mpτ�򎎃/m�FJ����m<C���W!6���܂AݫG������U�C}����3-��#�o3a8�A����m�\��R��xg{�G`���;N�+���u��&�n�"v������S�(������Z�u1���#]�w��{6�}��H@���DꐼX۟�ı�c�vDZ�׫W9Qv����`�Ġ��F	�-?E�]�b;�d����]{��A*'[9���b2*E��7w�1|��M{�Z���<h��k��>oء�.�<��k��0�grn� N���yPQ��/�0�aJ�?4G2�N�EjZw隗����8k-�(�"Y���1��G�,j0�)��Z���^�(A7�F׎>�&t�n�")��<=c�g�����vQ�o�t}d����L�r�+�QL��*YAPy�RE��gE�ь!5(��֮���-�_FBef��Km�4@h�x2�|�l���`�Hh�w���5>�C��yte�~����i���� �ӕ���#Fz�E澾�@H��PJW�uf���}ץ���,*�*t%��X�]w�/���4"�6uR�1�q����K;��뭶�>̳����F��b�_�p\�͐X�3�P�ת���RM�S]�߃����MozB      �%      x��}�n�Ȓ��)�<=���%YV_K�H��\��X)�YM��>�ͣ��Y�b�;o.p�b7���dFfF&��%fTD�Hf���.n���/���������ܱ�g��阤YY|.�}�'�e�~OrR�.���i��<�y����풦�Γj�I�5��I����?~�+#+~�wL��>�&�C��a��D���w�N��Ȅ9~3v����θ���׿�N��rO�2�.�ӡ��+R7e�'MR7U��_�N�]$�bmwu����,�S�$��ͤ�,�����.��"��������@�R\�>�B��U�o�]�a�HwOn_�3��(�D��li������'�9����'�CVdL�&{?�u]�[�z��͓�����>�_�}���F���c��|_�� &�yawK�C����CFE�������gO����z!���}*z���g��h���M��rN�	��5��8+��� >��3�N���<mJF���du� ^���yނR��'RU�(wgI�_�S�b�^�5��[���t5ړ��]��\��5{Ε=d�7d�� ^����ɾ�]QC��/�"KC<��16'���I����*��{j0U�0O?e�_��H��|Idҋr�z�n�����H�5����<��e�/ޓvH�A��vr"�_�3���q���G�=I'/J�]v�/�+�Jz�޽��j��� �ck%�<T���>�'Iկ1J����lOsW�
`r����H���{�)�Kfش��ޥ�U��ه�Ra���,�3����ٔ�2�~9��!xL���W�N<Ӯf�?M|���;����U���/�L4s�HF�������#�������{J��!{@�t+�X�#���K�jR����w���3���2�>*�G��fٕ���X�T���yh̳�z��o2���.������s,�P$�~� �O���t��l������O'���zNE��*�Ƣ�y�T���*�?��T�Bh�ܯ9S���δ����?ufȉ�f/$ߝ������W8M����������ufZ���~���_w���.�F�~-y�'�(�Ӂ���=����A��@ڷ09uQ�{!!��_��pIo���_��p��g����X���6_oh50|_K5VnIC�+q��
�+�w׷��o�||�I�©Hm�E�>�9|	�6��*�����"��;g��2��IJ]�@�'�b�`�;!H"�I�]��@�g+�aΪ�k�2g$�Gb;\�qO�����|����&���s 12/�5
�s�|�+(�ڱ��ٯ����������q�`�s_]�_^�����f��`�
(��N�L��Rvk�O)�:O�g]��2��")���B��Q&��dHe{��Νך *�3�p?ő
��P7 �����>{���^ķ�H_>P������0ǎ��
��r��hNUr[��m\T��"�I�l �M�8�Z�R��V�â>����q�^��p
���"{���2}�v�������?���*�<��#V�b�f�l�h}��lʬ�j�w���4ң�����$6�/[V�t��ob<�!"N��ۿ,�F:���K7��I��u�ߒ"�VU��.�Q�ڊh�P&�.�H�&kN���*�4-u��M��0p\%Q��#�vZ0�K�xu@�>�%����J�A���7a���	Y1�7x��Z���j�DAK_�XԮ��|5/�o�m�����Q�X=�QG}�d_J�Y���
��m%�}�ʞ�)$|!/��MR�'�(4�W�Oq*�|!�� �&�A/:��Y�f�;]�B�W�A?��%�NN@w#���"���Л/
F�}tY̗�
���*ҋ�KU�WQ����T'����U0%�j���ґ��)�-�R��H=H��G�[�E�%��7.`�������6ݓ�V��ܞ�K�"~ws�Wh�#Ӭ��\���Y0�%�W�JS���իi�H7�\��jN�\��R6�� ���O�^+�0�d�j�I��jj	V`P0�k���MP��p ul|Oê�1�V�͘�{k����0�e��-ñ`՘��Fn��<ZDv��<��!�9�>���x�T����	�����N�fcjc�]R۶ombtްz���'�s��O ͘��9�����������l@*3�;k�/'/��FY�t��xϏ��߯��@κ�;���#��(��&)�"�V��W��˦��<�5iC������ϯߋ�u�4-�My,��䩔�J��������g��w�g+ǯi��W�Lv��Q��C��!Y�ymL��컏�����)j�O����V9K�p?�J��9�HQ������S����	�A�Fն���b$c��=S��&�É}��qi*��\��υ׌pv^"�>�F��!� e��z`��&z�K�kݐ��$_���x����gh�P3�Z:2O$���f���NӱGO||b�`�����-.w���wt�؇�g#h��6Ԥ{\�bt��aخ�uwY��/�H�# �퍻>��>(2��6C�t���K������#~��k�4)�0l��+�����Xt��j���6��q������OF}"�9s�Ǝ�ɻ�d���c#���Nxi�w��ul�K�ak��@
(�n��:BT���~I;1)����- 1��OvbBm���>nS�����<s,�w:�e?"yCO߾��wn���/A�IGS߼�9��%�!c0�LL'���>UIQ�s��7��rʛD뱬mG��;�}��H��zIZ�<�*�V�}d�LP��m Y�6�#��C���\��:я�g) �����T�e�[����#Q�?��W�'ӑ@~��o�H �=fI���}#��c���!=����s�Dś����� ��oξ�C��B�P8��'#8g�Om���� �I,����w�҃0nY��� [�wN08�<�F����A5�ϰ�b��n"= qN��:c`���7l���"hF��"�2:sk����]d�5��*$���hH����OF��evt��f��峷�8-¼C���" ���j�����C�$���r�����{�@�OC`>�<���;����A��3���ɣD�����<���e�p��i�K}�l�娙�-�m�͍�m����"��~�J����PjVe&��\u�Ӹ�n���W��?������:'e��I���P令�N��bO�5YG�tW!E��H7#E��j��F����E�H��@,&�ǂX-�2؇SF,|:~�D������w3����� #V��ήb�����'#�-�����@?2���W�'讹*��tI�Z!�4@�@�<V�����p1���@���K���v�6�M]a�)0���F��Ez���¼i���'_���-p�|�����CW��$x��DR�i�H&0�F.�RVӱ��F�ǵ�WF$��pF>������D��TC��]U�X~UK¬o�-�QzJ�.j�c�INE����v�1���f�����<+��?�=46�
H��͔����h���͢po����:98R_���;1x����Q��@�O�^�TSf�l��Ǻ:7�ǌ�*>���Pà��G7������Q��@�r�Q oQ1�$�b���u;!�Ñ�?|󎚇)�,Xm+Y��̖��wJ��)�޼;���a��`U���u[��D� gD���ͺw��΁Zjm�W����n�ٹ\K�C,D�;��~�/����F���8�V���z���`��@p�e�k�i���5�^8#������HP)��e9�Up�m�s}�Voh�ب�p���d�m��a��eJ��=N�>5rʭ�������Q����З��͵Q'Ͷ* �pP�}8H��h��9�! ��{I�I��E�$��.��I���('Ն�%UR�~ʒ��t,wI�sOر�<��������>a06��0|2&�k�[�06�2l����h}�.��U7�`�v;),?������y��ê�g��L    �i���Y3e���h���{�f��(/7�)ٔ�r�v�f
@3\g�G�^��( ��©I;��$������]�]���Te�y�?D�j@=E�/�Ds"��<ߝ�����ԫ���蹅�7"af���s>��������3٬n��[5�����O��<����d�}��w׷Ĝ�E���������iܮ����ǀe�v��d�4�V�iz|В�GUO�i~�]Vo6=P+��i]�jb��h�>9H��1IHkͷ�CN4g
(PZg�#���սm�ٮ�ߓ�����&�	M��eCM�&�>B�q�[B���L�>i������a悑�a�g��?���UD(73�!��9dW5�(c��*�����3x�̌��;{x�xDj�.�������jX�Z�y�G�ڀ\�
��oG��:u�Q�X!P��zL��.�~n(i3_�:����j��{�ц��97c;0�
N��e��Fn���!>b��j��J�B"���DἬ#>�Rמ���П�{��� �C�����rs��p�i^,�6����'�K|CDP�qߴ�m:yj���%�� g#[�TPD�vf�D���)�k���	�Ǭ	W*鬇o 	��B��*Ocd��V�W��P0�
6�J��JD�L^�����gЈ�@N C�������F�ErU��f���|���@�}C����`�QQJ̺z������;�������N6������:h\�_�ͩs�Sr�������99�[��?�����Z��$���b����ї ��@�+[���i�%F����+�:���R�U)e�+��j_�� 3��`vxE�4�wNf�?��"�FM�p���jf� �X�5�z�%1 3̾e� >�ߊ}"k�8��dz�./��D��Q*9����"n�6 �&
���[T`R��!��[�V�N1��V��N�5��t�#+����M�]�۰=��Z+[���B㘜'tCI�zI�!;d]��7�}"4''�a! �Lȸ7��b#�����Y���� ;h[��]Ta`o��Iz4�F���/(�R̛~�RЛ%���Q���5 _�:H+��
H�T���g�����:Tr`-��)�AoUd���E�J?�NP��Ӗr\9������F&�������_�B��W1��{˔xaw�5+)���H��2R�@oD}�U�<¢��L�cZ�Ϋ�	�m�W>�[|�^m�s��a$��{�=�2�Ѷ�o�"k�N��u���I�Q���*Z���PG�M�+�����3��ii�7A�-p��a6^�����&3��oZVa�q"�O߯Q�阱���c�K��Y�*vR�R;+��� >��]���UF���~�hې0�%l��n�ZF�s��<���>��Nwpa� ��7*��T%E�ݎI4�[�`�� J�M�,��nGjY����a?�>Lf!��Z��cn�Y�(WCD�4�J�i2N�']��*h����1�khSm�x�[0if	is�sP��=g.۔�e{D����e�{;���5���.�S�`>���|#��������[�\R_7H�+�2H۵�2}G[��v��ѐ�A��;@
�c>����'��@݈<c���������gU�Aa�$���'�<��m��O�	>�"������>?)|�.rog�6N�
�;8'*̛7sA�QķP��	�`s29��D?�ώ��P3N��(ҟE�n��!5�&�sl�n���50�T(jߝJ�d�	���Z�6�W��~y8&�-�l��;2��
��2"�h`�!���`Ұ�������]X� �E��(�d'����E~�a��״�z�+����UI���=�0�Z$���ݶm�ٶqǦe������f�ω9� �	Fy>ޔ�R du6�7�߮��">�ڍ�^
�[�F�a��w�_�jѢk����~{���d�zꇯ16V�O}�} ��b�í���!��G�S��v3��}�1��zؤ�1�؊GoU]ߏxjW����f�`(��39OƓ���2�R2̲1K3>@�Ics�LF|��ּ�U@���°�~��pF�	E:��b������l��NGR=��L��`��"��b3U���} �'��/���Q��$�C,�/H] �)N�'�\VYB(*1T��b�}3֊�-���Ө����]1{*�3'};UܳN��W�>��%۟R ���u5X�n����ř�1=ɓ����l�����>
\��IE�0���!,���e�=+�!_g=<T�k���-�
�����$5���0:��� �Ӈ��пO�1����(q	(w����{�%߸�W���zĶ�:�O���o�x+�Hs���n��"e��*�GۯJ�l㒩t�s^U,��ۃypIo��£e>���ئ��F&���S���R��Ni�j"��>�D��,�_��H�F��"���ҘG����I`>���y6Є�����<{s:y�$:�H�Q�vDD�4`lg�MO�`��{�����n[���m$��C:#�C�Չ���!x�h!DU0�6�S;��Y�wχ�x�-iy�e#t?ޥ%��-���WN
 �Ǎ^��`��P�^��!�����,q��3�i7��f���a���l�]�gR�NU�`Jh�9��ϣ�4��1�,��$�0��<��
��5\�2��]�����>���B�� ��Tc��7k�VX`W��v�������{}{��P�FPV��s�� �itG�s2"Ѭ��U��rkZ�PN4�.��� �� �� p�~Z?��g�G��9�c�]�Zz��W���7��U`�?G\�8��v�ƃb��˖���ۄ
1/�U��m�!"-�Z���i��bjQk��yT�`���
���[�
́���>PK��+Ō!�+x�!�G8=A?��_n`8��z��bg���wzLaZ���^���)�qPoz"P	E�d#��J���U��:�l{����
hp0T6Z���������ֲ���	�x��V±vv�p�J��g4gH����h�K��FI~�M���6-��g,�L\ Ǭ�No���:D-��Hl����A��DtE7� #t[,��1����B��LmG~�4���a��v��k~G���%;��{@HQ��cXMK�݄yy��!E#U�t^���-۠���{x����-��xǎ��=|��RȽ128�P6�t�P�� �t}Aj�pp�����L�V|d-Ӯ&�+{p������]�!�GT��K�0�-��+W��+�-_Xem,^����j���`<��D�� ��)�B�Duk��Pt-XG&�;�Aj�R����mqоA�җzHwS=��mH~	7����dQ;A�����L��nk+�ͧ��jJ�B��~��O�92���@��E��}��t+�H��`������F��S����$&�ؑ7�aݝ�ImX��H.��}R���K|ݵ���;=�K��s
-�K��Ǜ���m;����.d,i�Y���U�(`E1�`���Eۜ,.�X�G��h�ww����.�]ق���*"�޻*+Xv4D4�P*���,u��.V�g�|�dIP��Z>�����e������i��ma���X�.�;�'�ã�ED�/��0d�]7i��QP��oC��m��f�A��3�k"��u;o��cp�tK�y�
���[\�ٸ��鍢/INo�,�w� ��*�^;'�z�T���D�za������K�HN�ʢ�{P��L<�Ǿ,~0�<�[�<��?o�ů�������ůM��V�Bڦ���dP2��ZkkV20�?a����L	�y<���[�r14��~��#.�]�>���+�l����/#�E���$�CM��P?w�;��X�mH��T�y�:��ĩ�F ���yP+������ى>Tٷ$�-�k���2l4��V#6-D��ε�Q���qF�/e�UeNmP�`֜�,�P���ۦ`ƌ�t��#a�|Nb�    +1�\�m�Ř����̰��A�zlZ`w��������=��Ym�R����!8� �p���/��?W�h'�_��R�cg� �>.�Q��oK[R��oKr��B飯�Wr��7-��i�x������*Mnȷ�Ȋ ���|�wb&_u-��sO�25�y��P���d1�*Д��;��bd�|uw��FnS=}EP6R��d\�%���*#`N%^BA=�$xk��p܎:�p?C��';����&�.�1FUx�	#;�B��u\F��f��� `>R M���i
��935ɜ*��hlU�sO9|Vh#�v@�R��&�����)�D͗�1��xt?�v��P6�zD�������(���cN`�5\�&����l�����x��%�Oe<����	�F����1v����X���]�%�ћS�H(��-�m����OQ����?h��;ߥqq��YgP|��[�@�iWW��W�	�������� �ǿ:���y��A�{c��3����C��Fsd��sO�Ya;��`Az�ƃ�i���4w8SS�Y*�Fj?-a�͌<��с�C��s��1�b�/23���k��i��CX��l�]�[;	fj�,�;:�u@�c���M��� ��й�O�r��r�߰�p�
 �L�)`����2��H��v2���%>9 Q�_�6�޶S��"I�5q��&H?��x�>�5��W��ߔ�������ၽ��n�oa��4@��r����H�����u����Rl26�Z?d@�,�@�}�w��(�x�c�o_�=:ٺ�zxk%�f��+��{�YYF���Xs�ܢ�.��IQ?�G�<g�6(р��_��g��l6L�A�}��Y1��lK#�V�WϓG� J��zwI/ŗ�JJ��"ɦ"W/�1�^��C�O�!uK�D��j}U�ģ��x�Y�,y�d��Q����,Þ�����xKRR��א��ؐ��"�x�a���6��z7~,�	U��0~o4^T��4QK�yBn���zO���6a�.�Z�r	��
�7�ي�I�\�s\m�^O'�s��m-k�\0���^�x�o���I7�gy�����@3��S+,h�R��X�:z��\	���y��*�w�@�8,�E�K���o���l#�R���Z�"�*[��F��T��5e����F�ݕk��?��3k�psLD"݂%�;K,`�|�`���뻐. ��=3��� [��Q�:�T��%�'uU�᯿zQ�y��I�FGIjb��Jk�EKL�ۄH������wE�?�����FI�bg{C͗1�y�h���!��v�����-2�f暉�e&W^Id����t.ܴ��ބ�şd�e�B�<JE�*�zVL��7��o�lF<0|٣$�}�am���<�C@;s\�c7��j������YN��⶿�����st��ľ~/�T�6���+o��J}��K����R�C�t�I<!���6J%���]]F��|�8'9k���r��M]q]cy�G�H��1oM��ۼ]�%k� �Ɉ7z�����$����a��*.�.�8ِ����y���7p��������wƥ�.M��!0/p��/�X�R'[��Jh�M�3�JU[}�Ƞ�܅�k6i!�N���$)H�?K�ȍ6+ҕ�~��������{]��q�a:�E�����!T��f��ǴE�����R���E��P��5������z^�H��jHP/��8B,�b�앞����]w_����l;���}@�c�K ?�X
߽gP�%�9�8Et�>�i��l_�ڡz�T8qf+F⼤�'���%y��O��/�y�%ݵ@��y�W�&�G�������l��h؛h�ZzA������~|�-�uޥ�q�L��Za��밮�=z�^_��A(���M�	(W)4��U)?����+�'xaR?q^N!�88�`VU)3��h��Z|��<�~��(,~�>'��h޲�o8�D���^Ǜo��T,�4oXK�����������$��~��#c����c�����+哰h�%(��ki�28$5K���5�gHf�3�����k��Kq�ff��Io�#�-d}L���YR�����EY�grU���)����J0W��A��5	'��G�X��*X�5��E����r�&!L�&J{<����t�cY\<��Ǘ82͆&��4���j�������>��'�j��?J2$����?isC�R�i��M�d���c	�n����E�5{��_8>��<��*�A���ek�rÚ��C��0�6 �}�5������@P��'��Jc�i��ǎ1�$�3Fo����X��h����l�|���Q�G�@�!z^6pJ呙pb���B�� �m�í#�� �ߝ��r~y�,SP�ߞ�u0K6��`2OA"��I�ﲚ��Ϸ�`r;����?L��N�}wֲ�ݩ�C��'V���M��Ӵ4�=����	r�	蚈vفЏ��(�Xe����w�3�L���$*9	�j�ϡk�Zknw�z����Ѷ�;�U@�􂪠n�C?���FfT�kG%|��-���Ca���q�c�?��Ma41���F��Ȅx��d�7}/��[d�e]
�e-���/�>3��4��#���񉽋���N8�V����������a���0ڪ4h�cTҫ+9mD����A|b8.�dKRk#}��TBr��(�f��o��5���6~��!�,�j�O��D�CC���*�o�����Z}���΀�ⱀ ���j�9���Zd/�E�����	`�e�!���b46�������j�1��0�°̲'l��5}�h?�I*(���׼+kH�06S�%�Ye�/��yM9�,%���Ғ����q��L$��ܻ�G�:���	��,�Qz!�|��(m?i^�".,25�4���
w���C�0��N���lo�.:Y[��.օLgO�Ӌ��	=�.��![*��W���39�e/N�����6q!�5��H�4���>��x�9�/�˜�t�.�3 �ż����^�c0}��D��PS��xz�M��M5�əo��D��֊'��R�s�����V�!� �����1>\�@�K���7�T؉L
��T�=�y�_�Co�����j����a�>8ka�ja�KR�lr���+Ʋ��u#ŷ2���M��r�aC��AĴ�2L=׼��w���q\bf�~���TϤ�G��c�O���|8��`��q�Q#���hE��<92Pn��6�k���F�`\*�F�l�zO]�����o�G>}{4PZKCv��a�3f�gA ,$#��ɳ`t"	�:��G��� `u�	�.�5|zR1���Uq v���]yD�O�����ϵ5����njnYb��a2����[N��tQ���ǩ�J:H�'�j83��*3�JYzs*�3y!0�;d&�{��/��2%ͧ���k����w�*��S�����*q��6�O���[b�B�#O�gV�3{�m�I���aõx����]����0����q@n��ŀgG����w;�h\z���D �J�6C�_�i�#�t�H�7��M�8�#a-w����v����*��!��6Y ��[,V�y��)�������r0��S2W�+��B?�f��۪�>#l��
�U"�+�p���MPi0)�hk-�~�̩\�'�>	��Y�4^��F�>"A�R��2��Yg��̫ez���w�1��SjbtHm�R,�A_�;<��l��_��TܰYȯ�^�I�L��X��=�{8K���4
��]�&45n;}��hv:��iu\nޅN�u)�ڡ)�]X܆�&��:�s�Di��GV�4'�D�_��G=�f�žk}o$��<&�"kZj�R���LY"N������fќ�Y��:���Dl<E�X����Ojȳhd������X���m@��uQ��"��0K ��*���Q��g?���"?��� ��>�F<�3`:�N=X2z�Rr���EV�Z�U�&�����!����� t  ��hvUS5,?%F"�e�����+�nlv��B+��+���h���p��(�K`�A�qdl����}s�݀u= ���|EJ����7��U]��}�r��O�R+NġdQ�Y����?"���q�a��S0A��/F�����9���J�ô[����5��Y����@�лs,sW�� º����A�z:��hv��'�8n����[�z����+�E�Y.kV�Rt��o'��2bV8/@r5�����jN&3	^����$�H�&��#䁯����h/���u	�\����c�(ca�@��ˬ�B9UU�P����Wc�W���/l��oY4U��/�ﱼ���V>VAD~_�v!�8O���C�u�޴ΌXC�vm��; T�Nb����KR��{�;V$�[�$R�-߶4������`,@���	P�*<e�R�k��0��@A���<��j$�a���V@�+��)�o�Lu�S-ӾH��/��p������u��)�Qc'ɢ���{�Y:�pN�a�q>����p�ʡ�<�	=�6�F�ˬ�����(ݒ�l:_�W��W���D� 9���X��6�A�'���n��� ��f�/�e��7����%�����}��'2�f�����O��Eό���O8 ��3��	HNfwE��i)�����fɆ���$?��5��H�mf^���(���!@>jy�{)+8r�V�����	'�ރ&�cjIf\��H`n���r,F�:�.`�����8"��5���'�ȺU�P����cz�ư�\؛���ǖ�;苬o{{��~�p�#[[��o_M8cOj��_ؓ���Y2�B9��U�d���$j�z،W.f����]N�Ҽ�¦�Ґ%���R<�WW��WF�� �����>DQK��%;-��m̅Ի���q�]�@� >���ޙb�o�zR�+c��&�_@'��1s���g���=e�R*�uN6�=A?�`u��=�-aT�� ���!ي��,k7�'�)�CN��r_����Y�|�H�N�J/^���.�g>"�p�^��r;(̍L
�E+���DĿLG��E��0���،B��Y�wBH�r�����<�Q
�"{#�`��4�eС�.aD�y��H4�QC�V��2:�}8�_F�+��|6�t ��@�?0�� {0�>���:��z5l��0 �X
��B�(���msOH�l=ES�!ߒ"�������$_u�Z"?� ?�M���7�r ����5[���_��
6S��y��'�v'�k��|Q� ��X��=Ǽ�uN�θ��-)�m�3D�1R��n�J���~�����6��      �%      x��[s�X�&�\�+0i6�Ru$ŋn��ƖIQY��(�L�ޮ�0D�D���6���6������e����O����~n "RY5f]m�d ��Ǐ��ۣW�����?��Y�����߼���k����������ۣӣ~�o�yszyr���ED_��c����o���}���h\������eq�fID}F�E�D�I���1�~�?_o�?�	�TQ�G3�_���8�/�8�&I��Q��Y:�'џ�ߖ�"���EVL�?��u��GY2N�U�̖?�tG��O<��yZ-�x�.Ω�,Z$e�.�2-�qa4��J�<�@�����+:��������{��j�����(-d-�D�x!�E��j�q�i1|���x�I	T�Y\%�w9C���P�1�ڦ/]	uq���8���G�79A0��	�f��{j���/�D�a9Is��$'he1Ol�&�QYT�pQ6����iYϹ���B��;;{4(����g;��P_O�/���u�H��)��@�%U1 ��]9�s��e7��hsqIVF�K^���@��a�q=��Ѵ��,^�����6���Y��� ���b~���S����� ��� @&AOB��/o��7���X��EW3dt�pr�|���-P�9z'��,��iV��@���@����mA�5|3	�6��#�օ��{<�m�3�DP�4g�MB$aL��ƞ����klґ%��:�pأ#�����:�R���N�f�J�Ì'�N���0�sT'�P��j.��y��g������rj�D�Y���	������C�5^�bb�˽fE>%�4vธ��bx�L6���J��l/g$i�'�q<��|�uR�A�a�	��Z�����`��H&�Fo�=:�m�8=�F�1���(�I)�����G�߽u�6
���AR=�c~t}�a���x�����ݰ|'-R���4�*}������7�O���'B���U=z�~�������yw�������=��;}s)EL:���΋蟎ߟ�st��'���ev޽?=�Ǘ�#�{�G�\\�_>�~=�-ߞ�~{�{�X��C���dQ�u<)A#�i������f~G3��1�t������>ڋ�ݍ�ɵ�gm���ͱ���gI���t�����7���AQ��Fʧ4�%M��O��t��(�9���6�>~3<#<�_F�.���Dq-���a�������=؉���&��=L�O08t��d��	��v�L�t�o�,��3]����Ox���+��L_�qcR��7F����F�e�OF;����Ƴ�:���,�&�W��<���b�c�}k�������?��ߧ��_'���C���⍈���C�A�p
q��q�~B�y�O��_���:-�?\kӜ/�X�;�e�JE��U���	�'`f��� �J�����x���
X,���:�.���d�%ʛD�`:F�4Lu���zp�e���xxl�-c�l �8���z�����Vt�3`N2�ϡ��=�q���8#.��������ke�A�TVo͑4K�j�����_���I�F�:f��}b#��D6μ�FL}]��ia�^l4�i��(uB���e��7�w���?3yp��o������3
V�(e���f��蚷�8	w�h��e���"�X��_I��Yͭ��$�xr��j�"^(�4�1
����+��Mg��6������6���mtRA�>O&IyM�aQm�Ƴ,Γ����S$�XW��'��j��@2S�J'���M���7��@�ݜ��ş��Ͼ<�}bo�?(A�;�ħ�oSzO�7�I|{��ɧ�	��|V̋l��4<�����U@Qը����7Y��q����� K��J�g)�Tx�v��N7@tb�y�����y�_�KvQ�X�5���&�PsZз���UB����j��E� �`�T���s�A�e�1|{v1�p^P�bAT������ J㝇>����c������`euqX��*Ŕ�.�U�(&. ���/�?f)�G�����IKU
eX�i��2OB7D�e�ݩ+�,fe�~�Vs�f��h,�}��FF)�c�&I���'%�ibU�I.�Z, !��	�!u��?�%�(l�@fT�H��`��*R�?UPgW�4)�%��W�~3dX�A����MRa�=��cJ��1�����T��Y� Ne�dݲ-2羲	-��dN51�y�$���p$�q�G�9L�;I��	�i��0�>4�/E(:�y?|�'f����S=v�A���#Ax^*UQ���%U���8�N}�����t���k:P�l7�dD'F7nO�Ľ�p2�,cl4�j|Χ<�N��Vs�o��[t`��D��0���%-�y��](�Y]�D��W)���_P�HG���w ti�#�|�$����N]���C�(���7�'�-4�L��A̛�Q��H�u�1?���R���;"ޓ�o�n0R��@�A�K0t�s���,���۰�E
��Q�>Y2^����_U_0"�'�J�Y���ӂw��PyN`ePK�'��օ�U��{���^�[H �	_�㣛`Y��|��L4>����u+��+��$D�� ���%�(=5�b�T��,͋��Ĵ]Er��퉙;͙�����t

&�ZHM���|ZE�A1+�Ίđ��ڼ��1�{깪�$΄$�Jt2c_���){km��i�rwߘW���(T��� \AyE�J�!kV��T+*�VP󆥹�cmzJ�`AWU�Ą�똈}YJd��W�nGop\0�'�4�'9Mw�CnxI��\U95�ĥ�.
��n^Ƃw�'J\[
�����rVҥ5-:΋��-�Ӗ��X��A�;�3آ	�5I����fx�]E��`��T��j���dM��2�o�ѽ
؆��xM�o}��o��w����N��Z��#4�~�Tv���6����PN�F̖?�w�ބ⬩m���̄~%�	����=�g�~E7��⚐�`��uF�TY�d������}k��M����!:��w�[�*R~9<5/�:_"�Dp���Y�{����M�����"�iRM{[TZ��5o����^�wR���6h+�6�U��ynV]#)Ӻ���݃?U�vxD��:_��_�HzN��~�G��U���E��7�{�5���d�[<���>���R�4)��hg':4��4;�JaGJՌ�}1�����RG|�zB���Y��LԮp�J�zl�m���a�k��RA|3M�e�O���W�'�=�N��O3��������d�B���qC�X��n���M��E?o��I�#i�<��wۖ��fEe�H��@:!�6�������Fֵk������h���zT���Ч_�Q>��N���鸘���8���&ڡI���a7;g\��0��Ͽ��5���eb<�>:�N�"=��Oq��)O�eq����W8�%�x�����#��Cah�qi�\�T]P/$�A�#h��XP�-%�zAB{!�s"r�T��@y�M}����sBJ/�!��ĩ=���<������V�����wR����������^�)�,�'��5ˁ "*x�� ��[���j9���C�E�%����Nt��Sv�a����p8�9/��8���OP9�����}d����C<N�I�np��͞Q��x��qc�]j�U�s��b;�H�ۋ���髣�����t�|�o���Y"J��q�H*�a�Et|~�T�����I8�;Bz����-Jy��@@׹��H��-�����B�;|�o[�99}�q�,-Y�	G2�ٕ���T�DnK% U
@�GZl��D
�k}������^y=@���B�/� �=o� 	����̴ͪ&���������=�����\z;D�8�����9XI�1{i����m�el����`�o�Ƹ�3}��(��d6ϊ�ߝ�]|��`o������{��݂��8��,^w�x���S���=�����"��_?{����ٓ�g�{��_~���'z�'�c��7��$����=�xN?ş���ǿ�x��=4���f    ��������ǁ3�!�ܑc_�3}S�t��?j��n���-"Wr�(h���&^��_��l^�+i^N�V?h̝�5'E�^�\>^y�j>^n��v;'��I:]��t�7�,�-��V
'��}��Tn����״�o޿{rt�<f ݵR�i�a��]s>n*��p��!��J��Yt���rOy���Pv�}7<+�|q��60/���<�h0�?E��
�`U����k8<����ߧq �l��p&�@�@N���c<��\7��e���ٸ�v|J<�����c�lmNZ��P2.}��=�H!�qC����1�^���cmm �C�v��U��tC�u@�mLY�5Z������ٴ�"�ڮ�&�+���]����E��i*4�U�v,���4<��P]z`��}�"��|^�'��"��q(��/{�rM����o�#ZA,���K9���ߢV��A��_g��Hɒ0d�{f�{�a�⢛��7MP��y��+T%&��ċ�ǿ �[�D� �������='�6����q%I��*SH��d��IC��F|>����L�v(Q[�c_�c���f���U2m�Dyc»�O{���C] �c���r���e�l��=�	�Xv^T{�%��e������2�)bUߜ^zw����n��y�o��~���������"z�N�0��m�룅~���+�4+F$�6e_������B����Ͻh��jKx��dx�����:���}���ͫ��F��ۧ� H�\ż&�A۔e�m�� ���Dߧ�cށ�D�ѹ����q�p���4���U-��Ƈ�Z���jed���Hj3�`�:WW(�E�Q݈�U�z��:΅x�'~��������L�,F�*J&�����KH9(/��KD#`,8�~u9y�>_L�S�ćx3���1{��Y�g�ýy�KӸ�h,�����]��5����+D�#�oA5֍� �M��,k\����>�U*����{���r���Z��%�� ޅ��(g��H`��
k$��]N��]6�� m�y�\�]D�˟� �ϊ,���?��O�������Y�_h�C��,�ڥ�𔚥��J/�,'�qC�81�]�w�.����f�Æ:�0ʴ��*�<kG���@�siFh�}��38��F�d.��WY��Ρ�;�����i��UG/��N�Q�-�ۤ��2��'��5���񕵮0[-(�\y�x�_�����7�nm� ���Uղ��S0�L�.��q�d����u�.E��a�S_1�:1<H6|� �z�R���ꉭ�Yk��5�ѩ�l5 4�08(�Uz�/u�Z0��+�X�n.��cH�Rk$;�z'�Fb8:�&f���;a1}T�������h�j����y�Ѡ�&��7瀿�I���t���ф<`� ��M��A�kĀ���^f>�?1o�ȸ^��<1k�t^C)��e���`y=�j����P��S��޽}/��t�d�u�����蚮�D:ײv�e��.I�[<_�h�ʗ1.����Flt�2^���#~1R�1�|@���T������}ؑ��<�2����Q����/+o??��5&>}.�{���N<��|����uZ��2|�jt�s��B��3�\�A(�p'	-���vgN�f��;к�/��=��F�]r��TA�Z��FM�'��(�I_!�M�O8���<ߗ)ͻ��OV�oC�6I��_޾Z��ZI��8��~�I�?�㠛&1t�:<��m@|��M��%�Bh�YAX9J�!�̽|t���Zn��p$͕w�rg0-B	,�=�Q:���Tl�'��~��(�����H�t������J�N|�L�{
]Sn!����-�玮̂h'�c��4N\>�C�-�h�Y��z{'񤒨c��#:2�ܻo�E��"̀s!O������N�麩�j��/�6w�y��ƞ��U���t6DZ2v&������l^U�x1I$��ۣ�EQ��[Hs���ų�n/p�y�Ȍ�K��@]"��G�0l��䶌2��`����`\jA�X�i?V��m���U�P�a<N˗rU����63ׄ�Xt1N[ܸ�zޱ��ƕ������-�x˱6i�g��t��;4�E"��5�C�i3g	گ�(��e����z�Ⱥ����/�y2I;.��K��;�Sp���^=z+	�Q�I�/n�G�N$��ZB�$��;����*e����~@���Am�~g'��f��P�i(jV��Y��ςE��ͤ�m��*�bW8�C!q����l0#���1�����^]��X����@�y�Yڻ&�q7㙑KM��Ԁ��?]�D%ř=U����4�E2S��D���?v��J�1�q."Vf�Ip��4��R�UD<pV(.W�_uCz 
����C���	[I�Q�F�n���o����;ڟ�]�t;Ʈr��B�����s��Ha�����j0/�	��rR�9|��U/Ȧq�s������d��ꇀiȯs{����Қp��34dn��{��ͣ���cW-��;#jd1�[V�M;@pF�m�"�}fʒ9g����gBt�2�W������u��F����������w߷C�p6�Ivׅ���q�&zU�9��/�RVo
ϕ��U+��Q��u)��n	ϯ�<����SU�Wt�!�yѬd�v���r�!�LM����L+rtSo4�V�8m� �\V���`D����H�";p�f�DjL�h!����Nt�L��N���s��Y�yJ��>�E���}��:?�d}ĺ�U��wu�H/aZ���j�\R**���Uq�Y�TzD�Z�!��U�>�{�2Y?�!k7zh��M�%s�U�tLx���v��YZ����8cX���%;+��O��tg+�W��;�ʉ��v�g�>"�Z����x%��%��Sun�1�����Sl'����Zp��������6�W����W��j|����tt�)lc�;3��=g��D���T��c�6"΢o�1��0�zV�MC�lt�TH�_�����/Exi��~�L��zH���lB��Q߉.jx�	�B�C��7|�V�Lյ��.Sb�����Z���>�1¯�S��ݘ��NMvG�7��3�ڴ��Gn�F�Z�%�VB�9}�(t�L3����6�U躸x�����E6�C�b��k�������ߙO���M^>OL���_c�o������,��%]ܜ&�?��xb��s3�f�#��S�"+F\��
s�.�����6�{=�0c����4�l��N'~�kQ���+x 뱻��u�z݊����,1�^�*�@oCB�l�'���H��7[�In�;��_1����^s��K'z�QO�ylq�Ҕ��;�\{�m�k}٦}h���=��rK~c4�dBM��K{���X|�5��^e�M�څ�jW����s�j�I52x�!�=^ژ���܈ϧx���^��D��\�R�����`�kέ`��j����3m�7�ٶ�p�7��Y��F[�H��*��j˒d���O;R�����@/Ơ�v��H��!���)q���1��j$yu~��P��W�c�$g�2P�����Ї�hW��U7������v�b��{e�)�$�$E��!�:O?3q��1��dب����\�����8���;>N2�_a
����2A��Tk��z1N�L΁.����in0��d I88/�u2�+��������M�ݕ�z[%D��\����p��|,�t� d����eӲg⒑ ��/����ւ�u��Ol��ǖ~��h}n�N�[W�Գ,˦QO�8���N�Y���h#P�
,'�'�v�M9��{�,�y%ʇ�{p-�Z5͕�7��)����d�n���Hn�ޚ�c�����6�M�  =?=z�p�KY��l�f	)�Fw��8��!�k���d�t-d��#��j�3X�})
m�ޤ:X��yaL�O���;��A>�dns��(D]��uVTN��P�0���]8�)7�Yѯ���D��Rh�"�:��U䅧�CY�E�����!B�o�Me�t8�3��\s��^�6R    �&�j����;7�\�9��Ѭ��ZLW!��h�!�7���3���������"�
�u�q?�(q��>�Z���6�S0�%R�poo\;u�?���Ì�����1��=��S��|s� Jg���ʉ���@{W�N�W�*K+[L��L;�B���y�JF�q�Nk��$e�oZ�dE���*�3��ό�y;_��<���	��
�����E#�B�2f�������_��aHm�~^�+��ɽ���X��<LG>���_Æ>g��	��)�@��k"��[1Dl�B+�2�p�$a�u�g��$���r85�B򉣦u3�cL2�a��2v=����&&�y����qrLԭz����vܔ�t"C�E�Dp +��|Z*��R�<4�O.	}�?"s���<�J_�Ё>��{���u�%b]q�2?e��e3Zp��Q\Ţ��ԋ�i$��Y��C��6�Y'6�����U�U��c�Q6�S��!�ꇫQ��i�kլs�p=x���`wG���#�Ӭ���9냋(v0�lu�z9�ܧ˖���M���reg���87����'�24bS9�mLv;�R�f2㹵�Wc�Uc�
���L�c��s[!�[�%㯟�oo��m
��9�-4>[�©{n��h��n��eu(H�9m���.i�/l�����5۵�M�_يI�\�x�5��5��u	�q��+熄���8�&O7�`����������9�3���/�zv�ڹ1�f��~'����Z7�k��wǭ�P�߷U��1�{���(՘YB��םp�6T�Ĥ�U���&�8�Zl�Ȅ|�Z�+.fm�Ɵ��8�S��Ej��0�sJ�+T�m����P�NL��Z/��v<m;�l�\Pg^.���m�ܤ���Ur(~qe���b�m�t\�l�}7���]�&����H$��F<�Wm�)�Pf�T"��<e?4�i��b,1�I�h`ƫ��v�ˮ��7޼���V��My9c����y��џ7�m����W�	�s�����Ŭ�Z���'�&�z��a8�5l���ŉw�W�o�Eps@8V�1�u]��Iz�d�u�kn{���q��s�|g�J]����ST;�������ӄ��U���;��[~�ᑒ�$x:7���D��n�/�L[ׅ��W��>���1������׻O��{�=~�����������w�|5<�g&���˷�51���{�џ����f����]�#q�bPN%�.�]ճ��/:�0���|!��_������3U���O�%�͸ ����Er�fl���d�9]|����E��H��������:�`]$%(ʛ{�X������dgw����Et�wgo߻��?�޿>9�<�0_<��}꾸D��2z�����sm�����52�uR�N�����Db9 ���ݝ�=i�4����u:��O�G�
�?n"�M�����޾4���i�\[Ё�$z#�n����^}!�5?(C}�n�a����������j�"�Hg��A��U7���~�Pԧ�����~�	-^7�*h'��2���,.�o0N���˺���$���??����9�q̉��o��+��`� lҙ#��WvE}2/��R<A���$;Q,�aZ%˿h"�4��V
��v|H:��28�*b?{t={!��8�M���@��c����#9~5=mL$bogo��Y}�,�q��Y��v.�mL�1f�Lp5�3��u*�o��njD�Ґ�a��=u[�jb��#�S�.�n�f8fV/#!F�9��=��j���ʉ��n#q��Ldϗ���kyUd4�|f'۩$����<�s�0P�$B��nh{���9"�Gy��C�oV$���G�M�*m.[�CE��G�k�=�L�����2��@z�����e��J�ȓ�xI���I@pjY@����D���_8�r�Yg��ǽi�����_�-�+�Ma�c�y/���%�R�}�_��m��|���NkB.�R�#���YЙ1�iZ��ыX2xG;�N�9����bD����I��ϟ��GL�h�^�ٿWʛ�ah�Imu�21+��,�Q�h����Ś q�T��y�0���`��:�&%Q�(�`?w7�póGb�v,)��zg��v��4r�A�b.���=�Td{�"5����=� Ȇޭ'b���I~'��Y�?�q��\�G�#�ݜ��q�vw��H<a�Ƃ'�����-��Da�a��tL ��V��2�!���D�1F#ش���Ib��Q�\��mO��D����2 l u�{b��Dp1�?�����M�ީl[¹��_�����i�_c�."�ӏ��tWz��z0���b̯Ի�J�6�E���X�[����_�]q<��-�d�$�O�����t�R��Q?�3Q�zZa!� �B�ȵ�m�8.	p&�&w̰��<a�7���桯p��0��
���p�mH1�ʧ颞��ͬ([��ۥN���oLC�������,O\��=�Y��?��h��=$�;��`��|FǍt�4��SI���F�S!٦s^�s�N��yf~�9=���8�N���*AIfƓ��Sf���P̽{G����;)��g��iE�?1i��Y.̊) ��n��� �?3h]^��RQ<��F��?��2�墏5�	S�X}�űf%���^\��/���b��2ݝ�r�hda��h����"<w0;��
��!����&6�ぼ�,?ޤ ���[o�!������"�1����x����|�~aOh�6�W���G��}��f���K_���)��g�AR��a�</����KA"}�!n�t�����Ѯ�v��A����7�ܳ=*����Q�+�������N� b���%�8�X��=ۡ#n��H8<??�_���@'�:Y��?i���!��x�����<عK#>;P�zn��phH7��ɽ�&���6����8��@�Ўb�$�Z"�R�kW��wo:�������J�u���7ߜ��������G{���E�߿}�>:x���������ͫ��4z����[��`�P����3G����x?�)�]Դ}���}���?es�ɫ���W'o����у�z��.��>,������!���7��e�t`}�vߟ�_�.���������G������z��~�ӊ޼;{~yѩ.J���Jw�Q��[�o�]~�\#�If?�|z&�7
6���xx$/m�H[I�#H8�F]s��W��^�Y&��[o���4�ǯ\C}2X5�	�r�>�W�So&�y��v�-O>u@m�A=�D�͎�r�~f�Y�͹AۃmJw�iHH�ͼ�8L���]3��|X�D0�T!t6I�F��q=JY�1NJ�$�.�L�$�&� @���_FW15��(E��43�T�D�*�Q����)���&1֒�Y4"n'�����J�=�dŜ~����g�?�4��.�����3�+JJX 
����e��6 �����>�X���E��0�/���,�����������\�ӎ�?�p�t[.�{��� �|4ׯ�Ev�8�����cُwݣ��[)зq6�l��8C0IY�dǼ~k߶�M�!B�îA��꒕�R��ٱQV��Qx�;Yf�bC\�f+:���3��d1}�]��R��= �nsX�:�f�0E�
�X��!Q�p�ѐ�~�3�"�u#��fՃ�e��'Y�Y�T0%m�� d� ��(,H#Ҏ�Hb��8`����̾ݔr�T�l�:���s�Ѽ�OH�U��]�Y���Z[��	��0�y�0��r�`���'�
��!,�l��8�5��
P���m��=:.��#Z@�?�
Z�ȧN���m;<s-�Q�MHSKN�� �H�iy���ڄ;���t��b�z0�����u��r�������\	�~]ksX|��u�5��_��m�{ ii��{i��_ѺC�W��Ry��P3�;��}�z�,���1y��64͋E5fsI�<3e��U���kBCְ������-���:K>�׈~-JX2h���K��ř�z��    ��{r��#6p��,����}uu�vՂ�	��pY��6XW���;ol��w_�d�.�@��#ή�\�`>��$U��8X+-^K��
q}�U?�X��5���t����)�*4F�\�;w��A/V���^v��߃b�2�iE>��'���%k<�jZ����<��)�,�L���8er�,�����Ȗ?�LF"�%��bb�]wIm����~�ڬ{�XU�[7���ٖ( )8d���"}m��Jܯ{���ْ/��O�Y��:g�n�e��5{)���!#p�k>�%3;0�}�4y�czgl�ox�G����_��f��5���\0v�P��/na��)�鵰�!cZX���9Q�˖�"��Bw$���7!�to;V���O���d��d��ɪ`\F�r�GQ�كw�ac�+�&�����륓���m@���Eη����p��l����IU��qqb�p��qӫ���V^E	�܋x��U���W����gn3_����k� �V���k�سԜ�q^gs��@-֚�QES�>`��.>	TL�P�޶�x��dܢ(��fJ�c���+*<OZ���'NâXȆ{�h�LI��� _�6��\��[�i����u͸���2�[I�y�|y��Esuw1n7��Y�pp�3U�hog�h�$Q�ޱ���U��aUo���-_gn�g��ᢚ���<
!�[5�{��=����пOƷ��--���|����=���.e��9�pbj��k����$�����.gIl^�����Н�6M��tjKn{�x�dC2q��'~���c]�H�_Ck�y?�&�Sy{���0�X��
�d�X��:z?�d�u��z�c~��ټ./�����m^���e":�5)�\y�7��ZD�r����S�p�PbW�:DC#��D���u�:.��o�X7��v��߃�e�R���r��`Aw�{-H��U�+Y���ܐ�����6��ݧ~W�Y�9`L�w��DO%�ɩTc��)�IR�ǻ�l�PG:�q��j"%˟Xt�fp`ow��F$���X�GH!��϶��c�=MG�W��ݚ��E����iSK����X�=�!:��Gy�/��.��!VsP�/`N��tT����	��A�ti���)Bce�h����n�1}E)qb�}{Z��Կ����g=#2=�	]&�Ϟ��Q�i����e�p��t�P{~U��\x蛏�ŉ������N����'��/�M����(U�$���"��������w�;�z�8��m��d6<�]�iBk�,��}pb1l�b^N�4����%����������ï��ZP>6�#����8[l��X1���I�����b硽�<k���D4 ��!a�ޓ�ݢ�I��"��=A+���,zR���z�˾Fw'z�a�s�ts�,*�N �8�樘��o�leL3��w��Ъ���B��3���򛨒\*Up���x<N*�j5�����
��M�)-V@-��+K5I*�{NJ�3�c��G��]a�X�Uq�b��d0��h�>�������x��� 
�0Ĝ�S���֑$KL����LB���{ �ﬥ%���Ӎ�iO�1.a�B�]�r�nD�����uJd_�ѼE�y?3�/��#5:�����~�y���M�, n�u/3��P ��QX��F ���]�aA�Uܯ�Ŵ̐�k�y�Z ��y��@Γ�x�<��%�Ѥ2�t��}���^�gQ��K
��wѠ"\�ߐ4YH���cߑ~�lI�:%���ǌxѱ�a�Fѳz��pa�q�P\lE�&�/��$^]��j��nlH��E�>�q�R�A��Q5���	"��D��X�t��:�[�cYƆ��5�M��d��?�e�������H����^��%*p��\TU�h(v=xL�4�ϣ�G��CfSV�{|�D�2����b%ݡ!Ovi�y�IIW̓��]Cbq��
���c�rhU��Ĉ3���5MK<��+`�@���i"A�"]�H�a�Ya��9{�����'B�t0��leoA~���{�!v�6�����+�A�1���9�3������	�d��~O%�H��e��u��+�O��q����k��9Ix�z4���fe.�LP�:=Q\�䨫�����Z�G_��dn�m�mQ�(��}�eH�s�"qٍ$�D�%�ag�z^��`U<�nh~� gD�;A�>ԃ�J��{���c,��i�|�$��;4���ml�c���X��5�H���3n�E�~.rq@|p�N�x+G�y�+.H� U�x*2�+D�/���6ѳ^@��&N�1@6�ٜ��#�T���$��Y1��m.��颵RV)��Z���+4�$��=��6OFD )M�,.�	��B����Ђ$��.����������izE�[v�������w�`�]���lZ�ƑR/9�c��@!8��ؔ�8 Z���i��x������%��M��_ic�;7v�^.r��_���W9�j������lg�ͩAV�2�1�[ڛ��n���y"�ۘG�g�8���^�=�����۩��:�Ը��� �^L�q|m<���/<������5B�g]���*����x�(n�B��,���M�f�|E�r���x��[�!����5��w��Npn����0K�0�a��Ly7� �i]�t�ag��0Ɋq쪂}"&����	��Ko���A߹���F:��Syc?�f����B=��E��{.޷�t��gd+}��ͱ�.p��g�p�LSvH$ɉ͙��Ob��$�/�dX������?���i|��W�o!P��;�����D�����YԨ=5Q����Z�	%�%�Ǚ*j�0e�K��tTjF���d[��+���~��|ZJǚT�:?\���q�P�S8V/"�j�H̄��p"�8�FA\A\��ۄp��w�kM	�Hn�̉�7�^���p�N��5S�\k��P3K2�GY��s� <l�u&���,�c��mr�z������y��x_�?މΊ	��¥� Z�KS��X5�5T���)NÏ%.�Zh-Z���F�Q��o�V���\�C�||���Cn��Z�	`$����h�x�Kgs:��Q��I6�/�k��v#�g���m0Z�AP�P�����d���*4�V�dlpY�h٣B�rvy��%�+C�2ou)UX�P��]CсZ@㢖�S�j�cV=��8fP���)���uv7�f'zpT.$'qt�x�xt����ѳ����E=X�A��Y�+�I�O[��+�x�Y�XTR;��{ć!�ܓ2<����|�:T��]��6�
�˔��J���㴊?ڗE����I��:Qn��&f63����tZf����mF�r���V�f
f@bX��.iRMNP�.H����@��)fv�p���@5�6�S �&���i�l�0�UB�J��QO�Qg��-h��ȻoV\z�|w�KՅ�4�y���(�b���t�*��G.��g��u,X�^�d��|����T���?	.��kIr}&E�r�tI4�Dݪ+:ğ�z��[��q��-%j�G1��#�" ��(�7*� ;tn��¬ r[��(&���`2Z9c���.9�K�%`��p�.
5\���'��\�q% 4���'�n��qa�ʒ��}�&QEϓ!�ZA	=��_��$.3�C6��2!h)�e�І���ZH��VW3�|�� �fqg�u�����y�	�#� Ü,j%������̽n��ˍTDY=e�*��
.l^J�Qw�l�B5��ͣ��͊�ұ�+�]��<�����X�]�i�a&����X�q�HM&�+R�c�"e��bC�e=���j��μ����(vl�2O�%�~h��5RP&v�/% ��M��&SܭY�V����2ߧ�8����� �RQx������Ża=�G{&������^�������mM�F�J��_ ��'v�pRv(���-�B��劰e�+�W�Q�SW�T,�Y�
��;�`^C�'���
�yS�%�z�U�2׉�~����5@C�q���������&Z��`*�P�@�    -{L�RP�d���V��E����v���ěa��O�e�s3�%`��0u����Zf�G+�OZm�1e���rz�5���I�z��r�����uD˄r�
j��2�l�|洤8�a��t�A6W>�d������?�Yr�\A�P!ATRձvu�ϵ:�TH�d�8_��S��azpW��c4_g�J���0�ǫ��^�_�:�5��ʄ/�y흈&5�U&��/�M#�"�!�c��:���Gw���:���O�ԣ�ɵ��0q�=YAPY�иt*��X]��퐐&!������f���]k��<80)KG���}K,ezt΄�	P�0
��X�-z�R��0t�g������GvD:Tč!P�Ҋٟ	�$�jb/r�u���<7�8~�g3��T�&^���ހ]��U ���:6� �B�>Gȸ��jv�D���&6���AE�Ԑ��Г&Iؿ+I8iU_��wE>dڻ�a[U��&e�%��ꉷy3)��͠i�F\�(�R�8��S0�R��_��Ӟ��x�9=���sb}f�/��DY��e�)�:����l���~�v2���PK�3��['."3xA�:$z,EI�Ɂ� �+���)Yl��1����5��ɣv��s�ڢ����s���J9���$̠�����7r����^j.�d��f�����j�`�����`���AEU�ɜ�h�U}�m��X̾� ��(�ҝ�j�Ԧ�Z�~H9��$������\K���y����ƿ"������V⮷Y�]'�ʝT-�c���M��~Ъb�E�]e����L]V�V�/��6�jO�yǂ����a���5w�n=L[l��0��������'����V�g:��oZ�ko#X��D\�XBL�������5 ��$�[
i�EJ6vƎ�7�U�U��m6�>;c�\]�a���j~7<��V�����o|�5AЇ�-�'�Hi�=�,�S�xv�E=ŃH��G�I�[���㍯�;,��[�PP�o?��gv��I$��N��kEMNF����/L;�<P�8��~#�#xjL�M>���5�r�����D�<5(Y0�G� ��i���	nǘ%^���|�e�9��LL2����:�BїA�A���U�Pꌯ�O|��3�z.�a�c��M�>@�tA�<�	b;���+�Z��d������*��D?��8�4�ό�%$��<#T���ao��ƒw��8'2���Q��^:�������A�Qx$[�[�)Y_f�b����P,��K���cA=g��:	�r�#���A�l�76g}��l�YZ�g��]�>ش�t(���~\���.�`g���#� ��7M��������+��:;F��l;t�� *m�]y̚��C���i�}�64_�p��TC�Y�{kJ��S=-��lW��+���ê�����h]�&�"�<�Q�5&��B,;���Y(�]+SS�����cn)~�Ǖt%����=`^X.%�H����3^�2)��v��O���/�]d�����>�9�?O��3����?{h��v{h��v{�����/��������b_��}4�G�}4�G�}4�G�4>@�4>@�h|�vhw�v���1�=F��h�=?F����1�x�/���4~��O��	?A�'h���pct�_<�O��)?E�h�����S4~�v���34~�v����<C����9�=G��h��>G����9�x�/��C|q�/��!�8����_�C|qx�;�{����}���������f�F��b��h}��:� � ��34����Ojw���!�<^��C� b���>�?4�!��8p�m=��⋧�����D�4yN撗?�9�V�)�,�kċZ���Pq��i��FeF�e���R�3�yҽ��W��G>��O��P�;��K�h9�:$�H`fxғ����V\�>,��I�ݑ�L��˿L���QK�eۯ˳�J��s?[��Ǫ.��m������:��+<B^�n��PG���b��\� �iGj����%(r�8_H��#�f0�������j��:a<���i�)��`��M�h\��c��%�ڌD�2���c�V��Uo�ţe���MH��wP1�eS�8Y�M��v�E%Y�>�}�a��>����*6��\��ֳFya�� om�kl�'�Q1���t����t4�ѐGO��PH$�B��c�c�Eg^�� x��sPR:��yQ�W�'�sW�������1�иz���(f��qlZ�ı���]�ɏ>n+�ͥ*� H��C���g�M������>Y�0����*�u{�V1����8�����g&r�2Q�7��b�&~�9�5|O�&��sq��{�����6��g��a�Ò�l&�Q�ٵ�3�.��xR���"x���20����Y��b}#i��$�ZV����p���6�U	����,߻qFx���7�S�̺��5�$0�]�N�.���e�D5�.:!d%�B��ti�-RC��0I8�U��
{uP�	��������� �di�`�7m��Ǚ�sPY^�{5V�T�zM*d�!Xq���"��V��NM�#��3�����UX�.j����q.l
2��e]��"�i�^�SK[k��J���
 �~*��m��(L2�L|�U��o�f��Sh��_�zma�r�����* ���R�i������.lA�<�XiRT�r@y}�;w�����{��u�>��GE�n��u�FM�Y7ż�S��IP'�Q�'Deqr3���������!;$�Q1�S.M��B�*������{��`�?���9��H��m��^ţ�K��C�}���~_��'��4B��� H��}y:�POe�5ZG��+�͇���ǔy�=7���Ϗ�"l�$0�eo����l[�4f�K�R�K?`|_ձ�-;p���9ua�`���bn�`�����caN����v/^D�8��je�B�$PQy����!�h����{9�9��2�wCW�êM�=�zx�_���"���r|H�<[g|��� D�F��	 3���M6'��#��*�?��;�kᰦu����Ԍ#nEs�φ��PҐH(ͨ6�^�"6��Z_�5X�Rq��Q��I�G�s��v�h���~�~�A��S�X6m�m��� J��.^rs��,w��6���܅��"A��Q\Iu ����D�G��Q���C6�Dأ1���w�[ؚݺp���ļ��w-�֥���iU���P�P����5JX������s�؈N M��11�c�
zg
j��@[�؏�hY#C�����I4��I����_�ŷ�k�U���f�}W�(�E5���;;�|fjak)Qo��¤�t�h�(mPe�WھH��.���&��)���E��5��X�|�4�(�]�L��z-$[��71��v�\��w��@�'0~�2c$�y)������D�OY]�b��
+"
�L��U�`�!:	_`!�fl\-A| �k�'i����Q� 7@e�&�f�V�G���K�ߙ��]�� ��׭o=x8�Ka�
�+&0��{�dHBk���so�bCY.VÇ���!�4� ��@�M���%2�T`"<��E)�u�z[,\<.r���9�J4�� i8<-���m��=�W"���$y<�I��3�nE�\w^��@mR�_�I1�mw?0+�r"�w5��sa���6������2����J�6uf���u��������B��N��;1��QŘ����g���P��	~Oq5nF&� {�U1�ʔ�$OĿ�mO���ÑK;���b��!�Y5�p�&�Ic΂�L�a��[�0^�^ŀ�i\:���=�$�#]ՈtΨe��*��t�bxK=�\���}�
*�~o�����(���B�4��`$�XY$V�-�7�����@�g���/`��#p�R@^_�kݽ"�
'���x�Mr7����Eo
�,�b�+�T����g^z��W5�!�IFH���q�Ub-j�t�s�}�R3S9}f�vі_�D���.    �;y��yP3 �d$$!�N�Z����O�&N�"aݒ+�$�E5O5�����[��&0(�%"��J� ��4�-̥��P�h;R�r�@b�-���e�\/,L|�Y�;H���_�8F����,�g�Q>O`4�Q8�!klVŞ�{��I�T��-�����*]$�V^�8v_��H&�`�ގ� ������f��{;;0hg$ig�z
&O�uBr����9*�p
���ɯ�s�P�MX��S�54/��n��'���ҕK4l�#B��$��
V:Ί�f�3��������M�7�1�vG�Ké�+s�"�f�x�(4��M��HJ����U�e/�/-P��{l9�5.���q��7�<j2_�:�O��p�ijPMeI�h���z�9f�4���@��8�����%�9T[�2�m�6c��R�6�s�l�@"���A�j8q4�.A�g��k_Y7�������0	���Y ����P��yD2�JJ��=�����Mc�=5 �� �=G��a09w_L�kMo5oysb �\��q��lJH5�Z%�43L�	_K���G�)5��:,ؖ~��{)BA!	B��T��x��y����j+��뀗�'���e�4�k+9R�m�B��ɵ&&��5��8��2RVQ��ڀI�+_C��|~��
3��)Y��G׆�IrdKoD2���,�!BTE�ӆ_�jЪL�"�q%��E߷=U�зA�~��A���Dh �hg��Hc�<��7B�3���-o&ţ-��U1���0���B���n<�M�G���������' �@�j���^����-�V_�U�}Xi�M�9�Ī��2E&���r1_5�����tĩ����s�Qȏ6���hc��x�q1JJ���W�u"������-䴃GV��ڽ��1���} 38������(�y��������m}�u��D��}�+}�W5���6~3��+b����WlX	,��1����
�c���']r	͢���M�DJ�1X���;քg�w�R�Ҧ�-.X̋�6v��{��ĐN+��w�P�T.�Y�MRj�|fe}:��>�d�9�'�n���c�~�^�)dRx��c6�{�)�TÀfL��z_��,�,+������r�D]L��l;&| �
�"]9N#qQ� D �L4�!wD��=��$��� ��j��Ɍ#; O຦DB�T�G �t��ј9b�C��D����Q� Lڨ"�q���G청��T����
Gm��&�bЕ�E����W%�x�K�p1��׈(���̬Y5 >"ΞOz_J醞�$�n�2P3 �f�!����&���XVX���r�A�S$n�z�/R�����C;镄�[�T�+$5!�֬�0�N���G(A����51��U�L=�E �l�����{�tPFe��8,T�3_X�p��O5l�R#�C�[FLhs
��g͵�f�C��Ƹ��'<���g����{>�q�	{Q	�&
�<�Yl%n\�X�
��?.l���WԛXjms�u�F�y�f�AD٫#Z򔫐�6����A�舅������0���ƞ��3�C�<���9����=Y�T���:=�U���'�Q�6�[V2ɉl��¯�'�����~��0#i�e�*���UcJ�司�=�<� ���8H�>k��),��/�aD_J�����8#�lvnb�7U&'� p�O�9@��ku������p�I�,UcWVE@Q�zY��&5�	L��i>͒JP���	u��'\P�z�b�g�+��R�K/��nK�pW��n����уq�P�YQ� c΀Z2��)�z�𐓝V�;���ψBC����B·\lL��g�����b�S�m���~������I� ���O�P�k��Vy3�����0<վ
��|Dl�lS�A2��;�B��i�X-�.ǯ��c�d}jh����D.�E��G.}teׄ�ԟx����<�u�Fj���^v�0J�U��]�!�r������D_�%� �����`R����Ǵœb��?�$q���ǒ�YP$�]<��c��[�C��&��m�4{&�2�'�Q4�n�LӶǼ��Gt2
G�����B΅1cɒ��Aޚ;���ӳ�iQ/������Z�>���noT��Z󍻸+ހ�]|�SK���L�A��K�Aw��!�h�	哐	�3����r���j���g� ��M�5�����7���׍�>-\�AZ�I���}����'+Y�7"��YvpE���̞���K~nRx��muj��<���:U7�9�v��2$�_غ msj_[���I-����0��q���c}���8	E�Eeb��U��r����*`�M�g������+������Ҹ��%�	��X����d{�n�#�ɵ�sbFh�'�N���!oP���������ˇ��/&F��Q���np���(��t\I�d�u7I�xU��D�\޲�S��6��khѻ��:,�q�A�n6��3U��=V���/�D���z���7�]cy�6k�ﳩz{T*C|k�$��G���v�l5��$$hQB��xr�ˉ�\�nb�3Ih�I�Qhɬ�"~|"r��C�p�g�02�_KP�q�Dڌm����j�Ő�]�j�?�5+����J�w����{(�'�[�.�J4	W�A?��ZS�Z���Dvf�jT$K�E;��
Z��X�v�646��Ԡ�:EPl���f�p��$૷τZ�Bm�y��Ew{7��P�΂&�����4^.����V�<�n#aG��U�g�0�"&V�T�!"�\�4��j���k���\ޠ�ӕB�7�Gv���=@^�%�(���:/��l�K%~,8�r�),�Q�n	i;�X��#�j%n����r�y�:�#����<�H�_=�����&I�T��D���&l3��6���(���'zr�?Ѧi1�.�nk�u�qIΏx�}�9�.�"�t���O����}�%/L��+T@����gn*<a������+<�	"���8��r%�gk�6���뇘̳C��r�����X �C�'9�˚y��R����ǿ���M�i��������;�_����[�Ԥ��~Z+���'��ت���ϧ��5�xԨ$��,�~�����F�d<���N��Z�(xѳϷ[FYA(�k^��w=�>^�������h5��V�3�U�r4��,$�������:�k���^S`2���Y�D��a�������[����Џ[r�n�;�>��8P7��fom��kh	�1i��v��8��D�)_0�m3<B��%��^+�˩�N,��W�-�.����KnC(�ˡ9h������+
,��G��_>=�Q��ΑG��i��	�{���3�܆p�h?<��7��������Yx���-)�t��_8�#���Q?�4��7�`x"��57�9��iDL�]S.���ոf��ކg�����I!P���fX��s�0��B�}Bv~�Y��}.	R$��	L�/��,�+�t0A�hx���Ѝ���n��!w$����ˍ!���Q��h�d9X�r��=x"o���}� ���~7|o�_}�O!��UbFx╹6z�P��m#sY"��c#Cs5Mq����+�q��@��pĂ������"�����ͤ%��Hq�s�Q�8��H��w�Px��%S���!�q�JIJ;����I����g��h!�0|�EgS��{��Fu�Θ�{��E��>!&��Ȇ1�ɉ�͔Y�EG�,��ϯ�P��~�l<���a���Z����s\�˿�<����2B-�|ZK��	���X�6��(v��ы�w�c���X@�b��};W��\�,���X�T�L�/��e��47�.c�>��m�L�('2q_$�T�(��/	Z��9����P��K�U�E7"9�OHD�UV����Ċ��(�h}�I*�A�X������Xj��nA�3�9�Q����W^۠��H��F�ܖ�]��=�8ICE��&xd��G�̢@迬Y���m܀��"�T�
$c��:    ̬tU�%lӑOf���
�������-6�q@��O����I$���͖@,7�-��k�t��!�8�R��szl���vK� �"��~qI�^�E�Ĥ���Kv۵5���RbL>�b��EO�a娫�T@?�r{� �@�a�4�<\�;쬅�9�xC�=OѮ2}C���C�|9�$R!�٨�����@"ͧt{[�ϣ�B��c��!����w�����/1�ln�S�ѕ�蝰�]�_ඇ����]]���⼎�����iݑ8z ��h+t�g1�c�-�]���r���'�}׮�	�YF�fɭ�9!=B|�^���*%�Ilˈ���ڧd��5��i,�d�v�3y��u�E:�d��5�۸2�a�=I�{�i��X~��t�gc^�<�6��v�.��Z|��ب�E�y�ۥ�{���1�(4wJ2[�4�@0��K卷r��&\.�i}{Ľ44'u�����?�{`D����h�v׆s{���3a�7��w�� W+�('H����y��vt���s���b�������ʗpۤ�)I0����OݨKW�ʢ�ؿ*b�0�86��4��rVd;o�q~��Rc����L 4>/�Ҫ6�ժ�PI��'���e=��ă]�J�?����/ˁ� a�!n0���}č�Z �Ix�`:��>C��G�Ѓ��X�������Z�Rx]ŋ����	Jƫķb	s)�6.�)[4]m	1!�h�D7��>��U^�r�b���x<��'�x�@
�������kܡ8[0�$�mu�?f�&��R�[$���N˚ d�K�F(�i��w����.9�� ��� P���9kM�dYa��D���l�f�GRbA_U��,� \�~li��n�y0�u�R���=��2��"Ks�r��< �=��/�����CӃy=������C����+��|�}��j�c�3C���w��Z��-}4d<r�k�����äN�� �;��enQ:��s��q����Xg�:��2���?�BA.��g��ӂ�e`��r�pzeѴ8��hߋj�>,��*�k7XG�Ad��R\[Y!���{�c0Ł��ޙs-t�*���[��)�ܺ�nد˻��4O-3��͔S��^�6y�� ��W�H#�	]����E�C]ڍ�4>�.%P��*�#}�=X��{<6|������b������8�HIK�w͐�rj��4,���҃W��x1��G!z��-��@ H?$0"5HZP���=�Ԓ�4�l�N��-O9R���wQ����#:T�t��|94y��}�@
y/`]�b�rWkM��axc)6�3?<�χ��;"ԣ�T����4�?$�B)UC'g�ô�P�n���q�u�����RP�%�q��[d�A��Zw1��Ri�T1C�����'��I�L����ԲѸ��pŜ�e�$� �I�L4�/d��D��b��3�w=�R���$2�p~�Xfs������ӒGk��Ҕϐ��2F�����uqzy�;�N��	�-�KƝPj�r�S"������"R�V�d^�=� ��Z�-�4ɚ��l#Q��NX��؈0�f,,�ӫ%X��V�bZnp�n��h���!�Ш���s��,�>ZuEw��n�-g!�-ׅ⋐%}ѡ�#���m}�����1�tI+�;�+m�W<h�~l$���zX��el�J$Ǧ��
���*����%|����M��T���l����qE/>���2p�'bֈ&��g��%�LXu=!F*~)!Ԡ�&�5m�:��!��CQ��zx����(��zn�%U�,�a��s�PJQ8:H�8ʶ*oz�t@uso��0���r�s�0�ylrdS�ח�_d��h:��ɠAz� i�SS��aɟ�r[��B�å��hx착�� �~E��A�Ǹ�-�!{.���$�
pq���g>L��I�2ec��-� ��y65!K ;�!����i."�OĽ���	��Ya��9qP�����ͪ�4Yf&���A��'E)��i��@J�#.�_�1��E��������6kZ�U��iH�d*)h�j�|,�M���?���h��X��~�m��/I�fǽŸu���y�����01�?��/|��ab��z	@�8�t��ԉ��k�b�y,&�vY��?�m&Rl�R�����Ź�M�I�J�J���Fe�;e)�]+7ɏ7AG���KbܺS����n�.{�f�3�-hN��F������ݲ&�!׿=�oF��1����������3�W��[g�c�{��N7�y���9�ׯ�M�~���]fz��ˌP��,�G����o�ۃ��<�vC[�v3[纑�w[���7#��}Y�q���V^���QG�sOn<�<iY��g��v�[�;�QaH?���������՚�A�6�[�}��_�F0�lHy�g��ddOf���{TJ��&�%�}V�̗�}S=�?�3~w�����|���4C"JQSC��v�G�OS.�V��WY��I��E$�Kmeӽ��帾)���$aN���FB6%g�IH�oeg�:Z����l,��Y��֖�s��O�BD2��h�S���0�@�e�ej�嚜�Fj��~N�@��hq)Z���%%��.MM+�ͪ����;	�(��&���gnR��C΃�nO�W�h)�%bk)@������H�#��m)�ܕ��{e��.�]�J��[��V��E^�݋���:��H��D
n��Y=�\�^i'�m�t�;g���b�w+dNO',v��� ⤨0�I�QX|}!���*k.�%(�����"?�e~:<t*�f\B5.��en���F�ڀ$�[����j�K��Z�4Fڶ�!��<tԫ3�:�?"?�Z1�r�����z��&7���]��;<<�y�<�|׾�Bw
�",
O8�����u��%i���..��Ќ�<h+�w,C�T9�&�7C�q�}�I����>VP<�
C`,tYq(�fjR�y#ݤ8�B��0d�m�Kw,~�Pv�� W�h�b(�	���^�Y�$C��)��P��LX�)~��m���b�Jkȓ5�H1NLY!d&��L�l��ѝ��0��^r���KUN�W���k0I�����o/��R����hZ�<YLq躊\�<�� ���c"k}㏒�t^L��W�!|�{���>�9�r�����8�X��d�DS85�f`��UỈ���'d����,ܭ��#0�O��+��S�o+)�d�~5qO5n�4)��2�P�S�Z��e�s��n�I��#�Y���t���L:��g	+a���)������g;���	������_*��D;6mh����{�;ny_�[O?l��Ƅ��SGJK"3'�2GjG�24�e�W�����[9Rcgq�P���H�c��ʅ�\��[�U�@�4�r��cP�w��(���Mlꉛ�9\/nX����3yd���=S�+0sJ�0N���+P���y�ҁ;�79l�V����vۙ�9�&8��QtŌZYN�;�(Q`~�l���pXw�Ħ���Vs9�xl<G4�ϬV�AQ�k�@�{�U�����hbOV�f��h�H�-���sp�)3֞~&���8'�ؙJ��*V\������(�&	��p����G��W\+����E%p�"�iC���ٔ��R8bg6�D��*aq�W��
)��SI��`r&!�F7��{�#&�r\��$z��rMqtf+&yǓW6���b�$��=�H��Zn;�<U�\��E1��d�@"񈆻�.D��ޕm��Lx�L���e'7��Hڥg�־	nEtxxB�cn��Q�S͞�s_R``��{�<⫆��sm�-̰���A�:fI**�7���".1V��ܴ7e�����l��P��x^���*4S9Ѭ�nY�DX��o�(ԁ]��D1s,�薻���W��kX�E1/H~��_��R�\^KQ�u-9��D��$����D�p���$R׸#J�A�ь�Fd�s���m������0�uY�$K�5��)����6��B������ �^}����! &��M-    �%2k%����P=�L��+��B!G3����P���jxqv?Ȕ�>�o���OV{��9;EFTk���j�0ڭI#!|$w߆�n�ԍ�ݳ�bu���4��>����R��䔷OWk���R�L��_��J�4��BΞM��&����-h��#� iX�J2�Jw9i�+j����41.���/6�/���ORV�����gΰƺ���#Λ�ŉx����zG_�U����]� �KY�U
�+ʆTQ��u�6P��J����	4?���(��+�P)�TjU#���Z~�-Bг����@(qLs��
-��y�%�M}s�*�z��54^'S[Y��ў�Q!.�娆O�h%2���o�V����KsY�&���n��� &"%*z����HIi��g� ����Hw8STY�u����.���"'V�6fm��'�K��}_�P�a՝����s_��wdt�]\�.� �
Th8��0�+)Sͣ��?�c+M���s2HS&I|JU1pIL$���E5�T�?�����mA��a�ά�QE�-$1��f����A���.�fN�D�[�u���R$"z��~65%#8J��I�r���S�;��Cn���=��@�d��7*k��z�"ѩ�P���A>Wm�d�}�G�*�`�\����85֓bTf\!#��_��o��G���5�+�e�+W
lk���J۵zp?%�"f/�k�<mIw������Ǻ����QG���(ͥl:�z���θW����Fw��)��xP�hFR28X�0�`yk�/�G⬸�Q��ų���_舾e�,�fz�8*�× M���ӌTut`@��Q�zs'AvH�z�t<��5~2)2Gd>_�2 *rI% *�Cd������e?U�r�:[���݃�C���s���ő��������y�|�}��>�w�\J�F�F�����p{y��ngz�L��k�BaX�8�7*��j\}G8�BиmįvI#�X F�v�ωɡF��DO���x������y���d�it+5e�/�Y:�S*��"��p6��b�*5Oj�&�VY���Nt��R�KD�5��Bs��fx1��ހ�p*���7�9O�JCаwq��i	�q�*� �ؗ�L� P��U$���ڛ�1P���1��)tQ�#��C��=�L)
�hmr�u�Z ��ֆ�ߣ�\R�/)���nψ$;|aF�=�瀧�[X���1�~ b�a��*�#��1��"hW����g�-A���^��!~�|"'=�,��e偧U���O�l��!֪[�k�L8��zC1瘝�r7Xqt2ʴ����b+%h2��}�	��2F��%0��2��3LL=��@��Y`=��iy�ҹA<��b�0 H�#����d�"�$��M��PHZ�s�@J��C^�:��;�)R����>�-�gE��V>x)Z7�š��!�r�����3�8�{��4�AL �077���lB+i�м�:�0ͤdA�C=���1&�|��,.�	�m�Nľ/2��'TЁ z)�5���@r�6tBb�%[��� {Bι��\#�^F��q<��K��t��^_�� g�zH�i�sۏ!h�K��_��9K���'!����Q_E��y9���IY�d�ۡ�����
�|�:Ӏ'T�)�M��	�A͈ �lZ�'\ Sp-��� ���TpX��GU↢&����dpܙKh��>4Vs�����nע�vol޹��%�!#����7��1�(�6�����V����2Oŏ�z먬?�сGVO�4����jB�
3�))m�=犼b��_¯�����<�vN�|ڀ��Z^10��gʬ��JeɌq�$��yx܅w�u�]W�� ~D&V�,��+�L��A��@�̴��"�UC}=T���$2�P�Eѱd�������$�~��&��-�n���0rl�S��B�I)d�Ŵ9���D$�.z;Nf��Sؗ{A� ����[��Gǉ
/�*��<'`R�(2�߀#�U�"�=!-EKK���z?����[K���״J�K�;��F��� F����[Ѷ�`�	�mrw�6����:�	bOl��9�|���a"��CL{Y�����������)ҧ�`�g�ց�k���.wŴ��H`?Ç��� �#�.�u�e�x9F�$�6(",/@\K���A8�л�yjz��[U��'��N�<���H}M��X����iT���� w��(hJ�I�ǳ�LPg�J|g:��B�0�%���zp6$l��*���Ii�<*�@��ŗ9/$R� �zJsv��A�E���=�#�K$�p��FV)�E\pC����ܓ���cJ|���%�\^�2\P�(�#�9���������Lܩq����B8�(.��ф��O�Ӛ�[�e���~�+Oy�s^A��BZ�$s�Z�����R�w�zg��^�8A��O��m;s����P�8zyH���{���↷3��8k��Iп���*歂�_�lV�@Ĝ:6$���CU�Sfͩ�����F'�� ��R\-qq� ��D�ȁk�u�M����2�!tP�D)�וw�QW�";8M=0�ݳ��|!�S> b��P=5���eZ�&X�9tt5	�5�Ff��dc�c'�;�z��	���D*��|JE�0�q&N�b*��o����;,��bA������9����"КE�-�'��^m-�u �.K'R�#�(��X2�ת����t]�����5U>J�=��҃���c�����r#���Qe��,�Yqk��(h�
�&cU%=62��.���{�ƍYc��H7\���a��.�c�0� �I����]P+���f����d���f�D0����Ք���GcC"Or)��>P��#	8�j���õ(���-$uۃ��8��0���Ec�[�.���co�~'}�E��R���I�u<�R2���q�yDƗ8�	���᷒A�`S67Zd!�=���h�@���gl5���mx�X���`���1��{��fM�����ҼbϷ|�6��\'����{�okH����m�Ri��<���,6=�5w(xZU��㌸Z�d�ݼ�4G?�H�*�M��*E눅�P<�%���T?NM'�E1���O��p���Sl�&�x?��>E0�x,����Se�1m���퀦�3!��j�|0N��+�(,}���U�:)c8��@��2"rR�I��-������lx�]~�31��|�J"v�!C9Ύ����Aվ�,
A7��O�ȅ��zXl�Q��#d��,���_��P-K��^���x�ư`m�ZشC��k�62���SC|�?*���r�ؿ(e�����8�׷C�Գ�z=�\�ޚ�|Ѿv��Q����d�$�q?�dͼ���r����}�Ś�o�2�B�K��TED�(`�ɵf�E�j��M^�-~�0�,�T�4�*G].Nc P3I�s�ĩ�4+{'�|��(��������W�g�1�W�?��������R�L4���^Ź���
W`�Π_�z�A����T#{K���(uޖ��v��~`?�/�B���%���9��3�m����-=]z��-+�u�Ŷ�Ϸ4��-��l���]�0+�!�',S�_�s=�r�
{&�m6]{��z��Z�B�v'� ���m�.�v�C��R�d*�%([SH֙Y�֥5��l��eP�Y
��:P�����T���tR�Pp��5���]1�V	�gP�.�ʇw��灍�|��\{2��B'3T�/]R�oK�ش�;m�o֝�^t�F�
�\�p��2�:�[�����=\k�b�7,����֝�+�CpU	m&R�`粸K5�!͘��d�Z���ʥu�Dɓȩܸ�-zآ�[٢!���lV�
�]2�n=�ǚϣ�=Zw��S�y���S����f/��^6Oc"�@\����,�ݹ}X
g�P�P�s>v%�iH+��]��oc��+�\�C@Gp
�8�a��    �鞔�`'m�O�)�����F���^�֍n�!������b���������P��KEgM�J��RHx��ڬ���	�κ��m��@݊��z�ᩒ�K^5
�̍kڰ�b�!P�a/z�xڬ,���������86�3���ᕗ|���1��v�snx\o g*p`��Gֹ��6j8���j�;	K�r�4-�;Y��*N���ԥZ��m�غ���Vp�a���
�0hݒ��V,�&&�V���+���j�k�I0�ƨ���>8��S���O��n���0�����N��yѳi���К�[	��"�2W*`"*�r�e�_��F�)�jJ_U�?��Ɲ����7��o~&!Z/�ӈ+D9ǘ�.=�Wo^S�^���+`�����/t����Z���B/�k]���#�>+���\{���R����EP쎞:����-��1)��\��9���g��U�57�ce��h�H��W��C�\���߮�m�:7t+=�M���	ׁ���l�<�ixl���}�5�2Lbl#Z�Lbj� �,1�-���S��I���GlO�ġ(����_���������utz����������5��va��63�$	
��>�T�q��Q�A`�PO���Hr(FRk���7���m�6�D֞8���i�pK�1`7Ȅ(4~mi<oIg�'�bJN>�A�K1���di�����	!�������Q�I��ǉ��B����\�WU���埪�� \gT�:U&�ۨ�,�ST
Qb�'X0��_�@(6�i�nQ%6�<�����I:%Di]�d�BRm�r��w�K�0��sˋ�_}ogK_�Ӹ����>�t��	�9:���Ytuf�� ��0�'}�n"Ķ�ͳp���qF������ɒM��)�d��4-�S�Vl��D�~����,��L5�7��>y,D�1&q��p�7x℠Wy�9x��,��@$�H��"��2����������V��}�ո��J�s0����X=�\)�L��c!��#l�"���E�'��:*0w�K���/����t~�0ҳl��<�cߎ��T����MSf�d'f)�# y��e�� W��?�1�y����38��P�j,����!|�����IE�г�O �X����A��FP,���m�fNuπ�>��Iiϵ�����7��!g7�' �O
Ja�Е�Mt*K�!��Yz��;�_?���j����@���@
�ڄ/r�4�-��f�[r�פ�%ʱ��?������8\�4'hR��&g��!1k�Z�Т8����  ��B�'�u}��
�˕PP�Zb��C�.qG��8W�	a�!�}��yUx�6��8�"}ج횅��7ǯ���rw���(��&��ܕ8 )cͳg�Og�7"8���Щ�Jpkڑ[ܐ7�
�z�⺲���Z�	��u�gI�0���u)���D$qA2��]��Y�u��=&��@	Z�� ,l.3,ѓ+ċ1&SyAR��˨͋S���0�_��YI��T��ŏ��?�}n�N���X4��y��{)��i��}-���&Y�Ч@>���{A�>bk�~&.�t���X(��j��N`�eB_�Ԉဥ�Tш�B0���&�2ۆg�{�dp� >���*,U�Iչ��K\�
��A���j�2(5Y�*�r7#����YN��)��Y{4���H�;`�K�EJ�����ŏ��X4���*p�5y���S��F|�KsB^,�If��	��Y���^܆��Ռb���I�
`�qt%�nR�@L��tH�4yT⮫6������'��b���b���z��%v-��=��D@���y7��,���g~G���]z�)2d B�/Ʊ����u����VF�%��%J(�Ž
%'ƍ�£�ʛ��L�OX{ZhOI������Qh����o�;�e�
�W1ꛮ˰u�l1N ?�����3 0A��m��������b�~Ѡ\��L�cK�+V�?H�5	��i�ݘ��W�ީQI���	O\A��	VZ�iS6	��d�T���*r�@�����:D�$�����3YK�H΁��`���XT���q�h� cn�,�"��X�NW��}l�Z�0C��eh�T�}.@�+��j�N`͚��!�@#\�f$�5�o\�J�!�\D��0Ɉx,pDV��c�L��ş-��.3��C���� k{��r��B��b��5�1Ce�L�.��{ `�����hM��_/~B����V��"Uy ������x�1�j�����*v`a�'��i�Oɇm�밹6dGr��Ύ��T��Fg5�`˷�
��t+*���nK`orv�x�Ͻ��cD�B.#}� �˘���Xl�	^X67���Q�c U(K���|��t�H}bʋ�Z��"s��ц�������;_-����r��H;�l�������i<��BG�����؇�G��w		�x��aT%<)8hL���Ǳ��v��R�{�����G����_�3�7ٯp�ԉO֘���8�`}�m��z׌�:k��s���)3C�Pc�1�ǐ��b#�F�}RV4=�}v���y�B�� &���*�b^v*/`�ybzW�6�bp�_�0��d-~���zTd�C���t��X�J��j��S��y-�k7����Rg���~��R
�W|V�R� :�ch��L*E�^��ů9_�'O��Hs*��|�p�ޛN@  PF�-�}(����c�jUmH��_��?�|�:�o��lM�C4���.�&����W.��>t��O.e�QiC.~� �����SYD,�jN�4���ĒҦ8.�F,��.�?#Q���s/o��J�l�k}1`z�jN4��>����Í�ƿ6�Uɫ���H���4�� �1_7��ait*��D��%r^�yi��[� �TN1(��T[+��=(1�ۛ
}j���6A�"!5"U�����Z��FLU�0l
��	���BN-B��;���dO$��V�����3��)h2���6�~$��p�-��� #9�g	��Whu��fL�Pe�h�#J�Y�W5NT�QW�bd�~7�ҹC�v\�_�����m8v�o����-��fͬ��~aSX~��هv[���"�g7�)���Y�ꡡ��>(kPA��F��ҍ��-�-��\>lɖ���	�������*�O��nܺSy�,��c'%���H��`����7�^KPs��T:ͣ1���I�Q�+�u����>�[!<`l�L��)�<X.@:,1�[�%�:)\�go�|�K!�%T�c�`��׸� yR��Y1�:/��p�t�NE���kA=F�ڌ$�Q]�7.GI˨��
�#��
Q5S�hޘ��uv��_� �������p՘b,��D���t"~�b �(�AZw�TG&%\��%LG5U�-H��'��;d�u>����LFt^��*�IZT�4w^�*�={t��:���֩54��ζ-�+UL�n7�D$Y��bi��k9A����LStNM� ���Us�̕��sYd5X �m$���'�N�ű6���s�����Є����:�� ����O߫_d� � �f'�+�#�_�3T=@������cQ,�V�d!�N�}�%�H�-��w<�������7~�U��Fz��y��J��e��o��":��8[E�V����p����}��jo>�3����Bh�XG��FѢ�����d ׿є�
؂����߱4����3�I��[�ain�YX	�pUCX�Nt���l���P7%�%�-��MsF��7�|�pO�3#~g�c�P�6~3��%�^t��²D�R[,��s��F�b�в�?�a�ߋ���/�(�B	ዿB�0�0c<���wi"�C2�]���:e��*���*��`��쫏���mk#�Y�f=��8��9�8�J���cAd�pA��8����!K��{j�R��0��(���)bʠ�ƩCn�RY@��)���#�#�`4�ei)+���    ���($ip3,��I��R���S�{2I	� Y)�%��E�GiO�݃�5M�k����:ä�ߥ��Wb���b���ݸJ����I��[�g�z�&��Ѝoo�$6�ƻ���ʑ��ȄV���5I��ꩁ`�	���"���/��<�C\�_@]��ՌjW6���|p���Q)<�k�#����
ϰ@��#��P�9�kG�5ur.R*uI��S(<M�j��?܃ea[�]���+��o��'�'��c��(�4��gb2b�ȸ:tޫ҄b��O��qeqNN]�?��l�XT)�԰QZ��]&���T4��Ay�\�uT�e�<M�����c���zx[��J ���X_6a�B1�����qo���hG�����s���2�X����!���W�_>(��dȒȄ�Vz�\������Y*.'��O�_�q)�q��X�#X���҇�b��_��*��iB�z�CNb���5��:�0�Y,��f�m�i;�h����ʆ�;(���q1#c�g��
�\��S�8F%���.mR̢�U�[�M���E/�x�;���A��OM[G+����;�5LOe]xL&Aef���Wi��Xi�L v�C&%Ke��H����m'�Y����n>Ť�<s��Q�G�o�&/68�m5`*!�履�mN�;���mZà��S�2h�3����y���e�J��b�����H�y��S\�3��I��i\ӂ�ڜ���(�����+�����?D���
-9�൦:�lN�K��C��+�	.㴇�b̀Jhϋ��47�"��K�),ԭ�([�B�!k�����.A#�t���3H��2�vZ+��O �j�!����N�x�`�^{���!l�|a��l=�������
Y��6���T�b�t�6?���*�8�XO�d��	 ���!'KT��+ѹH�c����p�qIլ�f��HX��0F�j�X��wn��ýxA��
EG2`u�V�t�
X�E����|����x�t�܆���|�	�����"����l[i�G��L.a����_�B�a��l�n�ug�UٚRcb4j������jy�l�G��0s�4��x�|0���Z>B!��:fN0�,��l�	'7r�5A:���g��B�D	�����QYf8�)��P�1�c��u��l:a�0_!�Q���j�B�g$5-P��q� ��E��XI>0�3���K���u�g)yʈ�_�t��}�u�6S� &8��z������<���RX���,����1B�X���X ħ.n�E}��UNҪz���!$("����[ta�Cߣ"x`�@1��8q_7{���z�����ίE����G���a���o����"G���t�M�V��m�|�à�2��ɠ� ��vU2��	�L��B$�Nlߔw� �˶��Q��7SN|1���³�-����U��\�}?�_�o�?�/єC"�T< @b+R��(x ]�wY%2���܎�o6f��/F	�A��@�2mp���y��o�h!�0�r��*�V�E��]!�mDǝ�߆n�!��|�M�C�iXe�{w��Y�#�H��N�
�M�E�0B��4�&K0z�R�N6Y)��]H�/�&�������
b_��Ո�6�-��CY����UPrj��7�W�;s�ؿ��9�E��g�䶓�`F�q!�Az�m7��`^����76�VxY�����])����`*���,�: �Ꮕe�5f���HD���fY���_謄�P�7�el��Q4L��-��aɌ���p:����|`~��Hj����d����WA
:*;Z#Fm���ZJ�vN$Jj���ʰ3$�ܘ��gF��k� �&��[n�,!��b��r�C.�zl��^�I��P�d�b����1�+D�hW�<�	߀,JeZҜ�Ktd�e��|p�2�f�I��5{,��0�Q�g�>ܪ�Li5�Q!e�`��)�s#G �O,EC�6O�����䏦hp&]�(�0:�\����:����j-"�Tsϓ�?BO�IU6)=����@��b�	8�}�E�.�f�>�fi����1Z�3���!R�bP�zyD�9����^h��}�ѣվZr鐱����x�-�\+��d{��8e�%,�^m�
6�q[4������x�,ȟ�hm��P��a�ɧQ|���l$n4}�b��BN�5��֑ģ��
ケ�ǌ:�>�71�Qp.?�^�<�p}�;Q�=���%���Ԁ܄P�{j0V�@|V�Æ�w�q�KV)�Fu�Lo�v�[���$�+���Z���%�֧����r��V�Ek`+;�̊|"�qOG3��"T��!
�����������=|���(T	8�t�$3u��|�����c�Q�d�8����y"*\ы�	�S�1�K<�5Y���)~�@�>\�J�f�{6�rC���5!np^d�O�d��<�$�d��Ю��ک���#�!7����
 ���EM���7��+9;Nf4=Ɖ���(<��B�"��ި�NN�7�:��HJ�x��t�ŏ#��n�g
�7נ�
�[C�\%��C�}<�8�::�PҟL�7�����={� �ROy�j��!����>gTv1��Ǫ������L�nH���L
E\��p��u1q�Q5�t�z"�(@H,l�v�ƪ�dE�;=�xp�^z�$v��$� ��9C+�^�OBDN��'~v�|F!���.�@>hv�&C+>��3�$(2Iw�x���G�%3��oP�c'4[�S
R�e�p}����8h�"�Eڷ(�R���隈CEhЂ:7u�>��٪�S9�q���Oʳ�c�c6ß���Qq��P��q[�q8+�j|*�q��i�c=d���W ۩c�}F%���2Z����*�}D�Y�}"*�G��~)���(��e?m�b�,9�;T�A�nH9>	HVJ7N����-A���]�x=�˅�l ���h�l'�u)$��4��0��B<)��{��;Vk]r>��-ʄ�be"�-e���4M]6Z�u [h�-�k�9ic&�����y  |r5�7����w�[�Y`�+���f{��q&.+4<W��p�h�y�@�F$�4��&Zɠ��������l0\Y���|�"�*0Pxf�`�/�_�!���eS'C�|	�$��d�q
���4�/biL�Cv<�����:��3�mo2i�+��eP�L�x���<��Fn
���+��[�u��u�3c�5`��3pt�o<�5g���B�)}�1?	�YfNNx4Xt"/t
��Bg	uI�a�u���[E�]ч��/?􅷘}�(��B��&[�F�!hnʚc~��X� /J��>��`��Vh9B�wJăo��d��O�?�����p����P+t.*�D�݌X?_�n��6qS$��	��d^��a	)�h\$�A�*�(�)�Y"4C��STFn�+��m*�"	TF9�eX��Oe%B��
�s���h%X��YfW�^%J�C���6�I�R�c�	c�3�Q\0K��!Y1�6]|��_P�	���)o[�T��9��Y/�w��x (�b�q���-YH�H�+4J�γN�]�<�T�5/���� ���ܥ�Y̸	ǩ#d�t��+}J�ڶ���%�xkk��a�M��П���Di�K��OBq�d\��&�k�9p *�ӓ�%K"��@�L#�	Q�[�B�Ĝ�
��3gdpU�`N�x�d�qb��lG©����k=wH9����koDg�+1S��r�&�HZ�
�����;��&�Pg��S��`�]0Ւx,��|��\"����ř��
�+`��Y�\�O�@�ka������)�#�Z��(�`P�;��Ur�!Ϥ<�F8+Г	&ʅ�x��ZY
�b1��P�qB����':k��w���S6����6��
��И|7(����x"�O��K�-rd'ˢI6��9jI�_XJ>rH{C���>E=, [P��%�F���$]bs���    �9D�sA^'ۋn� �|��s7�y���g�$�G��"����X
� ��8'�s }�c�\�%&֯�v�G����ЮM����Jډ(m��E!��왨X6f�����I"�)S%�	�%u;#oq��7 &6��2�l
�ɲ5��ˊ������Ʉ�$��n�j���3��~�GsO���s�b����Q�+�P�Ð<8N��Dm�� o�#S�\kqd�Q�q+2�81��!�y`�P�[�Ζc���e������˫�~�&�����A?�C������=�8��ޜ���/��vw�Z��B)�-_��F'7��������w��Oųo��ӳ+l�򢹵�M="������ǲ�����Hxm��x��]p	x\ȉ3/�a͹��}�W@�ɤ�g��ؾX,��^�&D� ����9���V~[��g��cl5�WD���Q�d1P6�J�A��KӔ�eӭg�z*��@��Q���nCP�Vt�����t�^4|j��W`���C�S�Z�9�:�������|�],~�	ZD
m��}�C��iǊ$~r��������[�����LB��eq���8�mW&��$�JSğ���1c�c�uS<��>�y�Cc9K�sb���i�@/1���f����;��L��-uw2
ΦYoZI�%���6v�����&9�	�z��ޞ\���^^�St+f����qF7�Fi��h�q��j��YD����rp�7�xo�"�����L�4`�`��u��zg����x>%�.�+�a|UOo1h���)�f����`�5�	��9N�o���mN���P�`k�F;;����*��OB��6��U�қ��{E�"p�|��s�G�j�'��qm"���#ͤ�r`6��=Y���㝈�i�ͺ�X���^����Coo�����rVGR�����.������¥���ʰC�⿃Ӂ�WAH�I�F�*�{<[���;���G2�����'�)�m�;�9�lj_l �ooww7�/J!���\A뒱N���`�l�k�_�����^�X�,>͡@�> �� ��{O
\�����yG=���'J��؇���4:3_҇������/k���j�H��T�0�N�ʔ7�dҘ��3m(\��󊱥T$�1VF�C����5��,�H���p"��+��[6����F/�倠9V�Ğw��$��%����'�q2�Ӧ�h���x�dY:v7�/c4��'�m�M񋞑�+7F�4�ĵr *� ��h3!T]��CV�T?,�*��L%e�_N��3�@�1�H�*�t�mdK�H�9��
�dD ;\�	exg�j�n��+�OG0?��xؠ��LQֺ��y[/=�j��I��G!�:���Ѽ��5�����S`�����-�����>T��3Yg�6�
�W�|M��(���Jŉ�qW�/�M�������E@6D�%~�.B,z��ya��ƚM��ـz�0��J+M�蛈���@�2��q���{��+��*����mF��[N'�Oiaܾ������-w�
�����r��gv� �_sd�ϥ#�t{#5`k�c���Y>�>T0�� ��G�n?<���k�2�dn�G��M�Ǹ�}ja<�>��Y9�-lUC,�S�8�Q:��n:�V}%���^
�(��[y|��s�>�
��͛V��w���Y����s�e�[r3��
�#X�2�TL��r?2���$�C����qHʎD��ɾB����ʝz}�����ŏ�y�˜H\��BM�Z�H�ƹ�����`Gs�b������2V*I&�K�*�)���	Ӎ1��~9�)��Q=��4<�	]�e6���2
��ɩ�
*4Sw� ��x��3Y�d{E��%�_B^.�[<6�w���T/+���ɍ
H���F�{�`X�?1#{ƟO[.�ƔK��0W|-�Un&�N�� .d����	�@@y,����J�r������s'#Ē�� ^���?lK��2��o�f�x�&c���7���atQܣ����sE���������3h[˟�/͓ݤ�-~��"��>��t<x:��R�;�f���$R�<@7�rם���L����16/�2������^Mڲ)�Fw��z6�/"'�\/��Ȃ�n�7"�����I���J/zk4t
�����T��:��Z8[��,+9�9���ڙ��+�@�C�!sI�i�"�D�j���GOWkW.id�.�4���V�$ըLJ
PtKv;���E�/��(GAru�o�\��Lb�|�^2#��]�C�}�%�kL� D��_���B-�b��*$�2�:�ט���j6IZOh�g�O;
]��$��Jyg�V�2T���'y1�ғ��` �n�g����%���i��*4���r�Q��~�_6�^��˾�C�����9p�L�p�B���Ԉ�FVv.: �A������:�g?2�M� P/xb��{���2�Պ���P�{�V	����R|`��v<�ؐ�N��9�s��X�L\If�þ٠%E�*���Ȉj����n�6Ko8ٖ�l��{1��o�6�ASj�N�"T����8F�T1t��LU|;���O�|V�C)]�T���?��];�d ���p��Ac�����)l�P��M���G��E�Ktj�����׮�����P��kWF���7���[|�ڻ���r��K�o�Qd7��5f�i�m6G�������6�$f���>�!Ri9Y� ^gY�c
�� �R:�����m��7v,��U|>��9�K-!�8}|>8��+�����PJ mK��t�h��
ږ�\3�f1�t�����-@�>�2&�8	F��;Qe���)T+o�H,�FU��s-��ʹjp�܀#�&��Glrϼf�����C�~���F�N��!mzq�QI��J�����vTm��m�lh�$�>��Zw�Hf8i
#�ȶ��~��F���ۑ�#")�]M4���!E
�P#	lsW��Y�
 }K��ViS��x��5�zO��-�D-�pK$�ô�m/�հ{LT����N�-޵��Q�H!�P�� /p=!�6ͧu2$|�A\<M1E|��J�Mۉe��m4Yyk�|�2pS�v�f?��`�7)�$����[�� FBg-L6f!�p��$%����xy���]���(kl��҅V.�%��H�����,�,�.m(�������f8�Uk �)�4��,���cvR�^�,Z|���l��������7[��[�'u���A�C�-��(���,��[�����;�2^��n�(���_@�0��\�~�(I>.̘��[��v
��qs��C֗����8+�z��Tj��孆�׼����
[�h���Dn�L
�_�=^��H1F 3X��J�Xzo:�$�.�R�x�P�wd��0�-)�˙S��0r�t�9�$Ԩnҧ�B��1��6�Q����i��J�\�>A�tV��8�ĕ�H-��=�0�A�J��K?R�t�7����BMM�ŃmI�{P��$\�ȏ����>���#��wC_�R��߆�����F0$	��wy:'r��CÎVP�i
������LPo"o�����$��^p,�ds�%àR�	�n�*�Y ��~���B����++�+;�Kݒ����K�����u�S�ܬ}�p��_6i���.F<2�����:=~u���u�k��������b�,�T����� [����B��2�I ټ`����#��ĉ�Z%��D k:al� I��D䴀���ܑ���8����5��) 4o��7hʎW�g����m���\�p�]�ݢ/�"}��(�@�]�sk�^�W搗�i8�:#*��"W�^"`
R���ݧ���
�
����P��:Fx���ɟ�ŗ�����ELفhe>��^	��s3jE��sg໤�Ț'�Z�_rX�����ſFthx��
���3z�DO�aB�_�|�[��(��i�ׁ��&��l��eƅ��UR��~    ��'��.1ˑ�lV >�Χ���)ﮮ�@�H��'B�UCؾ!��0��<�m)��Q�?�k4�S���9��Ϻ=�/��-s��erϵ٢�f�I�ދ�! '�H�4�Ӊ�s���Y*�͎c��Hw{H��*��IY1a.f�\��QXH;��$j�O TI���
s�������Ɯ�����i���P�;�V�nÎ�]���f�4�8�F��^���������.�]��>���:�]���3Kv�Fyb�4CQ�b&q|ǵC'���
��pTpW�x
Ǫ�����ĸZ����S�G�?�߶ӂ�a׃NJpa�X\F*䢟���i�S�=%jd��ڵ�Φ�T�i�!�O�z,�?�%~�:��lݵo����X��T�Ec�AeO+�s�]��K
���R��0r�	�8��a�z�+�`:�N�х7c������o/�lh;+�tW�P�q�(��M��^��z�;+��#�(u��,ݱ#��%��v�;Q�#-�A	zU���x�#��_p�1Hw� ��Bh��m���n����NnӶl4�;��B3g�A��B�X�a"��6r`��M��9�e*^i�F;K�r��*:M��Ek+�@�du=�z���@8��Bkq����Z�we;�mK�h��!��rybz�:�� ~�[d�x�keK�Y�6i}�4e\9�iPř��"�T���u�E"��e Dה��0)�/
��-�} 9B2Ak.�����$��ZG���x�K	E��9SqcǪ(��1Q�����U��z�։_tq5�h� �:�2�Ku����M�^
�k�ή�I�s>D֙;*|)�]�4���:7�Q���u@Z��C'3�|���f��R�=Nj{�!�(?0��=]Ų|��h��EINS1�b��+�y��n����1T��j��{�9�a��!f�u�R϶%�9�.h��u.^:/�/iPH�|4ʴ��9�ˎ��{����=�
��DcP��SVѨ���(HAk#U�}�]肥]��q��z~s�w���bp����䆶�woo�Ho��.%�.#���3Q>x�j+;b-�� .��~?����z=�s_;�o	������^Y^'��̵RV��1��>��%TNl��.�nx�FZ�W?E��h���_i���j�t&k��f��L�f�����Cm�<���L,(|w��%��.Թ6�f8̥�9�(Z��b���Q��J����}��Ļj������46�����p�d��.�c��!�i��[P7f�`����U�O;�y���\���k�ԏ(UL��Q5�Q<$Lޢ-7���gN�	�����^ 	ʴ׊�ձ$���B��b.�NZ�*ߥ]��@�����j<�����n�?x�RR�I�	O8�`��ǜ�b���2�>)�+�ag�?~R�,��wۂa����-&�DC�B:<J+�� +8-�����J�W����`_�#�t`A��tTw���ƺ��P���&�j=�VZ��c��n��m��F��Y�juȷ�"û��Ufd@%m�c
��P�������o�f4�;[�|֓̅Y\�ս�^A�0.SFX�[��w W��0� ���G�U�^[��U�U)�VH%!��L|P����S���
�3}�|UC ��(Jq�լ�2q�n��� x�'z��� sFL��()��k����,�Mc=�:��i�ZBC'��Y���'�m��-�<u6�1}�~��#��ؕ��NK�6��z�}[�:}oo6uwEFy�F���#B�\Rx�Ϟ��s�T͘���u���mH�W�<�"�L����x%Q%���sZ$-/�U(���0oK6��ܠ�Ć��2o'�<�� �IH%�㟵���2��l���+��4��A1����AB�m�Uc)u\��x�>ƨ��u���i�:£u
���]6��]R�������u\֟�AJ�/mà���oAe���6֕d�\���^�q(u( �tL��6zYZ5R}ȗ_w�05C�,�/Q5,�1�µh��BeJx�Gs.sK9�"��,�i���\	���,'�4`��w��ݠoP�Xk=s���w��T�j�>�k����
�Z:���QY�2�+kl��:����:�v���AvfW�+g���w֎�-�nuܝ;J��ި��Qi�.~p6j���5����圈����5��mpd�Qy!��vL��gR��57hy��3Y��Ŭ�`�t�9޲����Lg��P�0�>�M���֯=-���\M����dt�`��!Olp��%��~r{~ye���y3�9
�z�o��gϤ��M�ʀ9���9?�F���e#!��\�"���0���	�Xh�X�����*3`�K2�1�u(^6�ه�������a�>¢��	I4}�DgЬ�\J�����A�A��,�B�����$>M����4�����7$��5�&����U=��1B�r ߢ0w}q��1�zH��x&�)��?��z�s~q�s�O�i�M�l����@�HՀS�i6�GO�\ڤ}�����#\ִw�JF�*�
"EI9�0SitP^r��)y�?F�;|{��	�
��yo�vo���߹Ɨ��K���ڄ`�LC�_m��p�c�0Ԛo��-���u12B�����l`}����`����<�o��t/��F$Ơ��+ă[���*e��s��Zz�Z�g,!b���d�c�?���f�]ղ��{kP!8%���S��Q���ٖ��:
��/��A<�Z�Ljp.�U��j�$���HO��12�}��K�AU��cpJeUT]�Ԫ_�#��P�Q�*�Q�I&Ia�9F� �Z#_N�j�&��2� ��U�mrxky�r�Os �9��1T,K�ZӶ���H�X��-�.����ZD�S=�C|%+y?�R��]�؛� &"��7+`z��|˘ǖf�̺�0��|�q�Kъ]��6�(k����Na�����qq<v��7����m�6��`��_~3��bc�xb�z�&�-�'X�x�]�3D�*5�<`���Pa0��e��;al�ѳ稭��Ʀ�1���n�nJ�@q�ӑ VJ�>�CD�E�ŋo3�D4b��e�|ovo��_E�0^��x$��m���q�-�D��ǚZn�#�wڊ�YZ=�|b��Wء3�bjNT��c��[V��"�]eޥ�Vw���p� � m���f�V�S�ֽ���a��}��A�m�X�
�ܦ���Ze
���2b��שݸky��n���m���x��2����^.~���:�C������i$9͓qE_ؓ�y*N2�7I[ڰذI<�$ΐL�Y�]\#Zw{����k�򥾕�e��α��*�
h���)x�A��~��Da�h>-��m��l�K�d�0/��@�Ag�o�[�2[1Vi�����9�>���`��,{�Z�<������W_�7k������w�w��=�{�=��������/~L�G�w�;����<���B�s�OWg���ӳ7A���IRa������٫?�����N�紪�������!~v}����ݽ�g��v_�!��	:�|{r~a�����4��
�п��>��_rJ"�/v՟&��	�f}x��0�]_��~ۏ��}���C@�.�$����?�9�8������''���������w���<���G2i��.��F��՛������{��yw��I�=���7���١��Q�y>h?�-����<�Ӄ�������3�cq<쟾I��{!���ep��_45���k)�������Ͽ��s�h�Km�u{S?����1z4n�i<����**d�J�!����W�Jz&<� @�����MH'�YP4���G-���`�Xw'�a"m��Eh�B���Ah�����ͅ���P������[ȥ)�����6#�a"�[� ��\*w�!F؆�<����ji����b��A:�pj���:��u"K�%�\��%��kX�"�i��M�j�ټxu����<����(u�l���=)JE��۫��ۛ����1�h@�
������V�5�Q[3%S�    �"؊��v�}/HX�8+�m�l�W("���h�ZN���ƄZ�ce�ϔ2��p� \����$Σyx:�I�Ib$W��`��q4O��J�d>�����ܡ��xr���?&=1��C����Ou��X�V�ؒ��T����
�6G�,��0�ːe�9m�W5��+���N�n�YZs�� N�o�~�J���X��rԐ�#C(Ʊ;�u.�S�N�e����7\Ǯ�\c����_qgk
���w�;�mS����t��bI�`8%q&�oB���1�7�����,���Q$9$�l-w���ca�*遷k�G�>M+S��N�F+�:�uo�4������D��E�]Ű*BFS�$!%\�H7`�m�vQ�7pr)ӬL��)�?�:�yY�����.βd��[g�]�%���+%�ş�ݠ��5��_��׾��)h���){�(��Hwu����a�C'��񺆺qY�K:^����P��A!@�����Y��)g�@��8z�\R��U� �>��P- f&��~	���n��v���4v�?W�P��u�����'����^Vړ�lH3%�A��\�����j8-=�n-G�:%~m�a�^��zp��~U�S���P�7�*�`'��5���|;V\u��-�apX�p/g��w'���-����^����/�t%�_��:�w㔆���ټ��)wB�O�X�,�k�� ~�t��@O#�ך�c&��!2����ya�ZpM�~ ��\��˫�>�ϴ`zY�r�q��Ġ.S97*?R���<�b��]�� �h������5�����-FϽ
�*�>��N��(ԦW�U�o��Fi�N��j��p}Q���u��V�eYP.z��Tp'~M��	u�d��D!��C��������Υ4,�*��v��Z��Qܻ��V ��Z+}��JWu	�s��P_�V*)��#̟�h��f�C��aRǱ:jò΀̒~4���ڸ��W+ 0�2�Iy4BϚz1S���|���4�����NH� L�5G'��9yMfz�K��VQD<�DGx���!1&S���[M�J�iU�]�b�9�oȐ�����$6 $���X�`�� ��ϠuW��}��n�������Sסl�;������\���q�Ֆ����<�w���W�\�_ǖ�|�~���\��z��]�d��ظl�Z����o�_�&~��Ų�5�U@$`��FV΄�p�U`5)�gKj�ʽ�DY�u�؆7��<;rĄj�&pS�V [� ��+It]3,f����kKh&�fe2#e�m�u.4����&Y�����:ͲZ�$�붉�����ԝJ \E�4��i�l�BլO�[���DV�`�3�Fˁل�+fT���Թ�L2�\k��ų�ih�J�hՅ'}�(���-�ů���u@÷C8��1�d�'7)��ꬴ�"[|�y�\�C��(2>�p��(�i`�3.r�B��Wq/�kq�Vh�%+�+Y�eF�-���^$��VT��2�s��JG��%u���
�!责���s�^�a̽�&317���t���n���w�7H#��\٭���'<Lͳ������^7+G��5U F,$N_�16�0��x�{XRC���`7x�F�iY؉Hgq&�ZC˞�!t�0|�3�;xF�h�@,-I=���ձ ��~c��_y���0�y�Z�N����9�T+�G�rϟ��\���t9"�φ[�^�\������휩�r�����g�)�H�F`&�D�d`��LR��lJ�#��{m�̀�EԭR]�p��M����|\,F���e�؅��7�(�Տ�Q����CK��D]n�ҵN̐UM�_�y?km���wve$z(�BT�Y|�	?6x�_�P�t�aL�9�z�	�<%�󄴶��z�D���O�~�+ ���m��*U�H�[ޞ'�������6�h���L�z�cj]��Ҷ!���	>o�c�K G�S��h��㷎Uu=R��}���U��#���Cd18���ŝZҮ:�ȥb����ҍ���M��t��7�4�?�y��PͷԤ/C�`Mˢ��"/�LR����n;j��J�fL��6�P��F��M�Oԁ9Q2汁�oF�8��}�9�)V���l�g��a�I�z�2H�H��"��!�l[:nW�m�'�Ju� �o��D'��b�^�/!��C���;	�����P�D4��� ����8�ll��sz�BT��*w��ѫ����U4H�mC u@1ĭ����ZGg%��:+�P�(p�:��xR�x���G�c2�e�n8U��)f��ދ�xy�����J�^��=w��y����@X��`�|y�m*N�$�$`�ǘ"]넠(�y��.!� �G�ʶ曚� ��/]�.\mLg�oWR�:��$E�)"M�����}�7�p�Æv�Ů�&T.��Co+Z4�`F�����������6';Q*�FE���ȫ�J���v�1^�����:e�e�d}����ԹM�n5}��g�ф�-9F�ߨ�6c�>�;�D�ޠ��U��-��ز��������.�RV8ܒ<��o׵�lQ�ŗk��Ƕ|�i}]Y�*mصA۱Ms�b<�_^��/�+���i����a�M������~�]FK�\$��ċ6���"��crbT:�bG��(S[[%��u��Op(�	}� Y[�1�A����3X�i��L�F#4,)�8 �&c�ލ��txWw[��:1!���	ƿ,5ؚѭ��Z��'�t�v#���@�,���K�+v3�����~���>�kʱ�RP�S��l�����c����FU'3eK���sT~m���Sk~��a�*/뤱lU��o��~+�[i0�4X���WW�K����&�r t٘8�K+Ե��_f�.w�[I�Q�e�e
wk�C%�3��t?p�����Hio�r��V��B�;�M�_?j�Mڔ��S�P|���Ʒ��:�Ɛ%x}N�6��3�wũ�?�d���@G�;��fv�û��\{�qCm+\� �,���@�o�0s	jnn�wݥ���7�C����Z�*5J��ʀE�bs�v��,)� �,��2+�4O�T/��R�d�G^����V�'��Ҍs�"7ػ�y������t2����K�#��9}<�԰�t��;��{��͏�����Ĩ����ҦF�-qfR�t�Ӆ�0 g4M��h.��ri��v��,�xwu}6�t�e�EU`��j����<�m��7F_�8�QU1>�(^`����(�brc`��h^w�ʑ��o^������~ZB�9��/����;f�_�~�ˌh\+��箑�2���*����C!>H9$���:�+�.�d1���_zl���~�M��;���X(�����w����k����;^j������Y�7�pzό��?��(�+�Sߋ^Ǚ�E/:�����\'դ��L).^���<��CJ�T�4r(h��7P�����.�����k��f�S�0���mG[�0OG$�p�/ۈk��S-0M]s������@ld�w���)G�/��5	�)0R�t����_�����ۿ���s�ь�7���{��B��b[\������@i�T3d�l̃�������Z�����2�M�<��
,�.?Mm��B,ә����g���g{<k�v�桲�^�c��K�@�0�����D纆�4���S�\*�6�%�͙��,�QΫ�9e�g���e'tv��r����A��[Hu
(��6ΐI��RR���͸C�t`TŠ��v'|Im�%�y���'�k^ht��'ǣ�%W���*��}�%�'��F7	i�uɛ�Y��{��2��Z6���GAO0�|�������n����((�-a�g9�ˆ��d�
�//*��M���[ޙ5k��s�zdko㙗�,���z��H��c\w�������4�FB5 #��H]��C�¿N�+!�7��{bB���{c[-�\�2ִ6~�/�v�h �^�@����=v\l=�*�W�v������@�5ك�{)�:�|�e\[�d33�Y;�    ݤ�#e�,�naz��ʢ��2h�{5��a�I}��+<��4�I�啭����٫?�����K�C稳�Q�(�*���w� ��#��������L^�62��Z���D�j#�e*��5�,��X&��a��17��8 ,bk�5A�+�H}��rV��Q	:Ѥ��P^.��סLU��j�d&�auI��6*�ِ<D��_�(�''�|':::�����L1,�����}��>�w���/�/��΃=��=��=��=�����C��K�K�K�K�K�K�K�KؾKؾKؾKؾKؾK؁K؁K؁K؁;�.a...�]:��t<w�x���ܝ��.a��{�R�ܥ��%��%��%��%��%��%��%��%��#̝�#��#��#��#��#��#��#��#��#��./�{��¥�����n�/��x���ҥ�K�Kw�^���t'�K�K�җ.��.��.��.��.��.��.��.��.��.��.��>�u;��u{������}v���]���z~���.�?p�����=�\��e�>x�v�n��O:�݉;v)=v��ؽ��):vg�ؽ���ؽ���ؽ����ؽ&�]v|�Rj3�5��^L7?	B'o�&U4~^�o$�k�5tn����k�����8sH����J��a䐒����e�\��������>dT['��h�-�Ou�n�er�F��y2���]ie�o���ܑ{:�\a��=�G�?r�푻o���~��#wg�;����G�I?rw��+��[����G�V?r����-�<a�������-��a��3�@rZ�����-�*rg�1�h+�I��I1R�A�Px�!����}"v��G=T�4�w���s�N��sgYl`ϸ5+,��E�u�Y ����B1u�^أS�Ý�d�.�� _$���r��_d�G'Q��>^���nAy1+tL@��S���������Oz���@l��N��ct�%���_L��H{_��%S|Q/�HΩ�,��2�̻nqۺ�� o� ���3 %���B��Gu6�}Bz;3zV쑫OT8<8�K�abl
�ͭ�1�&=�'!?��i).�ٸN)z*I��#iwu>I����}��}��'e�����=`�<�gv�E�ŏyR=Y�}B��#N�ѡ��2������*#��<1m�a���y�*�����/[���[��L>�+����d���D�J$O�x�Z�a9��i��C^�CS�$V	�� I%`p����pg��|�6��B���UO \�ȀaLb!6������9E��u��,+�:�B������2B� ���{��!+&qEf%��)����*�|�����/��[u#"�ޒ���!�MNX�t���1���"��̮0��!Z9͘D{��9�i�)/ǂGN��.�AN �Q��EW�I��j�!��A�#\O�h�K��37����1�1�U񑸐Ǹ�U
C���`���L�����Ԏ������;�U1��g:�B���n�X�%�i��30t,3
�ݫr�}{w��ɋ��|�@f��ل�L�;��x<�bB�X�<͢�9\���`�F8���Ho��`>�<��C���I�'�HM
�
�Ì�VLH��A��!��B�@��IJԊ#�<�	��B�p�F
L��?ƙ���ݩD1� �mb�Wb��aԽM�]1�Io�oR�r���T�w�73_�1v+�@��y��Y"V3Uq�R���5i�l��R���eď)l7-�aC��ej��6�:ء�!� ,pv�}?���>�L=Y��j�Ħ��"aw�p�;&<�
�G�"�柹��dF�4S\a��� k,f�SFMݧB�(D��͌N�ώj#8=g�??�	7q���m��9�s>�8�}�"��G�tt`���|)����������aV`
�IF^���m�{~k*0�+c`YbE3�<��˯�ď���V�b�/ou�e���mC"��#�P�FƯ��3<m���50����bB^�kا$��͔0�P�b�H���
Lȃ�Gȶ4�t�C} ���
}�*�Y���eC��#�+@�ɑ}�X��Q��Sq�x�-e(&���{W\�/:���D�)d���#���sNjpO��cO��NxH����Ŭ�S��RԵAi_0������~~埒�6��oaeu�8��U)j�@��'��Y���)/�>~�J�~�� �!$M�f	R՟�"��2�c��T�CB���X�?���m*Dʔd���X�|�x@�[c��$�������8�/���|u�Bs��~����<�-��B�j�C��(�eNF2�F�PM��"�H
H��0a	5�b��;qB^Ae�B�.��t
yܠEI�c��bx"�
�ϲt���R�`�,���X���#���lz�o�h&�6,��}n�d'���	�����z�sW�*�J�b�'ґ��Px�Y��	�M����Bi��hb�&m�QaZ^����މɱ["��.�
*Kس�w՛0R8N�t���F�O!l򔃆B�o�;�GMr{���ڭə7�V�3�\���7�V�y�9Gs��^b;�V�Aڤa�hkO@��	��䳘d�Fr�p_�P���<Sؔ����}_���J2�BvF�L|��L��"YP[~#*�e�~9�~��ԩ-��1x�J�,�����n[�QVОj�ٯ��sm���#�'�O�UQq}<��1���ja����2��}"����d�����A1SD7�v��*e7XFH�Y>�o���}a�PZ�L z3���G9>d����L'�X��<E�,0��(�́!Y���`��x&��t"��P���+�bܐR��Xog�〺"��ӳ�Ɗ�x@>��Ň�z%�ǔ+$ڱ���Ğ#�c$�MǙV���j!~�W�r{yu��B�U(8O~h��ic�]H6X�Tm��S�pr�т�����H��0����jKz�S_�O$5%����1�;�HE'#Öȕ�K,Y���i��I'��\0��ǟ��F�OP_�����S�nk���-`�3R7�
l�����28�{w������J�A~m(�h9PחK;�	��_^[��4<]�{M�ҍx@4�A8 Y���P0suJ���dԮL��D��l��t�ft����#������ d��)���@��cCo�� ���;���r�����,7�ԓdR;�)��s�w��+X����[�֓�h^Q����ɸ�5�[�DcUR[�eNj3nLgS'W0r�;�
��b��'�~	y�c�y"&����5a��g��K�v_3�g ��:���0��e��,ۣh��K.Ah��F��%�A�M��� ����WdRAE�?�1	�.)[�'ԺzF�-+�|�iΟy�0�EZ3B-�uew��}� ����~��-�[dpo��8��"Bµ�>'͞�$=��@Qc�A�7�&��:r���?� :X�]y�}{Gĉ]���j�����ɅBNt�Ơ[��p��>z1�
���	�OB*���K����my8���9� 8�jW���8u�6�k+�y�oc��ʒ G&��nЎ�5�X��\2D>K�$��"�	�m8���c��k�D���j��d�p�>����N�2|�,p�@�&���'�O>������j�v�#��
.��ԙ��}��@�.�8_��oߞ7���| �jF�RX��鿇�O�'�0��o�oVI_5�rfW.A�a�����2�-e�~BW9�Q�5�p���~���$�笠8��B"x�6f9�K���i�o��!2�Ӽ�����As���v$�FoT��[my�K�傀we]�K�[Jy$8�8~쉒�g=P���T-��j��m^I�rp_��ʋ��x|'_�r�`b���+��?e�ۢ�'O��q�<����vh4�O�#c5�����YmY�3eM �]�h6B�
�/O5�Ty9�S7 s����������W�o���%��K��)Y"���n�UA��63إ0�w�y@�� =  �ά��m@�u'�{l�%I�=K���~F���+M�Q��=
����� =�a�g73��ڎ�]�pB��f�k*x��F���Z:�p��i�	��Z���D+��;���xD�j��d�G.�4N�y����?�(��FDD�����DkB&���_
[t~q>8���|�Ęp�l��L���� N�7*�W����g�+7BS�xO����+��]�*�A��v���c���.��R��f�����qgwCr���>�J�܍�C��C��_��;r�?�L|��_���h��+��K����fcC2�]2�7���Ly��ʻ]Nb���AA4�!n|-��]	A�&w�:�Q��nF��]�ӵ�K�vA#���^���i5E�	������vl� ��ޜ�>��U�!Hp�gם�.���Ö�AX�	KX��{9D�~k�(�T{����}��c���*4ji�J�;5�=�@O}"�<��8y���7�do�7��}�u��p�d4���%�Ao�H��kOK�u�Q��m:jAtP�
l�F���x��������ϳ����W{/_�>�������������D�3      �%   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      �%   �  x��ZKo�8>׿B��%@S�a�Yo�۸A=0h�VXH�@IF�������?��!M=����[Z#����P9ߖ��u-K��?_�gy!sy��.j����R�o�7O�+�s*4�[�UU��s�U�3U�e1�N�(3�|x�Z?>�_��SY�V�79��?
��7BՂ��T��� �-�H���j
]M�ן��A��n@��0T0�q��������Q2eiק���Z��V� r�L�*�O���/뛫Ǜ/{�{]k��S�^rFW�f���m)�u�RiX.�\ldМ�̞���t�}NSV:�'=�$< -�1��満`����iC��=��(2m�}\�M���ަJ~~��֩.�N�R�J��U��!Ob�nb�%��)���
Nc�'�ٲV.�f�R��H��+Kd!P�����GH���7¤4W�k�P?����ϫ��V��3..����ʹ�m����X�t�B���!�d���詶]a�`�H?�\��;FF�I�y�r�t�	X� �3�����<��;�'2�������ֲnr6�p��4�u����m��@mf-�d��i��U2��¢@�#;f%�Fq���!��*M���p���V�� Q�}��A�'��"��bmUu�J7��� I;#2��hU	+�gb�ؙ~��t�~B�6K�^�p%���Ď�{Y��	a	^���!��80��g�3����C�{a��p�Z�B�g˙#���$/�te�|G�3�A�o猱�ಙc��&��62�%0��*�>�.�@:���>܋��g��㯃h�q����_+�F`�=�m�l���&D�,�Lw-ΪdD�U��l�;�zެ������ރQޖcp���4%]r��~���&G��q_�J_/�f$��u�@߿����SW���oݒ	�I���s������!��3�axc��=��LS��ܳ�V�$F��Y8��[t;ASjFfx\]hwR���rV��9�3�r�+�ۗVFD�`֕[����dq]T0���49�5�խ����M���RI��Png���dP��<�	O]������pH��^ȗrFاa��=���?�s�`�"�����ף;fy&�lە�ф�A�w�@�2�{��t<g��K� 8�0�gW�1Q026��	h��"�F2z�9	�}!�$z�������Mg2���^.f� �W)�݅���o�d�������-՛�h0^E��k]�̰���+`����<��R?�x[/�i;=��dv�m���i�7������[ �?�\�,��Tx��W=�C)}~w����o�oqva_���2�+�E�+�c�q�� ��zvM]v̒H��G���DG$)�`^s���$�"e��A�ݮc@�򙸇G�����}=h��L���Ik����Y����p�iYz�~
�Ǔ˭`q���	�1;F��3������p�q{A\s�}�^Sd��}J#!3��j[й�vw*X�D�$����Ԗq�4�(3rc���B;kss\#�2���*�6��t�`������N��`M�!�� �e�O�ҹD#��y_�`�4&n�+��?�h[M��e<0UQ���!}��	�lߵ
Q�W�un��G�.���ډ#z�)�����
ȨW��~�:2m��7�&�� 	�VD���*_���AY���IG��B�t��9�l��o��vwD��=�E���
C�A��G��z�9L�>O@�ga�2�R�Cã�L��"F|�W����:�N���絇�Bo�]���6W�Ug
I*	���h�~P3�6}�?�f���#�fя�7�HT��M�|\�<�]b�?�e�4	n7����2~`�ѱ(�^w#r@\qf�"�9��+q�O�bg~�")�uY(���B��?�ן�n$�S6��D���O�
%]�o?-�E	!��_.Ѿcu����F���]�V�� /8w�      �%   C  x��[Ks�8>O~5�9L�8$�
����%��e[^YfS��e�`[�� �$w����R��Tpƅ��Q�~=��l����6���,�,�ki�Y�K{�(~�EH�Rq�����Z�D*�%���נ�f9�/9��ϓy��RV�7�����b~M*���q�Ɯ��7�?2+�0/�L��#�Z��+[y���Y�1�#�������\RI�`U.4n/�(���%d{^���m�k��$	$��T�dZ}x��J��Wj�8<+�D�%K��� �Y���O2�s�v�J4��v���AY��U)���K�6��.���oPj4���D��'BY���zw �V<�`m�L���+���al{�^Ԃ� ������	;Ǒ�oM[/v���w��C!�P�!�}x˴�e�*��"�0��Z�~b�,7o{�����Q�|2;�/�왥A���Rl�P��J��� n�i5�5J@����O��D�XDL
fJ��>���:�E!S���Q)��f�m��Њ|TU��v	�8x�}��bs��RySÚM�Q�	=�M��GU툼��`8�����x:�O�s{���x��ݏ�/���rp�f�픴t��62�����Q�����z�ۇȉܠ�'��y��a��;�{݁�}��[~���+�V�*O���l�uPR{��0��O�'�9��gpT=z��W& �9���Yh]i���M6��l����}�����N%� Ѥ�@ٚ����e�w5�%#xG���Sr#?t���Eeuh�F��>��C���O��I$�G��4�� �eD������w|-�emt�?�S�B�L��՚�o�h�	��e��Y���RTh�/b	�,b��#��F�;n�7�����C���"Z`l��ڏ����[�Iɰ�`�+l����:�\��*>9�Fc���1#0&�I��ʓ]ц�k">�gZ0%$�vn��F�+����,��r��IK�a����5k�ǝ>*�����m]þs�=�c��ۮ�4ĩ�� �yYG��bh�x�L���xz
��D>���c$�.�ˊѻ��a_�s0L��]w�^E�G�<��a���c������]��b��8ʌ����	|g�?�<��Y�3���)w�vJ{�qmeu�_z�t��7b���O�>@X���F���= �JKߗm0ӏ���W��&V@���/�ˌ[֋2��D�+��Jz�h#,�]x ��C�ݬ	��m�zX`���c�c���di�ز�a7���[��	(��}Ȫ�'�aH�-_���eQ����^�'�%��m���`������wN5޷6C�"-�[^.��KDc��2R��|�q8x��@��.p&����:z��
��K����Z�꾟3T�blqp�m9]�B�5W�p����s�
~�b��J�ztֿ�fZ%$cÌ��,��0Wt����w�.f��#�I�T"b�+���/����U��D��8��TZ��i�1�
^�����~6�&��xOLhk�F�.���0O���Q=�2j�H!��V6����:�.c��M�A1R?��W��T�eگ�q��/�]j�nnn���C     