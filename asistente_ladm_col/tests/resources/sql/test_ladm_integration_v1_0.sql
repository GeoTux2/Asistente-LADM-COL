PGDMP          ;    
            x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) �   �!           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �!           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �!           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �!           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false                        2615    585729    test_ladm_integration    SCHEMA     %   CREATE SCHEMA test_ladm_integration;
 #   DROP SCHEMA test_ladm_integration;
             postgres    false            �           1259    585730    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_ladm_integration.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE test_ladm_integration.t_ili2db_seq;
       test_ladm_integration       postgres    false    17            �           1259    585766 
   extarchivo    TABLE     �  CREATE TABLE test_ladm_integration.extarchivo (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
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
 -   DROP TABLE test_ladm_integration.extarchivo;
       test_ladm_integration         postgres    false    645    17            �!           0    0    TABLE extarchivo    COMMENT     �   COMMENT ON TABLE test_ladm_integration.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
            test_ladm_integration       postgres    false    650            �!           0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     y   COMMENT ON COLUMN test_ladm_integration.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
            test_ladm_integration       postgres    false    650            �!           0    0    COLUMN extarchivo.datos    COMMENT     `   COMMENT ON COLUMN test_ladm_integration.extarchivo.datos IS 'Datos que contiene el documento.';
            test_ladm_integration       postgres    false    650            �!           0    0    COLUMN extarchivo.extraccion    COMMENT     p   COMMENT ON COLUMN test_ladm_integration.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
            test_ladm_integration       postgres    false    650            �!           0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
            test_ladm_integration       postgres    false    650            �!           0    0    COLUMN extarchivo.fecha_entrega    COMMENT     s   COMMENT ON COLUMN test_ladm_integration.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
            test_ladm_integration       postgres    false    650            �!           0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_integration       postgres    false    650            �           1259    585776 	   gc_barrio    TABLE     Q  CREATE TABLE test_ladm_integration.gc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 ,   DROP TABLE test_ladm_integration.gc_barrio;
       test_ladm_integration         postgres    false    645    17            �!           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
            test_ladm_integration       postgres    false    651            �!           0    0    COLUMN gc_barrio.codigo    COMMENT     f   COMMENT ON COLUMN test_ladm_integration.gc_barrio.codigo IS 'Código de identificación del barrio.';
            test_ladm_integration       postgres    false    651            �!           0    0    COLUMN gc_barrio.nombre    COMMENT     R   COMMENT ON COLUMN test_ladm_integration.gc_barrio.nombre IS 'Nombre del barrio.';
            test_ladm_integration       postgres    false    651            �!           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
            test_ladm_integration       postgres    false    651            �!           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_ladm_integration       postgres    false    651            �           1259    585786 !   gc_calificacionunidadconstruccion    TABLE     �  CREATE TABLE test_ladm_integration.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 D   DROP TABLE test_ladm_integration.gc_calificacionunidadconstruccion;
       test_ladm_integration         postgres    false    645    17            �!           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
            test_ladm_integration       postgres    false    652            �!           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
            test_ladm_integration       postgres    false    652            �!           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
            test_ladm_integration       postgres    false    652            �!           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
            test_ladm_integration       postgres    false    652            �!           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
            test_ladm_integration       postgres    false    652            �           1259    585796    gc_comisionesconstruccion    TABLE     (  CREATE TABLE test_ladm_integration.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 <   DROP TABLE test_ladm_integration.gc_comisionesconstruccion;
       test_ladm_integration         postgres    false    645    17            �!           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_integration       postgres    false    653            �!           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_integration       postgres    false    653            �!           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_integration       postgres    false    653            �           1259    585806    gc_comisionesterreno    TABLE     "  CREATE TABLE test_ladm_integration.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 7   DROP TABLE test_ladm_integration.gc_comisionesterreno;
       test_ladm_integration         postgres    false    645    17            �!           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_integration       postgres    false    654            �!           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
            test_ladm_integration       postgres    false    654            �!           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_integration       postgres    false    654            �           1259    585816    gc_comisionesunidadconstruccion    TABLE     .  CREATE TABLE test_ladm_integration.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 B   DROP TABLE test_ladm_integration.gc_comisionesunidadconstruccion;
       test_ladm_integration         postgres    false    645    17            �!           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_integration       postgres    false    655            �!           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_integration       postgres    false    655            �!           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_integration       postgres    false    655            �           1259    586103    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_integration.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_integration.gc_condicionprediotipo;
       test_ladm_integration         postgres    false    645    17            �           1259    585826    gc_construccion    TABLE     S  CREATE TABLE test_ladm_integration.gc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_ladm_integration.gc_construccion;
       test_ladm_integration         postgres    false    645    17            �!           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_integration       postgres    false    656            �!           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_integration       postgres    false    656            �!           0    0    COLUMN gc_construccion.etiqueta    COMMENT     e   COMMENT ON COLUMN test_ladm_integration.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
            test_ladm_integration       postgres    false    656            �!           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_integration       postgres    false    656            �!           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_integration       postgres    false    656            �!           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     w   COMMENT ON COLUMN test_ladm_integration.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_integration       postgres    false    656            �!           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     |   COMMENT ON COLUMN test_ladm_integration.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_integration       postgres    false    656            �!           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT        COMMENT ON COLUMN test_ladm_integration.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_integration       postgres    false    656            �!           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_integration       postgres    false    656            �!           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     x   COMMENT ON COLUMN test_ladm_integration.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
            test_ladm_integration       postgres    false    656            �!           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
            test_ladm_integration       postgres    false    656            �!           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     f   COMMENT ON COLUMN test_ladm_integration.gc_construccion.area_construida IS 'Área total construida.';
            test_ladm_integration       postgres    false    656            �!           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
            test_ladm_integration       postgres    false    656            �           1259    585964    gc_copropiedad    TABLE     �  CREATE TABLE test_ladm_integration.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 1   DROP TABLE test_ladm_integration.gc_copropiedad;
       test_ladm_integration         postgres    false    645    17            �!           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
            test_ladm_integration       postgres    false    670            �           1259    585838    gc_datosphcondominio    TABLE     �  CREATE TABLE test_ladm_integration.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_ladm_integration.gc_datosphcondominio;
       test_ladm_integration         postgres    false    645    17            �!           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
            test_ladm_integration       postgres    false    657             "           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_integration       postgres    false    657            "           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_integration       postgres    false    657            "           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_integration       postgres    false    657            "           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_integration       postgres    false    657            "           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_integration       postgres    false    657            "           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
            test_ladm_integration       postgres    false    657            "           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
            test_ladm_integration       postgres    false    657            �           1259    585845    gc_datostorreph    TABLE     �  CREATE TABLE test_ladm_integration.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_ladm_integration.gc_datostorreph;
       test_ladm_integration         postgres    false    645    17            "           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
            test_ladm_integration       postgres    false    658            "           0    0    COLUMN gc_datostorreph.torre    COMMENT     l   COMMENT ON COLUMN test_ladm_integration.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
            test_ladm_integration       postgres    false    658            	"           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     l   COMMENT ON COLUMN test_ladm_integration.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
            test_ladm_integration       postgres    false    658            
"           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT     ~   COMMENT ON COLUMN test_ladm_integration.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
            test_ladm_integration       postgres    false    658            "           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     k   COMMENT ON COLUMN test_ladm_integration.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
            test_ladm_integration       postgres    false    658            "           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
            test_ladm_integration       postgres    false    658            �           1259    585852    gc_direccion    TABLE     @  CREATE TABLE test_ladm_integration.gc_direccion (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 /   DROP TABLE test_ladm_integration.gc_direccion;
       test_ladm_integration         postgres    false    645    17            "           0    0    COLUMN gc_direccion.valor    COMMENT     i   COMMENT ON COLUMN test_ladm_integration.gc_direccion.valor IS 'Registros de la direcciones del predio.';
            test_ladm_integration       postgres    false    659            "           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
            test_ladm_integration       postgres    false    659            "           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
            test_ladm_integration       postgres    false    659            "           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
            test_ladm_integration       postgres    false    659            �           1259    585863    gc_estadopredio    TABLE     B  CREATE TABLE test_ladm_integration.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 2   DROP TABLE test_ladm_integration.gc_estadopredio;
       test_ladm_integration         postgres    false    645    17            "           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
            test_ladm_integration       postgres    false    660            "           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
            test_ladm_integration       postgres    false    660            "           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
            test_ladm_integration       postgres    false    660            "           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
            test_ladm_integration       postgres    false    660            "           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
            test_ladm_integration       postgres    false    660            �           1259    585870 
   gc_manzana    TABLE     \  CREATE TABLE test_ladm_integration.gc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 -   DROP TABLE test_ladm_integration.gc_manzana;
       test_ladm_integration         postgres    false    645    17            "           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
            test_ladm_integration       postgres    false    661            "           0    0    COLUMN gc_manzana.codigo    COMMENT     p   COMMENT ON COLUMN test_ladm_integration.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
            test_ladm_integration       postgres    false    661            "           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     s   COMMENT ON COLUMN test_ladm_integration.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
            test_ladm_integration       postgres    false    661            "           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
            test_ladm_integration       postgres    false    661            "           0    0    COLUMN gc_manzana.geometria    COMMENT     j   COMMENT ON COLUMN test_ladm_integration.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
            test_ladm_integration       postgres    false    661            �           1259    585880    gc_perimetro    TABLE     �  CREATE TABLE test_ladm_integration.gc_perimetro (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 /   DROP TABLE test_ladm_integration.gc_perimetro;
       test_ladm_integration         postgres    false    645    17            "           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
            test_ladm_integration       postgres    false    662            "           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
            test_ladm_integration       postgres    false    662            "           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
            test_ladm_integration       postgres    false    662            "           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     x   COMMENT ON COLUMN test_ladm_integration.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
            test_ladm_integration       postgres    false    662            "           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
            test_ladm_integration       postgres    false    662             "           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     i   COMMENT ON COLUMN test_ladm_integration.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
            test_ladm_integration       postgres    false    662            !"           0    0    COLUMN gc_perimetro.geometria    COMMENT     f   COMMENT ON COLUMN test_ladm_integration.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
            test_ladm_integration       postgres    false    662            �           1259    585953    gc_prediocatastro    TABLE     �  CREATE TABLE test_ladm_integration.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
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
 4   DROP TABLE test_ladm_integration.gc_prediocatastro;
       test_ladm_integration         postgres    false    645    17            ""           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
            test_ladm_integration       postgres    false    669            #"           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
            test_ladm_integration       postgres    false    669            $"           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT       COMMENT ON COLUMN test_ladm_integration.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_integration       postgres    false    669            %"           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT       COMMENT ON COLUMN test_ladm_integration.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_integration       postgres    false    669            &"           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     M  COMMENT ON COLUMN test_ladm_integration.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_integration       postgres    false    669            '"           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
            test_ladm_integration       postgres    false    669            ("           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
            test_ladm_integration       postgres    false    669            )"           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
            test_ladm_integration       postgres    false    669            *"           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     x   COMMENT ON COLUMN test_ladm_integration.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_integration       postgres    false    669            +"           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     L  COMMENT ON COLUMN test_ladm_integration.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_integration       postgres    false    669            ,"           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
            test_ladm_integration       postgres    false    669            -"           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT     o   COMMENT ON COLUMN test_ladm_integration.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
            test_ladm_integration       postgres    false    669            �           1259    585890    gc_propietario    TABLE     :  CREATE TABLE test_ladm_integration.gc_propietario (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_integration.gc_propietario;
       test_ladm_integration         postgres    false    645    17            ."           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
            test_ladm_integration       postgres    false    663            /"           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
            test_ladm_integration       postgres    false    663            0"           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
            test_ladm_integration       postgres    false    663            1"           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
            test_ladm_integration       postgres    false    663            2"           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     v   COMMENT ON COLUMN test_ladm_integration.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
            test_ladm_integration       postgres    false    663            3"           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     x   COMMENT ON COLUMN test_ladm_integration.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
            test_ladm_integration       postgres    false    663            4"           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     z   COMMENT ON COLUMN test_ladm_integration.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
            test_ladm_integration       postgres    false    663            5"           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     |   COMMENT ON COLUMN test_ladm_integration.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
            test_ladm_integration       postgres    false    663            6"           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
            test_ladm_integration       postgres    false    663            �           1259    585900    gc_sectorrural    TABLE     
  CREATE TABLE test_ladm_integration.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 1   DROP TABLE test_ladm_integration.gc_sectorrural;
       test_ladm_integration         postgres    false    645    17            7"           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
            test_ladm_integration       postgres    false    664            8"           0    0    COLUMN gc_sectorrural.codigo    COMMENT     z   COMMENT ON COLUMN test_ladm_integration.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_integration       postgres    false    664            9"           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_integration       postgres    false    664            �           1259    585910    gc_sectorurbano    TABLE       CREATE TABLE test_ladm_integration.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 2   DROP TABLE test_ladm_integration.gc_sectorurbano;
       test_ladm_integration         postgres    false    645    17            :"           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
            test_ladm_integration       postgres    false    665            ;"           0    0    COLUMN gc_sectorurbano.codigo    COMMENT     {   COMMENT ON COLUMN test_ladm_integration.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_integration       postgres    false    665            <"           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_integration       postgres    false    665            �           1259    586130    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_ladm_integration.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_integration.gc_sistemaprocedenciadatostipo;
       test_ladm_integration         postgres    false    645    17            �           1259    585920 
   gc_terreno    TABLE     X  CREATE TABLE test_ladm_integration.gc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
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
 -   DROP TABLE test_ladm_integration.gc_terreno;
       test_ladm_integration         postgres    false    645    17            ="           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
            test_ladm_integration       postgres    false    666            >"           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
            test_ladm_integration       postgres    false    666            ?"           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
            test_ladm_integration       postgres    false    666            @"           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
            test_ladm_integration       postgres    false    666            A"           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT     u   COMMENT ON COLUMN test_ladm_integration.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
            test_ladm_integration       postgres    false    666            B"           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_integration       postgres    false    666            �           1259    585931    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_ladm_integration.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
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
 8   DROP TABLE test_ladm_integration.gc_unidadconstruccion;
       test_ladm_integration         postgres    false    645    17            C"           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_integration       postgres    false    667            D"           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_integration       postgres    false    667            E"           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT     u   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
            test_ladm_integration       postgres    false    667            F"           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_integration       postgres    false    667            G"           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_integration       postgres    false    667            H"           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_integration       postgres    false    667            I"           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_integration       postgres    false    667            J"           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_integration       postgres    false    667            K"           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_integration       postgres    false    667            L"           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_integration       postgres    false    667            M"           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_integration       postgres    false    667            N"           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_integration       postgres    false    667            O"           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
            test_ladm_integration       postgres    false    667            P"           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_integration       postgres    false    667            Q"           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_integration       postgres    false    667            R"           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
            test_ladm_integration       postgres    false    667            S"           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_integration       postgres    false    667            �           1259    586157    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_integration.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_integration.gc_unidadconstrucciontipo;
       test_ladm_integration         postgres    false    645    17            �           1259    585943 	   gc_vereda    TABLE     |  CREATE TABLE test_ladm_integration.gc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 ,   DROP TABLE test_ladm_integration.gc_vereda;
       test_ladm_integration         postgres    false    645    17            T"           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_integration.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
            test_ladm_integration       postgres    false    668            U"           0    0    COLUMN gc_vereda.codigo    COMMENT     n   COMMENT ON COLUMN test_ladm_integration.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
            test_ladm_integration       postgres    false    668            V"           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     w   COMMENT ON COLUMN test_ladm_integration.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
            test_ladm_integration       postgres    false    668            W"           0    0    COLUMN gc_vereda.nombre    COMMENT     T   COMMENT ON COLUMN test_ladm_integration.gc_vereda.nombre IS 'Nombre de la vereda.';
            test_ladm_integration       postgres    false    668            X"           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
            test_ladm_integration       postgres    false    668            Y"           0    0    COLUMN gc_vereda.geometria    COMMENT     a   COMMENT ON COLUMN test_ladm_integration.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
            test_ladm_integration       postgres    false    668            �           1259    585743    gm_multisurface2d    TABLE     �   CREATE TABLE test_ladm_integration.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 4   DROP TABLE test_ladm_integration.gm_multisurface2d;
       test_ladm_integration         postgres    false    645    17            �           1259    585760    gm_multisurface3d    TABLE     �   CREATE TABLE test_ladm_integration.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 4   DROP TABLE test_ladm_integration.gm_multisurface3d;
       test_ladm_integration         postgres    false    645    17            �           1259    585732    gm_surface2dlistvalue    TABLE       CREATE TABLE test_ladm_integration.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 8   DROP TABLE test_ladm_integration.gm_surface2dlistvalue;
       test_ladm_integration         postgres    false    645    17            �           1259    585749    gm_surface3dlistvalue    TABLE       CREATE TABLE test_ladm_integration.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 8   DROP TABLE test_ladm_integration.gm_surface3dlistvalue;
       test_ladm_integration         postgres    false    645    17            �           1259    586148    ini_emparejamientotipo    TABLE     �  CREATE TABLE test_ladm_integration.ini_emparejamientotipo (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_integration.ini_emparejamientotipo;
       test_ladm_integration         postgres    false    645    17            �           1259    586038    ini_predioinsumos    TABLE     0  CREATE TABLE test_ladm_integration.ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_emparejamiento bigint,
    observaciones text,
    gc_predio_catastro bigint,
    snr_predio_juridico bigint
);
 4   DROP TABLE test_ladm_integration.ini_predioinsumos;
       test_ladm_integration         postgres    false    645    17            Z"           0    0    TABLE ini_predioinsumos    COMMENT     �   COMMENT ON TABLE test_ladm_integration.ini_predioinsumos IS 'Clase que relaciona los predios en los modelos de insumos para el Gestor Catastral y la SNR.';
            test_ladm_integration       postgres    false    678            ["           0    0 ,   COLUMN ini_predioinsumos.tipo_emparejamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.ini_predioinsumos.tipo_emparejamiento IS 'Tipo de emparejamiento de insumos Catastro-Registro';
            test_ladm_integration       postgres    false    678            \"           0    0 &   COLUMN ini_predioinsumos.observaciones    COMMENT     m   COMMENT ON COLUMN test_ladm_integration.ini_predioinsumos.observaciones IS 'Observaciones de la relación.';
            test_ladm_integration       postgres    false    678            �           1259    586166    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_ladm_integration.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_integration.snr_calidadderechotipo;
       test_ladm_integration         postgres    false    645    17            �           1259    586094    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_ladm_integration.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_integration.snr_clasepredioregistrotipo;
       test_ladm_integration         postgres    false    645    17            �           1259    585972    snr_derecho    TABLE     g  CREATE TABLE test_ladm_integration.snr_derecho (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 .   DROP TABLE test_ladm_integration.snr_derecho;
       test_ladm_integration         postgres    false    645    17            ]"           0    0    TABLE snr_derecho    COMMENT     _   COMMENT ON TABLE test_ladm_integration.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
            test_ladm_integration       postgres    false    671            ^"           0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     r   COMMENT ON COLUMN test_ladm_integration.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
            test_ladm_integration       postgres    false    671            _"           0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
            test_ladm_integration       postgres    false    671            �           1259    586139    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_ladm_integration.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_integration.snr_documentotitulartipo;
       test_ladm_integration         postgres    false    645    17            �           1259    585981    snr_estructuramatriculamatriz    TABLE     G  CREATE TABLE test_ladm_integration.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 @   DROP TABLE test_ladm_integration.snr_estructuramatriculamatriz;
       test_ladm_integration         postgres    false    645    17            `"           0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_integration       postgres    false    672            a"           0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_integration       postgres    false    672            b"           0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
            test_ladm_integration       postgres    false    672            �           1259    585988    snr_fuentecabidalinderos    TABLE     u  CREATE TABLE test_ladm_integration.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 ;   DROP TABLE test_ladm_integration.snr_fuentecabidalinderos;
       test_ladm_integration         postgres    false    645    17            c"           0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_ladm_integration.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
            test_ladm_integration       postgres    false    673            d"           0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_integration       postgres    false    673            e"           0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_integration       postgres    false    673            f"           0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_integration       postgres    false    673            g"           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_integration       postgres    false    673            �           1259    585998    snr_fuentederecho    TABLE     n  CREATE TABLE test_ladm_integration.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 4   DROP TABLE test_ladm_integration.snr_fuentederecho;
       test_ladm_integration         postgres    false    645    17            h"           0    0    TABLE snr_fuentederecho    COMMENT     k   COMMENT ON TABLE test_ladm_integration.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
            test_ladm_integration       postgres    false    674            i"           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_integration       postgres    false    674            j"           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_integration       postgres    false    674            k"           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_integration       postgres    false    674            l"           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_integration       postgres    false    674            �           1259    586112    snr_fuentetipo    TABLE     �  CREATE TABLE test_ladm_integration.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_integration.snr_fuentetipo;
       test_ladm_integration         postgres    false    645    17            �           1259    586121    snr_personatitulartipo    TABLE     �  CREATE TABLE test_ladm_integration.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_integration.snr_personatitulartipo;
       test_ladm_integration         postgres    false    645    17            �           1259    586019    snr_predioregistro    TABLE     7  CREATE TABLE test_ladm_integration.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
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
 5   DROP TABLE test_ladm_integration.snr_predioregistro;
       test_ladm_integration         postgres    false    645    17            m"           0    0    TABLE snr_predioregistro    COMMENT     h   COMMENT ON TABLE test_ladm_integration.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
            test_ladm_integration       postgres    false    676            n"           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_integration       postgres    false    676            o"           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_integration       postgres    false    676            p"           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     P  COMMENT ON COLUMN test_ladm_integration.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_integration       postgres    false    676            q"           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     T  COMMENT ON COLUMN test_ladm_integration.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_integration       postgres    false    676            r"           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
            test_ladm_integration       postgres    false    676            s"           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
            test_ladm_integration       postgres    false    676            t"           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_integration.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
            test_ladm_integration       postgres    false    676            u"           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT     o   COMMENT ON COLUMN test_ladm_integration.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
            test_ladm_integration       postgres    false    676            �           1259    586008    snr_titular    TABLE     �  CREATE TABLE test_ladm_integration.snr_titular (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 .   DROP TABLE test_ladm_integration.snr_titular;
       test_ladm_integration         postgres    false    645    17            v"           0    0    TABLE snr_titular    COMMENT     l   COMMENT ON TABLE test_ladm_integration.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
            test_ladm_integration       postgres    false    675            w"           0    0    COLUMN snr_titular.tipo_persona    COMMENT     W   COMMENT ON COLUMN test_ladm_integration.snr_titular.tipo_persona IS 'Tipo de persona';
            test_ladm_integration       postgres    false    675            x"           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     m   COMMENT ON COLUMN test_ladm_integration.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_integration       postgres    false    675            y"           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     r   COMMENT ON COLUMN test_ladm_integration.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
            test_ladm_integration       postgres    false    675            z"           0    0    COLUMN snr_titular.nombres    COMMENT     a   COMMENT ON COLUMN test_ladm_integration.snr_titular.nombres IS 'Nombres de la persona física.';
            test_ladm_integration       postgres    false    675            {"           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     q   COMMENT ON COLUMN test_ladm_integration.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_integration       postgres    false    675            |"           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     s   COMMENT ON COLUMN test_ladm_integration.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_integration       postgres    false    675            }"           0    0    COLUMN snr_titular.razon_social    COMMENT     }   COMMENT ON COLUMN test_ladm_integration.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
            test_ladm_integration       postgres    false    675            �           1259    586030    snr_titular_derecho    TABLE     2  CREATE TABLE test_ladm_integration.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_ladm_integration.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 6   DROP TABLE test_ladm_integration.snr_titular_derecho;
       test_ladm_integration         postgres    false    645    17            ~"           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_integration.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
            test_ladm_integration       postgres    false    677            �           1259    586183    t_ili2db_attrname    TABLE     �   CREATE TABLE test_ladm_integration.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 4   DROP TABLE test_ladm_integration.t_ili2db_attrname;
       test_ladm_integration         postgres    false    17            �           1259    586050    t_ili2db_basket    TABLE       CREATE TABLE test_ladm_integration.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 2   DROP TABLE test_ladm_integration.t_ili2db_basket;
       test_ladm_integration         postgres    false    17            �           1259    586175    t_ili2db_classname    TABLE     �   CREATE TABLE test_ladm_integration.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 5   DROP TABLE test_ladm_integration.t_ili2db_classname;
       test_ladm_integration         postgres    false    17            �           1259    586191    t_ili2db_column_prop    TABLE       CREATE TABLE test_ladm_integration.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 7   DROP TABLE test_ladm_integration.t_ili2db_column_prop;
       test_ladm_integration         postgres    false    17            �           1259    586059    t_ili2db_dataset    TABLE     z   CREATE TABLE test_ladm_integration.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 3   DROP TABLE test_ladm_integration.t_ili2db_dataset;
       test_ladm_integration         postgres    false    17            �           1259    586064    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_ladm_integration.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 7   DROP TABLE test_ladm_integration.t_ili2db_inheritance;
       test_ladm_integration         postgres    false    17            �           1259    586203    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_ladm_integration.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 6   DROP TABLE test_ladm_integration.t_ili2db_meta_attrs;
       test_ladm_integration         postgres    false    17            �           1259    586086    t_ili2db_model    TABLE     �   CREATE TABLE test_ladm_integration.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 1   DROP TABLE test_ladm_integration.t_ili2db_model;
       test_ladm_integration         postgres    false    17            �           1259    586072    t_ili2db_settings    TABLE     �   CREATE TABLE test_ladm_integration.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 4   DROP TABLE test_ladm_integration.t_ili2db_settings;
       test_ladm_integration         postgres    false    17            �           1259    586197    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_ladm_integration.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 6   DROP TABLE test_ladm_integration.t_ili2db_table_prop;
       test_ladm_integration         postgres    false    17            �           1259    586080    t_ili2db_trafo    TABLE     �   CREATE TABLE test_ladm_integration.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 1   DROP TABLE test_ladm_integration.t_ili2db_trafo;
       test_ladm_integration         postgres    false    17            �!          0    585766 
   extarchivo 
   TABLE DATA               �   COPY test_ladm_integration.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo) FROM stdin;
    test_ladm_integration       postgres    false    650   �      �!          0    585776 	   gc_barrio 
   TABLE DATA               m   COPY test_ladm_integration.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_integration       postgres    false    651   $�      �!          0    585786 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_ladm_integration.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
    test_ladm_integration       postgres    false    652   A�      �!          0    585796    gc_comisionesconstruccion 
   TABLE DATA               n   COPY test_ladm_integration.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_integration       postgres    false    653   ^�      �!          0    585806    gc_comisionesterreno 
   TABLE DATA               i   COPY test_ladm_integration.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_integration       postgres    false    654   {�      �!          0    585816    gc_comisionesunidadconstruccion 
   TABLE DATA               t   COPY test_ladm_integration.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_integration       postgres    false    655   ��      �!          0    586103    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_integration.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_integration       postgres    false    686   ��      �!          0    585826    gc_construccion 
   TABLE DATA                 COPY test_ladm_integration.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
    test_ladm_integration       postgres    false    656   ��      �!          0    585964    gc_copropiedad 
   TABLE DATA               l   COPY test_ladm_integration.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
    test_ladm_integration       postgres    false    670   ҋ      �!          0    585838    gc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_integration.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
    test_ladm_integration       postgres    false    657   �      �!          0    585845    gc_datostorreph 
   TABLE DATA               �   COPY test_ladm_integration.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
    test_ladm_integration       postgres    false    658   �      �!          0    585852    gc_direccion 
   TABLE DATA               �   COPY test_ladm_integration.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
    test_ladm_integration       postgres    false    659   )�      �!          0    585863    gc_estadopredio 
   TABLE DATA               �   COPY test_ladm_integration.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
    test_ladm_integration       postgres    false    660   F�      �!          0    585870 
   gc_manzana 
   TABLE DATA               w   COPY test_ladm_integration.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
    test_ladm_integration       postgres    false    661   c�      �!          0    585880    gc_perimetro 
   TABLE DATA               �   COPY test_ladm_integration.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_ladm_integration       postgres    false    662   ��      �!          0    585953    gc_prediocatastro 
   TABLE DATA                 COPY test_ladm_integration.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
    test_ladm_integration       postgres    false    669   ��      �!          0    585890    gc_propietario 
   TABLE DATA               �   COPY test_ladm_integration.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
    test_ladm_integration       postgres    false    663   ��      �!          0    585900    gc_sectorrural 
   TABLE DATA               [   COPY test_ladm_integration.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_integration       postgres    false    664   ׌      �!          0    585910    gc_sectorurbano 
   TABLE DATA               \   COPY test_ladm_integration.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_integration       postgres    false    665   �      �!          0    586130    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_ladm_integration.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_integration       postgres    false    689   �      �!          0    585920 
   gc_terreno 
   TABLE DATA               �   COPY test_ladm_integration.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
    test_ladm_integration       postgres    false    666   ō      �!          0    585931    gc_unidadconstruccion 
   TABLE DATA               ;  COPY test_ladm_integration.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
    test_ladm_integration       postgres    false    667   �      �!          0    586157    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_integration.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_integration       postgres    false    692   ��      �!          0    585943 	   gc_vereda 
   TABLE DATA               ~   COPY test_ladm_integration.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_integration       postgres    false    668   ˎ      �!          0    585743    gm_multisurface2d 
   TABLE DATA               G   COPY test_ladm_integration.gm_multisurface2d (t_id, t_seq) FROM stdin;
    test_ladm_integration       postgres    false    647   �      �!          0    585760    gm_multisurface3d 
   TABLE DATA               G   COPY test_ladm_integration.gm_multisurface3d (t_id, t_seq) FROM stdin;
    test_ladm_integration       postgres    false    649   �      �!          0    585732    gm_surface2dlistvalue 
   TABLE DATA               o   COPY test_ladm_integration.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
    test_ladm_integration       postgres    false    646   "�      �!          0    585749    gm_surface3dlistvalue 
   TABLE DATA               o   COPY test_ladm_integration.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
    test_ladm_integration       postgres    false    648   ?�      �!          0    586148    ini_emparejamientotipo 
   TABLE DATA               �   COPY test_ladm_integration.ini_emparejamientotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_integration       postgres    false    691   \�      �!          0    586038    ini_predioinsumos 
   TABLE DATA               �   COPY test_ladm_integration.ini_predioinsumos (t_id, t_ili_tid, tipo_emparejamiento, observaciones, gc_predio_catastro, snr_predio_juridico) FROM stdin;
    test_ladm_integration       postgres    false    678   ��      �!          0    586166    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_ladm_integration.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_integration       postgres    false    693   ��      �!          0    586094    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_ladm_integration.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_integration       postgres    false    685   D�      �!          0    585972    snr_derecho 
   TABLE DATA               �   COPY test_ladm_integration.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
    test_ladm_integration       postgres    false    671   ��      �!          0    586139    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_ladm_integration.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_integration       postgres    false    690   �      �!          0    585981    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_ladm_integration.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
    test_ladm_integration       postgres    false    672   A�      �!          0    585988    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_ladm_integration.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_integration       postgres    false    673   ^�      �!          0    585998    snr_fuentederecho 
   TABLE DATA               �   COPY test_ladm_integration.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_integration       postgres    false    674   {�      �!          0    586112    snr_fuentetipo 
   TABLE DATA               �   COPY test_ladm_integration.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_integration       postgres    false    687   ��      �!          0    586121    snr_personatitulartipo 
   TABLE DATA               �   COPY test_ladm_integration.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_integration       postgres    false    688   (�      �!          0    586019    snr_predioregistro 
   TABLE DATA                 COPY test_ladm_integration.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
    test_ladm_integration       postgres    false    676   I�      �!          0    586008    snr_titular 
   TABLE DATA               �   COPY test_ladm_integration.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
    test_ladm_integration       postgres    false    675   f�      �!          0    586030    snr_titular_derecho 
   TABLE DATA               �   COPY test_ladm_integration.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
    test_ladm_integration       postgres    false    677   ��      �!          0    586183    t_ili2db_attrname 
   TABLE DATA               ^   COPY test_ladm_integration.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
    test_ladm_integration       postgres    false    695   ��      �!          0    586050    t_ili2db_basket 
   TABLE DATA               q   COPY test_ladm_integration.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
    test_ladm_integration       postgres    false    679   u�      �!          0    586175    t_ili2db_classname 
   TABLE DATA               M   COPY test_ladm_integration.t_ili2db_classname (iliname, sqlname) FROM stdin;
    test_ladm_integration       postgres    false    694   ��      �!          0    586191    t_ili2db_column_prop 
   TABLE DATA               k   COPY test_ladm_integration.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
    test_ladm_integration       postgres    false    696   �      �!          0    586059    t_ili2db_dataset 
   TABLE DATA               L   COPY test_ladm_integration.t_ili2db_dataset (t_id, datasetname) FROM stdin;
    test_ladm_integration       postgres    false    680   ع      �!          0    586064    t_ili2db_inheritance 
   TABLE DATA               S   COPY test_ladm_integration.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
    test_ladm_integration       postgres    false    681   ��      �!          0    586203    t_ili2db_meta_attrs 
   TABLE DATA               _   COPY test_ladm_integration.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
    test_ladm_integration       postgres    false    698   )�      �!          0    586086    t_ili2db_model 
   TABLE DATA               m   COPY test_ladm_integration.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
    test_ladm_integration       postgres    false    684   ��      �!          0    586072    t_ili2db_settings 
   TABLE DATA               H   COPY test_ladm_integration.t_ili2db_settings (tag, setting) FROM stdin;
    test_ladm_integration       postgres    false    682   �'      �!          0    586197    t_ili2db_table_prop 
   TABLE DATA               U   COPY test_ladm_integration.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
    test_ladm_integration       postgres    false    697   �)      �!          0    586080    t_ili2db_trafo 
   TABLE DATA               N   COPY test_ladm_integration.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
    test_ladm_integration       postgres    false    683   �,      "           0    0    t_ili2db_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('test_ladm_integration.t_ili2db_seq', 48, true);
            test_ladm_integration       postgres    false    645            o            2606    585774    extarchivo extarchivo_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_integration.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_integration.extarchivo DROP CONSTRAINT extarchivo_pkey;
       test_ladm_integration         postgres    false    650            s            2606    585784    gc_barrio gc_barrio_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_integration.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_integration.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
       test_ladm_integration         postgres    false    651            u            2606    585794 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_integration.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
       test_ladm_integration         postgres    false    652            y            2606    585804 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_integration.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
       test_ladm_integration         postgres    false    653            |            2606    585814 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_integration.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_integration.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
       test_ladm_integration         postgres    false    654                        2606    585824 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_integration.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
       test_ladm_integration         postgres    false    655            �            2606    586111 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_integration.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
       test_ladm_integration         postgres    false    686            �            2606    585834 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_integration.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_integration.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
       test_ladm_integration         postgres    false    656            �            2606    585969 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_integration.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_integration.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
       test_ladm_integration         postgres    false    670            �            2606    585843 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_integration.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_integration.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
       test_ladm_integration         postgres    false    657            �            2606    585850 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_integration.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_integration.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
       test_ladm_integration         postgres    false    658            �            2606    585860    gc_direccion gc_direccion_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_integration.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_integration.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
       test_ladm_integration         postgres    false    659            �            2606    585868 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_integration.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_integration.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
       test_ladm_integration         postgres    false    660            �            2606    585878    gc_manzana gc_manzana_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_integration.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_integration.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
       test_ladm_integration         postgres    false    661            �            2606    585888    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_integration.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_integration.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
       test_ladm_integration         postgres    false    662            �            2606    585961 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_integration.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_integration.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
       test_ladm_integration         postgres    false    669            �            2606    585898 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_integration.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_integration.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
       test_ladm_integration         postgres    false    663            �            2606    585908 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_integration.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_integration.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
       test_ladm_integration         postgres    false    664            �            2606    585918 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_integration.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_integration.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
       test_ladm_integration         postgres    false    665            �            2606    586138 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_integration.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
       test_ladm_integration         postgres    false    689            �            2606    585928    gc_terreno gc_terreno_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_integration.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_integration.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
       test_ladm_integration         postgres    false    666            �            2606    585939 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_integration.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_integration.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
       test_ladm_integration         postgres    false    667            �            2606    586165 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_integration.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
       test_ladm_integration         postgres    false    692            �            2606    585951    gc_vereda gc_vereda_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_integration.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_integration.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
       test_ladm_integration         postgres    false    668            g            2606    585748 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_integration.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_integration.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
       test_ladm_integration         postgres    false    647            m            2606    585765 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_integration.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_integration.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
       test_ladm_integration         postgres    false    649            e            2606    585740 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_integration.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_integration.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
       test_ladm_integration         postgres    false    646            k            2606    585757 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_integration.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_integration.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
       test_ladm_integration         postgres    false    648            �            2606    586156 2   ini_emparejamientotipo ini_emparejamientotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.ini_emparejamientotipo
    ADD CONSTRAINT ini_emparejamientotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_integration.ini_emparejamientotipo DROP CONSTRAINT ini_emparejamientotipo_pkey;
       test_ladm_integration         postgres    false    691            �            2606    586046 (   ini_predioinsumos ini_predioinsumos_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_integration.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_integration.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_pkey;
       test_ladm_integration         postgres    false    678            �            2606    586174 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_integration.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
       test_ladm_integration         postgres    false    693            �            2606    586102 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_integration.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
       test_ladm_integration         postgres    false    685            �            2606    585977    snr_derecho snr_derecho_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_integration.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_integration.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
       test_ladm_integration         postgres    false    671            �            2606    586147 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_integration.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
       test_ladm_integration         postgres    false    690            �            2606    585986 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_integration.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
       test_ladm_integration         postgres    false    672            �            2606    585996 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_integration.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
       test_ladm_integration         postgres    false    673            �            2606    586006 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_integration.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_integration.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
       test_ladm_integration         postgres    false    674            �            2606    586120 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_integration.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_integration.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
       test_ladm_integration         postgres    false    687            �            2606    586129 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_integration.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
       test_ladm_integration         postgres    false    688            �            2606    586027 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_integration.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_integration.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
       test_ladm_integration         postgres    false    676            �            2606    586035 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_integration.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_integration.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
       test_ladm_integration         postgres    false    677            �            2606    586016    snr_titular snr_titular_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_integration.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_integration.snr_titular DROP CONSTRAINT snr_titular_pkey;
       test_ladm_integration         postgres    false    675            �            2606    586190 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (sqlname, colowner);
 a   ALTER TABLE ONLY test_ladm_integration.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
       test_ladm_integration         postgres    false    695    695            �            2606    586057 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_integration.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_integration.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
       test_ladm_integration         postgres    false    679            �            2606    586182 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_integration.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 c   ALTER TABLE ONLY test_ladm_integration.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
       test_ladm_integration         postgres    false    694            �            2606    586063 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_integration.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_integration.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
       test_ladm_integration         postgres    false    680            �            2606    586071 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 g   ALTER TABLE ONLY test_ladm_integration.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
       test_ladm_integration         postgres    false    681            �            2606    586093 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (iliversion, modelname);
 [   ALTER TABLE ONLY test_ladm_integration.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
       test_ladm_integration         postgres    false    684    684            �            2606    586079 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_integration.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 a   ALTER TABLE ONLY test_ladm_integration.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
       test_ladm_integration         postgres    false    682            p            1259    585775 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_ladm_integration.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 L   DROP INDEX test_ladm_integration.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
       test_ladm_integration         postgres    false    650            q            1259    585785    gc_barrio_geometria_idx    INDEX     `   CREATE INDEX gc_barrio_geometria_idx ON test_ladm_integration.gc_barrio USING gist (geometria);
 :   DROP INDEX test_ladm_integration.gc_barrio_geometria_idx;
       test_ladm_integration         postgres    false    651            v            1259    585795 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_ladm_integration.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 W   DROP INDEX test_ladm_integration.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
       test_ladm_integration         postgres    false    652            w            1259    585805 '   gc_comisionesconstruccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_ladm_integration.gc_comisionesconstruccion USING gist (geometria);
 J   DROP INDEX test_ladm_integration.gc_comisionesconstruccion_geometria_idx;
       test_ladm_integration         postgres    false    653            }            1259    585825 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_ladm_integration.gc_comisionesunidadconstruccion USING gist (geometria);
 K   DROP INDEX test_ladm_integration.gc_comisionesnddcnstrccion_geometria_idx;
       test_ladm_integration         postgres    false    655            z            1259    585815 "   gc_comisionesterreno_geometria_idx    INDEX     v   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_ladm_integration.gc_comisionesterreno USING gist (geometria);
 E   DROP INDEX test_ladm_integration.gc_comisionesterreno_geometria_idx;
       test_ladm_integration         postgres    false    654            �            1259    585837    gc_construccion_gc_predio_idx    INDEX     m   CREATE INDEX gc_construccion_gc_predio_idx ON test_ladm_integration.gc_construccion USING btree (gc_predio);
 @   DROP INDEX test_ladm_integration.gc_construccion_gc_predio_idx;
       test_ladm_integration         postgres    false    656            �            1259    585836    gc_construccion_geometria_idx    INDEX     l   CREATE INDEX gc_construccion_geometria_idx ON test_ladm_integration.gc_construccion USING gist (geometria);
 @   DROP INDEX test_ladm_integration.gc_construccion_geometria_idx;
       test_ladm_integration         postgres    false    656            �            1259    585835 %   gc_construccion_tipo_construccion_idx    INDEX     }   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_ladm_integration.gc_construccion USING btree (tipo_construccion);
 H   DROP INDEX test_ladm_integration.gc_construccion_tipo_construccion_idx;
       test_ladm_integration         postgres    false    656            �            1259    585970    gc_copropiedad_gc_matriz_idx    INDEX     k   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_ladm_integration.gc_copropiedad USING btree (gc_matriz);
 ?   DROP INDEX test_ladm_integration.gc_copropiedad_gc_matriz_idx;
       test_ladm_integration         postgres    false    670            �            1259    585971    gc_copropiedad_gc_unidad_idx    INDEX     k   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_ladm_integration.gc_copropiedad USING btree (gc_unidad);
 ?   DROP INDEX test_ladm_integration.gc_copropiedad_gc_unidad_idx;
       test_ladm_integration         postgres    false    670            �            1259    586319    gc_copropiedad_gc_unidad_key    INDEX     r   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_ladm_integration.gc_copropiedad USING btree (gc_unidad);
 ?   DROP INDEX test_ladm_integration.gc_copropiedad_gc_unidad_key;
       test_ladm_integration         postgres    false    670            �            1259    585844 "   gc_datosphcondominio_gc_predio_idx    INDEX     w   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_ladm_integration.gc_datosphcondominio USING btree (gc_predio);
 E   DROP INDEX test_ladm_integration.gc_datosphcondominio_gc_predio_idx;
       test_ladm_integration         postgres    false    657            �            1259    585851 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     �   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_ladm_integration.gc_datostorreph USING btree (gc_datosphcondominio);
 K   DROP INDEX test_ladm_integration.gc_datostorreph_gc_datosphcondominio_idx;
       test_ladm_integration         postgres    false    658            �            1259    585862 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_ladm_integration.gc_direccion USING btree (gc_prediocatastro_direcciones);
 N   DROP INDEX test_ladm_integration.gc_direccion_gc_prediocatastro_dirccnes_idx;
       test_ladm_integration         postgres    false    659            �            1259    585861 %   gc_direccion_geometria_referencia_idx    INDEX     |   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_ladm_integration.gc_direccion USING gist (geometria_referencia);
 H   DROP INDEX test_ladm_integration.gc_direccion_geometria_referencia_idx;
       test_ladm_integration         postgres    false    659            �            1259    585869 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_ladm_integration.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 Q   DROP INDEX test_ladm_integration.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
       test_ladm_integration         postgres    false    660            �            1259    585879    gc_manzana_geometria_idx    INDEX     b   CREATE INDEX gc_manzana_geometria_idx ON test_ladm_integration.gc_manzana USING gist (geometria);
 ;   DROP INDEX test_ladm_integration.gc_manzana_geometria_idx;
       test_ladm_integration         postgres    false    661            �            1259    585889    gc_perimetro_geometria_idx    INDEX     f   CREATE INDEX gc_perimetro_geometria_idx ON test_ladm_integration.gc_perimetro USING gist (geometria);
 =   DROP INDEX test_ladm_integration.gc_perimetro_geometria_idx;
       test_ladm_integration         postgres    false    662            �            1259    585962 &   gc_prediocatastro_condicion_predio_idx    INDEX        CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_ladm_integration.gc_prediocatastro USING btree (condicion_predio);
 I   DROP INDEX test_ladm_integration.gc_prediocatastro_condicion_predio_idx;
       test_ladm_integration         postgres    false    669            �            1259    585963 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_ladm_integration.gc_prediocatastro USING btree (sistema_procedencia_datos);
 R   DROP INDEX test_ladm_integration.gc_prediocatastro_sistema_procedencia_datos_idx;
       test_ladm_integration         postgres    false    669            �            1259    585899 %   gc_propietario_gc_predio_catastro_idx    INDEX     }   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_ladm_integration.gc_propietario USING btree (gc_predio_catastro);
 H   DROP INDEX test_ladm_integration.gc_propietario_gc_predio_catastro_idx;
       test_ladm_integration         postgres    false    663            �            1259    585909    gc_sectorrural_geometria_idx    INDEX     j   CREATE INDEX gc_sectorrural_geometria_idx ON test_ladm_integration.gc_sectorrural USING gist (geometria);
 ?   DROP INDEX test_ladm_integration.gc_sectorrural_geometria_idx;
       test_ladm_integration         postgres    false    664            �            1259    585919    gc_sectorurbano_geometria_idx    INDEX     l   CREATE INDEX gc_sectorurbano_geometria_idx ON test_ladm_integration.gc_sectorurbano USING gist (geometria);
 @   DROP INDEX test_ladm_integration.gc_sectorurbano_geometria_idx;
       test_ladm_integration         postgres    false    665            �            1259    585930    gc_terreno_gc_predio_idx    INDEX     c   CREATE INDEX gc_terreno_gc_predio_idx ON test_ladm_integration.gc_terreno USING btree (gc_predio);
 ;   DROP INDEX test_ladm_integration.gc_terreno_gc_predio_idx;
       test_ladm_integration         postgres    false    666            �            1259    585929    gc_terreno_geometria_idx    INDEX     b   CREATE INDEX gc_terreno_geometria_idx ON test_ladm_integration.gc_terreno USING gist (geometria);
 ;   DROP INDEX test_ladm_integration.gc_terreno_geometria_idx;
       test_ladm_integration         postgres    false    666            �            1259    585942 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_ladm_integration.gc_unidadconstruccion USING btree (gc_construccion);
 L   DROP INDEX test_ladm_integration.gc_unidadconstruccion_gc_construccion_idx;
       test_ladm_integration         postgres    false    667            �            1259    585941 #   gc_unidadconstruccion_geometria_idx    INDEX     x   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_ladm_integration.gc_unidadconstruccion USING gist (geometria);
 F   DROP INDEX test_ladm_integration.gc_unidadconstruccion_geometria_idx;
       test_ladm_integration         postgres    false    667            �            1259    585940 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_ladm_integration.gc_unidadconstruccion USING btree (tipo_construccion);
 N   DROP INDEX test_ladm_integration.gc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_integration         postgres    false    667            �            1259    585952    gc_vereda_geometria_idx    INDEX     `   CREATE INDEX gc_vereda_geometria_idx ON test_ladm_integration.gc_vereda USING gist (geometria);
 :   DROP INDEX test_ladm_integration.gc_vereda_geometria_idx;
       test_ladm_integration         postgres    false    668            b            1259    585741     gm_surface2dlistvalue_avalue_idx    INDEX     r   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_ladm_integration.gm_surface2dlistvalue USING gist (avalue);
 C   DROP INDEX test_ladm_integration.gm_surface2dlistvalue_avalue_idx;
       test_ladm_integration         postgres    false    646            c            1259    585742 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_ladm_integration.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 W   DROP INDEX test_ladm_integration.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
       test_ladm_integration         postgres    false    646            h            1259    585758     gm_surface3dlistvalue_avalue_idx    INDEX     r   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_ladm_integration.gm_surface3dlistvalue USING gist (avalue);
 C   DROP INDEX test_ladm_integration.gm_surface3dlistvalue_avalue_idx;
       test_ladm_integration         postgres    false    648            i            1259    585759 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_ladm_integration.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 W   DROP INDEX test_ladm_integration.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
       test_ladm_integration         postgres    false    648            �            1259    586048 (   ini_predioinsumos_gc_predio_catastro_idx    INDEX     �   CREATE INDEX ini_predioinsumos_gc_predio_catastro_idx ON test_ladm_integration.ini_predioinsumos USING btree (gc_predio_catastro);
 K   DROP INDEX test_ladm_integration.ini_predioinsumos_gc_predio_catastro_idx;
       test_ladm_integration         postgres    false    678            �            1259    586049 )   ini_predioinsumos_snr_predio_juridico_idx    INDEX     �   CREATE INDEX ini_predioinsumos_snr_predio_juridico_idx ON test_ladm_integration.ini_predioinsumos USING btree (snr_predio_juridico);
 L   DROP INDEX test_ladm_integration.ini_predioinsumos_snr_predio_juridico_idx;
       test_ladm_integration         postgres    false    678            �            1259    586047 )   ini_predioinsumos_tipo_emparejamiento_idx    INDEX     �   CREATE INDEX ini_predioinsumos_tipo_emparejamiento_idx ON test_ladm_integration.ini_predioinsumos USING btree (tipo_emparejamiento);
 L   DROP INDEX test_ladm_integration.ini_predioinsumos_tipo_emparejamiento_idx;
       test_ladm_integration         postgres    false    678            �            1259    585978 (   snr_derecho_calidad_derecho_registro_idx    INDEX     �   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_ladm_integration.snr_derecho USING btree (calidad_derecho_registro);
 K   DROP INDEX test_ladm_integration.snr_derecho_calidad_derecho_registro_idx;
       test_ladm_integration         postgres    false    671            �            1259    585979 "   snr_derecho_snr_fuente_derecho_idx    INDEX     w   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_ladm_integration.snr_derecho USING btree (snr_fuente_derecho);
 E   DROP INDEX test_ladm_integration.snr_derecho_snr_fuente_derecho_idx;
       test_ladm_integration         postgres    false    671            �            1259    585980 #   snr_derecho_snr_predio_registro_idx    INDEX     y   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_ladm_integration.snr_derecho USING btree (snr_predio_registro);
 F   DROP INDEX test_ladm_integration.snr_derecho_snr_predio_registro_idx;
       test_ladm_integration         postgres    false    671            �            1259    585987 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_ladm_integration.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 \   DROP INDEX test_ladm_integration.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
       test_ladm_integration         postgres    false    672            �            1259    585997 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_ladm_integration.snr_fuentecabidalinderos USING btree (tipo_documento);
 N   DROP INDEX test_ladm_integration.snr_fuentecabidalinderos_tipo_documento_idx;
       test_ladm_integration         postgres    false    673            �            1259    586007 $   snr_fuentederecho_tipo_documento_idx    INDEX     {   CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_ladm_integration.snr_fuentederecho USING btree (tipo_documento);
 G   DROP INDEX test_ladm_integration.snr_fuentederecho_tipo_documento_idx;
       test_ladm_integration         postgres    false    674            �            1259    586028 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_ladm_integration.snr_predioregistro USING btree (clase_suelo_registro);
 N   DROP INDEX test_ladm_integration.snr_predioregistro_clase_suelo_registro_idx;
       test_ladm_integration         postgres    false    676            �            1259    586029 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_ladm_integration.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 S   DROP INDEX test_ladm_integration.snr_predioregistro_snr_fuente_cabidalinderos_idx;
       test_ladm_integration         postgres    false    676            �            1259    586037 #   snr_titular_derecho_snr_derecho_idx    INDEX     y   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_ladm_integration.snr_titular_derecho USING btree (snr_derecho);
 F   DROP INDEX test_ladm_integration.snr_titular_derecho_snr_derecho_idx;
       test_ladm_integration         postgres    false    677            �            1259    586036 #   snr_titular_derecho_snr_titular_idx    INDEX     y   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_ladm_integration.snr_titular_derecho USING btree (snr_titular);
 F   DROP INDEX test_ladm_integration.snr_titular_derecho_snr_titular_idx;
       test_ladm_integration         postgres    false    677            �            1259    586018    snr_titular_tipo_documento_idx    INDEX     o   CREATE INDEX snr_titular_tipo_documento_idx ON test_ladm_integration.snr_titular USING btree (tipo_documento);
 A   DROP INDEX test_ladm_integration.snr_titular_tipo_documento_idx;
       test_ladm_integration         postgres    false    675            �            1259    586017    snr_titular_tipo_persona_idx    INDEX     k   CREATE INDEX snr_titular_tipo_persona_idx ON test_ladm_integration.snr_titular USING btree (tipo_persona);
 ?   DROP INDEX test_ladm_integration.snr_titular_tipo_persona_idx;
       test_ladm_integration         postgres    false    675            �            1259    586413 &   t_ili2db_attrname_sqlname_colowner_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_sqlname_colowner_key ON test_ladm_integration.t_ili2db_attrname USING btree (sqlname, colowner);
 I   DROP INDEX test_ladm_integration.t_ili2db_attrname_sqlname_colowner_key;
       test_ladm_integration         postgres    false    695    695            �            1259    586058    t_ili2db_basket_dataset_idx    INDEX     i   CREATE INDEX t_ili2db_basket_dataset_idx ON test_ladm_integration.t_ili2db_basket USING btree (dataset);
 >   DROP INDEX test_ladm_integration.t_ili2db_basket_dataset_idx;
       test_ladm_integration         postgres    false    679            �            1259    586411     t_ili2db_dataset_datasetname_key    INDEX     z   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_ladm_integration.t_ili2db_dataset USING btree (datasetname);
 C   DROP INDEX test_ladm_integration.t_ili2db_dataset_datasetname_key;
       test_ladm_integration         postgres    false    680            �            1259    586412 '   t_ili2db_model_iliversion_modelname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_iliversion_modelname_key ON test_ladm_integration.t_ili2db_model USING btree (iliversion, modelname);
 J   DROP INDEX test_ladm_integration.t_ili2db_model_iliversion_modelname_key;
       test_ladm_integration         postgres    false    684    684            �            2606    586219 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_ladm_integration.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_integration.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
       test_ladm_integration       postgres    false    8383    673    650            �            2606    586225 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_integration.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_ladm_integration.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_integration.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
       test_ladm_integration       postgres    false    8360    667    652            �            2606    586241 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_integration.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_integration.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
       test_ladm_integration       postgres    false    8367    656    669            �            2606    586230 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_integration.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_integration.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
       test_ladm_integration       postgres    false    8433    656    692            	!           2606    586320 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_ladm_integration.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_integration.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
       test_ladm_integration       postgres    false    8367    670    669            
!           2606    586325 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_ladm_integration.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_integration.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
       test_ladm_integration       postgres    false    8367    669    670            �            2606    586253 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_integration.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_integration.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
       test_ladm_integration       postgres    false    8367    669    657             !           2606    586263 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_ladm_integration.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_integration.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
       test_ladm_integration       postgres    false    658    8327    657            !           2606    586268 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_ladm_integration.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_integration.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
       test_ladm_integration       postgres    false    669    659    8367            !           2606    586273 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_integration.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_ladm_integration.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_integration.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
       test_ladm_integration       postgres    false    669    8367    660            !           2606    586309 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_integration.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_integration.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
       test_ladm_integration       postgres    false    8421    686    669            !           2606    586314 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_integration.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_ladm_integration.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_integration.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
       test_ladm_integration       postgres    false    669    689    8427            !           2606    586278 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_integration.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_integration.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
       test_ladm_integration       postgres    false    8367    669    663            !           2606    586286 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_integration.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_integration.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
       test_ladm_integration       postgres    false    666    669    8367            !           2606    586304 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_ladm_integration.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_integration.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
       test_ladm_integration       postgres    false    667    656    8323            !           2606    586291 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_integration.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_integration.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_integration       postgres    false    692    8433    667            �            2606    586209 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_integration.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_ladm_integration.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_integration.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
       test_ladm_integration       postgres    false    646    647    8295            �            2606    586214 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_integration.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_ladm_integration.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_integration.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
       test_ladm_integration       postgres    false    649    8301    648            !           2606    586396 ;   ini_predioinsumos ini_predioinsumos_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_integration.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_integration.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey;
       test_ladm_integration       postgres    false    8367    669    678            !           2606    586401 <   ini_predioinsumos ini_predioinsumos_snr_predio_juridico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey FOREIGN KEY (snr_predio_juridico) REFERENCES test_ladm_integration.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_integration.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey;
       test_ladm_integration       postgres    false    8394    678    676            !           2606    586391 <   ini_predioinsumos ini_predioinsumos_tipo_emparejamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey FOREIGN KEY (tipo_emparejamiento) REFERENCES test_ladm_integration.ini_emparejamientotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_integration.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey;
       test_ladm_integration       postgres    false    691    8431    678            !           2606    586331 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_ladm_integration.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_integration.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
       test_ladm_integration       postgres    false    693    8435    671            !           2606    586336 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_ladm_integration.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_integration.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
       test_ladm_integration       postgres    false    674    8386    671            !           2606    586341 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_ladm_integration.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_integration.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
       test_ladm_integration       postgres    false    676    8394    671            !           2606    586346 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT     +  ALTER TABLE ONLY test_ladm_integration.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_ladm_integration.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_integration.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
       test_ladm_integration       postgres    false    8394    676    672            !           2606    586351 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_integration.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_integration.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
       test_ladm_integration       postgres    false    8423    673    687            !           2606    586356 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_integration.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_integration.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
       test_ladm_integration       postgres    false    674    687    8423            !           2606    586371 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_ladm_integration.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_integration.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
       test_ladm_integration       postgres    false    685    676    8419            !           2606    586376 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_integration.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_ladm_integration.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_integration.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
       test_ladm_integration       postgres    false    673    676    8383            !           2606    586386 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_ladm_integration.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_integration.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
       test_ladm_integration       postgres    false    677    8376    671            !           2606    586381 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_ladm_integration.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_integration.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
       test_ladm_integration       postgres    false    677    8389    675            !           2606    586366 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_integration.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_integration.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
       test_ladm_integration       postgres    false    8429    690    675            !           2606    586361 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_ladm_integration.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_integration.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
       test_ladm_integration       postgres    false    8425    675    688            !           2606    586406 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_integration.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_ladm_integration.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_integration.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
       test_ladm_integration       postgres    false    679    8410    680            �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!   �  x��V;OA��~Ŗ Y'�7ebE��*���n���}DJ���]��c������$[���~�7����&5�Pa~n\���g�<�|��rު*����l�є��h2��/z��z,�b��xp#�(��JU�Z��W��ҠtX��%JUI�����,a�Y�v o �Qz�<y� w�Ѯ\,,���p��L,H:Y�}���H��r��o0�����*pir��=�r�:ϳ�z�S�X�)>̕���x�ɩ��z�j�<:�QbK�.h��E��f^��û�M6�w�	K0E�uE�:η����}�|,%L�����mh��*��I�t�q����Z�/������C�ړX����u6��|3dk�"�49� ����[�*]V�N���l[��ͅ��D����ݲK�`-a�_�~�u����4:�,2e��!�g7>n�b����n����8Ĝn�-��'#��'Wl�(���R\��da�V�nM��{���~T���[M��2�QU%+U�`�IN�H��A��f�����wPD"kz��&���POTOض��Z�j��� i�߁��J�H��yPⓛSHP�l�*ٕ�v��R%oQO�������m�M�V�0k�@��[��Ǒ�t��It�\��Gʛ��a��V�H�W����J9qn� ���a�#e�v��hH�:^�)RsX|x���Yn�1M����QYpmp���.�����e,���P�)���u�$��b�      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!   �   x�32�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,����4��s1�8�*��3��s��q��(�V 9�צ �@�p�K{�;:�qSѱ����I�9�B�x]������=... FboD      �!      x������ � �      �!      x������ � �      �!   �   x���1�0E��9 �Z�:T,]
L�"ӸR�4��A܋#p1@LHl���\�E��3t��>���n1.t�%�ӇJ�E�轷LC�qGK~gO$�N���}f�2�>I�*�d1��sB� ���FeP�H���=p+��r�PYo�)d���w%:���e���s����<^���+v��B������      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!   6  x����j�0���)�-��I�Jن���]$m��a���r�݋MMW"cPw�������3�6�N�(u�U�8�����S���x��7��S57�+)�F?�Z�m�<�W��ס&ݯ3�ɟȌ�yc�-9�*�w������a�"��+a4y4� yi۳K�>��O-�u��Hm~:uy��̇�I혾3��11c0�o��q����m8�ə��<����!Xp�Û�z G0ph����?��1�Y~���	|�����?q�Ol#)L�XQ��k72���C�sS������#�H�D�2��v�1���n`      �!      x������ � �      �!   u  x��V�n�6<�_��0K�(�=�N
,P��춧 -�^.$�KJ�?ꡇbo{���q��	�S.E��Q|�,���q߻Vwn�ކ�wa���a�G�۬cg�:Ӫ�V{�|v���-��ŭ�5x9�/wkS�}5�u��T�7��,;yw2��c:0M�4-�ZuL[6Z�b�OΫn�N�+vt*ϞXk��Y�H�N1��f���k;����m�h
K_X�����O}�֭ٻ?���m�?��h�&�l�fhs��@[�����f�g�g�g�g�-����9�9�9�9X9X9X9X9X9X,�#"�ρ�������U�U Vnn	V	V	V	V	V	V	V	V�X�(��
�X,� K�%������������5�5�5�5��`ՈR�[�[�+���Jp%�\	�W�+��2i#IaS�G�I�4&m$ql�IMIHIH�Cb,	p$�c�9��W@bx�F"^"�W"�� %�H������F�$!:	�IHF"iR�+��(�f
������Uk�l2�!^���]`T�Ɔƛ�b���oB�X��AM��}Z���X�.����ΐG���Q��f �B�p�5��`���ol��S��ٙ>�F3���|+v�>8��th��g���ב�5�f��Wעo�v��Ǐ��4�������VlE ��" "	�S �Џ@nr+�U��V�V2,�a�dX@S"�
��3˼Z�m��c�v�]<%8�]�}�����߭¾60�&?��&ov̾�����2���[k�.�-��F���y*��ˢz���4p����u��YMg�5�ץ63&���%�TM'[?Z��%@{���-�\�Z����HU�b�U�R��e�bؼvC�i::K��T�;Ã�Q����-� �$��Q]�aL8cf����P�� ��5&���i�&s��1���|Y�oKI��=�?R��\_�^���<�/Jw�X�td*zr��j�nH)J����J���#S�3A��Γd���f/&��`;�'W!X;��?nE��Y�K;��h�~Jגk����t�1����Ry�.�%ԛ�;v����4y��:���UG��"��hk�Ӛ�9�^v8����(�8����8f9X^���z�\�7#A      �!   �  x����n1�g�)8��a���d,�� H�NZG*t�U�u�&��[�{�~�/�v�bSw'����~�j#A�_b�[��������dn�y�,WI�ײ�$��;��.''��>q�p;��s��K$Ʌ�q����)h�")ID��+:NL��J}�p�u�(�F��)Υ���fFZ��/P)����Hl�3���B�v�����LL��'���e��s�'��X��'v��ZI�8�Aw����S*(���rF����eY��}|?����ɷ
� t���4��Ϡ����$l�B��&��Xf���;�;�#�ߏ��r��]��DS#�[/����^�����i$���*�΀ѭG�=8�.�����H���?�^|��68���M�w�|�c�Yl�U����' �zw8�(�nx����q�uNW�$$�N����&�6!��`��.�Z7]R'�z�����3���n�}=qG����2�;j��P#[p7z��L�Z��iČjP	�Yr��Ÿ ���2d�U\ŋ�9i��[��-�Q��(��3L�M���V�C�}7BD���
q���G66�*�>W,��ta7>G�>���D����?�801���M��5���M}}�1z������&x��`L� =^��Vr����:��[)D��n�-��!挧��|:�����      �!      x������ � �      �!     x��T�n1�O_�e��J�ZQ 5�a+���׸#>�(���e�����c�=�1����$�3��{qUܧy�JS��؆T�0���;��}Y|t:��F7�*姼r�äCS"0r*U�,+	/�a�S�T��V�K�@�R��F��ȥ����wf�!zU&��4Q��U�T4
Q���\�JyE+��z{�K��k\i^���*U.�@���]\�J�|Kw�(��G���^G����&��U�a-ؚ �^��`�r��J�h���<;�[y6���]���g2͓��K!���9�XB���#��ݩ�\��4�!�QE��O���e�����<+z��oT���������5�}F�ho�'�V@�$�C<�1�J	��zN/"a免���SI]S�LT�� ���t�����G�QRhm�񒷞������AZ>�l��(�|�oH5�[/ߜJ�����ڞʼ�14��v����2+�Β�UI����]�2QT-P�h��z8�Z�(��,?�Y$+������9Уя��M�"��w�o�m��}�M��<�]��Ƅw�l۽���������;�? ���8U��b�y|������aY��ؙ4�#qV��~BM��s���,S�0R��Jthz��5*��]N�9aDa1��Ȍ�1�X�bĥ��/��S\��G��=��튃u���Q�[�#�>G�B�;M&%| �����g����{�m}[K��sZ��J�Yy�1ZfP�0�"M��pS�˄���I�������_�\Y�����z�O��      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!   �  x��T;n�@��S���?�'@��0�$�b��+�;�~ط�R�K���͒�%�R!���������*��t�K���<HlVWߚ���|��2����(��Uu^]�$�E78�b
��]q���б�7��l8�$���[sLd���1۞���p�:6=�����_�;K���p��:�aFIZ�C�������#l�I�37����l��Y&J�S"j����޵��b�G� #) 2�'��c���-;<ޗN�a��6�����28����oN�aY}�6��5׹ 1��7�	 �YI��tb�ʲ�|T'�lS� �B�x/��;��8 3v5�����<C9I@xG	�sj\��Jg��څ� L�A��k���π���73����mr���t�	adx���YGk�TDs����^�=���J_�u�|��訟8��1�l�J赳yAp��wq�q��T���W̲��pM�����OQ.i�y*;KQ�8�ޤ�b��-)�qt�LPn ךw�W(\�^�;����NW��t4�Or��O�H�Ej��1�B�J2��\հ��3��S,I�L������Z9��g��swQ}�Ej^T-�tO7� 9���p�*)���?ewZ��͢���}b �      �!     x���An�@E��)| �ޠU���B�̌S�&3#;S�ީ薋թ�����m�/��U[C�R��I�v���Vݲ��M�<���圪��ZVW�mp,�a��!^aK �3	B@�W�X�������W7��"���_�S���/�!�p��I(�{v#;6�0�'x:�8+��1)���8
K��o�8ERp�΁ta��&e!�8���t9�L�>�����3�B��L��frL�`$'���З��Ά�ݎ�݇|����޼o���Y�!      �!      x������ � �      �!      x������ � �      �!      x������ � �      �!   �
  x��\Ks�8>3?�5Y�����[������
���Ip�pe���$H�"%ړ� @������!g)�z(�6g5�'u�*����
g��g�G����.�_��Mq�fP�$���wm���$*��1A�h�X����?=�6Oh�����1D�M2����fU%���C�!�凊�Q���B�~5Xv���zZO����YJ����T�UQ"�X�an�l�g\�r����h��ϥx�\���bW��2Eb���c$�Go�9���h���~F%UE
�*�um���#̉�"��/�H�7�?�؃B1�/-�}ܐ
���5ma1�6�խp��"Qź�Лh���~溭�2�ޱ,�UF����%��$��`�k| ny�L���s��/ڰ��E�$���M9]3����_i�f��_i�ЎT5����B�
|�F�
w������N�����*��ޣWa����	�y�crk�������<���_(Q�gࢡ�2����,���W���ﻗ-�6J\M��pj��DK�w�P�� �.�^��'>��@����l1�k8�������ǿ��q����3w���ڬ���z�	��&>����':�(�U��J�]e�����d���t���V:X@O�3h(� �(�@���敁^�}��$h�-�A���]��w��x/��±�N�߄F�'���<ὅ6��H��<=ް>�~˩P>R(T���G�#zH�L<�tV�/����I@B��hF1,�ߎTw�v���@g5m�M�|��|�`Xb��lj�K� ��Wf�����R:�:�B��^DId�d�<� &���$�C��0�R��Wr��-���h�.�*Q�e�����XI	6�9����j.I���VE�� v�t��\�U��@0�T��)�=I�N�ײt��5�H1,��##�1�o[���poW�SW�����XAC�:xy�<�(���a�)�{4�����^#إ(������s`-g$v(��աW���aO���ů��Ј�����+)ǎ2/���q���ܑ�Ƞh��a��x'��fdkTGu�V�%�]�1��VC�8H]*�ѿ6�S�c��pX�{��,z��;�ᚠ}�{jb�b-�f#��ƃ
CQ��IW^�����6Є�M�0�ߩE%�zk�,l�3U
���̊� UgU��Ԩ�.� d���;��^���Wz�b�O��	���̜mj�x�L �R^�:.�Ja
5�ޥ{����Cϼ����	��Қѕg�2��{�5Gr�`XB rS!�ZՔV�Y�E�-<+�1w�-^xY~8��^�8�`S��S�;$۶�������u	�`��N�
2U����*� �V���{u����[Q�a�3���G<���A�+�� ���� ��c����K@�c�ʹ$�}"��A[��W `��kq�T�uaW� {�s%Mnf��XB���+����7� ��%;�t�{��ְSq�(�f#Ȏ6�׋���O��a��J����������
��(�#4���v��a�s����	ӳ�?�B>��<&Q��N��Y�]�њVI۹k �&�RJ0�1�>����2�aƂ;[�<<?��Дo��T:{��Jc�^.k� �-\z#��F�$V�|�Q�Ɋ\�G��ể��;${��x�@�B#�e+.5Y�#��r۰�LLe8}�}��}��e��9Vی�kM�3�n�y5
*?�H	-����pQL�2B��гe��h�4��d�:yaf�ݝN �������uF6���Z���&-6߈ݙɻ�ް� �)��y�]�5�� ��ɠ���"?đ�%e��EX)�[M�%uQ����V�4iD���q�}���t������4�h�J�U�4'�R�h<�"�j��u��X�3�
�2���5��@R��j*%��4�)N		ȥ.���6�wnA'�/M���Ia��k�OyBV�`V�.�E��R���$fiE�d�x��؈�YF�&b���q��@��=r�^�<���t�b�����Op����S'
/}_/Z�p\0a�(_n=d�RӃ���RGU6�N��qo����ӘHZ��'d)wD��܄�P����r���n��?�������&��8������>�+�\�͞�H�ƿ�,.J;��+.�fR����i"���ZR�3J�vB��3Ǯ~�Y��'.v����G�U�JU�I�C�^��zT^�
veKq�h�|򢭇O'�����쥂+������|��;k������Φ�]�O�gli"��Sep��&�7��u3������΋"A�h�
ȈL �I7s��a^%��<�c���'�g/m8;x��s*l��e�&}`��[��wV�2,��-|
�Ĵ���АؑK�|�M���s������}��ηR�bћ�t��=E�l1i��LW�0P_{�%R��,\J־H2q�3�
��JϬ�k��c�X�H�]%�l�k��#\xoQ�����޳��O_y��@
�(G���C0^��=tf�$�6�2K���&ڱ*!�\h���'H�(���W�
 ��䧁�ڐ_:�N�5_U8��sa��ض]��r���G�6:{O�v��r�mT�l��\�e=�V^v�m8))4`T�aڡ�!P�m����9���%:LљoK�(YT:����μ3!�L�2x���������ƪ�ڨ��Ac����|�+j+�)i6m�{��#ss��_�O��%Ɉ      �!      x������ � �      �!   k  x��WMo�0=ÏA-V{d�"EM�i%�8.x�đ�TU��=N$)��yބ�x>�aqHd�cIVi^$2'<�R��j�kEc��'w��-��C@��\Ȕ�/\)��ёV��q��~Q���~�������C@c�h�g'�"29�SE��`�-sM#�S<B��3+׼g
�1)ɪ[Z`o	9�U(�2�ra�1�i�1��(�f-�F�^*�kD_��9�ykz�]�e�Q���D�T�U�
�/`�'������*hD��M�.�P�+b<|ڐ�J��Z{����Z7��A�So�������Zښ�}Q�/�U����=½�L����X�*����j�͊��\iF��/�D4g���o	�*|��y������<$��yǆl�X��Po���btLHb��!�x=_lH��_Xi[�����C�;�w9����7��S�����2%3��K*�C��0h"j��Sg\��5p��7�pI�F1��R��K�	rrY�����<�&F�@ԙ���gO7�m����g\����Lt�����F�o�h>>TeDQ?Ճ}�X�8�w���yv�`~ǕH8,��R�J����y&�s��7�3�������k��t^HV$��i؉T5��R�Q�i�.pK���z��ic^N�[?k��ٗ�����������T�`�.T��nUӎXK�J;��2b��A��z���������#C�i�'�iP�z��p�?<�nT4!]���'M�����{������vHmHD��E좬�0C���\�>C&��������k�˺�!P�?C�b�P��O���U�=4GuvVc��au��|�9���%�)��A��	�g2��OE`'      �!   �  x��\Io�>E��	;�1�h���@��0Ш�.K�-�o�)>�C�����j���0@M�ͫ귿�9di����Q׷����]F�l(����b�=��'rN
r���s�5��Ļw�o�LȳC��Gy��Rv��)*p�#�+J8�r�PAI�2RWCEr�gu�1d�ʷ���L��Sʩi���\���U��1/�z9~��<����Ӽ.I�� ��8�3�$ɞ�3����q�U�3���(����tD�y>�-&���U�#U�[�^����(�s�5����"�|Z��?�Kf�����i��Z���*\%<�P�" ��ߚľ=�R|"�Ɉg�/��] 5�m�+O���3����:'�:�p֛{w�NQ�@E��焾+�̼�lE̱T����Rr5*(���
E�M�eo-eS��U�]ۣ���3�Z>J���͕25�qV�<��<\��!�ż8K�&K�8;Ў7O�3�?�.�><3� ����׭���1T"Pl��jJ<no]�[�p}h�r��e���P$�'�P�6�p�4���S��~e�mīe
��q� t���zY$K�%��=��'xA=��بI5~	���C�A�>"̢6xM��ܳ�zU�K�<q��G�9����Iw�N	�n���Z6+�q����=��Nr��˹ٗ_/A:.BK� �W=j$lÄ����c&A?��D}K ������S�JIU�{`yJ��&לt��Շ�8����B�*�ڌ��f�������`���)���y٠�RuC�����~Z��^Ӿ���w5{�M�C��8�JX�j�HxX�'���#b�
�lN$#��<RP$���_Jb�� 6��QUN�fS���W��U�T̕�gڃ�Q18�|�:�r˒x���oU�S �Pъ��EAr�T�r\2��������9J@��K�7��u���M�h��]Fpxs���~����s�?��eq�f�����n~��p}��_�n�C`��v�b�ś����,�����?E�w�w�o�^D�Nf�����:Hz��'�N�<�t*�&3�����jy	����l��x�[3��c ٕsw� �'4�v'L����%7���%ܢ�v$�c����4Ѧ�����!u���=��WE2d�$l#��ˤ jij*u?Bs�p���Bv�z��,��t	�cU��b|�u�ˎЇS��<Ѧ�hYNF�J��4��<#[�p#��Ɗn46AeͺE�U�tk���4�f���i���Ԙ�/c�I'��˾�\k��fc
��Ѕ�^5�ߏ���D��Ş�w�*����[R\�'m:����j,����X��T�}�[d��+��{��'=3yC��U��ݰ��
�_բ� ��?(�jK���ۂ��Dt�%��>�_�T<���LG�_��,�\����Մ-�~�ܦ�-T|9{_N��M��肺-cL[XD/?0#���e�d���Mf�ȽU3r/AՌ�M�~�n�!#��/���Ei�W��Nq�>��w��h\%?�\K~�0��w؝y�]�!F��1?,������:�suv��f��蓄����]X��c��Ք TF��a�L`KǾc���!��(E�k^�LŃi%{�my�B<����Q�����%�J�ze_�U��E���^$���$�������f�l:p����Ug��*�r�=���T"^���~�\	p�dA�n\h��z����1Z�[���L��1���`�~:��T/MnC0�V��F�_�8=2��I 9~�4�S/!^!���;�q�y� Fo��k��D�A�^$�4̛��r�8����A2R1�J1�2�׬��G0��Q��{9���8`6~��$P�ħ�J[��\<�W�<tV�Dg�L&[�x}{��ç���R�!bA�=3Q'Y,�YV(��]�RkL��֌7��|���))ʱuv��Lӈ�=
޴:��&�ي/�1^��ZG��U��їJ'���-i\jw����8S`s1T�0Ɛ����;	���DL(���Z'�>�da�T`�QI��	�a�e�p$c%�ы>���ʡ���4�Ւ��4�6���`�kǎGI6"�t|d���MGF6�pL$��H�ѐ�
���)H�N�o�dtٿws� -M�C��L�OsQ_~�Q���J'|E��]�Ng|G
��b�W��e/WOp�,��G{��h�j+m7N��J�Bq�L��I�������;3�!c;��%�򟘘X���Ӓ����M�V�:����	���Y�K�Ͽ8yi���Tˮ�z�)f��s��#�g2E�_"��}�ϓ��J������)iA%��H�wq����OL'�y/�]]��V>��A�h��6�9L:�{��r���0�;�b�&�A7(�ۓz�����@Y���O�:�s��-��ͪrU[�FT��9��E�WHs�aywy���nzu���|7l�`];���c9�o�9�����Nk��hb'3���)L�����-$��l.�vul\Gv���Z�%6>��v�.qQ(;���R�1��l<)�
̮Դ��vg�oK7u����HC�ׇLg�>t:���3�������ɪ����|=�+D���)S��3Ƨ�:C82���\��֟������OH,?���t�E:O>�r���XnZ��I�a��m�`��m`9iu�+'��>m<+g=~rA���pO�=`˯��f�ǎ�gs��չ��m��ʺ��FWZ�уq��:��o{���z�'�Ҟ�?{���Iz����n�Þ�b�Rrx�z���[.�0�Gm.`��r���őfw���jc�b�J��j_#���.���	-��x7�]N�V�\z)?�W�d�`p��G����Ԑ7�uJn���Eo���Co���)�񂖧��Z^���^�� b�H>��ǋ
�aޓJ�f4����>�b���Q���d䆵됀�f��ې��R�����^�&��J������� �q      �!      x������ � �      �!   $  x��W�n�0=/c4���1s�4��q�SA��X�#�4��і��M�Y{�I���#��m���aKݸ�i�B6� ���^�͔�Esn���E�:�� ����[6).�l5�ר5�tR[9� Ee����U���h�8!��A���e�O�%\�ރPnDd�xK�~���;ZfK��,��-�Y4�U�+)�[H��&����Q�"�\�sͩ�T��dCO�=�jCw�������sQ1 ���N��r/�A�񵾒{���)���&��)xi��BWZ�����&Vboִ���@SU�%�UR�<�3�(;MF���Or�,^�ߧw�,Of٬`��X�,u�U���aN$q	� o���l�z��]7�Q�[�~�4�?mn�r�"A���ڿ�I��Q��+�B��MD��m	+���&0��O�2]���
[������\^��6&u���)�ߕ�`��g`?�i���s�ĩ{�m �UЅa���#���F���)�_�Y��9QK=��3��5���e�&���M&�?Ջ��      �!      x��]Koܸ�^w�
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
��	�兾�ʑ�w�m�|U6},k�ee7�a������@�:�I-�����l��|�����?����@�4      �!      x��}Ms�ȕ��+0�X�K�%�����H��HIi�p;*��dP
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
��n[7�'�fR�D�Z���Pэ᪱ ���P�&��/��-���jk�%�z9兰��i����ڶ(F��U�������NҪ�Z%}\nRA�k]������%I��X�B�`sDQ�lQ B��%]��NW��]�=b-\s��Ζj]KPZ)*;n�K���;��`S���"��^/ű�[������T�3뙼U�ޞ�[�[_�S�L��}����������ݝ����V�������*��m����}S��U!�/��`D���O��'�G����a������l6}���?�����y<�^?�(��6zpv���`k���x��xs�A �$������ P���}`���������\^8J���l�vQ�N��t���������V��wA�� 4	�ӓ�?����;85������滋�G����6�����Ep���N��×��(�������G���{�a'x��j��:�{���k��^k<7�TC����vk�Α�a\�s���-�:��W�)�����o3�_:��}ԍ�I��h�w�r?ֈ��3	�S���
Ͳ���T�JoC�t��� ��
 X��a�0ۣ4�Vβ`k[�r"]��E�#�^;�U�P�1	5�2�W�P��w ���Iȇ���z�$���\��J�����U]��Z�㼸�o���b���]K�(�~�>^Ʀb��_]A�����ΏϪ�w��Ę�	p@�kEw��-�o�B�OM��E�Ių��i�鿒C���(��x���ͮ���������y%�:b,�������5���2}-��<�B�23�I�*��A6�q��Md���k��&Mfנ;A�X���0��������:������PQ5�ܒ���ŀ�~g!ԁ|�4�Ș��<E�&K�+0G��+n&���I�dpao�5�3���<<��V���Qǟ��F�,�4�����º�x����Q��O����N�+_9;�X��t�(�7+�RQB�&%s3T�"�9:�����ʼy��('?,nS|���şP���x8.Y��o��
�V�r��@#Jj�����u�H��6���R�I���
�H�Jκ��R�1�v����������"��fZm�U7e�Trr&��@����@���v��D5����MK7�
���>
�0ud�%J�8i�*4��^~��9��a�r
h��w��&$�[\#����99Uz�z{В�����(�(�.T8�o�Ǫţ��Wxq3���-I�C`� �ß�ݠ��հ�_��]>
��:��G���/���E��<���\bcN�N\�q���a��C:l|H�i�k�\��a�:��a�i1�;��G���S>w�_��?'$��do���˰�S����`r����{��ӭ�G��a2)ĥ.��%�d˃��Ǌ&S'��Nf���fr�L�L9G��0���"��.mg�*b~�}�;#�W�z�.�WF�7�\`p��%O�^;�5����������NV��=���\з������^����{�fx~�ﴀ����hU���e;r��E)�誱I��+�)&�G��@J/NL���.V�AGp����G����D���~�i-]�!���Q%�X����;���8��V-����a��dZ��,�~8�&���s!�z3�F^��"o�!7�e���\�"�����X�������'�^{ 1~nL`2Vw��{�C�l�;�זP�O�FhU�����
�Xi@�a�����67_��U��R"��5FV��|��]P!)adp΃K@w=0U��U���6xU��0���>
��;�o�P�)zD�&�NΎ�m�Ǝk����*B}�o5+`�د��V�sU3��8���#����[��~�;��Ԋ.oG��ds��8`��4�E=jPQEk���rW���JL��V�CP�Ѓ�Q,�U�M�03��f��_�5=٤��0�1� TJI�%w� ��VQ��2[;� y�m�,7��mQb
}W��וs��RQb�D��U�.�#�n����0s��@�������[.��\�>8�����L��y+����?Y�_A]Jb�N�5�iթ���ΰ�5.��*7�� \	�"��MP���L�^������C��,p�V�D��j%�_�J{Tcƻ\�Z���9��V�˂��J3�0Q(#kΓ�i�y�j
j�&5~)-/P�>��j���v[�KP5��h@�/�P���j��b-��#�PuM}���EM����V`*�����ᝫݍ"LU���w:�OZ����jR^�����a1���Z�G_��X�k������{���ʅ;�?�}	�Rl��Rr�θ�4�վ��I��LE]V�^I*6[%�S	�|�ӌ��8�k�󔇓������)L"]ov]�n� ��#62����V��ķK0�lN��;h�k�`��aѾS�hۥ?�vQ-�T�E�K�q.3O���P�F����T&	��mwb>�������x�X���y�'7�d��g�ꢮ�"Ug��ЮMd�7�j�Q��[�K͍�U_L+X��:AKN�X�eG�-���^,�ؔ�̠&��,��g�ߙ&�`fS��3����K�Qd�J����_�����S[�&��D�5 H�����,�f���o��{8+��Y�ǩ���Y�_P��\��0Kg��5�P�d�B�rc�M��|[۽-�Ҽ�����4�O�e�]�3U�u�iٳ~",�.���M���&���\x� H�Ѷ�>t�6�ބ��v 6�� ��(O�T�v���ŮN��"-3��RW�!�9>�EϕG� Ƭ9/�5@�[Ռ|��gOe��~k��YIȽ�R	�Uww4+���Bz�����J�sW���h�k`Vh[�2յ�[2���ln ����A}��J{뛋��h_�����4�
���R�:��CV<�����������	������������`�؃�h�%!ۢʑA!VE�kÃT�dSL��8|�ܿkߔY�ښݗ馟z3K{��u����a<��
N�kk���p^M�v��ؘ��lf>�ށ�d�����y�[��p$)E�+;]�|ʽ�U%P�����y0���k1�v;SU�Ȏ�}E�aWī�.�1@�2x{lS��mI��g�HM8'a�)L�u�j��.�2�|Q��X�;�h�ei��t�Q�;K�!�d�CwV6
�a    j�Q=Q*汆���������a�u����o�5��d؀$ҵ��7",��R�lk�n�p@}�wܩ�>@z˥�}a�r1�!C�z�n"��eeJB�5�	�C�z��33	<�i�]4�[j��I�W�O#=uY�p������Vàܷ5�aɨ IM҃�����w�YɆ�Z�@ƨ��;R(9sL࠭�AL�1Ţ'&`^�g��y{�R�<��Q���?n�TR�r�eO�x~��nXEX��`�����ԜfA
�I��5);D�:����&�=��U�(�n��|ӀR�8�K�ug>_��$s�δ_��^�G� �M�LU_����>��$J�s�6�sTWJ�й�:��hQ7��a��{���w���;#����l�U��;��׵��l�\���\;\n�v�"�X��xb�T�q4*��Q�z.#mO��m� ��u��w~R$z�`GX��t���y�)��yx~�jp�PU��NŚU]�̧�4�+Y�I����q��vV��}��[z�H�u�S�ַ*^��6h7���:�#��y�%k����v4��:�#2~��T��2^��"�����8�����옚��e��R��y����VIFPTY����0{�HXk���Q��3Y9X�4�%,w��eI1ƹ E�W`̏2&�����w�nKT�� vI'~�µ����[;���D���*'�j`�uZ3˯C��V����ɚ��_r�d����X9)(�����l�f	V����SS|������T��sT�ْ5�k���SY߂La�����`�}yX��c��]�1�@�V���lU�زlYzJƋ0�]���{�Rh�w���	��K�x��@�K��
��?薁IR�}�Vv^�H�
Ry�8�++�Ί���F�����UmGx�`��q������.���70�]��u��#��/���ϺϺ[��V��TeA��RU���+�
�����s5�뤼���S���H��b��⚙��YoIp�&�`-�Uv�xQ~�������b�L���H9�af���Xi��r��U����W�b@�~�T)4�����/ŷ2+�[dgcȂz}wD�1�-��^᾵�ݓف�Fi{��%�Zh[����	��p-V�$g�=��}MX0�����6�X���*ʇ�_�۠�tU��Ui�j���J+��z�n��Td,����,N�()�_nR�Hʚ�ry��@*P�Y��
�� "Rpa��X�t�Y4+`��X�J{�"�Ϳ$�;�O����cSS5�
][�E�U��]��#dK��hb�\��`��i��f�fZU�kN�
a2 \VӴx����-W��x#8���w�ghÉ&S�j�3�T#rE�zK"ӗN|����?�
RU��2�)V��y�xO2�>��Y�rT��V�xiv��[�Q���Y��+XLR��� ��o�0cg	�S�H�@��<kb��!���oW{���5kW�d)�[��%���U����Wﰺvb�̀/�W{o�ݨ'���KSo�R{�4���Nω�y��w��_���D���:���U�M;���h��|\�h���ذH���V�&ڧ���aX�����oDi����?v� Q/x�k��l`nm�y#��r��n�t��@���\q�X������_QeJ9��Sj(�ITO��RI���p��$�b���_�G*��:�u��~ܑ��I�+��a�������ヤES��=Kc�C7]Մ�B��c���6�s�/V�"/9�i�z�uX�h�N�3�tT�=�K;��x��_9k�9]���yA������4��I�1�r
�&�us�Rf�u�h��2�3%l�k'Lv�"�a�����[��8�x�C�8C	��\u��َ;��V��m��ܭ� 7�&��[5�jv����c�K.K�sU4G���6[H㚥�A~�4��=��f�J_v�VY�H�_բIڦצ?����7�3�RN���=�uQ}mi	k>�\45�����U����r����l���Aq'�g֘���|eh!���#�$k�ؔj�����HWfU��0p]T�k(�8�!U)�M�t5�X�2�lq+K�=����jr%�q�Z۾�
�v�h �70�k����~m=�*��E4�^�f��4dz� ���E��q��vf��$n��o	�E�Kv�U�+N;�˂�Ղ�W�L�6i*<�o��IV�+;W#_�f�O�����K�Cg��m�Q�	I ����[��=�|_���^y&7�AB^;b_��z]s7�A�#����!�e��^F����"��	��b�4�;��l�f�Q�:�8�fx�\��F%��5UA�]Fx�^�f��.ɷ�Sv6��@�P�0�2x���6���ݠ������&p�A���?����;�����]�Aׇ��������pt����|H�>�]Ү����ؖؖؖؖؖX�������(����|8z>=��>O}8��p<��x�c��ScO}H���>�{�����3�g>`�|����=+�pۇtۇt�l�l�l�l�l�l�lǇc��؎؎ǎ?�?�?�s�}8��p<��x�#��sA�}H���>�!��!��!��!��!��!��!��!��!��!��!�,��M��M��2�/s�2�/�����,1�����Y|�?�z>4=�=�|.��E��½X��{;�O<8v}������(����]E�>�v�#o�?�v�n�?�v�n�?�v�cb��`��>�.�j`$-�t�'����7�&U2~��o%�3�5th��N�k�C��)�8ː���\W9��!-eE	^�����!��
o���u�:��@��b�RD����8�[ujEͳ����*��W~sq��s�������m�o�;~ۧ�m�n�������m���}���	y����>eo��ܶO��>�o�������-�K�\���?�]Wvk`�c�09-��g����_��G�Gv=��f���8��Q��z�1����>�l�.Ȩ�|�F��I���磴��[��+ 4��;�q����|Q�:��RY��B@��QDԡ�p#�����I�/MS�U�����{A��>���S݃�b���1�)�ڢY����tR����=�m��}Q���w�rBYL(��.]4�i�h�h�p�8˨�Y�Ƽ���-��
�M���[ܝtvY��\B�@�
�E<c:a�]2z��W�pxt,g�ä��77��x�t�>y��5�288�٨���}&�U��#��/Y�7�ܤ�ȂV}O2��"晞��.�LD�v�m�c���ZZ�mS��o��z>{�Ĵ-���|ͳ�+=_���"~�yK��Zp'B>S�ܛ��@��j6�)A��J�v�-za�Ѱ,�)Ee:��=����*�}�\z���kp��:�pg��|���v!��}�cWIcd��Xq�����8��K�q:3�@�E��'*(H������?��8�٬D1i��u(T���9����<j�nՍ��pt`4��cԛBZ��.�\��S�'�a�"E\�]�0S8�j�1U�A��aN�<�����!N��QB�E��"ץjo0���(\O�hGK'`ύa�;�@7"V��q�B#8�G��y�C����>f13`:*�ֹjG���$���i:¼g:P�-���D�\bD�'*1��!ǲ�B�j�ܼC�>펢{Q$ޑϥ�ldw.�:�
(8O��"�L�F����>\��ը��-q�#C��.�:�i@>Fj�,HXׅ�p3L%j!1rko��rD9����BՌG-��(�ʌPUN@���Ƨ8$�$Uѝ�#�)�AyЊmJ�a���n��]7�W�$��L:K?<�ܛ�`�d�#�Ӥ���c��0������	X�H�	*�/�T����~3?��(�b�.��H�I�`��EaA�������˨$˰�AO��nX�J]���@.>�������䟉B�-1�Yk�0��g�� ���TQS7�)t1����du��>*�s�ޖ���&=, �
  \d�e1�p·Ǉ����e::��a�j>��*� JG���� n�
b!E�+b������m��ᅭ�^,Yx���+�!8�iX��:�>��=�b�[�L;��j�y@��mC"��,J����|=8T��[�ʯ�I%�r兰@:e�O&!��$���p��$�<h~@��A�(�O���E��B8�-�Uч�Fn]6b�&?�J3	�o���������t\2�]�~o����h$�l!K����2��HdR��sN%���T35	�	����ˈkk�Ԅ��tm�B�_�w���ԉ{?<-��[\Y<��#�lu
�^$?�1�v�*V��T.��~�J��?@�DAl*p���T���*�"D//�*����p���#���#)#�*� /K`�� ��Ɠֵp��3�8���������$4W��6����HRD �EW�%8�a��1A�F_���;�E"uQ���a��i��6��B^Qe�`�-��h�y"�4�$��Rx"�
�8���F��R,0U)�����̓���lG���B�Dن)��Om�l��R;�����U�T1V
�HO�RS��R>�M����')����db1&m�Aj[^��R�^rܞX���ЬBJG,���;�LR�)n'�t�M�P���6%�Q�C��V�ţ�ĝ���vkrP§�,_NzW6��y�>'s%��#��
�f+"[#<AE�X`�	�L�H"��k��S�@�(I?1�_���T��hWR�j0fgАҙ��E����FMTM��9����򥇩}WVW�� �+^ŞJgD{�N}��Gq�4�6��-��㳒�d%���ٓ*
��mhm��L?t��V0yA>-�����撡nVU�3t=o�R�B�윮�Q�'ɓ򺘴��B��Tv~3�)<���P��]߱�t���YD�Yd�H,Ɠ�B�����h+xj4V��H�B�ڭT�aޘR���Ȑ3�qP]Q�i�l�����/<`�`.���P�cZ��v�~a% �y�	o#�oVĴ�׿/@��WUrqrzؗq�@*���u�1޽H	�M�64�� ^�6Y� ~Mm$�`Xr`KuU��<܋��r�@K�v2C}��Fu�����J�Z�e��E\�iE�K'�.��	�x���n��	������rj֭ѕtD��aV�&�[q��a>���ާ�����u�זR�4��ȁ�~�h3���ə�
IL��E��,�h�HN�g�D$���9^3׻�XOF��Dڊ�(*�]���ь�YZ����H���%�\�)!oJk��:�~��HvS���!�S͖_g��o���]Bʍ$��Xi'!������r�%,���U먋h^p����-ɸ�5a��.�"˒ڪz�ImVǵ�lz��2��}duq(�!�_ �|(>��-���	�-}��}B��W_JDf �ẪJ����Z�$>N��;��,���W:U
������.̆�� �x����JA%�?�1�`'��B���=��]�|�q&���ai��`�*��ƸA�H���ퟗ������D�eUµS|ƚ�L�������4T����+Hy��,?.萺��}\�wԔ8q��r5Z[۞��BUNt������$[��[Č*\]h�+����v3����sȾJusS�T��t������{���Zn����iL<�\Y���������5VeV����$]S�1�md\�*�O�89�MD������,~��ZCD���q! z>�8�@��0*�ao��c�����E>lV;��F�\`ǻgҡ�VG�*������o�V"@��*Z��`%�o�"x��؏���-���0�t	��L�?�_&�)Ֆ��~"W9⨐w�ޓ�f��*���2g����:��1٘�+,�v3�_'�cd��YZi4'�
T�۵�[��&aGӢ�\9�'��-/�!t\�n����P,-�:�Ba��~��.�-U��E�r
1W-S���+I-���^�e^��p�J�*�)�|�V������B-#���OY��!u3�ģ5�������ґ����Ǝ��m,��L�e���nL4w���
`ey��>K�d��l�S?m�jťZ���ʴ�z��]�qt=$�T��;~U�����4EC�]PVӌ�N���B���%G�Ò�Œ-m��詆pj���s��U��h��z�,+�9���4�vv��/)'T�">��
/R�,65T'Rݿ���mϱ����`�%ŉ4;S����(Մj���Ju�&a������JR �3�� ���~���L��C��l�����`�W|��1�8(�a�csF�:Cu*_�_U��?|��zYz���{+X��Q@���v�n�'��[>�[w��+a���ݻ_��ܧ>�O��W���3�_������^�F��Gߩ�+a���հqG0v}0v��f�+o��W�| �Rua�'����NA�8�Lo�U��m�Q7+��^gC�Z4���g���K`ݮ`��(BM@NL��o�V�R7(����	GT����[>>[)�z �>\I�3T�������\R�~k�(�T{����c���ӥU���$R�wd�{<\R=�!ypv�w����\�����'Ӊ�Q����Q;ŶH%�Fo������Rc]�ճ@w�5 ]�BU}�JU�=��7[�[���<��ݧ/��/��o�vv��Ư~���it�P      �!   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      �!     x��WKn�0]G�в�x�� U��h��tU@�ɉ=�D
�SW=B.V�T,K��qv��G�o�w<-�4��B+$G&�Q��B]���8�o�vb�6�(��t�y�v<�,�䌣��D�W�4���/����n���/�,�,��/ߓ�89R���ؓcq���=��iY���Vd���,�`4��z�I֛�4*�N��U�(��ʘg%���
eY�d �oO<�v�9�̃����j@k��a3?�x�1./���D��"I4��˦��3���=�I���`����u�� N�*���%9�!JO�G��F�%p���4�����[�.^���gM�@0L#�T���&�7,��Vz�ƻCұ�V՜m����t�f��6��|yskZ5%~l8�=�Uf��A�&ov��t�j��^���,��7�ڰ���w��='����y�$s�x��跿�ª����&*�͸�f��}8�3�����!��ÉJB�j?,�{���V��L3�3��Ѧ�U���W�M<Y�̙a���}7qjMl�v��2��A���!O&���&�@)�6-Lڤu�\E�����ik�tGo��}��]��3eQ��~B��z]�9~PvRaYL�©�
x�+ݵE��v@��WJ��������co"�3VB��IR˙<0I����<?y��;\��h�6�Á����^ƧG�����Q�G<�;�-��.�d䧁{P�[�	����i҈6��^�WqO���7�ѿ�H6�^ӟz�٣V28���DQ�2�R      �!   �  x��Xˎ�0]�����2H� °�d]��dl�G[���$��� �.�U||��8�[�C��@�V���X�I
�� ȼI��.�����T���J����(���y�o�E�e��[��$��H��E*��Fv3�7КE�s7�Z���;��	�3��@q�a鏩@��x�c��&Y@�W�P%���ԇ�l���z��!���R������蝄I���e����o��4R]��|�d�iԿ&ۥ^Q��i���N��q�ɛ�XZ�8�0�S|�)l��Cȓ�ɋ�g>12,��T5�q�O5A��@���Ԩd�ͯ��/d2�;��=RDF�O��˝v�#��ˍ����U��m;���g<�wE��Q��j��4��H�r�c��R����sCf��?Vn�G��D�O֡ŕ.&���p�������+R~N�\AS��e�<L^B��Nt�_�'.�E��5]��?�Bkp����g����o]A�gh�}92��	S\y��� �����/�ҡ��a�{�����G]����"M]%�#���K�e¨9��lr��_�+vK8�����{��M���3n� ��6	�s�P7�����R������
ɖ%z������{�x@�lx~����p�;[`WKW��G�h4� ��     