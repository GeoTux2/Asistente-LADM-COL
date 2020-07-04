PGDMP     &                    x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) �   �%           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �%           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �%           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �%           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false                        2615    614512    test_ladm_col    SCHEMA        CREATE SCHEMA test_ladm_col;
    DROP SCHEMA test_ladm_col;
             postgres    false            ?           1259    614513    t_ili2db_seq    SEQUENCE     |   CREATE SEQUENCE test_ladm_col.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE test_ladm_col.t_ili2db_seq;
       test_ladm_col       postgres    false    7            D           1259    614549    cc_metodooperacion    TABLE     I  CREATE TABLE test_ladm_col.cc_metodooperacion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    formula character varying(255) NOT NULL,
    dimensiones_origen integer,
    ddimensiones_objetivo integer,
    col_transformacion_transformacion bigint,
    CONSTRAINT cc_metodooperacion_ddimensiones_objetivo_check CHECK (((ddimensiones_objetivo >= 0) AND (ddimensiones_objetivo <= 999999999))),
    CONSTRAINT cc_metodooperacion_dimensiones_origen_check CHECK (((dimensiones_origen >= 0) AND (dimensiones_origen <= 999999999)))
);
 -   DROP TABLE test_ladm_col.cc_metodooperacion;
       test_ladm_col         postgres    false    1087    7            �%           0    0    TABLE cc_metodooperacion    COMMENT       COMMENT ON TABLE test_ladm_col.cc_metodooperacion IS 'Estructura que proviene de la traducción de la clase CC_OperationMethod de la ISO 19111. Indica el método utilizado, mediante un algoritmo o un procedimiento, para realizar operaciones con coordenadas.';
            test_ladm_col       postgres    false    1092            �%           0    0 !   COLUMN cc_metodooperacion.formula    COMMENT     r  COMMENT ON COLUMN test_ladm_col.cc_metodooperacion.formula IS 'Fórmulas o procedimientos utilizadoa por este método de operación de coordenadas. Esto puede ser una referencia a una publicación. Tenga en cuenta que el método de operación puede no ser analítico, en cuyo caso este atributo hace referencia o contiene el procedimiento, no una fórmula analítica.';
            test_ladm_col       postgres    false    1092            �%           0    0 ,   COLUMN cc_metodooperacion.dimensiones_origen    COMMENT     �   COMMENT ON COLUMN test_ladm_col.cc_metodooperacion.dimensiones_origen IS 'Número de dimensiones en la fuente CRS de este método de operación de coordenadas.';
            test_ladm_col       postgres    false    1092            �%           0    0 /   COLUMN cc_metodooperacion.ddimensiones_objetivo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.cc_metodooperacion.ddimensiones_objetivo IS 'Número de dimensiones en el CRS de destino de este método de operación de coordenadas.';
            test_ladm_col       postgres    false    1092            �%           0    0 ;   COLUMN cc_metodooperacion.col_transformacion_transformacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.cc_metodooperacion.col_transformacion_transformacion IS 'Fórmula o procedimiento utilizado en la transformación.';
            test_ladm_col       postgres    false    1092            �           1259    615787    ci_forma_presentacion_codigo    TABLE     �  CREATE TABLE test_ladm_col.ci_forma_presentacion_codigo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col.ci_forma_presentacion_codigo;
       test_ladm_col         postgres    false    1087    7            �           1259    616075    col_areatipo    TABLE     �  CREATE TABLE test_ladm_col.col_areatipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 '   DROP TABLE test_ladm_col.col_areatipo;
       test_ladm_col         postgres    false    1087    7            E           1259    614556    col_areavalor    TABLE     �  CREATE TABLE test_ladm_col.col_areavalor (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 (   DROP TABLE test_ladm_col.col_areavalor;
       test_ladm_col         postgres    false    1087    7            �%           0    0    COLUMN col_areavalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.col_areavalor.tipo IS 'Indica si el valor a registrar corresponde al área gráfica o alfanumérica de la base de datos catastral.';
            test_ladm_col       postgres    false    1093            �%           0    0    COLUMN col_areavalor.area    COMMENT     �   COMMENT ON COLUMN test_ladm_col.col_areavalor.area IS 'Corresponde al valor del área registrada en la base de datos catastral.';
            test_ladm_col       postgres    false    1093            �%           0    0 %   COLUMN col_areavalor.datos_proyeccion    COMMENT     G  COMMENT ON COLUMN test_ladm_col.col_areavalor.datos_proyeccion IS 'Parametros de la proyección utilizada para el cálculo del área de la forma proj, ejemplo: ''EPSG:3116'', ''+proj=tmerc +lat_0=4.59620041666667 +lon_0=-74.0775079166667 +k=1 +x_0=1000000 +y_0=1000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs''';
            test_ladm_col       postgres    false    1093            �%           0    0 )   COLUMN col_areavalor.lc_construccion_area    COMMENT     u   COMMENT ON COLUMN test_ladm_col.col_areavalor.lc_construccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col       postgres    false    1093            �%           0    0 $   COLUMN col_areavalor.lc_terreno_area    COMMENT     p   COMMENT ON COLUMN test_ladm_col.col_areavalor.lc_terreno_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col       postgres    false    1093            �%           0    0 0   COLUMN col_areavalor.lc_servidumbretransito_area    COMMENT     |   COMMENT ON COLUMN test_ladm_col.col_areavalor.lc_servidumbretransito_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col       postgres    false    1093            �%           0    0 /   COLUMN col_areavalor.lc_unidadconstruccion_area    COMMENT     {   COMMENT ON COLUMN test_ladm_col.col_areavalor.lc_unidadconstruccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col       postgres    false    1093            `           1259    614825    col_baunitcomointeresado    TABLE     !  CREATE TABLE test_ladm_col.col_baunitcomointeresado (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint NOT NULL
);
 3   DROP TABLE test_ladm_col.col_baunitcomointeresado;
       test_ladm_col         postgres    false    1087    7            V           1259    614734    col_baunitfuente    TABLE     �   CREATE TABLE test_ladm_col.col_baunitfuente (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    unidad bigint NOT NULL
);
 +   DROP TABLE test_ladm_col.col_baunitfuente;
       test_ladm_col         postgres    false    1087    7            X           1259    614749    col_cclfuente    TABLE     �   CREATE TABLE test_ladm_col.col_cclfuente (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl bigint NOT NULL,
    fuente_espacial bigint NOT NULL
);
 (   DROP TABLE test_ladm_col.col_cclfuente;
       test_ladm_col         postgres    false    1087    7            \           1259    614789    col_clfuente    TABLE     �   CREATE TABLE test_ladm_col.col_clfuente (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 '   DROP TABLE test_ladm_col.col_clfuente;
       test_ladm_col         postgres    false    1087    7            �           1259    615733    col_contenidoniveltipo    TABLE     �  CREATE TABLE test_ladm_col.col_contenidoniveltipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col.col_contenidoniveltipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615931    col_dimensiontipo    TABLE     �  CREATE TABLE test_ladm_col.col_dimensiontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ,   DROP TABLE test_ladm_col.col_dimensiontipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615598    col_estadodisponibilidadtipo    TABLE     �  CREATE TABLE test_ladm_col.col_estadodisponibilidadtipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col.col_estadodisponibilidadtipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615904    col_estadoredserviciostipo    TABLE     �  CREATE TABLE test_ladm_col.col_estadoredserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_col.col_estadoredserviciostipo;
       test_ladm_col         postgres    false    1087    7            �           1259    616111    col_estructuratipo    TABLE     �  CREATE TABLE test_ladm_col.col_estructuratipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 -   DROP TABLE test_ladm_col.col_estructuratipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615778    col_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_col.col_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col.col_fuenteadministrativatipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615562    col_fuenteespacialtipo    TABLE     �  CREATE TABLE test_ladm_col.col_fuenteespacialtipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col.col_fuenteespacialtipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615949    col_grupointeresadotipo    TABLE     �  CREATE TABLE test_ladm_col.col_grupointeresadotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_col.col_grupointeresadotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615697    col_interpolaciontipo    TABLE     �  CREATE TABLE test_ladm_col.col_interpolaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_col.col_interpolaciontipo;
       test_ladm_col         postgres    false    1087    7            �           1259    616021    col_iso19125_tipo    TABLE     �  CREATE TABLE test_ladm_col.col_iso19125_tipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ,   DROP TABLE test_ladm_col.col_iso19125_tipo;
       test_ladm_col         postgres    false    1087    7            Z           1259    614768 
   col_masccl    TABLE     S  CREATE TABLE test_ladm_col.col_masccl (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_mas bigint NOT NULL,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint,
    ue_mas_lc_construccion bigint
);
 %   DROP TABLE test_ladm_col.col_masccl;
       test_ladm_col         postgres    false    1087    7            ^           1259    614806 	   col_mascl    TABLE     5  CREATE TABLE test_ladm_col.col_mascl (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint,
    ue_mas_lc_construccion bigint
);
 $   DROP TABLE test_ladm_col.col_mascl;
       test_ladm_col         postgres    false    1087    7            Y           1259    614757    col_menosccl    TABLE     _  CREATE TABLE test_ladm_col.col_menosccl (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_menos bigint NOT NULL,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint,
    ue_menos_lc_construccion bigint
);
 '   DROP TABLE test_ladm_col.col_menosccl;
       test_ladm_col         postgres    false    1087    7            ]           1259    614796    col_menoscl    TABLE     ?  CREATE TABLE test_ladm_col.col_menoscl (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint,
    ue_menos_lc_construccion bigint
);
 &   DROP TABLE test_ladm_col.col_menoscl;
       test_ladm_col         postgres    false    1087    7            �           1259    615742    col_metodoproducciontipo    TABLE     �  CREATE TABLE test_ladm_col.col_metodoproducciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_col.col_metodoproducciontipo;
       test_ladm_col         postgres    false    1087    7            c           1259    614852    col_miembros    TABLE       CREATE TABLE test_ladm_col.col_miembros (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    agrupacion bigint NOT NULL
);
 '   DROP TABLE test_ladm_col.col_miembros;
       test_ladm_col         postgres    false    1087    7            [           1259    614779    col_puntoccl    TABLE     )  CREATE TABLE test_ladm_col.col_puntoccl (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint,
    ccl bigint NOT NULL
);
 '   DROP TABLE test_ladm_col.col_puntoccl;
       test_ladm_col         postgres    false    1087    7            _           1259    614816    col_puntocl    TABLE       CREATE TABLE test_ladm_col.col_puntocl (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint
);
 &   DROP TABLE test_ladm_col.col_puntocl;
       test_ladm_col         postgres    false    1087    7            T           1259    614713    col_puntofuente    TABLE     8  CREATE TABLE test_ladm_col.col_puntofuente (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint
);
 *   DROP TABLE test_ladm_col.col_puntofuente;
       test_ladm_col         postgres    false    1087    7            �           1259    616084    col_puntotipo    TABLE     �  CREATE TABLE test_ladm_col.col_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 (   DROP TABLE test_ladm_col.col_puntotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615967    col_redserviciostipo    TABLE     �  CREATE TABLE test_ladm_col.col_redserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_ladm_col.col_redserviciostipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615877    col_registrotipo    TABLE     �  CREATE TABLE test_ladm_col.col_registrotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 +   DROP TABLE test_ladm_col.col_registrotipo;
       test_ladm_col         postgres    false    1087    7            R           1259    614698    col_relacionfuente    TABLE     �   CREATE TABLE test_ladm_col.col_relacionfuente (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL
);
 -   DROP TABLE test_ladm_col.col_relacionfuente;
       test_ladm_col         postgres    false    1087    7            W           1259    614742    col_relacionfuenteuespacial    TABLE     �   CREATE TABLE test_ladm_col.col_relacionfuenteuespacial (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 6   DROP TABLE test_ladm_col.col_relacionfuenteuespacial;
       test_ladm_col         postgres    false    1087    7            �           1259    616012    col_relacionsuperficietipo    TABLE     �  CREATE TABLE test_ladm_col.col_relacionsuperficietipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_col.col_relacionsuperficietipo;
       test_ladm_col         postgres    false    1087    7            a           1259    614834    col_responsablefuente    TABLE     -  CREATE TABLE test_ladm_col.col_responsablefuente (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint
);
 0   DROP TABLE test_ladm_col.col_responsablefuente;
       test_ladm_col         postgres    false    1087    7            P           1259    614678    col_rrrfuente    TABLE     
  CREATE TABLE test_ladm_col.col_rrrfuente (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    rrr_lc_restriccion bigint,
    rrr_lc_derecho bigint
);
 (   DROP TABLE test_ladm_col.col_rrrfuente;
       test_ladm_col         postgres    false    1087    7            b           1259    614843    col_topografofuente    TABLE     #  CREATE TABLE test_ladm_col.col_topografofuente (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    topografo_lc_interesado bigint,
    topografo_lc_agrupacioninteresados bigint
);
 .   DROP TABLE test_ladm_col.col_topografofuente;
       test_ladm_col         postgres    false    1087    7            H           1259    614599    col_transformacion    TABLE     �  CREATE TABLE test_ladm_col.col_transformacion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    localizacion_transformada public.geometry(PointZ,38820) NOT NULL,
    lc_puntocontrol_transformacion_y_resultado bigint,
    lc_puntolindero_transformacion_y_resultado bigint,
    lc_puntolevantamiento_transformacion_y_resultado bigint
);
 -   DROP TABLE test_ladm_col.col_transformacion;
       test_ladm_col         postgres    false    1087    7            �%           0    0    TABLE col_transformacion    COMMENT     �   COMMENT ON TABLE test_ladm_col.col_transformacion IS 'Registro de la fórmula o procedimiento utilizado en la transformación y de su resultado.';
            test_ladm_col       postgres    false    1096            �%           0    0 3   COLUMN col_transformacion.localizacion_transformada    COMMENT     �   COMMENT ON COLUMN test_ladm_col.col_transformacion.localizacion_transformada IS 'Geometría una vez realizado el proceso de transformación.';
            test_ladm_col       postgres    false    1096            �%           0    0 D   COLUMN col_transformacion.lc_puntocontrol_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_col.col_transformacion.lc_puntocontrol_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_col       postgres    false    1096            �%           0    0 D   COLUMN col_transformacion.lc_puntolindero_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_col.col_transformacion.lc_puntolindero_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_col       postgres    false    1096            �%           0    0 J   COLUMN col_transformacion.lc_puntolevantamiento_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_col.col_transformacion.lc_puntolevantamiento_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_col       postgres    false    1096            Q           1259    614687    col_uebaunit    TABLE     D  CREATE TABLE test_ladm_col.col_uebaunit (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    baunit bigint NOT NULL
);
 '   DROP TABLE test_ladm_col.col_uebaunit;
       test_ladm_col         postgres    false    1087    7            U           1259    614723    col_uefuente    TABLE     M  CREATE TABLE test_ladm_col.col_uefuente (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    fuente_espacial bigint NOT NULL
);
 '   DROP TABLE test_ladm_col.col_uefuente;
       test_ladm_col         postgres    false    1087    7            O           1259    614668    col_ueuegrupo    TABLE     5  CREATE TABLE test_ladm_col.col_ueuegrupo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    parte_lc_terreno bigint,
    parte_lc_servidumbretransito bigint,
    parte_lc_unidadconstruccion bigint,
    parte_lc_construccion bigint
);
 (   DROP TABLE test_ladm_col.col_ueuegrupo;
       test_ladm_col         postgres    false    1087    7            �           1259    615796 "   col_unidadadministrativabasicatipo    TABLE     �  CREATE TABLE test_ladm_col.col_unidadadministrativabasicatipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_col.col_unidadadministrativabasicatipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615643    col_unidadedificaciontipo    TABLE     �  CREATE TABLE test_ladm_col.col_unidadedificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col.col_unidadedificaciontipo;
       test_ladm_col         postgres    false    1087    7            S           1259    614705    col_unidadfuente    TABLE     �   CREATE TABLE test_ladm_col.col_unidadfuente (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    unidad bigint NOT NULL
);
 +   DROP TABLE test_ladm_col.col_unidadfuente;
       test_ladm_col         postgres    false    1087    7            �           1259    615895    col_volumentipo    TABLE     �  CREATE TABLE test_ladm_col.col_volumentipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 *   DROP TABLE test_ladm_col.col_volumentipo;
       test_ladm_col         postgres    false    1087    7            N           1259    614657    col_volumenvalor    TABLE     �  CREATE TABLE test_ladm_col.col_volumenvalor (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    volumen_medicion numeric(15,1) NOT NULL,
    tipo bigint NOT NULL,
    lc_construccion_volumen bigint,
    lc_terreno_volumen bigint,
    lc_servidumbretransito_volumen bigint,
    lc_unidadconstruccion_volumen bigint,
    CONSTRAINT col_volumenvalor_volumen_medicion_check CHECK (((volumen_medicion >= 0.0) AND (volumen_medicion <= 99999999999999.9)))
);
 +   DROP TABLE test_ladm_col.col_volumenvalor;
       test_ladm_col         postgres    false    1087    7            �%           0    0    TABLE col_volumenvalor    COMMENT     �   COMMENT ON TABLE test_ladm_col.col_volumenvalor IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar la medición de un volumen y la naturaleza de este.';
            test_ladm_col       postgres    false    1102            �%           0    0 (   COLUMN col_volumenvalor.volumen_medicion    COMMENT     e   COMMENT ON COLUMN test_ladm_col.col_volumenvalor.volumen_medicion IS 'Medición del volumen en m3.';
            test_ladm_col       postgres    false    1102            �%           0    0    COLUMN col_volumenvalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.col_volumenvalor.tipo IS 'Indicación de si el volumen es calculado, si figura como oficial o si se da otra circunstancia.';
            test_ladm_col       postgres    false    1102            �%           0    0 /   COLUMN col_volumenvalor.lc_construccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_col.col_volumenvalor.lc_construccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col       postgres    false    1102            �%           0    0 *   COLUMN col_volumenvalor.lc_terreno_volumen    COMMENT     ~   COMMENT ON COLUMN test_ladm_col.col_volumenvalor.lc_terreno_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col       postgres    false    1102            �%           0    0 6   COLUMN col_volumenvalor.lc_servidumbretransito_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_col.col_volumenvalor.lc_servidumbretransito_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col       postgres    false    1102            �%           0    0 5   COLUMN col_volumenvalor.lc_unidadconstruccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_col.col_volumenvalor.lc_unidadconstruccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col       postgres    false    1102            M           1259    614645 
   extarchivo    TABLE       CREATE TABLE test_ladm_col.extarchivo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 %   DROP TABLE test_ladm_col.extarchivo;
       test_ladm_col         postgres    false    1087    7            �%           0    0    TABLE extarchivo    COMMENT        COMMENT ON TABLE test_ladm_col.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
            test_ladm_col       postgres    false    1101            �%           0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     q   COMMENT ON COLUMN test_ladm_col.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
            test_ladm_col       postgres    false    1101            �%           0    0    COLUMN extarchivo.datos    COMMENT     X   COMMENT ON COLUMN test_ladm_col.extarchivo.datos IS 'Datos que contiene el documento.';
            test_ladm_col       postgres    false    1101            �%           0    0    COLUMN extarchivo.extraccion    COMMENT     h   COMMENT ON COLUMN test_ladm_col.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
            test_ladm_col       postgres    false    1101            �%           0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT     y   COMMENT ON COLUMN test_ladm_col.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
            test_ladm_col       postgres    false    1101            �%           0    0    COLUMN extarchivo.fecha_entrega    COMMENT     k   COMMENT ON COLUMN test_ladm_col.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
            test_ladm_col       postgres    false    1101            �%           0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_col       postgres    false    1101            �%           0    0 7   COLUMN extarchivo.lc_fuenteadministrtiva_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col.extarchivo.lc_fuenteadministrtiva_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_col       postgres    false    1101            �%           0    0 2   COLUMN extarchivo.lc_fuenteespacial_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col.extarchivo.lc_fuenteespacial_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_col       postgres    false    1101            F           1259    614570    extdireccion    TABLE     �  CREATE TABLE test_ladm_col.extdireccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 '   DROP TABLE test_ladm_col.extdireccion;
       test_ladm_col         postgres    false    1087    7            �%           0    0    TABLE extdireccion    COMMENT     m   COMMENT ON TABLE test_ladm_col.extdireccion IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_col       postgres    false    1094            �%           0    0     COLUMN extdireccion.localizacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.extdireccion.localizacion IS 'Par de valores georreferenciados (x,y) en la que se encuentra la dirección.';
            test_ladm_col       postgres    false    1094            �%           0    0 2   COLUMN extdireccion.extinteresado_ext_direccion_id    COMMENT     x   COMMENT ON COLUMN test_ladm_col.extdireccion.extinteresado_ext_direccion_id IS 'Identificador externo del interesado.';
            test_ladm_col       postgres    false    1094            �%           0    0 4   COLUMN extdireccion.lc_construccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col.extdireccion.lc_construccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col       postgres    false    1094            �%           0    0 '   COLUMN extdireccion.lc_predio_direccion    COMMENT     ^   COMMENT ON COLUMN test_ladm_col.extdireccion.lc_predio_direccion IS 'Dirección del predio.';
            test_ladm_col       postgres    false    1094            �%           0    0 /   COLUMN extdireccion.lc_terreno_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col.extdireccion.lc_terreno_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col       postgres    false    1094            �%           0    0 ;   COLUMN extdireccion.lc_servidumbretransito_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col.extdireccion.lc_servidumbretransito_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col       postgres    false    1094            �%           0    0 :   COLUMN extdireccion.lc_unidadconstruccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col.extdireccion.lc_unidadconstruccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col       postgres    false    1094            �           1259    615985     extdireccion_clase_via_principal    TABLE     �  CREATE TABLE test_ladm_col.extdireccion_clase_via_principal (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_col.extdireccion_clase_via_principal;
       test_ladm_col         postgres    false    1087    7            �           1259    616057    extdireccion_sector_ciudad    TABLE     �  CREATE TABLE test_ladm_col.extdireccion_sector_ciudad (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_col.extdireccion_sector_ciudad;
       test_ladm_col         postgres    false    1087    7            �           1259    615544    extdireccion_sector_predio    TABLE     �  CREATE TABLE test_ladm_col.extdireccion_sector_predio (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_col.extdireccion_sector_predio;
       test_ladm_col         postgres    false    1087    7            �           1259    616093    extdireccion_tipo_direccion    TABLE     �  CREATE TABLE test_ladm_col.extdireccion_tipo_direccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_col.extdireccion_tipo_direccion;
       test_ladm_col         postgres    false    1087    7            K           1259    614627    extinteresado    TABLE     s  CREATE TABLE test_ladm_col.extinteresado (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    nombre character varying(255),
    documento_escaneado character varying(255),
    extredserviciosfisica_ext_interesado_administrador_id bigint,
    lc_agrupacionintersdos_ext_pid bigint,
    lc_interesado_ext_pid bigint
);
 (   DROP TABLE test_ladm_col.extinteresado;
       test_ladm_col         postgres    false    1087    7            �%           0    0    TABLE extinteresado    COMMENT     n   COMMENT ON TABLE test_ladm_col.extinteresado IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_col       postgres    false    1099            �%           0    0    COLUMN extinteresado.nombre    COMMENT     [   COMMENT ON COLUMN test_ladm_col.extinteresado.nombre IS 'Campo de nombre del interesado.';
            test_ladm_col       postgres    false    1099            �%           0    0 (   COLUMN extinteresado.documento_escaneado    COMMENT     �   COMMENT ON COLUMN test_ladm_col.extinteresado.documento_escaneado IS 'Ruta de almacenamiento del documento escaneado del interesado.';
            test_ladm_col       postgres    false    1099            �%           0    0 J   COLUMN extinteresado.extredserviciosfisica_ext_interesado_administrador_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col.extinteresado.extredserviciosfisica_ext_interesado_administrador_id IS 'Identificador de referencia a un interesado externo que es el administrador.';
            test_ladm_col       postgres    false    1099            �%           0    0 3   COLUMN extinteresado.lc_agrupacionintersdos_ext_pid    COMMENT     q   COMMENT ON COLUMN test_ladm_col.extinteresado.lc_agrupacionintersdos_ext_pid IS 'Identificador del interesado.';
            test_ladm_col       postgres    false    1099             &           0    0 *   COLUMN extinteresado.lc_interesado_ext_pid    COMMENT     h   COMMENT ON COLUMN test_ladm_col.extinteresado.lc_interesado_ext_pid IS 'Identificador del interesado.';
            test_ladm_col       postgres    false    1099            L           1259    614639    extredserviciosfisica    TABLE     �   CREATE TABLE test_ladm_col.extredserviciosfisica (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    orientada boolean
);
 0   DROP TABLE test_ladm_col.extredserviciosfisica;
       test_ladm_col         postgres    false    1087    7            &           0    0    TABLE extredserviciosfisica    COMMENT     �   COMMENT ON TABLE test_ladm_col.extredserviciosfisica IS 'Referencia a una clase externa para gestionar las redes físicas de servicios.';
            test_ladm_col       postgres    false    1100            &           0    0 &   COLUMN extredserviciosfisica.orientada    COMMENT     }   COMMENT ON COLUMN test_ladm_col.extredserviciosfisica.orientada IS 'Indica si la red de servicios tiene un gradiente o no.';
            test_ladm_col       postgres    false    1100            I           1259    614612    extunidadedificacionfisica    TABLE     �   CREATE TABLE test_ladm_col.extunidadedificacionfisica (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 5   DROP TABLE test_ladm_col.extunidadedificacionfisica;
       test_ladm_col         postgres    false    1087    7            &           0    0     TABLE extunidadedificacionfisica    COMMENT     v   COMMENT ON TABLE test_ladm_col.extunidadedificacionfisica IS 'Control externo de la unidad de edificación física.';
            test_ladm_col       postgres    false    1097            G           1259    614591    fraccion    TABLE     �  CREATE TABLE test_ladm_col.fraccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    denominador integer NOT NULL,
    numerador integer NOT NULL,
    col_miembros_participacion bigint,
    lc_predio_copropiedad_coeficiente bigint,
    CONSTRAINT fraccion_denominador_check CHECK (((denominador >= 0) AND (denominador <= 999999999))),
    CONSTRAINT fraccion_numerador_check CHECK (((numerador >= 0) AND (numerador <= 999999999)))
);
 #   DROP TABLE test_ladm_col.fraccion;
       test_ladm_col         postgres    false    1087    7            &           0    0    TABLE fraccion    COMMENT     �   COMMENT ON TABLE test_ladm_col.fraccion IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar una fracción o quebrado cona serie específica de condiciones.';
            test_ladm_col       postgres    false    1095            &           0    0    COLUMN fraccion.denominador    COMMENT     �   COMMENT ON COLUMN test_ladm_col.fraccion.denominador IS 'Parte inferior de la fracción. Debe ser mayor que 0. Debe ser mayor que el numerador.';
            test_ladm_col       postgres    false    1095            &           0    0    COLUMN fraccion.numerador    COMMENT     �   COMMENT ON COLUMN test_ladm_col.fraccion.numerador IS 'Parte superior de la fracción. Debe ser mayor que 0. Debe sder menor que el denominador.';
            test_ladm_col       postgres    false    1095            d           1259    614861 	   gc_barrio    TABLE     A  CREATE TABLE test_ladm_col.gc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 $   DROP TABLE test_ladm_col.gc_barrio;
       test_ladm_col         postgres    false    1087    7            &           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
            test_ladm_col       postgres    false    1124            &           0    0    COLUMN gc_barrio.codigo    COMMENT     ^   COMMENT ON COLUMN test_ladm_col.gc_barrio.codigo IS 'Código de identificación del barrio.';
            test_ladm_col       postgres    false    1124            	&           0    0    COLUMN gc_barrio.nombre    COMMENT     J   COMMENT ON COLUMN test_ladm_col.gc_barrio.nombre IS 'Nombre del barrio.';
            test_ladm_col       postgres    false    1124            
&           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     z   COMMENT ON COLUMN test_ladm_col.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
            test_ladm_col       postgres    false    1124            &           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_ladm_col       postgres    false    1124            e           1259    614871 !   gc_calificacionunidadconstruccion    TABLE     �  CREATE TABLE test_ladm_col.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 <   DROP TABLE test_ladm_col.gc_calificacionunidadconstruccion;
       test_ladm_col         postgres    false    1087    7            &           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
            test_ladm_col       postgres    false    1125            &           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
            test_ladm_col       postgres    false    1125            &           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
            test_ladm_col       postgres    false    1125            &           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
            test_ladm_col       postgres    false    1125            &           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
            test_ladm_col       postgres    false    1125            f           1259    614881    gc_comisionesconstruccion    TABLE       CREATE TABLE test_ladm_col.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 4   DROP TABLE test_ladm_col.gc_comisionesconstruccion;
       test_ladm_col         postgres    false    1087    7            &           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col       postgres    false    1126            &           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col       postgres    false    1126            &           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_col       postgres    false    1126            g           1259    614891    gc_comisionesterreno    TABLE       CREATE TABLE test_ladm_col.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 /   DROP TABLE test_ladm_col.gc_comisionesterreno;
       test_ladm_col         postgres    false    1087    7            &           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col       postgres    false    1127            &           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
            test_ladm_col       postgres    false    1127            &           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_col       postgres    false    1127            h           1259    614901    gc_comisionesunidadconstruccion    TABLE       CREATE TABLE test_ladm_col.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 :   DROP TABLE test_ladm_col.gc_comisionesunidadconstruccion;
       test_ladm_col         postgres    false    1087    7            &           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col       postgres    false    1128            &           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col       postgres    false    1128            &           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_col       postgres    false    1128            �           1259    615634    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_col.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col.gc_condicionprediotipo;
       test_ladm_col         postgres    false    1087    7            i           1259    614911    gc_construccion    TABLE     C  CREATE TABLE test_ladm_col.gc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 *   DROP TABLE test_ladm_col.gc_construccion;
       test_ladm_col         postgres    false    1087    7            &           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_col       postgres    false    1129            &           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col       postgres    false    1129            &           0    0    COLUMN gc_construccion.etiqueta    COMMENT     ]   COMMENT ON COLUMN test_ladm_col.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
            test_ladm_col       postgres    false    1129            &           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col       postgres    false    1129            &           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col       postgres    false    1129            &           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     o   COMMENT ON COLUMN test_ladm_col.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_col       postgres    false    1129             &           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     t   COMMENT ON COLUMN test_ladm_col.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_col       postgres    false    1129            !&           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT     w   COMMENT ON COLUMN test_ladm_col.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_col       postgres    false    1129            "&           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     |   COMMENT ON COLUMN test_ladm_col.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_col       postgres    false    1129            #&           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     p   COMMENT ON COLUMN test_ladm_col.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
            test_ladm_col       postgres    false    1129            $&           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
            test_ladm_col       postgres    false    1129            %&           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     ^   COMMENT ON COLUMN test_ladm_col.gc_construccion.area_construida IS 'Área total construida.';
            test_ladm_col       postgres    false    1129            &&           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
            test_ladm_col       postgres    false    1129            w           1259    615049    gc_copropiedad    TABLE     x  CREATE TABLE test_ladm_col.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 )   DROP TABLE test_ladm_col.gc_copropiedad;
       test_ladm_col         postgres    false    1087    7            '&           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
            test_ladm_col       postgres    false    1143            j           1259    614923    gc_datosphcondominio    TABLE     �  CREATE TABLE test_ladm_col.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 /   DROP TABLE test_ladm_col.gc_datosphcondominio;
       test_ladm_col         postgres    false    1087    7            (&           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
            test_ladm_col       postgres    false    1130            )&           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_col       postgres    false    1130            *&           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_col       postgres    false    1130            +&           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_col       postgres    false    1130            ,&           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_col       postgres    false    1130            -&           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_col       postgres    false    1130            .&           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
            test_ladm_col       postgres    false    1130            /&           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
            test_ladm_col       postgres    false    1130            k           1259    614930    gc_datostorreph    TABLE     �  CREATE TABLE test_ladm_col.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 *   DROP TABLE test_ladm_col.gc_datostorreph;
       test_ladm_col         postgres    false    1087    7            0&           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
            test_ladm_col       postgres    false    1131            1&           0    0    COLUMN gc_datostorreph.torre    COMMENT     d   COMMENT ON COLUMN test_ladm_col.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
            test_ladm_col       postgres    false    1131            2&           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     d   COMMENT ON COLUMN test_ladm_col.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
            test_ladm_col       postgres    false    1131            3&           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT     v   COMMENT ON COLUMN test_ladm_col.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
            test_ladm_col       postgres    false    1131            4&           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     c   COMMENT ON COLUMN test_ladm_col.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
            test_ladm_col       postgres    false    1131            5&           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
            test_ladm_col       postgres    false    1131            l           1259    614937    gc_direccion    TABLE     0  CREATE TABLE test_ladm_col.gc_direccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 '   DROP TABLE test_ladm_col.gc_direccion;
       test_ladm_col         postgres    false    1087    7            6&           0    0    COLUMN gc_direccion.valor    COMMENT     a   COMMENT ON COLUMN test_ladm_col.gc_direccion.valor IS 'Registros de la direcciones del predio.';
            test_ladm_col       postgres    false    1132            7&           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
            test_ladm_col       postgres    false    1132            8&           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
            test_ladm_col       postgres    false    1132            9&           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT        COMMENT ON COLUMN test_ladm_col.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
            test_ladm_col       postgres    false    1132            m           1259    614948    gc_estadopredio    TABLE     2  CREATE TABLE test_ladm_col.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 *   DROP TABLE test_ladm_col.gc_estadopredio;
       test_ladm_col         postgres    false    1087    7            :&           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
            test_ladm_col       postgres    false    1133            ;&           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT        COMMENT ON COLUMN test_ladm_col.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
            test_ladm_col       postgres    false    1133            <&           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     ~   COMMENT ON COLUMN test_ladm_col.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
            test_ladm_col       postgres    false    1133            =&           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     {   COMMENT ON COLUMN test_ladm_col.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
            test_ladm_col       postgres    false    1133            >&           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
            test_ladm_col       postgres    false    1133            n           1259    614955 
   gc_manzana    TABLE     L  CREATE TABLE test_ladm_col.gc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 %   DROP TABLE test_ladm_col.gc_manzana;
       test_ladm_col         postgres    false    1087    7            ?&           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
            test_ladm_col       postgres    false    1134            @&           0    0    COLUMN gc_manzana.codigo    COMMENT     h   COMMENT ON COLUMN test_ladm_col.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
            test_ladm_col       postgres    false    1134            A&           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     k   COMMENT ON COLUMN test_ladm_col.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
            test_ladm_col       postgres    false    1134            B&           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
            test_ladm_col       postgres    false    1134            C&           0    0    COLUMN gc_manzana.geometria    COMMENT     b   COMMENT ON COLUMN test_ladm_col.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
            test_ladm_col       postgres    false    1134            o           1259    614965    gc_perimetro    TABLE     �  CREATE TABLE test_ladm_col.gc_perimetro (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 '   DROP TABLE test_ladm_col.gc_perimetro;
       test_ladm_col         postgres    false    1087    7            D&           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
            test_ladm_col       postgres    false    1135            E&           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
            test_ladm_col       postgres    false    1135            F&           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
            test_ladm_col       postgres    false    1135            G&           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     p   COMMENT ON COLUMN test_ladm_col.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
            test_ladm_col       postgres    false    1135            H&           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
            test_ladm_col       postgres    false    1135            I&           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     a   COMMENT ON COLUMN test_ladm_col.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
            test_ladm_col       postgres    false    1135            J&           0    0    COLUMN gc_perimetro.geometria    COMMENT     ^   COMMENT ON COLUMN test_ladm_col.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
            test_ladm_col       postgres    false    1135            v           1259    615038    gc_prediocatastro    TABLE     t  CREATE TABLE test_ladm_col.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 ,   DROP TABLE test_ladm_col.gc_prediocatastro;
       test_ladm_col         postgres    false    1087    7            K&           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
            test_ladm_col       postgres    false    1142            L&           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
            test_ladm_col       postgres    false    1142            M&           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT       COMMENT ON COLUMN test_ladm_col.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_col       postgres    false    1142            N&           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT       COMMENT ON COLUMN test_ladm_col.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_col       postgres    false    1142            O&           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     E  COMMENT ON COLUMN test_ladm_col.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_col       postgres    false    1142            P&           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
            test_ladm_col       postgres    false    1142            Q&           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
            test_ladm_col       postgres    false    1142            R&           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
            test_ladm_col       postgres    false    1142            S&           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     p   COMMENT ON COLUMN test_ladm_col.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_col       postgres    false    1142            T&           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     D  COMMENT ON COLUMN test_ladm_col.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_col       postgres    false    1142            U&           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
            test_ladm_col       postgres    false    1142            V&           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT     g   COMMENT ON COLUMN test_ladm_col.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
            test_ladm_col       postgres    false    1142            p           1259    614975    gc_propietario    TABLE     *  CREATE TABLE test_ladm_col.gc_propietario (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 )   DROP TABLE test_ladm_col.gc_propietario;
       test_ladm_col         postgres    false    1087    7            W&           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
            test_ladm_col       postgres    false    1136            X&           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
            test_ladm_col       postgres    false    1136            Y&           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
            test_ladm_col       postgres    false    1136            Z&           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     ~   COMMENT ON COLUMN test_ladm_col.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
            test_ladm_col       postgres    false    1136            [&           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     n   COMMENT ON COLUMN test_ladm_col.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
            test_ladm_col       postgres    false    1136            \&           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     p   COMMENT ON COLUMN test_ladm_col.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
            test_ladm_col       postgres    false    1136            ]&           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     r   COMMENT ON COLUMN test_ladm_col.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
            test_ladm_col       postgres    false    1136            ^&           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     t   COMMENT ON COLUMN test_ladm_col.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
            test_ladm_col       postgres    false    1136            _&           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
            test_ladm_col       postgres    false    1136            q           1259    614985    gc_sectorrural    TABLE     �   CREATE TABLE test_ladm_col.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 )   DROP TABLE test_ladm_col.gc_sectorrural;
       test_ladm_col         postgres    false    1087    7            `&           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
            test_ladm_col       postgres    false    1137            a&           0    0    COLUMN gc_sectorrural.codigo    COMMENT     r   COMMENT ON COLUMN test_ladm_col.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_col       postgres    false    1137            b&           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_col       postgres    false    1137            r           1259    614995    gc_sectorurbano    TABLE     �   CREATE TABLE test_ladm_col.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 *   DROP TABLE test_ladm_col.gc_sectorurbano;
       test_ladm_col         postgres    false    1087    7            c&           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
            test_ladm_col       postgres    false    1138            d&           0    0    COLUMN gc_sectorurbano.codigo    COMMENT     s   COMMENT ON COLUMN test_ladm_col.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_col       postgres    false    1138            e&           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_col       postgres    false    1138            �           1259    615832    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_ladm_col.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col.gc_sistemaprocedenciadatostipo;
       test_ladm_col         postgres    false    1087    7            s           1259    615005 
   gc_terreno    TABLE     H  CREATE TABLE test_ladm_col.gc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 %   DROP TABLE test_ladm_col.gc_terreno;
       test_ladm_col         postgres    false    1087    7            f&           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
            test_ladm_col       postgres    false    1139            g&           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
            test_ladm_col       postgres    false    1139            h&           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
            test_ladm_col       postgres    false    1139            i&           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
            test_ladm_col       postgres    false    1139            j&           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT     m   COMMENT ON COLUMN test_ladm_col.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
            test_ladm_col       postgres    false    1139            k&           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_col       postgres    false    1139            t           1259    615016    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_ladm_col.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_ladm_col.gc_unidadconstruccion;
       test_ladm_col         postgres    false    1087    7            l&           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_col       postgres    false    1140            m&           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col       postgres    false    1140            n&           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT     m   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
            test_ladm_col       postgres    false    1140            o&           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col       postgres    false    1140            p&           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col       postgres    false    1140            q&           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_col       postgres    false    1140            r&           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_col       postgres    false    1140            s&           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_col       postgres    false    1140            t&           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_col       postgres    false    1140            u&           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     ~   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_col       postgres    false    1140            v&           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     |   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_col       postgres    false    1140            w&           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_col       postgres    false    1140            x&           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT     x   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
            test_ladm_col       postgres    false    1140            y&           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_col       postgres    false    1140            z&           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_col       postgres    false    1140            {&           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
            test_ladm_col       postgres    false    1140            |&           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_col       postgres    false    1140            �           1259    615805    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col.gc_unidadconstrucciontipo;
       test_ladm_col         postgres    false    1087    7            u           1259    615028 	   gc_vereda    TABLE     l  CREATE TABLE test_ladm_col.gc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 $   DROP TABLE test_ladm_col.gc_vereda;
       test_ladm_col         postgres    false    1087    7            }&           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_col.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
            test_ladm_col       postgres    false    1141            ~&           0    0    COLUMN gc_vereda.codigo    COMMENT     f   COMMENT ON COLUMN test_ladm_col.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
            test_ladm_col       postgres    false    1141            &           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     o   COMMENT ON COLUMN test_ladm_col.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
            test_ladm_col       postgres    false    1141            �&           0    0    COLUMN gc_vereda.nombre    COMMENT     L   COMMENT ON COLUMN test_ladm_col.gc_vereda.nombre IS 'Nombre de la vereda.';
            test_ladm_col       postgres    false    1141            �&           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_col.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
            test_ladm_col       postgres    false    1141            �&           0    0    COLUMN gc_vereda.geometria    COMMENT     Y   COMMENT ON COLUMN test_ladm_col.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
            test_ladm_col       postgres    false    1141            A           1259    614526    gm_multisurface2d    TABLE     �   CREATE TABLE test_ladm_col.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 ,   DROP TABLE test_ladm_col.gm_multisurface2d;
       test_ladm_col         postgres    false    1087    7            C           1259    614543    gm_multisurface3d    TABLE     �   CREATE TABLE test_ladm_col.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 ,   DROP TABLE test_ladm_col.gm_multisurface3d;
       test_ladm_col         postgres    false    1087    7            @           1259    614515    gm_surface2dlistvalue    TABLE     �   CREATE TABLE test_ladm_col.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 0   DROP TABLE test_ladm_col.gm_surface2dlistvalue;
       test_ladm_col         postgres    false    1087    7            B           1259    614532    gm_surface3dlistvalue    TABLE     �   CREATE TABLE test_ladm_col.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 0   DROP TABLE test_ladm_col.gm_surface3dlistvalue;
       test_ladm_col         postgres    false    1087    7            J           1259    614618    imagen    TABLE       CREATE TABLE test_ladm_col.imagen (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    uri character varying(255),
    extinteresado_huella_dactilar bigint,
    extinteresado_fotografia bigint,
    extinteresado_firma bigint
);
 !   DROP TABLE test_ladm_col.imagen;
       test_ladm_col         postgres    false    1087    7            �&           0    0    TABLE imagen    COMMENT     U   COMMENT ON TABLE test_ladm_col.imagen IS 'Referencia a una imagen mediante su url.';
            test_ladm_col       postgres    false    1098            �&           0    0    COLUMN imagen.uri    COMMENT     C   COMMENT ON COLUMN test_ladm_col.imagen.uri IS 'url de la imagen.';
            test_ladm_col       postgres    false    1098            �&           0    0 +   COLUMN imagen.extinteresado_huella_dactilar    COMMENT     x   COMMENT ON COLUMN test_ladm_col.imagen.extinteresado_huella_dactilar IS 'Imagen de la huella dactilar del interesado.';
            test_ladm_col       postgres    false    1098            �&           0    0 &   COLUMN imagen.extinteresado_fotografia    COMMENT     b   COMMENT ON COLUMN test_ladm_col.imagen.extinteresado_fotografia IS 'Fotografía del interesado.';
            test_ladm_col       postgres    false    1098            �&           0    0 !   COLUMN imagen.extinteresado_firma    COMMENT     W   COMMENT ON COLUMN test_ladm_col.imagen.extinteresado_firma IS 'Firma del interesado.';
            test_ladm_col       postgres    false    1098            �           1259    615994    ini_emparejamientotipo    TABLE     �  CREATE TABLE test_ladm_col.ini_emparejamientotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col.ini_emparejamientotipo;
       test_ladm_col         postgres    false    1087    7                       1259    615123    ini_predioinsumos    TABLE        CREATE TABLE test_ladm_col.ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_emparejamiento bigint,
    observaciones text,
    gc_predio_catastro bigint,
    snr_predio_juridico bigint
);
 ,   DROP TABLE test_ladm_col.ini_predioinsumos;
       test_ladm_col         postgres    false    1087    7            �&           0    0    TABLE ini_predioinsumos    COMMENT     �   COMMENT ON TABLE test_ladm_col.ini_predioinsumos IS 'Clase que relaciona los predios en los modelos de insumos para el Gestor Catastral y la SNR.';
            test_ladm_col       postgres    false    1151            �&           0    0 ,   COLUMN ini_predioinsumos.tipo_emparejamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_col.ini_predioinsumos.tipo_emparejamiento IS 'Tipo de emparejamiento de insumos Catastro-Registro';
            test_ladm_col       postgres    false    1151            �&           0    0 &   COLUMN ini_predioinsumos.observaciones    COMMENT     e   COMMENT ON COLUMN test_ladm_col.ini_predioinsumos.observaciones IS 'Observaciones de la relación.';
            test_ladm_col       postgres    false    1151            �           1259    616048    lc_acuerdotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_acuerdotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 )   DROP TABLE test_ladm_col.lc_acuerdotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615135    lc_agrupacioninteresados    TABLE     �  CREATE TABLE test_ladm_col.lc_agrupacioninteresados (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 3   DROP TABLE test_ladm_col.lc_agrupacioninteresados;
       test_ladm_col         postgres    false    1087    7            �&           0    0    TABLE lc_agrupacioninteresados    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_agrupacioninteresados IS 'Clase que hereda los atributos de la  Clase COL_Agrupación_Interesados.';
            test_ladm_col       postgres    false    1152            �&           0    0 $   COLUMN lc_agrupacioninteresados.tipo    COMMENT     t   COMMENT ON COLUMN test_ladm_col.lc_agrupacioninteresados.tipo IS 'Indica el tipo de agrupación del que se trata.';
            test_ladm_col       postgres    false    1152            �&           0    0 &   COLUMN lc_agrupacioninteresados.nombre    COMMENT     ]   COMMENT ON COLUMN test_ladm_col.lc_agrupacioninteresados.nombre IS 'Nombre del interesado.';
            test_ladm_col       postgres    false    1152            �&           0    0 :   COLUMN lc_agrupacioninteresados.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_agrupacioninteresados.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1152            �&           0    0 5   COLUMN lc_agrupacioninteresados.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_agrupacioninteresados.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1152            �&           0    0 2   COLUMN lc_agrupacioninteresados.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_agrupacioninteresados.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1152            �&           0    0 (   COLUMN lc_agrupacioninteresados.local_id    COMMENT     d   COMMENT ON COLUMN test_ladm_col.lc_agrupacioninteresados.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1152            �           1259    615679    lc_anexotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_anexotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 '   DROP TABLE test_ladm_col.lc_anexotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615379    lc_calificacionconvencional    TABLE     �  CREATE TABLE test_ladm_col.lc_calificacionconvencional (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_calificar bigint NOT NULL,
    total_calificacion integer NOT NULL,
    lc_unidad_construccion bigint,
    CONSTRAINT lc_calificacionconvencnal_total_calificacion_check CHECK (((total_calificacion >= 0) AND (total_calificacion <= 999999999)))
);
 6   DROP TABLE test_ladm_col.lc_calificacionconvencional;
       test_ladm_col         postgres    false    1087    7            �&           0    0 !   TABLE lc_calificacionconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_calificacionconvencional IS 'Proceso mediante el cual se le asigna un puntaje a las edificaciones de acuerdo a sus características constructivas';
            test_ladm_col       postgres    false    1172            �&           0    0 1   COLUMN lc_calificacionconvencional.tipo_calificar    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_calificacionconvencional.tipo_calificar IS 'Indica si la calificación de construcción corresponde a residencial, comercial o industrial.';
            test_ladm_col       postgres    false    1172            �&           0    0 5   COLUMN lc_calificacionconvencional.total_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_calificacionconvencional.total_calificacion IS 'Puntaje total de la calificación de la unidad de construcción.';
            test_ladm_col       postgres    false    1172            �           1259    615388    lc_calificacionnoconvencional    TABLE       CREATE TABLE test_ladm_col.lc_calificacionnoconvencional (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_anexo bigint NOT NULL,
    lc_unidad_construccion bigint
);
 8   DROP TABLE test_ladm_col.lc_calificacionnoconvencional;
       test_ladm_col         postgres    false    1087    7            �&           0    0 #   TABLE lc_calificacionnoconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_calificacionnoconvencional IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_col       postgres    false    1173            �&           0    0 /   COLUMN lc_calificacionnoconvencional.tipo_anexo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_calificacionnoconvencional.tipo_anexo IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_col       postgres    false    1173            �           1259    615607    lc_calificartipo    TABLE     �  CREATE TABLE test_ladm_col.lc_calificartipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 +   DROP TABLE test_ladm_col.lc_calificartipo;
       test_ladm_col         postgres    false    1087    7            �           1259    616003    lc_categoriasuelotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_categoriasuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_col.lc_categoriasuelotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    616129    lc_clasecalificaciontipo    TABLE     �  CREATE TABLE test_ladm_col.lc_clasecalificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_col.lc_clasecalificaciontipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615652    lc_clasesuelotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_clasesuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ,   DROP TABLE test_ladm_col.lc_clasesuelotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615958    lc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col.lc_condicionprediotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615146    lc_construccion    TABLE     t  CREATE TABLE test_ladm_col.lc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 *   DROP TABLE test_ladm_col.lc_construccion;
       test_ladm_col         postgres    false    1087    7            �&           0    0    TABLE lc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_construccion IS 'Es la unión de materiales adheridos al terreno, con carácter de permanente, cualesquiera sean los elementos que la constituyan.';
            test_ladm_col       postgres    false    1153            �&           0    0 $   COLUMN lc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col       postgres    false    1153            �&           0    0 (   COLUMN lc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col       postgres    false    1153            �&           0    0 #   COLUMN lc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col       postgres    false    1153            �&           0    0 #   COLUMN lc_construccion.numero_pisos    COMMENT     o   COMMENT ON COLUMN test_ladm_col.lc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_col       postgres    false    1153            �&           0    0 %   COLUMN lc_construccion.numero_sotanos    COMMENT     t   COMMENT ON COLUMN test_ladm_col.lc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_col       postgres    false    1153            �&           0    0 '   COLUMN lc_construccion.numero_mezanines    COMMENT     w   COMMENT ON COLUMN test_ladm_col.lc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_col       postgres    false    1153            �&           0    0 )   COLUMN lc_construccion.numero_semisotanos    COMMENT     |   COMMENT ON COLUMN test_ladm_col.lc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_col       postgres    false    1153            �&           0    0 (   COLUMN lc_construccion.anio_construccion    COMMENT     r   COMMENT ON COLUMN test_ladm_col.lc_construccion.anio_construccion IS 'Año de edificación de la construcción.';
            test_ladm_col       postgres    false    1153            �&           0    0 *   COLUMN lc_construccion.avaluo_construccion    COMMENT     w   COMMENT ON COLUMN test_ladm_col.lc_construccion.avaluo_construccion IS 'Avalúo total catastral de la construcción.';
            test_ladm_col       postgres    false    1153            �&           0    0 (   COLUMN lc_construccion.area_construccion    COMMENT     `   COMMENT ON COLUMN test_ladm_col.lc_construccion.area_construccion IS 'Área total construida.';
            test_ladm_col       postgres    false    1153            �&           0    0    COLUMN lc_construccion.altura    COMMENT     _   COMMENT ON COLUMN test_ladm_col.lc_construccion.altura IS 'Altura total de la construcción.';
            test_ladm_col       postgres    false    1153            �&           0    0 $   COLUMN lc_construccion.observaciones    COMMENT     q   COMMENT ON COLUMN test_ladm_col.lc_construccion.observaciones IS 'Observaciones generales de la construcción.';
            test_ladm_col       postgres    false    1153            �&           0    0     COLUMN lc_construccion.dimension    COMMENT     W   COMMENT ON COLUMN test_ladm_col.lc_construccion.dimension IS 'Dimensión del objeto.';
            test_ladm_col       postgres    false    1153            �&           0    0    COLUMN lc_construccion.etiqueta    COMMENT     r   COMMENT ON COLUMN test_ladm_col.lc_construccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col       postgres    false    1153            �&           0    0 *   COLUMN lc_construccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_construccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col       postgres    false    1153            �&           0    0     COLUMN lc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_construccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_col       postgres    false    1153            �&           0    0 1   COLUMN lc_construccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_construccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1153            �&           0    0 ,   COLUMN lc_construccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_construccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1153            �&           0    0 )   COLUMN lc_construccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_construccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1153            �&           0    0    COLUMN lc_construccion.local_id    COMMENT     [   COMMENT ON COLUMN test_ladm_col.lc_construccion.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1153            �           1259    615670    lc_construccionplantatipo    TABLE     �  CREATE TABLE test_ladm_col.lc_construccionplantatipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col.lc_construccionplantatipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615868    lc_construcciontipo    TABLE     �  CREATE TABLE test_ladm_col.lc_construcciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_ladm_col.lc_construcciontipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615161    lc_contactovisita    TABLE     %  CREATE TABLE test_ladm_col.lc_contactovisita (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 ,   DROP TABLE test_ladm_col.lc_contactovisita;
       test_ladm_col         postgres    false    1087    7            �&           0    0 5   COLUMN lc_contactovisita.tipo_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_contactovisita.tipo_documento_quien_atendio IS 'Indica el tipo de documento de la persona que atendió la visita predial.';
            test_ladm_col       postgres    false    1154            �&           0    0 7   COLUMN lc_contactovisita.numero_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_contactovisita.numero_documento_quien_atendio IS 'Indica el número de documento de la persona que atendió la visita predial.';
            test_ladm_col       postgres    false    1154            �&           0    0 4   COLUMN lc_contactovisita.primer_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_contactovisita.primer_nombre_quien_atendio IS 'Primer nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col       postgres    false    1154            �&           0    0 5   COLUMN lc_contactovisita.segundo_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_contactovisita.segundo_nombre_quien_atendio IS 'Segundo nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col       postgres    false    1154            �&           0    0 6   COLUMN lc_contactovisita.primer_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_contactovisita.primer_apellido_quien_atendio IS 'Primer apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col       postgres    false    1154            �&           0    0 7   COLUMN lc_contactovisita.segundo_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_contactovisita.segundo_apellido_quien_atendio IS 'Segundo apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col       postgres    false    1154            �&           0    0 ,   COLUMN lc_contactovisita.relacion_con_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_contactovisita.relacion_con_predio IS 'Relación con el predio de la persona encargada de atender la visita, por ejemplo propietario, encargado, administrador, poseedor, etc.';
            test_ladm_col       postgres    false    1154            �&           0    0 1   COLUMN lc_contactovisita.domicilio_notificaciones    COMMENT     ~   COMMENT ON COLUMN test_ladm_col.lc_contactovisita.domicilio_notificaciones IS 'Dirección de domicilio para notificaciones.';
            test_ladm_col       postgres    false    1154            �&           0    0     COLUMN lc_contactovisita.celular    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_contactovisita.celular IS 'Número de celular de la persona que atendió la visita de actividades catastrales.';
            test_ladm_col       postgres    false    1154            �&           0    0 +   COLUMN lc_contactovisita.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_contactovisita.correo_electronico IS 'Correo electrónico de la persona que atendió la visita de actividades catastrales.';
            test_ladm_col       postgres    false    1154            �&           0    0 0   COLUMN lc_contactovisita.autoriza_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_contactovisita.autoriza_notificaciones IS 'Indica si autoriza las notificaciones administrativas por medio de vía electrónica.';
            test_ladm_col       postgres    false    1154            �           1259    615397 )   lc_datosadicionaleslevantamientocatastral    TABLE     �  CREATE TABLE test_ladm_col.lc_datosadicionaleslevantamientocatastral (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 D   DROP TABLE test_ladm_col.lc_datosadicionaleslevantamientocatastral;
       test_ladm_col         postgres    false    1087    7            �&           0    0 /   TABLE lc_datosadicionaleslevantamientocatastral    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_datosadicionaleslevantamientocatastral IS 'Datos de adicionales del predio para catastro multipropósito';
            test_ladm_col       postgres    false    1174            �&           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.tiene_area_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.tiene_area_registral IS 'Indica si el predio según la información registral cuenta con el valor de área en la cabida y linderos.';
            test_ladm_col       postgres    false    1174            �&           0    0 B   COLUMN lc_datosadicionaleslevantamientocatastral.area_registral_m2    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.area_registral_m2 IS 'Indica el valor del área registral del predio en metros cuadrados.';
            test_ladm_col       postgres    false    1174            �&           0    0 R   COLUMN lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral    COMMENT     �  COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral IS 'Se considerará como procedimientos catastrales con efectos registrales los siguientes: actualización de linderos, rectificación de área por imprecisa determinación, actualización masiva y puntual de linderos y áreas, rectificación de linderos por acuerdo entre las partes, e inclusión de área y/o linderos.';
            test_ladm_col       postgres    false    1174            �&           0    0 F   COLUMN lc_datosadicionaleslevantamientocatastral.destinacion_economica    COMMENT     \  COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_col       postgres    false    1174            �&           0    0 <   COLUMN lc_datosadicionaleslevantamientocatastral.clase_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.clase_suelo IS 'Clasificación del suelo según el instrumento de planeación vigente.';
            test_ladm_col       postgres    false    1174            �&           0    0 @   COLUMN lc_datosadicionaleslevantamientocatastral.categoria_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.categoria_suelo IS 'Categoría del suelo según el instrumento de planeación vigente.';
            test_ladm_col       postgres    false    1174            �&           0    0 >   COLUMN lc_datosadicionaleslevantamientocatastral.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.observaciones IS 'Observaciones generales respecto del predio.';
            test_ladm_col       postgres    false    1174            �&           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.fecha_visita_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.fecha_visita_predial IS 'Fecha de la visita en campo al predio.';
            test_ladm_col       postgres    false    1174            �&           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor IS 'Indica el tipo de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_col       postgres    false    1174            �&           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor IS 'Indica el número de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_col       postgres    false    1174            �&           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor IS 'Primer nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col       postgres    false    1174            �&           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor IS 'Segundo nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col       postgres    false    1174            �&           0    0 L   COLUMN lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor IS 'Primer apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col       postgres    false    1174            �&           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor IS 'Segundo apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col       postgres    false    1174            �&           0    0 A   COLUMN lc_datosadicionaleslevantamientocatastral.resultado_visita    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.resultado_visita IS 'Posibles situaciones que se presentan y afectan el resultado del levantamiento de la información en campo.';
            test_ladm_col       postgres    false    1174            �&           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia    COMMENT       COMMENT ON COLUMN test_ladm_col.lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia IS 'Indica si dentro del proceso de formación o actualización catastral se suscribe acta de colindancia para el predio objeto de levantamiento catastral.';
            test_ladm_col       postgres    false    1174            �           1259    615174    lc_datosphcondominio    TABLE       CREATE TABLE test_ladm_col.lc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 /   DROP TABLE test_ladm_col.lc_datosphcondominio;
       test_ladm_col         postgres    false    1087    7            �&           0    0    TABLE lc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal.';
            test_ladm_col       postgres    false    1155            �&           0    0 .   COLUMN lc_datosphcondominio.area_total_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosphcondominio.area_total_terreno IS 'Área total del terreno del PH o Condominio Matriz.';
            test_ladm_col       postgres    false    1155            �&           0    0 6   COLUMN lc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_col       postgres    false    1155            �&           0    0 4   COLUMN lc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_col       postgres    false    1155            �&           0    0 1   COLUMN lc_datosphcondominio.area_total_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosphcondominio.area_total_construida IS 'Área total de construida del PH o Condominio Matriz.';
            test_ladm_col       postgres    false    1155            �&           0    0 9   COLUMN lc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_col       postgres    false    1155            �&           0    0 7   COLUMN lc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_col       postgres    false    1155            �&           0    0 )   COLUMN lc_datosphcondominio.numero_torres    COMMENT     r   COMMENT ON COLUMN test_ladm_col.lc_datosphcondominio.numero_torres IS 'Número de torres en el PH o Condominio.';
            test_ladm_col       postgres    false    1155            �&           0    0 3   COLUMN lc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_col       postgres    false    1155            �           1259    615182 
   lc_derecho    TABLE        CREATE TABLE test_ladm_col.lc_derecho (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 %   DROP TABLE test_ladm_col.lc_derecho;
       test_ladm_col         postgres    false    1087    7            �&           0    0    TABLE lc_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_derecho IS 'Clase que registra las instancias de los derechos que un interesado ejerce sobre un predio. Es una especialización de la clase COL_DRR del propio modelo.';
            test_ladm_col       postgres    false    1156            �&           0    0    COLUMN lc_derecho.tipo    COMMENT     M   COMMENT ON COLUMN test_ladm_col.lc_derecho.tipo IS 'Derecho que se ejerce.';
            test_ladm_col       postgres    false    1156            �&           0    0 "   COLUMN lc_derecho.fraccion_derecho    COMMENT     �  COMMENT ON COLUMN test_ladm_col.lc_derecho.fraccion_derecho IS 'Indica la fracción del derecho en relación a la forma de tenencia y el área que esta ocupa dentro de la extensión del predio. Ejemplo: un predio informal que se encuentra sobre un predio baldío y un predio privado tendrá un porcentaje de derecho de ocupación y posesión expresado en tanto por uno (0.0000000000 a 1.0000000000).';
            test_ladm_col       postgres    false    1156            �&           0    0 '   COLUMN lc_derecho.fecha_inicio_tenencia    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_derecho.fecha_inicio_tenencia IS 'Fecha de inicio de tenencia del interesado con respecto al predio.';
            test_ladm_col       postgres    false    1156            �&           0    0    COLUMN lc_derecho.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_derecho.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_col       postgres    false    1156            �&           0    0 ,   COLUMN lc_derecho.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_derecho.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1156            �&           0    0 '   COLUMN lc_derecho.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_derecho.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1156            �&           0    0 $   COLUMN lc_derecho.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_derecho.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1156            �&           0    0    COLUMN lc_derecho.local_id    COMMENT     V   COMMENT ON COLUMN test_ladm_col.lc_derecho.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1156            �           1259    615760    lc_derechotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_derechotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 )   DROP TABLE test_ladm_col.lc_derechotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    616120    lc_destinacioneconomicatipo    TABLE     �  CREATE TABLE test_ladm_col.lc_destinacioneconomicatipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_col.lc_destinacioneconomicatipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615589    lc_dominioconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col.lc_dominioconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_col.lc_dominioconstrucciontipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615886    lc_estadoconservaciontipo    TABLE     �  CREATE TABLE test_ladm_col.lc_estadoconservaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col.lc_estadoconservaciontipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615196    lc_estructuranovedadfmi    TABLE       CREATE TABLE test_ladm_col.lc_estructuranovedadfmi (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(3),
    numero_fmi character varying(80),
    lc_dtsdcnlstmntctstral_novedad_fmi bigint
);
 2   DROP TABLE test_ladm_col.lc_estructuranovedadfmi;
       test_ladm_col         postgres    false    1087    7            �&           0    0 A   COLUMN lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi IS 'Relaciona los cambios del predio respecto de la información registral vigente.';
            test_ladm_col       postgres    false    1157            �           1259    615203 !   lc_estructuranovedadnumeropredial    TABLE     .  CREATE TABLE test_ladm_col.lc_estructuranovedadnumeropredial (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    numero_predial character varying(30) NOT NULL,
    tipo_novedad bigint,
    lc_dtsdcnlstmntctstral_novedad_numeros_prediales bigint
);
 <   DROP TABLE test_ladm_col.lc_estructuranovedadnumeropredial;
       test_ladm_col         postgres    false    1087    7            �&           0    0 Y   COLUMN lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales IS 'Relaciona los cambios del predio respecto de la información catastral vigente.';
            test_ladm_col       postgres    false    1158            �           1259    615751 .   lc_estructuranovedadnumeropredial_tipo_novedad    TABLE     �  CREATE TABLE test_ladm_col.lc_estructuranovedadnumeropredial_tipo_novedad (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_col.lc_estructuranovedadnumeropredial_tipo_novedad;
       test_ladm_col         postgres    false    1087    7            �           1259    615688    lc_fotoidentificaciontipo    TABLE     �  CREATE TABLE test_ladm_col.lc_fotoidentificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col.lc_fotoidentificaciontipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615211    lc_fuenteadministrativa    TABLE        CREATE TABLE test_ladm_col.lc_fuenteadministrativa (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_ladm_col.lc_fuenteadministrativa;
       test_ladm_col         postgres    false    1087    7            �&           0    0    TABLE lc_fuenteadministrativa    COMMENT        COMMENT ON TABLE test_ladm_col.lc_fuenteadministrativa IS 'Clase que almacena las fuentes administrativas (escrituras, sentencias, actos administrativos, etc) que sustentan el Derecho respecto de la relación de tenencia entre el Interesado y el predio.';
            test_ladm_col       postgres    false    1159            �&           0    0 #   COLUMN lc_fuenteadministrativa.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteadministrativa.tipo IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_col       postgres    false    1159            �&           0    0 *   COLUMN lc_fuenteadministrativa.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteadministrativa.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_col       postgres    false    1159            �&           0    0 *   COLUMN lc_fuenteadministrativa.observacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteadministrativa.observacion IS 'Observaciones o descripción del documento de la fuente administrativa.';
            test_ladm_col       postgres    false    1159            �&           0    0 ,   COLUMN lc_fuenteadministrativa.numero_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteadministrativa.numero_fuente IS 'Identificador del documento, ejemplo: número de la resolución, número de la escritura pública o número de radicado de una sentencia.';
            test_ladm_col       postgres    false    1159            �&           0    0 4   COLUMN lc_fuenteadministrativa.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteadministrativa.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_col       postgres    false    1159            �&           0    0 -   COLUMN lc_fuenteadministrativa.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteadministrativa.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_col       postgres    false    1159            �&           0    0 5   COLUMN lc_fuenteadministrativa.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteadministrativa.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_col       postgres    false    1159            �&           0    0 1   COLUMN lc_fuenteadministrativa.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteadministrativa.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1159            �&           0    0 '   COLUMN lc_fuenteadministrativa.local_id    COMMENT     c   COMMENT ON COLUMN test_ladm_col.lc_fuenteadministrativa.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1159            �           1259    616039    lc_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_col.lc_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_col.lc_fuenteadministrativatipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615224    lc_fuenteespacial    TABLE     �  CREATE TABLE test_ladm_col.lc_fuenteespacial (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 ,   DROP TABLE test_ladm_col.lc_fuenteespacial;
       test_ladm_col         postgres    false    1087    7            �&           0    0    TABLE lc_fuenteespacial    COMMENT     w   COMMENT ON TABLE test_ladm_col.lc_fuenteespacial IS 'Clase que hereda los atributos de la  Clase COL_FuenteEspacial.';
            test_ladm_col       postgres    false    1160            �&           0    0    COLUMN lc_fuenteespacial.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteespacial.nombre IS 'Nombre de la fuente espacial del levantamiento catastral de un predio.';
            test_ladm_col       postgres    false    1160            �&           0    0    COLUMN lc_fuenteespacial.tipo    COMMENT     V   COMMENT ON COLUMN test_ladm_col.lc_fuenteespacial.tipo IS 'Tipo de fuente espacial.';
            test_ladm_col       postgres    false    1160            �&           0    0 $   COLUMN lc_fuenteespacial.descripcion    COMMENT     h   COMMENT ON COLUMN test_ladm_col.lc_fuenteespacial.descripcion IS 'Descripción de la fuente espacial.';
            test_ladm_col       postgres    false    1160            �&           0    0 !   COLUMN lc_fuenteespacial.metadato    COMMENT     a   COMMENT ON COLUMN test_ladm_col.lc_fuenteespacial.metadato IS 'Metadato de la fuente espacial.';
            test_ladm_col       postgres    false    1160            �&           0    0 .   COLUMN lc_fuenteespacial.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteespacial.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_col       postgres    false    1160            �&           0    0 '   COLUMN lc_fuenteespacial.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteespacial.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_col       postgres    false    1160            �&           0    0 /   COLUMN lc_fuenteespacial.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteespacial.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_col       postgres    false    1160            �&           0    0 +   COLUMN lc_fuenteespacial.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_fuenteespacial.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1160            �&           0    0 !   COLUMN lc_fuenteespacial.local_id    COMMENT     ]   COMMENT ON COLUMN test_ladm_col.lc_fuenteespacial.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1160            �           1259    615237    lc_grupocalificacion    TABLE     �  CREATE TABLE test_ladm_col.lc_grupocalificacion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    clase_calificacion bigint NOT NULL,
    conservacion bigint NOT NULL,
    subtotal integer NOT NULL,
    lc_calificacion_convencional bigint NOT NULL,
    CONSTRAINT lc_grupocalificacion_subtotal_check CHECK (((subtotal >= 0) AND (subtotal <= 9999999)))
);
 /   DROP TABLE test_ladm_col.lc_grupocalificacion;
       test_ladm_col         postgres    false    1087    7            �&           0    0    TABLE lc_grupocalificacion    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_grupocalificacion IS 'Calificación de la construccion según los item determinados para calificar.';
            test_ladm_col       postgres    false    1161            �&           0    0 .   COLUMN lc_grupocalificacion.clase_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_grupocalificacion.clase_calificacion IS 'Indica los elementos generales de la calificación de la construcción de acuerdo al método vigente.';
            test_ladm_col       postgres    false    1161            �&           0    0 (   COLUMN lc_grupocalificacion.conservacion    COMMENT     v   COMMENT ON COLUMN test_ladm_col.lc_grupocalificacion.conservacion IS 'Estado de conservación del grupo calificado.';
            test_ladm_col       postgres    false    1161            �&           0    0 $   COLUMN lc_grupocalificacion.subtotal    COMMENT     c   COMMENT ON COLUMN test_ladm_col.lc_grupocalificacion.subtotal IS 'Subtotal del grupo calificado.';
            test_ladm_col       postgres    false    1161            �           1259    615922    lc_grupoetnicotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_grupoetnicotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 -   DROP TABLE test_ladm_col.lc_grupoetnicotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615247    lc_interesado    TABLE     1  CREATE TABLE test_ladm_col.lc_interesado (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 (   DROP TABLE test_ladm_col.lc_interesado;
       test_ladm_col         postgres    false    1087    7            �&           0    0    TABLE lc_interesado    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_interesado IS 'Es la parte que tiene una relación con el predio por algún tipo de derecho, restricción, publicidad o responsabilidad';
            test_ladm_col       postgres    false    1162            �&           0    0    COLUMN lc_interesado.tipo    COMMENT     Z   COMMENT ON COLUMN test_ladm_col.lc_interesado.tipo IS 'Tipo de persona del que se trata';
            test_ladm_col       postgres    false    1162            �&           0    0 #   COLUMN lc_interesado.tipo_documento    COMMENT     g   COMMENT ON COLUMN test_ladm_col.lc_interesado.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_col       postgres    false    1162            �&           0    0 (   COLUMN lc_interesado.documento_identidad    COMMENT     o   COMMENT ON COLUMN test_ladm_col.lc_interesado.documento_identidad IS 'Documento de identidad del interesado.';
            test_ladm_col       postgres    false    1162            �&           0    0 "   COLUMN lc_interesado.primer_nombre    COMMENT     g   COMMENT ON COLUMN test_ladm_col.lc_interesado.primer_nombre IS 'Primer nombre de la persona física.';
            test_ladm_col       postgres    false    1162            �&           0    0 #   COLUMN lc_interesado.segundo_nombre    COMMENT     i   COMMENT ON COLUMN test_ladm_col.lc_interesado.segundo_nombre IS 'Segundo nombre de la persona física.';
            test_ladm_col       postgres    false    1162            �&           0    0 $   COLUMN lc_interesado.primer_apellido    COMMENT     k   COMMENT ON COLUMN test_ladm_col.lc_interesado.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_col       postgres    false    1162            �&           0    0 %   COLUMN lc_interesado.segundo_apellido    COMMENT     m   COMMENT ON COLUMN test_ladm_col.lc_interesado.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_col       postgres    false    1162            �&           0    0    COLUMN lc_interesado.sexo    COMMENT     y   COMMENT ON COLUMN test_ladm_col.lc_interesado.sexo IS 'Condición orgánica que distingue a los machos de las hembras.';
            test_ladm_col       postgres    false    1162            �&           0    0 !   COLUMN lc_interesado.razon_social    COMMENT     c   COMMENT ON COLUMN test_ladm_col.lc_interesado.razon_social IS 'Nombre con el que está inscrito.';
            test_ladm_col       postgres    false    1162            �&           0    0    COLUMN lc_interesado.nombre    COMMENT     R   COMMENT ON COLUMN test_ladm_col.lc_interesado.nombre IS 'Nombre del interesado.';
            test_ladm_col       postgres    false    1162            �&           0    0 /   COLUMN lc_interesado.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_interesado.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1162             '           0    0 *   COLUMN lc_interesado.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_interesado.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1162            '           0    0 '   COLUMN lc_interesado.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_interesado.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1162            '           0    0    COLUMN lc_interesado.local_id    COMMENT     Y   COMMENT ON COLUMN test_ladm_col.lc_interesado.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1162            �           1259    615261    lc_interesadocontacto    TABLE     �  CREATE TABLE test_ladm_col.lc_interesadocontacto (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_ladm_col.lc_interesadocontacto;
       test_ladm_col         postgres    false    1087    7            '           0    0    TABLE lc_interesadocontacto    COMMENT     e   COMMENT ON TABLE test_ladm_col.lc_interesadocontacto IS 'Datos de contacto de la parte interesada.';
            test_ladm_col       postgres    false    1163            '           0    0 &   COLUMN lc_interesadocontacto.telefono1    COMMENT     u   COMMENT ON COLUMN test_ladm_col.lc_interesadocontacto.telefono1 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_col       postgres    false    1163            '           0    0 &   COLUMN lc_interesadocontacto.telefono2    COMMENT     u   COMMENT ON COLUMN test_ladm_col.lc_interesadocontacto.telefono2 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_col       postgres    false    1163            '           0    0 3   COLUMN lc_interesadocontacto.domicilio_notificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_interesadocontacto.domicilio_notificacion IS 'Domicilio para notificaciones del interesado.';
            test_ladm_col       postgres    false    1163            '           0    0 1   COLUMN lc_interesadocontacto.direccion_residencia    COMMENT     z   COMMENT ON COLUMN test_ladm_col.lc_interesadocontacto.direccion_residencia IS 'Dirección de residencia del interesado.';
            test_ladm_col       postgres    false    1163            '           0    0 /   COLUMN lc_interesadocontacto.correo_electronico    COMMENT     s   COMMENT ON COLUMN test_ladm_col.lc_interesadocontacto.correo_electronico IS 'Correo electrónico del interesado.';
            test_ladm_col       postgres    false    1163            	'           0    0 9   COLUMN lc_interesadocontacto.autoriza_notificacion_correo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_interesadocontacto.autoriza_notificacion_correo IS 'Indica si el interesado autoriza notificación vía correo electrónico';
            test_ladm_col       postgres    false    1163            
'           0    0 )   COLUMN lc_interesadocontacto.departamento    COMMENT     t   COMMENT ON COLUMN test_ladm_col.lc_interesadocontacto.departamento IS 'Departamento de residencia del interesado.';
            test_ladm_col       postgres    false    1163            '           0    0 &   COLUMN lc_interesadocontacto.municipio    COMMENT     n   COMMENT ON COLUMN test_ladm_col.lc_interesadocontacto.municipio IS 'Municipio de residencia del interesado.';
            test_ladm_col       postgres    false    1163            '           0    0 #   COLUMN lc_interesadocontacto.vereda    COMMENT     h   COMMENT ON COLUMN test_ladm_col.lc_interesadocontacto.vereda IS 'Vereda de residencia del interesado.';
            test_ladm_col       postgres    false    1163            '           0    0 *   COLUMN lc_interesadocontacto.corregimiento    COMMENT     v   COMMENT ON COLUMN test_ladm_col.lc_interesadocontacto.corregimiento IS 'Corregimiento de residencia del interesado.';
            test_ladm_col       postgres    false    1163            �           1259    615841    lc_interesadodocumentotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_interesadodocumentotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_col.lc_interesadodocumentotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615706    lc_interesadotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_interesadotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ,   DROP TABLE test_ladm_col.lc_interesadotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615272 
   lc_lindero    TABLE     {  CREATE TABLE test_ladm_col.lc_lindero (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 %   DROP TABLE test_ladm_col.lc_lindero;
       test_ladm_col         postgres    false    1087    7            '           0    0    TABLE lc_lindero    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_lindero IS 'Linea de división que separa un bien inmueble de otro, que puede o no estar materializada físicamente.';
            test_ladm_col       postgres    false    1164            '           0    0    COLUMN lc_lindero.longitud    COMMENT     Z   COMMENT ON COLUMN test_ladm_col.lc_lindero.longitud IS 'Longitud en metros del lindero.';
            test_ladm_col       postgres    false    1164            '           0    0    COLUMN lc_lindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_lindero.geometria IS 'Geometría lineal que define el lindero. Puede estar asociada a geometrías de tipo punto que definen sus vértices o ser una entidad lineal independiente.';
            test_ladm_col       postgres    false    1164            '           0    0 &   COLUMN lc_lindero.localizacion_textual    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_lindero.localizacion_textual IS 'Descripción de la localización, cuando esta se basa en texto.';
            test_ladm_col       postgres    false    1164            '           0    0 ,   COLUMN lc_lindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_lindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1164            '           0    0 '   COLUMN lc_lindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_lindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1164            '           0    0 $   COLUMN lc_lindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_lindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1164            '           0    0    COLUMN lc_lindero.local_id    COMMENT     V   COMMENT ON COLUMN test_ladm_col.lc_lindero.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1164            �           1259    615283    lc_objetoconstruccion    TABLE     �  CREATE TABLE test_ladm_col.lc_objetoconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_objeto_construccion bigint NOT NULL,
    puntos integer NOT NULL,
    lc_grupo_calificacion bigint NOT NULL,
    CONSTRAINT lc_objetoconstruccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 16)))
);
 0   DROP TABLE test_ladm_col.lc_objetoconstruccion;
       test_ladm_col         postgres    false    1087    7            '           0    0    TABLE lc_objetoconstruccion    COMMENT     v   COMMENT ON TABLE test_ladm_col.lc_objetoconstruccion IS 'Puntaje de cada item de la calificación de construcción.';
            test_ladm_col       postgres    false    1165            '           0    0 5   COLUMN lc_objetoconstruccion.tipo_objeto_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_objetoconstruccion.tipo_objeto_construccion IS 'Item de la calificación de construcción según la método de calificación vigente.';
            test_ladm_col       postgres    false    1165            '           0    0 #   COLUMN lc_objetoconstruccion.puntos    COMMENT     a   COMMENT ON COLUMN test_ladm_col.lc_objetoconstruccion.puntos IS 'Puntaje del ítem calificado.';
            test_ladm_col       postgres    false    1165            �           1259    615913    lc_objetoconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col.lc_objetoconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col.lc_objetoconstrucciontipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615292    lc_ofertasmercadoinmobiliario    TABLE     �  CREATE TABLE test_ladm_col.lc_ofertasmercadoinmobiliario (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 8   DROP TABLE test_ladm_col.lc_ofertasmercadoinmobiliario;
       test_ladm_col         postgres    false    1087    7            '           0    0 0   COLUMN lc_ofertasmercadoinmobiliario.tipo_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_ofertasmercadoinmobiliario.tipo_oferta IS 'La clase de oferta corresponde a una oferta de venta o a una oferta de arriendo del predio.';
            test_ladm_col       postgres    false    1166            '           0    0 1   COLUMN lc_ofertasmercadoinmobiliario.valor_pedido    COMMENT     v   COMMENT ON COLUMN test_ladm_col.lc_ofertasmercadoinmobiliario.valor_pedido IS 'Dato del valor en pesos de la oferta';
            test_ladm_col       postgres    false    1166            '           0    0 4   COLUMN lc_ofertasmercadoinmobiliario.valor_negociado    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_ofertasmercadoinmobiliario.valor_negociado IS 'Dato del valor en pesos negociado entre el vendedor y el posible comprador';
            test_ladm_col       postgres    false    1166            '           0    0 9   COLUMN lc_ofertasmercadoinmobiliario.fecha_captura_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_ofertasmercadoinmobiliario.fecha_captura_oferta IS 'Año, mes y día de captura de la oferta en campo.';
            test_ladm_col       postgres    false    1166            '           0    0 :   COLUMN lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado IS 'Número de meses de la publicitación de la oferta en el mercado inmobiliario.';
            test_ladm_col       postgres    false    1166            '           0    0 =   COLUMN lc_ofertasmercadoinmobiliario.numero_contacto_oferente    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_ofertasmercadoinmobiliario.numero_contacto_oferente IS 'Número de teléfono fijo o número celular de la persona que está publicitando el bien inmueble.';
            test_ladm_col       postgres    false    1166            �           1259    615769    lc_ofertatipo    TABLE     �  CREATE TABLE test_ladm_col.lc_ofertatipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 (   DROP TABLE test_ladm_col.lc_ofertatipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615301 	   lc_predio    TABLE     (  CREATE TABLE test_ladm_col.lc_predio (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 $   DROP TABLE test_ladm_col.lc_predio;
       test_ladm_col         postgres    false    1087    7            '           0    0    TABLE lc_predio    COMMENT       COMMENT ON TABLE test_ladm_col.lc_predio IS 'Clase especializada de BaUnit, que describe la unidad administrativa básica para el caso de Colombia.
El predio es la unidad territorial legal propia de Catastro. Está formada por el terreno y puede o no tener construcciones asociadas.';
            test_ladm_col       postgres    false    1167             '           0    0    COLUMN lc_predio.departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_predio.departamento IS 'Corresponde al código del departamento al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 2 dígitos.';
            test_ladm_col       postgres    false    1167            !'           0    0    COLUMN lc_predio.municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_predio.municipio IS 'Corresponde al código del municipio al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 3 dígitos.';
            test_ladm_col       postgres    false    1167            "'           0    0    COLUMN lc_predio.id_operacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_predio.id_operacion IS 'Identificador único temporal de cada predio que se asigna en el desarrollo del levantamiento catastral.';
            test_ladm_col       postgres    false    1167            #'           0    0    COLUMN lc_predio.tiene_fmi    COMMENT     l   COMMENT ON COLUMN test_ladm_col.lc_predio.tiene_fmi IS 'Indica si el predio tiene matricula inmobiliaria.';
            test_ladm_col       postgres    false    1167            $'           0    0    COLUMN lc_predio.codigo_orip    COMMENT     N   COMMENT ON COLUMN test_ladm_col.lc_predio.codigo_orip IS 'Circulo registral';
            test_ladm_col       postgres    false    1167            %'           0    0 '   COLUMN lc_predio.matricula_inmobiliaria    COMMENT     ^   COMMENT ON COLUMN test_ladm_col.lc_predio.matricula_inmobiliaria IS 'Matricula inmobiliaria';
            test_ladm_col       postgres    false    1167            &'           0    0    COLUMN lc_predio.numero_predial    COMMENT        COMMENT ON COLUMN test_ladm_col.lc_predio.numero_predial IS 'Nuevo Código numérico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_col       postgres    false    1167            ''           0    0 (   COLUMN lc_predio.numero_predial_anterior    COMMENT     )  COMMENT ON COLUMN test_ladm_col.lc_predio.numero_predial_anterior IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi.';
            test_ladm_col       postgres    false    1167            ('           0    0    COLUMN lc_predio.nupre    COMMENT     =  COMMENT ON COLUMN test_ladm_col.lc_predio.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_col       postgres    false    1167            )'           0    0 !   COLUMN lc_predio.avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_predio.avaluo_catastral IS 'Valor catastral del predio, obtenido mediante investigación y análisis estadístico del mercado inmobiliario y la metodología de aplicación correspondiente.';
            test_ladm_col       postgres    false    1167            *'           0    0 !   COLUMN lc_predio.condicion_predio    COMMENT     h   COMMENT ON COLUMN test_ladm_col.lc_predio.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_col       postgres    false    1167            +'           0    0    COLUMN lc_predio.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_predio.nombre IS 'Nombre que recibe la unidad administrativa básica, en muchos casos toponímico, especialmente en terrenos rústicos.';
            test_ladm_col       postgres    false    1167            ,'           0    0 +   COLUMN lc_predio.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_predio.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1167            -'           0    0 &   COLUMN lc_predio.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_predio.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1167            .'           0    0 #   COLUMN lc_predio.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_predio.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1167            /'           0    0    COLUMN lc_predio.local_id    COMMENT     U   COMMENT ON COLUMN test_ladm_col.lc_predio.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1167            �           1259    615443    lc_predio_copropiedad    TABLE     �   CREATE TABLE test_ladm_col.lc_predio_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    predio bigint NOT NULL,
    copropiedad bigint NOT NULL
);
 0   DROP TABLE test_ladm_col.lc_predio_copropiedad;
       test_ladm_col         postgres    false    1087    7            �           1259    615451    lc_predio_ini_predioinsumos    TABLE     �   CREATE TABLE test_ladm_col.lc_predio_ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ini_predio_insumos bigint NOT NULL,
    lc_predio bigint NOT NULL
);
 6   DROP TABLE test_ladm_col.lc_predio_ini_predioinsumos;
       test_ladm_col         postgres    false    1087    7            �           1259    615823    lc_prediotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_prediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 (   DROP TABLE test_ladm_col.lc_prediotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615976 &   lc_procedimientocatastralregistraltipo    TABLE     �  CREATE TABLE test_ladm_col.lc_procedimientocatastralregistraltipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_col.lc_procedimientocatastralregistraltipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615313    lc_puntocontrol    TABLE     t  CREATE TABLE test_ladm_col.lc_puntocontrol (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 *   DROP TABLE test_ladm_col.lc_puntocontrol;
       test_ladm_col         postgres    false    1087    7            0'           0    0    TABLE lc_puntocontrol    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_puntocontrol IS 'Puntos topograficos o geodesicos utilizados como amarre para la ejecución del levantamiento catastral.';
            test_ladm_col       postgres    false    1168            1'           0    0 '   COLUMN lc_puntocontrol.id_punto_control    COMMENT     n   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.id_punto_control IS 'Nombre o código del punto de control.';
            test_ladm_col       postgres    false    1168            2'           0    0     COLUMN lc_puntocontrol.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_col       postgres    false    1168            3'           0    0 )   COLUMN lc_puntocontrol.tipo_punto_control    COMMENT     x   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.tipo_punto_control IS 'Si se trata de un punto de control o de apoyo.';
            test_ladm_col       postgres    false    1168            4'           0    0 +   COLUMN lc_puntocontrol.exactitud_horizontal    COMMENT     {   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.exactitud_horizontal IS 'Exactitud horizontal de la medición del punto.';
            test_ladm_col       postgres    false    1168            5'           0    0 )   COLUMN lc_puntocontrol.exactitud_vertical    COMMENT     w   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.exactitud_vertical IS 'Exactitud vertical de la medición del punto.';
            test_ladm_col       postgres    false    1168            6'           0    0 -   COLUMN lc_puntocontrol.posicion_interpolacion    COMMENT     j   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_col       postgres    false    1168            7'           0    0 '   COLUMN lc_puntocontrol.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_col       postgres    false    1168            8'           0    0     COLUMN lc_puntocontrol.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_col       postgres    false    1168            9'           0    0 1   COLUMN lc_puntocontrol.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1168            :'           0    0 ,   COLUMN lc_puntocontrol.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1168            ;'           0    0 )   COLUMN lc_puntocontrol.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1168            <'           0    0    COLUMN lc_puntocontrol.local_id    COMMENT     [   COMMENT ON COLUMN test_ladm_col.lc_puntocontrol.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1168            �           1259    615859    lc_puntocontroltipo    TABLE     �  CREATE TABLE test_ladm_col.lc_puntocontroltipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_ladm_col.lc_puntocontroltipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615414    lc_puntolevantamiento    TABLE     �  CREATE TABLE test_ladm_col.lc_puntolevantamiento (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_ladm_col.lc_puntolevantamiento;
       test_ladm_col         postgres    false    1087    7            ='           0    0    TABLE lc_puntolevantamiento    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_puntolevantamiento IS 'Puntos que definen los limites de las construcciones, unidad de construcción y servidumbres de transito.';
            test_ladm_col       postgres    false    1175            >'           0    0 3   COLUMN lc_puntolevantamiento.id_punto_levantamiento    COMMENT     }   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.id_punto_levantamiento IS 'Nombre o código del punto levantamiento.';
            test_ladm_col       postgres    false    1175            ?'           0    0 &   COLUMN lc_puntolevantamiento.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_col       postgres    false    1175            @'           0    0 5   COLUMN lc_puntolevantamiento.tipo_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.tipo_punto_levantamiento IS 'Indica si el tipo de punto corresponde a una construcción o servidumbre de tránsito.';
            test_ladm_col       postgres    false    1175            A'           0    0 /   COLUMN lc_puntolevantamiento.fotoidentificacion    COMMENT     x   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_col       postgres    false    1175            B'           0    0 1   COLUMN lc_puntolevantamiento.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto levantamiento.';
            test_ladm_col       postgres    false    1175            C'           0    0 /   COLUMN lc_puntolevantamiento.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto levantamiento';
            test_ladm_col       postgres    false    1175            D'           0    0 3   COLUMN lc_puntolevantamiento.posicion_interpolacion    COMMENT     p   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_col       postgres    false    1175            E'           0    0 -   COLUMN lc_puntolevantamiento.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_col       postgres    false    1175            F'           0    0 &   COLUMN lc_puntolevantamiento.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_col       postgres    false    1175            G'           0    0 7   COLUMN lc_puntolevantamiento.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1175            H'           0    0 2   COLUMN lc_puntolevantamiento.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1175            I'           0    0 /   COLUMN lc_puntolevantamiento.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1175            J'           0    0 %   COLUMN lc_puntolevantamiento.local_id    COMMENT     a   COMMENT ON COLUMN test_ladm_col.lc_puntolevantamiento.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1175            �           1259    615940    lc_puntolevtipo    TABLE     �  CREATE TABLE test_ladm_col.lc_puntolevtipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 *   DROP TABLE test_ladm_col.lc_puntolevtipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615332    lc_puntolindero    TABLE     �  CREATE TABLE test_ladm_col.lc_puntolindero (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 *   DROP TABLE test_ladm_col.lc_puntolindero;
       test_ladm_col         postgres    false    1087    7            K'           0    0    TABLE lc_puntolindero    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_puntolindero IS 'Puntos que definen los lindero de un terreno. La sucesión de estos puntos forman una línea que representa el límite entre dos terrenos.';
            test_ladm_col       postgres    false    1169            L'           0    0 '   COLUMN lc_puntolindero.id_punto_lindero    COMMENT     j   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.id_punto_lindero IS 'Nombre o código del punto lindero';
            test_ladm_col       postgres    false    1169            M'           0    0     COLUMN lc_puntolindero.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_col       postgres    false    1169            N'           0    0    COLUMN lc_puntolindero.acuerdo    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.acuerdo IS 'Indica si existe acuerdo o no entre los colindantes en relación al punto lindero que se está midiendo.';
            test_ladm_col       postgres    false    1169            O'           0    0 )   COLUMN lc_puntolindero.fotoidentificacion    COMMENT     r   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_col       postgres    false    1169            P'           0    0 +   COLUMN lc_puntolindero.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto lindero';
            test_ladm_col       postgres    false    1169            Q'           0    0 )   COLUMN lc_puntolindero.exactitud_vertical    COMMENT        COMMENT ON COLUMN test_ladm_col.lc_puntolindero.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto lindero';
            test_ladm_col       postgres    false    1169            R'           0    0 -   COLUMN lc_puntolindero.posicion_interpolacion    COMMENT     j   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_col       postgres    false    1169            S'           0    0 '   COLUMN lc_puntolindero.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_col       postgres    false    1169            T'           0    0     COLUMN lc_puntolindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_col       postgres    false    1169            U'           0    0 1   COLUMN lc_puntolindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1169            V'           0    0 ,   COLUMN lc_puntolindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1169            W'           0    0 )   COLUMN lc_puntolindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1169            X'           0    0    COLUMN lc_puntolindero.local_id    COMMENT     [   COMMENT ON COLUMN test_ladm_col.lc_puntolindero.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1169            �           1259    615616    lc_puntotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 '   DROP TABLE test_ladm_col.lc_puntotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615715    lc_relacionprediotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_relacionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_col.lc_relacionprediotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615352    lc_restriccion    TABLE     B  CREATE TABLE test_ladm_col.lc_restriccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 )   DROP TABLE test_ladm_col.lc_restriccion;
       test_ladm_col         postgres    false    1087    7            Y'           0    0    TABLE lc_restriccion    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_restriccion IS 'Restricción legalmente constituida y registrada que afecta el derecho de un persona en relación con el predio.';
            test_ladm_col       postgres    false    1170            Z'           0    0    COLUMN lc_restriccion.tipo    COMMENT     f   COMMENT ON COLUMN test_ladm_col.lc_restriccion.tipo IS 'Tipo de Restricción que afecta el derecho.';
            test_ladm_col       postgres    false    1170            ['           0    0 !   COLUMN lc_restriccion.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_restriccion.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_col       postgres    false    1170            \'           0    0 0   COLUMN lc_restriccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_restriccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1170            ]'           0    0 +   COLUMN lc_restriccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_restriccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1170            ^'           0    0 (   COLUMN lc_restriccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_restriccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1170            _'           0    0    COLUMN lc_restriccion.local_id    COMMENT     Z   COMMENT ON COLUMN test_ladm_col.lc_restriccion.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1170            �           1259    615814    lc_restricciontipo    TABLE     �  CREATE TABLE test_ladm_col.lc_restricciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 -   DROP TABLE test_ladm_col.lc_restricciontipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615553    lc_resultadovisitatipo    TABLE     �  CREATE TABLE test_ladm_col.lc_resultadovisitatipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col.lc_resultadovisitatipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615459    lc_servidumbretransito    TABLE     �  CREATE TABLE test_ladm_col.lc_servidumbretransito (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_col.lc_servidumbretransito;
       test_ladm_col         postgres    false    1087    7            `'           0    0    TABLE lc_servidumbretransito    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_servidumbretransito IS 'Tipo de unidad espacial que permite la representación de una servidumbre de paso asociada a una COL_BAUnit.';
            test_ladm_col       postgres    false    1179            a'           0    0 .   COLUMN lc_servidumbretransito.area_servidumbre    COMMENT     m   COMMENT ON COLUMN test_ladm_col.lc_servidumbretransito.area_servidumbre IS 'Área total de la servidumbre.';
            test_ladm_col       postgres    false    1179            b'           0    0 '   COLUMN lc_servidumbretransito.dimension    COMMENT     ^   COMMENT ON COLUMN test_ladm_col.lc_servidumbretransito.dimension IS 'Dimensión del objeto.';
            test_ladm_col       postgres    false    1179            c'           0    0 &   COLUMN lc_servidumbretransito.etiqueta    COMMENT     y   COMMENT ON COLUMN test_ladm_col.lc_servidumbretransito.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col       postgres    false    1179            d'           0    0 1   COLUMN lc_servidumbretransito.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_servidumbretransito.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col       postgres    false    1179            e'           0    0 '   COLUMN lc_servidumbretransito.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_servidumbretransito.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_col       postgres    false    1179            f'           0    0 8   COLUMN lc_servidumbretransito.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_servidumbretransito.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1179            g'           0    0 3   COLUMN lc_servidumbretransito.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_servidumbretransito.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1179            h'           0    0 0   COLUMN lc_servidumbretransito.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_servidumbretransito.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1179            i'           0    0 &   COLUMN lc_servidumbretransito.local_id    COMMENT     b   COMMENT ON COLUMN test_ladm_col.lc_servidumbretransito.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1179            �           1259    615571    lc_sexotipo    TABLE     �  CREATE TABLE test_ladm_col.lc_sexotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 &   DROP TABLE test_ladm_col.lc_sexotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615366 
   lc_terreno    TABLE     �  CREATE TABLE test_ladm_col.lc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 %   DROP TABLE test_ladm_col.lc_terreno;
       test_ladm_col         postgres    false    1087    7            j'           0    0    TABLE lc_terreno    COMMENT     l   COMMENT ON TABLE test_ladm_col.lc_terreno IS 'Porción de tierra con una extensión geográfica definida.';
            test_ladm_col       postgres    false    1171            k'           0    0    COLUMN lc_terreno.area_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_terreno.area_terreno IS 'Área total del terreno  resultante del levantamiento catastral..';
            test_ladm_col       postgres    false    1171            l'           0    0     COLUMN lc_terreno.avaluo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_terreno.avaluo_terreno IS 'Valor catastral asignado en el proceso de valoración económica masiva al terreno del predio.';
            test_ladm_col       postgres    false    1171            m'           0    0 '   COLUMN lc_terreno.manzana_vereda_codigo    COMMENT     V  COMMENT ON COLUMN test_ladm_col.lc_terreno.manzana_vereda_codigo IS 'Corresponde la identificación del número predial hasta la posición 21, permite identificar la relación espacial en sus componentes: departamento, municipio, zona, sector, comuna, barrio, manzana o vereda y terreno de acuerdo a su codificación en el número predial.';
            test_ladm_col       postgres    false    1171            n'           0    0    COLUMN lc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_terreno.geometria IS 'Corresponde a la figura geométrica vectorial poligonal, generada a partir de los linderos del predio.';
            test_ladm_col       postgres    false    1171            o'           0    0    COLUMN lc_terreno.dimension    COMMENT     R   COMMENT ON COLUMN test_ladm_col.lc_terreno.dimension IS 'Dimensión del objeto.';
            test_ladm_col       postgres    false    1171            p'           0    0    COLUMN lc_terreno.etiqueta    COMMENT     m   COMMENT ON COLUMN test_ladm_col.lc_terreno.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col       postgres    false    1171            q'           0    0 %   COLUMN lc_terreno.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_terreno.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col       postgres    false    1171            r'           0    0 ,   COLUMN lc_terreno.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_terreno.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1171            s'           0    0 '   COLUMN lc_terreno.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_terreno.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1171            t'           0    0 $   COLUMN lc_terreno.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_terreno.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1171            u'           0    0    COLUMN lc_terreno.local_id    COMMENT     V   COMMENT ON COLUMN test_ladm_col.lc_terreno.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1171            �           1259    615434    lc_tipologiaconstruccion    TABLE       CREATE TABLE test_ladm_col.lc_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint NOT NULL,
    lc_unidad_construccion bigint
);
 3   DROP TABLE test_ladm_col.lc_tipologiaconstruccion;
       test_ladm_col         postgres    false    1087    7            v'           0    0    TABLE lc_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_tipologiaconstruccion IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_col       postgres    false    1176            w'           0    0 .   COLUMN lc_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_tipologiaconstruccion.tipo_tipologia IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_col       postgres    false    1176            �           1259    615850    lc_tipologiatipo    TABLE     �  CREATE TABLE test_ladm_col.lc_tipologiatipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 +   DROP TABLE test_ladm_col.lc_tipologiatipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615472    lc_unidadconstruccion    TABLE     �	  CREATE TABLE test_ladm_col.lc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_ladm_col.lc_unidadconstruccion;
       test_ladm_col         postgres    false    1087    7            x'           0    0    TABLE lc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col.lc_unidadconstruccion IS 'Es cada conjunto de materiales consolidados dentro de un predio que tiene unas características específicas en cuanto a elementos constitutivos físicos y usos de la misma.';
            test_ladm_col       postgres    false    1180            y'           0    0 *   COLUMN lc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col       postgres    false    1180            z'           0    0 )   COLUMN lc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col       postgres    false    1180            {'           0    0 .   COLUMN lc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col       postgres    false    1180            |'           0    0 5   COLUMN lc_unidadconstruccion.tipo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.tipo_unidad_construccion IS 'Indica si la unidad de construcción es residencial, comercial, industrial o anexo.';
            test_ladm_col       postgres    false    1180            }'           0    0 (   COLUMN lc_unidadconstruccion.tipo_planta    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.tipo_planta IS 'Indica el tipo de planta donde se ubica la unidad de construcción.';
            test_ladm_col       postgres    false    1180            ~'           0    0 -   COLUMN lc_unidadconstruccion.planta_ubicacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.planta_ubicacion IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_col       postgres    false    1180            '           0    0 /   COLUMN lc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_col       postgres    false    1180            �'           0    0 )   COLUMN lc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_col       postgres    false    1180            �'           0    0 *   COLUMN lc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_col       postgres    false    1180            �'           0    0 (   COLUMN lc_unidadconstruccion.total_pisos    COMMENT     ~   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_col       postgres    false    1180            �'           0    0     COLUMN lc_unidadconstruccion.uso    COMMENT     |   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_col       postgres    false    1180            �'           0    0 .   COLUMN lc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_col       postgres    false    1180            �'           0    0 7   COLUMN lc_unidadconstruccion.avaluo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.avaluo_unidad_construccion IS 'Avalúo catastral de la unidad de construcción.';
            test_ladm_col       postgres    false    1180            �'           0    0 ,   COLUMN lc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_col       postgres    false    1180            �'           0    0 4   COLUMN lc_unidadconstruccion.area_privada_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.area_privada_construida IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_col       postgres    false    1180            �'           0    0 #   COLUMN lc_unidadconstruccion.altura    COMMENT     o   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.altura IS 'Altura total de la unidad de construcción.';
            test_ladm_col       postgres    false    1180            �'           0    0 *   COLUMN lc_unidadconstruccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.observaciones IS 'Observaciones generales respecto de la unidad de construcción.';
            test_ladm_col       postgres    false    1180            �'           0    0 &   COLUMN lc_unidadconstruccion.dimension    COMMENT     ]   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.dimension IS 'Dimensión del objeto.';
            test_ladm_col       postgres    false    1180            �'           0    0 %   COLUMN lc_unidadconstruccion.etiqueta    COMMENT     x   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col       postgres    false    1180            �'           0    0 0   COLUMN lc_unidadconstruccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col       postgres    false    1180            �'           0    0 &   COLUMN lc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_col       postgres    false    1180            �'           0    0 7   COLUMN lc_unidadconstruccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1180            �'           0    0 2   COLUMN lc_unidadconstruccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col       postgres    false    1180            �'           0    0 /   COLUMN lc_unidadconstruccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col       postgres    false    1180            �'           0    0 %   COLUMN lc_unidadconstruccion.local_id    COMMENT     a   COMMENT ON COLUMN test_ladm_col.lc_unidadconstruccion.local_id IS 'Identificador único local.';
            test_ladm_col       postgres    false    1180            �           1259    615724    lc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col.lc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col.lc_unidadconstrucciontipo;
       test_ladm_col         postgres    false    1087    7            �           1259    616102    lc_usouconstipo    TABLE     �  CREATE TABLE test_ladm_col.lc_usouconstipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 *   DROP TABLE test_ladm_col.lc_usouconstipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615661 
   lc_viatipo    TABLE     �  CREATE TABLE test_ladm_col.lc_viatipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 %   DROP TABLE test_ladm_col.lc_viatipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615580    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_ladm_col.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col.snr_calidadderechotipo;
       test_ladm_col         postgres    false    1087    7            �           1259    616030    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_ladm_col.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_col.snr_clasepredioregistrotipo;
       test_ladm_col         postgres    false    1087    7            x           1259    615057    snr_derecho    TABLE     W  CREATE TABLE test_ladm_col.snr_derecho (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 &   DROP TABLE test_ladm_col.snr_derecho;
       test_ladm_col         postgres    false    1087    7            �'           0    0    TABLE snr_derecho    COMMENT     W   COMMENT ON TABLE test_ladm_col.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
            test_ladm_col       postgres    false    1144            �'           0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     j   COMMENT ON COLUMN test_ladm_col.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
            test_ladm_col       postgres    false    1144            �'           0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
            test_ladm_col       postgres    false    1144            �           1259    615535    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_ladm_col.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_col.snr_documentotitulartipo;
       test_ladm_col         postgres    false    1087    7            y           1259    615066    snr_estructuramatriculamatriz    TABLE     7  CREATE TABLE test_ladm_col.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 8   DROP TABLE test_ladm_col.snr_estructuramatriculamatriz;
       test_ladm_col         postgres    false    1087    7            �'           0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_col       postgres    false    1145            �'           0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_col       postgres    false    1145            �'           0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
            test_ladm_col       postgres    false    1145            z           1259    615073    snr_fuentecabidalinderos    TABLE     e  CREATE TABLE test_ladm_col.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 3   DROP TABLE test_ladm_col.snr_fuentecabidalinderos;
       test_ladm_col         postgres    false    1087    7            �'           0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_ladm_col.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
            test_ladm_col       postgres    false    1146            �'           0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_col       postgres    false    1146            �'           0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_col       postgres    false    1146            �'           0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_col       postgres    false    1146            �'           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_col       postgres    false    1146            {           1259    615083    snr_fuentederecho    TABLE     ^  CREATE TABLE test_ladm_col.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 ,   DROP TABLE test_ladm_col.snr_fuentederecho;
       test_ladm_col         postgres    false    1087    7            �'           0    0    TABLE snr_fuentederecho    COMMENT     c   COMMENT ON TABLE test_ladm_col.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
            test_ladm_col       postgres    false    1147            �'           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_col       postgres    false    1147            �'           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_col       postgres    false    1147            �'           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_col       postgres    false    1147            �'           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_col       postgres    false    1147            �           1259    616066    snr_fuentetipo    TABLE     �  CREATE TABLE test_ladm_col.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 )   DROP TABLE test_ladm_col.snr_fuentetipo;
       test_ladm_col         postgres    false    1087    7            �           1259    615625    snr_personatitulartipo    TABLE     �  CREATE TABLE test_ladm_col.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col.snr_personatitulartipo;
       test_ladm_col         postgres    false    1087    7            }           1259    615104    snr_predioregistro    TABLE     '  CREATE TABLE test_ladm_col.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
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
 -   DROP TABLE test_ladm_col.snr_predioregistro;
       test_ladm_col         postgres    false    1087    7            �'           0    0    TABLE snr_predioregistro    COMMENT     `   COMMENT ON TABLE test_ladm_col.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
            test_ladm_col       postgres    false    1149            �'           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_col       postgres    false    1149            �'           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_col       postgres    false    1149            �'           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     H  COMMENT ON COLUMN test_ladm_col.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_col       postgres    false    1149            �'           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     L  COMMENT ON COLUMN test_ladm_col.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_col       postgres    false    1149            �'           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
            test_ladm_col       postgres    false    1149            �'           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
            test_ladm_col       postgres    false    1149            �'           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_col.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
            test_ladm_col       postgres    false    1149            �'           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT     g   COMMENT ON COLUMN test_ladm_col.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
            test_ladm_col       postgres    false    1149            |           1259    615093    snr_titular    TABLE     �  CREATE TABLE test_ladm_col.snr_titular (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 &   DROP TABLE test_ladm_col.snr_titular;
       test_ladm_col         postgres    false    1087    7            �'           0    0    TABLE snr_titular    COMMENT     d   COMMENT ON TABLE test_ladm_col.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
            test_ladm_col       postgres    false    1148            �'           0    0    COLUMN snr_titular.tipo_persona    COMMENT     O   COMMENT ON COLUMN test_ladm_col.snr_titular.tipo_persona IS 'Tipo de persona';
            test_ladm_col       postgres    false    1148            �'           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     e   COMMENT ON COLUMN test_ladm_col.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_col       postgres    false    1148            �'           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     j   COMMENT ON COLUMN test_ladm_col.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
            test_ladm_col       postgres    false    1148            �'           0    0    COLUMN snr_titular.nombres    COMMENT     Y   COMMENT ON COLUMN test_ladm_col.snr_titular.nombres IS 'Nombres de la persona física.';
            test_ladm_col       postgres    false    1148            �'           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     i   COMMENT ON COLUMN test_ladm_col.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_col       postgres    false    1148            �'           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     k   COMMENT ON COLUMN test_ladm_col.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_col       postgres    false    1148            �'           0    0    COLUMN snr_titular.razon_social    COMMENT     u   COMMENT ON COLUMN test_ladm_col.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
            test_ladm_col       postgres    false    1148            ~           1259    615115    snr_titular_derecho    TABLE     "  CREATE TABLE test_ladm_col.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_ladm_col.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 .   DROP TABLE test_ladm_col.snr_titular_derecho;
       test_ladm_col         postgres    false    1087    7            �'           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_col.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
            test_ladm_col       postgres    false    1150            �           1259    616146    t_ili2db_attrname    TABLE     �   CREATE TABLE test_ladm_col.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 ,   DROP TABLE test_ladm_col.t_ili2db_attrname;
       test_ladm_col         postgres    false    7            �           1259    615491    t_ili2db_basket    TABLE       CREATE TABLE test_ladm_col.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 *   DROP TABLE test_ladm_col.t_ili2db_basket;
       test_ladm_col         postgres    false    7            �           1259    616138    t_ili2db_classname    TABLE     �   CREATE TABLE test_ladm_col.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 -   DROP TABLE test_ladm_col.t_ili2db_classname;
       test_ladm_col         postgres    false    7            �           1259    616154    t_ili2db_column_prop    TABLE       CREATE TABLE test_ladm_col.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 /   DROP TABLE test_ladm_col.t_ili2db_column_prop;
       test_ladm_col         postgres    false    7            �           1259    615500    t_ili2db_dataset    TABLE     r   CREATE TABLE test_ladm_col.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 +   DROP TABLE test_ladm_col.t_ili2db_dataset;
       test_ladm_col         postgres    false    7            �           1259    615505    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_ladm_col.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 /   DROP TABLE test_ladm_col.t_ili2db_inheritance;
       test_ladm_col         postgres    false    7            �           1259    616166    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_ladm_col.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 .   DROP TABLE test_ladm_col.t_ili2db_meta_attrs;
       test_ladm_col         postgres    false    7            �           1259    615527    t_ili2db_model    TABLE     �   CREATE TABLE test_ladm_col.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 )   DROP TABLE test_ladm_col.t_ili2db_model;
       test_ladm_col         postgres    false    7            �           1259    615513    t_ili2db_settings    TABLE     ~   CREATE TABLE test_ladm_col.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 ,   DROP TABLE test_ladm_col.t_ili2db_settings;
       test_ladm_col         postgres    false    7            �           1259    616160    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_ladm_col.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 .   DROP TABLE test_ladm_col.t_ili2db_table_prop;
       test_ladm_col         postgres    false    7            �           1259    615521    t_ili2db_trafo    TABLE     �   CREATE TABLE test_ladm_col.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 )   DROP TABLE test_ladm_col.t_ili2db_trafo;
       test_ladm_col         postgres    false    7            %%          0    614549    cc_metodooperacion 
   TABLE DATA               �   COPY test_ladm_col.cc_metodooperacion (t_id, t_seq, formula, dimensiones_origen, ddimensiones_objetivo, col_transformacion_transformacion) FROM stdin;
    test_ladm_col       postgres    false    1092   F	      �%          0    615787    ci_forma_presentacion_codigo 
   TABLE DATA               �   COPY test_ladm_col.ci_forma_presentacion_codigo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1215    F	      �%          0    616075    col_areatipo 
   TABLE DATA               �   COPY test_ladm_col.col_areatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1247   �F	      &%          0    614556    col_areavalor 
   TABLE DATA               �   COPY test_ladm_col.col_areavalor (t_id, t_seq, tipo, area, datos_proyeccion, lc_construccion_area, lc_terreno_area, lc_servidumbretransito_area, lc_unidadconstruccion_area) FROM stdin;
    test_ladm_col       postgres    false    1093   H	      A%          0    614825    col_baunitcomointeresado 
   TABLE DATA               �   COPY test_ladm_col.col_baunitcomointeresado (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad) FROM stdin;
    test_ladm_col       postgres    false    1120   .H	      7%          0    614734    col_baunitfuente 
   TABLE DATA               [   COPY test_ladm_col.col_baunitfuente (t_id, t_ili_tid, fuente_espacial, unidad) FROM stdin;
    test_ladm_col       postgres    false    1110   KH	      9%          0    614749    col_cclfuente 
   TABLE DATA               U   COPY test_ladm_col.col_cclfuente (t_id, t_ili_tid, ccl, fuente_espacial) FROM stdin;
    test_ladm_col       postgres    false    1112   hH	      =%          0    614789    col_clfuente 
   TABLE DATA               O   COPY test_ladm_col.col_clfuente (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_col       postgres    false    1116   �H	      �%          0    615733    col_contenidoniveltipo 
   TABLE DATA               �   COPY test_ladm_col.col_contenidoniveltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1209   �H	      �%          0    615931    col_dimensiontipo 
   TABLE DATA               �   COPY test_ladm_col.col_dimensiontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1231   �I	      �%          0    615598    col_estadodisponibilidadtipo 
   TABLE DATA               �   COPY test_ladm_col.col_estadodisponibilidadtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1194    J	      �%          0    615904    col_estadoredserviciostipo 
   TABLE DATA               �   COPY test_ladm_col.col_estadoredserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1228   �J	      �%          0    616111    col_estructuratipo 
   TABLE DATA               �   COPY test_ladm_col.col_estructuratipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1251   �K	      �%          0    615778    col_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_col.col_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1214   8L	      �%          0    615562    col_fuenteespacialtipo 
   TABLE DATA               �   COPY test_ladm_col.col_fuenteespacialtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1190   �M	      �%          0    615949    col_grupointeresadotipo 
   TABLE DATA               �   COPY test_ladm_col.col_grupointeresadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1233   P	      �%          0    615697    col_interpolaciontipo 
   TABLE DATA               �   COPY test_ladm_col.col_interpolaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1205    Q	      �%          0    616021    col_iso19125_tipo 
   TABLE DATA               �   COPY test_ladm_col.col_iso19125_tipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1241   �Q	      ;%          0    614768 
   col_masccl 
   TABLE DATA               �   COPY test_ladm_col.col_masccl (t_id, t_ili_tid, ccl_mas, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion, ue_mas_lc_construccion) FROM stdin;
    test_ladm_col       postgres    false    1114    R	      ?%          0    614806 	   col_mascl 
   TABLE DATA               �   COPY test_ladm_col.col_mascl (t_id, t_ili_tid, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion, ue_mas_lc_construccion) FROM stdin;
    test_ladm_col       postgres    false    1118   =R	      :%          0    614757    col_menosccl 
   TABLE DATA               �   COPY test_ladm_col.col_menosccl (t_id, t_ili_tid, ccl_menos, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion, ue_menos_lc_construccion) FROM stdin;
    test_ladm_col       postgres    false    1113   ZR	      >%          0    614796    col_menoscl 
   TABLE DATA               �   COPY test_ladm_col.col_menoscl (t_id, t_ili_tid, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion, ue_menos_lc_construccion) FROM stdin;
    test_ladm_col       postgres    false    1117   wR	      �%          0    615742    col_metodoproducciontipo 
   TABLE DATA               �   COPY test_ladm_col.col_metodoproducciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1210   �R	      D%          0    614852    col_miembros 
   TABLE DATA               �   COPY test_ladm_col.col_miembros (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, agrupacion) FROM stdin;
    test_ladm_col       postgres    false    1123   �T	      <%          0    614779    col_puntoccl 
   TABLE DATA               �   COPY test_ladm_col.col_puntoccl (t_id, t_ili_tid, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento, ccl) FROM stdin;
    test_ladm_col       postgres    false    1115   �T	      @%          0    614816    col_puntocl 
   TABLE DATA               �   COPY test_ladm_col.col_puntocl (t_id, t_ili_tid, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento) FROM stdin;
    test_ladm_col       postgres    false    1119   U	      5%          0    614713    col_puntofuente 
   TABLE DATA               �   COPY test_ladm_col.col_puntofuente (t_id, t_ili_tid, fuente_espacial, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento) FROM stdin;
    test_ladm_col       postgres    false    1108   U	      �%          0    616084    col_puntotipo 
   TABLE DATA               �   COPY test_ladm_col.col_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1248   <U	      �%          0    615967    col_redserviciostipo 
   TABLE DATA               �   COPY test_ladm_col.col_redserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1235   �U	      �%          0    615877    col_registrotipo 
   TABLE DATA               �   COPY test_ladm_col.col_registrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1225   bV	      3%          0    614698    col_relacionfuente 
   TABLE DATA               [   COPY test_ladm_col.col_relacionfuente (t_id, t_ili_tid, fuente_administrativa) FROM stdin;
    test_ladm_col       postgres    false    1106   �V	      8%          0    614742    col_relacionfuenteuespacial 
   TABLE DATA               ^   COPY test_ladm_col.col_relacionfuenteuespacial (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_col       postgres    false    1111   �V	      �%          0    616012    col_relacionsuperficietipo 
   TABLE DATA               �   COPY test_ladm_col.col_relacionsuperficietipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1240   W	      B%          0    614834    col_responsablefuente 
   TABLE DATA               �   COPY test_ladm_col.col_responsablefuente (t_id, t_ili_tid, fuente_administrativa, interesado_lc_interesado, interesado_lc_agrupacioninteresados) FROM stdin;
    test_ladm_col       postgres    false    1121   �W	      1%          0    614678    col_rrrfuente 
   TABLE DATA               z   COPY test_ladm_col.col_rrrfuente (t_id, t_ili_tid, fuente_administrativa, rrr_lc_restriccion, rrr_lc_derecho) FROM stdin;
    test_ladm_col       postgres    false    1104   �W	      C%          0    614843    col_topografofuente 
   TABLE DATA               �   COPY test_ladm_col.col_topografofuente (t_id, t_ili_tid, fuente_espacial, topografo_lc_interesado, topografo_lc_agrupacioninteresados) FROM stdin;
    test_ladm_col       postgres    false    1122   �W	      )%          0    614599    col_transformacion 
   TABLE DATA               �   COPY test_ladm_col.col_transformacion (t_id, t_seq, localizacion_transformada, lc_puntocontrol_transformacion_y_resultado, lc_puntolindero_transformacion_y_resultado, lc_puntolevantamiento_transformacion_y_resultado) FROM stdin;
    test_ladm_col       postgres    false    1096   X	      2%          0    614687    col_uebaunit 
   TABLE DATA               �   COPY test_ladm_col.col_uebaunit (t_id, t_ili_tid, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, baunit) FROM stdin;
    test_ladm_col       postgres    false    1105   #X	      6%          0    614723    col_uefuente 
   TABLE DATA               �   COPY test_ladm_col.col_uefuente (t_id, t_ili_tid, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, fuente_espacial) FROM stdin;
    test_ladm_col       postgres    false    1109   @X	      0%          0    614668    col_ueuegrupo 
   TABLE DATA               �   COPY test_ladm_col.col_ueuegrupo (t_id, t_ili_tid, parte_lc_terreno, parte_lc_servidumbretransito, parte_lc_unidadconstruccion, parte_lc_construccion) FROM stdin;
    test_ladm_col       postgres    false    1103   ]X	      �%          0    615796 "   col_unidadadministrativabasicatipo 
   TABLE DATA               �   COPY test_ladm_col.col_unidadadministrativabasicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1216   zX	      �%          0    615643    col_unidadedificaciontipo 
   TABLE DATA               �   COPY test_ladm_col.col_unidadedificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1199   �Y	      4%          0    614705    col_unidadfuente 
   TABLE DATA               a   COPY test_ladm_col.col_unidadfuente (t_id, t_ili_tid, fuente_administrativa, unidad) FROM stdin;
    test_ladm_col       postgres    false    1107   gZ	      �%          0    615895    col_volumentipo 
   TABLE DATA               �   COPY test_ladm_col.col_volumentipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1227   �Z	      /%          0    614657    col_volumenvalor 
   TABLE DATA               �   COPY test_ladm_col.col_volumenvalor (t_id, t_seq, volumen_medicion, tipo, lc_construccion_volumen, lc_terreno_volumen, lc_servidumbretransito_volumen, lc_unidadconstruccion_volumen) FROM stdin;
    test_ladm_col       postgres    false    1102   �Z	      .%          0    614645 
   extarchivo 
   TABLE DATA                 COPY test_ladm_col.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo, lc_fuenteadministrtiva_ext_archivo_id, lc_fuenteespacial_ext_archivo_id) FROM stdin;
    test_ladm_col       postgres    false    1101   [	      '%          0    614570    extdireccion 
   TABLE DATA               !  COPY test_ladm_col.extdireccion (t_id, t_seq, tipo_direccion, es_direccion_principal, localizacion, codigo_postal, clase_via_principal, valor_via_principal, letra_via_principal, sector_ciudad, valor_via_generadora, letra_via_generadora, numero_predio, sector_predio, complemento, nombre_predio, extunidadedificcnfsica_ext_direccion_id, extinteresado_ext_direccion_id, lc_construccion_ext_direccion_id, lc_predio_direccion, lc_terreno_ext_direccion_id, lc_servidumbretransito_ext_direccion_id, lc_unidadconstruccion_ext_direccion_id) FROM stdin;
    test_ladm_col       postgres    false    1094   8[	      �%          0    615985     extdireccion_clase_via_principal 
   TABLE DATA               �   COPY test_ladm_col.extdireccion_clase_via_principal (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1237   U[	      �%          0    616057    extdireccion_sector_ciudad 
   TABLE DATA               �   COPY test_ladm_col.extdireccion_sector_ciudad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1245   I\	      �%          0    615544    extdireccion_sector_predio 
   TABLE DATA               �   COPY test_ladm_col.extdireccion_sector_predio (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1188   �\	      �%          0    616093    extdireccion_tipo_direccion 
   TABLE DATA               �   COPY test_ladm_col.extdireccion_tipo_direccion (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1249   ]]	      ,%          0    614627    extinteresado 
   TABLE DATA               �   COPY test_ladm_col.extinteresado (t_id, t_seq, nombre, documento_escaneado, extredserviciosfisica_ext_interesado_administrador_id, lc_agrupacionintersdos_ext_pid, lc_interesado_ext_pid) FROM stdin;
    test_ladm_col       postgres    false    1099   �]	      -%          0    614639    extredserviciosfisica 
   TABLE DATA               N   COPY test_ladm_col.extredserviciosfisica (t_id, t_seq, orientada) FROM stdin;
    test_ladm_col       postgres    false    1100   �]	      *%          0    614612    extunidadedificacionfisica 
   TABLE DATA               H   COPY test_ladm_col.extunidadedificacionfisica (t_id, t_seq) FROM stdin;
    test_ladm_col       postgres    false    1097   ^	      (%          0    614591    fraccion 
   TABLE DATA               �   COPY test_ladm_col.fraccion (t_id, t_seq, denominador, numerador, col_miembros_participacion, lc_predio_copropiedad_coeficiente) FROM stdin;
    test_ladm_col       postgres    false    1095   *^	      E%          0    614861 	   gc_barrio 
   TABLE DATA               e   COPY test_ladm_col.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_col       postgres    false    1124   G^	      F%          0    614871 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_ladm_col.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
    test_ladm_col       postgres    false    1125   d^	      G%          0    614881    gc_comisionesconstruccion 
   TABLE DATA               f   COPY test_ladm_col.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_col       postgres    false    1126   �^	      H%          0    614891    gc_comisionesterreno 
   TABLE DATA               a   COPY test_ladm_col.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_col       postgres    false    1127   �^	      I%          0    614901    gc_comisionesunidadconstruccion 
   TABLE DATA               l   COPY test_ladm_col.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_col       postgres    false    1128   �^	      �%          0    615634    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_col.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1198   �^	      J%          0    614911    gc_construccion 
   TABLE DATA               
  COPY test_ladm_col.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
    test_ladm_col       postgres    false    1129   �a	      X%          0    615049    gc_copropiedad 
   TABLE DATA               d   COPY test_ladm_col.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
    test_ladm_col       postgres    false    1143   �a	      K%          0    614923    gc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_col.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
    test_ladm_col       postgres    false    1130   b	      L%          0    614930    gc_datostorreph 
   TABLE DATA               �   COPY test_ladm_col.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
    test_ladm_col       postgres    false    1131   2b	      M%          0    614937    gc_direccion 
   TABLE DATA               �   COPY test_ladm_col.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
    test_ladm_col       postgres    false    1132   Ob	      N%          0    614948    gc_estadopredio 
   TABLE DATA               �   COPY test_ladm_col.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
    test_ladm_col       postgres    false    1133   lb	      O%          0    614955 
   gc_manzana 
   TABLE DATA               o   COPY test_ladm_col.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
    test_ladm_col       postgres    false    1134   �b	      P%          0    614965    gc_perimetro 
   TABLE DATA               �   COPY test_ladm_col.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_ladm_col       postgres    false    1135   �b	      W%          0    615038    gc_prediocatastro 
   TABLE DATA                 COPY test_ladm_col.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
    test_ladm_col       postgres    false    1142   �b	      Q%          0    614975    gc_propietario 
   TABLE DATA               �   COPY test_ladm_col.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
    test_ladm_col       postgres    false    1136   �b	      R%          0    614985    gc_sectorrural 
   TABLE DATA               S   COPY test_ladm_col.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_col       postgres    false    1137   �b	      S%          0    614995    gc_sectorurbano 
   TABLE DATA               T   COPY test_ladm_col.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_col       postgres    false    1138   c	      �%          0    615832    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_ladm_col.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1220   7c	      T%          0    615005 
   gc_terreno 
   TABLE DATA               �   COPY test_ladm_col.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
    test_ladm_col       postgres    false    1139   �c	      U%          0    615016    gc_unidadconstruccion 
   TABLE DATA               3  COPY test_ladm_col.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
    test_ladm_col       postgres    false    1140   	d	      �%          0    615805    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1217   &d	      V%          0    615028 	   gc_vereda 
   TABLE DATA               v   COPY test_ladm_col.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_col       postgres    false    1141   �d	      "%          0    614526    gm_multisurface2d 
   TABLE DATA               ?   COPY test_ladm_col.gm_multisurface2d (t_id, t_seq) FROM stdin;
    test_ladm_col       postgres    false    1089   e	      $%          0    614543    gm_multisurface3d 
   TABLE DATA               ?   COPY test_ladm_col.gm_multisurface3d (t_id, t_seq) FROM stdin;
    test_ladm_col       postgres    false    1091   .e	      !%          0    614515    gm_surface2dlistvalue 
   TABLE DATA               g   COPY test_ladm_col.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
    test_ladm_col       postgres    false    1088   Ke	      #%          0    614532    gm_surface3dlistvalue 
   TABLE DATA               g   COPY test_ladm_col.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
    test_ladm_col       postgres    false    1090   he	      +%          0    614618    imagen 
   TABLE DATA               �   COPY test_ladm_col.imagen (t_id, t_seq, uri, extinteresado_huella_dactilar, extinteresado_fotografia, extinteresado_firma) FROM stdin;
    test_ladm_col       postgres    false    1098   �e	      �%          0    615994    ini_emparejamientotipo 
   TABLE DATA               �   COPY test_ladm_col.ini_emparejamientotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1238   �e	      `%          0    615123    ini_predioinsumos 
   TABLE DATA               �   COPY test_ladm_col.ini_predioinsumos (t_id, t_ili_tid, tipo_emparejamiento, observaciones, gc_predio_catastro, snr_predio_juridico) FROM stdin;
    test_ladm_col       postgres    false    1151   �f	      �%          0    616048    lc_acuerdotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_acuerdotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1244   g	      a%          0    615135    lc_agrupacioninteresados 
   TABLE DATA               �   COPY test_ladm_col.lc_agrupacioninteresados (t_id, t_ili_tid, tipo, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1152   �g	      �%          0    615679    lc_anexotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_anexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1203   �g	      u%          0    615379    lc_calificacionconvencional 
   TABLE DATA               �   COPY test_ladm_col.lc_calificacionconvencional (t_id, t_ili_tid, tipo_calificar, total_calificacion, lc_unidad_construccion) FROM stdin;
    test_ladm_col       postgres    false    1172   Uw	      v%          0    615388    lc_calificacionnoconvencional 
   TABLE DATA               s   COPY test_ladm_col.lc_calificacionnoconvencional (t_id, t_ili_tid, tipo_anexo, lc_unidad_construccion) FROM stdin;
    test_ladm_col       postgres    false    1173   rw	      �%          0    615607    lc_calificartipo 
   TABLE DATA               �   COPY test_ladm_col.lc_calificartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1195   �w	      �%          0    616003    lc_categoriasuelotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_categoriasuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1239   ]x	      �%          0    616129    lc_clasecalificaciontipo 
   TABLE DATA               �   COPY test_ladm_col.lc_clasecalificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1253   �{	      �%          0    615652    lc_clasesuelotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_clasesuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1200   ,~	      �%          0    615958    lc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1234   =�	      b%          0    615146    lc_construccion 
   TABLE DATA               �  COPY test_ladm_col.lc_construccion (t_id, t_ili_tid, identificador, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, anio_construccion, avaluo_construccion, area_construccion, altura, observaciones, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1153   L�	      �%          0    615670    lc_construccionplantatipo 
   TABLE DATA               �   COPY test_ladm_col.lc_construccionplantatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1202   i�	      �%          0    615868    lc_construcciontipo 
   TABLE DATA               �   COPY test_ladm_col.lc_construcciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1224   �	      c%          0    615161    lc_contactovisita 
   TABLE DATA               v  COPY test_ladm_col.lc_contactovisita (t_id, t_ili_tid, tipo_documento_quien_atendio, numero_documento_quien_atendio, primer_nombre_quien_atendio, segundo_nombre_quien_atendio, primer_apellido_quien_atendio, segundo_apellido_quien_atendio, relacion_con_predio, domicilio_notificaciones, celular, correo_electronico, autoriza_notificaciones, lc_datos_adicionales) FROM stdin;
    test_ladm_col       postgres    false    1154   ��	      w%          0    615397 )   lc_datosadicionaleslevantamientocatastral 
   TABLE DATA               �  COPY test_ladm_col.lc_datosadicionaleslevantamientocatastral (t_id, t_ili_tid, tiene_area_registral, area_registral_m2, procedimiento_catastral_registral, destinacion_economica, clase_suelo, categoria_suelo, observaciones, fecha_visita_predial, tipo_documento_reconocedor, numero_documento_reconocedor, primer_nombre_reconocedor, segundo_nombre_reconocedor, primer_apellido_reconocedor, segundo_apellido_reconocedor, resultado_visita, suscribe_acta_colindancia, lc_predio) FROM stdin;
    test_ladm_col       postgres    false    1174   ·	      d%          0    615174    lc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_col.lc_datosphcondominio (t_id, t_ili_tid, area_total_terreno, area_total_terreno_privada, area_total_terreno_comun, area_total_construida, area_total_construida_privada, area_total_construida_comun, numero_torres, total_unidades_privadas, lc_predio) FROM stdin;
    test_ladm_col       postgres    false    1155   �	      e%          0    615182 
   lc_derecho 
   TABLE DATA                 COPY test_ladm_col.lc_derecho (t_id, t_ili_tid, tipo, fraccion_derecho, fecha_inicio_tenencia, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1156   �	      �%          0    615760    lc_derechotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_derechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1212   %�	      �%          0    616120    lc_destinacioneconomicatipo 
   TABLE DATA               �   COPY test_ladm_col.lc_destinacioneconomicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1252   �	      �%          0    615589    lc_dominioconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col.lc_dominioconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1193   z�	      �%          0    615886    lc_estadoconservaciontipo 
   TABLE DATA               �   COPY test_ladm_col.lc_estadoconservaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1226   �	      f%          0    615196    lc_estructuranovedadfmi 
   TABLE DATA               �   COPY test_ladm_col.lc_estructuranovedadfmi (t_id, t_seq, codigo_orip, numero_fmi, lc_dtsdcnlstmntctstral_novedad_fmi) FROM stdin;
    test_ladm_col       postgres    false    1157   ҙ	      g%          0    615203 !   lc_estructuranovedadnumeropredial 
   TABLE DATA               �   COPY test_ladm_col.lc_estructuranovedadnumeropredial (t_id, t_seq, numero_predial, tipo_novedad, lc_dtsdcnlstmntctstral_novedad_numeros_prediales) FROM stdin;
    test_ladm_col       postgres    false    1158   �	      �%          0    615751 .   lc_estructuranovedadnumeropredial_tipo_novedad 
   TABLE DATA               �   COPY test_ladm_col.lc_estructuranovedadnumeropredial_tipo_novedad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1211   �	      �%          0    615688    lc_fotoidentificaciontipo 
   TABLE DATA               �   COPY test_ladm_col.lc_fotoidentificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1204   �	      h%          0    615211    lc_fuenteadministrativa 
   TABLE DATA               �   COPY test_ladm_col.lc_fuenteadministrativa (t_id, t_ili_tid, tipo, ente_emisor, observacion, numero_fuente, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1159   �	      �%          0    616039    lc_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_col.lc_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1243   �	      i%          0    615224    lc_fuenteespacial 
   TABLE DATA               �   COPY test_ladm_col.lc_fuenteespacial (t_id, t_ili_tid, nombre, tipo, descripcion, metadato, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1160   ��	      j%          0    615237    lc_grupocalificacion 
   TABLE DATA               �   COPY test_ladm_col.lc_grupocalificacion (t_id, t_ili_tid, clase_calificacion, conservacion, subtotal, lc_calificacion_convencional) FROM stdin;
    test_ladm_col       postgres    false    1161   ��	      �%          0    615922    lc_grupoetnicotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_grupoetnicotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1230   ޞ	      k%          0    615247    lc_interesado 
   TABLE DATA               '  COPY test_ladm_col.lc_interesado (t_id, t_ili_tid, tipo, tipo_documento, documento_identidad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, sexo, grupo_etnico, razon_social, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1162   y�	      l%          0    615261    lc_interesadocontacto 
   TABLE DATA               �   COPY test_ladm_col.lc_interesadocontacto (t_id, t_ili_tid, telefono1, telefono2, domicilio_notificacion, direccion_residencia, correo_electronico, autoriza_notificacion_correo, departamento, municipio, vereda, corregimiento, lc_interesado) FROM stdin;
    test_ladm_col       postgres    false    1163   ��	      �%          0    615841    lc_interesadodocumentotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_interesadodocumentotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1221   ��	      �%          0    615706    lc_interesadotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_interesadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1206   ��	      m%          0    615272 
   lc_lindero 
   TABLE DATA               �   COPY test_ladm_col.lc_lindero (t_id, t_ili_tid, longitud, geometria, localizacion_textual, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1164   ݧ	      n%          0    615283    lc_objetoconstruccion 
   TABLE DATA               �   COPY test_ladm_col.lc_objetoconstruccion (t_id, t_ili_tid, tipo_objeto_construccion, puntos, lc_grupo_calificacion) FROM stdin;
    test_ladm_col       postgres    false    1165   ��	      �%          0    615913    lc_objetoconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col.lc_objetoconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1229   �	      o%          0    615292    lc_ofertasmercadoinmobiliario 
   TABLE DATA               �   COPY test_ladm_col.lc_ofertasmercadoinmobiliario (t_id, t_ili_tid, tipo_oferta, valor_pedido, valor_negociado, fecha_captura_oferta, tiempo_oferta_mercado, numero_contacto_oferente, nombre_oferente, lc_predio) FROM stdin;
    test_ladm_col       postgres    false    1166   �	      �%          0    615769    lc_ofertatipo 
   TABLE DATA               �   COPY test_ladm_col.lc_ofertatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1213   �	      p%          0    615301 	   lc_predio 
   TABLE DATA               E  COPY test_ladm_col.lc_predio (t_id, t_ili_tid, departamento, municipio, id_operacion, tiene_fmi, codigo_orip, matricula_inmobiliaria, numero_predial, numero_predial_anterior, nupre, avaluo_catastral, tipo, condicion_predio, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1167   ��	      z%          0    615443    lc_predio_copropiedad 
   TABLE DATA               Q   COPY test_ladm_col.lc_predio_copropiedad (t_id, predio, copropiedad) FROM stdin;
    test_ladm_col       postgres    false    1177   �	      {%          0    615451    lc_predio_ini_predioinsumos 
   TABLE DATA               l   COPY test_ladm_col.lc_predio_ini_predioinsumos (t_id, t_ili_tid, ini_predio_insumos, lc_predio) FROM stdin;
    test_ladm_col       postgres    false    1178   1�	      �%          0    615823    lc_prediotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_prediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1219   N�	      �%          0    615976 &   lc_procedimientocatastralregistraltipo 
   TABLE DATA               �   COPY test_ladm_col.lc_procedimientocatastralregistraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1236   ��	      q%          0    615313    lc_puntocontrol 
   TABLE DATA               z  COPY test_ladm_col.lc_puntocontrol (t_id, t_ili_tid, id_punto_control, puntotipo, tipo_punto_control, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1168   ��	      �%          0    615859    lc_puntocontroltipo 
   TABLE DATA               �   COPY test_ladm_col.lc_puntocontroltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1223   ӽ	      x%          0    615414    lc_puntolevantamiento 
   TABLE DATA               �  COPY test_ladm_col.lc_puntolevantamiento (t_id, t_ili_tid, id_punto_levantamiento, puntotipo, tipo_punto_levantamiento, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1175   �	      �%          0    615940    lc_puntolevtipo 
   TABLE DATA               �   COPY test_ladm_col.lc_puntolevtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1232   �	      r%          0    615332    lc_puntolindero 
   TABLE DATA               �  COPY test_ladm_col.lc_puntolindero (t_id, t_ili_tid, id_punto_lindero, puntotipo, acuerdo, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1169   Ϳ	      �%          0    615616    lc_puntotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1196   �	      �%          0    615715    lc_relacionprediotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_relacionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1207   ��	      s%          0    615352    lc_restriccion 
   TABLE DATA               �   COPY test_ladm_col.lc_restriccion (t_id, t_ili_tid, tipo, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1170   �	      �%          0    615814    lc_restricciontipo 
   TABLE DATA               �   COPY test_ladm_col.lc_restricciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1218   $�	      �%          0    615553    lc_resultadovisitatipo 
   TABLE DATA               �   COPY test_ladm_col.lc_resultadovisitatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1189   1�	      |%          0    615459    lc_servidumbretransito 
   TABLE DATA               �   COPY test_ladm_col.lc_servidumbretransito (t_id, t_ili_tid, area_servidumbre, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1179   �	      �%          0    615571    lc_sexotipo 
   TABLE DATA               �   COPY test_ladm_col.lc_sexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1191   2�	      t%          0    615366 
   lc_terreno 
   TABLE DATA               �   COPY test_ladm_col.lc_terreno (t_id, t_ili_tid, area_terreno, avaluo_terreno, manzana_vereda_codigo, geometria, dimension, etiqueta, relacion_superficie, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1171   ��	      y%          0    615434    lc_tipologiaconstruccion 
   TABLE DATA               r   COPY test_ladm_col.lc_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, lc_unidad_construccion) FROM stdin;
    test_ladm_col       postgres    false    1176   ��	      �%          0    615850    lc_tipologiatipo 
   TABLE DATA               �   COPY test_ladm_col.lc_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1222   �	      }%          0    615472    lc_unidadconstruccion 
   TABLE DATA               �  COPY test_ladm_col.lc_unidadconstruccion (t_id, t_ili_tid, identificador, tipo_dominio, tipo_construccion, tipo_unidad_construccion, tipo_planta, planta_ubicacion, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, avaluo_unidad_construccion, area_construida, area_privada_construida, altura, observaciones, lc_construccion, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col       postgres    false    1180   ��	      �%          0    615724    lc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col.lc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1208   �	      �%          0    616102    lc_usouconstipo 
   TABLE DATA               �   COPY test_ladm_col.lc_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1250   6�	      �%          0    615661 
   lc_viatipo 
   TABLE DATA                  COPY test_ladm_col.lc_viatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1201   ��	      �%          0    615580    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_ladm_col.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1192   r�	      �%          0    616030    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_ladm_col.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1242   ��	      Y%          0    615057    snr_derecho 
   TABLE DATA               �   COPY test_ladm_col.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
    test_ladm_col       postgres    false    1144   �
      �%          0    615535    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_ladm_col.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1187   �
      Z%          0    615066    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_ladm_col.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
    test_ladm_col       postgres    false    1145   �
      [%          0    615073    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_ladm_col.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_col       postgres    false    1146   
      \%          0    615083    snr_fuentederecho 
   TABLE DATA               �   COPY test_ladm_col.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_col       postgres    false    1147   1
      �%          0    616066    snr_fuentetipo 
   TABLE DATA               �   COPY test_ladm_col.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1246   N
      �%          0    615625    snr_personatitulartipo 
   TABLE DATA               �   COPY test_ladm_col.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col       postgres    false    1197   �
      ^%          0    615104    snr_predioregistro 
   TABLE DATA                 COPY test_ladm_col.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
    test_ladm_col       postgres    false    1149   

      ]%          0    615093    snr_titular 
   TABLE DATA               �   COPY test_ladm_col.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
    test_ladm_col       postgres    false    1148   

      _%          0    615115    snr_titular_derecho 
   TABLE DATA               y   COPY test_ladm_col.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
    test_ladm_col       postgres    false    1150   <

      �%          0    616146    t_ili2db_attrname 
   TABLE DATA               V   COPY test_ladm_col.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
    test_ladm_col       postgres    false    1255   Y

      ~%          0    615491    t_ili2db_basket 
   TABLE DATA               i   COPY test_ladm_col.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
    test_ladm_col       postgres    false    1181   �+
      �%          0    616138    t_ili2db_classname 
   TABLE DATA               E   COPY test_ladm_col.t_ili2db_classname (iliname, sqlname) FROM stdin;
    test_ladm_col       postgres    false    1254   �+
      �%          0    616154    t_ili2db_column_prop 
   TABLE DATA               c   COPY test_ladm_col.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
    test_ladm_col       postgres    false    1256   A7
      %          0    615500    t_ili2db_dataset 
   TABLE DATA               D   COPY test_ladm_col.t_ili2db_dataset (t_id, datasetname) FROM stdin;
    test_ladm_col       postgres    false    1182   �Y
      �%          0    615505    t_ili2db_inheritance 
   TABLE DATA               K   COPY test_ladm_col.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
    test_ladm_col       postgres    false    1183   �Y
      �%          0    616166    t_ili2db_meta_attrs 
   TABLE DATA               W   COPY test_ladm_col.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
    test_ladm_col       postgres    false    1258   �_
      �%          0    615527    t_ili2db_model 
   TABLE DATA               e   COPY test_ladm_col.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
    test_ladm_col       postgres    false    1186   �
      �%          0    615513    t_ili2db_settings 
   TABLE DATA               @   COPY test_ladm_col.t_ili2db_settings (tag, setting) FROM stdin;
    test_ladm_col       postgres    false    1184   �w      �%          0    616160    t_ili2db_table_prop 
   TABLE DATA               M   COPY test_ladm_col.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
    test_ladm_col       postgres    false    1257   �y      �%          0    615521    t_ili2db_trafo 
   TABLE DATA               F   COPY test_ladm_col.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
    test_ladm_col       postgres    false    1185   v�      �'           0    0    t_ili2db_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('test_ladm_col.t_ili2db_seq', 587, true);
            test_ladm_col       postgres    false    1087            t!           2606    614554 *   cc_metodooperacion cc_metodooperacion_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_pkey;
       test_ladm_col         postgres    false    1092            g#           2606    615795 >   ci_forma_presentacion_codigo ci_forma_presentacion_codigo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.ci_forma_presentacion_codigo
    ADD CONSTRAINT ci_forma_presentacion_codigo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col.ci_forma_presentacion_codigo DROP CONSTRAINT ci_forma_presentacion_codigo_pkey;
       test_ladm_col         postgres    false    1215            �#           2606    616083    col_areatipo col_areatipo_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.col_areatipo
    ADD CONSTRAINT col_areatipo_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.col_areatipo DROP CONSTRAINT col_areatipo_pkey;
       test_ladm_col         postgres    false    1247            z!           2606    614564     col_areavalor col_areavalor_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col.col_areavalor
    ADD CONSTRAINT col_areavalor_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col.col_areavalor DROP CONSTRAINT col_areavalor_pkey;
       test_ladm_col         postgres    false    1093            
"           2606    614830 6   col_baunitcomointeresado col_baunitcomointeresado_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_pkey;
       test_ladm_col         postgres    false    1120            �!           2606    614739 &   col_baunitfuente col_baunitfuente_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col.col_baunitfuente DROP CONSTRAINT col_baunitfuente_pkey;
       test_ladm_col         postgres    false    1110            �!           2606    614754     col_cclfuente col_cclfuente_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col.col_cclfuente
    ADD CONSTRAINT col_cclfuente_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col.col_cclfuente DROP CONSTRAINT col_cclfuente_pkey;
       test_ladm_col         postgres    false    1112            �!           2606    614794    col_clfuente col_clfuente_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.col_clfuente
    ADD CONSTRAINT col_clfuente_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.col_clfuente DROP CONSTRAINT col_clfuente_pkey;
       test_ladm_col         postgres    false    1116            [#           2606    615741 2   col_contenidoniveltipo col_contenidoniveltipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col.col_contenidoniveltipo
    ADD CONSTRAINT col_contenidoniveltipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col.col_contenidoniveltipo DROP CONSTRAINT col_contenidoniveltipo_pkey;
       test_ladm_col         postgres    false    1209            �#           2606    615939 (   col_dimensiontipo col_dimensiontipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col.col_dimensiontipo
    ADD CONSTRAINT col_dimensiontipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col.col_dimensiontipo DROP CONSTRAINT col_dimensiontipo_pkey;
       test_ladm_col         postgres    false    1231            =#           2606    615606 >   col_estadodisponibilidadtipo col_estadodisponibilidadtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_estadodisponibilidadtipo
    ADD CONSTRAINT col_estadodisponibilidadtipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col.col_estadodisponibilidadtipo DROP CONSTRAINT col_estadodisponibilidadtipo_pkey;
       test_ladm_col         postgres    false    1194            �#           2606    615912 :   col_estadoredserviciostipo col_estadoredserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_estadoredserviciostipo
    ADD CONSTRAINT col_estadoredserviciostipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col.col_estadoredserviciostipo DROP CONSTRAINT col_estadoredserviciostipo_pkey;
       test_ladm_col         postgres    false    1228            �#           2606    616119 *   col_estructuratipo col_estructuratipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col.col_estructuratipo
    ADD CONSTRAINT col_estructuratipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col.col_estructuratipo DROP CONSTRAINT col_estructuratipo_pkey;
       test_ladm_col         postgres    false    1251            e#           2606    615786 >   col_fuenteadministrativatipo col_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_fuenteadministrativatipo
    ADD CONSTRAINT col_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col.col_fuenteadministrativatipo DROP CONSTRAINT col_fuenteadministrativatipo_pkey;
       test_ladm_col         postgres    false    1214            5#           2606    615570 2   col_fuenteespacialtipo col_fuenteespacialtipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col.col_fuenteespacialtipo
    ADD CONSTRAINT col_fuenteespacialtipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col.col_fuenteespacialtipo DROP CONSTRAINT col_fuenteespacialtipo_pkey;
       test_ladm_col         postgres    false    1190            �#           2606    615957 4   col_grupointeresadotipo col_grupointeresadotipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col.col_grupointeresadotipo
    ADD CONSTRAINT col_grupointeresadotipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col.col_grupointeresadotipo DROP CONSTRAINT col_grupointeresadotipo_pkey;
       test_ladm_col         postgres    false    1233            S#           2606    615705 0   col_interpolaciontipo col_interpolaciontipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.col_interpolaciontipo
    ADD CONSTRAINT col_interpolaciontipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.col_interpolaciontipo DROP CONSTRAINT col_interpolaciontipo_pkey;
       test_ladm_col         postgres    false    1205            �#           2606    616029 (   col_iso19125_tipo col_iso19125_tipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col.col_iso19125_tipo
    ADD CONSTRAINT col_iso19125_tipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col.col_iso19125_tipo DROP CONSTRAINT col_iso19125_tipo_pkey;
       test_ladm_col         postgres    false    1241            �!           2606    614773    col_masccl col_masccl_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY test_ladm_col.col_masccl
    ADD CONSTRAINT col_masccl_pkey PRIMARY KEY (t_id);
 K   ALTER TABLE ONLY test_ladm_col.col_masccl DROP CONSTRAINT col_masccl_pkey;
       test_ladm_col         postgres    false    1114            �!           2606    614811    col_mascl col_mascl_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY test_ladm_col.col_mascl
    ADD CONSTRAINT col_mascl_pkey PRIMARY KEY (t_id);
 I   ALTER TABLE ONLY test_ladm_col.col_mascl DROP CONSTRAINT col_mascl_pkey;
       test_ladm_col         postgres    false    1118            �!           2606    614762    col_menosccl col_menosccl_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.col_menosccl
    ADD CONSTRAINT col_menosccl_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.col_menosccl DROP CONSTRAINT col_menosccl_pkey;
       test_ladm_col         postgres    false    1113            �!           2606    614801    col_menoscl col_menoscl_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY test_ladm_col.col_menoscl
    ADD CONSTRAINT col_menoscl_pkey PRIMARY KEY (t_id);
 M   ALTER TABLE ONLY test_ladm_col.col_menoscl DROP CONSTRAINT col_menoscl_pkey;
       test_ladm_col         postgres    false    1117            ]#           2606    615750 6   col_metodoproducciontipo col_metodoproducciontipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col.col_metodoproducciontipo
    ADD CONSTRAINT col_metodoproducciontipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col.col_metodoproducciontipo DROP CONSTRAINT col_metodoproducciontipo_pkey;
       test_ladm_col         postgres    false    1210            "           2606    614857    col_miembros col_miembros_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.col_miembros
    ADD CONSTRAINT col_miembros_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.col_miembros DROP CONSTRAINT col_miembros_pkey;
       test_ladm_col         postgres    false    1123            �!           2606    614784    col_puntoccl col_puntoccl_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.col_puntoccl
    ADD CONSTRAINT col_puntoccl_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.col_puntoccl DROP CONSTRAINT col_puntoccl_pkey;
       test_ladm_col         postgres    false    1115            "           2606    614821    col_puntocl col_puntocl_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY test_ladm_col.col_puntocl
    ADD CONSTRAINT col_puntocl_pkey PRIMARY KEY (t_id);
 M   ALTER TABLE ONLY test_ladm_col.col_puntocl DROP CONSTRAINT col_puntocl_pkey;
       test_ladm_col         postgres    false    1119            �!           2606    614718 $   col_puntofuente col_puntofuente_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.col_puntofuente
    ADD CONSTRAINT col_puntofuente_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.col_puntofuente DROP CONSTRAINT col_puntofuente_pkey;
       test_ladm_col         postgres    false    1108            �#           2606    616092     col_puntotipo col_puntotipo_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col.col_puntotipo
    ADD CONSTRAINT col_puntotipo_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col.col_puntotipo DROP CONSTRAINT col_puntotipo_pkey;
       test_ladm_col         postgres    false    1248            �#           2606    615975 .   col_redserviciostipo col_redserviciostipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col.col_redserviciostipo
    ADD CONSTRAINT col_redserviciostipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col.col_redserviciostipo DROP CONSTRAINT col_redserviciostipo_pkey;
       test_ladm_col         postgres    false    1235            {#           2606    615885 &   col_registrotipo col_registrotipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col.col_registrotipo
    ADD CONSTRAINT col_registrotipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col.col_registrotipo DROP CONSTRAINT col_registrotipo_pkey;
       test_ladm_col         postgres    false    1225            �!           2606    614703 *   col_relacionfuente col_relacionfuente_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col.col_relacionfuente DROP CONSTRAINT col_relacionfuente_pkey;
       test_ladm_col         postgres    false    1106            �!           2606    614747 <   col_relacionfuenteuespacial col_relacionfuenteuespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespacial_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespacial_pkey;
       test_ladm_col         postgres    false    1111            �#           2606    616020 :   col_relacionsuperficietipo col_relacionsuperficietipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_relacionsuperficietipo
    ADD CONSTRAINT col_relacionsuperficietipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col.col_relacionsuperficietipo DROP CONSTRAINT col_relacionsuperficietipo_pkey;
       test_ladm_col         postgres    false    1240            "           2606    614839 0   col_responsablefuente col_responsablefuente_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.col_responsablefuente DROP CONSTRAINT col_responsablefuente_pkey;
       test_ladm_col         postgres    false    1121            �!           2606    614683     col_rrrfuente col_rrrfuente_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col.col_rrrfuente DROP CONSTRAINT col_rrrfuente_pkey;
       test_ladm_col         postgres    false    1104            "           2606    614848 ,   col_topografofuente col_topografofuente_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col.col_topografofuente
    ADD CONSTRAINT col_topografofuente_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col.col_topografofuente DROP CONSTRAINT col_topografofuente_pkey;
       test_ladm_col         postgres    false    1122            �!           2606    614607 *   col_transformacion col_transformacion_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col.col_transformacion
    ADD CONSTRAINT col_transformacion_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col.col_transformacion DROP CONSTRAINT col_transformacion_pkey;
       test_ladm_col         postgres    false    1096            �!           2606    614692    col_uebaunit col_uebaunit_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.col_uebaunit
    ADD CONSTRAINT col_uebaunit_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.col_uebaunit DROP CONSTRAINT col_uebaunit_pkey;
       test_ladm_col         postgres    false    1105            �!           2606    614728    col_uefuente col_uefuente_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.col_uefuente
    ADD CONSTRAINT col_uefuente_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.col_uefuente DROP CONSTRAINT col_uefuente_pkey;
       test_ladm_col         postgres    false    1109            �!           2606    614673     col_ueuegrupo col_ueuegrupo_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_pkey;
       test_ladm_col         postgres    false    1103            i#           2606    615804 J   col_unidadadministrativabasicatipo col_unidadadministrativabasicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_unidadadministrativabasicatipo
    ADD CONSTRAINT col_unidadadministrativabasicatipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_col.col_unidadadministrativabasicatipo DROP CONSTRAINT col_unidadadministrativabasicatipo_pkey;
       test_ladm_col         postgres    false    1216            G#           2606    615651 8   col_unidadedificaciontipo col_unidadedificaciontipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col.col_unidadedificaciontipo
    ADD CONSTRAINT col_unidadedificaciontipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col.col_unidadedificaciontipo DROP CONSTRAINT col_unidadedificaciontipo_pkey;
       test_ladm_col         postgres    false    1199            �!           2606    614710 &   col_unidadfuente col_unidadfuente_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col.col_unidadfuente DROP CONSTRAINT col_unidadfuente_pkey;
       test_ladm_col         postgres    false    1107            #           2606    615903 $   col_volumentipo col_volumentipo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.col_volumentipo
    ADD CONSTRAINT col_volumentipo_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.col_volumentipo DROP CONSTRAINT col_volumentipo_pkey;
       test_ladm_col         postgres    false    1227            �!           2606    614662 &   col_volumenvalor col_volumenvalor_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col.col_volumenvalor DROP CONSTRAINT col_volumenvalor_pkey;
       test_ladm_col         postgres    false    1102            �!           2606    614653    extarchivo extarchivo_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY test_ladm_col.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 K   ALTER TABLE ONLY test_ladm_col.extarchivo DROP CONSTRAINT extarchivo_pkey;
       test_ladm_col         postgres    false    1101            �#           2606    615993 F   extdireccion_clase_via_principal extdireccion_clase_via_principal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion_clase_via_principal
    ADD CONSTRAINT extdireccion_clase_via_principal_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_col.extdireccion_clase_via_principal DROP CONSTRAINT extdireccion_clase_via_principal_pkey;
       test_ladm_col         postgres    false    1237            �!           2606    614578    extdireccion extdireccion_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_pkey;
       test_ladm_col         postgres    false    1094            �#           2606    616065 :   extdireccion_sector_ciudad extdireccion_sector_ciudad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion_sector_ciudad
    ADD CONSTRAINT extdireccion_sector_ciudad_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col.extdireccion_sector_ciudad DROP CONSTRAINT extdireccion_sector_ciudad_pkey;
       test_ladm_col         postgres    false    1245            1#           2606    615552 :   extdireccion_sector_predio extdireccion_sector_predio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion_sector_predio
    ADD CONSTRAINT extdireccion_sector_predio_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col.extdireccion_sector_predio DROP CONSTRAINT extdireccion_sector_predio_pkey;
       test_ladm_col         postgres    false    1188            �#           2606    616101 <   extdireccion_tipo_direccion extdireccion_tipo_direccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion_tipo_direccion
    ADD CONSTRAINT extdireccion_tipo_direccion_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col.extdireccion_tipo_direccion DROP CONSTRAINT extdireccion_tipo_direccion_pkey;
       test_ladm_col         postgres    false    1249            �!           2606    614635     extinteresado extinteresado_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col.extinteresado
    ADD CONSTRAINT extinteresado_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col.extinteresado DROP CONSTRAINT extinteresado_pkey;
       test_ladm_col         postgres    false    1099            �!           2606    614644 0   extredserviciosfisica extredserviciosfisica_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.extredserviciosfisica
    ADD CONSTRAINT extredserviciosfisica_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.extredserviciosfisica DROP CONSTRAINT extredserviciosfisica_pkey;
       test_ladm_col         postgres    false    1100            �!           2606    614617 :   extunidadedificacionfisica extunidadedificacionfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extunidadedificacionfisica
    ADD CONSTRAINT extunidadedificacionfisica_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col.extunidadedificacionfisica DROP CONSTRAINT extunidadedificacionfisica_pkey;
       test_ladm_col         postgres    false    1097            �!           2606    614596    fraccion fraccion_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY test_ladm_col.fraccion
    ADD CONSTRAINT fraccion_pkey PRIMARY KEY (t_id);
 G   ALTER TABLE ONLY test_ladm_col.fraccion DROP CONSTRAINT fraccion_pkey;
       test_ladm_col         postgres    false    1095            "           2606    614869    gc_barrio gc_barrio_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY test_ladm_col.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 I   ALTER TABLE ONLY test_ladm_col.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
       test_ladm_col         postgres    false    1124            "           2606    614879 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_col.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
       test_ladm_col         postgres    false    1125            #"           2606    614889 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
       test_ladm_col         postgres    false    1126            &"           2606    614899 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
       test_ladm_col         postgres    false    1127            )"           2606    614909 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_col.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
       test_ladm_col         postgres    false    1128            E#           2606    615642 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
       test_ladm_col         postgres    false    1198            -"           2606    614919 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
       test_ladm_col         postgres    false    1129            _"           2606    615054 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
       test_ladm_col         postgres    false    1143            1"           2606    614928 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
       test_ladm_col         postgres    false    1130            4"           2606    614935 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
       test_ladm_col         postgres    false    1131            8"           2606    614945    gc_direccion gc_direccion_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
       test_ladm_col         postgres    false    1132            ;"           2606    614953 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
       test_ladm_col         postgres    false    1133            >"           2606    614963    gc_manzana gc_manzana_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY test_ladm_col.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 K   ALTER TABLE ONLY test_ladm_col.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
       test_ladm_col         postgres    false    1134            A"           2606    614973    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
       test_ladm_col         postgres    false    1135            Y"           2606    615046 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
       test_ladm_col         postgres    false    1142            D"           2606    614983 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
       test_ladm_col         postgres    false    1136            G"           2606    614993 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
       test_ladm_col         postgres    false    1137            J"           2606    615003 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
       test_ladm_col         postgres    false    1138            q#           2606    615840 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
       test_ladm_col         postgres    false    1220            N"           2606    615013    gc_terreno gc_terreno_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY test_ladm_col.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 K   ALTER TABLE ONLY test_ladm_col.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
       test_ladm_col         postgres    false    1139            R"           2606    615024 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
       test_ladm_col         postgres    false    1140            k#           2606    615813 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
       test_ladm_col         postgres    false    1217            V"           2606    615036    gc_vereda gc_vereda_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY test_ladm_col.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 I   ALTER TABLE ONLY test_ladm_col.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
       test_ladm_col         postgres    false    1141            k!           2606    614531 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
       test_ladm_col         postgres    false    1089            q!           2606    614548 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
       test_ladm_col         postgres    false    1091            i!           2606    614523 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
       test_ladm_col         postgres    false    1088            o!           2606    614540 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
       test_ladm_col         postgres    false    1090            �!           2606    614623    imagen imagen_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY test_ladm_col.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (t_id);
 C   ALTER TABLE ONLY test_ladm_col.imagen DROP CONSTRAINT imagen_pkey;
       test_ladm_col         postgres    false    1098            �#           2606    616002 2   ini_emparejamientotipo ini_emparejamientotipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col.ini_emparejamientotipo
    ADD CONSTRAINT ini_emparejamientotipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col.ini_emparejamientotipo DROP CONSTRAINT ini_emparejamientotipo_pkey;
       test_ladm_col         postgres    false    1238            |"           2606    615131 (   ini_predioinsumos ini_predioinsumos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_pkey;
       test_ladm_col         postgres    false    1151            �#           2606    616056 "   lc_acuerdotipo lc_acuerdotipo_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col.lc_acuerdotipo
    ADD CONSTRAINT lc_acuerdotipo_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col.lc_acuerdotipo DROP CONSTRAINT lc_acuerdotipo_pkey;
       test_ladm_col         postgres    false    1244            �"           2606    615144 6   lc_agrupacioninteresados lc_agrupacioninteresados_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_pkey;
       test_ladm_col         postgres    false    1152            O#           2606    615687    lc_anexotipo lc_anexotipo_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.lc_anexotipo
    ADD CONSTRAINT lc_anexotipo_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.lc_anexotipo DROP CONSTRAINT lc_anexotipo_pkey;
       test_ladm_col         postgres    false    1203            �"           2606    615385 <   lc_calificacionconvencional lc_calificacionconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencional_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencional_pkey;
       test_ladm_col         postgres    false    1172            �"           2606    615394 @   lc_calificacionnoconvencional lc_calificacionnoconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvencional_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvencional_pkey;
       test_ladm_col         postgres    false    1173            ?#           2606    615615 &   lc_calificartipo lc_calificartipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col.lc_calificartipo
    ADD CONSTRAINT lc_calificartipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col.lc_calificartipo DROP CONSTRAINT lc_calificartipo_pkey;
       test_ladm_col         postgres    false    1195            �#           2606    616011 0   lc_categoriasuelotipo lc_categoriasuelotipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.lc_categoriasuelotipo
    ADD CONSTRAINT lc_categoriasuelotipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.lc_categoriasuelotipo DROP CONSTRAINT lc_categoriasuelotipo_pkey;
       test_ladm_col         postgres    false    1239            �#           2606    616137 6   lc_clasecalificaciontipo lc_clasecalificaciontipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col.lc_clasecalificaciontipo
    ADD CONSTRAINT lc_clasecalificaciontipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col.lc_clasecalificaciontipo DROP CONSTRAINT lc_clasecalificaciontipo_pkey;
       test_ladm_col         postgres    false    1253            I#           2606    615660 (   lc_clasesuelotipo lc_clasesuelotipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col.lc_clasesuelotipo
    ADD CONSTRAINT lc_clasesuelotipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col.lc_clasesuelotipo DROP CONSTRAINT lc_clasesuelotipo_pkey;
       test_ladm_col         postgres    false    1200            �#           2606    615966 2   lc_condicionprediotipo lc_condicionprediotipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col.lc_condicionprediotipo
    ADD CONSTRAINT lc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col.lc_condicionprediotipo DROP CONSTRAINT lc_condicionprediotipo_pkey;
       test_ladm_col         postgres    false    1234            �"           2606    615155 $   lc_construccion lc_construccion_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.lc_construccion
    ADD CONSTRAINT lc_construccion_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.lc_construccion DROP CONSTRAINT lc_construccion_pkey;
       test_ladm_col         postgres    false    1153            M#           2606    615678 8   lc_construccionplantatipo lc_construccionplantatipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col.lc_construccionplantatipo
    ADD CONSTRAINT lc_construccionplantatipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col.lc_construccionplantatipo DROP CONSTRAINT lc_construccionplantatipo_pkey;
       test_ladm_col         postgres    false    1202            y#           2606    615876 ,   lc_construcciontipo lc_construcciontipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col.lc_construcciontipo
    ADD CONSTRAINT lc_construcciontipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col.lc_construcciontipo DROP CONSTRAINT lc_construcciontipo_pkey;
       test_ladm_col         postgres    false    1224            �"           2606    615170 (   lc_contactovisita lc_contactovisita_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col.lc_contactovisita DROP CONSTRAINT lc_contactovisita_pkey;
       test_ladm_col         postgres    false    1154            �"           2606    615406 X   lc_datosadicionaleslevantamientocatastral lc_datosadicionaleslevantamientocatastral_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey;
       test_ladm_col         postgres    false    1174            �"           2606    615180 .   lc_datosphcondominio lc_datosphcondominio_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_pkey;
       test_ladm_col         postgres    false    1155            �"           2606    615191    lc_derecho lc_derecho_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY test_ladm_col.lc_derecho
    ADD CONSTRAINT lc_derecho_pkey PRIMARY KEY (t_id);
 K   ALTER TABLE ONLY test_ladm_col.lc_derecho DROP CONSTRAINT lc_derecho_pkey;
       test_ladm_col         postgres    false    1156            a#           2606    615768 "   lc_derechotipo lc_derechotipo_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col.lc_derechotipo
    ADD CONSTRAINT lc_derechotipo_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col.lc_derechotipo DROP CONSTRAINT lc_derechotipo_pkey;
       test_ladm_col         postgres    false    1212            �#           2606    616128 <   lc_destinacioneconomicatipo lc_destinacioneconomicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_destinacioneconomicatipo
    ADD CONSTRAINT lc_destinacioneconomicatipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col.lc_destinacioneconomicatipo DROP CONSTRAINT lc_destinacioneconomicatipo_pkey;
       test_ladm_col         postgres    false    1252            ;#           2606    615597 :   lc_dominioconstrucciontipo lc_dominioconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_dominioconstrucciontipo
    ADD CONSTRAINT lc_dominioconstrucciontipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col.lc_dominioconstrucciontipo DROP CONSTRAINT lc_dominioconstrucciontipo_pkey;
       test_ladm_col         postgres    false    1193            }#           2606    615894 8   lc_estadoconservaciontipo lc_estadoconservaciontipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col.lc_estadoconservaciontipo
    ADD CONSTRAINT lc_estadoconservaciontipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col.lc_estadoconservaciontipo DROP CONSTRAINT lc_estadoconservaciontipo_pkey;
       test_ladm_col         postgres    false    1226            �"           2606    615201 4   lc_estructuranovedadfmi lc_estructuranovedadfmi_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_pkey;
       test_ladm_col         postgres    false    1157            �"           2606    615208 H   lc_estructuranovedadnumeropredial lc_estructuranovedadnumeropredial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranovedadnumeropredial_pkey;
       test_ladm_col         postgres    false    1158            _#           2606    615759 b   lc_estructuranovedadnumeropredial_tipo_novedad lc_estructuranovedadnumeropredial_tipo_novedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadnumeropredial_tipo_novedad
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadnumeropredial_tipo_novedad DROP CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey;
       test_ladm_col         postgres    false    1211            Q#           2606    615696 8   lc_fotoidentificaciontipo lc_fotoidentificaciontipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col.lc_fotoidentificaciontipo
    ADD CONSTRAINT lc_fotoidentificaciontipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col.lc_fotoidentificaciontipo DROP CONSTRAINT lc_fotoidentificaciontipo_pkey;
       test_ladm_col         postgres    false    1204            �"           2606    615220 4   lc_fuenteadministrativa lc_fuenteadministrativa_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_pkey;
       test_ladm_col         postgres    false    1159            �#           2606    616047 <   lc_fuenteadministrativatipo lc_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_fuenteadministrativatipo
    ADD CONSTRAINT lc_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col.lc_fuenteadministrativatipo DROP CONSTRAINT lc_fuenteadministrativatipo_pkey;
       test_ladm_col         postgres    false    1243            �"           2606    615233 (   lc_fuenteespacial lc_fuenteespacial_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_pkey;
       test_ladm_col         postgres    false    1160            �"           2606    615243 .   lc_grupocalificacion lc_grupocalificacion_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_pkey;
       test_ladm_col         postgres    false    1161            �#           2606    615930 *   lc_grupoetnicotipo lc_grupoetnicotipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col.lc_grupoetnicotipo
    ADD CONSTRAINT lc_grupoetnicotipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col.lc_grupoetnicotipo DROP CONSTRAINT lc_grupoetnicotipo_pkey;
       test_ladm_col         postgres    false    1230            �"           2606    615256     lc_interesado lc_interesado_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col.lc_interesado
    ADD CONSTRAINT lc_interesado_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col.lc_interesado DROP CONSTRAINT lc_interesado_pkey;
       test_ladm_col         postgres    false    1162            �"           2606    615270 0   lc_interesadocontacto lc_interesadocontacto_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_pkey;
       test_ladm_col         postgres    false    1163            s#           2606    615849 :   lc_interesadodocumentotipo lc_interesadodocumentotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_interesadodocumentotipo
    ADD CONSTRAINT lc_interesadodocumentotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col.lc_interesadodocumentotipo DROP CONSTRAINT lc_interesadodocumentotipo_pkey;
       test_ladm_col         postgres    false    1221            U#           2606    615714 (   lc_interesadotipo lc_interesadotipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col.lc_interesadotipo
    ADD CONSTRAINT lc_interesadotipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col.lc_interesadotipo DROP CONSTRAINT lc_interesadotipo_pkey;
       test_ladm_col         postgres    false    1206            �"           2606    615281    lc_lindero lc_lindero_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY test_ladm_col.lc_lindero
    ADD CONSTRAINT lc_lindero_pkey PRIMARY KEY (t_id);
 K   ALTER TABLE ONLY test_ladm_col.lc_lindero DROP CONSTRAINT lc_lindero_pkey;
       test_ladm_col         postgres    false    1164            �"           2606    615289 0   lc_objetoconstruccion lc_objetoconstruccion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_pkey;
       test_ladm_col         postgres    false    1165            �#           2606    615921 8   lc_objetoconstrucciontipo lc_objetoconstrucciontipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col.lc_objetoconstrucciontipo
    ADD CONSTRAINT lc_objetoconstrucciontipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col.lc_objetoconstrucciontipo DROP CONSTRAINT lc_objetoconstrucciontipo_pkey;
       test_ladm_col         postgres    false    1229            �"           2606    615298 @   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmobiliario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmobiliario_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmobiliario_pkey;
       test_ladm_col         postgres    false    1166            c#           2606    615777     lc_ofertatipo lc_ofertatipo_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col.lc_ofertatipo
    ADD CONSTRAINT lc_ofertatipo_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col.lc_ofertatipo DROP CONSTRAINT lc_ofertatipo_pkey;
       test_ladm_col         postgres    false    1213            
#           2606    615448 0   lc_predio_copropiedad lc_predio_copropiedad_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_pkey;
       test_ladm_col         postgres    false    1177            #           2606    615456 <   lc_predio_ini_predioinsumos lc_predio_ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsumos_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsumos_pkey;
       test_ladm_col         postgres    false    1178            �"           2606    615310    lc_predio lc_predio_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY test_ladm_col.lc_predio
    ADD CONSTRAINT lc_predio_pkey PRIMARY KEY (t_id);
 I   ALTER TABLE ONLY test_ladm_col.lc_predio DROP CONSTRAINT lc_predio_pkey;
       test_ladm_col         postgres    false    1167            o#           2606    615831     lc_prediotipo lc_prediotipo_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col.lc_prediotipo
    ADD CONSTRAINT lc_prediotipo_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col.lc_prediotipo DROP CONSTRAINT lc_prediotipo_pkey;
       test_ladm_col         postgres    false    1219            �#           2606    615984 R   lc_procedimientocatastralregistraltipo lc_procedimientocatastralregistraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_procedimientocatastralregistraltipo
    ADD CONSTRAINT lc_procedimientocatastralregistraltipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col.lc_procedimientocatastralregistraltipo DROP CONSTRAINT lc_procedimientocatastralregistraltipo_pkey;
       test_ladm_col         postgres    false    1236            �"           2606    615322 $   lc_puntocontrol lc_puntocontrol_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_pkey;
       test_ladm_col         postgres    false    1168            w#           2606    615867 ,   lc_puntocontroltipo lc_puntocontroltipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col.lc_puntocontroltipo
    ADD CONSTRAINT lc_puntocontroltipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col.lc_puntocontroltipo DROP CONSTRAINT lc_puntocontroltipo_pkey;
       test_ladm_col         postgres    false    1223            �"           2606    615423 0   lc_puntolevantamiento lc_puntolevantamiento_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_pkey;
       test_ladm_col         postgres    false    1175            �#           2606    615948 $   lc_puntolevtipo lc_puntolevtipo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.lc_puntolevtipo
    ADD CONSTRAINT lc_puntolevtipo_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.lc_puntolevtipo DROP CONSTRAINT lc_puntolevtipo_pkey;
       test_ladm_col         postgres    false    1232            �"           2606    615341 $   lc_puntolindero lc_puntolindero_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.lc_puntolindero DROP CONSTRAINT lc_puntolindero_pkey;
       test_ladm_col         postgres    false    1169            A#           2606    615624    lc_puntotipo lc_puntotipo_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col.lc_puntotipo
    ADD CONSTRAINT lc_puntotipo_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col.lc_puntotipo DROP CONSTRAINT lc_puntotipo_pkey;
       test_ladm_col         postgres    false    1196            W#           2606    615723 0   lc_relacionprediotipo lc_relacionprediotipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.lc_relacionprediotipo
    ADD CONSTRAINT lc_relacionprediotipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.lc_relacionprediotipo DROP CONSTRAINT lc_relacionprediotipo_pkey;
       test_ladm_col         postgres    false    1207            �"           2606    615361 "   lc_restriccion lc_restriccion_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col.lc_restriccion
    ADD CONSTRAINT lc_restriccion_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col.lc_restriccion DROP CONSTRAINT lc_restriccion_pkey;
       test_ladm_col         postgres    false    1170            m#           2606    615822 *   lc_restricciontipo lc_restricciontipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col.lc_restricciontipo
    ADD CONSTRAINT lc_restricciontipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col.lc_restricciontipo DROP CONSTRAINT lc_restricciontipo_pkey;
       test_ladm_col         postgres    false    1218            3#           2606    615561 2   lc_resultadovisitatipo lc_resultadovisitatipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col.lc_resultadovisitatipo
    ADD CONSTRAINT lc_resultadovisitatipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col.lc_resultadovisitatipo DROP CONSTRAINT lc_resultadovisitatipo_pkey;
       test_ladm_col         postgres    false    1189            #           2606    615468 2   lc_servidumbretransito lc_servidumbretransito_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_pkey;
       test_ladm_col         postgres    false    1179            7#           2606    615579    lc_sexotipo lc_sexotipo_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY test_ladm_col.lc_sexotipo
    ADD CONSTRAINT lc_sexotipo_pkey PRIMARY KEY (t_id);
 M   ALTER TABLE ONLY test_ladm_col.lc_sexotipo DROP CONSTRAINT lc_sexotipo_pkey;
       test_ladm_col         postgres    false    1191            �"           2606    615375    lc_terreno lc_terreno_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY test_ladm_col.lc_terreno
    ADD CONSTRAINT lc_terreno_pkey PRIMARY KEY (t_id);
 K   ALTER TABLE ONLY test_ladm_col.lc_terreno DROP CONSTRAINT lc_terreno_pkey;
       test_ladm_col         postgres    false    1171            #           2606    615440 6   lc_tipologiaconstruccion lc_tipologiaconstruccion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_pkey;
       test_ladm_col         postgres    false    1176            u#           2606    615858 &   lc_tipologiatipo lc_tipologiatipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col.lc_tipologiatipo
    ADD CONSTRAINT lc_tipologiatipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col.lc_tipologiatipo DROP CONSTRAINT lc_tipologiatipo_pkey;
       test_ladm_col         postgres    false    1222            #           2606    615481 0   lc_unidadconstruccion lc_unidadconstruccion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_pkey;
       test_ladm_col         postgres    false    1180            Y#           2606    615732 8   lc_unidadconstrucciontipo lc_unidadconstrucciontipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col.lc_unidadconstrucciontipo
    ADD CONSTRAINT lc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col.lc_unidadconstrucciontipo DROP CONSTRAINT lc_unidadconstrucciontipo_pkey;
       test_ladm_col         postgres    false    1208            �#           2606    616110 $   lc_usouconstipo lc_usouconstipo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.lc_usouconstipo
    ADD CONSTRAINT lc_usouconstipo_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.lc_usouconstipo DROP CONSTRAINT lc_usouconstipo_pkey;
       test_ladm_col         postgres    false    1250            K#           2606    615669    lc_viatipo lc_viatipo_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY test_ladm_col.lc_viatipo
    ADD CONSTRAINT lc_viatipo_pkey PRIMARY KEY (t_id);
 K   ALTER TABLE ONLY test_ladm_col.lc_viatipo DROP CONSTRAINT lc_viatipo_pkey;
       test_ladm_col         postgres    false    1201            9#           2606    615588 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
       test_ladm_col         postgres    false    1192            �#           2606    616038 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
       test_ladm_col         postgres    false    1242            b"           2606    615062    snr_derecho snr_derecho_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY test_ladm_col.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 M   ALTER TABLE ONLY test_ladm_col.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
       test_ladm_col         postgres    false    1144            /#           2606    615543 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
       test_ladm_col         postgres    false    1187            g"           2606    615071 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
       test_ladm_col         postgres    false    1145            i"           2606    615081 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
       test_ladm_col         postgres    false    1146            l"           2606    615091 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
       test_ladm_col         postgres    false    1147            �#           2606    616074 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
       test_ladm_col         postgres    false    1246            C#           2606    615633 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
       test_ladm_col         postgres    false    1197            t"           2606    615112 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
       test_ladm_col         postgres    false    1149            w"           2606    615120 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
       test_ladm_col         postgres    false    1150            o"           2606    615101    snr_titular snr_titular_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY test_ladm_col.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 M   ALTER TABLE ONLY test_ladm_col.snr_titular DROP CONSTRAINT snr_titular_pkey;
       test_ladm_col         postgres    false    1148            �#           2606    616153 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_col.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (colowner, sqlname);
 Y   ALTER TABLE ONLY test_ladm_col.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
       test_ladm_col         postgres    false    1255    1255            ##           2606    615498 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
       test_ladm_col         postgres    false    1181            �#           2606    616145 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_col.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 [   ALTER TABLE ONLY test_ladm_col.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
       test_ladm_col         postgres    false    1254            &#           2606    615504 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
       test_ladm_col         postgres    false    1182            (#           2606    615512 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_col.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 _   ALTER TABLE ONLY test_ladm_col.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
       test_ladm_col         postgres    false    1183            -#           2606    615534 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_col.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (modelname, iliversion);
 S   ALTER TABLE ONLY test_ladm_col.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
       test_ladm_col         postgres    false    1186    1186            *#           2606    615520 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_col.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 Y   ALTER TABLE ONLY test_ladm_col.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
       test_ladm_col         postgres    false    1184            r!           1259    614555 1   cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx    INDEX     �   CREATE INDEX cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx ON test_ladm_col.cc_metodooperacion USING btree (col_transformacion_transformacion);
 L   DROP INDEX test_ladm_col.cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx;
       test_ladm_col         postgres    false    1092            u!           1259    614566 &   col_areavalor_lc_construccion_area_idx    INDEX     w   CREATE INDEX col_areavalor_lc_construccion_area_idx ON test_ladm_col.col_areavalor USING btree (lc_construccion_area);
 A   DROP INDEX test_ladm_col.col_areavalor_lc_construccion_area_idx;
       test_ladm_col         postgres    false    1093            v!           1259    614568 ,   col_areavalor_lc_servidumbretransito_rea_idx    INDEX     �   CREATE INDEX col_areavalor_lc_servidumbretransito_rea_idx ON test_ladm_col.col_areavalor USING btree (lc_servidumbretransito_area);
 G   DROP INDEX test_ladm_col.col_areavalor_lc_servidumbretransito_rea_idx;
       test_ladm_col         postgres    false    1093            w!           1259    614567 !   col_areavalor_lc_terreno_area_idx    INDEX     m   CREATE INDEX col_areavalor_lc_terreno_area_idx ON test_ladm_col.col_areavalor USING btree (lc_terreno_area);
 <   DROP INDEX test_ladm_col.col_areavalor_lc_terreno_area_idx;
       test_ladm_col         postgres    false    1093            x!           1259    614569 ,   col_areavalor_lc_unidadconstruccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_unidadconstruccion_area_idx ON test_ladm_col.col_areavalor USING btree (lc_unidadconstruccion_area);
 G   DROP INDEX test_ladm_col.col_areavalor_lc_unidadconstruccion_area_idx;
       test_ladm_col         postgres    false    1093            {!           1259    614565    col_areavalor_tipo_idx    INDEX     W   CREATE INDEX col_areavalor_tipo_idx ON test_ladm_col.col_areavalor USING btree (tipo);
 1   DROP INDEX test_ladm_col.col_areavalor_tipo_idx;
       test_ladm_col         postgres    false    1093            "           1259    614832 7   col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx ON test_ladm_col.col_baunitcomointeresado USING btree (interesado_lc_agrupacioninteresados);
 R   DROP INDEX test_ladm_col.col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col         postgres    false    1120            "           1259    614831 5   col_baunitcomointeresado_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_interesado_idx ON test_ladm_col.col_baunitcomointeresado USING btree (interesado_lc_interesado);
 P   DROP INDEX test_ladm_col.col_baunitcomointeresado_interesado_lc_interesado_idx;
       test_ladm_col         postgres    false    1120            "           1259    614833 #   col_baunitcomointeresado_unidad_idx    INDEX     q   CREATE INDEX col_baunitcomointeresado_unidad_idx ON test_ladm_col.col_baunitcomointeresado USING btree (unidad);
 >   DROP INDEX test_ladm_col.col_baunitcomointeresado_unidad_idx;
       test_ladm_col         postgres    false    1120            �!           1259    614740 $   col_baunitfuente_fuente_espacial_idx    INDEX     s   CREATE INDEX col_baunitfuente_fuente_espacial_idx ON test_ladm_col.col_baunitfuente USING btree (fuente_espacial);
 ?   DROP INDEX test_ladm_col.col_baunitfuente_fuente_espacial_idx;
       test_ladm_col         postgres    false    1110            �!           1259    614741    col_baunitfuente_unidad_idx    INDEX     a   CREATE INDEX col_baunitfuente_unidad_idx ON test_ladm_col.col_baunitfuente USING btree (unidad);
 6   DROP INDEX test_ladm_col.col_baunitfuente_unidad_idx;
       test_ladm_col         postgres    false    1110            �!           1259    614755    col_cclfuente_ccl_idx    INDEX     U   CREATE INDEX col_cclfuente_ccl_idx ON test_ladm_col.col_cclfuente USING btree (ccl);
 0   DROP INDEX test_ladm_col.col_cclfuente_ccl_idx;
       test_ladm_col         postgres    false    1112            �!           1259    614756 !   col_cclfuente_fuente_espacial_idx    INDEX     m   CREATE INDEX col_cclfuente_fuente_espacial_idx ON test_ladm_col.col_cclfuente USING btree (fuente_espacial);
 <   DROP INDEX test_ladm_col.col_cclfuente_fuente_espacial_idx;
       test_ladm_col         postgres    false    1112            �!           1259    614795     col_clfuente_fuente_espacial_idx    INDEX     k   CREATE INDEX col_clfuente_fuente_espacial_idx ON test_ladm_col.col_clfuente USING btree (fuente_espacial);
 ;   DROP INDEX test_ladm_col.col_clfuente_fuente_espacial_idx;
       test_ladm_col         postgres    false    1116            �!           1259    614774    col_masccl_ccl_mas_idx    INDEX     W   CREATE INDEX col_masccl_ccl_mas_idx ON test_ladm_col.col_masccl USING btree (ccl_mas);
 1   DROP INDEX test_ladm_col.col_masccl_ccl_mas_idx;
       test_ladm_col         postgres    false    1114            �!           1259    614778 %   col_masccl_ue_mas_lc_construccion_idx    INDEX     u   CREATE INDEX col_masccl_ue_mas_lc_construccion_idx ON test_ladm_col.col_masccl USING btree (ue_mas_lc_construccion);
 @   DROP INDEX test_ladm_col.col_masccl_ue_mas_lc_construccion_idx;
       test_ladm_col         postgres    false    1114            �!           1259    614776 )   col_masccl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_col.col_masccl USING btree (ue_mas_lc_servidumbretransito);
 D   DROP INDEX test_ladm_col.col_masccl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_col         postgres    false    1114            �!           1259    614775     col_masccl_ue_mas_lc_terreno_idx    INDEX     k   CREATE INDEX col_masccl_ue_mas_lc_terreno_idx ON test_ladm_col.col_masccl USING btree (ue_mas_lc_terreno);
 ;   DROP INDEX test_ladm_col.col_masccl_ue_mas_lc_terreno_idx;
       test_ladm_col         postgres    false    1114            �!           1259    614777 )   col_masccl_ue_mas_lc_unidadcnstrccion_idx    INDEX        CREATE INDEX col_masccl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_col.col_masccl USING btree (ue_mas_lc_unidadconstruccion);
 D   DROP INDEX test_ladm_col.col_masccl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_col         postgres    false    1114            �!           1259    614815 $   col_mascl_ue_mas_lc_construccion_idx    INDEX     s   CREATE INDEX col_mascl_ue_mas_lc_construccion_idx ON test_ladm_col.col_mascl USING btree (ue_mas_lc_construccion);
 ?   DROP INDEX test_ladm_col.col_mascl_ue_mas_lc_construccion_idx;
       test_ladm_col         postgres    false    1118            �!           1259    614813 (   col_mascl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     ~   CREATE INDEX col_mascl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_col.col_mascl USING btree (ue_mas_lc_servidumbretransito);
 C   DROP INDEX test_ladm_col.col_mascl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_col         postgres    false    1118             "           1259    614812    col_mascl_ue_mas_lc_terreno_idx    INDEX     i   CREATE INDEX col_mascl_ue_mas_lc_terreno_idx ON test_ladm_col.col_mascl USING btree (ue_mas_lc_terreno);
 :   DROP INDEX test_ladm_col.col_mascl_ue_mas_lc_terreno_idx;
       test_ladm_col         postgres    false    1118            "           1259    614814 (   col_mascl_ue_mas_lc_unidadcnstrccion_idx    INDEX     }   CREATE INDEX col_mascl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_col.col_mascl USING btree (ue_mas_lc_unidadconstruccion);
 C   DROP INDEX test_ladm_col.col_mascl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_col         postgres    false    1118            �!           1259    614763    col_menosccl_ccl_menos_idx    INDEX     _   CREATE INDEX col_menosccl_ccl_menos_idx ON test_ladm_col.col_menosccl USING btree (ccl_menos);
 5   DROP INDEX test_ladm_col.col_menosccl_ccl_menos_idx;
       test_ladm_col         postgres    false    1113            �!           1259    614767 )   col_menosccl_ue_menos_lc_construccion_idx    INDEX     }   CREATE INDEX col_menosccl_ue_menos_lc_construccion_idx ON test_ladm_col.col_menosccl USING btree (ue_menos_lc_construccion);
 D   DROP INDEX test_ladm_col.col_menosccl_ue_menos_lc_construccion_idx;
       test_ladm_col         postgres    false    1113            �!           1259    614765 +   col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_col.col_menosccl USING btree (ue_menos_lc_servidumbretransito);
 F   DROP INDEX test_ladm_col.col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_col         postgres    false    1113            �!           1259    614764 $   col_menosccl_ue_menos_lc_terreno_idx    INDEX     s   CREATE INDEX col_menosccl_ue_menos_lc_terreno_idx ON test_ladm_col.col_menosccl USING btree (ue_menos_lc_terreno);
 ?   DROP INDEX test_ladm_col.col_menosccl_ue_menos_lc_terreno_idx;
       test_ladm_col         postgres    false    1113            �!           1259    614766 +   col_menosccl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_col.col_menosccl USING btree (ue_menos_lc_unidadconstruccion);
 F   DROP INDEX test_ladm_col.col_menosccl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_col         postgres    false    1113            �!           1259    614805 (   col_menoscl_ue_menos_lc_construccion_idx    INDEX     {   CREATE INDEX col_menoscl_ue_menos_lc_construccion_idx ON test_ladm_col.col_menoscl USING btree (ue_menos_lc_construccion);
 C   DROP INDEX test_ladm_col.col_menoscl_ue_menos_lc_construccion_idx;
       test_ladm_col         postgres    false    1117            �!           1259    614803 *   col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_col.col_menoscl USING btree (ue_menos_lc_servidumbretransito);
 E   DROP INDEX test_ladm_col.col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_col         postgres    false    1117            �!           1259    614802 #   col_menoscl_ue_menos_lc_terreno_idx    INDEX     q   CREATE INDEX col_menoscl_ue_menos_lc_terreno_idx ON test_ladm_col.col_menoscl USING btree (ue_menos_lc_terreno);
 >   DROP INDEX test_ladm_col.col_menoscl_ue_menos_lc_terreno_idx;
       test_ladm_col         postgres    false    1117            �!           1259    614804 *   col_menoscl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_col.col_menoscl USING btree (ue_menos_lc_unidadconstruccion);
 E   DROP INDEX test_ladm_col.col_menoscl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_col         postgres    false    1117            "           1259    614860    col_miembros_agrupacion_idx    INDEX     a   CREATE INDEX col_miembros_agrupacion_idx ON test_ladm_col.col_miembros USING btree (agrupacion);
 6   DROP INDEX test_ladm_col.col_miembros_agrupacion_idx;
       test_ladm_col         postgres    false    1123            "           1259    614859 +   col_miembros_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_grpcnntrsdos_idx ON test_ladm_col.col_miembros USING btree (interesado_lc_agrupacioninteresados);
 F   DROP INDEX test_ladm_col.col_miembros_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col         postgres    false    1123            "           1259    614858 )   col_miembros_interesado_lc_interesado_idx    INDEX     }   CREATE INDEX col_miembros_interesado_lc_interesado_idx ON test_ladm_col.col_miembros USING btree (interesado_lc_interesado);
 D   DROP INDEX test_ladm_col.col_miembros_interesado_lc_interesado_idx;
       test_ladm_col         postgres    false    1123            �!           1259    614788    col_puntoccl_ccl_idx    INDEX     S   CREATE INDEX col_puntoccl_ccl_idx ON test_ladm_col.col_puntoccl USING btree (ccl);
 /   DROP INDEX test_ladm_col.col_puntoccl_ccl_idx;
       test_ladm_col         postgres    false    1115            �!           1259    614785 &   col_puntoccl_punto_lc_puntocontrol_idx    INDEX     w   CREATE INDEX col_puntoccl_punto_lc_puntocontrol_idx ON test_ladm_col.col_puntoccl USING btree (punto_lc_puntocontrol);
 A   DROP INDEX test_ladm_col.col_puntoccl_punto_lc_puntocontrol_idx;
       test_ladm_col         postgres    false    1115            �!           1259    614787 +   col_puntoccl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolevantaminto_idx ON test_ladm_col.col_puntoccl USING btree (punto_lc_puntolevantamiento);
 F   DROP INDEX test_ladm_col.col_puntoccl_punto_lc_puntolevantaminto_idx;
       test_ladm_col         postgres    false    1115            �!           1259    614786 &   col_puntoccl_punto_lc_puntolindero_idx    INDEX     w   CREATE INDEX col_puntoccl_punto_lc_puntolindero_idx ON test_ladm_col.col_puntoccl USING btree (punto_lc_puntolindero);
 A   DROP INDEX test_ladm_col.col_puntoccl_punto_lc_puntolindero_idx;
       test_ladm_col         postgres    false    1115            "           1259    614822 %   col_puntocl_punto_lc_puntocontrol_idx    INDEX     u   CREATE INDEX col_puntocl_punto_lc_puntocontrol_idx ON test_ladm_col.col_puntocl USING btree (punto_lc_puntocontrol);
 @   DROP INDEX test_ladm_col.col_puntocl_punto_lc_puntocontrol_idx;
       test_ladm_col         postgres    false    1119            "           1259    614824 *   col_puntocl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolevantaminto_idx ON test_ladm_col.col_puntocl USING btree (punto_lc_puntolevantamiento);
 E   DROP INDEX test_ladm_col.col_puntocl_punto_lc_puntolevantaminto_idx;
       test_ladm_col         postgres    false    1119            "           1259    614823 %   col_puntocl_punto_lc_puntolindero_idx    INDEX     u   CREATE INDEX col_puntocl_punto_lc_puntolindero_idx ON test_ladm_col.col_puntocl USING btree (punto_lc_puntolindero);
 @   DROP INDEX test_ladm_col.col_puntocl_punto_lc_puntolindero_idx;
       test_ladm_col         postgres    false    1119            �!           1259    614719 #   col_puntofuente_fuente_espacial_idx    INDEX     q   CREATE INDEX col_puntofuente_fuente_espacial_idx ON test_ladm_col.col_puntofuente USING btree (fuente_espacial);
 >   DROP INDEX test_ladm_col.col_puntofuente_fuente_espacial_idx;
       test_ladm_col         postgres    false    1108            �!           1259    614720 )   col_puntofuente_punto_lc_puntocontrol_idx    INDEX     }   CREATE INDEX col_puntofuente_punto_lc_puntocontrol_idx ON test_ladm_col.col_puntofuente USING btree (punto_lc_puntocontrol);
 D   DROP INDEX test_ladm_col.col_puntofuente_punto_lc_puntocontrol_idx;
       test_ladm_col         postgres    false    1108            �!           1259    614722 .   col_puntofuente_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolevantaminto_idx ON test_ladm_col.col_puntofuente USING btree (punto_lc_puntolevantamiento);
 I   DROP INDEX test_ladm_col.col_puntofuente_punto_lc_puntolevantaminto_idx;
       test_ladm_col         postgres    false    1108            �!           1259    614721 )   col_puntofuente_punto_lc_puntolindero_idx    INDEX     }   CREATE INDEX col_puntofuente_punto_lc_puntolindero_idx ON test_ladm_col.col_puntofuente USING btree (punto_lc_puntolindero);
 D   DROP INDEX test_ladm_col.col_puntofuente_punto_lc_puntolindero_idx;
       test_ladm_col         postgres    false    1108            �!           1259    614704 ,   col_relacionfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_relacionfuente_fuente_administrativa_idx ON test_ladm_col.col_relacionfuente USING btree (fuente_administrativa);
 G   DROP INDEX test_ladm_col.col_relacionfuente_fuente_administrativa_idx;
       test_ladm_col         postgres    false    1106            �!           1259    614748 .   col_relacionfuenteuespcial_fuente_espacial_idx    INDEX     �   CREATE INDEX col_relacionfuenteuespcial_fuente_espacial_idx ON test_ladm_col.col_relacionfuenteuespacial USING btree (fuente_espacial);
 I   DROP INDEX test_ladm_col.col_relacionfuenteuespcial_fuente_espacial_idx;
       test_ladm_col         postgres    false    1111            "           1259    614840 /   col_responsablefuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_responsablefuente_fuente_administrativa_idx ON test_ladm_col.col_responsablefuente USING btree (fuente_administrativa);
 J   DROP INDEX test_ladm_col.col_responsablefuente_fuente_administrativa_idx;
       test_ladm_col         postgres    false    1121            "           1259    614842 4   col_responsablefuente_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_grpcnntrsdos_idx ON test_ladm_col.col_responsablefuente USING btree (interesado_lc_agrupacioninteresados);
 O   DROP INDEX test_ladm_col.col_responsablefuente_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col         postgres    false    1121            "           1259    614841 2   col_responsablefuente_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_interesado_idx ON test_ladm_col.col_responsablefuente USING btree (interesado_lc_interesado);
 M   DROP INDEX test_ladm_col.col_responsablefuente_interesado_lc_interesado_idx;
       test_ladm_col         postgres    false    1121            �!           1259    614684 '   col_rrrfuente_fuente_administrativa_idx    INDEX     y   CREATE INDEX col_rrrfuente_fuente_administrativa_idx ON test_ladm_col.col_rrrfuente USING btree (fuente_administrativa);
 B   DROP INDEX test_ladm_col.col_rrrfuente_fuente_administrativa_idx;
       test_ladm_col         postgres    false    1104            �!           1259    614686     col_rrrfuente_rrr_lc_derecho_idx    INDEX     k   CREATE INDEX col_rrrfuente_rrr_lc_derecho_idx ON test_ladm_col.col_rrrfuente USING btree (rrr_lc_derecho);
 ;   DROP INDEX test_ladm_col.col_rrrfuente_rrr_lc_derecho_idx;
       test_ladm_col         postgres    false    1104            �!           1259    614685 $   col_rrrfuente_rrr_lc_restriccion_idx    INDEX     s   CREATE INDEX col_rrrfuente_rrr_lc_restriccion_idx ON test_ladm_col.col_rrrfuente USING btree (rrr_lc_restriccion);
 ?   DROP INDEX test_ladm_col.col_rrrfuente_rrr_lc_restriccion_idx;
       test_ladm_col         postgres    false    1104            "           1259    614849 '   col_topografofuente_fuente_espacial_idx    INDEX     y   CREATE INDEX col_topografofuente_fuente_espacial_idx ON test_ladm_col.col_topografofuente USING btree (fuente_espacial);
 B   DROP INDEX test_ladm_col.col_topografofuente_fuente_espacial_idx;
       test_ladm_col         postgres    false    1122            "           1259    614851 2   col_topografofuente_topografo_lc_agrpcnntrsdos_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_agrpcnntrsdos_idx ON test_ladm_col.col_topografofuente USING btree (topografo_lc_agrupacioninteresados);
 M   DROP INDEX test_ladm_col.col_topografofuente_topografo_lc_agrpcnntrsdos_idx;
       test_ladm_col         postgres    false    1122            "           1259    614850 /   col_topografofuente_topografo_lc_interesado_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_interesado_idx ON test_ladm_col.col_topografofuente USING btree (topografo_lc_interesado);
 J   DROP INDEX test_ladm_col.col_topografofuente_topografo_lc_interesado_idx;
       test_ladm_col         postgres    false    1122            �!           1259    614609 1   col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx ON test_ladm_col.col_transformacion USING btree (lc_puntocontrol_transformacion_y_resultado);
 L   DROP INDEX test_ladm_col.col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx;
       test_ladm_col         postgres    false    1096            �!           1259    614610 1   col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx ON test_ladm_col.col_transformacion USING btree (lc_puntolindero_transformacion_y_resultado);
 L   DROP INDEX test_ladm_col.col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx;
       test_ladm_col         postgres    false    1096            �!           1259    614611 1   col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx ON test_ladm_col.col_transformacion USING btree (lc_puntolevantamiento_transformacion_y_resultado);
 L   DROP INDEX test_ladm_col.col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx;
       test_ladm_col         postgres    false    1096            �!           1259    614608 0   col_transformacion_localizacion_transformada_idx    INDEX     �   CREATE INDEX col_transformacion_localizacion_transformada_idx ON test_ladm_col.col_transformacion USING gist (localizacion_transformada);
 K   DROP INDEX test_ladm_col.col_transformacion_localizacion_transformada_idx;
       test_ladm_col         postgres    false    1096            �!           1259    614697    col_uebaunit_baunit_idx    INDEX     Y   CREATE INDEX col_uebaunit_baunit_idx ON test_ladm_col.col_uebaunit USING btree (baunit);
 2   DROP INDEX test_ladm_col.col_uebaunit_baunit_idx;
       test_ladm_col         postgres    false    1105            �!           1259    614696 #   col_uebaunit_ue_lc_construccion_idx    INDEX     q   CREATE INDEX col_uebaunit_ue_lc_construccion_idx ON test_ladm_col.col_uebaunit USING btree (ue_lc_construccion);
 >   DROP INDEX test_ladm_col.col_uebaunit_ue_lc_construccion_idx;
       test_ladm_col         postgres    false    1105            �!           1259    614694 *   col_uebaunit_ue_lc_servidumbretransito_idx    INDEX        CREATE INDEX col_uebaunit_ue_lc_servidumbretransito_idx ON test_ladm_col.col_uebaunit USING btree (ue_lc_servidumbretransito);
 E   DROP INDEX test_ladm_col.col_uebaunit_ue_lc_servidumbretransito_idx;
       test_ladm_col         postgres    false    1105            �!           1259    614693    col_uebaunit_ue_lc_terreno_idx    INDEX     g   CREATE INDEX col_uebaunit_ue_lc_terreno_idx ON test_ladm_col.col_uebaunit USING btree (ue_lc_terreno);
 9   DROP INDEX test_ladm_col.col_uebaunit_ue_lc_terreno_idx;
       test_ladm_col         postgres    false    1105            �!           1259    614695 )   col_uebaunit_ue_lc_unidadconstruccion_idx    INDEX     }   CREATE INDEX col_uebaunit_ue_lc_unidadconstruccion_idx ON test_ladm_col.col_uebaunit USING btree (ue_lc_unidadconstruccion);
 D   DROP INDEX test_ladm_col.col_uebaunit_ue_lc_unidadconstruccion_idx;
       test_ladm_col         postgres    false    1105            �!           1259    614733     col_uefuente_fuente_espacial_idx    INDEX     k   CREATE INDEX col_uefuente_fuente_espacial_idx ON test_ladm_col.col_uefuente USING btree (fuente_espacial);
 ;   DROP INDEX test_ladm_col.col_uefuente_fuente_espacial_idx;
       test_ladm_col         postgres    false    1109            �!           1259    614732 #   col_uefuente_ue_lc_construccion_idx    INDEX     q   CREATE INDEX col_uefuente_ue_lc_construccion_idx ON test_ladm_col.col_uefuente USING btree (ue_lc_construccion);
 >   DROP INDEX test_ladm_col.col_uefuente_ue_lc_construccion_idx;
       test_ladm_col         postgres    false    1109            �!           1259    614730 *   col_uefuente_ue_lc_servidumbretransito_idx    INDEX        CREATE INDEX col_uefuente_ue_lc_servidumbretransito_idx ON test_ladm_col.col_uefuente USING btree (ue_lc_servidumbretransito);
 E   DROP INDEX test_ladm_col.col_uefuente_ue_lc_servidumbretransito_idx;
       test_ladm_col         postgres    false    1109            �!           1259    614729    col_uefuente_ue_lc_terreno_idx    INDEX     g   CREATE INDEX col_uefuente_ue_lc_terreno_idx ON test_ladm_col.col_uefuente USING btree (ue_lc_terreno);
 9   DROP INDEX test_ladm_col.col_uefuente_ue_lc_terreno_idx;
       test_ladm_col         postgres    false    1109            �!           1259    614731 )   col_uefuente_ue_lc_unidadconstruccion_idx    INDEX     }   CREATE INDEX col_uefuente_ue_lc_unidadconstruccion_idx ON test_ladm_col.col_uefuente USING btree (ue_lc_unidadconstruccion);
 D   DROP INDEX test_ladm_col.col_uefuente_ue_lc_unidadconstruccion_idx;
       test_ladm_col         postgres    false    1109            �!           1259    614677 '   col_ueuegrupo_parte_lc_construccion_idx    INDEX     y   CREATE INDEX col_ueuegrupo_parte_lc_construccion_idx ON test_ladm_col.col_ueuegrupo USING btree (parte_lc_construccion);
 B   DROP INDEX test_ladm_col.col_ueuegrupo_parte_lc_construccion_idx;
       test_ladm_col         postgres    false    1103            �!           1259    614675 ,   col_ueuegrupo_parte_lc_servidumbrtrnsito_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_servidumbrtrnsito_idx ON test_ladm_col.col_ueuegrupo USING btree (parte_lc_servidumbretransito);
 G   DROP INDEX test_ladm_col.col_ueuegrupo_parte_lc_servidumbrtrnsito_idx;
       test_ladm_col         postgres    false    1103            �!           1259    614674 "   col_ueuegrupo_parte_lc_terreno_idx    INDEX     o   CREATE INDEX col_ueuegrupo_parte_lc_terreno_idx ON test_ladm_col.col_ueuegrupo USING btree (parte_lc_terreno);
 =   DROP INDEX test_ladm_col.col_ueuegrupo_parte_lc_terreno_idx;
       test_ladm_col         postgres    false    1103            �!           1259    614676 ,   col_ueuegrupo_parte_lc_unidadconstrccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_unidadconstrccion_idx ON test_ladm_col.col_ueuegrupo USING btree (parte_lc_unidadconstruccion);
 G   DROP INDEX test_ladm_col.col_ueuegrupo_parte_lc_unidadconstrccion_idx;
       test_ladm_col         postgres    false    1103            �!           1259    614711 *   col_unidadfuente_fuente_administrativa_idx    INDEX        CREATE INDEX col_unidadfuente_fuente_administrativa_idx ON test_ladm_col.col_unidadfuente USING btree (fuente_administrativa);
 E   DROP INDEX test_ladm_col.col_unidadfuente_fuente_administrativa_idx;
       test_ladm_col         postgres    false    1107            �!           1259    614712    col_unidadfuente_unidad_idx    INDEX     a   CREATE INDEX col_unidadfuente_unidad_idx ON test_ladm_col.col_unidadfuente USING btree (unidad);
 6   DROP INDEX test_ladm_col.col_unidadfuente_unidad_idx;
       test_ladm_col         postgres    false    1107            �!           1259    614664 ,   col_volumenvalor_lc_construccion_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_construccion_volumen_idx ON test_ladm_col.col_volumenvalor USING btree (lc_construccion_volumen);
 G   DROP INDEX test_ladm_col.col_volumenvalor_lc_construccion_volumen_idx;
       test_ladm_col         postgres    false    1102            �!           1259    614666 /   col_volumenvalor_lc_servidumbretranst_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_servidumbretranst_vlmen_idx ON test_ladm_col.col_volumenvalor USING btree (lc_servidumbretransito_volumen);
 J   DROP INDEX test_ladm_col.col_volumenvalor_lc_servidumbretranst_vlmen_idx;
       test_ladm_col         postgres    false    1102            �!           1259    614665 '   col_volumenvalor_lc_terreno_volumen_idx    INDEX     y   CREATE INDEX col_volumenvalor_lc_terreno_volumen_idx ON test_ladm_col.col_volumenvalor USING btree (lc_terreno_volumen);
 B   DROP INDEX test_ladm_col.col_volumenvalor_lc_terreno_volumen_idx;
       test_ladm_col         postgres    false    1102            �!           1259    614667 /   col_volumenvalor_lc_unidadconstruccin_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_unidadconstruccin_vlmen_idx ON test_ladm_col.col_volumenvalor USING btree (lc_unidadconstruccion_volumen);
 J   DROP INDEX test_ladm_col.col_volumenvalor_lc_unidadconstruccin_vlmen_idx;
       test_ladm_col         postgres    false    1102            �!           1259    614663    col_volumenvalor_tipo_idx    INDEX     ]   CREATE INDEX col_volumenvalor_tipo_idx ON test_ladm_col.col_volumenvalor USING btree (tipo);
 4   DROP INDEX test_ladm_col.col_volumenvalor_tipo_idx;
       test_ladm_col         postgres    false    1102            �!           1259    614656 )   extarchivo_lc_fuenteespacl_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_fuenteespacl_xt_rchv_id_idx ON test_ladm_col.extarchivo USING btree (lc_fuenteespacial_ext_archivo_id);
 D   DROP INDEX test_ladm_col.extarchivo_lc_fuenteespacl_xt_rchv_id_idx;
       test_ladm_col         postgres    false    1101            �!           1259    614655 )   extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx ON test_ladm_col.extarchivo USING btree (lc_fuenteadministrtiva_ext_archivo_id);
 D   DROP INDEX test_ladm_col.extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx;
       test_ladm_col         postgres    false    1101            �!           1259    614654 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_ladm_col.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 D   DROP INDEX test_ladm_col.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
       test_ladm_col         postgres    false    1101            |!           1259    614581 $   extdireccion_clase_via_principal_idx    INDEX     s   CREATE INDEX extdireccion_clase_via_principal_idx ON test_ladm_col.extdireccion USING btree (clase_via_principal);
 ?   DROP INDEX test_ladm_col.extdireccion_clase_via_principal_idx;
       test_ladm_col         postgres    false    1094            }!           1259    614585 +   extdireccion_extinteresado_ext_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extinteresado_ext_drccn_id_idx ON test_ladm_col.extdireccion USING btree (extinteresado_ext_direccion_id);
 F   DROP INDEX test_ladm_col.extdireccion_extinteresado_ext_drccn_id_idx;
       test_ladm_col         postgres    false    1094            ~!           1259    614584 +   extdireccion_extndddfccnfsc_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extndddfccnfsc_xt_drccn_id_idx ON test_ladm_col.extdireccion USING btree (extunidadedificcnfsica_ext_direccion_id);
 F   DROP INDEX test_ladm_col.extdireccion_extndddfccnfsc_xt_drccn_id_idx;
       test_ladm_col         postgres    false    1094            !           1259    614586 +   extdireccion_lc_construccin_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_construccin_xt_drccn_id_idx ON test_ladm_col.extdireccion USING btree (lc_construccion_ext_direccion_id);
 F   DROP INDEX test_ladm_col.extdireccion_lc_construccin_xt_drccn_id_idx;
       test_ladm_col         postgres    false    1094            �!           1259    614590 +   extdireccion_lc_nddcnstrccn_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_nddcnstrccn_xt_drccn_id_idx ON test_ladm_col.extdireccion USING btree (lc_unidadconstruccion_ext_direccion_id);
 F   DROP INDEX test_ladm_col.extdireccion_lc_nddcnstrccn_xt_drccn_id_idx;
       test_ladm_col         postgres    false    1094            �!           1259    614587 $   extdireccion_lc_predio_direccion_idx    INDEX     s   CREATE INDEX extdireccion_lc_predio_direccion_idx ON test_ladm_col.extdireccion USING btree (lc_predio_direccion);
 ?   DROP INDEX test_ladm_col.extdireccion_lc_predio_direccion_idx;
       test_ladm_col         postgres    false    1094            �!           1259    614589 +   extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx ON test_ladm_col.extdireccion USING btree (lc_servidumbretransito_ext_direccion_id);
 F   DROP INDEX test_ladm_col.extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx;
       test_ladm_col         postgres    false    1094            �!           1259    614588 +   extdireccion_lc_terreno_ext_direccin_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_terreno_ext_direccin_id_idx ON test_ladm_col.extdireccion USING btree (lc_terreno_ext_direccion_id);
 F   DROP INDEX test_ladm_col.extdireccion_lc_terreno_ext_direccin_id_idx;
       test_ladm_col         postgres    false    1094            �!           1259    614580    extdireccion_localizacion_idx    INDEX     d   CREATE INDEX extdireccion_localizacion_idx ON test_ladm_col.extdireccion USING gist (localizacion);
 8   DROP INDEX test_ladm_col.extdireccion_localizacion_idx;
       test_ladm_col         postgres    false    1094            �!           1259    614582    extdireccion_sector_ciudad_idx    INDEX     g   CREATE INDEX extdireccion_sector_ciudad_idx ON test_ladm_col.extdireccion USING btree (sector_ciudad);
 9   DROP INDEX test_ladm_col.extdireccion_sector_ciudad_idx;
       test_ladm_col         postgres    false    1094            �!           1259    614583    extdireccion_sector_predio_idx    INDEX     g   CREATE INDEX extdireccion_sector_predio_idx ON test_ladm_col.extdireccion USING btree (sector_predio);
 9   DROP INDEX test_ladm_col.extdireccion_sector_predio_idx;
       test_ladm_col         postgres    false    1094            �!           1259    614579    extdireccion_tipo_direccion_idx    INDEX     i   CREATE INDEX extdireccion_tipo_direccion_idx ON test_ladm_col.extdireccion USING btree (tipo_direccion);
 :   DROP INDEX test_ladm_col.extdireccion_tipo_direccion_idx;
       test_ladm_col         postgres    false    1094            �!           1259    614636 ,   extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx    INDEX     �   CREATE INDEX extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx ON test_ladm_col.extinteresado USING btree (extredserviciosfisica_ext_interesado_administrador_id);
 G   DROP INDEX test_ladm_col.extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx;
       test_ladm_col         postgres    false    1099            �!           1259    614637 ,   extinteresado_lc_agrupacionntrsds_xt_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_agrupacionntrsds_xt_pid_idx ON test_ladm_col.extinteresado USING btree (lc_agrupacionintersdos_ext_pid);
 G   DROP INDEX test_ladm_col.extinteresado_lc_agrupacionntrsds_xt_pid_idx;
       test_ladm_col         postgres    false    1099            �!           1259    614638 '   extinteresado_lc_interesado_ext_pid_idx    INDEX     y   CREATE INDEX extinteresado_lc_interesado_ext_pid_idx ON test_ladm_col.extinteresado USING btree (lc_interesado_ext_pid);
 B   DROP INDEX test_ladm_col.extinteresado_lc_interesado_ext_pid_idx;
       test_ladm_col         postgres    false    1099            �!           1259    614597 '   fraccion_col_miembros_participacion_idx    INDEX     y   CREATE INDEX fraccion_col_miembros_participacion_idx ON test_ladm_col.fraccion USING btree (col_miembros_participacion);
 B   DROP INDEX test_ladm_col.fraccion_col_miembros_participacion_idx;
       test_ladm_col         postgres    false    1095            �!           1259    614598 '   fraccion_lc_predio_copropidd_cfcnte_idx    INDEX     �   CREATE INDEX fraccion_lc_predio_copropidd_cfcnte_idx ON test_ladm_col.fraccion USING btree (lc_predio_copropiedad_coeficiente);
 B   DROP INDEX test_ladm_col.fraccion_lc_predio_copropidd_cfcnte_idx;
       test_ladm_col         postgres    false    1095            "           1259    614870    gc_barrio_geometria_idx    INDEX     X   CREATE INDEX gc_barrio_geometria_idx ON test_ladm_col.gc_barrio USING gist (geometria);
 2   DROP INDEX test_ladm_col.gc_barrio_geometria_idx;
       test_ladm_col         postgres    false    1124             "           1259    614880 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_ladm_col.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 O   DROP INDEX test_ladm_col.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
       test_ladm_col         postgres    false    1125            !"           1259    614890 '   gc_comisionesconstruccion_geometria_idx    INDEX     x   CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_ladm_col.gc_comisionesconstruccion USING gist (geometria);
 B   DROP INDEX test_ladm_col.gc_comisionesconstruccion_geometria_idx;
       test_ladm_col         postgres    false    1126            '"           1259    614910 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX        CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_ladm_col.gc_comisionesunidadconstruccion USING gist (geometria);
 C   DROP INDEX test_ladm_col.gc_comisionesnddcnstrccion_geometria_idx;
       test_ladm_col         postgres    false    1128            $"           1259    614900 "   gc_comisionesterreno_geometria_idx    INDEX     n   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_ladm_col.gc_comisionesterreno USING gist (geometria);
 =   DROP INDEX test_ladm_col.gc_comisionesterreno_geometria_idx;
       test_ladm_col         postgres    false    1127            *"           1259    614922    gc_construccion_gc_predio_idx    INDEX     e   CREATE INDEX gc_construccion_gc_predio_idx ON test_ladm_col.gc_construccion USING btree (gc_predio);
 8   DROP INDEX test_ladm_col.gc_construccion_gc_predio_idx;
       test_ladm_col         postgres    false    1129            +"           1259    614921    gc_construccion_geometria_idx    INDEX     d   CREATE INDEX gc_construccion_geometria_idx ON test_ladm_col.gc_construccion USING gist (geometria);
 8   DROP INDEX test_ladm_col.gc_construccion_geometria_idx;
       test_ladm_col         postgres    false    1129            ."           1259    614920 %   gc_construccion_tipo_construccion_idx    INDEX     u   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_ladm_col.gc_construccion USING btree (tipo_construccion);
 @   DROP INDEX test_ladm_col.gc_construccion_tipo_construccion_idx;
       test_ladm_col         postgres    false    1129            ["           1259    615055    gc_copropiedad_gc_matriz_idx    INDEX     c   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_ladm_col.gc_copropiedad USING btree (gc_matriz);
 7   DROP INDEX test_ladm_col.gc_copropiedad_gc_matriz_idx;
       test_ladm_col         postgres    false    1143            \"           1259    615056    gc_copropiedad_gc_unidad_idx    INDEX     c   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_ladm_col.gc_copropiedad USING btree (gc_unidad);
 7   DROP INDEX test_ladm_col.gc_copropiedad_gc_unidad_idx;
       test_ladm_col         postgres    false    1143            ]"           1259    616798    gc_copropiedad_gc_unidad_key    INDEX     j   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_ladm_col.gc_copropiedad USING btree (gc_unidad);
 7   DROP INDEX test_ladm_col.gc_copropiedad_gc_unidad_key;
       test_ladm_col         postgres    false    1143            /"           1259    614929 "   gc_datosphcondominio_gc_predio_idx    INDEX     o   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_ladm_col.gc_datosphcondominio USING btree (gc_predio);
 =   DROP INDEX test_ladm_col.gc_datosphcondominio_gc_predio_idx;
       test_ladm_col         postgres    false    1130            2"           1259    614936 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     {   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_ladm_col.gc_datostorreph USING btree (gc_datosphcondominio);
 C   DROP INDEX test_ladm_col.gc_datostorreph_gc_datosphcondominio_idx;
       test_ladm_col         postgres    false    1131            5"           1259    614947 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_ladm_col.gc_direccion USING btree (gc_prediocatastro_direcciones);
 F   DROP INDEX test_ladm_col.gc_direccion_gc_prediocatastro_dirccnes_idx;
       test_ladm_col         postgres    false    1132            6"           1259    614946 %   gc_direccion_geometria_referencia_idx    INDEX     t   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_ladm_col.gc_direccion USING gist (geometria_referencia);
 @   DROP INDEX test_ladm_col.gc_direccion_geometria_referencia_idx;
       test_ladm_col         postgres    false    1132            9"           1259    614954 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_ladm_col.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 I   DROP INDEX test_ladm_col.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
       test_ladm_col         postgres    false    1133            <"           1259    614964    gc_manzana_geometria_idx    INDEX     Z   CREATE INDEX gc_manzana_geometria_idx ON test_ladm_col.gc_manzana USING gist (geometria);
 3   DROP INDEX test_ladm_col.gc_manzana_geometria_idx;
       test_ladm_col         postgres    false    1134            ?"           1259    614974    gc_perimetro_geometria_idx    INDEX     ^   CREATE INDEX gc_perimetro_geometria_idx ON test_ladm_col.gc_perimetro USING gist (geometria);
 5   DROP INDEX test_ladm_col.gc_perimetro_geometria_idx;
       test_ladm_col         postgres    false    1135            W"           1259    615047 &   gc_prediocatastro_condicion_predio_idx    INDEX     w   CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_ladm_col.gc_prediocatastro USING btree (condicion_predio);
 A   DROP INDEX test_ladm_col.gc_prediocatastro_condicion_predio_idx;
       test_ladm_col         postgres    false    1142            Z"           1259    615048 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_ladm_col.gc_prediocatastro USING btree (sistema_procedencia_datos);
 J   DROP INDEX test_ladm_col.gc_prediocatastro_sistema_procedencia_datos_idx;
       test_ladm_col         postgres    false    1142            B"           1259    614984 %   gc_propietario_gc_predio_catastro_idx    INDEX     u   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_ladm_col.gc_propietario USING btree (gc_predio_catastro);
 @   DROP INDEX test_ladm_col.gc_propietario_gc_predio_catastro_idx;
       test_ladm_col         postgres    false    1136            E"           1259    614994    gc_sectorrural_geometria_idx    INDEX     b   CREATE INDEX gc_sectorrural_geometria_idx ON test_ladm_col.gc_sectorrural USING gist (geometria);
 7   DROP INDEX test_ladm_col.gc_sectorrural_geometria_idx;
       test_ladm_col         postgres    false    1137            H"           1259    615004    gc_sectorurbano_geometria_idx    INDEX     d   CREATE INDEX gc_sectorurbano_geometria_idx ON test_ladm_col.gc_sectorurbano USING gist (geometria);
 8   DROP INDEX test_ladm_col.gc_sectorurbano_geometria_idx;
       test_ladm_col         postgres    false    1138            K"           1259    615015    gc_terreno_gc_predio_idx    INDEX     [   CREATE INDEX gc_terreno_gc_predio_idx ON test_ladm_col.gc_terreno USING btree (gc_predio);
 3   DROP INDEX test_ladm_col.gc_terreno_gc_predio_idx;
       test_ladm_col         postgres    false    1139            L"           1259    615014    gc_terreno_geometria_idx    INDEX     Z   CREATE INDEX gc_terreno_geometria_idx ON test_ladm_col.gc_terreno USING gist (geometria);
 3   DROP INDEX test_ladm_col.gc_terreno_geometria_idx;
       test_ladm_col         postgres    false    1139            O"           1259    615027 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     }   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_ladm_col.gc_unidadconstruccion USING btree (gc_construccion);
 D   DROP INDEX test_ladm_col.gc_unidadconstruccion_gc_construccion_idx;
       test_ladm_col         postgres    false    1140            P"           1259    615026 #   gc_unidadconstruccion_geometria_idx    INDEX     p   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_ladm_col.gc_unidadconstruccion USING gist (geometria);
 >   DROP INDEX test_ladm_col.gc_unidadconstruccion_geometria_idx;
       test_ladm_col         postgres    false    1140            S"           1259    615025 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_ladm_col.gc_unidadconstruccion USING btree (tipo_construccion);
 F   DROP INDEX test_ladm_col.gc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_col         postgres    false    1140            T"           1259    615037    gc_vereda_geometria_idx    INDEX     X   CREATE INDEX gc_vereda_geometria_idx ON test_ladm_col.gc_vereda USING gist (geometria);
 2   DROP INDEX test_ladm_col.gc_vereda_geometria_idx;
       test_ladm_col         postgres    false    1141            f!           1259    614524     gm_surface2dlistvalue_avalue_idx    INDEX     j   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_ladm_col.gm_surface2dlistvalue USING gist (avalue);
 ;   DROP INDEX test_ladm_col.gm_surface2dlistvalue_avalue_idx;
       test_ladm_col         postgres    false    1088            g!           1259    614525 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_ladm_col.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 O   DROP INDEX test_ladm_col.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
       test_ladm_col         postgres    false    1088            l!           1259    614541     gm_surface3dlistvalue_avalue_idx    INDEX     j   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_ladm_col.gm_surface3dlistvalue USING gist (avalue);
 ;   DROP INDEX test_ladm_col.gm_surface3dlistvalue_avalue_idx;
       test_ladm_col         postgres    false    1090            m!           1259    614542 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_ladm_col.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 O   DROP INDEX test_ladm_col.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
       test_ladm_col         postgres    false    1090            �!           1259    614626    imagen_extinteresado_firma_idx    INDEX     g   CREATE INDEX imagen_extinteresado_firma_idx ON test_ladm_col.imagen USING btree (extinteresado_firma);
 9   DROP INDEX test_ladm_col.imagen_extinteresado_firma_idx;
       test_ladm_col         postgres    false    1098            �!           1259    614625 #   imagen_extinteresado_fotografia_idx    INDEX     q   CREATE INDEX imagen_extinteresado_fotografia_idx ON test_ladm_col.imagen USING btree (extinteresado_fotografia);
 >   DROP INDEX test_ladm_col.imagen_extinteresado_fotografia_idx;
       test_ladm_col         postgres    false    1098            �!           1259    614624 %   imagen_extinteresado_huell_dctlar_idx    INDEX     x   CREATE INDEX imagen_extinteresado_huell_dctlar_idx ON test_ladm_col.imagen USING btree (extinteresado_huella_dactilar);
 @   DROP INDEX test_ladm_col.imagen_extinteresado_huell_dctlar_idx;
       test_ladm_col         postgres    false    1098            z"           1259    615133 (   ini_predioinsumos_gc_predio_catastro_idx    INDEX     {   CREATE INDEX ini_predioinsumos_gc_predio_catastro_idx ON test_ladm_col.ini_predioinsumos USING btree (gc_predio_catastro);
 C   DROP INDEX test_ladm_col.ini_predioinsumos_gc_predio_catastro_idx;
       test_ladm_col         postgres    false    1151            }"           1259    615134 )   ini_predioinsumos_snr_predio_juridico_idx    INDEX     }   CREATE INDEX ini_predioinsumos_snr_predio_juridico_idx ON test_ladm_col.ini_predioinsumos USING btree (snr_predio_juridico);
 D   DROP INDEX test_ladm_col.ini_predioinsumos_snr_predio_juridico_idx;
       test_ladm_col         postgres    false    1151            ~"           1259    615132 )   ini_predioinsumos_tipo_emparejamiento_idx    INDEX     }   CREATE INDEX ini_predioinsumos_tipo_emparejamiento_idx ON test_ladm_col.ini_predioinsumos USING btree (tipo_emparejamiento);
 D   DROP INDEX test_ladm_col.ini_predioinsumos_tipo_emparejamiento_idx;
       test_ladm_col         postgres    false    1151            �"           1259    615145 !   lc_agrupacioninteresados_tipo_idx    INDEX     m   CREATE INDEX lc_agrupacioninteresados_tipo_idx ON test_ladm_col.lc_agrupacioninteresados USING btree (tipo);
 <   DROP INDEX test_ladm_col.lc_agrupacioninteresados_tipo_idx;
       test_ladm_col         postgres    false    1152            �"           1259    615387 5   lc_calificacionconvencinal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_lc_unidad_construccion_idx ON test_ladm_col.lc_calificacionconvencional USING btree (lc_unidad_construccion);
 P   DROP INDEX test_ladm_col.lc_calificacionconvencinal_lc_unidad_construccion_idx;
       test_ladm_col         postgres    false    1172            �"           1259    615386 -   lc_calificacionconvencinal_tipo_calificar_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_tipo_calificar_idx ON test_ladm_col.lc_calificacionconvencional USING btree (tipo_calificar);
 H   DROP INDEX test_ladm_col.lc_calificacionconvencinal_tipo_calificar_idx;
       test_ladm_col         postgres    false    1172            �"           1259    615396 5   lc_calificacionnoconvncnal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_lc_unidad_construccion_idx ON test_ladm_col.lc_calificacionnoconvencional USING btree (lc_unidad_construccion);
 P   DROP INDEX test_ladm_col.lc_calificacionnoconvncnal_lc_unidad_construccion_idx;
       test_ladm_col         postgres    false    1173            �"           1259    615395 )   lc_calificacionnoconvncnal_tipo_anexo_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_tipo_anexo_idx ON test_ladm_col.lc_calificacionnoconvencional USING btree (tipo_anexo);
 D   DROP INDEX test_ladm_col.lc_calificacionnoconvncnal_tipo_anexo_idx;
       test_ladm_col         postgres    false    1173            �"           1259    615158    lc_construccion_dimension_idx    INDEX     e   CREATE INDEX lc_construccion_dimension_idx ON test_ladm_col.lc_construccion USING btree (dimension);
 8   DROP INDEX test_ladm_col.lc_construccion_dimension_idx;
       test_ladm_col         postgres    false    1153            �"           1259    615160    lc_construccion_geometria_idx    INDEX     d   CREATE INDEX lc_construccion_geometria_idx ON test_ladm_col.lc_construccion USING gist (geometria);
 8   DROP INDEX test_ladm_col.lc_construccion_geometria_idx;
       test_ladm_col         postgres    false    1153            �"           1259    615159 '   lc_construccion_relacion_superficie_idx    INDEX     y   CREATE INDEX lc_construccion_relacion_superficie_idx ON test_ladm_col.lc_construccion USING btree (relacion_superficie);
 B   DROP INDEX test_ladm_col.lc_construccion_relacion_superficie_idx;
       test_ladm_col         postgres    false    1153            �"           1259    615156 %   lc_construccion_tipo_construccion_idx    INDEX     u   CREATE INDEX lc_construccion_tipo_construccion_idx ON test_ladm_col.lc_construccion USING btree (tipo_construccion);
 @   DROP INDEX test_ladm_col.lc_construccion_tipo_construccion_idx;
       test_ladm_col         postgres    false    1153            �"           1259    615157     lc_construccion_tipo_dominio_idx    INDEX     k   CREATE INDEX lc_construccion_tipo_dominio_idx ON test_ladm_col.lc_construccion USING btree (tipo_dominio);
 ;   DROP INDEX test_ladm_col.lc_construccion_tipo_dominio_idx;
       test_ladm_col         postgres    false    1153            �"           1259    615173 *   lc_contactovisita_lc_datos_adicionales_idx    INDEX        CREATE INDEX lc_contactovisita_lc_datos_adicionales_idx ON test_ladm_col.lc_contactovisita USING btree (lc_datos_adicionales);
 E   DROP INDEX test_ladm_col.lc_contactovisita_lc_datos_adicionales_idx;
       test_ladm_col         postgres    false    1154            �"           1259    615172 )   lc_contactovisita_relacion_con_predio_idx    INDEX     }   CREATE INDEX lc_contactovisita_relacion_con_predio_idx ON test_ladm_col.lc_contactovisita USING btree (relacion_con_predio);
 D   DROP INDEX test_ladm_col.lc_contactovisita_relacion_con_predio_idx;
       test_ladm_col         postgres    false    1154            �"           1259    615171 0   lc_contactovisita_tipo_documento_quien_tndio_idx    INDEX     �   CREATE INDEX lc_contactovisita_tipo_documento_quien_tndio_idx ON test_ladm_col.lc_contactovisita USING btree (tipo_documento_quien_atendio);
 K   DROP INDEX test_ladm_col.lc_contactovisita_tipo_documento_quien_tndio_idx;
       test_ladm_col         postgres    false    1154            �"           1259    615181 "   lc_datosphcondominio_lc_predio_idx    INDEX     o   CREATE INDEX lc_datosphcondominio_lc_predio_idx ON test_ladm_col.lc_datosphcondominio USING btree (lc_predio);
 =   DROP INDEX test_ladm_col.lc_datosphcondominio_lc_predio_idx;
       test_ladm_col         postgres    false    1155            �"           1259    615410 .   lc_datsdcnlslvntmntctstral_categoria_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_categoria_suelo_idx ON test_ladm_col.lc_datosadicionaleslevantamientocatastral USING btree (categoria_suelo);
 I   DROP INDEX test_ladm_col.lc_datsdcnlslvntmntctstral_categoria_suelo_idx;
       test_ladm_col         postgres    false    1174            �"           1259    615409 *   lc_datsdcnlslvntmntctstral_clase_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_clase_suelo_idx ON test_ladm_col.lc_datosadicionaleslevantamientocatastral USING btree (clase_suelo);
 E   DROP INDEX test_ladm_col.lc_datsdcnlslvntmntctstral_clase_suelo_idx;
       test_ladm_col         postgres    false    1174            �"           1259    615408 4   lc_datsdcnlslvntmntctstral_destinacion_economica_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_destinacion_economica_idx ON test_ladm_col.lc_datosadicionaleslevantamientocatastral USING btree (destinacion_economica);
 O   DROP INDEX test_ladm_col.lc_datsdcnlslvntmntctstral_destinacion_economica_idx;
       test_ladm_col         postgres    false    1174            �"           1259    615413 (   lc_datsdcnlslvntmntctstral_lc_predio_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_lc_predio_idx ON test_ladm_col.lc_datosadicionaleslevantamientocatastral USING btree (lc_predio);
 C   DROP INDEX test_ladm_col.lc_datsdcnlslvntmntctstral_lc_predio_idx;
       test_ladm_col         postgres    false    1174            �"           1259    615407 9   lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx ON test_ladm_col.lc_datosadicionaleslevantamientocatastral USING btree (procedimiento_catastral_registral);
 T   DROP INDEX test_ladm_col.lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx;
       test_ladm_col         postgres    false    1174            �"           1259    615412 /   lc_datsdcnlslvntmntctstral_resultado_visita_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_resultado_visita_idx ON test_ladm_col.lc_datosadicionaleslevantamientocatastral USING btree (resultado_visita);
 J   DROP INDEX test_ladm_col.lc_datsdcnlslvntmntctstral_resultado_visita_idx;
       test_ladm_col         postgres    false    1174            �"           1259    615411 9   lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx ON test_ladm_col.lc_datosadicionaleslevantamientocatastral USING btree (tipo_documento_reconocedor);
 T   DROP INDEX test_ladm_col.lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx;
       test_ladm_col         postgres    false    1174            �"           1259    615194 )   lc_derecho_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_grpcnntrsdos_idx ON test_ladm_col.lc_derecho USING btree (interesado_lc_agrupacioninteresados);
 D   DROP INDEX test_ladm_col.lc_derecho_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col         postgres    false    1156            �"           1259    615193 '   lc_derecho_interesado_lc_interesado_idx    INDEX     y   CREATE INDEX lc_derecho_interesado_lc_interesado_idx ON test_ladm_col.lc_derecho USING btree (interesado_lc_interesado);
 B   DROP INDEX test_ladm_col.lc_derecho_interesado_lc_interesado_idx;
       test_ladm_col         postgres    false    1156            �"           1259    615192    lc_derecho_tipo_idx    INDEX     Q   CREATE INDEX lc_derecho_tipo_idx ON test_ladm_col.lc_derecho USING btree (tipo);
 .   DROP INDEX test_ladm_col.lc_derecho_tipo_idx;
       test_ladm_col         postgres    false    1156            �"           1259    615195    lc_derecho_unidad_idx    INDEX     U   CREATE INDEX lc_derecho_unidad_idx ON test_ladm_col.lc_derecho USING btree (unidad);
 0   DROP INDEX test_ladm_col.lc_derecho_unidad_idx;
       test_ladm_col         postgres    false    1156            �"           1259    615202 6   lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx    INDEX     �   CREATE INDEX lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx ON test_ladm_col.lc_estructuranovedadfmi USING btree (lc_dtsdcnlstmntctstral_novedad_fmi);
 Q   DROP INDEX test_ladm_col.lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx;
       test_ladm_col         postgres    false    1157            �"           1259    615210 9   lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx ON test_ladm_col.lc_estructuranovedadnumeropredial USING btree (lc_dtsdcnlstmntctstral_novedad_numeros_prediales);
 T   DROP INDEX test_ladm_col.lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx;
       test_ladm_col         postgres    false    1158            �"           1259    615209 +   lc_estructuranvddnmrprdial_tipo_novedad_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_tipo_novedad_idx ON test_ladm_col.lc_estructuranovedadnumeropredial USING btree (tipo_novedad);
 F   DROP INDEX test_ladm_col.lc_estructuranvddnmrprdial_tipo_novedad_idx;
       test_ladm_col         postgres    false    1158            �"           1259    615222 1   lc_fuenteadministrativa_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_estado_disponibilidad_idx ON test_ladm_col.lc_fuenteadministrativa USING btree (estado_disponibilidad);
 L   DROP INDEX test_ladm_col.lc_fuenteadministrativa_estado_disponibilidad_idx;
       test_ladm_col         postgres    false    1159            �"           1259    615221     lc_fuenteadministrativa_tipo_idx    INDEX     k   CREATE INDEX lc_fuenteadministrativa_tipo_idx ON test_ladm_col.lc_fuenteadministrativa USING btree (tipo);
 ;   DROP INDEX test_ladm_col.lc_fuenteadministrativa_tipo_idx;
       test_ladm_col         postgres    false    1159            �"           1259    615223 *   lc_fuenteadministrativa_tipo_principal_idx    INDEX        CREATE INDEX lc_fuenteadministrativa_tipo_principal_idx ON test_ladm_col.lc_fuenteadministrativa USING btree (tipo_principal);
 E   DROP INDEX test_ladm_col.lc_fuenteadministrativa_tipo_principal_idx;
       test_ladm_col         postgres    false    1159            �"           1259    615235 +   lc_fuenteespacial_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_estado_disponibilidad_idx ON test_ladm_col.lc_fuenteespacial USING btree (estado_disponibilidad);
 F   DROP INDEX test_ladm_col.lc_fuenteespacial_estado_disponibilidad_idx;
       test_ladm_col         postgres    false    1160            �"           1259    615234    lc_fuenteespacial_tipo_idx    INDEX     _   CREATE INDEX lc_fuenteespacial_tipo_idx ON test_ladm_col.lc_fuenteespacial USING btree (tipo);
 5   DROP INDEX test_ladm_col.lc_fuenteespacial_tipo_idx;
       test_ladm_col         postgres    false    1160            �"           1259    615236 $   lc_fuenteespacial_tipo_principal_idx    INDEX     s   CREATE INDEX lc_fuenteespacial_tipo_principal_idx ON test_ladm_col.lc_fuenteespacial USING btree (tipo_principal);
 ?   DROP INDEX test_ladm_col.lc_fuenteespacial_tipo_principal_idx;
       test_ladm_col         postgres    false    1160            �"           1259    615244 +   lc_grupocalificacion_clase_calificacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_clase_calificacion_idx ON test_ladm_col.lc_grupocalificacion USING btree (clase_calificacion);
 F   DROP INDEX test_ladm_col.lc_grupocalificacion_clase_calificacion_idx;
       test_ladm_col         postgres    false    1161            �"           1259    615245 %   lc_grupocalificacion_conservacion_idx    INDEX     u   CREATE INDEX lc_grupocalificacion_conservacion_idx ON test_ladm_col.lc_grupocalificacion USING btree (conservacion);
 @   DROP INDEX test_ladm_col.lc_grupocalificacion_conservacion_idx;
       test_ladm_col         postgres    false    1161            �"           1259    615246 3   lc_grupocalificacion_lc_calificacion_convencnal_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_lc_calificacion_convencnal_idx ON test_ladm_col.lc_grupocalificacion USING btree (lc_calificacion_convencional);
 N   DROP INDEX test_ladm_col.lc_grupocalificacion_lc_calificacion_convencnal_idx;
       test_ladm_col         postgres    false    1161            �"           1259    615260    lc_interesado_grupo_etnico_idx    INDEX     g   CREATE INDEX lc_interesado_grupo_etnico_idx ON test_ladm_col.lc_interesado USING btree (grupo_etnico);
 9   DROP INDEX test_ladm_col.lc_interesado_grupo_etnico_idx;
       test_ladm_col         postgres    false    1162            �"           1259    615259    lc_interesado_sexo_idx    INDEX     W   CREATE INDEX lc_interesado_sexo_idx ON test_ladm_col.lc_interesado USING btree (sexo);
 1   DROP INDEX test_ladm_col.lc_interesado_sexo_idx;
       test_ladm_col         postgres    false    1162            �"           1259    615258     lc_interesado_tipo_documento_idx    INDEX     k   CREATE INDEX lc_interesado_tipo_documento_idx ON test_ladm_col.lc_interesado USING btree (tipo_documento);
 ;   DROP INDEX test_ladm_col.lc_interesado_tipo_documento_idx;
       test_ladm_col         postgres    false    1162            �"           1259    615257    lc_interesado_tipo_idx    INDEX     W   CREATE INDEX lc_interesado_tipo_idx ON test_ladm_col.lc_interesado USING btree (tipo);
 1   DROP INDEX test_ladm_col.lc_interesado_tipo_idx;
       test_ladm_col         postgres    false    1162            �"           1259    615271 '   lc_interesadocontacto_lc_interesado_idx    INDEX     y   CREATE INDEX lc_interesadocontacto_lc_interesado_idx ON test_ladm_col.lc_interesadocontacto USING btree (lc_interesado);
 B   DROP INDEX test_ladm_col.lc_interesadocontacto_lc_interesado_idx;
       test_ladm_col         postgres    false    1163            �"           1259    615282    lc_lindero_geometria_idx    INDEX     Z   CREATE INDEX lc_lindero_geometria_idx ON test_ladm_col.lc_lindero USING gist (geometria);
 3   DROP INDEX test_ladm_col.lc_lindero_geometria_idx;
       test_ladm_col         postgres    false    1164            �"           1259    615291 /   lc_objetoconstruccion_lc_grupo_calificacion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_lc_grupo_calificacion_idx ON test_ladm_col.lc_objetoconstruccion USING btree (lc_grupo_calificacion);
 J   DROP INDEX test_ladm_col.lc_objetoconstruccion_lc_grupo_calificacion_idx;
       test_ladm_col         postgres    false    1165            �"           1259    615290 2   lc_objetoconstruccion_tipo_objeto_construccion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_tipo_objeto_construccion_idx ON test_ladm_col.lc_objetoconstruccion USING btree (tipo_objeto_construccion);
 M   DROP INDEX test_ladm_col.lc_objetoconstruccion_tipo_objeto_construccion_idx;
       test_ladm_col         postgres    false    1165            �"           1259    615300 (   lc_ofertasmercadoinmoblrio_lc_predio_idx    INDEX     ~   CREATE INDEX lc_ofertasmercadoinmoblrio_lc_predio_idx ON test_ladm_col.lc_ofertasmercadoinmobiliario USING btree (lc_predio);
 C   DROP INDEX test_ladm_col.lc_ofertasmercadoinmoblrio_lc_predio_idx;
       test_ladm_col         postgres    false    1166            �"           1259    615299 *   lc_ofertasmercadoinmoblrio_tipo_oferta_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_tipo_oferta_idx ON test_ladm_col.lc_ofertasmercadoinmobiliario USING btree (tipo_oferta);
 E   DROP INDEX test_ladm_col.lc_ofertasmercadoinmoblrio_tipo_oferta_idx;
       test_ladm_col         postgres    false    1166            �"           1259    615312    lc_predio_condicion_predio_idx    INDEX     g   CREATE INDEX lc_predio_condicion_predio_idx ON test_ladm_col.lc_predio USING btree (condicion_predio);
 9   DROP INDEX test_ladm_col.lc_predio_condicion_predio_idx;
       test_ladm_col         postgres    false    1167            #           1259    615450 %   lc_predio_copropiedad_copropiedad_idx    INDEX     u   CREATE INDEX lc_predio_copropiedad_copropiedad_idx ON test_ladm_col.lc_predio_copropiedad USING btree (copropiedad);
 @   DROP INDEX test_ladm_col.lc_predio_copropiedad_copropiedad_idx;
       test_ladm_col         postgres    false    1177            #           1259    615449     lc_predio_copropiedad_predio_idx    INDEX     k   CREATE INDEX lc_predio_copropiedad_predio_idx ON test_ladm_col.lc_predio_copropiedad USING btree (predio);
 ;   DROP INDEX test_ladm_col.lc_predio_copropiedad_predio_idx;
       test_ladm_col         postgres    false    1177            #           1259    617324     lc_predio_copropiedad_predio_key    INDEX     r   CREATE UNIQUE INDEX lc_predio_copropiedad_predio_key ON test_ladm_col.lc_predio_copropiedad USING btree (predio);
 ;   DROP INDEX test_ladm_col.lc_predio_copropiedad_predio_key;
       test_ladm_col         postgres    false    1177            #           1259    615457 1   lc_predio_ini_predioinsmos_ini_predio_insumos_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_ini_predio_insumos_idx ON test_ladm_col.lc_predio_ini_predioinsumos USING btree (ini_predio_insumos);
 L   DROP INDEX test_ladm_col.lc_predio_ini_predioinsmos_ini_predio_insumos_idx;
       test_ladm_col         postgres    false    1178            #           1259    615458 (   lc_predio_ini_predioinsmos_lc_predio_idx    INDEX     |   CREATE INDEX lc_predio_ini_predioinsmos_lc_predio_idx ON test_ladm_col.lc_predio_ini_predioinsumos USING btree (lc_predio);
 C   DROP INDEX test_ladm_col.lc_predio_ini_predioinsmos_lc_predio_idx;
       test_ladm_col         postgres    false    1178            �"           1259    615311    lc_predio_tipo_idx    INDEX     O   CREATE INDEX lc_predio_tipo_idx ON test_ladm_col.lc_predio USING btree (tipo);
 -   DROP INDEX test_ladm_col.lc_predio_tipo_idx;
       test_ladm_col         postgres    false    1167            �"           1259    615327    lc_puntocontrol_geometria_idx    INDEX     d   CREATE INDEX lc_puntocontrol_geometria_idx ON test_ladm_col.lc_puntocontrol USING gist (geometria);
 8   DROP INDEX test_ladm_col.lc_puntocontrol_geometria_idx;
       test_ladm_col         postgres    false    1168            �"           1259    615326 $   lc_puntocontrol_metodoproduccion_idx    INDEX     s   CREATE INDEX lc_puntocontrol_metodoproduccion_idx ON test_ladm_col.lc_puntocontrol USING btree (metodoproduccion);
 ?   DROP INDEX test_ladm_col.lc_puntocontrol_metodoproduccion_idx;
       test_ladm_col         postgres    false    1168            �"           1259    615325 *   lc_puntocontrol_posicion_interpolacion_idx    INDEX        CREATE INDEX lc_puntocontrol_posicion_interpolacion_idx ON test_ladm_col.lc_puntocontrol USING btree (posicion_interpolacion);
 E   DROP INDEX test_ladm_col.lc_puntocontrol_posicion_interpolacion_idx;
       test_ladm_col         postgres    false    1168            �"           1259    615323    lc_puntocontrol_puntotipo_idx    INDEX     e   CREATE INDEX lc_puntocontrol_puntotipo_idx ON test_ladm_col.lc_puntocontrol USING btree (puntotipo);
 8   DROP INDEX test_ladm_col.lc_puntocontrol_puntotipo_idx;
       test_ladm_col         postgres    false    1168            �"           1259    615324 &   lc_puntocontrol_tipo_punto_control_idx    INDEX     w   CREATE INDEX lc_puntocontrol_tipo_punto_control_idx ON test_ladm_col.lc_puntocontrol USING btree (tipo_punto_control);
 A   DROP INDEX test_ladm_col.lc_puntocontrol_tipo_punto_control_idx;
       test_ladm_col         postgres    false    1168            �"           1259    615331 &   lc_puntocontrol_ue_lc_construccion_idx    INDEX     w   CREATE INDEX lc_puntocontrol_ue_lc_construccion_idx ON test_ladm_col.lc_puntocontrol USING btree (ue_lc_construccion);
 A   DROP INDEX test_ladm_col.lc_puntocontrol_ue_lc_construccion_idx;
       test_ladm_col         postgres    false    1168            �"           1259    615329 -   lc_puntocontrol_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_servidumbretransito_idx ON test_ladm_col.lc_puntocontrol USING btree (ue_lc_servidumbretransito);
 H   DROP INDEX test_ladm_col.lc_puntocontrol_ue_lc_servidumbretransito_idx;
       test_ladm_col         postgres    false    1168            �"           1259    615328 !   lc_puntocontrol_ue_lc_terreno_idx    INDEX     m   CREATE INDEX lc_puntocontrol_ue_lc_terreno_idx ON test_ladm_col.lc_puntocontrol USING btree (ue_lc_terreno);
 <   DROP INDEX test_ladm_col.lc_puntocontrol_ue_lc_terreno_idx;
       test_ladm_col         postgres    false    1168            �"           1259    615330 ,   lc_puntocontrol_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_unidadconstruccion_idx ON test_ladm_col.lc_puntocontrol USING btree (ue_lc_unidadconstruccion);
 G   DROP INDEX test_ladm_col.lc_puntocontrol_ue_lc_unidadconstruccion_idx;
       test_ladm_col         postgres    false    1168            �"           1259    615426 ,   lc_puntolevantamiento_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_fotoidentificacion_idx ON test_ladm_col.lc_puntolevantamiento USING btree (fotoidentificacion);
 G   DROP INDEX test_ladm_col.lc_puntolevantamiento_fotoidentificacion_idx;
       test_ladm_col         postgres    false    1175            �"           1259    615429 #   lc_puntolevantamiento_geometria_idx    INDEX     p   CREATE INDEX lc_puntolevantamiento_geometria_idx ON test_ladm_col.lc_puntolevantamiento USING gist (geometria);
 >   DROP INDEX test_ladm_col.lc_puntolevantamiento_geometria_idx;
       test_ladm_col         postgres    false    1175            �"           1259    615428 *   lc_puntolevantamiento_metodoproduccion_idx    INDEX        CREATE INDEX lc_puntolevantamiento_metodoproduccion_idx ON test_ladm_col.lc_puntolevantamiento USING btree (metodoproduccion);
 E   DROP INDEX test_ladm_col.lc_puntolevantamiento_metodoproduccion_idx;
       test_ladm_col         postgres    false    1175            �"           1259    615427 0   lc_puntolevantamiento_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_posicion_interpolacion_idx ON test_ladm_col.lc_puntolevantamiento USING btree (posicion_interpolacion);
 K   DROP INDEX test_ladm_col.lc_puntolevantamiento_posicion_interpolacion_idx;
       test_ladm_col         postgres    false    1175            �"           1259    615424 #   lc_puntolevantamiento_puntotipo_idx    INDEX     q   CREATE INDEX lc_puntolevantamiento_puntotipo_idx ON test_ladm_col.lc_puntolevantamiento USING btree (puntotipo);
 >   DROP INDEX test_ladm_col.lc_puntolevantamiento_puntotipo_idx;
       test_ladm_col         postgres    false    1175            �"           1259    615425 2   lc_puntolevantamiento_tipo_punto_levantamiento_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_tipo_punto_levantamiento_idx ON test_ladm_col.lc_puntolevantamiento USING btree (tipo_punto_levantamiento);
 M   DROP INDEX test_ladm_col.lc_puntolevantamiento_tipo_punto_levantamiento_idx;
       test_ladm_col         postgres    false    1175             #           1259    615433 ,   lc_puntolevantamiento_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_construccion_idx ON test_ladm_col.lc_puntolevantamiento USING btree (ue_lc_construccion);
 G   DROP INDEX test_ladm_col.lc_puntolevantamiento_ue_lc_construccion_idx;
       test_ladm_col         postgres    false    1175            #           1259    615431 3   lc_puntolevantamiento_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_servidumbretransito_idx ON test_ladm_col.lc_puntolevantamiento USING btree (ue_lc_servidumbretransito);
 N   DROP INDEX test_ladm_col.lc_puntolevantamiento_ue_lc_servidumbretransito_idx;
       test_ladm_col         postgres    false    1175            #           1259    615430 '   lc_puntolevantamiento_ue_lc_terreno_idx    INDEX     y   CREATE INDEX lc_puntolevantamiento_ue_lc_terreno_idx ON test_ladm_col.lc_puntolevantamiento USING btree (ue_lc_terreno);
 B   DROP INDEX test_ladm_col.lc_puntolevantamiento_ue_lc_terreno_idx;
       test_ladm_col         postgres    false    1175            #           1259    615432 2   lc_puntolevantamiento_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_unidadconstruccion_idx ON test_ladm_col.lc_puntolevantamiento USING btree (ue_lc_unidadconstruccion);
 M   DROP INDEX test_ladm_col.lc_puntolevantamiento_ue_lc_unidadconstruccion_idx;
       test_ladm_col         postgres    false    1175            �"           1259    615343    lc_puntolindero_acuerdo_idx    INDEX     a   CREATE INDEX lc_puntolindero_acuerdo_idx ON test_ladm_col.lc_puntolindero USING btree (acuerdo);
 6   DROP INDEX test_ladm_col.lc_puntolindero_acuerdo_idx;
       test_ladm_col         postgres    false    1169            �"           1259    615344 &   lc_puntolindero_fotoidentificacion_idx    INDEX     w   CREATE INDEX lc_puntolindero_fotoidentificacion_idx ON test_ladm_col.lc_puntolindero USING btree (fotoidentificacion);
 A   DROP INDEX test_ladm_col.lc_puntolindero_fotoidentificacion_idx;
       test_ladm_col         postgres    false    1169            �"           1259    615347    lc_puntolindero_geometria_idx    INDEX     d   CREATE INDEX lc_puntolindero_geometria_idx ON test_ladm_col.lc_puntolindero USING gist (geometria);
 8   DROP INDEX test_ladm_col.lc_puntolindero_geometria_idx;
       test_ladm_col         postgres    false    1169            �"           1259    615346 $   lc_puntolindero_metodoproduccion_idx    INDEX     s   CREATE INDEX lc_puntolindero_metodoproduccion_idx ON test_ladm_col.lc_puntolindero USING btree (metodoproduccion);
 ?   DROP INDEX test_ladm_col.lc_puntolindero_metodoproduccion_idx;
       test_ladm_col         postgres    false    1169            �"           1259    615345 *   lc_puntolindero_posicion_interpolacion_idx    INDEX        CREATE INDEX lc_puntolindero_posicion_interpolacion_idx ON test_ladm_col.lc_puntolindero USING btree (posicion_interpolacion);
 E   DROP INDEX test_ladm_col.lc_puntolindero_posicion_interpolacion_idx;
       test_ladm_col         postgres    false    1169            �"           1259    615342    lc_puntolindero_puntotipo_idx    INDEX     e   CREATE INDEX lc_puntolindero_puntotipo_idx ON test_ladm_col.lc_puntolindero USING btree (puntotipo);
 8   DROP INDEX test_ladm_col.lc_puntolindero_puntotipo_idx;
       test_ladm_col         postgres    false    1169            �"           1259    615351 &   lc_puntolindero_ue_lc_construccion_idx    INDEX     w   CREATE INDEX lc_puntolindero_ue_lc_construccion_idx ON test_ladm_col.lc_puntolindero USING btree (ue_lc_construccion);
 A   DROP INDEX test_ladm_col.lc_puntolindero_ue_lc_construccion_idx;
       test_ladm_col         postgres    false    1169            �"           1259    615349 -   lc_puntolindero_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_servidumbretransito_idx ON test_ladm_col.lc_puntolindero USING btree (ue_lc_servidumbretransito);
 H   DROP INDEX test_ladm_col.lc_puntolindero_ue_lc_servidumbretransito_idx;
       test_ladm_col         postgres    false    1169            �"           1259    615348 !   lc_puntolindero_ue_lc_terreno_idx    INDEX     m   CREATE INDEX lc_puntolindero_ue_lc_terreno_idx ON test_ladm_col.lc_puntolindero USING btree (ue_lc_terreno);
 <   DROP INDEX test_ladm_col.lc_puntolindero_ue_lc_terreno_idx;
       test_ladm_col         postgres    false    1169            �"           1259    615350 ,   lc_puntolindero_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_unidadconstruccion_idx ON test_ladm_col.lc_puntolindero USING btree (ue_lc_unidadconstruccion);
 G   DROP INDEX test_ladm_col.lc_puntolindero_ue_lc_unidadconstruccion_idx;
       test_ladm_col         postgres    false    1169            �"           1259    615364 -   lc_restriccion_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_grpcnntrsdos_idx ON test_ladm_col.lc_restriccion USING btree (interesado_lc_agrupacioninteresados);
 H   DROP INDEX test_ladm_col.lc_restriccion_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col         postgres    false    1170            �"           1259    615363 +   lc_restriccion_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_interesado_idx ON test_ladm_col.lc_restriccion USING btree (interesado_lc_interesado);
 F   DROP INDEX test_ladm_col.lc_restriccion_interesado_lc_interesado_idx;
       test_ladm_col         postgres    false    1170            �"           1259    615362    lc_restriccion_tipo_idx    INDEX     Y   CREATE INDEX lc_restriccion_tipo_idx ON test_ladm_col.lc_restriccion USING btree (tipo);
 2   DROP INDEX test_ladm_col.lc_restriccion_tipo_idx;
       test_ladm_col         postgres    false    1170            �"           1259    615365    lc_restriccion_unidad_idx    INDEX     ]   CREATE INDEX lc_restriccion_unidad_idx ON test_ladm_col.lc_restriccion USING btree (unidad);
 4   DROP INDEX test_ladm_col.lc_restriccion_unidad_idx;
       test_ladm_col         postgres    false    1170            #           1259    615469 $   lc_servidumbretransito_dimension_idx    INDEX     s   CREATE INDEX lc_servidumbretransito_dimension_idx ON test_ladm_col.lc_servidumbretransito USING btree (dimension);
 ?   DROP INDEX test_ladm_col.lc_servidumbretransito_dimension_idx;
       test_ladm_col         postgres    false    1179            #           1259    615471 $   lc_servidumbretransito_geometria_idx    INDEX     r   CREATE INDEX lc_servidumbretransito_geometria_idx ON test_ladm_col.lc_servidumbretransito USING gist (geometria);
 ?   DROP INDEX test_ladm_col.lc_servidumbretransito_geometria_idx;
       test_ladm_col         postgres    false    1179            #           1259    615470 .   lc_servidumbretransito_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_relacion_superficie_idx ON test_ladm_col.lc_servidumbretransito USING btree (relacion_superficie);
 I   DROP INDEX test_ladm_col.lc_servidumbretransito_relacion_superficie_idx;
       test_ladm_col         postgres    false    1179            �"           1259    615377    lc_terreno_dimension_idx    INDEX     [   CREATE INDEX lc_terreno_dimension_idx ON test_ladm_col.lc_terreno USING btree (dimension);
 3   DROP INDEX test_ladm_col.lc_terreno_dimension_idx;
       test_ladm_col         postgres    false    1171            �"           1259    615376    lc_terreno_geometria_idx    INDEX     Z   CREATE INDEX lc_terreno_geometria_idx ON test_ladm_col.lc_terreno USING gist (geometria);
 3   DROP INDEX test_ladm_col.lc_terreno_geometria_idx;
       test_ladm_col         postgres    false    1171            �"           1259    615378 "   lc_terreno_relacion_superficie_idx    INDEX     o   CREATE INDEX lc_terreno_relacion_superficie_idx ON test_ladm_col.lc_terreno USING btree (relacion_superficie);
 =   DROP INDEX test_ladm_col.lc_terreno_relacion_superficie_idx;
       test_ladm_col         postgres    false    1171            #           1259    615442 3   lc_tipologiaconstruccion_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_lc_unidad_construccion_idx ON test_ladm_col.lc_tipologiaconstruccion USING btree (lc_unidad_construccion);
 N   DROP INDEX test_ladm_col.lc_tipologiaconstruccion_lc_unidad_construccion_idx;
       test_ladm_col         postgres    false    1176            #           1259    615441 +   lc_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_tipo_tipologia_idx ON test_ladm_col.lc_tipologiaconstruccion USING btree (tipo_tipologia);
 F   DROP INDEX test_ladm_col.lc_tipologiaconstruccion_tipo_tipologia_idx;
       test_ladm_col         postgres    false    1176            #           1259    615488 #   lc_unidadconstruccion_dimension_idx    INDEX     q   CREATE INDEX lc_unidadconstruccion_dimension_idx ON test_ladm_col.lc_unidadconstruccion USING btree (dimension);
 >   DROP INDEX test_ladm_col.lc_unidadconstruccion_dimension_idx;
       test_ladm_col         postgres    false    1180            #           1259    615490 #   lc_unidadconstruccion_geometria_idx    INDEX     p   CREATE INDEX lc_unidadconstruccion_geometria_idx ON test_ladm_col.lc_unidadconstruccion USING gist (geometria);
 >   DROP INDEX test_ladm_col.lc_unidadconstruccion_geometria_idx;
       test_ladm_col         postgres    false    1180            #           1259    615487 )   lc_unidadconstruccion_lc_construccion_idx    INDEX     }   CREATE INDEX lc_unidadconstruccion_lc_construccion_idx ON test_ladm_col.lc_unidadconstruccion USING btree (lc_construccion);
 D   DROP INDEX test_ladm_col.lc_unidadconstruccion_lc_construccion_idx;
       test_ladm_col         postgres    false    1180            #           1259    615489 -   lc_unidadconstruccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_relacion_superficie_idx ON test_ladm_col.lc_unidadconstruccion USING btree (relacion_superficie);
 H   DROP INDEX test_ladm_col.lc_unidadconstruccion_relacion_superficie_idx;
       test_ladm_col         postgres    false    1180            #           1259    615483 +   lc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_construccion_idx ON test_ladm_col.lc_unidadconstruccion USING btree (tipo_construccion);
 F   DROP INDEX test_ladm_col.lc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_col         postgres    false    1180            #           1259    615482 &   lc_unidadconstruccion_tipo_dominio_idx    INDEX     w   CREATE INDEX lc_unidadconstruccion_tipo_dominio_idx ON test_ladm_col.lc_unidadconstruccion USING btree (tipo_dominio);
 A   DROP INDEX test_ladm_col.lc_unidadconstruccion_tipo_dominio_idx;
       test_ladm_col         postgres    false    1180            #           1259    615485 %   lc_unidadconstruccion_tipo_planta_idx    INDEX     u   CREATE INDEX lc_unidadconstruccion_tipo_planta_idx ON test_ladm_col.lc_unidadconstruccion USING btree (tipo_planta);
 @   DROP INDEX test_ladm_col.lc_unidadconstruccion_tipo_planta_idx;
       test_ladm_col         postgres    false    1180            #           1259    615484 2   lc_unidadconstruccion_tipo_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_unidad_construccion_idx ON test_ladm_col.lc_unidadconstruccion USING btree (tipo_unidad_construccion);
 M   DROP INDEX test_ladm_col.lc_unidadconstruccion_tipo_unidad_construccion_idx;
       test_ladm_col         postgres    false    1180             #           1259    615486    lc_unidadconstruccion_uso_idx    INDEX     e   CREATE INDEX lc_unidadconstruccion_uso_idx ON test_ladm_col.lc_unidadconstruccion USING btree (uso);
 8   DROP INDEX test_ladm_col.lc_unidadconstruccion_uso_idx;
       test_ladm_col         postgres    false    1180            `"           1259    615063 (   snr_derecho_calidad_derecho_registro_idx    INDEX     {   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_ladm_col.snr_derecho USING btree (calidad_derecho_registro);
 C   DROP INDEX test_ladm_col.snr_derecho_calidad_derecho_registro_idx;
       test_ladm_col         postgres    false    1144            c"           1259    615064 "   snr_derecho_snr_fuente_derecho_idx    INDEX     o   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_ladm_col.snr_derecho USING btree (snr_fuente_derecho);
 =   DROP INDEX test_ladm_col.snr_derecho_snr_fuente_derecho_idx;
       test_ladm_col         postgres    false    1144            d"           1259    615065 #   snr_derecho_snr_predio_registro_idx    INDEX     q   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_ladm_col.snr_derecho USING btree (snr_predio_registro);
 >   DROP INDEX test_ladm_col.snr_derecho_snr_predio_registro_idx;
       test_ladm_col         postgres    false    1144            e"           1259    615072 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_ladm_col.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 T   DROP INDEX test_ladm_col.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
       test_ladm_col         postgres    false    1145            j"           1259    615082 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_ladm_col.snr_fuentecabidalinderos USING btree (tipo_documento);
 F   DROP INDEX test_ladm_col.snr_fuentecabidalinderos_tipo_documento_idx;
       test_ladm_col         postgres    false    1146            m"           1259    615092 $   snr_fuentederecho_tipo_documento_idx    INDEX     s   CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_ladm_col.snr_fuentederecho USING btree (tipo_documento);
 ?   DROP INDEX test_ladm_col.snr_fuentederecho_tipo_documento_idx;
       test_ladm_col         postgres    false    1147            r"           1259    615113 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_ladm_col.snr_predioregistro USING btree (clase_suelo_registro);
 F   DROP INDEX test_ladm_col.snr_predioregistro_clase_suelo_registro_idx;
       test_ladm_col         postgres    false    1149            u"           1259    615114 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_ladm_col.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 K   DROP INDEX test_ladm_col.snr_predioregistro_snr_fuente_cabidalinderos_idx;
       test_ladm_col         postgres    false    1149            x"           1259    615122 #   snr_titular_derecho_snr_derecho_idx    INDEX     q   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_ladm_col.snr_titular_derecho USING btree (snr_derecho);
 >   DROP INDEX test_ladm_col.snr_titular_derecho_snr_derecho_idx;
       test_ladm_col         postgres    false    1150            y"           1259    615121 #   snr_titular_derecho_snr_titular_idx    INDEX     q   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_ladm_col.snr_titular_derecho USING btree (snr_titular);
 >   DROP INDEX test_ladm_col.snr_titular_derecho_snr_titular_idx;
       test_ladm_col         postgres    false    1150            p"           1259    615103    snr_titular_tipo_documento_idx    INDEX     g   CREATE INDEX snr_titular_tipo_documento_idx ON test_ladm_col.snr_titular USING btree (tipo_documento);
 9   DROP INDEX test_ladm_col.snr_titular_tipo_documento_idx;
       test_ladm_col         postgres    false    1148            q"           1259    615102    snr_titular_tipo_persona_idx    INDEX     c   CREATE INDEX snr_titular_tipo_persona_idx ON test_ladm_col.snr_titular USING btree (tipo_persona);
 7   DROP INDEX test_ladm_col.snr_titular_tipo_persona_idx;
       test_ladm_col         postgres    false    1148            �#           1259    617413 &   t_ili2db_attrname_colowner_sqlname_key    INDEX        CREATE UNIQUE INDEX t_ili2db_attrname_colowner_sqlname_key ON test_ladm_col.t_ili2db_attrname USING btree (colowner, sqlname);
 A   DROP INDEX test_ladm_col.t_ili2db_attrname_colowner_sqlname_key;
       test_ladm_col         postgres    false    1255    1255            !#           1259    615499    t_ili2db_basket_dataset_idx    INDEX     a   CREATE INDEX t_ili2db_basket_dataset_idx ON test_ladm_col.t_ili2db_basket USING btree (dataset);
 6   DROP INDEX test_ladm_col.t_ili2db_basket_dataset_idx;
       test_ladm_col         postgres    false    1181            $#           1259    617411     t_ili2db_dataset_datasetname_key    INDEX     r   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_ladm_col.t_ili2db_dataset USING btree (datasetname);
 ;   DROP INDEX test_ladm_col.t_ili2db_dataset_datasetname_key;
       test_ladm_col         postgres    false    1182            +#           1259    617412 '   t_ili2db_model_modelname_iliversion_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_modelname_iliversion_key ON test_ladm_col.t_ili2db_model USING btree (modelname, iliversion);
 B   DROP INDEX test_ladm_col.t_ili2db_model_modelname_iliversion_key;
       test_ladm_col         postgres    false    1186    1186            �#           2606    616184 E   cc_metodooperacion cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey FOREIGN KEY (col_transformacion_transformacion) REFERENCES test_ladm_col.col_transformacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey;
       test_ladm_col       postgres    false    1092    1096    8595            �#           2606    616195 5   col_areavalor col_areavalor_lc_construccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_construccion_area_fkey FOREIGN KEY (lc_construccion_area) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.col_areavalor DROP CONSTRAINT col_areavalor_lc_construccion_area_fkey;
       test_ladm_col       postgres    false    1153    1093    8837            �#           2606    616205 ;   col_areavalor col_areavalor_lc_servidumbretransito_rea_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey FOREIGN KEY (lc_servidumbretransito_area) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.col_areavalor DROP CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey;
       test_ladm_col       postgres    false    1179    1093    8980            �#           2606    616200 0   col_areavalor col_areavalor_lc_terreno_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_terreno_area_fkey FOREIGN KEY (lc_terreno_area) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_col.col_areavalor DROP CONSTRAINT col_areavalor_lc_terreno_area_fkey;
       test_ladm_col       postgres    false    1171    1093    8933            �#           2606    616210 ;   col_areavalor col_areavalor_lc_unidadconstruccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey FOREIGN KEY (lc_unidadconstruccion_area) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.col_areavalor DROP CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey;
       test_ladm_col       postgres    false    1180    1093    8986            �#           2606    616189 %   col_areavalor col_areavalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_areavalor
    ADD CONSTRAINT col_areavalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col.col_areatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 V   ALTER TABLE ONLY test_ladm_col.col_areavalor DROP CONSTRAINT col_areavalor_tipo_fkey;
       test_ladm_col       postgres    false    9127    1093    1247            $           2606    616648 Q   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col       postgres    false    8832    1120    1152            $           2606    616643 O   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey;
       test_ladm_col       postgres    false    8879    1162    1120            $           2606    616653 =   col_baunitcomointeresado col_baunitcomointeresado_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_unidad_fkey;
       test_ladm_col       postgres    false    8899    1120    1167            �#           2606    616488 6   col_baunitfuente col_baunitfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col.col_baunitfuente DROP CONSTRAINT col_baunitfuente_fuente_espacial_fkey;
       test_ladm_col       postgres    false    1110    1160    8869            �#           2606    616493 -   col_baunitfuente col_baunitfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_col.col_baunitfuente DROP CONSTRAINT col_baunitfuente_unidad_fkey;
       test_ladm_col       postgres    false    8899    1167    1110            �#           2606    616503 $   col_cclfuente col_cclfuente_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_cclfuente
    ADD CONSTRAINT col_cclfuente_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_col.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 U   ALTER TABLE ONLY test_ladm_col.col_cclfuente DROP CONSTRAINT col_cclfuente_ccl_fkey;
       test_ladm_col       postgres    false    1164    8888    1112            �#           2606    616508 0   col_cclfuente col_cclfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_cclfuente
    ADD CONSTRAINT col_cclfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_col.col_cclfuente DROP CONSTRAINT col_cclfuente_fuente_espacial_fkey;
       test_ladm_col       postgres    false    1160    8869    1112            
$           2606    616583 .   col_clfuente col_clfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_clfuente
    ADD CONSTRAINT col_clfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_col.col_clfuente DROP CONSTRAINT col_clfuente_fuente_espacial_fkey;
       test_ladm_col       postgres    false    1160    1116    8869            $           2606    616538 "   col_masccl col_masccl_ccl_mas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_masccl
    ADD CONSTRAINT col_masccl_ccl_mas_fkey FOREIGN KEY (ccl_mas) REFERENCES test_ladm_col.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 S   ALTER TABLE ONLY test_ladm_col.col_masccl DROP CONSTRAINT col_masccl_ccl_mas_fkey;
       test_ladm_col       postgres    false    8888    1114    1164            $           2606    616558 1   col_masccl col_masccl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey;
       test_ladm_col       postgres    false    8837    1114    1153            $           2606    616548 5   col_masccl col_masccl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_col       postgres    false    1179    8980    1114            $           2606    616543 ,   col_masccl col_masccl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey;
       test_ladm_col       postgres    false    1171    8933    1114            $           2606    616553 5   col_masccl col_masccl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_col       postgres    false    8986    1114    1180            $           2606    616623 /   col_mascl col_mascl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_col.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey;
       test_ladm_col       postgres    false    1118    8837    1153            $           2606    616613 3   col_mascl col_mascl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_col       postgres    false    1118    1179    8980            $           2606    616608 *   col_mascl col_mascl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY test_ladm_col.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey;
       test_ladm_col       postgres    false    8933    1118    1171            $           2606    616618 3   col_mascl col_mascl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_col       postgres    false    1180    8986    1118            �#           2606    616513 (   col_menosccl col_menosccl_ccl_menos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_menosccl
    ADD CONSTRAINT col_menosccl_ccl_menos_fkey FOREIGN KEY (ccl_menos) REFERENCES test_ladm_col.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY test_ladm_col.col_menosccl DROP CONSTRAINT col_menosccl_ccl_menos_fkey;
       test_ladm_col       postgres    false    1113    8888    1164            �#           2606    616533 7   col_menosccl col_menosccl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey;
       test_ladm_col       postgres    false    1113    1153    8837            �#           2606    616523 9   col_menosccl col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_col       postgres    false    8980    1179    1113            �#           2606    616518 2   col_menosccl col_menosccl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey;
       test_ladm_col       postgres    false    8933    1113    1171             $           2606    616528 9   col_menosccl col_menosccl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_col       postgres    false    1180    1113    8986            $           2606    616603 5   col_menoscl col_menoscl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey;
       test_ladm_col       postgres    false    1117    1153    8837            $           2606    616593 7   col_menoscl col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_col       postgres    false    1117    8980    1179            $           2606    616588 0   col_menoscl col_menoscl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_col.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey;
       test_ladm_col       postgres    false    1171    8933    1117            $           2606    616598 7   col_menoscl col_menoscl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_col       postgres    false    1180    8986    1117            $           2606    616698 )   col_miembros col_miembros_agrupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_miembros
    ADD CONSTRAINT col_miembros_agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES test_ladm_col.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY test_ladm_col.col_miembros DROP CONSTRAINT col_miembros_agrupacion_fkey;
       test_ladm_col       postgres    false    8832    1152    1123             $           2606    616693 9   col_miembros col_miembros_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col       postgres    false    1123    1152    8832            !$           2606    616688 7   col_miembros col_miembros_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_interesado_fkey;
       test_ladm_col       postgres    false    8879    1123    1162            $           2606    616578 "   col_puntoccl col_puntoccl_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_puntoccl
    ADD CONSTRAINT col_puntoccl_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_col.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 S   ALTER TABLE ONLY test_ladm_col.col_puntoccl DROP CONSTRAINT col_puntoccl_ccl_fkey;
       test_ladm_col       postgres    false    1164    1115    8888            $           2606    616563 4   col_puntoccl col_puntoccl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_col.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey;
       test_ladm_col       postgres    false    8904    1115    1168            $           2606    616573 9   col_puntoccl col_puntoccl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_col.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey;
       test_ladm_col       postgres    false    1175    1115    8956            	$           2606    616568 4   col_puntoccl col_puntoccl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_col.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey;
       test_ladm_col       postgres    false    1115    8917    1169            $           2606    616628 2   col_puntocl col_puntocl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_col.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey;
       test_ladm_col       postgres    false    1168    1119    8904            $           2606    616638 7   col_puntocl col_puntocl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_col.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey;
       test_ladm_col       postgres    false    8956    1119    1175            $           2606    616633 2   col_puntocl col_puntocl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_col.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey;
       test_ladm_col       postgres    false    1119    8917    1169            �#           2606    616443 4   col_puntofuente col_puntofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_puntofuente
    ADD CONSTRAINT col_puntofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col.col_puntofuente DROP CONSTRAINT col_puntofuente_fuente_espacial_fkey;
       test_ladm_col       postgres    false    1108    1160    8869            �#           2606    616448 :   col_puntofuente col_puntofuente_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_col.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey;
       test_ladm_col       postgres    false    1168    8904    1108            �#           2606    616458 ?   col_puntofuente col_puntofuente_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_col.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey;
       test_ladm_col       postgres    false    1175    8956    1108            �#           2606    616453 :   col_puntofuente col_puntofuente_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_col.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey;
       test_ladm_col       postgres    false    1169    8917    1108            �#           2606    616428 @   col_relacionfuente col_relacionfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col.col_relacionfuente DROP CONSTRAINT col_relacionfuente_fuente_administrativa_fkey;
       test_ladm_col       postgres    false    8864    1106    1159            �#           2606    616498 K   col_relacionfuenteuespacial col_relacionfuenteuespcial_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey;
       test_ladm_col       postgres    false    1111    1160    8869            $           2606    616658 F   col_responsablefuente col_responsablefuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col.col_responsablefuente DROP CONSTRAINT col_responsablefuente_fuente_administrativa_fkey;
       test_ladm_col       postgres    false    1159    1121    8864            $           2606    616668 K   col_responsablefuente col_responsablefuente_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col       postgres    false    1121    1152    8832            $           2606    616663 I   col_responsablefuente col_responsablefuente_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey;
       test_ladm_col       postgres    false    1121    8879    1162            �#           2606    616388 6   col_rrrfuente col_rrrfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col.col_rrrfuente DROP CONSTRAINT col_rrrfuente_fuente_administrativa_fkey;
       test_ladm_col       postgres    false    1159    8864    1104            �#           2606    616398 /   col_rrrfuente col_rrrfuente_rrr_lc_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey FOREIGN KEY (rrr_lc_derecho) REFERENCES test_ladm_col.lc_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_col.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey;
       test_ladm_col       postgres    false    1104    1156    8852            �#           2606    616393 3   col_rrrfuente col_rrrfuente_rrr_lc_restriccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey FOREIGN KEY (rrr_lc_restriccion) REFERENCES test_ladm_col.lc_restriccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey;
       test_ladm_col       postgres    false    1104    1170    8927            $           2606    616673 <   col_topografofuente col_topografofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_topografofuente
    ADD CONSTRAINT col_topografofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col.col_topografofuente DROP CONSTRAINT col_topografofuente_fuente_espacial_fkey;
       test_ladm_col       postgres    false    1160    1122    8869            $           2606    616683 G   col_topografofuente col_topografofuente_topografo_lc_agrpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey FOREIGN KEY (topografo_lc_agrupacioninteresados) REFERENCES test_ladm_col.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_col.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey;
       test_ladm_col       postgres    false    8832    1152    1122            $           2606    616678 D   col_topografofuente col_topografofuente_topografo_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey FOREIGN KEY (topografo_lc_interesado) REFERENCES test_ladm_col.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey;
       test_ladm_col       postgres    false    8879    1162    1122            �#           2606    616282 E   col_transformacion col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey FOREIGN KEY (lc_puntocontrol_transformacion_y_resultado) REFERENCES test_ladm_col.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey;
       test_ladm_col       postgres    false    1168    1096    8904            �#           2606    616287 E   col_transformacion col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolindero_transformacion_y_resultado) REFERENCES test_ladm_col.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey;
       test_ladm_col       postgres    false    8917    1096    1169            �#           2606    616292 E   col_transformacion col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolevantamiento_transformacion_y_resultado) REFERENCES test_ladm_col.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey;
       test_ladm_col       postgres    false    1096    8956    1175            �#           2606    616423 %   col_uebaunit col_uebaunit_baunit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_uebaunit
    ADD CONSTRAINT col_uebaunit_baunit_fkey FOREIGN KEY (baunit) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 V   ALTER TABLE ONLY test_ladm_col.col_uebaunit DROP CONSTRAINT col_uebaunit_baunit_fkey;
       test_ladm_col       postgres    false    8899    1167    1105            �#           2606    616418 1   col_uebaunit col_uebaunit_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_construccion_fkey;
       test_ladm_col       postgres    false    1153    8837    1105            �#           2606    616408 8   col_uebaunit col_uebaunit_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey;
       test_ladm_col       postgres    false    1105    8980    1179            �#           2606    616403 ,   col_uebaunit col_uebaunit_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_terreno_fkey;
       test_ladm_col       postgres    false    1105    8933    1171            �#           2606    616413 7   col_uebaunit col_uebaunit_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey;
       test_ladm_col       postgres    false    1105    8986    1180            �#           2606    616483 .   col_uefuente col_uefuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_uefuente
    ADD CONSTRAINT col_uefuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_col.col_uefuente DROP CONSTRAINT col_uefuente_fuente_espacial_fkey;
       test_ladm_col       postgres    false    1109    8869    1160            �#           2606    616478 1   col_uefuente col_uefuente_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_construccion_fkey;
       test_ladm_col       postgres    false    1109    8837    1153            �#           2606    616468 8   col_uefuente col_uefuente_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey;
       test_ladm_col       postgres    false    8980    1179    1109            �#           2606    616463 ,   col_uefuente col_uefuente_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_terreno_fkey;
       test_ladm_col       postgres    false    8933    1171    1109            �#           2606    616473 7   col_uefuente col_uefuente_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey;
       test_ladm_col       postgres    false    8986    1180    1109            �#           2606    616383 6   col_ueuegrupo col_ueuegrupo_parte_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey FOREIGN KEY (parte_lc_construccion) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey;
       test_ladm_col       postgres    false    8837    1103    1153            �#           2606    616373 ;   col_ueuegrupo col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey FOREIGN KEY (parte_lc_servidumbretransito) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey;
       test_ladm_col       postgres    false    1179    8980    1103            �#           2606    616368 1   col_ueuegrupo col_ueuegrupo_parte_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey FOREIGN KEY (parte_lc_terreno) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey;
       test_ladm_col       postgres    false    1171    8933    1103            �#           2606    616378 ;   col_ueuegrupo col_ueuegrupo_parte_lc_unidadconstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey FOREIGN KEY (parte_lc_unidadconstruccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey;
       test_ladm_col       postgres    false    1180    1103    8986            �#           2606    616433 <   col_unidadfuente col_unidadfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col.col_unidadfuente DROP CONSTRAINT col_unidadfuente_fuente_administrativa_fkey;
       test_ladm_col       postgres    false    1159    1107    8864            �#           2606    616438 -   col_unidadfuente col_unidadfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_col.col_unidadfuente DROP CONSTRAINT col_unidadfuente_unidad_fkey;
       test_ladm_col       postgres    false    1167    8899    1107            �#           2606    616348 >   col_volumenvalor col_volumenvalor_lc_construccion_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey FOREIGN KEY (lc_construccion_volumen) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey;
       test_ladm_col       postgres    false    1102    8837    1153            �#           2606    616358 A   col_volumenvalor col_volumenvalor_lc_servidumbretranst_vlmen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey FOREIGN KEY (lc_servidumbretransito_volumen) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey;
       test_ladm_col       postgres    false    1179    1102    8980            �#           2606    616353 9   col_volumenvalor col_volumenvalor_lc_terreno_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey FOREIGN KEY (lc_terreno_volumen) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey;
       test_ladm_col       postgres    false    8933    1102    1171            �#           2606    616363 A   col_volumenvalor col_volumenvalor_lc_unidadconstruccin_vlmen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey FOREIGN KEY (lc_unidadconstruccion_volumen) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey;
       test_ladm_col       postgres    false    8986    1180    1102            �#           2606    616343 +   col_volumenvalor col_volumenvalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col.col_volumentipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_col.col_volumenvalor DROP CONSTRAINT col_volumenvalor_tipo_fkey;
       test_ladm_col       postgres    false    1227    9087    1102            �#           2606    616337 5   extarchivo extarchivo_lc_fuenteespacl_xt_rchv_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extarchivo
    ADD CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteespacial_ext_archivo_id) REFERENCES test_ladm_col.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.extarchivo DROP CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey;
       test_ladm_col       postgres    false    1160    8869    1101            �#           2606    616332 5   extarchivo extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extarchivo
    ADD CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteadministrtiva_ext_archivo_id) REFERENCES test_ladm_col.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.extarchivo DROP CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey;
       test_ladm_col       postgres    false    1101    8864    1159            �#           2606    616327 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_ladm_col.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
       test_ladm_col       postgres    false    1146    1101    8809            �#           2606    616220 2   extdireccion extdireccion_clase_via_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_clase_via_principal_fkey FOREIGN KEY (clase_via_principal) REFERENCES test_ladm_col.extdireccion_clase_via_principal(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_clase_via_principal_fkey;
       test_ladm_col       postgres    false    1237    1094    9107            �#           2606    616240 9   extdireccion extdireccion_extinteresado_ext_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey FOREIGN KEY (extinteresado_ext_direccion_id) REFERENCES test_ladm_col.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey;
       test_ladm_col       postgres    false    1094    1099    8607            �#           2606    616235 9   extdireccion extdireccion_extndddfccnfsc_xt_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey FOREIGN KEY (extunidadedificcnfsica_ext_direccion_id) REFERENCES test_ladm_col.extunidadedificacionfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey;
       test_ladm_col       postgres    false    1097    1094    8597            �#           2606    616245 9   extdireccion extdireccion_lc_construccin_xt_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey FOREIGN KEY (lc_construccion_ext_direccion_id) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey;
       test_ladm_col       postgres    false    8837    1094    1153            �#           2606    616265 9   extdireccion extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey FOREIGN KEY (lc_unidadconstruccion_ext_direccion_id) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey;
       test_ladm_col       postgres    false    1180    1094    8986            �#           2606    616250 2   extdireccion extdireccion_lc_predio_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_lc_predio_direccion_fkey FOREIGN KEY (lc_predio_direccion) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_lc_predio_direccion_fkey;
       test_ladm_col       postgres    false    1167    1094    8899            �#           2606    616260 9   extdireccion extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey FOREIGN KEY (lc_servidumbretransito_ext_direccion_id) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey;
       test_ladm_col       postgres    false    1179    1094    8980            �#           2606    616255 9   extdireccion extdireccion_lc_terreno_ext_direccin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey FOREIGN KEY (lc_terreno_ext_direccion_id) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey;
       test_ladm_col       postgres    false    1171    1094    8933            �#           2606    616225 ,   extdireccion extdireccion_sector_ciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_sector_ciudad_fkey FOREIGN KEY (sector_ciudad) REFERENCES test_ladm_col.extdireccion_sector_ciudad(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_sector_ciudad_fkey;
       test_ladm_col       postgres    false    1245    1094    9123            �#           2606    616230 ,   extdireccion extdireccion_sector_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_sector_predio_fkey FOREIGN KEY (sector_predio) REFERENCES test_ladm_col.extdireccion_sector_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_sector_predio_fkey;
       test_ladm_col       postgres    false    1188    1094    9009            �#           2606    616215 -   extdireccion extdireccion_tipo_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extdireccion
    ADD CONSTRAINT extdireccion_tipo_direccion_fkey FOREIGN KEY (tipo_direccion) REFERENCES test_ladm_col.extdireccion_tipo_direccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_col.extdireccion DROP CONSTRAINT extdireccion_tipo_direccion_fkey;
       test_ladm_col       postgres    false    1249    1094    9131            �#           2606    616312 ;   extinteresado extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.extinteresado
    ADD CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey FOREIGN KEY (extredserviciosfisica_ext_interesado_administrador_id) REFERENCES test_ladm_col.extredserviciosfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.extinteresado DROP CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey;
       test_ladm_col       postgres    false    1100    1099    8609            �#           2606    616317 ;   extinteresado extinteresado_lc_agrupacionntrsds_xt_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extinteresado
    ADD CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey FOREIGN KEY (lc_agrupacionintersdos_ext_pid) REFERENCES test_ladm_col.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.extinteresado DROP CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey;
       test_ladm_col       postgres    false    1152    1099    8832            �#           2606    616322 6   extinteresado extinteresado_lc_interesado_ext_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.extinteresado
    ADD CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey FOREIGN KEY (lc_interesado_ext_pid) REFERENCES test_ladm_col.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col.extinteresado DROP CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey;
       test_ladm_col       postgres    false    1162    1099    8879            �#           2606    616272 1   fraccion fraccion_col_miembros_participacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.fraccion
    ADD CONSTRAINT fraccion_col_miembros_participacion_fkey FOREIGN KEY (col_miembros_participacion) REFERENCES test_ladm_col.col_miembros(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col.fraccion DROP CONSTRAINT fraccion_col_miembros_participacion_fkey;
       test_ladm_col       postgres    false    1123    1095    8730            �#           2606    616277 1   fraccion fraccion_lc_predio_copropidd_cfcnte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.fraccion
    ADD CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey FOREIGN KEY (lc_predio_copropiedad_coeficiente) REFERENCES test_ladm_col.lc_predio_copropiedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col.fraccion DROP CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey;
       test_ladm_col       postgres    false    1177    1095    8970            "$           2606    616704 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_ladm_col.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
       test_ladm_col       postgres    false    8786    1140    1125            #$           2606    616720 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_col.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_col.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
       test_ladm_col       postgres    false    1129    8793    1142            $$           2606    616709 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
       test_ladm_col       postgres    false    9067    1217    1129            /$           2606    616799 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_ladm_col.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
       test_ladm_col       postgres    false    1143    1142    8793            0$           2606    616804 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_ladm_col.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
       test_ladm_col       postgres    false    1143    1142    8793            %$           2606    616732 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_col.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
       test_ladm_col       postgres    false    1142    8793    1130            &$           2606    616742 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_ladm_col.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
       test_ladm_col       postgres    false    1131    8753    1130            '$           2606    616747 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_ladm_col.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
       test_ladm_col       postgres    false    1132    8793    1142            ($           2606    616752 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_ladm_col.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
       test_ladm_col       postgres    false    1142    1133    8793            -$           2606    616788 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_col.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
       test_ladm_col       postgres    false    1142    9029    1198            .$           2606    616793 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_ladm_col.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
       test_ladm_col       postgres    false    9073    1220    1142            )$           2606    616757 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_col.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
       test_ladm_col       postgres    false    1136    8793    1142            *$           2606    616765 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_col.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 U   ALTER TABLE ONLY test_ladm_col.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
       test_ladm_col       postgres    false    8793    1139    1142            +$           2606    616783 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_ladm_col.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
       test_ladm_col       postgres    false    1140    8749    1129            ,$           2606    616770 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_col       postgres    false    1140    9067    1217            �#           2606    616172 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_ladm_col.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
       test_ladm_col       postgres    false    1089    8555    1088            �#           2606    616177 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_ladm_col.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
       test_ladm_col       postgres    false    1090    1091    8561            �#           2606    616307 &   imagen imagen_extinteresado_firma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.imagen
    ADD CONSTRAINT imagen_extinteresado_firma_fkey FOREIGN KEY (extinteresado_firma) REFERENCES test_ladm_col.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 W   ALTER TABLE ONLY test_ladm_col.imagen DROP CONSTRAINT imagen_extinteresado_firma_fkey;
       test_ladm_col       postgres    false    1099    1098    8607            �#           2606    616302 +   imagen imagen_extinteresado_fotografia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.imagen
    ADD CONSTRAINT imagen_extinteresado_fotografia_fkey FOREIGN KEY (extinteresado_fotografia) REFERENCES test_ladm_col.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_col.imagen DROP CONSTRAINT imagen_extinteresado_fotografia_fkey;
       test_ladm_col       postgres    false    8607    1098    1099            �#           2606    616297 -   imagen imagen_extinteresado_huell_dctlar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.imagen
    ADD CONSTRAINT imagen_extinteresado_huell_dctlar_fkey FOREIGN KEY (extinteresado_huella_dactilar) REFERENCES test_ladm_col.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_col.imagen DROP CONSTRAINT imagen_extinteresado_huell_dctlar_fkey;
       test_ladm_col       postgres    false    1098    1099    8607            =$           2606    616875 ;   ini_predioinsumos ini_predioinsumos_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_col.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey;
       test_ladm_col       postgres    false    1151    8793    1142            >$           2606    616880 <   ini_predioinsumos ini_predioinsumos_snr_predio_juridico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey FOREIGN KEY (snr_predio_juridico) REFERENCES test_ladm_col.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey;
       test_ladm_col       postgres    false    8820    1149    1151            ?$           2606    616870 <   ini_predioinsumos ini_predioinsumos_tipo_emparejamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey FOREIGN KEY (tipo_emparejamiento) REFERENCES test_ladm_col.ini_emparejamientotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey;
       test_ladm_col       postgres    false    1238    1151    9109            @$           2606    616885 ;   lc_agrupacioninteresados lc_agrupacioninteresados_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col.col_grupointeresadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_tipo_fkey;
       test_ladm_col       postgres    false    1152    9099    1233            {$           2606    617216 R   lc_calificacionconvencional lc_calificacionconvencinal_lc_unidad_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey;
       test_ladm_col       postgres    false    1180    1172    8986            |$           2606    617210 J   lc_calificacionconvencional lc_calificacionconvencinal_tipo_calificar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey FOREIGN KEY (tipo_calificar) REFERENCES test_ladm_col.lc_calificartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_col.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey;
       test_ladm_col       postgres    false    1195    9023    1172            }$           2606    617226 T   lc_calificacionnoconvencional lc_calificacionnoconvncnal_lc_unidad_construccion_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_col.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey;
       test_ladm_col       postgres    false    1173    8986    1180            ~$           2606    617221 H   lc_calificacionnoconvencional lc_calificacionnoconvncnal_tipo_anexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey FOREIGN KEY (tipo_anexo) REFERENCES test_ladm_col.lc_anexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_col.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey;
       test_ladm_col       postgres    false    9039    1203    1173            A$           2606    616908 .   lc_construccion lc_construccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_construccion
    ADD CONSTRAINT lc_construccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_col.lc_construccion DROP CONSTRAINT lc_construccion_dimension_fkey;
       test_ladm_col       postgres    false    1231    1153    9095            B$           2606    616913 8   lc_construccion lc_construccion_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_construccion
    ADD CONSTRAINT lc_construccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col.lc_construccion DROP CONSTRAINT lc_construccion_relacion_superficie_fkey;
       test_ladm_col       postgres    false    9113    1153    1240            C$           2606    616890 6   lc_construccion lc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col.lc_construccion DROP CONSTRAINT lc_construccion_tipo_construccion_fkey;
       test_ladm_col       postgres    false    9081    1224    1153            D$           2606    616895 1   lc_construccion lc_construccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_col.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col.lc_construccion DROP CONSTRAINT lc_construccion_tipo_dominio_fkey;
       test_ladm_col       postgres    false    1193    1153    9019            E$           2606    616928 =   lc_contactovisita lc_contactovisita_lc_datos_adicionales_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey FOREIGN KEY (lc_datos_adicionales) REFERENCES test_ladm_col.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col.lc_contactovisita DROP CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey;
       test_ladm_col       postgres    false    1174    8944    1154            F$           2606    616923 <   lc_contactovisita lc_contactovisita_relacion_con_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_relacion_con_predio_fkey FOREIGN KEY (relacion_con_predio) REFERENCES test_ladm_col.lc_relacionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col.lc_contactovisita DROP CONSTRAINT lc_contactovisita_relacion_con_predio_fkey;
       test_ladm_col       postgres    false    9047    1154    1207            G$           2606    616918 C   lc_contactovisita lc_contactovisita_tipo_documento_quien_tndio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey FOREIGN KEY (tipo_documento_quien_atendio) REFERENCES test_ladm_col.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col.lc_contactovisita DROP CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey;
       test_ladm_col       postgres    false    1154    9075    1221            H$           2606    616941 8   lc_datosphcondominio lc_datosphcondominio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_lc_predio_fkey;
       test_ladm_col       postgres    false    8899    1155    1167            $           2606    617247 Y   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_categoria_suelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey FOREIGN KEY (categoria_suelo) REFERENCES test_ladm_col.lc_categoriasuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey;
       test_ladm_col       postgres    false    9111    1174    1239            �$           2606    617242 U   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_clase_suelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey FOREIGN KEY (clase_suelo) REFERENCES test_ladm_col.lc_clasesuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey;
       test_ladm_col       postgres    false    1200    1174    9033            �$           2606    617237 _   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_destinacion_economica_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey FOREIGN KEY (destinacion_economica) REFERENCES test_ladm_col.lc_destinacioneconomicatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey;
       test_ladm_col       postgres    false    9137    1174    1252            �$           2606    617262 S   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey;
       test_ladm_col       postgres    false    1167    1174    8899            �$           2606    617232 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey    FK CONSTRAINT     ,  ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey FOREIGN KEY (procedimiento_catastral_registral) REFERENCES test_ladm_col.lc_procedimientocatastralregistraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey;
       test_ladm_col       postgres    false    1236    1174    9105            �$           2606    617257 Z   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_resultado_visita_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey FOREIGN KEY (resultado_visita) REFERENCES test_ladm_col.lc_resultadovisitatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey;
       test_ladm_col       postgres    false    9011    1174    1189            �$           2606    617252 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey FOREIGN KEY (tipo_documento_reconocedor) REFERENCES test_ladm_col.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey;
       test_ladm_col       postgres    false    1174    9075    1221            I$           2606    616957 5   lc_derecho lc_derecho_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col       postgres    false    1152    8832    1156            J$           2606    616952 3   lc_derecho lc_derecho_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_interesado_fkey;
       test_ladm_col       postgres    false    1156    1162    8879            K$           2606    616946    lc_derecho lc_derecho_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_derecho
    ADD CONSTRAINT lc_derecho_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col.lc_derechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 P   ALTER TABLE ONLY test_ladm_col.lc_derecho DROP CONSTRAINT lc_derecho_tipo_fkey;
       test_ladm_col       postgres    false    1212    9057    1156            L$           2606    616962 !   lc_derecho lc_derecho_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_derecho
    ADD CONSTRAINT lc_derecho_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 R   ALTER TABLE ONLY test_ladm_col.lc_derecho DROP CONSTRAINT lc_derecho_unidad_fkey;
       test_ladm_col       postgres    false    8899    1167    1156            M$           2606    616967 O   lc_estructuranovedadfmi lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_fmi) REFERENCES test_ladm_col.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey;
       test_ladm_col       postgres    false    1174    1157    8944            N$           2606    616977 \   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey    FK CONSTRAINT     6  ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_numeros_prediales) REFERENCES test_ladm_col.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey;
       test_ladm_col       postgres    false    1158    1174    8944            O$           2606    616972 N   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_tipo_novedad_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey FOREIGN KEY (tipo_novedad) REFERENCES test_ladm_col.lc_estructuranovedadnumeropredial_tipo_novedad(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_col.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey;
       test_ladm_col       postgres    false    1158    9055    1211            P$           2606    616987 J   lc_fuenteadministrativa lc_fuenteadministrativa_estado_disponibilidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_col.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_col.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey;
       test_ladm_col       postgres    false    9021    1159    1194            Q$           2606    616982 9   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col.lc_fuenteadministrativatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_fkey;
       test_ladm_col       postgres    false    1159    9119    1243            R$           2606    616992 C   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_col.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey;
       test_ladm_col       postgres    false    1215    1159    9063            S$           2606    617002 >   lc_fuenteespacial lc_fuenteespacial_estado_disponibilidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_col.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey;
       test_ladm_col       postgres    false    1194    9021    1160            T$           2606    616997 -   lc_fuenteespacial lc_fuenteespacial_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col.col_fuenteespacialtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_col.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_fkey;
       test_ladm_col       postgres    false    9013    1160    1190            U$           2606    617007 7   lc_fuenteespacial lc_fuenteespacial_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_col.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_principal_fkey;
       test_ladm_col       postgres    false    9063    1160    1215            V$           2606    617012 A   lc_grupocalificacion lc_grupocalificacion_clase_calificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey FOREIGN KEY (clase_calificacion) REFERENCES test_ladm_col.lc_clasecalificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey;
       test_ladm_col       postgres    false    9139    1161    1253            W$           2606    617017 ;   lc_grupocalificacion lc_grupocalificacion_conservacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_conservacion_fkey FOREIGN KEY (conservacion) REFERENCES test_ladm_col.lc_estadoconservaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_conservacion_fkey;
       test_ladm_col       postgres    false    1161    1226    9085            X$           2606    617023 I   lc_grupocalificacion lc_grupocalificacion_lc_calificacion_convencnal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey FOREIGN KEY (lc_calificacion_convencional) REFERENCES test_ladm_col.lc_calificacionconvencional(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey;
       test_ladm_col       postgres    false    1172    8938    1161            Y$           2606    617043 -   lc_interesado lc_interesado_grupo_etnico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_interesado
    ADD CONSTRAINT lc_interesado_grupo_etnico_fkey FOREIGN KEY (grupo_etnico) REFERENCES test_ladm_col.lc_grupoetnicotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_col.lc_interesado DROP CONSTRAINT lc_interesado_grupo_etnico_fkey;
       test_ladm_col       postgres    false    9093    1162    1230            Z$           2606    617038 %   lc_interesado lc_interesado_sexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_interesado
    ADD CONSTRAINT lc_interesado_sexo_fkey FOREIGN KEY (sexo) REFERENCES test_ladm_col.lc_sexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 V   ALTER TABLE ONLY test_ladm_col.lc_interesado DROP CONSTRAINT lc_interesado_sexo_fkey;
       test_ladm_col       postgres    false    9015    1191    1162            [$           2606    617033 /   lc_interesado lc_interesado_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_col.lc_interesado DROP CONSTRAINT lc_interesado_tipo_documento_fkey;
       test_ladm_col       postgres    false    1221    1162    9075            \$           2606    617028 %   lc_interesado lc_interesado_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col.lc_interesadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 V   ALTER TABLE ONLY test_ladm_col.lc_interesado DROP CONSTRAINT lc_interesado_tipo_fkey;
       test_ladm_col       postgres    false    1162    9045    1206            ]$           2606    617048 >   lc_interesadocontacto lc_interesadocontacto_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_lc_interesado_fkey FOREIGN KEY (lc_interesado) REFERENCES test_ladm_col.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_lc_interesado_fkey;
       test_ladm_col       postgres    false    8879    1163    1162            ^$           2606    617060 F   lc_objetoconstruccion lc_objetoconstruccion_lc_grupo_calificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey FOREIGN KEY (lc_grupo_calificacion) REFERENCES test_ladm_col.lc_grupocalificacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey;
       test_ladm_col       postgres    false    1161    8876    1165            _$           2606    617054 I   lc_objetoconstruccion lc_objetoconstruccion_tipo_objeto_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey FOREIGN KEY (tipo_objeto_construccion) REFERENCES test_ladm_col.lc_objetoconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey;
       test_ladm_col       postgres    false    1229    1165    9091            `$           2606    617073 G   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_col.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey;
       test_ladm_col       postgres    false    1167    8899    1166            a$           2606    617065 I   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_tipo_oferta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey FOREIGN KEY (tipo_oferta) REFERENCES test_ladm_col.lc_ofertatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey;
       test_ladm_col       postgres    false    1166    1213    9059            b$           2606    617084 )   lc_predio lc_predio_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_predio
    ADD CONSTRAINT lc_predio_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_col.lc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY test_ladm_col.lc_predio DROP CONSTRAINT lc_predio_condicion_predio_fkey;
       test_ladm_col       postgres    false    9101    1234    1167            �$           2606    617330 <   lc_predio_copropiedad lc_predio_copropiedad_copropiedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_copropiedad_fkey FOREIGN KEY (copropiedad) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_copropiedad_fkey;
       test_ladm_col       postgres    false    1177    1167    8899            �$           2606    617325 7   lc_predio_copropiedad lc_predio_copropiedad_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_predio_fkey FOREIGN KEY (predio) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_predio_fkey;
       test_ladm_col       postgres    false    1177    1167    8899            �$           2606    617335 N   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_ini_predio_insumos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey FOREIGN KEY (ini_predio_insumos) REFERENCES test_ladm_col.ini_predioinsumos(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_col.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey;
       test_ladm_col       postgres    false    1178    1151    8828            �$           2606    617340 E   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey;
       test_ladm_col       postgres    false    1178    1167    8899            c$           2606    617079    lc_predio lc_predio_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_predio
    ADD CONSTRAINT lc_predio_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col.lc_prediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 N   ALTER TABLE ONLY test_ladm_col.lc_predio DROP CONSTRAINT lc_predio_tipo_fkey;
       test_ladm_col       postgres    false    1219    9071    1167            d$           2606    617106 5   lc_puntocontrol lc_puntocontrol_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_col.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_metodoproduccion_fkey;
       test_ladm_col       postgres    false    9053    1168    1210            e$           2606    617101 ;   lc_puntocontrol lc_puntocontrol_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_col.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey;
       test_ladm_col       postgres    false    1168    9043    1205            f$           2606    617089 .   lc_puntocontrol lc_puntocontrol_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_col.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_puntotipo_fkey;
       test_ladm_col       postgres    false    1168    9025    1196            g$           2606    617094 7   lc_puntocontrol lc_puntocontrol_tipo_punto_control_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey FOREIGN KEY (tipo_punto_control) REFERENCES test_ladm_col.lc_puntocontroltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey;
       test_ladm_col       postgres    false    1223    1168    9079            h$           2606    617126 7   lc_puntocontrol lc_puntocontrol_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey;
       test_ladm_col       postgres    false    1153    8837    1168            i$           2606    617116 >   lc_puntocontrol lc_puntocontrol_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey;
       test_ladm_col       postgres    false    1168    1179    8980            j$           2606    617111 2   lc_puntocontrol lc_puntocontrol_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey;
       test_ladm_col       postgres    false    8933    1171    1168            k$           2606    617121 =   lc_puntocontrol lc_puntocontrol_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey;
       test_ladm_col       postgres    false    1168    8986    1180            �$           2606    617277 C   lc_puntolevantamiento lc_puntolevantamiento_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_col.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey;
       test_ladm_col       postgres    false    9041    1204    1175            �$           2606    617289 A   lc_puntolevantamiento lc_puntolevantamiento_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_col.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey;
       test_ladm_col       postgres    false    9053    1175    1210            �$           2606    617284 G   lc_puntolevantamiento lc_puntolevantamiento_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_col.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey;
       test_ladm_col       postgres    false    1175    9043    1205            �$           2606    617267 :   lc_puntolevantamiento lc_puntolevantamiento_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_col.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_puntotipo_fkey;
       test_ladm_col       postgres    false    1196    1175    9025            �$           2606    617272 I   lc_puntolevantamiento lc_puntolevantamiento_tipo_punto_levantamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey FOREIGN KEY (tipo_punto_levantamiento) REFERENCES test_ladm_col.lc_puntolevtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey;
       test_ladm_col       postgres    false    9097    1175    1232            �$           2606    617309 C   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey;
       test_ladm_col       postgres    false    8837    1153    1175            �$           2606    617299 J   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey;
       test_ladm_col       postgres    false    1175    8980    1179            �$           2606    617294 >   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey;
       test_ladm_col       postgres    false    8933    1171    1175            �$           2606    617304 I   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey;
       test_ladm_col       postgres    false    8986    1180    1175            l$           2606    617136 ,   lc_puntolindero lc_puntolindero_acuerdo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_acuerdo_fkey FOREIGN KEY (acuerdo) REFERENCES test_ladm_col.lc_acuerdotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col.lc_puntolindero DROP CONSTRAINT lc_puntolindero_acuerdo_fkey;
       test_ladm_col       postgres    false    1244    9121    1169            m$           2606    617141 7   lc_puntolindero lc_puntolindero_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_col.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.lc_puntolindero DROP CONSTRAINT lc_puntolindero_fotoidentificacion_fkey;
       test_ladm_col       postgres    false    9041    1204    1169            n$           2606    617153 5   lc_puntolindero lc_puntolindero_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_col.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.lc_puntolindero DROP CONSTRAINT lc_puntolindero_metodoproduccion_fkey;
       test_ladm_col       postgres    false    1210    1169    9053            o$           2606    617148 ;   lc_puntolindero lc_puntolindero_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_col.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.lc_puntolindero DROP CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey;
       test_ladm_col       postgres    false    1169    1205    9043            p$           2606    617131 .   lc_puntolindero lc_puntolindero_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_col.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_col.lc_puntolindero DROP CONSTRAINT lc_puntolindero_puntotipo_fkey;
       test_ladm_col       postgres    false    1169    1196    9025            q$           2606    617173 7   lc_puntolindero lc_puntolindero_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey;
       test_ladm_col       postgres    false    1169    1153    8837            r$           2606    617163 >   lc_puntolindero lc_puntolindero_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey;
       test_ladm_col       postgres    false    1169    8980    1179            s$           2606    617158 2   lc_puntolindero lc_puntolindero_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey;
       test_ladm_col       postgres    false    8933    1171    1169            t$           2606    617168 =   lc_puntolindero lc_puntolindero_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey;
       test_ladm_col       postgres    false    1169    8986    1180            u$           2606    617188 =   lc_restriccion lc_restriccion_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col       postgres    false    1152    1170    8832            v$           2606    617183 ;   lc_restriccion lc_restriccion_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey;
       test_ladm_col       postgres    false    1170    8879    1162            w$           2606    617178 '   lc_restriccion lc_restriccion_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_restriccion
    ADD CONSTRAINT lc_restriccion_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col.lc_restricciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 X   ALTER TABLE ONLY test_ladm_col.lc_restriccion DROP CONSTRAINT lc_restriccion_tipo_fkey;
       test_ladm_col       postgres    false    9069    1170    1218            x$           2606    617193 )   lc_restriccion lc_restriccion_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_restriccion
    ADD CONSTRAINT lc_restriccion_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY test_ladm_col.lc_restriccion DROP CONSTRAINT lc_restriccion_unidad_fkey;
       test_ladm_col       postgres    false    8899    1167    1170            �$           2606    617346 <   lc_servidumbretransito lc_servidumbretransito_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_dimension_fkey;
       test_ladm_col       postgres    false    1179    1231    9095            �$           2606    617351 F   lc_servidumbretransito lc_servidumbretransito_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey;
       test_ladm_col       postgres    false    1179    1240    9113            y$           2606    617200 $   lc_terreno lc_terreno_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_terreno
    ADD CONSTRAINT lc_terreno_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 U   ALTER TABLE ONLY test_ladm_col.lc_terreno DROP CONSTRAINT lc_terreno_dimension_fkey;
       test_ladm_col       postgres    false    1231    1171    9095            z$           2606    617205 .   lc_terreno lc_terreno_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_terreno
    ADD CONSTRAINT lc_terreno_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_col.lc_terreno DROP CONSTRAINT lc_terreno_relacion_superficie_fkey;
       test_ladm_col       postgres    false    9113    1171    1240            �$           2606    617319 M   lc_tipologiaconstruccion lc_tipologiaconstruccion_lc_unidad_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_col.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_col.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey;
       test_ladm_col       postgres    false    1176    1180    8986            �$           2606    617314 E   lc_tipologiaconstruccion lc_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_ladm_col.lc_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey;
       test_ladm_col       postgres    false    1176    9077    1222            �$           2606    617396 :   lc_unidadconstruccion lc_unidadconstruccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_dimension_fkey;
       test_ladm_col       postgres    false    9095    1231    1180            �$           2606    617391 @   lc_unidadconstruccion lc_unidadconstruccion_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey FOREIGN KEY (lc_construccion) REFERENCES test_ladm_col.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey;
       test_ladm_col       postgres    false    8837    1153    1180            �$           2606    617401 D   lc_unidadconstruccion lc_unidadconstruccion_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey;
       test_ladm_col       postgres    false    1240    1180    9113            �$           2606    617361 B   lc_unidadconstruccion lc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_col       postgres    false    1180    1224    9081            �$           2606    617356 =   lc_unidadconstruccion lc_unidadconstruccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_col.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey;
       test_ladm_col       postgres    false    1180    1193    9019            �$           2606    617371 <   lc_unidadconstruccion lc_unidadconstruccion_tipo_planta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey FOREIGN KEY (tipo_planta) REFERENCES test_ladm_col.lc_construccionplantatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey;
       test_ladm_col       postgres    false    1180    1202    9037            �$           2606    617366 I   lc_unidadconstruccion lc_unidadconstruccion_tipo_unidad_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey FOREIGN KEY (tipo_unidad_construccion) REFERENCES test_ladm_col.lc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey;
       test_ladm_col       postgres    false    1180    1208    9049            �$           2606    617381 4   lc_unidadconstruccion lc_unidadconstruccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_ladm_col.lc_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_uso_fkey;
       test_ladm_col       postgres    false    9133    1180    1250            1$           2606    616810 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_ladm_col.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
       test_ladm_col       postgres    false    9017    1144    1192            2$           2606    616815 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_ladm_col.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_col.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
       test_ladm_col       postgres    false    8812    1147    1144            3$           2606    616820 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_ladm_col.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_col.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
       test_ladm_col       postgres    false    1144    8820    1149            4$           2606    616825 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_ladm_col.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
       test_ladm_col       postgres    false    8820    1145    1149            5$           2606    616830 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
       test_ladm_col       postgres    false    9125    1246    1146            6$           2606    616835 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
       test_ladm_col       postgres    false    1147    9125    1246            9$           2606    616850 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_ladm_col.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
       test_ladm_col       postgres    false    1242    9117    1149            :$           2606    616855 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_ladm_col.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
       test_ladm_col       postgres    false    1146    1149    8809            ;$           2606    616865 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_ladm_col.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
       test_ladm_col       postgres    false    1150    1144    8802            <$           2606    616860 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_ladm_col.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
       test_ladm_col       postgres    false    8815    1150    1148            7$           2606    616845 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_col.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
       test_ladm_col       postgres    false    1148    9007    1187            8$           2606    616840 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_ladm_col.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY test_ladm_col.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
       test_ladm_col       postgres    false    1197    1148    9027            �$           2606    617406 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_ladm_col.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
       test_ladm_col       postgres    false    1182    1181    8998            %%      x������ � �      �%   �   x���K
�0 D��)r��D�oW���Pp%��4)VO�#�b�j��
ٽa`È�s��0Ox�q�甍�U�1�ؾ�ګ�2����J7�  �D�̇�/G��FK�z�j�o9�GJ�#�Ð��AJAd��M�]��q��9l3���Xfg�rf� �@�+�Yp����A>��q���C�-#�>      �%     x�͑AN�0E��)�Q� Q@lJ�bU)�:�ʒ��N��K�8B.��@EPY�c����|�e���ۇ�~\7/�ͪH�ͨqVB��ζ�l��SS�G�Ms/�i�Q��K��L�(BK�VsV���mK��-gP[�D{�`v�(��E���`�;!��P@��E�:R~D��@Zױ����n�mv����SS?I���r�E^�7���g/��Ў=�o��L���X��G��]J��ezK�I\����j��K4��b�0d^*�O���{l�<�? �e��      &%      x������ � �      A%      x������ � �      7%      x������ � �      9%      x������ � �      =%      x������ � �      �%   �   x���˪�0���S���޶E��\	%&b�Ħ/�έ/v���Bvs��>�I&1Y��V�t��wiG�.�\I��p���fPI��}Fb���X��UR��)�>�������&�$H�t�~5k|#��������|��CgH�)��9?ij��d��-b�s�asH��R���&j���3��#+�?�I#�	�=(��������~{F�{��w����ntQJ� ���      �%   j   x�363��qt�w���3�7���J�sR��@�.���yř�y!���1~��@!#3�*{xs�X���̌TA�ch5МT�8�K��!�AY\1z\\\ �G�      �%   �   x���M�0F��)���7�q�qEB*L�J	-��3�s��,ȟkV���d�e����1NQz�S�uיB���`,:��ԅ�I%Yj���#�.�XY):��q�k,,����AC��[ռ��{�)�V��tÚQ��hEB4��F�ypF="(�o����ډ���ɐ+�=&�^��6�QC��	��~����      �%   �   x�3�0��qt�w���3�7���J�sR��@���%�)�A�)��Ee�ə��!���1~��9�y�@Y/��edaA�����y��PS]�J��fZ�m��[ijQb�Kj<Lb<XX!%U�!�edi@�MƜ�%EPá,�=... ��r9      �%   �   x�355��qt�w���3�7���J�sR��@���%E��%�E�!���1~���E����� N���Ԅd�9}2�R���$S!f�^�S��WHE�ZeJ�UF�!�%��aL�If$�d��_������3�?�*����� o�p	      �%   �  x����R1�k�S�07�)�<�T`Rd���Ⱥ6����3�QP�����Kw�g�T�_������|1�^^ݬ/o��w��y]v�dk��o�}�˦/�����!���W���JmjqA���Ɖ-��A�n�>�q$v���G�@א��[Qo�L�z��������"�(Y��H�j�2�ݛ�iw��Jl�,��9j>�9�O�:z�əp�zpK�{_&�r��s-�h���$���l�y�A	�[��)�2�x��'�d/�O��x�J��$h��<��o�~A�(�/�j���6~�G�ɪC���+�`�qR0@�j1?��H}�F*�9��(���(��胱@j;��4b0�� 1�Q�iaݰ�PV�xRn�����F���y�/��f@=�J��%G��_�/9�������\      �%   !  x��T�n�@����2A���d9��T��q�\p���a���*\�K����B�HTI�cfv�ż�^�?ի�m�eY�g�i�F�E�&��x��
��z�U�je�9(W���P���L�F�-7�?� 34u������C�x8q��X�ck0b��(�Mg��������А��"dBć�����v�P��AO�V�����},�z��HY�@�v����0�t�OQ�>��%��Hc��4,�;�%_�==mz�0ZDM�>mՐxƯ���Ўo��G��I�Zyt,�����`XF� k�SQ��x@7h�^4�m��nVFje�y��=X���8.{�[��`�T�0�m�T�R�����S�a�E��v�y̪X�+ʼN�����ifD�9$�1n�|9t<||s�������mz��a`~�7բ�j�3#�c'F/��F�s2�ʲk9���'[�񖹲ݺ���|�̙#�<+�jc��P%K2
(���H���vy�������)�;�{��w�?�g����ﳃ      �%   �   x���M
�0F��)r�R͢�RE��qU!e�MJ~D��G��l�B����&�c�&q����v9;PG��:Q��z�ҮQkiA���c��bāo�/X���Dx����l���@�FIn���i^��B�̦E�>�˺��H ������Q���c>�c����*��7��=,Hݧ�p�$9'{+:͊~�6x�#�ڃ��!��v�(�@0�K      �%   |   x�343��qt�w���3�7���J�sR��@��y%�E�9�ə�y!���1~�����9�)`N���̌9�¹�)���E�P��
�A���X`�l�Of^j"�9��B��b���� �QZ�      �%   �   x�312��qt�w���3�7���J�sR��@�������F��!���1~��.��Y�y%`^2���ȈT�9C�!FAY@c�I5ƈ3�� �� ?/b2h�	�s��'���'g��|�"����� ��]�      ;%      x������ � �      ?%      x������ � �      :%      x������ � �      >%      x������ � �      �%   $  x��SKjA]K��!'{�X������Q��j����Z�s�Tό�2���~������������v����l�c�X\ ]��e��=�/α�O�u�{\lS��r$��\�x^j���}*�&���T�"	A8r����
P��<�Ć5�!��a`��JP��3	%`�
�������4�.4���~K�J7��'�ܲC�ë@;��+�]�p�v��N���]�f�o�!G</�JJ��b�D�4R�Jt�5�l(�!�/E:p���B߱�3f>־N�*+���3��cͬ ex&}���hN��-F�`%rE<F�d�t��'�G�y"�{�5ZA*�k�dQ�������m�1�9������~}2��)�l��X7��N�u
giZĿmFнo�a;W�������i����څU�"��Ѹ��̊�f���y�.yb�iT�j֫�V���ƨ�C�E�:Jvx�Ɩ�-q�����������b��߆��ǥ�����D����wO�4�h��5Ё�d�?�+8��H��}_��r��3Ð>      D%      x������ � �      <%      x������ � �      @%      x������ � �      5%      x������ � �      �%   e   x�311��qt�w���3�7���J�sR��@��y%�!���1~����y%E�9 N���Ĝ�9�K����&!x@�,H1ʈ�n������ �&A�      �%   �   x�3�0��qt�w���3�7���J�sR��@�A�)��Ee�ə��!���1~���%E�@% ^�wx3��elaF������������#K��q�F��a�'P4>$�hN"�T��B��0��dl�������[�4(�1U��f�0W� 	td      �%   f   x�327��qt�w���3�7���J�sR��@�A���%E�!���1~��A�E�9 f��ednA�9���EI�y���l�I�$�d���Á��b���� �`B      3%      x������ � �      8%      x������ � �      �%   �   x�314��qt�w���3�7���J�sR��@�A�9�ə�y���Ei�ə�!���1~���y�A�ŉy%� ~��P�s�Z�m�!���Ԝ|��eP�\K��5�\�T�bt1B���ȀlӍ9�K���BY\1z\\\ lp�      B%      x������ � �      1%      x������ � �      C%      x������ � �      )%      x������ � �      2%      x������ � �      6%      x������ � �      0%      x������ � �      �%   f  x���Mn�0���)|�($��˴]R@@�B��� KI���Eo�5��b�h�.R�<o�������ӗ��y9�ޓ,
�j���Њo#@RR��I%@�<�d9lY��n�"����}�ޭ��_�։	�`E��Yٺ�&(� E�<#��VP2Z)�m�Lqa�[���a�u�1����d�y��'�3.���,粝�������e?�r���	ZS2[��
�;WW}0��eX�ěz�V >4�A;ه��a��������>͢׌�cw�ڬ�53C/�BO�����]��;g'��[s�֩7�mtM��|s�Q�ü�͂lc8n?�Rϼ��V@%k.�[�]=S]�a�� �Տ2y      �%   g   x�33��qt�w���3�7���J�sR��@��y�)�)�)�i�ɉə�y!���1~������E%�)`~*��̄\�9=�R2�2SJs &��b���� o':�      4%      x������ � �      �%   j   x�3�0��qt�w���3�7���J�sR�����9���y!���1~���i�ə�9 N���4�9�s�KsS�!�!s�ƙ�f��I�$(�+F��� �kDq      /%      x������ � �      .%      x������ � �      '%      x������ � �      �%   �   x���;n�0D��)rA6�JAJ�8)W�C��� ����v��)�+F����Ŵ�'sѦ,~�y�������;k�E�qp�Bhޘ��;z����fv�>д���niz��I�z'�lVf��ߔ���]ۄ�� dkh����0&��F�Qȯ�%�S��#/�|��Z�����UU�B��o�Jdo��t��}X�m�"}+��1��!	�!:��Q/G�>>�J�o��:b      �%   |   x�316��qt�w���3�7���J�sR��\+J\2�R��3���S�K��3KSS8c�88��JRA�48���،l9�K� �A@���6͈ӵ�<(h���s����1�b���� *�d�      �%   x   x����qt�w���3�7���J�sR��\+J\2�R��3���S�K���RS2�9c�88��JRA�48�˒l�9�K� �A\�df��Zs��ehH�qƜ��p�`L�=... �xc�      �%   f   x�31���qt�w���3�7���J�sR��\+J\2�R��3���B2���\�?NN�⒢��ҢĔD�H�����r���c�ᗯ��fM� �kB�      ,%      x������ � �      -%      x������ � �      *%      x������ � �      (%      x������ � �      E%      x������ � �      F%      x������ � �      G%      x������ � �      H%      x������ � �      I%      x������ � �      �%   �  x��VKO1>;��G��(B��F�@�R'��dwH�v��G��֟±�^��u�NB���J��׌�3<�´6%V&?�.���g輱�<8o�ʯy�w6�GF��PFgKe>�����l̃11ra�Ba	�������@j#��ѫ�H��m~�T�Z��Ӭ���o �q�<�M(���\.,��qF@�FE�%�,ϐ>3�3�қ����"+t��C����@��\F�y�|o�J�K��X�ś����[��E��7�DwA���[#=]´�37��y�����.0c����>��|J�]a�7��Z�L�d�[ކ�di~M+U�[P�P����V�y�����b}���{���M;��Ig+ؗ�m�^"Mpߵ w(.��X��/��e��	�ͥ�A'������OZ�}��=y�����
t�O�I���X*�|����vʧmY���2�-yT4�,ǔ�ͽE�!�dd��}���-��#P�� d&�5�y�]��yXN$w ��⊏��%dxU�e+��q�INvH��G��f�����wX$"z��&��PO�+	ll��'n�֭;!�u'$--hq*�$�W���nA!1roWT�Ⱦ,���'��E]�+�cz:��{����\�/8o�@��]��ˑ�t��I��b�(o�Kg�,D}%^�/�3k�Ĺ�N9���DGʈv��hH�:Y���
��x���Y�)M��T�,�\�����?.|{�
hS
2%Q��u:�ߛ>d&      J%      x������ � �      X%      x������ � �      K%      x������ � �      L%      x������ � �      M%      x������ � �      N%      x������ � �      O%      x������ � �      P%      x������ � �      W%      x������ � �      Q%      x������ � �      R%      x������ � �      S%      x������ � �      �%   �   x�321�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,�������b�qBU*�%&g��%�(��kQH� r�M2�v+�V��twt��221��k9���s �0�:������51z\\\ �Go�      T%      x������ � �      U%      x������ � �      �%   �   x���1�0E��9 ��N0w�X��*E�q�HiI��G�b$,������o�Vk֧�L魏i��[���q	��A�J���{k�4�3N�h����б�ezA_�B�Oң8Y(���9�b|;�Q)R�Ek��U��J)PXoR��F�Zm�#�XG�۽�b��~i�x@0y�����߼��? p�      V%      x������ � �      "%      x������ � �      $%      x������ � �      !%      x������ � �      #%      x������ � �      +%      x������ � �      �%   6  x����J�0���)�I�~��1Tz�"N��l�$�4%k_�[_��3G��qޝ���;ʟ�V�F靨uU4�x6|+uc�C���z��eQݨ��M�e�ѺDUE�z�Qc�n�^�x���3r����YKn�=��x�˷W%���F�$��=9��c{xj��;�X#����黽0��Ia�Й3���AC�F4��S?zt���_��L����cG_m� ���1�G���)��'�O:�o�� s ��I�Gʀ�;��ҝ�I"?I~L����x&���/�ta8�i��:p�      `%      x������ � �      �%   �   x���A
�0 ��+��%�@i���"�
KLW�lhZ�_>���(�'g.3Z)��H��N�;�<G4u�5�ACl��
��4X����>�����
���3���d>M�B�읿�"<���8��J��P����^l�;2����PH)�^�      a%      x������ � �      �%   �  x��\Ms�F=S�b.[eW12�����Q���ȉ���)U�!0��*S?eo>��C*�\���������7�{��!���L�랁/�f�d(b�~�����Lַ/�~u����V<�ox���Y/�oo�/�A��vr������$�[�l}#7"ͣG��D�EvN��Wy7{Ve��`�C�h<��[�Xd,�A$9��xw����ξ���"�xP�"�s���%��8ۊ���=��{N��Ss~��8��=DaI��ɘ��#�]�I��q(�ç�^����~OؽHD�c�)D���`�%s��.Od��T��kj��c�s&r�&Q�G(jp}��ԠW�b�ף8���O$�o ���Zv%���#��	��T��@�õ�c9��D:�:�=���@ȵa���w	1��-�iZ,my�f���N&"[�q�ew9�#`�}5�����\��}[��L�'w�%��X�R�"�#q\�4q�'ϖ��8O���K����)�%�Ȱ�Hi-��-=�8=�zzK�D3��	��$��S�" �(�ĝ��|[f.ƙq�0��#���������;��D��O#Kb.l��$\��֯a�&�^"6#�]5���C3�Ȕc��w����z:M�~���%�j�
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
���(�n�S�Lay���C�c��e>w}~��yR�����{q���#/���	G�G=��x�D����J?�U�n�|�[W���-��u��m�яG�5C	��C�������l]҇?-V_�|�CytT�Zj�6��g7[�T��<�������h5�^`؇<���ފ���|�Y[C�F��j��O���#��@���N�����������      u%      x������ � �      v%      x������ � �      �%   �   x���A
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
����i"�̃��<R�ζY���9*�ǝU!r�[f�Rz2%Q��ǖ�?�b��ߞ��YÒbL�D��u:��pa�      b%      x������ � �      �%   n  x����NA�ϻO1`**W�GP�'�M�-Z3;������#�bvvAЋ.�����ׯ�)�h�9C4��&����yRMpS�!V��U�7Wc�!���hf�Fx!����3
m��yr�W�	�;{ڲ���Q%�0�\G�_'���~gI�Z'T5mHT��Q&�U`b��+�w��.��K;�[fWd#�kAD}G�$#�'�Ɂ��5JC %ʚr�,��a�)��L��w��<�x���5+�^RK��
�,m���dHcP�.�v[̱�3�|?G̳��ī�̰jЊ���P�:��t��odi�A$��?��@�s)#�`���=����,f�	�&蔷��Y}�47Σ�ě��нr�+��"�:      �%   �   x���A
�0E��)r 	��]��L�BqU!�B fj������W�n�ϛ�MYmH��ztV+m�KQ��f/��E6j���,�hd�>Na�:�Iߑ��t�3�r2|&`������L����9b¢5yO�UB�rɀYo�ħ�Ӳ��i�&�o���O޹M�A�4S����E�o�ӞSJ��      c%      x������ � �      w%      x������ � �      d%      x������ � �      e%      x������ � �      �%   �  x�Ŕ�n�0Eg�+���+�%v�lNӡ�@�%�e �*)H�&c�E?A?V^*�:�AϽ4���uv�z=��bL�:�l{�����ڃ~h�jj��6�������澘�e���<�tgcMZܽ.���G�>k
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
/}L*ZJ���jW�F2@r�9 ���&Щ���oJ�:������ͿQf_6H�m�Q���L"��|:���^,�      f%      x������ � �      g%      x������ � �      �%   �   x���=��0��>ENa~V�D!]����!�E��q�\������dY��<����`+w��4ڒ�v�Cq�d��,��/!y�������`�ex���j;�U�{{�Q��;+熝k�`c2������d4'\l��a���t5����P���%+�E�;g���bP�f�l"���&�&�k�e<��&�_a�2�=�κW��Vk�z�	�7�s�9�l�Ei      �%   �   x���M��@�דS�	��{�ﭢnĕ0�3hH���x�����EAp�VMUE��G-�R#z�5lа8]��r]銎�Ĩ����U��$
[r��{tÝ��JMԖ�D�j���ف%H.'OF� ���!r&���8�{��b(�Я��g�M���P�!r�VF��z���Eh�2�H� p}�)>Q�����1�g�� wy�eWݙ�      h%      x������ � �      �%   �  x��T;n�@��S���U$� 'E '�
@�vG�
���mr�T���byCJ���*��}��3�����q#��k�%�%ԋ����ˢ^�S������ż�X8d����r��7��wR}�\]W��>�H�CYj,��b����@��CdJ0Nli�G
17�ga��D�ƿ�!@Q� ��?���9%91�l���ű���%"��D�
W��<�U�r�cK�J�A��c�|�NW�(�,#�ԁLGάK��vZ x�@�����j�&��
ܽ����j�M���`=՟
�xj���s/_P��	 FN��w����WH�i��L�z6�����/K��s��2Ҁ�L,%�嬌 qQ�����#�5�s�t�Lg�Րl.4`��������B�M��͈r���6U:W<���X�nZ
~�)�!J��CP+��HC����E4���!�YfJW�e��iݯ�o�6����uXI��[���b<��V�|�e*k�xEͺ����>T���h�a�/2F�n.ԡ���p-��П��ً���[4��.\�C�A��jw�P!�$�R���p��0�P	��ч��~+����?-A�:<ӖNnd�����	�%����p\R3}�F��h%/+      i%      x������ � �      j%      x������ � �      �%   �  x��V�nG<S_1G
Pʒ$7�!�"��� ����r�����.�������o���KR=���w^=�U]5<}���R*v�>o�-������.�.�Kޭ�ԭߟ�g�����з��-�7�����d6y�+[�'mt4ܥ�J�agj=c�}C^̧�����Tl��9TbJ�s�FB��v�c���b4\Y1��>�3��4TD�Ⱦ��1��&8�{��BBJ�5t�{�2>i�O���n)]9��� ���~���	��g�8'���������x2y�� ���3m�nԡS�N�C���8[iʀ�#ǥ�62B=ܦ�	�-�LK��1�
臈�ոQ㔽���=�}'Ma�ӱY��G�!p#@�4�ׄ��l634�#�ȴAv�c�/wk���F�M��NLA5}�44u�>�Y�H�g�%*7)f�ҲV��D+��@��N�w��#��6I��{g�f�e+ݣ�0��G7{T�Q���Bt�S�c����g)��y<㰕����m�$���j��1��0����Tj���5٫�;B+�����"�U�{�AdvG��h�F�%��
�-�V��L̟�dq99�EEV2��G2�}��)�}���ִ1Zr[�kǑq�V{	#`�G�҅C���N��	 \f�1�<XN��~�LG�1��L���x�^�r�j4����Z��w�zYKQ��J�UW0����s�L�5����n�S�^�����5��� ��G�vv�U�~�T�Wm��%lr�>'I5��Mn�����n	��dt�,2�Y��`xPu�ma��6�1g?�8@����[a.�W{W��3z3c"���3^t�f��	d/�J�3�@yD�P���Z�E�l��~��^Җ�����mވ�v���B"��ݿ���t�+)�TJ!�z��Y!�t�Xu��S� �刃��z�ס2~�2��&W\���w���K��k56��c�~�z6x�����y&��AJl�ɠh���Q'o-$��JoH^�?|��S�Ǔ��q/(TY�5����MR�A�����OM+�%R���Z��?z-��gݿٸ��kk�&p�^<��d�������9=O��${�~����;��� >Q�2~�2�_O�4�{����V�������_���?>�p|pp�?���      k%      x������ � �      l%      x������ � �      �%   �  x��T=o�0��_qcA�8m��q� ��F� ����Q��d�С�����(�N���'Q��{�ݻ��ŭצ��USY��zWN��oǟ��Ԭ�1������t:.o\k�����W�6��s���nV�c�S���&͚�e�^��O�'mH�G�_\L"%Gz�Lm[�=5>n6+��:ܦY���T4�-�خmE��y�_Z�xv��l�����)U>�A�x:�.���|�~��݃	��7�?���ʁ��}R�Tʥu&ʣ�tzf�G�NB[��֓۩���(���?����(X8+�.މrk�<B����!�H5:�T�bv3ﴑŤ���O�B���y�����n�n���>i��Y�]#�	E���u�9.Q��Y��X ��^�ze�h�e+6r*/���sx0-�!�c�o
+'/����B~�~�
�Hk�^7Dn ����1[��3�{A�����;�;�Q�w�/s?v4w{h6���j�.v��ȟm(=�I��`�|ݘVj3n�sm%m<��Q��;+?�,�츹�_�}�to�=^Sqk�X����������d��4�TgAr��%������l��|��?q���3b�c_��ǩ�e��P�MW�g�ݤ��'�G�r"���Z����ܰ��
����e�v�=σoe*AF�f#-J	�����}�ݍ,OvDH��;�D�&��Q��E]���Aܘ>Z�4�t��-̒��6�@�-�)�����`�W��      �%      x���MN�0F��)� U�l*`W�(-H V���=i]9�5N*ʝ� �^�Iմb����yr���V��j�ըm�^>���Z�tP��T�ԓ�)�	�6�l����+q
���э�� �|#`j��C��|7t������4ʫ����Ȃ���O�g,&�awS�F3��V�V[�#~�!�=�&�'�ޅG�����B���lM	�=XGi&2�$f�"L�G3^4�f'1}��Tw�S5��"���9L)���D�c��������憼|�&/�!�~��o�|S�y�\��      m%      x������ � �      n%      x������ � �      �%   �  x��[Ko��^ۿb�	��D�v�r�������E bD��1Hˇ���d�EEw����̋)).0��b�<3��9�y�yv1=z�R�����d������������Z<�+�ĿM�ӓ�U�v� �RE�TmB���TG~9:=��r�E'ox**N�釛����?>�]̂,9�K�T⎯+L����X~d��_�����0߫L�ފ�~��N (� (��&������m%��F֪�q��#I����� �,[���T�6~ÿ-ѲL�|�u�2:챭T�6��<��^�Z$U|Uӣ,sւ�_'�R�Zx�DO�΂�[Zt��G^	0&�L�Zķ��X^d�8�LXc���<�3���c{�t^}d�s��g�綋{������r���6v~<��~9aY� �D���Ѫ]KQ5|UoEO���x�`�Nn�^�64���8@�����"���+^��� ��M�����!�!���5����A����Fo�0>�ux�
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
���!�r�rx�{���D�����T>�8SEa2�⼟����=Ty����E����؁��Ç�Nh����4��r���0b9݁e���J G�,����q��q@z��"LfXΏ��TAS4-3{��s����|�/-����E�kE��1_����{��I1�%jWp|���]�s�T�\<�v��d�y�tZ�+��S1߈���!��_�.�$���w_f�]�����N����vJq      o%      x������ � �      �%   �   x���1n�0Eg�<@aȹ��vs�%�@�m� ���,y�:w��Uj��s�n������5{�ȫkg�#�����q�z���:���8[��;\(D<���l�9�D,�r�O$AЙBn��n�`!��_b�u{[ o��U����!��D�0&���k���
��[�$��>�drK��S]�l�g�ƴ!0ɤ�`?���d�[bO�>_�CV�(�uUU����s      p%      x������ � �      z%      x������ � �      {%      x������ � �      �%   $  x��U;o1�ϿBcF��kL�vrRyL�NvT�ī��1C��[��c%uw����&%R?~�M���e0���� 5�|qyu=���j��!���x���K�
�w����&;ΖqE18�
���[g_��[�	vׯ�}�"Z���
m˨VF�B��a�U�=^���Y�!)PP�o�������tv0���w�%�p[�}ª|���&X2>���EQ)�TbC?��T6(�P��t ��Px�`��iJ���t*���'���.��O����W�w��eҠC4���G^@Qj�}p	6���WT���z�\�G�8x_���H����ʇ�Œ�mI	t���Z�MjD��x�5��E`�y�Z���[͉%Z�[�D4�#P�@=�R�X*�c��?#����]��t�1o���}���& f����O�܋t�P���ҤhC�rNt�������<#���.�Ѧ��$�L�,[:��7���WE�4	�	��i0�]�PRĐ*&I 7�{�� \��^ry�F(`�&���կ��M�ƫ�	]��6R� �2o�FGLcC���Q��ہ^�g1>=fk|q1ev�f�$��5&�w��T���8Ja�UJ�c�3i��DH,��)�ym��U����ݪ_�%����l���C�R���hF6\��t0�-�~�6�[Jv��S;��Z�Nv+e�:��J�$�>n�6��]���d���~q0��H�������Ա0I4�&�9��A����<?U������Ӡ)4��/ݨ�%�҂"�<������v      �%   $  x��V�n7]K_�TI�]	N'0���Ja�!'$G��7^z�Uw���z.9/�V� Z^�����sϹ����F]Aƭ���J*��z�|����j����V�����l��]�NQ�KM6:,��4���i����n4-U���ߚp��]��p����Y�YA[Rc߆�0�Ո��P��[V��&� �	'�Y�X<_I	#"���i��H}q��p���MD�ed��YP��3�ך:�	3��:�mm9?�5�c�B�1Z�mYӆg+�*�����.LD�
|l��H!Oy)A�D��8��*/�㓲����a�AUpYw�D�Z�@@�'���L�����)���k��?����4�J�3(�	
T�<ӧ��|�U&=���]�+��~�`b":C �����Li�R�����K�R��\���S�:#����a���@(E��7��$�b�V�qb1���=)Oщ���q1[̦�w��[d>���")���=�Mb	qbE��g�CkͮK�M�B<�	���H �����E:��d��s3~��:���8� ġ�Zɝ�\��״T��S~�*���&r(t[6�ޥ$Z)��>���:�EP ���ȶ�i�8���_ί��řO���>�d��I���af�e��~�{ъ��.��e/����5h�6���������(�J9Ɨ��iU�9��5�)�֩%ÀGj��y�Ͷ�<��^S��k/�s�*Ǚ���wg���;�am�Η�w�I&m�2z~xO�6�h�Fzj�.�t�<��xzx.<;i�:�;���nF�2u�P��{ޙ�e�9��Jd)ٴ��ں�n�-�?T8ӕ�-�)�S�Gy�<os��:��k�_z��@Y�g�~?_�H^���tN@i����`d�f�?خ��57Ǥ�����&�4|'�>X�jn�H�s~ֲsZK�t:�l^"Sr	Ks�qOK8�	2���-e�<p�F4���,���c��͊���"ߌ�������
�5xǟ#y����ry�qۍ�F:?L���0���      q%      x������ � �      �%     x��P�n�0�����F�����v(:�(�JQ�I:��c��t�&�w����#w����-���iO���1�F5�[���ڼ&�\�Wa�f��bS����35y J"���P|��/���"|$�heȻ�#A@Ap�%��@k�ox���d�1��Vӂ����u�T�W��mѠ�ZM(�<���u��W./Q�%Ss�֮n9�˹;\�RrԑR;�U��?���mq|�����Z<UeY� ���      x%      x������ � �      �%   �   x���1
�0F��9Ai)K[�B�M"��&%I�3x�^̶����}߃�R;��egP�DgEU�j~�D��!�K&Ҥ�����&x�ΑfOR��r�fr[��i�b�43z �E=ց��l1�g�k��YoQ�ҋ��%4/�Tg����o�^����g�>������Kh�PJ_7�z      r%      x������ � �      �%   �  x��U�N1<�~�?`�x,!9�%�HAJ�Ҩ��%�<���J�79p�'쏥�1�,�47O�mWUW�̎�K�ظ��7Z��ζ�����E��u;���8j��:����57W�as�B�\�e��W�r��qA�;9�5���w�E�~�V(Ի{7MQ�@
G6$��!�$����uKO��TD�J�\�y��k��=WHϟ��֡�!iix*z�$�I�����5�@A8�!���$�Q��"�t�7��!|0��神��sv�p��w�� ��.4@��UΜ:ƑP"�}+߽H�2���=�8��x��^ Uѫ
v������O�ѝ�d�A�
��J�V�A��U�m�L�aH9O�V�X�Hk�ʞ�<�>�w������2<i>WH����_�
[�{In��4��A7�r���v��o��;�_��:!ԝ�p��г�\�YQ���c	Κk��S-ݰ���d�w�4���6ߴm/)�!����l�nw�-��}٘g�.]B��g����Y� ����<�A�v�]�g B�i,ln7L)�	}��d��bޗ.:+BV��m,��]N���Nˈ{�i�y��(��ͳ��<��y�I��[v" ���b��Cw
���G ��c��Kq�ұ!�}��#<�������@�����?uG���ˣ�;N���W�3�{s0�L� ��a      �%   5  x���Ak�0���x�D�
��c �Y��$�G�*b�����b۩e��l�$�$��~I����U��̜�K�F���v��eNg�� ���M�|%�(<)�o�8���(���S�
/iե��
oS@�v�����ؕ��x��W�t��6HŞJ6�����b5��6E��7JwO�zJh�~aB��2%�#��2����k���4Z�G[��3�X3����U}��n��n�y;`�����c$û���ؘD��q��u���do��c��h���ԉ��ǆ�������_��I�|4�t      s%      x������ � �      �%   �	  x��Y��9��_�pBK�62z�٠����4�*JM�U�a��Ё��3���9��j�^�j�V�H�}�s��|~~��ʍ�^l��tf����ů��~��7ۇ;�<�{�p>��{���o3�yk7�ٻ�g�go���<Ko�o�.k�ȓ��/�G��[���1���*7j�Mn+U[�4ecԟ��:��QƩ��[]�Rm��jc|a��*��P�����
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
R�`��Ͱ�{�[S=������76 �hob�E���AL���QR:��Cyh�؆�[GY�h4�|�������B,?s����s-�D�����"c���r4�:,LO��.tBR�d�J��#�?�P�2l���4_�u�NaSN����@�睝����PS?5u]����G      |%      x������ � �      �%   �   x���1
�0 �99ENڂ�%�*�8>��W�����<�����^�R�t4�i�C_o����'8�PX��Hw9�$�ݩB58�y��f���Lf��d��|A��$�hz
3w�u��3-Ֆ��˹�W9R���X�Z���:R�      t%      x������ � �      y%      x������ � �      �%   �  x���n�8Ư�S�����	��+`��HtuF{�BB&q[�;k'�vަ0���[^l�'�)`��J+U��N��}��߁�{ݺ���|��4�!�l>�z?�8�O��|������=�?Ӕ���b��5��u�z �F���muu���c�1r�����H���6@�8"ߢ�\p�_F�D�?I�g�!"��8�Y�|A��0JV����X",��q�[4��K����J��Yнq	�7�:��:�+�~Ƃ���/�%�)m�;@R� ���! �;x������x��$!,�	I�h����K�ȃ���ȁMd���:<>�/hBUpjZ����w���$F!O�?��b���(�dF�w��1�gF�̌� �"�U�Ɯ��d����"A�b��VQC#G\b=Y=,�@~Ƌ"�oW0��m�{�u��6�k��"�PSU�������BYQ��8�.�;��*���err=9{vF��_yF0�[q�PFaN�#�>�l��!�^��Nfy�	�X�&~E���c�v]����v���m�b]��X¡�AI�s�KO�-y�2g'�3�e{����m�*3�/��3��$A�b���=+��c N�D���B����4��{>I՘�a��8|�.|�����I��+Io����I���P�R���`XU5���
X�\����ӶgL�0n�����d�H��D$/ ʯ�_�q^:�8�����(�._E�c��xx&��xN��d�>9�:��5��4)�D�Z8ԔA]~�*Y����/����?*[M[�+SYRT�T���֙Z��=Y��d�H�T���/�ݤ���aߩ��֘'DG�K�����������xkv}ƴ��m]��+:�۴���mg�78�1��pB�1��O�5��^�쉽�5)��[��S+�w;�`�	m���J�\ܦg��\����	ն����{ێ��\�ݣs���N���m��D�r�4f�^��W��`��~��Ԧ4Q@-۷�c<t^o��/TB�j�ӵG6d| Oy�š���-kͪ���p�Xm�Q�_��T��ԯ�=�`�jY	��N�i��fs�6(��%��p��꣜0{���	�=F �2j;�9%��nrv�o;�]ߩ����w2%�:���X�&������-N��AI�dq�j�W}�mZ�Z���#��U"T*:����UEC��h����٨"�Z���p��i�4)F�5U��-�R��2("����ɕr�P����2S;X{B_(f�.����c�0W <�eu{S5�/���Ӛ�㭖S��ߘ�;��/���k����&�;�nǔ>N�np���Dִ�c�i_�`۽�@X�j��5��ݼq����*6cF�.6�/��'�э�?��F�I0SAU��ʍ5�*԰/�Z�T?��=��ӹ��=ٕ�O�A��T� e��r�?��޳�r����A7S�h��w^����@�m}�Օr�wg�����?-�!u      }%      x������ � �      �%     x����J�0�u�y��L��.K�QW�Nr�+��ҤE|-�3�����������5��ņ֬��&�ت��ޔw���W%x���uZ��ђS�u��t�>P�b{+�������� ֤A���K�#_�V���c�@����H�,�X�����N���OX�A� %t���=���Q��k�����8'��r�i�9O���d�G�rg��j�(,�� �CB-XɆ[�o�ojr�,�U�������_��	��B�y�/a ��6M���3      �%      x��]K��F�>K��G��Q��ׇ���{W7,�'�,Vv5{YL����:���M�[���/"2�d�,ɜ�����L�2"##�xe��>z�6w�e��&�\1���˫�_�_؇��i�?Ο����X��\Q��J���<z��[gK[������j�����'��|m�y�����o������G�N�g��d�����Jl��C�u�&y�2[,M���&�[�}�|��Cwf�5<[��p[$v��ft)���ʜ��J>�nm�l��X�}��hFx��\�٥Y&w��޺�!:��M`��~�]�k�13�t~���-�'YHӾ�hGO~I�Ux��;�����D��x_����%	�sK,aJ>��;���GH�~2�����LU�Ԍ�=w�:kψ�ͷ������Z�%�O�)ˉ��b~��wқߕ���:_��w��z�KI_������Vf]��������6Wef��[Ѕ����A�Ijl��bU@�R��بuZ�e���W�&u[��o��uC�K��}�=G�^��UxfBK�r3i�*ָ09��l�N{|zn���¥�a�QvѠ�E��8������CDM������MJ{x�A�0�^��Z���Km�mNl̅5�޵�C�m?xR�u>B�0JE�^s��K_�F;�C{=yA�ݾ��l5�!?H�}�huJ���9:MH��K��5��KQ��~�c��I
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
�j��U4�5���My}�)�t�j��q�E�f0&u��/��Ky�<����[*d��v⡮��!&����|:��Z�C      Y%      x������ � �      �%     x��T�n1�O_�e��G�^Q 5�a+���׸#/|Q>%��)wi��2{<=b)ToI.gfgwTܥe�JS��ԆT�����.���CY|t:��F7�*��ܸ�~V�cS"�s*U�,+	��q�S�T��V�K�@�R��F��ȥ��y��[���*��i�)�Ϊ
Y*���pr���Q^Qc�\�nr�|�b�+�����_�ʅ=���Sَvl'� �>�
]��������=R�TՊ�	r�%��>������{�γ#�SgK!Q�\����%�"�<)����YQj�A�C�5� \?<2\�*�E1�γ��T4k���)T�/��=/���78�8��}.y3xޠ�g��F\BlcXA�%���� 1[a���Q^���ppu*��b����j�	�@�a>Nv^�ځ/C^���4
�m�~�������|>c�e�>��=
-��R�o1���̮���ܢ�LkC�Hl�[:4!Ӱ"og+�Y�ċ�	��Ս��y�p�?k����
%��e�)�*Y1/Nn�W�O��~�-o*y��X3�|���	H�wvҤ��_����s=0&��d�l���\��?1�ޑ�sR��W�ݩ�_��ӛ�Idu�%����f��q�I�_�	x�&�$�;W�z�2��TI�D��Ǩؠ`���Si��}��r#:�HbyЋU�z�
��RM�*�6�/�/�UZ�F�o�^�9ڗ��f2$��E&%�;#����Nt����iuR(���nk�̟a+E�z�7���	I���@;����5�� ������~8����      Z%      x������ � �      [%      x������ � �      \%      x������ � �      �%   �  x��T;n�@��S��5)�8�%�#r�@�0�1`�&H�.�.�7KJ��J� r���.�>T˼��N��>�^c���V������p��'�.�Vw�yu�$���^��(�Sq���ѱ�w���8��-����9&jd�ꝺ������p�Zv����ߪ��#�s���H#V���j�>G�)���[!ldI�3;���bvO�e�,u�S#jni��8�%�	�G� �) 2�'�Oc��-[<>�N�a�m�zq�h/�_t>[,�O#��� )��sAb�ao�#��;����k��=*�~�	Q9�L�� ��^9��<�3�u����=G9i@x�3��q���r-�' SfP$�;�=�3`B=�MT!��{��[[p�^�<	i���j�ܾ����8�������KFK�n$ao�4��+���
�1	$ɍr��a�5kb5�����-�_ l
�ʞF��v���
v�3�5���-N&nࠍ�ܒA��@�L�
p�yw���^b� ��4p��������Fln�7��,��1�1��p C��De�m9�~���!��X�:��픮N�tQ-���!&��4����ͫ	摞��l��`�y�n�Te�����Ê���a>���Y��      �%     x���AN�@E��)|�*j�p�����3u5��D�`ۋᠦ[v������˪-�!y
�{�Z��]�y�v�n�L����[K@�rN�~S-�+�68�0�~���%Ꙅ ! �~,Fl�������S��������[�p�[ߤ�x�=��u��<�H��B���R��C�7t�")8~�@��[S����R�O�~�L�[���tj�uN��t
�sތI39&}� ����g�K�sg���nG��C�|[Jgo�7u]� �^�'      ^%      x������ � �      ]%      x������ � �      _%      x������ � �      �%      x��][oܸ�~���ƙ�a����d����X� -��R]�9���K�*R"դ�<$�H�[M�Ū����|us_^�\�x_���}����ۿ����ټ��񌪦/op��?=x,04ո�D�_�7����g�W}[����f:̸�q�V%9�Q]��8sE>�+������y�o�}�۾�:�ME��+�7ѯ��_�k4�?~�_�_Q7�S����͈|j�����C��=\u��-�-Ƴ�������|n��'�z�s��0��
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
��4�Z�'���B�r�G՘%QF��/'5;�V� ����馡 l  a'F�kq�Jc�F�$%hw�Ǧ����w-=�Z�����/��pfUk�m�b�$�rK�G;�<	@��v.���Rf�R2K%{Py��{��}+>W�)���$�ksa�W����U�+�.⑸! ������e�����{�������`��%X��%���t�)�Fn��R�LS� a���������K��z�jn�<�C,��䈉\l�Q�G�{ޫ\<da!�;��ș|C��w�w&�Q8#���a��a�Mv؎y��ҳ��E0u$F��h.�Zcn��A��(���'�֫q�o�#MA����^���\Ѵ��x���;��v$�i��LBA>����~���)��      ~%      x������ � �      �%   5  x���n�:������b������ �n�@S��B��d��/�,�$c�)�C�s�i�okQ�J�M�ע-����X����$U�������t3����b)j�rѰ���5b��u�N�nn���C���÷��VL\SQ���Ě�1XK9Y8�t�3;,�oB֤XIֲ�#~V�XP^�!r�#)"��	��v�V��K^r*^^���o��.xL��4�z\ĆEW��H��l๧xr�F��'���������s|� �C�1����}��˂<!f��R4%Q��Z*���:��m��zo��V3�e���_���n��aP�n�n���(z��%l��ZR
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
      %      x������ � �      �%   �  x��ZKs�(>O~�k�9L�ё���l�e'9M�v�BB��kk~�6 [�ǝ�$���u�d8���yB�����ľ�*&�����	��8�%Ղ��"�)/�>P��o���W�p�޸.�M��T�\*2,�`�.�����%	5�����[��	�e�ii4��IB�b��t����8�=C�<yʵ�a�&�|N�i9�0�fY�2��8/�L�䉗F醺_zD͉o���x�&*w����p�µ�y�#��N�ˎs�5XKZ��xB��٢-7xءa*I�P?��
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
��9�-4>[�©{n��h��n��eu(H�9m���.i�/l�����5۵�M�_يI�\�x�5��5��u	�q��+熄���8�&O7�`����������9�3���/�zv�ڹ1�f��~'����Z7�k��wǭ�P�߷U��1�{���(՘YB��םp�6T�Ĥ�U���&�8�Zl�Ȅ|�Z�+.fm�Ɵ��8�S��Ej��0�sJ�+T�m����P�NL��Z/��v<m;�l�\Pg^.���m�ܤ���Ur(~qe���b�m�t\�l�}7���]�&����H$��F<�Wm�)�Pf�T"��<e?4�i��b,1�I�h`ƫ��v�ˮ��7޼���V��My9c����y��џ7�m����W�	�s�����Ŭ�Z���'�&�z��a8�5l���ŉw�W�o�Eps@8V�1�u]��Iz�d�u�kn{���q��s�|g�J]����ST;�������ӄ��U���;��[~�ᑒ�$x:7���D��n�/�L[ׅ��W��>���1������׻O��{����{�boo�ٓg��;v��3ЀO��������=���o�w~�Y�Ǐ.�8y1(��}����YQ��J���I���/�X������J��'���f\[R��"�J36A�[Y2���.>D^G�"�m���z��ier�r�.��ͽu������}�������l�":��ɻ���݊�ޟG�_��_]�/���>u_\�zQ��������6�?��}���:�L'Ovv�{"� � A������c�n�q�:�M�'A���u�7��&�pwgo_VՋ�N����s�O7O�U��t��̚�!��}7԰]��`og� �?{t5{]�3�� �惪��zd?�(�SNxo�|��ׄ���g��Q�]�j��7�YI�e]b�EF�vQ����M}ڜ�8�DP�����O�u	 
6�̑҃�+��>���E)��^OA��(���0���_4�d�D+�bxZ;>$`N�C��=����T}���&�bj Հ��1Iuw������6&���7@Ƀ��Q�8r��QW;�6&�3w&����:�7Wh75"hi��0Cwޞ��[5�}Ƒ?թ �F7[33���#�~��dL5��v��mb����u�o&��˿@�ർ*2��>���T�U�Enf�9]�B��u74�=��t��񁣇<��!��7+�A�Σ���Q���-Ρ������5��o&H�AU�tU{ =�tp@Qr��`j%W��f��qa�$ 8�, B�I�s	D�/�{�ɬ3X��޴�nxƂ�/얁�˕񦰈f�1ؼ� ���t)�>�/� ���6��M>��l�5!�f)���t�,�̌Ɉ�-�T��E,<���t������z1�C���Z��υ@ڈ#&U�e���߈+�M�04񤿶:�P����|�ר�4�H���bM��
T��CüYS^d�L�h��(�V��F����W��Y�#1I;���}������x9� ^1��F�[*2���K��a�s�sdC�֓1AS�$��O��ظ��x{.�#ϑ�nN��y�;\J$�0�Pc���u�JԖNo��0�0Ѐl:&�]P�Rh�����Z���l���s�$1Y��f.C���'Cw����G6���=��k"�����qXm��{�T�-��}�/�P��^�4󅯱t��G�_�+=�{=��zr1�W�݅Z�c�ɢp�s^,��-Q�a�/���8���Y	2�M��	��ltdw:���X�Ǚ(n=-���h f!n���6i�8o�;f�������vR��W�MPog���mv�X��6��x��tQOF�fV�����R�{��7���c��}l{�'�
�A��,p���h4{]���L|0�b>��F:|׃թ$[|	z����lS�9��9Q�d��<3�ŜF�o�^�Y�}��$3����)3o�D(�޽#�fd��`���4��ݟ�����,f��O`��lv ��./Tr�(�k�y�y��f�r�ǚꄋ�U��E��X�����i/��wŀ��{�~� ]��Nv�R4�0�`4Vu�i�;���e��ݐD�E�C��@^o�oR��S^έ����q�i�C���v��u�`���f�o��'�p�ҫ�d�#��>�E3�h�/j��}Ǎ�� ���0C���[���� ����^:`y�?��t�hW�L�p� �����P������\�(��Q[|���s'\ 1y�X���^�Z,�ܞ�P��Tb$����Z�c�[�,L���V���GO����ic�ܥ���(j=7{g8�������^�S���c�R��x��`�qhG1r_-�w��+���7BR�C�T%ٺ���o��G����wG�O����߾y<{��itvt~���Qt=y�w���|0~(w�MtqzΙ��yqc����q�.jھ{V�>��ߟ����U�������f���AR=��G��W���G����?��c��벌wR:���B��O�/`���{HF{_EѣG�N_���w�_��iEoޝ�?���T����v��ը�����.�W����$���j>=��z{<<���F��$�$s��9WU�+�`/�,���7��r��W��>��Än�{��+۩7��<{��;��'�:��ʁ �u��fGI�H?��,��ܠ���6�;�4$��f�@�@B���e�?>,"�L^�:�$i#�����'%��E�?p&]�e��`�DZ�/���Lb�"�����X���yZ�(�HX����h�k��,����ve%����bN?�������� a���A�����
%%,�@b�����
�h���z�w�����"� ]���}�Z��uk���LQt���i��n�z�-���=��R�������";a�}�Mܱ�ǻ�������8�k6�i�!��,|�c���o[Ԧ�!
�aנtgu��I��	���(+���(<ѝ,�[�!.n�� ��Й�So��>�Jf�B��q���,[�F���[�"PQ,���(^8�h�`�]�}Z��A�2�?����ˬvL*���H�E ����~��iGsZ$1~e0L�~xf�nJ�D�g�h�ō��h��'$��*tA�.���c�S�-Y��MT�g݉n9`�W������K���E��P6Aq�Ś�߁J��c񶃿�����	- �\-�p�S'�z�ζ����(�&��%��~ a$Ѵ�F|kmI�@��j�W=��m��:@}9Fks�݉|�f�N�.��9,��պ�Lկ@�6�=���4�A���4�¯h݅!Q���b�<�]������>W� y�Vc☼~�I��E����$����Il��K��5�!k���zI�҇x���s�%�kD�%�	�rqP�%l���a=^X    ň�=9��8�E�VIQm����~�jA�zc���IU,�+HT�76f�/rC�l�T j�gWm.d��z���w���%ex����Ԫ�t��ɚU�a:^���q�E.̝�o�Ƃ��dal/����A�v�"�z�։��5n5��E��o����GY&VR\�2�F�^� �؃ld�r&#��U11®����{]B�cm�=I��ϭ���vI�lK�2R�i����6�h��׽]|�l�_�'ܬWQ�3f7�������l���􀐃��5蒙�>t��X�1�36���#L��ɯ �}3W���� .;i�����T���ZXԐ1-,�Z֜(�eKx��s�;��׈�曐`:���Z���D`��Jy2HՏdU0.�\9ͣ(�����1�w��B�������|��6�~��"�[\@�u8�O���Wӆ�*�ָ8�o8�M�˸����gd+����e�E<O�*mCk�+��Y�3����C��ӵfq�s�r�5Y��
jN�8����{�kM��"�)[�IU�*�A(�wo[p��E2nQ�l3%�������'��P��aQ,d�=r4C��Jsg�/@�_�E��]�}芺f\p|IX�����ra���w梹����G�,L8�ϙ*`��3b�S�(V�X㊍^٪{7m��閯�37�]�pQMq�L��í��=@����Et�_��'�[����q��f��{���m�O�����i81�q�5�{pcQ܉OWs��$6��^��w�Nf���E:�%�=<j�!���
�?�Ft߱�`$ᯡ�ؼ~穼���v�a,��zX�V,�r���{��:�z��1���l^�^�O��6�I��2����Y��	���p-�z9����)�z8c(��+P�	���\w"q��:r���d���b;�����{)����kl���\����Ǫ�܇�,X�]n�Q]N��	���S�����0���mw����T�1����$����h6h�#��8TI5���O,�B�8����_#������#��Q�g���1񞦣����nMQǢ���״�����o������<Չ�_d���9(��'��U:*�ia�c�k�4�L����2v4�X�H�l�����81|��=��@��V�������.�gO�k����N���A�ɃK:�Z�=�*SU.<��G���{{��W'Yx����烆��m��t�*N��Hd׈f�d\���;�S�q���6�p2Ʈ�4���N�>8�6d1/'ypd����\Y�ct]�~��\k���^o-(�I��U�-��l���^�$�zZ{�Q1����k��`zd"�Pᐰw�I�nQ��$by�FϞ�]Wh��׎OW=�e_���Ѱ�X�9\�^'L�fsT�F	׷�\
�2����;�lhՇM��?���@�_�MTI.�*�\nB<'�X�@�z^��ɊB���+ ���˕��$�='��ˊ�I��#����n�?ժ�Z��U2��u� w@��Y��C���e NbN�)�w	j�H�%&���x&��X�=�w������F´���0j!���o�q^7�����r�%����hޢԼ�����Wđ�MSit?�W�Wߦ} 7tź���S(��(�sb#o����밠�*��
�bZfH�5�- Q�<Ea ��d�s����hR�o��U�>^�[/só���%��F��hP����oH�,$_Vα�H�F�$N�YL�cF��X�o��Y��{�0�8W(.�"t��p�/�.g���5Oh76$�Pբh߸@)� �Eۨ��������\�[��N:�a��-��,cC���&~�l�W��2��οO��k$�[[O���8	Q}.�*rQ4��<�K���ޣ}�!����=>x��|y��T���А�'���<ɤ���A�뮡��dqM���1F9�*Ajbę�����%�n��X��{�4��|�.�尿¬0��=���~\���:��N��� ?��聿=��{��|ZT�� �ט�����h�������Q����}$CӲ{�:r�ѧkqF�8~\��5Wɜ$�	U=PH�W�2�&(�t���(.�	r�UWą�j
A-棯��d2��6�ܶ�H�Z�>�2$׹J���F��B���3\=�}K�*�E74�n����� t�AU�W��={Ҍ�1��i>t����L�6��1n�Q���yN$q�b��	7ч�L?�8 >�N�x<��#�<�$J��]<�����etU��Y/ �j�� �l�vp���*�RV�H������T��6�~�t�Z)�\�-�U��H�ǞO���'�"��&y���V!�R��GhA�|xD�`��]N�B�4���-;P���tq�;}��.�Dq6�s�H������@p�H�lJ�} -N|���e��VJq���ˌ���������n/��˯������5Fkvs�E����� +����-�M�N7�����mL�#�3[�y�^����{y_���]�Dj\Gha z/���8�6�����[���}��y���.���Klkn<M
�N!Fr��و�&�w�A��T9�i<�����WNNr�����`@'87�r�g�%R�հNQ&���i��Ӵ.y�V:ΰ3�t�d�8vU�>�	�cǄs���X���\�|R#q塚�z3q{O������=��`:���3��>z���|�Y�uH�H��);$�����n�'��|ߗH2���KS]ßruy�4�@�+������fb��e�RE��Z�,jԉ���D��P�ʄ�̒��L��d�2��pk:*5���Z�-��Rs�s?M�M>-�cM�e�.�O�8�
��)���?�J5\$f��J8kk� � .X�mB8���;�5���B$�~���ț]/
\ID8S���)c.���I��%�ѣ,��� 6�:���Q���1�`�6��Y�{xx���<�{����Dg�����q �ͥ���T���*R������� -�-JHI��D���a�Q�c.�ۡV�����!��LJ-��M�0��Up�`�H�٥�9�]Ψ��$����Z��3SW�6-{� �C�F�
GQK��� W�\+G26�,}��Q!Z9�<���!�U����*,n(ʅ����@-��qQKʩxE�	��1���l3��O���O�:�Z�=8*��8:x<`<:x�\����~D�	,��H�I���꧌����o�ӬE,*���ٍ=�Ðf�I��S�T>tI*��.b�Q�eJ�t%�L�qZ���"B�D�ၤ�i�(7qP��T3��ZXL:-3����6#tC9Lmv+�
33 1,L@�4��'(H$�ÁҌd j�3;o���f �J�)�I�{k�4^6v��*!��R��'wŨ3ǃ�4}Z��7+.=l����BG�<�a��
1J��q:�
��#���3���:�N�]2FQ�P��f��T˟��$��>���@9e�${�n���L=�z�����Ɩ5��a�R��~�K��M �:�B}aV ����E�f0�����d���%�0bm�K�.|�ꊓPz.ȸH��\7q��0yeI��>W����I�q� ��H���|��!��I���2ah��YD-$�g�+���R��V T���uۺR�JO�<���b�aN��C�c�zx�^�|��F*���2
J�MD6/�K%�(��A�b��O��Q��f�H�X�~���TD|Z�	z���.״w�0�E�k��h�&��)ɱu�2Wh�!�2�sv{�T�	g��I�I_;�l�'L���y?���)(;͗�����O����,r�+ˆy�q��S}�Q�z�y C��(�E���q��ݰ����=~xCNp`/�IAU��ֶ��@�[%��/�]��;T8��;�`��H!��rEX�2ѕ�+Ȩੁ+R*��,ML��x[0��݅U���)Β��u=�*f����^?�����!�8���S�}���h�C�U�l�z�|��    �=�R)(l2��e+T�"��\{;�br�Ͱ]�'�2۹����x~��[�_k-3��'-�6�똇���]9��w뤆N=EQ9y����:�eB�c5Z}6b>sZR��0�t:� �+��rL��O�B��,9n� o�� *���X����ZO*${2j�/Ȋ)�?�0=�+L�1��3d%�mr��UWt��ȉ��
��sye�¼�ND��*�{S�����J����L�1�\�w��#��evh�]ۇۧD�Q����l��ܞ� ��nh\:�^X����vHH�]�݀��?\�gg�5�H���#N�r��%�2=:g��(XWI���h�AC��3Yp�{�Ì�#;"*��(pi��τyMw� ����:�SA��V?�V��Br*�^/E�bo@��c�˪��SU� P�q�@�#d\su5;L��cg��w���wjH�sE�I�$�ߕ$�4��/ɻ"2�]ð�*lf��Ȓ�\y��ۼ���a�fдD#�R�g�B����)�tE����/��iO��^<����~�9�>�rؗTc��|���Ȕq����~�~�g�o;��g����i����z=���$u���@���{ޔ,6v���a�����Q;J	ʹXm�P�|d�9_�\��f��Qf�Vfo��9�~�J�/5y2�y3YK�UX�`0�V�y�R�d�ޠ����d�t�ા궃Y,f_m�Ez�Ɇ�NL�fjӀz�|?���x{j��Rj�%X��<��L�m�_�����w+q�[�,���
��
�N��ʱ���&�|?hU1�"Ӯ�tl�y�.+N+��wY�'��c�я����}~ܚ�;M��-�C}�B�A������{�y��3���7-ߵ�����C"�Y�
!��MS�Uqe��E�V߭
�4���"%;c�����*��6�U��1K�.�0W�w5��w+�����7�̚ �C����4�d�˩E<�ʢ���A���Ĥb���\������z�-�^(��t�3;H�$��d�uൢ&'�gvh�����
R���<5&�&���Țe��[��S"S��,��#@ P�sb���c���HE�˲�Ty&&h��ZR!��� �o�����b(u�W�'>�����wK=�0�1^̦Z��V� A����ec�d��L2�p�~_J�Vq��MZ�V��g�׈��|]�*RTT���}ocɻ�s����kj
/KCDD�E� �(<���-Ɣ�/�p��y��{(m�%�HⱠ��3�L`�{9�k�Eˠ[6g�����a��,��3�ӮYlZK��D~D?.�}���l�����H \��&|U�Ӎ�ފCu��q��q�:�m�����<fMVˡ��4��>[��/{��V�����5%�C�+���x�aUi����k��Y��b�(��@!�qy�,쮕�)Z|�K�A�1�?��J�JX���0/,���
$G�D��/����s;�ӧ������.���?{�g�������y��=��C�=��C�����	��{�b_��}|��/���>��>��>������4>@��;@��h����c�{����c��_<�O��	?A�'h�����4~��O�1��/�⋧h�����S4~��O��)?C�g��?C�gh�M���s��힣�s�{�N���st�_<����!�8����_�C|q�/��!�8<��=�}��>�yeeyw�d�y�yw�����>�v` �����`q��'�;� ���]/��!zE1��o����p8ĶڇO��Ӄ~�UKK�O�<'s���Z��|�5�E�Of|���ٴ�u�2#�2b}���<��w��s��#��'�`�V��|��%K�qD$0��<�I�ޏ�y+.D��
�$B���t����_
&~\��%����׆�YQ%Uӹ���r�cULܶ�B�]
inq�!��m��O�#X�V1�u�a �X��#�X���̆9C�/$��D3����`J�j5�`B��?[��4	��W0��s4�S�1���GmF�{���ݱL+i㪷���Q��vއ�&�� �;��ز���a�,p�&E�	;�,Y��>�0^B�A�pu�q.Jc�Y���0ib����56����xzg�w}�}:�t�hH�E����V�$�N!mڱ����3��t � ��9�)�U��(�+B���ӹ+��~�v|V��Ih\�]I_3��86-{�X�x���G�����R�N$z�!�C�3ˈ&�x���|�,n�gU��U��Ϻ�P�Ǐ�@�VB����3�z��(ћ�s1_?����'^�I幸�؁��=H\�[p_��O�3�H�0�a��6�����sd<)�Ll<��f�[�mq�,]T����}BY-+N@�[e�f{�q�⪄O�@p���8#�Mr�w�)ef�@	�T���i'I�}Ʋm
��u��i��[�4�)���d
�$��*�i���:(���Dt��Nȇ�Y�f`�?f���M�S���r��L�9�,�ý+Y*�H�&2��8�[i�WU�rz'�&�i�rљ�irrGf��� O5��b��86�m��.��Kl�4g/����5TB���} }?��6aq&�M&>υ*����H��\�)4��/^��0^9Z�L�O��@)���YB���o��DI�4)�B9��>�u�����|��`�=���M_����^7I�:n���b^�)Hդ?	�ب���8�Lq��pC��ዐ�� ˨��)��&�Y!J�{}I��=�x0�o���m���6J`��Q�%���!�JPw?�/M�\l�T�k��E�<�s�������핉��Cb��cʼ�c�������첷�yu�yO����åq���0>�����8��wĜ��P0MN�
17j��CGQ㱊0���Bj�/�Q��MD�
�2}�m��������xLG4|���=����}T���+�a�&�|=<ү�g�m�����9>�p��3��{b�"o������sp�&����_y��E���pX�:ipBbj����gCR�`(iH
$�fTv/^�nl�/��c�8DӨ��$�̹��l;I�xP�S�r?� ��U,��ݶ���yb %|]/�9t�{����x�O�d�B��	��u���(��:�M��y"�#��(Qf�!Z"���Yv����-l�n]�V�ob^����L�RJ��ăLO��C�_N��%�W�N�M���9\lD'�&�����f�3��_l��a��F����![����$��ΤD�~F����������KDi��>�+b����sIk�Z>3��5��(��bpa�y�N�x�6�2��+m_$rl�_b���؉�"^Ě��
�J�y�q�~�m��s��-|�`�u.�l�;~F���`�1켔C�J� rx"է��.g1Wv^��_&��*@0ǋ��/��sT36�� >Ƶt�����v�m��2t�_3A��#�\�����
����@h����ַ<��0� ����P�=H2$�5��ṷx��,��Édb���q�y�BE �&ޅ��a*0�
}���R�-.�A�����W%JP�4����k��+��vj�<��$�t�P�"V�;��]�6)�ڤ�s����V9Ȼi�͏`g�HD�F�y��NRy�r�:��
�M�� �}Lfs�S}!	�g��坘�Ȩb�{`�����Fx(K������7#�N����Ke�Q�'�_ض���@��ȥ�C�k1C�Ѭ��T�$�1gA�&�հP�-/P�b��4.����d�Ց�jD:gԋ2u[Si:W1��|.
^�þ|�o�7���tw��j}�x��d0�a�,+����l�k��3AEօ���8_) �/�5��^e���MW<�&����ޢ7�S�B1߅�m*{qd�3/�X꫚q�@�$#$��{��҉��	��F���9�>k)�����>�o�h˯M"^�E�    ��<�ͼ�l2��U�[
�Gc��'F�'�O��nɅ�z��������-p
U��s}�G[S��R�F(M�)W9F 1������&���$^Cίj#����l��(�'0x�(�ߐ56�bO�=q�$b��y��SHfq~�.T+�t�/jb�k�vo�����z��Ah3x������3���j=���:!�[�@M��E8��������W�Źx(͉&,bc����VS7��T�e��%�	��!�WT�Z+gEY3ř�_���Ja�]w�&��y�#����Օ�]o3K<}��릏as$�}or�*ȲЗ(D�=����xZ��8��R5�/
O�'Cd8�45���2��v�n�sN���Z��~ ~@�QLVN���	�-[��6S���J)y��9b�\ �n�u�� i5�8����3Mĵ��g�v�g�wi�G�ˌ,�w��KB(���<"�Y%%�p�Ў�xy��1�_J ��#��0����/&�&������?1��a.yX��K6%��l���O��ℯ%��ţF���̌}lK��v�����!�d�op���<�T��l����u�����_sǲQ�Ե����6x!���Z������nr� |)��Yim�������s>�r�rU�j���V�#�kCA�$9��7"BTt��!�"�iï[5hU&^�Xy�
���۞�o�� l��۠Y
�b"4�{���|��mS����U	T����7���x�qrmjg�[Mk7�&ѣ�e��|�B]��� y�z��V^��E���D����*�>�4˃&̜sb�Vl�"�z�z������b�^��T��`��9�(�G����i�1Dp<�%�P�ի��:���R�h�r��#��}�����[�>��V]�U�de�<�MUH�Ќ�y��>׺Vz���>p��>ր���g����1aOB�P�+6�n���]fӱ�������.��f�@�z��f�	%�,p�s�k�3�;}�|iӎ�,��W;NѽWdbH�L�;P�Y*g���&�5I>��>�PI����D�QF�1w?x/C�2)<O�1�ֽ���a@3&x�m��tej��V�r�}9h�.&Qx�> V�}�������(c "
�k&��;"h}���
�s�lpa��	X5�R�dƑ�'p]���g*�# uB:��h�1�!NG"KXQ�(o&mT���Iq��#v���F*���}���6H�X�E1�J�}ei�ʫ�l��%Z��I�kD�KVmf֬ g�'�/�tC�[��}7T�]3͐[�C|{�O�	+,ATH�	� �)�G�Չ�Gg}�O��JB�-	a��*���KkV�_�׉���#���F�њ���*l���"�H�Rsz{�=x\:(#�2�D*֙/�O8����s��!�-#&�9�}���ڃ�C���qʁ}c\���O��3�X��ь=Ѹ焽���\�d�,�7�~�uW��6��g�+�M��6�9��x�G��<T�� ����-y�UHh�f�v��Ht���@j��q���bc�z�Ρ]�S��i�t��,	X*{{B��ت����D��+��D6|S�W�FI��d`?�D��4O�2W�|�i
�1%��G\�J��D� �^}�v�������0�/%����Y�X6;�1��*�yA8�'p� MԵ:�E��W�c���L���+�"��s��Az������4�fI%��W�l�:X�.(I�g1�3�\�sN��%��}�%I��XD7\B�����L�Ǉ��U�1g@-�b��X� Ax��N+����gD��^`
�]��!�C.6&�?ĳX����t�����Dq?hskc��$H���'v��5V[���`ksgp�j_�[>"6r��� Q��!W�4e��]�����1W�>54�X	��c"�"���#�>��kBJ�O<��qtf�:�#5}��	/�L%�*z�.�c�����O����p ��PTt0��w��уc��I1���b����l�cI�,aF(��.�N�1�����!zpQR��v�=v����(rE7S�i�c�Z�#:���ʃW�Ie!�B���dI�� o͝�HG�������T�V��]-�x~{�7�o}���]�
o@�� �uǩ%�B�ML&� w��%Р�L���X4҄�IȄ�EU�Bl9	[�f5LF�F Kߌ&��v�F����G���v�.� -�$d������yȓ�,��h�,;�"�JCfOPUƥ ?7)<k��:5�l���qz����B;��@�/l]��9��-d�㤖XJ�G�f�8��᱾l���y��"Ԣ21��*��a9��OP����^jt��wÅ��|΅�\i�Rt��LX��@�A��=tD7������91#��E��_f���7(\BC�\Z�����C����?#�叨�� �� 7� �PP�I�Q�J:���T2�:����*M�?"o.o��B�)XF���5��]�o��8� f7���*d��+�s��qI"{HF����󮱼s�����T�=*�!>�5g���#YO�Y;F�H�X�(��wH<9���N.n7�U���$��$	ʌ(�d�G?>�a�!o8Գi��%(�8�M�m�6{`��k5�b����Y�ʟ�J��L%�;A|��=��-|W%��+�m��o-�jG"�	3u5*��%�rۢ��V-YI��;�
��gj�x�"(�yaDCc3O��g���gB-s�6�<�ࢻ=��@f(zgA�n�fx��
��eft�R	�i���#f���3Sh+p��T.`�qt��wZ��MUM.o���J!���ߌ#;\�� /ߒZ���V�_D���?V9q���(E����J����z�7�s��~��<F����a}$���qv��tj��J�KK"�ja��v�p�y��C���ȟhӴ���q�5ú츤	�G	��>��	�]`:^��'S�U�Ԓ�Q�* �L��37���RA^
�����_E{�Ya
���ҳ5[��i��C���!Xa9�\`b	M,��!��eͼb~�BC�����_�&̅4�����vP���O�V�-WjRO\?���O��~lU����SX��r<jT�_Y]?G�dl`#a2��sF�@�-x����[�-�� �5/���]���`�j�{�^R����l9�~��wx����b�5kfq�)0�r��T����0a�Qg����-j����F��-9Y��e�R��p\h3��6F�5���4�h;t�o�S"Ȕ/˶���ic����Ti'k�ΖE�އ� CΎ%�!�����x��lb����s��/���օR�ȣ���4^�i���=WWq�UnC�K��������N��ì������y����/��_Шc���|0<�������4���)y��j\�_Mo�3�a��(B�x3���9�H!�!;����|�>�)�_����n�uO:��t4<�~�g���
�\f7{ΐ;O�Q����f�(GH�@��v9K�͂<�7�~�w�{�����߯>����*���#<��\�_(�������,Qɱ��������8a�P���8ȍ] \^8b�Kщ�c�G�vY��fҒkh�8�9�({�X$u�;F�<{����u�ʸ�M�$���LJ�U���3^���c�Ģ�)^�=TE��dg��=[��L������Bd�����fʬ�#�RQ����(�s�`6yk���Z���AD�9.��_DR�Bf�k>�%����r�i,n��qP;c��E�;�1Mya, ^1�ﾝ��U.E�R�f,l�b��xҲ�y��x�1W��c�6O�T���/�U*S�p��-���j�]�M��w�%ܪ��'$"x�*�����lb�S\�t�>�$�],�DY@M,�j�
��֙��Ȩ����+�m��M��h#{nK���ߞx���"�v<���zfQ �_֍����6n��Q�*[���D    f��*����'�w� soH�y�zx���8��Ɇ'����$�Z�fK �
��X��K�u��iJ�@߹=��Gx��q �	��S��$g��jbR���%����RQ)1&w�@���ܰ�r��*�t��_ s��0E�^��v�B֜B��P��'�hW���}F�!{���s\��t�l���F�m ��S�=��v���l��űN�\�D׻�n��[������� �ة��JP�N�ݎ�芯p��\�p��.
K`fq^�������H=�}e��Å���ϋ��ˮ��C�������k���,#��Vڜ�!�C/��sJ���$��e���k�S2r�l�4I�U�w˙<�c��:�"�f2���m\��0ߞ$�=��]q,�kh:ֳ1�q�o��[�HRt->gzl������۽�rb��k�;%�-Pp ������[9Hp.ʹ���^��:�g����?�=0"X�zl~�V�kù=�i�ʙ0�W���M���[����V�<�m;�TӋ�9~am1����Ec�K��mR��$�֊n�Cݧnԥ+�weQL�_��pU�q�}9+���7׸��v�1AOh&���DiUb�jUs�$����²��`V��.N��f�����@A����ː7�}�>�F�-��$<�0��s�����#[��K�L�ǅ�����s-B����EeJQ�%�U�[	����yٔ-�����C�D��Fp[�*/z�z�z^g<�D�M<F r�jfw���5�P�-�C����3[Ï�^)�-�OLt�eM 2yեD#�	��A�;׀�x�?�crKҊr(�r�����P���Z�����f�H3�#)�����*\C�V�.j?�4MP���<���j)Gj��xj�Ad����	�su� t�c�zg�o����nn����!bm����i>���T5�1ʙ��s�;��P�CĖ>2�9W�5A��_�aR'La�����2�(�����8A��q�3z��w^�p�Y� �V�3n�i��2�\Z9r8=��hZ��B��E5|�m�5���� ��G)����KCȽ�1��@qn�̹:m�T��-�ܔ~n]m7���������[�fʩUwX�b/r�<�h��+r������l�K�"�.�FGF��J`�����,��=���}��^i1T��z�M�M��%߻fHD95\oq�T��+S[�^҇��=f��k �?���-��w~�`jɂ}�j6��HO'�ݖ�)Lp���(_����*|:�V���N�>{ ���.^�����&�Ͽ0����䙿���s|���c*�v\C��i�����3�aZe(W7�Z��:a{N������C��-��]o���Go�4H���B��dle����l���~Vj�h��x�bNĲI�d��$i&�2�c"�O1����;�g���N�s8?S,��o�}�Yt�iɣ���
i�gH�U�YKqKh�8���w'[
����%�N(	�r��)���k�O�o�r+s2/�h�S-Ӗe�d͋�f����s',�ylD�X3���,�`+�1-78�~7��]4D_uАUh��������S���;y�U�򖳐�?��B�EȒ������Ӷ��p�	L�H������+�G?6IDw=,p��2
6L%�c��p[�le�f���>�U��}g*�v^�����8���O\��1kDq�3��wS&���#��jЇL�Z��6p��ڂ����^j=	<AO�x��l=7���q�0d�9l(�($�Te[��7�u:�����I�y�Sbx9�9��<69��)��K�/2I�4���d� �|���LⰅ�OU�-Wg!��RKe4<v��ro U?������c\�ϐ=z� ~�T��8�ډ�3&]�$l���~t��R���<���%�ې�p��p�4��'��`�Ǆm�pb��8�[h�qu�f�x�,3�|����d���[ʹDJ �������"peZ	m�`�c�5��{��4$L2��Q5O>�|����u՟��u�G\,�w?��ؗ$�M���bܺ�R��<P�L�x�ןxÃ��D�01RE� �`�z:`g��F�5G��
�o�,]��6)�S)���m�����$	Q%w���b#��՝��ͮ�������c��%1nݩ�rq�|�u�=E���4��c�Z�}Q��nY��ߐ�ߞ�7#����~U���W`���+���3�1�=�IW����zܜ���歷R�^��.3=��eF��\��#H�
[�7����p�M��-H���s�Hw���s���[Ӿ�����}+/�w�Y���#��'7q���Nv��dc��-�qΨ0��y�g�l�_��jM� [��Э��`�Q#�C6�<��s2�'��KM�=*%�s�����>�Q�KĈ���э����Ry�
�b��Ou�!�	����!
_l��#�'�)�G+w�������$��"��̥���^P�r\�Z^I�0'GMU#!��3�$�����v�����rI6� ��o�?��tjk�h�9WaN˧l!"�i
[�����t}�Ҳ�2��rM�r#5_r?�X ]K����T֒�Ng����f���k|͝K�Gm�Qa�37�������b��
�+K�����	 �X��La$ȑvݶ�����u�2PAήW%�s��T~�]�"���EjkJQW$Ob"7�۬�q�g�����6B�۝3�QC��;���2���;�tw��	qRT��$i�(,���BW]�5���mjczBaE���2?:��C3.����2�O�S�a#Sm@ŭg�|I5�%rm-#mۍ��y:�ՙL���_��q�����s=�o��h��.~���Fh�k�o�;�E��'�YHχMsʺ}����[�wU�chhFu�׻��@�Sߛ�!ø��$t�{O+(�D�!0��8d35�ܼ�nRJ�AL�϶�;�}(�������+�s�Y1�ƄG{G��,N���S��e(�w&���o��6	[{�[1
��5��^�'��2��g&e��I��ND�S�N�/�݀}ԥ*'�+@�s�5�$^t�^@����Y���a�r4����,�8t]E.m�j��?�v�1����G�i:/&\������=��\BI�ɜp9M|D�a�k�AF�@�)��H30�ߪ$�D�����}��x�V�J��'����
ө	ʷ�\2p�����7P���t�d(�)E-�Ӆ�2�9[s7٤�n���,��o��i�KNt&�鳄��_��͋�i�����޳KP��������/��o���6�DRi�=���/᭧�sKcc�ā�#�%���^����#J�	�2�����D�����8[�[�o$	���1�I��f��������*L�i�e�YC�1��;�Q\N�&6��M��7,Y��Ι<�|������9��Z�U� ��X{�n��Q��6�[��[�i��L֜G�q�(�bF�,'�b�(0?�?6�ft8��XbS�z|�9��m<6�#�gV�X����5g��=���h�ρu4�'�q��z�n���vݹ	8�kO?�to�]�L�n�\+.
��jk~Ew���e��Rz����+��܋~���8WƇ��P|�lʃ�~)���l�"�c����+hd����)��KG09��M��������T9._r�a{��8:�����+gue�l�TҞ~��q-�W�� D�B㢘�J2N �xD�]rZ��xLo��6ve&�o&�d鲓��c$�ҳUk�7�":<<��1�
O����f�޹/)00��o�U���ŋṶ�f�C�ˠu���$�؛R�h��fhnڛ���do����Y~(|T</n
z_���hVn
����M"���7[�������9�Yt�]��O���D�5,���$?_I��i���	P.��(㺖ED��S�P�Άc�`8]��U�k�%Ǡ�h�V#2չ�Vq�׶�L�k�@F�ĺ�E�%��۔`T�E����?��C\Z�B~�>qg�� ��즖    ����[�fh��V�_o�Bn���xzٍT�fzP5�8�d�j�������'����Ɯ�"#��`́?o�x�֤��?��oCT�p����Yg��yNl}�^�W���N)o�	r�ۧ��P��z)�`&�_�/Z��P�V!g�&o�@�CM�����b��[��,Z%I����4���5�ON�@N�������')�X�C��3gXc]u�|��Ml��D<�}]d���ϊ*����� ȥ��*��eC*��([�:���D�r�r˃���IIw��o�y*�����Y�P��˖?���	�Y@��{ �8�9�K��Tx��⒉㦾�s�n=Z������,��hO����rTçU��Pp�7u+�w���޻4��ei���_�+�b�!R����)���d����z�`�	���t�3E��Y�o���b-rb5ic�f�ҿd�y��u � YV�)�;�=�u�y~�.�[h�T*4��x�p������QY�������|�9�)�$>����$&�\�â��L�KB�p涠Hy�0� gV�"e����Z3���r� �Rf�I3�S������PP)���f?����%F�$�9�Y�)���!7�m���[�e�Q��5
�H=G���A({�� ��6m�΍�֣NT0n.U}Ag��I1*3���og����7�У�K������+6�5b��t��Z=���d���5O����u�V�@�c]����#��X��y��R6�y���^g�+`G�n�;J�K
u<([4	#),Eq���՗�#qV\�(���Y��
��/tD�2yh3=j��K �&o�iF��:0�P�(K
=�9�� ;$L=^:mt ����#2�/a��Ս!2A�}\�β��\�i��-�e	��������������}��}��}p�<x��>�s��.��n��n���O\J_����k�3��\&VԵ���0,p���GB5��#o!h܃6�W���i, #������P��w�'�Kp�{����NǼ|֍s2�4��������,ܩ��rW��K8�h1J���'5V
z��O�v':���%���	�I�9vp3�\�o�W8�[�М'd%�!hػ�RִqѸ�r�L N�Ki&r (��*�֍\U�M��(NM�U����VC��~q��B��E�69ʺK-� {qֈk���цS.�����b�gD��0#ɞ�s���-�]���?��0iej�`�?��I���P��Mѳ■�	_rV�P��K>��k�Nٲ��Ӫ]�^�'F6���k�-�5�U&JH����s��]��8:e�swEO�tvb��4�H�>��T�rF��Ew��&��Xt H�,����մ�<C�� sh1k���OUOU2D`�f胦TU($-�9t �_�!/etL���)xJ��b`ޖ߳�"��h+������萿y���j��ř�S��=�}� &�Q���E[L6��4dh�N�P
	�fR� �ۡR�w͘�I�Y�}��6�'b�T�*��?��|s| �v�!1ي���QOS�=!�\�n��h/���8�̊��@\:]��/CT��x_H=$�4ˊ���4�F����%�r�z�D�"���̼����$�,F����|��K��I�Z�J�i�*t�u&����fD m6-�.�)���}�Ҍ��p*8,h�ƣ*qCQ�\]^�2	8��%4��W�9�Aߌ�s�k�]�76�\�ВŐ�Q��������@d�w�S���O�Gd���GX�uT֟c�����'v����J5�h�K������sE^1S�/�W_�f�No;'\>m���}-����3eVHS��dƈ8Z��<<��;�֮+�s?"+i��j&�� i�kfZ�P�����������`�X���X2z��}SvI?�b���s7��z96�)ӎh����o�bڜ	ngq"�B�'3��)��=� qP gl���-N��D�b�D�0)p��o�p�*�
�枌����%�]y�na�_J­�QO�kZ�ӥ��I���U�G #� ��Эh�V���6����C����O����6Fܜ�v>Pao�0��!��,�������ja�]O���R�e	�3@���5�n�X��b��f	$���Cl�iؑy˺�R�#|�q�� ���M
a� j�]�<5=��ҭ��ݓ��p�� �f�i��&ʇA	�R�T�4*�WH�yB��t�a4
%���Yl��3S%�3�nf!wǒV�T=8�PN�n��4C�B �����)v�?=�9;�� ʢ@P��ˑ�%����xJտ�L�#���"�����SYY�I�g�1%>P�g�{.�b.(���Ԇ��ƌ^pց� D��Fxu&�ԸZ|��n!�~�B�hB���i��-K���Y�P�ҕ���9���l!-���s-OB�Iqp)�;E��Ts/s�����'v�J�6���F{GG(G�<���ݽ��Xoq�ۙ���O�5�	�$�_�zZ�V���I6+t bN`{��*�)	����`��j� ��C��\)����C o|�@����:��jmc��:�x����ʻ˨��R������YQt��) ��w������2�l,�:���J��K#3D�
�1�۱��X�@�Bxj"�Fs>�"a�8'P1��S�K���~��s�U��\��lrx���Ƈ�lh�"֖�������:�n��)�[�C,���k�\ZCU�.��I�Ӛ*%�U@�A�k����|�	�g�}�Q樲`A䬸5�Ec��Ig������bCH�L�Ƭ��}с $��M�I����Zױr�H �$nYI�.�����@3	����f��Z	I�x"�X���jJ�����!�'�vU�lwF��~�Aك��Z��h����A� �S�V[���ߢ1�-w����౷{��>̢BS��W��v��M)�Rr���<"�K���AE��[� b�)�-����\b��p�Z�W�3���~���w,~w|���ߘ�ֽ�N3���T�rNi^��[>���q��
���{�h�=ʷ5�Zc�j���b����o�}�DD����;<�����qF\-�2�n^z�����Q�&GQ��u��W(�ےt�	EB������|�'�ȃP�MM�)	�fb��{�"C<�G�AL��2����Qj�v@Sϙ	�`5x>'xh�>�Iͪ�X��1�s��\�9)�rY����T\FJ6��.?���HA>~%;�!�gG�a��j�N�����'h�B�Z=,6�(��2�i
f�f�V�/`\���Yx�`QN��cX�6\-l�!��5h�?�M�!���Ut�S9A�_���UTVu�W��ۡd�Yo���X.{o�[��h_�{��qn`^�b�ؿ�R��f^��I9�?�������bM��FE��%X��"��0��Z��"5O�&��?d��C�`�t��.�1��$ƹw�TK���O>Yg���CzS�`�C�+ǳ����|�����e)�{&���y����`_�+0mgЯ�~�����Cs������k���:o�gf;�a?����!���������������l��̖�.=_rۺ�b[��[����_��Tͮh���������E9a�=��6����r��^�S�l��v�|�6_�I;�\�!�Fb�c2��-�)$��,O���?�\6�����,r`�(CX�xRi*�~Y:��Y(8���s��ᮘb���3�P�x��;N����|�lc�=�o~��*ח.�ַ�yl��6�7��s/:�
#xV.l�rk�v�ҭ��a`���s��V��d�N��!���6)��sYܥ��fLP`2��\QN�Һ�\��I�Tn��=l�íl�_�t6+yI��.�O��c��Q`���AɩݼA�)]U�sK�؍G���1�� ���a{����>,���g(}��9��4�{���ȷ1���F���!�#8�B�߰V@    �tOJb��6ԧ�ht��s`���`��P�F7��g�C�v_1��B�\���P��Х��&K%�})$�Frm�P��lg���붿�H�n��O����T��%��t��5mXM���̰=Q<mVTUFx��~�f�z큙|�m���K>�s��KO;�97<�7�38����#���t5\�rZ�Ǝ���T�]��ʝ�yh'��cB�R�v���l]�{[+�߰��ox��nIn�X+vD���|��@�j5�5�$�cT~�|�q�)��٧�z�މ~n	��N��u'���ٴ�Xzh��Uoy�+��V��_�2�/Yf#��U5��*S��p�N	z�V�����7?���i���c�O��+�7�)S/������sz�����m-�~p����5���q�u��us�=��n)�KI��"(vGO�ͅ{����b�ߘnn���w~�3���*����M������2�H4{$Q�+�ޡu��ۿ?��oW�6W��:���&\������V�A��4<��{�־�ʚc	&1�-s&1�XB��^v���)������#��S�P�����Nt}�����::��{{vq{�?_�ۅ����0�E�������}�B��m�� ����n��z$9#���FT�����϶B�J"kO���V��|�%��d����4���3ΓO1�'� ���VPZ���R[�����c}ZL�S��(��$�[��D�i����a� �*����OU�S�3�O�*���mTE��)*�(1�,�P�/� ״o��}�Rq�r��$���.�2T!��S�H�;x�%^����Ň�����%����i\��jJ:�΄�e��,�:��y�P�>|7b���Y8���8#���@����d�&��q��s���x+6�i"f���}Z@�DQ�����<"��8Qr8��� <qBЫ<�<�qI_f �w$�O{yNqp��Y��gha�@߉��j\e���9Xf���PQ��A�g&B�S��^|s�"��B���%ES���}o:?}�Y6tf�o�Vu��
p��� �)3
]��������2�
s���T�������T���rߋf(5�`���>A�i��"D���' C���s�Ҡv�#(��GB� �6f3��g@D�פ��Z|P���zې�����'�0j�ʊ�&�
��%��|�,����د��d5���v��ns Am��b��Dx��-��kR�߿��ς�`TBY�I�Q���hg�������\��hQ��]�O CF!�麀�BC���J((yR-1�ɡT����a�+������>Syü*�NO�M�Q�>l�v����ƛ��V�D���N�e|P��f�T�J� ����Ya�3��'�3�����hp��l%�5��-n�Ap=� q]��rp-�~�:�$a��㺔XTr"�� �G���_�,ƺ��SE	��zO � ���������� ����e��E����`�/�op���Rd�H���Y�R�>7��Sf�G,�|�<Z����4}���o�m���b	�S ��}��� q��P?a:OFs,Ph5zb'
��2��Mj�p��|��hDU!�{{`�mó�=|28h�E	R�*�����O�%.x�XȠWpG5H��,al����h�u	s�,'�r�q��=���p$���%�"��~������h,�D_�Ț�<H��)�\#���ݥ9!/��$3J����,k�z/n�m�jF1����^0ň8���a7)^ ���Y:$q�<*q�U��Rj��ؓgb1Fl~��`w=��
��jp�M}" Qx����q`��3��}��.��2!��X�{U�:�و�Eq+#��e�%��^����FS��x�MQo&�'�=-��$��EI`�tB�(4Y�S�7����2Aū�M�e�:@�'����V�� � Z�	�6q�s����̀1P�hP.�F&����+��К��}	�4�n�U�+Y�Ԩ$m��'��~�+-Ĵ)��H2�x��UO9}�J�yly�x��s�`�����t$
�@pj0�L�,�G��r�T �17dCRL�]���X�>6h-�m����24^*�>���N`�G'�f�v��j	�.p3���7�l%�B."d�b�dD<8"�L��N&����TG���!r�~\��=p|9�W!�b�|�����R&`�U\�=aP�W��J�� ��Hį?�G[�u@�c}��<�ei��~�p<�՘Y�P
@�Bm;��ˆF����öS�u�\�#9VRg��K����V���f�W���sV��	�79�M<��^f��"M!��>�~��eLG�N���/,�W���
�1�*�%T~d>�y����>1��G-�a��V�h�[�{qeᝊ��ف~�s��Yq�~��yxD�g��4OW��ώ i��R���#�C�����A<�	�0��4&�t����n;�K)�=��Ȁa����/�wۛ�W8Q��'k��@P����}�kFM�5q��
�Y����v�1���cHւR��Y#�>)+�˾;CX�<��ZW�i�\K1/;�0慂<1���+\�	}18կWHX2�?���H=*��CV���c,J�CK5X�)��ϵ���Z�pd�3��D�}Y)��+	>�b)
Y K�14�V&��sI/V��ל/��'�q�9�sh�n8~�� ' �#Ӗ�>�LP�1Q��6$\�/t��X>g��7����Ms�����!��t��W��Y��+�c:j��'�����!?T�G��f��,"u5'b�OWb�iS�a#ކS�ş�(�@�9�����f�`�ٵ>���?=`5'������������_��������z�~EC�I}�͘��d醰4:��C�k�Β9/�4O��-Q�c���m��-���������M�>5ڂ^x� B���*{}��_�\a#���6�Vsa�[ye!���۝��^�'�vS+W����x�4��i�f?�K�B8_���f������3��ѿ�+�:�n3&��2F����,��'�Ȩ�P12m�s�\���j;��/ɍ�Z{�6���}����k�f�dd���,�~��C	���K�W�����DP�,j��ЊSR�5� pj�AF��[�ꀖ�].�dKkd��SY@I��w����Jk7nݩ�J���1���D�yC$�R�Z�Q��s�%���a*�������(���:�	p��~߭0�l&��u,� �ĭ�R���Ƴ7O>ͥ�?Ò*�L0�W�k\�j
��<��⇬����Iw�?g:^���B��ε�#BmF�P��.���$�e�}�h	�Ӆ�(���U4o��ﺅ;c�/~ B\�xL��k8�jL1�{���Q:?I1�c� ��z*�#�.X����*�$IQ���2�:\S��Q&#:��z�$-�n��;/q랽�:�j�M����|Ig[��ŕ���X�o��,Te��\��������&��):��_�QR쪹Q�J��,���, �6]��U����XXz�9�R�b{h�H��gqd u����'���/2H @F�����įƆ�� ^�PCBձ(�m�s�B�m��Ȓ	e$Ȗq�;B�h� ���?�*a�V#�M�<̋W��ɲ`�7�d��m��"K��]I~��rm�_c�7�G���!�� ���z`�h��g�w�r2���hJyGlAWF�Q��X��\���$d�-�47x΅,���!,x'��P6R�R���Ē��¦9�QٛF>l��֋�� �3ұ S�j���Y�i/�CDaY"��-�]Ɓ9�O�o�hY�sH�������V�WI����_!f�L�1^Zл4��!��.���|��YU���|��I��z��G��趵���,z��OM���E�B�L�± 2C� �m�jc��tY��=�])myM�ZW�z��1e�Q��!7H�,��ҔC����@0�β����JK    ��il�4��Y�$dd)�{ө�=��z����V���������AL��&̵T��K�a���R�d�+1�E�[�UF�n\�M�L膤��-�sK=P�h��7��j��P�]��i��KEdB+N~К$xq��@��BYi�t��	k�!.ǋ/�.�A�jF��+���Gi>8�o�(��׵�d�j}�	�gX�d�[M(�ʵ��:9)�����)�&C��L��������.i��rG�����`���rl���31�[d\:�UiB1���Ƹ�8�
��ߋ�f6pT,�nj�(-��.�UF*x࠼K��:*�2e�&X�VLʱ��zB=�-�No%�Kbc�/��{�f�JDÿ��J�Q4�#�C�i���pj���zl�^n��+��/�k2dId�P+=V.~��pM�,�^�p�'��/ц��z�8��E,�,Ut��u��r�/�\����4�p� ��!'�RF�L
p�R�,�s�����z����R~seC��s����1Ƴ�a~�\���D���e�f�6)f�ߪ�-��&K��{�ʝ�j�� �ͧ�������m�z�����.<&��2�Xjp���CB��@&�ɡ���2qy$Ɍx�P�6��Ȭ��WJ7�b������(�#շ�{����0����R�6'��D��6�a����|�ęZs�̼�e�2�D%��
1��zL[��<��)����$[�4.�iABm��y�IV���|B�n��xy�����U�ZS��B6'�%���!����q�C\1f@%���_z��`���%���g���~!�5J�T}@V���|��A�$P@�L;���'�s5��@l	�`<}0P��mw� �@���h��w`���t�,�HS�eb�d�x�qD�w�B�i�T�'� 2���b�А�%*q���\$�1KFd����$�jVg3B}$�KP#o�Z�A�;�Y��<�@���j��#�:���	�Q�,��"�I�P>�h�Q<��:}n��?�s_�����MPH
Y��qe��4�#KF&�0~���s�̰܆a��B�I���:��b��lM�11�^�WއX��<�6�#�DB��vSC�I>����n-��l�l�3'w�j6؄��њ �z�ek�V��g���Ѩ�?3�co(�d�1x�:IG6�0�[����B�d�\��3��(��@�e�"Tf�$у{��%�J�:ֳ�<eDق/r���>�:e��I��u=�S���uK�W��B�v�ri��M,��o,�S	�ɢ��J�*'iU=_������-��̡�Q<0Y �������=S�K=F�`d�ע{@�W���f�0���7���x��#|�@:��D�BvöP��0f@Y	��d�u �o�*�@�T&�JU!V'�oJ��V��H�e[�̨�)'�}@Y�Y��s�� ch�w���Ʒ���h�!M*��)TD���󀻬���xnG�73����M��WI�@	�68D��ͼL�7c��q�C9�`~��"R����6��N�oC7��A>�&ˡ�4�2Ͻ�s⬉�X$��'�G�&䢃@!�A�B�%�f�N'��o�.$��ZwV߃�|��X�/��jDg��d�,�ED�*(9��ٌ��+�ӝ9~����ܢd��|r�IV0#Ը� =ö�q0/v����v+�,}�	~�䮔Ul
L}0r@`xb����2�3��b$�Z\m��`�H��/tVBy��ٛ�2���(�@ޖTɰdF��q8���@>0?ڌe$����@��JYOȫ ����L��]-�P;'%�J�ce��Xn�Md�3#��5F{����-��`�DZ1�`��!�j�
�z�/��|G�z2D��DP��"� �+p��o@�2-i��%:2˲�J��@��]3�$�Ě=�Wy�(³yC�n�w�����2LaI0�ѹ�#�'��!e�'S|E���GS48��p�R��S.���lEL�uU�^����I��'�Ȥ��������IQ Md1��ɾ��}g3T��?�4���~ߘ�͙����P1�R�<���h�A|/��ؾ���j_-�t�؃z�\�xV<�@���S��Z@�2��A��m�Z��-��w���P<~��f�6BV�W�0���(�W~g67�>� 1JW!'њ�U�H�QLl�q���cF�v���(���D/H�]8�� 坿(����ђ|U\j@nB�܊=5+a >+�aC�;߸�%���_��a���;�-�_p��Er�A��O��|��deur��[+�5���qfE>�͸��{`*D́��Q��`�`�M\�>[���g��[	�~���@@��Jqd�ӱ�(�l�t���c�<��ŏ���p��%�ך��p��z P.@�B�z�=C��VZt���78/2���M2�y�L�2�~hWW`�T��u����}D ��뢦����畜'3���sdf�Da��L�IcoTH'��E�K��j$%�<}f����	�x7��3�kІB����!f��V�!�>C�C�O(�O����W\�ƞ=Yg���J����~HC�3*;����c���YM@n&`7��Wwq&�".È����ჺ�8�P��=�a $
6K�Uc�����՝�y<8Q/�i�OH�r tI� 圡�H/�'!"'��?;�`�	�FORt 4;`�����x��;b<S�
Ԃ�#�Ȓ��7���-�)��K��y�`Z�A��"�[�t�S��tM�!��4hA���N���lUܩ�Ÿ�Ud�'�Y�1�1��O�o�8BG�s
������8��s5>���ִر��A�+��Ա�>���D��vdw�>�?"ρ����BK����i��拿���J1P��ǝ*�R7��$+%�']JFqƖ CL�.n����Be6�Ucq4U��Ժ��Z�b�SL{!��J�=����.9��eBA�2�ݖ2��Z`��.-�:a�-4��5ݜ�1��B�h���
 >9���Л�|K�;���,��U�`��Z�8�����rs8E��<G�h#JFy�d�^��Mfmkf6��qgX>mS(<�L��¯�m��b����)���I�A��u2�8��er���4�A�!;����e�Йʶ7����p�2�v�H���DRH#7�w�x��uN�-T�:E�:ݙ1��m�8:�7�Nl����>�񘟄��3''<,:�:�YQ�������0�:��ح�"ڮ�Á�pЗ��[�>}^l�	!��i�-`���7e�1?JO�T�%\t�{�o~+�!�;�����z2t��^YI�u�N�{h��:N"�nF���a7DA��)��|�X��\2/`Ӱ��w4.� ��c���,���y��)*#7�G�6��*��,����!pr��g`N���,XA��,�+z�%�rIn�B�$V��1p����1
�ɨ.�������I�.���/(����Ӏ���V*W��P���;T�<�wY���8Ys@͖,$]�N�%O�Y��.Mx�͚�ih{�wod�R�,f܄��2M:���%Hmۂ�}ђ`��5����&�V�O�j�m�4p�%B�'�8K2.�H���8l���Œ%��t�?I�˄(��k!g	bNYH��32�*U0'R<Q2�81ju�#�T������;���[��7������)�s�fc$�D�@�Q��Td�O�����)�[��.�jI<�XI>��~[.�����LI_�0pe��,J.�'X ���0�@�h����-��l0(ſB�*��P��gR�e#����BB<�V�,�a
���Tp(�8���Q�����G߻bD�)�_�Ez�PZ�shL���{�<�G��^�%�92��eѤ �Xќ����/,%9��!�Ee���-(M��t�D^K�.�9[\P    ���� ���E7Y�F>K�ݼEW�3k��elr	G�Ձ� ,� �TB���9�>��1z.��We��#���mh�&����%�D�6�墐O@�LT,�A|�~�$攩�b�������8F� �� v6�dٚ��e�A�p�M�dBq�SK�n�����_�XK?Կ��'v�h��y�_1�F�q�(�c��aH'J�V�6�S��ɑ�Y��8�ɨy��D��G��<�Z��-Ng�1���2�OB�����y?z��F�Z��!�W���?ߞ]��DoNN���o��;��E-DG��ɖ/�O������������λw���7����6uy��Z�
�Y��sy�H�cY���Oc$���F��q�.�<.�ę����U�>�+��dR�3ZIl_,�]�Z/@��[��FԊ�ߜ�܀V+�-r�3���y�1	���+"Zh�a�(�m%ՠe��iJײ��ֳy=Kv D�(_E�S�!(Y+�ȊIj�?a�`/>��V�+0�t�!�)�L��z�R�Sˆ�C�
��.��	-"���Z����ɴcE?9y}s{}ҿ}���_z�y&!Ud����cqض+Yz�s�)�OHX䘱��1ܺ)CE�š��%�91���x�4Q����f3�s���T�Z斺;gӁ�� �$�s��j�Y�kpn��h=�^EoO.NOn/��)���w��8���X�4PI�4�8Sb5W�,��~���	98�H��VFAL�d&A�x�h�:�K�x����Rx����LK����0>����4�����h3R�͊_0���'ނ��x�6�B�Eo�p��w����`ww���'!�m�L٪O�MAݽ"
��W8M>�yʹ�ۣP5��V��6�P���f�h90��vŌ�,�B��ND�4�f�f�d��c/{��H����7O��l�W9�#)�n���M�KY�	~�R�|�]	eء�����ԫ �֤B#��=����o����#���_��ؔ�6�؜I6�/6 з������L]j.��u�X'���
�Z6�5V���
WDIA�I�k��P z� UP���'.PFH��<����Qq�%�a{���|����/�ÿe�ǃ�_N𗅵W׿�v��]*pX�_eʈo2i��י6.]�y��R*�+#áÉ�IJ��qbG��?Sl8����`���-�B{zl���r@��fbϻGn�IŒ�s��8�i�l4�Ov<K�,����1	Wm������E�H�ȕ�qNf�Z9Jbb�������!
+� �fEH����/'�{��i ژ�k$�K��r��6�%j$pќBH��
2"��yф2��3Y�e7c���'�#����?<l�V����(k݅�ۼ���z5}�L���ݣ�]�`��h^b
����h�)�b����H^�y�v��𙬳�g��x���\b�AJ[��Dvܸ����z}y����" ��?D�=t��}c̀�� �l@=g��Vi���L�MDW�C��kR�8~t�����M��[������-�����0n�U�n����;Z_P�{�Z�3;d�ϯ92�����������I�,f*�nu�F���P�Y_���ac27�#�m�&�c��>�0
o�zݬ���!��)t��(��u7�R���́�l/S�C٭<>F�9Ao����M+
��;�B�,��K��ײw�-���r��,qE�@*&RH�
ZBqh�!l���8$eG���d_!OX�f��?���_����GѼ�eN�.pz�&e-g$P���܎����v��9f��
	S�l�Oy+�$�k��E��[َ�ڄ�ƘwMi��GŨ��W�Ԅ.�2�Xr�_�MS��TU���a �r��� ��,��=��b��/!/�-�;�TL�������F$J�e#���	0,����=�ϧ-�[c�%Uf�+��*7�c��d 2�v��ۄc �<�j�`%�s9B�}��F�bIV��jp�� �%��J��o3J<E�����ɛ�S�0�(�Q�����"����]��������Oŗ��nR�?��I]^�_Y:<�S��|���c�n���z���L��M�IRr���OQʿYc�d/�&mٔg�;�]=���q��A�UdAf7����ur���q%��5:x�IVm*�x�F�-���s@���݃�e�z�L�t��ƕD �!ΐ���4�� �c5�����+���+��42YE�{�M+O�jT��	�(��%���BŢڗU��N�� ���c.�h&�I��	/�wH��ˡW�>��݉5&_����IE�\1�wz@��k̆suu5��$�'4ʳӧ�����Y���\��qR�OO͓��S�ɏ�g0�?m7�3L��xӒ
Og�4d���A�Ԩ�k���/�v�|�e�����L����q�V�A�R�aj�
O#+; 
�Ō|W�bY�������v �<�t�ʽ��\�jE��{��=o��nqxM)>�Bh;�Wl�l'xX�R�9��}�U�	.�$�u�a�lВ"sX�qdD��P`h7�P��7�l�t6���C��Y�)�M�i*�C	J�Z����{��Y�*�k�s�'J>��!���*�e�F��{2���Tz�ƉҠ����e}��](X�&{���ȢG�%:5�x{L�k�BKk�n�M˵+��U��E��-�T�݅V�Mq9�ϥ�7�(��l�����4�6��UVO�V�r]3�LY������,~ ����1NV

�)VBr��������*>~�⥂�i�>>��ٕ�~��C�](%��%_c:e4�Qm�A�z��
�x���x��Y�w�{�#�Y坨2������g$��]�*Xֹul�\�wE^8dn��o�l�#6�g^3��^cx�סi?@�~#M��6����$[�%IZ�P;�
�6�C��t6�jJ���r�;m$3����Ud�Qb?��#�F~���������&����"f����+�v��,k�����t���FM���T�'K�I�z��%�B�aZ��j�=&�� ]�u'���{Ȉ�n�@(Km���|���:>p� .������	>�R%��Ĳ��6���5� >L�)�E;m�����b0՛M�������-L�#���&�t��@�D^�?�y@��<jo�j�F�5��\�B+��PsW$A�WVB�k�[�6�XZ�\�YG3�Ԫ5�Ҕ`Ss����?;)Y/f-��lu6]]�NQjz�����ܭ擺������ܿ�WCƇl��-}|n|�L/��FC7p��P�/ B�R.o?D�$f�Fǭ�mz;�z�9��!�K�R�}�W=Kt*5Q��VÆf�k�m�xp���A�J�l"7O&�/��{H�#�,HQ�C,�7�a�D�A�^�q]��;�|R���L���@�x:�lj�7��G�]�w���(gۉ��4zDPf%p�[��d:+�m�n��
\�x��K� H�Nޥ)I���SA�D��&����$�=(�R��y�G�H�ǌ�B_c��Yݻ�/J�[҅oCi���T#����<��9�P����aG+(�4�����E&�7���@��S�TF�
/8�]2�9��aP)�݄U�j��,�S�?~iyE!��RVՕ�֕�ånIz�NҥHY���:Ʃsn־G8��/
�4tBxW�d�#�i}����crK���?��|s�:я��r��_C]u�f��q����x�u�-u���a��q�$�l^0V�|��P��t��p"�5�0�	F��jl"rZ�A�Kz���~\�g���`� �7H{�4e�+�3W���6}�b.T8y֮�nїh�	���fm خ݈�5e/��+s�K�4������B�+y/0)����SuxzFf�xon�(ԉQ#�D���O���}���Z�"��@�2{R��ӏ¹�"Y�9��3�]RLdM��I-�/9�G��s���_#:4��Od�w��H|���	M�'�0��f>�-Mg��4��@�_�� S6��2�BaCW�*)܉e�    �C�Y�F�����
+ D�S�a䔋wW�g L�S�!ҿ�!l��s��Z�궔��(��5�Y���Dm��C�g�AΖ��qt�2���lQm3�$[�E���������D�9���,ӎf�1WC��=�O`�i椬���v���(,�LK�I�' ����Qi�9����N�gc�?�PQ�4�lxN��M+��]�aǎQ����T3�t�n#�n���wѿ����ݿF��.�g���g��.���ݙ%;}��<�rF���S1�8��ڡ�D�`�pQ8*�+xU<�cU�ڂ�XCb\�� AQ�)���x�o�iA԰�A'%��� ,.#r�O[y�4؊)�5�t�r��MgSE���ː?էY=���?l�rk��ڏ��[�p��M���1נ����͊����%�v\o�ڍ�
��x�Ұ|��g0h���B�������{ݷ��G6���t��{(�8z�QȦ�cx/�m=���j�d��Ks�������A;����֠�*X�u<�A�/8��;tS ]|�	4���[ُpS7zL�u'�i[6�ٝtc��3��� ~c�M,�0�Pq90r��&�ڜ�2��s���T��h��c�����S f�����|�r 	�y����f�o�߻����%z����m�<1=x�lt��-�d<Ƶ��Ѭ{���C��2���4��LhI�_*�c��"�Z�2��k�iqS����z��>�!��5�q�lp�p�#�Kl������霩��cU����(�WL�D�*p���R��/�8��J4zA[�a��:_Wt�&`/�Hg�Τ�9	��L����rĂ.~���a��بE��: �Dᡓ�H�U���S3�l��'�=�W��������bY>�t�D�$'����~1����<�i7[KZ��*�A5�J�=���0�?���:A�g�МB���к/����($t@>eZv��eG��=@x[	[�g�
�f�1�O�)�h��RZ������>�.t�Үp�ӸI@=���;��}1�zsrqrC�򻷃��E�7uy���S���~��(<]����ׂ� Gp
���W�v�������7���ˍ�N�K�C�,��d�Z)�j���Lgx�*'6�q[7<t#�۫����w4���/���`�	��T:�5ej3\S�v3�Ƃ`I�!�6l��XIp&��rX���	�\Q3���\-��E����(�o��cc��J�]5����l
{�S�b�n�p��@��`����	
������Y�N�D�Ҫ秝b��O�E�[.V�E��X�G�*��`ݨ�(�&oі����3'��ZWD�G/�e�kE��X]�A!s{1�X'-@���.	�B ׍Ztet5���}so7��])��$��'O0��cNs�Q�q�A����3�?�SIɻm�0��`���y�!|!��	��Qp���YCx@Q��+J
i�b�/�b:� �v:��;�@pc�N�D(_�q_��T+�����j7��6Ng�]լj5�:�[x���a�*32���̱
�Q	M����?�]���3��ᝅ-~>����,���^R���
�)#,֭���;�+EiC��h�#
�*Z����Ԫ���Z+���Ks&>(P��
ѩ�RM�왾M��!�HG�8�jVg��|7��Q<ؓ�s��o���#&��W�p�5�i���ަ�p	��4T-�����,Y��k���6n	�Ȗ�J�:��>b�JƇ�?f����u�%\�xg=��-M���7���"��^#L�ق�r.)<��gO�9k��fLUG�Ⱥ���6$̫t]�C&m�G�X<�����@�9-���Z�*��G��%�Wen��bCME��O�U
��$����Zv�g��pI�US�ak�����PYI� !�l�6媱��:.Iw<L�c�MxNˇ����4� ��:������.�E��EUU�:.��?� %˗�a�M�Kٷ�2��w�J2V	��s�a��8�:�O:&�^�,��>�˯�C���V�Ɨ�� ��s���|[!�2%<ƣ9����@��J��4X�v����?n�`�n�����n�7�l,����o��;�E*`5[�5Y��vI-��䨬|畅5�n`�ISx��M;�|� ;��Õ���̈;k��w�:����Vao��ܨ�O?8�[�s�������rN�������68��ܨ��k;�ǋ�3��������,��bV�0h���oY���z�M���\(�@}�Ʀ�tc�מ�V|m����ej2:r0���'68�ֆKr�??�=�����@��P=ŷ��g�x�ئ~e�����Y#XEв���i.� �Gq{_���4�a,t�[�n`������:/��À�n{X�P�ȰSaQWф$��W�3hV}.%�J�
]�ՠ� OM�G���g����&PÃ�`��WY���G�cs��L�
���~9�oQ���8y���M=�Tt<ʏ�ƟЁ�	��9�8��'�4m��Y���h�Y \�j�)̃�ͣ�y_.m�>`�A}�.kڻt%#g�M�"�$��b��4:(/9H͎�<�#�>�=��P�Zܼ7v��R���\��[�%�izmB�a&�!w���[qC8̱ojͷe`��mz���N�ei|6���|yi0��[J��拊��r��Kl#cP�T����-_�a���Qyܹ��`-=E-�3����XE��1���k3؃.�jYU�=�5����g��^����ɁlK]]��Js� n�\&58�*�]5[����$����	þ`��Р���18��*�.Zjկ	�zM���F�ب�$�����cU��/�i5m�I�N	W���*�69�	��<`��9�`�*�%b�i[��d$D��x�V��ebx�"x����!����d��ήa��w m�?��0�vP�e�cK3Pf]P�~k>�8֥h�.Lq`����do���@�A��8�8����v��6P�}v�����e�1s<�Q=d�����n<�.u�"G�j��tc�0�в��0����s���Kc���V~|7x7%e�8��H +%tG�!����ŷ�S"1{�J�7��Jܯ�|/�R<�ԶG��8O��d"��cM-7���;mE�,�k>�i��+�P�{15'*JX�1ˈ`�-��m���2�R�W��D|��H�o ��ql3q+؃����{�{�0��>{� ݶK�Nnn���n�2�MK�1���ԅnܵ<�u�[��6�D�d�|b�L�	�Q/?NRq��!U�R�w�4	���ɸ�/�I�<'ț��-mXl�$�zgH&�,�.���=Z���Ƶa�R�J�2d�N���G�L4Z��<נ}{?\m��e4��SŶR���%h�h��P�۠3Ƿ�-i��+����fy�֜�f��I�~	n�=i�k�r
����̫���5�k��w�����v�������^�����yq����dq�~��s����ɳ�/9��tu��<={���$�?����a>�������?�TN�*��>�� ��g�7�����;z�{�l��"ZA���˷'��n����H�������������%�$�^�bW�i�`iև{�����-������G{�8���>A�.��ӛ���8��>zrrݿ���^�������H�Op$�f����mt)^�9���{��뀱���w�ߞ���~}�xs؋��u����|�r�Z��:=�_��߾�>�_1���雴�����Y<�ESc����"H/�mߏ���;�����V\�7��?��G�֟ƳY�O��B6O���
�*|����g�S��ͭ�ۄt�E���z��(6�uw�&�&�^��-t�n�����[h��\�{�{�`l��\�[�`�[h3�&2����m�ɥr��a�mH������F:|�/�J����n.�C�_'��_�i[�����(���m���q�͋WW���	�c�j�R��v_>�ݓ�T�������	�ZϚc�d� �عOlՐ]�yU�5S2oY    �(���YoW������ʀ����!��"b���؎���_}oL�E9V��L)C�'���U�m�L�<�������$Fr��
�XG�����TO�����Q�ʉ�'7���c��`�=�Hz�T�I�Ui���-	|Ae�\}�pmsD���{ C�Y��ӶxհQ#]���j������E�5l�dq���Wۡ���%�*G�92�b�s\�=E��$Xv��|�u�� �5��H}�w����׸S�A��6%j[�AW�,��V�Sg���&$�m�~O�Ǻ\|!�2.�E�C��.��r��M>���x��{�Ӵ�0uX��i���[�vJ�y+���!I��[��U��!d�0��M�P��5�t��Vh�}'�2��d*����C�S0�������۰���,KF�u��U\��a�RRZ�����]����~��˝�6���"���r� �tW��y=�=Dq���k�������/�-u+Ċ�Ih��؟r�ĉ=��w�%�81X��`��`fr�{� y��ogؼOc��sU �(YW�	���{� X�|�a�=	ȶ�4S"�����+hjJ���B����rT�S�Ж��(�5��WX�WŁ>�-����y#�2v°̰^C���'�c�U�a��N���r�w�o��آ��}�ﵠ����MW����*��7Ni8�ʟ�(�r'��$�����f���Iw��~�4��P{��1�aB�"�M�v���4��X�帽�:�Ӿ�L���(���XK�2�s��#�`lo��+�J�ߕ����1�O��?�^c�N\��b�ܫ��r�h�D^ۍBmz\��>k����!�ޫ����7�]G*juX���Lw�״��ΙP7 KF9NR9`:�^z�x/��;<�\JÂ��K�nW�Ũ�Ž;n�������m�t�Q�@?����5`��"H8���q���=o68��&u;���6,��,�G� 﫮����� CP+s��G#���3���qQ�Wa��AS��k�ﴁ�?YstK���d�ǹdXmEĳqqHt������c2��-M�Մ��D��V���*f�����J̡K	ObB򯈊e	6��_.;�Zw��a�W�Ky�*h��1u�V�����̅!7\m��,̳z�J�~�����ul���gݬ��孮�O�5JV��������j�����ul�GX�_,^C�PD&
id�L�
G[V�rz��Ư��K��_g�mx���S�#�AL��j7ej��W0���D�5�bvM����fRlV&3R��[�B�Y��k����k���,��O��n�8٪O�MAݩ�UN��q��ɖ)T��$�U=�Md�&�83i��Mx�bF���M���$�͵f��oX<�f�ƪD�vQ]xҷ�b��8��X�:�<]4|;���3QO�xr��^��J�*�ŗI������1$i�"�	Wˌ2��>�"'(m}���gn�6Z�b���!\f��r����EҠ�M1`Eu�/�y0w��tt�]R����0z��N;ZqI�>��U��k>j2s���@ K�=N�f�0�P{w{�4r�͕��(�~���<k�j���u�r�[XSP`�B��Uc��+��׼�� 5t�~v�'n������tgB���0���<AW�0���Aa�����Ғ�C|[�@��7� �.����������괌/l��#J��~�!��Y>�e�N�#R �l�oᵠȵ�i���Ι*-�?�m��x�ېr��lfBM�!M6M�$�Φ�="�Q���h[D�*յ���dn��Ln���bK�`Z&�]�H{���P�h���~,?���.L��+]�T�Y����ܑ�����	-gWF�g�.D�ŗ��cC�A1�w��ueOG��w�C��A��Sb8OHk\��K8;�T�7���KYm��� �R��t���yrΰy�oh��ؘ�d�g>��[)m2>���f;6��p�;E�ˍv�>~�XU�#�>��g��Q5k82��P9D�Ӫ�]ܩ%���\*樈l,��[��$AO�HMq#N��s����|KM�2�h
ִ,�{/����$U,I鶣6_��oƔPn�՘o<��4���D�%c��f��n�'��p�Ba���Y�{��6��t�'-��+���̶��v(�ض�T������9MtR�,f����=TO龓`���e�!OD�]�Pn��������_8�g*a!A�j�rg�����[E�t�6P�C�j�x�utVr뮳��Ǩ�AY��'�!�G	xt>&�Y���F�S5=�b����y�ב���?n�T�5�q�s7��������͗��ئ�4K�P�O��y��!�ձN������xT�lk��I	0N��e������t��v%u�c?�@RԘ"r�T��+����A{���)1lh�^�:/aB�ª<���ESfdz
_@!;/0}�=�^�js��blTۯ�����Jo�.��@�/P
z�S&[�'M�W^=m�@��t`�V�w[M�ْa����ia3��C��I������Q�]�"��-�����YiN�.e��-���v]��u��[|��|l˧��ו�҆]���4�*ƣ��y����_i����{�6ܴ���o��g�e��E�L�h#o/"�1;�!'F��a)v伍2��U��P�^���G	���(3z��8�:��Κ�yʴl4BÒ��sQ�o26�����H�wu�%�n�҉^�p�`��R���Z���yRH'i72������t��a7�0�Xx�:��++�9����FY/�j�<�_qj�kTu2S����=G�ז���;��g+f��N��Ve[�V��`���K�5�~už$,�q롚lB/w� �@���s��B][���e�rG��ԁ�%[�_�p��X0T�9��o@��̌�(n����V-��mEX) ��c������ФM�i:��י��`|��#mY�׷�i�n[�>#zW����M���t4��}nf�8�k�m���7ԶµHb�=�����`
3����v1|w�]Z�P�|�<D{ϻ��.�R��ݬX�Z!6w�k�j͒r
`��~,�"J��O���}!I�|��I�� �@k{2p�,�8�.r���w��k����J'���/��p:�ϟ��ñi@M�����
�w{��Y/L����a�(mj�g&UH׀9]�	� pF�4x����-���l':ˢ�wW�g`�I�X�QLPT� fj�F��Z�SݖJ|c��ŏ�U�c��F
��0�b(&7&��u�9[�����{�n�% �����,:��c&@���Ǽ̈������}��,(�8�҉��p=⃔C��aϯS��a�LS�������v_z�Q��'���1��hڊ����^�|'��^~���1M����a�����J����_��B�R8���u�	n[�����X��uRM�̔��l8���>�$M�O#��a�F,~��+�����n�̽vY�h<�����Fp���t�A"�����6Z:��Ե00*�����F�~��:�r��"n�_���#EH��ao��%������+�=ͨz?�7qZ(�,���u�h��!L5C���<��X�	��/~�,_�T�S*��"��r������/�2���)y�iy�ǳvig*`*;��U<O	�$	
�:�x^�HTq�k8M�j�:E̥�OaS[rۜ���2n�Z�SF~��l^XvBg��-7�+�k0��Tǡ��m����.u!��ٌ;�OFU��mw��X��w�N|⺦�FG�xr<\rUJ���YڧY�|, njt�p�v]��ٚ��~���A,#I��e��i�}�p��g��X���x9��o������x��lh~Mv� �����ۤ�\��Y���1'�G��6�y���~��_��4oY=�uw�,��A�Jm$T0�]��5J�8���)���t��2y�;�'�!Ğ���7�ղ�e.cMk���"m�b�5����c���S��~�l�>la���4_Y�=����CϗQ:PƵ�H63�%�C�    Mz=R��"��W:�,:��.�F�W�>x��G�ɺ�MS�dY^�*��a>�������?D9t�:�u������~���{�1�z�/���_N���k#I��ŉ8M�����6�Y�"�XcɲX�eBI��s��"�&X��"���w��+gE���M��q	��R I0q�TEq9L��^Jf�V��*o����C�����!�2zrR�w��������"�]�-�{�}������}��}��}p�<�s��s��s��s��{�>8t������������������������Sx�v��q��q���ܥ�K�s���.��{��ܝ��.��]J]�]�]�]�]�]�]�]�=��)<r)=r)=r	;r	;r	;r	;r	;r	;r	{����.a/\:^�ݾp�}�v�ҝ��./]:^�t�t'�K�Kw�^���t)}�Rz�Rz�Rz�Rz�Rz�Rz�Rz�Rz�Rz�Rz�R����]���]��]�����g��������w=�����:p�9p���\Fq��n��>x��ġ�؝�c��cwJ��;�؝�cw���+�ؽ���ؽ���ؽ���k���`�G.�6�Z�H��t�`!tR�flRE��%��@��6\C�k�J��z�]@�3��*��F))+͡^�̕8�!H�]|O�CF�u�� ��b�T���-Q&�lԈ�'3��ݕf�W��f��+�������#��#w�����=�G�i?rw�����܍|��#wg��ܑ�Տܭ~�n�#w�������n��۲���8�$��n�,��ҫ"w�������}�#U�����g����'bw��.p�C�L�8p�؁;?�<w��� ���[ñ��_Y��b1+k�.S�=�0u�<܉N��"!8	�E�i�,7@��E�qt���z{���B��)>E[[:���Y�N��g��	�6�{�4	9F7[�=_N��O����:^2����Z�2�P/�@ͼ�������&���:;P�K�/��xTgs�'��3�g���D�Ãc�&Ʀ`��j�m��z��k�������d񗢧ґD�9�vW�T��oH�׽��}RF�X]�=q��F��~fG]4Y��'eѓ��'D�=��� S؉^��2"�������~�j��p������H�N.��?���#�2:��PM�8)H��D�>�7P�5��I�Q�V�8�E�04l@b��^:A��P��w&��oa��.�~_E��U��$b�Xq��;HϟSX�>Ͳb��)Ğ�K�y.C �R�o0���bWdV�":8�a���˗?||��i�հQ7"B��-��L���D�%kIW*�=![,RJ��
�L���ӌI�����6��r,x�L�����Zte�T
����<2���v�t�8s��=L�#�s��Q�y��]�14_���Y�D��
y�J��8@����]c�{�S*dK�*�&��X2���1�A�2��۽j!��a�g�w�阼(<���
d6ܜM�ʄ�� 
��S+&D��E��,z�õ���>X> �j��y=��F���ȃ�=�y�4�}R�ԄQ������0�xjńd��������**�Č��D�81B �Ӝ�!8 �
�`��4~�c�	lؼ�ѝ�GSp��&vz%=�A����:�%c��V��&�+7Z�
�@E~y3�Uc��dq�`��\�%b5S'(��x\�1��f�68*�/�]F���v�26D:]��;�a�筃�2
��a��x?���ԓe�Ϡ�Ll
,v'��#`O��~�+�@_`���	z@f4O3������bFp:e��}*D�B41�������6��s&���p��,ܖ鰞c8瓋�ۧ,�xdNGV;*A͇�Ri �X��k)�ff� ��d�=<�۶Q�緦s~�b�1�%V4CP��(��*�O�q{`��o%(����V�^F�X�6$2.?2(unkd�zp.�9�Ӷ�_��)�/&䅸�}J�	�L	�e(ƌ$��Q����<h~�l�A� �O?T��+A�зX����%�m\6d�:����7Ј%kUo=����R�b⿉�w�����I�1�B� �k>2��;���\1�=�tʑꄇ�
��^̊�0%l-!5��A]����.ޝ_Yq��W�)�i��VV����0[���	ďz�������������T���B�Al��!U��/�*�://A>$��
�0�5�#��ߦB�LI����%�Χ���5�M�Y���-�C�\��W��(4�/�w9Z��S�R�+�����1�)�A��X�d$S�nTY ��(�d��D\#�P�-�x�'�T�)D��/M����Zd�$>f�,�'��@�,K�P`��� �
�ʂ+J�U�1�;�_/���'��Ʊ�f�l�X��Kv�O��P-�N��=wU`�B�(6z"�J�g��|0� �Ρ�>/(�F}�&m�F�����g��1N�᝘�%R,�R0��ґ�ԁ=�W�i#���K��Ll���&O9hx 4>�ƺ�x�$����ݚ�y�i�=���U��|o��'�s4W��%�#mu�MV��F���>I>�IFi$g)����(	�3�M���.�����M��$�)dg��ć�Τ�/���7r�rX�ᗃ���L�ڂ�,�w�P]�{�2�� ��궅e������k>זϊ�1��{����Q��Cl�
M?x�F0y�>-��'Bk�K�Y�3Et3og)`�Rv�e�Ğ�����PO�������7N��yD��C��N}�t҉��S�����b1��E�N F[�gB�O'�,0�=�r.�)� ��v;�+�o<=;h������X|H�W2|LI�B�˿ 	H�y1:F��t�iEJ`����x� ��W�}�+[����&Μ6�ۅta��I��?�N 'G-܉�ɠ��Cl������Z1�U�DR3P����3��Tt22l�\	�Ē��˙V(�t)0���x�9�od����A~�9��VI:�F�0#u����zA�'*���ww�����t�׆R�nȁ�u}����@��嵥
�L��e��$�(݈D�����z�13W���NF��D��H�.i\�FxK�hF�,��81�HNa�KBF�ћҚ-�$N?6�	p)������.g�Я�m��.�r#J=I&���b�;'x�*n���iqi���j=Y��e�K�ܐ�[Z�U��A4V%��Z�6���t6ur% #���� �.��~Bꗐg>֟'b[��P�*}v���k�5C�p0�C(93I�Z� >�ұ=��,�����@m\R��tq9� ��1�E&Tt�c�쒲�P{B�[�g�߲��g�����C\�5#ԂYWv�,��"�o����߲�E��o���,"$\[�s��9M��Ӫ56x�i�
�#w;��c��uݕ�طw4@�إ�X�kkۻa�\(�Dw�h������WӪph���$D���,�T��ܖ�Xi�s�ӫv�9�S�js��Rኑ�6F��,	pd�����\�����%C�3�DLR�*BΘ�߆�J��?�8�vMD�ڡ�K���Wk����.�DP/�G��t�iR�
xr��T��ظ�a�Ѱ�F�a>^`��{N�Ik߷�
$�R��%����y3� �� ��f-�5��{��$z����6�f��U�/gv�����/�a��RF�'t���\��=��_�M�{p�
���/t!�ghc���ě��f�&Y"�>͋�=P�h�+4�+�7��:aG�ia�F%N�`Ж�Z.x7P�E����wA�P��A���Ǟ(Yx�UQ�I�r���P���/7𕹐��(�p���g�w�/�
&!�`k�l���!�SƸ-jx�����-�ONm�F#�$;2Vc���Q>��Ֆu=S&�B޵�f#�� ���T#>K��>u2��?M����Zp^]���i��]�$���%B*+�_�nm3�]Z ��z�h� <  �̊����Zw��ǦY�ٳdJ��g�J�?�����У �k���oVHqvc1{���ܕ_' Hn�����i����	�������1�Ex�Ht��H�3���G��&�M&��M�4������J��*��`DA$�����@�&dR�����E�烳�8��GN�	G���!��Y��T~��~%�9>~�r#4���T���R�`���Ԟk���=� ;P��R��!�_iv\�wv7$��K��4���=t�=t��%�#�����w�������޿�l�t�y�m66$��%�x�i�Ȕw=����$v�ڿ�@Sb���R��ٕ$n"q�����6`������l0]��j4�<��z�`�VS� L��o�VR}�ͩ�K,Q���|v�)�2܁�?lI�1�E�����h��Cy��f�BK��j����9�8��B�Ɛ��Scܓ�
��'�˳닓7OMQcH�FxS�N�'ZG	WNF��N�PR�������4XW�,MЦ�DU���oT��|�����]��<�{)���W{{;/_���������%��      �%   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      �%   �  x��ZKo�8>׿B��%@S�a�Yo�۸A=0h�VXH�@IF�������?��!M=����[Z#����P9ߖ��u-K��?_�gy!sy��.j����R�o�7O�+�s*4�[�UU��s�U�3U�e1�N�(3�|x�Z?>�_��SY�V�79��?
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