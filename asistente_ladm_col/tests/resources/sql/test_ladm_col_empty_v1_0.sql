PGDMP                         x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) �   e8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            f8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            g8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            h8           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false                        2615    710494    test_ladm_col_empty    SCHEMA     #   CREATE SCHEMA test_ladm_col_empty;
 !   DROP SCHEMA test_ladm_col_empty;
             postgres    false            J	           1259    710495    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_ladm_col_empty.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE test_ladm_col_empty.t_ili2db_seq;
       test_ladm_col_empty       postgres    false    16            O	           1259    710531    cc_metodooperacion    TABLE     U  CREATE TABLE test_ladm_col_empty.cc_metodooperacion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    formula character varying(255) NOT NULL,
    dimensiones_origen integer,
    ddimensiones_objetivo integer,
    col_transformacion_transformacion bigint,
    CONSTRAINT cc_metodooperacion_ddimensiones_objetivo_check CHECK (((ddimensiones_objetivo >= 0) AND (ddimensiones_objetivo <= 999999999))),
    CONSTRAINT cc_metodooperacion_dimensiones_origen_check CHECK (((dimensiones_origen >= 0) AND (dimensiones_origen <= 999999999)))
);
 3   DROP TABLE test_ladm_col_empty.cc_metodooperacion;
       test_ladm_col_empty         postgres    false    2378    16            i8           0    0    TABLE cc_metodooperacion    COMMENT     
  COMMENT ON TABLE test_ladm_col_empty.cc_metodooperacion IS 'Estructura que proviene de la traducción de la clase CC_OperationMethod de la ISO 19111. Indica el método utilizado, mediante un algoritmo o un procedimiento, para realizar operaciones con coordenadas.';
            test_ladm_col_empty       postgres    false    2383            j8           0    0 !   COLUMN cc_metodooperacion.formula    COMMENT     x  COMMENT ON COLUMN test_ladm_col_empty.cc_metodooperacion.formula IS 'Fórmulas o procedimientos utilizadoa por este método de operación de coordenadas. Esto puede ser una referencia a una publicación. Tenga en cuenta que el método de operación puede no ser analítico, en cuyo caso este atributo hace referencia o contiene el procedimiento, no una fórmula analítica.';
            test_ladm_col_empty       postgres    false    2383            k8           0    0 ,   COLUMN cc_metodooperacion.dimensiones_origen    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.cc_metodooperacion.dimensiones_origen IS 'Número de dimensiones en la fuente CRS de este método de operación de coordenadas.';
            test_ladm_col_empty       postgres    false    2383            l8           0    0 /   COLUMN cc_metodooperacion.ddimensiones_objetivo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.cc_metodooperacion.ddimensiones_objetivo IS 'Número de dimensiones en el CRS de destino de este método de operación de coordenadas.';
            test_ladm_col_empty       postgres    false    2383            m8           0    0 ;   COLUMN cc_metodooperacion.col_transformacion_transformacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.cc_metodooperacion.col_transformacion_transformacion IS 'Fórmula o procedimiento utilizado en la transformación.';
            test_ladm_col_empty       postgres    false    2383            �	           1259    711643    ci_forma_presentacion_codigo    TABLE     �  CREATE TABLE test_ladm_col_empty.ci_forma_presentacion_codigo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_col_empty.ci_forma_presentacion_codigo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711850    col_areatipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_areatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 -   DROP TABLE test_ladm_col_empty.col_areatipo;
       test_ladm_col_empty         postgres    false    2378    16            P	           1259    710538    col_areavalor    TABLE     �  CREATE TABLE test_ladm_col_empty.col_areavalor (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 .   DROP TABLE test_ladm_col_empty.col_areavalor;
       test_ladm_col_empty         postgres    false    2378    16            n8           0    0    COLUMN col_areavalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_areavalor.tipo IS 'Indica si el valor a registrar corresponde al área gráfica o alfanumérica de la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2384            o8           0    0    COLUMN col_areavalor.area    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_areavalor.area IS 'Corresponde al valor del área registrada en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2384            p8           0    0 %   COLUMN col_areavalor.datos_proyeccion    COMMENT     M  COMMENT ON COLUMN test_ladm_col_empty.col_areavalor.datos_proyeccion IS 'Parametros de la proyección utilizada para el cálculo del área de la forma proj, ejemplo: ''EPSG:3116'', ''+proj=tmerc +lat_0=4.59620041666667 +lon_0=-74.0775079166667 +k=1 +x_0=1000000 +y_0=1000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs''';
            test_ladm_col_empty       postgres    false    2384            q8           0    0 )   COLUMN col_areavalor.lc_construccion_area    COMMENT     {   COMMENT ON COLUMN test_ladm_col_empty.col_areavalor.lc_construccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col_empty       postgres    false    2384            r8           0    0 $   COLUMN col_areavalor.lc_terreno_area    COMMENT     v   COMMENT ON COLUMN test_ladm_col_empty.col_areavalor.lc_terreno_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col_empty       postgres    false    2384            s8           0    0 0   COLUMN col_areavalor.lc_servidumbretransito_area    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_areavalor.lc_servidumbretransito_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col_empty       postgres    false    2384            t8           0    0 /   COLUMN col_areavalor.lc_unidadconstruccion_area    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_areavalor.lc_unidadconstruccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col_empty       postgres    false    2384            k	           1259    710807    col_baunitcomointeresado    TABLE     -  CREATE TABLE test_ladm_col_empty.col_baunitcomointeresado (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint NOT NULL
);
 9   DROP TABLE test_ladm_col_empty.col_baunitcomointeresado;
       test_ladm_col_empty         postgres    false    2378    16            a	           1259    710716    col_baunitfuente    TABLE     �   CREATE TABLE test_ladm_col_empty.col_baunitfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    unidad bigint NOT NULL
);
 1   DROP TABLE test_ladm_col_empty.col_baunitfuente;
       test_ladm_col_empty         postgres    false    2378    16            c	           1259    710731    col_cclfuente    TABLE     �   CREATE TABLE test_ladm_col_empty.col_cclfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl bigint NOT NULL,
    fuente_espacial bigint NOT NULL
);
 .   DROP TABLE test_ladm_col_empty.col_cclfuente;
       test_ladm_col_empty         postgres    false    2378    16            g	           1259    710771    col_clfuente    TABLE     �   CREATE TABLE test_ladm_col_empty.col_clfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 -   DROP TABLE test_ladm_col_empty.col_clfuente;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711832    col_contenidoniveltipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_contenidoniveltipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col_empty.col_contenidoniveltipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711661    col_dimensiontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_dimensiontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_col_empty.col_dimensiontipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711778    col_estadodisponibilidadtipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_estadodisponibilidadtipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_col_empty.col_estadodisponibilidadtipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    712075    col_estadoredserviciostipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_estadoredserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_col_empty.col_estadoredserviciostipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711859    col_estructuratipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_estructuratipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_col_empty.col_estructuratipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711886    col_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_col_empty.col_fuenteadministrativatipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711688    col_fuenteespacialtipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_fuenteespacialtipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col_empty.col_fuenteespacialtipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711733    col_grupointeresadotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_grupointeresadotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_col_empty.col_grupointeresadotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711769    col_interpolaciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_interpolaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_col_empty.col_interpolaciontipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711562    col_iso19125_tipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_iso19125_tipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_col_empty.col_iso19125_tipo;
       test_ladm_col_empty         postgres    false    2378    16            e	           1259    710750 
   col_masccl    TABLE     _  CREATE TABLE test_ladm_col_empty.col_masccl (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_mas bigint NOT NULL,
    ue_mas_lc_construccion bigint,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint
);
 +   DROP TABLE test_ladm_col_empty.col_masccl;
       test_ladm_col_empty         postgres    false    2378    16            i	           1259    710788 	   col_mascl    TABLE     A  CREATE TABLE test_ladm_col_empty.col_mascl (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_mas_lc_construccion bigint,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint
);
 *   DROP TABLE test_ladm_col_empty.col_mascl;
       test_ladm_col_empty         postgres    false    2378    16            d	           1259    710739    col_menosccl    TABLE     k  CREATE TABLE test_ladm_col_empty.col_menosccl (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_menos bigint NOT NULL,
    ue_menos_lc_construccion bigint,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint
);
 -   DROP TABLE test_ladm_col_empty.col_menosccl;
       test_ladm_col_empty         postgres    false    2378    16            h	           1259    710778    col_menoscl    TABLE     K  CREATE TABLE test_ladm_col_empty.col_menoscl (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_menos_lc_construccion bigint,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint
);
 ,   DROP TABLE test_ladm_col_empty.col_menoscl;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    712093    col_metodoproducciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_metodoproducciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col_empty.col_metodoproducciontipo;
       test_ladm_col_empty         postgres    false    2378    16            n	           1259    710834    col_miembros    TABLE     %  CREATE TABLE test_ladm_col_empty.col_miembros (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    agrupacion bigint NOT NULL
);
 -   DROP TABLE test_ladm_col_empty.col_miembros;
       test_ladm_col_empty         postgres    false    2378    16            f	           1259    710761    col_puntoccl    TABLE     5  CREATE TABLE test_ladm_col_empty.col_puntoccl (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    ccl bigint NOT NULL
);
 -   DROP TABLE test_ladm_col_empty.col_puntoccl;
       test_ladm_col_empty         postgres    false    2378    16            j	           1259    710798    col_puntocl    TABLE       CREATE TABLE test_ladm_col_empty.col_puntocl (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint
);
 ,   DROP TABLE test_ladm_col_empty.col_puntocl;
       test_ladm_col_empty         postgres    false    2378    16            _	           1259    710695    col_puntofuente    TABLE     D  CREATE TABLE test_ladm_col_empty.col_puntofuente (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint
);
 0   DROP TABLE test_ladm_col_empty.col_puntofuente;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711517    col_puntotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_ladm_col_empty.col_puntotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711742    col_redserviciostipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_redserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_col_empty.col_redserviciostipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711904    col_registrotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_registrotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col_empty.col_registrotipo;
       test_ladm_col_empty         postgres    false    2378    16            ]	           1259    710680    col_relacionfuente    TABLE     �   CREATE TABLE test_ladm_col_empty.col_relacionfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL
);
 3   DROP TABLE test_ladm_col_empty.col_relacionfuente;
       test_ladm_col_empty         postgres    false    2378    16            b	           1259    710724    col_relacionfuenteuespacial    TABLE     �   CREATE TABLE test_ladm_col_empty.col_relacionfuenteuespacial (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 <   DROP TABLE test_ladm_col_empty.col_relacionfuenteuespacial;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711796    col_relacionsuperficietipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_relacionsuperficietipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_col_empty.col_relacionsuperficietipo;
       test_ladm_col_empty         postgres    false    2378    16            l	           1259    710816    col_responsablefuente    TABLE     9  CREATE TABLE test_ladm_col_empty.col_responsablefuente (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint
);
 6   DROP TABLE test_ladm_col_empty.col_responsablefuente;
       test_ladm_col_empty         postgres    false    2378    16            [	           1259    710660    col_rrrfuente    TABLE       CREATE TABLE test_ladm_col_empty.col_rrrfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    rrr_lc_restriccion bigint,
    rrr_lc_derecho bigint
);
 .   DROP TABLE test_ladm_col_empty.col_rrrfuente;
       test_ladm_col_empty         postgres    false    2378    16            m	           1259    710825    col_topografofuente    TABLE     /  CREATE TABLE test_ladm_col_empty.col_topografofuente (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    topografo_lc_interesado bigint,
    topografo_lc_agrupacioninteresados bigint
);
 4   DROP TABLE test_ladm_col_empty.col_topografofuente;
       test_ladm_col_empty         postgres    false    2378    16            S	           1259    710581    col_transformacion    TABLE     �  CREATE TABLE test_ladm_col_empty.col_transformacion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    localizacion_transformada public.geometry(PointZ,38820) NOT NULL,
    lc_puntocontrol_transformacion_y_resultado bigint,
    lc_puntolindero_transformacion_y_resultado bigint,
    lc_puntolevantamiento_transformacion_y_resultado bigint
);
 3   DROP TABLE test_ladm_col_empty.col_transformacion;
       test_ladm_col_empty         postgres    false    2378    16            u8           0    0    TABLE col_transformacion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.col_transformacion IS 'Registro de la fórmula o procedimiento utilizado en la transformación y de su resultado.';
            test_ladm_col_empty       postgres    false    2387            v8           0    0 3   COLUMN col_transformacion.localizacion_transformada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_transformacion.localizacion_transformada IS 'Geometría una vez realizado el proceso de transformación.';
            test_ladm_col_empty       postgres    false    2387            w8           0    0 D   COLUMN col_transformacion.lc_puntocontrol_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_transformacion.lc_puntocontrol_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_col_empty       postgres    false    2387            x8           0    0 D   COLUMN col_transformacion.lc_puntolindero_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_transformacion.lc_puntolindero_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_col_empty       postgres    false    2387            y8           0    0 J   COLUMN col_transformacion.lc_puntolevantamiento_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_transformacion.lc_puntolevantamiento_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_col_empty       postgres    false    2387            \	           1259    710669    col_uebaunit    TABLE     P  CREATE TABLE test_ladm_col_empty.col_uebaunit (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    baunit bigint NOT NULL
);
 -   DROP TABLE test_ladm_col_empty.col_uebaunit;
       test_ladm_col_empty         postgres    false    2378    16            `	           1259    710705    col_uefuente    TABLE     Y  CREATE TABLE test_ladm_col_empty.col_uefuente (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    fuente_espacial bigint NOT NULL
);
 -   DROP TABLE test_ladm_col_empty.col_uefuente;
       test_ladm_col_empty         postgres    false    2378    16            Z	           1259    710650    col_ueuegrupo    TABLE     A  CREATE TABLE test_ladm_col_empty.col_ueuegrupo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    parte_lc_construccion bigint,
    parte_lc_terreno bigint,
    parte_lc_servidumbretransito bigint,
    parte_lc_unidadconstruccion bigint
);
 .   DROP TABLE test_ladm_col_empty.col_ueuegrupo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711571 "   col_unidadadministrativabasicatipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_unidadadministrativabasicatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_col_empty.col_unidadadministrativabasicatipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711616    col_unidadedificaciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_unidadedificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_col_empty.col_unidadedificaciontipo;
       test_ladm_col_empty         postgres    false    2378    16            ^	           1259    710687    col_unidadfuente    TABLE     �   CREATE TABLE test_ladm_col_empty.col_unidadfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    unidad bigint NOT NULL
);
 1   DROP TABLE test_ladm_col_empty.col_unidadfuente;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    712003    col_volumentipo    TABLE     �  CREATE TABLE test_ladm_col_empty.col_volumentipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_col_empty.col_volumentipo;
       test_ladm_col_empty         postgres    false    2378    16            Y	           1259    710639    col_volumenvalor    TABLE       CREATE TABLE test_ladm_col_empty.col_volumenvalor (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    volumen_medicion numeric(15,1) NOT NULL,
    tipo bigint NOT NULL,
    lc_construccion_volumen bigint,
    lc_terreno_volumen bigint,
    lc_servidumbretransito_volumen bigint,
    lc_unidadconstruccion_volumen bigint,
    CONSTRAINT col_volumenvalor_volumen_medicion_check CHECK (((volumen_medicion >= 0.0) AND (volumen_medicion <= 99999999999999.9)))
);
 1   DROP TABLE test_ladm_col_empty.col_volumenvalor;
       test_ladm_col_empty         postgres    false    2378    16            z8           0    0    TABLE col_volumenvalor    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.col_volumenvalor IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar la medición de un volumen y la naturaleza de este.';
            test_ladm_col_empty       postgres    false    2393            {8           0    0 (   COLUMN col_volumenvalor.volumen_medicion    COMMENT     k   COMMENT ON COLUMN test_ladm_col_empty.col_volumenvalor.volumen_medicion IS 'Medición del volumen en m3.';
            test_ladm_col_empty       postgres    false    2393            |8           0    0    COLUMN col_volumenvalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_volumenvalor.tipo IS 'Indicación de si el volumen es calculado, si figura como oficial o si se da otra circunstancia.';
            test_ladm_col_empty       postgres    false    2393            }8           0    0 /   COLUMN col_volumenvalor.lc_construccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_volumenvalor.lc_construccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2393            ~8           0    0 *   COLUMN col_volumenvalor.lc_terreno_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_volumenvalor.lc_terreno_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2393            8           0    0 6   COLUMN col_volumenvalor.lc_servidumbretransito_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_volumenvalor.lc_servidumbretransito_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2393            �8           0    0 5   COLUMN col_volumenvalor.lc_unidadconstruccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.col_volumenvalor.lc_unidadconstruccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2393            X	           1259    710627 
   extarchivo    TABLE       CREATE TABLE test_ladm_col_empty.extarchivo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 +   DROP TABLE test_ladm_col_empty.extarchivo;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE extarchivo    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
            test_ladm_col_empty       postgres    false    2392            �8           0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     w   COMMENT ON COLUMN test_ladm_col_empty.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
            test_ladm_col_empty       postgres    false    2392            �8           0    0    COLUMN extarchivo.datos    COMMENT     ^   COMMENT ON COLUMN test_ladm_col_empty.extarchivo.datos IS 'Datos que contiene el documento.';
            test_ladm_col_empty       postgres    false    2392            �8           0    0    COLUMN extarchivo.extraccion    COMMENT     n   COMMENT ON COLUMN test_ladm_col_empty.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
            test_ladm_col_empty       postgres    false    2392            �8           0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT        COMMENT ON COLUMN test_ladm_col_empty.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
            test_ladm_col_empty       postgres    false    2392            �8           0    0    COLUMN extarchivo.fecha_entrega    COMMENT     q   COMMENT ON COLUMN test_ladm_col_empty.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
            test_ladm_col_empty       postgres    false    2392            �8           0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_col_empty       postgres    false    2392            �8           0    0 7   COLUMN extarchivo.lc_fuenteadministrtiva_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.extarchivo.lc_fuenteadministrtiva_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_col_empty       postgres    false    2392            �8           0    0 2   COLUMN extarchivo.lc_fuenteespacial_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.extarchivo.lc_fuenteespacial_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_col_empty       postgres    false    2392            Q	           1259    710552    extdireccion    TABLE       CREATE TABLE test_ladm_col_empty.extdireccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 -   DROP TABLE test_ladm_col_empty.extdireccion;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE extdireccion    COMMENT     s   COMMENT ON TABLE test_ladm_col_empty.extdireccion IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_col_empty       postgres    false    2385            �8           0    0     COLUMN extdireccion.localizacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.extdireccion.localizacion IS 'Par de valores georreferenciados (x,y) en la que se encuentra la dirección.';
            test_ladm_col_empty       postgres    false    2385            �8           0    0 2   COLUMN extdireccion.extinteresado_ext_direccion_id    COMMENT     ~   COMMENT ON COLUMN test_ladm_col_empty.extdireccion.extinteresado_ext_direccion_id IS 'Identificador externo del interesado.';
            test_ladm_col_empty       postgres    false    2385            �8           0    0 4   COLUMN extdireccion.lc_construccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.extdireccion.lc_construccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2385            �8           0    0 '   COLUMN extdireccion.lc_predio_direccion    COMMENT     d   COMMENT ON COLUMN test_ladm_col_empty.extdireccion.lc_predio_direccion IS 'Dirección del predio.';
            test_ladm_col_empty       postgres    false    2385            �8           0    0 /   COLUMN extdireccion.lc_terreno_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.extdireccion.lc_terreno_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2385            �8           0    0 ;   COLUMN extdireccion.lc_servidumbretransito_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.extdireccion.lc_servidumbretransito_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2385            �8           0    0 :   COLUMN extdireccion.lc_unidadconstruccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.extdireccion.lc_unidadconstruccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2385            �	           1259    712048     extdireccion_clase_via_principal    TABLE     �  CREATE TABLE test_ladm_col_empty.extdireccion_clase_via_principal (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_col_empty.extdireccion_clase_via_principal;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711787    extdireccion_sector_ciudad    TABLE     �  CREATE TABLE test_ladm_col_empty.extdireccion_sector_ciudad (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_col_empty.extdireccion_sector_ciudad;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711535    extdireccion_sector_predio    TABLE     �  CREATE TABLE test_ladm_col_empty.extdireccion_sector_predio (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_col_empty.extdireccion_sector_predio;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711958    extdireccion_tipo_direccion    TABLE     �  CREATE TABLE test_ladm_col_empty.extdireccion_tipo_direccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_col_empty.extdireccion_tipo_direccion;
       test_ladm_col_empty         postgres    false    2378    16            V	           1259    710609    extinteresado    TABLE       CREATE TABLE test_ladm_col_empty.extinteresado (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    nombre character varying(255),
    documento_escaneado character varying(255),
    extredserviciosfisica_ext_interesado_administrador_id bigint,
    lc_agrupacionintersdos_ext_pid bigint,
    lc_interesado_ext_pid bigint
);
 .   DROP TABLE test_ladm_col_empty.extinteresado;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE extinteresado    COMMENT     t   COMMENT ON TABLE test_ladm_col_empty.extinteresado IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_col_empty       postgres    false    2390            �8           0    0    COLUMN extinteresado.nombre    COMMENT     a   COMMENT ON COLUMN test_ladm_col_empty.extinteresado.nombre IS 'Campo de nombre del interesado.';
            test_ladm_col_empty       postgres    false    2390            �8           0    0 (   COLUMN extinteresado.documento_escaneado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.extinteresado.documento_escaneado IS 'Ruta de almacenamiento del documento escaneado del interesado.';
            test_ladm_col_empty       postgres    false    2390            �8           0    0 J   COLUMN extinteresado.extredserviciosfisica_ext_interesado_administrador_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.extinteresado.extredserviciosfisica_ext_interesado_administrador_id IS 'Identificador de referencia a un interesado externo que es el administrador.';
            test_ladm_col_empty       postgres    false    2390            �8           0    0 3   COLUMN extinteresado.lc_agrupacionintersdos_ext_pid    COMMENT     w   COMMENT ON COLUMN test_ladm_col_empty.extinteresado.lc_agrupacionintersdos_ext_pid IS 'Identificador del interesado.';
            test_ladm_col_empty       postgres    false    2390            �8           0    0 *   COLUMN extinteresado.lc_interesado_ext_pid    COMMENT     n   COMMENT ON COLUMN test_ladm_col_empty.extinteresado.lc_interesado_ext_pid IS 'Identificador del interesado.';
            test_ladm_col_empty       postgres    false    2390            W	           1259    710621    extredserviciosfisica    TABLE     �   CREATE TABLE test_ladm_col_empty.extredserviciosfisica (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    orientada boolean
);
 6   DROP TABLE test_ladm_col_empty.extredserviciosfisica;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE extredserviciosfisica    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.extredserviciosfisica IS 'Referencia a una clase externa para gestionar las redes físicas de servicios.';
            test_ladm_col_empty       postgres    false    2391            �8           0    0 &   COLUMN extredserviciosfisica.orientada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.extredserviciosfisica.orientada IS 'Indica si la red de servicios tiene un gradiente o no.';
            test_ladm_col_empty       postgres    false    2391            T	           1259    710594    extunidadedificacionfisica    TABLE     �   CREATE TABLE test_ladm_col_empty.extunidadedificacionfisica (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 ;   DROP TABLE test_ladm_col_empty.extunidadedificacionfisica;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0     TABLE extunidadedificacionfisica    COMMENT     |   COMMENT ON TABLE test_ladm_col_empty.extunidadedificacionfisica IS 'Control externo de la unidad de edificación física.';
            test_ladm_col_empty       postgres    false    2388            R	           1259    710573    fraccion    TABLE     �  CREATE TABLE test_ladm_col_empty.fraccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    denominador integer NOT NULL,
    numerador integer NOT NULL,
    col_miembros_participacion bigint,
    lc_predio_copropiedad_coeficiente bigint,
    CONSTRAINT fraccion_denominador_check CHECK (((denominador >= 0) AND (denominador <= 999999999))),
    CONSTRAINT fraccion_numerador_check CHECK (((numerador >= 0) AND (numerador <= 999999999)))
);
 )   DROP TABLE test_ladm_col_empty.fraccion;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE fraccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.fraccion IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar una fracción o quebrado cona serie específica de condiciones.';
            test_ladm_col_empty       postgres    false    2386            �8           0    0    COLUMN fraccion.denominador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.fraccion.denominador IS 'Parte inferior de la fracción. Debe ser mayor que 0. Debe ser mayor que el numerador.';
            test_ladm_col_empty       postgres    false    2386            �8           0    0    COLUMN fraccion.numerador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.fraccion.numerador IS 'Parte superior de la fracción. Debe ser mayor que 0. Debe sder menor que el denominador.';
            test_ladm_col_empty       postgres    false    2386            o	           1259    710843 	   gc_barrio    TABLE     M  CREATE TABLE test_ladm_col_empty.gc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 *   DROP TABLE test_ladm_col_empty.gc_barrio;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
            test_ladm_col_empty       postgres    false    2415            �8           0    0    COLUMN gc_barrio.codigo    COMMENT     d   COMMENT ON COLUMN test_ladm_col_empty.gc_barrio.codigo IS 'Código de identificación del barrio.';
            test_ladm_col_empty       postgres    false    2415            �8           0    0    COLUMN gc_barrio.nombre    COMMENT     P   COMMENT ON COLUMN test_ladm_col_empty.gc_barrio.nombre IS 'Nombre del barrio.';
            test_ladm_col_empty       postgres    false    2415            �8           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
            test_ladm_col_empty       postgres    false    2415            �8           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_ladm_col_empty       postgres    false    2415            p	           1259    710853 !   gc_calificacionunidadconstruccion    TABLE     �  CREATE TABLE test_ladm_col_empty.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 B   DROP TABLE test_ladm_col_empty.gc_calificacionunidadconstruccion;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
            test_ladm_col_empty       postgres    false    2416            �8           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2416            �8           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2416            �8           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2416            �8           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
            test_ladm_col_empty       postgres    false    2416            q	           1259    710863    gc_comisionesconstruccion    TABLE     $  CREATE TABLE test_ladm_col_empty.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 :   DROP TABLE test_ladm_col_empty.gc_comisionesconstruccion;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2417            �8           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2417            �8           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_col_empty       postgres    false    2417            r	           1259    710873    gc_comisionesterreno    TABLE       CREATE TABLE test_ladm_col_empty.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 5   DROP TABLE test_ladm_col_empty.gc_comisionesterreno;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2418            �8           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2418            �8           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_col_empty       postgres    false    2418            s	           1259    710883    gc_comisionesunidadconstruccion    TABLE     *  CREATE TABLE test_ladm_col_empty.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 @   DROP TABLE test_ladm_col_empty.gc_comisionesunidadconstruccion;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2419            �8           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2419            �8           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_col_empty       postgres    false    2419            �	           1259    711940    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col_empty.gc_condicionprediotipo;
       test_ladm_col_empty         postgres    false    2378    16            t	           1259    710893    gc_construccion    TABLE     O  CREATE TABLE test_ladm_col_empty.gc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_ladm_col_empty.gc_construccion;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0    COLUMN gc_construccion.etiqueta    COMMENT     c   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     u   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     z   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT     }   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     v   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     d   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.area_construida IS 'Área total construida.';
            test_ladm_col_empty       postgres    false    2420            �8           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2420            �	           1259    711031    gc_copropiedad    TABLE     �  CREATE TABLE test_ladm_col_empty.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 /   DROP TABLE test_ladm_col_empty.gc_copropiedad;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
            test_ladm_col_empty       postgres    false    2434            u	           1259    710905    gc_datosphcondominio    TABLE     �  CREATE TABLE test_ladm_col_empty.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 5   DROP TABLE test_ladm_col_empty.gc_datosphcondominio;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
            test_ladm_col_empty       postgres    false    2421            �8           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_col_empty       postgres    false    2421            �8           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_col_empty       postgres    false    2421            �8           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_col_empty       postgres    false    2421            �8           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_col_empty       postgres    false    2421            �8           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_col_empty       postgres    false    2421            �8           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
            test_ladm_col_empty       postgres    false    2421            �8           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
            test_ladm_col_empty       postgres    false    2421            v	           1259    710912    gc_datostorreph    TABLE     �  CREATE TABLE test_ladm_col_empty.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_ladm_col_empty.gc_datostorreph;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
            test_ladm_col_empty       postgres    false    2422            �8           0    0    COLUMN gc_datostorreph.torre    COMMENT     j   COMMENT ON COLUMN test_ladm_col_empty.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
            test_ladm_col_empty       postgres    false    2422            �8           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     j   COMMENT ON COLUMN test_ladm_col_empty.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
            test_ladm_col_empty       postgres    false    2422            �8           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT     |   COMMENT ON COLUMN test_ladm_col_empty.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
            test_ladm_col_empty       postgres    false    2422            �8           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     i   COMMENT ON COLUMN test_ladm_col_empty.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
            test_ladm_col_empty       postgres    false    2422            �8           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
            test_ladm_col_empty       postgres    false    2422            w	           1259    710919    gc_direccion    TABLE     <  CREATE TABLE test_ladm_col_empty.gc_direccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 -   DROP TABLE test_ladm_col_empty.gc_direccion;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    COLUMN gc_direccion.valor    COMMENT     g   COMMENT ON COLUMN test_ladm_col_empty.gc_direccion.valor IS 'Registros de la direcciones del predio.';
            test_ladm_col_empty       postgres    false    2423            �8           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
            test_ladm_col_empty       postgres    false    2423            �8           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
            test_ladm_col_empty       postgres    false    2423            �8           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
            test_ladm_col_empty       postgres    false    2423            x	           1259    710930    gc_estadopredio    TABLE     >  CREATE TABLE test_ladm_col_empty.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 0   DROP TABLE test_ladm_col_empty.gc_estadopredio;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2424            �8           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2424            �8           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
            test_ladm_col_empty       postgres    false    2424            �8           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
            test_ladm_col_empty       postgres    false    2424            �8           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
            test_ladm_col_empty       postgres    false    2424            y	           1259    710937 
   gc_manzana    TABLE     X  CREATE TABLE test_ladm_col_empty.gc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 +   DROP TABLE test_ladm_col_empty.gc_manzana;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
            test_ladm_col_empty       postgres    false    2425            �8           0    0    COLUMN gc_manzana.codigo    COMMENT     n   COMMENT ON COLUMN test_ladm_col_empty.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
            test_ladm_col_empty       postgres    false    2425            �8           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     q   COMMENT ON COLUMN test_ladm_col_empty.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
            test_ladm_col_empty       postgres    false    2425            �8           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
            test_ladm_col_empty       postgres    false    2425            �8           0    0    COLUMN gc_manzana.geometria    COMMENT     h   COMMENT ON COLUMN test_ladm_col_empty.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
            test_ladm_col_empty       postgres    false    2425            z	           1259    710947    gc_perimetro    TABLE     �  CREATE TABLE test_ladm_col_empty.gc_perimetro (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 -   DROP TABLE test_ladm_col_empty.gc_perimetro;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
            test_ladm_col_empty       postgres    false    2426            �8           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
            test_ladm_col_empty       postgres    false    2426            �8           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
            test_ladm_col_empty       postgres    false    2426            �8           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     v   COMMENT ON COLUMN test_ladm_col_empty.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
            test_ladm_col_empty       postgres    false    2426            �8           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
            test_ladm_col_empty       postgres    false    2426            �8           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     g   COMMENT ON COLUMN test_ladm_col_empty.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
            test_ladm_col_empty       postgres    false    2426            �8           0    0    COLUMN gc_perimetro.geometria    COMMENT     d   COMMENT ON COLUMN test_ladm_col_empty.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
            test_ladm_col_empty       postgres    false    2426            �	           1259    711020    gc_prediocatastro    TABLE     �  CREATE TABLE test_ladm_col_empty.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_ladm_col_empty.gc_prediocatastro;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
            test_ladm_col_empty       postgres    false    2433            �8           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
            test_ladm_col_empty       postgres    false    2433            �8           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT       COMMENT ON COLUMN test_ladm_col_empty.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_col_empty       postgres    false    2433            �8           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT       COMMENT ON COLUMN test_ladm_col_empty.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_col_empty       postgres    false    2433            �8           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     K  COMMENT ON COLUMN test_ladm_col_empty.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_col_empty       postgres    false    2433            �8           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
            test_ladm_col_empty       postgres    false    2433            �8           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
            test_ladm_col_empty       postgres    false    2433            �8           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
            test_ladm_col_empty       postgres    false    2433            �8           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     v   COMMENT ON COLUMN test_ladm_col_empty.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_col_empty       postgres    false    2433            �8           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     J  COMMENT ON COLUMN test_ladm_col_empty.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_col_empty       postgres    false    2433            �8           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
            test_ladm_col_empty       postgres    false    2433            �8           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT     m   COMMENT ON COLUMN test_ladm_col_empty.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
            test_ladm_col_empty       postgres    false    2433            {	           1259    710957    gc_propietario    TABLE     6  CREATE TABLE test_ladm_col_empty.gc_propietario (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 /   DROP TABLE test_ladm_col_empty.gc_propietario;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
            test_ladm_col_empty       postgres    false    2427            �8           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2427            �8           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2427            �8           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
            test_ladm_col_empty       postgres    false    2427            �8           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     t   COMMENT ON COLUMN test_ladm_col_empty.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
            test_ladm_col_empty       postgres    false    2427            �8           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     v   COMMENT ON COLUMN test_ladm_col_empty.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
            test_ladm_col_empty       postgres    false    2427            �8           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     x   COMMENT ON COLUMN test_ladm_col_empty.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
            test_ladm_col_empty       postgres    false    2427            �8           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     z   COMMENT ON COLUMN test_ladm_col_empty.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
            test_ladm_col_empty       postgres    false    2427            �8           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
            test_ladm_col_empty       postgres    false    2427            |	           1259    710967    gc_sectorrural    TABLE       CREATE TABLE test_ladm_col_empty.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 /   DROP TABLE test_ladm_col_empty.gc_sectorrural;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
            test_ladm_col_empty       postgres    false    2428            �8           0    0    COLUMN gc_sectorrural.codigo    COMMENT     x   COMMENT ON COLUMN test_ladm_col_empty.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_col_empty       postgres    false    2428            �8           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2428            }	           1259    710977    gc_sectorurbano    TABLE       CREATE TABLE test_ladm_col_empty.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 0   DROP TABLE test_ladm_col_empty.gc_sectorurbano;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
            test_ladm_col_empty       postgres    false    2429            �8           0    0    COLUMN gc_sectorurbano.codigo    COMMENT     y   COMMENT ON COLUMN test_ladm_col_empty.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_col_empty       postgres    false    2429            �8           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2429            �	           1259    711715    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_ladm_col_empty.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_col_empty.gc_sistemaprocedenciadatostipo;
       test_ladm_col_empty         postgres    false    2378    16            ~	           1259    710987 
   gc_terreno    TABLE     T  CREATE TABLE test_ladm_col_empty.gc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 +   DROP TABLE test_ladm_col_empty.gc_terreno;
       test_ladm_col_empty         postgres    false    2378    16            �8           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
            test_ladm_col_empty       postgres    false    2430            �8           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2430            �8           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2430             9           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
            test_ladm_col_empty       postgres    false    2430            9           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT     s   COMMENT ON COLUMN test_ladm_col_empty.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
            test_ladm_col_empty       postgres    false    2430            9           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2430            	           1259    710998    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_ladm_col_empty.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_ladm_col_empty.gc_unidadconstruccion;
       test_ladm_col_empty         postgres    false    2378    16            9           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT     s   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_col_empty       postgres    false    2431            	9           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2431            
9           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2431            9           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT     ~   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2431            9           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_col_empty       postgres    false    2431            �	           1259    711589    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_col_empty.gc_unidadconstrucciontipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711010 	   gc_vereda    TABLE     x  CREATE TABLE test_ladm_col_empty.gc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 *   DROP TABLE test_ladm_col_empty.gc_vereda;
       test_ladm_col_empty         postgres    false    2378    16            9           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
            test_ladm_col_empty       postgres    false    2432            9           0    0    COLUMN gc_vereda.codigo    COMMENT     l   COMMENT ON COLUMN test_ladm_col_empty.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
            test_ladm_col_empty       postgres    false    2432            9           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     u   COMMENT ON COLUMN test_ladm_col_empty.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
            test_ladm_col_empty       postgres    false    2432            9           0    0    COLUMN gc_vereda.nombre    COMMENT     R   COMMENT ON COLUMN test_ladm_col_empty.gc_vereda.nombre IS 'Nombre de la vereda.';
            test_ladm_col_empty       postgres    false    2432            9           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
            test_ladm_col_empty       postgres    false    2432            9           0    0    COLUMN gc_vereda.geometria    COMMENT     _   COMMENT ON COLUMN test_ladm_col_empty.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
            test_ladm_col_empty       postgres    false    2432            L	           1259    710508    gm_multisurface2d    TABLE     �   CREATE TABLE test_ladm_col_empty.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 2   DROP TABLE test_ladm_col_empty.gm_multisurface2d;
       test_ladm_col_empty         postgres    false    2378    16            N	           1259    710525    gm_multisurface3d    TABLE     �   CREATE TABLE test_ladm_col_empty.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 2   DROP TABLE test_ladm_col_empty.gm_multisurface3d;
       test_ladm_col_empty         postgres    false    2378    16            K	           1259    710497    gm_surface2dlistvalue    TABLE        CREATE TABLE test_ladm_col_empty.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 6   DROP TABLE test_ladm_col_empty.gm_surface2dlistvalue;
       test_ladm_col_empty         postgres    false    2378    16            M	           1259    710514    gm_surface3dlistvalue    TABLE       CREATE TABLE test_ladm_col_empty.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 6   DROP TABLE test_ladm_col_empty.gm_surface3dlistvalue;
       test_ladm_col_empty         postgres    false    2378    16            U	           1259    710600    imagen    TABLE     %  CREATE TABLE test_ladm_col_empty.imagen (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    uri character varying(255),
    extinteresado_huella_dactilar bigint,
    extinteresado_fotografia bigint,
    extinteresado_firma bigint
);
 '   DROP TABLE test_ladm_col_empty.imagen;
       test_ladm_col_empty         postgres    false    2378    16            9           0    0    TABLE imagen    COMMENT     [   COMMENT ON TABLE test_ladm_col_empty.imagen IS 'Referencia a una imagen mediante su url.';
            test_ladm_col_empty       postgres    false    2389            9           0    0    COLUMN imagen.uri    COMMENT     I   COMMENT ON COLUMN test_ladm_col_empty.imagen.uri IS 'url de la imagen.';
            test_ladm_col_empty       postgres    false    2389            9           0    0 +   COLUMN imagen.extinteresado_huella_dactilar    COMMENT     ~   COMMENT ON COLUMN test_ladm_col_empty.imagen.extinteresado_huella_dactilar IS 'Imagen de la huella dactilar del interesado.';
            test_ladm_col_empty       postgres    false    2389            9           0    0 &   COLUMN imagen.extinteresado_fotografia    COMMENT     h   COMMENT ON COLUMN test_ladm_col_empty.imagen.extinteresado_fotografia IS 'Fotografía del interesado.';
            test_ladm_col_empty       postgres    false    2389            9           0    0 !   COLUMN imagen.extinteresado_firma    COMMENT     ]   COMMENT ON COLUMN test_ladm_col_empty.imagen.extinteresado_firma IS 'Firma del interesado.';
            test_ladm_col_empty       postgres    false    2389            �	           1259    711634    ini_emparejamientotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.ini_emparejamientotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col_empty.ini_emparejamientotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711105    ini_predioinsumos    TABLE     ,  CREATE TABLE test_ladm_col_empty.ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_emparejamiento bigint,
    observaciones text,
    gc_predio_catastro bigint,
    snr_predio_juridico bigint
);
 2   DROP TABLE test_ladm_col_empty.ini_predioinsumos;
       test_ladm_col_empty         postgres    false    2378    16            9           0    0    TABLE ini_predioinsumos    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.ini_predioinsumos IS 'Clase que relaciona los predios en los modelos de insumos para el Gestor Catastral y la SNR.';
            test_ladm_col_empty       postgres    false    2442             9           0    0 ,   COLUMN ini_predioinsumos.tipo_emparejamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.ini_predioinsumos.tipo_emparejamiento IS 'Tipo de emparejamiento de insumos Catastro-Registro';
            test_ladm_col_empty       postgres    false    2442            !9           0    0 &   COLUMN ini_predioinsumos.observaciones    COMMENT     k   COMMENT ON COLUMN test_ladm_col_empty.ini_predioinsumos.observaciones IS 'Observaciones de la relación.';
            test_ladm_col_empty       postgres    false    2442            �	           1259    711922    lc_acuerdotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_acuerdotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_ladm_col_empty.lc_acuerdotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711117    lc_agrupacioninteresados    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_agrupacioninteresados (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 9   DROP TABLE test_ladm_col_empty.lc_agrupacioninteresados;
       test_ladm_col_empty         postgres    false    2378    16            "9           0    0    TABLE lc_agrupacioninteresados    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_agrupacioninteresados IS 'Clase que hereda los atributos de la  Clase COL_Agrupación_Interesados.';
            test_ladm_col_empty       postgres    false    2443            #9           0    0 $   COLUMN lc_agrupacioninteresados.tipo    COMMENT     z   COMMENT ON COLUMN test_ladm_col_empty.lc_agrupacioninteresados.tipo IS 'Indica el tipo de agrupación del que se trata.';
            test_ladm_col_empty       postgres    false    2443            $9           0    0 &   COLUMN lc_agrupacioninteresados.nombre    COMMENT     c   COMMENT ON COLUMN test_ladm_col_empty.lc_agrupacioninteresados.nombre IS 'Nombre del interesado.';
            test_ladm_col_empty       postgres    false    2443            %9           0    0 :   COLUMN lc_agrupacioninteresados.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_agrupacioninteresados.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2443            &9           0    0 5   COLUMN lc_agrupacioninteresados.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_agrupacioninteresados.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2443            '9           0    0 2   COLUMN lc_agrupacioninteresados.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_agrupacioninteresados.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2443            (9           0    0 (   COLUMN lc_agrupacioninteresados.local_id    COMMENT     j   COMMENT ON COLUMN test_ladm_col_empty.lc_agrupacioninteresados.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2443            �	           1259    711931    lc_anexotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_anexotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 -   DROP TABLE test_ladm_col_empty.lc_anexotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711361    lc_calificacionconvencional    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_calificacionconvencional (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_calificar bigint NOT NULL,
    total_calificacion integer NOT NULL,
    lc_unidad_construccion bigint,
    CONSTRAINT lc_calificacionconvencnal_total_calificacion_check CHECK (((total_calificacion >= 0) AND (total_calificacion <= 999999999)))
);
 <   DROP TABLE test_ladm_col_empty.lc_calificacionconvencional;
       test_ladm_col_empty         postgres    false    2378    16            )9           0    0 !   TABLE lc_calificacionconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_calificacionconvencional IS 'Proceso mediante el cual se le asigna un puntaje a las edificaciones de acuerdo a sus características constructivas';
            test_ladm_col_empty       postgres    false    2463            *9           0    0 1   COLUMN lc_calificacionconvencional.tipo_calificar    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_calificacionconvencional.tipo_calificar IS 'Indica si la calificación de construcción corresponde a residencial, comercial o industrial.';
            test_ladm_col_empty       postgres    false    2463            +9           0    0 5   COLUMN lc_calificacionconvencional.total_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_calificacionconvencional.total_calificacion IS 'Puntaje total de la calificación de la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2463            �	           1259    711370    lc_calificacionnoconvencional    TABLE       CREATE TABLE test_ladm_col_empty.lc_calificacionnoconvencional (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_anexo bigint NOT NULL,
    lc_unidad_construccion bigint
);
 >   DROP TABLE test_ladm_col_empty.lc_calificacionnoconvencional;
       test_ladm_col_empty         postgres    false    2378    16            ,9           0    0 #   TABLE lc_calificacionnoconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_calificacionnoconvencional IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_col_empty       postgres    false    2464            -9           0    0 /   COLUMN lc_calificacionnoconvencional.tipo_anexo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_calificacionnoconvencional.tipo_anexo IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_col_empty       postgres    false    2464            �	           1259    712021    lc_calificartipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_calificartipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col_empty.lc_calificartipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711625    lc_categoriasuelotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_categoriasuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_col_empty.lc_categoriasuelotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    712057    lc_clasecalificaciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_clasecalificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col_empty.lc_clasecalificaciontipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711706    lc_clasesuelotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_clasesuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_col_empty.lc_clasesuelotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    712066    lc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col_empty.lc_condicionprediotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711128    lc_construccion    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_ladm_col_empty.lc_construccion;
       test_ladm_col_empty         postgres    false    2378    16            .9           0    0    TABLE lc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_construccion IS 'Es la unión de materiales adheridos al terreno, con carácter de permanente, cualesquiera sean los elementos que la constituyan.';
            test_ladm_col_empty       postgres    false    2444            /9           0    0 $   COLUMN lc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col_empty       postgres    false    2444            09           0    0 (   COLUMN lc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col_empty       postgres    false    2444            19           0    0 #   COLUMN lc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col_empty       postgres    false    2444            29           0    0 #   COLUMN lc_construccion.numero_pisos    COMMENT     u   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_col_empty       postgres    false    2444            39           0    0 %   COLUMN lc_construccion.numero_sotanos    COMMENT     z   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_col_empty       postgres    false    2444            49           0    0 '   COLUMN lc_construccion.numero_mezanines    COMMENT     }   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_col_empty       postgres    false    2444            59           0    0 )   COLUMN lc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_col_empty       postgres    false    2444            69           0    0 (   COLUMN lc_construccion.anio_construccion    COMMENT     x   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.anio_construccion IS 'Año de edificación de la construcción.';
            test_ladm_col_empty       postgres    false    2444            79           0    0 *   COLUMN lc_construccion.avaluo_construccion    COMMENT     }   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.avaluo_construccion IS 'Avalúo total catastral de la construcción.';
            test_ladm_col_empty       postgres    false    2444            89           0    0 (   COLUMN lc_construccion.area_construccion    COMMENT     f   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.area_construccion IS 'Área total construida.';
            test_ladm_col_empty       postgres    false    2444            99           0    0    COLUMN lc_construccion.altura    COMMENT     e   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.altura IS 'Altura total de la construcción.';
            test_ladm_col_empty       postgres    false    2444            :9           0    0 $   COLUMN lc_construccion.observaciones    COMMENT     w   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.observaciones IS 'Observaciones generales de la construcción.';
            test_ladm_col_empty       postgres    false    2444            ;9           0    0     COLUMN lc_construccion.dimension    COMMENT     ]   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.dimension IS 'Dimensión del objeto.';
            test_ladm_col_empty       postgres    false    2444            <9           0    0    COLUMN lc_construccion.etiqueta    COMMENT     x   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2444            =9           0    0 *   COLUMN lc_construccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2444            >9           0    0     COLUMN lc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_col_empty       postgres    false    2444            ?9           0    0 1   COLUMN lc_construccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2444            @9           0    0 ,   COLUMN lc_construccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2444            A9           0    0 )   COLUMN lc_construccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2444            B9           0    0    COLUMN lc_construccion.local_id    COMMENT     a   COMMENT ON COLUMN test_ladm_col_empty.lc_construccion.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2444            �	           1259    711823    lc_construccionplantatipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_construccionplantatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_col_empty.lc_construccionplantatipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    712039    lc_construcciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_construcciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col_empty.lc_construcciontipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711143    lc_contactovisita    TABLE     1  CREATE TABLE test_ladm_col_empty.lc_contactovisita (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_ladm_col_empty.lc_contactovisita;
       test_ladm_col_empty         postgres    false    2378    16            C9           0    0 5   COLUMN lc_contactovisita.tipo_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_contactovisita.tipo_documento_quien_atendio IS 'Indica el tipo de documento de la persona que atendió la visita predial.';
            test_ladm_col_empty       postgres    false    2445            D9           0    0 7   COLUMN lc_contactovisita.numero_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_contactovisita.numero_documento_quien_atendio IS 'Indica el número de documento de la persona que atendió la visita predial.';
            test_ladm_col_empty       postgres    false    2445            E9           0    0 4   COLUMN lc_contactovisita.primer_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_contactovisita.primer_nombre_quien_atendio IS 'Primer nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col_empty       postgres    false    2445            F9           0    0 5   COLUMN lc_contactovisita.segundo_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_contactovisita.segundo_nombre_quien_atendio IS 'Segundo nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col_empty       postgres    false    2445            G9           0    0 6   COLUMN lc_contactovisita.primer_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_contactovisita.primer_apellido_quien_atendio IS 'Primer apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col_empty       postgres    false    2445            H9           0    0 7   COLUMN lc_contactovisita.segundo_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_contactovisita.segundo_apellido_quien_atendio IS 'Segundo apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col_empty       postgres    false    2445            I9           0    0 ,   COLUMN lc_contactovisita.relacion_con_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_contactovisita.relacion_con_predio IS 'Relación con el predio de la persona encargada de atender la visita, por ejemplo propietario, encargado, administrador, poseedor, etc.';
            test_ladm_col_empty       postgres    false    2445            J9           0    0 1   COLUMN lc_contactovisita.domicilio_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_contactovisita.domicilio_notificaciones IS 'Dirección de domicilio para notificaciones.';
            test_ladm_col_empty       postgres    false    2445            K9           0    0     COLUMN lc_contactovisita.celular    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_contactovisita.celular IS 'Número de celular de la persona que atendió la visita de actividades catastrales.';
            test_ladm_col_empty       postgres    false    2445            L9           0    0 +   COLUMN lc_contactovisita.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_contactovisita.correo_electronico IS 'Correo electrónico de la persona que atendió la visita de actividades catastrales.';
            test_ladm_col_empty       postgres    false    2445            M9           0    0 0   COLUMN lc_contactovisita.autoriza_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_contactovisita.autoriza_notificaciones IS 'Indica si autoriza las notificaciones administrativas por medio de vía electrónica.';
            test_ladm_col_empty       postgres    false    2445            �	           1259    711379 )   lc_datosadicionaleslevantamientocatastral    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 J   DROP TABLE test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral;
       test_ladm_col_empty         postgres    false    2378    16            N9           0    0 /   TABLE lc_datosadicionaleslevantamientocatastral    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral IS 'Datos de adicionales del predio para catastro multipropósito';
            test_ladm_col_empty       postgres    false    2465            O9           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.tiene_area_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.tiene_area_registral IS 'Indica si el predio según la información registral cuenta con el valor de área en la cabida y linderos.';
            test_ladm_col_empty       postgres    false    2465            P9           0    0 B   COLUMN lc_datosadicionaleslevantamientocatastral.area_registral_m2    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.area_registral_m2 IS 'Indica el valor del área registral del predio en metros cuadrados.';
            test_ladm_col_empty       postgres    false    2465            Q9           0    0 R   COLUMN lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral    COMMENT     �  COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral IS 'Se considerará como procedimientos catastrales con efectos registrales los siguientes: actualización de linderos, rectificación de área por imprecisa determinación, actualización masiva y puntual de linderos y áreas, rectificación de linderos por acuerdo entre las partes, e inclusión de área y/o linderos.';
            test_ladm_col_empty       postgres    false    2465            R9           0    0 F   COLUMN lc_datosadicionaleslevantamientocatastral.destinacion_economica    COMMENT     b  COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_col_empty       postgres    false    2465            S9           0    0 <   COLUMN lc_datosadicionaleslevantamientocatastral.clase_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.clase_suelo IS 'Clasificación del suelo según el instrumento de planeación vigente.';
            test_ladm_col_empty       postgres    false    2465            T9           0    0 @   COLUMN lc_datosadicionaleslevantamientocatastral.categoria_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.categoria_suelo IS 'Categoría del suelo según el instrumento de planeación vigente.';
            test_ladm_col_empty       postgres    false    2465            U9           0    0 >   COLUMN lc_datosadicionaleslevantamientocatastral.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.observaciones IS 'Observaciones generales respecto del predio.';
            test_ladm_col_empty       postgres    false    2465            V9           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.fecha_visita_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.fecha_visita_predial IS 'Fecha de la visita en campo al predio.';
            test_ladm_col_empty       postgres    false    2465            W9           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor IS 'Indica el tipo de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_col_empty       postgres    false    2465            X9           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor IS 'Indica el número de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_col_empty       postgres    false    2465            Y9           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor IS 'Primer nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col_empty       postgres    false    2465            Z9           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor IS 'Segundo nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col_empty       postgres    false    2465            [9           0    0 L   COLUMN lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor IS 'Primer apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col_empty       postgres    false    2465            \9           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor IS 'Segundo apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col_empty       postgres    false    2465            ]9           0    0 A   COLUMN lc_datosadicionaleslevantamientocatastral.resultado_visita    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.resultado_visita IS 'Posibles situaciones que se presentan y afectan el resultado del levantamiento de la información en campo.';
            test_ladm_col_empty       postgres    false    2465            ^9           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia    COMMENT       COMMENT ON COLUMN test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia IS 'Indica si dentro del proceso de formación o actualización catastral se suscribe acta de colindancia para el predio objeto de levantamiento catastral.';
            test_ladm_col_empty       postgres    false    2465            �	           1259    711156    lc_datosphcondominio    TABLE       CREATE TABLE test_ladm_col_empty.lc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 5   DROP TABLE test_ladm_col_empty.lc_datosphcondominio;
       test_ladm_col_empty         postgres    false    2378    16            _9           0    0    TABLE lc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal.';
            test_ladm_col_empty       postgres    false    2446            `9           0    0 .   COLUMN lc_datosphcondominio.area_total_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosphcondominio.area_total_terreno IS 'Área total del terreno del PH o Condominio Matriz.';
            test_ladm_col_empty       postgres    false    2446            a9           0    0 6   COLUMN lc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_col_empty       postgres    false    2446            b9           0    0 4   COLUMN lc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_col_empty       postgres    false    2446            c9           0    0 1   COLUMN lc_datosphcondominio.area_total_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosphcondominio.area_total_construida IS 'Área total de construida del PH o Condominio Matriz.';
            test_ladm_col_empty       postgres    false    2446            d9           0    0 9   COLUMN lc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_col_empty       postgres    false    2446            e9           0    0 7   COLUMN lc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_col_empty       postgres    false    2446            f9           0    0 )   COLUMN lc_datosphcondominio.numero_torres    COMMENT     x   COMMENT ON COLUMN test_ladm_col_empty.lc_datosphcondominio.numero_torres IS 'Número de torres en el PH o Condominio.';
            test_ladm_col_empty       postgres    false    2446            g9           0    0 3   COLUMN lc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_col_empty       postgres    false    2446            �	           1259    711164 
   lc_derecho    TABLE       CREATE TABLE test_ladm_col_empty.lc_derecho (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 +   DROP TABLE test_ladm_col_empty.lc_derecho;
       test_ladm_col_empty         postgres    false    2378    16            h9           0    0    TABLE lc_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_derecho IS 'Clase que registra las instancias de los derechos que un interesado ejerce sobre un predio. Es una especialización de la clase COL_DRR del propio modelo.';
            test_ladm_col_empty       postgres    false    2447            i9           0    0    COLUMN lc_derecho.tipo    COMMENT     S   COMMENT ON COLUMN test_ladm_col_empty.lc_derecho.tipo IS 'Derecho que se ejerce.';
            test_ladm_col_empty       postgres    false    2447            j9           0    0 "   COLUMN lc_derecho.fraccion_derecho    COMMENT     �  COMMENT ON COLUMN test_ladm_col_empty.lc_derecho.fraccion_derecho IS 'Indica la fracción del derecho en relación a la forma de tenencia y el área que esta ocupa dentro de la extensión del predio. Ejemplo: un predio informal que se encuentra sobre un predio baldío y un predio privado tendrá un porcentaje de derecho de ocupación y posesión expresado en tanto por uno (0.0000000000 a 1.0000000000).';
            test_ladm_col_empty       postgres    false    2447            k9           0    0 '   COLUMN lc_derecho.fecha_inicio_tenencia    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_derecho.fecha_inicio_tenencia IS 'Fecha de inicio de tenencia del interesado con respecto al predio.';
            test_ladm_col_empty       postgres    false    2447            l9           0    0    COLUMN lc_derecho.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_derecho.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_col_empty       postgres    false    2447            m9           0    0 ,   COLUMN lc_derecho.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_derecho.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2447            n9           0    0 '   COLUMN lc_derecho.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_derecho.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2447            o9           0    0 $   COLUMN lc_derecho.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_derecho.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2447            p9           0    0    COLUMN lc_derecho.local_id    COMMENT     \   COMMENT ON COLUMN test_ladm_col_empty.lc_derecho.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2447            �	           1259    711679    lc_derechotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_derechotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_ladm_col_empty.lc_derechotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711598    lc_destinacioneconomicatipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_destinacioneconomicatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_col_empty.lc_destinacioneconomicatipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711994    lc_dominioconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_dominioconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_col_empty.lc_dominioconstrucciontipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    712111    lc_estadoconservaciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_estadoconservaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_col_empty.lc_estadoconservaciontipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711178    lc_estructuranovedadfmi    TABLE     "  CREATE TABLE test_ladm_col_empty.lc_estructuranovedadfmi (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(3),
    numero_fmi character varying(80),
    lc_dtsdcnlstmntctstral_novedad_fmi bigint
);
 8   DROP TABLE test_ladm_col_empty.lc_estructuranovedadfmi;
       test_ladm_col_empty         postgres    false    2378    16            q9           0    0 A   COLUMN lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi IS 'Relaciona los cambios del predio respecto de la información registral vigente.';
            test_ladm_col_empty       postgres    false    2448            �	           1259    711185 !   lc_estructuranovedadnumeropredial    TABLE     :  CREATE TABLE test_ladm_col_empty.lc_estructuranovedadnumeropredial (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    numero_predial character varying(30) NOT NULL,
    tipo_novedad bigint,
    lc_dtsdcnlstmntctstral_novedad_numeros_prediales bigint
);
 B   DROP TABLE test_ladm_col_empty.lc_estructuranovedadnumeropredial;
       test_ladm_col_empty         postgres    false    2378    16            r9           0    0 Y   COLUMN lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales IS 'Relaciona los cambios del predio respecto de la información catastral vigente.';
            test_ladm_col_empty       postgres    false    2449            �	           1259    711526 .   lc_estructuranovedadnumeropredial_tipo_novedad    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_estructuranovedadnumeropredial_tipo_novedad (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 O   DROP TABLE test_ladm_col_empty.lc_estructuranovedadnumeropredial_tipo_novedad;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711652    lc_fotoidentificaciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_fotoidentificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_col_empty.lc_fotoidentificaciontipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711193    lc_fuenteadministrativa    TABLE     ,  CREATE TABLE test_ladm_col_empty.lc_fuenteadministrativa (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 8   DROP TABLE test_ladm_col_empty.lc_fuenteadministrativa;
       test_ladm_col_empty         postgres    false    2378    16            s9           0    0    TABLE lc_fuenteadministrativa    COMMENT       COMMENT ON TABLE test_ladm_col_empty.lc_fuenteadministrativa IS 'Clase que almacena las fuentes administrativas (escrituras, sentencias, actos administrativos, etc) que sustentan el Derecho respecto de la relación de tenencia entre el Interesado y el predio.';
            test_ladm_col_empty       postgres    false    2450            t9           0    0 #   COLUMN lc_fuenteadministrativa.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteadministrativa.tipo IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_col_empty       postgres    false    2450            u9           0    0 *   COLUMN lc_fuenteadministrativa.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteadministrativa.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_col_empty       postgres    false    2450            v9           0    0 *   COLUMN lc_fuenteadministrativa.observacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteadministrativa.observacion IS 'Observaciones o descripción del documento de la fuente administrativa.';
            test_ladm_col_empty       postgres    false    2450            w9           0    0 ,   COLUMN lc_fuenteadministrativa.numero_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteadministrativa.numero_fuente IS 'Identificador del documento, ejemplo: número de la resolución, número de la escritura pública o número de radicado de una sentencia.';
            test_ladm_col_empty       postgres    false    2450            x9           0    0 4   COLUMN lc_fuenteadministrativa.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteadministrativa.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_col_empty       postgres    false    2450            y9           0    0 -   COLUMN lc_fuenteadministrativa.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteadministrativa.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_col_empty       postgres    false    2450            z9           0    0 5   COLUMN lc_fuenteadministrativa.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteadministrativa.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_col_empty       postgres    false    2450            {9           0    0 1   COLUMN lc_fuenteadministrativa.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteadministrativa.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2450            |9           0    0 '   COLUMN lc_fuenteadministrativa.local_id    COMMENT     i   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteadministrativa.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2450            �	           1259    711967    lc_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_col_empty.lc_fuenteadministrativatipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711206    lc_fuenteespacial    TABLE     
  CREATE TABLE test_ladm_col_empty.lc_fuenteespacial (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_ladm_col_empty.lc_fuenteespacial;
       test_ladm_col_empty         postgres    false    2378    16            }9           0    0    TABLE lc_fuenteespacial    COMMENT     }   COMMENT ON TABLE test_ladm_col_empty.lc_fuenteespacial IS 'Clase que hereda los atributos de la  Clase COL_FuenteEspacial.';
            test_ladm_col_empty       postgres    false    2451            ~9           0    0    COLUMN lc_fuenteespacial.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteespacial.nombre IS 'Nombre de la fuente espacial del levantamiento catastral de un predio.';
            test_ladm_col_empty       postgres    false    2451            9           0    0    COLUMN lc_fuenteespacial.tipo    COMMENT     \   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteespacial.tipo IS 'Tipo de fuente espacial.';
            test_ladm_col_empty       postgres    false    2451            �9           0    0 $   COLUMN lc_fuenteespacial.descripcion    COMMENT     n   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteespacial.descripcion IS 'Descripción de la fuente espacial.';
            test_ladm_col_empty       postgres    false    2451            �9           0    0 !   COLUMN lc_fuenteespacial.metadato    COMMENT     g   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteespacial.metadato IS 'Metadato de la fuente espacial.';
            test_ladm_col_empty       postgres    false    2451            �9           0    0 .   COLUMN lc_fuenteespacial.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteespacial.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_col_empty       postgres    false    2451            �9           0    0 '   COLUMN lc_fuenteespacial.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteespacial.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_col_empty       postgres    false    2451            �9           0    0 /   COLUMN lc_fuenteespacial.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteespacial.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_col_empty       postgres    false    2451            �9           0    0 +   COLUMN lc_fuenteespacial.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteespacial.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2451            �9           0    0 !   COLUMN lc_fuenteespacial.local_id    COMMENT     c   COMMENT ON COLUMN test_ladm_col_empty.lc_fuenteespacial.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2451            �	           1259    711219    lc_grupocalificacion    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_grupocalificacion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    clase_calificacion bigint NOT NULL,
    conservacion bigint NOT NULL,
    subtotal integer NOT NULL,
    lc_calificacion_convencional bigint NOT NULL,
    CONSTRAINT lc_grupocalificacion_subtotal_check CHECK (((subtotal >= 0) AND (subtotal <= 9999999)))
);
 5   DROP TABLE test_ladm_col_empty.lc_grupocalificacion;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0    TABLE lc_grupocalificacion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_grupocalificacion IS 'Calificación de la construccion según los item determinados para calificar.';
            test_ladm_col_empty       postgres    false    2452            �9           0    0 .   COLUMN lc_grupocalificacion.clase_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_grupocalificacion.clase_calificacion IS 'Indica los elementos generales de la calificación de la construcción de acuerdo al método vigente.';
            test_ladm_col_empty       postgres    false    2452            �9           0    0 (   COLUMN lc_grupocalificacion.conservacion    COMMENT     |   COMMENT ON COLUMN test_ladm_col_empty.lc_grupocalificacion.conservacion IS 'Estado de conservación del grupo calificado.';
            test_ladm_col_empty       postgres    false    2452            �9           0    0 $   COLUMN lc_grupocalificacion.subtotal    COMMENT     i   COMMENT ON COLUMN test_ladm_col_empty.lc_grupocalificacion.subtotal IS 'Subtotal del grupo calificado.';
            test_ladm_col_empty       postgres    false    2452            �	           1259    711670    lc_grupoetnicotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_grupoetnicotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_col_empty.lc_grupoetnicotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711229    lc_interesado    TABLE     =  CREATE TABLE test_ladm_col_empty.lc_interesado (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 .   DROP TABLE test_ladm_col_empty.lc_interesado;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0    TABLE lc_interesado    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_interesado IS 'Es la parte que tiene una relación con el predio por algún tipo de derecho, restricción, publicidad o responsabilidad';
            test_ladm_col_empty       postgres    false    2453            �9           0    0    COLUMN lc_interesado.tipo    COMMENT     `   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.tipo IS 'Tipo de persona del que se trata';
            test_ladm_col_empty       postgres    false    2453            �9           0    0 #   COLUMN lc_interesado.tipo_documento    COMMENT     m   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0 (   COLUMN lc_interesado.documento_identidad    COMMENT     u   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.documento_identidad IS 'Documento de identidad del interesado.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0 "   COLUMN lc_interesado.primer_nombre    COMMENT     m   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.primer_nombre IS 'Primer nombre de la persona física.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0 #   COLUMN lc_interesado.segundo_nombre    COMMENT     o   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.segundo_nombre IS 'Segundo nombre de la persona física.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0 $   COLUMN lc_interesado.primer_apellido    COMMENT     q   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0 %   COLUMN lc_interesado.segundo_apellido    COMMENT     s   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0    COLUMN lc_interesado.sexo    COMMENT        COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.sexo IS 'Condición orgánica que distingue a los machos de las hembras.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0 !   COLUMN lc_interesado.razon_social    COMMENT     i   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.razon_social IS 'Nombre con el que está inscrito.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0    COLUMN lc_interesado.nombre    COMMENT     X   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.nombre IS 'Nombre del interesado.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0 /   COLUMN lc_interesado.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0 *   COLUMN lc_interesado.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0 '   COLUMN lc_interesado.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2453            �9           0    0    COLUMN lc_interesado.local_id    COMMENT     _   COMMENT ON COLUMN test_ladm_col_empty.lc_interesado.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2453            �	           1259    711243    lc_interesadocontacto    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_interesadocontacto (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_ladm_col_empty.lc_interesadocontacto;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0    TABLE lc_interesadocontacto    COMMENT     k   COMMENT ON TABLE test_ladm_col_empty.lc_interesadocontacto IS 'Datos de contacto de la parte interesada.';
            test_ladm_col_empty       postgres    false    2454            �9           0    0 &   COLUMN lc_interesadocontacto.telefono1    COMMENT     {   COMMENT ON COLUMN test_ladm_col_empty.lc_interesadocontacto.telefono1 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_col_empty       postgres    false    2454            �9           0    0 &   COLUMN lc_interesadocontacto.telefono2    COMMENT     {   COMMENT ON COLUMN test_ladm_col_empty.lc_interesadocontacto.telefono2 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_col_empty       postgres    false    2454            �9           0    0 3   COLUMN lc_interesadocontacto.domicilio_notificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_interesadocontacto.domicilio_notificacion IS 'Domicilio para notificaciones del interesado.';
            test_ladm_col_empty       postgres    false    2454            �9           0    0 1   COLUMN lc_interesadocontacto.direccion_residencia    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_interesadocontacto.direccion_residencia IS 'Dirección de residencia del interesado.';
            test_ladm_col_empty       postgres    false    2454            �9           0    0 /   COLUMN lc_interesadocontacto.correo_electronico    COMMENT     y   COMMENT ON COLUMN test_ladm_col_empty.lc_interesadocontacto.correo_electronico IS 'Correo electrónico del interesado.';
            test_ladm_col_empty       postgres    false    2454            �9           0    0 9   COLUMN lc_interesadocontacto.autoriza_notificacion_correo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_interesadocontacto.autoriza_notificacion_correo IS 'Indica si el interesado autoriza notificación vía correo electrónico';
            test_ladm_col_empty       postgres    false    2454            �9           0    0 )   COLUMN lc_interesadocontacto.departamento    COMMENT     z   COMMENT ON COLUMN test_ladm_col_empty.lc_interesadocontacto.departamento IS 'Departamento de residencia del interesado.';
            test_ladm_col_empty       postgres    false    2454            �9           0    0 &   COLUMN lc_interesadocontacto.municipio    COMMENT     t   COMMENT ON COLUMN test_ladm_col_empty.lc_interesadocontacto.municipio IS 'Municipio de residencia del interesado.';
            test_ladm_col_empty       postgres    false    2454            �9           0    0 #   COLUMN lc_interesadocontacto.vereda    COMMENT     n   COMMENT ON COLUMN test_ladm_col_empty.lc_interesadocontacto.vereda IS 'Vereda de residencia del interesado.';
            test_ladm_col_empty       postgres    false    2454            �9           0    0 *   COLUMN lc_interesadocontacto.corregimiento    COMMENT     |   COMMENT ON COLUMN test_ladm_col_empty.lc_interesadocontacto.corregimiento IS 'Corregimiento de residencia del interesado.';
            test_ladm_col_empty       postgres    false    2454            �	           1259    711868    lc_interesadodocumentotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_interesadodocumentotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_col_empty.lc_interesadodocumentotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711751    lc_interesadotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_interesadotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_col_empty.lc_interesadotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711254 
   lc_lindero    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_lindero (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 +   DROP TABLE test_ladm_col_empty.lc_lindero;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0    TABLE lc_lindero    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_lindero IS 'Linea de división que separa un bien inmueble de otro, que puede o no estar materializada físicamente.';
            test_ladm_col_empty       postgres    false    2455            �9           0    0    COLUMN lc_lindero.longitud    COMMENT     `   COMMENT ON COLUMN test_ladm_col_empty.lc_lindero.longitud IS 'Longitud en metros del lindero.';
            test_ladm_col_empty       postgres    false    2455            �9           0    0    COLUMN lc_lindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_lindero.geometria IS 'Geometría lineal que define el lindero. Puede estar asociada a geometrías de tipo punto que definen sus vértices o ser una entidad lineal independiente.';
            test_ladm_col_empty       postgres    false    2455            �9           0    0 &   COLUMN lc_lindero.localizacion_textual    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_lindero.localizacion_textual IS 'Descripción de la localización, cuando esta se basa en texto.';
            test_ladm_col_empty       postgres    false    2455            �9           0    0 ,   COLUMN lc_lindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_lindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2455            �9           0    0 '   COLUMN lc_lindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_lindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2455            �9           0    0 $   COLUMN lc_lindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_lindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2455            �9           0    0    COLUMN lc_lindero.local_id    COMMENT     \   COMMENT ON COLUMN test_ladm_col_empty.lc_lindero.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2455            �	           1259    711265    lc_objetoconstruccion    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_objetoconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_objeto_construccion bigint NOT NULL,
    puntos integer NOT NULL,
    lc_grupo_calificacion bigint NOT NULL,
    CONSTRAINT lc_objetoconstruccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 16)))
);
 6   DROP TABLE test_ladm_col_empty.lc_objetoconstruccion;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0    TABLE lc_objetoconstruccion    COMMENT     |   COMMENT ON TABLE test_ladm_col_empty.lc_objetoconstruccion IS 'Puntaje de cada item de la calificación de construcción.';
            test_ladm_col_empty       postgres    false    2456            �9           0    0 5   COLUMN lc_objetoconstruccion.tipo_objeto_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_objetoconstruccion.tipo_objeto_construccion IS 'Item de la calificación de construcción según la método de calificación vigente.';
            test_ladm_col_empty       postgres    false    2456            �9           0    0 #   COLUMN lc_objetoconstruccion.puntos    COMMENT     g   COMMENT ON COLUMN test_ladm_col_empty.lc_objetoconstruccion.puntos IS 'Puntaje del ítem calificado.';
            test_ladm_col_empty       postgres    false    2456            �	           1259    712102    lc_objetoconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_objetoconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_col_empty.lc_objetoconstrucciontipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711274    lc_ofertasmercadoinmobiliario    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_ofertasmercadoinmobiliario (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 >   DROP TABLE test_ladm_col_empty.lc_ofertasmercadoinmobiliario;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0 0   COLUMN lc_ofertasmercadoinmobiliario.tipo_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_ofertasmercadoinmobiliario.tipo_oferta IS 'La clase de oferta corresponde a una oferta de venta o a una oferta de arriendo del predio.';
            test_ladm_col_empty       postgres    false    2457            �9           0    0 1   COLUMN lc_ofertasmercadoinmobiliario.valor_pedido    COMMENT     |   COMMENT ON COLUMN test_ladm_col_empty.lc_ofertasmercadoinmobiliario.valor_pedido IS 'Dato del valor en pesos de la oferta';
            test_ladm_col_empty       postgres    false    2457            �9           0    0 4   COLUMN lc_ofertasmercadoinmobiliario.valor_negociado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_ofertasmercadoinmobiliario.valor_negociado IS 'Dato del valor en pesos negociado entre el vendedor y el posible comprador';
            test_ladm_col_empty       postgres    false    2457            �9           0    0 9   COLUMN lc_ofertasmercadoinmobiliario.fecha_captura_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_ofertasmercadoinmobiliario.fecha_captura_oferta IS 'Año, mes y día de captura de la oferta en campo.';
            test_ladm_col_empty       postgres    false    2457            �9           0    0 :   COLUMN lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado IS 'Número de meses de la publicitación de la oferta en el mercado inmobiliario.';
            test_ladm_col_empty       postgres    false    2457            �9           0    0 =   COLUMN lc_ofertasmercadoinmobiliario.numero_contacto_oferente    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_ofertasmercadoinmobiliario.numero_contacto_oferente IS 'Número de teléfono fijo o número celular de la persona que está publicitando el bien inmueble.';
            test_ladm_col_empty       postgres    false    2457            �	           1259    711580    lc_ofertatipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_ofertatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_ladm_col_empty.lc_ofertatipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711283 	   lc_predio    TABLE     4  CREATE TABLE test_ladm_col_empty.lc_predio (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 *   DROP TABLE test_ladm_col_empty.lc_predio;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0    TABLE lc_predio    COMMENT     #  COMMENT ON TABLE test_ladm_col_empty.lc_predio IS 'Clase especializada de BaUnit, que describe la unidad administrativa básica para el caso de Colombia.
El predio es la unidad territorial legal propia de Catastro. Está formada por el terreno y puede o no tener construcciones asociadas.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0    COLUMN lc_predio.departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.departamento IS 'Corresponde al código del departamento al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 2 dígitos.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0    COLUMN lc_predio.municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.municipio IS 'Corresponde al código del municipio al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 3 dígitos.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0    COLUMN lc_predio.id_operacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.id_operacion IS 'Identificador único temporal de cada predio que se asigna en el desarrollo del levantamiento catastral.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0    COLUMN lc_predio.tiene_fmi    COMMENT     r   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.tiene_fmi IS 'Indica si el predio tiene matricula inmobiliaria.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0    COLUMN lc_predio.codigo_orip    COMMENT     T   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.codigo_orip IS 'Circulo registral';
            test_ladm_col_empty       postgres    false    2458            �9           0    0 '   COLUMN lc_predio.matricula_inmobiliaria    COMMENT     d   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.matricula_inmobiliaria IS 'Matricula inmobiliaria';
            test_ladm_col_empty       postgres    false    2458            �9           0    0    COLUMN lc_predio.numero_predial    COMMENT     &  COMMENT ON COLUMN test_ladm_col_empty.lc_predio.numero_predial IS 'Nuevo Código numérico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0 (   COLUMN lc_predio.numero_predial_anterior    COMMENT     /  COMMENT ON COLUMN test_ladm_col_empty.lc_predio.numero_predial_anterior IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0    COLUMN lc_predio.nupre    COMMENT     C  COMMENT ON COLUMN test_ladm_col_empty.lc_predio.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0 !   COLUMN lc_predio.avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.avaluo_catastral IS 'Valor catastral del predio, obtenido mediante investigación y análisis estadístico del mercado inmobiliario y la metodología de aplicación correspondiente.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0 !   COLUMN lc_predio.condicion_predio    COMMENT     n   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0    COLUMN lc_predio.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.nombre IS 'Nombre que recibe la unidad administrativa básica, en muchos casos toponímico, especialmente en terrenos rústicos.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0 +   COLUMN lc_predio.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0 &   COLUMN lc_predio.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0 #   COLUMN lc_predio.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2458            �9           0    0    COLUMN lc_predio.local_id    COMMENT     [   COMMENT ON COLUMN test_ladm_col_empty.lc_predio.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2458            �	           1259    711425    lc_predio_copropiedad    TABLE     �   CREATE TABLE test_ladm_col_empty.lc_predio_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    predio bigint NOT NULL,
    copropiedad bigint NOT NULL
);
 6   DROP TABLE test_ladm_col_empty.lc_predio_copropiedad;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711433    lc_predio_ini_predioinsumos    TABLE       CREATE TABLE test_ladm_col_empty.lc_predio_ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ini_predio_insumos bigint NOT NULL,
    lc_predio bigint NOT NULL
);
 <   DROP TABLE test_ladm_col_empty.lc_predio_ini_predioinsumos;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711877    lc_prediotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_prediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_ladm_col_empty.lc_prediotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711697 &   lc_procedimientocatastralregistraltipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_procedimientocatastralregistraltipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 G   DROP TABLE test_ladm_col_empty.lc_procedimientocatastralregistraltipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711295    lc_puntocontrol    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_puntocontrol (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    id_punto_control character varying(255) NOT NULL,
    puntotipo bigint NOT NULL,
    tipo_punto_control bigint,
    exactitud_horizontal numeric(5,3) NOT NULL,
    exactitud_vertical numeric(5,3) NOT NULL,
    posicion_interpolacion bigint,
    metodoproduccion bigint NOT NULL,
    geometria public.geometry(PointZ,38820) NOT NULL,
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_puntocontrol_exactitud_horizontal_check CHECK (((exactitud_horizontal >= 0.0) AND (exactitud_horizontal <= 10.0))),
    CONSTRAINT lc_puntocontrol_exactitud_vertical_check CHECK (((exactitud_vertical >= 0.0) AND (exactitud_vertical <= 10.0)))
);
 0   DROP TABLE test_ladm_col_empty.lc_puntocontrol;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0    TABLE lc_puntocontrol    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_puntocontrol IS 'Puntos topograficos o geodesicos utilizados como amarre para la ejecución del levantamiento catastral.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0 '   COLUMN lc_puntocontrol.id_punto_control    COMMENT     t   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.id_punto_control IS 'Nombre o código del punto de control.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0     COLUMN lc_puntocontrol.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0 )   COLUMN lc_puntocontrol.tipo_punto_control    COMMENT     ~   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.tipo_punto_control IS 'Si se trata de un punto de control o de apoyo.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0 +   COLUMN lc_puntocontrol.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.exactitud_horizontal IS 'Exactitud horizontal de la medición del punto.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0 )   COLUMN lc_puntocontrol.exactitud_vertical    COMMENT     }   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.exactitud_vertical IS 'Exactitud vertical de la medición del punto.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0 -   COLUMN lc_puntocontrol.posicion_interpolacion    COMMENT     p   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0 '   COLUMN lc_puntocontrol.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0     COLUMN lc_puntocontrol.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0 1   COLUMN lc_puntocontrol.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0 ,   COLUMN lc_puntocontrol.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0 )   COLUMN lc_puntocontrol.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2459            �9           0    0    COLUMN lc_puntocontrol.local_id    COMMENT     a   COMMENT ON COLUMN test_ladm_col_empty.lc_puntocontrol.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2459            �	           1259    712030    lc_puntocontroltipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_puntocontroltipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col_empty.lc_puntocontroltipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711396    lc_puntolevantamiento    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_puntolevantamiento (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_puntolevantamiento_exactitud_horizontal_check CHECK (((exactitud_horizontal >= 0.0) AND (exactitud_horizontal <= 10.0))),
    CONSTRAINT lc_puntolevantamiento_exactitud_vertical_check CHECK (((exactitud_vertical >= 0.0) AND (exactitud_vertical <= 10.0)))
);
 6   DROP TABLE test_ladm_col_empty.lc_puntolevantamiento;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0    TABLE lc_puntolevantamiento    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_puntolevantamiento IS 'Puntos que definen los limites de las construcciones, unidad de construcción y servidumbres de transito.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 3   COLUMN lc_puntolevantamiento.id_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.id_punto_levantamiento IS 'Nombre o código del punto levantamiento.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 &   COLUMN lc_puntolevantamiento.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 5   COLUMN lc_puntolevantamiento.tipo_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.tipo_punto_levantamiento IS 'Indica si el tipo de punto corresponde a una construcción o servidumbre de tránsito.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 /   COLUMN lc_puntolevantamiento.fotoidentificacion    COMMENT     ~   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 1   COLUMN lc_puntolevantamiento.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto levantamiento.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 /   COLUMN lc_puntolevantamiento.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto levantamiento';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 3   COLUMN lc_puntolevantamiento.posicion_interpolacion    COMMENT     v   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 -   COLUMN lc_puntolevantamiento.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 &   COLUMN lc_puntolevantamiento.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 7   COLUMN lc_puntolevantamiento.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 2   COLUMN lc_puntolevantamiento.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 /   COLUMN lc_puntolevantamiento.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2466            �9           0    0 %   COLUMN lc_puntolevantamiento.local_id    COMMENT     g   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolevantamiento.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2466            �	           1259    711913    lc_puntolevtipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_puntolevtipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_col_empty.lc_puntolevtipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711314    lc_puntolindero    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_puntolindero (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_puntolindero_exactitud_horizontal_check CHECK (((exactitud_horizontal >= 0.0) AND (exactitud_horizontal <= 10.0))),
    CONSTRAINT lc_puntolindero_exactitud_vertical_check CHECK (((exactitud_vertical >= 0.0) AND (exactitud_vertical <= 10.0)))
);
 0   DROP TABLE test_ladm_col_empty.lc_puntolindero;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0    TABLE lc_puntolindero    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_puntolindero IS 'Puntos que definen los lindero de un terreno. La sucesión de estos puntos forman una línea que representa el límite entre dos terrenos.';
            test_ladm_col_empty       postgres    false    2460            �9           0    0 '   COLUMN lc_puntolindero.id_punto_lindero    COMMENT     p   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.id_punto_lindero IS 'Nombre o código del punto lindero';
            test_ladm_col_empty       postgres    false    2460            �9           0    0     COLUMN lc_puntolindero.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_col_empty       postgres    false    2460            �9           0    0    COLUMN lc_puntolindero.acuerdo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.acuerdo IS 'Indica si existe acuerdo o no entre los colindantes en relación al punto lindero que se está midiendo.';
            test_ladm_col_empty       postgres    false    2460            �9           0    0 )   COLUMN lc_puntolindero.fotoidentificacion    COMMENT     x   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_col_empty       postgres    false    2460            �9           0    0 +   COLUMN lc_puntolindero.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto lindero';
            test_ladm_col_empty       postgres    false    2460            �9           0    0 )   COLUMN lc_puntolindero.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto lindero';
            test_ladm_col_empty       postgres    false    2460            �9           0    0 -   COLUMN lc_puntolindero.posicion_interpolacion    COMMENT     p   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_col_empty       postgres    false    2460            �9           0    0 '   COLUMN lc_puntolindero.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_col_empty       postgres    false    2460            �9           0    0     COLUMN lc_puntolindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_col_empty       postgres    false    2460            �9           0    0 1   COLUMN lc_puntolindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2460            �9           0    0 ,   COLUMN lc_puntolindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2460            �9           0    0 )   COLUMN lc_puntolindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2460            �9           0    0    COLUMN lc_puntolindero.local_id    COMMENT     a   COMMENT ON COLUMN test_ladm_col_empty.lc_puntolindero.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2460            �	           1259    711814    lc_puntotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 -   DROP TABLE test_ladm_col_empty.lc_puntotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711724    lc_relacionprediotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_relacionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_col_empty.lc_relacionprediotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711334    lc_restriccion    TABLE     N  CREATE TABLE test_ladm_col_empty.lc_restriccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 /   DROP TABLE test_ladm_col_empty.lc_restriccion;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0    TABLE lc_restriccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_restriccion IS 'Restricción legalmente constituida y registrada que afecta el derecho de un persona en relación con el predio.';
            test_ladm_col_empty       postgres    false    2461            �9           0    0    COLUMN lc_restriccion.tipo    COMMENT     l   COMMENT ON COLUMN test_ladm_col_empty.lc_restriccion.tipo IS 'Tipo de Restricción que afecta el derecho.';
            test_ladm_col_empty       postgres    false    2461            �9           0    0 !   COLUMN lc_restriccion.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_restriccion.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_col_empty       postgres    false    2461            �9           0    0 0   COLUMN lc_restriccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_restriccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2461            �9           0    0 +   COLUMN lc_restriccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_restriccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2461            �9           0    0 (   COLUMN lc_restriccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_restriccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2461            �9           0    0    COLUMN lc_restriccion.local_id    COMMENT     `   COMMENT ON COLUMN test_ladm_col_empty.lc_restriccion.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2461            �	           1259    711895    lc_restricciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_restricciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_col_empty.lc_restricciontipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711760    lc_resultadovisitatipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_resultadovisitatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col_empty.lc_resultadovisitatipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711441    lc_servidumbretransito    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_servidumbretransito (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_ladm_col_empty.lc_servidumbretransito;
       test_ladm_col_empty         postgres    false    2378    16            �9           0    0    TABLE lc_servidumbretransito    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_servidumbretransito IS 'Tipo de unidad espacial que permite la representación de una servidumbre de paso asociada a una COL_BAUnit.';
            test_ladm_col_empty       postgres    false    2470            �9           0    0 .   COLUMN lc_servidumbretransito.area_servidumbre    COMMENT     s   COMMENT ON COLUMN test_ladm_col_empty.lc_servidumbretransito.area_servidumbre IS 'Área total de la servidumbre.';
            test_ladm_col_empty       postgres    false    2470            �9           0    0 '   COLUMN lc_servidumbretransito.dimension    COMMENT     d   COMMENT ON COLUMN test_ladm_col_empty.lc_servidumbretransito.dimension IS 'Dimensión del objeto.';
            test_ladm_col_empty       postgres    false    2470            �9           0    0 &   COLUMN lc_servidumbretransito.etiqueta    COMMENT        COMMENT ON COLUMN test_ladm_col_empty.lc_servidumbretransito.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2470            �9           0    0 1   COLUMN lc_servidumbretransito.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_servidumbretransito.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2470            �9           0    0 '   COLUMN lc_servidumbretransito.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_servidumbretransito.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_col_empty       postgres    false    2470            �9           0    0 8   COLUMN lc_servidumbretransito.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_servidumbretransito.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2470            �9           0    0 3   COLUMN lc_servidumbretransito.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_servidumbretransito.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2470            �9           0    0 0   COLUMN lc_servidumbretransito.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_servidumbretransito.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2470             :           0    0 &   COLUMN lc_servidumbretransito.local_id    COMMENT     h   COMMENT ON COLUMN test_ladm_col_empty.lc_servidumbretransito.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2470            �	           1259    711805    lc_sexotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_sexotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ,   DROP TABLE test_ladm_col_empty.lc_sexotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711348 
   lc_terreno    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 +   DROP TABLE test_ladm_col_empty.lc_terreno;
       test_ladm_col_empty         postgres    false    2378    16            :           0    0    TABLE lc_terreno    COMMENT     r   COMMENT ON TABLE test_ladm_col_empty.lc_terreno IS 'Porción de tierra con una extensión geográfica definida.';
            test_ladm_col_empty       postgres    false    2462            :           0    0    COLUMN lc_terreno.area_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_terreno.area_terreno IS 'Área total del terreno  resultante del levantamiento catastral..';
            test_ladm_col_empty       postgres    false    2462            :           0    0     COLUMN lc_terreno.avaluo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_terreno.avaluo_terreno IS 'Valor catastral asignado en el proceso de valoración económica masiva al terreno del predio.';
            test_ladm_col_empty       postgres    false    2462            :           0    0 '   COLUMN lc_terreno.manzana_vereda_codigo    COMMENT     \  COMMENT ON COLUMN test_ladm_col_empty.lc_terreno.manzana_vereda_codigo IS 'Corresponde la identificación del número predial hasta la posición 21, permite identificar la relación espacial en sus componentes: departamento, municipio, zona, sector, comuna, barrio, manzana o vereda y terreno de acuerdo a su codificación en el número predial.';
            test_ladm_col_empty       postgres    false    2462            :           0    0    COLUMN lc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_terreno.geometria IS 'Corresponde a la figura geométrica vectorial poligonal, generada a partir de los linderos del predio.';
            test_ladm_col_empty       postgres    false    2462            :           0    0    COLUMN lc_terreno.dimension    COMMENT     X   COMMENT ON COLUMN test_ladm_col_empty.lc_terreno.dimension IS 'Dimensión del objeto.';
            test_ladm_col_empty       postgres    false    2462            :           0    0    COLUMN lc_terreno.etiqueta    COMMENT     s   COMMENT ON COLUMN test_ladm_col_empty.lc_terreno.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2462            :           0    0 %   COLUMN lc_terreno.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_terreno.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2462            	:           0    0 ,   COLUMN lc_terreno.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_terreno.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2462            
:           0    0 '   COLUMN lc_terreno.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_terreno.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2462            :           0    0 $   COLUMN lc_terreno.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_terreno.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2462            :           0    0    COLUMN lc_terreno.local_id    COMMENT     \   COMMENT ON COLUMN test_ladm_col_empty.lc_terreno.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2462            �	           1259    711416    lc_tipologiaconstruccion    TABLE       CREATE TABLE test_ladm_col_empty.lc_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint NOT NULL,
    lc_unidad_construccion bigint
);
 9   DROP TABLE test_ladm_col_empty.lc_tipologiaconstruccion;
       test_ladm_col_empty         postgres    false    2378    16            :           0    0    TABLE lc_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_tipologiaconstruccion IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_col_empty       postgres    false    2467            :           0    0 .   COLUMN lc_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_tipologiaconstruccion.tipo_tipologia IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_col_empty       postgres    false    2467            �	           1259    711985    lc_tipologiatipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_tipologiatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col_empty.lc_tipologiatipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711454    lc_unidadconstruccion    TABLE     �	  CREATE TABLE test_ladm_col_empty.lc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_ladm_col_empty.lc_unidadconstruccion;
       test_ladm_col_empty         postgres    false    2378    16            :           0    0    TABLE lc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.lc_unidadconstruccion IS 'Es cada conjunto de materiales consolidados dentro de un predio que tiene unas características específicas en cuanto a elementos constitutivos físicos y usos de la misma.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 *   COLUMN lc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 )   COLUMN lc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 .   COLUMN lc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 5   COLUMN lc_unidadconstruccion.tipo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.tipo_unidad_construccion IS 'Indica si la unidad de construcción es residencial, comercial, industrial o anexo.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 (   COLUMN lc_unidadconstruccion.tipo_planta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.tipo_planta IS 'Indica el tipo de planta donde se ubica la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 -   COLUMN lc_unidadconstruccion.planta_ubicacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.planta_ubicacion IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 /   COLUMN lc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 )   COLUMN lc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 *   COLUMN lc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 (   COLUMN lc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2471            :           0    0     COLUMN lc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 .   COLUMN lc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 7   COLUMN lc_unidadconstruccion.avaluo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.avaluo_unidad_construccion IS 'Avalúo catastral de la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 ,   COLUMN lc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 4   COLUMN lc_unidadconstruccion.area_privada_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.area_privada_construida IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_col_empty       postgres    false    2471            :           0    0 #   COLUMN lc_unidadconstruccion.altura    COMMENT     u   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.altura IS 'Altura total de la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2471             :           0    0 *   COLUMN lc_unidadconstruccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.observaciones IS 'Observaciones generales respecto de la unidad de construcción.';
            test_ladm_col_empty       postgres    false    2471            !:           0    0 &   COLUMN lc_unidadconstruccion.dimension    COMMENT     c   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.dimension IS 'Dimensión del objeto.';
            test_ladm_col_empty       postgres    false    2471            ":           0    0 %   COLUMN lc_unidadconstruccion.etiqueta    COMMENT     ~   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2471            #:           0    0 0   COLUMN lc_unidadconstruccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2471            $:           0    0 &   COLUMN lc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_col_empty       postgres    false    2471            %:           0    0 7   COLUMN lc_unidadconstruccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2471            &:           0    0 2   COLUMN lc_unidadconstruccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_empty       postgres    false    2471            ':           0    0 /   COLUMN lc_unidadconstruccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_empty       postgres    false    2471            (:           0    0 %   COLUMN lc_unidadconstruccion.local_id    COMMENT     g   COMMENT ON COLUMN test_ladm_col_empty.lc_unidadconstruccion.local_id IS 'Identificador único local.';
            test_ladm_col_empty       postgres    false    2471            �	           1259    711841    lc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_col_empty.lc_unidadconstrucciontipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711949    lc_usouconstipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_usouconstipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_col_empty.lc_usouconstipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711607 
   lc_viatipo    TABLE     �  CREATE TABLE test_ladm_col_empty.lc_viatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 +   DROP TABLE test_ladm_col_empty.lc_viatipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711976    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col_empty.snr_calidadderechotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    712012    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_ladm_col_empty.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_col_empty.snr_clasepredioregistrotipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711039    snr_derecho    TABLE     c  CREATE TABLE test_ladm_col_empty.snr_derecho (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 ,   DROP TABLE test_ladm_col_empty.snr_derecho;
       test_ladm_col_empty         postgres    false    2378    16            ):           0    0    TABLE snr_derecho    COMMENT     ]   COMMENT ON TABLE test_ladm_col_empty.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
            test_ladm_col_empty       postgres    false    2435            *:           0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     p   COMMENT ON COLUMN test_ladm_col_empty.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
            test_ladm_col_empty       postgres    false    2435            +:           0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
            test_ladm_col_empty       postgres    false    2435            �	           1259    712084    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_ladm_col_empty.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col_empty.snr_documentotitulartipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711048    snr_estructuramatriculamatriz    TABLE     C  CREATE TABLE test_ladm_col_empty.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 >   DROP TABLE test_ladm_col_empty.snr_estructuramatriculamatriz;
       test_ladm_col_empty         postgres    false    2378    16            ,:           0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_col_empty       postgres    false    2436            -:           0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_col_empty       postgres    false    2436            .:           0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
            test_ladm_col_empty       postgres    false    2436            �	           1259    711055    snr_fuentecabidalinderos    TABLE     q  CREATE TABLE test_ladm_col_empty.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 9   DROP TABLE test_ladm_col_empty.snr_fuentecabidalinderos;
       test_ladm_col_empty         postgres    false    2378    16            /:           0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
            test_ladm_col_empty       postgres    false    2437            0:           0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_col_empty       postgres    false    2437            1:           0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_col_empty       postgres    false    2437            2:           0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_col_empty       postgres    false    2437            3:           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_col_empty       postgres    false    2437            �	           1259    711065    snr_fuentederecho    TABLE     j  CREATE TABLE test_ladm_col_empty.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 2   DROP TABLE test_ladm_col_empty.snr_fuentederecho;
       test_ladm_col_empty         postgres    false    2378    16            4:           0    0    TABLE snr_fuentederecho    COMMENT     i   COMMENT ON TABLE test_ladm_col_empty.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
            test_ladm_col_empty       postgres    false    2438            5:           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_col_empty       postgres    false    2438            6:           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_col_empty       postgres    false    2438            7:           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_col_empty       postgres    false    2438            8:           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_col_empty       postgres    false    2438            �	           1259    711544    snr_fuentetipo    TABLE     �  CREATE TABLE test_ladm_col_empty.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_ladm_col_empty.snr_fuentetipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711553    snr_personatitulartipo    TABLE     �  CREATE TABLE test_ladm_col_empty.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col_empty.snr_personatitulartipo;
       test_ladm_col_empty         postgres    false    2378    16            �	           1259    711086    snr_predioregistro    TABLE     3  CREATE TABLE test_ladm_col_empty.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
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
 3   DROP TABLE test_ladm_col_empty.snr_predioregistro;
       test_ladm_col_empty         postgres    false    2378    16            9:           0    0    TABLE snr_predioregistro    COMMENT     f   COMMENT ON TABLE test_ladm_col_empty.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
            test_ladm_col_empty       postgres    false    2440            ::           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_col_empty       postgres    false    2440            ;:           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_col_empty       postgres    false    2440            <:           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     N  COMMENT ON COLUMN test_ladm_col_empty.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_col_empty       postgres    false    2440            =:           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     R  COMMENT ON COLUMN test_ladm_col_empty.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_col_empty       postgres    false    2440            >:           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
            test_ladm_col_empty       postgres    false    2440            ?:           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
            test_ladm_col_empty       postgres    false    2440            @:           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_col_empty.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
            test_ladm_col_empty       postgres    false    2440            A:           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT     m   COMMENT ON COLUMN test_ladm_col_empty.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
            test_ladm_col_empty       postgres    false    2440            �	           1259    711075    snr_titular    TABLE     �  CREATE TABLE test_ladm_col_empty.snr_titular (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 ,   DROP TABLE test_ladm_col_empty.snr_titular;
       test_ladm_col_empty         postgres    false    2378    16            B:           0    0    TABLE snr_titular    COMMENT     j   COMMENT ON TABLE test_ladm_col_empty.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
            test_ladm_col_empty       postgres    false    2439            C:           0    0    COLUMN snr_titular.tipo_persona    COMMENT     U   COMMENT ON COLUMN test_ladm_col_empty.snr_titular.tipo_persona IS 'Tipo de persona';
            test_ladm_col_empty       postgres    false    2439            D:           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     k   COMMENT ON COLUMN test_ladm_col_empty.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_col_empty       postgres    false    2439            E:           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     p   COMMENT ON COLUMN test_ladm_col_empty.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
            test_ladm_col_empty       postgres    false    2439            F:           0    0    COLUMN snr_titular.nombres    COMMENT     _   COMMENT ON COLUMN test_ladm_col_empty.snr_titular.nombres IS 'Nombres de la persona física.';
            test_ladm_col_empty       postgres    false    2439            G:           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     o   COMMENT ON COLUMN test_ladm_col_empty.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_col_empty       postgres    false    2439            H:           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     q   COMMENT ON COLUMN test_ladm_col_empty.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_col_empty       postgres    false    2439            I:           0    0    COLUMN snr_titular.razon_social    COMMENT     {   COMMENT ON COLUMN test_ladm_col_empty.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
            test_ladm_col_empty       postgres    false    2439            �	           1259    711097    snr_titular_derecho    TABLE     .  CREATE TABLE test_ladm_col_empty.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_ladm_col_empty.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 4   DROP TABLE test_ladm_col_empty.snr_titular_derecho;
       test_ladm_col_empty         postgres    false    2378    16            J:           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_col_empty.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
            test_ladm_col_empty       postgres    false    2441            �	           1259    712128    t_ili2db_attrname    TABLE     �   CREATE TABLE test_ladm_col_empty.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 2   DROP TABLE test_ladm_col_empty.t_ili2db_attrname;
       test_ladm_col_empty         postgres    false    16            �	           1259    711473    t_ili2db_basket    TABLE       CREATE TABLE test_ladm_col_empty.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 0   DROP TABLE test_ladm_col_empty.t_ili2db_basket;
       test_ladm_col_empty         postgres    false    16            �	           1259    712120    t_ili2db_classname    TABLE     �   CREATE TABLE test_ladm_col_empty.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 3   DROP TABLE test_ladm_col_empty.t_ili2db_classname;
       test_ladm_col_empty         postgres    false    16            �	           1259    712136    t_ili2db_column_prop    TABLE       CREATE TABLE test_ladm_col_empty.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 5   DROP TABLE test_ladm_col_empty.t_ili2db_column_prop;
       test_ladm_col_empty         postgres    false    16            �	           1259    711482    t_ili2db_dataset    TABLE     x   CREATE TABLE test_ladm_col_empty.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 1   DROP TABLE test_ladm_col_empty.t_ili2db_dataset;
       test_ladm_col_empty         postgres    false    16            �	           1259    711487    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_ladm_col_empty.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 5   DROP TABLE test_ladm_col_empty.t_ili2db_inheritance;
       test_ladm_col_empty         postgres    false    16            �	           1259    712148    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_ladm_col_empty.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 4   DROP TABLE test_ladm_col_empty.t_ili2db_meta_attrs;
       test_ladm_col_empty         postgres    false    16            �	           1259    711509    t_ili2db_model    TABLE     �   CREATE TABLE test_ladm_col_empty.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 /   DROP TABLE test_ladm_col_empty.t_ili2db_model;
       test_ladm_col_empty         postgres    false    16            �	           1259    711495    t_ili2db_settings    TABLE     �   CREATE TABLE test_ladm_col_empty.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 2   DROP TABLE test_ladm_col_empty.t_ili2db_settings;
       test_ladm_col_empty         postgres    false    16            �	           1259    712142    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_ladm_col_empty.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 4   DROP TABLE test_ladm_col_empty.t_ili2db_table_prop;
       test_ladm_col_empty         postgres    false    16            �	           1259    711503    t_ili2db_trafo    TABLE     �   CREATE TABLE test_ladm_col_empty.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 /   DROP TABLE test_ladm_col_empty.t_ili2db_trafo;
       test_ladm_col_empty         postgres    false    16            �7          0    710531    cc_metodooperacion 
   TABLE DATA               �   COPY test_ladm_col_empty.cc_metodooperacion (t_id, t_seq, formula, dimensiones_origen, ddimensiones_objetivo, col_transformacion_transformacion) FROM stdin;
    test_ladm_col_empty       postgres    false    2383   �	      )8          0    711643    ci_forma_presentacion_codigo 
   TABLE DATA               �   COPY test_ladm_col_empty.ci_forma_presentacion_codigo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2492   �	      @8          0    711850    col_areatipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_areatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2515   ˪	      �7          0    710538    col_areavalor 
   TABLE DATA               �   COPY test_ladm_col_empty.col_areavalor (t_id, t_seq, tipo, area, datos_proyeccion, lc_construccion_area, lc_terreno_area, lc_servidumbretransito_area, lc_unidadconstruccion_area) FROM stdin;
    test_ladm_col_empty       postgres    false    2384   ��	      �7          0    710807    col_baunitcomointeresado 
   TABLE DATA               �   COPY test_ladm_col_empty.col_baunitcomointeresado (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad) FROM stdin;
    test_ladm_col_empty       postgres    false    2411   �	      �7          0    710716    col_baunitfuente 
   TABLE DATA               a   COPY test_ladm_col_empty.col_baunitfuente (t_id, t_ili_tid, fuente_espacial, unidad) FROM stdin;
    test_ladm_col_empty       postgres    false    2401   1�	      �7          0    710731    col_cclfuente 
   TABLE DATA               [   COPY test_ladm_col_empty.col_cclfuente (t_id, t_ili_tid, ccl, fuente_espacial) FROM stdin;
    test_ladm_col_empty       postgres    false    2403   N�	      �7          0    710771    col_clfuente 
   TABLE DATA               U   COPY test_ladm_col_empty.col_clfuente (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_col_empty       postgres    false    2407   k�	      >8          0    711832    col_contenidoniveltipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_contenidoniveltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2513   ��	      +8          0    711661    col_dimensiontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_dimensiontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2494   ��	      88          0    711778    col_estadodisponibilidadtipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_estadodisponibilidadtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2507   �	      Y8          0    712075    col_estadoredserviciostipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_estadoredserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2540   خ	      A8          0    711859    col_estructuratipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_estructuratipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2516   z�	      D8          0    711886    col_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2519   !�	      .8          0    711688    col_fuenteespacialtipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_fuenteespacialtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2497   Ա	      38          0    711733    col_grupointeresadotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_grupointeresadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2502   	�	      78          0    711769    col_interpolaciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_interpolaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2506   �	       8          0    711562    col_iso19125_tipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_iso19125_tipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2483   {�	      �7          0    710750 
   col_masccl 
   TABLE DATA               �   COPY test_ladm_col_empty.col_masccl (t_id, t_ili_tid, ccl_mas, ue_mas_lc_construccion, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion) FROM stdin;
    test_ladm_col_empty       postgres    false    2405   �	      �7          0    710788 	   col_mascl 
   TABLE DATA               �   COPY test_ladm_col_empty.col_mascl (t_id, t_ili_tid, ue_mas_lc_construccion, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion) FROM stdin;
    test_ladm_col_empty       postgres    false    2409   *�	      �7          0    710739    col_menosccl 
   TABLE DATA               �   COPY test_ladm_col_empty.col_menosccl (t_id, t_ili_tid, ccl_menos, ue_menos_lc_construccion, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion) FROM stdin;
    test_ladm_col_empty       postgres    false    2404   G�	      �7          0    710778    col_menoscl 
   TABLE DATA               �   COPY test_ladm_col_empty.col_menoscl (t_id, t_ili_tid, ue_menos_lc_construccion, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion) FROM stdin;
    test_ladm_col_empty       postgres    false    2408   d�	      [8          0    712093    col_metodoproducciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_metodoproducciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2542   ��	      �7          0    710834    col_miembros 
   TABLE DATA               �   COPY test_ladm_col_empty.col_miembros (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, agrupacion) FROM stdin;
    test_ladm_col_empty       postgres    false    2414   ��	      �7          0    710761    col_puntoccl 
   TABLE DATA               �   COPY test_ladm_col_empty.col_puntoccl (t_id, t_ili_tid, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero, ccl) FROM stdin;
    test_ladm_col_empty       postgres    false    2406   Ѹ	      �7          0    710798    col_puntocl 
   TABLE DATA               �   COPY test_ladm_col_empty.col_puntocl (t_id, t_ili_tid, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero) FROM stdin;
    test_ladm_col_empty       postgres    false    2410   �	      �7          0    710695    col_puntofuente 
   TABLE DATA               �   COPY test_ladm_col_empty.col_puntofuente (t_id, t_ili_tid, fuente_espacial, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero) FROM stdin;
    test_ladm_col_empty       postgres    false    2399   �	      8          0    711517    col_puntotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2478   (�	      48          0    711742    col_redserviciostipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_redserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2503   ��	      F8          0    711904    col_registrotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_registrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2521   J�	      �7          0    710680    col_relacionfuente 
   TABLE DATA               a   COPY test_ladm_col_empty.col_relacionfuente (t_id, t_ili_tid, fuente_administrativa) FROM stdin;
    test_ladm_col_empty       postgres    false    2397   ��	      �7          0    710724    col_relacionfuenteuespacial 
   TABLE DATA               d   COPY test_ladm_col_empty.col_relacionfuenteuespacial (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_col_empty       postgres    false    2402   ݺ	      :8          0    711796    col_relacionsuperficietipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_relacionsuperficietipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2509   ��	      �7          0    710816    col_responsablefuente 
   TABLE DATA               �   COPY test_ladm_col_empty.col_responsablefuente (t_id, t_ili_tid, fuente_administrativa, interesado_lc_interesado, interesado_lc_agrupacioninteresados) FROM stdin;
    test_ladm_col_empty       postgres    false    2412   ��	      �7          0    710660    col_rrrfuente 
   TABLE DATA               �   COPY test_ladm_col_empty.col_rrrfuente (t_id, t_ili_tid, fuente_administrativa, rrr_lc_restriccion, rrr_lc_derecho) FROM stdin;
    test_ladm_col_empty       postgres    false    2395   ��	      �7          0    710825    col_topografofuente 
   TABLE DATA               �   COPY test_ladm_col_empty.col_topografofuente (t_id, t_ili_tid, fuente_espacial, topografo_lc_interesado, topografo_lc_agrupacioninteresados) FROM stdin;
    test_ladm_col_empty       postgres    false    2413   л	      �7          0    710581    col_transformacion 
   TABLE DATA               �   COPY test_ladm_col_empty.col_transformacion (t_id, t_seq, localizacion_transformada, lc_puntocontrol_transformacion_y_resultado, lc_puntolindero_transformacion_y_resultado, lc_puntolevantamiento_transformacion_y_resultado) FROM stdin;
    test_ladm_col_empty       postgres    false    2387   ��	      �7          0    710669    col_uebaunit 
   TABLE DATA               �   COPY test_ladm_col_empty.col_uebaunit (t_id, t_ili_tid, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, baunit) FROM stdin;
    test_ladm_col_empty       postgres    false    2396   
�	      �7          0    710705    col_uefuente 
   TABLE DATA               �   COPY test_ladm_col_empty.col_uefuente (t_id, t_ili_tid, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, fuente_espacial) FROM stdin;
    test_ladm_col_empty       postgres    false    2400   '�	      �7          0    710650    col_ueuegrupo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_ueuegrupo (t_id, t_ili_tid, parte_lc_construccion, parte_lc_terreno, parte_lc_servidumbretransito, parte_lc_unidadconstruccion) FROM stdin;
    test_ladm_col_empty       postgres    false    2394   D�	      !8          0    711571 "   col_unidadadministrativabasicatipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_unidadadministrativabasicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2484   a�	      &8          0    711616    col_unidadedificaciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_unidadedificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2489   ֽ	      �7          0    710687    col_unidadfuente 
   TABLE DATA               g   COPY test_ladm_col_empty.col_unidadfuente (t_id, t_ili_tid, fuente_administrativa, unidad) FROM stdin;
    test_ladm_col_empty       postgres    false    2398   M�	      Q8          0    712003    col_volumentipo 
   TABLE DATA               �   COPY test_ladm_col_empty.col_volumentipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2532   j�	      �7          0    710639    col_volumenvalor 
   TABLE DATA               �   COPY test_ladm_col_empty.col_volumenvalor (t_id, t_seq, volumen_medicion, tipo, lc_construccion_volumen, lc_terreno_volumen, lc_servidumbretransito_volumen, lc_unidadconstruccion_volumen) FROM stdin;
    test_ladm_col_empty       postgres    false    2393   �	      �7          0    710627 
   extarchivo 
   TABLE DATA               
  COPY test_ladm_col_empty.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo, lc_fuenteadministrtiva_ext_archivo_id, lc_fuenteespacial_ext_archivo_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2392   �	      �7          0    710552    extdireccion 
   TABLE DATA               '  COPY test_ladm_col_empty.extdireccion (t_id, t_seq, tipo_direccion, es_direccion_principal, localizacion, codigo_postal, clase_via_principal, valor_via_principal, letra_via_principal, sector_ciudad, valor_via_generadora, letra_via_generadora, numero_predio, sector_predio, complemento, nombre_predio, extunidadedificcnfsica_ext_direccion_id, extinteresado_ext_direccion_id, lc_construccion_ext_direccion_id, lc_predio_direccion, lc_terreno_ext_direccion_id, lc_servidumbretransito_ext_direccion_id, lc_unidadconstruccion_ext_direccion_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2385   �	      V8          0    712048     extdireccion_clase_via_principal 
   TABLE DATA               �   COPY test_ladm_col_empty.extdireccion_clase_via_principal (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2537   ;�	      98          0    711787    extdireccion_sector_ciudad 
   TABLE DATA               �   COPY test_ladm_col_empty.extdireccion_sector_ciudad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2508   /�	      8          0    711535    extdireccion_sector_predio 
   TABLE DATA               �   COPY test_ladm_col_empty.extdireccion_sector_predio (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2480   ��	      L8          0    711958    extdireccion_tipo_direccion 
   TABLE DATA               �   COPY test_ladm_col_empty.extdireccion_tipo_direccion (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2527   F�	      �7          0    710609    extinteresado 
   TABLE DATA               �   COPY test_ladm_col_empty.extinteresado (t_id, t_seq, nombre, documento_escaneado, extredserviciosfisica_ext_interesado_administrador_id, lc_agrupacionintersdos_ext_pid, lc_interesado_ext_pid) FROM stdin;
    test_ladm_col_empty       postgres    false    2390   ��	      �7          0    710621    extredserviciosfisica 
   TABLE DATA               T   COPY test_ladm_col_empty.extredserviciosfisica (t_id, t_seq, orientada) FROM stdin;
    test_ladm_col_empty       postgres    false    2391   ��	      �7          0    710594    extunidadedificacionfisica 
   TABLE DATA               N   COPY test_ladm_col_empty.extunidadedificacionfisica (t_id, t_seq) FROM stdin;
    test_ladm_col_empty       postgres    false    2388   ��	      �7          0    710573    fraccion 
   TABLE DATA               �   COPY test_ladm_col_empty.fraccion (t_id, t_seq, denominador, numerador, col_miembros_participacion, lc_predio_copropiedad_coeficiente) FROM stdin;
    test_ladm_col_empty       postgres    false    2386   �	      �7          0    710843 	   gc_barrio 
   TABLE DATA               k   COPY test_ladm_col_empty.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_col_empty       postgres    false    2415   0�	      �7          0    710853 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_ladm_col_empty.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
    test_ladm_col_empty       postgres    false    2416   M�	      �7          0    710863    gc_comisionesconstruccion 
   TABLE DATA               l   COPY test_ladm_col_empty.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_col_empty       postgres    false    2417   j�	      �7          0    710873    gc_comisionesterreno 
   TABLE DATA               g   COPY test_ladm_col_empty.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_col_empty       postgres    false    2418   ��	      �7          0    710883    gc_comisionesunidadconstruccion 
   TABLE DATA               r   COPY test_ladm_col_empty.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_col_empty       postgres    false    2419   ��	      J8          0    711940    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2525   ��	      �7          0    710893    gc_construccion 
   TABLE DATA                 COPY test_ladm_col_empty.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
    test_ladm_col_empty       postgres    false    2420   ��	      �7          0    711031    gc_copropiedad 
   TABLE DATA               j   COPY test_ladm_col_empty.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
    test_ladm_col_empty       postgres    false    2434   ��	      �7          0    710905    gc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_col_empty.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
    test_ladm_col_empty       postgres    false    2421    �	      �7          0    710912    gc_datostorreph 
   TABLE DATA               �   COPY test_ladm_col_empty.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
    test_ladm_col_empty       postgres    false    2422   �	      �7          0    710919    gc_direccion 
   TABLE DATA               �   COPY test_ladm_col_empty.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
    test_ladm_col_empty       postgres    false    2423   :�	      �7          0    710930    gc_estadopredio 
   TABLE DATA               �   COPY test_ladm_col_empty.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
    test_ladm_col_empty       postgres    false    2424   W�	      �7          0    710937 
   gc_manzana 
   TABLE DATA               u   COPY test_ladm_col_empty.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
    test_ladm_col_empty       postgres    false    2425   t�	      �7          0    710947    gc_perimetro 
   TABLE DATA               �   COPY test_ladm_col_empty.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_ladm_col_empty       postgres    false    2426   ��	      �7          0    711020    gc_prediocatastro 
   TABLE DATA                 COPY test_ladm_col_empty.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
    test_ladm_col_empty       postgres    false    2433   ��	      �7          0    710957    gc_propietario 
   TABLE DATA               �   COPY test_ladm_col_empty.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
    test_ladm_col_empty       postgres    false    2427   ��	      �7          0    710967    gc_sectorrural 
   TABLE DATA               Y   COPY test_ladm_col_empty.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_col_empty       postgres    false    2428   ��	      �7          0    710977    gc_sectorurbano 
   TABLE DATA               Z   COPY test_ladm_col_empty.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_col_empty       postgres    false    2429   �	      18          0    711715    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_ladm_col_empty.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2500   "�	      �7          0    710987 
   gc_terreno 
   TABLE DATA               �   COPY test_ladm_col_empty.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
    test_ladm_col_empty       postgres    false    2430   ��	      �7          0    710998    gc_unidadconstruccion 
   TABLE DATA               9  COPY test_ladm_col_empty.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
    test_ladm_col_empty       postgres    false    2431   ��	      #8          0    711589    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2486   �	      �7          0    711010 	   gc_vereda 
   TABLE DATA               |   COPY test_ladm_col_empty.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_col_empty       postgres    false    2432   ��	      �7          0    710508    gm_multisurface2d 
   TABLE DATA               E   COPY test_ladm_col_empty.gm_multisurface2d (t_id, t_seq) FROM stdin;
    test_ladm_col_empty       postgres    false    2380   ��	      �7          0    710525    gm_multisurface3d 
   TABLE DATA               E   COPY test_ladm_col_empty.gm_multisurface3d (t_id, t_seq) FROM stdin;
    test_ladm_col_empty       postgres    false    2382   �	      �7          0    710497    gm_surface2dlistvalue 
   TABLE DATA               m   COPY test_ladm_col_empty.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
    test_ladm_col_empty       postgres    false    2379   6�	      �7          0    710514    gm_surface3dlistvalue 
   TABLE DATA               m   COPY test_ladm_col_empty.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
    test_ladm_col_empty       postgres    false    2381   S�	      �7          0    710600    imagen 
   TABLE DATA               �   COPY test_ladm_col_empty.imagen (t_id, t_seq, uri, extinteresado_huella_dactilar, extinteresado_fotografia, extinteresado_firma) FROM stdin;
    test_ladm_col_empty       postgres    false    2389   p�	      (8          0    711634    ini_emparejamientotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.ini_emparejamientotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2491   ��	      �7          0    711105    ini_predioinsumos 
   TABLE DATA               �   COPY test_ladm_col_empty.ini_predioinsumos (t_id, t_ili_tid, tipo_emparejamiento, observaciones, gc_predio_catastro, snr_predio_juridico) FROM stdin;
    test_ladm_col_empty       postgres    false    2442   ��	      H8          0    711922    lc_acuerdotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_acuerdotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2523   ��	      �7          0    711117    lc_agrupacioninteresados 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_agrupacioninteresados (t_id, t_ili_tid, tipo, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2443   ��	      I8          0    711931    lc_anexotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_anexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2524   ��	      8          0    711361    lc_calificacionconvencional 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_calificacionconvencional (t_id, t_ili_tid, tipo_calificar, total_calificacion, lc_unidad_construccion) FROM stdin;
    test_ladm_col_empty       postgres    false    2463   C�	      8          0    711370    lc_calificacionnoconvencional 
   TABLE DATA               y   COPY test_ladm_col_empty.lc_calificacionnoconvencional (t_id, t_ili_tid, tipo_anexo, lc_unidad_construccion) FROM stdin;
    test_ladm_col_empty       postgres    false    2464   `�	      S8          0    712021    lc_calificartipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_calificartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2534   }�	      '8          0    711625    lc_categoriasuelotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_categoriasuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2490   M�	      W8          0    712057    lc_clasecalificaciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_clasecalificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2538   ��	      08          0    711706    lc_clasesuelotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_clasesuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2499   �	      X8          0    712066    lc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2539   +�	      �7          0    711128    lc_construccion 
   TABLE DATA               �  COPY test_ladm_col_empty.lc_construccion (t_id, t_ili_tid, identificador, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, anio_construccion, avaluo_construccion, area_construccion, altura, observaciones, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2444   8�	      =8          0    711823    lc_construccionplantatipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_construccionplantatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2512   U�	      U8          0    712039    lc_construcciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_construcciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2536   ��	      �7          0    711143    lc_contactovisita 
   TABLE DATA               |  COPY test_ladm_col_empty.lc_contactovisita (t_id, t_ili_tid, tipo_documento_quien_atendio, numero_documento_quien_atendio, primer_nombre_quien_atendio, segundo_nombre_quien_atendio, primer_apellido_quien_atendio, segundo_apellido_quien_atendio, relacion_con_predio, domicilio_notificaciones, celular, correo_electronico, autoriza_notificaciones, lc_datos_adicionales) FROM stdin;
    test_ladm_col_empty       postgres    false    2445   ��	      8          0    711379 )   lc_datosadicionaleslevantamientocatastral 
   TABLE DATA               �  COPY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral (t_id, t_ili_tid, tiene_area_registral, area_registral_m2, procedimiento_catastral_registral, destinacion_economica, clase_suelo, categoria_suelo, observaciones, fecha_visita_predial, tipo_documento_reconocedor, numero_documento_reconocedor, primer_nombre_reconocedor, segundo_nombre_reconocedor, primer_apellido_reconocedor, segundo_apellido_reconocedor, resultado_visita, suscribe_acta_colindancia, lc_predio) FROM stdin;
    test_ladm_col_empty       postgres    false    2465   ��	      �7          0    711156    lc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_col_empty.lc_datosphcondominio (t_id, t_ili_tid, area_total_terreno, area_total_terreno_privada, area_total_terreno_comun, area_total_construida, area_total_construida_privada, area_total_construida_comun, numero_torres, total_unidades_privadas, lc_predio) FROM stdin;
    test_ladm_col_empty       postgres    false    2446   ��	      �7          0    711164 
   lc_derecho 
   TABLE DATA                 COPY test_ladm_col_empty.lc_derecho (t_id, t_ili_tid, tipo, fraccion_derecho, fecha_inicio_tenencia, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2447   ��	      -8          0    711679    lc_derechotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_derechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2496   �	      $8          0    711598    lc_destinacioneconomicatipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_destinacioneconomicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2487   ��	      P8          0    711994    lc_dominioconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_dominioconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2531   c�	      ]8          0    712111    lc_estadoconservaciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_estadoconservaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2544   ��	      �7          0    711178    lc_estructuranovedadfmi 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_estructuranovedadfmi (t_id, t_seq, codigo_orip, numero_fmi, lc_dtsdcnlstmntctstral_novedad_fmi) FROM stdin;
    test_ladm_col_empty       postgres    false    2448   ��	      �7          0    711185 !   lc_estructuranovedadnumeropredial 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_estructuranovedadnumeropredial (t_id, t_seq, numero_predial, tipo_novedad, lc_dtsdcnlstmntctstral_novedad_numeros_prediales) FROM stdin;
    test_ladm_col_empty       postgres    false    2449   ��	      8          0    711526 .   lc_estructuranovedadnumeropredial_tipo_novedad 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_estructuranovedadnumeropredial_tipo_novedad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2479   ��	      *8          0    711652    lc_fotoidentificaciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_fotoidentificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2493   ��	      �7          0    711193    lc_fuenteadministrativa 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_fuenteadministrativa (t_id, t_ili_tid, tipo, ente_emisor, observacion, numero_fuente, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2450   ��	      M8          0    711967    lc_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2528   ��	       8          0    711206    lc_fuenteespacial 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_fuenteespacial (t_id, t_ili_tid, nombre, tipo, descripcion, metadato, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2451   �
      8          0    711219    lc_grupocalificacion 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_grupocalificacion (t_id, t_ili_tid, clase_calificacion, conservacion, subtotal, lc_calificacion_convencional) FROM stdin;
    test_ladm_col_empty       postgres    false    2452   �
      ,8          0    711670    lc_grupoetnicotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_grupoetnicotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2495   �
      8          0    711229    lc_interesado 
   TABLE DATA               -  COPY test_ladm_col_empty.lc_interesado (t_id, t_ili_tid, tipo, tipo_documento, documento_identidad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, sexo, grupo_etnico, razon_social, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2453   a
      8          0    711243    lc_interesadocontacto 
   TABLE DATA                 COPY test_ladm_col_empty.lc_interesadocontacto (t_id, t_ili_tid, telefono1, telefono2, domicilio_notificacion, direccion_residencia, correo_electronico, autoriza_notificacion_correo, departamento, municipio, vereda, corregimiento, lc_interesado) FROM stdin;
    test_ladm_col_empty       postgres    false    2454   ~
      B8          0    711868    lc_interesadodocumentotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_interesadodocumentotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2517   �
      58          0    711751    lc_interesadotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_interesadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2504   �

      8          0    711254 
   lc_lindero 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_lindero (t_id, t_ili_tid, longitud, geometria, localizacion_textual, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2455   �
      8          0    711265    lc_objetoconstruccion 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_objetoconstruccion (t_id, t_ili_tid, tipo_objeto_construccion, puntos, lc_grupo_calificacion) FROM stdin;
    test_ladm_col_empty       postgres    false    2456   �
      \8          0    712102    lc_objetoconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_objetoconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2543   �
      8          0    711274    lc_ofertasmercadoinmobiliario 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_ofertasmercadoinmobiliario (t_id, t_ili_tid, tipo_oferta, valor_pedido, valor_negociado, fecha_captura_oferta, tiempo_oferta_mercado, numero_contacto_oferente, nombre_oferente, lc_predio) FROM stdin;
    test_ladm_col_empty       postgres    false    2457   �
      "8          0    711580    lc_ofertatipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_ofertatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2485   �
      8          0    711283 	   lc_predio 
   TABLE DATA               K  COPY test_ladm_col_empty.lc_predio (t_id, t_ili_tid, departamento, municipio, id_operacion, tiene_fmi, codigo_orip, matricula_inmobiliaria, numero_predial, numero_predial_anterior, nupre, avaluo_catastral, tipo, condicion_predio, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2458   �
      8          0    711425    lc_predio_copropiedad 
   TABLE DATA               W   COPY test_ladm_col_empty.lc_predio_copropiedad (t_id, predio, copropiedad) FROM stdin;
    test_ladm_col_empty       postgres    false    2468   
      8          0    711433    lc_predio_ini_predioinsumos 
   TABLE DATA               r   COPY test_ladm_col_empty.lc_predio_ini_predioinsumos (t_id, t_ili_tid, ini_predio_insumos, lc_predio) FROM stdin;
    test_ladm_col_empty       postgres    false    2469   
      C8          0    711877    lc_prediotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_prediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2518   ;
      /8          0    711697 &   lc_procedimientocatastralregistraltipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_procedimientocatastralregistraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2498   o
      8          0    711295    lc_puntocontrol 
   TABLE DATA               �  COPY test_ladm_col_empty.lc_puntocontrol (t_id, t_ili_tid, id_punto_control, puntotipo, tipo_punto_control, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2459   �!
      T8          0    712030    lc_puntocontroltipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_puntocontroltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2535   �!
      8          0    711396    lc_puntolevantamiento 
   TABLE DATA               �  COPY test_ladm_col_empty.lc_puntolevantamiento (t_id, t_ili_tid, id_punto_levantamiento, puntotipo, tipo_punto_levantamiento, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2466   �"
      G8          0    711913    lc_puntolevtipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_puntolevtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2522   �"
      	8          0    711314    lc_puntolindero 
   TABLE DATA               �  COPY test_ladm_col_empty.lc_puntolindero (t_id, t_ili_tid, id_punto_lindero, puntotipo, acuerdo, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2460   �#
      <8          0    711814    lc_puntotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2511   �#
      28          0    711724    lc_relacionprediotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_relacionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2501   �&
      
8          0    711334    lc_restriccion 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_restriccion (t_id, t_ili_tid, tipo, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2461   �'
      E8          0    711895    lc_restricciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_restricciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2520   (
      68          0    711760    lc_resultadovisitatipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_resultadovisitatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2505   $2
      8          0    711441    lc_servidumbretransito 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_servidumbretransito (t_id, t_ili_tid, area_servidumbre, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2470   4
      ;8          0    711805    lc_sexotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_sexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2510   *4
      8          0    711348 
   lc_terreno 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_terreno (t_id, t_ili_tid, area_terreno, avaluo_terreno, manzana_vereda_codigo, geometria, dimension, etiqueta, relacion_superficie, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2462   �4
      8          0    711416    lc_tipologiaconstruccion 
   TABLE DATA               x   COPY test_ladm_col_empty.lc_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, lc_unidad_construccion) FROM stdin;
    test_ladm_col_empty       postgres    false    2467   �4
      O8          0    711985    lc_tipologiatipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2530   5
      8          0    711454    lc_unidadconstruccion 
   TABLE DATA                  COPY test_ladm_col_empty.lc_unidadconstruccion (t_id, t_ili_tid, identificador, tipo_dominio, tipo_construccion, tipo_unidad_construccion, tipo_planta, planta_ubicacion, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, avaluo_unidad_construccion, area_construida, area_privada_construida, altura, observaciones, lc_construccion, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_empty       postgres    false    2471   �:
      ?8          0    711841    lc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2514   ;
      K8          0    711949    lc_usouconstipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2526   -<
      %8          0    711607 
   lc_viatipo 
   TABLE DATA               �   COPY test_ladm_col_empty.lc_viatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2488   �Z
      N8          0    711976    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2529   m_
      R8          0    712012    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_ladm_col_empty.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2533   �c
      �7          0    711039    snr_derecho 
   TABLE DATA               �   COPY test_ladm_col_empty.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
    test_ladm_col_empty       postgres    false    2435   �f
      Z8          0    712084    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_ladm_col_empty.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2541   �f
      �7          0    711048    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_ladm_col_empty.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
    test_ladm_col_empty       postgres    false    2436   �i
      �7          0    711055    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_ladm_col_empty.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_col_empty       postgres    false    2437   j
      �7          0    711065    snr_fuentederecho 
   TABLE DATA               �   COPY test_ladm_col_empty.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_col_empty       postgres    false    2438   4j
      8          0    711544    snr_fuentetipo 
   TABLE DATA               �   COPY test_ladm_col_empty.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2481   Qj
      8          0    711553    snr_personatitulartipo 
   TABLE DATA               �   COPY test_ladm_col_empty.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_empty       postgres    false    2482   �l
      �7          0    711086    snr_predioregistro 
   TABLE DATA                 COPY test_ladm_col_empty.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
    test_ladm_col_empty       postgres    false    2440   n
      �7          0    711075    snr_titular 
   TABLE DATA               �   COPY test_ladm_col_empty.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
    test_ladm_col_empty       postgres    false    2439   n
      �7          0    711097    snr_titular_derecho 
   TABLE DATA                  COPY test_ladm_col_empty.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
    test_ladm_col_empty       postgres    false    2441   ;n
      _8          0    712128    t_ili2db_attrname 
   TABLE DATA               \   COPY test_ladm_col_empty.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
    test_ladm_col_empty       postgres    false    2546   Xn
      8          0    711473    t_ili2db_basket 
   TABLE DATA               o   COPY test_ladm_col_empty.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
    test_ladm_col_empty       postgres    false    2472   ޏ
      ^8          0    712120    t_ili2db_classname 
   TABLE DATA               K   COPY test_ladm_col_empty.t_ili2db_classname (iliname, sqlname) FROM stdin;
    test_ladm_col_empty       postgres    false    2545   ��
      `8          0    712136    t_ili2db_column_prop 
   TABLE DATA               i   COPY test_ladm_col_empty.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
    test_ladm_col_empty       postgres    false    2547   @�
      8          0    711482    t_ili2db_dataset 
   TABLE DATA               J   COPY test_ladm_col_empty.t_ili2db_dataset (t_id, datasetname) FROM stdin;
    test_ladm_col_empty       postgres    false    2473   ��
      8          0    711487    t_ili2db_inheritance 
   TABLE DATA               Q   COPY test_ladm_col_empty.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
    test_ladm_col_empty       postgres    false    2474   ��
      b8          0    712148    t_ili2db_meta_attrs 
   TABLE DATA               ]   COPY test_ladm_col_empty.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
    test_ladm_col_empty       postgres    false    2549   z�
      8          0    711509    t_ili2db_model 
   TABLE DATA               k   COPY test_ladm_col_empty.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
    test_ladm_col_empty       postgres    false    2477   �
      8          0    711495    t_ili2db_settings 
   TABLE DATA               F   COPY test_ladm_col_empty.t_ili2db_settings (tag, setting) FROM stdin;
    test_ladm_col_empty       postgres    false    2475   ��      a8          0    712142    t_ili2db_table_prop 
   TABLE DATA               S   COPY test_ladm_col_empty.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
    test_ladm_col_empty       postgres    false    2548   ��      8          0    711503    t_ili2db_trafo 
   TABLE DATA               L   COPY test_ladm_col_empty.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
    test_ladm_col_empty       postgres    false    2476   n�      K:           0    0    t_ili2db_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('test_ladm_col_empty.t_ili2db_seq', 587, true);
            test_ladm_col_empty       postgres    false    2378            4           2606    710536 *   cc_metodooperacion cc_metodooperacion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_empty.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_empty.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_pkey;
       test_ladm_col_empty         postgres    false    2383            �5           2606    711651 >   ci_forma_presentacion_codigo ci_forma_presentacion_codigo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.ci_forma_presentacion_codigo
    ADD CONSTRAINT ci_forma_presentacion_codigo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_col_empty.ci_forma_presentacion_codigo DROP CONSTRAINT ci_forma_presentacion_codigo_pkey;
       test_ladm_col_empty         postgres    false    2492            6           2606    711858    col_areatipo col_areatipo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.col_areatipo
    ADD CONSTRAINT col_areatipo_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.col_areatipo DROP CONSTRAINT col_areatipo_pkey;
       test_ladm_col_empty         postgres    false    2515            4           2606    710546     col_areavalor col_areavalor_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor
    ADD CONSTRAINT col_areavalor_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor DROP CONSTRAINT col_areavalor_pkey;
       test_ladm_col_empty         postgres    false    2384            �4           2606    710812 6   col_baunitcomointeresado col_baunitcomointeresado_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col_empty.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_pkey;
       test_ladm_col_empty         postgres    false    2411            m4           2606    710721 &   col_baunitfuente col_baunitfuente_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_empty.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_empty.col_baunitfuente DROP CONSTRAINT col_baunitfuente_pkey;
       test_ladm_col_empty         postgres    false    2401            u4           2606    710736     col_cclfuente col_cclfuente_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_empty.col_cclfuente
    ADD CONSTRAINT col_cclfuente_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_empty.col_cclfuente DROP CONSTRAINT col_cclfuente_pkey;
       test_ladm_col_empty         postgres    false    2403            �4           2606    710776    col_clfuente col_clfuente_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.col_clfuente
    ADD CONSTRAINT col_clfuente_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.col_clfuente DROP CONSTRAINT col_clfuente_pkey;
       test_ladm_col_empty         postgres    false    2407            6           2606    711840 2   col_contenidoniveltipo col_contenidoniveltipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_empty.col_contenidoniveltipo
    ADD CONSTRAINT col_contenidoniveltipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_empty.col_contenidoniveltipo DROP CONSTRAINT col_contenidoniveltipo_pkey;
       test_ladm_col_empty         postgres    false    2513            �5           2606    711669 (   col_dimensiontipo col_dimensiontipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_empty.col_dimensiontipo
    ADD CONSTRAINT col_dimensiontipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_empty.col_dimensiontipo DROP CONSTRAINT col_dimensiontipo_pkey;
       test_ladm_col_empty         postgres    false    2494             6           2606    711786 >   col_estadodisponibilidadtipo col_estadodisponibilidadtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_estadodisponibilidadtipo
    ADD CONSTRAINT col_estadodisponibilidadtipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_col_empty.col_estadodisponibilidadtipo DROP CONSTRAINT col_estadodisponibilidadtipo_pkey;
       test_ladm_col_empty         postgres    false    2507            B6           2606    712083 :   col_estadoredserviciostipo col_estadoredserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_estadoredserviciostipo
    ADD CONSTRAINT col_estadoredserviciostipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_empty.col_estadoredserviciostipo DROP CONSTRAINT col_estadoredserviciostipo_pkey;
       test_ladm_col_empty         postgres    false    2540            6           2606    711867 *   col_estructuratipo col_estructuratipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_empty.col_estructuratipo
    ADD CONSTRAINT col_estructuratipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_empty.col_estructuratipo DROP CONSTRAINT col_estructuratipo_pkey;
       test_ladm_col_empty         postgres    false    2516            6           2606    711894 >   col_fuenteadministrativatipo col_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_fuenteadministrativatipo
    ADD CONSTRAINT col_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_col_empty.col_fuenteadministrativatipo DROP CONSTRAINT col_fuenteadministrativatipo_pkey;
       test_ladm_col_empty         postgres    false    2519            �5           2606    711696 2   col_fuenteespacialtipo col_fuenteespacialtipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_empty.col_fuenteespacialtipo
    ADD CONSTRAINT col_fuenteespacialtipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_empty.col_fuenteespacialtipo DROP CONSTRAINT col_fuenteespacialtipo_pkey;
       test_ladm_col_empty         postgres    false    2497            �5           2606    711741 4   col_grupointeresadotipo col_grupointeresadotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_grupointeresadotipo
    ADD CONSTRAINT col_grupointeresadotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_empty.col_grupointeresadotipo DROP CONSTRAINT col_grupointeresadotipo_pkey;
       test_ladm_col_empty         postgres    false    2502            �5           2606    711777 0   col_interpolaciontipo col_interpolaciontipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.col_interpolaciontipo
    ADD CONSTRAINT col_interpolaciontipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.col_interpolaciontipo DROP CONSTRAINT col_interpolaciontipo_pkey;
       test_ladm_col_empty         postgres    false    2506            �5           2606    711570 (   col_iso19125_tipo col_iso19125_tipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_empty.col_iso19125_tipo
    ADD CONSTRAINT col_iso19125_tipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_empty.col_iso19125_tipo DROP CONSTRAINT col_iso19125_tipo_pkey;
       test_ladm_col_empty         postgres    false    2483            4           2606    710755    col_masccl col_masccl_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_empty.col_masccl
    ADD CONSTRAINT col_masccl_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_empty.col_masccl DROP CONSTRAINT col_masccl_pkey;
       test_ladm_col_empty         postgres    false    2405            �4           2606    710793    col_mascl col_mascl_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col_empty.col_mascl
    ADD CONSTRAINT col_mascl_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col_empty.col_mascl DROP CONSTRAINT col_mascl_pkey;
       test_ladm_col_empty         postgres    false    2409            x4           2606    710744    col_menosccl col_menosccl_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl
    ADD CONSTRAINT col_menosccl_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl DROP CONSTRAINT col_menosccl_pkey;
       test_ladm_col_empty         postgres    false    2404            �4           2606    710783    col_menoscl col_menoscl_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_empty.col_menoscl
    ADD CONSTRAINT col_menoscl_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_empty.col_menoscl DROP CONSTRAINT col_menoscl_pkey;
       test_ladm_col_empty         postgres    false    2408            F6           2606    712101 6   col_metodoproducciontipo col_metodoproducciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_metodoproducciontipo
    ADD CONSTRAINT col_metodoproducciontipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col_empty.col_metodoproducciontipo DROP CONSTRAINT col_metodoproducciontipo_pkey;
       test_ladm_col_empty         postgres    false    2542            �4           2606    710839    col_miembros col_miembros_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.col_miembros
    ADD CONSTRAINT col_miembros_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.col_miembros DROP CONSTRAINT col_miembros_pkey;
       test_ladm_col_empty         postgres    false    2414            �4           2606    710766    col_puntoccl col_puntoccl_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.col_puntoccl
    ADD CONSTRAINT col_puntoccl_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.col_puntoccl DROP CONSTRAINT col_puntoccl_pkey;
       test_ladm_col_empty         postgres    false    2406            �4           2606    710803    col_puntocl col_puntocl_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_empty.col_puntocl
    ADD CONSTRAINT col_puntocl_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_empty.col_puntocl DROP CONSTRAINT col_puntocl_pkey;
       test_ladm_col_empty         postgres    false    2410            `4           2606    710700 $   col_puntofuente col_puntofuente_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.col_puntofuente
    ADD CONSTRAINT col_puntofuente_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.col_puntofuente DROP CONSTRAINT col_puntofuente_pkey;
       test_ladm_col_empty         postgres    false    2399            �5           2606    711525     col_puntotipo col_puntotipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_empty.col_puntotipo
    ADD CONSTRAINT col_puntotipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_empty.col_puntotipo DROP CONSTRAINT col_puntotipo_pkey;
       test_ladm_col_empty         postgres    false    2478            �5           2606    711750 .   col_redserviciostipo col_redserviciostipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col_empty.col_redserviciostipo
    ADD CONSTRAINT col_redserviciostipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col_empty.col_redserviciostipo DROP CONSTRAINT col_redserviciostipo_pkey;
       test_ladm_col_empty         postgres    false    2503            6           2606    711912 &   col_registrotipo col_registrotipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_empty.col_registrotipo
    ADD CONSTRAINT col_registrotipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_empty.col_registrotipo DROP CONSTRAINT col_registrotipo_pkey;
       test_ladm_col_empty         postgres    false    2521            Y4           2606    710685 *   col_relacionfuente col_relacionfuente_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_empty.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_empty.col_relacionfuente DROP CONSTRAINT col_relacionfuente_pkey;
       test_ladm_col_empty         postgres    false    2397            p4           2606    710729 <   col_relacionfuenteuespacial col_relacionfuenteuespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespacial_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_empty.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespacial_pkey;
       test_ladm_col_empty         postgres    false    2402            6           2606    711804 :   col_relacionsuperficietipo col_relacionsuperficietipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_relacionsuperficietipo
    ADD CONSTRAINT col_relacionsuperficietipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_empty.col_relacionsuperficietipo DROP CONSTRAINT col_relacionsuperficietipo_pkey;
       test_ladm_col_empty         postgres    false    2509            �4           2606    710821 0   col_responsablefuente col_responsablefuente_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.col_responsablefuente DROP CONSTRAINT col_responsablefuente_pkey;
       test_ladm_col_empty         postgres    false    2412            M4           2606    710665     col_rrrfuente col_rrrfuente_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_empty.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_empty.col_rrrfuente DROP CONSTRAINT col_rrrfuente_pkey;
       test_ladm_col_empty         postgres    false    2395            �4           2606    710830 ,   col_topografofuente col_topografofuente_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col_empty.col_topografofuente
    ADD CONSTRAINT col_topografofuente_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col_empty.col_topografofuente DROP CONSTRAINT col_topografofuente_pkey;
       test_ladm_col_empty         postgres    false    2413            *4           2606    710589 *   col_transformacion col_transformacion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_empty.col_transformacion
    ADD CONSTRAINT col_transformacion_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_empty.col_transformacion DROP CONSTRAINT col_transformacion_pkey;
       test_ladm_col_empty         postgres    false    2387            R4           2606    710674    col_uebaunit col_uebaunit_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit
    ADD CONSTRAINT col_uebaunit_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit DROP CONSTRAINT col_uebaunit_pkey;
       test_ladm_col_empty         postgres    false    2396            f4           2606    710710    col_uefuente col_uefuente_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente
    ADD CONSTRAINT col_uefuente_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente DROP CONSTRAINT col_uefuente_pkey;
       test_ladm_col_empty         postgres    false    2400            J4           2606    710655     col_ueuegrupo col_ueuegrupo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_empty.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_empty.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_pkey;
       test_ladm_col_empty         postgres    false    2394            �5           2606    711579 J   col_unidadadministrativabasicatipo col_unidadadministrativabasicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_unidadadministrativabasicatipo
    ADD CONSTRAINT col_unidadadministrativabasicatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col_empty.col_unidadadministrativabasicatipo DROP CONSTRAINT col_unidadadministrativabasicatipo_pkey;
       test_ladm_col_empty         postgres    false    2484            �5           2606    711624 8   col_unidadedificaciontipo col_unidadedificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_unidadedificaciontipo
    ADD CONSTRAINT col_unidadedificaciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_empty.col_unidadedificaciontipo DROP CONSTRAINT col_unidadedificaciontipo_pkey;
       test_ladm_col_empty         postgres    false    2489            \4           2606    710692 &   col_unidadfuente col_unidadfuente_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_empty.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_empty.col_unidadfuente DROP CONSTRAINT col_unidadfuente_pkey;
       test_ladm_col_empty         postgres    false    2398            26           2606    712011 $   col_volumentipo col_volumentipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.col_volumentipo
    ADD CONSTRAINT col_volumentipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.col_volumentipo DROP CONSTRAINT col_volumentipo_pkey;
       test_ladm_col_empty         postgres    false    2532            C4           2606    710644 &   col_volumenvalor col_volumenvalor_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor DROP CONSTRAINT col_volumenvalor_pkey;
       test_ladm_col_empty         postgres    false    2393            <4           2606    710635    extarchivo extarchivo_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_empty.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_empty.extarchivo DROP CONSTRAINT extarchivo_pkey;
       test_ladm_col_empty         postgres    false    2392            <6           2606    712056 F   extdireccion_clase_via_principal extdireccion_clase_via_principal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion_clase_via_principal
    ADD CONSTRAINT extdireccion_clase_via_principal_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_col_empty.extdireccion_clase_via_principal DROP CONSTRAINT extdireccion_clase_via_principal_pkey;
       test_ladm_col_empty         postgres    false    2537            4           2606    710560    extdireccion extdireccion_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_pkey;
       test_ladm_col_empty         postgres    false    2385            6           2606    711795 :   extdireccion_sector_ciudad extdireccion_sector_ciudad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion_sector_ciudad
    ADD CONSTRAINT extdireccion_sector_ciudad_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_empty.extdireccion_sector_ciudad DROP CONSTRAINT extdireccion_sector_ciudad_pkey;
       test_ladm_col_empty         postgres    false    2508            �5           2606    711543 :   extdireccion_sector_predio extdireccion_sector_predio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion_sector_predio
    ADD CONSTRAINT extdireccion_sector_predio_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_empty.extdireccion_sector_predio DROP CONSTRAINT extdireccion_sector_predio_pkey;
       test_ladm_col_empty         postgres    false    2480            (6           2606    711966 <   extdireccion_tipo_direccion extdireccion_tipo_direccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion_tipo_direccion
    ADD CONSTRAINT extdireccion_tipo_direccion_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_empty.extdireccion_tipo_direccion DROP CONSTRAINT extdireccion_tipo_direccion_pkey;
       test_ladm_col_empty         postgres    false    2527            64           2606    710617     extinteresado extinteresado_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_empty.extinteresado
    ADD CONSTRAINT extinteresado_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_empty.extinteresado DROP CONSTRAINT extinteresado_pkey;
       test_ladm_col_empty         postgres    false    2390            84           2606    710626 0   extredserviciosfisica extredserviciosfisica_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.extredserviciosfisica
    ADD CONSTRAINT extredserviciosfisica_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.extredserviciosfisica DROP CONSTRAINT extredserviciosfisica_pkey;
       test_ladm_col_empty         postgres    false    2391            ,4           2606    710599 :   extunidadedificacionfisica extunidadedificacionfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extunidadedificacionfisica
    ADD CONSTRAINT extunidadedificacionfisica_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_empty.extunidadedificacionfisica DROP CONSTRAINT extunidadedificacionfisica_pkey;
       test_ladm_col_empty         postgres    false    2388            $4           2606    710578    fraccion fraccion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY test_ladm_col_empty.fraccion
    ADD CONSTRAINT fraccion_pkey PRIMARY KEY (t_id);
 M   ALTER TABLE ONLY test_ladm_col_empty.fraccion DROP CONSTRAINT fraccion_pkey;
       test_ladm_col_empty         postgres    false    2386            �4           2606    710851    gc_barrio gc_barrio_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col_empty.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col_empty.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
       test_ladm_col_empty         postgres    false    2415            �4           2606    710861 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_col_empty.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
       test_ladm_col_empty         postgres    false    2416            �4           2606    710871 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_empty.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
       test_ladm_col_empty         postgres    false    2417            �4           2606    710881 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col_empty.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col_empty.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
       test_ladm_col_empty         postgres    false    2418            �4           2606    710891 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_col_empty.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
       test_ladm_col_empty         postgres    false    2419            $6           2606    711948 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_empty.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_empty.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
       test_ladm_col_empty         postgres    false    2525            �4           2606    710901 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
       test_ladm_col_empty         postgres    false    2420            �4           2606    711036 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_empty.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_empty.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
       test_ladm_col_empty         postgres    false    2434            �4           2606    710910 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col_empty.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col_empty.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
       test_ladm_col_empty         postgres    false    2421            �4           2606    710917 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
       test_ladm_col_empty         postgres    false    2422            �4           2606    710927    gc_direccion gc_direccion_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
       test_ladm_col_empty         postgres    false    2423            �4           2606    710935 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
       test_ladm_col_empty         postgres    false    2424            �4           2606    710945    gc_manzana gc_manzana_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_empty.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_empty.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
       test_ladm_col_empty         postgres    false    2425            �4           2606    710955    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
       test_ladm_col_empty         postgres    false    2426            �4           2606    711028 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_empty.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_empty.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
       test_ladm_col_empty         postgres    false    2433            �4           2606    710965 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_empty.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_empty.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
       test_ladm_col_empty         postgres    false    2427            �4           2606    710975 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_empty.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_empty.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
       test_ladm_col_empty         postgres    false    2428            �4           2606    710985 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
       test_ladm_col_empty         postgres    false    2429            �5           2606    711723 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_col_empty.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
       test_ladm_col_empty         postgres    false    2500            �4           2606    710995    gc_terreno gc_terreno_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_empty.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_empty.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
       test_ladm_col_empty         postgres    false    2430            �4           2606    711006 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
       test_ladm_col_empty         postgres    false    2431            �5           2606    711597 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_empty.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
       test_ladm_col_empty         postgres    false    2486            �4           2606    711018    gc_vereda gc_vereda_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col_empty.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col_empty.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
       test_ladm_col_empty         postgres    false    2432            4           2606    710513 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_empty.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_empty.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
       test_ladm_col_empty         postgres    false    2380            4           2606    710530 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_empty.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_empty.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
       test_ladm_col_empty         postgres    false    2382             4           2606    710505 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
       test_ladm_col_empty         postgres    false    2379            4           2606    710522 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
       test_ladm_col_empty         postgres    false    2381            14           2606    710605    imagen imagen_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY test_ladm_col_empty.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (t_id);
 I   ALTER TABLE ONLY test_ladm_col_empty.imagen DROP CONSTRAINT imagen_pkey;
       test_ladm_col_empty         postgres    false    2389            �5           2606    711642 2   ini_emparejamientotipo ini_emparejamientotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_empty.ini_emparejamientotipo
    ADD CONSTRAINT ini_emparejamientotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_empty.ini_emparejamientotipo DROP CONSTRAINT ini_emparejamientotipo_pkey;
       test_ladm_col_empty         postgres    false    2491            5           2606    711113 (   ini_predioinsumos ini_predioinsumos_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_empty.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_empty.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_pkey;
       test_ladm_col_empty         postgres    false    2442             6           2606    711930 "   lc_acuerdotipo lc_acuerdotipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_empty.lc_acuerdotipo
    ADD CONSTRAINT lc_acuerdotipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_empty.lc_acuerdotipo DROP CONSTRAINT lc_acuerdotipo_pkey;
       test_ladm_col_empty         postgres    false    2523            5           2606    711126 6   lc_agrupacioninteresados lc_agrupacioninteresados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col_empty.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_pkey;
       test_ladm_col_empty         postgres    false    2443            "6           2606    711939    lc_anexotipo lc_anexotipo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.lc_anexotipo
    ADD CONSTRAINT lc_anexotipo_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.lc_anexotipo DROP CONSTRAINT lc_anexotipo_pkey;
       test_ladm_col_empty         postgres    false    2524            �5           2606    711367 <   lc_calificacionconvencional lc_calificacionconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencional_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencional_pkey;
       test_ladm_col_empty         postgres    false    2463            �5           2606    711376 @   lc_calificacionnoconvencional lc_calificacionnoconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvencional_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvencional_pkey;
       test_ladm_col_empty         postgres    false    2464            66           2606    712029 &   lc_calificartipo lc_calificartipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_empty.lc_calificartipo
    ADD CONSTRAINT lc_calificartipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_empty.lc_calificartipo DROP CONSTRAINT lc_calificartipo_pkey;
       test_ladm_col_empty         postgres    false    2534            �5           2606    711633 0   lc_categoriasuelotipo lc_categoriasuelotipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.lc_categoriasuelotipo
    ADD CONSTRAINT lc_categoriasuelotipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.lc_categoriasuelotipo DROP CONSTRAINT lc_categoriasuelotipo_pkey;
       test_ladm_col_empty         postgres    false    2490            >6           2606    712065 6   lc_clasecalificaciontipo lc_clasecalificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_clasecalificaciontipo
    ADD CONSTRAINT lc_clasecalificaciontipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col_empty.lc_clasecalificaciontipo DROP CONSTRAINT lc_clasecalificaciontipo_pkey;
       test_ladm_col_empty         postgres    false    2538            �5           2606    711714 (   lc_clasesuelotipo lc_clasesuelotipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_empty.lc_clasesuelotipo
    ADD CONSTRAINT lc_clasesuelotipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_empty.lc_clasesuelotipo DROP CONSTRAINT lc_clasesuelotipo_pkey;
       test_ladm_col_empty         postgres    false    2499            @6           2606    712074 2   lc_condicionprediotipo lc_condicionprediotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_empty.lc_condicionprediotipo
    ADD CONSTRAINT lc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_empty.lc_condicionprediotipo DROP CONSTRAINT lc_condicionprediotipo_pkey;
       test_ladm_col_empty         postgres    false    2539            5           2606    711137 $   lc_construccion lc_construccion_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.lc_construccion
    ADD CONSTRAINT lc_construccion_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.lc_construccion DROP CONSTRAINT lc_construccion_pkey;
       test_ladm_col_empty         postgres    false    2444            
6           2606    711831 8   lc_construccionplantatipo lc_construccionplantatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_construccionplantatipo
    ADD CONSTRAINT lc_construccionplantatipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_empty.lc_construccionplantatipo DROP CONSTRAINT lc_construccionplantatipo_pkey;
       test_ladm_col_empty         postgres    false    2512            :6           2606    712047 ,   lc_construcciontipo lc_construcciontipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col_empty.lc_construcciontipo
    ADD CONSTRAINT lc_construcciontipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col_empty.lc_construcciontipo DROP CONSTRAINT lc_construcciontipo_pkey;
       test_ladm_col_empty         postgres    false    2536            "5           2606    711152 (   lc_contactovisita lc_contactovisita_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_empty.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_empty.lc_contactovisita DROP CONSTRAINT lc_contactovisita_pkey;
       test_ladm_col_empty         postgres    false    2445            �5           2606    711388 X   lc_datosadicionaleslevantamientocatastral lc_datosadicionaleslevantamientocatastral_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey;
       test_ladm_col_empty         postgres    false    2465            '5           2606    711162 .   lc_datosphcondominio lc_datosphcondominio_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col_empty.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col_empty.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_pkey;
       test_ladm_col_empty         postgres    false    2446            +5           2606    711173    lc_derecho lc_derecho_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_empty.lc_derecho
    ADD CONSTRAINT lc_derecho_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_empty.lc_derecho DROP CONSTRAINT lc_derecho_pkey;
       test_ladm_col_empty         postgres    false    2447            �5           2606    711687 "   lc_derechotipo lc_derechotipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_empty.lc_derechotipo
    ADD CONSTRAINT lc_derechotipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_empty.lc_derechotipo DROP CONSTRAINT lc_derechotipo_pkey;
       test_ladm_col_empty         postgres    false    2496            �5           2606    711606 <   lc_destinacioneconomicatipo lc_destinacioneconomicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_destinacioneconomicatipo
    ADD CONSTRAINT lc_destinacioneconomicatipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_empty.lc_destinacioneconomicatipo DROP CONSTRAINT lc_destinacioneconomicatipo_pkey;
       test_ladm_col_empty         postgres    false    2487            06           2606    712002 :   lc_dominioconstrucciontipo lc_dominioconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_dominioconstrucciontipo
    ADD CONSTRAINT lc_dominioconstrucciontipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_empty.lc_dominioconstrucciontipo DROP CONSTRAINT lc_dominioconstrucciontipo_pkey;
       test_ladm_col_empty         postgres    false    2531            J6           2606    712119 8   lc_estadoconservaciontipo lc_estadoconservaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_estadoconservaciontipo
    ADD CONSTRAINT lc_estadoconservaciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_empty.lc_estadoconservaciontipo DROP CONSTRAINT lc_estadoconservaciontipo_pkey;
       test_ladm_col_empty         postgres    false    2544            05           2606    711183 4   lc_estructuranovedadfmi lc_estructuranovedadfmi_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_pkey;
       test_ladm_col_empty         postgres    false    2448            25           2606    711190 H   lc_estructuranovedadnumeropredial lc_estructuranovedadnumeropredial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranovedadnumeropredial_pkey;
       test_ladm_col_empty         postgres    false    2449            �5           2606    711534 b   lc_estructuranovedadnumeropredial_tipo_novedad lc_estructuranovedadnumeropredial_tipo_novedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadnumeropredial_tipo_novedad
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadnumeropredial_tipo_novedad DROP CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey;
       test_ladm_col_empty         postgres    false    2479            �5           2606    711660 8   lc_fotoidentificaciontipo lc_fotoidentificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_fotoidentificaciontipo
    ADD CONSTRAINT lc_fotoidentificaciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_empty.lc_fotoidentificaciontipo DROP CONSTRAINT lc_fotoidentificaciontipo_pkey;
       test_ladm_col_empty         postgres    false    2493            75           2606    711202 4   lc_fuenteadministrativa lc_fuenteadministrativa_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_pkey;
       test_ladm_col_empty         postgres    false    2450            *6           2606    711975 <   lc_fuenteadministrativatipo lc_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteadministrativatipo
    ADD CONSTRAINT lc_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteadministrativatipo DROP CONSTRAINT lc_fuenteadministrativatipo_pkey;
       test_ladm_col_empty         postgres    false    2528            <5           2606    711215 (   lc_fuenteespacial lc_fuenteespacial_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_pkey;
       test_ladm_col_empty         postgres    false    2451            C5           2606    711225 .   lc_grupocalificacion lc_grupocalificacion_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col_empty.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col_empty.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_pkey;
       test_ladm_col_empty         postgres    false    2452            �5           2606    711678 *   lc_grupoetnicotipo lc_grupoetnicotipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_empty.lc_grupoetnicotipo
    ADD CONSTRAINT lc_grupoetnicotipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_empty.lc_grupoetnicotipo DROP CONSTRAINT lc_grupoetnicotipo_pkey;
       test_ladm_col_empty         postgres    false    2495            F5           2606    711238     lc_interesado lc_interesado_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_empty.lc_interesado
    ADD CONSTRAINT lc_interesado_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_empty.lc_interesado DROP CONSTRAINT lc_interesado_pkey;
       test_ladm_col_empty         postgres    false    2453            L5           2606    711252 0   lc_interesadocontacto lc_interesadocontacto_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_pkey;
       test_ladm_col_empty         postgres    false    2454            6           2606    711876 :   lc_interesadodocumentotipo lc_interesadodocumentotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_interesadodocumentotipo
    ADD CONSTRAINT lc_interesadodocumentotipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_empty.lc_interesadodocumentotipo DROP CONSTRAINT lc_interesadodocumentotipo_pkey;
       test_ladm_col_empty         postgres    false    2517            �5           2606    711759 (   lc_interesadotipo lc_interesadotipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_empty.lc_interesadotipo
    ADD CONSTRAINT lc_interesadotipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_empty.lc_interesadotipo DROP CONSTRAINT lc_interesadotipo_pkey;
       test_ladm_col_empty         postgres    false    2504            O5           2606    711263    lc_lindero lc_lindero_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_empty.lc_lindero
    ADD CONSTRAINT lc_lindero_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_empty.lc_lindero DROP CONSTRAINT lc_lindero_pkey;
       test_ladm_col_empty         postgres    false    2455            R5           2606    711271 0   lc_objetoconstruccion lc_objetoconstruccion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_pkey;
       test_ladm_col_empty         postgres    false    2456            H6           2606    712110 8   lc_objetoconstrucciontipo lc_objetoconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_objetoconstrucciontipo
    ADD CONSTRAINT lc_objetoconstrucciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_empty.lc_objetoconstrucciontipo DROP CONSTRAINT lc_objetoconstrucciontipo_pkey;
       test_ladm_col_empty         postgres    false    2543            U5           2606    711280 @   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmobiliario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmobiliario_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_col_empty.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmobiliario_pkey;
       test_ladm_col_empty         postgres    false    2457            �5           2606    711588     lc_ofertatipo lc_ofertatipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_empty.lc_ofertatipo
    ADD CONSTRAINT lc_ofertatipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_empty.lc_ofertatipo DROP CONSTRAINT lc_ofertatipo_pkey;
       test_ladm_col_empty         postgres    false    2485            �5           2606    711430 0   lc_predio_copropiedad lc_predio_copropiedad_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_pkey;
       test_ladm_col_empty         postgres    false    2468            �5           2606    711438 <   lc_predio_ini_predioinsumos lc_predio_ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsumos_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsumos_pkey;
       test_ladm_col_empty         postgres    false    2469            Z5           2606    711292    lc_predio lc_predio_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col_empty.lc_predio
    ADD CONSTRAINT lc_predio_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col_empty.lc_predio DROP CONSTRAINT lc_predio_pkey;
       test_ladm_col_empty         postgres    false    2458            6           2606    711885     lc_prediotipo lc_prediotipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_empty.lc_prediotipo
    ADD CONSTRAINT lc_prediotipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_empty.lc_prediotipo DROP CONSTRAINT lc_prediotipo_pkey;
       test_ladm_col_empty         postgres    false    2518            �5           2606    711705 R   lc_procedimientocatastralregistraltipo lc_procedimientocatastralregistraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_procedimientocatastralregistraltipo
    ADD CONSTRAINT lc_procedimientocatastralregistraltipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_procedimientocatastralregistraltipo DROP CONSTRAINT lc_procedimientocatastralregistraltipo_pkey;
       test_ladm_col_empty         postgres    false    2498            _5           2606    711304 $   lc_puntocontrol lc_puntocontrol_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_pkey;
       test_ladm_col_empty         postgres    false    2459            86           2606    712038 ,   lc_puntocontroltipo lc_puntocontroltipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontroltipo
    ADD CONSTRAINT lc_puntocontroltipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontroltipo DROP CONSTRAINT lc_puntocontroltipo_pkey;
       test_ladm_col_empty         postgres    false    2535            �5           2606    711405 0   lc_puntolevantamiento lc_puntolevantamiento_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_pkey;
       test_ladm_col_empty         postgres    false    2466            6           2606    711921 $   lc_puntolevtipo lc_puntolevtipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevtipo
    ADD CONSTRAINT lc_puntolevtipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevtipo DROP CONSTRAINT lc_puntolevtipo_pkey;
       test_ladm_col_empty         postgres    false    2522            l5           2606    711323 $   lc_puntolindero lc_puntolindero_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero DROP CONSTRAINT lc_puntolindero_pkey;
       test_ladm_col_empty         postgres    false    2460            6           2606    711822    lc_puntotipo lc_puntotipo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_empty.lc_puntotipo
    ADD CONSTRAINT lc_puntotipo_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_empty.lc_puntotipo DROP CONSTRAINT lc_puntotipo_pkey;
       test_ladm_col_empty         postgres    false    2511            �5           2606    711732 0   lc_relacionprediotipo lc_relacionprediotipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.lc_relacionprediotipo
    ADD CONSTRAINT lc_relacionprediotipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.lc_relacionprediotipo DROP CONSTRAINT lc_relacionprediotipo_pkey;
       test_ladm_col_empty         postgres    false    2501            v5           2606    711343 "   lc_restriccion lc_restriccion_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_empty.lc_restriccion
    ADD CONSTRAINT lc_restriccion_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_empty.lc_restriccion DROP CONSTRAINT lc_restriccion_pkey;
       test_ladm_col_empty         postgres    false    2461            6           2606    711903 *   lc_restricciontipo lc_restricciontipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_empty.lc_restricciontipo
    ADD CONSTRAINT lc_restricciontipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_empty.lc_restricciontipo DROP CONSTRAINT lc_restricciontipo_pkey;
       test_ladm_col_empty         postgres    false    2520            �5           2606    711768 2   lc_resultadovisitatipo lc_resultadovisitatipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_empty.lc_resultadovisitatipo
    ADD CONSTRAINT lc_resultadovisitatipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_empty.lc_resultadovisitatipo DROP CONSTRAINT lc_resultadovisitatipo_pkey;
       test_ladm_col_empty         postgres    false    2505            �5           2606    711450 2   lc_servidumbretransito lc_servidumbretransito_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_empty.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_empty.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_pkey;
       test_ladm_col_empty         postgres    false    2470            6           2606    711813    lc_sexotipo lc_sexotipo_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_empty.lc_sexotipo
    ADD CONSTRAINT lc_sexotipo_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_empty.lc_sexotipo DROP CONSTRAINT lc_sexotipo_pkey;
       test_ladm_col_empty         postgres    false    2510            |5           2606    711357    lc_terreno lc_terreno_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_empty.lc_terreno
    ADD CONSTRAINT lc_terreno_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_empty.lc_terreno DROP CONSTRAINT lc_terreno_pkey;
       test_ladm_col_empty         postgres    false    2462            �5           2606    711422 6   lc_tipologiaconstruccion lc_tipologiaconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col_empty.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_pkey;
       test_ladm_col_empty         postgres    false    2467            .6           2606    711993 &   lc_tipologiatipo lc_tipologiatipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_empty.lc_tipologiatipo
    ADD CONSTRAINT lc_tipologiatipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_empty.lc_tipologiatipo DROP CONSTRAINT lc_tipologiatipo_pkey;
       test_ladm_col_empty         postgres    false    2530            �5           2606    711463 0   lc_unidadconstruccion lc_unidadconstruccion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_pkey;
       test_ladm_col_empty         postgres    false    2471            6           2606    711849 8   lc_unidadconstrucciontipo lc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstrucciontipo
    ADD CONSTRAINT lc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstrucciontipo DROP CONSTRAINT lc_unidadconstrucciontipo_pkey;
       test_ladm_col_empty         postgres    false    2514            &6           2606    711957 $   lc_usouconstipo lc_usouconstipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.lc_usouconstipo
    ADD CONSTRAINT lc_usouconstipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.lc_usouconstipo DROP CONSTRAINT lc_usouconstipo_pkey;
       test_ladm_col_empty         postgres    false    2526            �5           2606    711615    lc_viatipo lc_viatipo_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_empty.lc_viatipo
    ADD CONSTRAINT lc_viatipo_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_empty.lc_viatipo DROP CONSTRAINT lc_viatipo_pkey;
       test_ladm_col_empty         postgres    false    2488            ,6           2606    711984 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_empty.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_empty.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
       test_ladm_col_empty         postgres    false    2529            46           2606    712020 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_empty.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
       test_ladm_col_empty         postgres    false    2533            �4           2606    711044    snr_derecho snr_derecho_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_empty.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_empty.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
       test_ladm_col_empty         postgres    false    2435            D6           2606    712092 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col_empty.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
       test_ladm_col_empty         postgres    false    2541            �4           2606    711053 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_col_empty.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
       test_ladm_col_empty         postgres    false    2436             5           2606    711063 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col_empty.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
       test_ladm_col_empty         postgres    false    2437            5           2606    711073 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_empty.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_empty.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
       test_ladm_col_empty         postgres    false    2438            �5           2606    711552 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_empty.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_empty.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
       test_ladm_col_empty         postgres    false    2481            �5           2606    711561 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_empty.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_empty.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
       test_ladm_col_empty         postgres    false    2482            5           2606    711094 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_empty.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_empty.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
       test_ladm_col_empty         postgres    false    2440            5           2606    711102 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col_empty.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col_empty.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
       test_ladm_col_empty         postgres    false    2441            5           2606    711083    snr_titular snr_titular_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_empty.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_empty.snr_titular DROP CONSTRAINT snr_titular_pkey;
       test_ladm_col_empty         postgres    false    2439            O6           2606    712135 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (colowner, sqlname);
 _   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
       test_ladm_col_empty         postgres    false    2546    2546            �5           2606    711480 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
       test_ladm_col_empty         postgres    false    2472            L6           2606    712127 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 a   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
       test_ladm_col_empty         postgres    false    2545            �5           2606    711486 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
       test_ladm_col_empty         postgres    false    2473            �5           2606    711494 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 e   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
       test_ladm_col_empty         postgres    false    2474            �5           2606    711516 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (iliversion, modelname);
 Y   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
       test_ladm_col_empty         postgres    false    2477    2477            �5           2606    711502 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 _   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
       test_ladm_col_empty         postgres    false    2475            	4           1259    710537 1   cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx    INDEX     �   CREATE INDEX cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx ON test_ladm_col_empty.cc_metodooperacion USING btree (col_transformacion_transformacion);
 R   DROP INDEX test_ladm_col_empty.cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx;
       test_ladm_col_empty         postgres    false    2383            4           1259    710548 &   col_areavalor_lc_construccion_area_idx    INDEX     }   CREATE INDEX col_areavalor_lc_construccion_area_idx ON test_ladm_col_empty.col_areavalor USING btree (lc_construccion_area);
 G   DROP INDEX test_ladm_col_empty.col_areavalor_lc_construccion_area_idx;
       test_ladm_col_empty         postgres    false    2384            4           1259    710550 ,   col_areavalor_lc_servidumbretransito_rea_idx    INDEX     �   CREATE INDEX col_areavalor_lc_servidumbretransito_rea_idx ON test_ladm_col_empty.col_areavalor USING btree (lc_servidumbretransito_area);
 M   DROP INDEX test_ladm_col_empty.col_areavalor_lc_servidumbretransito_rea_idx;
       test_ladm_col_empty         postgres    false    2384            4           1259    710549 !   col_areavalor_lc_terreno_area_idx    INDEX     s   CREATE INDEX col_areavalor_lc_terreno_area_idx ON test_ladm_col_empty.col_areavalor USING btree (lc_terreno_area);
 B   DROP INDEX test_ladm_col_empty.col_areavalor_lc_terreno_area_idx;
       test_ladm_col_empty         postgres    false    2384            4           1259    710551 ,   col_areavalor_lc_unidadconstruccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_unidadconstruccion_area_idx ON test_ladm_col_empty.col_areavalor USING btree (lc_unidadconstruccion_area);
 M   DROP INDEX test_ladm_col_empty.col_areavalor_lc_unidadconstruccion_area_idx;
       test_ladm_col_empty         postgres    false    2384            4           1259    710547    col_areavalor_tipo_idx    INDEX     ]   CREATE INDEX col_areavalor_tipo_idx ON test_ladm_col_empty.col_areavalor USING btree (tipo);
 7   DROP INDEX test_ladm_col_empty.col_areavalor_tipo_idx;
       test_ladm_col_empty         postgres    false    2384            �4           1259    710814 7   col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx ON test_ladm_col_empty.col_baunitcomointeresado USING btree (interesado_lc_agrupacioninteresados);
 X   DROP INDEX test_ladm_col_empty.col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col_empty         postgres    false    2411            �4           1259    710813 5   col_baunitcomointeresado_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_interesado_idx ON test_ladm_col_empty.col_baunitcomointeresado USING btree (interesado_lc_interesado);
 V   DROP INDEX test_ladm_col_empty.col_baunitcomointeresado_interesado_lc_interesado_idx;
       test_ladm_col_empty         postgres    false    2411            �4           1259    710815 #   col_baunitcomointeresado_unidad_idx    INDEX     w   CREATE INDEX col_baunitcomointeresado_unidad_idx ON test_ladm_col_empty.col_baunitcomointeresado USING btree (unidad);
 D   DROP INDEX test_ladm_col_empty.col_baunitcomointeresado_unidad_idx;
       test_ladm_col_empty         postgres    false    2411            k4           1259    710722 $   col_baunitfuente_fuente_espacial_idx    INDEX     y   CREATE INDEX col_baunitfuente_fuente_espacial_idx ON test_ladm_col_empty.col_baunitfuente USING btree (fuente_espacial);
 E   DROP INDEX test_ladm_col_empty.col_baunitfuente_fuente_espacial_idx;
       test_ladm_col_empty         postgres    false    2401            n4           1259    710723    col_baunitfuente_unidad_idx    INDEX     g   CREATE INDEX col_baunitfuente_unidad_idx ON test_ladm_col_empty.col_baunitfuente USING btree (unidad);
 <   DROP INDEX test_ladm_col_empty.col_baunitfuente_unidad_idx;
       test_ladm_col_empty         postgres    false    2401            r4           1259    710737    col_cclfuente_ccl_idx    INDEX     [   CREATE INDEX col_cclfuente_ccl_idx ON test_ladm_col_empty.col_cclfuente USING btree (ccl);
 6   DROP INDEX test_ladm_col_empty.col_cclfuente_ccl_idx;
       test_ladm_col_empty         postgres    false    2403            s4           1259    710738 !   col_cclfuente_fuente_espacial_idx    INDEX     s   CREATE INDEX col_cclfuente_fuente_espacial_idx ON test_ladm_col_empty.col_cclfuente USING btree (fuente_espacial);
 B   DROP INDEX test_ladm_col_empty.col_cclfuente_fuente_espacial_idx;
       test_ladm_col_empty         postgres    false    2403            �4           1259    710777     col_clfuente_fuente_espacial_idx    INDEX     q   CREATE INDEX col_clfuente_fuente_espacial_idx ON test_ladm_col_empty.col_clfuente USING btree (fuente_espacial);
 A   DROP INDEX test_ladm_col_empty.col_clfuente_fuente_espacial_idx;
       test_ladm_col_empty         postgres    false    2407            }4           1259    710756    col_masccl_ccl_mas_idx    INDEX     ]   CREATE INDEX col_masccl_ccl_mas_idx ON test_ladm_col_empty.col_masccl USING btree (ccl_mas);
 7   DROP INDEX test_ladm_col_empty.col_masccl_ccl_mas_idx;
       test_ladm_col_empty         postgres    false    2405            �4           1259    710757 %   col_masccl_ue_mas_lc_construccion_idx    INDEX     {   CREATE INDEX col_masccl_ue_mas_lc_construccion_idx ON test_ladm_col_empty.col_masccl USING btree (ue_mas_lc_construccion);
 F   DROP INDEX test_ladm_col_empty.col_masccl_ue_mas_lc_construccion_idx;
       test_ladm_col_empty         postgres    false    2405            �4           1259    710759 )   col_masccl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_col_empty.col_masccl USING btree (ue_mas_lc_servidumbretransito);
 J   DROP INDEX test_ladm_col_empty.col_masccl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_col_empty         postgres    false    2405            �4           1259    710758     col_masccl_ue_mas_lc_terreno_idx    INDEX     q   CREATE INDEX col_masccl_ue_mas_lc_terreno_idx ON test_ladm_col_empty.col_masccl USING btree (ue_mas_lc_terreno);
 A   DROP INDEX test_ladm_col_empty.col_masccl_ue_mas_lc_terreno_idx;
       test_ladm_col_empty         postgres    false    2405            �4           1259    710760 )   col_masccl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_col_empty.col_masccl USING btree (ue_mas_lc_unidadconstruccion);
 J   DROP INDEX test_ladm_col_empty.col_masccl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_col_empty         postgres    false    2405            �4           1259    710794 $   col_mascl_ue_mas_lc_construccion_idx    INDEX     y   CREATE INDEX col_mascl_ue_mas_lc_construccion_idx ON test_ladm_col_empty.col_mascl USING btree (ue_mas_lc_construccion);
 E   DROP INDEX test_ladm_col_empty.col_mascl_ue_mas_lc_construccion_idx;
       test_ladm_col_empty         postgres    false    2409            �4           1259    710796 (   col_mascl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_col_empty.col_mascl USING btree (ue_mas_lc_servidumbretransito);
 I   DROP INDEX test_ladm_col_empty.col_mascl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_col_empty         postgres    false    2409            �4           1259    710795    col_mascl_ue_mas_lc_terreno_idx    INDEX     o   CREATE INDEX col_mascl_ue_mas_lc_terreno_idx ON test_ladm_col_empty.col_mascl USING btree (ue_mas_lc_terreno);
 @   DROP INDEX test_ladm_col_empty.col_mascl_ue_mas_lc_terreno_idx;
       test_ladm_col_empty         postgres    false    2409            �4           1259    710797 (   col_mascl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_col_empty.col_mascl USING btree (ue_mas_lc_unidadconstruccion);
 I   DROP INDEX test_ladm_col_empty.col_mascl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_col_empty         postgres    false    2409            v4           1259    710745    col_menosccl_ccl_menos_idx    INDEX     e   CREATE INDEX col_menosccl_ccl_menos_idx ON test_ladm_col_empty.col_menosccl USING btree (ccl_menos);
 ;   DROP INDEX test_ladm_col_empty.col_menosccl_ccl_menos_idx;
       test_ladm_col_empty         postgres    false    2404            y4           1259    710746 )   col_menosccl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_construccion_idx ON test_ladm_col_empty.col_menosccl USING btree (ue_menos_lc_construccion);
 J   DROP INDEX test_ladm_col_empty.col_menosccl_ue_menos_lc_construccion_idx;
       test_ladm_col_empty         postgres    false    2404            z4           1259    710748 +   col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_col_empty.col_menosccl USING btree (ue_menos_lc_servidumbretransito);
 L   DROP INDEX test_ladm_col_empty.col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_col_empty         postgres    false    2404            {4           1259    710747 $   col_menosccl_ue_menos_lc_terreno_idx    INDEX     y   CREATE INDEX col_menosccl_ue_menos_lc_terreno_idx ON test_ladm_col_empty.col_menosccl USING btree (ue_menos_lc_terreno);
 E   DROP INDEX test_ladm_col_empty.col_menosccl_ue_menos_lc_terreno_idx;
       test_ladm_col_empty         postgres    false    2404            |4           1259    710749 +   col_menosccl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_col_empty.col_menosccl USING btree (ue_menos_lc_unidadconstruccion);
 L   DROP INDEX test_ladm_col_empty.col_menosccl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_col_empty         postgres    false    2404            �4           1259    710784 (   col_menoscl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_construccion_idx ON test_ladm_col_empty.col_menoscl USING btree (ue_menos_lc_construccion);
 I   DROP INDEX test_ladm_col_empty.col_menoscl_ue_menos_lc_construccion_idx;
       test_ladm_col_empty         postgres    false    2408            �4           1259    710786 *   col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_col_empty.col_menoscl USING btree (ue_menos_lc_servidumbretransito);
 K   DROP INDEX test_ladm_col_empty.col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_col_empty         postgres    false    2408            �4           1259    710785 #   col_menoscl_ue_menos_lc_terreno_idx    INDEX     w   CREATE INDEX col_menoscl_ue_menos_lc_terreno_idx ON test_ladm_col_empty.col_menoscl USING btree (ue_menos_lc_terreno);
 D   DROP INDEX test_ladm_col_empty.col_menoscl_ue_menos_lc_terreno_idx;
       test_ladm_col_empty         postgres    false    2408            �4           1259    710787 *   col_menoscl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_col_empty.col_menoscl USING btree (ue_menos_lc_unidadconstruccion);
 K   DROP INDEX test_ladm_col_empty.col_menoscl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_col_empty         postgres    false    2408            �4           1259    710842    col_miembros_agrupacion_idx    INDEX     g   CREATE INDEX col_miembros_agrupacion_idx ON test_ladm_col_empty.col_miembros USING btree (agrupacion);
 <   DROP INDEX test_ladm_col_empty.col_miembros_agrupacion_idx;
       test_ladm_col_empty         postgres    false    2414            �4           1259    710841 +   col_miembros_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_grpcnntrsdos_idx ON test_ladm_col_empty.col_miembros USING btree (interesado_lc_agrupacioninteresados);
 L   DROP INDEX test_ladm_col_empty.col_miembros_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col_empty         postgres    false    2414            �4           1259    710840 )   col_miembros_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_interesado_idx ON test_ladm_col_empty.col_miembros USING btree (interesado_lc_interesado);
 J   DROP INDEX test_ladm_col_empty.col_miembros_interesado_lc_interesado_idx;
       test_ladm_col_empty         postgres    false    2414            �4           1259    710770    col_puntoccl_ccl_idx    INDEX     Y   CREATE INDEX col_puntoccl_ccl_idx ON test_ladm_col_empty.col_puntoccl USING btree (ccl);
 5   DROP INDEX test_ladm_col_empty.col_puntoccl_ccl_idx;
       test_ladm_col_empty         postgres    false    2406            �4           1259    710768 &   col_puntoccl_punto_lc_puntocontrol_idx    INDEX     }   CREATE INDEX col_puntoccl_punto_lc_puntocontrol_idx ON test_ladm_col_empty.col_puntoccl USING btree (punto_lc_puntocontrol);
 G   DROP INDEX test_ladm_col_empty.col_puntoccl_punto_lc_puntocontrol_idx;
       test_ladm_col_empty         postgres    false    2406            �4           1259    710767 +   col_puntoccl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolevantaminto_idx ON test_ladm_col_empty.col_puntoccl USING btree (punto_lc_puntolevantamiento);
 L   DROP INDEX test_ladm_col_empty.col_puntoccl_punto_lc_puntolevantaminto_idx;
       test_ladm_col_empty         postgres    false    2406            �4           1259    710769 &   col_puntoccl_punto_lc_puntolindero_idx    INDEX     }   CREATE INDEX col_puntoccl_punto_lc_puntolindero_idx ON test_ladm_col_empty.col_puntoccl USING btree (punto_lc_puntolindero);
 G   DROP INDEX test_ladm_col_empty.col_puntoccl_punto_lc_puntolindero_idx;
       test_ladm_col_empty         postgres    false    2406            �4           1259    710805 %   col_puntocl_punto_lc_puntocontrol_idx    INDEX     {   CREATE INDEX col_puntocl_punto_lc_puntocontrol_idx ON test_ladm_col_empty.col_puntocl USING btree (punto_lc_puntocontrol);
 F   DROP INDEX test_ladm_col_empty.col_puntocl_punto_lc_puntocontrol_idx;
       test_ladm_col_empty         postgres    false    2410            �4           1259    710804 *   col_puntocl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolevantaminto_idx ON test_ladm_col_empty.col_puntocl USING btree (punto_lc_puntolevantamiento);
 K   DROP INDEX test_ladm_col_empty.col_puntocl_punto_lc_puntolevantaminto_idx;
       test_ladm_col_empty         postgres    false    2410            �4           1259    710806 %   col_puntocl_punto_lc_puntolindero_idx    INDEX     {   CREATE INDEX col_puntocl_punto_lc_puntolindero_idx ON test_ladm_col_empty.col_puntocl USING btree (punto_lc_puntolindero);
 F   DROP INDEX test_ladm_col_empty.col_puntocl_punto_lc_puntolindero_idx;
       test_ladm_col_empty         postgres    false    2410            ^4           1259    710701 #   col_puntofuente_fuente_espacial_idx    INDEX     w   CREATE INDEX col_puntofuente_fuente_espacial_idx ON test_ladm_col_empty.col_puntofuente USING btree (fuente_espacial);
 D   DROP INDEX test_ladm_col_empty.col_puntofuente_fuente_espacial_idx;
       test_ladm_col_empty         postgres    false    2399            a4           1259    710703 )   col_puntofuente_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntocontrol_idx ON test_ladm_col_empty.col_puntofuente USING btree (punto_lc_puntocontrol);
 J   DROP INDEX test_ladm_col_empty.col_puntofuente_punto_lc_puntocontrol_idx;
       test_ladm_col_empty         postgres    false    2399            b4           1259    710702 .   col_puntofuente_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolevantaminto_idx ON test_ladm_col_empty.col_puntofuente USING btree (punto_lc_puntolevantamiento);
 O   DROP INDEX test_ladm_col_empty.col_puntofuente_punto_lc_puntolevantaminto_idx;
       test_ladm_col_empty         postgres    false    2399            c4           1259    710704 )   col_puntofuente_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolindero_idx ON test_ladm_col_empty.col_puntofuente USING btree (punto_lc_puntolindero);
 J   DROP INDEX test_ladm_col_empty.col_puntofuente_punto_lc_puntolindero_idx;
       test_ladm_col_empty         postgres    false    2399            W4           1259    710686 ,   col_relacionfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_relacionfuente_fuente_administrativa_idx ON test_ladm_col_empty.col_relacionfuente USING btree (fuente_administrativa);
 M   DROP INDEX test_ladm_col_empty.col_relacionfuente_fuente_administrativa_idx;
       test_ladm_col_empty         postgres    false    2397            q4           1259    710730 .   col_relacionfuenteuespcial_fuente_espacial_idx    INDEX     �   CREATE INDEX col_relacionfuenteuespcial_fuente_espacial_idx ON test_ladm_col_empty.col_relacionfuenteuespacial USING btree (fuente_espacial);
 O   DROP INDEX test_ladm_col_empty.col_relacionfuenteuespcial_fuente_espacial_idx;
       test_ladm_col_empty         postgres    false    2402            �4           1259    710822 /   col_responsablefuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_responsablefuente_fuente_administrativa_idx ON test_ladm_col_empty.col_responsablefuente USING btree (fuente_administrativa);
 P   DROP INDEX test_ladm_col_empty.col_responsablefuente_fuente_administrativa_idx;
       test_ladm_col_empty         postgres    false    2412            �4           1259    710824 4   col_responsablefuente_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_grpcnntrsdos_idx ON test_ladm_col_empty.col_responsablefuente USING btree (interesado_lc_agrupacioninteresados);
 U   DROP INDEX test_ladm_col_empty.col_responsablefuente_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col_empty         postgres    false    2412            �4           1259    710823 2   col_responsablefuente_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_interesado_idx ON test_ladm_col_empty.col_responsablefuente USING btree (interesado_lc_interesado);
 S   DROP INDEX test_ladm_col_empty.col_responsablefuente_interesado_lc_interesado_idx;
       test_ladm_col_empty         postgres    false    2412            K4           1259    710666 '   col_rrrfuente_fuente_administrativa_idx    INDEX        CREATE INDEX col_rrrfuente_fuente_administrativa_idx ON test_ladm_col_empty.col_rrrfuente USING btree (fuente_administrativa);
 H   DROP INDEX test_ladm_col_empty.col_rrrfuente_fuente_administrativa_idx;
       test_ladm_col_empty         postgres    false    2395            N4           1259    710668     col_rrrfuente_rrr_lc_derecho_idx    INDEX     q   CREATE INDEX col_rrrfuente_rrr_lc_derecho_idx ON test_ladm_col_empty.col_rrrfuente USING btree (rrr_lc_derecho);
 A   DROP INDEX test_ladm_col_empty.col_rrrfuente_rrr_lc_derecho_idx;
       test_ladm_col_empty         postgres    false    2395            O4           1259    710667 $   col_rrrfuente_rrr_lc_restriccion_idx    INDEX     y   CREATE INDEX col_rrrfuente_rrr_lc_restriccion_idx ON test_ladm_col_empty.col_rrrfuente USING btree (rrr_lc_restriccion);
 E   DROP INDEX test_ladm_col_empty.col_rrrfuente_rrr_lc_restriccion_idx;
       test_ladm_col_empty         postgres    false    2395            �4           1259    710831 '   col_topografofuente_fuente_espacial_idx    INDEX        CREATE INDEX col_topografofuente_fuente_espacial_idx ON test_ladm_col_empty.col_topografofuente USING btree (fuente_espacial);
 H   DROP INDEX test_ladm_col_empty.col_topografofuente_fuente_espacial_idx;
       test_ladm_col_empty         postgres    false    2413            �4           1259    710833 2   col_topografofuente_topografo_lc_agrpcnntrsdos_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_agrpcnntrsdos_idx ON test_ladm_col_empty.col_topografofuente USING btree (topografo_lc_agrupacioninteresados);
 S   DROP INDEX test_ladm_col_empty.col_topografofuente_topografo_lc_agrpcnntrsdos_idx;
       test_ladm_col_empty         postgres    false    2413            �4           1259    710832 /   col_topografofuente_topografo_lc_interesado_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_interesado_idx ON test_ladm_col_empty.col_topografofuente USING btree (topografo_lc_interesado);
 P   DROP INDEX test_ladm_col_empty.col_topografofuente_topografo_lc_interesado_idx;
       test_ladm_col_empty         postgres    false    2413            %4           1259    710591 1   col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx ON test_ladm_col_empty.col_transformacion USING btree (lc_puntocontrol_transformacion_y_resultado);
 R   DROP INDEX test_ladm_col_empty.col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx;
       test_ladm_col_empty         postgres    false    2387            &4           1259    710592 1   col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx ON test_ladm_col_empty.col_transformacion USING btree (lc_puntolindero_transformacion_y_resultado);
 R   DROP INDEX test_ladm_col_empty.col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx;
       test_ladm_col_empty         postgres    false    2387            '4           1259    710593 1   col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx ON test_ladm_col_empty.col_transformacion USING btree (lc_puntolevantamiento_transformacion_y_resultado);
 R   DROP INDEX test_ladm_col_empty.col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx;
       test_ladm_col_empty         postgres    false    2387            (4           1259    710590 0   col_transformacion_localizacion_transformada_idx    INDEX     �   CREATE INDEX col_transformacion_localizacion_transformada_idx ON test_ladm_col_empty.col_transformacion USING gist (localizacion_transformada);
 Q   DROP INDEX test_ladm_col_empty.col_transformacion_localizacion_transformada_idx;
       test_ladm_col_empty         postgres    false    2387            P4           1259    710679    col_uebaunit_baunit_idx    INDEX     _   CREATE INDEX col_uebaunit_baunit_idx ON test_ladm_col_empty.col_uebaunit USING btree (baunit);
 8   DROP INDEX test_ladm_col_empty.col_uebaunit_baunit_idx;
       test_ladm_col_empty         postgres    false    2396            S4           1259    710675 #   col_uebaunit_ue_lc_construccion_idx    INDEX     w   CREATE INDEX col_uebaunit_ue_lc_construccion_idx ON test_ladm_col_empty.col_uebaunit USING btree (ue_lc_construccion);
 D   DROP INDEX test_ladm_col_empty.col_uebaunit_ue_lc_construccion_idx;
       test_ladm_col_empty         postgres    false    2396            T4           1259    710677 *   col_uebaunit_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_servidumbretransito_idx ON test_ladm_col_empty.col_uebaunit USING btree (ue_lc_servidumbretransito);
 K   DROP INDEX test_ladm_col_empty.col_uebaunit_ue_lc_servidumbretransito_idx;
       test_ladm_col_empty         postgres    false    2396            U4           1259    710676    col_uebaunit_ue_lc_terreno_idx    INDEX     m   CREATE INDEX col_uebaunit_ue_lc_terreno_idx ON test_ladm_col_empty.col_uebaunit USING btree (ue_lc_terreno);
 ?   DROP INDEX test_ladm_col_empty.col_uebaunit_ue_lc_terreno_idx;
       test_ladm_col_empty         postgres    false    2396            V4           1259    710678 )   col_uebaunit_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_unidadconstruccion_idx ON test_ladm_col_empty.col_uebaunit USING btree (ue_lc_unidadconstruccion);
 J   DROP INDEX test_ladm_col_empty.col_uebaunit_ue_lc_unidadconstruccion_idx;
       test_ladm_col_empty         postgres    false    2396            d4           1259    710715     col_uefuente_fuente_espacial_idx    INDEX     q   CREATE INDEX col_uefuente_fuente_espacial_idx ON test_ladm_col_empty.col_uefuente USING btree (fuente_espacial);
 A   DROP INDEX test_ladm_col_empty.col_uefuente_fuente_espacial_idx;
       test_ladm_col_empty         postgres    false    2400            g4           1259    710711 #   col_uefuente_ue_lc_construccion_idx    INDEX     w   CREATE INDEX col_uefuente_ue_lc_construccion_idx ON test_ladm_col_empty.col_uefuente USING btree (ue_lc_construccion);
 D   DROP INDEX test_ladm_col_empty.col_uefuente_ue_lc_construccion_idx;
       test_ladm_col_empty         postgres    false    2400            h4           1259    710713 *   col_uefuente_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_servidumbretransito_idx ON test_ladm_col_empty.col_uefuente USING btree (ue_lc_servidumbretransito);
 K   DROP INDEX test_ladm_col_empty.col_uefuente_ue_lc_servidumbretransito_idx;
       test_ladm_col_empty         postgres    false    2400            i4           1259    710712    col_uefuente_ue_lc_terreno_idx    INDEX     m   CREATE INDEX col_uefuente_ue_lc_terreno_idx ON test_ladm_col_empty.col_uefuente USING btree (ue_lc_terreno);
 ?   DROP INDEX test_ladm_col_empty.col_uefuente_ue_lc_terreno_idx;
       test_ladm_col_empty         postgres    false    2400            j4           1259    710714 )   col_uefuente_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_unidadconstruccion_idx ON test_ladm_col_empty.col_uefuente USING btree (ue_lc_unidadconstruccion);
 J   DROP INDEX test_ladm_col_empty.col_uefuente_ue_lc_unidadconstruccion_idx;
       test_ladm_col_empty         postgres    false    2400            E4           1259    710656 '   col_ueuegrupo_parte_lc_construccion_idx    INDEX        CREATE INDEX col_ueuegrupo_parte_lc_construccion_idx ON test_ladm_col_empty.col_ueuegrupo USING btree (parte_lc_construccion);
 H   DROP INDEX test_ladm_col_empty.col_ueuegrupo_parte_lc_construccion_idx;
       test_ladm_col_empty         postgres    false    2394            F4           1259    710658 ,   col_ueuegrupo_parte_lc_servidumbrtrnsito_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_servidumbrtrnsito_idx ON test_ladm_col_empty.col_ueuegrupo USING btree (parte_lc_servidumbretransito);
 M   DROP INDEX test_ladm_col_empty.col_ueuegrupo_parte_lc_servidumbrtrnsito_idx;
       test_ladm_col_empty         postgres    false    2394            G4           1259    710657 "   col_ueuegrupo_parte_lc_terreno_idx    INDEX     u   CREATE INDEX col_ueuegrupo_parte_lc_terreno_idx ON test_ladm_col_empty.col_ueuegrupo USING btree (parte_lc_terreno);
 C   DROP INDEX test_ladm_col_empty.col_ueuegrupo_parte_lc_terreno_idx;
       test_ladm_col_empty         postgres    false    2394            H4           1259    710659 ,   col_ueuegrupo_parte_lc_unidadconstrccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_unidadconstrccion_idx ON test_ladm_col_empty.col_ueuegrupo USING btree (parte_lc_unidadconstruccion);
 M   DROP INDEX test_ladm_col_empty.col_ueuegrupo_parte_lc_unidadconstrccion_idx;
       test_ladm_col_empty         postgres    false    2394            Z4           1259    710693 *   col_unidadfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_unidadfuente_fuente_administrativa_idx ON test_ladm_col_empty.col_unidadfuente USING btree (fuente_administrativa);
 K   DROP INDEX test_ladm_col_empty.col_unidadfuente_fuente_administrativa_idx;
       test_ladm_col_empty         postgres    false    2398            ]4           1259    710694    col_unidadfuente_unidad_idx    INDEX     g   CREATE INDEX col_unidadfuente_unidad_idx ON test_ladm_col_empty.col_unidadfuente USING btree (unidad);
 <   DROP INDEX test_ladm_col_empty.col_unidadfuente_unidad_idx;
       test_ladm_col_empty         postgres    false    2398            >4           1259    710646 ,   col_volumenvalor_lc_construccion_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_construccion_volumen_idx ON test_ladm_col_empty.col_volumenvalor USING btree (lc_construccion_volumen);
 M   DROP INDEX test_ladm_col_empty.col_volumenvalor_lc_construccion_volumen_idx;
       test_ladm_col_empty         postgres    false    2393            ?4           1259    710648 /   col_volumenvalor_lc_servidumbretranst_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_servidumbretranst_vlmen_idx ON test_ladm_col_empty.col_volumenvalor USING btree (lc_servidumbretransito_volumen);
 P   DROP INDEX test_ladm_col_empty.col_volumenvalor_lc_servidumbretranst_vlmen_idx;
       test_ladm_col_empty         postgres    false    2393            @4           1259    710647 '   col_volumenvalor_lc_terreno_volumen_idx    INDEX        CREATE INDEX col_volumenvalor_lc_terreno_volumen_idx ON test_ladm_col_empty.col_volumenvalor USING btree (lc_terreno_volumen);
 H   DROP INDEX test_ladm_col_empty.col_volumenvalor_lc_terreno_volumen_idx;
       test_ladm_col_empty         postgres    false    2393            A4           1259    710649 /   col_volumenvalor_lc_unidadconstruccin_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_unidadconstruccin_vlmen_idx ON test_ladm_col_empty.col_volumenvalor USING btree (lc_unidadconstruccion_volumen);
 P   DROP INDEX test_ladm_col_empty.col_volumenvalor_lc_unidadconstruccin_vlmen_idx;
       test_ladm_col_empty         postgres    false    2393            D4           1259    710645    col_volumenvalor_tipo_idx    INDEX     c   CREATE INDEX col_volumenvalor_tipo_idx ON test_ladm_col_empty.col_volumenvalor USING btree (tipo);
 :   DROP INDEX test_ladm_col_empty.col_volumenvalor_tipo_idx;
       test_ladm_col_empty         postgres    false    2393            94           1259    710638 )   extarchivo_lc_fuenteespacl_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_fuenteespacl_xt_rchv_id_idx ON test_ladm_col_empty.extarchivo USING btree (lc_fuenteespacial_ext_archivo_id);
 J   DROP INDEX test_ladm_col_empty.extarchivo_lc_fuenteespacl_xt_rchv_id_idx;
       test_ladm_col_empty         postgres    false    2392            :4           1259    710637 )   extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx ON test_ladm_col_empty.extarchivo USING btree (lc_fuenteadministrtiva_ext_archivo_id);
 J   DROP INDEX test_ladm_col_empty.extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx;
       test_ladm_col_empty         postgres    false    2392            =4           1259    710636 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_ladm_col_empty.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 J   DROP INDEX test_ladm_col_empty.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
       test_ladm_col_empty         postgres    false    2392            4           1259    710563 $   extdireccion_clase_via_principal_idx    INDEX     y   CREATE INDEX extdireccion_clase_via_principal_idx ON test_ladm_col_empty.extdireccion USING btree (clase_via_principal);
 E   DROP INDEX test_ladm_col_empty.extdireccion_clase_via_principal_idx;
       test_ladm_col_empty         postgres    false    2385            4           1259    710567 +   extdireccion_extinteresado_ext_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extinteresado_ext_drccn_id_idx ON test_ladm_col_empty.extdireccion USING btree (extinteresado_ext_direccion_id);
 L   DROP INDEX test_ladm_col_empty.extdireccion_extinteresado_ext_drccn_id_idx;
       test_ladm_col_empty         postgres    false    2385            4           1259    710566 +   extdireccion_extndddfccnfsc_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extndddfccnfsc_xt_drccn_id_idx ON test_ladm_col_empty.extdireccion USING btree (extunidadedificcnfsica_ext_direccion_id);
 L   DROP INDEX test_ladm_col_empty.extdireccion_extndddfccnfsc_xt_drccn_id_idx;
       test_ladm_col_empty         postgres    false    2385            4           1259    710568 +   extdireccion_lc_construccin_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_construccin_xt_drccn_id_idx ON test_ladm_col_empty.extdireccion USING btree (lc_construccion_ext_direccion_id);
 L   DROP INDEX test_ladm_col_empty.extdireccion_lc_construccin_xt_drccn_id_idx;
       test_ladm_col_empty         postgres    false    2385            4           1259    710572 +   extdireccion_lc_nddcnstrccn_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_nddcnstrccn_xt_drccn_id_idx ON test_ladm_col_empty.extdireccion USING btree (lc_unidadconstruccion_ext_direccion_id);
 L   DROP INDEX test_ladm_col_empty.extdireccion_lc_nddcnstrccn_xt_drccn_id_idx;
       test_ladm_col_empty         postgres    false    2385            4           1259    710569 $   extdireccion_lc_predio_direccion_idx    INDEX     y   CREATE INDEX extdireccion_lc_predio_direccion_idx ON test_ladm_col_empty.extdireccion USING btree (lc_predio_direccion);
 E   DROP INDEX test_ladm_col_empty.extdireccion_lc_predio_direccion_idx;
       test_ladm_col_empty         postgres    false    2385            4           1259    710571 +   extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx ON test_ladm_col_empty.extdireccion USING btree (lc_servidumbretransito_ext_direccion_id);
 L   DROP INDEX test_ladm_col_empty.extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx;
       test_ladm_col_empty         postgres    false    2385            4           1259    710570 +   extdireccion_lc_terreno_ext_direccin_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_terreno_ext_direccin_id_idx ON test_ladm_col_empty.extdireccion USING btree (lc_terreno_ext_direccion_id);
 L   DROP INDEX test_ladm_col_empty.extdireccion_lc_terreno_ext_direccin_id_idx;
       test_ladm_col_empty         postgres    false    2385            4           1259    710562    extdireccion_localizacion_idx    INDEX     j   CREATE INDEX extdireccion_localizacion_idx ON test_ladm_col_empty.extdireccion USING gist (localizacion);
 >   DROP INDEX test_ladm_col_empty.extdireccion_localizacion_idx;
       test_ladm_col_empty         postgres    false    2385            4           1259    710564    extdireccion_sector_ciudad_idx    INDEX     m   CREATE INDEX extdireccion_sector_ciudad_idx ON test_ladm_col_empty.extdireccion USING btree (sector_ciudad);
 ?   DROP INDEX test_ladm_col_empty.extdireccion_sector_ciudad_idx;
       test_ladm_col_empty         postgres    false    2385            4           1259    710565    extdireccion_sector_predio_idx    INDEX     m   CREATE INDEX extdireccion_sector_predio_idx ON test_ladm_col_empty.extdireccion USING btree (sector_predio);
 ?   DROP INDEX test_ladm_col_empty.extdireccion_sector_predio_idx;
       test_ladm_col_empty         postgres    false    2385             4           1259    710561    extdireccion_tipo_direccion_idx    INDEX     o   CREATE INDEX extdireccion_tipo_direccion_idx ON test_ladm_col_empty.extdireccion USING btree (tipo_direccion);
 @   DROP INDEX test_ladm_col_empty.extdireccion_tipo_direccion_idx;
       test_ladm_col_empty         postgres    false    2385            24           1259    710618 ,   extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx    INDEX     �   CREATE INDEX extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx ON test_ladm_col_empty.extinteresado USING btree (extredserviciosfisica_ext_interesado_administrador_id);
 M   DROP INDEX test_ladm_col_empty.extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx;
       test_ladm_col_empty         postgres    false    2390            34           1259    710619 ,   extinteresado_lc_agrupacionntrsds_xt_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_agrupacionntrsds_xt_pid_idx ON test_ladm_col_empty.extinteresado USING btree (lc_agrupacionintersdos_ext_pid);
 M   DROP INDEX test_ladm_col_empty.extinteresado_lc_agrupacionntrsds_xt_pid_idx;
       test_ladm_col_empty         postgres    false    2390            44           1259    710620 '   extinteresado_lc_interesado_ext_pid_idx    INDEX        CREATE INDEX extinteresado_lc_interesado_ext_pid_idx ON test_ladm_col_empty.extinteresado USING btree (lc_interesado_ext_pid);
 H   DROP INDEX test_ladm_col_empty.extinteresado_lc_interesado_ext_pid_idx;
       test_ladm_col_empty         postgres    false    2390            !4           1259    710579 '   fraccion_col_miembros_participacion_idx    INDEX        CREATE INDEX fraccion_col_miembros_participacion_idx ON test_ladm_col_empty.fraccion USING btree (col_miembros_participacion);
 H   DROP INDEX test_ladm_col_empty.fraccion_col_miembros_participacion_idx;
       test_ladm_col_empty         postgres    false    2386            "4           1259    710580 '   fraccion_lc_predio_copropidd_cfcnte_idx    INDEX     �   CREATE INDEX fraccion_lc_predio_copropidd_cfcnte_idx ON test_ladm_col_empty.fraccion USING btree (lc_predio_copropiedad_coeficiente);
 H   DROP INDEX test_ladm_col_empty.fraccion_lc_predio_copropidd_cfcnte_idx;
       test_ladm_col_empty         postgres    false    2386            �4           1259    710852    gc_barrio_geometria_idx    INDEX     ^   CREATE INDEX gc_barrio_geometria_idx ON test_ladm_col_empty.gc_barrio USING gist (geometria);
 8   DROP INDEX test_ladm_col_empty.gc_barrio_geometria_idx;
       test_ladm_col_empty         postgres    false    2415            �4           1259    710862 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_ladm_col_empty.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 U   DROP INDEX test_ladm_col_empty.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
       test_ladm_col_empty         postgres    false    2416            �4           1259    710872 '   gc_comisionesconstruccion_geometria_idx    INDEX     ~   CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_ladm_col_empty.gc_comisionesconstruccion USING gist (geometria);
 H   DROP INDEX test_ladm_col_empty.gc_comisionesconstruccion_geometria_idx;
       test_ladm_col_empty         postgres    false    2417            �4           1259    710892 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_ladm_col_empty.gc_comisionesunidadconstruccion USING gist (geometria);
 I   DROP INDEX test_ladm_col_empty.gc_comisionesnddcnstrccion_geometria_idx;
       test_ladm_col_empty         postgres    false    2419            �4           1259    710882 "   gc_comisionesterreno_geometria_idx    INDEX     t   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_ladm_col_empty.gc_comisionesterreno USING gist (geometria);
 C   DROP INDEX test_ladm_col_empty.gc_comisionesterreno_geometria_idx;
       test_ladm_col_empty         postgres    false    2418            �4           1259    710904    gc_construccion_gc_predio_idx    INDEX     k   CREATE INDEX gc_construccion_gc_predio_idx ON test_ladm_col_empty.gc_construccion USING btree (gc_predio);
 >   DROP INDEX test_ladm_col_empty.gc_construccion_gc_predio_idx;
       test_ladm_col_empty         postgres    false    2420            �4           1259    710903    gc_construccion_geometria_idx    INDEX     j   CREATE INDEX gc_construccion_geometria_idx ON test_ladm_col_empty.gc_construccion USING gist (geometria);
 >   DROP INDEX test_ladm_col_empty.gc_construccion_geometria_idx;
       test_ladm_col_empty         postgres    false    2420            �4           1259    710902 %   gc_construccion_tipo_construccion_idx    INDEX     {   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_ladm_col_empty.gc_construccion USING btree (tipo_construccion);
 F   DROP INDEX test_ladm_col_empty.gc_construccion_tipo_construccion_idx;
       test_ladm_col_empty         postgres    false    2420            �4           1259    711037    gc_copropiedad_gc_matriz_idx    INDEX     i   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_ladm_col_empty.gc_copropiedad USING btree (gc_matriz);
 =   DROP INDEX test_ladm_col_empty.gc_copropiedad_gc_matriz_idx;
       test_ladm_col_empty         postgres    false    2434            �4           1259    711038    gc_copropiedad_gc_unidad_idx    INDEX     i   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_ladm_col_empty.gc_copropiedad USING btree (gc_unidad);
 =   DROP INDEX test_ladm_col_empty.gc_copropiedad_gc_unidad_idx;
       test_ladm_col_empty         postgres    false    2434            �4           1259    712780    gc_copropiedad_gc_unidad_key    INDEX     p   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_ladm_col_empty.gc_copropiedad USING btree (gc_unidad);
 =   DROP INDEX test_ladm_col_empty.gc_copropiedad_gc_unidad_key;
       test_ladm_col_empty         postgres    false    2434            �4           1259    710911 "   gc_datosphcondominio_gc_predio_idx    INDEX     u   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_ladm_col_empty.gc_datosphcondominio USING btree (gc_predio);
 C   DROP INDEX test_ladm_col_empty.gc_datosphcondominio_gc_predio_idx;
       test_ladm_col_empty         postgres    false    2421            �4           1259    710918 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     �   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_ladm_col_empty.gc_datostorreph USING btree (gc_datosphcondominio);
 I   DROP INDEX test_ladm_col_empty.gc_datostorreph_gc_datosphcondominio_idx;
       test_ladm_col_empty         postgres    false    2422            �4           1259    710929 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_ladm_col_empty.gc_direccion USING btree (gc_prediocatastro_direcciones);
 L   DROP INDEX test_ladm_col_empty.gc_direccion_gc_prediocatastro_dirccnes_idx;
       test_ladm_col_empty         postgres    false    2423            �4           1259    710928 %   gc_direccion_geometria_referencia_idx    INDEX     z   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_ladm_col_empty.gc_direccion USING gist (geometria_referencia);
 F   DROP INDEX test_ladm_col_empty.gc_direccion_geometria_referencia_idx;
       test_ladm_col_empty         postgres    false    2423            �4           1259    710936 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_ladm_col_empty.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 O   DROP INDEX test_ladm_col_empty.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
       test_ladm_col_empty         postgres    false    2424            �4           1259    710946    gc_manzana_geometria_idx    INDEX     `   CREATE INDEX gc_manzana_geometria_idx ON test_ladm_col_empty.gc_manzana USING gist (geometria);
 9   DROP INDEX test_ladm_col_empty.gc_manzana_geometria_idx;
       test_ladm_col_empty         postgres    false    2425            �4           1259    710956    gc_perimetro_geometria_idx    INDEX     d   CREATE INDEX gc_perimetro_geometria_idx ON test_ladm_col_empty.gc_perimetro USING gist (geometria);
 ;   DROP INDEX test_ladm_col_empty.gc_perimetro_geometria_idx;
       test_ladm_col_empty         postgres    false    2426            �4           1259    711029 &   gc_prediocatastro_condicion_predio_idx    INDEX     }   CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_ladm_col_empty.gc_prediocatastro USING btree (condicion_predio);
 G   DROP INDEX test_ladm_col_empty.gc_prediocatastro_condicion_predio_idx;
       test_ladm_col_empty         postgres    false    2433            �4           1259    711030 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_ladm_col_empty.gc_prediocatastro USING btree (sistema_procedencia_datos);
 P   DROP INDEX test_ladm_col_empty.gc_prediocatastro_sistema_procedencia_datos_idx;
       test_ladm_col_empty         postgres    false    2433            �4           1259    710966 %   gc_propietario_gc_predio_catastro_idx    INDEX     {   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_ladm_col_empty.gc_propietario USING btree (gc_predio_catastro);
 F   DROP INDEX test_ladm_col_empty.gc_propietario_gc_predio_catastro_idx;
       test_ladm_col_empty         postgres    false    2427            �4           1259    710976    gc_sectorrural_geometria_idx    INDEX     h   CREATE INDEX gc_sectorrural_geometria_idx ON test_ladm_col_empty.gc_sectorrural USING gist (geometria);
 =   DROP INDEX test_ladm_col_empty.gc_sectorrural_geometria_idx;
       test_ladm_col_empty         postgres    false    2428            �4           1259    710986    gc_sectorurbano_geometria_idx    INDEX     j   CREATE INDEX gc_sectorurbano_geometria_idx ON test_ladm_col_empty.gc_sectorurbano USING gist (geometria);
 >   DROP INDEX test_ladm_col_empty.gc_sectorurbano_geometria_idx;
       test_ladm_col_empty         postgres    false    2429            �4           1259    710997    gc_terreno_gc_predio_idx    INDEX     a   CREATE INDEX gc_terreno_gc_predio_idx ON test_ladm_col_empty.gc_terreno USING btree (gc_predio);
 9   DROP INDEX test_ladm_col_empty.gc_terreno_gc_predio_idx;
       test_ladm_col_empty         postgres    false    2430            �4           1259    710996    gc_terreno_geometria_idx    INDEX     `   CREATE INDEX gc_terreno_geometria_idx ON test_ladm_col_empty.gc_terreno USING gist (geometria);
 9   DROP INDEX test_ladm_col_empty.gc_terreno_geometria_idx;
       test_ladm_col_empty         postgres    false    2430            �4           1259    711009 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_ladm_col_empty.gc_unidadconstruccion USING btree (gc_construccion);
 J   DROP INDEX test_ladm_col_empty.gc_unidadconstruccion_gc_construccion_idx;
       test_ladm_col_empty         postgres    false    2431            �4           1259    711008 #   gc_unidadconstruccion_geometria_idx    INDEX     v   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_ladm_col_empty.gc_unidadconstruccion USING gist (geometria);
 D   DROP INDEX test_ladm_col_empty.gc_unidadconstruccion_geometria_idx;
       test_ladm_col_empty         postgres    false    2431            �4           1259    711007 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_ladm_col_empty.gc_unidadconstruccion USING btree (tipo_construccion);
 L   DROP INDEX test_ladm_col_empty.gc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_col_empty         postgres    false    2431            �4           1259    711019    gc_vereda_geometria_idx    INDEX     ^   CREATE INDEX gc_vereda_geometria_idx ON test_ladm_col_empty.gc_vereda USING gist (geometria);
 8   DROP INDEX test_ladm_col_empty.gc_vereda_geometria_idx;
       test_ladm_col_empty         postgres    false    2432            �3           1259    710506     gm_surface2dlistvalue_avalue_idx    INDEX     p   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_ladm_col_empty.gm_surface2dlistvalue USING gist (avalue);
 A   DROP INDEX test_ladm_col_empty.gm_surface2dlistvalue_avalue_idx;
       test_ladm_col_empty         postgres    false    2379            �3           1259    710507 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_ladm_col_empty.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 U   DROP INDEX test_ladm_col_empty.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
       test_ladm_col_empty         postgres    false    2379            4           1259    710523     gm_surface3dlistvalue_avalue_idx    INDEX     p   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_ladm_col_empty.gm_surface3dlistvalue USING gist (avalue);
 A   DROP INDEX test_ladm_col_empty.gm_surface3dlistvalue_avalue_idx;
       test_ladm_col_empty         postgres    false    2381            4           1259    710524 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_ladm_col_empty.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 U   DROP INDEX test_ladm_col_empty.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
       test_ladm_col_empty         postgres    false    2381            -4           1259    710608    imagen_extinteresado_firma_idx    INDEX     m   CREATE INDEX imagen_extinteresado_firma_idx ON test_ladm_col_empty.imagen USING btree (extinteresado_firma);
 ?   DROP INDEX test_ladm_col_empty.imagen_extinteresado_firma_idx;
       test_ladm_col_empty         postgres    false    2389            .4           1259    710607 #   imagen_extinteresado_fotografia_idx    INDEX     w   CREATE INDEX imagen_extinteresado_fotografia_idx ON test_ladm_col_empty.imagen USING btree (extinteresado_fotografia);
 D   DROP INDEX test_ladm_col_empty.imagen_extinteresado_fotografia_idx;
       test_ladm_col_empty         postgres    false    2389            /4           1259    710606 %   imagen_extinteresado_huell_dctlar_idx    INDEX     ~   CREATE INDEX imagen_extinteresado_huell_dctlar_idx ON test_ladm_col_empty.imagen USING btree (extinteresado_huella_dactilar);
 F   DROP INDEX test_ladm_col_empty.imagen_extinteresado_huell_dctlar_idx;
       test_ladm_col_empty         postgres    false    2389            5           1259    711115 (   ini_predioinsumos_gc_predio_catastro_idx    INDEX     �   CREATE INDEX ini_predioinsumos_gc_predio_catastro_idx ON test_ladm_col_empty.ini_predioinsumos USING btree (gc_predio_catastro);
 I   DROP INDEX test_ladm_col_empty.ini_predioinsumos_gc_predio_catastro_idx;
       test_ladm_col_empty         postgres    false    2442            5           1259    711116 )   ini_predioinsumos_snr_predio_juridico_idx    INDEX     �   CREATE INDEX ini_predioinsumos_snr_predio_juridico_idx ON test_ladm_col_empty.ini_predioinsumos USING btree (snr_predio_juridico);
 J   DROP INDEX test_ladm_col_empty.ini_predioinsumos_snr_predio_juridico_idx;
       test_ladm_col_empty         postgres    false    2442            5           1259    711114 )   ini_predioinsumos_tipo_emparejamiento_idx    INDEX     �   CREATE INDEX ini_predioinsumos_tipo_emparejamiento_idx ON test_ladm_col_empty.ini_predioinsumos USING btree (tipo_emparejamiento);
 J   DROP INDEX test_ladm_col_empty.ini_predioinsumos_tipo_emparejamiento_idx;
       test_ladm_col_empty         postgres    false    2442            5           1259    711127 !   lc_agrupacioninteresados_tipo_idx    INDEX     s   CREATE INDEX lc_agrupacioninteresados_tipo_idx ON test_ladm_col_empty.lc_agrupacioninteresados USING btree (tipo);
 B   DROP INDEX test_ladm_col_empty.lc_agrupacioninteresados_tipo_idx;
       test_ladm_col_empty         postgres    false    2443            ~5           1259    711369 5   lc_calificacionconvencinal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_lc_unidad_construccion_idx ON test_ladm_col_empty.lc_calificacionconvencional USING btree (lc_unidad_construccion);
 V   DROP INDEX test_ladm_col_empty.lc_calificacionconvencinal_lc_unidad_construccion_idx;
       test_ladm_col_empty         postgres    false    2463            5           1259    711368 -   lc_calificacionconvencinal_tipo_calificar_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_tipo_calificar_idx ON test_ladm_col_empty.lc_calificacionconvencional USING btree (tipo_calificar);
 N   DROP INDEX test_ladm_col_empty.lc_calificacionconvencinal_tipo_calificar_idx;
       test_ladm_col_empty         postgres    false    2463            �5           1259    711378 5   lc_calificacionnoconvncnal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_lc_unidad_construccion_idx ON test_ladm_col_empty.lc_calificacionnoconvencional USING btree (lc_unidad_construccion);
 V   DROP INDEX test_ladm_col_empty.lc_calificacionnoconvncnal_lc_unidad_construccion_idx;
       test_ladm_col_empty         postgres    false    2464            �5           1259    711377 )   lc_calificacionnoconvncnal_tipo_anexo_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_tipo_anexo_idx ON test_ladm_col_empty.lc_calificacionnoconvencional USING btree (tipo_anexo);
 J   DROP INDEX test_ladm_col_empty.lc_calificacionnoconvncnal_tipo_anexo_idx;
       test_ladm_col_empty         postgres    false    2464            5           1259    711140    lc_construccion_dimension_idx    INDEX     k   CREATE INDEX lc_construccion_dimension_idx ON test_ladm_col_empty.lc_construccion USING btree (dimension);
 >   DROP INDEX test_ladm_col_empty.lc_construccion_dimension_idx;
       test_ladm_col_empty         postgres    false    2444            5           1259    711142    lc_construccion_geometria_idx    INDEX     j   CREATE INDEX lc_construccion_geometria_idx ON test_ladm_col_empty.lc_construccion USING gist (geometria);
 >   DROP INDEX test_ladm_col_empty.lc_construccion_geometria_idx;
       test_ladm_col_empty         postgres    false    2444            5           1259    711141 '   lc_construccion_relacion_superficie_idx    INDEX        CREATE INDEX lc_construccion_relacion_superficie_idx ON test_ladm_col_empty.lc_construccion USING btree (relacion_superficie);
 H   DROP INDEX test_ladm_col_empty.lc_construccion_relacion_superficie_idx;
       test_ladm_col_empty         postgres    false    2444            5           1259    711138 %   lc_construccion_tipo_construccion_idx    INDEX     {   CREATE INDEX lc_construccion_tipo_construccion_idx ON test_ladm_col_empty.lc_construccion USING btree (tipo_construccion);
 F   DROP INDEX test_ladm_col_empty.lc_construccion_tipo_construccion_idx;
       test_ladm_col_empty         postgres    false    2444            5           1259    711139     lc_construccion_tipo_dominio_idx    INDEX     q   CREATE INDEX lc_construccion_tipo_dominio_idx ON test_ladm_col_empty.lc_construccion USING btree (tipo_dominio);
 A   DROP INDEX test_ladm_col_empty.lc_construccion_tipo_dominio_idx;
       test_ladm_col_empty         postgres    false    2444             5           1259    711155 *   lc_contactovisita_lc_datos_adicionales_idx    INDEX     �   CREATE INDEX lc_contactovisita_lc_datos_adicionales_idx ON test_ladm_col_empty.lc_contactovisita USING btree (lc_datos_adicionales);
 K   DROP INDEX test_ladm_col_empty.lc_contactovisita_lc_datos_adicionales_idx;
       test_ladm_col_empty         postgres    false    2445            #5           1259    711154 )   lc_contactovisita_relacion_con_predio_idx    INDEX     �   CREATE INDEX lc_contactovisita_relacion_con_predio_idx ON test_ladm_col_empty.lc_contactovisita USING btree (relacion_con_predio);
 J   DROP INDEX test_ladm_col_empty.lc_contactovisita_relacion_con_predio_idx;
       test_ladm_col_empty         postgres    false    2445            $5           1259    711153 0   lc_contactovisita_tipo_documento_quien_tndio_idx    INDEX     �   CREATE INDEX lc_contactovisita_tipo_documento_quien_tndio_idx ON test_ladm_col_empty.lc_contactovisita USING btree (tipo_documento_quien_atendio);
 Q   DROP INDEX test_ladm_col_empty.lc_contactovisita_tipo_documento_quien_tndio_idx;
       test_ladm_col_empty         postgres    false    2445            %5           1259    711163 "   lc_datosphcondominio_lc_predio_idx    INDEX     u   CREATE INDEX lc_datosphcondominio_lc_predio_idx ON test_ladm_col_empty.lc_datosphcondominio USING btree (lc_predio);
 C   DROP INDEX test_ladm_col_empty.lc_datosphcondominio_lc_predio_idx;
       test_ladm_col_empty         postgres    false    2446            �5           1259    711392 .   lc_datsdcnlslvntmntctstral_categoria_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_categoria_suelo_idx ON test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral USING btree (categoria_suelo);
 O   DROP INDEX test_ladm_col_empty.lc_datsdcnlslvntmntctstral_categoria_suelo_idx;
       test_ladm_col_empty         postgres    false    2465            �5           1259    711391 *   lc_datsdcnlslvntmntctstral_clase_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_clase_suelo_idx ON test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral USING btree (clase_suelo);
 K   DROP INDEX test_ladm_col_empty.lc_datsdcnlslvntmntctstral_clase_suelo_idx;
       test_ladm_col_empty         postgres    false    2465            �5           1259    711390 4   lc_datsdcnlslvntmntctstral_destinacion_economica_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_destinacion_economica_idx ON test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral USING btree (destinacion_economica);
 U   DROP INDEX test_ladm_col_empty.lc_datsdcnlslvntmntctstral_destinacion_economica_idx;
       test_ladm_col_empty         postgres    false    2465            �5           1259    711395 (   lc_datsdcnlslvntmntctstral_lc_predio_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_lc_predio_idx ON test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral USING btree (lc_predio);
 I   DROP INDEX test_ladm_col_empty.lc_datsdcnlslvntmntctstral_lc_predio_idx;
       test_ladm_col_empty         postgres    false    2465            �5           1259    711389 9   lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx ON test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral USING btree (procedimiento_catastral_registral);
 Z   DROP INDEX test_ladm_col_empty.lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx;
       test_ladm_col_empty         postgres    false    2465            �5           1259    711394 /   lc_datsdcnlslvntmntctstral_resultado_visita_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_resultado_visita_idx ON test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral USING btree (resultado_visita);
 P   DROP INDEX test_ladm_col_empty.lc_datsdcnlslvntmntctstral_resultado_visita_idx;
       test_ladm_col_empty         postgres    false    2465            �5           1259    711393 9   lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx ON test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral USING btree (tipo_documento_reconocedor);
 Z   DROP INDEX test_ladm_col_empty.lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx;
       test_ladm_col_empty         postgres    false    2465            (5           1259    711176 )   lc_derecho_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_grpcnntrsdos_idx ON test_ladm_col_empty.lc_derecho USING btree (interesado_lc_agrupacioninteresados);
 J   DROP INDEX test_ladm_col_empty.lc_derecho_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col_empty         postgres    false    2447            )5           1259    711175 '   lc_derecho_interesado_lc_interesado_idx    INDEX        CREATE INDEX lc_derecho_interesado_lc_interesado_idx ON test_ladm_col_empty.lc_derecho USING btree (interesado_lc_interesado);
 H   DROP INDEX test_ladm_col_empty.lc_derecho_interesado_lc_interesado_idx;
       test_ladm_col_empty         postgres    false    2447            ,5           1259    711174    lc_derecho_tipo_idx    INDEX     W   CREATE INDEX lc_derecho_tipo_idx ON test_ladm_col_empty.lc_derecho USING btree (tipo);
 4   DROP INDEX test_ladm_col_empty.lc_derecho_tipo_idx;
       test_ladm_col_empty         postgres    false    2447            -5           1259    711177    lc_derecho_unidad_idx    INDEX     [   CREATE INDEX lc_derecho_unidad_idx ON test_ladm_col_empty.lc_derecho USING btree (unidad);
 6   DROP INDEX test_ladm_col_empty.lc_derecho_unidad_idx;
       test_ladm_col_empty         postgres    false    2447            .5           1259    711184 6   lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx    INDEX     �   CREATE INDEX lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx ON test_ladm_col_empty.lc_estructuranovedadfmi USING btree (lc_dtsdcnlstmntctstral_novedad_fmi);
 W   DROP INDEX test_ladm_col_empty.lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx;
       test_ladm_col_empty         postgres    false    2448            35           1259    711192 9   lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx ON test_ladm_col_empty.lc_estructuranovedadnumeropredial USING btree (lc_dtsdcnlstmntctstral_novedad_numeros_prediales);
 Z   DROP INDEX test_ladm_col_empty.lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx;
       test_ladm_col_empty         postgres    false    2449            45           1259    711191 +   lc_estructuranvddnmrprdial_tipo_novedad_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_tipo_novedad_idx ON test_ladm_col_empty.lc_estructuranovedadnumeropredial USING btree (tipo_novedad);
 L   DROP INDEX test_ladm_col_empty.lc_estructuranvddnmrprdial_tipo_novedad_idx;
       test_ladm_col_empty         postgres    false    2449            55           1259    711204 1   lc_fuenteadministrativa_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_estado_disponibilidad_idx ON test_ladm_col_empty.lc_fuenteadministrativa USING btree (estado_disponibilidad);
 R   DROP INDEX test_ladm_col_empty.lc_fuenteadministrativa_estado_disponibilidad_idx;
       test_ladm_col_empty         postgres    false    2450            85           1259    711203     lc_fuenteadministrativa_tipo_idx    INDEX     q   CREATE INDEX lc_fuenteadministrativa_tipo_idx ON test_ladm_col_empty.lc_fuenteadministrativa USING btree (tipo);
 A   DROP INDEX test_ladm_col_empty.lc_fuenteadministrativa_tipo_idx;
       test_ladm_col_empty         postgres    false    2450            95           1259    711205 *   lc_fuenteadministrativa_tipo_principal_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_tipo_principal_idx ON test_ladm_col_empty.lc_fuenteadministrativa USING btree (tipo_principal);
 K   DROP INDEX test_ladm_col_empty.lc_fuenteadministrativa_tipo_principal_idx;
       test_ladm_col_empty         postgres    false    2450            :5           1259    711217 +   lc_fuenteespacial_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_estado_disponibilidad_idx ON test_ladm_col_empty.lc_fuenteespacial USING btree (estado_disponibilidad);
 L   DROP INDEX test_ladm_col_empty.lc_fuenteespacial_estado_disponibilidad_idx;
       test_ladm_col_empty         postgres    false    2451            =5           1259    711216    lc_fuenteespacial_tipo_idx    INDEX     e   CREATE INDEX lc_fuenteespacial_tipo_idx ON test_ladm_col_empty.lc_fuenteespacial USING btree (tipo);
 ;   DROP INDEX test_ladm_col_empty.lc_fuenteespacial_tipo_idx;
       test_ladm_col_empty         postgres    false    2451            >5           1259    711218 $   lc_fuenteespacial_tipo_principal_idx    INDEX     y   CREATE INDEX lc_fuenteespacial_tipo_principal_idx ON test_ladm_col_empty.lc_fuenteespacial USING btree (tipo_principal);
 E   DROP INDEX test_ladm_col_empty.lc_fuenteespacial_tipo_principal_idx;
       test_ladm_col_empty         postgres    false    2451            ?5           1259    711226 +   lc_grupocalificacion_clase_calificacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_clase_calificacion_idx ON test_ladm_col_empty.lc_grupocalificacion USING btree (clase_calificacion);
 L   DROP INDEX test_ladm_col_empty.lc_grupocalificacion_clase_calificacion_idx;
       test_ladm_col_empty         postgres    false    2452            @5           1259    711227 %   lc_grupocalificacion_conservacion_idx    INDEX     {   CREATE INDEX lc_grupocalificacion_conservacion_idx ON test_ladm_col_empty.lc_grupocalificacion USING btree (conservacion);
 F   DROP INDEX test_ladm_col_empty.lc_grupocalificacion_conservacion_idx;
       test_ladm_col_empty         postgres    false    2452            A5           1259    711228 3   lc_grupocalificacion_lc_calificacion_convencnal_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_lc_calificacion_convencnal_idx ON test_ladm_col_empty.lc_grupocalificacion USING btree (lc_calificacion_convencional);
 T   DROP INDEX test_ladm_col_empty.lc_grupocalificacion_lc_calificacion_convencnal_idx;
       test_ladm_col_empty         postgres    false    2452            D5           1259    711242    lc_interesado_grupo_etnico_idx    INDEX     m   CREATE INDEX lc_interesado_grupo_etnico_idx ON test_ladm_col_empty.lc_interesado USING btree (grupo_etnico);
 ?   DROP INDEX test_ladm_col_empty.lc_interesado_grupo_etnico_idx;
       test_ladm_col_empty         postgres    false    2453            G5           1259    711241    lc_interesado_sexo_idx    INDEX     ]   CREATE INDEX lc_interesado_sexo_idx ON test_ladm_col_empty.lc_interesado USING btree (sexo);
 7   DROP INDEX test_ladm_col_empty.lc_interesado_sexo_idx;
       test_ladm_col_empty         postgres    false    2453            H5           1259    711240     lc_interesado_tipo_documento_idx    INDEX     q   CREATE INDEX lc_interesado_tipo_documento_idx ON test_ladm_col_empty.lc_interesado USING btree (tipo_documento);
 A   DROP INDEX test_ladm_col_empty.lc_interesado_tipo_documento_idx;
       test_ladm_col_empty         postgres    false    2453            I5           1259    711239    lc_interesado_tipo_idx    INDEX     ]   CREATE INDEX lc_interesado_tipo_idx ON test_ladm_col_empty.lc_interesado USING btree (tipo);
 7   DROP INDEX test_ladm_col_empty.lc_interesado_tipo_idx;
       test_ladm_col_empty         postgres    false    2453            J5           1259    711253 '   lc_interesadocontacto_lc_interesado_idx    INDEX        CREATE INDEX lc_interesadocontacto_lc_interesado_idx ON test_ladm_col_empty.lc_interesadocontacto USING btree (lc_interesado);
 H   DROP INDEX test_ladm_col_empty.lc_interesadocontacto_lc_interesado_idx;
       test_ladm_col_empty         postgres    false    2454            M5           1259    711264    lc_lindero_geometria_idx    INDEX     `   CREATE INDEX lc_lindero_geometria_idx ON test_ladm_col_empty.lc_lindero USING gist (geometria);
 9   DROP INDEX test_ladm_col_empty.lc_lindero_geometria_idx;
       test_ladm_col_empty         postgres    false    2455            P5           1259    711273 /   lc_objetoconstruccion_lc_grupo_calificacion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_lc_grupo_calificacion_idx ON test_ladm_col_empty.lc_objetoconstruccion USING btree (lc_grupo_calificacion);
 P   DROP INDEX test_ladm_col_empty.lc_objetoconstruccion_lc_grupo_calificacion_idx;
       test_ladm_col_empty         postgres    false    2456            S5           1259    711272 2   lc_objetoconstruccion_tipo_objeto_construccion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_tipo_objeto_construccion_idx ON test_ladm_col_empty.lc_objetoconstruccion USING btree (tipo_objeto_construccion);
 S   DROP INDEX test_ladm_col_empty.lc_objetoconstruccion_tipo_objeto_construccion_idx;
       test_ladm_col_empty         postgres    false    2456            V5           1259    711282 (   lc_ofertasmercadoinmoblrio_lc_predio_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_lc_predio_idx ON test_ladm_col_empty.lc_ofertasmercadoinmobiliario USING btree (lc_predio);
 I   DROP INDEX test_ladm_col_empty.lc_ofertasmercadoinmoblrio_lc_predio_idx;
       test_ladm_col_empty         postgres    false    2457            W5           1259    711281 *   lc_ofertasmercadoinmoblrio_tipo_oferta_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_tipo_oferta_idx ON test_ladm_col_empty.lc_ofertasmercadoinmobiliario USING btree (tipo_oferta);
 K   DROP INDEX test_ladm_col_empty.lc_ofertasmercadoinmoblrio_tipo_oferta_idx;
       test_ladm_col_empty         postgres    false    2457            X5           1259    711294    lc_predio_condicion_predio_idx    INDEX     m   CREATE INDEX lc_predio_condicion_predio_idx ON test_ladm_col_empty.lc_predio USING btree (condicion_predio);
 ?   DROP INDEX test_ladm_col_empty.lc_predio_condicion_predio_idx;
       test_ladm_col_empty         postgres    false    2458            �5           1259    711432 %   lc_predio_copropiedad_copropiedad_idx    INDEX     {   CREATE INDEX lc_predio_copropiedad_copropiedad_idx ON test_ladm_col_empty.lc_predio_copropiedad USING btree (copropiedad);
 F   DROP INDEX test_ladm_col_empty.lc_predio_copropiedad_copropiedad_idx;
       test_ladm_col_empty         postgres    false    2468            �5           1259    711431     lc_predio_copropiedad_predio_idx    INDEX     q   CREATE INDEX lc_predio_copropiedad_predio_idx ON test_ladm_col_empty.lc_predio_copropiedad USING btree (predio);
 A   DROP INDEX test_ladm_col_empty.lc_predio_copropiedad_predio_idx;
       test_ladm_col_empty         postgres    false    2468            �5           1259    713306     lc_predio_copropiedad_predio_key    INDEX     x   CREATE UNIQUE INDEX lc_predio_copropiedad_predio_key ON test_ladm_col_empty.lc_predio_copropiedad USING btree (predio);
 A   DROP INDEX test_ladm_col_empty.lc_predio_copropiedad_predio_key;
       test_ladm_col_empty         postgres    false    2468            �5           1259    711439 1   lc_predio_ini_predioinsmos_ini_predio_insumos_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_ini_predio_insumos_idx ON test_ladm_col_empty.lc_predio_ini_predioinsumos USING btree (ini_predio_insumos);
 R   DROP INDEX test_ladm_col_empty.lc_predio_ini_predioinsmos_ini_predio_insumos_idx;
       test_ladm_col_empty         postgres    false    2469            �5           1259    711440 (   lc_predio_ini_predioinsmos_lc_predio_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_lc_predio_idx ON test_ladm_col_empty.lc_predio_ini_predioinsumos USING btree (lc_predio);
 I   DROP INDEX test_ladm_col_empty.lc_predio_ini_predioinsmos_lc_predio_idx;
       test_ladm_col_empty         postgres    false    2469            [5           1259    711293    lc_predio_tipo_idx    INDEX     U   CREATE INDEX lc_predio_tipo_idx ON test_ladm_col_empty.lc_predio USING btree (tipo);
 3   DROP INDEX test_ladm_col_empty.lc_predio_tipo_idx;
       test_ladm_col_empty         postgres    false    2458            \5           1259    711309    lc_puntocontrol_geometria_idx    INDEX     j   CREATE INDEX lc_puntocontrol_geometria_idx ON test_ladm_col_empty.lc_puntocontrol USING gist (geometria);
 >   DROP INDEX test_ladm_col_empty.lc_puntocontrol_geometria_idx;
       test_ladm_col_empty         postgres    false    2459            ]5           1259    711308 $   lc_puntocontrol_metodoproduccion_idx    INDEX     y   CREATE INDEX lc_puntocontrol_metodoproduccion_idx ON test_ladm_col_empty.lc_puntocontrol USING btree (metodoproduccion);
 E   DROP INDEX test_ladm_col_empty.lc_puntocontrol_metodoproduccion_idx;
       test_ladm_col_empty         postgres    false    2459            `5           1259    711307 *   lc_puntocontrol_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_posicion_interpolacion_idx ON test_ladm_col_empty.lc_puntocontrol USING btree (posicion_interpolacion);
 K   DROP INDEX test_ladm_col_empty.lc_puntocontrol_posicion_interpolacion_idx;
       test_ladm_col_empty         postgres    false    2459            a5           1259    711305    lc_puntocontrol_puntotipo_idx    INDEX     k   CREATE INDEX lc_puntocontrol_puntotipo_idx ON test_ladm_col_empty.lc_puntocontrol USING btree (puntotipo);
 >   DROP INDEX test_ladm_col_empty.lc_puntocontrol_puntotipo_idx;
       test_ladm_col_empty         postgres    false    2459            b5           1259    711306 &   lc_puntocontrol_tipo_punto_control_idx    INDEX     }   CREATE INDEX lc_puntocontrol_tipo_punto_control_idx ON test_ladm_col_empty.lc_puntocontrol USING btree (tipo_punto_control);
 G   DROP INDEX test_ladm_col_empty.lc_puntocontrol_tipo_punto_control_idx;
       test_ladm_col_empty         postgres    false    2459            c5           1259    711310 &   lc_puntocontrol_ue_lc_construccion_idx    INDEX     }   CREATE INDEX lc_puntocontrol_ue_lc_construccion_idx ON test_ladm_col_empty.lc_puntocontrol USING btree (ue_lc_construccion);
 G   DROP INDEX test_ladm_col_empty.lc_puntocontrol_ue_lc_construccion_idx;
       test_ladm_col_empty         postgres    false    2459            d5           1259    711312 -   lc_puntocontrol_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_servidumbretransito_idx ON test_ladm_col_empty.lc_puntocontrol USING btree (ue_lc_servidumbretransito);
 N   DROP INDEX test_ladm_col_empty.lc_puntocontrol_ue_lc_servidumbretransito_idx;
       test_ladm_col_empty         postgres    false    2459            e5           1259    711311 !   lc_puntocontrol_ue_lc_terreno_idx    INDEX     s   CREATE INDEX lc_puntocontrol_ue_lc_terreno_idx ON test_ladm_col_empty.lc_puntocontrol USING btree (ue_lc_terreno);
 B   DROP INDEX test_ladm_col_empty.lc_puntocontrol_ue_lc_terreno_idx;
       test_ladm_col_empty         postgres    false    2459            f5           1259    711313 ,   lc_puntocontrol_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_unidadconstruccion_idx ON test_ladm_col_empty.lc_puntocontrol USING btree (ue_lc_unidadconstruccion);
 M   DROP INDEX test_ladm_col_empty.lc_puntocontrol_ue_lc_unidadconstruccion_idx;
       test_ladm_col_empty         postgres    false    2459            �5           1259    711408 ,   lc_puntolevantamiento_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_fotoidentificacion_idx ON test_ladm_col_empty.lc_puntolevantamiento USING btree (fotoidentificacion);
 M   DROP INDEX test_ladm_col_empty.lc_puntolevantamiento_fotoidentificacion_idx;
       test_ladm_col_empty         postgres    false    2466            �5           1259    711411 #   lc_puntolevantamiento_geometria_idx    INDEX     v   CREATE INDEX lc_puntolevantamiento_geometria_idx ON test_ladm_col_empty.lc_puntolevantamiento USING gist (geometria);
 D   DROP INDEX test_ladm_col_empty.lc_puntolevantamiento_geometria_idx;
       test_ladm_col_empty         postgres    false    2466            �5           1259    711410 *   lc_puntolevantamiento_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_metodoproduccion_idx ON test_ladm_col_empty.lc_puntolevantamiento USING btree (metodoproduccion);
 K   DROP INDEX test_ladm_col_empty.lc_puntolevantamiento_metodoproduccion_idx;
       test_ladm_col_empty         postgres    false    2466            �5           1259    711409 0   lc_puntolevantamiento_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_posicion_interpolacion_idx ON test_ladm_col_empty.lc_puntolevantamiento USING btree (posicion_interpolacion);
 Q   DROP INDEX test_ladm_col_empty.lc_puntolevantamiento_posicion_interpolacion_idx;
       test_ladm_col_empty         postgres    false    2466            �5           1259    711406 #   lc_puntolevantamiento_puntotipo_idx    INDEX     w   CREATE INDEX lc_puntolevantamiento_puntotipo_idx ON test_ladm_col_empty.lc_puntolevantamiento USING btree (puntotipo);
 D   DROP INDEX test_ladm_col_empty.lc_puntolevantamiento_puntotipo_idx;
       test_ladm_col_empty         postgres    false    2466            �5           1259    711407 2   lc_puntolevantamiento_tipo_punto_levantamiento_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_tipo_punto_levantamiento_idx ON test_ladm_col_empty.lc_puntolevantamiento USING btree (tipo_punto_levantamiento);
 S   DROP INDEX test_ladm_col_empty.lc_puntolevantamiento_tipo_punto_levantamiento_idx;
       test_ladm_col_empty         postgres    false    2466            �5           1259    711412 ,   lc_puntolevantamiento_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_construccion_idx ON test_ladm_col_empty.lc_puntolevantamiento USING btree (ue_lc_construccion);
 M   DROP INDEX test_ladm_col_empty.lc_puntolevantamiento_ue_lc_construccion_idx;
       test_ladm_col_empty         postgres    false    2466            �5           1259    711414 3   lc_puntolevantamiento_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_servidumbretransito_idx ON test_ladm_col_empty.lc_puntolevantamiento USING btree (ue_lc_servidumbretransito);
 T   DROP INDEX test_ladm_col_empty.lc_puntolevantamiento_ue_lc_servidumbretransito_idx;
       test_ladm_col_empty         postgres    false    2466            �5           1259    711413 '   lc_puntolevantamiento_ue_lc_terreno_idx    INDEX        CREATE INDEX lc_puntolevantamiento_ue_lc_terreno_idx ON test_ladm_col_empty.lc_puntolevantamiento USING btree (ue_lc_terreno);
 H   DROP INDEX test_ladm_col_empty.lc_puntolevantamiento_ue_lc_terreno_idx;
       test_ladm_col_empty         postgres    false    2466            �5           1259    711415 2   lc_puntolevantamiento_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_unidadconstruccion_idx ON test_ladm_col_empty.lc_puntolevantamiento USING btree (ue_lc_unidadconstruccion);
 S   DROP INDEX test_ladm_col_empty.lc_puntolevantamiento_ue_lc_unidadconstruccion_idx;
       test_ladm_col_empty         postgres    false    2466            g5           1259    711325    lc_puntolindero_acuerdo_idx    INDEX     g   CREATE INDEX lc_puntolindero_acuerdo_idx ON test_ladm_col_empty.lc_puntolindero USING btree (acuerdo);
 <   DROP INDEX test_ladm_col_empty.lc_puntolindero_acuerdo_idx;
       test_ladm_col_empty         postgres    false    2460            h5           1259    711326 &   lc_puntolindero_fotoidentificacion_idx    INDEX     }   CREATE INDEX lc_puntolindero_fotoidentificacion_idx ON test_ladm_col_empty.lc_puntolindero USING btree (fotoidentificacion);
 G   DROP INDEX test_ladm_col_empty.lc_puntolindero_fotoidentificacion_idx;
       test_ladm_col_empty         postgres    false    2460            i5           1259    711329    lc_puntolindero_geometria_idx    INDEX     j   CREATE INDEX lc_puntolindero_geometria_idx ON test_ladm_col_empty.lc_puntolindero USING gist (geometria);
 >   DROP INDEX test_ladm_col_empty.lc_puntolindero_geometria_idx;
       test_ladm_col_empty         postgres    false    2460            j5           1259    711328 $   lc_puntolindero_metodoproduccion_idx    INDEX     y   CREATE INDEX lc_puntolindero_metodoproduccion_idx ON test_ladm_col_empty.lc_puntolindero USING btree (metodoproduccion);
 E   DROP INDEX test_ladm_col_empty.lc_puntolindero_metodoproduccion_idx;
       test_ladm_col_empty         postgres    false    2460            m5           1259    711327 *   lc_puntolindero_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_posicion_interpolacion_idx ON test_ladm_col_empty.lc_puntolindero USING btree (posicion_interpolacion);
 K   DROP INDEX test_ladm_col_empty.lc_puntolindero_posicion_interpolacion_idx;
       test_ladm_col_empty         postgres    false    2460            n5           1259    711324    lc_puntolindero_puntotipo_idx    INDEX     k   CREATE INDEX lc_puntolindero_puntotipo_idx ON test_ladm_col_empty.lc_puntolindero USING btree (puntotipo);
 >   DROP INDEX test_ladm_col_empty.lc_puntolindero_puntotipo_idx;
       test_ladm_col_empty         postgres    false    2460            o5           1259    711330 &   lc_puntolindero_ue_lc_construccion_idx    INDEX     }   CREATE INDEX lc_puntolindero_ue_lc_construccion_idx ON test_ladm_col_empty.lc_puntolindero USING btree (ue_lc_construccion);
 G   DROP INDEX test_ladm_col_empty.lc_puntolindero_ue_lc_construccion_idx;
       test_ladm_col_empty         postgres    false    2460            p5           1259    711332 -   lc_puntolindero_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_servidumbretransito_idx ON test_ladm_col_empty.lc_puntolindero USING btree (ue_lc_servidumbretransito);
 N   DROP INDEX test_ladm_col_empty.lc_puntolindero_ue_lc_servidumbretransito_idx;
       test_ladm_col_empty         postgres    false    2460            q5           1259    711331 !   lc_puntolindero_ue_lc_terreno_idx    INDEX     s   CREATE INDEX lc_puntolindero_ue_lc_terreno_idx ON test_ladm_col_empty.lc_puntolindero USING btree (ue_lc_terreno);
 B   DROP INDEX test_ladm_col_empty.lc_puntolindero_ue_lc_terreno_idx;
       test_ladm_col_empty         postgres    false    2460            r5           1259    711333 ,   lc_puntolindero_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_unidadconstruccion_idx ON test_ladm_col_empty.lc_puntolindero USING btree (ue_lc_unidadconstruccion);
 M   DROP INDEX test_ladm_col_empty.lc_puntolindero_ue_lc_unidadconstruccion_idx;
       test_ladm_col_empty         postgres    false    2460            s5           1259    711346 -   lc_restriccion_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_grpcnntrsdos_idx ON test_ladm_col_empty.lc_restriccion USING btree (interesado_lc_agrupacioninteresados);
 N   DROP INDEX test_ladm_col_empty.lc_restriccion_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col_empty         postgres    false    2461            t5           1259    711345 +   lc_restriccion_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_interesado_idx ON test_ladm_col_empty.lc_restriccion USING btree (interesado_lc_interesado);
 L   DROP INDEX test_ladm_col_empty.lc_restriccion_interesado_lc_interesado_idx;
       test_ladm_col_empty         postgres    false    2461            w5           1259    711344    lc_restriccion_tipo_idx    INDEX     _   CREATE INDEX lc_restriccion_tipo_idx ON test_ladm_col_empty.lc_restriccion USING btree (tipo);
 8   DROP INDEX test_ladm_col_empty.lc_restriccion_tipo_idx;
       test_ladm_col_empty         postgres    false    2461            x5           1259    711347    lc_restriccion_unidad_idx    INDEX     c   CREATE INDEX lc_restriccion_unidad_idx ON test_ladm_col_empty.lc_restriccion USING btree (unidad);
 :   DROP INDEX test_ladm_col_empty.lc_restriccion_unidad_idx;
       test_ladm_col_empty         postgres    false    2461            �5           1259    711451 $   lc_servidumbretransito_dimension_idx    INDEX     y   CREATE INDEX lc_servidumbretransito_dimension_idx ON test_ladm_col_empty.lc_servidumbretransito USING btree (dimension);
 E   DROP INDEX test_ladm_col_empty.lc_servidumbretransito_dimension_idx;
       test_ladm_col_empty         postgres    false    2470            �5           1259    711453 $   lc_servidumbretransito_geometria_idx    INDEX     x   CREATE INDEX lc_servidumbretransito_geometria_idx ON test_ladm_col_empty.lc_servidumbretransito USING gist (geometria);
 E   DROP INDEX test_ladm_col_empty.lc_servidumbretransito_geometria_idx;
       test_ladm_col_empty         postgres    false    2470            �5           1259    711452 .   lc_servidumbretransito_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_relacion_superficie_idx ON test_ladm_col_empty.lc_servidumbretransito USING btree (relacion_superficie);
 O   DROP INDEX test_ladm_col_empty.lc_servidumbretransito_relacion_superficie_idx;
       test_ladm_col_empty         postgres    false    2470            y5           1259    711359    lc_terreno_dimension_idx    INDEX     a   CREATE INDEX lc_terreno_dimension_idx ON test_ladm_col_empty.lc_terreno USING btree (dimension);
 9   DROP INDEX test_ladm_col_empty.lc_terreno_dimension_idx;
       test_ladm_col_empty         postgres    false    2462            z5           1259    711358    lc_terreno_geometria_idx    INDEX     `   CREATE INDEX lc_terreno_geometria_idx ON test_ladm_col_empty.lc_terreno USING gist (geometria);
 9   DROP INDEX test_ladm_col_empty.lc_terreno_geometria_idx;
       test_ladm_col_empty         postgres    false    2462            }5           1259    711360 "   lc_terreno_relacion_superficie_idx    INDEX     u   CREATE INDEX lc_terreno_relacion_superficie_idx ON test_ladm_col_empty.lc_terreno USING btree (relacion_superficie);
 C   DROP INDEX test_ladm_col_empty.lc_terreno_relacion_superficie_idx;
       test_ladm_col_empty         postgres    false    2462            �5           1259    711424 3   lc_tipologiaconstruccion_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_lc_unidad_construccion_idx ON test_ladm_col_empty.lc_tipologiaconstruccion USING btree (lc_unidad_construccion);
 T   DROP INDEX test_ladm_col_empty.lc_tipologiaconstruccion_lc_unidad_construccion_idx;
       test_ladm_col_empty         postgres    false    2467            �5           1259    711423 +   lc_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_tipo_tipologia_idx ON test_ladm_col_empty.lc_tipologiaconstruccion USING btree (tipo_tipologia);
 L   DROP INDEX test_ladm_col_empty.lc_tipologiaconstruccion_tipo_tipologia_idx;
       test_ladm_col_empty         postgres    false    2467            �5           1259    711470 #   lc_unidadconstruccion_dimension_idx    INDEX     w   CREATE INDEX lc_unidadconstruccion_dimension_idx ON test_ladm_col_empty.lc_unidadconstruccion USING btree (dimension);
 D   DROP INDEX test_ladm_col_empty.lc_unidadconstruccion_dimension_idx;
       test_ladm_col_empty         postgres    false    2471            �5           1259    711472 #   lc_unidadconstruccion_geometria_idx    INDEX     v   CREATE INDEX lc_unidadconstruccion_geometria_idx ON test_ladm_col_empty.lc_unidadconstruccion USING gist (geometria);
 D   DROP INDEX test_ladm_col_empty.lc_unidadconstruccion_geometria_idx;
       test_ladm_col_empty         postgres    false    2471            �5           1259    711469 )   lc_unidadconstruccion_lc_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_lc_construccion_idx ON test_ladm_col_empty.lc_unidadconstruccion USING btree (lc_construccion);
 J   DROP INDEX test_ladm_col_empty.lc_unidadconstruccion_lc_construccion_idx;
       test_ladm_col_empty         postgres    false    2471            �5           1259    711471 -   lc_unidadconstruccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_relacion_superficie_idx ON test_ladm_col_empty.lc_unidadconstruccion USING btree (relacion_superficie);
 N   DROP INDEX test_ladm_col_empty.lc_unidadconstruccion_relacion_superficie_idx;
       test_ladm_col_empty         postgres    false    2471            �5           1259    711465 +   lc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_construccion_idx ON test_ladm_col_empty.lc_unidadconstruccion USING btree (tipo_construccion);
 L   DROP INDEX test_ladm_col_empty.lc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_col_empty         postgres    false    2471            �5           1259    711464 &   lc_unidadconstruccion_tipo_dominio_idx    INDEX     }   CREATE INDEX lc_unidadconstruccion_tipo_dominio_idx ON test_ladm_col_empty.lc_unidadconstruccion USING btree (tipo_dominio);
 G   DROP INDEX test_ladm_col_empty.lc_unidadconstruccion_tipo_dominio_idx;
       test_ladm_col_empty         postgres    false    2471            �5           1259    711467 %   lc_unidadconstruccion_tipo_planta_idx    INDEX     {   CREATE INDEX lc_unidadconstruccion_tipo_planta_idx ON test_ladm_col_empty.lc_unidadconstruccion USING btree (tipo_planta);
 F   DROP INDEX test_ladm_col_empty.lc_unidadconstruccion_tipo_planta_idx;
       test_ladm_col_empty         postgres    false    2471            �5           1259    711466 2   lc_unidadconstruccion_tipo_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_unidad_construccion_idx ON test_ladm_col_empty.lc_unidadconstruccion USING btree (tipo_unidad_construccion);
 S   DROP INDEX test_ladm_col_empty.lc_unidadconstruccion_tipo_unidad_construccion_idx;
       test_ladm_col_empty         postgres    false    2471            �5           1259    711468    lc_unidadconstruccion_uso_idx    INDEX     k   CREATE INDEX lc_unidadconstruccion_uso_idx ON test_ladm_col_empty.lc_unidadconstruccion USING btree (uso);
 >   DROP INDEX test_ladm_col_empty.lc_unidadconstruccion_uso_idx;
       test_ladm_col_empty         postgres    false    2471            �4           1259    711045 (   snr_derecho_calidad_derecho_registro_idx    INDEX     �   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_ladm_col_empty.snr_derecho USING btree (calidad_derecho_registro);
 I   DROP INDEX test_ladm_col_empty.snr_derecho_calidad_derecho_registro_idx;
       test_ladm_col_empty         postgres    false    2435            �4           1259    711046 "   snr_derecho_snr_fuente_derecho_idx    INDEX     u   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_ladm_col_empty.snr_derecho USING btree (snr_fuente_derecho);
 C   DROP INDEX test_ladm_col_empty.snr_derecho_snr_fuente_derecho_idx;
       test_ladm_col_empty         postgres    false    2435            �4           1259    711047 #   snr_derecho_snr_predio_registro_idx    INDEX     w   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_ladm_col_empty.snr_derecho USING btree (snr_predio_registro);
 D   DROP INDEX test_ladm_col_empty.snr_derecho_snr_predio_registro_idx;
       test_ladm_col_empty         postgres    false    2435            �4           1259    711054 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_ladm_col_empty.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 Z   DROP INDEX test_ladm_col_empty.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
       test_ladm_col_empty         postgres    false    2436            5           1259    711064 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_ladm_col_empty.snr_fuentecabidalinderos USING btree (tipo_documento);
 L   DROP INDEX test_ladm_col_empty.snr_fuentecabidalinderos_tipo_documento_idx;
       test_ladm_col_empty         postgres    false    2437            5           1259    711074 $   snr_fuentederecho_tipo_documento_idx    INDEX     y   CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_ladm_col_empty.snr_fuentederecho USING btree (tipo_documento);
 E   DROP INDEX test_ladm_col_empty.snr_fuentederecho_tipo_documento_idx;
       test_ladm_col_empty         postgres    false    2438            	5           1259    711095 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_ladm_col_empty.snr_predioregistro USING btree (clase_suelo_registro);
 L   DROP INDEX test_ladm_col_empty.snr_predioregistro_clase_suelo_registro_idx;
       test_ladm_col_empty         postgres    false    2440            5           1259    711096 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_ladm_col_empty.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 Q   DROP INDEX test_ladm_col_empty.snr_predioregistro_snr_fuente_cabidalinderos_idx;
       test_ladm_col_empty         postgres    false    2440            5           1259    711104 #   snr_titular_derecho_snr_derecho_idx    INDEX     w   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_ladm_col_empty.snr_titular_derecho USING btree (snr_derecho);
 D   DROP INDEX test_ladm_col_empty.snr_titular_derecho_snr_derecho_idx;
       test_ladm_col_empty         postgres    false    2441            5           1259    711103 #   snr_titular_derecho_snr_titular_idx    INDEX     w   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_ladm_col_empty.snr_titular_derecho USING btree (snr_titular);
 D   DROP INDEX test_ladm_col_empty.snr_titular_derecho_snr_titular_idx;
       test_ladm_col_empty         postgres    false    2441            5           1259    711085    snr_titular_tipo_documento_idx    INDEX     m   CREATE INDEX snr_titular_tipo_documento_idx ON test_ladm_col_empty.snr_titular USING btree (tipo_documento);
 ?   DROP INDEX test_ladm_col_empty.snr_titular_tipo_documento_idx;
       test_ladm_col_empty         postgres    false    2439            5           1259    711084    snr_titular_tipo_persona_idx    INDEX     i   CREATE INDEX snr_titular_tipo_persona_idx ON test_ladm_col_empty.snr_titular USING btree (tipo_persona);
 =   DROP INDEX test_ladm_col_empty.snr_titular_tipo_persona_idx;
       test_ladm_col_empty         postgres    false    2439            M6           1259    713395 &   t_ili2db_attrname_colowner_sqlname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_colowner_sqlname_key ON test_ladm_col_empty.t_ili2db_attrname USING btree (colowner, sqlname);
 G   DROP INDEX test_ladm_col_empty.t_ili2db_attrname_colowner_sqlname_key;
       test_ladm_col_empty         postgres    false    2546    2546            �5           1259    711481    t_ili2db_basket_dataset_idx    INDEX     g   CREATE INDEX t_ili2db_basket_dataset_idx ON test_ladm_col_empty.t_ili2db_basket USING btree (dataset);
 <   DROP INDEX test_ladm_col_empty.t_ili2db_basket_dataset_idx;
       test_ladm_col_empty         postgres    false    2472            �5           1259    713393     t_ili2db_dataset_datasetname_key    INDEX     x   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_ladm_col_empty.t_ili2db_dataset USING btree (datasetname);
 A   DROP INDEX test_ladm_col_empty.t_ili2db_dataset_datasetname_key;
       test_ladm_col_empty         postgres    false    2473            �5           1259    713394 '   t_ili2db_model_iliversion_modelname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_iliversion_modelname_key ON test_ladm_col_empty.t_ili2db_model USING btree (iliversion, modelname);
 H   DROP INDEX test_ladm_col_empty.t_ili2db_model_iliversion_modelname_key;
       test_ladm_col_empty         postgres    false    2477    2477            R6           2606    712166 E   cc_metodooperacion cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey FOREIGN KEY (col_transformacion_transformacion) REFERENCES test_ladm_col_empty.col_transformacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col_empty.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey;
       test_ladm_col_empty       postgres    false    2383    2387    13354            S6           2606    712177 5   col_areavalor col_areavalor_lc_construccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_construccion_area_fkey FOREIGN KEY (lc_construccion_area) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor DROP CONSTRAINT col_areavalor_lc_construccion_area_fkey;
       test_ladm_col_empty       postgres    false    13596    2384    2444            T6           2606    712187 ;   col_areavalor col_areavalor_lc_servidumbretransito_rea_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey FOREIGN KEY (lc_servidumbretransito_area) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor DROP CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey;
       test_ladm_col_empty       postgres    false    2384    2470    13739            U6           2606    712182 0   col_areavalor col_areavalor_lc_terreno_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_terreno_area_fkey FOREIGN KEY (lc_terreno_area) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor DROP CONSTRAINT col_areavalor_lc_terreno_area_fkey;
       test_ladm_col_empty       postgres    false    13692    2462    2384            V6           2606    712192 ;   col_areavalor col_areavalor_lc_unidadconstruccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey FOREIGN KEY (lc_unidadconstruccion_area) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor DROP CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey;
       test_ladm_col_empty       postgres    false    2471    2384    13745            W6           2606    712171 %   col_areavalor col_areavalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor
    ADD CONSTRAINT col_areavalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_empty.col_areatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_col_empty.col_areavalor DROP CONSTRAINT col_areavalor_tipo_fkey;
       test_ladm_col_empty       postgres    false    2384    13840    2515            �6           2606    712630 Q   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col_empty.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col_empty       postgres    false    13591    2411    2443            �6           2606    712625 O   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col_empty.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey;
       test_ladm_col_empty       postgres    false    2411    2453    13638            �6           2606    712635 =   col_baunitcomointeresado col_baunitcomointeresado_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_empty.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_unidad_fkey;
       test_ladm_col_empty       postgres    false    2458    2411    13658            �6           2606    712470 6   col_baunitfuente col_baunitfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_empty.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col_empty.col_baunitfuente DROP CONSTRAINT col_baunitfuente_fuente_espacial_fkey;
       test_ladm_col_empty       postgres    false    2401    13628    2451            �6           2606    712475 -   col_baunitfuente col_baunitfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col_empty.col_baunitfuente DROP CONSTRAINT col_baunitfuente_unidad_fkey;
       test_ladm_col_empty       postgres    false    13658    2458    2401            �6           2606    712485 $   col_cclfuente col_cclfuente_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_cclfuente
    ADD CONSTRAINT col_cclfuente_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_col_empty.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY test_ladm_col_empty.col_cclfuente DROP CONSTRAINT col_cclfuente_ccl_fkey;
       test_ladm_col_empty       postgres    false    2403    2455    13647            �6           2606    712490 0   col_cclfuente col_cclfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_cclfuente
    ADD CONSTRAINT col_cclfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_empty.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col_empty.col_cclfuente DROP CONSTRAINT col_cclfuente_fuente_espacial_fkey;
       test_ladm_col_empty       postgres    false    2403    2451    13628            �6           2606    712565 .   col_clfuente col_clfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_clfuente
    ADD CONSTRAINT col_clfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_empty.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_empty.col_clfuente DROP CONSTRAINT col_clfuente_fuente_espacial_fkey;
       test_ladm_col_empty       postgres    false    2451    2407    13628            �6           2606    712520 "   col_masccl col_masccl_ccl_mas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_masccl
    ADD CONSTRAINT col_masccl_ccl_mas_fkey FOREIGN KEY (ccl_mas) REFERENCES test_ladm_col_empty.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY test_ladm_col_empty.col_masccl DROP CONSTRAINT col_masccl_ccl_mas_fkey;
       test_ladm_col_empty       postgres    false    2455    2405    13647            �6           2606    712525 1   col_masccl col_masccl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col_empty.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey;
       test_ladm_col_empty       postgres    false    2444    2405    13596            �6           2606    712535 5   col_masccl col_masccl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_col_empty       postgres    false    2470    2405    13739            �6           2606    712530 ,   col_masccl col_masccl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col_empty.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey;
       test_ladm_col_empty       postgres    false    2462    2405    13692            �6           2606    712540 5   col_masccl col_masccl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_col_empty       postgres    false    13745    2405    2471            �6           2606    712590 /   col_mascl col_mascl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col_empty.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey;
       test_ladm_col_empty       postgres    false    13596    2409    2444            �6           2606    712600 3   col_mascl col_mascl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col_empty.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_col_empty       postgres    false    2470    2409    13739            �6           2606    712595 *   col_mascl col_mascl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_col_empty.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey;
       test_ladm_col_empty       postgres    false    2462    2409    13692            �6           2606    712605 3   col_mascl col_mascl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col_empty.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_col_empty       postgres    false    2471    2409    13745            �6           2606    712495 (   col_menosccl col_menosccl_ccl_menos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl
    ADD CONSTRAINT col_menosccl_ccl_menos_fkey FOREIGN KEY (ccl_menos) REFERENCES test_ladm_col_empty.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl DROP CONSTRAINT col_menosccl_ccl_menos_fkey;
       test_ladm_col_empty       postgres    false    2404    2455    13647            �6           2606    712500 7   col_menosccl col_menosccl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey;
       test_ladm_col_empty       postgres    false    2404    2444    13596            �6           2606    712510 9   col_menosccl col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_col_empty       postgres    false    2404    2470    13739            �6           2606    712505 2   col_menosccl col_menosccl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey;
       test_ladm_col_empty       postgres    false    2462    2404    13692            �6           2606    712515 9   col_menosccl col_menosccl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_col_empty       postgres    false    13745    2404    2471            �6           2606    712570 5   col_menoscl col_menoscl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey;
       test_ladm_col_empty       postgres    false    2444    2408    13596            �6           2606    712580 7   col_menoscl col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_col_empty       postgres    false    13739    2408    2470            �6           2606    712575 0   col_menoscl col_menoscl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col_empty.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey;
       test_ladm_col_empty       postgres    false    2462    2408    13692            �6           2606    712585 7   col_menoscl col_menoscl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_col_empty       postgres    false    2408    2471    13745            �6           2606    712680 )   col_miembros col_miembros_agrupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_miembros
    ADD CONSTRAINT col_miembros_agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES test_ladm_col_empty.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_col_empty.col_miembros DROP CONSTRAINT col_miembros_agrupacion_fkey;
       test_ladm_col_empty       postgres    false    2443    2414    13591            �6           2606    712675 9   col_miembros col_miembros_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col_empty.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col_empty       postgres    false    2443    2414    13591            �6           2606    712670 7   col_miembros col_miembros_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col_empty.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_interesado_fkey;
       test_ladm_col_empty       postgres    false    13638    2414    2453            �6           2606    712560 "   col_puntoccl col_puntoccl_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_puntoccl
    ADD CONSTRAINT col_puntoccl_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_col_empty.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY test_ladm_col_empty.col_puntoccl DROP CONSTRAINT col_puntoccl_ccl_fkey;
       test_ladm_col_empty       postgres    false    2455    2406    13647            �6           2606    712550 4   col_puntoccl col_puntoccl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_col_empty.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col_empty.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey;
       test_ladm_col_empty       postgres    false    13663    2406    2459            �6           2606    712545 9   col_puntoccl col_puntoccl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_col_empty.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey;
       test_ladm_col_empty       postgres    false    2406    2466    13715            �6           2606    712555 4   col_puntoccl col_puntoccl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_col_empty.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col_empty.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey;
       test_ladm_col_empty       postgres    false    2460    2406    13676            �6           2606    712615 2   col_puntocl col_puntocl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_col_empty.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col_empty.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey;
       test_ladm_col_empty       postgres    false    2459    2410    13663            �6           2606    712610 7   col_puntocl col_puntocl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_col_empty.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey;
       test_ladm_col_empty       postgres    false    2466    2410    13715            �6           2606    712620 2   col_puntocl col_puntocl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_col_empty.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col_empty.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey;
       test_ladm_col_empty       postgres    false    2410    2460    13676            �6           2606    712425 4   col_puntofuente col_puntofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_puntofuente
    ADD CONSTRAINT col_puntofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_empty.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col_empty.col_puntofuente DROP CONSTRAINT col_puntofuente_fuente_espacial_fkey;
       test_ladm_col_empty       postgres    false    13628    2451    2399            �6           2606    712435 :   col_puntofuente col_puntofuente_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_col_empty.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col_empty.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey;
       test_ladm_col_empty       postgres    false    2459    2399    13663            �6           2606    712430 ?   col_puntofuente col_puntofuente_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_col_empty.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col_empty.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey;
       test_ladm_col_empty       postgres    false    2399    13715    2466            �6           2606    712440 :   col_puntofuente col_puntofuente_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_col_empty.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col_empty.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey;
       test_ladm_col_empty       postgres    false    13676    2460    2399            �6           2606    712410 @   col_relacionfuente col_relacionfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col_empty.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col_empty.col_relacionfuente DROP CONSTRAINT col_relacionfuente_fuente_administrativa_fkey;
       test_ladm_col_empty       postgres    false    13623    2450    2397            �6           2606    712480 K   col_relacionfuenteuespacial col_relacionfuenteuespcial_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_empty.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey;
       test_ladm_col_empty       postgres    false    13628    2451    2402            �6           2606    712640 F   col_responsablefuente col_responsablefuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col_empty.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_col_empty.col_responsablefuente DROP CONSTRAINT col_responsablefuente_fuente_administrativa_fkey;
       test_ladm_col_empty       postgres    false    2450    2412    13623            �6           2606    712650 K   col_responsablefuente col_responsablefuente_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col_empty.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col_empty       postgres    false    2443    2412    13591            �6           2606    712645 I   col_responsablefuente col_responsablefuente_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col_empty.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey;
       test_ladm_col_empty       postgres    false    2453    2412    13638            z6           2606    712370 6   col_rrrfuente col_rrrfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col_empty.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col_empty.col_rrrfuente DROP CONSTRAINT col_rrrfuente_fuente_administrativa_fkey;
       test_ladm_col_empty       postgres    false    2450    13623    2395            {6           2606    712380 /   col_rrrfuente col_rrrfuente_rrr_lc_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey FOREIGN KEY (rrr_lc_derecho) REFERENCES test_ladm_col_empty.lc_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col_empty.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey;
       test_ladm_col_empty       postgres    false    2395    2447    13611            |6           2606    712375 3   col_rrrfuente col_rrrfuente_rrr_lc_restriccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey FOREIGN KEY (rrr_lc_restriccion) REFERENCES test_ladm_col_empty.lc_restriccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col_empty.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey;
       test_ladm_col_empty       postgres    false    13686    2395    2461            �6           2606    712655 <   col_topografofuente col_topografofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_topografofuente
    ADD CONSTRAINT col_topografofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_empty.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_empty.col_topografofuente DROP CONSTRAINT col_topografofuente_fuente_espacial_fkey;
       test_ladm_col_empty       postgres    false    2413    13628    2451            �6           2606    712665 G   col_topografofuente col_topografofuente_topografo_lc_agrpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey FOREIGN KEY (topografo_lc_agrupacioninteresados) REFERENCES test_ladm_col_empty.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_col_empty.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey;
       test_ladm_col_empty       postgres    false    2413    2443    13591            �6           2606    712660 D   col_topografofuente col_topografofuente_topografo_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey FOREIGN KEY (topografo_lc_interesado) REFERENCES test_ladm_col_empty.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_col_empty.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey;
       test_ladm_col_empty       postgres    false    2453    2413    13638            e6           2606    712264 E   col_transformacion col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey FOREIGN KEY (lc_puntocontrol_transformacion_y_resultado) REFERENCES test_ladm_col_empty.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col_empty.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey;
       test_ladm_col_empty       postgres    false    2459    13663    2387            f6           2606    712269 E   col_transformacion col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolindero_transformacion_y_resultado) REFERENCES test_ladm_col_empty.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col_empty.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey;
       test_ladm_col_empty       postgres    false    2387    2460    13676            g6           2606    712274 E   col_transformacion col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolevantamiento_transformacion_y_resultado) REFERENCES test_ladm_col_empty.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col_empty.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey;
       test_ladm_col_empty       postgres    false    2466    13715    2387            }6           2606    712405 %   col_uebaunit col_uebaunit_baunit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit
    ADD CONSTRAINT col_uebaunit_baunit_fkey FOREIGN KEY (baunit) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit DROP CONSTRAINT col_uebaunit_baunit_fkey;
       test_ladm_col_empty       postgres    false    2396    2458    13658            ~6           2606    712385 1   col_uebaunit col_uebaunit_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_construccion_fkey;
       test_ladm_col_empty       postgres    false    2444    2396    13596            6           2606    712395 8   col_uebaunit col_uebaunit_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey;
       test_ladm_col_empty       postgres    false    2396    13739    2470            �6           2606    712390 ,   col_uebaunit col_uebaunit_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_terreno_fkey;
       test_ladm_col_empty       postgres    false    2396    2462    13692            �6           2606    712400 7   col_uebaunit col_uebaunit_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey;
       test_ladm_col_empty       postgres    false    2471    2396    13745            �6           2606    712465 .   col_uefuente col_uefuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente
    ADD CONSTRAINT col_uefuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_empty.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente DROP CONSTRAINT col_uefuente_fuente_espacial_fkey;
       test_ladm_col_empty       postgres    false    2400    2451    13628            �6           2606    712445 1   col_uefuente col_uefuente_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_construccion_fkey;
       test_ladm_col_empty       postgres    false    2444    2400    13596            �6           2606    712455 8   col_uefuente col_uefuente_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey;
       test_ladm_col_empty       postgres    false    13739    2470    2400            �6           2606    712450 ,   col_uefuente col_uefuente_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_terreno_fkey;
       test_ladm_col_empty       postgres    false    13692    2400    2462            �6           2606    712460 7   col_uefuente col_uefuente_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey;
       test_ladm_col_empty       postgres    false    2400    13745    2471            v6           2606    712350 6   col_ueuegrupo col_ueuegrupo_parte_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey FOREIGN KEY (parte_lc_construccion) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col_empty.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey;
       test_ladm_col_empty       postgres    false    2394    13596    2444            w6           2606    712360 ;   col_ueuegrupo col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey FOREIGN KEY (parte_lc_servidumbretransito) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey;
       test_ladm_col_empty       postgres    false    13739    2394    2470            x6           2606    712355 1   col_ueuegrupo col_ueuegrupo_parte_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey FOREIGN KEY (parte_lc_terreno) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col_empty.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey;
       test_ladm_col_empty       postgres    false    13692    2394    2462            y6           2606    712365 ;   col_ueuegrupo col_ueuegrupo_parte_lc_unidadconstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey FOREIGN KEY (parte_lc_unidadconstruccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey;
       test_ladm_col_empty       postgres    false    2471    2394    13745            �6           2606    712415 <   col_unidadfuente col_unidadfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col_empty.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_empty.col_unidadfuente DROP CONSTRAINT col_unidadfuente_fuente_administrativa_fkey;
       test_ladm_col_empty       postgres    false    2450    13623    2398            �6           2606    712420 -   col_unidadfuente col_unidadfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col_empty.col_unidadfuente DROP CONSTRAINT col_unidadfuente_unidad_fkey;
       test_ladm_col_empty       postgres    false    2398    2458    13658            q6           2606    712330 >   col_volumenvalor col_volumenvalor_lc_construccion_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey FOREIGN KEY (lc_construccion_volumen) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey;
       test_ladm_col_empty       postgres    false    2393    2444    13596            r6           2606    712340 A   col_volumenvalor col_volumenvalor_lc_servidumbretranst_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey FOREIGN KEY (lc_servidumbretransito_volumen) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey;
       test_ladm_col_empty       postgres    false    2393    2470    13739            s6           2606    712335 9   col_volumenvalor col_volumenvalor_lc_terreno_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey FOREIGN KEY (lc_terreno_volumen) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey;
       test_ladm_col_empty       postgres    false    2393    2462    13692            t6           2606    712345 A   col_volumenvalor col_volumenvalor_lc_unidadconstruccin_vlmen_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey FOREIGN KEY (lc_unidadconstruccion_volumen) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey;
       test_ladm_col_empty       postgres    false    13745    2471    2393            u6           2606    712325 +   col_volumenvalor col_volumenvalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_empty.col_volumentipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col_empty.col_volumenvalor DROP CONSTRAINT col_volumenvalor_tipo_fkey;
       test_ladm_col_empty       postgres    false    2532    2393    13874            n6           2606    712319 5   extarchivo extarchivo_lc_fuenteespacl_xt_rchv_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extarchivo
    ADD CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteespacial_ext_archivo_id) REFERENCES test_ladm_col_empty.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.extarchivo DROP CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey;
       test_ladm_col_empty       postgres    false    2451    2392    13628            o6           2606    712314 5   extarchivo extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extarchivo
    ADD CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteadministrtiva_ext_archivo_id) REFERENCES test_ladm_col_empty.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.extarchivo DROP CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey;
       test_ladm_col_empty       postgres    false    2450    13623    2392            p6           2606    712309 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_ladm_col_empty.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
       test_ladm_col_empty       postgres    false    13568    2392    2437            X6           2606    712202 2   extdireccion extdireccion_clase_via_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_clase_via_principal_fkey FOREIGN KEY (clase_via_principal) REFERENCES test_ladm_col_empty.extdireccion_clase_via_principal(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_clase_via_principal_fkey;
       test_ladm_col_empty       postgres    false    2385    13884    2537            Y6           2606    712222 9   extdireccion extdireccion_extinteresado_ext_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey FOREIGN KEY (extinteresado_ext_direccion_id) REFERENCES test_ladm_col_empty.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey;
       test_ladm_col_empty       postgres    false    2385    2390    13366            Z6           2606    712217 9   extdireccion extdireccion_extndddfccnfsc_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey FOREIGN KEY (extunidadedificcnfsica_ext_direccion_id) REFERENCES test_ladm_col_empty.extunidadedificacionfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey;
       test_ladm_col_empty       postgres    false    2388    13356    2385            [6           2606    712227 9   extdireccion extdireccion_lc_construccin_xt_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey FOREIGN KEY (lc_construccion_ext_direccion_id) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey;
       test_ladm_col_empty       postgres    false    2444    13596    2385            \6           2606    712247 9   extdireccion extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey FOREIGN KEY (lc_unidadconstruccion_ext_direccion_id) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey;
       test_ladm_col_empty       postgres    false    2385    13745    2471            ]6           2606    712232 2   extdireccion extdireccion_lc_predio_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_lc_predio_direccion_fkey FOREIGN KEY (lc_predio_direccion) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_lc_predio_direccion_fkey;
       test_ladm_col_empty       postgres    false    13658    2385    2458            ^6           2606    712242 9   extdireccion extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey FOREIGN KEY (lc_servidumbretransito_ext_direccion_id) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey;
       test_ladm_col_empty       postgres    false    2470    2385    13739            _6           2606    712237 9   extdireccion extdireccion_lc_terreno_ext_direccin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey FOREIGN KEY (lc_terreno_ext_direccion_id) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey;
       test_ladm_col_empty       postgres    false    2385    2462    13692            `6           2606    712207 ,   extdireccion extdireccion_sector_ciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_sector_ciudad_fkey FOREIGN KEY (sector_ciudad) REFERENCES test_ladm_col_empty.extdireccion_sector_ciudad(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_sector_ciudad_fkey;
       test_ladm_col_empty       postgres    false    2385    13826    2508            a6           2606    712212 ,   extdireccion extdireccion_sector_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_sector_predio_fkey FOREIGN KEY (sector_predio) REFERENCES test_ladm_col_empty.extdireccion_sector_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_sector_predio_fkey;
       test_ladm_col_empty       postgres    false    2385    2480    13770            b6           2606    712197 -   extdireccion extdireccion_tipo_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extdireccion
    ADD CONSTRAINT extdireccion_tipo_direccion_fkey FOREIGN KEY (tipo_direccion) REFERENCES test_ladm_col_empty.extdireccion_tipo_direccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col_empty.extdireccion DROP CONSTRAINT extdireccion_tipo_direccion_fkey;
       test_ladm_col_empty       postgres    false    2385    2527    13864            k6           2606    712294 ;   extinteresado extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.extinteresado
    ADD CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey FOREIGN KEY (extredserviciosfisica_ext_interesado_administrador_id) REFERENCES test_ladm_col_empty.extredserviciosfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.extinteresado DROP CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey;
       test_ladm_col_empty       postgres    false    2390    2391    13368            l6           2606    712299 ;   extinteresado extinteresado_lc_agrupacionntrsds_xt_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extinteresado
    ADD CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey FOREIGN KEY (lc_agrupacionintersdos_ext_pid) REFERENCES test_ladm_col_empty.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.extinteresado DROP CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey;
       test_ladm_col_empty       postgres    false    2390    13591    2443            m6           2606    712304 6   extinteresado extinteresado_lc_interesado_ext_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.extinteresado
    ADD CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey FOREIGN KEY (lc_interesado_ext_pid) REFERENCES test_ladm_col_empty.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col_empty.extinteresado DROP CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey;
       test_ladm_col_empty       postgres    false    2453    13638    2390            c6           2606    712254 1   fraccion fraccion_col_miembros_participacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.fraccion
    ADD CONSTRAINT fraccion_col_miembros_participacion_fkey FOREIGN KEY (col_miembros_participacion) REFERENCES test_ladm_col_empty.col_miembros(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col_empty.fraccion DROP CONSTRAINT fraccion_col_miembros_participacion_fkey;
       test_ladm_col_empty       postgres    false    2414    2386    13489            d6           2606    712259 1   fraccion fraccion_lc_predio_copropidd_cfcnte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.fraccion
    ADD CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey FOREIGN KEY (lc_predio_copropiedad_coeficiente) REFERENCES test_ladm_col_empty.lc_predio_copropiedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col_empty.fraccion DROP CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey;
       test_ladm_col_empty       postgres    false    2386    2468    13729            �6           2606    712686 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_ladm_col_empty.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
       test_ladm_col_empty       postgres    false    2431    2416    13545            �6           2606    712702 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_col_empty.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_empty.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
       test_ladm_col_empty       postgres    false    2433    2420    13552            �6           2606    712691 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col_empty.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col_empty.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
       test_ladm_col_empty       postgres    false    2486    2420    13782            �6           2606    712781 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_ladm_col_empty.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col_empty.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
       test_ladm_col_empty       postgres    false    2434    2433    13552            �6           2606    712786 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_ladm_col_empty.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col_empty.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
       test_ladm_col_empty       postgres    false    13552    2433    2434            �6           2606    712714 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_col_empty.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_empty.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
       test_ladm_col_empty       postgres    false    2421    2433    13552            �6           2606    712724 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_ladm_col_empty.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
       test_ladm_col_empty       postgres    false    2421    2422    13512            �6           2606    712729 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_ladm_col_empty.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
       test_ladm_col_empty       postgres    false    2433    2423    13552            �6           2606    712734 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_ladm_col_empty.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col_empty.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
       test_ladm_col_empty       postgres    false    2424    2433    13552            �6           2606    712770 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_col_empty.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
       test_ladm_col_empty       postgres    false    2525    2433    13860            �6           2606    712775 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_ladm_col_empty.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_col_empty.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
       test_ladm_col_empty       postgres    false    2500    13810    2433            �6           2606    712739 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_col_empty.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
       test_ladm_col_empty       postgres    false    13552    2427    2433            �6           2606    712747 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_col_empty.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY test_ladm_col_empty.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
       test_ladm_col_empty       postgres    false    2433    2430    13552            �6           2606    712765 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_ladm_col_empty.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col_empty.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
       test_ladm_col_empty       postgres    false    2420    2431    13508            �6           2606    712752 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col_empty.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_col_empty.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_col_empty       postgres    false    2486    2431    13782            P6           2606    712154 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_ladm_col_empty.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
       test_ladm_col_empty       postgres    false    13314    2380    2379            Q6           2606    712159 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_ladm_col_empty.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
       test_ladm_col_empty       postgres    false    13320    2381    2382            h6           2606    712289 &   imagen imagen_extinteresado_firma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.imagen
    ADD CONSTRAINT imagen_extinteresado_firma_fkey FOREIGN KEY (extinteresado_firma) REFERENCES test_ladm_col_empty.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col_empty.imagen DROP CONSTRAINT imagen_extinteresado_firma_fkey;
       test_ladm_col_empty       postgres    false    2389    13366    2390            i6           2606    712284 +   imagen imagen_extinteresado_fotografia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.imagen
    ADD CONSTRAINT imagen_extinteresado_fotografia_fkey FOREIGN KEY (extinteresado_fotografia) REFERENCES test_ladm_col_empty.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col_empty.imagen DROP CONSTRAINT imagen_extinteresado_fotografia_fkey;
       test_ladm_col_empty       postgres    false    2389    2390    13366            j6           2606    712279 -   imagen imagen_extinteresado_huell_dctlar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.imagen
    ADD CONSTRAINT imagen_extinteresado_huell_dctlar_fkey FOREIGN KEY (extinteresado_huella_dactilar) REFERENCES test_ladm_col_empty.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col_empty.imagen DROP CONSTRAINT imagen_extinteresado_huell_dctlar_fkey;
       test_ladm_col_empty       postgres    false    2390    2389    13366            �6           2606    712857 ;   ini_predioinsumos ini_predioinsumos_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_col_empty.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey;
       test_ladm_col_empty       postgres    false    2433    2442    13552            �6           2606    712862 <   ini_predioinsumos ini_predioinsumos_snr_predio_juridico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey FOREIGN KEY (snr_predio_juridico) REFERENCES test_ladm_col_empty.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_empty.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey;
       test_ladm_col_empty       postgres    false    2442    13579    2440            �6           2606    712852 <   ini_predioinsumos ini_predioinsumos_tipo_emparejamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey FOREIGN KEY (tipo_emparejamiento) REFERENCES test_ladm_col_empty.ini_emparejamientotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_empty.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey;
       test_ladm_col_empty       postgres    false    13792    2442    2491            �6           2606    712867 ;   lc_agrupacioninteresados lc_agrupacioninteresados_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_empty.col_grupointeresadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_tipo_fkey;
       test_ladm_col_empty       postgres    false    13814    2502    2443            7           2606    713198 R   lc_calificacionconvencional lc_calificacionconvencinal_lc_unidad_construccion_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey;
       test_ladm_col_empty       postgres    false    13745    2463    2471            7           2606    713192 J   lc_calificacionconvencional lc_calificacionconvencinal_tipo_calificar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey FOREIGN KEY (tipo_calificar) REFERENCES test_ladm_col_empty.lc_calificartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey;
       test_ladm_col_empty       postgres    false    2534    2463    13878            7           2606    713208 T   lc_calificacionnoconvencional lc_calificacionnoconvncnal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey;
       test_ladm_col_empty       postgres    false    2464    13745    2471            7           2606    713203 H   lc_calificacionnoconvencional lc_calificacionnoconvncnal_tipo_anexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey FOREIGN KEY (tipo_anexo) REFERENCES test_ladm_col_empty.lc_anexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_col_empty.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey;
       test_ladm_col_empty       postgres    false    13858    2524    2464            �6           2606    712890 .   lc_construccion lc_construccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_construccion
    ADD CONSTRAINT lc_construccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col_empty.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_empty.lc_construccion DROP CONSTRAINT lc_construccion_dimension_fkey;
       test_ladm_col_empty       postgres    false    2494    2444    13798            �6           2606    712895 8   lc_construccion lc_construccion_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_construccion
    ADD CONSTRAINT lc_construccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col_empty.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_empty.lc_construccion DROP CONSTRAINT lc_construccion_relacion_superficie_fkey;
       test_ladm_col_empty       postgres    false    2509    2444    13828            �6           2606    712872 6   lc_construccion lc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col_empty.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col_empty.lc_construccion DROP CONSTRAINT lc_construccion_tipo_construccion_fkey;
       test_ladm_col_empty       postgres    false    2444    2536    13882            �6           2606    712877 1   lc_construccion lc_construccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_col_empty.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col_empty.lc_construccion DROP CONSTRAINT lc_construccion_tipo_dominio_fkey;
       test_ladm_col_empty       postgres    false    2444    13872    2531            �6           2606    712910 =   lc_contactovisita lc_contactovisita_lc_datos_adicionales_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey FOREIGN KEY (lc_datos_adicionales) REFERENCES test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_empty.lc_contactovisita DROP CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey;
       test_ladm_col_empty       postgres    false    13703    2465    2445            �6           2606    712905 <   lc_contactovisita lc_contactovisita_relacion_con_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_relacion_con_predio_fkey FOREIGN KEY (relacion_con_predio) REFERENCES test_ladm_col_empty.lc_relacionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_empty.lc_contactovisita DROP CONSTRAINT lc_contactovisita_relacion_con_predio_fkey;
       test_ladm_col_empty       postgres    false    13812    2445    2501            �6           2606    712900 C   lc_contactovisita lc_contactovisita_tipo_documento_quien_tndio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey FOREIGN KEY (tipo_documento_quien_atendio) REFERENCES test_ladm_col_empty.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col_empty.lc_contactovisita DROP CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey;
       test_ladm_col_empty       postgres    false    2445    2517    13844            �6           2606    712923 8   lc_datosphcondominio lc_datosphcondominio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_empty.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_lc_predio_fkey;
       test_ladm_col_empty       postgres    false    2446    13658    2458            7           2606    713229 Y   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_categoria_suelo_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey FOREIGN KEY (categoria_suelo) REFERENCES test_ladm_col_empty.lc_categoriasuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey;
       test_ladm_col_empty       postgres    false    13790    2490    2465            7           2606    713224 U   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_clase_suelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey FOREIGN KEY (clase_suelo) REFERENCES test_ladm_col_empty.lc_clasesuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey;
       test_ladm_col_empty       postgres    false    13808    2499    2465            7           2606    713219 _   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_destinacion_economica_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey FOREIGN KEY (destinacion_economica) REFERENCES test_ladm_col_empty.lc_destinacioneconomicatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey;
       test_ladm_col_empty       postgres    false    13784    2487    2465            7           2606    713244 S   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey;
       test_ladm_col_empty       postgres    false    2458    13658    2465            7           2606    713214 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey    FK CONSTRAINT     8  ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey FOREIGN KEY (procedimiento_catastral_registral) REFERENCES test_ladm_col_empty.lc_procedimientocatastralregistraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey;
       test_ladm_col_empty       postgres    false    2498    2465    13806            7           2606    713239 Z   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_resultado_visita_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey FOREIGN KEY (resultado_visita) REFERENCES test_ladm_col_empty.lc_resultadovisitatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey;
       test_ladm_col_empty       postgres    false    2505    13820    2465            7           2606    713234 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey    FK CONSTRAINT     %  ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey FOREIGN KEY (tipo_documento_reconocedor) REFERENCES test_ladm_col_empty.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey;
       test_ladm_col_empty       postgres    false    2465    13844    2517            �6           2606    712939 5   lc_derecho lc_derecho_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col_empty.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col_empty       postgres    false    13591    2447    2443            �6           2606    712934 3   lc_derecho lc_derecho_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col_empty.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col_empty.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_interesado_fkey;
       test_ladm_col_empty       postgres    false    13638    2447    2453            �6           2606    712928    lc_derecho lc_derecho_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_derecho
    ADD CONSTRAINT lc_derecho_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_empty.lc_derechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 V   ALTER TABLE ONLY test_ladm_col_empty.lc_derecho DROP CONSTRAINT lc_derecho_tipo_fkey;
       test_ladm_col_empty       postgres    false    2496    13802    2447            �6           2606    712944 !   lc_derecho lc_derecho_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_derecho
    ADD CONSTRAINT lc_derecho_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 X   ALTER TABLE ONLY test_ladm_col_empty.lc_derecho DROP CONSTRAINT lc_derecho_unidad_fkey;
       test_ladm_col_empty       postgres    false    2447    13658    2458            �6           2606    712949 O   lc_estructuranovedadfmi lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey    FK CONSTRAINT     '  ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_fmi) REFERENCES test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey;
       test_ladm_col_empty       postgres    false    13703    2448    2465            �6           2606    712959 \   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey    FK CONSTRAINT     B  ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_numeros_prediales) REFERENCES test_ladm_col_empty.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey;
       test_ladm_col_empty       postgres    false    2449    2465    13703            �6           2606    712954 N   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_tipo_novedad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey FOREIGN KEY (tipo_novedad) REFERENCES test_ladm_col_empty.lc_estructuranovedadnumeropredial_tipo_novedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey;
       test_ladm_col_empty       postgres    false    2479    13768    2449            �6           2606    712969 J   lc_fuenteadministrativa lc_fuenteadministrativa_estado_disponibilidad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_col_empty.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey;
       test_ladm_col_empty       postgres    false    2507    13824    2450            �6           2606    712964 9   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_empty.lc_fuenteadministrativatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_fkey;
       test_ladm_col_empty       postgres    false    2528    2450    13866            �6           2606    712974 C   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_col_empty.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey;
       test_ladm_col_empty       postgres    false    2492    2450    13794            �6           2606    712984 >   lc_fuenteespacial lc_fuenteespacial_estado_disponibilidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_col_empty.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey;
       test_ladm_col_empty       postgres    false    13824    2451    2507            �6           2606    712979 -   lc_fuenteespacial lc_fuenteespacial_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_empty.col_fuenteespacialtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_fkey;
       test_ladm_col_empty       postgres    false    2451    2497    13804            �6           2606    712989 7   lc_fuenteespacial lc_fuenteespacial_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_col_empty.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_principal_fkey;
       test_ladm_col_empty       postgres    false    2451    13794    2492            �6           2606    712994 A   lc_grupocalificacion lc_grupocalificacion_clase_calificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey FOREIGN KEY (clase_calificacion) REFERENCES test_ladm_col_empty.lc_clasecalificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_col_empty.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey;
       test_ladm_col_empty       postgres    false    2538    13886    2452            �6           2606    712999 ;   lc_grupocalificacion lc_grupocalificacion_conservacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_conservacion_fkey FOREIGN KEY (conservacion) REFERENCES test_ladm_col_empty.lc_estadoconservaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_conservacion_fkey;
       test_ladm_col_empty       postgres    false    2544    13898    2452            �6           2606    713005 I   lc_grupocalificacion lc_grupocalificacion_lc_calificacion_convencnal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey FOREIGN KEY (lc_calificacion_convencional) REFERENCES test_ladm_col_empty.lc_calificacionconvencional(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey;
       test_ladm_col_empty       postgres    false    2452    2463    13697            �6           2606    713025 -   lc_interesado lc_interesado_grupo_etnico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_interesado
    ADD CONSTRAINT lc_interesado_grupo_etnico_fkey FOREIGN KEY (grupo_etnico) REFERENCES test_ladm_col_empty.lc_grupoetnicotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col_empty.lc_interesado DROP CONSTRAINT lc_interesado_grupo_etnico_fkey;
       test_ladm_col_empty       postgres    false    2453    13800    2495            �6           2606    713020 %   lc_interesado lc_interesado_sexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_interesado
    ADD CONSTRAINT lc_interesado_sexo_fkey FOREIGN KEY (sexo) REFERENCES test_ladm_col_empty.lc_sexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_col_empty.lc_interesado DROP CONSTRAINT lc_interesado_sexo_fkey;
       test_ladm_col_empty       postgres    false    2510    2453    13830            �6           2606    713015 /   lc_interesado lc_interesado_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col_empty.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col_empty.lc_interesado DROP CONSTRAINT lc_interesado_tipo_documento_fkey;
       test_ladm_col_empty       postgres    false    2453    2517    13844            �6           2606    713010 %   lc_interesado lc_interesado_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_empty.lc_interesadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_col_empty.lc_interesado DROP CONSTRAINT lc_interesado_tipo_fkey;
       test_ladm_col_empty       postgres    false    2453    2504    13818            �6           2606    713030 >   lc_interesadocontacto lc_interesadocontacto_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_lc_interesado_fkey FOREIGN KEY (lc_interesado) REFERENCES test_ladm_col_empty.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_empty.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_lc_interesado_fkey;
       test_ladm_col_empty       postgres    false    2454    13638    2453            �6           2606    713042 F   lc_objetoconstruccion lc_objetoconstruccion_lc_grupo_calificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey FOREIGN KEY (lc_grupo_calificacion) REFERENCES test_ladm_col_empty.lc_grupocalificacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_col_empty.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey;
       test_ladm_col_empty       postgres    false    2452    2456    13635            �6           2606    713036 I   lc_objetoconstruccion lc_objetoconstruccion_tipo_objeto_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey FOREIGN KEY (tipo_objeto_construccion) REFERENCES test_ladm_col_empty.lc_objetoconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey;
       test_ladm_col_empty       postgres    false    2543    13896    2456            �6           2606    713055 G   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_col_empty.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey;
       test_ladm_col_empty       postgres    false    2457    2458    13658            �6           2606    713047 I   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_tipo_oferta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey FOREIGN KEY (tipo_oferta) REFERENCES test_ladm_col_empty.lc_ofertatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey;
       test_ladm_col_empty       postgres    false    13780    2485    2457            �6           2606    713066 )   lc_predio lc_predio_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_predio
    ADD CONSTRAINT lc_predio_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_col_empty.lc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_col_empty.lc_predio DROP CONSTRAINT lc_predio_condicion_predio_fkey;
       test_ladm_col_empty       postgres    false    2539    13888    2458            (7           2606    713312 <   lc_predio_copropiedad lc_predio_copropiedad_copropiedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_copropiedad_fkey FOREIGN KEY (copropiedad) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_copropiedad_fkey;
       test_ladm_col_empty       postgres    false    2468    13658    2458            )7           2606    713307 7   lc_predio_copropiedad lc_predio_copropiedad_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_predio_fkey FOREIGN KEY (predio) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_predio_fkey;
       test_ladm_col_empty       postgres    false    2468    13658    2458            *7           2606    713317 N   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_ini_predio_insumos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey FOREIGN KEY (ini_predio_insumos) REFERENCES test_ladm_col_empty.ini_predioinsumos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey;
       test_ladm_col_empty       postgres    false    13587    2442    2469            +7           2606    713322 E   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col_empty.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey;
       test_ladm_col_empty       postgres    false    13658    2458    2469            �6           2606    713061    lc_predio lc_predio_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_predio
    ADD CONSTRAINT lc_predio_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_empty.lc_prediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 T   ALTER TABLE ONLY test_ladm_col_empty.lc_predio DROP CONSTRAINT lc_predio_tipo_fkey;
       test_ladm_col_empty       postgres    false    13846    2518    2458            �6           2606    713088 5   lc_puntocontrol lc_puntocontrol_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_col_empty.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_metodoproduccion_fkey;
       test_ladm_col_empty       postgres    false    13894    2542    2459            �6           2606    713083 ;   lc_puntocontrol lc_puntocontrol_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_col_empty.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey;
       test_ladm_col_empty       postgres    false    2459    2506    13822            �6           2606    713071 .   lc_puntocontrol lc_puntocontrol_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_col_empty.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_puntotipo_fkey;
       test_ladm_col_empty       postgres    false    13832    2459    2511            �6           2606    713076 7   lc_puntocontrol lc_puntocontrol_tipo_punto_control_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey FOREIGN KEY (tipo_punto_control) REFERENCES test_ladm_col_empty.lc_puntocontroltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey;
       test_ladm_col_empty       postgres    false    13880    2535    2459            �6           2606    713093 7   lc_puntocontrol lc_puntocontrol_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey;
       test_ladm_col_empty       postgres    false    2444    13596    2459             7           2606    713103 >   lc_puntocontrol lc_puntocontrol_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey;
       test_ladm_col_empty       postgres    false    13739    2470    2459            7           2606    713098 2   lc_puntocontrol lc_puntocontrol_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey;
       test_ladm_col_empty       postgres    false    2462    13692    2459            7           2606    713108 =   lc_puntocontrol lc_puntocontrol_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_empty.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey;
       test_ladm_col_empty       postgres    false    13745    2459    2471            7           2606    713259 C   lc_puntolevantamiento lc_puntolevantamiento_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_col_empty.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey;
       test_ladm_col_empty       postgres    false    2493    2466    13796            7           2606    713271 A   lc_puntolevantamiento lc_puntolevantamiento_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_col_empty.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey;
       test_ladm_col_empty       postgres    false    13894    2466    2542            7           2606    713266 G   lc_puntolevantamiento lc_puntolevantamiento_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_col_empty.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey;
       test_ladm_col_empty       postgres    false    2466    2506    13822             7           2606    713249 :   lc_puntolevantamiento lc_puntolevantamiento_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_col_empty.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_puntotipo_fkey;
       test_ladm_col_empty       postgres    false    13832    2466    2511            !7           2606    713254 I   lc_puntolevantamiento lc_puntolevantamiento_tipo_punto_levantamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey FOREIGN KEY (tipo_punto_levantamiento) REFERENCES test_ladm_col_empty.lc_puntolevtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey;
       test_ladm_col_empty       postgres    false    13854    2522    2466            "7           2606    713276 C   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey;
       test_ladm_col_empty       postgres    false    13596    2444    2466            #7           2606    713286 J   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey;
       test_ladm_col_empty       postgres    false    2466    13739    2470            $7           2606    713281 >   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey;
       test_ladm_col_empty       postgres    false    13692    2466    2462            %7           2606    713291 I   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey;
       test_ladm_col_empty       postgres    false    2466    2471    13745            7           2606    713118 ,   lc_puntolindero lc_puntolindero_acuerdo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_acuerdo_fkey FOREIGN KEY (acuerdo) REFERENCES test_ladm_col_empty.lc_acuerdotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero DROP CONSTRAINT lc_puntolindero_acuerdo_fkey;
       test_ladm_col_empty       postgres    false    2523    2460    13856            7           2606    713123 7   lc_puntolindero lc_puntolindero_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_col_empty.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero DROP CONSTRAINT lc_puntolindero_fotoidentificacion_fkey;
       test_ladm_col_empty       postgres    false    2493    2460    13796            7           2606    713135 5   lc_puntolindero lc_puntolindero_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_col_empty.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero DROP CONSTRAINT lc_puntolindero_metodoproduccion_fkey;
       test_ladm_col_empty       postgres    false    13894    2460    2542            7           2606    713130 ;   lc_puntolindero lc_puntolindero_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_col_empty.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero DROP CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey;
       test_ladm_col_empty       postgres    false    2506    13822    2460            7           2606    713113 .   lc_puntolindero lc_puntolindero_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_col_empty.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero DROP CONSTRAINT lc_puntolindero_puntotipo_fkey;
       test_ladm_col_empty       postgres    false    2460    13832    2511            7           2606    713140 7   lc_puntolindero lc_puntolindero_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey;
       test_ladm_col_empty       postgres    false    2444    13596    2460            	7           2606    713150 >   lc_puntolindero lc_puntolindero_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col_empty.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey;
       test_ladm_col_empty       postgres    false    2470    2460    13739            
7           2606    713145 2   lc_puntolindero lc_puntolindero_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col_empty.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey;
       test_ladm_col_empty       postgres    false    13692    2460    2462            7           2606    713155 =   lc_puntolindero lc_puntolindero_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_empty.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey;
       test_ladm_col_empty       postgres    false    2460    2471    13745            7           2606    713170 =   lc_restriccion lc_restriccion_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col_empty.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_empty.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col_empty       postgres    false    2443    2461    13591            7           2606    713165 ;   lc_restriccion lc_restriccion_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col_empty.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_empty.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey;
       test_ladm_col_empty       postgres    false    13638    2461    2453            7           2606    713160 '   lc_restriccion lc_restriccion_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_restriccion
    ADD CONSTRAINT lc_restriccion_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_empty.lc_restricciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_col_empty.lc_restriccion DROP CONSTRAINT lc_restriccion_tipo_fkey;
       test_ladm_col_empty       postgres    false    2520    2461    13850            7           2606    713175 )   lc_restriccion lc_restriccion_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_restriccion
    ADD CONSTRAINT lc_restriccion_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col_empty.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_col_empty.lc_restriccion DROP CONSTRAINT lc_restriccion_unidad_fkey;
       test_ladm_col_empty       postgres    false    2461    2458    13658            ,7           2606    713328 <   lc_servidumbretransito lc_servidumbretransito_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col_empty.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_empty.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_dimension_fkey;
       test_ladm_col_empty       postgres    false    2494    13798    2470            -7           2606    713333 F   lc_servidumbretransito lc_servidumbretransito_relacion_superficie_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_col_empty.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col_empty.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_col_empty.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey;
       test_ladm_col_empty       postgres    false    2470    2509    13828            7           2606    713182 $   lc_terreno lc_terreno_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_terreno
    ADD CONSTRAINT lc_terreno_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col_empty.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY test_ladm_col_empty.lc_terreno DROP CONSTRAINT lc_terreno_dimension_fkey;
       test_ladm_col_empty       postgres    false    2462    2494    13798            7           2606    713187 .   lc_terreno lc_terreno_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_terreno
    ADD CONSTRAINT lc_terreno_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col_empty.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_empty.lc_terreno DROP CONSTRAINT lc_terreno_relacion_superficie_fkey;
       test_ladm_col_empty       postgres    false    13828    2462    2509            &7           2606    713301 M   lc_tipologiaconstruccion lc_tipologiaconstruccion_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_col_empty.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey;
       test_ladm_col_empty       postgres    false    2467    2471    13745            '7           2606    713296 E   lc_tipologiaconstruccion lc_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_ladm_col_empty.lc_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col_empty.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey;
       test_ladm_col_empty       postgres    false    2467    13870    2530            .7           2606    713378 :   lc_unidadconstruccion lc_unidadconstruccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col_empty.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_dimension_fkey;
       test_ladm_col_empty       postgres    false    13798    2471    2494            /7           2606    713373 @   lc_unidadconstruccion lc_unidadconstruccion_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey FOREIGN KEY (lc_construccion) REFERENCES test_ladm_col_empty.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey;
       test_ladm_col_empty       postgres    false    2444    2471    13596            07           2606    713383 D   lc_unidadconstruccion lc_unidadconstruccion_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col_empty.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey;
       test_ladm_col_empty       postgres    false    2471    2509    13828            17           2606    713343 B   lc_unidadconstruccion lc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col_empty.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_col_empty       postgres    false    13882    2471    2536            27           2606    713338 =   lc_unidadconstruccion lc_unidadconstruccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_col_empty.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey;
       test_ladm_col_empty       postgres    false    13872    2531    2471            37           2606    713353 <   lc_unidadconstruccion lc_unidadconstruccion_tipo_planta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey FOREIGN KEY (tipo_planta) REFERENCES test_ladm_col_empty.lc_construccionplantatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey;
       test_ladm_col_empty       postgres    false    2512    13834    2471            47           2606    713348 I   lc_unidadconstruccion lc_unidadconstruccion_tipo_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey FOREIGN KEY (tipo_unidad_construccion) REFERENCES test_ladm_col_empty.lc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey;
       test_ladm_col_empty       postgres    false    2514    13838    2471            57           2606    713363 4   lc_unidadconstruccion lc_unidadconstruccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_ladm_col_empty.lc_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col_empty.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_uso_fkey;
       test_ladm_col_empty       postgres    false    2471    2526    13862            �6           2606    712792 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_ladm_col_empty.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_empty.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
       test_ladm_col_empty       postgres    false    13868    2529    2435            �6           2606    712797 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_ladm_col_empty.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col_empty.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
       test_ladm_col_empty       postgres    false    13571    2435    2438            �6           2606    712802 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_ladm_col_empty.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col_empty.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
       test_ladm_col_empty       postgres    false    2440    2435    13579            �6           2606    712807 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT     '  ALTER TABLE ONLY test_ladm_col_empty.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_ladm_col_empty.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_empty.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
       test_ladm_col_empty       postgres    false    13579    2440    2436            �6           2606    712812 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col_empty.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col_empty.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
       test_ladm_col_empty       postgres    false    13772    2481    2437            �6           2606    712817 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col_empty.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_empty.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
       test_ladm_col_empty       postgres    false    13772    2481    2438            �6           2606    712832 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_ladm_col_empty.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col_empty.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
       test_ladm_col_empty       postgres    false    13876    2440    2533            �6           2606    712837 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_empty.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_ladm_col_empty.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_col_empty.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
       test_ladm_col_empty       postgres    false    2437    13568    2440            �6           2606    712847 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_ladm_col_empty.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_empty.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
       test_ladm_col_empty       postgres    false    2441    13561    2435            �6           2606    712842 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_ladm_col_empty.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_empty.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
       test_ladm_col_empty       postgres    false    13574    2439    2441            �6           2606    712827 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col_empty.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col_empty.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
       test_ladm_col_empty       postgres    false    13892    2439    2541            �6           2606    712822 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_ladm_col_empty.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_col_empty.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
       test_ladm_col_empty       postgres    false    2439    13774    2482            67           2606    713388 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_ladm_col_empty.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col_empty.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
       test_ladm_col_empty       postgres    false    2473    13757    2472            �7      x������ � �      )8   �   x����
�0��{�=�l�պ%�^	c�)����z�^�R��v����HNQ��<�ω7�l���^��;�/��+3��ᡭtc�̀@܉F��_�T�����0X�
_sL��qC��!�spR���wcg�oDl�0��T�ļ:ъ+����rc�F�`�B>�p����C� А�v      @8     x�͑Aj�0E��)�&����qK7i
�t0y�ƌ�@��e]��X%�MI�uc����?_��:[U�M��j^��E�N�Q�"����Y�m��"���F����^��
��%ԗ;��Q��B��frۖ  �1ZN��N��d� l�Q0C��ݷ���B0�ϡ�֓� u���́��c�Q������H{���>�
~>�������\�����g/��Ў=�o��L���X�򏺁�������`�2�������{4,�8�g��!�RA~����cS�y����      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      >8   �   x���ˊ�0���S��Z/u9(�Vq%��D�@�)���n�����ڢ��ݹ�|��������z�ݻ�r%1���Rj�A%�
$���_Jc9�>TI�K����Z_u�w�4N� m��f�Ѭ�|$��V�V�f����adH�7��㐦v�qoH��"�:ǜ1Gd+/���A�`�F��!2�=�4P�x.��?�o�Q��V��E��׿GĹ�A��{�����M�"J���      +8   j   x�340��qt�w���3�7���J�sR��@�.���yř�y!���1~��@!#3�*{xs�X�����TA�ch5ЄT�8�K��!�AY\1z\\\ ֟G�      88   �   x���M�0F��stm��B㊄�v4MjKh�>���[.fA�\���o&3/FIwɡ��iqY��QV3��oý���D�R+qRp�Ϣ�$�H@b��XY�;��9�p�QYl��AAC�̭j�@��(���!ܰ��0�,P
I���lt�'�#������^��[���r�����s���5zHw6�=���ȋw      Y8   �   x�350��qt�w���3�7���J�sR��@���%�)�A�)��Ee�ə��!���1~��9�y�@Y/��ej`L�����y��PS]�J��f��m��[ijQb�Kj<Lb<XX!%U�!�ɔl��9�K���CY\1z\\\ z1r      A8   �   x�3�4��qt�w���3�7���J�sR��@���%E��%�E�!���1~���E����� N���҂d�9}2�R���$S!f�^�S��WHE�ZeI�UF�!�%��aL.#�M2��/���O�L��������� w5p      D8   �  x����R1�k�S�07�����O�L*f<�n�et�C:y&y�Tti�b��;�3&��I�o���d�ev���^��^-�.�벻Iֱ�Y�L�{^4�x�}0����tvw3;�]�M-.��{Z9�E����m���D�i���4�5��}�Vԛ ӫ����Q�S�^D%�	Zk��y�5-��Z��e�]5G�[;{��SgB/69\w�c)���d|S#�q���m��W��m53�#���c�:�QF�?x������I�q�}A���M<�S����/��[x�������0Yu�"2PxE�8N
�H]�̿~"R�i���H���/�ba��>[P ��sLN#����U��[	e���ؙ� m�Q~��K~�hV�ITr�6rD���5ےC�������y\      .8   %  x��T�n�@����2�GkX�!@��He�����[���Q��U������h!R$�$�13;�bqV�ϗ���u���:)ǧM���*��xz��驸�'Ņ��dBu]��Hը�l
�s���)p��R��*���"t��WG�B+�ɩ�cm��-o�b�(����TS��FD�Q��?m��2ĉ[�v��fy~;Wu�zj�ԁt�������f�U�8�k��<@P&�S��'�a�&"�%�Mq�#5'wO�Z��N:�k-�D嫔�����a�?I��ޚ���9iЉ��
�u�|�[#R-�	Co��$�}�>p�q�7��	�aׁم.p�S��!&SUH=��h�c"�ZG��b�)�zS�1;�1�b�O��:^$;�̈�C�G�"|9v<|x���j��a���S�A����jU��<jfF.Q&�����9-���GN)+��-�񞹲�v2��;e��,��d��Q�8-VN�`u��=Ec�8�#���}8��Yq���T]M	<�{y�	�w�?����l��i��      38   �   x����
�@�������Y,"H�D�@�u�	ە��z��z_,]�����0��1�3g��4���c�N<[%� �n�)Ŗk��h&X
�8�6�oX4���,��7'���*©6��<����.z}-��D:���q1�zeȨ�X��~=4G&�
ճE�����TJ'y��Z��
:��z u���a�c�����5�C      78   |   x�345��qt�w���3�7���J�sR��@��y%�E�9�ə�y!���1~�����9�)`N���Ԙ9�¹�)���E�P��
�A�&�X`�l�Of^j"�9��B��b���� �.Z�       8   �   x�32��qt�w���3�7���J�sR��@�������F��!���1~��.��Y�y%`^2��ȈT�9C�!&AY\FƤ�b�\Z�ZT���
1
��edB�yƜ.����y�ə)0o�p��qqq \�\�      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      [8   #  x��SKjA]K��a��k��@BV���]#*�T��#�q��B+a.�ꙑcBV��~��Ss��^��n��o�ͯ��j=F���uM>PV�ߣ�����^����b�4[���k�KM����O�B����
S$�"GN�v��S
в���ذ� #�9��[	�]{&�,]�}��^�l>���B����4^�tS� x��-;t<�
��9Y���%goG8�Ĩ����h��r����$�-�K$I#��D�Y�ʆ2��R���.�K=c�c��Ԯ��a���0C�
;��
P��`��g�`���	�b�V"W�cdL�L�;�}�xĬ�'���X����LE�9��^�������+�P����_��/o�4[r'�ͩ�Ӏ{���@��o�t��~��U��?b5��h�q?c�va�ȸ~4�h*��Y,��n�K��tU���j�렧�1���e����ޤ�e�{K(� �+��'1�ó���a���q)t4�29Ѡ��l���#�<Z6mt�<��
�q1�(j��n�\.� ��/      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      8   `   x�3��qt�w���3�7���J�sR��@��y%�!���1~����y%E�9 N�ˈc9�K��z�� x\Ƥd��7������ �F@�      48   �   x�34���qt�w���3�7���J�sR��@�A�)��Ee�ə��!���1~���%E�@% ^�wx3��ehlI������������#K��q�M�0҈(�Z4'b*P@���J��`C26�I�IM��-���Ƀ��*zx3H�+F��� �$tB      F8   f   x�32���qt�w���3�7���J�sR��@�A���%E�!���1~��A�E�9 f��edl@�9���EI�y���l�I�$�d���Á��b���� �rA�      �7      x������ � �      �7      x������ � �      :8   �   x�343��qt�w���3�7���J�sR��@�A�9�ə�y���Ei�ə�!���1~���y�A�ŉy%� ~��P�s��m�!���Ԝ|��eP�\��5�\�T�bt1B h�)٦s��A����b���� ��p�      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      !8   e  x���Mn�0���)|����e�.) �]!E�� KI���Eo�5��b�h�.R�<o�����	Z$/���j����(l����C+�U� IH�*&� �N���c5G�%����5�C�nm~�pv9['&�-/ge�ښ��h�3F+Ah%����
�&����[w���If����Rqb9�2]�`9�� Wח/��.�!{���� �%(-����qu�S�^��~�~@k�����\���x�M<AIin�Ӭyè<v�ѩͲ\c02�B�؛y�^.�e&��);�'ܚ�R#o��Ꚋ�����GyS����p�~������h'��5�-��L���0؇A|a�0�      &8   g   x��0��qt�w���3�7���J�sR��@��y�)�)�)�i�ɉə�y!���1~������E%�)`~*��\�9=�R2�2SJs &��b���� n:�      �7      x������ � �      Q8   j   x�313��qt�w���3�7���J�sR�����9���y!���1~���i�ə�9 N���̘4�9�s�KsS�!�!s�ƙ�f��I�$(�+F��� ��Dk      �7      x������ � �      �7      x������ � �      �7      x������ � �      V8   �   x����n�0F���	�@1c�t�Cńd]SY�����'mpew������;84�Q��A]*U��4jg���9�6�m��7�bQ}�}���	Jh&���D���u��J�/���Y'�L���x�.Atm"6s,�=�]A3���C�'�qQ��z�:�!?fǚ��B�Z�5"wY[�4�]Ck��˺�k�s"]�W@�O&�Q��cKt에y�w�k�{�:~      98   }   x�34���qt�w���3�7���J�sR��\+J\2�R��3���S�K��3KSS8c�88��JRA�48���Ԓl9�K� �A\�fd�f��Zs�4ϐl�9�S�\1z\\\ (+d�      8   z   x�34��qt�w���3�7���J�sR��\+J\2�R��3���S�K���RS2�9c�88��JRA�48��Аl9�K� �A\�Fdf��Zs��ehL�qƜ��p�`L�=... hd?      L8   f   x�312��qt�w���3�7���J�sR��\+J\2�R��3���B2���\�?NN�⒢��ҢĔD�H����	�r���c�ᗯ��fM� �xB�      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      J8   �  x��V;OA�ϿbK�,c P&(
����N��,��1���t�)�)("����2�kcLH������~�7���p'�&UXSqf\h�'�<��<8o�..�����8&S�R��-V�>�eW�l'�2��Ƥf�f+��Y����:KʐrԠ�)��mLu�FU��l�� f���<�M0���m5_�Ck⌑��9L,*>Y�!�M-N�(O8U�/�V��������ͮ����<9_a�6�f�g`=0O}5��g^���iO�"����*��K�wx�W��:���BY�)���O��܂JWZ����8�.�ʖ�!�a]�_�Z��X�Q��2٠FMσ�������C�޽x����U>k�x5l+�k������o��`���|[�:AڜkL����,?�}�����u�W���/��� ��,˕Xc,<���i[�����ws"5�$�1ev{o��1z6���J�H喂�N�1(�r 6S��J�>�>��M�O���������elxu�%'l���49ܠ��N�R��Jj���a����r��`��C3��b����H��[�C��~(bu �Qv�!�l ��fR[���L�U��?��-�m^�������W�������;�e@�kN(yH��n���S��pT�!*�8�j|�-���Lp"��(>RE����CN��"S��X�c�E�g�s�L�S3I��bxY�'a�|���U���p�9���ՠ���f'      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      18   �   x�342�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,����4��s1�8�*��3��s��q��(�V 9�צ �@�p�K{�;:�qYPѵ����I�9�B�x�������=... �o�      �7      x������ � �      �7      x������ � �      #8   �   x����
�0���S�dl�v^v�z��fP�mW�|_�ԋ�'�[��O�R�E��3t��>���n1.t�%�ӇJ�E�轷LC�qGK~gO$�N���}f�2�>I�*�d1��sB� ���FeP�H���=p+��r�PYo�)d���w%:���e���s����<^���+v��B����F�      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      �7      x������ � �      (8   6  x����J�0���)�M?v5D�+�īAɶ(��)Y�r��b��"����)i~�@�����6{Y�2�[�j�N����6���</��V7��7���[��6
�P�t�_ƚPt��ɺx$3��U��$��٪J	�����Y���]Kkȃ�{%*מ��ͱ=|j��V�ө���8f	lL���1�+��Y
s��y�h��w�`���cO������8����V=�9�8p�S�� `���3��M�cNa�g�~���l#!LĜ�{"~�F�!!�)L^�H��
��D�0��f�1��Sn�      �7      x������ � �      H8   �   x�326���OI�ɏw,��LNL��ϋ�qt�u����I-�wN,�3�7��q�wL.M-J��,����4��
�8ip�kEfqI�Bi�B"DD�8?�(U!'Q� �839���<��
�y%�\FƦ�;���%�8�H|�CR�������� �t^�      �7      x������ � �      I8   �  x��\M��F=˿�/؀2�(����řd�'l�@h�=c&[�`�Oٛ�9�䖫�ؾ�n~���fwo�E�{�]���hg�M^�@Dr�j�>�C��_}������د�x��~��]�߭_��|���o'��7q·<���NnD��O��8�􊆭of4�a��$�������x�����HY �^���x���L�ʾI�$��<�xP�'"�S����%���9ۊ�����ď�^��f��=p8ۇAJ��Ɉ'��]�J��Q �㧘^��dR����Q�"���"�WϜ�ʖ���/��kԔ�V܀ȧ0��Ld"���P����'�����������e���w!^�3�沇0�����X`�%�1�">nl�X��ý�w�_n���0rk(�#2�"�mF�b�#�x�%���<��X�k�#
A�l��b�|,ǜ^Z��K�os<��� ����sɟs�_D�$�J�F�"jnK�r�(oQ��R �H����mhh��4V�������᧳z
8�
��R��}ܹ$�(p1c͜�[�R���C��XN��v2�Q�I��y�	D*���Y2��2sM�8������MX�|lF�}�r���C��ȕSӄ����:��EO�Y�2s3̌7��Nrր���c��?'G���N �Z�g�l�c�>-�S2�Gin�M͎�ڬ��MJ7��+��0�&bMcz\@C� ���ܙ�I�=�Z��5<V�|#LW�z�CL1Z��b<�S��7���0�~���Y>��u��Dk)<_�c˻��N�Ȟ�����9E�h��V�sw���<����f�頥���/�1�\������Z2�򀵴��so�6�:�.u�7����$� TI�a�S竺^��]X��Z�����M���!m�劃b����v�פ�/�[��-W�w�'ჲ@IF�?R��h�=�	2�?��Q�B�Ȱ���sq�!F�"��􊽥�Y���0��G�c��� �`�Z��oZ�x��x5FTtM�	�,��H�ֲ&p�~a�mά�qُqYÈ�g|ˏ�JS��]��!Ƀ��Ʊj@v�W )w���gμ����@�����z��_Y5�E��bw<T�J5.��7��/":�w<�1�ej�V��\`���Y���;�*�;��E��BZgL�n4��ǐp�]�.���$(�S*�����U��\f���E�׏ګP��E�BM D�^�n:����ǁ�E�l���$%���~�2�y����q�&Z��[�5���O�~��5�V� �TP��J� ��M[��t�)βI��O�SP�pΛ>@�u�Y�Ǜ|���(�Ȍ��!�q�b��Z[5�,�V���~��]� �k&#�ǄNT�;�U�@'�� $:GJCe̎g�D�	c��	b������l�~�Z49�^v�����V����Ԇo̱�c�V�L���T��]G\��s�{�rOr�����@�� b
��Iy���m1�R������.Dbm���5���V L�E�i� 1M�`c����L�S����h�힚Sє� ��Q�AH����2I��	4l��<E�ҳ������{�Ay�L��P�R��%��.��c��hg2��E��&Z�t���3����T��Z�.fm"�!"k}#�Q k�b\�Ip�en��rk����ѹC��.�k� �S�N�FZ������=��j�k��i\��R���ޏĚ6	�Ua�ʋ3��hE���,��놌�֊x�L���w�]�i8�vjW#b;�3[�hI�5�G�&&��7���Iا<IFX&�^ֲ.�V�jv�6���X�f�>�܀����<],���~D�e�v/B9��	a�5���G.k��o�*� ��t��U������q0x$X�P��>ـ�����!����0bo���RėA�ց��a����s�����
�ZD�A��`;E�N!rC#Ei+��i��7�;�u*3��1��&D��z���A&[��*8~�)S�y�lg�pg+kq'7Qy�����d��8�m+k9��[x�<C��"<&d��lk�:-\� ����ɓ�{@<�tXn-u���|�7u�v�?U!�V����CHM�0Ý���U٪Ze���#�?#�]����_6���*���-���sm����y}����;<�З���q�u<n�੃�RL�Su��(�84F'��[�כ�Ô�7�v���E�P�P[���b���U�I�C�Idu�]�D��8C�y�>(-�Ov2
�� y%��0����]ۈ�"L����jmrl���+�DB���A�~ҩ�,��VI��������j���V�����&�����bԇ"W�PkmCm+uC�~C�^C�*)�U��e���Mq�Mq�Mi3�qm�˗����w";yB�R�J�]�1�ؽ��S������1?c����%6r��2�d_[�̥�H���<��׫)��h�F�g7�%�%{��WSh��1��@�ƩH���4
�����5��U���Z�d��w����.�ߔ��#�U1\U�6r����ǬčuV^.��xC�x-n@}Ӧ�Y"�4cu��J��u�%���H�D�Z�-n�3��m��baY� S<����b�R�("�(D]n��$}.�*j�$Q�F��sn� ��n��sw�#R��mR�!R�:)�Z�$��X(VϷT���D(���B*Kx�+EQ2D���R�%�N�����O� 
3�I��^5�"�m����m�7l�`᰾we�.f���ٚ�!ڶ�ö�gm'}g*�v��,�N���ж��ttC\���M��fo	l�����<���?�9���*x��iN7�4]�d1�1!�؛�(��W����CMk�E����{��HR	�Zdx�!��y������!��y��ȣ�L���,&Ep�U�[MY;8���B�1|%��6�2:%��Z,Qu?L�-����:8�Z�o1y�'���ƶ�[?��*K��Aj�zO�Lm�W��K�Q���1�ى\���2�/�l1����9	���Q{(_W|~��(z ��hze\f$@j����������%x�H��`Ͽ�Zb�_hH�9�������I�b*�EL5OP+O�sQ�
q�l�ҁ\�͗�sw�4mA/����#�T��r�.g`6�^�n]��ꗛ�2]ЎxJ[�Tn�'Q�6��� L髲���Yzoc8UG�Js]�NB���,<�8�(�����j?P�%��Hoz@P>�
~��������'o�O<~��R��Pqovu3/��rG13��`��vɪѪ�$�8�P�_^C0��f�-���.��a'��|�!l�^q�*q�OД�"��Z<Ov���Ԣ��dG7�n�h<NsU�)?{,G�P��IC��,��d+��
B$�	ȴ���u�L�,�n�LJ�����/Z|v9�(�ֶ�����-�u%[ׯ��h�<�sz�@�.��UH��U(�F���R��>���%�sh�|�4����I�$c���|>��
ˀ�>XO%�܉�xQ�N*�H]G�,����W�䏠�TO�R�au䩛�5��F�*?��7W��|�X���H�g�����j(���\"��d�Iíu�ULNk�)#7��7<̸���x'Շ��y�[�V��ߍC��#���PZ��@~�I�1�G�y\4j�DS�NM==����a��Z�/���:~z���AaW����|��),�r3"y`NL�?��N��O�9�7�tt7X�#W��v��������G<}��r
FPB���*W׌�|k��]-&���{���(�~<��J`���WT��f��>�i�R�����E��Zj�6��g�K�Df�<�������h5�Q`؇,�����t��������P�j7��Ly����R�!��q���ճ��={�o<���      8      x������ � �      8      x������ � �      S8   �   x����
� ��>�O �Eێ�.��`��u����ڋ��b�CY���>����#�����1 �gyY�+v+y�?���?S�В�g�>�h��(Aw@i+A�a�Z,�^��kI#� ��
\ J�.8�cMq���`Rt����,�y�S�K�ɮ9��võ����=�~ �[H{��[��Oq\�ȱ����?	'��      '8   G  x��T�n�:];_1���Iq�e�.�Т� ƈ�UG%E�����������3�d���d�ș3眙���7�Y/ۛ�;��I�nn^��}��n�~{�������zs��m/���(������ͱ�P^wO^o%��M���ib25���s���h��-*w���0E��S�sd�����R�4��!��$����rn'q(�h�:.�c�L�去�:��m��I���P���C"�m����@�7n
�1[`�H�~��b�/q���H��Σ3ʬ-���ѧCm� +��[C=G�{��	=�I��4Y��B���!m���_��
�#�
 (���*�����I��6�������������/����K�Ce8��q����������(�sG��p'�T	EH�@�Q�mZ߅��A|�=��(xr��TTom��TFdȞg�!����`��	�F۹�?�����ZQ�,[@�N^��Pr�Z!ڽc�TL�r%�<F16I]�N�ċkk�F�Tr�d��� �W�9�"����0��Q�=�`6׏�ͣp^Mh��=�j�,L�S:���g�#Ztu�
4��4a�5A���g7q:<���Mq�������]]���9_����պa�w�x�1jfp[,� �r��-�R�����N�������l%TS����^�ixTH1�ap�����{+=����TI������N}�P����뎘0�:����0@Y��@�ʜ��`��K˱?�
�353?"���
B��\��v��0z���i�S�>�A��q�y�^M�0%�vnU��I@��l����z�gݭ������)      W8   e  x��T�n1<�~�?`Y%A�m3䀴� N�F=��M#?&~D"Ñ�'�Q�>�r �i�vOuW��g篛k?���|4�I�w�b������е��/���l�v���-Yn3?����IsS�:�@%^�WNi�j�e��MG�F9o���>�
��粉̯�%���e��Te'C���d{C�/ɬS����9��IرS��2�Z� �2���"�E?��(��e���o*r�J��Mq��Ȩ���T�I�^J>)�1��'�^�@�(1�5.Ց�D���ɀ�v�D���*
��L6�ڑν0��M���î�f��/�u����Ǎq�5��xh����'V�-p ��>�7H%_�%x`��)Ֆ��k�&������ТT��M��*�T�PZ�`��Fc���f�j�P�X���JT�2�jxuG�$�?�����u�����~��c��¿l.ɉ�(}I�_�2�hi�^E4�l�6|�a�U)0 F�͓y�S"[�˴��ȅ���� ���8�WM�5<ٰٮ��b\��	E����/���cP;;n���2�V�L�GJ�GW�-�@�ؑ��
[����� ���� ��/2fg6��M&�?>�!      08     x��U=o9��_��Fd�GR�;%�We@�#.���
Q���+\]�v�ؽ!w%[�Ui$�.9���{��Տ���qH�6xK֧�^ݼ{��u�^�~����k�~}�Z���:����?|�fwf�gʆbYo��2�.��8���/��!�� �?�5�E|N�q��XS0�4}�ַX;F�H���]��H�i�h�6P�.��q��s�H�gc{����h|�
!��6�Bf��`�ߴ�_ �,����a�F
�bƦ�!~�:�����!��1����p8�q���J�87��-u��|LN��, ʖE%�{�]�0�Z���%E�j5�$���>��MM8�nnt)�B�5�]
�R5�s�J
r���^�N3�'iF6�0��A[�^pwލS�)\�Ż�:i��)�m���Q`z �@�W���ǆ� �o*�(=�^
��R4��~H�}ᝯ��KsM��4F;R�t>��	�i��
�U�15�����S�d�j�����
ŠM� ����ã�Q��bnV|0�o����۷���X\��]�\�~��Cue]>3����P0�Y����tG�*�B��e<gXR��T���e� G���lҹ�8cQ���
&0���mHy<�gaۋ����6���~�)�DqxiG�sN�_������jv�����2��;�U�}}=Q�]�$��ME=�y/�90�|��˿��RI~�"��\�1�~��z*I_��P
*[���G'�c7����C�?�����*��Ѽ I�}W!R��C{��U�X4v4aq&��{tT�[��U_�;j�Q>����঎���&:U(��ϕ�H���ǡ�FT���Uu��G�F�2�
z�2�s
�^Ovv��(��<��MtU�O�>�f��4{�I!(���"����ҽ"���ՠr�f�fNq��WAJS��)!ڔBb���P���0���$A{����Z�%��)�k�S�9��bJyHO��(�#��EO�Qe�xy��Hݹ��^���������^�      X8   �  x��VMO1=;��G��(�@ɑ����=4��V��!1ڵۋ���S8����������I4@���(���{��Gqnr,LzZ*�L�NN?��?O�	ަc��� ��&�tlt��"��+�EUF\NE_L�3\����5��r�4V}3�C!���t�D�r#�����P%j���c��pt��@$g�s��6��Kv\�/W&+�e���q��EI�Y�3������&'��Z�)t��C�����w��f�{�D߯Ҍ�rmzZ��@���X��.�����&p��Zi�5�ӵ,D�fC+�wY��L�Ԭ�D�ռ�>'s���.��euq�\<�[��	����(ƑN��:
�0���<M���W� ���Q{�m;þMg�$Jb�bж�E���=\b���Bo�"��|_��Ε�J�ZG��]��b$����>^Þ�����t�O�Y����߉,a:�Ps�y��m�m��e�[�(h�Y�1��;��C��E���3��6c���.�c2�X��Aw��j"��(W|�-9��WP�Q������d�$��f�f�%ͳ*j��
��a�l�AjȫZ?�����M0�D�-ѺM'���Q��^���P�^4� >���Ƚ]Q%"�2W����u5�4��� �ms��sA�oq��g5eNw�.G�҉_G�ÿ�A_���IgΤI䉌x5<P�l��tY��8<Md���GCJ��:K0GŇ��*D�rˌYJO�"�`х��GY�����X?K�S�)�(|��N���1a�      �7      x������ � �      =8   q  x���KN1��3��P��²*�*��4r3.e�4�J�6��#�b83S^6�DN�G����dR,�A���Ҡ�m=��-f�z��z�~���h>�glC�Ig�Ҁ��H���}1.��h�G���oI��t`ՠJVap���KQ��%�j�P5�'Q'�V���è�&7gᭊ��Ş���و��F�F��8����jr`0�݀�@����/g�۳@^+�`[WǏ��F%U���a��Kj�Ya��=v��Li
���,lW�
[!����?�8o<q�C3�Z�����l!ӽ��,�9������_ˆnd�,��������,g�
�2��5Z�u4�Σ�ĳj�{�G�zT��'�;      U8   �   x���A
�0E��)r )-T�.q�օ�B3�@�Ԥ)��#x17*���̟7Û��I�,�v�fT�A'E���^H��j��J�������c��fF2��$)]��LٜL����ɀ�.�U��o� 0,LX0:�)�I�|.0�tL|j
Z7�?�+ң���1k���d�N3����_^���
:����      �7      x������ � �      8      x������ � �      �7      x������ � �      �7      x������ � �      -8   �  x�Ŕ�n�0Eg�+���+�%v�lNӡ�@�%�e �*)H�&c�E?A?V^*�:�AϽ���c,�v�\{1�S�q�=\\^�o�A?�{5�_Y����R{�}s_���OY�]���&-�^W��#}�5MàΊ&u>�姥ѻ��^���H���H[����?:��-��+:���#�&��j�Q>(R�h&��Qgm'�%�(m{-lܡA?����y�^[��w~ڑ����)gy��P
�"Pj�E���1p�J�

��AQ@Q@Q@Q . ���0�s��0��qp%�\	�W¹\¹����\� W�+��
p�J0�
X �`X �kp5�k�5�H����׀k�50m 70m�h�h��PH($
	��BB!��PH�&�f���V���\G�f��u�i�i�9F�1~�c\�h G�x/�봌��
	K�{!a+�*q%$K�J<[�6H���Jt[
(��+��`�즛�$Y���\~���"r�S��䐠���6�S�
SJ�������5�^�^�1�=���1g�Ѩ}pV�j��Gtpt?�幏�?D$�/���I{�GG5�˳�°�c��YGI�YwHr|�/����+E���to�^���.6���aE��^����k��齗'k�	z����o�w����>~jGoT�y��l6 ɰ��      $8   w  x��ZMo9=˿��1 x#;�{�z� ��`3�S ��dl�C6���M�9�[��c��H��,�ɠ�du7?__�*����w[Im���JQ*k�o_�����.����R���.����^.��U�ۼ.��5:��;������UTi���u��^��j��:bQ��Wj1/ħ ���h���V�T��p]o�)ʠ[��O��n#��5�h��-&��B�B�+%M+}aD�����\K�+z<;�x9ю�W7�����rnq`��n̈́���h�Z������tNt� ���E��k�jQ��Ma����F8�a0��BY��7ZNgnlaWג��E��Z�ҡp����|ºj�+�����tTLحП}4�kXLxKSI��a}��$���5���6�48Y2��&'|���^nv�m��LpP[��ȳ⽚�7�7�:[x�:n]I;���҆�T��0ņ��+�����e�N�<�ȱ�ɕ�2U�-�Н{���c�f��V���C܅Pռ�� ţ���Z��E��s��w7�o�w��/��Ľ?'�[�°X�Ѐr1�[��{s��� �Z��,UM�C[��V�W"� +n�'�c�
�'���=�?O �|0R3��S�� g���͔:�ȱMi^�m��~�F��:�㹵�w �|"��.�D���c�w�s�!Í(�*�#@�N�.F���%��}��p�X;��G�E[XXÇ��o�Db��8�n
ು����8�FX,C=�"h���Dh=�]��Q�J`姣X���	H[:vP橴��G�^
�'ƨd��L�*ʻn�'���L�y䭮�}ESp>y2"�f���x(B�?�D����nb�����/���Vй� �۔Q�=1��t��T+ �^s8I�(���Hp�J,�Z�
����/��E��(�/�`m zlw_JE$A��`}ys���RfK��t���J��6��t"{<��雇H��f��8�c��%�w~��(�
uU���&")v#>Kz �t��7H%?"X�����{�Wˁ�=+��)�m�{��C�C�XY�-3^<p6�/f������؏���j��`+4�#��aD��-N����3A�^�����!�0q%9����d���U�3��&h����}n�i�X-���S��z��VU������� 9�mO~�=���W^P��'��ʩ234�!5��ψd��QO� W�4�O��u���hE�\j�VMТKj��C��W��Q��T;�@ܥ�L��$^�-����0h��	� �|����Se���0��	�(��\��T�X�K�ah��Yhe��z"�*��v<�G��Ǉ;�Dޮ\DMc�)V 0y�����6|_"v�W���SJG�m�d�KX�{XN�?��@���|
�/?*��z+z�(��$0~��g2�W&ٖp����G�UUN��K\���sl���i�v�Fu��l$ε�*�.%d&�W(ٵז*���1�p��Y{
�D,�+�XD<��R���R)"�UȺR��k`��m���H���!X���6x���`w��Q�y�Hr>�*�^��q���ȴ��@_�=�
�o�î@��t�!���^q���{h*Z����MFU�l�wN-�Z	O��t�O�I��(� ��b��k�
+���a��2���]�M �����3f˝&=�)�*ț��΃����:����}_��MH�Ot1Z쾂[V8�Xg%�v)YT3i>�*�_<�����ݐ�<x��	��^ ���S�<���O[Ӭ2�CP$	�9��\[n#���Ƒ��%��
��ei�`��o���(b�xm�V[�+�L���Y H>���01j����ڴ�*2m)����܀�~��r��ГB麧�AK�����{��T��Տ�<+�L
+]�ܸx�R`��@ć��j�"ϢI�U�VȨT@cP���,�BK��D,\k����Ί��v�:7���e*Wp�;��J9ҁY�S&�<0I�����7NH`�N\'ޟ�8�x>{k[���Dq�p4���JQ���oC�I���c�	e� N��r�Y�b�V)ǁ�t6���P��*)9�nq��0��xeHA���@���R��5Ը�ې@�.����S�#/�PW���� 8�467����-�"���C�C�F�s0�烞Ck�&��x��*.,^F��	O�6�I��7��]�d�vǺs��L�F��Lg�	�c�\�ieW<�E�
�$ȸ@�k�CW���e�`4jZ��!Ra�-P�z�r`�V�LU8<{��׈z�t�;�l���R�(���t�|�6hX��8o��d'LT�	w����\> ��Pò�N�j-$�RLe��粕֟ι�' Y����`[�q�YJ�1J���15$����ѭ���S ?U�}���G�N�J��7������d1�P��SPMB�SMh8��I���<�+s�-#��T����?V��7���
q�,3gS]l�l���s �]�X~<�Vj�C�h�aA��nݩ��S�X +�r��W�JJh�*���r-~�P�]s��5�4�6V���B�~N��T����콀�	�����k���oI�U.�Q�*��R|"2���W�7�MW����g��&���!HV2@�:=�x���X������*T��l��Zro{�l�,��	�L��|��"����/?�k���2 C��IG���u'��<�b�KW`?��=��|Ӕ�6�#���P(�Z�`V�<Og�t����b�*s::����]`�F�?��Q���?�#�f�z��tS<��:�E�c[�d���E-T(�[|xD�l("b�z��x�nOcs�G+�Œ����]�p��t�GsJ���a:� �X�"��`�����~)���x������R�h      P8   �   x����
� ���)|QكMۡt
�/�I�k_�X�ҹ���_�j8���[&
>gt]?سC��~ÛA��Şg�Ė�c[�P�WZ�h�<��{��g��ɘd�7>�Mk�5pY��+�k~�K͕��\R�      ]8   �  x��TMk1=ۿB��Iڦ�5qC/NM�)����@+m�a⟓�C�O��i�8!ǀ�ZI3��{3:;�4��-[�\�h�ƻfy��z�c�,y�,(5�O���r�\�D�_x9l��_f���5ٲZ��+�B�)�/&V�;�C�3E2[KQ�C�)�q�ت�v>�. H��_�`|�
1*�2�%)�@a&��n��ᨆ���AF��d� mH#6��uB�=;2nC+�he9Ε�Ǝ�z&H�#�4�#�d������IH	���÷%�ɚ�������M4>���.[
U�Ǐ�"��%�|�����רڬ��^�[�L%��v���Z����(}���AÉz\Kō��r���h�D�]Nz�^<��|K[�:�+��^�E���6��t<�7N����tH!�� �̖908јʸ�[C��Λ#Ť5�"�����FJ��R�����~~k?L.Am���}�ѵB��*Q��5Cg�y�Xs��M�2o�d�!�r��0`�5�ZL�m�ΐh���k*�#��S��~�k���Y�
zvrk����Ԁ��5�䋔9�m�ig�BkgE���!A��؎�S��l־��!'Ww��Щ�<}�ȣ�Fk��X����Px�CR�R
�'��5�������l�W���G~U��!�5��o��2��A�l�B��d�#�n����?�,�      �7      x������ � �      �7      x������ � �      8   �   x���An�0EמS��@�%
�B�u�d�,9�(عXw�r1�$������%��,Ď����k�V��ͮ�,eI�,�ɯ���!�u�h��#ƫ���e!���k�;��'���u��H�8��Ԉc%fbh��s$�dv"�L�5���>�(�/�*�ҋ���yxK/�*
�5��Q�nߑ�{z�E�hN�1ř�v�~��e���}��^v)*m/���p���B�      *8   �   x���M��@�םS�	B�$:�����Д�(H�b�x�9�G�b&fpA�Ŭ��x�Q��Zm�S/v5��бۮ��f�ږ.��l��m�daO!s���Q�q��:p�SO��bM�9y��%��+��0���,p.���+�vD�,��y��8J2����ٺ2���Q��y@/�S����E�3�L�#�t�)��:9Q�%b���<�UU��֙�      �7      x������ � �      M8   �  x��T;n�@��S��v�_)�Iȉǩ��(^��a�#@�M��]Z],o��%9�
��|߼�\]��n��V�I�:K։�g���Y=�U=�T����ǳi�9�O<i:�]L��[�w�K��:�>E\ʁ��<�X*^�Ŧ��-�{O��Cd�7���!��b�nͯ�&�	L�{"C���^w`�18q Jj�<�}���r����L�T����#�).td��?K��w<�D���eشp�d6Ԙe�?��5Pb�`�ƿZ.���ƣ7ϣ��w'j�Eu�Jo�_2�8jKw^䀹��(vR�Gi�u�g�b���4�`��6���O�ͳ�ҹ^�r�i�~&��r�qRF�8+Ab]�X�8:H���jH6e*�ʀt.v�ޟ���jb�*�Ц
CǊ{��^���$�#����$�R�U �2XFb�h�+2�KM� 6i�y�2S<37n�����nh�[��^�������nΡ������`�,c^r�{�(j��l�2�A5sZ��.��=}�1:��DzS]�E}[ ��\��V��(<�B�����2���n�r��)N��cൄ�'*᪺s�~A��Jwp�iN������;�(j�zBt	�x�V�ԎG��h�ii/7       8      x������ � �      8      x������ � �      ,8   �  x��V�nG<S_1G
P2����X��J�0@4w��1f��3���S�!_�:���/I�̮^W�������b�rr.%;ٜ6�TX���O��_כ56Kj7o��l����FV����f�����'�}i+�������4�oؙJϘ}W��cs�6%*:���E��P�+������5�V�����9%�o)h�a��	���hh+!%�:�i�4���Ɩ̵�����̮�Sm?�p��J��{��`iv���<�7A�`�Z9�t�ō:4b*�*~(X�gKM�����Z���;����i(�<d]�q�6j��sڼ�ߡ��Z�43W�A��Qs\P&u�9a�����$��&��p�;���n�t� ��!׊�RE��>M�l8� ��a��M������t��
`Ĭ�"���-���MR?u��q�|�R��9���������s!�Ω���㓔 Z�<�p�H����>u��][�5[��h�U�|*5�w�k��'o��6�߫�W5����J�y]���8�e�o@�\fb��% ���A-*��A4?�Y�SlL� �4��M��ѐ��Z_9��86�K��8�.c��*�] �0����r�7vc3�ǘ'3-#�1z!p�=���
��sj�r���UG���*}Uz�%��"��	$7�oF `��d�Ϩ���_ȶ��������fr	�í8Hf��x��]eB3Γj���M�����M�ߧ$�&�����v�-aխ��Ef>+�nT�d[�u�Mf�ُ[Ф$m�VX�����
��bo�a\�1�Ō��ٌ5���ǔ�yaF �G��a돩U_Q��&}������������數��@����$B���;:�L�`��-a��
ي��oR�04VUj��&�=�`�W��X��y���\ppz�Ή��
,����ؔ����	����r6k�發G)�'�.�U��N�XH͕ސ�:>|��U�Ǔ��a/(TZ�5���v�6�.������Ou#_%R���Z��?x-��g߃l���ɵ��{�{/�Xt2������KŜ�G�T����?��A�����Q ��/��c���Bӿ#y\��`E_z�Θ����_��ѻ��������      8      x������ � �      8      x������ � �      B8   �  x��T�n�@���2A�#Ik�
`@V�DHe�XO��s!�߸L�"p�V?��#%9��J��؝��ݳᨸu��]y��F�2Ζӫ���i9��ṟ�:*��鸼�Q{�r�N�F���u�ݬc]��˱IWl���o�>U�T����$P�T�nL4���y���zeB�\%��4˸�F��&!����Բgj�������,3�퓕��?�څ='gó���O��}���:�g=P9����OjںC�4Vy��N�B����J(`�&:oٝZ
�R4����@�G�X9/uqV�[���b}�ID���HuV�n�6���4��i�C�ݼ`;�f���0�����-�Qۧʬ`o��qJA+��Ed�`KT`-E��j:��Ni/�a%�FN���q8�s�:r���:�����r��
�����Pp���uC�K������E��Y���} ���y�Eߩ���������do�[9t��eE�lC�yN�]��VG�Iȸ�ύ���F�g��Tz��`�����c�{����뚣Yc%V�fFƓ{���!h�;�ɂ<�r� cB^�c{����s����y�G���(Ǿ
�S����b�����I+ZcO!feE�E����ܰ��
��%�ʌ�v{���T���ZZ���X�|�Y���TV%�@�0�w���CD]��k^ܘ>�*!hn��#̒�7&�@�5-�*�������_~��      58      x���MN�0F��)� U�@W쪰�	Ī�5�'�+Ƕ�IE�`ۋ1��V��y�7?O.w�*rA-���^���U�R����^}�j^ԕz�=1%4��Ɛm��<{%N��Zc?0���oL��a@p��=y����Fy�x�Y��c?������9�n
�h������j+Tc�/0�'���dһ��:��QXh�ݞ�)���(ͤAƒ�LQ���hƋf��$�O��Nr*��4Y��]�:#�)EҖ҃p<>B;x3U�ܐ�o��e?��O3�m�o�<����      8      x������ � �      8      x������ � �      \8   �  x��[KO�^ï��-M30���In$�&Y\Yj�t�PwW����7^f�E�]����w�Տy�H%�M$������<k�OO��U&r��W�Ly*U�\���^�\%W�)Y�&�m�\-���h�B�u�۔���J�}�e�p�\��*�y&4�g�{/���_�K�ϧ�Q���-o���K��2����%�?���,l�3-s�w���[������� ���8
(�6�����O�[Y�z��>�H�`$������0
��u`��7Z%7�5�.�Ԍe���t�(��{׭V5��-yY��H?�䲦Gy�)l�H�	�3�'L�F�,
����Z�1�y��"���
C&�Ә	k� �9���4Ȫg�A*��g�Qv;s��l0n�y K56��<
�W^�lo�#���wo �W��-ڥ�ᛨz'rX�y}���xs�S����y���r$�<� �W�)@>r N.���_P)��][ck�����GN��4Ff'1�����8n|:��^����k��SO��x�obb<�e/R���_n i�0=��I�f$�p���L{��߉Xe�;L���4���D��q���jO�󶐥���<�'��ٳ��N�ts'���3KUX4:�=N��2�wǱ�.*���2�_x�;U\����ɯɍ.y!ʆ�k�2k0Ik,�5X�In�`-S�5p�8q��<��-n�R���=<���ۖ��f�G�o+�s>�*�k,j�lu�kx��Wh�h�1���L�~��f!���d�ҴB����`s������%���e���As���ҫofe�7U�x*
��?igAc�ł=W_ˇ67��l�|�e7�N�,$��19+����O��*9���=�Y	�a,�I�y,I^�6���|��/Z� �Z�,�q:�d����-U�NTɲi�;b�Y�tRk��T����!5k),"��+��S�HY�5���T�7�#a
���*(X�^q��^#��w$�����F�%4���X4���	ƑJ$�c��zZ0�}-�,	B2�ϕn;�38�Q��	�⩐���K�@�>[�_pgo1���T5����؍cHV�3=
M�C��m	j�Ȝ��8"(r���7N&�:˫���X���S��Q ǃ �p��..3:r�r���Xg4�����enޑ�4���:dB�3s�&�4Ž(�3������_[��T��=<�`�8X�� �z�K��Ԛ&(�6��#RA��8��-�gC�l3k�_p��MCDQ�_R��-�vQ���`�gzuUt%Ef�{?f��,64�'�n��-��l��\��i3F���X�XU3:':[}+'X�$e �
y��?
v�P5BKC �sz-h�{G<�9N)�rݓ��^sT��#r��V�)�k�G�˖�o֝z��N1����5�>��%�\�4̥ӷ�zic���@���$�s�\7��L���s�X�����y\2�uw������D�i+XȒ��t�Wc��U���n�)��Rݖx��T�"�.2�қn�����;�W-��x `Or|�lC�&�O�vzl�n�n
"�;~O�a����e*+s~k��6΁�����4uLw��_�����/��4-f�i�5�خ�{Y&��]q���!O��T�a��̳�n�Q0%���Qm�Sԧ0�؉�q�D\�^T�����-{�8���ц�\��8Y��(�uG�݉�NC� 4Yn��I�����q���xh[�&��`6V� �I��F5�q��l��.Tn[�N��z7��W�1��6�\�)���0;٣+��;��I��t&z��7���o�u��svj�^X�8e^P+`�`�p�Y`��)�fg��3jYC~+�/sU�;����L�4<��(/7�s�-}'�����q��5��(���HL�5$q��C�") f��?OqfD��'�/`����D�3s���
�憸9A�e%}og}��s4��o���Mr��+�Q���5�b7���v��dck��g/��/e;��q����bA�?�k�f��] �}K�`��w5l��ѣ�;��S��擃vg��L�2��|�����8���x���v�q�)�
I��s�ɪ(��Ȧ�+7�@P0A^�L�r;F��A��3^i�I�6�Y./<FZxB�	u�p��g��,?[A��}��:M��ɺp�䫗%�SD���I�3��8���	B�S��|r�-*mr���dqǉBHJ��-^���;W��omg��Qk�N��r�p��t�"�f�ZOw!�ܬ��w'@!'�Y�BS�Y�ԇحh>Ag��B��'0!/bu�?�1i+̐�
�*��0N42�+]�Q��m�w�ֽ�۔�hM�m��k1��4Zk��P$�~
�ל?�+��H�0���c��(�S��Fs�laNڳ�;��҅���G�o�����i�9�Y�/ei�%|�Q۔���I�c�,�P�gEw�R�L�rAN�$�W�����.��.Q�1��HIy#�u�B!!��|m*��A^�%ϭlC;��	���22���l2���K:�7��>���]����t: �m�f���4�H�q�SP�D=���(i?��У�+#.%��hKJ�T�CH��ޭvR�tog:��7�b�(*�����:lJ F�rF���Z+Ce���'Y1��Hjt����v@p�
r3W�}� �Ig��{"��S�����~�Xm;{Z�C[*}PW����y8[���/�C�ɸ���T5vW}^�io�3Oԕx��u�6�rY�ao��/����a\�T黑��!?,N�4Od�K���߿�����x��(lpDկ%;�ṹ��Z�8�_�7������_��v���]�����5N�j��Qqt#S���y'EE����J�X�7���)~j���ُ�8i'J�W��@�c`q��%Q��p�Bl�n P��Qt�Pl+�<���d~�.��cWU5�Ȩ�:����b��U�*���qI5��N�L(%G`�a1��>��:��%��V��*��1o��N�~��#�����x�[Q������1�g�T��쨩N�DS<��mkQ�ʍ �8Q���c;�����A@'6�Bj�fW^��tc�%N�0����l7�q�����8v$3H/�9�����)�&oZ����2k1V��_Z����f(2]7t�gqbr�����|�R�.����e�<L�8� ��31��gc.z��Y���9y.�[ѻ}6�J��ӳ89�n��9}W�y@�������9�R      8      x������ � �      "8   �   x���1n�@E��)� ���r�4�jlh�eƬw]p�����b�MPDM��ϟ����/f�=9���ÎUlS�m�}c�l��VvY6�ݟ�|�A�qg��@0��]nF�����4
\#�H�	���i�!m|���E[v��u�ܞQ�C�"�T	����A�RM�MyН�/ə��uT�ק�V��Iz������$!]#;���l�z�<�EQ|漞      8      x������ � �      8      x������ � �      8      x������ � �      C8   $  x��U;o�@��_qc�����i''5��@�Og��Q�G���t̐��U��I�$�'��#��Ǐ�|z�]a�����F�//.�?��R=���,�N��|�T��Vט=\g�l����`�ϾM�eռ%�`w��7/�k��ж�jm�(���ZP�a@\���?+�E\��F^���(?�O���;������n�^�OX��p��K�gѣ�(j�ݐJ��C�*e� ?�Z ۏ��*����޻IO���.p�-p��
������nq�;7Y\!:DNo{������q`���~E��1%ի����?2(������G�X$��n��P>4/��>hKJ�s���lR#��#l��/k�+�������ќX���mD�8�Գ.���>*�3�gӽ�t��ҝǼ���Kw��R���1ܖ~�>�r'ҝBAdb�K����9�Q�j 3���ľ߸H�K4D�~B&a�7	G���'z�/��xU�J�Ax0���v�5	%E��b�pc���N	�%i�%��k�6hR��(Q�*Iٴj�J��M�`#�	p(�Fjt�4���)��Y7�K�,f'S�f����|ov���mc�E�xG��h׌�$Z�D<�?c��(O��*Z�b��NZ%�(]��V�,)�wlU�dK4�Z���D ?D3RFpIX��`/Z��^��[Jv��S;��u�Wʖu�ӗI�C�V���ݠ��d�O�~�7�'�=H�������Ա0I4�&�9��A����<?u��\��r�i�U�n��iA��&���?t{�Y      /8   $  x��VMo7=K��?@P-%@[�$8=P��(z2 PܑKnH�P����CO���?�7$wW���t|0ŏ�7�w6�y��Ud�j����ή��wn?.WKڭne\�>[�L���O�)�t��F���架:~Ӎ=܍nF[i��Nۊ���9^;�m�)�B9+hC*b컐F������{�"P�DT$�F�"��!ۊ��#a`DĔ�>�q�ώ7T��V��H��1u%+
�9��fF���RB��#a����i-燽���UȊ�1F+��[Z�l�]����Aօ�h\��%����DK$�K���n�B<<)\	qG�kT���N�j���4;�,���]���������!��A��:�b�JP��>���% ��Z0�|���"\}x���Q|�edJ3��%>��O]��������)%~χ1x�G(�A_e�>�����Z�Ɖ�4��~��w�<E'fo����t<��\�"��=NI� ��q4_K�+�nP8�HZ+�.y4��'�"���Z,�>K�Pb�C�����^,���X5���ı�  ���j�4Ep�_�R�N�A��+�-L�P�l&�OItRN}B�u�ܣ p� $.�m���~<����]߃�3�>S�}�˄�� ǃ���6I��3���]r��^|�q��pk��m��������(�J9Ɨ��i5�9��sQ��\�Ԛa�#�e����e[4�{e�Ӕ6�'���q�c����;����|Xۍ�\�A�I۵����S��6�������7�4��%���Nu�F̯o�7��V�6p�[�=��e�s�E+lYJ�y���.�;ʖ�?V8ӕ��)�S�Gy�<os�t�W�u�/=�QB�,ٳr� ���P%���P:'��BY@V02��܁l߂Yꚛc҆��k��mi�}
߉����0��������)���#6/�)�������x�%���g`�ֲ4\������lV�[��q��͊|s}E�ݹ�=}i�(k��?G�D��D��r����C#������_�ӭ      8      x������ � �      T8     x��P�n�0�����F�����v(:�(�JQ�I:��c��t�&�w����#w����-���iO���1�F5�[���ڼ&�\�Wa�f��bS����35y J"���P|��/���"|$�heȻ�#A@Ap�%��@k�ox���d�1��Vӂ����u�T�W��mѠ�ZM(�<���u��W./Q�%Ss�֮n9�˹;\�RrԑR;�U��?���mq|�����Z<UeY� ����      8      x������ � �      G8   �   x���K
�0E��*����
J�*(�
�Dx�&%���q.����ĉ�s�SV%i��Ɖz0(A����w-?4�ѣ�ťy�pqL6��qp�ۓ�pgC�I.�Bn2=-Y���fF�`#��g��0S�=F��@`r+�;K(��_[F˪��� '�GT��z��ނ��Kh���[����.�]F)}$cz      	8      x������ � �      <8   �  x��U�n�0<�_�0�8'=N�4@��kj���H����CN��X�;���Q�%9�;;��ϫ+۰��E��$�����W���zɛzA��1����&�`���V���auc}�\�e����Tc	m��.�v/h,�#�܆�hXPg�4��#58��&!���E)U�{��Ԯ5�"�iT����NI�ּFz��母��<@I+�Sё#�tl��Ԁ���G��
�����@� �F5� :ݹ�EZ�&����՛U�7z�E\��SL a�(=o�ʜH��#>G���~"�B���@��p,��h}	X-�^���7��O9�W]�p�jU �$Xh(?U�,�����M�I]�1�5j��EnЦ9EyO�/���]"(n;�(��R<�>L�5��H$_�
S�{Yn��4.�@�q���6��One�"ɭ�O���4:�N� ��X*.��)J��2<�n7�J���t9؜�yΎ�>Z}S�����(��v&�!�ݍ����
�4���r��
�����z�(����n�Oq-��t����bca����
O�%��N>�Y�o�t2�
s����=L}�B������w����a��MrX*� �u��d��\c�|:�Y��H��l���W;�8m��fdyl}�m>�9t���V���D���&�����֣�ld����1By�.�����L&�?�í,      28   5  x����j�0�g�)nl!�8��ѤNcJ��u	�$$9׵/V�v��N�i'I�������X[E���i��fkdY<���R�t�K�r��ٴ\�W��ʓb��Ί݋��
}$�2�<TxN�]
|I���1E�l'P�@�����n�c������h�\l�fc;�~�2*U���8�(��Q�[J�SB��i S�?�jKa$�ȟK�8pL��X���*m5�xd��;��j`����t��v[����[��o�\��ԇ�$ ���1ц��{��^���V��V�PG6�O�oFC�ۭ��M�,��s�      
8      x������ � �      E8   �	  x��Y��9��_�pBK�62z�٠����4�*JM�U�a��Ё��3���9��j�^�j�V�H�}�s��|v}��ʍ�^l��tf����ů��~��7ۇ;�<�{�p>��{���o3�yk7�ٻ�g�go���<Ko�o�.k�ȓ��/�G��[���1���*7j�Mn+U[�4ecԟ��:��QƩ��[]�Rm��jc|a��*��P�����
u�vj�`��<�j|�N��_^�f�%�R��+<v�nz7}�l>�9��������v��b �U���G.�bp>bQa�
e��k�l.�s8M˙ܤ����S����nO���i~��~[o�����Ӎ�vDvv������ -gP2Sko�Q��fe3�4�[j��z�X�>U�Xm
xZkq���a&��[�/~�r"��x��Sd����^m�_���ϰ��,EZ�sX#���tn��	"��0B�|Q��ɼA�g�~�f����ݺ���Vuovjv9�k����i)���%¿���3W�c��E�q��iٛ��J�&	�GBbPR��Iܐ��\�ʴ_W��%�
Y�-�˰�k��kB��0Qn��41�P��g>pτ�Qօ��]�|{^�<#���2t�5��Mh�J#��E�:�hV�̄�O�3��K�J�F r k�a�&��WO�xj�S+l^��UUeQ��>V�0�=��?f-E�6��#M���M�y��
�֮A.2n"�©)�-gmA��ڂw��x~n��'�&��%G�� �;X1��}~�~q��Թ,�Jkng�G'��7���xs9��o����q��(���P���)uNQ���\�	*�2ԍ]:�ք��[�/ў`y�K�@�mzS���P\J�o[�����QU��ukm�B���%ZdAS�:Zq5�
`ҫ�-	i[f.�L�W���
L���D���k�|�Sdܶ�)y���U=�Z0R���[�N��1��u���wA�`\���Km]�E�(�H ~�0|��bb��N"�f����
(�+���K���3X�Yc�^`&����&�jd���[�f��h�R��pbj��iY`y`�[-8J~�8���~_�v�u��E�o��*��~��?��$G�|��A�s�9kG_/VPbJqf,�,r.�-l�];��@G��F��|M���50�"�� �`궣�]���bl���se|>;M��Frt>"~��X@��	F/|�1�᫁0���|�$�+���)��9]��N�%�r�4}{JvBV��|ۮݙWH������*�Z��P�k���)�wq�z���ܢ����r~Z,�G��������ǂ�c딊���T�V�PR�3�v��m�M��4�OY��iIu67"��!��;���u��II{���N� �4#��`Z��5�eY�h��o)E4Мl-�7�����-�W�����`���tu�ҵx��
U�1N8 $���.�O�5������N���nB��h����BTk[�v�R%{+�m ���NGl��y�BEi�SM'��:�xln=Tؓ��-��/`g,:ͅ�m[XPV4A�r��)�#k��؂�Ek��~p�,q��'��`�[�R���N�򠆧�LTi�vl����k����p;�+��t���]�Ε�I��w�)�-�z���%E0��),�"�ܩceĤN5ǀ�1��a",��jJ�t�K���'�]���iH31`��Ϥ�G�Մ.@ z��Se���K)XB�����E*?�Y�u.�#,��S��`������h��`bl��淑p��ϛ����B��Wql���J��i�,�{,.����AD�}�����yuRe2��d{5�7&E���`�b�]�!�S�k�AfU@y�)6�e�I�b��z����$���T�����H�/�0�H4&���]_K?q}+���|�l�:�M�q;a��=��戟�� ���\F#G+�\JUg�"I1����+4�I���B��󺈭�0|�6�@.���}3���D=U�ֱc�|���Z������u]O�����,���G�4��6�12�I�@eZ�HL�v�����v�r"�I��|�][";�+h۱�'����k#�B���`��Zo��vjƳ37s����	�(\R����ɒmJ-���d��Z�t�ps�� �N�����_cba�פ���A
}��]�`TK���
�]ݴ7�@����ҋ��4�k������zk�AH�`�&Cc�R��6e����9�G���G��ar���x�����w���P[��n��].[�)B�×l������Y+"�	����V
���E/`W���B��2�L�yA9���5N��
���T��%}ߢ��m�`գ��9.œ�#g@BJ<a���^�{7v
a2����|t�??���'?]�L.���h{=^�[��#oE�-&�D(Î��^k��Y��ѣcem�
���C`ȕ��w&�($�;+���4fO~�h��F�{�	�x���̳�-.�'�oUg���Ab�����-�n��ٳ�=P      68   �  x���An�0E��)x�n��]N�h�,� -N�h�@RFz�������I)�d'@����33�ϫ;��D_��Ӱx����[nVzEG�4I?���^-�7��K��GN�[��մ�y�$�����Q�i���$��6�e������7rh�A��|�ޚ��~��� ����g�S{c�z��(DT��^�D����Z	%���Z
Q����$uҦk!��.��}�t�9pb
���y��q�}۾��ʑ��-�klTB�1%4t�Xԋ"�ȩ���;Ψc�e&�:�h�I��/�&X�z���_C>���ڞ��7� Ot01�"���0��Њ�()�P�<LE,D䝣l�o5�,���\T?�Zى�'nؽ}�eP�N��|~v��/���ʧ�p�`��$��A%<�J����{B��r�{��N>Z��l���j���|����<�x�%��z�XO&�+ü�      8      x������ � �      ;8   �   x���1
�0 �99EN��Υ�ZDq*|>ɯj~H�^��	�����M�Ե����Ф)8t�#�f۵�K7hq���J��t�SH,���D��+S�o�_<RK�H����<���H�D�Y�z��jĎ��tկs��y=k9h)�	2S      8      x������ � �      8      x������ � �      O8   �  x���n�8Ư�S�����	���*lW���h/VH�$n�Qbg�������b4wsˋ�q� 6��]i�J��	>���;���{���n��F8���Ʒ�ޏ>�gc�2�|��?;�G��4�	�X��L�w��1a�IW]���j�s�9Cj�ЭH���v��qL�A���꿜��b�D��CD��I�FŜ�c�.'�Y9I�DX>.^�"�7hB%�(�;F�8�ݓ�7p	�7�:��:�)�9~Ƃ�U���%�m�{���,RA~��B@�w�Fs$
	!s�5���&��G�y!b�_�DlF�El"KD�^����|AS��S���]�	^|'9P�pF�t�y(��J�2A@�7�̸t��3�gF�Ό� �"��U�F�E����[��"��A�d��VSCC��\b=Y=,�A~��"inW0�\`��0{�d뵓m���y¡��K��C}}����Wqn$\�s±e�]o#�o��]����i�:����s�a�J��2
s�GI�1�gC��]�j�w2/"xLD��5��kʏ�
�w:��S1l�bS��X¡�CI�s�KO��x.3g+�)3�e;��V��h�T�_��g�I��%����=+��!����IC.Jw�#XU�=	��jL�0ܧ�����r�oߞ�����fW��=J��Q � j�^���ɡ\k��ʀ՞�}c�Fp��o�.^� ;)A�4#"%xQ~�����'�e�B�@t�*R�x�|��s�e�s�, W��ȡԁ,��2�iu':-�¡���;?S���.��~a`���A�j�R]����Z�*ߤ��U���К��:�%+D�jO��:Eo����:�8~�񔈒�v)x���a3r���7�oŮO��ۺ�k5ze�7e�v>5u�����3 �N��9����v0e��W=�W�&��j+:�B~π1�c���nð�����Mz�)\0^�P]�]=����5�:�:8@��8�a�'�ܖ�͠1��z?��SϨ���ԧ����j1ؾ���f���bVk��<�%�y*,�U/�/o��hVo�ޚ�j#�[��z&�Jߩ_��F�ղ,���j�^V���mPf�K��j][ԇa��i��{�@DeԶ�sJR����߶Z��S[�Z��dF�ulqS��LX)3���[�zo��0���S�:H��4[��byG8��D�Ut�+����
ZU�XE��Y�"�Z������i�4.G�5����R��*("����ѕr�P���2W;XwL_(f�)����c�0W <�e}{[5�/���Ӛ���VߩC��LX�-X����}ޑ|��Ŏ���cJ�^78o�sObk��մ/0��^U �y�g���n�:[�vf��2�Cgkʗj����ޅsj��$���j�����pjؗ�-~�r����\��'s��1h����̵R��|ػvaN�~�3�f*����kOu����GX]%�~w2힜����!�      8      x������ � �      ?8     x����J�@���)�JI�^z�"�
��
�twԑt&d7E|-�s�HROJ�m���ϗb���8lĔmC,	����U����d*�0�����W	���6U���Q��CO�4)x���v���t�q��5���:�':��eVl�Yp����D�����l��XB;?ߣO��,ʕ�f��xd��/s�80@׳@���>���<��{�1�7��7�d|�A:�	!�`�[�4��m$>�[b���=`�]�l_����L1	r��8�`�̲���2�      K8      x��]K��F�>K�G;���/�c}ؐZ=c�J�K���"XM�Da�`��7:���W7����6�̬B$-ɘ��ݍP��@������U<;=y��-l�fO�<KM��b��ɳ7�?�=��ٍif?�̎����~�ݏ7��_e�{��_?�����if�'����E����l3[�zVf5}����[<q��葯����<�$���:�[$��m���I��:���$mm��UY�'˷�<��̳��o�	n��.���.%4tm���w����c�V���U��ˌf�g�ʕ�]�E��U�[W4D����L;9̴�bv�3fNgw̾�Y��|��4�ۈfpt��K���[���1|�
���|9=̗$H�,��)�$H�dn2�!AD����z�?5UeR���pVY�xF4��h�om���7��,��MYNU󛎘�yo~7�6��|������W�_J��$ť��2��Ս����_��*3��߂.��,le��oMRcCV�*h刐�6��F�Ӫ-��ռ�6�ۚ��x�o��^�o�S��9z�¦��k0Zڬ��ICW�ƅɉO#�4���%b3�s�������m?�(�\�����~�"j
L���oeR�ë���A��5Ղ%�^j+/msbc.�i����h��n������ڮ��b�Q*����_b�2�0�9X���s���]ee����@J��G�S�g~��4!eK/I����/Du\�`�E��&)x��5�n[5��J�A�&l����T43�:	�w`>����/�lm��k�z�K
y1W#���K��!�		����I�x�W��4B�0��x=����/MN��Ȭ��N�Atޏ�C���C�Y���P�x�f�_�uS�&� �ܑ�4���>��-I���`�H��d.�[S޺�aIJʙ�33Τ����h2�q����j�&O�mV�E�K��E|>;���>�m��z��+�B? ӯ0�)͊�窵��AK0��T�@�H&��&#�`.���-z�n��o��ú�֬b�f'v��g����]�	gO6�ƀݓ>��Iw�'I\�_@��$zI҈u�6�Jo�E[hL�W�Y��b�i?ND�f����dB���ӊ��!��e�b�h6oM�ddS��zʐ 󺱂o���MM*�6J����*#�K~��`V��ݾ/� 6&iL�s�	�dBU�礪J�n�����'��[CpvvL�U{��ə@<�#�YPE��-�Lۍ!�U�ņ���6��g���Yv���&�����s[-!�Eru��f�m4�<�^���ON?���~��ݹq���6��U��P�[X j�z.ύXҨP��#iW-��D��h{���z����_������c�H�`�QrKp�6�l��#Ы����A��VkyEgZx�;]��*L�@t��N]����<Ƚ���;*4��g��l�:�`S"Fp�o.po��{2�I-�OF�4��g#���L��>#�l.`��	l�)j6fc����O��b���}��;|N���=�4��o�g���� bEƸA'SR+[�7K�Y����3�9b��x3֫�0�]y,�K���I�� ^Fx���� �����0�5�����/EΧ[g�Yә�����܊}kbܢM1N���ܱ33QI�*�}RT����&e��h&��l�-�}�tr�	��q�O�:�'��p�K��/��2Z��M���]/�#�
(v*�4�ǯ@�ڴ�u3r�-!F.i��ZAN�-�<�j�-� x�7�ë
qG�X�eފ/Y��
G���0T�P��lh.���F.x�d�h���w�@�e1�%c�0ƛ<���58����� ��\��n��1.��u�xy;GD������;|��A�G8���ZCk�j�y.�9���p �ܰ�x
Y�2JZ�efޚ��_���_n���KX��a�9�0�J�
�܈�?���LJ��e8 4ZTz����V�2^��Z�s.
4���'�05�1x0b�W���>�ԝ������î��m��Qމ#�^�r6^�7�gd�����>Vҙ�Ϣ(��
g�v~��#���N�"�~Kz7�)�����c.mK��X5�C5�E�a�}�bߤy[��cע�#�[
��	��d6j�)�/9�.�٤G_k�����C�JW[�E��b�xz>d�>��o�s3�X1��:���ж����n��d�?s�3�+��aD�K�s�"?` x��ÈZ�t�a�TZ��y@j���Z" lH��o� �F*�
��0p�߫��J���N/?EzP�� ��=�R��w���z�I��y=����
�]�0�2�4�Oc�}���ٳlm������1��"vL=�tpQ"	U�/��0���Eꎃ��*�cB�G������ir�P��ʒ=��A�g�;����!.��~�D�J�}W ��dH��S�9��8}o*�>b���(��B��z�e�r� L=O��(��P��1���R�&��B �RV�l����>��N0�����B�#ٷ����p�>�����H�ͬ\�C?��U<��	�u�����K"�)��a*F�4� �.'y�B����6u�m/����9)�j�Z�	�4�T{��ۏs���h>�C��+A�]�q�}W�8i|�^���5%���%1I92R�ǅ#5;IHg:�����P$����	�Q�=�q�D��T���*��I$���@Գ�~r��u�ϟ�zvq`��TX<� ����a�m:q�ň�5�g7YaW�������*�d���MCn��9ka?ݸe�}��Q'[~yx��+ۦaڸ�KV䆥�CN� Ƴ��8��C>X�� ��E$��5}�hdX���;?>��(Ϯ}W,Z2�]Fj��O�j�k��!>%E�2��2�e�V����b�;?ޝ\ͮ��s��I����%O}�����/ƀ����g������aV�����\G�:�5W�T\�4���"2�]J�h���O��xp��!�x��_�V=��3֌�`�g1k^�<Gu���[�={���"�[�R8Q���&Ue��HI��g���ͼ�X�G���}���V�6��@�������h��	I֋�pNn�j�8ԥ�v�F\���ֵ��j�����0�<IA�T�9.d���XZs-!f��T��3�f�<�������*��&�b���V����RGܞ�%�Ư�K!ha�4r��<(~B,Xg��诅K[)A���پ��2F�;���bd;�0��Ti��f�No�>���l�(;�M�W�W{]H���dZ�U��$QR~��c����}�J>V���|��댼���W$��O�$[72.�HM��Ă�}8cY�D��������J��K[�4v����=1��-����/�}�*�J�-Ƀg�~1ԝ_9�g��̾%�7k����
w��D���,ON�$��x���Q"%������DG�20��-��]��\��Z)�O����j��o��ŏ�Bb��i�		1�l6����
��A
m������uzCV�1���b�z+h�.\{9*�_���D`���XH��%����`���8�(jnETw԰A�2��N[��2���g"u��������l��)�'�F�K�N�[����Z	��ۧ��.����ɀ�[).��¼��32f~]������xAR�� \8������!"Ĵ1�uz:dLCvH��1"Ǵv�R[�67Z�w۩*���J�"��8�� �a�Q�{�ܵVJP�-#3͕���"4�N���Ski���j���o�׉�����\n�l,�t���H9 �!o�N�{W�� ��VJP�E A��:��ļ�_i��ʤd" ��G��J$��ŽϬ���i
�oq5:*�x����Q͎C���8^�H�a��3�_>#f���!��.���� [z�3t�Si��ˆ1��R��\ZHQ;�ԍ֋/[;YK�,\0~��Ʒz��%����L�#��������Ҭ�WV�������"�Nd� n  5��"ck�}v�+]D.+#$����J���������M��v�r<�
r��ʪ�U�&+lt���3	�Uܼ��r+�q@���Pq�Q
��,�`������Y1���G�f��(�_�0x���}��H��C]�^���y���n��mE�cj���o��(����b\�A��!�����,M�pw4;W?n1�.���'8w����V�ѹ�V<cHJQ��+i^�(iH��i�n��
	��X<���(���}�jX9�\s짯�"
'�~!�v���)4�f�A��{1��$����a��lx�t���
wܰ�+�*��}�hK���.��2�৮�2�n�5�t(��bQ������ ���GP�Fuz�yT%s�Rn�w&���d�*iM��&J#
�_���� ׋!r}�v_�^ߔ�����JeeL�MH�s�D3�C����B����la0�A�ϓ�D��C�Y`S�t>����{�EPY�����}�ݫ����E�fUj�KC�~/����EPE˼�5۸���Fr���Г~�"pv"-R�����\��H@����VI�-� \�hM>�w�?c���?�+��#z/lA�\~���n��4�BUO{!����9�"9Ĳ�8�C�(��*�e�X�6a�Rl�&�k��L|����R��cp������<{����l�Q�WH�ԓ��Itbj��-�+�h��y�DרS@��'zѢr+7�#�Y�������|_g��d."�s���ogf<U����K�s�[$�_hP�v5^\>b���	���|j
>/g�����nD8h��(���M6j.��<>�b08Kу��W�+PR����sj򪷿��W(�~MO"��"��-��%f���QC�o��.���7��6W����1��J9��T���O�:���Bd�G\��xwj�g�� �w��	��3�7�E�wl�q��r�.��щ%|]N:�8ԓ�����~�b71���q��T���6/�s:v9�	�51�=>��n/���7fe*�Q����{0^���Ե�X΢��K��˙[9�`��O���8�c���q�~��ޝ�\|�h��w�A8�!�P���:�}�5'����o?6�(@��5y,]㈖K�Em��pD+R�l�^��Z�e�HS�H�4�AY��!iz�hFLR{YdܫX��$��[�D$��?b� ���/O�K�f�wM��r7Z��4£��C�V�[=zk��3�d��@���z��<�o����_�'1��i\R2��Z1���v�B�H�ĕ��Hm����ܩ�0QT3�D�j�a���-�x/�<���$�3�;�q��v�wuX�z_�^Y��)�������:��ψ�B�����$��>��@�-��69�����M��I�|����kAr�߰�e��e�O���W��0sz�:B^N=�.}�<{���XM���.���ͧ�	�t��C�@D���|n�;1��iլ�4$��+B�QN�a�7�x�1��r�Q�.XF�R�gѴ�Ruv/ S�%�њn멘�c@��E�t"|aW]���88C�wG����K����"*к懠�UY��_��L�q�O���g�#�\=�R��A8U��@_2�A�U�[S�����R#_XѠܝ�_�côd�1��w���|�<������f�A}����䭅�v����~�~��G����K�Ճ�H�V���G�����u��e��l�jT�lz��|���X�ݡ!�����]��0�7c ��U�MUE-j�3z�e� �+!�~��K��ե�O�я��	��(:����#������4{�Ѭ���������OHι�nW-��Єa<�e=�w�c����<{�c�@t�`o\��0=W�%X�N� ���
���)7�쨹��1H��8b?��gw9�;=�>B��z���sУ����Ě����t�/�Ƃ��[�=��\��P�LRRQ�/�X1�^�Y�n���^�ݽ�-��j�G��07�lKO���
�߇ʭ�Z9�&���� }�S2ok>�'�B=��c�V'���9&]�W/���	�}�Z�+R9?���<����K���yV�z�~ ��h ,ѩ��� ��糉J���FG$F�;�z4J<֣�#Ft���;P����F��I�~WvWI,�u9eQ�_�UO�Jȇ�F "o|A�:��կJ������6��Ύ��\y��[������p��3z��s�;u֭ �a�e�<���+�����@:q'�*y	�S�єn�ef���+	�����u�`u����Bc���������s�p{�߿!��[���LAG񬢣����c�.��S�oR�9e�"�����K''%�rA[wEɩ��ǁi*'.U%����W����n,��:��C��3�H�y�i���83M��ߠ;�Ke���M|2n�����z�G�L|dý�@����R��̌��W�@t����g��&����V��4:#y0��K�&�IW�8Aă`�uN�����Q�Q_:�dlH�^�����2�F�n�v�,� �{ZT�uEՌ5h9N� �+L�2�2���2Nu/�'6'�K�{��P=�V�V9����[�⫯&Q��k���5�0ȕ<�r�q9�_Z�Nk{rc��o�������P���Z:��^����Q��Qh�3���1h�ڣ�;DU�~�� f�+)2���3�>��8����EL��!5�c�xwo�yq���}*�#��kѝ��B-�7����j�������]Ѿv���v�d��>�ט���%j4�a����6��K��ѳ�;JN���m�c���]ߛ�c Z�R.�߰$"�þ).v�U~#W|�0!)����ƀ�kV��ۡ1�K��	!���#-�'��X�g�������#\@:�d��A���"�$P�"�<h��=�����̂��;\���0�8>�ƏdGX��1Tzf���� ��ؓ6��?��ᵕL >p�~�:}�肆R�7��:'��c��G��L��˃�Q�S�z�r���ǡ�0\5ƏJNr����RDE�@���*����i�F1�3�რ����.'V������vj��R�kF�^�Y��+_g�<a�\j���Mj�f�QS�u�5��v5�2r^{���ʀ1�-�h�{@dr�D �K\�Y✊�Jt���n�L��J���T����J.)0�*���yg�MX�J[&#����A�NN�6���@�j�t�qx�s�sg,E��=�.��$�P،bZ�1���#�Wn�Y�p�����04����d}8�u�Xc"��%U^ p��"0��~��sD&�w��l�1�(�����Ue�E�.^�N�n��
?� ��������I6�xs�y�xC��˿�הw���ɒ��c`(�t����~�`C�p�TCf��T��e���~�mqO��/=*c���1/�}�q�R���gr,ڌC�b�U��ύ�n�v3M�~4�Ce-2���l����������;���G��4I�RO��{����X-�� �F��ȱ�?ef�'d_Y����Q�sg4C�ȣ>A{׸)�٢�ְ՚��֡2K#�|������x	�      %8   �  x��VM��6=˿�����l�osr>�9���I������s�C�[��c}3e;m/���Λy�7W��P����Y��~����z�ެ�߬t���ܜ��W��V�M����Ϋ��R����d|^��Iu^%�Z�k�[�T��e�WM$�c��<o46���n���'���6�r:ay?|K����J|Г�f��iy�v��I�g^�]��7�� .���c9���h�U�1Q�#?!>���@��O?����1ZGE�Smh����P
�=igk�qZ��&22%E7yۓc�T[�Xn���c��F2-�
x�O&8�]����.|���۽�B�O�؄8F~�����̋j�#�[G9����=����Z!���޶6rAdJO��V��	I��iN<6%z�xc��P�3P��CqY��q!v��[8�r���uk�O(���ش�N�����BDπ߮K����y�^U����K���)�}��I���8W̷�ΐb:;4Ꞙa:C)��h��� b��|�z�(!LJ��Bb���!��y���{�V��.�:]�&h�qNȏ��>L;CZܞ��zC,3��7Ys�{�h���˙S�E�S�\e-Z*2p,���y�wp%����]��:x��'[(�����V
��O$���J��-�}t���v9/��:�R���
^H�����?���,S�P�3�9�����ż�?��M��_F�X"���Ӫ�R�����=Xz7�h*��R�T��ݢ��2���%�cL;!]<K�⮕�����[����δ��W�p*��L�����R�ɺ+3&�Q{-�7X�!�|[K���5�"�<�����s���E'7�ndO�>"�$K���;�����!K��;~�A�ӿ;�PFz���$��3syQ}(��X&�D��>o�������&���Y
��*�;� 96ݾqY�w��<�B�.�	z4�N�-@72?
�Y�;�5�^8"l����a�:y/�9��������%�D:x2��$��Z�YD=s�.���o�>���>�U�*��y�Rg���\����%�y���E=��k԰z��[`�a���9Ϛ��ͻ��FF��Μ��k��le1ʽ��w��1�c��<�BO��Xq�Č^�lC��;�Ca��H �9���/�óŗ��b�z��$      N8   w  x��V�n�6<;_��0K�h�=�N
,P���'-�Z.$�KJ�?ꡇbo{���q��	�S.E��Q|�,�z�q<��ѝۿ�a�]�|x����׫�٪�4���^ן�'sr���b��s��/���cM겯�fA��S�b����e'�NF�|L�	��e^��i�F�X�Bl��y�-�Iy�Z����5&��՞�D�S�`��Q���^2�X0�6����u���/���m݊���Ê	!�v�Ï;���l�F����r��m�V�6>>>>+Жh��������������������������`q�8X9Xx<� � � � �@���
ppK�J�J�J�J�J�J�J���BD� W�%�`	�X,��bm�� �r��
�W�W�W�W�R�U!Jnn�W�+���Jp%�\	�Wʤ�$�u�ez$eLҘ��ı�&5%!%e�!�q�8$��L����Z���7i$�%BJp%BHP"�D	��,a*�qM����d$�&���<{�+d�_T���W�����0Ȇ4x�f��Q�joN��OC�	ac��Gݚ0x�������]`.��!�X�O��JW� ���Hk���$��+�����N�5}V�f����V�}pV���9Ϡ㗯#9
��߯�Eߞ�.����i@51b?�C�����@�|E@E"H�@B$  ��
$W ��H����X �)H���D��%f���R��-���al��ó��Ǳ��/~}�B;�Qظ�ac�a��	�krg�쫉�;��+{�^�5�u!�)�>r��S�H��?�o�C���?�ߺN׃9�鸻����z�$y_�$���p�GkҾ�h.����u�Պ�6_F�ˇ���Ɛ��-���Ű[�O��q�'����uhG�꾷����[G�e�1����!˝���1*��kLZ��M�8�c:J�9�x[N���a<���<e��z�����x�xQ��_ĺ�{@ _ѓ�U=vC�Q�cLF0]BP�-��L��	#;:O�}�nTt�e��h���4���`ͨ/��%�Hf�[,�8�֐7���&�(gם�zch�;���D]���7�w�����4yҡj��Ϊ#�z�E�
jŪ�_/<�ә�s�Chq�r��,���nuss�/�A�      R8   �  x���Mn1���)�lÈ�4?�"�@IەC��
�8�4A��� Yu��\�����mw���̈|��xt�qrӯ[qd�%澕����^}_�����*��r͍�%�W��dy99�\��7cx.1_�-G�\YS��4<
��pJD!��I�8P����6Qf�I�d�$r&�$8�>zg܌���=^�R4��#���4�d�gԘh'A���b#F>��)�M��>��h�v��[2��[-����}���9���
J�A��pF����SͲ8;;y?=:>~���[E�C:�{LZG�gT�E�}b��B��$/�4�G�@ւ��⑚��#�]�\�"CL�"�q4��XP�g�d{��`%���d�*�V�ѭG�-H*�.��$_%GN�?ў�����`\�x�k|�:�*�ߍs��m��g��#��{��2�+q		���l9�ɿmh�KPl�~��.�ee��U}��v���HC��y(D_Oܑ!KP�����*:4�x�J����Q�?$��Q*a@M�ۢ�W��4^�l�|����uNa����Ȩx`���W�\�C���!����T�X�M�#k�W�T�ֹ�;]؎ϑ��u0:����O*vT�f��*�՚QZ�����^��}����"B3�:H��r�ߥ<y�R~����[*d��v⡮��!&����|:���!�O      �7      x������ � �      Z8     x��U=oA��_1e"Y�8qjB$d�$�%��-x��]�(䧤s�"E�.-,on��X({����y3\�wiQ��Tn>�!�.�醴�/���/��N����fS���׮���bdJ�#N�*�e%�e1���8��t�����q�d��g#Ss����y��[���*��i�*�Ϊ
Y*��pr��h�����r���%��5�잭��*U.t \������;��L�h�	�f��2��	��z]e\K�&ȥ�Z�].Y[I���gGv�ϖB�������"�<)��T�Y�j�A�C�!\?<"�\�+�e1�̲�W4����U�L^�y^$`cE�p�5��5����y�r_P0�q
��a	�PO��R��4|���ƋJXFya+���ù��3�MT�L6���x������QThc��7�������AZ�>�l��(���I�~7v����h;�͛����14�ĺ��Y�	���sI�$�R`֮^�(�����fy=\P�P��Y���,���_��)Ѓ���M�"o����o�4��}7}��<�]6�Ƅw�lۃ}����������B:݇��~UL?On�V��Q��~X�'[�Ev!�rDI��gᱣP�<�\����#�U%�#c��	��s���È��q��)b$�<��.�KMI^Y���U����5�ʃu�V R�[��>G�R�M�%� ��$���g��������}�9�N�%Ҭ��-s(DXK���^��)��eB�f�$Ў�{�|�;��h��Ɯ���z���<��      �7      x������ � �      �7      x������ � �      �7      x������ � �      8     x��T�n�P];_q?���[DA������5�'t"����J�����c��̵�&�*�(���3^���s3hǽ֟}̃����[�sU�/��Sf����Z�\V���6i���KL���Ǻ8;~xG�͎�Kڑ�˚c�V��ީ��)̯7!�c��A��;n�5�������VZ�n�dU;�9�L���	a#K����0�g���>{d��M@O����U���p�J���lNS@d�N���RZvx�/���6m�zq�� �t�X�>��U�1�ART_����޼$ �gf#!{�i�T���3�6qd�zy ��&
rm5p f��n/7�x�rҀ��\'f\��Jg��Z�@ �̠H�5u~z�g�|zԛ�B��E�69l�v���02� �~��3�-�}\�ޜF����^}+T��(�O��f�%��Y�<�� �I̻8̸�\M��S2�f�B��� M�4�S��GV�G�ɮ�h��lo2im�Ė�V8:hf
(7�kͻ�+]�ޞ����b���j��	��'���'�md|a�"5\�p!�$��sW�j����q��)��^'�x�ѻ���O|��a�O����Լ�Zn�n&*�r�MRF��84�/7��b�o� �      8     x���AN�@E��)|�*j��@�BMŪR��8��dfdg�N\�m/���Vl�����_^�Wm��SH�c�2$����{]u�f*^H4E��Xʖs�v�jY]x�Ʊ�	�3�x�-�P�$!_�C0bS�-�g���?a������~�%���UZ@�7ܳٱQ�?�БđX)�I�.�Q�X�~C�)���w��55Y()������d����L��Q�zK�``:�͘4�c� 9�l|��D?w6��h�v�>��t��]S��L�(      �7      x������ � �      �7      x������ � �      �7      x������ � �      _8      x��][oܸ�~���ƙ�a����d����X� -��R]�9���K�*R"դ�<$�H�[M�Ū����|us_^�\�x_���}����ۿ����ټ��񌪦/op��?=x,04ո�D�_�7����g�W}[����f:̸�q�V%9�Q]��8sE>�+������y�o�}�۾�:�ME��+�7ѯ��_�k4�?~�_�_Q7�S����͈|j�����C��=\u��-�-Ƴ�������|n��'�z�s��0��
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
��4�Z�'���B�r�G՘%QF��/'5;�V� ����馡 l  a'F�kq�Jc�F�$%hw�Ǧ����w-=�Z�����/��pfUk�m�b�$�rK�G;�<	@��v.���Rf�R2K%{Py��{��}+>W�)���$�ksa�W����U�+�.⑸! ������e�����{�������`��%X��%���t�)�Fn��R�LS� a���������K��z�jn�<�C,��䈉\l�Q�G�{ޫ\<da!�;��ș|C��w�w&�Q8#���a��a�Mv؎y��ҳ��E0u$F��h.�Zcn��A��(���'�֫q�o�#MA����^���\Ѵ��x���;��v$�i��LBA>����~���)��      8      x������ � �      ^8   5  x���n�:������b������ �n�@S��B��d��/�,�$c�)�C�s�i�okQ�J�M�ע-����X����$U�������t3����b)j�rѰ���5b��u�N�nn���C���÷��VL\SQ���Ě�1XK9Y8�t�3;,�oB֤XIֲ�#~V�XP^�!r�#)"��	��v�V��K^r*^^���o��.xL��4�z\ĆEW��H��l๧xr�F��'���������s|� �C�1����}��˂<!f��R4%Q��Z*���:��m��zo��V3�e���_���n��aP�n�n���(z��%l��ZR
ܧ�w�ĭ^Z�7j�F}+zd_�6�@@|kW�`���"GAP����C�~u7���X�_я�Rz�����iP��~�t��H����Ex������>���b�p�t�Ѥ��Xlz�F(�|����T=[��5в�AA�L�
��epჴ�g�-��y�aՃ�pŤҢ�V�(�2h���5��J��^��\1�;��|h��X�j��V��6�b�Vr���X׎��X��
��ʃ�}<z�k&�JYi�j1�F�hp�^�H�-7��,Q/K�f�}Żj��œ����n`,���׸���܁�����ުp����ҷGN�=�y�<��9uG?g_��-o���[^)�t@�#�	j9������]����0nӾ.N�-�J�0s-*��8�C�y����17�
%#:~ _Ik%n�k�h��d���3N+Am|ok����c�	2�� a�D���7�O��T*�c;�of��g}}�to��@�s*�!QR3�';c^_v��h3Z4�sqmL����������������F�4FСY<�N��yϤ�phQ#HXP���h@x^Mj �k���q{@DP��@=ʡa! �(UR8���DC��U7�,��,	Z�[��.�l�91YV�e�V[C�U���ы�M|9�����X�_����@<ɈPxe���=��9�C�4�3	�p:�QvB�#��Y�|�� $1�Ț�&~�=
C@�[�ʥJ��?�/)��Z'�,��7���ī��A��HAOm�H�)��[1��&�����;Ě��ᄿ��e�.���N�?��p��[�!���y��a�3a�@L"������QO)x��|�<�8�MT7=8Z�.g�V6�j*b?�d�K �+wyׁ�v��C{������wg�]��]T=ռ�TO58E��N��-GF���s���^sd�K�ͺ��A���u���c�����x��)4.)R��i�P��4-v\���2�qZ'����I^�Tn����5X�-S�e�$���D��%���.3� �����Ш��_լB�/��/^�:��:�S�0��Up�äv=�]d��˔�@*��s�]��N�~Z�N{Ԥ5��'�����њR:����6����H�A�~�����l�8M�{Qb���͖��Qe�ڜ[����'�j����;-���8��k;RD�\��N��p�����)N�4���d�ĸfF;�;>#J� wF�{3����H��T(w�'iA4���r�^���$��J�#�L�0`�@���cT=
��ϫ�qU|V����o����`p�o�g%���Gxv<~/E-�*4A]�;]���ӆA|��́�L��h/�r��������C��H�sC��%z�G�oz|V(U�P���2���{�
Cr��$0�E��)A3#M^v1�d-_/g�}��:��ؒm�F����Ժ�n����n�KQȰr4�K	��x���v��}�Ш$jh�>�Fi�������?>"p��TLx^ �h��DY۵����2K�ҍ���\:��,(�Ub�ɱ�,"��E|��2��`��b�1y�k/	�zV��u������#���؀�(z� PF瑩�
��$J*�����d)��~j�������G����&�o������ͽ����;��������?q��'�y�u��Ա4�;l�����n�U���{D+�I��DeJ�Q8G��G9���U�4ז�#&���w�s���T��ƨo��@L���4�d~��PS{�̗TC��@ehW�S�gg;��.�˛�(�`��Sw���D��@<8@pԩd1O5�/B�ԓ���W�׍a�-H1�V��N�3� ��O���Hd��:�D���`<;L8.�-�WfP�I�dd�g?A��Ѯ��)�g(�7��D3x�G��&h�~L�'�$�+��%��Uݞ���+�'�|�*|5�cs+)J�ڒ)��!r�φv�Qw3v���&��%�������8��C�c��VMtBd	��\�����'����+���[|J��h�b�����q��}�U�+ a�͆��d7S������]�G��/��
��n�oTi+-*�HaC�&���ѹ�����}��$��R��������J�&���ᾁwFG7sD$٩�c_u���U��V�C�1�4R����ڐD��x�B�A��-�(q�5���0�c�Y�j�Zl��}�(����n~�$һa��&��Sr����؍\�aj�|�Y�48�O�x�K�j��L_�����&[g=]�MH�z�{г���gSǝYϢ~�7;��[/��'��y����q���N���)�|ٲ8�K*�!������(5��Ɏ5�R?�<��N��̟�3��|{ꄇ?���n�a*r�hOgwm�P���za�4U�BcT
x�^��R�p%]o������Oӌ�}�xKk��O�v�E�b�(9�r����������9       `8      x��]K��ȑ>�E��x$xw�dF�@��F��@�Y�,��b5$����qs0t�ŀ�mF�� �6`��*"*�̌�����:M�k�z��'?�>����P�Ǧ��'͇o��7]�=��}��Χ���>���|�2��͡�.C����8����4�8���;��~<vM�z�hv�v'�n���Z&��R������S^����ρ��N��r���y��s7�g�wǖ���2�ǩ��_�OO���4|�8=�炀�#�ri���������{���9M��t��]�C�*�ױf�홉���T͸��b��h*��fK��(���K�� ���wl&�a�i�����~O�T�����_$����qi��;����{>/���T��F��3��/%,<Iy?p��MӃ�KT=�kQ���al��(Y��ӝۏ�.r j�&Y��c߉��Z�&�30vx�a���5���W��@�vja�ja��2�#{�l}����<L��͗��@VB���:x�A���E�*J>c���J���W�>�Le����j?�<���0N��s�� �'�U"̫W�;C���vb���N[�p��:�f����J�/ ����N���a��;ɸ���WG�G͎�j��/�
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
      8      x������ � �      8   �  x��ZKs�8>�CM6��=�d�B���T��,��l�+�����mI��<,9�L�dIV������d����y�y�����߲�	c*�hKʌ�Pʻ���B�,�$O8%��,����9;DQ��^��$S$�,SB�BI���A4��� �L�J`�{7�)�<MuO|*r}���1��=�1��b����xO5�lB�ѺܦV�YV��(�V(!ORX�D]y6�ӈ�~�Ԩ'�,�Fu���as/�;�C+�$d{ۘ��L��4�N*+��;P�� 2Oބ�l��[�"��r"Y��J�Q��$<��I�
x6�&q�3�Q�@��%Ǝ���l�~aG��F��}v�J�b/�N�!�XB�z;&a4J��`�g�����#�٦�1���!�B�u�7Sb�d��a л���t�D�%������������oF��d9Y�U/�hQ&��K�#��1uo\�%?��=1/��A��4OFBUJ� JrZ&��/� �8
�<�L�"��֗�r�X@b���HR�y�!pzxZ�T�D �vB�v-��d��3C�I��{�$+�-ܮc��	C\y�9<��D��rK2� ��b�<�s���AEJ*r)r��	qt�b��̙��%�D'�!D�!H|= Q�Q��!@N�,�6~RT����tp�x~���ɭ�=���P@��3��D�@i�#�����}2�Wf��$�����h|���Up5�����(9���P� �S�a',�;#zF���z0�^�d�Sr�8�UW��#�Z[>�±�ث
�c�wV�:��b����j����	.C���܏DV���O�s):q>/f>���P힚hR�i2��4��gՁwժ��-��T!��*�m 9A"7��~�7��D�9i�՗�_`*^ �n"<��e�R��
�*�t�D��/d�Ƀ�q�S޻���yZސ�D*B$�E2G�Ճ��}}��� 7EQ�hӵ\�e����j���Ɗc�d�T�"?ŀ~�W�[�&������$ôu%# Bz��0�7[1��C5��_A����2_i��5o�����џF��Ţ	��-΋A#�d�(�\���No�mg.��J8F��%�p����5dI�Z�1j��!Nz��dϐ\���j)XQ�}n�Y��� ��-g�
f�zSUb����N���a�(ժ�x�_OR�eu��1B�zI�q�;�6")�;դa�;b��n����N4pަ;,�Y�Z(s�'O �]�%XD
g(�rxǧ���K�=�"�#ۄ���۶�� J;��לI�nl;5�R�ClNЋb�������3u��lr��dEkj=1�uM
��.�r���Bc�b����<U6tR7,WX}��d���k�~uGͣB#��E'��H��X�O]P�?+�=|���>�k�1�n,��l�@��X�b:Z����po�c8_�8�aP�w�Շ��n��9���h4���zB      b8      x��}�n�Ȓ��)�<=���%YV_K�H��\��X)�YM��>�ͣ��Y�b�;o.p�b7���dFfF&��%fTD�Hf���.n���/���������ܱ�g��阤YY|.�}�'�e�~OrR�.���i��<�y����풦�Γj�I�5��I����?~�+#+~�wL��>�&�C��a��D���w�N��Ȅ9~3v����θ���׿�N��rO�2�.�ӡ��+R7e�'MR7U��_�N�]$�bmwu����,�S�$��ͤ�,�����.��"��������@�R\�>�B��U�o�]�a�HwOn_�3��(�D��li������'�9����'�CVdL�&{?�u]�[�z��͓�����>�_�}���F���c��|_�� &�yawK�C����CFE�������gO����z!���}*z���g��h���M��rN�	��5��8+��� >��3�N���<mJF���du� ^���yނR��'RU�(wgI�_�S�b�^�5��[���t5ړ��]��\��5{Ε=d�7d�� ^����ɾ�]QC��/�"KC<��16'���I����*��{j0U�0O?e�_��H��|Idҋr�z�n�����H�5����<��e�/ޓvH�A��vr"�_�3���q���G�=I'/J�]v�/�+�Jz�޽��j��� �ck%�<T���>�'Iկ1J����lOsW�
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
6S��y��'�v'�k��|Q� ��X��=Ǽ�uN�θ��-)�m�3D�1R��n�J���~�����6��      8      x��[s�X�&�\�+0i6�Ru$ŋn��ƖIQY��(�L�ޮ�0D�D���6���6������e����O����~n "RY5f]m�d ��Ǐ��ۣW�����?��Y�����߼���k����������ۣӣ~�o�yszyr���ED_��c����o���}���h\������eq�fID}F�E�D�I���1�~�?_o�?�	�TQ�G3�_���8�/�8�&I��Q��Y:�'џ�ߖ�"���EVL�?��u��GY2N�U�̖?�tG��O<��yZ-�x�.Ω�,Z$e�.�2-�qa4��J�<�@�����+:��������{��j�����(-d-�D�x!�E��j�q�i1|���x�I	T�Y\%�w9C���P�1�ڦ/]	uq���8���G�79A0��	�f��{j���/�D�a9Is��$'he1Ol�&�QYT�pQ6����iYϹ���B��;;{4(����g;��P_O�/���u�H��)��@�%U1 ��]9�s��e7��hsqIVF�K^���@��a�q=��Ѵ��,^�����6���Y��� ���b~���S����� ��� @&AOB��/o��7���X��EW3dt�pr�|���-P�9z'��,��iV��@���@����mA�5|3	�6��#�օ��{<�m�3�DP�4g�MB$aL��ƞ����klґ%��:�pأ#�����:�R���N�f�J�Ì'�N���0�sT'�P��j.��y��g������rj�D�Y���	������C�5^�bb�˽fE>%�4vธ��bx�L6���J��l/g$i�'�q<��|�uR�A�a�	��Z�����`��H&�Fo�=:�m�8=�F�1���(�I)�����G�߽u�6
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
��9�-4>[�©{n��h��n��eu(H�9m���.i�/l�����5۵�M�_يI�\�x�5��5��u	�q��+熄���8�&O7�`����������9�3���/�zv�ڹ1�f��~'����Z7�k��wǭ�P�߷U��1�{���(՘YB��םp�6T�Ĥ�U���&�8�Zl�Ȅ|�Z�+.fm�Ɵ��8�S��Ej��0�sJ�+T�m����P�NL��Z/��v<m;�l�\Pg^.���m�ܤ���Ur(~qe���b�m�t\�l�}7���]�&����H$��F<�Wm�)�Pf�T"��<e?4�i��b,1�I�h`ƫ��v�ˮ��7޼���V��My9c����y��џ7�m����W�	�s�����Ŭ�Z���'�&�z��a8�5l���ŉw�W�o�Eps@8V�1�u]��Iz�d�u�kn{���q��s�|g�J]����ST;�������ӄ��U���;��[~�ᑒ�$x:7���D��n�/�L[ׅ��W��>���1������׻O���=~���������'��;v��3ЀO��������=���o�w~�Y�Ǐ.�8y1(��}����YQ��J���I���/�X������J��'���f\[R��"�J36A�[Y2���.>D^G�"�m���z��ier�r�.��ͽu������}�������l�":��ɻ���݊�ޟG�_��_]�/���>u_\�zQ��������6�?��}���:�L'Ovv�{"� � A����ޞ��c�n�q�:�M�'A���u�7��&�pwgo_VՋ�N����s�O7O�U��t��̚�!��}7԰]��`og� �?{t5{]�3�� �惪��zd?�(�SNxo�|��ׄ���g��Q�]�j��7�YI�e]b�EF�vQ����M}ڜ�8�DP�����O�u	 
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
����M"���7[�������9�Yt�]��O���D�5,���$?_I��i���	P.��(㺖ED��S�P�Άc�`8]��U�k�%Ǡ�h�V#2չ�Vq�׶�L�k�@F�ĺ�E�%��۔`T�E����?��C\Z�B~�>qg�� ��즖    ����[�fh��V�_o�Bn���xzٍT�fzP5�8�d�j�������'����Ɯ�"#��`́?o�x�֤��?��oCT�p����Yg��yNl}�^�W���N)o�	r�ۧ��P��z)�`&�_�/Z��P�V!g�&o�@�CM�����b��[��,Z%I����4���5�ON�@N�������')�X�C��3gXc]u�|��Ml��D<�}]d���ϊ*����� ȥ��*��eC*��([�:���D�r�r˃���IIw��o�y*�����Y�P��˖?���	�Y@��{ �8�9�K��Tx��⒉㦾�s�n=Z������,��hO����rTçU��Pp�7u+���ޥ��,K\g�
�\Ie��=�M���H$��4]�3s N��w�;�)��̺C�f�Xh��I�6k���%s�㾯p��Ȋ��N��q﹯s��;2:�.�[h�T*4��x�p������QY�������|�9�)�$>����$&�\�â��L�KB�p涠Hy�0� gV�"e����Z3���r� �Rf�I3�S������PP)���f?����%F�$�9�Y�)���!7�m���[�e�Q��5
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
����̫���5�k��w�����v���?�����;|��s�����dq�~��s����ɳ�/9��tu��<={���$�?����a>�������?�TN�*��>�� ��g�7�����;z�{�l��"ZA���˷'��n����H�������������%�$�^�bW�i�`iև{�����-������G{�8���>A�.��ӛ���8��>zrrݿ���^�������H�Op$�f����mt)^�9���{��뀱���w�ߞ���~}�xs؋��u����|�r�Z��:=�_��߾�>�_1���雴�����Y<�ESc����"H/�mߏ���;�����V\�7��?��G�֟ƳY�O��B6O���
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
��'�˳닓7OMQcH�FxS�N�'ZG	WNF��N�PR�������4XW�,MЦ�DU���oT��|�����]��<��=�w�j�x������ϝ�����?���7      8   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      a8   �  x��Z�n�8>�O����)��Ǭ7m�m� ?=0h�VXH�@IF���������v8�)Q����[Z#���͌r�-U�Z�����B��2�]�l����J�\o�nW\�Thη\��6�R�2g�f�b�G�J#Pf��x��~|������*7�o�r���o��K�$�:zx[�J-U�����?_=<,�v�݀6�a�`r��o�;�=�{��m�d�ҾMi�� Y��A�4��U<������o�o�l�5�u�e
F�{�]1w 8&]ޖ�ZW,�V�����zV!A�Y��N��n���t>e���x�'�x����\��0�;}оuG�}�l���>��&OO�oC%?��
Q�T�F�T)xY%~в
����'�� 7��\���m��>	��lY+뀆c�R��Hl�o+���w��Ȓ�"�@Q�aR���4F(��ǁ�ȏ��UVl����i����fZ�.�˂e�R�6��g��T���=A$��w�kN>i#_��Yn#�}fp,�L��8��5�g��ΛB(0�6{t�'�I*e�����M���>��L����<:�s�/���l�Q���������;fŁFq����4 �Ua�!��S���dЈ�ܗ�s*H�|xҵ���	'�HxP^�DUC޵��Mv�0@�*���n�,���3�xIQ����[�O?���Z�%�/r�p%���Ď�{Y��	V���!��8���g�3ƾd�%�0@�
a8�Z�B�g��#���$�V$��`Əh1f�����c~�e3�
N�M�����fK`p�$}��I�0)�3|8�gt���������&����ke�	�#�_ǥj��̂�k��pV%#r�rԲ`��a�I�P$g�����[0��t&m�MI�4�����ɑ�d�Mf�/������o?������j��Awd�b�c&l�y��DǶ�i�D�o�����n��]f�RGƞe�2&0��g�,;,�]M����u��}2M�e�U#rZ6f��W:�/���b�XW-��,�W]'[�<�1*e,�zaj�Mxg�^x�0h���:�f&�� J�7��sݓhI������ ��P��a���_�
�h{����� k����Y�A��dێ�&��z�kr�� ޫ��9�]z��x��<�㊂9����p�@K0��6�ѓ̉��y&�;�\�wnoz�)���r�0�J�B�.��_�3�J������[�5�����"ΣA��)6�)�Y�.uf�^G$���i#:�Ȥ��w�K���t��i�'��P��%�������r�!H�׶|�* +���W�Yى���a���J7�ϖ	^�-(^~K�׸q��Գ�e�,�x{|��p��::�"I)�`���#�}�A�J!R��9H��U�Q>G��豩5"��O8�mr�IQ?�b��߁_1�Ps6�U��'?}<Yn�s�����Og��1Jz�A�f�'D�Ef� 2Xs�}�o6�p�O�<d�5�S]�:����N\����JKm�t��2#K$����h���'#/�0���,Z���͂�T
M��B�:1�1U�������?�Ko�F�����iL\��)~������Q��y�!�����.}��	�l�?����m��Gm����f�����HTv
Cdԕ�$0LZ�����]
C�*�; )a�3�U���>�%�p���ϘH:z4r�s���9g; �$xivG���Q�8Ov�;fQ��c?7���a��y:<Ȱ�ч==f��1�;Ǹ��j:�v��-,�eV\D�$naw��-���Y<�\Xo��fe
�m���\���O ��$*�O��&�?.gT�6���-�tiD�%����@k���ω�$7�\����ݧM�3�S��,�|�����O�'�)	�1Q���ƓW��%�q�iI�(Jp���r���k����7j��b�Z���w�      8   C  x��[Ks�8>O~5�9L�8$�
����%��e[^YfS��e�`[�� �$w����R��Tpƅ��Q�~=��l����6���,�,�ki�Y�K{�(~�EH�Rq�����Z�D*�%���נ�f9�/9��ϓy��RV�7�����b~M*���q�Ɯ��7�?2+�0/�L��#�Z��+[y���Y�1�#�������\RI�`U.4n/�(���%d{^���m�k��$	$��T�dZ}x��J��Wj�8<+�D�%K��� �Y���O2�s�v�J4��v���AY��U)���K�6��.���oPj4���D��'BY���zw �V<�`m�L���+���al{�^Ԃ� ������	;Ǒ�oM[/v���w��C!�P�!�}x˴�e�*��"�0��Z�~b�,7o{�����Q�|2;�/�왥A���Rl�P��J��� n�i5�5J@����O��D�XDL
fJ��>���:�E!S���Q)��f�m��Њ|TU��v	�8x�}��bs��RySÚM�Q�	=�M��GU툼��`8�����x:�O�s{���x��ݏ�/���rp�f�픴t��62�����Q�����z�ۇȉܠ�'��y��a��;�{݁�}��[~���+�V�*O���l�uPR{��0��O�'�9��gpT=z��W& �9���Yh]i���M6��l����}�����N%� Ѥ�@ٚ����e�w5�%#xG���Sr#?t���Eeuh�F��>��C���O��I$�G��4�� �eD������w|-�emt�?�S�B�L��՚�o�h�	��e��Y���RTh�/b	�,b��#��F�;n�7�����C���"Z`l��ڏ����[�Iɰ�`�+l����:�\��*>9�Fc���1#0&�I��ʓ]ц�k">�gZ0%$�vn��F�+����,��r��IK�a����5k�ǝ>*�����m]þs�=�c��ۮ�4ĩ�� �yYG��bh�x�L���xz
��D>���c$�.�ˊѻ��a_�s0L��]w�^E�G�<��a���c������]��b��8ʌ����	|g�?�<��Y�3���)w�vJ{�qmeu�_z�t��7b���O�>@X���F���= �JKߗm0ӏ���W��&V@���/�ˌ[֋2��D�+��Jz�h#,�]x ��C�ݬ	��m�zX`���c�c���di�ز�a7���[��	(��}Ȫ�'�aH�-_���eQ����^�'�%��m���`������wN5޷6C�"-�[^.��KDc��2R��|�q8x��@��.p&����:z��
��K����Z�꾟3T�blqp�m9]�B�5W�p����s�
~�b��J�ztֿ�fZ%$cÌ��,��0Wt����w�.f��#�I�T"b�+���/����U��D��8��TZ��i�1�
^�����~6�&��xOLhk�F�.���0O���Q=�2j�H!��V6����:�.c��M�A1R?��W��T�eگ�q��/�]j�nnn���C     