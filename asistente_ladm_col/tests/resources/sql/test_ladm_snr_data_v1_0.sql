PGDMP     4    4    
            x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) �    �            0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �            0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �            0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �            1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false                        2615    584979    test_ladm_snr_data    SCHEMA     "   CREATE SCHEMA test_ladm_snr_data;
     DROP SCHEMA test_ladm_snr_data;
             postgres    false            E           1259    584980    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_ladm_snr_data.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE test_ladm_snr_data.t_ili2db_seq;
       test_ladm_snr_data       postgres    false    11            F           1259    584982 
   extarchivo    TABLE     �  CREATE TABLE test_ladm_snr_data.extarchivo (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    fecha_aceptacion date,
    datos character varying(255),
    extraccion date,
    fecha_grabacion date,
    fecha_entrega date,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    snr_fuentecabidalndros_archivo bigint
);
 *   DROP TABLE test_ladm_snr_data.extarchivo;
       test_ladm_snr_data         postgres    false    581    11            �            0    0    TABLE extarchivo    COMMENT     �   COMMENT ON TABLE test_ladm_snr_data.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
            test_ladm_snr_data       postgres    false    582            �            0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     v   COMMENT ON COLUMN test_ladm_snr_data.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
            test_ladm_snr_data       postgres    false    582            �            0    0    COLUMN extarchivo.datos    COMMENT     ]   COMMENT ON COLUMN test_ladm_snr_data.extarchivo.datos IS 'Datos que contiene el documento.';
            test_ladm_snr_data       postgres    false    582            �            0    0    COLUMN extarchivo.extraccion    COMMENT     m   COMMENT ON COLUMN test_ladm_snr_data.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
            test_ladm_snr_data       postgres    false    582            �            0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT     ~   COMMENT ON COLUMN test_ladm_snr_data.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
            test_ladm_snr_data       postgres    false    582            �            0    0    COLUMN extarchivo.fecha_entrega    COMMENT     p   COMMENT ON COLUMN test_ladm_snr_data.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
            test_ladm_snr_data       postgres    false    582            �            0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_snr_data       postgres    false    582            U           1259    585111    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_ladm_snr_data.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_snr_data.snr_calidadderechotipo;
       test_ladm_snr_data         postgres    false    581    11            W           1259    585129    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_ladm_snr_data.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_snr_data.snr_clasepredioregistrotipo;
       test_ladm_snr_data         postgres    false    581    11            G           1259    584992    snr_derecho    TABLE     a  CREATE TABLE test_ladm_snr_data.snr_derecho (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 +   DROP TABLE test_ladm_snr_data.snr_derecho;
       test_ladm_snr_data         postgres    false    581    11            �            0    0    TABLE snr_derecho    COMMENT     \   COMMENT ON TABLE test_ladm_snr_data.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
            test_ladm_snr_data       postgres    false    583            �            0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     o   COMMENT ON COLUMN test_ladm_snr_data.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
            test_ladm_snr_data       postgres    false    583            �            0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
            test_ladm_snr_data       postgres    false    583            X           1259    585138    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_ladm_snr_data.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_snr_data.snr_documentotitulartipo;
       test_ladm_snr_data         postgres    false    581    11            H           1259    585001    snr_estructuramatriculamatriz    TABLE     A  CREATE TABLE test_ladm_snr_data.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 =   DROP TABLE test_ladm_snr_data.snr_estructuramatriculamatriz;
       test_ladm_snr_data         postgres    false    581    11            �            0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_snr_data       postgres    false    584            �            0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_snr_data       postgres    false    584            �            0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
            test_ladm_snr_data       postgres    false    584            I           1259    585008    snr_fuentecabidalinderos    TABLE     o  CREATE TABLE test_ladm_snr_data.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 8   DROP TABLE test_ladm_snr_data.snr_fuentecabidalinderos;
       test_ladm_snr_data         postgres    false    581    11            �            0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_ladm_snr_data.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
            test_ladm_snr_data       postgres    false    585            �            0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_snr_data       postgres    false    585            �            0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_snr_data       postgres    false    585            �            0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_snr_data       postgres    false    585             !           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_snr_data       postgres    false    585            J           1259    585018    snr_fuentederecho    TABLE     h  CREATE TABLE test_ladm_snr_data.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 1   DROP TABLE test_ladm_snr_data.snr_fuentederecho;
       test_ladm_snr_data         postgres    false    581    11            !           0    0    TABLE snr_fuentederecho    COMMENT     h   COMMENT ON TABLE test_ladm_snr_data.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
            test_ladm_snr_data       postgres    false    586            !           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_snr_data       postgres    false    586            !           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_snr_data       postgres    false    586            !           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_snr_data       postgres    false    586            !           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_snr_data       postgres    false    586            V           1259    585120    snr_fuentetipo    TABLE     �  CREATE TABLE test_ladm_snr_data.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_ladm_snr_data.snr_fuentetipo;
       test_ladm_snr_data         postgres    false    581    11            T           1259    585102    snr_personatitulartipo    TABLE     �  CREATE TABLE test_ladm_snr_data.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_snr_data.snr_personatitulartipo;
       test_ladm_snr_data         postgres    false    581    11            L           1259    585039    snr_predioregistro    TABLE     1  CREATE TABLE test_ladm_snr_data.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_ladm_snr_data.snr_predioregistro;
       test_ladm_snr_data         postgres    false    581    11            !           0    0    TABLE snr_predioregistro    COMMENT     e   COMMENT ON TABLE test_ladm_snr_data.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
            test_ladm_snr_data       postgres    false    588            !           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_snr_data       postgres    false    588            !           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_snr_data       postgres    false    588            	!           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     M  COMMENT ON COLUMN test_ladm_snr_data.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_snr_data       postgres    false    588            
!           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     Q  COMMENT ON COLUMN test_ladm_snr_data.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_snr_data       postgres    false    588            !           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
            test_ladm_snr_data       postgres    false    588            !           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
            test_ladm_snr_data       postgres    false    588            !           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_snr_data.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
            test_ladm_snr_data       postgres    false    588            !           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT     l   COMMENT ON COLUMN test_ladm_snr_data.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
            test_ladm_snr_data       postgres    false    588            K           1259    585028    snr_titular    TABLE     �  CREATE TABLE test_ladm_snr_data.snr_titular (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 +   DROP TABLE test_ladm_snr_data.snr_titular;
       test_ladm_snr_data         postgres    false    581    11            !           0    0    TABLE snr_titular    COMMENT     i   COMMENT ON TABLE test_ladm_snr_data.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
            test_ladm_snr_data       postgres    false    587            !           0    0    COLUMN snr_titular.tipo_persona    COMMENT     T   COMMENT ON COLUMN test_ladm_snr_data.snr_titular.tipo_persona IS 'Tipo de persona';
            test_ladm_snr_data       postgres    false    587            !           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     j   COMMENT ON COLUMN test_ladm_snr_data.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_snr_data       postgres    false    587            !           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     o   COMMENT ON COLUMN test_ladm_snr_data.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
            test_ladm_snr_data       postgres    false    587            !           0    0    COLUMN snr_titular.nombres    COMMENT     ^   COMMENT ON COLUMN test_ladm_snr_data.snr_titular.nombres IS 'Nombres de la persona física.';
            test_ladm_snr_data       postgres    false    587            !           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     n   COMMENT ON COLUMN test_ladm_snr_data.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_snr_data       postgres    false    587            !           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     p   COMMENT ON COLUMN test_ladm_snr_data.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_snr_data       postgres    false    587            !           0    0    COLUMN snr_titular.razon_social    COMMENT     z   COMMENT ON COLUMN test_ladm_snr_data.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
            test_ladm_snr_data       postgres    false    587            M           1259    585050    snr_titular_derecho    TABLE     ,  CREATE TABLE test_ladm_snr_data.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_ladm_snr_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 3   DROP TABLE test_ladm_snr_data.snr_titular_derecho;
       test_ladm_snr_data         postgres    false    581    11            !           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_snr_data.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
            test_ladm_snr_data       postgres    false    589            Z           1259    585155    t_ili2db_attrname    TABLE     �   CREATE TABLE test_ladm_snr_data.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 1   DROP TABLE test_ladm_snr_data.t_ili2db_attrname;
       test_ladm_snr_data         postgres    false    11            N           1259    585058    t_ili2db_basket    TABLE       CREATE TABLE test_ladm_snr_data.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 /   DROP TABLE test_ladm_snr_data.t_ili2db_basket;
       test_ladm_snr_data         postgres    false    11            Y           1259    585147    t_ili2db_classname    TABLE     �   CREATE TABLE test_ladm_snr_data.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 2   DROP TABLE test_ladm_snr_data.t_ili2db_classname;
       test_ladm_snr_data         postgres    false    11            [           1259    585163    t_ili2db_column_prop    TABLE       CREATE TABLE test_ladm_snr_data.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 4   DROP TABLE test_ladm_snr_data.t_ili2db_column_prop;
       test_ladm_snr_data         postgres    false    11            O           1259    585067    t_ili2db_dataset    TABLE     w   CREATE TABLE test_ladm_snr_data.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 0   DROP TABLE test_ladm_snr_data.t_ili2db_dataset;
       test_ladm_snr_data         postgres    false    11            P           1259    585072    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_ladm_snr_data.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 4   DROP TABLE test_ladm_snr_data.t_ili2db_inheritance;
       test_ladm_snr_data         postgres    false    11            ]           1259    585175    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_ladm_snr_data.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 3   DROP TABLE test_ladm_snr_data.t_ili2db_meta_attrs;
       test_ladm_snr_data         postgres    false    11            S           1259    585094    t_ili2db_model    TABLE     �   CREATE TABLE test_ladm_snr_data.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 .   DROP TABLE test_ladm_snr_data.t_ili2db_model;
       test_ladm_snr_data         postgres    false    11            Q           1259    585080    t_ili2db_settings    TABLE     �   CREATE TABLE test_ladm_snr_data.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 1   DROP TABLE test_ladm_snr_data.t_ili2db_settings;
       test_ladm_snr_data         postgres    false    11            \           1259    585169    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_ladm_snr_data.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 3   DROP TABLE test_ladm_snr_data.t_ili2db_table_prop;
       test_ladm_snr_data         postgres    false    11            R           1259    585088    t_ili2db_trafo    TABLE     �   CREATE TABLE test_ladm_snr_data.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 .   DROP TABLE test_ladm_snr_data.t_ili2db_trafo;
       test_ladm_snr_data         postgres    false    11            �           0    584982 
   extarchivo 
   TABLE DATA               �   COPY test_ladm_snr_data.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo) FROM stdin;
    test_ladm_snr_data       postgres    false    582   ��       �           0    585111    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_ladm_snr_data.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_snr_data       postgres    false    597   ��       �           0    585129    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_ladm_snr_data.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_snr_data       postgres    false    599   >�       �           0    584992    snr_derecho 
   TABLE DATA               �   COPY test_ladm_snr_data.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
    test_ladm_snr_data       postgres    false    583   ��       �           0    585138    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_ladm_snr_data.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_snr_data       postgres    false    600   �       �           0    585001    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_ladm_snr_data.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
    test_ladm_snr_data       postgres    false    584   ?�       �           0    585008    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_ladm_snr_data.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_snr_data       postgres    false    585   \�       �           0    585018    snr_fuentederecho 
   TABLE DATA               �   COPY test_ladm_snr_data.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_snr_data       postgres    false    586   y�       �           0    585120    snr_fuentetipo 
   TABLE DATA               �   COPY test_ladm_snr_data.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_snr_data       postgres    false    598   ��       �           0    585102    snr_personatitulartipo 
   TABLE DATA               �   COPY test_ladm_snr_data.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_snr_data       postgres    false    596   %�       �           0    585039    snr_predioregistro 
   TABLE DATA                 COPY test_ladm_snr_data.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
    test_ladm_snr_data       postgres    false    588   D�       �           0    585028    snr_titular 
   TABLE DATA               �   COPY test_ladm_snr_data.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
    test_ladm_snr_data       postgres    false    587   a�       �           0    585050    snr_titular_derecho 
   TABLE DATA               ~   COPY test_ladm_snr_data.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
    test_ladm_snr_data       postgres    false    589   ~�       �           0    585155    t_ili2db_attrname 
   TABLE DATA               [   COPY test_ladm_snr_data.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
    test_ladm_snr_data       postgres    false    602   ��       �           0    585058    t_ili2db_basket 
   TABLE DATA               n   COPY test_ladm_snr_data.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
    test_ladm_snr_data       postgres    false    590   ��       �           0    585147    t_ili2db_classname 
   TABLE DATA               J   COPY test_ladm_snr_data.t_ili2db_classname (iliname, sqlname) FROM stdin;
    test_ladm_snr_data       postgres    false    601   �       �           0    585163    t_ili2db_column_prop 
   TABLE DATA               h   COPY test_ladm_snr_data.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
    test_ladm_snr_data       postgres    false    603   c�       �           0    585067    t_ili2db_dataset 
   TABLE DATA               I   COPY test_ladm_snr_data.t_ili2db_dataset (t_id, datasetname) FROM stdin;
    test_ladm_snr_data       postgres    false    591   ��       �           0    585072    t_ili2db_inheritance 
   TABLE DATA               P   COPY test_ladm_snr_data.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
    test_ladm_snr_data       postgres    false    592   ��       �           0    585175    t_ili2db_meta_attrs 
   TABLE DATA               \   COPY test_ladm_snr_data.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
    test_ladm_snr_data       postgres    false    605   }�       �           0    585094    t_ili2db_model 
   TABLE DATA               j   COPY test_ladm_snr_data.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
    test_ladm_snr_data       postgres    false    595   1      �           0    585080    t_ili2db_settings 
   TABLE DATA               E   COPY test_ladm_snr_data.t_ili2db_settings (tag, setting) FROM stdin;
    test_ladm_snr_data       postgres    false    593   _      �           0    585169    t_ili2db_table_prop 
   TABLE DATA               R   COPY test_ladm_snr_data.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
    test_ladm_snr_data       postgres    false    604   a      �           0    585088    t_ili2db_trafo 
   TABLE DATA               K   COPY test_ladm_snr_data.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
    test_ladm_snr_data       postgres    false    594   Ib      !           0    0    t_ili2db_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('test_ladm_snr_data.t_ili2db_seq', 22, true);
            test_ladm_snr_data       postgres    false    581            
            2606    584990    extarchivo extarchivo_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY test_ladm_snr_data.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 P   ALTER TABLE ONLY test_ladm_snr_data.extarchivo DROP CONSTRAINT extarchivo_pkey;
       test_ladm_snr_data         postgres    false    582            6            2606    585119 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_snr_data.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_snr_data.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
       test_ladm_snr_data         postgres    false    597            :            2606    585137 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_snr_data.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
       test_ladm_snr_data         postgres    false    599                        2606    584997    snr_derecho snr_derecho_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_snr_data.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_snr_data.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
       test_ladm_snr_data         postgres    false    583            <            2606    585146 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_snr_data.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
       test_ladm_snr_data         postgres    false    600                        2606    585006 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_snr_data.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
       test_ladm_snr_data         postgres    false    584                        2606    585016 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_snr_data.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
       test_ladm_snr_data         postgres    false    585                        2606    585026 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_snr_data.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_snr_data.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
       test_ladm_snr_data         postgres    false    586            8            2606    585128 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_snr_data.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_snr_data.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
       test_ladm_snr_data         postgres    false    598            4            2606    585110 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_snr_data.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_snr_data.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
       test_ladm_snr_data         postgres    false    596                         2606    585047 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_snr_data.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_snr_data.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
       test_ladm_snr_data         postgres    false    588            #            2606    585055 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_snr_data.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_snr_data.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
       test_ladm_snr_data         postgres    false    589                        2606    585036    snr_titular snr_titular_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_snr_data.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_snr_data.snr_titular DROP CONSTRAINT snr_titular_pkey;
       test_ladm_snr_data         postgres    false    587            @            2606    585162 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (sqlname, colowner);
 ^   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
       test_ladm_snr_data         postgres    false    602    602            (            2606    585065 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
       test_ladm_snr_data         postgres    false    590            >            2606    585154 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 `   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
       test_ladm_snr_data         postgres    false    601            +            2606    585071 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
       test_ladm_snr_data         postgres    false    591            -            2606    585079 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 d   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
       test_ladm_snr_data         postgres    false    592            2            2606    585101 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (iliversion, modelname);
 X   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
       test_ladm_snr_data         postgres    false    595    595            /            2606    585087 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 ^   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
       test_ladm_snr_data         postgres    false    593                        1259    584991 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_ladm_snr_data.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 I   DROP INDEX test_ladm_snr_data.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
       test_ladm_snr_data         postgres    false    582                        1259    584998 (   snr_derecho_calidad_derecho_registro_idx    INDEX     �   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_ladm_snr_data.snr_derecho USING btree (calidad_derecho_registro);
 H   DROP INDEX test_ladm_snr_data.snr_derecho_calidad_derecho_registro_idx;
       test_ladm_snr_data         postgres    false    583                        1259    584999 "   snr_derecho_snr_fuente_derecho_idx    INDEX     t   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_ladm_snr_data.snr_derecho USING btree (snr_fuente_derecho);
 B   DROP INDEX test_ladm_snr_data.snr_derecho_snr_fuente_derecho_idx;
       test_ladm_snr_data         postgres    false    583                        1259    585000 #   snr_derecho_snr_predio_registro_idx    INDEX     v   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_ladm_snr_data.snr_derecho USING btree (snr_predio_registro);
 C   DROP INDEX test_ladm_snr_data.snr_derecho_snr_predio_registro_idx;
       test_ladm_snr_data         postgres    false    583                        1259    585007 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_ladm_snr_data.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 Y   DROP INDEX test_ladm_snr_data.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
       test_ladm_snr_data         postgres    false    584                        1259    585017 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_ladm_snr_data.snr_fuentecabidalinderos USING btree (tipo_documento);
 K   DROP INDEX test_ladm_snr_data.snr_fuentecabidalinderos_tipo_documento_idx;
       test_ladm_snr_data         postgres    false    585                        1259    585027 $   snr_fuentederecho_tipo_documento_idx    INDEX     x   CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_ladm_snr_data.snr_fuentederecho USING btree (tipo_documento);
 D   DROP INDEX test_ladm_snr_data.snr_fuentederecho_tipo_documento_idx;
       test_ladm_snr_data         postgres    false    586                        1259    585048 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_ladm_snr_data.snr_predioregistro USING btree (clase_suelo_registro);
 K   DROP INDEX test_ladm_snr_data.snr_predioregistro_clase_suelo_registro_idx;
       test_ladm_snr_data         postgres    false    588            !            1259    585049 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_ladm_snr_data.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 P   DROP INDEX test_ladm_snr_data.snr_predioregistro_snr_fuente_cabidalinderos_idx;
       test_ladm_snr_data         postgres    false    588            $            1259    585057 #   snr_titular_derecho_snr_derecho_idx    INDEX     v   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_ladm_snr_data.snr_titular_derecho USING btree (snr_derecho);
 C   DROP INDEX test_ladm_snr_data.snr_titular_derecho_snr_derecho_idx;
       test_ladm_snr_data         postgres    false    589            %            1259    585056 #   snr_titular_derecho_snr_titular_idx    INDEX     v   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_ladm_snr_data.snr_titular_derecho USING btree (snr_titular);
 C   DROP INDEX test_ladm_snr_data.snr_titular_derecho_snr_titular_idx;
       test_ladm_snr_data         postgres    false    589                        1259    585038    snr_titular_tipo_documento_idx    INDEX     l   CREATE INDEX snr_titular_tipo_documento_idx ON test_ladm_snr_data.snr_titular USING btree (tipo_documento);
 >   DROP INDEX test_ladm_snr_data.snr_titular_tipo_documento_idx;
       test_ladm_snr_data         postgres    false    587                        1259    585037    snr_titular_tipo_persona_idx    INDEX     h   CREATE INDEX snr_titular_tipo_persona_idx ON test_ladm_snr_data.snr_titular USING btree (tipo_persona);
 <   DROP INDEX test_ladm_snr_data.snr_titular_tipo_persona_idx;
       test_ladm_snr_data         postgres    false    587            A            1259    585253 &   t_ili2db_attrname_sqlname_colowner_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_sqlname_colowner_key ON test_ladm_snr_data.t_ili2db_attrname USING btree (sqlname, colowner);
 F   DROP INDEX test_ladm_snr_data.t_ili2db_attrname_sqlname_colowner_key;
       test_ladm_snr_data         postgres    false    602    602            &            1259    585066    t_ili2db_basket_dataset_idx    INDEX     f   CREATE INDEX t_ili2db_basket_dataset_idx ON test_ladm_snr_data.t_ili2db_basket USING btree (dataset);
 ;   DROP INDEX test_ladm_snr_data.t_ili2db_basket_dataset_idx;
       test_ladm_snr_data         postgres    false    590            )            1259    585251     t_ili2db_dataset_datasetname_key    INDEX     w   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_ladm_snr_data.t_ili2db_dataset USING btree (datasetname);
 @   DROP INDEX test_ladm_snr_data.t_ili2db_dataset_datasetname_key;
       test_ladm_snr_data         postgres    false    591            0            1259    585252 '   t_ili2db_model_iliversion_modelname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_iliversion_modelname_key ON test_ladm_snr_data.t_ili2db_model USING btree (iliversion, modelname);
 G   DROP INDEX test_ladm_snr_data.t_ili2db_model_iliversion_modelname_key;
       test_ladm_snr_data         postgres    false    595    595            B            2606    585181 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_ladm_snr_data.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_snr_data.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
       test_ladm_snr_data       postgres    false    582    585    8213            C            2606    585186 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_ladm_snr_data.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_snr_data.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
       test_ladm_snr_data       postgres    false    597    8246    583            D            2606    585191 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_ladm_snr_data.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_snr_data.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
       test_ladm_snr_data       postgres    false    8216    583    586            E            2606    585196 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_ladm_snr_data.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_snr_data.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
       test_ladm_snr_data       postgres    false    588    583    8224            F            2606    585201 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT     %  ALTER TABLE ONLY test_ladm_snr_data.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_ladm_snr_data.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_snr_data.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
       test_ladm_snr_data       postgres    false    584    588    8224            G            2606    585206 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_snr_data.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_snr_data.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
       test_ladm_snr_data       postgres    false    598    585    8248            H            2606    585211 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_snr_data.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_snr_data.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
       test_ladm_snr_data       postgres    false    586    598    8248            K            2606    585226 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_ladm_snr_data.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_snr_data.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
       test_ladm_snr_data       postgres    false    588    599    8250            L            2606    585231 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_snr_data.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_ladm_snr_data.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_snr_data.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
       test_ladm_snr_data       postgres    false    588    585    8213            M            2606    585241 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_ladm_snr_data.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_snr_data.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
       test_ladm_snr_data       postgres    false    589    8206    583            N            2606    585236 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_ladm_snr_data.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_snr_data.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
       test_ladm_snr_data       postgres    false    587    589    8219            I            2606    585221 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_snr_data.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_snr_data.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
       test_ladm_snr_data       postgres    false    600    8252    587            J            2606    585216 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_ladm_snr_data.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_snr_data.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
       test_ladm_snr_data       postgres    false    8244    587    596            O            2606    585246 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_ladm_snr_data.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_snr_data.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
       test_ladm_snr_data       postgres    false    590    8235    591            �       x������ � �      �    q  x��V�n�6<�_��0K�(�=�N
,P��춧 -�^.$�KJ�?ꡇbo{���q��	�S.�D������/>��޵�s��6������?��f��3�jo���g�ɜ���~�Yܺ�X����rױ6=���fA��S�b�����e'�NF�zL�	��e^��i�F�X�B��yխ�IyŎ�O��kM89�=��)���^y�zm�bֱ`�m-a����_��/ں5{w�5B�������d��c��c+�5F�������Xb7777777+++++�����`qD�`q�9�������
�
�*�-�-�*�*�*�*�*�*�*�*�\� K�%�`	�X�bU`U�W@V@V@�X����F��Qjpkpkp%�\	�W�+���Jp%�R&m$)l��S����I�6�86٤�$�����!1�8�ɑ~���
H��Wi&�%BJp%BHP"�D	��,aj�qO����d$�&��/��yB��EuA�>y՚�8���lH��ovq5����愩��4�ہ66){�G��3ma�clo؇��}g�"V����U3 G!l8Оlc��h�~7�q����lL�U��buv>�;i�U�94G�3����H~�E+���iѷg�n���A{�Pm�؏z���*�"PrWА���)PN��G���(��tJ+�*(�@�
, )�\�Gd��e^-˷8_܏��}x��T�8w��ů/^(�ѽ[���+��O�^�3;f_-��Q�_Y���5GRF9���x�G�A�R�����4q�����t3����k�;mfL���K�����~�&e%ʿ��}�\�Z����H=�b밟U����e�fؼvC��rt����#�w����-=���@�IЭ��2Ø�o�̐գ���1*n�kL����M�8c:D7��z[E���a<��:<���z�����x�x���WĎ��?����j��!U(�-&�.��#��L��	#;8O�}��0��3�x)��4�,�`��/���Df�[l�0ڣ!W�)]I�Qή;ӵ�P�;����D���7�w�H�(�i�BuL;;��L�E���h�5�s~��p�OgQ�q�`�A�q�r������r��9!@      �    �  x����n1�g�)8��a�u�&ct(A�v2�:�P���.��6y�Lݲދ��|��[��;���XN��u����s�j��:�����>�[p8�E���l}.I��N'�����O,܌��\|�wIrar\d�i�g
��HJD%�
����R��uF�&J|�Q25B�s�o���ַ��T����;��L�E%��<�-Gn$)&1�ɯ.ho���ɮG.���]�7V'��]�-�9���
J�Ai��љ�hy|lY''�N�_t1�V	쉎�ҀΑ��r�p��T�x}�����4����|�x�����>S�T��\�hj$r�%����148���&1R��1��ȽH��%�r�UI����g �K����Ǳ����~�/�]l4�ͷ
��v`���e��<����B���I�Pq����.d��_�K��X@�aU��]�b.��m<��G�Ȑ5�S�t�Bjd�F���Q+?4��Q*�?Kn�b�7��4���a���x��:'��{���2*ŷp�鵩�p�
|h��F�h=�>U!uS����U%��m���.,��H��:�H��S�G�&�Zޡ���f�ּ�//5F/���VxX������;���N~x�N��\��[�)T��r�m��!����|:������      �       x������ � �      �      x��U�n1�O_�e��<�Ԋ�[Ie@�x���y�C��)�\�H�K�����!�P%ޒ\��ή���]i*7�ؐj�w�����|З�G�Smlt3��R~ƍ+�Š����S�JeYIxY��?%N�!�mm�b(Y*w����t�8O8}kV�We�8MS��YU!KE�N�x�5�+j����M.����qe�le/tW�ra~oxu.����P�G�O�5���0�M$�M�a-ٚ �^��`�s��J�h���<;�;y6���__��'2͓��K!���9�XA���#���\m.��d�ŐŸ���O���e����"+z�ӯT����%�`�k����ވO���KH��x�cp�$��+��6^D�2����zS̔4Q�3x(S�����b;f,`�FIU��ѧK�zZ�����3iQ���Pj�^���/_Υ�����۞ʼv14�������2+�Β�UI����]ݘ(���X�fy=\P�P��Y���,����_��)Ѓ���M�"��w�o�m��}�M��<�]��Ƅw�lۃ���������;�= �w�ϕ�]1�<���DVG���aY�엛؅4�#qV��~BM��s��,S�0R��Jthz��5*����_����r#3:�Hby܋Y���
��ROqj7�0*�/�UZ�G�o�N��
u�4����#S�f�	�h��v'�����I�:)�H�x�1ZfP�0�"M��pS�˄���I������v _�BY�{���z���}      �       x������ � �      �       x������ � �      �       x������ � �      �      x��TKn�@]ۧ�D�L`ˈ�BQ� �HV�]Czdw��DJn�Xe�v.ƫ�秬f1����+��V���^��>�Ab�����\6�}���'��F��o����&i���yS���c]�N?���f��$���ݚc"�/ވ����W��ձ��������Y2������u�i3JҪ��t�xa�a#M��ٸa�&f�(}��2Qڀ�Q+�}����0��8�I�1o8�K4lh���t�۴��č����E��<���h�K9Ps�	{�p �^����M'6�,��g<u��&0���+b���(��h��@(cU�p��\�3��Ԁw�`:��5�8�tQZ�]�����·�xl@�G��($�Yt�n���o�N #�;�>�2Zc�����/���<
����z�����Q?q��c�����kg����&-��0�jU�*NIկ�e�g���k����"\$҂=�Tu��"3pҽI��:�ZR$��訙*�� �5ﮯP0�8H�\��͛�f���n:�	����f���)_��H�1HTI&�ܕ��pe�x�%��I6~Q/���m�r���0������Լ�Z艎n&
�r�URJ�~�9��/��E]��E ,      �      x���AN�@E��)|�*jYr��XU�����̌��܉���pPӊ-;�}��˛j[�1y
�{�ZƤݶ}�^7ݺ��gMw<���㜪}[���Z��`��@��%�� ! �~(#Fl���o��Eسÿ��"�_lB���|�VP��&vl�a�O�t$q$V
�CR8�Kq4���o�8ERp�΁te��&e!�8���|9�L��������Bo����frLzo$'Y�O0��Ά{��mG��C>[Jg_�7u]� %���      �       x������ � �      �       x������ � �      �       x������ � �      �    E  x��W�n�0}v>&��~A����R%U�*Y�����F��_��/`�xA�3�3c�����#^?����k�/���1W��W���]|�0K	
o8�Tr�<C�A�c顯��	�5Z��s���ɬHT�O���+�[q�I+hN�~+�̹��	��Z��~Hp���wD%�`�n���"��R�H U(/EV�W^�e�9��/"˵Z��Y0��B�b�?�r���Xj�h7e���d��r�5`f������j9�6:\Ȑ��ִ�n�{��۳�G�t��^^2PcO��qs9�y�#o�)M�"w�4v��uH}i�.���v�"/b���a�gܨ쳝`��u�$�i�:!4��;0ԄB�%	��
��T��\Bf�&u���!W�� {J���4'��7������)�Jy�:�T@s�xh�I��ݖ%�&(2��f���l��f8cv�M5��%1^�������;_R�&��-S/�v)8(M!8����\P�Z��"m(���P����v�f X��w�6���N��=�W��L'�Hr-(��u� Z�T��y[�n�����p�W�8�Wв&V�&}�M�/?��l��ҪN~K�������b��=�Ә��k��E��+-ҩ��qɷ���(�F���Ya��}�Q�c��9�O�������xù>�z-b8������DbT�;8Yf����S�Ws�����E���t�1�&�_��x��Z��Uc���~�U]�>ԇ�lmU�;.ܿ��Þ�R�#/�mu�Tw���Fܗ�W�<ݪj�ؾ�$F�T=�����aXfZ����Z���\,��$      �       x������ � �      �    F  x��S�j�0}N>&l�J�� �JS�40����$
��ү�o�ڵ�Λ|$�u���:��"y��P�f�%�g�TTT�gᠥ��0m$]Q-3mΙ�%�)ۍY��&�G1H���/aɐ|�5F��V�$�,��]P�JNy�wb@����-���A������Bg�,�h'�5Pz
�t�oѥ�z�L�194<r�2��b��O|LD1)deKl|��8��!�\3.���Պ��5ٿX�Z�˓^Hvߘ�I��{����`�ӽu�ѣ����p�����e.�M՗�����݋!��[q�_u�5�(�<�n��      �      x��W�N�0>�O�'�a_a	�t�aH�k���Ď�-}'Nܸ��v�8n����d��<�3͕�B��z�^p-`��bEiX"���p������
�!6+y�f�\�<~XrR!�r|�:��(ʄ˞H��,�IB�(�԰��W0����Lܢ����0Z�Hn,�I<����92/Lɭ�)+p���qh��dS��~�}p��R�Br��PL�[�2M��e��[m$�ԝ|[�8�����'DY����J ?�3m[�Ln��	�����f�tIg�5y2#�x���m��^�v��SuN樮Τ��N�(�lf�{}���vƇ�?���u����z��#�^�E�C)��2�\��Hq(�Q1_\2h${������ߧ�(N�8y#��������h�����h�br�P��DP��6����j�V#R����nŞ3����7�od��
�*�>��3�|wP�>�F����2+歷��xA4���r��EVě,��Pö|i"�hf���Mכ�:�ui]�#1	���*3QS�}|�p҄O_4��������l�itx�����yf[�N���BZ2��P��U���ѡ�2���A<�Lr�;~*ҊXgXT��h��(H|�TBO�*\��N4�	"������U��
va�O3]�Z^)��y��ǓX��~ɤɵ�6^7�hjWs�6��M7��͈��'a��y)�ى�m����O	�Xw;�`���̗��ޚ����\'L��;hEs��
�^�������@���r���x��      �       x������ � �      �    �   x����
�0����H��j��p��ʁ�8�"z�tVx������SغS\�
N����Pd9�;�5�t��
�(�Y��*#�R��
Pܥ6�G1ZKN[�L����BH� .�R�u��y&0���ؖ�}��O6���j&��3'�(��@��;�Y�
�/s@�ȧ_��e�"M�AɆ���)U@� kj�e      �       x��]Koܸ�^w�
-�gQ��_�؎��1l'�h�vTI�*�ѝ���^�E�e[l�ҫ��!y��M�O��D�<��g7������[��n�ٚ�+q���oI���c�r����N|&k�[]��=��Ol���?��+R��9�rV�5���!�����߇�`�O����n{K6��f���Ӧ��L���~S��+���*='5��Y����a/H=1��:O���qx�{�UE�r�_W�$Y��P���>?u��ЪLʚ����N�.j��	�~��$����]� H GK�0�ޭ9�:�c;N,�Ex � =� �c��!lQR"���vO��6���m�3�\�����ϸ����{��4�8x/���Бf" }���Z-�鶢9+�����ve6�D'��x�6��Ê�������g��!���-7��X�I����I�G�0�8w���Ke��ʫ��g|��XYE���� =
;AF��"L�&\�S�r�Vt��KyZS�����)�7�`B���Ӫ�t�Ƃ������%7��J
�:/s�R�oHU-aaf�5.Ҥ]�m�����'Iaz�U�3)��S��!�ђ=�$�`U���ےu��K_�Gm�_;���l�z⧟(_wI����쌏t�A�S/�F}!y�_0h<��}6xoސ���m��9w���ީ��"�InBq&��j����kܤ�;_�1q4�Fmn:���B�pƞ!���&l�o⨵,��g�t�� ����N���l��'@Y�_K���Z�.����'��7�#�~�"yY��1�x�%�w��%�x�^�O^ZB����_m�R��ꬢ$U/�>H�u��y�wK���R������&u�j�ߤ$9t�ܖ���j�֌3��ʓL�=Z���V۴I�|"|���j�v_�Ҋ��^����1q�ZX�莿�+�{��]_x���<��;��u¯����-�5���_/~�K϶t�fy�s�#:��ш�ך�xB�x��Z�ޗ�p��ƥ!�_iR��w�&dx�����+qI�.���}.Wo��$�(3����dǆ���>0�]��rK��*������,+�i�@�W�/�V��� և� �uЭ��Zm���r3O{G����i!�	n:NG�%j��o~��ײ/u��0�t��7�pv����v1E�ڙ]�e��)w5� ���� 3Q;����Kv����V6�yl���w�i?�d����zҘ=�!���L��	�f%XV�������jOG꘥��	`�Z�V�|
�/��33���������J
VD�O���J#��i����,�rG��M�Q?q�:���+�4W��,��C.q�a������Ҭ7�Sez;�#�W��L1��d��yd�~M��}�s���"��`����_L��j�R���51�����v��ʇ�W�%��|tsC���}0��y8����u����D�R�<�旷L�|������������fe��6�qC����|=0��
V�������1�-9��¤$���̖��:�Į��ҎY�R~��FJ��+�,��x��9��@������	��',ǏWo}��-g�P<L��x7��1l�L�\_��OP��I%���K0�J2��� -&����}�g�&O� �9y&#\�����9�(@~�a.F�_��j��0X3�@3�L��8��#���&�g�iO]��Ο��A����������n;+)�f�Z)���⮬2qH�B�;R�L�!8����W2:!���HP6�7f�M���@�(4�m���={kn넾�|߮)�|���f��`���n,�-=�G�	;�a���(Op��ڿĉ,L�xc�Y�m:�=V��=�Ն����G��3o��Ļ;����v1.�t�VzAS�d^�5��^8�$��P$���Y���Q�TT���u��ٚVQ��8a#�F�QxeB�8�=t��&�����6��p���d!v$\:�Lx��y�Lkb�b���Q9�a̋s�N���?�~���S.߁��V��m<<��N��"�ԡDu���IuO_��m7���ׄoS>q�|�!���;3�F��л�����|�&��#O��.P�$�:�\ }�R<'�(�*��#�{�W��b�O4f���efv��n��hXң1�Ӓ%$���-�[[�q3]�Ll�3{}kd�v�Hڌ�*�\���!�-��ST\t D���E�ƫs�	^��<"�1V�s1��!��j�`<�o�p}TG�o���Li����61�δ ��ґ� Nh�pb��Q�#*-A���'���U6�NRN����'���'�-	�M�)�\ ���^X�<�+<r�%�c��y�
�(_E�0L3h�Y�$4#0��� /���tϘfk��C�"��FM��l<�Y+�������FO5����Wc<p?!���AM��N��p��P�&(`Q��;�����w�"}X��,�YF�
܀�qT�F_ƹ5����	嶡4gD��w�V���`v�p�����Zʽ'C؁5uN����\FE�suzs�ϥ&��ѱ.�vu)jA�4���WnF�->���v(_ܮ(��!����s(�5��I���lQ�h~V�%�~!��*�їÏ"iL&OQ]n˗�<�z�j?�z��|[p�躆�@o?gm䧺R��Y��-��C�@�I�h������گ��M�K���|ƏD���Sb���`M��b@�أ
���٥/bd�yc�W�\�0����)�k����^|3�vi�[.�u�bA$�;A8�/��>��<:y�Q�h#q��rK3�������:�Н]��ۨp⇵9�6��u���l{޳�O�ISI�46_9�9�
���xE���!����<�फ़f6�Z*=��M�����ٰwP�L��B/w]�E
o���M��2��-=��,ѤD��[��ʵ�-�)�p.��x?f�A�5�J��^�|s�SUW1p��,E?�5�^���m�<�	t�n:�I����G�Ҵ�r#F,��c�����]\z����
���ԉ�ͺ4�sX"B3u{�zqux���L�Z%M1�H���4am-���~��}��^����]`�} �Ǫ%4��V*�:�|l"��*P�n7� e���1� F�vÀѣN�T�5)���;a��ebw*��RF�vu�Ns�-�w�g�8
���΁Z
���窓�H��Aœ�_|?��׀6XK�/{�o����ݒ��7dM���ck2XoxWT�$�/ZE��pN)��pOa¶�����C�� �����oߓ�(VA����ߺ��:�Y������u`��y�ys���p�'�.�9�!�L:�Q�d�s6�aC$f���6wr���)�?��/�͖� Lʱ3��s��3k�m���6\��a�ϸT��uX�$�hn���l@U�k��?yۮ�B�TF���P����Q��P�A�\9K��6�����w���`~Qgc��n.�+����&�G�s(�];:�]�͔��sa���ʶ :��S>��~D�%k����^H��U���@
;����S3�������2b#��\�WM?b���S���� ��כ�9}�h��8xep�m�_��y���%r꿴�(jF�k��U@��_�"�U� M�I�5�:|D�t�b��c���%G@�i G|�b��t�R��P'`��|��rr�nL]�8�0Gޠ�����}$�E��Yp�����S������iߖ�s���wai�#Yv�����UT�֫,�66�y�+���
V�KG�q���)h��~Gt��_�S�iv��� ���������I�(�]��VwQŪ�%����Vp�
s��3��0>u����Ŭ9;[&�h��J�^N��aJ'P
�ԫ�'��vw0+x]��N�W�c�K�O�L:�λ�疿�bTWM]/���'X�_��r8Q�p�(�CK�n&�yˡ���[[�LF�����i%4\��� i�>Hv�áH��U���@@+����/X�z����T�ف")��E9������o��a�X���=����t�g�5�    @�?���o�ʾt�R��=;ߠF�nAP@��~m���{�%F�7��i$C�A�~=P���N}C
�`�!A��		�a�O���J\��ғ�����H�{	vd��%�T�)��N�k���Y]���&���E�Zg�7�.Í��e�V�[��6d'\	{*��=�N���\��ԩ�կ��;�Q\��(��y}�W��V���߷k��.r��t8�U�\��o{Z����w��G�<*F��݉�����=����נ�$��/PV6�-.�.3
�V��W}=zx	�4��i���Ӧ\X/��ݺ�@ڰal�1�xP�W �-5����d!��ڧ�%7C���a����\|OM7~@���
��`1
]|B?^W�"��̔#w���2�ǩ��cc�B�3�.�Br��9|���WZ��=#�\GZ�������i�Z-�WW��W�g���Nr�4�c��+�=�:`X�B��j��0��(vJ�)C�GE���_C���#�(V���!?�}��<���k���C԰����{c{
i�~G�X-�+=�	*GhC����s�
�}C�A���r`}l���9��-��oA�:](*��<��<����Kn�|b�d1-��Y���R�TTѨ���Y7ӳ5��T��i)����܍�,�Z�"��/�n攥HE�4�p�����i�2�E���`c4u�Qն�-H(fs�-��m��<U���-U�����B��*�B��p_�����މ�%IJI�V
������X����p�W�O��A���sS��-��~x��$]�e�Y1uH'�f����ege�_\VK��8:u��/5���g
�,3��:����QM�V�p0p���c�QHX��O.f�1����.�ϭ�yW+�����*Ha5�2g؋���i֌��D�-������gX��lZ�;�1�>x��8B~��#�AK�~��Hє8��0Z�"����K���j��J�����f�cK�d���Cԧ��~��f�I
��=�L�>x��1i2uj�E�gfezT1y����-�j�P38;�p�ivV>�A>�!�������۶{��c�!�H���}L/h�"Q$1"Qb����%V��K�0�s�p�ۂ����М��9;���dC�!�]ԝл
�|�����Vżkxhg@����/�f�^U� � K�y9�4��6�ܕ�~��� 3�)�1�tdD��aX��:��et[#�Fu�
��3�u|�&������=p�T1�:�@�h.t�G0�|
����"w�8e��.�9�3(}�ˆU_1hX�	bS_'E���n�8�qt��@!YwNi]��F�8�:�,Q0�$�Q��Z*h]��F?^3zu���0W���XXk��X�.��T��5��y/�\.�e�x�ݧy$�r�C��u���X�2�31L�0RVj5��Ŵ����t5�"������0!����8bi��wWj��'Z�� ��3���2�$���5[�z�c�AB1�P:3��.�<��M}M��;���*Z0������{r��Ge��vw�c�8��2������6�O\0���T�5��������{O���_�����HL�ZQQrZ��a|Cr�|A@���p�������h[�pKO+B����C�7I�h��x"�xT��Ji[��i(J�N��AЍ�^ˌ�22�T�%N����FQ�9�)E.dC9�B��_Iq�8_d��a@v���>�*��1�uҌ��}4/��z�c�Uɻw��[U��$�ݻ�S<�W*B��8T��iAa�Фg,2칏%��ת�錺XY&[�]6��!˷��֠ ��b74�����=�-8��%�3�L��u�VķB�5?�r4��ϯ�CXq-]���/D�ؖ��,�at�P�w�;�(��hP��y�){�%x�}؃F��BH+R��j�be�*f;p�������i�=R�>H�@ݸ��+�w*p�X9+p� Q�5���&�g���^�p���?w��J�t^jԥ*ꉫ�$>�v	�����=�8:9%����C5�6�B;���L�n��!��9����XwT���H 
��;B���u� �˚���Q*tX��;��T<=&��:�ZF��Q��>"����}��@�,"�-^����y&$8����Ӧ�i;����puA�k�iB��'=�/�O�G��p�#W*���&BL���xU.�����抌�����>�BD<��_�R�V"�����R�bَ���]��3�����01w1��G�t�iE	����u��A6㦳���q��p�`��2K���bh���i���"eCԿ�Uo��l}��0Ȁk�|�RN����y8ꊌA�~����S�c�G+l>e�̎��t�ds�I�X�<�~���'��=���H�[n(P�XSm@nК��ܜ�c��@lw ��n?���r��b���H�?}}C�Y���ս�$���#�%���^��0\��&pyQ���KC%<(';|t���v-�Ex�X	�ӈ]�jW�R��ʲ����}y�>ǡ19��t>@������E�)k Zܱc@��@�7%܉���'���2�EZ�qhX�h �Th�iM�lN��͡�`��!�����p�[X���8󶵄F���Y��v~J㼽�v�efM�IH+��Ӥ(f��I�^}W~�y�����H>[?�B<�8���H�,�q'E�Ez����;G�����a���3˘O� {M`��]�F藻�Ȁ��ޕ;���fo˵o��k������d�L����j�\��������xk�����+����A��N�p����hi�/���-_~%;{����=9�m���9�]���Pdڜt禽(��:^�8�l{�皙�+�լ���a�s�kՀj�o�>��$��x���A������j����
��b���:��К`wDmx6��!��+����>@��o�N@���������3������P,<� �r��)+�2�����d��DR�� �������Ћʑ�
Ŧ��fP����s�T��M�Ʒ�[|���B�L��|f�Q�I��u������xq�9Z�:.���MBDKN�U�
�b���d:C��r����]��:]پ�������q��Vk��Za"W��օ5�����6|��TNLM�H#Ӯ��pH�ք����4W#�T���iR�^_���p�__�������#7f�H�^�c6Q�f�<�He�\� o���B�վb+��a򍙴s�_���KA����`[�,��W7�fwk��\�!(�G|X[��g����Է����Gb2��ʷ��=#�1�=]���.�AFc(����7�0vX�[,X��#�1"^ 0��yo����6�h�(#v��:�����-=��u�1��Wn뭩/'*_*�̲�����k�͢�ɋ�8�)H�HuD�hAY�{.���6Y��v��;�5M�ZM�l����nI�^�$w�C�I�?�&'����8e�t��Խ�׀�/�z�::�Ԇ�����6������[&��f;��v��T4���F%a'4�����M|Eo�D����^E\$J��{�:��&C���LP�9(��u��0t�ۏw��'�L��6�>�h8�(���5�0��^|v�6Y�wzٲ�$oX�)vuuyeU�h�ep����(���=S�*���G��&0¸�9�+E��5��M.6�J]��{$,��`���	�����Q�����2�eq�!6�J��'��o�0�{c�Į��#(W����HV�-B��7�9}�[����6v��g�d���Zq���	�Q�E?��4�^��<��4(0ᄮXm0�ږ� ��Y�Jǲt�U;�8f�E�h"��1�=k� 5�����u�/���@L����Q!���h�ުq|���#�p�����p���)�%P�P�.ʇ�I,�����&j|m�ĉ�7�ލ�k�H�b���]�Q�ﶟZ�.���!n����XJ������� �   ]O=x���U���3�.t��n��稿\�Z[��s*݉	ᣅM@tNNq��r�%)��ӎV�%i|ػ�O�ooL;&�&� i���T
��	�兾�ʑ�w�m�|U6},k�ee7�a������@�:�I-�����l��|�����?����@�4      �       x��}Ms�ȕ��+0�X�K�%�����H��HIi�p;*��dP
lQG�����M�>����������}��
(���h�-��|������G{�o������`s#��o�6z��O���tw��;�ӣ��sz��o�/Ύ�������ɓ������V�}ôHf�m0�ҫ(���Loӑ�7�O����ǫ�1�А"�$�`�)���tV�q0A��h�����fb�a�&�4N��/ap����X���d�9�E�0��Y����I�D�,����z���Ȳh�fQ�Ɖ�7Q�Ipå�����676�[���O�&���N.���M��(��p�E��8�8�G�(��0s�K�����n��t!����}�q��G{��0(�p놐����QG��K(4�FQ"�T$��8$�&��\fig���-��gŔ[�r�tsc���_�aDm�lln)D=_{�|&���)�Q��8y��Ɂ\�8��>C^�.�,�,̀² hiFs���28,&�olZ�p���2l�]�p2�#�.G)�jZ��>���>�/xx�)���!l=\�N	�o�߀������&6�`��Ή�Y�6.A�O�w�@L�[�/�@]_� `���,ph��@^�ÑC������Zg�bwi�.,�#�q���V K��.p��䑯\�=�f�M��Ѕ-����:�#�'�Ԧ@�E����F���@�>J#1�%��ITS0���㎫�_�� ��aĻf
�:�	�.� {#l=����^�M&�~��8Mƀo��(��31&�ă�,Lr^s�|4�:L����pH$x���`�аg@�q������ap�l���Qp�f��r~|�����V��~�NE��;/�O�ژ��'�G�sE���d�"xp=�M_<y��?l�	Kg�,�S(܈���Ƀ��g�'������76��'���Ǜ�w{��[*8|{zrvq^y����/�_��>�ȥ�4�S������.���)l�=9>��K�����ýW�g{��G���C�������w�1��#��[1��~�2��l��c��������ǳ �`O����?�G��	����O���e�����>����"�aW]�;<V�`�kI��0R2�. ��l={��4BA	�����t�pp
t��~�:�&�����~�J��>{�������&��=��(�����Tv�9�� !��p�PO|��/bWB��+ ���m�e�[c���˿ en�.7FQ>=':p8	�"y`������!����~ֹW�߆������I��w��*ֈ�S�zd4�&܅x�i~ �i�������:�柯�j���P�{����Pr`���΍ OQ��y���t�+1?Ïgx�\!3໤7i��y"&$P��r�&�H[�����O�73�h!����Mb�N<��U�����/Y�A@��Lȟ�e�j��o��<�7�u�8������~i����Vu��]Q���G7".}@}{�1�F$�d���4"�k�,�n�I�h��t�Q
����C�ޛ�]�ycC��x�\���G�?>#��ˈ$`��M����ק8(w�i0��|G��������ഠV���l<Z:����}���F���!�ڷ��h����6����{>oq�K��ѹ�n�<L��s<��D��U���\���O�����^ ���h.����E�ɬU�P�m�ɲ�/E��{��,�h�P��I�qG6?>��=h�\�py��#�����4��4v�+=M�a�XUU��j��0.��0L柡K�bqGr8�PJ�Ψ�uh�<���Ml2M�k�<��E:dg�l_S8� �aBo���A��4��ω�M�|��P�r
-a�A�Y�c>|sz�	p�2�f��8����Y'���#�Sৃ>}�M�UY@�Ҷ8���*��c�@VɃ� ����?��Ge�@c�5hKy��8Y�J2	�q�INŝ"ט�C2��x5�7�<A�	���ny��&$k�ʋ��@&��6%���|6�J�$#4�I�|63�"���(%5�K�(�6�̿�h�΃�HA$#�%�M@�!#�q��7�X<�&�#�"��  ����JKߔ�T:���.�:�yY涺	L?�ٜ|�S�"���rĤ��-�S�N��B�>%���H�QT���~�Z�\�MVLScz�f��J)��y��	�,��A�at��=��i���
�h8Y 1ABA7,�q`�5���!.4�j���4�N$��`�ߖ�UP��u�uG�M"��fh���*C��#`�̋�TW�9[�D�4��a�4��W�r�$����J[��顅 ��+�'M�p��x�q�f��5Q	��b���;#Q�n��=JO鴬Fp��=r���	yE�-9Y���E��c�|4Lc1���A�_���(+J&��l�����s�^F��xz�,��Մ� F��"<�x����1�)>�u��J�?M��CS�sȶr3�1'�@�\ D��g��$�3Ʌs��<�n�����p�G0u�cs<a��0~�Q�B�U��&�"!�� ��Ng�%�#!9�i�)�ƨ�C�yA� H&�!AT��ڶG�O�Skŵ����=T���=O�	I����
�M]�,�HW-���B��,J,�Y�#@�mU��.\<���g)��"�m��vp��ąn|���S� ��ω�%�4� ��Q@^l��i�hUP��"�ii����.*`�a���n�w��!�#��;�L���D#�k�Zu����o��cL��lcT����[���%K�2�o壵*�J�j<�3<om�/�]v	kj}��:��p]��Bd��燌		]����s�8'�FL�9��֌�Է���] ��ig��ulOk�Nj�q��T��3P��\�$�n��r���2f�*yk�Qu�n���:pM��rp�^�^`��pW���ަb~�>`a�$��z~�|�ڣR���W���P蘒ȗUȖ?�ɕ��6m�ሔq��zq^��ռ�����K�>�+f�%��C�<����]��O�����I�S<�N�����C�j,2�b3��v՟J��~�~�H���ƣPJ��{�@N��c/AXͮ��������t�/5�����0$
9�P;���Wv�b=��!G��SA�X�x���:�u�:����"5qB8i���#b0�|���lI�Y6��I�׆9#��3~�Ȼv���_{��}��y��s��僑�)�01��	�lަU�X�Ft�\=���@��>����ll�sX��M"<u���q?W�#���>�rBᬐ���#+14��T� ��uBߤ���J>!��
����T� S�@iO�tLn1W��"O��Oa�xN��S�`]`d̞���_���_�;;@hY=>�Ѡ�*L!^��&EL^'g�܀��/0RWM�P�����%2ˑ��9�[]�l�l"S�ylx=,��q�IJ��IϿ�ɩ��ߦ������p(l �68���(�IJ ^Iܘ1�*�m��\~���H���۽������?���/��9��<l����K�<��g�@�xm�ÿo�	4jBZ�'�
&%e��S �K��p�EIzoӰ&�m��N���d��+6��%u��H�r4��=(�M�H�m)H!�8"-T�W`Å������&*�*�И���!e+��!�~u|�[�j�$|�����Y����!���9����	hߘl�ٙh�!Ei���ͭ�e�����g�Sk�ʹ��g��p�b2����N�߼�u�ۿ���-��v{g�6g��o�n<�݆3�iw����4��w�nl��<�������m7��Gx���1����C��4�����s�1K�ϟ~�ٱ�/�-Zn�o'�o�����bé ICf�Q�ĩ|�"��`t{����9���S��d    �8h"Q��l�
�����@����lV;i���;��^�O_Y�j6]6U�����$�9��M�H�,k���e��y��1F��k��������c�!�n$�dj�)4�c����2�@Gz���@i�2(#6��X�)-UU�ƛ���4Jf��eh����tOYؑ�H���kd��^c�/o0์|z?x����o0��!=U>���rj3��2faeG��qW�.|
2���c���5'ʆE$f��c�629hl��~	m�ѵ�c/�Z=j���1�Fd����!�*0�s�j(�^�(�2���.��H ���^Vw����sA�iRi$�������݇�h���z^�d��~y��rK4*1Ƥ_�h+P�F�l���|��_�P�F��X�1)C�)���:��;�:���X�)c�3=1J�[�+��������=���d�טJT�����ŁN��b�WD6�f�"'�4`���jsIi���c�T�F8���o8�,�IM%o��4��HQ\��K�Vp�7�Y�sϑ萆��&�܈�Vr�-V��?yxZ�?��0������b
�j���[
��#c����u&YH�]���+3r�o���5]X@юI�=�;?N�Q��ٚ�9�1Z���g
���%�����Q�A$YT<[,�S/2��9=_�ez~S{S�D(����"4�:X. `�em�eW�η�AX��?�>V�Xp��+�i��y6�$��"WюDؼ��OJS�M��Ͽ�(��12�z�Lj�3~��P(�J��eWa���"L�yR$~@�>D�o/Nq2�Tb #6K�/4����\<��l�
M�r:IJ1_��# �:���1�h]8�c�tr��44�� �w�U�B!���DU)�ipt
��(s�	�i�B.�����F1�yĖ�	!{$�Q֑��J�)�	V3�"�N�P��uxɸ�h�,�?"��Y�$����-%�Y�\��ZFȔ�b'����h����b�e�E�[M�x�ڀ�&Td7kc��$j�*��� ɡgv�<1�]�T!�]���l�܅��9�axƴ��*�-o��2~ is�3�o�?��-b4X��`.���Qmahc�v�4v9,��r�h��بt
��)�Q'��t�Iy�h�XY
�҄˕Տe(��X�G�Y��uKh]|9�%C]�Y�+?�n�Q9���f@')y�_GR���چ�Ȩ�N����> �~�=�Ha���6k�i����u�,�G�� t6
| �ʽ���"�4�ߵG�"�..ɬ�%�JO�������vV9c �P�	�q�G��ܿ�BͯG�0�^���X"/�62)�G���)��=��84l,#�ˉȂ<(�;H��'E�7�[4Z��P�	i�X�����&���x�F��ϳ�6���{4���W9-w���@x{���E4�y%_sV�]S5! �r.g�X�����z��څG+��\rx�U�o��hXe̲}�F%�7V�13�\c���T���P�v�a��}5�"�5��66%i�xu�X��,h\4��LJ��[�X�#2�5l���Q6�0��������3��A^0��.��X��rg�ڦ��=Т�ϭ�:��78䤬�;Y����B�'BY�#7���(g7Q/�I|�d%͛��Ojܷ._	?��ZW���*I�;��4�������g�fQ{v��ѡ�N��TO/.� Y�Ŝ�����2Ms��K['^c�e�P�=n.e��p������:������4&��c����A�����7�"�Ccb"k%� �U����Д%�}��d��JMVR;1F+�q`��IU92���_3��Zk���\�c��>rY�vo�E{X1̀j!��A\�'�~���fh�'���΋�5���(�-��)�\�S��5��G�M�U��#��͏��i�E��fL���3�ls/���/�2zlap���?��a�w���%����)���gǅ@�Y��)ۆÿ�T�t�����)�R�%�,<mcuL(��c�����U�{G���'��R3	-G֤�])�r�eݞАA���,k<d�5s"�}ME�E!{�@
׳c@���tt@L�(�8 jr���;ӓs�+�g^��j�2�q�{��c�N%����q*�w�)TQ�M�2��"����y5Z�zm��;����7�3����U�}���"������U4�U��)�%�o/"�p.�R��4��5��ʥ��^�����g��VcN�3�)f�,�1r��hV G�gz��C�'����+�j�JJ]�{e.���a�*V��I��A�H�3H�^���1\�֖�;!-9D~��P�ozD^��2��%��
Հ�V��X"B��h��´�b�B��J+Z?1y-D���{U�W��b��^>����5|��U+��;dp�����l��뻈��ש>쐦��Ҳ(`Gޟ!S�:���y�>I�$z�&a^r�="�,���Z���8{�LW.2�hόH3��C���*�L��_��)���^�<���VAZ���u�|_N�½��]��c_��7���ܑ�j�R+cuS|�ڮ�f��"��Tf�V\�z�������{��<�o2jݙ>�Li�J���iI��ԍ�gi�`K	��n.O1���<����M6�"RCؐ��m{R��	��aB�4�N�t��T�4�(ƾ�|M����|D��:���"�E�L0%���5v�%%�F��lD�fuRf1},`���������۹���w��#�լz�HRͫ�Q�=�z�)70$m=��k�����YϿ�Rx��j�so�;	ʁ�d�S�*���Z��B�x����+�f2�=ā�o�>�B�hsB� 0���^d��lY �����
S:߸��0�����NU�����=��a�Yѐo�A�G�m �E+٢b<0�X^���i:�r�;�¾K%C���S�Є�}$�a|=�WE� w��7��#H���c�C{�{�@�;S�Z_d��i)�f��䉏����ZJ7��cE��/�0|k:v!5�����9*m�&��'--�����U[fģ�e�jn�:??��]��a�4Bq�����%5L2x�?~GrB�oM�?*���c%c4��T����D��c1�!��}�R�l��"5�A�m��U1��6V���~�E���]h�<׺э���5~�Y�t��5�⭟���,�ݲ=W��532������Xe� �֎�m wX�M"�_-�,r����x��5��n�`c�ގ�R֓�K�-7%��;W�]�eK��G[�)o��K�k�\��'PNK'�e���6�b�;L���&[�@Фk����*�+�v�Q =_��a��T��������F�κx͕�|�	/hj^�>�L�/��%�S?��V��[�rj�p�&��l*Oj�l��,/fU2�����F!��ʱ�җ�Ÿ�?�H��g���<�K�p��G�H��YEM�W��$�yTO$�gg+*���y?#"�Mrj.i��'�򡾴�U��J^���u�d���W攱H�H�mo��ӮL�(U1l�/��#%���)+~�*�QQ)�td����Rua	p*�P
,yɻ�)n=FF'�Du���in�!W ��'>�9��Y���gB�Xfe���Jq.�j%�M
�|u�,b℩'eô'��( l���\����q�A�����?�Bo_�r�����V��Ƶ�3�2ߩ�n���8�'����8m������m���m*�T�����G"�8�:0k�2�JYg�v w��ߖ��`���Zp��6�I�Qzv�w��١��T�]0sT3��.Qܜ�7Ҽ�Sm�Z�WUY����p��G8�e�S�Hh�%������������A>�bnS49.0��r��4͍]ٽB���T��va��� ݊�KR�(ݻ�z� s��,6���#ˎ!E��K�چ��!\�o�I��T�`"��f|/L��&��i�[3�T��d/��Si2UA�2@)��O@n�L2��&5x�ǁ��G�    �4k�c~LQU�+��/dS|��k�%�鉻����]�or��a��uD�-��~ˡ��)�s�;�D��籐z��~�Å�suO�u�U��2I�2m�.����1�d�w�G�׌t�,�o� -.�"�Ѣ.�L��N��y�X�Z���:Mםr��eg�/�\Ym0Y������C��}��H�V��������V�Uˑ�w�Cud3x���3�sV���L�*��n_#`a^�!�f^)9#n*u�E8d@���[{��xޜ����HYө3�m:���06=���JUN����z	�"�wˏ"
�^M���N�x�"Gҏ#�!����������pA���X��bNU�w�_�Ў=��#b�Ev#�B�5�-�KftL5�]�y�![5>��x�BL:558$]-���h���no{[H�[�a^u�m�A�a�h��n��b��mU����$��_D�f��������a8�ةfbQ����i��L�r�Z֬3dK�L�>y�y�kg���:4������e���y���)٬x�:Ml�
kYl��.4c0�r�*�SV1�b�j4}��t�Ő�f	d��i��
�0�% �5i-x�V�%�k` �ajh�z'J�+͡d�z�`������ ];��0��y`TBw&=r-lX�4�c4~��B��m	��ư°|��Ѕa#��@g�V%�i���ZF���pΆ��V3Ҳ׭��* [M-&)�
����N����*)�WGI٥�z%Гm��j�����A2���ǩ�*.�n��
�>�D���]_��G�J��]�R�U�i5���|�r-�S�� ����P��3�|�JJ^����\(�76.\l��]ej��呀���}���
��n[7�'�fR�D�Z���Pэ᪱ ���P�&��/��-���jk�%�z9兰��i����ڶ(F��U�������NҪ�Z%}\nRA�k]������%I��X�B�`sDQ�lQ B��%]��NW��]�=b-\s��Ζj]KPZ)*;n�K���;��`S���"��^/ű�[������T�3뙼U�ޞ�[�[_�S�L��}����������ݝ���Ew�E������U����7[�o�^~�
"����������A��d��Ҝ<�#l�w<��ͦ/�<��6��<�'��'�?�F���q�lmv�o�o�<`��X�ؼ��w����rr��v��G��ó�M��.��	��N�^��a�9;�`��
�.��  �&pzr�ǣ���^|��Y��C�1�|wq�(��]���۝��N�������p�� �EC��;{��_���wo8���YͶW�s�=�{-��k��&#�j(�4C�n��9�>��t�;��E]g��J=XW�p�m��Kg8����4)6M��W���|&�t�^#�^�Y�A��^�m���N�[ �U ]>Lf{�f��Y� lm��A�A���u$�kGB�*�5&��Y��
��$Ի;	�0U�Po�$t7�kYIB�T{��K|Y+w����U^L�|�kI��o@����T,���+�T������Y��nә�=�������Z�b��i��H5	�x��8�?�WrH]�v]�vo>��U�T�==9�8��Z�A�E��W|��_X��їR� _f�w�#iR��8��?����>c;@p�դ��t'����V���|x|�]��6P�*��[���~����,�:�O0�����h��d	t�hzc�̈́��s7�.�m�Fv�R;����=��0��9?��S�C�(�ś�a~�ҁ��OXWoRx�"�A��)�R�@��w�+gG��6��%�f%Q*Jhݤdn��W��;B2���_�7������m���PU���
�b�E"�2�-B\[��JZ�V�hDI-��Ô6���n�)�@؆���R�5	��]�Z�P�Y�X�#� �؎p�VVU>�Pd�/�Lˣ��ꦬ�JN�D"0�����Rݎ���� 0�i�fZa9x�G���l�D)5 '�`^����OQ:G�1�\N����܄�<r�k���7'�JOToZR��0%ׅ�G���X�x���
/n���%i�baL��"s�����6��}��GA^G��(����t�0]����KLc��ډK:�1�=�r}H���5Mu-��?�Zg��#�9-�G�3�H��w��.����焄�썸�q�q}��L��P[O�p���(��?L&��ԅ���d�lyP���X�d�D�ک�L���L.\6���)�(��^�8C٥��^E��/sg��
_����H��k�ι��)�kG�ft�@�^�7��p�ɪ��BV��V}��뷜[}��Ϗ����O^��
P?�LcGn�ߵ(�]ӷ]56ɷ{b�0ń=�(H)�ŉ���Ŋ1��.04����ѽ��^W Տ;���K^1���y">�D���r�հ�ܪ�89=�3]�L�����߄WXz.Yof���=X�1�f���kX����z�~������k$�ύ	L����z�tb��}g��
�������^�@X�+�3�u��<���˺Y�*4�QJ���ƨ�*z���*� %��yp	��J�s�r������W��G���`Ǽ���b0E�H�d��ّ�m��q��TE�/��f̠�����j|�j&7'ѱp��CZ���o}��Z���h>S5�l��oS'�|�&��G*�h���P���_X�i5��BtʽzP7��j� ��Fb��B�����k@��'�4�F8��J)I��d���*��\fk��  #�͘��_�-JL��J��r�C]*J���0�
�bz��M���fÕ� H�9C�_��u�E;�+�����6;oe����'��+�KI���I��9�:���a��V��%�P�~�+�YD��IjUz�������A�w_�(�������]�d�� \i�j�x�\��?�Ê�bYp9b_i&
ed�y�9�6�XMA-֤�/��ʂ]�g��Amr��n+s	���������Q�^MtrA�%vsD^����/����	�^��
L�~��?�su��Q��*`���NG�IK0��_�@ʋ����4,f���X�����v=�@�t�3b�w[Z�pG�g�/�P���Z�A���c�F���w3)�����
�K#I�f�dq*A���Q]���z-�w��p�]��Tp">�I��ͮB�mķz��@����`����v	F���)tG -s�lP6,�wJm����.���
�hqI��5�e�)zJݨ;ؓ�� a���� �N��x}�����Uwa>�䦕L���[]�5>U����rڵ���&\-2�P~�s�����i�S'hɉ��C����bY[ً�A�����e2���;���lj5�aF��qy�5�!X��5�T��1}���vj���؝H� )��<y����c1��M�pge�>��8��4<k�j�p�Zf�Lװ����XHB_.cl�i��ok��E]������Y��i ��┠Kq�j��<#{�O�E�%�ػ	��϶Ԥ���o�"�6Ї.���� �f���"��婞�<����1����_��bFwV�`!��?������H��5����|���������q��o-�>+	�U�!���.��f%8�\H/�0ՃT�u�
�=��{��
m��[����|�C�]ٝ��vq��=����[io}s��ˣ#�Б�Wa�>�\�Z�2�vȪ�Y�о��y���:��w�Z=0_���{PͿ$"d[T92(Ī�tmx��ʒc��_�o��w�2�Z[��2��SCo�bi�Ա��rt7�PW�i}m�����«	�nQ�2�����;��̵!���=��cK� �$�hxe���O�w�
�*7p3��V}-��ng���ّ���6�xՃ���7H]�o��m
��m"����	'�$L>�I��Pͷ�eY��/�5�bw'Ϳ�#��R��;jsg�}3���lp���F�=5L    -�V#�g#J�<ְ���>��2�2�.��\�� �ƞ���D�֝c�F���A�]J�mM��T ���;���Ho���/LR.fS�!d�_���M����LIH�f�2A9`�Qo�f&��|!����vK-��3)�
�i��.�}�z����j���&�:,$�Iz�����R��;+�PP+�usyG�%g�	�u>��4�X���k��3o_����:j����JJ]����/���k�,w_�{b���,B!?	Z�f!e�(WG���$�'ֽ*�c�MҒoP*�y�N���_�dn>Й���K��D�)"����_5v�]�Dis�3��~n��J	:V硷-�F�#�#l1x�_�����qgd6w��-���v';��V x�����q���k����NT��O,��8�Fe��3�T�e���1�����@�r���O@�dB��+�o�NR�1�>w"o�OP��
��)b�X�������&�s%+2�_�<.���
�٢~K/����|*��Ve�˴a���v��P�x俼 ���b��W�1�����Q�uD�o�����T�K�X$֗s����]�S�ñVX�9�V�Z�*���!K�2f�	kQ"v� 
a�u&+��澄�N3�,)�8�(�
��Q�D�;���m�j�.��/P����`kG����s"R�$]̺N+bf�uHCz^�j7�0Yu�K�,�+'�>�����,��A�?qj�oT�2S֔ʾz��?[����}*�[�)�ޔ�l�/�qL���=����������c[�m!KO�x��!{^c�P
����9A�A~�����w	�Wa��20Ij�/���K��A[A�!o���`e��YQ}~��p����/��8�1�0��6��_��=�����Ӣr[���Y�Yw�r�ʑ��,�q[�jrx� ^A�6q�&"|�������?	�T쐽A\3�:�-	�@���%u�ʎ/�/�u��5�2�@��i��@)6̌�S�+���Z�߻��V@���aS�׏�*�&���S���Vb�b|��CcYP��h3ݶ���+ܷ�{2;��(m�C;���]m�=�:����
��,���@��	�0sU��&�w\E����#qt���V��*�R�4`Qi��]oӍ՚�l�Ş����i%�/���M�IY�Q.Ot�H
8+�Q�[DD
.�9�!����;�f��+Pio\���wG��Stulj��U�k���ػ��r�l)M���´L�6M�L�L�*]c��T!L��j�1\�����oqp���� m8�d�Wm ����b��jD��RoId�҉o�����QA���XF�"#���8��I���p8+V��Q�*/�N�s~pK?ʰB�=��|�Ij_1�?��cf��L� �}����q�GcM�x<�� �!��j�7���f�*�,�c���ղ�v���*��\���V�N,��E�j��uc;cui�Rj���:���9�7/t����?ߚ(�S]���
c�i'8���3���͔p�I؁����J�D�4�:��7"���(�#�ݙ�Ǯ �Oym7��m���?Ϣ�q�]_�׭��w��Z�+n+3�r 61�+��C)G�/pJ�1��)2R*颸=�����Vl����HŹ�WG�n��ߏ;қ8Iu�8,�7��`x|���a�1�gi��v�F���Z�|�c��ڦr���
R�!�?M\�n�t �	{ƙ�J�ǃvig:`ov�+�b�4���p�u</(y��;�&Q>i�"�CYNa�$�n�T�̲N��Z�S�~��m^t��nW$7s�^�`y���hg(A���.��C#�q��t`݊����v���5���D�2p���U͎3��|Lq�e)y���h�������f+i\�4:h���ֵ���,�A����*k)���Z4	B��ڔ��'�p>����r&R�	w���.��--a�g1���Ɠw�1�ju�_W�^��u�-����5("n����񴔯-�CC{��d��R��:��ʬj#Uw ��*u�>�*��I��+U&��� .be	����wY-B��2Zk��S�� �v��Y�cï��WE�����k������A��@z�ҁ6�5����u��-��p)®��y��ivY0��Z���j�I7�&M��M�=��ze�j���l��ɓ~�apIr�t�4�<!	@ߒ�~k�� �Ǔ��K�y���/����w##HȫaG��]�k�F>�uD��X�8����h�cb�TqPX�ހ5�Wl�}��Mӌ2*Q'�������Ј��u��*���؋�Lء�%���a��q�j��P���F������^�bX���n�?����=����`�����=��pt}8�>]��S��3��iׇ��C��!��!��!��!����������������|�z>`=�=��Gχ����ԇ��S��>O}�=�{�c��S�g>`�|����=�{�����3�g%�|n��n��n��m��m��m��m��m��m����p�������������}����s��>�}=�{�#��s��>��>��>��>��>��>��>��>��>��>��>��e>����鏼Yf�en_f�%~�Yb��%�Y��>����Uχ����{>���[����uo��Ǯ��]�]%����h��Ю���'ܮ���'ܮ����׮L��lwۇ�eX����n���"tV�ҤJ����Duf��m�Щru(�;�gR RU��*g9���(�K�b1���u8�"qW��n[���� [�_����gr�N��y6���]e��o.��}an��۾0��o�m�o�t������ݷ�ݾ�S��O��>!o�;}ۧ�m_���I}�'�m�Է}R����vI��y�>���n�a�&�E~�,�\�4�h�ȮG���L�}�C}=#�ZcA�6f1#�ۇ@����/�(z>��|��|���z��s��qg:NX՟�/*Y����P*k�]�C�"=��:tn{#r�p9	�E�i� ����Ә":�`/�[��c�>v�{�^̜8&4%[[4+��9�Nj�q𷇱ҽ�/��w[�nYN(�	%5ҥ�&^2��Ng54�<И���E^\a��uv����.P�KH(WᰈgL'��KF/{��c���}��B���O��'�!?��Q4b����ӑ�τ@�*�q��%��f��4�Y���I��R�<ӳt������Ҏ��}̐�P�Tk@k�b
���2#B�gｒ������y�|%����=_��=o)R�S��O�g�{3:��P��8%HT[��.�Eo �5��8��L'}���6 X%�/�K���a6Q��̼��"��.��σp��*i�c�� +�����G��u��4Ng&�h����D�@ i�7ߓ��8�9��("&z��*��?����ݝG�Ví�p����0q�zS�BK>�%��x~
��<lX��+��f
gT��1��=��9�i#�g#��4��0�	08J��P�T���e��	�h��1,~��F�j �1nUh��;�0bh6�� ��,fLG��:W��8@<���y#8MG���B' 
�%r�C�K�h�D%fp6�X�U��Q���w��g��Q4b/��;򹔘���TgB]a ���Q�C�I4�h3<cއk!7���Ѽ%�td(C�q��%B�<"�'�HM�	�pn��D- $Fn��1X�(�WQW����㈡�A%\������(R`���g���*��|�17(Z�m@�9,y"܍ڽ�F�J���Ig��{s���t�w��3_]c��@f5�y>�u=2��8A��������4#�!�R���b���e�aC���z���?i�З!�(,�>܀������|�d�3�)3��K�]����H��GTp?�aU_��3Q�%f4�b�F���`1Cܝ*j�&"�.�[����G%z��2~b��ġ�� �
  �,�,f������U<�LGGV;�P�ǐRe@�Y��čXA,��wE�^�߶��=���Ë%O1�Rb%3�<��_'���T�QL~+��IcG�[�>(��mHd�}�E	xpW#����7=c�Q�58����B��H�,���$d���Ę�b������ȶ2h���s\�ȟS����*��X�ȭ�F,�D��Xi&!��0ҕ�TՐ��K��o!C����M8�wVZ�D��-d��w�[f��Lj�wΩ�#=�j�&�A8!��<�trqm-��pӐ��ZH����:q�]R0р|�+k�Ǒzd��N�Ћ��G1&��YŊ����3�Y)�"�H�(�MnR=�jQQ_eX����R����S���$��u"e�2`A��e	����xҺ�@r&��S�P�@�~��������]V7�I��d��
�!�'1�C��!&���ktrG�H�.
p8QX"�7���^�+�L�6��a^M�#O�Ƙ$>�vY
Od[|G�x;��"�Q��*W��⃘y��<^��H�Q���(�0E����Qj'T������
�*�J�bc�IWj*�R�G�	֛"B�$�PݚL,ƤM�7Hm���O*�c��+@��+W�UH鈥�A#��I�3��$�ա)
�x�¦D9jx(4�Jº�xT�����nMJ�t���iA��ޜ4O��d��rdRWAڬaEdk�'��l">�II��@tp�h�%�'��K}����J*�B��R:�v�(Ԗߨ��i9<G��^��0��
���:@uū�S)�h��O[�(N���f����v|V�d��>3{RE����m���N��
&/ȧe���X�\2�ͪJ;�b�����R
X����5B@3��$yR^��[����.��o2��S�jt��;��V~8��6����xrPH�z�m�@�ƪ	Yh^���9�S
QrF;�+�7�2VTU���̥� �*|LK� ю�/�43�m��͊�֠T������@.NN�2�H���TC�Μ1ƻ�"��IՆ揔���&�įɠ��Kl��꾔�{��Un��h	�Nf���ܨ�T�22\�\�̒��+3�H�b�$��@W�0A�?UӍ�>A��T�8�BNͺ5���H��>�J��[`+.��1�':�����r 1���C��R*��9��/�`&P�?9sT!�i|�(����	�l�Ȁd��0�K`�z���ɨ]�H[1E%�+X[��7��1K�7V	�S�ĚK� #%�Mi͖X��O�n*�7�v����,<��u#�KH���+�$���[]n���qa���ju���W��%��&�vۅ[DcYR[U�2���6�M�\U�Q������.e?d��ŧ1 �����4a��Ͻ�OȻ��K��`2\WUɡ2�\Z˙��i4rgі%��
B��@a]:��b�х����c���X)����4&�D�Z���ޝ�g<ޢ+�>�d�7��"���Vew��7���������?#�{���ù,�J�vj��X��i�����AQ�&�
� ��q�#����ǥR�]������'�U]R�Fkk۳a�\�ʉ�W���6~;��a��~��Q���s%?U�P�n�_��v�W�N`nʜ�Jp�n��;�s����Z�W��<���+K8���v�vp6�ƪ��C�{b���k���1&���+Y���'g����A7��?�%¯��Ok�(�:.@��G�'�@4F<�m>��ul\\3���ȇ�j�S��H��x�L:t��(Pe��t���a}A��@$hU_EK��D�b_���#߾%}�f�.A_��"�����2��R��O�*G�?�{�̿P%6U�C欐8��@<&�B�%�nf���d}���8K+��D�\�Js���S�$�bZ��+�S����>����uQ���Tg��X(�����W�Oz��ų��*����[N!�e*T�~%���[��̋R�_��Y�;呯�
�b�5[�e����)#"��<�nF�x���סQ[|R:2��R���>���u�)��Cލ��NU��R�,O��gɓl w݀�}�-�Y��T���W��^O��K�"����d��*vǯ�r���!���`���j��ԉܐ�V��>��uXR �X����=��N��}�^ѣ
0��@��e�4g�������_�%�* R���T\�E��Ŧ�j�D��7����96��R��8�fg�Y���Pm2�Q�.�$��Y����_I
��x�#�D����QÒI�z��-:<>L`��21�:e6�xlΈ�Qg�N�K������ǁ/7bW/KO��]�~o�6;
hR]������$W�rˇr�P~%��|�{���;�����WB�j�>��}��K�x�>��+���;��;5�%l<��y�6�Ʈ��Ѳ"S�,q��Uv�*C�]j�.���7R���)���Mt��3�M1�feP��l(]����]�T�x���l�E�	ȉic���٪Q
�%��>1�*�Tq��g+�]V�Ӈ+)y�jQp�Z��4ߓK*�`�o���j�ӗ5wVsq��
�C�DJ���y��K��>�!Ύ��٢��K�ז7u�d:1:J�t2j��)����M8p�1Zj�+�z�讳�+U�
��U�j�6�fksk���ݝ���Ew�E����������կ�?.��      �    �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      �    +  x���MN�0���)��M� 
A�hS��r쁌�đ� �;q
.�q��DM�vg�ߛy�y6�~�L�`B��(��Z�&�#�� �ȲZ�3vb�fՖ�y��0I�d�E^��3�����{��Q�8�^-Z�ՙ��d��a�T8`���l�r�|Y�y����2�����e�P<��8���%3�k�4|��:p��Ё�A��Y�����}��k��?�dt���?�?����Aձ6�Y�r,�he�CyVv:����ͤ3��^�q���7��Y��ыgi>���8��K�q��e�5"��8��      �    �   x����N�0D���X� J�����A=!�{�+96Z����q�Hjn�=�̼�������cB�n���,e�R�q����N��Z%&�]y|.��hI��[�K�����+o���N�(�K��gxc4��F� /}BЪ'�y��/�8�h�V��m��Qd�6Y;r��*֖a��҈�a��^[�z��N�f�p����|��g��N�S���R����4�U�Tʞ�������8���;y�(     