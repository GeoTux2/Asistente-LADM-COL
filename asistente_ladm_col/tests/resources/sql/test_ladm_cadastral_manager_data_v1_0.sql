PGDMP     0    :    
            x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) (   h!           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            i!           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            j!           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            k!           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false            
            2615    585258     test_ladm_cadastral_manager_data    SCHEMA     0   CREATE SCHEMA test_ladm_cadastral_manager_data;
 .   DROP SCHEMA test_ladm_cadastral_manager_data;
             postgres    false            ^           1259    585259    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_ladm_cadastral_manager_data.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE test_ladm_cadastral_manager_data.t_ili2db_seq;
        test_ladm_cadastral_manager_data       postgres    false    10            c           1259    585295 	   gc_barrio    TABLE     g  CREATE TABLE test_ladm_cadastral_manager_data.gc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 7   DROP TABLE test_ladm_cadastral_manager_data.gc_barrio;
        test_ladm_cadastral_manager_data         postgres    false    606    10            l!           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
             test_ladm_cadastral_manager_data       postgres    false    611            m!           0    0    COLUMN gc_barrio.codigo    COMMENT     q   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_barrio.codigo IS 'Código de identificación del barrio.';
             test_ladm_cadastral_manager_data       postgres    false    611            n!           0    0    COLUMN gc_barrio.nombre    COMMENT     ]   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_barrio.nombre IS 'Nombre del barrio.';
             test_ladm_cadastral_manager_data       postgres    false    611            o!           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
             test_ladm_cadastral_manager_data       postgres    false    611            p!           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
             test_ladm_cadastral_manager_data       postgres    false    611            d           1259    585305 !   gc_calificacionunidadconstruccion    TABLE       CREATE TABLE test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 O   DROP TABLE test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion;
        test_ladm_cadastral_manager_data         postgres    false    606    10            q!           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
             test_ladm_cadastral_manager_data       postgres    false    612            r!           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    612            s!           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    612            t!           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    612            u!           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
             test_ladm_cadastral_manager_data       postgres    false    612            e           1259    585315    gc_comisionesconstruccion    TABLE     >  CREATE TABLE test_ladm_cadastral_manager_data.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 G   DROP TABLE test_ladm_cadastral_manager_data.gc_comisionesconstruccion;
        test_ladm_cadastral_manager_data         postgres    false    606    10            v!           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    613            w!           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    613            x!           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
             test_ladm_cadastral_manager_data       postgres    false    613            f           1259    585325    gc_comisionesterreno    TABLE     8  CREATE TABLE test_ladm_cadastral_manager_data.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 B   DROP TABLE test_ladm_cadastral_manager_data.gc_comisionesterreno;
        test_ladm_cadastral_manager_data         postgres    false    606    10            y!           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    614            z!           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    614            {!           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
             test_ladm_cadastral_manager_data       postgres    false    614            g           1259    585335    gc_comisionesunidadconstruccion    TABLE     D  CREATE TABLE test_ladm_cadastral_manager_data.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 M   DROP TABLE test_ladm_cadastral_manager_data.gc_comisionesunidadconstruccion;
        test_ladm_cadastral_manager_data         postgres    false    606    10            |!           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    615            }!           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    615            ~!           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
             test_ladm_cadastral_manager_data       postgres    false    615            }           1259    585535    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_manager_data.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 D   DROP TABLE test_ladm_cadastral_manager_data.gc_condicionprediotipo;
        test_ladm_cadastral_manager_data         postgres    false    606    10            h           1259    585345    gc_construccion    TABLE     i  CREATE TABLE test_ladm_cadastral_manager_data.gc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
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
 =   DROP TABLE test_ladm_cadastral_manager_data.gc_construccion;
        test_ladm_cadastral_manager_data         postgres    false    606    10            !           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0    COLUMN gc_construccion.etiqueta    COMMENT     p   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     q   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.area_construida IS 'Área total construida.';
             test_ladm_cadastral_manager_data       postgres    false    616            �!           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    616            v           1259    585483    gc_copropiedad    TABLE     �  CREATE TABLE test_ladm_cadastral_manager_data.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 <   DROP TABLE test_ladm_cadastral_manager_data.gc_copropiedad;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
             test_ladm_cadastral_manager_data       postgres    false    630            i           1259    585357    gc_datosphcondominio    TABLE     �  CREATE TABLE test_ladm_cadastral_manager_data.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
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
 B   DROP TABLE test_ladm_cadastral_manager_data.gc_datosphcondominio;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
             test_ladm_cadastral_manager_data       postgres    false    617            �!           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
             test_ladm_cadastral_manager_data       postgres    false    617            �!           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
             test_ladm_cadastral_manager_data       postgres    false    617            �!           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
             test_ladm_cadastral_manager_data       postgres    false    617            �!           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
             test_ladm_cadastral_manager_data       postgres    false    617            �!           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
             test_ladm_cadastral_manager_data       postgres    false    617            �!           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
             test_ladm_cadastral_manager_data       postgres    false    617            �!           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
             test_ladm_cadastral_manager_data       postgres    false    617            j           1259    585364    gc_datostorreph    TABLE     �  CREATE TABLE test_ladm_cadastral_manager_data.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
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
 =   DROP TABLE test_ladm_cadastral_manager_data.gc_datostorreph;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
             test_ladm_cadastral_manager_data       postgres    false    618            �!           0    0    COLUMN gc_datostorreph.torre    COMMENT     w   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
             test_ladm_cadastral_manager_data       postgres    false    618            �!           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     w   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
             test_ladm_cadastral_manager_data       postgres    false    618            �!           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
             test_ladm_cadastral_manager_data       postgres    false    618            �!           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     v   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
             test_ladm_cadastral_manager_data       postgres    false    618            �!           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
             test_ladm_cadastral_manager_data       postgres    false    618            k           1259    585371    gc_direccion    TABLE     V  CREATE TABLE test_ladm_cadastral_manager_data.gc_direccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 :   DROP TABLE test_ladm_cadastral_manager_data.gc_direccion;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    COLUMN gc_direccion.valor    COMMENT     t   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_direccion.valor IS 'Registros de la direcciones del predio.';
             test_ladm_cadastral_manager_data       postgres    false    619            �!           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
             test_ladm_cadastral_manager_data       postgres    false    619            �!           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
             test_ladm_cadastral_manager_data       postgres    false    619            �!           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
             test_ladm_cadastral_manager_data       postgres    false    619            l           1259    585382    gc_estadopredio    TABLE     X  CREATE TABLE test_ladm_cadastral_manager_data.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 =   DROP TABLE test_ladm_cadastral_manager_data.gc_estadopredio;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    620            �!           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    620            �!           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
             test_ladm_cadastral_manager_data       postgres    false    620            �!           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
             test_ladm_cadastral_manager_data       postgres    false    620            �!           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
             test_ladm_cadastral_manager_data       postgres    false    620            m           1259    585389 
   gc_manzana    TABLE     r  CREATE TABLE test_ladm_cadastral_manager_data.gc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 8   DROP TABLE test_ladm_cadastral_manager_data.gc_manzana;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
             test_ladm_cadastral_manager_data       postgres    false    621            �!           0    0    COLUMN gc_manzana.codigo    COMMENT     {   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
             test_ladm_cadastral_manager_data       postgres    false    621            �!           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     ~   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
             test_ladm_cadastral_manager_data       postgres    false    621            �!           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
             test_ladm_cadastral_manager_data       postgres    false    621            �!           0    0    COLUMN gc_manzana.geometria    COMMENT     u   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
             test_ladm_cadastral_manager_data       postgres    false    621            n           1259    585399    gc_perimetro    TABLE     �  CREATE TABLE test_ladm_cadastral_manager_data.gc_perimetro (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 :   DROP TABLE test_ladm_cadastral_manager_data.gc_perimetro;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
             test_ladm_cadastral_manager_data       postgres    false    622            �!           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
             test_ladm_cadastral_manager_data       postgres    false    622            �!           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
             test_ladm_cadastral_manager_data       postgres    false    622            �!           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
             test_ladm_cadastral_manager_data       postgres    false    622            �!           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
             test_ladm_cadastral_manager_data       postgres    false    622            �!           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     t   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
             test_ladm_cadastral_manager_data       postgres    false    622            �!           0    0    COLUMN gc_perimetro.geometria    COMMENT     q   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
             test_ladm_cadastral_manager_data       postgres    false    622            u           1259    585472    gc_prediocatastro    TABLE     �  CREATE TABLE test_ladm_cadastral_manager_data.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
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
 ?   DROP TABLE test_ladm_cadastral_manager_data.gc_prediocatastro;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
             test_ladm_cadastral_manager_data       postgres    false    629            �!           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
             test_ladm_cadastral_manager_data       postgres    false    629            �!           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT       COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
             test_ladm_cadastral_manager_data       postgres    false    629            �!           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT     $  COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
             test_ladm_cadastral_manager_data       postgres    false    629            �!           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     X  COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
             test_ladm_cadastral_manager_data       postgres    false    629            �!           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
             test_ladm_cadastral_manager_data       postgres    false    629            �!           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
             test_ladm_cadastral_manager_data       postgres    false    629            �!           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT       COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
             test_ladm_cadastral_manager_data       postgres    false    629            �!           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
             test_ladm_cadastral_manager_data       postgres    false    629            �!           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     W  COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
             test_ladm_cadastral_manager_data       postgres    false    629            �!           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
             test_ladm_cadastral_manager_data       postgres    false    629            �!           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT     z   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
             test_ladm_cadastral_manager_data       postgres    false    629            o           1259    585409    gc_propietario    TABLE     P  CREATE TABLE test_ladm_cadastral_manager_data.gc_propietario (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
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
 <   DROP TABLE test_ladm_cadastral_manager_data.gc_propietario;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
             test_ladm_cadastral_manager_data       postgres    false    623            �!           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    623            �!           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    623            �!           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
             test_ladm_cadastral_manager_data       postgres    false    623            �!           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
             test_ladm_cadastral_manager_data       postgres    false    623            �!           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
             test_ladm_cadastral_manager_data       postgres    false    623            �!           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
             test_ladm_cadastral_manager_data       postgres    false    623            �!           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
             test_ladm_cadastral_manager_data       postgres    false    623            �!           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
             test_ladm_cadastral_manager_data       postgres    false    623            p           1259    585419    gc_sectorrural    TABLE        CREATE TABLE test_ladm_cadastral_manager_data.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 <   DROP TABLE test_ladm_cadastral_manager_data.gc_sectorrural;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
             test_ladm_cadastral_manager_data       postgres    false    624            �!           0    0    COLUMN gc_sectorrural.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
             test_ladm_cadastral_manager_data       postgres    false    624            �!           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    624            q           1259    585429    gc_sectorurbano    TABLE     !  CREATE TABLE test_ladm_cadastral_manager_data.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 =   DROP TABLE test_ladm_cadastral_manager_data.gc_sectorurbano;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
             test_ladm_cadastral_manager_data       postgres    false    625            �!           0    0    COLUMN gc_sectorurbano.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
             test_ladm_cadastral_manager_data       postgres    false    625            �!           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    625            ~           1259    585544    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_ladm_cadastral_manager_data.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 L   DROP TABLE test_ladm_cadastral_manager_data.gc_sistemaprocedenciadatostipo;
        test_ladm_cadastral_manager_data         postgres    false    606    10            r           1259    585439 
   gc_terreno    TABLE     n  CREATE TABLE test_ladm_cadastral_manager_data.gc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
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
 8   DROP TABLE test_ladm_cadastral_manager_data.gc_terreno;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
             test_ladm_cadastral_manager_data       postgres    false    626            �!           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    626            �!           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    626            �!           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
             test_ladm_cadastral_manager_data       postgres    false    626            �!           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
             test_ladm_cadastral_manager_data       postgres    false    626            �!           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    626            s           1259    585450    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_ladm_cadastral_manager_data.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
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
 C   DROP TABLE test_ladm_cadastral_manager_data.gc_unidadconstruccion;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
             test_ladm_cadastral_manager_data       postgres    false    627            �!           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
             test_ladm_cadastral_manager_data       postgres    false    627                       1259    585553    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_manager_data.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 G   DROP TABLE test_ladm_cadastral_manager_data.gc_unidadconstrucciontipo;
        test_ladm_cadastral_manager_data         postgres    false    606    10            t           1259    585462 	   gc_vereda    TABLE     �  CREATE TABLE test_ladm_cadastral_manager_data.gc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 7   DROP TABLE test_ladm_cadastral_manager_data.gc_vereda;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �!           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_manager_data.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
             test_ladm_cadastral_manager_data       postgres    false    628            �!           0    0    COLUMN gc_vereda.codigo    COMMENT     y   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
             test_ladm_cadastral_manager_data       postgres    false    628            �!           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
             test_ladm_cadastral_manager_data       postgres    false    628            �!           0    0    COLUMN gc_vereda.nombre    COMMENT     _   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_vereda.nombre IS 'Nombre de la vereda.';
             test_ladm_cadastral_manager_data       postgres    false    628            �!           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
             test_ladm_cadastral_manager_data       postgres    false    628            �!           0    0    COLUMN gc_vereda.geometria    COMMENT     l   COMMENT ON COLUMN test_ladm_cadastral_manager_data.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
             test_ladm_cadastral_manager_data       postgres    false    628            `           1259    585272    gm_multisurface2d    TABLE     �   CREATE TABLE test_ladm_cadastral_manager_data.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 ?   DROP TABLE test_ladm_cadastral_manager_data.gm_multisurface2d;
        test_ladm_cadastral_manager_data         postgres    false    606    10            b           1259    585289    gm_multisurface3d    TABLE     �   CREATE TABLE test_ladm_cadastral_manager_data.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 ?   DROP TABLE test_ladm_cadastral_manager_data.gm_multisurface3d;
        test_ladm_cadastral_manager_data         postgres    false    606    10            _           1259    585261    gm_surface2dlistvalue    TABLE       CREATE TABLE test_ladm_cadastral_manager_data.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 C   DROP TABLE test_ladm_cadastral_manager_data.gm_surface2dlistvalue;
        test_ladm_cadastral_manager_data         postgres    false    606    10            a           1259    585278    gm_surface3dlistvalue    TABLE       CREATE TABLE test_ladm_cadastral_manager_data.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_manager_data.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 C   DROP TABLE test_ladm_cadastral_manager_data.gm_surface3dlistvalue;
        test_ladm_cadastral_manager_data         postgres    false    606    10            �           1259    585570    t_ili2db_attrname    TABLE     �   CREATE TABLE test_ladm_cadastral_manager_data.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 ?   DROP TABLE test_ladm_cadastral_manager_data.t_ili2db_attrname;
        test_ladm_cadastral_manager_data         postgres    false    10            w           1259    585491    t_ili2db_basket    TABLE       CREATE TABLE test_ladm_cadastral_manager_data.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 =   DROP TABLE test_ladm_cadastral_manager_data.t_ili2db_basket;
        test_ladm_cadastral_manager_data         postgres    false    10            �           1259    585562    t_ili2db_classname    TABLE     �   CREATE TABLE test_ladm_cadastral_manager_data.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 @   DROP TABLE test_ladm_cadastral_manager_data.t_ili2db_classname;
        test_ladm_cadastral_manager_data         postgres    false    10            �           1259    585578    t_ili2db_column_prop    TABLE     "  CREATE TABLE test_ladm_cadastral_manager_data.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 B   DROP TABLE test_ladm_cadastral_manager_data.t_ili2db_column_prop;
        test_ladm_cadastral_manager_data         postgres    false    10            x           1259    585500    t_ili2db_dataset    TABLE     �   CREATE TABLE test_ladm_cadastral_manager_data.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 >   DROP TABLE test_ladm_cadastral_manager_data.t_ili2db_dataset;
        test_ladm_cadastral_manager_data         postgres    false    10            y           1259    585505    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_ladm_cadastral_manager_data.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 B   DROP TABLE test_ladm_cadastral_manager_data.t_ili2db_inheritance;
        test_ladm_cadastral_manager_data         postgres    false    10            �           1259    585590    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_ladm_cadastral_manager_data.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 A   DROP TABLE test_ladm_cadastral_manager_data.t_ili2db_meta_attrs;
        test_ladm_cadastral_manager_data         postgres    false    10            |           1259    585527    t_ili2db_model    TABLE     
  CREATE TABLE test_ladm_cadastral_manager_data.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 <   DROP TABLE test_ladm_cadastral_manager_data.t_ili2db_model;
        test_ladm_cadastral_manager_data         postgres    false    10            z           1259    585513    t_ili2db_settings    TABLE     �   CREATE TABLE test_ladm_cadastral_manager_data.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 ?   DROP TABLE test_ladm_cadastral_manager_data.t_ili2db_settings;
        test_ladm_cadastral_manager_data         postgres    false    10            �           1259    585584    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_ladm_cadastral_manager_data.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 A   DROP TABLE test_ladm_cadastral_manager_data.t_ili2db_table_prop;
        test_ladm_cadastral_manager_data         postgres    false    10            {           1259    585521    t_ili2db_trafo    TABLE     �   CREATE TABLE test_ladm_cadastral_manager_data.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 <   DROP TABLE test_ladm_cadastral_manager_data.t_ili2db_trafo;
        test_ladm_cadastral_manager_data         postgres    false    10            D!          0    585295 	   gc_barrio 
   TABLE DATA               x   COPY test_ladm_cadastral_manager_data.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    611   ��      E!          0    585305 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    612   ��      F!          0    585315    gc_comisionesconstruccion 
   TABLE DATA               y   COPY test_ladm_cadastral_manager_data.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    613   ��      G!          0    585325    gc_comisionesterreno 
   TABLE DATA               t   COPY test_ladm_cadastral_manager_data.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    614   
�      H!          0    585335    gc_comisionesunidadconstruccion 
   TABLE DATA                  COPY test_ladm_cadastral_manager_data.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    615   '�      ^!          0    585535    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    637   D�      I!          0    585345    gc_construccion 
   TABLE DATA                 COPY test_ladm_cadastral_manager_data.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    616   B�      W!          0    585483    gc_copropiedad 
   TABLE DATA               w   COPY test_ladm_cadastral_manager_data.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    630   _�      J!          0    585357    gc_datosphcondominio 
   TABLE DATA               $  COPY test_ladm_cadastral_manager_data.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    617   |�      K!          0    585364    gc_datostorreph 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    618   ��      L!          0    585371    gc_direccion 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    619   ��      M!          0    585382    gc_estadopredio 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    620   ��      N!          0    585389 
   gc_manzana 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    621   ��      O!          0    585399    gc_perimetro 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    622   �      V!          0    585472    gc_prediocatastro 
   TABLE DATA               '  COPY test_ladm_cadastral_manager_data.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    629   *�      P!          0    585409    gc_propietario 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    623   G�      Q!          0    585419    gc_sectorrural 
   TABLE DATA               f   COPY test_ladm_cadastral_manager_data.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    624   d�      R!          0    585429    gc_sectorurbano 
   TABLE DATA               g   COPY test_ladm_cadastral_manager_data.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    625   ��      _!          0    585544    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    638   ��      S!          0    585439 
   gc_terreno 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    626   R�      T!          0    585450    gc_unidadconstruccion 
   TABLE DATA               F  COPY test_ladm_cadastral_manager_data.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    627   o�      `!          0    585553    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    639   ��      U!          0    585462 	   gc_vereda 
   TABLE DATA               �   COPY test_ladm_cadastral_manager_data.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    628   X�      A!          0    585272    gm_multisurface2d 
   TABLE DATA               R   COPY test_ladm_cadastral_manager_data.gm_multisurface2d (t_id, t_seq) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    608   u�      C!          0    585289    gm_multisurface3d 
   TABLE DATA               R   COPY test_ladm_cadastral_manager_data.gm_multisurface3d (t_id, t_seq) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    610   ��      @!          0    585261    gm_surface2dlistvalue 
   TABLE DATA               z   COPY test_ladm_cadastral_manager_data.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    607   ��      B!          0    585278    gm_surface3dlistvalue 
   TABLE DATA               z   COPY test_ladm_cadastral_manager_data.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    609   ��      b!          0    585570    t_ili2db_attrname 
   TABLE DATA               i   COPY test_ladm_cadastral_manager_data.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    641   ��      X!          0    585491    t_ili2db_basket 
   TABLE DATA               |   COPY test_ladm_cadastral_manager_data.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    631   Z�      a!          0    585562    t_ili2db_classname 
   TABLE DATA               X   COPY test_ladm_cadastral_manager_data.t_ili2db_classname (iliname, sqlname) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    640   w�      c!          0    585578    t_ili2db_column_prop 
   TABLE DATA               v   COPY test_ladm_cadastral_manager_data.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    642   ��      Y!          0    585500    t_ili2db_dataset 
   TABLE DATA               W   COPY test_ladm_cadastral_manager_data.t_ili2db_dataset (t_id, datasetname) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    632   ��      Z!          0    585505    t_ili2db_inheritance 
   TABLE DATA               ^   COPY test_ladm_cadastral_manager_data.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    633   ��      e!          0    585590    t_ili2db_meta_attrs 
   TABLE DATA               j   COPY test_ladm_cadastral_manager_data.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    644   &       ]!          0    585527    t_ili2db_model 
   TABLE DATA               x   COPY test_ladm_cadastral_manager_data.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    636   �       [!          0    585513    t_ili2db_settings 
   TABLE DATA               S   COPY test_ladm_cadastral_manager_data.t_ili2db_settings (tag, setting) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    634   �k      d!          0    585584    t_ili2db_table_prop 
   TABLE DATA               `   COPY test_ladm_cadastral_manager_data.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    643   �m      \!          0    585521    t_ili2db_trafo 
   TABLE DATA               Y   COPY test_ladm_cadastral_manager_data.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
     test_ladm_cadastral_manager_data       postgres    false    635   �o      �!           0    0    t_ili2db_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('test_ladm_cadastral_manager_data.t_ili2db_seq', 15, true);
             test_ladm_cadastral_manager_data       postgres    false    606            R            2606    585303    gc_barrio gc_barrio_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
        test_ladm_cadastral_manager_data         postgres    false    611            T            2606    585313 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
        test_ladm_cadastral_manager_data         postgres    false    612            X            2606    585323 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 |   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
        test_ladm_cadastral_manager_data         postgres    false    613            [            2606    585333 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
        test_ladm_cadastral_manager_data         postgres    false    614            ^            2606    585343 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
        test_ladm_cadastral_manager_data         postgres    false    615            �            2606    585543 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
        test_ladm_cadastral_manager_data         postgres    false    637            b            2606    585353 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
        test_ladm_cadastral_manager_data         postgres    false    616            �            2606    585488 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
        test_ladm_cadastral_manager_data         postgres    false    630            f            2606    585362 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
        test_ladm_cadastral_manager_data         postgres    false    617            i            2606    585369 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
        test_ladm_cadastral_manager_data         postgres    false    618            m            2606    585379    gc_direccion gc_direccion_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
        test_ladm_cadastral_manager_data         postgres    false    619            p            2606    585387 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
        test_ladm_cadastral_manager_data         postgres    false    620            s            2606    585397    gc_manzana gc_manzana_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
        test_ladm_cadastral_manager_data         postgres    false    621            v            2606    585407    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
        test_ladm_cadastral_manager_data         postgres    false    622            �            2606    585480 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
        test_ladm_cadastral_manager_data         postgres    false    629            y            2606    585417 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
        test_ladm_cadastral_manager_data         postgres    false    623            |            2606    585427 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
        test_ladm_cadastral_manager_data         postgres    false    624                        2606    585437 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
        test_ladm_cadastral_manager_data         postgres    false    625            �            2606    585552 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
        test_ladm_cadastral_manager_data         postgres    false    638            �            2606    585447    gc_terreno gc_terreno_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
        test_ladm_cadastral_manager_data         postgres    false    626            �            2606    585458 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
        test_ladm_cadastral_manager_data         postgres    false    627            �            2606    585561 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 |   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
        test_ladm_cadastral_manager_data         postgres    false    639            �            2606    585470    gc_vereda gc_vereda_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
        test_ladm_cadastral_manager_data         postgres    false    628            I            2606    585277 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
        test_ladm_cadastral_manager_data         postgres    false    608            O            2606    585294 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
        test_ladm_cadastral_manager_data         postgres    false    610            G            2606    585269 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
        test_ladm_cadastral_manager_data         postgres    false    607            M            2606    585286 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
        test_ladm_cadastral_manager_data         postgres    false    609            �            2606    585577 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (sqlname, colowner);
 l   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
        test_ladm_cadastral_manager_data         postgres    false    641    641            �            2606    585498 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
        test_ladm_cadastral_manager_data         postgres    false    631            �            2606    585569 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 n   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
        test_ladm_cadastral_manager_data         postgres    false    640            �            2606    585504 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
        test_ladm_cadastral_manager_data         postgres    false    632            �            2606    585512 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 r   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
        test_ladm_cadastral_manager_data         postgres    false    633            �            2606    585534 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (iliversion, modelname);
 f   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
        test_ladm_cadastral_manager_data         postgres    false    636    636            �            2606    585520 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 l   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
        test_ladm_cadastral_manager_data         postgres    false    634            P            1259    585304    gc_barrio_geometria_idx    INDEX     k   CREATE INDEX gc_barrio_geometria_idx ON test_ladm_cadastral_manager_data.gc_barrio USING gist (geometria);
 E   DROP INDEX test_ladm_cadastral_manager_data.gc_barrio_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    611            U            1259    585314 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 b   DROP INDEX test_ladm_cadastral_manager_data.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
        test_ladm_cadastral_manager_data         postgres    false    612            V            1259    585324 '   gc_comisionesconstruccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_ladm_cadastral_manager_data.gc_comisionesconstruccion USING gist (geometria);
 U   DROP INDEX test_ladm_cadastral_manager_data.gc_comisionesconstruccion_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    613            \            1259    585344 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_ladm_cadastral_manager_data.gc_comisionesunidadconstruccion USING gist (geometria);
 V   DROP INDEX test_ladm_cadastral_manager_data.gc_comisionesnddcnstrccion_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    615            Y            1259    585334 "   gc_comisionesterreno_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_ladm_cadastral_manager_data.gc_comisionesterreno USING gist (geometria);
 P   DROP INDEX test_ladm_cadastral_manager_data.gc_comisionesterreno_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    614            _            1259    585356    gc_construccion_gc_predio_idx    INDEX     x   CREATE INDEX gc_construccion_gc_predio_idx ON test_ladm_cadastral_manager_data.gc_construccion USING btree (gc_predio);
 K   DROP INDEX test_ladm_cadastral_manager_data.gc_construccion_gc_predio_idx;
        test_ladm_cadastral_manager_data         postgres    false    616            `            1259    585355    gc_construccion_geometria_idx    INDEX     w   CREATE INDEX gc_construccion_geometria_idx ON test_ladm_cadastral_manager_data.gc_construccion USING gist (geometria);
 K   DROP INDEX test_ladm_cadastral_manager_data.gc_construccion_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    616            c            1259    585354 %   gc_construccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_ladm_cadastral_manager_data.gc_construccion USING btree (tipo_construccion);
 S   DROP INDEX test_ladm_cadastral_manager_data.gc_construccion_tipo_construccion_idx;
        test_ladm_cadastral_manager_data         postgres    false    616            �            1259    585489    gc_copropiedad_gc_matriz_idx    INDEX     v   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_ladm_cadastral_manager_data.gc_copropiedad USING btree (gc_matriz);
 J   DROP INDEX test_ladm_cadastral_manager_data.gc_copropiedad_gc_matriz_idx;
        test_ladm_cadastral_manager_data         postgres    false    630            �            1259    585490    gc_copropiedad_gc_unidad_idx    INDEX     v   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_ladm_cadastral_manager_data.gc_copropiedad USING btree (gc_unidad);
 J   DROP INDEX test_ladm_cadastral_manager_data.gc_copropiedad_gc_unidad_idx;
        test_ladm_cadastral_manager_data         postgres    false    630            �            1259    585701    gc_copropiedad_gc_unidad_key    INDEX     }   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_ladm_cadastral_manager_data.gc_copropiedad USING btree (gc_unidad);
 J   DROP INDEX test_ladm_cadastral_manager_data.gc_copropiedad_gc_unidad_key;
        test_ladm_cadastral_manager_data         postgres    false    630            d            1259    585363 "   gc_datosphcondominio_gc_predio_idx    INDEX     �   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_ladm_cadastral_manager_data.gc_datosphcondominio USING btree (gc_predio);
 P   DROP INDEX test_ladm_cadastral_manager_data.gc_datosphcondominio_gc_predio_idx;
        test_ladm_cadastral_manager_data         postgres    false    617            g            1259    585370 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     �   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_ladm_cadastral_manager_data.gc_datostorreph USING btree (gc_datosphcondominio);
 V   DROP INDEX test_ladm_cadastral_manager_data.gc_datostorreph_gc_datosphcondominio_idx;
        test_ladm_cadastral_manager_data         postgres    false    618            j            1259    585381 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_ladm_cadastral_manager_data.gc_direccion USING btree (gc_prediocatastro_direcciones);
 Y   DROP INDEX test_ladm_cadastral_manager_data.gc_direccion_gc_prediocatastro_dirccnes_idx;
        test_ladm_cadastral_manager_data         postgres    false    619            k            1259    585380 %   gc_direccion_geometria_referencia_idx    INDEX     �   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_ladm_cadastral_manager_data.gc_direccion USING gist (geometria_referencia);
 S   DROP INDEX test_ladm_cadastral_manager_data.gc_direccion_geometria_referencia_idx;
        test_ladm_cadastral_manager_data         postgres    false    619            n            1259    585388 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_ladm_cadastral_manager_data.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 \   DROP INDEX test_ladm_cadastral_manager_data.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
        test_ladm_cadastral_manager_data         postgres    false    620            q            1259    585398    gc_manzana_geometria_idx    INDEX     m   CREATE INDEX gc_manzana_geometria_idx ON test_ladm_cadastral_manager_data.gc_manzana USING gist (geometria);
 F   DROP INDEX test_ladm_cadastral_manager_data.gc_manzana_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    621            t            1259    585408    gc_perimetro_geometria_idx    INDEX     q   CREATE INDEX gc_perimetro_geometria_idx ON test_ladm_cadastral_manager_data.gc_perimetro USING gist (geometria);
 H   DROP INDEX test_ladm_cadastral_manager_data.gc_perimetro_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    622            �            1259    585481 &   gc_prediocatastro_condicion_predio_idx    INDEX     �   CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_ladm_cadastral_manager_data.gc_prediocatastro USING btree (condicion_predio);
 T   DROP INDEX test_ladm_cadastral_manager_data.gc_prediocatastro_condicion_predio_idx;
        test_ladm_cadastral_manager_data         postgres    false    629            �            1259    585482 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_ladm_cadastral_manager_data.gc_prediocatastro USING btree (sistema_procedencia_datos);
 ]   DROP INDEX test_ladm_cadastral_manager_data.gc_prediocatastro_sistema_procedencia_datos_idx;
        test_ladm_cadastral_manager_data         postgres    false    629            w            1259    585418 %   gc_propietario_gc_predio_catastro_idx    INDEX     �   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_ladm_cadastral_manager_data.gc_propietario USING btree (gc_predio_catastro);
 S   DROP INDEX test_ladm_cadastral_manager_data.gc_propietario_gc_predio_catastro_idx;
        test_ladm_cadastral_manager_data         postgres    false    623            z            1259    585428    gc_sectorrural_geometria_idx    INDEX     u   CREATE INDEX gc_sectorrural_geometria_idx ON test_ladm_cadastral_manager_data.gc_sectorrural USING gist (geometria);
 J   DROP INDEX test_ladm_cadastral_manager_data.gc_sectorrural_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    624            }            1259    585438    gc_sectorurbano_geometria_idx    INDEX     w   CREATE INDEX gc_sectorurbano_geometria_idx ON test_ladm_cadastral_manager_data.gc_sectorurbano USING gist (geometria);
 K   DROP INDEX test_ladm_cadastral_manager_data.gc_sectorurbano_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    625            �            1259    585449    gc_terreno_gc_predio_idx    INDEX     n   CREATE INDEX gc_terreno_gc_predio_idx ON test_ladm_cadastral_manager_data.gc_terreno USING btree (gc_predio);
 F   DROP INDEX test_ladm_cadastral_manager_data.gc_terreno_gc_predio_idx;
        test_ladm_cadastral_manager_data         postgres    false    626            �            1259    585448    gc_terreno_geometria_idx    INDEX     m   CREATE INDEX gc_terreno_geometria_idx ON test_ladm_cadastral_manager_data.gc_terreno USING gist (geometria);
 F   DROP INDEX test_ladm_cadastral_manager_data.gc_terreno_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    626            �            1259    585461 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_ladm_cadastral_manager_data.gc_unidadconstruccion USING btree (gc_construccion);
 W   DROP INDEX test_ladm_cadastral_manager_data.gc_unidadconstruccion_gc_construccion_idx;
        test_ladm_cadastral_manager_data         postgres    false    627            �            1259    585460 #   gc_unidadconstruccion_geometria_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_ladm_cadastral_manager_data.gc_unidadconstruccion USING gist (geometria);
 Q   DROP INDEX test_ladm_cadastral_manager_data.gc_unidadconstruccion_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    627            �            1259    585459 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_ladm_cadastral_manager_data.gc_unidadconstruccion USING btree (tipo_construccion);
 Y   DROP INDEX test_ladm_cadastral_manager_data.gc_unidadconstruccion_tipo_construccion_idx;
        test_ladm_cadastral_manager_data         postgres    false    627            �            1259    585471    gc_vereda_geometria_idx    INDEX     k   CREATE INDEX gc_vereda_geometria_idx ON test_ladm_cadastral_manager_data.gc_vereda USING gist (geometria);
 E   DROP INDEX test_ladm_cadastral_manager_data.gc_vereda_geometria_idx;
        test_ladm_cadastral_manager_data         postgres    false    628            D            1259    585270     gm_surface2dlistvalue_avalue_idx    INDEX     }   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_ladm_cadastral_manager_data.gm_surface2dlistvalue USING gist (avalue);
 N   DROP INDEX test_ladm_cadastral_manager_data.gm_surface2dlistvalue_avalue_idx;
        test_ladm_cadastral_manager_data         postgres    false    607            E            1259    585271 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_ladm_cadastral_manager_data.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 b   DROP INDEX test_ladm_cadastral_manager_data.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
        test_ladm_cadastral_manager_data         postgres    false    607            J            1259    585287     gm_surface3dlistvalue_avalue_idx    INDEX     }   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_ladm_cadastral_manager_data.gm_surface3dlistvalue USING gist (avalue);
 N   DROP INDEX test_ladm_cadastral_manager_data.gm_surface3dlistvalue_avalue_idx;
        test_ladm_cadastral_manager_data         postgres    false    609            K            1259    585288 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_ladm_cadastral_manager_data.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 b   DROP INDEX test_ladm_cadastral_manager_data.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
        test_ladm_cadastral_manager_data         postgres    false    609            �            1259    585720 &   t_ili2db_attrname_sqlname_colowner_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_sqlname_colowner_key ON test_ladm_cadastral_manager_data.t_ili2db_attrname USING btree (sqlname, colowner);
 T   DROP INDEX test_ladm_cadastral_manager_data.t_ili2db_attrname_sqlname_colowner_key;
        test_ladm_cadastral_manager_data         postgres    false    641    641            �            1259    585499    t_ili2db_basket_dataset_idx    INDEX     t   CREATE INDEX t_ili2db_basket_dataset_idx ON test_ladm_cadastral_manager_data.t_ili2db_basket USING btree (dataset);
 I   DROP INDEX test_ladm_cadastral_manager_data.t_ili2db_basket_dataset_idx;
        test_ladm_cadastral_manager_data         postgres    false    631            �            1259    585718     t_ili2db_dataset_datasetname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_ladm_cadastral_manager_data.t_ili2db_dataset USING btree (datasetname);
 N   DROP INDEX test_ladm_cadastral_manager_data.t_ili2db_dataset_datasetname_key;
        test_ladm_cadastral_manager_data         postgres    false    632            �            1259    585719 '   t_ili2db_model_iliversion_modelname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_iliversion_modelname_key ON test_ladm_cadastral_manager_data.t_ili2db_model USING btree (iliversion, modelname);
 U   DROP INDEX test_ladm_cadastral_manager_data.t_ili2db_model_iliversion_modelname_key;
        test_ladm_cadastral_manager_data         postgres    false    636    636            �            2606    585607 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT     (  ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_ladm_cadastral_manager_data.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
        test_ladm_cadastral_manager_data       postgres    false    8327    612    627            �            2606    585623 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_cadastral_manager_data.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
        test_ladm_cadastral_manager_data       postgres    false    8334    616    629            �            2606    585612 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_cadastral_manager_data.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
        test_ladm_cadastral_manager_data       postgres    false    8359    616    639            �            2606    585702 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_ladm_cadastral_manager_data.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
        test_ladm_cadastral_manager_data       postgres    false    630    8334    629            �            2606    585707 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_ladm_cadastral_manager_data.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
        test_ladm_cadastral_manager_data       postgres    false    630    8334    629            �            2606    585635 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_cadastral_manager_data.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
        test_ladm_cadastral_manager_data       postgres    false    617    629    8334            �            2606    585645 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_ladm_cadastral_manager_data.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
        test_ladm_cadastral_manager_data       postgres    false    8294    617    618            �            2606    585650 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_ladm_cadastral_manager_data.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
        test_ladm_cadastral_manager_data       postgres    false    619    629    8334            �            2606    585655 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_ladm_cadastral_manager_data.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
        test_ladm_cadastral_manager_data       postgres    false    620    629    8334            �            2606    585691 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_cadastral_manager_data.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
        test_ladm_cadastral_manager_data       postgres    false    629    8355    637            �            2606    585696 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_ladm_cadastral_manager_data.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
        test_ladm_cadastral_manager_data       postgres    false    8357    629    638            �            2606    585660 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_cadastral_manager_data.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
        test_ladm_cadastral_manager_data       postgres    false    623    629    8334            �            2606    585668 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_cadastral_manager_data.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
        test_ladm_cadastral_manager_data       postgres    false    626    629    8334            �            2606    585686 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_ladm_cadastral_manager_data.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
        test_ladm_cadastral_manager_data       postgres    false    616    8290    627            �            2606    585673 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_cadastral_manager_data.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
        test_ladm_cadastral_manager_data       postgres    false    8359    627    639            �            2606    585596 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_ladm_cadastral_manager_data.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
        test_ladm_cadastral_manager_data       postgres    false    607    608    8265            �            2606    585601 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_ladm_cadastral_manager_data.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
        test_ladm_cadastral_manager_data       postgres    false    8271    610    609            �            2606    585713 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_ladm_cadastral_manager_data.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_cadastral_manager_data.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
        test_ladm_cadastral_manager_data       postgres    false    8346    631    632            D!      x������ � �      E!      x������ � �      F!      x������ � �      G!      x������ � �      H!      x������ � �      ^!   �  x��V;OA��~Ŗ Y'�7ebE��*���n���}DJ���]��c������$[���~�7�� ��'VPcq��o�g`�b(���Ⱥ���lXQW�T�s��/j���8�'�|ă�d�bnp������Q�Q;Y'�@hp�B!kaڟSՀl5�ҽ��|�]HG^#ȝ|�+`M���A��A'K�3����TjᰒV���Z�X�@�e6K�;��\.��"���8ō�ɇ�4N�=1�F�B�X��G�
�#��.a���ZѼ���#q癰 ]z^��>��|�mi�7��R�T�h�[�� �TiOjU�M:e?�l�V�2���x�:�ߡ=���:��!^g���7C��.r�ң�&p�Ff��߉�]�o�������t��[v�q����ǯ`�չ�@��	|��t��8ɥ��+���l�{��j{#��FM#�p�����NF��7N�גQ �17%�$���@#K�>���/&�����Fq�I��2��u%�*��i��lQd{w|��F�?Ho��<�� 1č��뾙Ȟ ����n���]�@��=0K��8M���t���|�s���mA%"��R�_��-jhNiӣ!�3��!�
�����8�U4{h�&~;�Ġ����|��).-��DJ��&�+�s�x�p�W��T���ѐu��R��尸x����1K�T�Q�!���Y�X��*��LN(ȔLD�:K��	��b=      I!      x������ � �      W!      x������ � �      J!      x������ � �      K!      x������ � �      L!      x������ � �      M!      x������ � �      N!      x������ � �      O!      x������ � �      V!      x������ � �      P!      x������ � �      Q!      x������ � �      R!      x������ � �      _!   �   x�34�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,����4��s1�8�*��3��s��q��(�V 9�צ �@�p�K{�;:�qSѱ����I�9�B�x]������=... D�oB      S!      x������ � �      T!      x������ � �      `!   �   x���1�0E��9 �Z	NСb�R`��ƕ"�6$�^���� bBb�����z-�t�٢g���f��Ÿp0,� �jS�1{rlÔqGǴs'C'*���0��L��GprP�9����v���R��Ζ=��1�R�rdS��F�z��Ztl��;.r?ٗ6{��@x��K���FZZJ� �z�      U!      x������ � �      A!      x������ � �      C!      x������ � �      @!      x������ � �      B!      x������ � �      b!   a  x��[Mo�6=+?��4��G��fHR#�䴀@K��BU}���ɡDI��n9�����p��#}h��Ly&�E�沎�y��*ް��MŲ��6��ڲ�S����/�HY��H�$�X�ۢa���S��Uⴊ�?��s��
���T�d�.^	YE�)3[�!�i�~=��&xo/jYG�~.�3���O�D�\�Γw��ћ~N�3���-l��o��x!W�3[���$`�S��)
a (
3�]ݰT-�L!^g�jX�M��tlFt6 JP��E�4��b��
6,o"aꋞ1md^ʂ�N�]�=�x�=��W�hT/�.��Q�n�P�QL�f�����EE]P�YO�aS(���Z�+��^�4?t�@v����y%�]����������ӯ��a��>įw���c��f�8��K�/�Չ˜7���)�sUUcU�U�4u����O_2]�g����W��* �Z�m*#�5�$���7x�Z憰����'�T�5�{�>�}����`���r���6 q5��t�l�סt��&�*��̏�n�0���l���r�*��qĠ��!�E��7<���Om�0CɳL�2�Q��@�{�,"h���k�Щ��bQ������)QF ������C���h~�P��b�n���~����b��dd6�
�Vx���3[��T��&$.n��P"�>K�2��D�-4��x�z�(��(u���.H���â�H�����U�'.M�����K��b5�z��t��i��V&�P4�N4��>��g�!=��]�e�6(qG����a�B{��I'�Ã�W�B��&h�@g3���>@�s��d�~&�Rh5֔N)�6��\����H�5⯖+��>F�ed(M$��II�RY!�Vh@q�kCA�^{�бx��~ՏZ���_�/2&�X�w���`I_'�ѻ�|O�Od0�F�=� {�wq�s�S�;=��xU4�ʐI��<LSx3��Ё��L�zRS��Y����Y{4���`6�JZ��3?	�&JPRu�%���G R(:Q^�	H��UNPF[�\F�+�F�^��W�:D�'����N�������ч�4Jb�2�*��o��ǇpD��k"�g\����e�.�V�t-u�5aW��D�����N�{���¤�/��U�}�$A�')AS���:{cz���3�&(�7��'�-�̜����<���l`^�(��k��6R��&_�4��"d�E�D���d���C����v|P#+��W��������Qq3�M��&h+�"�>c䳥�!��&kxnu�\�P�&���-8�,�ð���������Y;����]���� (q��ړ�.Ԧ@A[r|�Z�R��Ƞ�$��#����x�DF=6���Ib����
��r����4�ݥa��a
�kO�6s6�#<Q�m^�~M�m���N������_�c`/��?u�O�>�Jm��=��Ux�1æ�xx���wI!�<��R˨�Io��b���Gv%�d�ǐ����Y����a�����Ht�ӛ]<w�́���g��G}��+G<C�3dm�5FaP����9 ,�W	.���8�4�
3$m����<�L0�f[�]�p����H��P ��M��G��-.�K�(/����� �<���ʹ�����;����;�w!�c��qV��(���,��L_#�4���;Id�~�J�:�O'X��{�m1�C����=\JA���ICB���9�q���x�L�P��c�ۮ6lrϝ�>���>�^�;�x��]�;������(4G�z�?�Э��ZS2Y-%:�_ƌ��rR}���Ry1��6�W6������?�t|�      X!      x������ � �      a!     x��VMo�0=�?&h�ðc�i��5�4��"�� [$������v��E����=Z$MR$�v�(�"wҶ��d�)C
�u��d� W�u��� �j�J�݂1 ��6�.�Y�eC7����	Ae�sO��A����U�^�>m�'���u�l��P��<��8����h���w+�Pҳ-c��IL>K�)o��,��_�Q��!�1N�c��ގ�j�F������j2���Z�F8O'��%��&��5�g���_���F��U��������~���.����ik'�ּP���!M`l��/vw�ս�nG����^�kϾ!�]�U�)��ј�.Ũ�����[����k�J�N���X���-�V?mh�o�V���y	�� ���[zƆ�?T�`�I�O=���A�{l��=�F1���#�XK�.G�P!����s�O�R�o��P��	����m�8=Z�bO�FGu�	�K3a99��1���E(��U���5�??-��}�f��Y����S      c!   �  x��\�n�F=���?���sl�b˂-`��![�����n�s�!�MW�X���7i��<|USݬ��z]�1����LP���.w��w	��SV�5>�e���ߓs��}z8OIS]��^u�2�g�$�M�Ғ�����c��E:U�qՒ��ܑ%�,NIQ��|�)��P�թh�F���=�����nQ�ͩ�CY�M���>��8��P[В���2'�֨�L��H���P�Q,>��} ���}��`N���7h��)�u��,FE�a�j�����#��z<{���l/�u��~G�T�?#�eJ�e�����{�(��,�H�za?RBwR<[�+kL��o�뎭H�9�:A���J��G�`�w�w�uS}û7�7����Q��P]�v-�@'�x�)�ȄwQ�ꞅ�Q?�!3 \*��w�������A�Ю�#�Q��)�a���yb�S\!Hg9�T��S�!�-��=:��eG�́�I_��\a�*@C 뽶G�M�2H�\tÞ�=�.���$��ۯ��GM�H��oy�;� )���W�O5WS�J���=���z߂XU�X;�f���J�T�W:G,$=�qr6��L���;�6�U"H/D!	��_*"�5['���������t6u���}B�+ �-HʲN_��
�
w��C�^���9��*�T���*��_+�{���������y�����U�ϟ�QqAU��b����囚����/��C���;�g.GW�;J���AL�rv1��9*�����;���oЎ׼5]R��j�ei䐍Ղ�D,�L�O�e��k�;��#^�����Bhj��&bH�Q8h���e�r�
�k�"/�:Xh�z���w��A*M��Mސ�����N�+M�\��XGj<l�~�R�w�p(��{�'�&z�V ��S��2���-]��'{_R�.��7/}-�=�y�z �"L.$�� <u*�~��S�g�F�@��[��*>���SA��
gI�����GU�>Q�ʧ0����t����2����F�g���;��}����"f;��v~���'/^��98���/�B_󗇢���t-����S���l�g}� ��o�T��]L[�8*�7N����]l��xM}̿nʼ�R��Ei�����$X5_Ȋ��Zdd��yS�,��HH��Ff� 6,�a��)��E��\�V!޲ߘ�ӝ��*n����&��-N����j��a\-�����<�8�hR�\52&�|+�3I�u������Խ���H����G����jT{���5c������9��p} U�lr��t�%�Jt���)�x�S��;?���Ҡ�Cߕ���9.�4���K�/Nm-��j��,#c�c�ثg�_�`z)H��c.�Y��k|�,�4��[��q���|�W��o��/?�~��~� �$�����P��|}5�C�WZM4F���㷸���rE5�V�������> ���,��gaU��
kS���rtx�.G����]�4�\�
2fRЂ�*���jN����-t��O�1�L�TF�̄ʸ�S� ?e-��b/�*����)Y@�������{\u��q�M�;�U��+��o��7�E4��q�L�����6o�O�Ǖ2g,F[D�o�Z��^���@]�f�q�Pe��#+�jj�V��P%�{�&]���P���$���pT�rZ��������q\YMI�o�-�"�6j�qGە�H$����Rސ�RS�R6�R��˚S� ��0��|]�v���xW�5==NN���4�)�x1,X'�R8ͳϐz�a9��åt-By�P61�C\���,�77�����vZ:T�|�J�m:d��B�-�N͵��^0-Zu����a��b�BG����R.b��r�S����6��l�C��V9���!� �	�e�%y�@ly0�m���)]{5�_C��J���]T�8�e���U��7�ح�]�ֱ�VY�h�x�����C3���8�:ܒ�N��K��^��I��>����%���ci]��%۰�1r���0[pkه�y��\�CCx�n��;���E���0��1L5����d8�lrͩ)�`eW���.���D��J=H��տE��| �7�ㆍ��D\mc�.9:hv"�����L��8_��F���#�.�gG�#Ύ�kG���)�Wz�{���7>��_�r��Y���Z���",#��2�����ggg���K      Y!      x������ � �      Z!   _  x��U�n�0<78T=Ҥ
H@�rB�{)�;��ү��T���Bb{Kv����x\�C�֚-����,G�a)8��@ͪ�M��,�S�#[m���&*�fL��GɁK�vJ
�V�����i��',���)�<�b5��KV�]�f�7G�8�VҺ
j�4zJ����/aaPH�U��C�bط"�}c$��)�"t��4F��4�Ι���G�C�u��=�e絯�=M�ދu ��?*�Q_�������/Av۞���fZa ���k��A�\�������!����D�!rH�S���������m�=��q���S�<?��ѕI�#�>���N(�;      e!      x��]Koܸ�^w�
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
��	�兾�ʑ�w�m�|U6},k�ee7�a������@�:�I-�����l��|�����?����@�4      ]!      x��}Ms�ȕ��+0�X�K�%�����H��HIi�p;*��dP
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
��n[7�'�fR�D�Z���Pэ᪱ ���P�&��/��-���jk�%�z9兰��i����ڶ(F��U�������NҪ�Z%}\nRA�k]������%I��X�B�`sDQ�lQ B��%]��NW��]�=b-\s��Ζj]KPZ)*;n�K���;��`S���"��^/ű�[������T�3뙼U�ޞ�[�[_�S�L��}����������ݝ������-�c���J�p�o�6z�T��FD����3�w��Ӄ�����Q�9%x(�G�n�"xp=�M_<y��?l�?DyO6��O(
,������2=���n?��=��y�:ɱt�y�;��jkXc���l?��>��Re�g;���]ԡt7���nuàsvr���<�]�}�@M����G����<��N���y��c�����Q �8��3�;yw�����������-��8w�z�������p�	?��m���^{<�Z���MF0�P�+i����?�s�}��wvu���$��z
��l���L��p~uciRl:����܏5�%�L���F�B�,('�x����P�#�$�: �� �&|�4��(͠�����֫�\�Hhw�H�׎�zU$�kLB�G�L�$T=�H�ww�a� ��:I�n � ���,���xU���V�8/.9��������}ג<ʯ߀�����Xj�WWЩ��oA���㳪�ݦ31�{�Z�]%l��[���S��m�jF�,}q���䐺��$J�>�|�x��D� 8|{zrvq^�����F+d�>&�pM-��L_�/��A���GҤJ�q��c}|�v��/�I��5�NP'�?�/L��������N%`m�27TT2�$���t1��Yu �`�'2&,<OѤ���
���0Ɗ�	���n�7\��j��̥v6O�{��;`�vs~�񧲇�Q(�7��,�@��󟰮.ޤ��-ET�"�Sj%�v�����WΎ�%Vm 5J��J�T�кI������w�.d>�)�2o}5
����š��E�'�7�6��De�[������ܭ�7Ј�Zh��)=l@�C��+R�������Tk<����;���n9��-G@A��� ���($|���_8���G[q�MY1����D`.P+�y+>н��?(Q?.`v��ʹ�r𠏂%L�z�Rj NZ��
)����t�.cX������1�	�y��n-B#oNN��������a&&*
,J�����j�hc�^܌)|yK�:���&HGE��'~7��w5l�:��G���6����Q�����b`�O=/&��Ƙӵ�t\c�{�����k��Z8($X��0�GXsZ���g���3���]�e��		?0�q=�2,���h�;2�塶����t��Q�A�L
q�{u�:��bGﱢ�ԉ(�S��&���\�lS3S�Q�)L50�q��K�Y���b_��H���������#���s}�S�׎b�躁j��o"��ਓU+e� �0�� �88|��o9�����;-�럼:9Z�~z�Ǝ��kQʻ�o1�jl�o�
�|a�	{�Q.0�RċSy9��c��\`h@k���{7��@�wZCK��bH3�D|T�(/h���a=N6�U�qqrz�g�(�l/��ο	���\��̺��{��[b��|/�)װ3y3�:V���(xE=�I��H����՝�������1����%�ӡD����t��3VPfX�,C3x��͗u�FUh8��yq�Q�U�2_�qT�AJ����]L��c��^c�5L�h��B'���y��%T�`���ɪ��#�u۶����!-��P_�[�
�A�;�+����\�Ln6N�c�m����m���(5�����|�j:���ߦ&NX�4MdQ�T�Aњ᫡��㿰�j�Յ��{��nn��A|�)��5��|���׀`MO6i8;�p?�R�r�5Ȃi�U)���� Fn�1�Ϳx[��Bߕ&�u�<��T�X9�a|&ń�Ȼ�.��?��+���s���d�떋v<W�N�=,�*�mv��:�e�O��WP��X{��xMsZu*k9�z�3�z�K�{���2W���de�Ԫ��%S��럃d�h�Pb-\��-��Z��A��՘�.�V'�"���Ų�rľ�*L�Ț�ds�m^���Z�I�_J�����B9����0��V�TcA7PE�K1������XK�戼�!T]S_j;wQt�~����4�3x��Fw�SU�67����`*��Z���9���iX�F���V���9��zz����g,>��ﶴr���z_�����3��2�r���fR47SQ���F���V��T�,��4��:kN�Z��<��$������D|
�Hכ]���2�o�����0�����s6���*۟S � Z�Z;ؠlX��0�v�O�]TK;v��|�k���S<�4��Qw:�'��A�B%i[��-0��$�k#�)#֫��|��M+�l�ٷ��k|�A���:�k�M�Zd���V�Rsc}��
+�NВ�%�p�j�Ų��K�&6�;3��#*�d���w��/���j�Ìf!��RkB�Ek.���c��}���V�+�	�;�z R:��y�0����b�뛤��ʮ}��q��ix��Ԃ�>�4�ҙ�aM/-Y����\��x�l+��vo��4/������� r�)A��L�j�yF�����K��w��m�Ioo;�>R+D�m�]��#�7�3� ��$�!�Ej,�S=y꟝�cb���1�HŌ���(B����s��s�Ñ �1kN�|�V5#_s��S�����Z�}Vr/��Cg�]��Jp ��^8pa������{�5Z�Z��C�Lum��և̻�;����0��{P_9��������aڗG#*F��#���D}n�Ե�e��U���}//�~�9�uB��l?�z`�:99:�;��<�IDȶ�rdP�U���� �%�ӿ:�8���7e���f�e�駆����ީc]o��n������Z=9|ǅW�ݢ>6fe0����w`+�kC��=z^oǖ.2IJ���NW'�r�tB	Tn68�f���Z���C�!�#y_m��)�Ko�����>i�DR��Y=RN�I�|
�p���o�˲%_�k:��N0�Gځ� ]w���R�f���:�Н���{j�Z    ��FT�F��y�a�w�}$d�e�en](쩹��Ab�=�6 �t�;-��K�"��2ۚ�۩ P��w�����r�g_��\̦DC�п^D��ocY���v�@e�r�P;�ޮ��LO�Bg��Zx�gR���HO]6\���@婿�0(�mM uX2*HR�� imEg���wV���V �1����J�8h�|�iL��	���Y)f��?��u�&���+���\q�?�_���_�j9X��65�Y�B~�t�B�Q��&!(��IpO�{U0�Ǻ��%�4�T0N��g�ƙ�W�(��|�3��+��.�(�jSD,S�W��j��4����g���� Օ&t.��Co+Zԍ`G�G�b�^�6��]����l�f#[h��Nv�u� �|)[9��;��۱���/�3<�X8q���yg����H�Sc.E�=@�w]���𝅘𝅥�Ʉ/�V��0��.c^}
0:�Dނ���3T��S�@�fU3�)+M��JVd�i�.y\&����E,��^6҃w]�T���ʂ�iþڍ��á���yAeI�Z��Dc,������눌��7�����`�H�/�n#�/"�6;�&'�c��7rޭ2��U�UC��'d(�7��D��A����LVV7�}	˝fhYR�q.HQ�󣌉*w<0�]���0<�]҉_�p-(�e��֎n-.���D��I��u�V���됆����nf?`�&���:Y�wu9VN
J}*�?&�Y�U�<���ߨ�e��)�}���d��ک5�Tַ SX�)- =�h_"�h}W{�7����#[����,�B����"�k�C�:���Z�=�s�,��/޽'������$��e`��p_���� =�����C��N?�ʊ��������,�!0dU�^4��q�cp=`��mF��L{@�|��E���$����娕##UY;�T��.���� 8dm�\MD�:)�k��T�,l��!{��f&:u�[����%XK�@�%^�_��n�k�e$�X9��?�.Rl���)VZGk��wa����æЯ5U
M�+0-B��K������Y����^��f�m��W�o���dv�Q�އvv�ǻ�|{�uB�+\� �Y*C��z_�a檨�M.��.���!�G�6�>]U��AU�fi���
��ަ�5��=��1�� J�_����T)���\��7�
pV���0��\s�C${�w�
X�7V��޸�g�/	��ӧ�����T�B��tU�wo��R4:�5W�i!�$m�*����VU�ƚөB� ��4-b�8y˕�?��������p���� y��L-Ո\�ޒ����d������T����EF���q)ޓ����pV����U&^��:����~�a�r{q�
�Ծb&@���>�����AB��7R9P9�0�ƚ��xH�A$C��՞orE��U0YJ5Ɩ�C�e��>/�GUf?�&��;���X(3�����u7����v������3Mu<��s�o^���;��5Q���N}'x��m�Np�!�_g"!�)��6,��#�Ç����i$xuV#�oDv�<�QZG��3�])@����n8�� G��E�;$�Ȼ�\#�[-��3е00W�$Vf��@lb�WTY�R��_���c�Sd�T�Eq{�/�/����������sǯ�f�z��w�7q��
�qX�-n������ i�Tcb�Ҙ��Ѝ@W5!������1�M�����C����q��� ���3�l����t�<��0�W���iN�:�x^P$�01w8M�|�:Ė��¦Irݜ���e�4�y�0���L	ۼ��	�ݮHn�<?�����=)^��6�P�45W](}�F�������s{���wk,�ͻ��e�VMë�g�����R�\��>�+��Á�VҸfitЂ:�k��Y��җݿU�2R�WC�h���)G�O(�|z���y�L���~c`]T_[Z�b M�'��ch��.��\����6[�Ń9�kPD��I�5&�i)_Zȇ��*�H=ɚ96��iu>�)ҕY�F�� \U�
4}HU
�:]"V�LD%�A\��b����,�Z�\�e�ֶ��4 ���?��ǆ_[O���jM��@7�ف�+ك{!�&�|�m\k���-��n�[e�R�]z��ʁ��`tG�����"�n�M�
꛺{�������׳��œ'?��������lh�yB��%���F�p�'ߗ����_ޅ���FF��WÎ���^�܍|�&���qb(�������;�⠰H�k�+��"��'��eT�N4N?�^/a�A��xMUf�ޱ���C�K�-oÔ��6�?�x���e��`{{7����Ű���	����l�z��m������`�{�����pt}8�>ݧ��g�Үiׇ��C��C��C��C������������������|�z>
{>`=��Gχ��S��>O}8��{�����Sҧ>��|����=�{�����3�g>`�J��(��!��!�������������������1����ñ���������s��>�}8��z���G�s��>��}Hw}Hw}Hw}Hw}Hw}Hw}Hw}Hw}Hw}Hw}H7�||�xs�y����ܾ��K�~���7K~���7}�󏫞M�g�=��|F��po��'��N��]q�>��>Jv�3p�GѮ��]����O�]����O�]����ϯ]����9���˰IK1��I�E��M�I���'�B���rڮ�S��P�w�1�2� ��$�U�(rHKYQ����b����p�E��.>dݶε3УA�ؿ�=�'��V�ZQ�lf����,��\o��ܶ�;�}an���������vۧ�m�o��}ۧ�m���}B��w��O�۾0����O��>�o����s��0��}�Oו�>�4LN���Yz5��Wi����]�6G��*�<N��zFT;�Ƃ�m�b(F���:�2�!_�Q�|�����(�=����
 <��t���?-_T��f�T֤�P��Ezu�<��F�"�r�D��Abm�1Et��^з����}�T����99&pLhJ��hV0s<�Ԥ��oc�{i_T9F��ݲ�PJj�KM�d�/�%*�:�2jh�y�1�/��m����z�)��w'�]�$��<P��aϘNXo��^*����:��0)6����g!�&�OC~pM�h6*���iG�#A�	�vU$�x�KV��(7i|#� ��Eߓx���y�g�����u���!��:�ր�h�6��[�eF����{%1m�c�=_���J@ϗ�{���{�R�x��ɟ���#�ft2����qJ����]z��@Xk4,�qJQ�N�8�EO)4m@�Jx_:�`i!�l�N1ܙy.�Eb�]�!~���U��8�V�y���3� C���i��L6�|���
� 
��o4�'��q:s6+QDL�z
U�=N�û�;�ڭ�[u#�*��a�����|�K:����yذHWf�5�ΨZ9cLU{��s��F(�F�#'hj�a�`p��w�e��u��#�<��4���	�scX�%Ѝ�� ncܪ���wa��l�9��Y���
�u���q�x0I��Fp��0��N dK�*>�0����J��lȱ,����!7�Х�@��h�^�w�s)1ٝ�΄�� 
���+�ȇ4�h��fx,�*��Bn k5��yK��P���ăK4��yD�O���8�u�6�S�Z@H���b�Q�%���A5��C;�$J�2#TU��P��$���)�	6IUt���c
nP�bۀ�sX<�D��{׍�.	d-����#��F'X!���4�g������8�j��|��zdV3�q�J�GmiFlCF����̏9l7�*ÆX���zG�:ء/CFQX�}��}��}�2*�2�g�Sf6�� �R��3������~�#ª� �g�tK�hŚ+��%�b-�b��;U��M"D
]�)26�Y;��J���e��v��C �
  YtY�(������#)�xd����v����!��"���68k9���XH��20�-�m�{xa+0�K�b`��Jf�yV/�N胏�n���V 1�Ǝ���}Pbqې�0� ���F&_�;oz�V��kpR	G��\y!,�NY<��I�bC1�1C�~;*0I1��me� 
����<�F�?�}uU�!���[��X���ϱ�LB�a�+k�>�!=�L��B�b��ߛp�הּ�4[Ȓ/�����?����S	pGz:�LMpB�Cy.���2��Z 5�!]�����;<u��O˻�`��W��#��0[���	ŏbL����g?�f��R�D��4Q�
ܤz<բ��ʰ��˥
o� ���Hj��Dʈe��J3��X�3�c��u-�s��L�b���z�.����5	������n�)�Q�j�nCF	Nb�*'CLP����.�b�H] �p��D�o:��-��WT�&mD�ü4��G�4�1I|$���ȶ�,�.�v�E"�LU
�$!��1�$5y� ��PG3Q�a�,�S�%�+��N����=�m�_$U��B�� ғ��T$����f�7E8��Iʡ4�5�X�I�8o�ږ��T��(W��'V,�"4���K��F6��;�g��I.�CS <�t�M�r��Ph���uE�"q'8��ݚ���=˗�ӂޕ�9i����\	��Ȥ���YÊ��OP�!�D|$�4�H)��>�%�<#$J�O���2�>U�)ڕT2���4�t&�|Q,�-�QU�rx�|9��|�aj����1t��W��R����_���Q�2M���7C�}����;Y���q}f�����qZ�,'����L^�O�b�7����d��U�vF�L]�ۥ�P);�k��f��I�.&�/��*+�]���d
O�;>��z�wl'��p�m�'��䠐,���(�
����U! �мv+�s�7��082�vTW�o�=d�����'�K�A�/T���bA��_X	hf��H�1�A������U�\���e\!�
穆v�9c�w/�Ek���)'���M9�_�A�5��R]�})�b��DA3����P3�Q��ed��x�%kWfZ����I����|a�4��u}�n�)�|q���ukt%��u}���ɷ�V\�c�Ot'����@b��j]����T490r��_.Z�L�0r�B��tQ�5<Z7���(��j=a�����.�!֓Q�4��b&�JjW����o4�c��o$�(*�p�5�nAFJțҚ-���::��Tp)n��T���Yx��6Fd��r#I="V�I�1�+'x���b	K3:���og�:�"�����sK2niMX����Ʋ����eR��qm:�޹� �L}g_Y]�~���3�Oc@bK��i�tK�{}��w�՗��d����Ce&���3���h�΢-K�!��NՁºtp�Š%���52�+��$���RP��OiL ؉��P�ǽ;E�x�EW:|��f%nX�EZ3B#�����1nP#��7���o�F��?�sYD�p�� ��f/�$==-���&M�A���
RG^m/ˏK:���t��5%Nܫ��\��ֶg�:�P�ݯDc�m�v4	�V��1�
W�J~�D���̿�����R��ܔ9/��,�vuw0�瞫�õ��d�Ey$W�*pd�����lx�U��+�(��1I�T9cL~W�
��%N�|��n��&K�_���Q*�u\�^���N:Ёh"�
x��|���ظ�f���e�����z��.���t��Q��.%�/������*��ՁHЪ����5X��ľn!���F�}K�2�+�.]��,�E�����eJ������U�8*�~��$���Jl����Y!q���"xL6f��
K���6�����q�V�͉F���v�����I�QŴ(z#W��	0hˋ}�h�<KK����PXǃ�����D��gKEUt�G���B�U�T�n�JR��9��r��:��Rų�w�#_�"!�`k$�P��%�SFD>yH݌2�hM�''�C����td,�����}v�-�Sv�1��͝����XY���ϒ'�@����O[�Zq�«�2m��du�jE\]�!U*�_�nc3C*M���}���4���!��k}d�밤 r�dK��1z��������G`6Z�r�|+�
i�n-f������K�	U ������T7�M�T�o*<-4A�slxe�"bIq"��T�r="J5��d�R]�Ių��i�鿒G��-F�%����~��%�:��/,[tx|88���dbLu�l��؜���P�ʗ:�WU=�Ǐ_nĮ^��j��+��
mvФ��ݫ۹�I� �����J���p���w���ӯ����}�������}�W~��w��wjF�J�x���|5l��]��;�eE��Y�ʛ���U�.��@]bŉo����S$�8ӛ�Fgv�b��ʠ���P�)o������X�+ئ5�P���j�۳U��J8u}b�U�)�▏�V�����WR�բ�F���i�'�T�����!
-�^�/k���8�tij5�(���Y��TO}C��=�E�;�d�-o���tbt���*d�N�-R@I�ћ>p�jc��XWj�,�]g@W�PD_�R�ll�����&h?��;A�鋭�[����_}��_������V      [!   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      d!     x���Kn�0���)�L7^8'HU�	�8�muU��{ �(*�ܩ�!+�m*�Du+|?���:�}C��jY1�(U5��j�Ns<ќ
Z��\���$�l�ʟ�#�3(�0�D+�g�h�l���g�w��d=��^A����ٗ4;K���ԉS��� �=9����/����W(Z��m�l�o�&7�R���\D?�g�s��?��jN���e����9�v��_Q"��{9����W\���<��n蘤c�3}�����l%�ðjk�tc@��3S*�QU���/\�]�CM��O֝��-}�ς���FI%*Ӑ �i�������I�֧�tg�Z2]�����.�[���li���ݝ5�#邞�������yɈ(h�Z=�w�gP�^{�V fz��i�-y��S7�6:'�rWf��5흊~����eS#F肋�Sv�锦D̾��M������Jқ~ڠ0�|�`�-A���xe�A?�c���6rY@F��^���E����?�xu��{���y�$4��<      \!   �  x��X�N�0=ӏ�h{@K�
�������=%#%v�EH|=N�h�l�`�h��7ϳ='wE�V�]J�je��U��`�X[�q2��-��,U5R��F��x�`I	U4EB�DM$�#��)rW�3��~ZSP��߻u~����d�F�%W�E,w���P�h5�;jWYʝ^ǅ��wPA��cn�-�=�.B9�G�l�f���S%���ܯBzp'I���~n,�}�彗����"\�'��a~C�CE+��.v�a�cJ�']���ta�}��o��e~3<���jr=��r�fs6��d4�9���{9j<�"c�P9��#L!_/��A{���3x��"���(��D<�"��tk<D	�EkiJ?���$���V#6e�A�Z���ՇH�8��=�b������98��=���%��{��_��й���V�׀�?�נ���4vX��B|�ڃ�7|A����6a�C��'���Ȱ��     