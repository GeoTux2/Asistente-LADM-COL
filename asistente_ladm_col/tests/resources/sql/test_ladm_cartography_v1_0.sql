PGDMP     	                     x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) <   X&           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            Y&           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            Z&           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            [&           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false                        2615    586423    test_ladm_cadastral_cartography    SCHEMA     /   CREATE SCHEMA test_ladm_cadastral_cartography;
 -   DROP SCHEMA test_ladm_cadastral_cartography;
             postgres    false            �           1259    586424    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_ladm_cadastral_cartography.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE test_ladm_cadastral_cartography.t_ili2db_seq;
       test_ladm_cadastral_cartography       postgres    false    16            %           1259    587520 	   cc_barrio    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.cc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(2) NOT NULL,
    nombre character varying(100) NOT NULL,
    codigo_sector character varying(2),
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 6   DROP TABLE test_ladm_cadastral_cartography.cc_barrio;
       test_ladm_cadastral_cartography         postgres    false    699    16            \&           0    0    TABLE cc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.cc_barrio IS 'Zona ocupada por un barrio dado y su determinación toponímica y catastral.';
            test_ladm_cadastral_cartography       postgres    false    805            ]&           0    0    COLUMN cc_barrio.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_barrio.codigo IS 'Código del barrio aprobado por el acuerdo municipal, su número corresponderá al que se haya determinado en la norma.';
            test_ladm_cadastral_cartography       postgres    false    805            ^&           0    0    COLUMN cc_barrio.nombre    COMMENT     }   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_barrio.nombre IS 'Nombre del barrio aprobado en el acuerdo municipal.';
            test_ladm_cadastral_cartography       postgres    false    805            _&           0    0    COLUMN cc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_barrio.codigo_sector IS 'Código del sector catastral donde se encuentra el barrio.';
            test_ladm_cadastral_cartography       postgres    false    805            `&           0    0    COLUMN cc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_ladm_cadastral_cartography       postgres    false    805                       1259    587419    cc_centropoblado    TABLE     ^  CREATE TABLE test_ladm_cadastral_cartography.cc_centropoblado (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(2) NOT NULL,
    nombre character varying(50) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 =   DROP TABLE test_ladm_cadastral_cartography.cc_centropoblado;
       test_ladm_cadastral_cartography         postgres    false    699    16            a&           0    0    COLUMN cc_centropoblado.codigo    COMMENT        COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_centropoblado.codigo IS 'Código de identificación del centro poblado.';
            test_ladm_cadastral_cartography       postgres    false    795            b&           0    0    COLUMN cc_centropoblado.nombre    COMMENT     k   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_centropoblado.nombre IS 'Nombre del centro poblado.';
            test_ladm_cadastral_cartography       postgres    false    795            c&           0    0 !   COLUMN cc_centropoblado.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_centropoblado.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el centro poblado.';
            test_ladm_cadastral_cartography       postgres    false    795                       1259    587429    cc_corregimiento    TABLE     ^  CREATE TABLE test_ladm_cadastral_cartography.cc_corregimiento (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(2) NOT NULL,
    nombre character varying(50) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 =   DROP TABLE test_ladm_cadastral_cartography.cc_corregimiento;
       test_ladm_cadastral_cartography         postgres    false    699    16            d&           0    0    TABLE cc_corregimiento    COMMENT     ?  COMMENT ON TABLE test_ladm_cadastral_cartography.cc_corregimiento IS 'Es una división del departamento, al tenor del Decreto 2274 del 4 de octubre de 1991, la cual incluye un núcleo de población. Según esta misma disposición, los ahora corregimientos departamentales no forman parte de un determinado municipio.';
            test_ladm_cadastral_cartography       postgres    false    796            e&           0    0    COLUMN cc_corregimiento.codigo    COMMENT     ~   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_corregimiento.codigo IS 'Código de identificación del corregimiento.';
            test_ladm_cadastral_cartography       postgres    false    796            f&           0    0    COLUMN cc_corregimiento.nombre    COMMENT     j   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_corregimiento.nombre IS 'Nombre del corregimiento.';
            test_ladm_cadastral_cartography       postgres    false    796            g&           0    0 !   COLUMN cc_corregimiento.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_corregimiento.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el corregimiento.';
            test_ladm_cadastral_cartography       postgres    false    796                       1259    587439    cc_limitemunicipio    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.cc_limitemunicipio (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2) NOT NULL,
    codigo_municipio character varying(5) NOT NULL,
    nombre_municipio character varying(255) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 ?   DROP TABLE test_ladm_cadastral_cartography.cc_limitemunicipio;
       test_ladm_cadastral_cartography         postgres    false    699    16            h&           0    0    TABLE cc_limitemunicipio    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.cc_limitemunicipio IS 'Límites geográficos fijados entre municipios que determinan su jurisdicción territorial.';
            test_ladm_cadastral_cartography       postgres    false    797            i&           0    0 -   COLUMN cc_limitemunicipio.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_limitemunicipio.codigo_departamento IS 'Código de 2 dígitos correspondiente al departamento donde se encuentra el municipio según la clasificación del Divipola.';
            test_ladm_cadastral_cartography       postgres    false    797            j&           0    0 *   COLUMN cc_limitemunicipio.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_limitemunicipio.codigo_municipio IS 'Código de 3 dígitos correspondiente al municipio según la clasificación del Divipola.';
            test_ladm_cadastral_cartography       postgres    false    797            k&           0    0 *   COLUMN cc_limitemunicipio.nombre_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_limitemunicipio.nombre_municipio IS 'Nombre del municipio según la clasificación del Divipola.';
            test_ladm_cadastral_cartography       postgres    false    797            l&           0    0 #   COLUMN cc_limitemunicipio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_limitemunicipio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por limite del municipio.';
            test_ladm_cadastral_cartography       postgres    false    797            $           1259    587510    cc_localidadcomuna    TABLE     `  CREATE TABLE test_ladm_cadastral_cartography.cc_localidadcomuna (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(2) NOT NULL,
    nombre character varying(50) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 ?   DROP TABLE test_ladm_cadastral_cartography.cc_localidadcomuna;
       test_ladm_cadastral_cartography         postgres    false    699    16            m&           0    0    TABLE cc_localidadcomuna    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.cc_localidadcomuna IS 'Unidad administrativa en la cual se subdivide el área urbana de una ciudad media o principal del país, que agrupa barrios o sectores determinados.';
            test_ladm_cadastral_cartography       postgres    false    804            n&           0    0     COLUMN cc_localidadcomuna.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_localidadcomuna.codigo IS 'Código de la localidad o comuna aprobada por el acuerdo municipal, su número corresponderá al que se haya determinado en la norma.';
            test_ladm_cadastral_cartography       postgres    false    804            o&           0    0     COLUMN cc_localidadcomuna.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_localidadcomuna.nombre IS 'Nombre de la localidad o comuna aprobada por el acuerdo municipal.';
            test_ladm_cadastral_cartography       postgres    false    804            p&           0    0 #   COLUMN cc_localidadcomuna.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_localidadcomuna.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por la localidad o comuna.';
            test_ladm_cadastral_cartography       postgres    false    804                       1259    587449 
   cc_manzana    TABLE     w  CREATE TABLE test_ladm_cadastral_cartography.cc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(4) NOT NULL,
    codigo_barrio character varying(2),
    nombre character varying(50),
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 7   DROP TABLE test_ladm_cadastral_cartography.cc_manzana;
       test_ladm_cadastral_cartography         postgres    false    699    16            q&           0    0    TABLE cc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.cc_manzana IS 'Es una superficie de espacio geograáfico delimitada por calles en sus cuatro lados.';
            test_ladm_cadastral_cartography       postgres    false    798            r&           0    0    COLUMN cc_manzana.codigo    COMMENT     t   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_manzana.codigo IS 'Código de identificación de la manzana.';
            test_ladm_cadastral_cartography       postgres    false    798            s&           0    0    COLUMN cc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_manzana.codigo_barrio IS 'Código de identificación del barrio donde se encuentra la manzana.';
            test_ladm_cadastral_cartography       postgres    false    798            t&           0    0    COLUMN cc_manzana.nombre    COMMENT     `   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_manzana.nombre IS 'Nombre de la manzana.';
            test_ladm_cadastral_cartography       postgres    false    798            u&           0    0    COLUMN cc_manzana.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_manzana.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por la manzana.';
            test_ladm_cadastral_cartography       postgres    false    798            �           1259    586477    cc_metodooperacion    TABLE     m  CREATE TABLE test_ladm_cadastral_cartography.cc_metodooperacion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    formula character varying(255) NOT NULL,
    dimensiones_origen integer,
    ddimensiones_objetivo integer,
    col_transformacion_transformacion bigint,
    CONSTRAINT cc_metodooperacion_ddimensiones_objetivo_check CHECK (((ddimensiones_objetivo >= 0) AND (ddimensiones_objetivo <= 999999999))),
    CONSTRAINT cc_metodooperacion_dimensiones_origen_check CHECK (((dimensiones_origen >= 0) AND (dimensiones_origen <= 999999999)))
);
 ?   DROP TABLE test_ladm_cadastral_cartography.cc_metodooperacion;
       test_ladm_cadastral_cartography         postgres    false    699    16            v&           0    0    TABLE cc_metodooperacion    COMMENT       COMMENT ON TABLE test_ladm_cadastral_cartography.cc_metodooperacion IS 'Estructura que proviene de la traducción de la clase CC_OperationMethod de la ISO 19111. Indica el método utilizado, mediante un algoritmo o un procedimiento, para realizar operaciones con coordenadas.';
            test_ladm_cadastral_cartography       postgres    false    706            w&           0    0 !   COLUMN cc_metodooperacion.formula    COMMENT     �  COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_metodooperacion.formula IS 'Fórmulas o procedimientos utilizadoa por este método de operación de coordenadas. Esto puede ser una referencia a una publicación. Tenga en cuenta que el método de operación puede no ser analítico, en cuyo caso este atributo hace referencia o contiene el procedimiento, no una fórmula analítica.';
            test_ladm_cadastral_cartography       postgres    false    706            x&           0    0 ,   COLUMN cc_metodooperacion.dimensiones_origen    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_metodooperacion.dimensiones_origen IS 'Número de dimensiones en la fuente CRS de este método de operación de coordenadas.';
            test_ladm_cadastral_cartography       postgres    false    706            y&           0    0 /   COLUMN cc_metodooperacion.ddimensiones_objetivo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_metodooperacion.ddimensiones_objetivo IS 'Número de dimensiones en el CRS de destino de este método de operación de coordenadas.';
            test_ladm_cadastral_cartography       postgres    false    706            z&           0    0 ;   COLUMN cc_metodooperacion.col_transformacion_transformacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_metodooperacion.col_transformacion_transformacion IS 'Fórmula o procedimiento utilizado en la transformación.';
            test_ladm_cadastral_cartography       postgres    false    706                       1259    587459    cc_nomenclaturavial    TABLE     ]  CREATE TABLE test_ladm_cadastral_cartography.cc_nomenclaturavial (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_via bigint NOT NULL,
    numero_via character varying(100) NOT NULL,
    geometria public.geometry(MultiLineStringZ,38820) NOT NULL
);
 @   DROP TABLE test_ladm_cadastral_cartography.cc_nomenclaturavial;
       test_ladm_cadastral_cartography         postgres    false    699    16            {&           0    0    TABLE cc_nomenclaturavial    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.cc_nomenclaturavial IS 'La Nomenclatura Vial es el conjunto de caracteres alfanuméricos que se emplean para identificar una vía espacialmente.';
            test_ladm_cadastral_cartography       postgres    false    799            |&           0    0 #   COLUMN cc_nomenclaturavial.tipo_via    COMMENT     g   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_nomenclaturavial.tipo_via IS 'Tipo de eje vial.';
            test_ladm_cadastral_cartography       postgres    false    799            }&           0    0 %   COLUMN cc_nomenclaturavial.numero_via    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_nomenclaturavial.numero_via IS 'Indica el número o nombre del tipo de vía.';
            test_ladm_cadastral_cartography       postgres    false    799            ~&           0    0 $   COLUMN cc_nomenclaturavial.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_nomenclaturavial.geometria IS 'Geometría de tipo línea que corresponde a la representación espacial de la vía.';
            test_ladm_cadastral_cartography       postgres    false    799            I           1259    587835    cc_nomenclaturavial_tipo_via    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.cc_nomenclaturavial_tipo_via (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_cadastral_cartography.cc_nomenclaturavial_tipo_via;
       test_ladm_cadastral_cartography         postgres    false    699    16                        1259    587470    cc_perimetrourbano    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.cc_perimetrourbano (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2) NOT NULL,
    codigo_municipio character varying(5) NOT NULL,
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50) NOT NULL,
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 ?   DROP TABLE test_ladm_cadastral_cartography.cc_perimetrourbano;
       test_ladm_cadastral_cartography         postgres    false    699    16            &           0    0    TABLE cc_perimetrourbano    COMMENT       COMMENT ON TABLE test_ladm_cadastral_cartography.cc_perimetrourbano IS 'Es la delimitación física del suelo urbano, determina su área y se representa gráficamente por una línea imaginaria continua que divide el suelo urbano del suelo rural y del suelo de expansión urbana.';
            test_ladm_cadastral_cartography       postgres    false    800            �&           0    0 -   COLUMN cc_perimetrourbano.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_perimetrourbano.codigo_departamento IS 'Código de 2 dígitos correspondiente al departamento donde se encuentra el municipio según la clasificación del Divipola.';
            test_ladm_cadastral_cartography       postgres    false    800            �&           0    0 *   COLUMN cc_perimetrourbano.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_perimetrourbano.codigo_municipio IS 'Código de 3 dígitos correspondiente al municipio según la clasificación del Divipola.';
            test_ladm_cadastral_cartography       postgres    false    800            �&           0    0 %   COLUMN cc_perimetrourbano.tipo_avaluo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_perimetrourbano.tipo_avaluo IS 'Tipo de avaluo del perimetro urbano que para efectos catastrales es 01.';
            test_ladm_cadastral_cartography       postgres    false    800            �&           0    0 +   COLUMN cc_perimetrourbano.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_perimetrourbano.nombre_geografico IS 'Nombre geográfico del perimetro urbano, ejemplo, TABIO.';
            test_ladm_cadastral_cartography       postgres    false    800            �&           0    0 '   COLUMN cc_perimetrourbano.codigo_nombre    COMMENT     w   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_perimetrourbano.codigo_nombre IS 'Codgio del nombre geografico.';
            test_ladm_cadastral_cartography       postgres    false    800            �&           0    0 #   COLUMN cc_perimetrourbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_perimetrourbano.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el perímetro urbano.';
            test_ladm_cadastral_cartography       postgres    false    800            !           1259    587480    cc_sectorrural    TABLE     1  CREATE TABLE test_ladm_cadastral_cartography.cc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 ;   DROP TABLE test_ladm_cadastral_cartography.cc_sectorrural;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE cc_sectorrural    COMMENT       COMMENT ON TABLE test_ladm_cadastral_cartography.cc_sectorrural IS 'Es la delimitación física del suelo rual, determina su área y se representa gráficamente por una línea imaginaria continua que divide el suelo urbano del suelo rural y del suelo de expansión urbana.';
            test_ladm_cadastral_cartography       postgres    false    801            �&           0    0    COLUMN cc_sectorrural.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_sectorrural.codigo IS 'Código de identificación del sector rural catastral.';
            test_ladm_cadastral_cartography       postgres    false    801            �&           0    0    COLUMN cc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_sectorrural.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el sector rural.';
            test_ladm_cadastral_cartography       postgres    false    801            "           1259    587490    cc_sectorurbano    TABLE     2  CREATE TABLE test_ladm_cadastral_cartography.cc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 <   DROP TABLE test_ladm_cadastral_cartography.cc_sectorurbano;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE cc_sectorurbano    COMMENT       COMMENT ON TABLE test_ladm_cadastral_cartography.cc_sectorurbano IS 'Es la delimitación física del suelo urbano, determina su área y se representa gráficamente por una línea imaginaria continua que divide el suelo urbano del suelo rural y del suelo de expansión urbana.';
            test_ladm_cadastral_cartography       postgres    false    802            �&           0    0    COLUMN cc_sectorurbano.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_sectorurbano.codigo IS 'Código de identificación única del sector catastral.';
            test_ladm_cadastral_cartography       postgres    false    802            �&           0    0     COLUMN cc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_sectorurbano.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el sector urbano catastral.';
            test_ladm_cadastral_cartography       postgres    false    802            #           1259    587500 	   cc_vereda    TABLE       CREATE TABLE test_ladm_cadastral_cartography.cc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(4) NOT NULL,
    nombre character varying(50) NOT NULL,
    codigo_sector character varying(2),
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 6   DROP TABLE test_ladm_cadastral_cartography.cc_vereda;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE cc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.cc_vereda IS 'Unidad geográfica rural conformada por un número determinado de predios pertenecientes a una o varias parcelaciones, delimitado por accidentes geográficos naturales o vías.';
            test_ladm_cadastral_cartography       postgres    false    803            �&           0    0    COLUMN cc_vereda.codigo    COMMENT     r   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_vereda.codigo IS 'Código de identificación de la vereda.';
            test_ladm_cadastral_cartography       postgres    false    803            �&           0    0    COLUMN cc_vereda.nombre    COMMENT     ^   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_vereda.nombre IS 'Nombre de la vereda.';
            test_ladm_cadastral_cartography       postgres    false    803            �&           0    0    COLUMN cc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_vereda.codigo_sector IS 'Código del sector catastral donde se encuentra localizada la vereda.';
            test_ladm_cadastral_cartography       postgres    false    803            �&           0    0    COLUMN cc_vereda.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.cc_vereda.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por la vereda.';
            test_ladm_cadastral_cartography       postgres    false    803            1           1259    587619    ci_forma_presentacion_codigo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.ci_forma_presentacion_codigo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_cadastral_cartography.ci_forma_presentacion_codigo;
       test_ladm_cadastral_cartography         postgres    false    699    16            <           1259    587718    col_areatipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_areatipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_cadastral_cartography.col_areatipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586484    col_areavalor    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_areavalor (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 :   DROP TABLE test_ladm_cadastral_cartography.col_areavalor;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    COLUMN col_areavalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_areavalor.tipo IS 'Indica si el valor a registrar corresponde al área gráfica o alfanumérica de la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    707            �&           0    0    COLUMN col_areavalor.area    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_areavalor.area IS 'Corresponde al valor del área registrada en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    707            �&           0    0 %   COLUMN col_areavalor.datos_proyeccion    COMMENT     Y  COMMENT ON COLUMN test_ladm_cadastral_cartography.col_areavalor.datos_proyeccion IS 'Parametros de la proyección utilizada para el cálculo del área de la forma proj, ejemplo: ''EPSG:3116'', ''+proj=tmerc +lat_0=4.59620041666667 +lon_0=-74.0775079166667 +k=1 +x_0=1000000 +y_0=1000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs''';
            test_ladm_cadastral_cartography       postgres    false    707            �&           0    0 )   COLUMN col_areavalor.lc_construccion_area    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_areavalor.lc_construccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_cadastral_cartography       postgres    false    707            �&           0    0 $   COLUMN col_areavalor.lc_terreno_area    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_areavalor.lc_terreno_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_cadastral_cartography       postgres    false    707            �&           0    0 0   COLUMN col_areavalor.lc_servidumbretransito_area    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_areavalor.lc_servidumbretransito_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_cadastral_cartography       postgres    false    707            �&           0    0 /   COLUMN col_areavalor.lc_unidadconstruccion_area    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_areavalor.lc_unidadconstruccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_cadastral_cartography       postgres    false    707            �           1259    586753    col_baunitcomointeresado    TABLE     E  CREATE TABLE test_ladm_cadastral_cartography.col_baunitcomointeresado (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint NOT NULL
);
 E   DROP TABLE test_ladm_cadastral_cartography.col_baunitcomointeresado;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586662    col_baunitfuente    TABLE       CREATE TABLE test_ladm_cadastral_cartography.col_baunitfuente (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    unidad bigint NOT NULL
);
 =   DROP TABLE test_ladm_cadastral_cartography.col_baunitfuente;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586677    col_cclfuente    TABLE       CREATE TABLE test_ladm_cadastral_cartography.col_cclfuente (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl bigint NOT NULL,
    fuente_espacial bigint NOT NULL
);
 :   DROP TABLE test_ladm_cadastral_cartography.col_cclfuente;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586717    col_clfuente    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.col_clfuente (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 9   DROP TABLE test_ladm_cadastral_cartography.col_clfuente;
       test_ladm_cadastral_cartography         postgres    false    699    16            V           1259    587952    col_contenidoniveltipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_contenidoniveltipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_cadastral_cartography.col_contenidoniveltipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            >           1259    587736    col_dimensiontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_dimensiontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_cadastral_cartography.col_dimensiontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            f           1259    588096    col_estadodisponibilidadtipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_estadodisponibilidadtipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_cadastral_cartography.col_estadodisponibilidadtipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            l           1259    588150    col_estadoredserviciostipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_estadoredserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 G   DROP TABLE test_ladm_cadastral_cartography.col_estadoredserviciostipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            Y           1259    587979    col_estructuratipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_estructuratipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_cadastral_cartography.col_estructuratipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            S           1259    587925    col_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_cadastral_cartography.col_fuenteadministrativatipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            5           1259    587655    col_fuenteespacialtipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_fuenteespacialtipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_cadastral_cartography.col_fuenteespacialtipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            3           1259    587637    col_grupointeresadotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_grupointeresadotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 D   DROP TABLE test_ladm_cadastral_cartography.col_grupointeresadotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            E           1259    587799    col_interpolaciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_interpolaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_cadastral_cartography.col_interpolaciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            O           1259    587889    col_iso19125_tipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_iso19125_tipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_cadastral_cartography.col_iso19125_tipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586696 
   col_masccl    TABLE     w  CREATE TABLE test_ladm_cadastral_cartography.col_masccl (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_mas bigint NOT NULL,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint,
    ue_mas_lc_construccion bigint
);
 7   DROP TABLE test_ladm_cadastral_cartography.col_masccl;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586734 	   col_mascl    TABLE     Y  CREATE TABLE test_ladm_cadastral_cartography.col_mascl (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint,
    ue_mas_lc_construccion bigint
);
 6   DROP TABLE test_ladm_cadastral_cartography.col_mascl;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586685    col_menosccl    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_menosccl (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_menos bigint NOT NULL,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint,
    ue_menos_lc_construccion bigint
);
 9   DROP TABLE test_ladm_cadastral_cartography.col_menosccl;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586724    col_menoscl    TABLE     c  CREATE TABLE test_ladm_cadastral_cartography.col_menoscl (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint,
    ue_menos_lc_construccion bigint
);
 8   DROP TABLE test_ladm_cadastral_cartography.col_menoscl;
       test_ladm_cadastral_cartography         postgres    false    699    16            i           1259    588123    col_metodoproducciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_metodoproducciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 E   DROP TABLE test_ladm_cadastral_cartography.col_metodoproducciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586780    col_miembros    TABLE     =  CREATE TABLE test_ladm_cadastral_cartography.col_miembros (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    agrupacion bigint NOT NULL
);
 9   DROP TABLE test_ladm_cadastral_cartography.col_miembros;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586707    col_puntoccl    TABLE     M  CREATE TABLE test_ladm_cadastral_cartography.col_puntoccl (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint,
    ccl bigint NOT NULL
);
 9   DROP TABLE test_ladm_cadastral_cartography.col_puntoccl;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586744    col_puntocl    TABLE     3  CREATE TABLE test_ladm_cadastral_cartography.col_puntocl (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint
);
 8   DROP TABLE test_ladm_cadastral_cartography.col_puntocl;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586641    col_puntofuente    TABLE     \  CREATE TABLE test_ladm_cadastral_cartography.col_puntofuente (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint
);
 <   DROP TABLE test_ladm_cadastral_cartography.col_puntofuente;
       test_ladm_cadastral_cartography         postgres    false    699    16            U           1259    587943    col_puntotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_cadastral_cartography.col_puntotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            Q           1259    587907    col_redserviciostipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_redserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_cadastral_cartography.col_redserviciostipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            W           1259    587961    col_registrotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_registrotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_cadastral_cartography.col_registrotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586626    col_relacionfuente    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.col_relacionfuente (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL
);
 ?   DROP TABLE test_ladm_cadastral_cartography.col_relacionfuente;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586670    col_relacionfuenteuespacial    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.col_relacionfuenteuespacial (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 H   DROP TABLE test_ladm_cadastral_cartography.col_relacionfuenteuespacial;
       test_ladm_cadastral_cartography         postgres    false    699    16            /           1259    587601    col_relacionsuperficietipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_relacionsuperficietipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 G   DROP TABLE test_ladm_cadastral_cartography.col_relacionsuperficietipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586762    col_responsablefuente    TABLE     Q  CREATE TABLE test_ladm_cadastral_cartography.col_responsablefuente (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint
);
 B   DROP TABLE test_ladm_cadastral_cartography.col_responsablefuente;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586606    col_rrrfuente    TABLE     .  CREATE TABLE test_ladm_cadastral_cartography.col_rrrfuente (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    rrr_lc_restriccion bigint,
    rrr_lc_derecho bigint
);
 :   DROP TABLE test_ladm_cadastral_cartography.col_rrrfuente;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586771    col_topografofuente    TABLE     G  CREATE TABLE test_ladm_cadastral_cartography.col_topografofuente (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    topografo_lc_interesado bigint,
    topografo_lc_agrupacioninteresados bigint
);
 @   DROP TABLE test_ladm_cadastral_cartography.col_topografofuente;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586527    col_transformacion    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_transformacion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    localizacion_transformada public.geometry(PointZ,38820) NOT NULL,
    lc_puntocontrol_transformacion_y_resultado bigint,
    lc_puntolindero_transformacion_y_resultado bigint,
    lc_puntolevantamiento_transformacion_y_resultado bigint
);
 ?   DROP TABLE test_ladm_cadastral_cartography.col_transformacion;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE col_transformacion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.col_transformacion IS 'Registro de la fórmula o procedimiento utilizado en la transformación y de su resultado.';
            test_ladm_cadastral_cartography       postgres    false    710            �&           0    0 3   COLUMN col_transformacion.localizacion_transformada    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_transformacion.localizacion_transformada IS 'Geometría una vez realizado el proceso de transformación.';
            test_ladm_cadastral_cartography       postgres    false    710            �&           0    0 D   COLUMN col_transformacion.lc_puntocontrol_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_transformacion.lc_puntocontrol_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_cadastral_cartography       postgres    false    710            �&           0    0 D   COLUMN col_transformacion.lc_puntolindero_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_transformacion.lc_puntolindero_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_cadastral_cartography       postgres    false    710            �&           0    0 J   COLUMN col_transformacion.lc_puntolevantamiento_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_transformacion.lc_puntolevantamiento_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_cadastral_cartography       postgres    false    710            �           1259    586615    col_uebaunit    TABLE     h  CREATE TABLE test_ladm_cadastral_cartography.col_uebaunit (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    baunit bigint NOT NULL
);
 9   DROP TABLE test_ladm_cadastral_cartography.col_uebaunit;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586651    col_uefuente    TABLE     q  CREATE TABLE test_ladm_cadastral_cartography.col_uefuente (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    fuente_espacial bigint NOT NULL
);
 9   DROP TABLE test_ladm_cadastral_cartography.col_uefuente;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586596    col_ueuegrupo    TABLE     Y  CREATE TABLE test_ladm_cadastral_cartography.col_ueuegrupo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    parte_lc_terreno bigint,
    parte_lc_servidumbretransito bigint,
    parte_lc_unidadconstruccion bigint,
    parte_lc_construccion bigint
);
 :   DROP TABLE test_ladm_cadastral_cartography.col_ueuegrupo;
       test_ladm_cadastral_cartography         postgres    false    699    16            T           1259    587934 "   col_unidadadministrativabasicatipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_unidadadministrativabasicatipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 O   DROP TABLE test_ladm_cadastral_cartography.col_unidadadministrativabasicatipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            \           1259    588006    col_unidadedificaciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_unidadedificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_ladm_cadastral_cartography.col_unidadedificaciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586633    col_unidadfuente    TABLE       CREATE TABLE test_ladm_cadastral_cartography.col_unidadfuente (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    unidad bigint NOT NULL
);
 =   DROP TABLE test_ladm_cadastral_cartography.col_unidadfuente;
       test_ladm_cadastral_cartography         postgres    false    699    16            [           1259    587997    col_volumentipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.col_volumentipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_cadastral_cartography.col_volumentipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586585    col_volumenvalor    TABLE       CREATE TABLE test_ladm_cadastral_cartography.col_volumenvalor (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    volumen_medicion numeric(15,1) NOT NULL,
    tipo bigint NOT NULL,
    lc_construccion_volumen bigint,
    lc_terreno_volumen bigint,
    lc_servidumbretransito_volumen bigint,
    lc_unidadconstruccion_volumen bigint,
    CONSTRAINT col_volumenvalor_volumen_medicion_check CHECK (((volumen_medicion >= 0.0) AND (volumen_medicion <= 99999999999999.9)))
);
 =   DROP TABLE test_ladm_cadastral_cartography.col_volumenvalor;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE col_volumenvalor    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.col_volumenvalor IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar la medición de un volumen y la naturaleza de este.';
            test_ladm_cadastral_cartography       postgres    false    716            �&           0    0 (   COLUMN col_volumenvalor.volumen_medicion    COMMENT     w   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_volumenvalor.volumen_medicion IS 'Medición del volumen en m3.';
            test_ladm_cadastral_cartography       postgres    false    716            �&           0    0    COLUMN col_volumenvalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_volumenvalor.tipo IS 'Indicación de si el volumen es calculado, si figura como oficial o si se da otra circunstancia.';
            test_ladm_cadastral_cartography       postgres    false    716            �&           0    0 /   COLUMN col_volumenvalor.lc_construccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_volumenvalor.lc_construccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    716            �&           0    0 *   COLUMN col_volumenvalor.lc_terreno_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_volumenvalor.lc_terreno_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    716            �&           0    0 6   COLUMN col_volumenvalor.lc_servidumbretransito_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_volumenvalor.lc_servidumbretransito_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    716            �&           0    0 5   COLUMN col_volumenvalor.lc_unidadconstruccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.col_volumenvalor.lc_unidadconstruccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    716            �           1259    586573 
   extarchivo    TABLE     &  CREATE TABLE test_ladm_cadastral_cartography.extarchivo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_ladm_cadastral_cartography.extarchivo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE extarchivo    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
            test_ladm_cadastral_cartography       postgres    false    715            �&           0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
            test_ladm_cadastral_cartography       postgres    false    715            �&           0    0    COLUMN extarchivo.datos    COMMENT     j   COMMENT ON COLUMN test_ladm_cadastral_cartography.extarchivo.datos IS 'Datos que contiene el documento.';
            test_ladm_cadastral_cartography       postgres    false    715            �&           0    0    COLUMN extarchivo.extraccion    COMMENT     z   COMMENT ON COLUMN test_ladm_cadastral_cartography.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
            test_ladm_cadastral_cartography       postgres    false    715            �&           0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
            test_ladm_cadastral_cartography       postgres    false    715            �&           0    0    COLUMN extarchivo.fecha_entrega    COMMENT     }   COMMENT ON COLUMN test_ladm_cadastral_cartography.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
            test_ladm_cadastral_cartography       postgres    false    715            �&           0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_cadastral_cartography       postgres    false    715            �&           0    0 7   COLUMN extarchivo.lc_fuenteadministrtiva_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extarchivo.lc_fuenteadministrtiva_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_cadastral_cartography       postgres    false    715            �&           0    0 2   COLUMN extarchivo.lc_fuenteespacial_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extarchivo.lc_fuenteespacial_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_cadastral_cartography       postgres    false    715            �           1259    586498    extdireccion    TABLE        CREATE TABLE test_ladm_cadastral_cartography.extdireccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 9   DROP TABLE test_ladm_cadastral_cartography.extdireccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE extdireccion    COMMENT        COMMENT ON TABLE test_ladm_cadastral_cartography.extdireccion IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_cadastral_cartography       postgres    false    708            �&           0    0     COLUMN extdireccion.localizacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extdireccion.localizacion IS 'Par de valores georreferenciados (x,y) en la que se encuentra la dirección.';
            test_ladm_cadastral_cartography       postgres    false    708            �&           0    0 2   COLUMN extdireccion.extinteresado_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extdireccion.extinteresado_ext_direccion_id IS 'Identificador externo del interesado.';
            test_ladm_cadastral_cartography       postgres    false    708            �&           0    0 4   COLUMN extdireccion.lc_construccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extdireccion.lc_construccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    708            �&           0    0 '   COLUMN extdireccion.lc_predio_direccion    COMMENT     p   COMMENT ON COLUMN test_ladm_cadastral_cartography.extdireccion.lc_predio_direccion IS 'Dirección del predio.';
            test_ladm_cadastral_cartography       postgres    false    708            �&           0    0 /   COLUMN extdireccion.lc_terreno_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extdireccion.lc_terreno_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    708            �&           0    0 ;   COLUMN extdireccion.lc_servidumbretransito_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extdireccion.lc_servidumbretransito_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    708            �&           0    0 :   COLUMN extdireccion.lc_unidadconstruccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extdireccion.lc_unidadconstruccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    708            a           1259    588051     extdireccion_clase_via_principal    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.extdireccion_clase_via_principal (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 M   DROP TABLE test_ladm_cadastral_cartography.extdireccion_clase_via_principal;
       test_ladm_cadastral_cartography         postgres    false    699    16            d           1259    588078    extdireccion_sector_ciudad    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.extdireccion_sector_ciudad (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 G   DROP TABLE test_ladm_cadastral_cartography.extdireccion_sector_ciudad;
       test_ladm_cadastral_cartography         postgres    false    699    16            -           1259    587583    extdireccion_sector_predio    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.extdireccion_sector_predio (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 G   DROP TABLE test_ladm_cadastral_cartography.extdireccion_sector_predio;
       test_ladm_cadastral_cartography         postgres    false    699    16            h           1259    588114    extdireccion_tipo_direccion    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.extdireccion_tipo_direccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 H   DROP TABLE test_ladm_cadastral_cartography.extdireccion_tipo_direccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586555    extinteresado    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.extinteresado (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    nombre character varying(255),
    documento_escaneado character varying(255),
    extredserviciosfisica_ext_interesado_administrador_id bigint,
    lc_agrupacionintersdos_ext_pid bigint,
    lc_interesado_ext_pid bigint
);
 :   DROP TABLE test_ladm_cadastral_cartography.extinteresado;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE extinteresado    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.extinteresado IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_cadastral_cartography       postgres    false    713            �&           0    0    COLUMN extinteresado.nombre    COMMENT     m   COMMENT ON COLUMN test_ladm_cadastral_cartography.extinteresado.nombre IS 'Campo de nombre del interesado.';
            test_ladm_cadastral_cartography       postgres    false    713            �&           0    0 (   COLUMN extinteresado.documento_escaneado    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extinteresado.documento_escaneado IS 'Ruta de almacenamiento del documento escaneado del interesado.';
            test_ladm_cadastral_cartography       postgres    false    713            �&           0    0 J   COLUMN extinteresado.extredserviciosfisica_ext_interesado_administrador_id    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extinteresado.extredserviciosfisica_ext_interesado_administrador_id IS 'Identificador de referencia a un interesado externo que es el administrador.';
            test_ladm_cadastral_cartography       postgres    false    713            �&           0    0 3   COLUMN extinteresado.lc_agrupacionintersdos_ext_pid    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extinteresado.lc_agrupacionintersdos_ext_pid IS 'Identificador del interesado.';
            test_ladm_cadastral_cartography       postgres    false    713            �&           0    0 *   COLUMN extinteresado.lc_interesado_ext_pid    COMMENT     z   COMMENT ON COLUMN test_ladm_cadastral_cartography.extinteresado.lc_interesado_ext_pid IS 'Identificador del interesado.';
            test_ladm_cadastral_cartography       postgres    false    713            �           1259    586567    extredserviciosfisica    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.extredserviciosfisica (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    orientada boolean
);
 B   DROP TABLE test_ladm_cadastral_cartography.extredserviciosfisica;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE extredserviciosfisica    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.extredserviciosfisica IS 'Referencia a una clase externa para gestionar las redes físicas de servicios.';
            test_ladm_cadastral_cartography       postgres    false    714            �&           0    0 &   COLUMN extredserviciosfisica.orientada    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.extredserviciosfisica.orientada IS 'Indica si la red de servicios tiene un gradiente o no.';
            test_ladm_cadastral_cartography       postgres    false    714            �           1259    586540    extunidadedificacionfisica    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.extunidadedificacionfisica (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 G   DROP TABLE test_ladm_cadastral_cartography.extunidadedificacionfisica;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0     TABLE extunidadedificacionfisica    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.extunidadedificacionfisica IS 'Control externo de la unidad de edificación física.';
            test_ladm_cadastral_cartography       postgres    false    711            �           1259    586519    fraccion    TABLE       CREATE TABLE test_ladm_cadastral_cartography.fraccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    denominador integer NOT NULL,
    numerador integer NOT NULL,
    col_miembros_participacion bigint,
    lc_predio_copropiedad_coeficiente bigint,
    CONSTRAINT fraccion_denominador_check CHECK (((denominador >= 0) AND (denominador <= 999999999))),
    CONSTRAINT fraccion_numerador_check CHECK (((numerador >= 0) AND (numerador <= 999999999)))
);
 5   DROP TABLE test_ladm_cadastral_cartography.fraccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE fraccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.fraccion IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar una fracción o quebrado cona serie específica de condiciones.';
            test_ladm_cadastral_cartography       postgres    false    709            �&           0    0    COLUMN fraccion.denominador    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.fraccion.denominador IS 'Parte inferior de la fracción. Debe ser mayor que 0. Debe ser mayor que el numerador.';
            test_ladm_cadastral_cartography       postgres    false    709            �&           0    0    COLUMN fraccion.numerador    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.fraccion.numerador IS 'Parte superior de la fracción. Debe ser mayor que 0. Debe sder menor que el denominador.';
            test_ladm_cadastral_cartography       postgres    false    709            �           1259    586789 	   gc_barrio    TABLE     e  CREATE TABLE test_ladm_cadastral_cartography.gc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 6   DROP TABLE test_ladm_cadastral_cartography.gc_barrio;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
            test_ladm_cadastral_cartography       postgres    false    738            �&           0    0    COLUMN gc_barrio.codigo    COMMENT     p   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_barrio.codigo IS 'Código de identificación del barrio.';
            test_ladm_cadastral_cartography       postgres    false    738            �&           0    0    COLUMN gc_barrio.nombre    COMMENT     \   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_barrio.nombre IS 'Nombre del barrio.';
            test_ladm_cadastral_cartography       postgres    false    738            �&           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
            test_ladm_cadastral_cartography       postgres    false    738            �&           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_ladm_cadastral_cartography       postgres    false    738            �           1259    586799 !   gc_calificacionunidadconstruccion    TABLE        CREATE TABLE test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 N   DROP TABLE test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
            test_ladm_cadastral_cartography       postgres    false    739            �&           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    739            �&           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    739            �&           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    739            �&           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
            test_ladm_cadastral_cartography       postgres    false    739            �           1259    586809    gc_comisionesconstruccion    TABLE     <  CREATE TABLE test_ladm_cadastral_cartography.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 F   DROP TABLE test_ladm_cadastral_cartography.gc_comisionesconstruccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    740            �&           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    740            �&           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_cadastral_cartography       postgres    false    740            �           1259    586819    gc_comisionesterreno    TABLE     6  CREATE TABLE test_ladm_cadastral_cartography.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 A   DROP TABLE test_ladm_cadastral_cartography.gc_comisionesterreno;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    741            �&           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    741            �&           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_cadastral_cartography       postgres    false    741            �           1259    586829    gc_comisionesunidadconstruccion    TABLE     B  CREATE TABLE test_ladm_cadastral_cartography.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 L   DROP TABLE test_ladm_cadastral_cartography.gc_comisionesunidadconstruccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    742            �&           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    742            �&           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_cadastral_cartography       postgres    false    742            =           1259    587727    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_cadastral_cartography.gc_condicionprediotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586839    gc_construccion    TABLE     g  CREATE TABLE test_ladm_cadastral_cartography.gc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 <   DROP TABLE test_ladm_cadastral_cartography.gc_construccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0    COLUMN gc_construccion.etiqueta    COMMENT     o   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     p   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.area_construida IS 'Área total construida.';
            test_ladm_cadastral_cartography       postgres    false    743            �&           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    743            �           1259    586977    gc_copropiedad    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 ;   DROP TABLE test_ladm_cadastral_cartography.gc_copropiedad;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
            test_ladm_cadastral_cartography       postgres    false    757            �           1259    586851    gc_datosphcondominio    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 A   DROP TABLE test_ladm_cadastral_cartography.gc_datosphcondominio;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
            test_ladm_cadastral_cartography       postgres    false    744            �&           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_cadastral_cartography       postgres    false    744            �&           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_cadastral_cartography       postgres    false    744            �&           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_cadastral_cartography       postgres    false    744            �&           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_cadastral_cartography       postgres    false    744            �&           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_cadastral_cartography       postgres    false    744            �&           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
            test_ladm_cadastral_cartography       postgres    false    744            �&           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
            test_ladm_cadastral_cartography       postgres    false    744            �           1259    586858    gc_datostorreph    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 <   DROP TABLE test_ladm_cadastral_cartography.gc_datostorreph;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
            test_ladm_cadastral_cartography       postgres    false    745            �&           0    0    COLUMN gc_datostorreph.torre    COMMENT     v   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
            test_ladm_cadastral_cartography       postgres    false    745            �&           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     v   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
            test_ladm_cadastral_cartography       postgres    false    745            �&           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
            test_ladm_cadastral_cartography       postgres    false    745            �&           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     u   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
            test_ladm_cadastral_cartography       postgres    false    745            �&           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
            test_ladm_cadastral_cartography       postgres    false    745            �           1259    586865    gc_direccion    TABLE     T  CREATE TABLE test_ladm_cadastral_cartography.gc_direccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 9   DROP TABLE test_ladm_cadastral_cartography.gc_direccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    COLUMN gc_direccion.valor    COMMENT     s   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_direccion.valor IS 'Registros de la direcciones del predio.';
            test_ladm_cadastral_cartography       postgres    false    746            �&           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
            test_ladm_cadastral_cartography       postgres    false    746            �&           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
            test_ladm_cadastral_cartography       postgres    false    746            �&           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
            test_ladm_cadastral_cartography       postgres    false    746            �           1259    586876    gc_estadopredio    TABLE     V  CREATE TABLE test_ladm_cadastral_cartography.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 <   DROP TABLE test_ladm_cadastral_cartography.gc_estadopredio;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    747            �&           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    747            �&           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
            test_ladm_cadastral_cartography       postgres    false    747            �&           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
            test_ladm_cadastral_cartography       postgres    false    747            �&           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
            test_ladm_cadastral_cartography       postgres    false    747            �           1259    586883 
   gc_manzana    TABLE     p  CREATE TABLE test_ladm_cadastral_cartography.gc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 7   DROP TABLE test_ladm_cadastral_cartography.gc_manzana;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
            test_ladm_cadastral_cartography       postgres    false    748            �&           0    0    COLUMN gc_manzana.codigo    COMMENT     z   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
            test_ladm_cadastral_cartography       postgres    false    748            �&           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     }   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
            test_ladm_cadastral_cartography       postgres    false    748            �&           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
            test_ladm_cadastral_cartography       postgres    false    748            �&           0    0    COLUMN gc_manzana.geometria    COMMENT     t   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
            test_ladm_cadastral_cartography       postgres    false    748            �           1259    586893    gc_perimetro    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.gc_perimetro (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 9   DROP TABLE test_ladm_cadastral_cartography.gc_perimetro;
       test_ladm_cadastral_cartography         postgres    false    699    16            �&           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
            test_ladm_cadastral_cartography       postgres    false    749            �&           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
            test_ladm_cadastral_cartography       postgres    false    749             '           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
            test_ladm_cadastral_cartography       postgres    false    749            '           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
            test_ladm_cadastral_cartography       postgres    false    749            '           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
            test_ladm_cadastral_cartography       postgres    false    749            '           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     s   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
            test_ladm_cadastral_cartography       postgres    false    749            '           0    0    COLUMN gc_perimetro.geometria    COMMENT     p   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
            test_ladm_cadastral_cartography       postgres    false    749            �           1259    586966    gc_prediocatastro    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 >   DROP TABLE test_ladm_cadastral_cartography.gc_prediocatastro;
       test_ladm_cadastral_cartography         postgres    false    699    16            '           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
            test_ladm_cadastral_cartography       postgres    false    756            '           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
            test_ladm_cadastral_cartography       postgres    false    756            '           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT       COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_cadastral_cartography       postgres    false    756            '           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT     #  COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_cadastral_cartography       postgres    false    756            	'           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     W  COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_cadastral_cartography       postgres    false    756            
'           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
            test_ladm_cadastral_cartography       postgres    false    756            '           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
            test_ladm_cadastral_cartography       postgres    false    756            '           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT       COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
            test_ladm_cadastral_cartography       postgres    false    756            '           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_cadastral_cartography       postgres    false    756            '           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     V  COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_cadastral_cartography       postgres    false    756            '           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
            test_ladm_cadastral_cartography       postgres    false    756            '           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT     y   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
            test_ladm_cadastral_cartography       postgres    false    756            �           1259    586903    gc_propietario    TABLE     N  CREATE TABLE test_ladm_cadastral_cartography.gc_propietario (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 ;   DROP TABLE test_ladm_cadastral_cartography.gc_propietario;
       test_ladm_cadastral_cartography         postgres    false    699    16            '           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
            test_ladm_cadastral_cartography       postgres    false    750            '           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    750            '           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    750            '           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
            test_ladm_cadastral_cartography       postgres    false    750            '           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
            test_ladm_cadastral_cartography       postgres    false    750            '           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
            test_ladm_cadastral_cartography       postgres    false    750            '           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
            test_ladm_cadastral_cartography       postgres    false    750            '           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
            test_ladm_cadastral_cartography       postgres    false    750            '           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
            test_ladm_cadastral_cartography       postgres    false    750            �           1259    586913    gc_sectorrural    TABLE       CREATE TABLE test_ladm_cadastral_cartography.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 ;   DROP TABLE test_ladm_cadastral_cartography.gc_sectorrural;
       test_ladm_cadastral_cartography         postgres    false    699    16            '           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
            test_ladm_cadastral_cartography       postgres    false    751            '           0    0    COLUMN gc_sectorrural.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_cadastral_cartography       postgres    false    751            '           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    751            �           1259    586923    gc_sectorurbano    TABLE       CREATE TABLE test_ladm_cadastral_cartography.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 <   DROP TABLE test_ladm_cadastral_cartography.gc_sectorurbano;
       test_ladm_cadastral_cartography         postgres    false    699    16            '           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
            test_ladm_cadastral_cartography       postgres    false    752            '           0    0    COLUMN gc_sectorurbano.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_cadastral_cartography       postgres    false    752            '           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    752            ]           1259    588015    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 K   DROP TABLE test_ladm_cadastral_cartography.gc_sistemaprocedenciadatostipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586933 
   gc_terreno    TABLE     l  CREATE TABLE test_ladm_cadastral_cartography.gc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_ladm_cadastral_cartography.gc_terreno;
       test_ladm_cadastral_cartography         postgres    false    699    16             '           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
            test_ladm_cadastral_cartography       postgres    false    753            !'           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    753            "'           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    753            #'           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
            test_ladm_cadastral_cartography       postgres    false    753            $'           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT        COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
            test_ladm_cadastral_cartography       postgres    false    753            %'           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    753            �           1259    586944    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 B   DROP TABLE test_ladm_cadastral_cartography.gc_unidadconstruccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            &'           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_cadastral_cartography       postgres    false    754            ''           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_cadastral_cartography       postgres    false    754            ('           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT        COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    754            )'           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_cadastral_cartography       postgres    false    754            *'           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_cadastral_cartography       postgres    false    754            +'           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_cadastral_cartography       postgres    false    754            ,'           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    754            -'           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    754            .'           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    754            /'           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    754            0'           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    754            1'           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    754            2'           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
            test_ladm_cadastral_cartography       postgres    false    754            3'           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    754            4'           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_cadastral_cartography       postgres    false    754            5'           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    754            6'           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_cadastral_cartography       postgres    false    754            `           1259    588042    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_ladm_cadastral_cartography.gc_unidadconstrucciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586956 	   gc_vereda    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.gc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 6   DROP TABLE test_ladm_cadastral_cartography.gc_vereda;
       test_ladm_cadastral_cartography         postgres    false    699    16            7'           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
            test_ladm_cadastral_cartography       postgres    false    755            8'           0    0    COLUMN gc_vereda.codigo    COMMENT     x   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
            test_ladm_cadastral_cartography       postgres    false    755            9'           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
            test_ladm_cadastral_cartography       postgres    false    755            :'           0    0    COLUMN gc_vereda.nombre    COMMENT     ^   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_vereda.nombre IS 'Nombre de la vereda.';
            test_ladm_cadastral_cartography       postgres    false    755            ;'           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
            test_ladm_cadastral_cartography       postgres    false    755            <'           0    0    COLUMN gc_vereda.geometria    COMMENT     k   COMMENT ON COLUMN test_ladm_cadastral_cartography.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
            test_ladm_cadastral_cartography       postgres    false    755            �           1259    586443    gm_curve3dlistvalue    TABLE       CREATE TABLE test_ladm_cadastral_cartography.gm_curve3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(LineStringZ,38820) NOT NULL,
    gm_multicurve3d_geometry bigint
);
 @   DROP TABLE test_ladm_cadastral_cartography.gm_curve3dlistvalue;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586465    gm_multicurve3d    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.gm_multicurve3d (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 <   DROP TABLE test_ladm_cadastral_cartography.gm_multicurve3d;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586437    gm_multisurface2d    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 >   DROP TABLE test_ladm_cadastral_cartography.gm_multisurface2d;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586471    gm_multisurface3d    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 >   DROP TABLE test_ladm_cadastral_cartography.gm_multisurface3d;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586426    gm_surface2dlistvalue    TABLE       CREATE TABLE test_ladm_cadastral_cartography.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 B   DROP TABLE test_ladm_cadastral_cartography.gm_surface2dlistvalue;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586454    gm_surface3dlistvalue    TABLE       CREATE TABLE test_ladm_cadastral_cartography.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 B   DROP TABLE test_ladm_cadastral_cartography.gm_surface3dlistvalue;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586546    imagen    TABLE     =  CREATE TABLE test_ladm_cadastral_cartography.imagen (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    uri character varying(255),
    extinteresado_huella_dactilar bigint,
    extinteresado_fotografia bigint,
    extinteresado_firma bigint
);
 3   DROP TABLE test_ladm_cadastral_cartography.imagen;
       test_ladm_cadastral_cartography         postgres    false    699    16            ='           0    0    TABLE imagen    COMMENT     g   COMMENT ON TABLE test_ladm_cadastral_cartography.imagen IS 'Referencia a una imagen mediante su url.';
            test_ladm_cadastral_cartography       postgres    false    712            >'           0    0    COLUMN imagen.uri    COMMENT     U   COMMENT ON COLUMN test_ladm_cadastral_cartography.imagen.uri IS 'url de la imagen.';
            test_ladm_cadastral_cartography       postgres    false    712            ?'           0    0 +   COLUMN imagen.extinteresado_huella_dactilar    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.imagen.extinteresado_huella_dactilar IS 'Imagen de la huella dactilar del interesado.';
            test_ladm_cadastral_cartography       postgres    false    712            @'           0    0 &   COLUMN imagen.extinteresado_fotografia    COMMENT     t   COMMENT ON COLUMN test_ladm_cadastral_cartography.imagen.extinteresado_fotografia IS 'Fotografía del interesado.';
            test_ladm_cadastral_cartography       postgres    false    712            A'           0    0 !   COLUMN imagen.extinteresado_firma    COMMENT     i   COMMENT ON COLUMN test_ladm_cadastral_cartography.imagen.extinteresado_firma IS 'Firma del interesado.';
            test_ladm_cadastral_cartography       postgres    false    712            7           1259    587673    ini_emparejamientotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.ini_emparejamientotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_cadastral_cartography.ini_emparejamientotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    587051    ini_predioinsumos    TABLE     D  CREATE TABLE test_ladm_cadastral_cartography.ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_emparejamiento bigint,
    observaciones text,
    gc_predio_catastro bigint,
    snr_predio_juridico bigint
);
 >   DROP TABLE test_ladm_cadastral_cartography.ini_predioinsumos;
       test_ladm_cadastral_cartography         postgres    false    699    16            B'           0    0    TABLE ini_predioinsumos    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.ini_predioinsumos IS 'Clase que relaciona los predios en los modelos de insumos para el Gestor Catastral y la SNR.';
            test_ladm_cadastral_cartography       postgres    false    765            C'           0    0 ,   COLUMN ini_predioinsumos.tipo_emparejamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.ini_predioinsumos.tipo_emparejamiento IS 'Tipo de emparejamiento de insumos Catastro-Registro';
            test_ladm_cadastral_cartography       postgres    false    765            D'           0    0 &   COLUMN ini_predioinsumos.observaciones    COMMENT     w   COMMENT ON COLUMN test_ladm_cadastral_cartography.ini_predioinsumos.observaciones IS 'Observaciones de la relación.';
            test_ladm_cadastral_cartography       postgres    false    765            K           1259    587853    lc_acuerdotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_acuerdotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_cadastral_cartography.lc_acuerdotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    587063    lc_agrupacioninteresados    TABLE       CREATE TABLE test_ladm_cadastral_cartography.lc_agrupacioninteresados (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 E   DROP TABLE test_ladm_cadastral_cartography.lc_agrupacioninteresados;
       test_ladm_cadastral_cartography         postgres    false    699    16            E'           0    0    TABLE lc_agrupacioninteresados    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_agrupacioninteresados IS 'Clase que hereda los atributos de la  Clase COL_Agrupación_Interesados.';
            test_ladm_cadastral_cartography       postgres    false    766            F'           0    0 $   COLUMN lc_agrupacioninteresados.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_agrupacioninteresados.tipo IS 'Indica el tipo de agrupación del que se trata.';
            test_ladm_cadastral_cartography       postgres    false    766            G'           0    0 &   COLUMN lc_agrupacioninteresados.nombre    COMMENT     o   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_agrupacioninteresados.nombre IS 'Nombre del interesado.';
            test_ladm_cadastral_cartography       postgres    false    766            H'           0    0 :   COLUMN lc_agrupacioninteresados.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_agrupacioninteresados.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    766            I'           0    0 5   COLUMN lc_agrupacioninteresados.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_agrupacioninteresados.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    766            J'           0    0 2   COLUMN lc_agrupacioninteresados.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_agrupacioninteresados.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    766            K'           0    0 (   COLUMN lc_agrupacioninteresados.local_id    COMMENT     v   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_agrupacioninteresados.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    766            P           1259    587898    lc_anexotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_anexotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_cadastral_cartography.lc_anexotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587307    lc_calificacionconvencional    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_calificacionconvencional (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_calificar bigint NOT NULL,
    total_calificacion integer NOT NULL,
    lc_unidad_construccion bigint,
    CONSTRAINT lc_calificacionconvencnal_total_calificacion_check CHECK (((total_calificacion >= 0) AND (total_calificacion <= 999999999)))
);
 H   DROP TABLE test_ladm_cadastral_cartography.lc_calificacionconvencional;
       test_ladm_cadastral_cartography         postgres    false    699    16            L'           0    0 !   TABLE lc_calificacionconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_calificacionconvencional IS 'Proceso mediante el cual se le asigna un puntaje a las edificaciones de acuerdo a sus características constructivas';
            test_ladm_cadastral_cartography       postgres    false    786            M'           0    0 1   COLUMN lc_calificacionconvencional.tipo_calificar    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_calificacionconvencional.tipo_calificar IS 'Indica si la calificación de construcción corresponde a residencial, comercial o industrial.';
            test_ladm_cadastral_cartography       postgres    false    786            N'           0    0 5   COLUMN lc_calificacionconvencional.total_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_calificacionconvencional.total_calificacion IS 'Puntaje total de la calificación de la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    786                       1259    587316    lc_calificacionnoconvencional    TABLE     ,  CREATE TABLE test_ladm_cadastral_cartography.lc_calificacionnoconvencional (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_anexo bigint NOT NULL,
    lc_unidad_construccion bigint
);
 J   DROP TABLE test_ladm_cadastral_cartography.lc_calificacionnoconvencional;
       test_ladm_cadastral_cartography         postgres    false    699    16            O'           0    0 #   TABLE lc_calificacionnoconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_calificacionnoconvencional IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_cadastral_cartography       postgres    false    787            P'           0    0 /   COLUMN lc_calificacionnoconvencional.tipo_anexo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_calificacionnoconvencional.tipo_anexo IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_cadastral_cartography       postgres    false    787            C           1259    587781    lc_calificartipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_calificartipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_cadastral_cartography.lc_calificartipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            M           1259    587871    lc_categoriasuelotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_categoriasuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_cadastral_cartography.lc_categoriasuelotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            8           1259    587682    lc_clasecalificaciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_clasecalificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 E   DROP TABLE test_ladm_cadastral_cartography.lc_clasecalificaciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            9           1259    587691    lc_clasesuelotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_clasesuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_cadastral_cartography.lc_clasesuelotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            g           1259    588105    lc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_cadastral_cartography.lc_condicionprediotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    587074    lc_construccion    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 <   DROP TABLE test_ladm_cadastral_cartography.lc_construccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            Q'           0    0    TABLE lc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_construccion IS 'Es la unión de materiales adheridos al terreno, con carácter de permanente, cualesquiera sean los elementos que la constituyan.';
            test_ladm_cadastral_cartography       postgres    false    767            R'           0    0 $   COLUMN lc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_cadastral_cartography       postgres    false    767            S'           0    0 (   COLUMN lc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_cadastral_cartography       postgres    false    767            T'           0    0 #   COLUMN lc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_cadastral_cartography       postgres    false    767            U'           0    0 #   COLUMN lc_construccion.numero_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    767            V'           0    0 %   COLUMN lc_construccion.numero_sotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    767            W'           0    0 '   COLUMN lc_construccion.numero_mezanines    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    767            X'           0    0 )   COLUMN lc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    767            Y'           0    0 (   COLUMN lc_construccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.anio_construccion IS 'Año de edificación de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    767            Z'           0    0 *   COLUMN lc_construccion.avaluo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.avaluo_construccion IS 'Avalúo total catastral de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    767            ['           0    0 (   COLUMN lc_construccion.area_construccion    COMMENT     r   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.area_construccion IS 'Área total construida.';
            test_ladm_cadastral_cartography       postgres    false    767            \'           0    0    COLUMN lc_construccion.altura    COMMENT     q   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.altura IS 'Altura total de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    767            ]'           0    0 $   COLUMN lc_construccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.observaciones IS 'Observaciones generales de la construcción.';
            test_ladm_cadastral_cartography       postgres    false    767            ^'           0    0     COLUMN lc_construccion.dimension    COMMENT     i   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.dimension IS 'Dimensión del objeto.';
            test_ladm_cadastral_cartography       postgres    false    767            _'           0    0    COLUMN lc_construccion.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    767            `'           0    0 *   COLUMN lc_construccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    767            a'           0    0     COLUMN lc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_cadastral_cartography       postgres    false    767            b'           0    0 1   COLUMN lc_construccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    767            c'           0    0 ,   COLUMN lc_construccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    767            d'           0    0 )   COLUMN lc_construccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    767            e'           0    0    COLUMN lc_construccion.local_id    COMMENT     m   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_construccion.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    767            c           1259    588069    lc_construccionplantatipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_construccionplantatipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_ladm_cadastral_cartography.lc_construccionplantatipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            :           1259    587700    lc_construcciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_construcciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_cadastral_cartography.lc_construcciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                        1259    587089    lc_contactovisita    TABLE     I  CREATE TABLE test_ladm_cadastral_cartography.lc_contactovisita (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 >   DROP TABLE test_ladm_cadastral_cartography.lc_contactovisita;
       test_ladm_cadastral_cartography         postgres    false    699    16            f'           0    0 5   COLUMN lc_contactovisita.tipo_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_contactovisita.tipo_documento_quien_atendio IS 'Indica el tipo de documento de la persona que atendió la visita predial.';
            test_ladm_cadastral_cartography       postgres    false    768            g'           0    0 7   COLUMN lc_contactovisita.numero_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_contactovisita.numero_documento_quien_atendio IS 'Indica el número de documento de la persona que atendió la visita predial.';
            test_ladm_cadastral_cartography       postgres    false    768            h'           0    0 4   COLUMN lc_contactovisita.primer_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_contactovisita.primer_nombre_quien_atendio IS 'Primer nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_cadastral_cartography       postgres    false    768            i'           0    0 5   COLUMN lc_contactovisita.segundo_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_contactovisita.segundo_nombre_quien_atendio IS 'Segundo nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_cadastral_cartography       postgres    false    768            j'           0    0 6   COLUMN lc_contactovisita.primer_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_contactovisita.primer_apellido_quien_atendio IS 'Primer apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_cadastral_cartography       postgres    false    768            k'           0    0 7   COLUMN lc_contactovisita.segundo_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_contactovisita.segundo_apellido_quien_atendio IS 'Segundo apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_cadastral_cartography       postgres    false    768            l'           0    0 ,   COLUMN lc_contactovisita.relacion_con_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_contactovisita.relacion_con_predio IS 'Relación con el predio de la persona encargada de atender la visita, por ejemplo propietario, encargado, administrador, poseedor, etc.';
            test_ladm_cadastral_cartography       postgres    false    768            m'           0    0 1   COLUMN lc_contactovisita.domicilio_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_contactovisita.domicilio_notificaciones IS 'Dirección de domicilio para notificaciones.';
            test_ladm_cadastral_cartography       postgres    false    768            n'           0    0     COLUMN lc_contactovisita.celular    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_contactovisita.celular IS 'Número de celular de la persona que atendió la visita de actividades catastrales.';
            test_ladm_cadastral_cartography       postgres    false    768            o'           0    0 +   COLUMN lc_contactovisita.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_contactovisita.correo_electronico IS 'Correo electrónico de la persona que atendió la visita de actividades catastrales.';
            test_ladm_cadastral_cartography       postgres    false    768            p'           0    0 0   COLUMN lc_contactovisita.autoriza_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_contactovisita.autoriza_notificaciones IS 'Indica si autoriza las notificaciones administrativas por medio de vía electrónica.';
            test_ladm_cadastral_cartography       postgres    false    768                       1259    587325 )   lc_datosadicionaleslevantamientocatastral    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 V   DROP TABLE test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral;
       test_ladm_cadastral_cartography         postgres    false    699    16            q'           0    0 /   TABLE lc_datosadicionaleslevantamientocatastral    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral IS 'Datos de adicionales del predio para catastro multipropósito';
            test_ladm_cadastral_cartography       postgres    false    788            r'           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.tiene_area_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.tiene_area_registral IS 'Indica si el predio según la información registral cuenta con el valor de área en la cabida y linderos.';
            test_ladm_cadastral_cartography       postgres    false    788            s'           0    0 B   COLUMN lc_datosadicionaleslevantamientocatastral.area_registral_m2    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.area_registral_m2 IS 'Indica el valor del área registral del predio en metros cuadrados.';
            test_ladm_cadastral_cartography       postgres    false    788            t'           0    0 R   COLUMN lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral    COMMENT     �  COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral IS 'Se considerará como procedimientos catastrales con efectos registrales los siguientes: actualización de linderos, rectificación de área por imprecisa determinación, actualización masiva y puntual de linderos y áreas, rectificación de linderos por acuerdo entre las partes, e inclusión de área y/o linderos.';
            test_ladm_cadastral_cartography       postgres    false    788            u'           0    0 F   COLUMN lc_datosadicionaleslevantamientocatastral.destinacion_economica    COMMENT     n  COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_cadastral_cartography       postgres    false    788            v'           0    0 <   COLUMN lc_datosadicionaleslevantamientocatastral.clase_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.clase_suelo IS 'Clasificación del suelo según el instrumento de planeación vigente.';
            test_ladm_cadastral_cartography       postgres    false    788            w'           0    0 @   COLUMN lc_datosadicionaleslevantamientocatastral.categoria_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.categoria_suelo IS 'Categoría del suelo según el instrumento de planeación vigente.';
            test_ladm_cadastral_cartography       postgres    false    788            x'           0    0 >   COLUMN lc_datosadicionaleslevantamientocatastral.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.observaciones IS 'Observaciones generales respecto del predio.';
            test_ladm_cadastral_cartography       postgres    false    788            y'           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.fecha_visita_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.fecha_visita_predial IS 'Fecha de la visita en campo al predio.';
            test_ladm_cadastral_cartography       postgres    false    788            z'           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor IS 'Indica el tipo de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_cadastral_cartography       postgres    false    788            {'           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor IS 'Indica el número de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_cadastral_cartography       postgres    false    788            |'           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor IS 'Primer nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_cadastral_cartography       postgres    false    788            }'           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor IS 'Segundo nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_cadastral_cartography       postgres    false    788            ~'           0    0 L   COLUMN lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor IS 'Primer apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_cadastral_cartography       postgres    false    788            '           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor IS 'Segundo apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_cadastral_cartography       postgres    false    788            �'           0    0 A   COLUMN lc_datosadicionaleslevantamientocatastral.resultado_visita    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.resultado_visita IS 'Posibles situaciones que se presentan y afectan el resultado del levantamiento de la información en campo.';
            test_ladm_cadastral_cartography       postgres    false    788            �'           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia    COMMENT       COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia IS 'Indica si dentro del proceso de formación o actualización catastral se suscribe acta de colindancia para el predio objeto de levantamiento catastral.';
            test_ladm_cadastral_cartography       postgres    false    788                       1259    587102    lc_datosphcondominio    TABLE     &  CREATE TABLE test_ladm_cadastral_cartography.lc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 A   DROP TABLE test_ladm_cadastral_cartography.lc_datosphcondominio;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal.';
            test_ladm_cadastral_cartography       postgres    false    769            �'           0    0 .   COLUMN lc_datosphcondominio.area_total_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosphcondominio.area_total_terreno IS 'Área total del terreno del PH o Condominio Matriz.';
            test_ladm_cadastral_cartography       postgres    false    769            �'           0    0 6   COLUMN lc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_cadastral_cartography       postgres    false    769            �'           0    0 4   COLUMN lc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_cadastral_cartography       postgres    false    769            �'           0    0 1   COLUMN lc_datosphcondominio.area_total_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosphcondominio.area_total_construida IS 'Área total de construida del PH o Condominio Matriz.';
            test_ladm_cadastral_cartography       postgres    false    769            �'           0    0 9   COLUMN lc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_cadastral_cartography       postgres    false    769            �'           0    0 7   COLUMN lc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_cadastral_cartography       postgres    false    769            �'           0    0 )   COLUMN lc_datosphcondominio.numero_torres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosphcondominio.numero_torres IS 'Número de torres en el PH o Condominio.';
            test_ladm_cadastral_cartography       postgres    false    769            �'           0    0 3   COLUMN lc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_cadastral_cartography       postgres    false    769                       1259    587110 
   lc_derecho    TABLE     $  CREATE TABLE test_ladm_cadastral_cartography.lc_derecho (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_ladm_cadastral_cartography.lc_derecho;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_derecho IS 'Clase que registra las instancias de los derechos que un interesado ejerce sobre un predio. Es una especialización de la clase COL_DRR del propio modelo.';
            test_ladm_cadastral_cartography       postgres    false    770            �'           0    0    COLUMN lc_derecho.tipo    COMMENT     _   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_derecho.tipo IS 'Derecho que se ejerce.';
            test_ladm_cadastral_cartography       postgres    false    770            �'           0    0 "   COLUMN lc_derecho.fraccion_derecho    COMMENT     �  COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_derecho.fraccion_derecho IS 'Indica la fracción del derecho en relación a la forma de tenencia y el área que esta ocupa dentro de la extensión del predio. Ejemplo: un predio informal que se encuentra sobre un predio baldío y un predio privado tendrá un porcentaje de derecho de ocupación y posesión expresado en tanto por uno (0.0000000000 a 1.0000000000).';
            test_ladm_cadastral_cartography       postgres    false    770            �'           0    0 '   COLUMN lc_derecho.fecha_inicio_tenencia    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_derecho.fecha_inicio_tenencia IS 'Fecha de inicio de tenencia del interesado con respecto al predio.';
            test_ladm_cadastral_cartography       postgres    false    770            �'           0    0    COLUMN lc_derecho.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_derecho.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_cadastral_cartography       postgres    false    770            �'           0    0 ,   COLUMN lc_derecho.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_derecho.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    770            �'           0    0 '   COLUMN lc_derecho.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_derecho.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    770            �'           0    0 $   COLUMN lc_derecho.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_derecho.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    770            �'           0    0    COLUMN lc_derecho.local_id    COMMENT     h   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_derecho.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    770            n           1259    588168    lc_derechotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_derechotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_cadastral_cartography.lc_derechotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            G           1259    587817    lc_destinacioneconomicatipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_destinacioneconomicatipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 H   DROP TABLE test_ladm_cadastral_cartography.lc_destinacioneconomicatipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            B           1259    587772    lc_dominioconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_dominioconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 G   DROP TABLE test_ladm_cadastral_cartography.lc_dominioconstrucciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            b           1259    588060    lc_estadoconservaciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_estadoconservaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_ladm_cadastral_cartography.lc_estadoconservaciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587124    lc_estructuranovedadfmi    TABLE     :  CREATE TABLE test_ladm_cadastral_cartography.lc_estructuranovedadfmi (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(3),
    numero_fmi character varying(80),
    lc_dtsdcnlstmntctstral_novedad_fmi bigint
);
 D   DROP TABLE test_ladm_cadastral_cartography.lc_estructuranovedadfmi;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0 A   COLUMN lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi IS 'Relaciona los cambios del predio respecto de la información registral vigente.';
            test_ladm_cadastral_cartography       postgres    false    771                       1259    587131 !   lc_estructuranovedadnumeropredial    TABLE     R  CREATE TABLE test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    numero_predial character varying(30) NOT NULL,
    tipo_novedad bigint,
    lc_dtsdcnlstmntctstral_novedad_numeros_prediales bigint
);
 N   DROP TABLE test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0 Y   COLUMN lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales IS 'Relaciona los cambios del predio respecto de la información catastral vigente.';
            test_ladm_cadastral_cartography       postgres    false    772            F           1259    587808 .   lc_estructuranovedadnumeropredial_tipo_novedad    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial_tipo_novedad (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 [   DROP TABLE test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial_tipo_novedad;
       test_ladm_cadastral_cartography         postgres    false    699    16            A           1259    587763    lc_fotoidentificaciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_fotoidentificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_ladm_cadastral_cartography.lc_fotoidentificaciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587139    lc_fuenteadministrativa    TABLE     D  CREATE TABLE test_ladm_cadastral_cartography.lc_fuenteadministrativa (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 D   DROP TABLE test_ladm_cadastral_cartography.lc_fuenteadministrativa;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_fuenteadministrativa    COMMENT       COMMENT ON TABLE test_ladm_cadastral_cartography.lc_fuenteadministrativa IS 'Clase que almacena las fuentes administrativas (escrituras, sentencias, actos administrativos, etc) que sustentan el Derecho respecto de la relación de tenencia entre el Interesado y el predio.';
            test_ladm_cadastral_cartography       postgres    false    773            �'           0    0 #   COLUMN lc_fuenteadministrativa.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteadministrativa.tipo IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_cadastral_cartography       postgres    false    773            �'           0    0 *   COLUMN lc_fuenteadministrativa.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteadministrativa.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_cadastral_cartography       postgres    false    773            �'           0    0 *   COLUMN lc_fuenteadministrativa.observacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteadministrativa.observacion IS 'Observaciones o descripción del documento de la fuente administrativa.';
            test_ladm_cadastral_cartography       postgres    false    773            �'           0    0 ,   COLUMN lc_fuenteadministrativa.numero_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteadministrativa.numero_fuente IS 'Identificador del documento, ejemplo: número de la resolución, número de la escritura pública o número de radicado de una sentencia.';
            test_ladm_cadastral_cartography       postgres    false    773            �'           0    0 4   COLUMN lc_fuenteadministrativa.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteadministrativa.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_cadastral_cartography       postgres    false    773            �'           0    0 -   COLUMN lc_fuenteadministrativa.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteadministrativa.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_cadastral_cartography       postgres    false    773            �'           0    0 5   COLUMN lc_fuenteadministrativa.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteadministrativa.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_cadastral_cartography       postgres    false    773            �'           0    0 1   COLUMN lc_fuenteadministrativa.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteadministrativa.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    773            �'           0    0 '   COLUMN lc_fuenteadministrativa.local_id    COMMENT     u   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteadministrativa.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    773            6           1259    587664    lc_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 H   DROP TABLE test_ladm_cadastral_cartography.lc_fuenteadministrativatipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587152    lc_fuenteespacial    TABLE     "  CREATE TABLE test_ladm_cadastral_cartography.lc_fuenteespacial (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 >   DROP TABLE test_ladm_cadastral_cartography.lc_fuenteespacial;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_fuenteespacial    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_fuenteespacial IS 'Clase que hereda los atributos de la  Clase COL_FuenteEspacial.';
            test_ladm_cadastral_cartography       postgres    false    774            �'           0    0    COLUMN lc_fuenteespacial.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteespacial.nombre IS 'Nombre de la fuente espacial del levantamiento catastral de un predio.';
            test_ladm_cadastral_cartography       postgres    false    774            �'           0    0    COLUMN lc_fuenteespacial.tipo    COMMENT     h   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteespacial.tipo IS 'Tipo de fuente espacial.';
            test_ladm_cadastral_cartography       postgres    false    774            �'           0    0 $   COLUMN lc_fuenteespacial.descripcion    COMMENT     z   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteespacial.descripcion IS 'Descripción de la fuente espacial.';
            test_ladm_cadastral_cartography       postgres    false    774            �'           0    0 !   COLUMN lc_fuenteespacial.metadato    COMMENT     s   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteespacial.metadato IS 'Metadato de la fuente espacial.';
            test_ladm_cadastral_cartography       postgres    false    774            �'           0    0 .   COLUMN lc_fuenteespacial.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteespacial.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_cadastral_cartography       postgres    false    774            �'           0    0 '   COLUMN lc_fuenteespacial.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteespacial.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_cadastral_cartography       postgres    false    774            �'           0    0 /   COLUMN lc_fuenteespacial.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteespacial.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_cadastral_cartography       postgres    false    774            �'           0    0 +   COLUMN lc_fuenteespacial.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteespacial.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    774            �'           0    0 !   COLUMN lc_fuenteespacial.local_id    COMMENT     o   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_fuenteespacial.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    774                       1259    587165    lc_grupocalificacion    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_grupocalificacion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    clase_calificacion bigint NOT NULL,
    conservacion bigint NOT NULL,
    subtotal integer NOT NULL,
    lc_calificacion_convencional bigint NOT NULL,
    CONSTRAINT lc_grupocalificacion_subtotal_check CHECK (((subtotal >= 0) AND (subtotal <= 9999999)))
);
 A   DROP TABLE test_ladm_cadastral_cartography.lc_grupocalificacion;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_grupocalificacion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_grupocalificacion IS 'Calificación de la construccion según los item determinados para calificar.';
            test_ladm_cadastral_cartography       postgres    false    775            �'           0    0 .   COLUMN lc_grupocalificacion.clase_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_grupocalificacion.clase_calificacion IS 'Indica los elementos generales de la calificación de la construcción de acuerdo al método vigente.';
            test_ladm_cadastral_cartography       postgres    false    775            �'           0    0 (   COLUMN lc_grupocalificacion.conservacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_grupocalificacion.conservacion IS 'Estado de conservación del grupo calificado.';
            test_ladm_cadastral_cartography       postgres    false    775            �'           0    0 $   COLUMN lc_grupocalificacion.subtotal    COMMENT     u   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_grupocalificacion.subtotal IS 'Subtotal del grupo calificado.';
            test_ladm_cadastral_cartography       postgres    false    775            m           1259    588159    lc_grupoetnicotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_grupoetnicotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_cadastral_cartography.lc_grupoetnicotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587175    lc_interesado    TABLE     U  CREATE TABLE test_ladm_cadastral_cartography.lc_interesado (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 :   DROP TABLE test_ladm_cadastral_cartography.lc_interesado;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_interesado    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_interesado IS 'Es la parte que tiene una relación con el predio por algún tipo de derecho, restricción, publicidad o responsabilidad';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0    COLUMN lc_interesado.tipo    COMMENT     l   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.tipo IS 'Tipo de persona del que se trata';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0 #   COLUMN lc_interesado.tipo_documento    COMMENT     y   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0 (   COLUMN lc_interesado.documento_identidad    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.documento_identidad IS 'Documento de identidad del interesado.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0 "   COLUMN lc_interesado.primer_nombre    COMMENT     y   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.primer_nombre IS 'Primer nombre de la persona física.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0 #   COLUMN lc_interesado.segundo_nombre    COMMENT     {   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.segundo_nombre IS 'Segundo nombre de la persona física.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0 $   COLUMN lc_interesado.primer_apellido    COMMENT     }   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0 %   COLUMN lc_interesado.segundo_apellido    COMMENT        COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0    COLUMN lc_interesado.sexo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.sexo IS 'Condición orgánica que distingue a los machos de las hembras.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0 !   COLUMN lc_interesado.razon_social    COMMENT     u   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.razon_social IS 'Nombre con el que está inscrito.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0    COLUMN lc_interesado.nombre    COMMENT     d   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.nombre IS 'Nombre del interesado.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0 /   COLUMN lc_interesado.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0 *   COLUMN lc_interesado.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0 '   COLUMN lc_interesado.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    776            �'           0    0    COLUMN lc_interesado.local_id    COMMENT     k   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesado.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    776            	           1259    587189    lc_interesadocontacto    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_interesadocontacto (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 B   DROP TABLE test_ladm_cadastral_cartography.lc_interesadocontacto;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_interesadocontacto    COMMENT     w   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_interesadocontacto IS 'Datos de contacto de la parte interesada.';
            test_ladm_cadastral_cartography       postgres    false    777            �'           0    0 &   COLUMN lc_interesadocontacto.telefono1    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesadocontacto.telefono1 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_cadastral_cartography       postgres    false    777            �'           0    0 &   COLUMN lc_interesadocontacto.telefono2    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesadocontacto.telefono2 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_cadastral_cartography       postgres    false    777            �'           0    0 3   COLUMN lc_interesadocontacto.domicilio_notificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesadocontacto.domicilio_notificacion IS 'Domicilio para notificaciones del interesado.';
            test_ladm_cadastral_cartography       postgres    false    777            �'           0    0 1   COLUMN lc_interesadocontacto.direccion_residencia    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesadocontacto.direccion_residencia IS 'Dirección de residencia del interesado.';
            test_ladm_cadastral_cartography       postgres    false    777            �'           0    0 /   COLUMN lc_interesadocontacto.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesadocontacto.correo_electronico IS 'Correo electrónico del interesado.';
            test_ladm_cadastral_cartography       postgres    false    777            �'           0    0 9   COLUMN lc_interesadocontacto.autoriza_notificacion_correo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesadocontacto.autoriza_notificacion_correo IS 'Indica si el interesado autoriza notificación vía correo electrónico';
            test_ladm_cadastral_cartography       postgres    false    777            �'           0    0 )   COLUMN lc_interesadocontacto.departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesadocontacto.departamento IS 'Departamento de residencia del interesado.';
            test_ladm_cadastral_cartography       postgres    false    777            �'           0    0 &   COLUMN lc_interesadocontacto.municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesadocontacto.municipio IS 'Municipio de residencia del interesado.';
            test_ladm_cadastral_cartography       postgres    false    777            �'           0    0 #   COLUMN lc_interesadocontacto.vereda    COMMENT     z   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesadocontacto.vereda IS 'Vereda de residencia del interesado.';
            test_ladm_cadastral_cartography       postgres    false    777            �'           0    0 *   COLUMN lc_interesadocontacto.corregimiento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_interesadocontacto.corregimiento IS 'Corregimiento de residencia del interesado.';
            test_ladm_cadastral_cartography       postgres    false    777            2           1259    587628    lc_interesadodocumentotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_interesadodocumentotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 G   DROP TABLE test_ladm_cadastral_cartography.lc_interesadodocumentotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            _           1259    588033    lc_interesadotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_interesadotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_cadastral_cartography.lc_interesadotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            
           1259    587200 
   lc_lindero    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_lindero (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_ladm_cadastral_cartography.lc_lindero;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_lindero    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_lindero IS 'Linea de división que separa un bien inmueble de otro, que puede o no estar materializada físicamente.';
            test_ladm_cadastral_cartography       postgres    false    778            �'           0    0    COLUMN lc_lindero.longitud    COMMENT     l   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_lindero.longitud IS 'Longitud en metros del lindero.';
            test_ladm_cadastral_cartography       postgres    false    778            �'           0    0    COLUMN lc_lindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_lindero.geometria IS 'Geometría lineal que define el lindero. Puede estar asociada a geometrías de tipo punto que definen sus vértices o ser una entidad lineal independiente.';
            test_ladm_cadastral_cartography       postgres    false    778            �'           0    0 &   COLUMN lc_lindero.localizacion_textual    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_lindero.localizacion_textual IS 'Descripción de la localización, cuando esta se basa en texto.';
            test_ladm_cadastral_cartography       postgres    false    778            �'           0    0 ,   COLUMN lc_lindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_lindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    778            �'           0    0 '   COLUMN lc_lindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_lindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    778            �'           0    0 $   COLUMN lc_lindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_lindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    778            �'           0    0    COLUMN lc_lindero.local_id    COMMENT     h   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_lindero.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    778                       1259    587211    lc_objetoconstruccion    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_objetoconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_objeto_construccion bigint NOT NULL,
    puntos integer NOT NULL,
    lc_grupo_calificacion bigint NOT NULL,
    CONSTRAINT lc_objetoconstruccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 16)))
);
 B   DROP TABLE test_ladm_cadastral_cartography.lc_objetoconstruccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_objetoconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_objetoconstruccion IS 'Puntaje de cada item de la calificación de construcción.';
            test_ladm_cadastral_cartography       postgres    false    779            �'           0    0 5   COLUMN lc_objetoconstruccion.tipo_objeto_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_objetoconstruccion.tipo_objeto_construccion IS 'Item de la calificación de construcción según la método de calificación vigente.';
            test_ladm_cadastral_cartography       postgres    false    779            �'           0    0 #   COLUMN lc_objetoconstruccion.puntos    COMMENT     s   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_objetoconstruccion.puntos IS 'Puntaje del ítem calificado.';
            test_ladm_cadastral_cartography       postgres    false    779            0           1259    587610    lc_objetoconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_objetoconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_ladm_cadastral_cartography.lc_objetoconstrucciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587220    lc_ofertasmercadoinmobiliario    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 J   DROP TABLE test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0 0   COLUMN lc_ofertasmercadoinmobiliario.tipo_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario.tipo_oferta IS 'La clase de oferta corresponde a una oferta de venta o a una oferta de arriendo del predio.';
            test_ladm_cadastral_cartography       postgres    false    780            �'           0    0 1   COLUMN lc_ofertasmercadoinmobiliario.valor_pedido    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario.valor_pedido IS 'Dato del valor en pesos de la oferta';
            test_ladm_cadastral_cartography       postgres    false    780            �'           0    0 4   COLUMN lc_ofertasmercadoinmobiliario.valor_negociado    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario.valor_negociado IS 'Dato del valor en pesos negociado entre el vendedor y el posible comprador';
            test_ladm_cadastral_cartography       postgres    false    780            �'           0    0 9   COLUMN lc_ofertasmercadoinmobiliario.fecha_captura_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario.fecha_captura_oferta IS 'Año, mes y día de captura de la oferta en campo.';
            test_ladm_cadastral_cartography       postgres    false    780            �'           0    0 :   COLUMN lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado IS 'Número de meses de la publicitación de la oferta en el mercado inmobiliario.';
            test_ladm_cadastral_cartography       postgres    false    780            �'           0    0 =   COLUMN lc_ofertasmercadoinmobiliario.numero_contacto_oferente    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario.numero_contacto_oferente IS 'Número de teléfono fijo o número celular de la persona que está publicitando el bien inmueble.';
            test_ladm_cadastral_cartography       postgres    false    780            ?           1259    587745    lc_ofertatipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_ofertatipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_cadastral_cartography.lc_ofertatipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587229 	   lc_predio    TABLE     L  CREATE TABLE test_ladm_cadastral_cartography.lc_predio (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_ladm_cadastral_cartography.lc_predio;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_predio    COMMENT     /  COMMENT ON TABLE test_ladm_cadastral_cartography.lc_predio IS 'Clase especializada de BaUnit, que describe la unidad administrativa básica para el caso de Colombia.
El predio es la unidad territorial legal propia de Catastro. Está formada por el terreno y puede o no tener construcciones asociadas.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0    COLUMN lc_predio.departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.departamento IS 'Corresponde al código del departamento al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 2 dígitos.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0    COLUMN lc_predio.municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.municipio IS 'Corresponde al código del municipio al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 3 dígitos.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0    COLUMN lc_predio.id_operacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.id_operacion IS 'Identificador único temporal de cada predio que se asigna en el desarrollo del levantamiento catastral.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0    COLUMN lc_predio.tiene_fmi    COMMENT     ~   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.tiene_fmi IS 'Indica si el predio tiene matricula inmobiliaria.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0    COLUMN lc_predio.codigo_orip    COMMENT     `   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.codigo_orip IS 'Circulo registral';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0 '   COLUMN lc_predio.matricula_inmobiliaria    COMMENT     p   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.matricula_inmobiliaria IS 'Matricula inmobiliaria';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0    COLUMN lc_predio.numero_predial    COMMENT     2  COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.numero_predial IS 'Nuevo Código numérico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0 (   COLUMN lc_predio.numero_predial_anterior    COMMENT     ;  COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.numero_predial_anterior IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0    COLUMN lc_predio.nupre    COMMENT     O  COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0 !   COLUMN lc_predio.avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.avaluo_catastral IS 'Valor catastral del predio, obtenido mediante investigación y análisis estadístico del mercado inmobiliario y la metodología de aplicación correspondiente.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0 !   COLUMN lc_predio.condicion_predio    COMMENT     z   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0    COLUMN lc_predio.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.nombre IS 'Nombre que recibe la unidad administrativa básica, en muchos casos toponímico, especialmente en terrenos rústicos.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0 +   COLUMN lc_predio.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0 &   COLUMN lc_predio.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0 #   COLUMN lc_predio.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    781            �'           0    0    COLUMN lc_predio.local_id    COMMENT     g   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_predio.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    781                       1259    587371    lc_predio_copropiedad    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.lc_predio_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    predio bigint NOT NULL,
    copropiedad bigint NOT NULL
);
 B   DROP TABLE test_ladm_cadastral_cartography.lc_predio_copropiedad;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587379    lc_predio_ini_predioinsumos    TABLE       CREATE TABLE test_ladm_cadastral_cartography.lc_predio_ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ini_predio_insumos bigint NOT NULL,
    lc_predio bigint NOT NULL
);
 H   DROP TABLE test_ladm_cadastral_cartography.lc_predio_ini_predioinsumos;
       test_ladm_cadastral_cartography         postgres    false    699    16            j           1259    588132    lc_prediotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_prediotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_cadastral_cartography.lc_prediotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            o           1259    588177 &   lc_procedimientocatastralregistraltipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_procedimientocatastralregistraltipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 S   DROP TABLE test_ladm_cadastral_cartography.lc_procedimientocatastralregistraltipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587241    lc_puntocontrol    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_puntocontrol (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 <   DROP TABLE test_ladm_cadastral_cartography.lc_puntocontrol;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_puntocontrol    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_puntocontrol IS 'Puntos topograficos o geodesicos utilizados como amarre para la ejecución del levantamiento catastral.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0 '   COLUMN lc_puntocontrol.id_punto_control    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.id_punto_control IS 'Nombre o código del punto de control.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0     COLUMN lc_puntocontrol.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0 )   COLUMN lc_puntocontrol.tipo_punto_control    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.tipo_punto_control IS 'Si se trata de un punto de control o de apoyo.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0 +   COLUMN lc_puntocontrol.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.exactitud_horizontal IS 'Exactitud horizontal de la medición del punto.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0 )   COLUMN lc_puntocontrol.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.exactitud_vertical IS 'Exactitud vertical de la medición del punto.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0 -   COLUMN lc_puntocontrol.posicion_interpolacion    COMMENT     |   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0 '   COLUMN lc_puntocontrol.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0     COLUMN lc_puntocontrol.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0 1   COLUMN lc_puntocontrol.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0 ,   COLUMN lc_puntocontrol.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0 )   COLUMN lc_puntocontrol.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    782            �'           0    0    COLUMN lc_puntocontrol.local_id    COMMENT     m   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntocontrol.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    782            J           1259    587844    lc_puntocontroltipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_puntocontroltipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_cadastral_cartography.lc_puntocontroltipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587342    lc_puntolevantamiento    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_puntolevantamiento (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 B   DROP TABLE test_ladm_cadastral_cartography.lc_puntolevantamiento;
       test_ladm_cadastral_cartography         postgres    false    699    16            �'           0    0    TABLE lc_puntolevantamiento    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_puntolevantamiento IS 'Puntos que definen los limites de las construcciones, unidad de construcción y servidumbres de transito.';
            test_ladm_cadastral_cartography       postgres    false    789            �'           0    0 3   COLUMN lc_puntolevantamiento.id_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.id_punto_levantamiento IS 'Nombre o código del punto levantamiento.';
            test_ladm_cadastral_cartography       postgres    false    789            �'           0    0 &   COLUMN lc_puntolevantamiento.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_cadastral_cartography       postgres    false    789            �'           0    0 5   COLUMN lc_puntolevantamiento.tipo_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.tipo_punto_levantamiento IS 'Indica si el tipo de punto corresponde a una construcción o servidumbre de tránsito.';
            test_ladm_cadastral_cartography       postgres    false    789            �'           0    0 /   COLUMN lc_puntolevantamiento.fotoidentificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_cadastral_cartography       postgres    false    789            �'           0    0 1   COLUMN lc_puntolevantamiento.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto levantamiento.';
            test_ladm_cadastral_cartography       postgres    false    789            �'           0    0 /   COLUMN lc_puntolevantamiento.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto levantamiento';
            test_ladm_cadastral_cartography       postgres    false    789            �'           0    0 3   COLUMN lc_puntolevantamiento.posicion_interpolacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_cadastral_cartography       postgres    false    789            �'           0    0 -   COLUMN lc_puntolevantamiento.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_cadastral_cartography       postgres    false    789             (           0    0 &   COLUMN lc_puntolevantamiento.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_cadastral_cartography       postgres    false    789            (           0    0 7   COLUMN lc_puntolevantamiento.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    789            (           0    0 2   COLUMN lc_puntolevantamiento.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    789            (           0    0 /   COLUMN lc_puntolevantamiento.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    789            (           0    0 %   COLUMN lc_puntolevantamiento.local_id    COMMENT     s   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolevantamiento.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    789            R           1259    587916    lc_puntolevtipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_puntolevtipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_cadastral_cartography.lc_puntolevtipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587260    lc_puntolindero    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_puntolindero (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 <   DROP TABLE test_ladm_cadastral_cartography.lc_puntolindero;
       test_ladm_cadastral_cartography         postgres    false    699    16            (           0    0    TABLE lc_puntolindero    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_puntolindero IS 'Puntos que definen los lindero de un terreno. La sucesión de estos puntos forman una línea que representa el límite entre dos terrenos.';
            test_ladm_cadastral_cartography       postgres    false    783            (           0    0 '   COLUMN lc_puntolindero.id_punto_lindero    COMMENT     |   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.id_punto_lindero IS 'Nombre o código del punto lindero';
            test_ladm_cadastral_cartography       postgres    false    783            (           0    0     COLUMN lc_puntolindero.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_cadastral_cartography       postgres    false    783            (           0    0    COLUMN lc_puntolindero.acuerdo    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.acuerdo IS 'Indica si existe acuerdo o no entre los colindantes en relación al punto lindero que se está midiendo.';
            test_ladm_cadastral_cartography       postgres    false    783            	(           0    0 )   COLUMN lc_puntolindero.fotoidentificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_cadastral_cartography       postgres    false    783            
(           0    0 +   COLUMN lc_puntolindero.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto lindero';
            test_ladm_cadastral_cartography       postgres    false    783            (           0    0 )   COLUMN lc_puntolindero.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto lindero';
            test_ladm_cadastral_cartography       postgres    false    783            (           0    0 -   COLUMN lc_puntolindero.posicion_interpolacion    COMMENT     |   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_cadastral_cartography       postgres    false    783            (           0    0 '   COLUMN lc_puntolindero.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_cadastral_cartography       postgres    false    783            (           0    0     COLUMN lc_puntolindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_cadastral_cartography       postgres    false    783            (           0    0 1   COLUMN lc_puntolindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    783            (           0    0 ,   COLUMN lc_puntolindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    783            (           0    0 )   COLUMN lc_puntolindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    783            (           0    0    COLUMN lc_puntolindero.local_id    COMMENT     m   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_puntolindero.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    783            N           1259    587880    lc_puntotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_cadastral_cartography.lc_puntotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            @           1259    587754    lc_relacionprediotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_relacionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_cadastral_cartography.lc_relacionprediotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587280    lc_restriccion    TABLE     f  CREATE TABLE test_ladm_cadastral_cartography.lc_restriccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 ;   DROP TABLE test_ladm_cadastral_cartography.lc_restriccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            (           0    0    TABLE lc_restriccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_restriccion IS 'Restricción legalmente constituida y registrada que afecta el derecho de un persona en relación con el predio.';
            test_ladm_cadastral_cartography       postgres    false    784            (           0    0    COLUMN lc_restriccion.tipo    COMMENT     x   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_restriccion.tipo IS 'Tipo de Restricción que afecta el derecho.';
            test_ladm_cadastral_cartography       postgres    false    784            (           0    0 !   COLUMN lc_restriccion.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_restriccion.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_cadastral_cartography       postgres    false    784            (           0    0 0   COLUMN lc_restriccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_restriccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    784            (           0    0 +   COLUMN lc_restriccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_restriccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    784            (           0    0 (   COLUMN lc_restriccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_restriccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    784            (           0    0    COLUMN lc_restriccion.local_id    COMMENT     l   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_restriccion.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    784            ;           1259    587709    lc_restricciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_restricciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_cadastral_cartography.lc_restricciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            L           1259    587862    lc_resultadovisitatipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_resultadovisitatipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_cadastral_cartography.lc_resultadovisitatipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587387    lc_servidumbretransito    TABLE       CREATE TABLE test_ladm_cadastral_cartography.lc_servidumbretransito (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 C   DROP TABLE test_ladm_cadastral_cartography.lc_servidumbretransito;
       test_ladm_cadastral_cartography         postgres    false    699    16            (           0    0    TABLE lc_servidumbretransito    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_servidumbretransito IS 'Tipo de unidad espacial que permite la representación de una servidumbre de paso asociada a una COL_BAUnit.';
            test_ladm_cadastral_cartography       postgres    false    793            (           0    0 .   COLUMN lc_servidumbretransito.area_servidumbre    COMMENT        COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_servidumbretransito.area_servidumbre IS 'Área total de la servidumbre.';
            test_ladm_cadastral_cartography       postgres    false    793            (           0    0 '   COLUMN lc_servidumbretransito.dimension    COMMENT     p   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_servidumbretransito.dimension IS 'Dimensión del objeto.';
            test_ladm_cadastral_cartography       postgres    false    793            (           0    0 &   COLUMN lc_servidumbretransito.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_servidumbretransito.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    793            (           0    0 1   COLUMN lc_servidumbretransito.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_servidumbretransito.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    793            (           0    0 '   COLUMN lc_servidumbretransito.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_servidumbretransito.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_cadastral_cartography       postgres    false    793             (           0    0 8   COLUMN lc_servidumbretransito.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_servidumbretransito.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    793            !(           0    0 3   COLUMN lc_servidumbretransito.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_servidumbretransito.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    793            "(           0    0 0   COLUMN lc_servidumbretransito.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_servidumbretransito.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    793            #(           0    0 &   COLUMN lc_servidumbretransito.local_id    COMMENT     t   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_servidumbretransito.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    793            Z           1259    587988    lc_sexotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_sexotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_cadastral_cartography.lc_sexotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587294 
   lc_terreno    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_ladm_cadastral_cartography.lc_terreno;
       test_ladm_cadastral_cartography         postgres    false    699    16            $(           0    0    TABLE lc_terreno    COMMENT     ~   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_terreno IS 'Porción de tierra con una extensión geográfica definida.';
            test_ladm_cadastral_cartography       postgres    false    785            %(           0    0    COLUMN lc_terreno.area_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_terreno.area_terreno IS 'Área total del terreno  resultante del levantamiento catastral..';
            test_ladm_cadastral_cartography       postgres    false    785            &(           0    0     COLUMN lc_terreno.avaluo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_terreno.avaluo_terreno IS 'Valor catastral asignado en el proceso de valoración económica masiva al terreno del predio.';
            test_ladm_cadastral_cartography       postgres    false    785            '(           0    0 '   COLUMN lc_terreno.manzana_vereda_codigo    COMMENT     h  COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_terreno.manzana_vereda_codigo IS 'Corresponde la identificación del número predial hasta la posición 21, permite identificar la relación espacial en sus componentes: departamento, municipio, zona, sector, comuna, barrio, manzana o vereda y terreno de acuerdo a su codificación en el número predial.';
            test_ladm_cadastral_cartography       postgres    false    785            ((           0    0    COLUMN lc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_terreno.geometria IS 'Corresponde a la figura geométrica vectorial poligonal, generada a partir de los linderos del predio.';
            test_ladm_cadastral_cartography       postgres    false    785            )(           0    0    COLUMN lc_terreno.dimension    COMMENT     d   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_terreno.dimension IS 'Dimensión del objeto.';
            test_ladm_cadastral_cartography       postgres    false    785            *(           0    0    COLUMN lc_terreno.etiqueta    COMMENT        COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_terreno.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    785            +(           0    0 %   COLUMN lc_terreno.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_terreno.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    785            ,(           0    0 ,   COLUMN lc_terreno.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_terreno.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    785            -(           0    0 '   COLUMN lc_terreno.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_terreno.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    785            .(           0    0 $   COLUMN lc_terreno.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_terreno.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    785            /(           0    0    COLUMN lc_terreno.local_id    COMMENT     h   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_terreno.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    785                       1259    587362    lc_tipologiaconstruccion    TABLE     +  CREATE TABLE test_ladm_cadastral_cartography.lc_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint NOT NULL,
    lc_unidad_construccion bigint
);
 E   DROP TABLE test_ladm_cadastral_cartography.lc_tipologiaconstruccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            0(           0    0    TABLE lc_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_tipologiaconstruccion IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_cadastral_cartography       postgres    false    790            1(           0    0 .   COLUMN lc_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_tipologiaconstruccion.tipo_tipologia IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_cadastral_cartography       postgres    false    790            H           1259    587826    lc_tipologiatipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_tipologiatipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_cadastral_cartography.lc_tipologiatipo;
       test_ladm_cadastral_cartography         postgres    false    699    16                       1259    587400    lc_unidadconstruccion    TABLE     �	  CREATE TABLE test_ladm_cadastral_cartography.lc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 B   DROP TABLE test_ladm_cadastral_cartography.lc_unidadconstruccion;
       test_ladm_cadastral_cartography         postgres    false    699    16            2(           0    0    TABLE lc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.lc_unidadconstruccion IS 'Es cada conjunto de materiales consolidados dentro de un predio que tiene unas características específicas en cuanto a elementos constitutivos físicos y usos de la misma.';
            test_ladm_cadastral_cartography       postgres    false    794            3(           0    0 *   COLUMN lc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_cadastral_cartography       postgres    false    794            4(           0    0 )   COLUMN lc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_cadastral_cartography       postgres    false    794            5(           0    0 .   COLUMN lc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_cadastral_cartography       postgres    false    794            6(           0    0 5   COLUMN lc_unidadconstruccion.tipo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.tipo_unidad_construccion IS 'Indica si la unidad de construcción es residencial, comercial, industrial o anexo.';
            test_ladm_cadastral_cartography       postgres    false    794            7(           0    0 (   COLUMN lc_unidadconstruccion.tipo_planta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.tipo_planta IS 'Indica el tipo de planta donde se ubica la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    794            8(           0    0 -   COLUMN lc_unidadconstruccion.planta_ubicacion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.planta_ubicacion IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_cadastral_cartography       postgres    false    794            9(           0    0 /   COLUMN lc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    794            :(           0    0 )   COLUMN lc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    794            ;(           0    0 *   COLUMN lc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    794            <(           0    0 (   COLUMN lc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    794            =(           0    0     COLUMN lc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    794            >(           0    0 .   COLUMN lc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    794            ?(           0    0 7   COLUMN lc_unidadconstruccion.avaluo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.avaluo_unidad_construccion IS 'Avalúo catastral de la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    794            @(           0    0 ,   COLUMN lc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    794            A(           0    0 4   COLUMN lc_unidadconstruccion.area_privada_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.area_privada_construida IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_cadastral_cartography       postgres    false    794            B(           0    0 #   COLUMN lc_unidadconstruccion.altura    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.altura IS 'Altura total de la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    794            C(           0    0 *   COLUMN lc_unidadconstruccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.observaciones IS 'Observaciones generales respecto de la unidad de construcción.';
            test_ladm_cadastral_cartography       postgres    false    794            D(           0    0 &   COLUMN lc_unidadconstruccion.dimension    COMMENT     o   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.dimension IS 'Dimensión del objeto.';
            test_ladm_cadastral_cartography       postgres    false    794            E(           0    0 %   COLUMN lc_unidadconstruccion.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    794            F(           0    0 0   COLUMN lc_unidadconstruccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    794            G(           0    0 &   COLUMN lc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_cadastral_cartography       postgres    false    794            H(           0    0 7   COLUMN lc_unidadconstruccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    794            I(           0    0 2   COLUMN lc_unidadconstruccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_cadastral_cartography       postgres    false    794            J(           0    0 /   COLUMN lc_unidadconstruccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_cadastral_cartography       postgres    false    794            K(           0    0 %   COLUMN lc_unidadconstruccion.local_id    COMMENT     s   COMMENT ON COLUMN test_ladm_cadastral_cartography.lc_unidadconstruccion.local_id IS 'Identificador único local.';
            test_ladm_cadastral_cartography       postgres    false    794            ^           1259    588024    lc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_ladm_cadastral_cartography.lc_unidadconstrucciontipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            D           1259    587790    lc_usouconstipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_usouconstipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_cadastral_cartography.lc_usouconstipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            ,           1259    587574 
   lc_viatipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.lc_viatipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_cadastral_cartography.lc_viatipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            e           1259    588087    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_cadastral_cartography.snr_calidadderechotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            .           1259    587592    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 H   DROP TABLE test_ladm_cadastral_cartography.snr_clasepredioregistrotipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586985    snr_derecho    TABLE     {  CREATE TABLE test_ladm_cadastral_cartography.snr_derecho (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 8   DROP TABLE test_ladm_cadastral_cartography.snr_derecho;
       test_ladm_cadastral_cartography         postgres    false    699    16            L(           0    0    TABLE snr_derecho    COMMENT     i   COMMENT ON TABLE test_ladm_cadastral_cartography.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
            test_ladm_cadastral_cartography       postgres    false    758            M(           0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     |   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
            test_ladm_cadastral_cartography       postgres    false    758            N(           0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
            test_ladm_cadastral_cartography       postgres    false    758            4           1259    587646    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 E   DROP TABLE test_ladm_cadastral_cartography.snr_documentotitulartipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    586994    snr_estructuramatriculamatriz    TABLE     [  CREATE TABLE test_ladm_cadastral_cartography.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 J   DROP TABLE test_ladm_cadastral_cartography.snr_estructuramatriculamatriz;
       test_ladm_cadastral_cartography         postgres    false    699    16            O(           0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_cadastral_cartography       postgres    false    759            P(           0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_cadastral_cartography       postgres    false    759            Q(           0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
            test_ladm_cadastral_cartography       postgres    false    759            �           1259    587001    snr_fuentecabidalinderos    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 E   DROP TABLE test_ladm_cadastral_cartography.snr_fuentecabidalinderos;
       test_ladm_cadastral_cartography         postgres    false    699    16            R(           0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
            test_ladm_cadastral_cartography       postgres    false    760            S(           0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_cadastral_cartography       postgres    false    760            T(           0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_cadastral_cartography       postgres    false    760            U(           0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_cadastral_cartography       postgres    false    760            V(           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_cadastral_cartography       postgres    false    760            �           1259    587011    snr_fuentederecho    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 >   DROP TABLE test_ladm_cadastral_cartography.snr_fuentederecho;
       test_ladm_cadastral_cartography         postgres    false    699    16            W(           0    0    TABLE snr_fuentederecho    COMMENT     u   COMMENT ON TABLE test_ladm_cadastral_cartography.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
            test_ladm_cadastral_cartography       postgres    false    761            X(           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_cadastral_cartography       postgres    false    761            Y(           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_cadastral_cartography       postgres    false    761            Z(           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_cadastral_cartography       postgres    false    761            [(           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_cadastral_cartography       postgres    false    761            k           1259    588141    snr_fuentetipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_cadastral_cartography.snr_fuentetipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            X           1259    587970    snr_personatitulartipo    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_cadastral_cartography.snr_personatitulartipo;
       test_ladm_cadastral_cartography         postgres    false    699    16            �           1259    587032    snr_predioregistro    TABLE     K  CREATE TABLE test_ladm_cadastral_cartography.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
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
 ?   DROP TABLE test_ladm_cadastral_cartography.snr_predioregistro;
       test_ladm_cadastral_cartography         postgres    false    699    16            \(           0    0    TABLE snr_predioregistro    COMMENT     r   COMMENT ON TABLE test_ladm_cadastral_cartography.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
            test_ladm_cadastral_cartography       postgres    false    763            ](           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_cadastral_cartography       postgres    false    763            ^(           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_cadastral_cartography       postgres    false    763            _(           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     Z  COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_cadastral_cartography       postgres    false    763            `(           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     ^  COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_cadastral_cartography       postgres    false    763            a(           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
            test_ladm_cadastral_cartography       postgres    false    763            b(           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
            test_ladm_cadastral_cartography       postgres    false    763            c(           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
            test_ladm_cadastral_cartography       postgres    false    763            d(           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT     y   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
            test_ladm_cadastral_cartography       postgres    false    763            �           1259    587021    snr_titular    TABLE     �  CREATE TABLE test_ladm_cadastral_cartography.snr_titular (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 8   DROP TABLE test_ladm_cadastral_cartography.snr_titular;
       test_ladm_cadastral_cartography         postgres    false    699    16            e(           0    0    TABLE snr_titular    COMMENT     v   COMMENT ON TABLE test_ladm_cadastral_cartography.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
            test_ladm_cadastral_cartography       postgres    false    762            f(           0    0    COLUMN snr_titular.tipo_persona    COMMENT     a   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_titular.tipo_persona IS 'Tipo de persona';
            test_ladm_cadastral_cartography       postgres    false    762            g(           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     w   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_cadastral_cartography       postgres    false    762            h(           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     |   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
            test_ladm_cadastral_cartography       postgres    false    762            i(           0    0    COLUMN snr_titular.nombres    COMMENT     k   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_titular.nombres IS 'Nombres de la persona física.';
            test_ladm_cadastral_cartography       postgres    false    762            j(           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     {   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_cadastral_cartography       postgres    false    762            k(           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     }   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_cadastral_cartography       postgres    false    762            l(           0    0    COLUMN snr_titular.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_cadastral_cartography.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
            test_ladm_cadastral_cartography       postgres    false    762            �           1259    587043    snr_titular_derecho    TABLE     F  CREATE TABLE test_ladm_cadastral_cartography.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_ladm_cadastral_cartography.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 @   DROP TABLE test_ladm_cadastral_cartography.snr_titular_derecho;
       test_ladm_cadastral_cartography         postgres    false    699    16            m(           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_cadastral_cartography.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
            test_ladm_cadastral_cartography       postgres    false    764            q           1259    588194    t_ili2db_attrname    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 >   DROP TABLE test_ladm_cadastral_cartography.t_ili2db_attrname;
       test_ladm_cadastral_cartography         postgres    false    16            &           1259    587530    t_ili2db_basket    TABLE       CREATE TABLE test_ladm_cadastral_cartography.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 <   DROP TABLE test_ladm_cadastral_cartography.t_ili2db_basket;
       test_ladm_cadastral_cartography         postgres    false    16            p           1259    588186    t_ili2db_classname    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 ?   DROP TABLE test_ladm_cadastral_cartography.t_ili2db_classname;
       test_ladm_cadastral_cartography         postgres    false    16            r           1259    588202    t_ili2db_column_prop    TABLE     !  CREATE TABLE test_ladm_cadastral_cartography.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 A   DROP TABLE test_ladm_cadastral_cartography.t_ili2db_column_prop;
       test_ladm_cadastral_cartography         postgres    false    16            '           1259    587539    t_ili2db_dataset    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 =   DROP TABLE test_ladm_cadastral_cartography.t_ili2db_dataset;
       test_ladm_cadastral_cartography         postgres    false    16            (           1259    587544    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 A   DROP TABLE test_ladm_cadastral_cartography.t_ili2db_inheritance;
       test_ladm_cadastral_cartography         postgres    false    16            t           1259    588214    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 @   DROP TABLE test_ladm_cadastral_cartography.t_ili2db_meta_attrs;
       test_ladm_cadastral_cartography         postgres    false    16            +           1259    587566    t_ili2db_model    TABLE     	  CREATE TABLE test_ladm_cadastral_cartography.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 ;   DROP TABLE test_ladm_cadastral_cartography.t_ili2db_model;
       test_ladm_cadastral_cartography         postgres    false    16            )           1259    587552    t_ili2db_settings    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 >   DROP TABLE test_ladm_cadastral_cartography.t_ili2db_settings;
       test_ladm_cadastral_cartography         postgres    false    16            s           1259    588208    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 @   DROP TABLE test_ladm_cadastral_cartography.t_ili2db_table_prop;
       test_ladm_cadastral_cartography         postgres    false    16            *           1259    587560    t_ili2db_trafo    TABLE     �   CREATE TABLE test_ladm_cadastral_cartography.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 ;   DROP TABLE test_ladm_cadastral_cartography.t_ili2db_trafo;
       test_ladm_cadastral_cartography         postgres    false    16            &          0    587520 	   cc_barrio 
   TABLE DATA               w   COPY test_ladm_cadastral_cartography.cc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    805   �	      �%          0    587419    cc_centropoblado 
   TABLE DATA               o   COPY test_ladm_cadastral_cartography.cc_centropoblado (t_id, t_ili_tid, codigo, nombre, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    795   �	      �%          0    587429    cc_corregimiento 
   TABLE DATA               o   COPY test_ladm_cadastral_cartography.cc_corregimiento (t_id, t_ili_tid, codigo, nombre, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    796   �	      �%          0    587439    cc_limitemunicipio 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.cc_limitemunicipio (t_id, t_ili_tid, codigo_departamento, codigo_municipio, nombre_municipio, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    797   
      &          0    587510    cc_localidadcomuna 
   TABLE DATA               q   COPY test_ladm_cadastral_cartography.cc_localidadcomuna (t_id, t_ili_tid, codigo, nombre, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    804   0
      �%          0    587449 
   cc_manzana 
   TABLE DATA               x   COPY test_ladm_cadastral_cartography.cc_manzana (t_id, t_ili_tid, codigo, codigo_barrio, nombre, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    798   M
      �%          0    586477    cc_metodooperacion 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.cc_metodooperacion (t_id, t_seq, formula, dimensiones_origen, ddimensiones_objetivo, col_transformacion_transformacion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    706   j
       &          0    587459    cc_nomenclaturavial 
   TABLE DATA               x   COPY test_ladm_cadastral_cartography.cc_nomenclaturavial (t_id, t_ili_tid, tipo_via, numero_via, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    799   �
      *&          0    587835    cc_nomenclaturavial_tipo_via 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.cc_nomenclaturavial_tipo_via (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    841   �
      &          0    587470    cc_perimetrourbano 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.cc_perimetrourbano (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    800   �      &          0    587480    cc_sectorrural 
   TABLE DATA               e   COPY test_ladm_cadastral_cartography.cc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    801   �      &          0    587490    cc_sectorurbano 
   TABLE DATA               f   COPY test_ladm_cadastral_cartography.cc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    802         &          0    587500 	   cc_vereda 
   TABLE DATA               w   COPY test_ladm_cadastral_cartography.cc_vereda (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    803         &          0    587619    ci_forma_presentacion_codigo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.ci_forma_presentacion_codigo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    817   ;      &          0    587718    col_areatipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_areatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    828         �%          0    586484    col_areavalor 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_areavalor (t_id, t_seq, tipo, area, datos_proyeccion, lc_construccion_area, lc_terreno_area, lc_servidumbretransito_area, lc_unidadconstruccion_area) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    707   ,      �%          0    586753    col_baunitcomointeresado 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_baunitcomointeresado (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    734   I      �%          0    586662    col_baunitfuente 
   TABLE DATA               m   COPY test_ladm_cadastral_cartography.col_baunitfuente (t_id, t_ili_tid, fuente_espacial, unidad) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    724   f      �%          0    586677    col_cclfuente 
   TABLE DATA               g   COPY test_ladm_cadastral_cartography.col_cclfuente (t_id, t_ili_tid, ccl, fuente_espacial) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    726   �      �%          0    586717    col_clfuente 
   TABLE DATA               a   COPY test_ladm_cadastral_cartography.col_clfuente (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    730   �      7&          0    587952    col_contenidoniveltipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_contenidoniveltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    854   �      &          0    587736    col_dimensiontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_dimensiontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    830   �      G&          0    588096    col_estadodisponibilidadtipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_estadodisponibilidadtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    870   >      M&          0    588150    col_estadoredserviciostipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_estadoredserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    876         :&          0    587979    col_estructuratipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_estructuratipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    857   �      4&          0    587925    col_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    851   U      &          0    587655    col_fuenteespacialtipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_fuenteespacialtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    821   	      &          0    587637    col_grupointeresadotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_grupointeresadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    819   @      &&          0    587799    col_interpolaciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_interpolaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    837   '      0&          0    587889    col_iso19125_tipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_iso19125_tipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    847   �      �%          0    586696 
   col_masccl 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_masccl (t_id, t_ili_tid, ccl_mas, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion, ue_mas_lc_construccion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    728   G      �%          0    586734 	   col_mascl 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_mascl (t_id, t_ili_tid, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion, ue_mas_lc_construccion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    732   d      �%          0    586685    col_menosccl 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_menosccl (t_id, t_ili_tid, ccl_menos, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion, ue_menos_lc_construccion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    727   �      �%          0    586724    col_menoscl 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_menoscl (t_id, t_ili_tid, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion, ue_menos_lc_construccion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    731   �      J&          0    588123    col_metodoproducciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_metodoproducciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    873   �      �%          0    586780    col_miembros 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_miembros (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, agrupacion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    737   �      �%          0    586707    col_puntoccl 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_puntoccl (t_id, t_ili_tid, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento, ccl) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    729         �%          0    586744    col_puntocl 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_puntocl (t_id, t_ili_tid, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    733   )      �%          0    586641    col_puntofuente 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_puntofuente (t_id, t_ili_tid, fuente_espacial, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    722   F      6&          0    587943    col_puntotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    853   c      2&          0    587907    col_redserviciostipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_redserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    849   �      8&          0    587961    col_registrotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_registrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    855   �      �%          0    586626    col_relacionfuente 
   TABLE DATA               m   COPY test_ladm_cadastral_cartography.col_relacionfuente (t_id, t_ili_tid, fuente_administrativa) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    720          �%          0    586670    col_relacionfuenteuespacial 
   TABLE DATA               p   COPY test_ladm_cadastral_cartography.col_relacionfuenteuespacial (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    725         &          0    587601    col_relacionsuperficietipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_relacionsuperficietipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    815   :      �%          0    586762    col_responsablefuente 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_responsablefuente (t_id, t_ili_tid, fuente_administrativa, interesado_lc_interesado, interesado_lc_agrupacioninteresados) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    735   �      �%          0    586606    col_rrrfuente 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_rrrfuente (t_id, t_ili_tid, fuente_administrativa, rrr_lc_restriccion, rrr_lc_derecho) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    718   �      �%          0    586771    col_topografofuente 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_topografofuente (t_id, t_ili_tid, fuente_espacial, topografo_lc_interesado, topografo_lc_agrupacioninteresados) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    736         �%          0    586527    col_transformacion 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_transformacion (t_id, t_seq, localizacion_transformada, lc_puntocontrol_transformacion_y_resultado, lc_puntolindero_transformacion_y_resultado, lc_puntolevantamiento_transformacion_y_resultado) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    710   +      �%          0    586615    col_uebaunit 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_uebaunit (t_id, t_ili_tid, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, baunit) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    719   H      �%          0    586651    col_uefuente 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_uefuente (t_id, t_ili_tid, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, fuente_espacial) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    723   e      �%          0    586596    col_ueuegrupo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_ueuegrupo (t_id, t_ili_tid, parte_lc_terreno, parte_lc_servidumbretransito, parte_lc_unidadconstruccion, parte_lc_construccion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    717   �      5&          0    587934 "   col_unidadadministrativabasicatipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_unidadadministrativabasicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    852   �      =&          0    588006    col_unidadedificaciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_unidadedificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    860          �%          0    586633    col_unidadfuente 
   TABLE DATA               s   COPY test_ladm_cadastral_cartography.col_unidadfuente (t_id, t_ili_tid, fuente_administrativa, unidad) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    721   �       <&          0    587997    col_volumentipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_volumentipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    859   �       �%          0    586585    col_volumenvalor 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.col_volumenvalor (t_id, t_seq, volumen_medicion, tipo, lc_construccion_volumen, lc_terreno_volumen, lc_servidumbretransito_volumen, lc_unidadconstruccion_volumen) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    716   %!      �%          0    586573 
   extarchivo 
   TABLE DATA                 COPY test_ladm_cadastral_cartography.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo, lc_fuenteadministrtiva_ext_archivo_id, lc_fuenteespacial_ext_archivo_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    715   B!      �%          0    586498    extdireccion 
   TABLE DATA               3  COPY test_ladm_cadastral_cartography.extdireccion (t_id, t_seq, tipo_direccion, es_direccion_principal, localizacion, codigo_postal, clase_via_principal, valor_via_principal, letra_via_principal, sector_ciudad, valor_via_generadora, letra_via_generadora, numero_predio, sector_predio, complemento, nombre_predio, extunidadedificcnfsica_ext_direccion_id, extinteresado_ext_direccion_id, lc_construccion_ext_direccion_id, lc_predio_direccion, lc_terreno_ext_direccion_id, lc_servidumbretransito_ext_direccion_id, lc_unidadconstruccion_ext_direccion_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    708   _!      B&          0    588051     extdireccion_clase_via_principal 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.extdireccion_clase_via_principal (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    865   |!      E&          0    588078    extdireccion_sector_ciudad 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.extdireccion_sector_ciudad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    868   o"      &          0    587583    extdireccion_sector_predio 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.extdireccion_sector_predio (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    813   �"      I&          0    588114    extdireccion_tipo_direccion 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.extdireccion_tipo_direccion (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    872   �#      �%          0    586555    extinteresado 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.extinteresado (t_id, t_seq, nombre, documento_escaneado, extredserviciosfisica_ext_interesado_administrador_id, lc_agrupacionintersdos_ext_pid, lc_interesado_ext_pid) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    713   �#      �%          0    586567    extredserviciosfisica 
   TABLE DATA               `   COPY test_ladm_cadastral_cartography.extredserviciosfisica (t_id, t_seq, orientada) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    714   $      �%          0    586540    extunidadedificacionfisica 
   TABLE DATA               Z   COPY test_ladm_cadastral_cartography.extunidadedificacionfisica (t_id, t_seq) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    711   5$      �%          0    586519    fraccion 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.fraccion (t_id, t_seq, denominador, numerador, col_miembros_participacion, lc_predio_copropiedad_coeficiente) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    709   R$      �%          0    586789 	   gc_barrio 
   TABLE DATA               w   COPY test_ladm_cadastral_cartography.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    738   o$      �%          0    586799 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    739   �$      �%          0    586809    gc_comisionesconstruccion 
   TABLE DATA               x   COPY test_ladm_cadastral_cartography.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    740   �$      �%          0    586819    gc_comisionesterreno 
   TABLE DATA               s   COPY test_ladm_cadastral_cartography.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    741   �$      �%          0    586829    gc_comisionesunidadconstruccion 
   TABLE DATA               ~   COPY test_ladm_cadastral_cartography.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    742   �$      &          0    587727    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    829    %      �%          0    586839    gc_construccion 
   TABLE DATA                 COPY test_ladm_cadastral_cartography.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    743   (      �%          0    586977    gc_copropiedad 
   TABLE DATA               v   COPY test_ladm_cadastral_cartography.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    757   $(      �%          0    586851    gc_datosphcondominio 
   TABLE DATA               #  COPY test_ladm_cadastral_cartography.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    744   A(      �%          0    586858    gc_datostorreph 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    745   ^(      �%          0    586865    gc_direccion 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    746   {(      �%          0    586876    gc_estadopredio 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    747   �(      �%          0    586883 
   gc_manzana 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    748   �(      �%          0    586893    gc_perimetro 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    749   �(      �%          0    586966    gc_prediocatastro 
   TABLE DATA               &  COPY test_ladm_cadastral_cartography.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    756   �(      �%          0    586903    gc_propietario 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    750   )      �%          0    586913    gc_sectorrural 
   TABLE DATA               e   COPY test_ladm_cadastral_cartography.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    751   ))      �%          0    586923    gc_sectorurbano 
   TABLE DATA               f   COPY test_ladm_cadastral_cartography.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    752   F)      >&          0    588015    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    861   c)      �%          0    586933 
   gc_terreno 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    753   *      �%          0    586944    gc_unidadconstruccion 
   TABLE DATA               E  COPY test_ladm_cadastral_cartography.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    754   6*      A&          0    588042    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    864   S*      �%          0    586956 	   gc_vereda 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    755   !+      �%          0    586443    gm_curve3dlistvalue 
   TABLE DATA               u   COPY test_ladm_cadastral_cartography.gm_curve3dlistvalue (t_id, t_seq, avalue, gm_multicurve3d_geometry) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    702   >+      �%          0    586465    gm_multicurve3d 
   TABLE DATA               O   COPY test_ladm_cadastral_cartography.gm_multicurve3d (t_id, t_seq) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    704   [+      �%          0    586437    gm_multisurface2d 
   TABLE DATA               Q   COPY test_ladm_cadastral_cartography.gm_multisurface2d (t_id, t_seq) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    701   x+      �%          0    586471    gm_multisurface3d 
   TABLE DATA               Q   COPY test_ladm_cadastral_cartography.gm_multisurface3d (t_id, t_seq) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    705   �+      �%          0    586426    gm_surface2dlistvalue 
   TABLE DATA               y   COPY test_ladm_cadastral_cartography.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    700   �+      �%          0    586454    gm_surface3dlistvalue 
   TABLE DATA               y   COPY test_ladm_cadastral_cartography.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    703   �+      �%          0    586546    imagen 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.imagen (t_id, t_seq, uri, extinteresado_huella_dactilar, extinteresado_fotografia, extinteresado_firma) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    712   �+      &          0    587673    ini_emparejamientotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.ini_emparejamientotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    823   	,      �%          0    587051    ini_predioinsumos 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.ini_predioinsumos (t_id, t_ili_tid, tipo_emparejamiento, observaciones, gc_predio_catastro, snr_predio_juridico) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    765   P-      ,&          0    587853    lc_acuerdotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_acuerdotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    843   m-      �%          0    587063    lc_agrupacioninteresados 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_agrupacioninteresados (t_id, t_ili_tid, tipo, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    766   .      1&          0    587898    lc_anexotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_anexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    848   ..      �%          0    587307    lc_calificacionconvencional 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_calificacionconvencional (t_id, t_ili_tid, tipo_calificar, total_calificacion, lc_unidad_construccion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    786   �=      �%          0    587316    lc_calificacionnoconvencional 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_calificacionnoconvencional (t_id, t_ili_tid, tipo_anexo, lc_unidad_construccion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    787   �=      $&          0    587781    lc_calificartipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_calificartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    835   �=      .&          0    587871    lc_categoriasuelotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_categoriasuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    845   �>      &          0    587682    lc_clasecalificaciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_clasecalificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    824    B      &          0    587691    lc_clasesuelotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_clasesuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    825   �D      H&          0    588105    lc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    871   �H      �%          0    587074    lc_construccion 
   TABLE DATA               �  COPY test_ladm_cadastral_cartography.lc_construccion (t_id, t_ili_tid, identificador, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, anio_construccion, avaluo_construccion, area_construccion, altura, observaciones, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    767   �K      D&          0    588069    lc_construccionplantatipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_construccionplantatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    867   �K      &          0    587700    lc_construcciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_construcciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    826   RM      �%          0    587089    lc_contactovisita 
   TABLE DATA               �  COPY test_ladm_cadastral_cartography.lc_contactovisita (t_id, t_ili_tid, tipo_documento_quien_atendio, numero_documento_quien_atendio, primer_nombre_quien_atendio, segundo_nombre_quien_atendio, primer_apellido_quien_atendio, segundo_apellido_quien_atendio, relacion_con_predio, domicilio_notificaciones, celular, correo_electronico, autoriza_notificaciones, lc_datos_adicionales) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    768   N      �%          0    587325 )   lc_datosadicionaleslevantamientocatastral 
   TABLE DATA               �  COPY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral (t_id, t_ili_tid, tiene_area_registral, area_registral_m2, procedimiento_catastral_registral, destinacion_economica, clase_suelo, categoria_suelo, observaciones, fecha_visita_predial, tipo_documento_reconocedor, numero_documento_reconocedor, primer_nombre_reconocedor, segundo_nombre_reconocedor, primer_apellido_reconocedor, segundo_apellido_reconocedor, resultado_visita, suscribe_acta_colindancia, lc_predio) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    788   9N      �%          0    587102    lc_datosphcondominio 
   TABLE DATA               (  COPY test_ladm_cadastral_cartography.lc_datosphcondominio (t_id, t_ili_tid, area_total_terreno, area_total_terreno_privada, area_total_terreno_comun, area_total_construida, area_total_construida_privada, area_total_construida_comun, numero_torres, total_unidades_privadas, lc_predio) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    769   VN      �%          0    587110 
   lc_derecho 
   TABLE DATA               "  COPY test_ladm_cadastral_cartography.lc_derecho (t_id, t_ili_tid, tipo, fraccion_derecho, fecha_inicio_tenencia, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    770   sN      O&          0    588168    lc_derechotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_derechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    878   �N      (&          0    587817    lc_destinacioneconomicatipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_destinacioneconomicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    839   XQ      #&          0    587772    lc_dominioconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_dominioconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    834   �\      C&          0    588060    lc_estadoconservaciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_estadoconservaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    866   t]      �%          0    587124    lc_estructuranovedadfmi 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_estructuranovedadfmi (t_id, t_seq, codigo_orip, numero_fmi, lc_dtsdcnlstmntctstral_novedad_fmi) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    771   5`      �%          0    587131 !   lc_estructuranovedadnumeropredial 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial (t_id, t_seq, numero_predial, tipo_novedad, lc_dtsdcnlstmntctstral_novedad_numeros_prediales) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    772   R`      '&          0    587808 .   lc_estructuranovedadnumeropredial_tipo_novedad 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial_tipo_novedad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    838   o`      "&          0    587763    lc_fotoidentificaciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_fotoidentificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    833   ka      �%          0    587139    lc_fuenteadministrativa 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_fuenteadministrativa (t_id, t_ili_tid, tipo, ente_emisor, observacion, numero_fuente, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    773   Pb      &          0    587664    lc_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    822   mb      �%          0    587152    lc_fuenteespacial 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_fuenteespacial (t_id, t_ili_tid, nombre, tipo, descripcion, metadato, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    774   e      �%          0    587165    lc_grupocalificacion 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_grupocalificacion (t_id, t_ili_tid, clase_calificacion, conservacion, subtotal, lc_calificacion_convencional) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    775   %e      N&          0    588159    lc_grupoetnicotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_grupoetnicotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    877   Be      �%          0    587175    lc_interesado 
   TABLE DATA               9  COPY test_ladm_cadastral_cartography.lc_interesado (t_id, t_ili_tid, tipo, tipo_documento, documento_identidad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, sexo, grupo_etnico, razon_social, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    776   �i      �%          0    587189    lc_interesadocontacto 
   TABLE DATA                 COPY test_ladm_cadastral_cartography.lc_interesadocontacto (t_id, t_ili_tid, telefono1, telefono2, domicilio_notificacion, direccion_residencia, correo_electronico, autoriza_notificacion_correo, departamento, municipio, vereda, corregimiento, lc_interesado) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    777   �i      &          0    587628    lc_interesadodocumentotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_interesadodocumentotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    818   j      @&          0    588033    lc_interesadotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_interesadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    863   m      �%          0    587200 
   lc_lindero 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_lindero (t_id, t_ili_tid, longitud, geometria, localizacion_textual, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    778   Bn      �%          0    587211    lc_objetoconstruccion 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_objetoconstruccion (t_id, t_ili_tid, tipo_objeto_construccion, puntos, lc_grupo_calificacion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    779   _n      &          0    587610    lc_objetoconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_objetoconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    816   |n      �%          0    587220    lc_ofertasmercadoinmobiliario 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario (t_id, t_ili_tid, tipo_oferta, valor_pedido, valor_negociado, fecha_captura_oferta, tiempo_oferta_mercado, numero_contacto_oferente, nombre_oferente, lc_predio) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    780   Q{       &          0    587745    lc_ofertatipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_ofertatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    831   n{      �%          0    587229 	   lc_predio 
   TABLE DATA               W  COPY test_ladm_cadastral_cartography.lc_predio (t_id, t_ili_tid, departamento, municipio, id_operacion, tiene_fmi, codigo_orip, matricula_inmobiliaria, numero_predial, numero_predial_anterior, nupre, avaluo_catastral, tipo, condicion_predio, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    781   _|      �%          0    587371    lc_predio_copropiedad 
   TABLE DATA               c   COPY test_ladm_cadastral_cartography.lc_predio_copropiedad (t_id, predio, copropiedad) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    791   ||      �%          0    587379    lc_predio_ini_predioinsumos 
   TABLE DATA               ~   COPY test_ladm_cadastral_cartography.lc_predio_ini_predioinsumos (t_id, t_ili_tid, ini_predio_insumos, lc_predio) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    792   �|      K&          0    588132    lc_prediotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_prediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    874   �|      P&          0    588177 &   lc_procedimientocatastralregistraltipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_procedimientocatastralregistraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    879   �      �%          0    587241    lc_puntocontrol 
   TABLE DATA               �  COPY test_ladm_cadastral_cartography.lc_puntocontrol (t_id, t_ili_tid, id_punto_control, puntotipo, tipo_punto_control, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    782   !�      +&          0    587844    lc_puntocontroltipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_puntocontroltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    842   >�      �%          0    587342    lc_puntolevantamiento 
   TABLE DATA               �  COPY test_ladm_cadastral_cartography.lc_puntolevantamiento (t_id, t_ili_tid, id_punto_levantamiento, puntotipo, tipo_punto_levantamiento, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    789   Q�      3&          0    587916    lc_puntolevtipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_puntolevtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    850   n�      �%          0    587260    lc_puntolindero 
   TABLE DATA               �  COPY test_ladm_cadastral_cartography.lc_puntolindero (t_id, t_ili_tid, id_punto_lindero, puntotipo, acuerdo, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    783   7�      /&          0    587880    lc_puntotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    846   T�      !&          0    587754    lc_relacionprediotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_relacionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    832   .�      �%          0    587280    lc_restriccion 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_restriccion (t_id, t_ili_tid, tipo, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    784   s�      &          0    587709    lc_restricciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_restricciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    827   ��      -&          0    587862    lc_resultadovisitatipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_resultadovisitatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    844   ��      �%          0    587387    lc_servidumbretransito 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_servidumbretransito (t_id, t_ili_tid, area_servidumbre, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    793   ��      ;&          0    587988    lc_sexotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_sexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    858   ��      �%          0    587294 
   lc_terreno 
   TABLE DATA               	  COPY test_ladm_cadastral_cartography.lc_terreno (t_id, t_ili_tid, area_terreno, avaluo_terreno, manzana_vereda_codigo, geometria, dimension, etiqueta, relacion_superficie, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    785   ?�      �%          0    587362    lc_tipologiaconstruccion 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, lc_unidad_construccion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    790   \�      )&          0    587826    lc_tipologiatipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    840   y�      �%          0    587400    lc_unidadconstruccion 
   TABLE DATA                 COPY test_ladm_cadastral_cartography.lc_unidadconstruccion (t_id, t_ili_tid, identificador, tipo_dominio, tipo_construccion, tipo_unidad_construccion, tipo_planta, planta_ubicacion, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, avaluo_unidad_construccion, area_construida, area_privada_construida, altura, observaciones, lc_construccion, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    794   d�      ?&          0    588024    lc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    862   ��      %&          0    587790    lc_usouconstipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    836   ��      &          0    587574 
   lc_viatipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.lc_viatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    812   #�      F&          0    588087    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    869   ��      &          0    587592    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    814   _�      �%          0    586985    snr_derecho 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    758   �      &          0    587646    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    820   3�      �%          0    586994    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    759   ]�      �%          0    587001    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    760   z�      �%          0    587011    snr_fuentederecho 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    761   ��      L&          0    588141    snr_fuentetipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    875   ��      9&          0    587970    snr_personatitulartipo 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    856   H�      �%          0    587032    snr_predioregistro 
   TABLE DATA                 COPY test_ladm_cadastral_cartography.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    763   m�      �%          0    587021    snr_titular 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    762   ��      �%          0    587043    snr_titular_derecho 
   TABLE DATA               �   COPY test_ladm_cadastral_cartography.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    764   ��      R&          0    588194    t_ili2db_attrname 
   TABLE DATA               h   COPY test_ladm_cadastral_cartography.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    881   ��      &          0    587530    t_ili2db_basket 
   TABLE DATA               {   COPY test_ladm_cadastral_cartography.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    806   x�      Q&          0    588186    t_ili2db_classname 
   TABLE DATA               W   COPY test_ladm_cadastral_cartography.t_ili2db_classname (iliname, sqlname) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    880   ��      S&          0    588202    t_ili2db_column_prop 
   TABLE DATA               u   COPY test_ladm_cadastral_cartography.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    882   �       &          0    587539    t_ili2db_dataset 
   TABLE DATA               V   COPY test_ladm_cadastral_cartography.t_ili2db_dataset (t_id, datasetname) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    807   �&      	&          0    587544    t_ili2db_inheritance 
   TABLE DATA               ]   COPY test_ladm_cadastral_cartography.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    808   �&      U&          0    588214    t_ili2db_meta_attrs 
   TABLE DATA               i   COPY test_ladm_cadastral_cartography.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    884   �,      &          0    587566    t_ili2db_model 
   TABLE DATA               w   COPY test_ladm_cadastral_cartography.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    811   Af      
&          0    587552    t_ili2db_settings 
   TABLE DATA               R   COPY test_ladm_cadastral_cartography.t_ili2db_settings (tag, setting) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    809   �O      T&          0    588208    t_ili2db_table_prop 
   TABLE DATA               _   COPY test_ladm_cadastral_cartography.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    883   �Q      &          0    587560    t_ili2db_trafo 
   TABLE DATA               X   COPY test_ladm_cadastral_cartography.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
    test_ladm_cadastral_cartography       postgres    false    810   3Z      n(           0    0    t_ili2db_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('test_ladm_cadastral_cartography.t_ili2db_seq', 598, true);
            test_ladm_cadastral_cartography       postgres    false    699            �#           2606    587528    cc_barrio cc_barrio_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_barrio
    ADD CONSTRAINT cc_barrio_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_barrio DROP CONSTRAINT cc_barrio_pkey;
       test_ladm_cadastral_cartography         postgres    false    805            y#           2606    587427 &   cc_centropoblado cc_centropoblado_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_centropoblado
    ADD CONSTRAINT cc_centropoblado_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_centropoblado DROP CONSTRAINT cc_centropoblado_pkey;
       test_ladm_cadastral_cartography         postgres    false    795            |#           2606    587437 &   cc_corregimiento cc_corregimiento_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_corregimiento
    ADD CONSTRAINT cc_corregimiento_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_corregimiento DROP CONSTRAINT cc_corregimiento_pkey;
       test_ladm_cadastral_cartography         postgres    false    796            #           2606    587447 *   cc_limitemunicipio cc_limitemunicipio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_limitemunicipio
    ADD CONSTRAINT cc_limitemunicipio_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_limitemunicipio DROP CONSTRAINT cc_limitemunicipio_pkey;
       test_ladm_cadastral_cartography         postgres    false    797            �#           2606    587518 *   cc_localidadcomuna cc_localidadcomuna_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_localidadcomuna
    ADD CONSTRAINT cc_localidadcomuna_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_localidadcomuna DROP CONSTRAINT cc_localidadcomuna_pkey;
       test_ladm_cadastral_cartography         postgres    false    804            �#           2606    587457    cc_manzana cc_manzana_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_manzana
    ADD CONSTRAINT cc_manzana_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_manzana DROP CONSTRAINT cc_manzana_pkey;
       test_ladm_cadastral_cartography         postgres    false    798            �!           2606    586482 *   cc_metodooperacion cc_metodooperacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_pkey;
       test_ladm_cadastral_cartography         postgres    false    706            �#           2606    587467 ,   cc_nomenclaturavial cc_nomenclaturavial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_nomenclaturavial
    ADD CONSTRAINT cc_nomenclaturavial_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_nomenclaturavial DROP CONSTRAINT cc_nomenclaturavial_pkey;
       test_ladm_cadastral_cartography         postgres    false    799            �#           2606    587843 >   cc_nomenclaturavial_tipo_via cc_nomenclaturavial_tipo_via_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_nomenclaturavial_tipo_via
    ADD CONSTRAINT cc_nomenclaturavial_tipo_via_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_nomenclaturavial_tipo_via DROP CONSTRAINT cc_nomenclaturavial_tipo_via_pkey;
       test_ladm_cadastral_cartography         postgres    false    841            �#           2606    587478 *   cc_perimetrourbano cc_perimetrourbano_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_perimetrourbano
    ADD CONSTRAINT cc_perimetrourbano_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_perimetrourbano DROP CONSTRAINT cc_perimetrourbano_pkey;
       test_ladm_cadastral_cartography         postgres    false    800            �#           2606    587488 "   cc_sectorrural cc_sectorrural_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_sectorrural
    ADD CONSTRAINT cc_sectorrural_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_sectorrural DROP CONSTRAINT cc_sectorrural_pkey;
       test_ladm_cadastral_cartography         postgres    false    801            �#           2606    587498 $   cc_sectorurbano cc_sectorurbano_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_sectorurbano
    ADD CONSTRAINT cc_sectorurbano_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_sectorurbano DROP CONSTRAINT cc_sectorurbano_pkey;
       test_ladm_cadastral_cartography         postgres    false    802            �#           2606    587508    cc_vereda cc_vereda_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_vereda
    ADD CONSTRAINT cc_vereda_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_vereda DROP CONSTRAINT cc_vereda_pkey;
       test_ladm_cadastral_cartography         postgres    false    803            �#           2606    587627 >   ci_forma_presentacion_codigo ci_forma_presentacion_codigo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.ci_forma_presentacion_codigo
    ADD CONSTRAINT ci_forma_presentacion_codigo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.ci_forma_presentacion_codigo DROP CONSTRAINT ci_forma_presentacion_codigo_pkey;
       test_ladm_cadastral_cartography         postgres    false    817            �#           2606    587726    col_areatipo col_areatipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areatipo
    ADD CONSTRAINT col_areatipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areatipo DROP CONSTRAINT col_areatipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    828            �!           2606    586492     col_areavalor col_areavalor_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor
    ADD CONSTRAINT col_areavalor_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor DROP CONSTRAINT col_areavalor_pkey;
       test_ladm_cadastral_cartography         postgres    false    707            `"           2606    586758 6   col_baunitcomointeresado col_baunitcomointeresado_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_pkey;
       test_ladm_cadastral_cartography         postgres    false    734            ,"           2606    586667 &   col_baunitfuente col_baunitfuente_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitfuente DROP CONSTRAINT col_baunitfuente_pkey;
       test_ladm_cadastral_cartography         postgres    false    724            4"           2606    586682     col_cclfuente col_cclfuente_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_cclfuente
    ADD CONSTRAINT col_cclfuente_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_cclfuente DROP CONSTRAINT col_cclfuente_pkey;
       test_ladm_cadastral_cartography         postgres    false    726            K"           2606    586722    col_clfuente col_clfuente_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_clfuente
    ADD CONSTRAINT col_clfuente_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_clfuente DROP CONSTRAINT col_clfuente_pkey;
       test_ladm_cadastral_cartography         postgres    false    730            �#           2606    587960 2   col_contenidoniveltipo col_contenidoniveltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_contenidoniveltipo
    ADD CONSTRAINT col_contenidoniveltipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_contenidoniveltipo DROP CONSTRAINT col_contenidoniveltipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    854            �#           2606    587744 (   col_dimensiontipo col_dimensiontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_dimensiontipo
    ADD CONSTRAINT col_dimensiontipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_dimensiontipo DROP CONSTRAINT col_dimensiontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    830            $           2606    588104 >   col_estadodisponibilidadtipo col_estadodisponibilidadtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_estadodisponibilidadtipo
    ADD CONSTRAINT col_estadodisponibilidadtipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_estadodisponibilidadtipo DROP CONSTRAINT col_estadodisponibilidadtipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    870            '$           2606    588158 :   col_estadoredserviciostipo col_estadoredserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_estadoredserviciostipo
    ADD CONSTRAINT col_estadoredserviciostipo_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_estadoredserviciostipo DROP CONSTRAINT col_estadoredserviciostipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    876            $           2606    587987 *   col_estructuratipo col_estructuratipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_estructuratipo
    ADD CONSTRAINT col_estructuratipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_estructuratipo DROP CONSTRAINT col_estructuratipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    857            �#           2606    587933 >   col_fuenteadministrativatipo col_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_fuenteadministrativatipo
    ADD CONSTRAINT col_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_fuenteadministrativatipo DROP CONSTRAINT col_fuenteadministrativatipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    851            �#           2606    587663 2   col_fuenteespacialtipo col_fuenteespacialtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_fuenteespacialtipo
    ADD CONSTRAINT col_fuenteespacialtipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_fuenteespacialtipo DROP CONSTRAINT col_fuenteespacialtipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    821            �#           2606    587645 4   col_grupointeresadotipo col_grupointeresadotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_grupointeresadotipo
    ADD CONSTRAINT col_grupointeresadotipo_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_grupointeresadotipo DROP CONSTRAINT col_grupointeresadotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    819            �#           2606    587807 0   col_interpolaciontipo col_interpolaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_interpolaciontipo
    ADD CONSTRAINT col_interpolaciontipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_interpolaciontipo DROP CONSTRAINT col_interpolaciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    837            �#           2606    587897 (   col_iso19125_tipo col_iso19125_tipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_iso19125_tipo
    ADD CONSTRAINT col_iso19125_tipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_iso19125_tipo DROP CONSTRAINT col_iso19125_tipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    847            >"           2606    586701    col_masccl col_masccl_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl
    ADD CONSTRAINT col_masccl_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl DROP CONSTRAINT col_masccl_pkey;
       test_ladm_cadastral_cartography         postgres    false    728            S"           2606    586739    col_mascl col_mascl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_mascl
    ADD CONSTRAINT col_mascl_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_mascl DROP CONSTRAINT col_mascl_pkey;
       test_ladm_cadastral_cartography         postgres    false    732            7"           2606    586690    col_menosccl col_menosccl_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl
    ADD CONSTRAINT col_menosccl_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl DROP CONSTRAINT col_menosccl_pkey;
       test_ladm_cadastral_cartography         postgres    false    727            M"           2606    586729    col_menoscl col_menoscl_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menoscl
    ADD CONSTRAINT col_menoscl_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menoscl DROP CONSTRAINT col_menoscl_pkey;
       test_ladm_cadastral_cartography         postgres    false    731            !$           2606    588131 6   col_metodoproducciontipo col_metodoproducciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_metodoproducciontipo
    ADD CONSTRAINT col_metodoproducciontipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_metodoproducciontipo DROP CONSTRAINT col_metodoproducciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    873            p"           2606    586785    col_miembros col_miembros_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_miembros
    ADD CONSTRAINT col_miembros_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_miembros DROP CONSTRAINT col_miembros_pkey;
       test_ladm_cadastral_cartography         postgres    false    737            E"           2606    586712    col_puntoccl col_puntoccl_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntoccl
    ADD CONSTRAINT col_puntoccl_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntoccl DROP CONSTRAINT col_puntoccl_pkey;
       test_ladm_cadastral_cartography         postgres    false    729            Y"           2606    586749    col_puntocl col_puntocl_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntocl
    ADD CONSTRAINT col_puntocl_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntocl DROP CONSTRAINT col_puntocl_pkey;
       test_ladm_cadastral_cartography         postgres    false    733            "           2606    586646 $   col_puntofuente col_puntofuente_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntofuente
    ADD CONSTRAINT col_puntofuente_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntofuente DROP CONSTRAINT col_puntofuente_pkey;
       test_ladm_cadastral_cartography         postgres    false    722            �#           2606    587951     col_puntotipo col_puntotipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntotipo
    ADD CONSTRAINT col_puntotipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntotipo DROP CONSTRAINT col_puntotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    853            �#           2606    587915 .   col_redserviciostipo col_redserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_redserviciostipo
    ADD CONSTRAINT col_redserviciostipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_redserviciostipo DROP CONSTRAINT col_redserviciostipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    849            �#           2606    587969 &   col_registrotipo col_registrotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_cartography.col_registrotipo
    ADD CONSTRAINT col_registrotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_registrotipo DROP CONSTRAINT col_registrotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    855            "           2606    586631 *   col_relacionfuente col_relacionfuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_relacionfuente DROP CONSTRAINT col_relacionfuente_pkey;
       test_ladm_cadastral_cartography         postgres    false    720            /"           2606    586675 <   col_relacionfuenteuespacial col_relacionfuenteuespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespacial_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_cadastral_cartography.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespacial_pkey;
       test_ladm_cadastral_cartography         postgres    false    725            �#           2606    587609 :   col_relacionsuperficietipo col_relacionsuperficietipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_relacionsuperficietipo
    ADD CONSTRAINT col_relacionsuperficietipo_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_relacionsuperficietipo DROP CONSTRAINT col_relacionsuperficietipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    815            f"           2606    586767 0   col_responsablefuente col_responsablefuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_responsablefuente DROP CONSTRAINT col_responsablefuente_pkey;
       test_ladm_cadastral_cartography         postgres    false    735            "           2606    586611     col_rrrfuente col_rrrfuente_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_rrrfuente DROP CONSTRAINT col_rrrfuente_pkey;
       test_ladm_cadastral_cartography         postgres    false    718            i"           2606    586776 ,   col_topografofuente col_topografofuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_topografofuente
    ADD CONSTRAINT col_topografofuente_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_topografofuente DROP CONSTRAINT col_topografofuente_pkey;
       test_ladm_cadastral_cartography         postgres    false    736            �!           2606    586535 *   col_transformacion col_transformacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_transformacion
    ADD CONSTRAINT col_transformacion_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_transformacion DROP CONSTRAINT col_transformacion_pkey;
       test_ladm_cadastral_cartography         postgres    false    710            "           2606    586620    col_uebaunit col_uebaunit_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit
    ADD CONSTRAINT col_uebaunit_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit DROP CONSTRAINT col_uebaunit_pkey;
       test_ladm_cadastral_cartography         postgres    false    719            %"           2606    586656    col_uefuente col_uefuente_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente
    ADD CONSTRAINT col_uefuente_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente DROP CONSTRAINT col_uefuente_pkey;
       test_ladm_cadastral_cartography         postgres    false    723            	"           2606    586601     col_ueuegrupo col_ueuegrupo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_pkey;
       test_ladm_cadastral_cartography         postgres    false    717            �#           2606    587942 J   col_unidadadministrativabasicatipo col_unidadadministrativabasicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_unidadadministrativabasicatipo
    ADD CONSTRAINT col_unidadadministrativabasicatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_unidadadministrativabasicatipo DROP CONSTRAINT col_unidadadministrativabasicatipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    852            $           2606    588014 8   col_unidadedificaciontipo col_unidadedificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_unidadedificaciontipo
    ADD CONSTRAINT col_unidadedificaciontipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_unidadedificaciontipo DROP CONSTRAINT col_unidadedificaciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    860            "           2606    586638 &   col_unidadfuente col_unidadfuente_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_cartography.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_unidadfuente DROP CONSTRAINT col_unidadfuente_pkey;
       test_ladm_cadastral_cartography         postgres    false    721            $           2606    588005 $   col_volumentipo col_volumentipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumentipo
    ADD CONSTRAINT col_volumentipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumentipo DROP CONSTRAINT col_volumentipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    859            "           2606    586590 &   col_volumenvalor col_volumenvalor_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor DROP CONSTRAINT col_volumenvalor_pkey;
       test_ladm_cadastral_cartography         postgres    false    716            �!           2606    586581    extarchivo extarchivo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_cadastral_cartography.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_cadastral_cartography.extarchivo DROP CONSTRAINT extarchivo_pkey;
       test_ladm_cadastral_cartography         postgres    false    715            $           2606    588059 F   extdireccion_clase_via_principal extdireccion_clase_via_principal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion_clase_via_principal
    ADD CONSTRAINT extdireccion_clase_via_principal_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion_clase_via_principal DROP CONSTRAINT extdireccion_clase_via_principal_pkey;
       test_ladm_cadastral_cartography         postgres    false    865            �!           2606    586506    extdireccion extdireccion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    708            $           2606    588086 :   extdireccion_sector_ciudad extdireccion_sector_ciudad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion_sector_ciudad
    ADD CONSTRAINT extdireccion_sector_ciudad_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion_sector_ciudad DROP CONSTRAINT extdireccion_sector_ciudad_pkey;
       test_ladm_cadastral_cartography         postgres    false    868            �#           2606    587591 :   extdireccion_sector_predio extdireccion_sector_predio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion_sector_predio
    ADD CONSTRAINT extdireccion_sector_predio_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion_sector_predio DROP CONSTRAINT extdireccion_sector_predio_pkey;
       test_ladm_cadastral_cartography         postgres    false    813            $           2606    588122 <   extdireccion_tipo_direccion extdireccion_tipo_direccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion_tipo_direccion
    ADD CONSTRAINT extdireccion_tipo_direccion_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion_tipo_direccion DROP CONSTRAINT extdireccion_tipo_direccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    872            �!           2606    586563     extinteresado extinteresado_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_cadastral_cartography.extinteresado
    ADD CONSTRAINT extinteresado_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_cadastral_cartography.extinteresado DROP CONSTRAINT extinteresado_pkey;
       test_ladm_cadastral_cartography         postgres    false    713            �!           2606    586572 0   extredserviciosfisica extredserviciosfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extredserviciosfisica
    ADD CONSTRAINT extredserviciosfisica_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.extredserviciosfisica DROP CONSTRAINT extredserviciosfisica_pkey;
       test_ladm_cadastral_cartography         postgres    false    714            �!           2606    586545 :   extunidadedificacionfisica extunidadedificacionfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extunidadedificacionfisica
    ADD CONSTRAINT extunidadedificacionfisica_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_cadastral_cartography.extunidadedificacionfisica DROP CONSTRAINT extunidadedificacionfisica_pkey;
       test_ladm_cadastral_cartography         postgres    false    711            �!           2606    586524    fraccion fraccion_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_cadastral_cartography.fraccion
    ADD CONSTRAINT fraccion_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_cadastral_cartography.fraccion DROP CONSTRAINT fraccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    709            s"           2606    586797    gc_barrio gc_barrio_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
       test_ladm_cadastral_cartography         postgres    false    738            u"           2606    586807 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    739            y"           2606    586817 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    740            |"           2606    586827 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
       test_ladm_cadastral_cartography         postgres    false    741            "           2606    586837 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    742            �#           2606    587735 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    829            �"           2606    586847 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    743            �"           2606    586982 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
       test_ladm_cadastral_cartography         postgres    false    757            �"           2606    586856 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
       test_ladm_cadastral_cartography         postgres    false    744            �"           2606    586863 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
       test_ladm_cadastral_cartography         postgres    false    745            �"           2606    586873    gc_direccion gc_direccion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    746            �"           2606    586881 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
       test_ladm_cadastral_cartography         postgres    false    747            �"           2606    586891    gc_manzana gc_manzana_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
       test_ladm_cadastral_cartography         postgres    false    748            �"           2606    586901    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
       test_ladm_cadastral_cartography         postgres    false    749            �"           2606    586974 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
       test_ladm_cadastral_cartography         postgres    false    756            �"           2606    586911 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
       test_ladm_cadastral_cartography         postgres    false    750            �"           2606    586921 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
       test_ladm_cadastral_cartography         postgres    false    751            �"           2606    586931 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
       test_ladm_cadastral_cartography         postgres    false    752            	$           2606    588023 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    861            �"           2606    586941    gc_terreno gc_terreno_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
       test_ladm_cadastral_cartography         postgres    false    753            �"           2606    586952 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    754            $           2606    588050 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    864            �"           2606    586964    gc_vereda gc_vereda_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
       test_ladm_cadastral_cartography         postgres    false    755            �!           2606    586451 ,   gm_curve3dlistvalue gm_curve3dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_curve3dlistvalue
    ADD CONSTRAINT gm_curve3dlistvalue_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_curve3dlistvalue DROP CONSTRAINT gm_curve3dlistvalue_pkey;
       test_ladm_cadastral_cartography         postgres    false    702            �!           2606    586470 $   gm_multicurve3d gm_multicurve3d_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_multicurve3d
    ADD CONSTRAINT gm_multicurve3d_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_multicurve3d DROP CONSTRAINT gm_multicurve3d_pkey;
       test_ladm_cadastral_cartography         postgres    false    704            �!           2606    586442 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
       test_ladm_cadastral_cartography         postgres    false    701            �!           2606    586476 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
       test_ladm_cadastral_cartography         postgres    false    705            �!           2606    586434 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
       test_ladm_cadastral_cartography         postgres    false    700            �!           2606    586462 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
       test_ladm_cadastral_cartography         postgres    false    703            �!           2606    586551    imagen imagen_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_cadastral_cartography.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_cadastral_cartography.imagen DROP CONSTRAINT imagen_pkey;
       test_ladm_cadastral_cartography         postgres    false    712            �#           2606    587681 2   ini_emparejamientotipo ini_emparejamientotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.ini_emparejamientotipo
    ADD CONSTRAINT ini_emparejamientotipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.ini_emparejamientotipo DROP CONSTRAINT ini_emparejamientotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    823            �"           2606    587059 (   ini_predioinsumos ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_pkey;
       test_ladm_cadastral_cartography         postgres    false    765            �#           2606    587861 "   lc_acuerdotipo lc_acuerdotipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_acuerdotipo
    ADD CONSTRAINT lc_acuerdotipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_acuerdotipo DROP CONSTRAINT lc_acuerdotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    843            �"           2606    587072 6   lc_agrupacioninteresados lc_agrupacioninteresados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_pkey;
       test_ladm_cadastral_cartography         postgres    false    766            �#           2606    587906    lc_anexotipo lc_anexotipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_anexotipo
    ADD CONSTRAINT lc_anexotipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_anexotipo DROP CONSTRAINT lc_anexotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    848            @#           2606    587313 <   lc_calificacionconvencional lc_calificacionconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencional_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencional_pkey;
       test_ladm_cadastral_cartography         postgres    false    786            B#           2606    587322 @   lc_calificacionnoconvencional lc_calificacionnoconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvencional_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvencional_pkey;
       test_ladm_cadastral_cartography         postgres    false    787            �#           2606    587789 &   lc_calificartipo lc_calificartipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificartipo
    ADD CONSTRAINT lc_calificartipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificartipo DROP CONSTRAINT lc_calificartipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    835            �#           2606    587879 0   lc_categoriasuelotipo lc_categoriasuelotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_categoriasuelotipo
    ADD CONSTRAINT lc_categoriasuelotipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_categoriasuelotipo DROP CONSTRAINT lc_categoriasuelotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    845            �#           2606    587690 6   lc_clasecalificaciontipo lc_clasecalificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_clasecalificaciontipo
    ADD CONSTRAINT lc_clasecalificaciontipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_clasecalificaciontipo DROP CONSTRAINT lc_clasecalificaciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    824            �#           2606    587699 (   lc_clasesuelotipo lc_clasesuelotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_clasesuelotipo
    ADD CONSTRAINT lc_clasesuelotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_clasesuelotipo DROP CONSTRAINT lc_clasesuelotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    825            $           2606    588113 2   lc_condicionprediotipo lc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_condicionprediotipo
    ADD CONSTRAINT lc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_condicionprediotipo DROP CONSTRAINT lc_condicionprediotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    871            �"           2606    587083 $   lc_construccion lc_construccion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccion
    ADD CONSTRAINT lc_construccion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccion DROP CONSTRAINT lc_construccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    767            $           2606    588077 8   lc_construccionplantatipo lc_construccionplantatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccionplantatipo
    ADD CONSTRAINT lc_construccionplantatipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccionplantatipo DROP CONSTRAINT lc_construccionplantatipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    867            �#           2606    587708 ,   lc_construcciontipo lc_construcciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construcciontipo
    ADD CONSTRAINT lc_construcciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construcciontipo DROP CONSTRAINT lc_construcciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    826            �"           2606    587098 (   lc_contactovisita lc_contactovisita_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_contactovisita DROP CONSTRAINT lc_contactovisita_pkey;
       test_ladm_cadastral_cartography         postgres    false    768            F#           2606    587334 X   lc_datosadicionaleslevantamientocatastral lc_datosadicionaleslevantamientocatastral_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey;
       test_ladm_cadastral_cartography         postgres    false    788            �"           2606    587108 .   lc_datosphcondominio lc_datosphcondominio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_pkey;
       test_ladm_cadastral_cartography         postgres    false    769            �"           2606    587119    lc_derecho lc_derecho_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derecho
    ADD CONSTRAINT lc_derecho_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derecho DROP CONSTRAINT lc_derecho_pkey;
       test_ladm_cadastral_cartography         postgres    false    770            +$           2606    588176 "   lc_derechotipo lc_derechotipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derechotipo
    ADD CONSTRAINT lc_derechotipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derechotipo DROP CONSTRAINT lc_derechotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    878            �#           2606    587825 <   lc_destinacioneconomicatipo lc_destinacioneconomicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_destinacioneconomicatipo
    ADD CONSTRAINT lc_destinacioneconomicatipo_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_destinacioneconomicatipo DROP CONSTRAINT lc_destinacioneconomicatipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    839            �#           2606    587780 :   lc_dominioconstrucciontipo lc_dominioconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_dominioconstrucciontipo
    ADD CONSTRAINT lc_dominioconstrucciontipo_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_dominioconstrucciontipo DROP CONSTRAINT lc_dominioconstrucciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    834            $           2606    588068 8   lc_estadoconservaciontipo lc_estadoconservaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estadoconservaciontipo
    ADD CONSTRAINT lc_estadoconservaciontipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estadoconservaciontipo DROP CONSTRAINT lc_estadoconservaciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    866            �"           2606    587129 4   lc_estructuranovedadfmi lc_estructuranovedadfmi_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_pkey;
       test_ladm_cadastral_cartography         postgres    false    771            �"           2606    587136 H   lc_estructuranovedadnumeropredial lc_estructuranovedadnumeropredial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranovedadnumeropredial_pkey;
       test_ladm_cadastral_cartography         postgres    false    772            �#           2606    587816 b   lc_estructuranovedadnumeropredial_tipo_novedad lc_estructuranovedadnumeropredial_tipo_novedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial_tipo_novedad
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial_tipo_novedad DROP CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey;
       test_ladm_cadastral_cartography         postgres    false    838            �#           2606    587771 8   lc_fotoidentificaciontipo lc_fotoidentificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fotoidentificaciontipo
    ADD CONSTRAINT lc_fotoidentificaciontipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fotoidentificaciontipo DROP CONSTRAINT lc_fotoidentificaciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    833            �"           2606    587148 4   lc_fuenteadministrativa lc_fuenteadministrativa_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_pkey;
       test_ladm_cadastral_cartography         postgres    false    773            �#           2606    587672 <   lc_fuenteadministrativatipo lc_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteadministrativatipo
    ADD CONSTRAINT lc_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteadministrativatipo DROP CONSTRAINT lc_fuenteadministrativatipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    822            �"           2606    587161 (   lc_fuenteespacial lc_fuenteespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_pkey;
       test_ladm_cadastral_cartography         postgres    false    774            #           2606    587171 .   lc_grupocalificacion lc_grupocalificacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_pkey;
       test_ladm_cadastral_cartography         postgres    false    775            )$           2606    588167 *   lc_grupoetnicotipo lc_grupoetnicotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_grupoetnicotipo
    ADD CONSTRAINT lc_grupoetnicotipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_grupoetnicotipo DROP CONSTRAINT lc_grupoetnicotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    877            #           2606    587184     lc_interesado lc_interesado_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesado
    ADD CONSTRAINT lc_interesado_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesado DROP CONSTRAINT lc_interesado_pkey;
       test_ladm_cadastral_cartography         postgres    false    776            #           2606    587198 0   lc_interesadocontacto lc_interesadocontacto_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_pkey;
       test_ladm_cadastral_cartography         postgres    false    777            �#           2606    587636 :   lc_interesadodocumentotipo lc_interesadodocumentotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesadodocumentotipo
    ADD CONSTRAINT lc_interesadodocumentotipo_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesadodocumentotipo DROP CONSTRAINT lc_interesadodocumentotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    818            $           2606    588041 (   lc_interesadotipo lc_interesadotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesadotipo
    ADD CONSTRAINT lc_interesadotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesadotipo DROP CONSTRAINT lc_interesadotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    863            #           2606    587209    lc_lindero lc_lindero_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_lindero
    ADD CONSTRAINT lc_lindero_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_lindero DROP CONSTRAINT lc_lindero_pkey;
       test_ladm_cadastral_cartography         postgres    false    778            #           2606    587217 0   lc_objetoconstruccion lc_objetoconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    779            �#           2606    587618 8   lc_objetoconstrucciontipo lc_objetoconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_objetoconstrucciontipo
    ADD CONSTRAINT lc_objetoconstrucciontipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_objetoconstrucciontipo DROP CONSTRAINT lc_objetoconstrucciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    816            #           2606    587226 @   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmobiliario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmobiliario_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmobiliario_pkey;
       test_ladm_cadastral_cartography         postgres    false    780            �#           2606    587753     lc_ofertatipo lc_ofertatipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_ofertatipo
    ADD CONSTRAINT lc_ofertatipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_ofertatipo DROP CONSTRAINT lc_ofertatipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    831            `#           2606    587376 0   lc_predio_copropiedad lc_predio_copropiedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_pkey;
       test_ladm_cadastral_cartography         postgres    false    791            f#           2606    587384 <   lc_predio_ini_predioinsumos lc_predio_ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsumos_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsumos_pkey;
       test_ladm_cadastral_cartography         postgres    false    792            #           2606    587238    lc_predio lc_predio_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio
    ADD CONSTRAINT lc_predio_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio DROP CONSTRAINT lc_predio_pkey;
       test_ladm_cadastral_cartography         postgres    false    781            #$           2606    588140     lc_prediotipo lc_prediotipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_prediotipo
    ADD CONSTRAINT lc_prediotipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_prediotipo DROP CONSTRAINT lc_prediotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    874            -$           2606    588185 R   lc_procedimientocatastralregistraltipo lc_procedimientocatastralregistraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_procedimientocatastralregistraltipo
    ADD CONSTRAINT lc_procedimientocatastralregistraltipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_procedimientocatastralregistraltipo DROP CONSTRAINT lc_procedimientocatastralregistraltipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    879            #           2606    587250 $   lc_puntocontrol lc_puntocontrol_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_pkey;
       test_ladm_cadastral_cartography         postgres    false    782            �#           2606    587852 ,   lc_puntocontroltipo lc_puntocontroltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontroltipo
    ADD CONSTRAINT lc_puntocontroltipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontroltipo DROP CONSTRAINT lc_puntocontroltipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    842            R#           2606    587351 0   lc_puntolevantamiento lc_puntolevantamiento_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_pkey;
       test_ladm_cadastral_cartography         postgres    false    789            �#           2606    587924 $   lc_puntolevtipo lc_puntolevtipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevtipo
    ADD CONSTRAINT lc_puntolevtipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevtipo DROP CONSTRAINT lc_puntolevtipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    850            +#           2606    587269 $   lc_puntolindero lc_puntolindero_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero DROP CONSTRAINT lc_puntolindero_pkey;
       test_ladm_cadastral_cartography         postgres    false    783            �#           2606    587888    lc_puntotipo lc_puntotipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntotipo
    ADD CONSTRAINT lc_puntotipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntotipo DROP CONSTRAINT lc_puntotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    846            �#           2606    587762 0   lc_relacionprediotipo lc_relacionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_relacionprediotipo
    ADD CONSTRAINT lc_relacionprediotipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_relacionprediotipo DROP CONSTRAINT lc_relacionprediotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    832            5#           2606    587289 "   lc_restriccion lc_restriccion_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restriccion
    ADD CONSTRAINT lc_restriccion_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restriccion DROP CONSTRAINT lc_restriccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    784            �#           2606    587717 *   lc_restricciontipo lc_restricciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restricciontipo
    ADD CONSTRAINT lc_restricciontipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restricciontipo DROP CONSTRAINT lc_restricciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    827            �#           2606    587870 2   lc_resultadovisitatipo lc_resultadovisitatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_resultadovisitatipo
    ADD CONSTRAINT lc_resultadovisitatipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_resultadovisitatipo DROP CONSTRAINT lc_resultadovisitatipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    844            j#           2606    587396 2   lc_servidumbretransito lc_servidumbretransito_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_pkey;
       test_ladm_cadastral_cartography         postgres    false    793            $           2606    587996    lc_sexotipo lc_sexotipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_sexotipo
    ADD CONSTRAINT lc_sexotipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_sexotipo DROP CONSTRAINT lc_sexotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    858            ;#           2606    587303    lc_terreno lc_terreno_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_terreno
    ADD CONSTRAINT lc_terreno_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_terreno DROP CONSTRAINT lc_terreno_pkey;
       test_ladm_cadastral_cartography         postgres    false    785            \#           2606    587368 6   lc_tipologiaconstruccion lc_tipologiaconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    790            �#           2606    587834 &   lc_tipologiatipo lc_tipologiatipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_tipologiatipo
    ADD CONSTRAINT lc_tipologiatipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_tipologiatipo DROP CONSTRAINT lc_tipologiatipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    840            p#           2606    587409 0   lc_unidadconstruccion lc_unidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_pkey;
       test_ladm_cadastral_cartography         postgres    false    794            $           2606    588032 8   lc_unidadconstrucciontipo lc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstrucciontipo
    ADD CONSTRAINT lc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstrucciontipo DROP CONSTRAINT lc_unidadconstrucciontipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    862            �#           2606    587798 $   lc_usouconstipo lc_usouconstipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_usouconstipo
    ADD CONSTRAINT lc_usouconstipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_usouconstipo DROP CONSTRAINT lc_usouconstipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    836            �#           2606    587582    lc_viatipo lc_viatipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_viatipo
    ADD CONSTRAINT lc_viatipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_viatipo DROP CONSTRAINT lc_viatipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    812            $           2606    588095 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    869            �#           2606    587600 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    814            �"           2606    586990    snr_derecho snr_derecho_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
       test_ladm_cadastral_cartography         postgres    false    758            �#           2606    587654 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    820            �"           2606    586999 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
       test_ladm_cadastral_cartography         postgres    false    759            �"           2606    587009 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
       test_ladm_cadastral_cartography         postgres    false    760            �"           2606    587019 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
       test_ladm_cadastral_cartography         postgres    false    761            %$           2606    588149 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    875            �#           2606    587978 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
       test_ladm_cadastral_cartography         postgres    false    856            �"           2606    587040 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
       test_ladm_cadastral_cartography         postgres    false    763            �"           2606    587048 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
       test_ladm_cadastral_cartography         postgres    false    764            �"           2606    587029    snr_titular snr_titular_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular DROP CONSTRAINT snr_titular_pkey;
       test_ladm_cadastral_cartography         postgres    false    762            1$           2606    588201 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (sqlname, colowner);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
       test_ladm_cadastral_cartography         postgres    false    881    881            �#           2606    587537 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
       test_ladm_cadastral_cartography         postgres    false    806            /$           2606    588193 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
       test_ladm_cadastral_cartography         postgres    false    880            �#           2606    587543 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
       test_ladm_cadastral_cartography         postgres    false    807            �#           2606    587551 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
       test_ladm_cadastral_cartography         postgres    false    808            �#           2606    587573 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (iliversion, modelname);
 e   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
       test_ladm_cadastral_cartography         postgres    false    811    811            �#           2606    587559 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
       test_ladm_cadastral_cartography         postgres    false    809            �#           1259    587529    cc_barrio_geometria_idx    INDEX     j   CREATE INDEX cc_barrio_geometria_idx ON test_ladm_cadastral_cartography.cc_barrio USING gist (geometria);
 D   DROP INDEX test_ladm_cadastral_cartography.cc_barrio_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    805            w#           1259    587428    cc_centropoblado_geometria_idx    INDEX     x   CREATE INDEX cc_centropoblado_geometria_idx ON test_ladm_cadastral_cartography.cc_centropoblado USING gist (geometria);
 K   DROP INDEX test_ladm_cadastral_cartography.cc_centropoblado_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    795            z#           1259    587438    cc_corregimiento_geometria_idx    INDEX     x   CREATE INDEX cc_corregimiento_geometria_idx ON test_ladm_cadastral_cartography.cc_corregimiento USING gist (geometria);
 K   DROP INDEX test_ladm_cadastral_cartography.cc_corregimiento_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    796            }#           1259    587448     cc_limitemunicipio_geometria_idx    INDEX     |   CREATE INDEX cc_limitemunicipio_geometria_idx ON test_ladm_cadastral_cartography.cc_limitemunicipio USING gist (geometria);
 M   DROP INDEX test_ladm_cadastral_cartography.cc_limitemunicipio_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    797            �#           1259    587519     cc_localidadcomuna_geometria_idx    INDEX     |   CREATE INDEX cc_localidadcomuna_geometria_idx ON test_ladm_cadastral_cartography.cc_localidadcomuna USING gist (geometria);
 M   DROP INDEX test_ladm_cadastral_cartography.cc_localidadcomuna_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    804            �#           1259    587458    cc_manzana_geometria_idx    INDEX     l   CREATE INDEX cc_manzana_geometria_idx ON test_ladm_cadastral_cartography.cc_manzana USING gist (geometria);
 E   DROP INDEX test_ladm_cadastral_cartography.cc_manzana_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    798            �!           1259    586483 1   cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx    INDEX     �   CREATE INDEX cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx ON test_ladm_cadastral_cartography.cc_metodooperacion USING btree (col_transformacion_transformacion);
 ^   DROP INDEX test_ladm_cadastral_cartography.cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx;
       test_ladm_cadastral_cartography         postgres    false    706            �#           1259    587469 !   cc_nomenclaturavial_geometria_idx    INDEX     ~   CREATE INDEX cc_nomenclaturavial_geometria_idx ON test_ladm_cadastral_cartography.cc_nomenclaturavial USING gist (geometria);
 N   DROP INDEX test_ladm_cadastral_cartography.cc_nomenclaturavial_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    799            �#           1259    587468     cc_nomenclaturavial_tipo_via_idx    INDEX     }   CREATE INDEX cc_nomenclaturavial_tipo_via_idx ON test_ladm_cadastral_cartography.cc_nomenclaturavial USING btree (tipo_via);
 M   DROP INDEX test_ladm_cadastral_cartography.cc_nomenclaturavial_tipo_via_idx;
       test_ladm_cadastral_cartography         postgres    false    799            �#           1259    587479     cc_perimetrourbano_geometria_idx    INDEX     |   CREATE INDEX cc_perimetrourbano_geometria_idx ON test_ladm_cadastral_cartography.cc_perimetrourbano USING gist (geometria);
 M   DROP INDEX test_ladm_cadastral_cartography.cc_perimetrourbano_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    800            �#           1259    587489    cc_sectorrural_geometria_idx    INDEX     t   CREATE INDEX cc_sectorrural_geometria_idx ON test_ladm_cadastral_cartography.cc_sectorrural USING gist (geometria);
 I   DROP INDEX test_ladm_cadastral_cartography.cc_sectorrural_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    801            �#           1259    587499    cc_sectorurbano_geometria_idx    INDEX     v   CREATE INDEX cc_sectorurbano_geometria_idx ON test_ladm_cadastral_cartography.cc_sectorurbano USING gist (geometria);
 J   DROP INDEX test_ladm_cadastral_cartography.cc_sectorurbano_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    802            �#           1259    587509    cc_vereda_geometria_idx    INDEX     j   CREATE INDEX cc_vereda_geometria_idx ON test_ladm_cadastral_cartography.cc_vereda USING gist (geometria);
 D   DROP INDEX test_ladm_cadastral_cartography.cc_vereda_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    803            �!           1259    586494 &   col_areavalor_lc_construccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_construccion_area_idx ON test_ladm_cadastral_cartography.col_areavalor USING btree (lc_construccion_area);
 S   DROP INDEX test_ladm_cadastral_cartography.col_areavalor_lc_construccion_area_idx;
       test_ladm_cadastral_cartography         postgres    false    707            �!           1259    586496 ,   col_areavalor_lc_servidumbretransito_rea_idx    INDEX     �   CREATE INDEX col_areavalor_lc_servidumbretransito_rea_idx ON test_ladm_cadastral_cartography.col_areavalor USING btree (lc_servidumbretransito_area);
 Y   DROP INDEX test_ladm_cadastral_cartography.col_areavalor_lc_servidumbretransito_rea_idx;
       test_ladm_cadastral_cartography         postgres    false    707            �!           1259    586495 !   col_areavalor_lc_terreno_area_idx    INDEX        CREATE INDEX col_areavalor_lc_terreno_area_idx ON test_ladm_cadastral_cartography.col_areavalor USING btree (lc_terreno_area);
 N   DROP INDEX test_ladm_cadastral_cartography.col_areavalor_lc_terreno_area_idx;
       test_ladm_cadastral_cartography         postgres    false    707            �!           1259    586497 ,   col_areavalor_lc_unidadconstruccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_unidadconstruccion_area_idx ON test_ladm_cadastral_cartography.col_areavalor USING btree (lc_unidadconstruccion_area);
 Y   DROP INDEX test_ladm_cadastral_cartography.col_areavalor_lc_unidadconstruccion_area_idx;
       test_ladm_cadastral_cartography         postgres    false    707            �!           1259    586493    col_areavalor_tipo_idx    INDEX     i   CREATE INDEX col_areavalor_tipo_idx ON test_ladm_cadastral_cartography.col_areavalor USING btree (tipo);
 C   DROP INDEX test_ladm_cadastral_cartography.col_areavalor_tipo_idx;
       test_ladm_cadastral_cartography         postgres    false    707            ]"           1259    586760 7   col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx ON test_ladm_cadastral_cartography.col_baunitcomointeresado USING btree (interesado_lc_agrupacioninteresados);
 d   DROP INDEX test_ladm_cadastral_cartography.col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx;
       test_ladm_cadastral_cartography         postgres    false    734            ^"           1259    586759 5   col_baunitcomointeresado_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_interesado_idx ON test_ladm_cadastral_cartography.col_baunitcomointeresado USING btree (interesado_lc_interesado);
 b   DROP INDEX test_ladm_cadastral_cartography.col_baunitcomointeresado_interesado_lc_interesado_idx;
       test_ladm_cadastral_cartography         postgres    false    734            a"           1259    586761 #   col_baunitcomointeresado_unidad_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_unidad_idx ON test_ladm_cadastral_cartography.col_baunitcomointeresado USING btree (unidad);
 P   DROP INDEX test_ladm_cadastral_cartography.col_baunitcomointeresado_unidad_idx;
       test_ladm_cadastral_cartography         postgres    false    734            *"           1259    586668 $   col_baunitfuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_baunitfuente_fuente_espacial_idx ON test_ladm_cadastral_cartography.col_baunitfuente USING btree (fuente_espacial);
 Q   DROP INDEX test_ladm_cadastral_cartography.col_baunitfuente_fuente_espacial_idx;
       test_ladm_cadastral_cartography         postgres    false    724            -"           1259    586669    col_baunitfuente_unidad_idx    INDEX     s   CREATE INDEX col_baunitfuente_unidad_idx ON test_ladm_cadastral_cartography.col_baunitfuente USING btree (unidad);
 H   DROP INDEX test_ladm_cadastral_cartography.col_baunitfuente_unidad_idx;
       test_ladm_cadastral_cartography         postgres    false    724            1"           1259    586683    col_cclfuente_ccl_idx    INDEX     g   CREATE INDEX col_cclfuente_ccl_idx ON test_ladm_cadastral_cartography.col_cclfuente USING btree (ccl);
 B   DROP INDEX test_ladm_cadastral_cartography.col_cclfuente_ccl_idx;
       test_ladm_cadastral_cartography         postgres    false    726            2"           1259    586684 !   col_cclfuente_fuente_espacial_idx    INDEX        CREATE INDEX col_cclfuente_fuente_espacial_idx ON test_ladm_cadastral_cartography.col_cclfuente USING btree (fuente_espacial);
 N   DROP INDEX test_ladm_cadastral_cartography.col_cclfuente_fuente_espacial_idx;
       test_ladm_cadastral_cartography         postgres    false    726            I"           1259    586723     col_clfuente_fuente_espacial_idx    INDEX     }   CREATE INDEX col_clfuente_fuente_espacial_idx ON test_ladm_cadastral_cartography.col_clfuente USING btree (fuente_espacial);
 M   DROP INDEX test_ladm_cadastral_cartography.col_clfuente_fuente_espacial_idx;
       test_ladm_cadastral_cartography         postgres    false    730            <"           1259    586702    col_masccl_ccl_mas_idx    INDEX     i   CREATE INDEX col_masccl_ccl_mas_idx ON test_ladm_cadastral_cartography.col_masccl USING btree (ccl_mas);
 C   DROP INDEX test_ladm_cadastral_cartography.col_masccl_ccl_mas_idx;
       test_ladm_cadastral_cartography         postgres    false    728            ?"           1259    586706 %   col_masccl_ue_mas_lc_construccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_construccion_idx ON test_ladm_cadastral_cartography.col_masccl USING btree (ue_mas_lc_construccion);
 R   DROP INDEX test_ladm_cadastral_cartography.col_masccl_ue_mas_lc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    728            @"           1259    586704 )   col_masccl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_cadastral_cartography.col_masccl USING btree (ue_mas_lc_servidumbretransito);
 V   DROP INDEX test_ladm_cadastral_cartography.col_masccl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_cadastral_cartography         postgres    false    728            A"           1259    586703     col_masccl_ue_mas_lc_terreno_idx    INDEX     }   CREATE INDEX col_masccl_ue_mas_lc_terreno_idx ON test_ladm_cadastral_cartography.col_masccl USING btree (ue_mas_lc_terreno);
 M   DROP INDEX test_ladm_cadastral_cartography.col_masccl_ue_mas_lc_terreno_idx;
       test_ladm_cadastral_cartography         postgres    false    728            B"           1259    586705 )   col_masccl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_cadastral_cartography.col_masccl USING btree (ue_mas_lc_unidadconstruccion);
 V   DROP INDEX test_ladm_cadastral_cartography.col_masccl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_cadastral_cartography         postgres    false    728            T"           1259    586743 $   col_mascl_ue_mas_lc_construccion_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_construccion_idx ON test_ladm_cadastral_cartography.col_mascl USING btree (ue_mas_lc_construccion);
 Q   DROP INDEX test_ladm_cadastral_cartography.col_mascl_ue_mas_lc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    732            U"           1259    586741 (   col_mascl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_cadastral_cartography.col_mascl USING btree (ue_mas_lc_servidumbretransito);
 U   DROP INDEX test_ladm_cadastral_cartography.col_mascl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_cadastral_cartography         postgres    false    732            V"           1259    586740    col_mascl_ue_mas_lc_terreno_idx    INDEX     {   CREATE INDEX col_mascl_ue_mas_lc_terreno_idx ON test_ladm_cadastral_cartography.col_mascl USING btree (ue_mas_lc_terreno);
 L   DROP INDEX test_ladm_cadastral_cartography.col_mascl_ue_mas_lc_terreno_idx;
       test_ladm_cadastral_cartography         postgres    false    732            W"           1259    586742 (   col_mascl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_cadastral_cartography.col_mascl USING btree (ue_mas_lc_unidadconstruccion);
 U   DROP INDEX test_ladm_cadastral_cartography.col_mascl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_cadastral_cartography         postgres    false    732            5"           1259    586691    col_menosccl_ccl_menos_idx    INDEX     q   CREATE INDEX col_menosccl_ccl_menos_idx ON test_ladm_cadastral_cartography.col_menosccl USING btree (ccl_menos);
 G   DROP INDEX test_ladm_cadastral_cartography.col_menosccl_ccl_menos_idx;
       test_ladm_cadastral_cartography         postgres    false    727            8"           1259    586695 )   col_menosccl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_construccion_idx ON test_ladm_cadastral_cartography.col_menosccl USING btree (ue_menos_lc_construccion);
 V   DROP INDEX test_ladm_cadastral_cartography.col_menosccl_ue_menos_lc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    727            9"           1259    586693 +   col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_cadastral_cartography.col_menosccl USING btree (ue_menos_lc_servidumbretransito);
 X   DROP INDEX test_ladm_cadastral_cartography.col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_cadastral_cartography         postgres    false    727            :"           1259    586692 $   col_menosccl_ue_menos_lc_terreno_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_terreno_idx ON test_ladm_cadastral_cartography.col_menosccl USING btree (ue_menos_lc_terreno);
 Q   DROP INDEX test_ladm_cadastral_cartography.col_menosccl_ue_menos_lc_terreno_idx;
       test_ladm_cadastral_cartography         postgres    false    727            ;"           1259    586694 +   col_menosccl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_cadastral_cartography.col_menosccl USING btree (ue_menos_lc_unidadconstruccion);
 X   DROP INDEX test_ladm_cadastral_cartography.col_menosccl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_cadastral_cartography         postgres    false    727            N"           1259    586733 (   col_menoscl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_construccion_idx ON test_ladm_cadastral_cartography.col_menoscl USING btree (ue_menos_lc_construccion);
 U   DROP INDEX test_ladm_cadastral_cartography.col_menoscl_ue_menos_lc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    731            O"           1259    586731 *   col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_cadastral_cartography.col_menoscl USING btree (ue_menos_lc_servidumbretransito);
 W   DROP INDEX test_ladm_cadastral_cartography.col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_cadastral_cartography         postgres    false    731            P"           1259    586730 #   col_menoscl_ue_menos_lc_terreno_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_terreno_idx ON test_ladm_cadastral_cartography.col_menoscl USING btree (ue_menos_lc_terreno);
 P   DROP INDEX test_ladm_cadastral_cartography.col_menoscl_ue_menos_lc_terreno_idx;
       test_ladm_cadastral_cartography         postgres    false    731            Q"           1259    586732 *   col_menoscl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_cadastral_cartography.col_menoscl USING btree (ue_menos_lc_unidadconstruccion);
 W   DROP INDEX test_ladm_cadastral_cartography.col_menoscl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_cadastral_cartography         postgres    false    731            l"           1259    586788    col_miembros_agrupacion_idx    INDEX     s   CREATE INDEX col_miembros_agrupacion_idx ON test_ladm_cadastral_cartography.col_miembros USING btree (agrupacion);
 H   DROP INDEX test_ladm_cadastral_cartography.col_miembros_agrupacion_idx;
       test_ladm_cadastral_cartography         postgres    false    737            m"           1259    586787 +   col_miembros_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_grpcnntrsdos_idx ON test_ladm_cadastral_cartography.col_miembros USING btree (interesado_lc_agrupacioninteresados);
 X   DROP INDEX test_ladm_cadastral_cartography.col_miembros_interesado_lc_grpcnntrsdos_idx;
       test_ladm_cadastral_cartography         postgres    false    737            n"           1259    586786 )   col_miembros_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_interesado_idx ON test_ladm_cadastral_cartography.col_miembros USING btree (interesado_lc_interesado);
 V   DROP INDEX test_ladm_cadastral_cartography.col_miembros_interesado_lc_interesado_idx;
       test_ladm_cadastral_cartography         postgres    false    737            C"           1259    586716    col_puntoccl_ccl_idx    INDEX     e   CREATE INDEX col_puntoccl_ccl_idx ON test_ladm_cadastral_cartography.col_puntoccl USING btree (ccl);
 A   DROP INDEX test_ladm_cadastral_cartography.col_puntoccl_ccl_idx;
       test_ladm_cadastral_cartography         postgres    false    729            F"           1259    586713 &   col_puntoccl_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntocontrol_idx ON test_ladm_cadastral_cartography.col_puntoccl USING btree (punto_lc_puntocontrol);
 S   DROP INDEX test_ladm_cadastral_cartography.col_puntoccl_punto_lc_puntocontrol_idx;
       test_ladm_cadastral_cartography         postgres    false    729            G"           1259    586715 +   col_puntoccl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolevantaminto_idx ON test_ladm_cadastral_cartography.col_puntoccl USING btree (punto_lc_puntolevantamiento);
 X   DROP INDEX test_ladm_cadastral_cartography.col_puntoccl_punto_lc_puntolevantaminto_idx;
       test_ladm_cadastral_cartography         postgres    false    729            H"           1259    586714 &   col_puntoccl_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolindero_idx ON test_ladm_cadastral_cartography.col_puntoccl USING btree (punto_lc_puntolindero);
 S   DROP INDEX test_ladm_cadastral_cartography.col_puntoccl_punto_lc_puntolindero_idx;
       test_ladm_cadastral_cartography         postgres    false    729            Z"           1259    586750 %   col_puntocl_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntocontrol_idx ON test_ladm_cadastral_cartography.col_puntocl USING btree (punto_lc_puntocontrol);
 R   DROP INDEX test_ladm_cadastral_cartography.col_puntocl_punto_lc_puntocontrol_idx;
       test_ladm_cadastral_cartography         postgres    false    733            ["           1259    586752 *   col_puntocl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolevantaminto_idx ON test_ladm_cadastral_cartography.col_puntocl USING btree (punto_lc_puntolevantamiento);
 W   DROP INDEX test_ladm_cadastral_cartography.col_puntocl_punto_lc_puntolevantaminto_idx;
       test_ladm_cadastral_cartography         postgres    false    733            \"           1259    586751 %   col_puntocl_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolindero_idx ON test_ladm_cadastral_cartography.col_puntocl USING btree (punto_lc_puntolindero);
 R   DROP INDEX test_ladm_cadastral_cartography.col_puntocl_punto_lc_puntolindero_idx;
       test_ladm_cadastral_cartography         postgres    false    733            "           1259    586647 #   col_puntofuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_puntofuente_fuente_espacial_idx ON test_ladm_cadastral_cartography.col_puntofuente USING btree (fuente_espacial);
 P   DROP INDEX test_ladm_cadastral_cartography.col_puntofuente_fuente_espacial_idx;
       test_ladm_cadastral_cartography         postgres    false    722             "           1259    586648 )   col_puntofuente_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntocontrol_idx ON test_ladm_cadastral_cartography.col_puntofuente USING btree (punto_lc_puntocontrol);
 V   DROP INDEX test_ladm_cadastral_cartography.col_puntofuente_punto_lc_puntocontrol_idx;
       test_ladm_cadastral_cartography         postgres    false    722            !"           1259    586650 .   col_puntofuente_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolevantaminto_idx ON test_ladm_cadastral_cartography.col_puntofuente USING btree (punto_lc_puntolevantamiento);
 [   DROP INDEX test_ladm_cadastral_cartography.col_puntofuente_punto_lc_puntolevantaminto_idx;
       test_ladm_cadastral_cartography         postgres    false    722            ""           1259    586649 )   col_puntofuente_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolindero_idx ON test_ladm_cadastral_cartography.col_puntofuente USING btree (punto_lc_puntolindero);
 V   DROP INDEX test_ladm_cadastral_cartography.col_puntofuente_punto_lc_puntolindero_idx;
       test_ladm_cadastral_cartography         postgres    false    722            "           1259    586632 ,   col_relacionfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_relacionfuente_fuente_administrativa_idx ON test_ladm_cadastral_cartography.col_relacionfuente USING btree (fuente_administrativa);
 Y   DROP INDEX test_ladm_cadastral_cartography.col_relacionfuente_fuente_administrativa_idx;
       test_ladm_cadastral_cartography         postgres    false    720            0"           1259    586676 .   col_relacionfuenteuespcial_fuente_espacial_idx    INDEX     �   CREATE INDEX col_relacionfuenteuespcial_fuente_espacial_idx ON test_ladm_cadastral_cartography.col_relacionfuenteuespacial USING btree (fuente_espacial);
 [   DROP INDEX test_ladm_cadastral_cartography.col_relacionfuenteuespcial_fuente_espacial_idx;
       test_ladm_cadastral_cartography         postgres    false    725            b"           1259    586768 /   col_responsablefuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_responsablefuente_fuente_administrativa_idx ON test_ladm_cadastral_cartography.col_responsablefuente USING btree (fuente_administrativa);
 \   DROP INDEX test_ladm_cadastral_cartography.col_responsablefuente_fuente_administrativa_idx;
       test_ladm_cadastral_cartography         postgres    false    735            c"           1259    586770 4   col_responsablefuente_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_grpcnntrsdos_idx ON test_ladm_cadastral_cartography.col_responsablefuente USING btree (interesado_lc_agrupacioninteresados);
 a   DROP INDEX test_ladm_cadastral_cartography.col_responsablefuente_interesado_lc_grpcnntrsdos_idx;
       test_ladm_cadastral_cartography         postgres    false    735            d"           1259    586769 2   col_responsablefuente_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_interesado_idx ON test_ladm_cadastral_cartography.col_responsablefuente USING btree (interesado_lc_interesado);
 _   DROP INDEX test_ladm_cadastral_cartography.col_responsablefuente_interesado_lc_interesado_idx;
       test_ladm_cadastral_cartography         postgres    false    735            
"           1259    586612 '   col_rrrfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_rrrfuente_fuente_administrativa_idx ON test_ladm_cadastral_cartography.col_rrrfuente USING btree (fuente_administrativa);
 T   DROP INDEX test_ladm_cadastral_cartography.col_rrrfuente_fuente_administrativa_idx;
       test_ladm_cadastral_cartography         postgres    false    718            "           1259    586614     col_rrrfuente_rrr_lc_derecho_idx    INDEX     }   CREATE INDEX col_rrrfuente_rrr_lc_derecho_idx ON test_ladm_cadastral_cartography.col_rrrfuente USING btree (rrr_lc_derecho);
 M   DROP INDEX test_ladm_cadastral_cartography.col_rrrfuente_rrr_lc_derecho_idx;
       test_ladm_cadastral_cartography         postgres    false    718            "           1259    586613 $   col_rrrfuente_rrr_lc_restriccion_idx    INDEX     �   CREATE INDEX col_rrrfuente_rrr_lc_restriccion_idx ON test_ladm_cadastral_cartography.col_rrrfuente USING btree (rrr_lc_restriccion);
 Q   DROP INDEX test_ladm_cadastral_cartography.col_rrrfuente_rrr_lc_restriccion_idx;
       test_ladm_cadastral_cartography         postgres    false    718            g"           1259    586777 '   col_topografofuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_topografofuente_fuente_espacial_idx ON test_ladm_cadastral_cartography.col_topografofuente USING btree (fuente_espacial);
 T   DROP INDEX test_ladm_cadastral_cartography.col_topografofuente_fuente_espacial_idx;
       test_ladm_cadastral_cartography         postgres    false    736            j"           1259    586779 2   col_topografofuente_topografo_lc_agrpcnntrsdos_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_agrpcnntrsdos_idx ON test_ladm_cadastral_cartography.col_topografofuente USING btree (topografo_lc_agrupacioninteresados);
 _   DROP INDEX test_ladm_cadastral_cartography.col_topografofuente_topografo_lc_agrpcnntrsdos_idx;
       test_ladm_cadastral_cartography         postgres    false    736            k"           1259    586778 /   col_topografofuente_topografo_lc_interesado_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_interesado_idx ON test_ladm_cadastral_cartography.col_topografofuente USING btree (topografo_lc_interesado);
 \   DROP INDEX test_ladm_cadastral_cartography.col_topografofuente_topografo_lc_interesado_idx;
       test_ladm_cadastral_cartography         postgres    false    736            �!           1259    586537 1   col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx ON test_ladm_cadastral_cartography.col_transformacion USING btree (lc_puntocontrol_transformacion_y_resultado);
 ^   DROP INDEX test_ladm_cadastral_cartography.col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx;
       test_ladm_cadastral_cartography         postgres    false    710            �!           1259    586538 1   col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx ON test_ladm_cadastral_cartography.col_transformacion USING btree (lc_puntolindero_transformacion_y_resultado);
 ^   DROP INDEX test_ladm_cadastral_cartography.col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx;
       test_ladm_cadastral_cartography         postgres    false    710            �!           1259    586539 1   col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx ON test_ladm_cadastral_cartography.col_transformacion USING btree (lc_puntolevantamiento_transformacion_y_resultado);
 ^   DROP INDEX test_ladm_cadastral_cartography.col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx;
       test_ladm_cadastral_cartography         postgres    false    710            �!           1259    586536 0   col_transformacion_localizacion_transformada_idx    INDEX     �   CREATE INDEX col_transformacion_localizacion_transformada_idx ON test_ladm_cadastral_cartography.col_transformacion USING gist (localizacion_transformada);
 ]   DROP INDEX test_ladm_cadastral_cartography.col_transformacion_localizacion_transformada_idx;
       test_ladm_cadastral_cartography         postgres    false    710            "           1259    586625    col_uebaunit_baunit_idx    INDEX     k   CREATE INDEX col_uebaunit_baunit_idx ON test_ladm_cadastral_cartography.col_uebaunit USING btree (baunit);
 D   DROP INDEX test_ladm_cadastral_cartography.col_uebaunit_baunit_idx;
       test_ladm_cadastral_cartography         postgres    false    719            "           1259    586624 #   col_uebaunit_ue_lc_construccion_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_construccion_idx ON test_ladm_cadastral_cartography.col_uebaunit USING btree (ue_lc_construccion);
 P   DROP INDEX test_ladm_cadastral_cartography.col_uebaunit_ue_lc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    719            "           1259    586622 *   col_uebaunit_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_servidumbretransito_idx ON test_ladm_cadastral_cartography.col_uebaunit USING btree (ue_lc_servidumbretransito);
 W   DROP INDEX test_ladm_cadastral_cartography.col_uebaunit_ue_lc_servidumbretransito_idx;
       test_ladm_cadastral_cartography         postgres    false    719            "           1259    586621    col_uebaunit_ue_lc_terreno_idx    INDEX     y   CREATE INDEX col_uebaunit_ue_lc_terreno_idx ON test_ladm_cadastral_cartography.col_uebaunit USING btree (ue_lc_terreno);
 K   DROP INDEX test_ladm_cadastral_cartography.col_uebaunit_ue_lc_terreno_idx;
       test_ladm_cadastral_cartography         postgres    false    719            "           1259    586623 )   col_uebaunit_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_unidadconstruccion_idx ON test_ladm_cadastral_cartography.col_uebaunit USING btree (ue_lc_unidadconstruccion);
 V   DROP INDEX test_ladm_cadastral_cartography.col_uebaunit_ue_lc_unidadconstruccion_idx;
       test_ladm_cadastral_cartography         postgres    false    719            #"           1259    586661     col_uefuente_fuente_espacial_idx    INDEX     }   CREATE INDEX col_uefuente_fuente_espacial_idx ON test_ladm_cadastral_cartography.col_uefuente USING btree (fuente_espacial);
 M   DROP INDEX test_ladm_cadastral_cartography.col_uefuente_fuente_espacial_idx;
       test_ladm_cadastral_cartography         postgres    false    723            &"           1259    586660 #   col_uefuente_ue_lc_construccion_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_construccion_idx ON test_ladm_cadastral_cartography.col_uefuente USING btree (ue_lc_construccion);
 P   DROP INDEX test_ladm_cadastral_cartography.col_uefuente_ue_lc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    723            '"           1259    586658 *   col_uefuente_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_servidumbretransito_idx ON test_ladm_cadastral_cartography.col_uefuente USING btree (ue_lc_servidumbretransito);
 W   DROP INDEX test_ladm_cadastral_cartography.col_uefuente_ue_lc_servidumbretransito_idx;
       test_ladm_cadastral_cartography         postgres    false    723            ("           1259    586657    col_uefuente_ue_lc_terreno_idx    INDEX     y   CREATE INDEX col_uefuente_ue_lc_terreno_idx ON test_ladm_cadastral_cartography.col_uefuente USING btree (ue_lc_terreno);
 K   DROP INDEX test_ladm_cadastral_cartography.col_uefuente_ue_lc_terreno_idx;
       test_ladm_cadastral_cartography         postgres    false    723            )"           1259    586659 )   col_uefuente_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_unidadconstruccion_idx ON test_ladm_cadastral_cartography.col_uefuente USING btree (ue_lc_unidadconstruccion);
 V   DROP INDEX test_ladm_cadastral_cartography.col_uefuente_ue_lc_unidadconstruccion_idx;
       test_ladm_cadastral_cartography         postgres    false    723            "           1259    586605 '   col_ueuegrupo_parte_lc_construccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_construccion_idx ON test_ladm_cadastral_cartography.col_ueuegrupo USING btree (parte_lc_construccion);
 T   DROP INDEX test_ladm_cadastral_cartography.col_ueuegrupo_parte_lc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    717            "           1259    586603 ,   col_ueuegrupo_parte_lc_servidumbrtrnsito_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_servidumbrtrnsito_idx ON test_ladm_cadastral_cartography.col_ueuegrupo USING btree (parte_lc_servidumbretransito);
 Y   DROP INDEX test_ladm_cadastral_cartography.col_ueuegrupo_parte_lc_servidumbrtrnsito_idx;
       test_ladm_cadastral_cartography         postgres    false    717            "           1259    586602 "   col_ueuegrupo_parte_lc_terreno_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_terreno_idx ON test_ladm_cadastral_cartography.col_ueuegrupo USING btree (parte_lc_terreno);
 O   DROP INDEX test_ladm_cadastral_cartography.col_ueuegrupo_parte_lc_terreno_idx;
       test_ladm_cadastral_cartography         postgres    false    717            "           1259    586604 ,   col_ueuegrupo_parte_lc_unidadconstrccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_unidadconstrccion_idx ON test_ladm_cadastral_cartography.col_ueuegrupo USING btree (parte_lc_unidadconstruccion);
 Y   DROP INDEX test_ladm_cadastral_cartography.col_ueuegrupo_parte_lc_unidadconstrccion_idx;
       test_ladm_cadastral_cartography         postgres    false    717            "           1259    586639 *   col_unidadfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_unidadfuente_fuente_administrativa_idx ON test_ladm_cadastral_cartography.col_unidadfuente USING btree (fuente_administrativa);
 W   DROP INDEX test_ladm_cadastral_cartography.col_unidadfuente_fuente_administrativa_idx;
       test_ladm_cadastral_cartography         postgres    false    721            "           1259    586640    col_unidadfuente_unidad_idx    INDEX     s   CREATE INDEX col_unidadfuente_unidad_idx ON test_ladm_cadastral_cartography.col_unidadfuente USING btree (unidad);
 H   DROP INDEX test_ladm_cadastral_cartography.col_unidadfuente_unidad_idx;
       test_ladm_cadastral_cartography         postgres    false    721            �!           1259    586592 ,   col_volumenvalor_lc_construccion_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_construccion_volumen_idx ON test_ladm_cadastral_cartography.col_volumenvalor USING btree (lc_construccion_volumen);
 Y   DROP INDEX test_ladm_cadastral_cartography.col_volumenvalor_lc_construccion_volumen_idx;
       test_ladm_cadastral_cartography         postgres    false    716            �!           1259    586594 /   col_volumenvalor_lc_servidumbretranst_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_servidumbretranst_vlmen_idx ON test_ladm_cadastral_cartography.col_volumenvalor USING btree (lc_servidumbretransito_volumen);
 \   DROP INDEX test_ladm_cadastral_cartography.col_volumenvalor_lc_servidumbretranst_vlmen_idx;
       test_ladm_cadastral_cartography         postgres    false    716            �!           1259    586593 '   col_volumenvalor_lc_terreno_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_terreno_volumen_idx ON test_ladm_cadastral_cartography.col_volumenvalor USING btree (lc_terreno_volumen);
 T   DROP INDEX test_ladm_cadastral_cartography.col_volumenvalor_lc_terreno_volumen_idx;
       test_ladm_cadastral_cartography         postgres    false    716             "           1259    586595 /   col_volumenvalor_lc_unidadconstruccin_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_unidadconstruccin_vlmen_idx ON test_ladm_cadastral_cartography.col_volumenvalor USING btree (lc_unidadconstruccion_volumen);
 \   DROP INDEX test_ladm_cadastral_cartography.col_volumenvalor_lc_unidadconstruccin_vlmen_idx;
       test_ladm_cadastral_cartography         postgres    false    716            "           1259    586591    col_volumenvalor_tipo_idx    INDEX     o   CREATE INDEX col_volumenvalor_tipo_idx ON test_ladm_cadastral_cartography.col_volumenvalor USING btree (tipo);
 F   DROP INDEX test_ladm_cadastral_cartography.col_volumenvalor_tipo_idx;
       test_ladm_cadastral_cartography         postgres    false    716            �!           1259    586584 )   extarchivo_lc_fuenteespacl_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_fuenteespacl_xt_rchv_id_idx ON test_ladm_cadastral_cartography.extarchivo USING btree (lc_fuenteespacial_ext_archivo_id);
 V   DROP INDEX test_ladm_cadastral_cartography.extarchivo_lc_fuenteespacl_xt_rchv_id_idx;
       test_ladm_cadastral_cartography         postgres    false    715            �!           1259    586583 )   extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx ON test_ladm_cadastral_cartography.extarchivo USING btree (lc_fuenteadministrtiva_ext_archivo_id);
 V   DROP INDEX test_ladm_cadastral_cartography.extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx;
       test_ladm_cadastral_cartography         postgres    false    715            �!           1259    586582 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_ladm_cadastral_cartography.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 V   DROP INDEX test_ladm_cadastral_cartography.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
       test_ladm_cadastral_cartography         postgres    false    715            �!           1259    586509 $   extdireccion_clase_via_principal_idx    INDEX     �   CREATE INDEX extdireccion_clase_via_principal_idx ON test_ladm_cadastral_cartography.extdireccion USING btree (clase_via_principal);
 Q   DROP INDEX test_ladm_cadastral_cartography.extdireccion_clase_via_principal_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586513 +   extdireccion_extinteresado_ext_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extinteresado_ext_drccn_id_idx ON test_ladm_cadastral_cartography.extdireccion USING btree (extinteresado_ext_direccion_id);
 X   DROP INDEX test_ladm_cadastral_cartography.extdireccion_extinteresado_ext_drccn_id_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586512 +   extdireccion_extndddfccnfsc_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extndddfccnfsc_xt_drccn_id_idx ON test_ladm_cadastral_cartography.extdireccion USING btree (extunidadedificcnfsica_ext_direccion_id);
 X   DROP INDEX test_ladm_cadastral_cartography.extdireccion_extndddfccnfsc_xt_drccn_id_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586514 +   extdireccion_lc_construccin_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_construccin_xt_drccn_id_idx ON test_ladm_cadastral_cartography.extdireccion USING btree (lc_construccion_ext_direccion_id);
 X   DROP INDEX test_ladm_cadastral_cartography.extdireccion_lc_construccin_xt_drccn_id_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586518 +   extdireccion_lc_nddcnstrccn_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_nddcnstrccn_xt_drccn_id_idx ON test_ladm_cadastral_cartography.extdireccion USING btree (lc_unidadconstruccion_ext_direccion_id);
 X   DROP INDEX test_ladm_cadastral_cartography.extdireccion_lc_nddcnstrccn_xt_drccn_id_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586515 $   extdireccion_lc_predio_direccion_idx    INDEX     �   CREATE INDEX extdireccion_lc_predio_direccion_idx ON test_ladm_cadastral_cartography.extdireccion USING btree (lc_predio_direccion);
 Q   DROP INDEX test_ladm_cadastral_cartography.extdireccion_lc_predio_direccion_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586517 +   extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx ON test_ladm_cadastral_cartography.extdireccion USING btree (lc_servidumbretransito_ext_direccion_id);
 X   DROP INDEX test_ladm_cadastral_cartography.extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586516 +   extdireccion_lc_terreno_ext_direccin_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_terreno_ext_direccin_id_idx ON test_ladm_cadastral_cartography.extdireccion USING btree (lc_terreno_ext_direccion_id);
 X   DROP INDEX test_ladm_cadastral_cartography.extdireccion_lc_terreno_ext_direccin_id_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586508    extdireccion_localizacion_idx    INDEX     v   CREATE INDEX extdireccion_localizacion_idx ON test_ladm_cadastral_cartography.extdireccion USING gist (localizacion);
 J   DROP INDEX test_ladm_cadastral_cartography.extdireccion_localizacion_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586510    extdireccion_sector_ciudad_idx    INDEX     y   CREATE INDEX extdireccion_sector_ciudad_idx ON test_ladm_cadastral_cartography.extdireccion USING btree (sector_ciudad);
 K   DROP INDEX test_ladm_cadastral_cartography.extdireccion_sector_ciudad_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586511    extdireccion_sector_predio_idx    INDEX     y   CREATE INDEX extdireccion_sector_predio_idx ON test_ladm_cadastral_cartography.extdireccion USING btree (sector_predio);
 K   DROP INDEX test_ladm_cadastral_cartography.extdireccion_sector_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586507    extdireccion_tipo_direccion_idx    INDEX     {   CREATE INDEX extdireccion_tipo_direccion_idx ON test_ladm_cadastral_cartography.extdireccion USING btree (tipo_direccion);
 L   DROP INDEX test_ladm_cadastral_cartography.extdireccion_tipo_direccion_idx;
       test_ladm_cadastral_cartography         postgres    false    708            �!           1259    586564 ,   extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx    INDEX     �   CREATE INDEX extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx ON test_ladm_cadastral_cartography.extinteresado USING btree (extredserviciosfisica_ext_interesado_administrador_id);
 Y   DROP INDEX test_ladm_cadastral_cartography.extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx;
       test_ladm_cadastral_cartography         postgres    false    713            �!           1259    586565 ,   extinteresado_lc_agrupacionntrsds_xt_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_agrupacionntrsds_xt_pid_idx ON test_ladm_cadastral_cartography.extinteresado USING btree (lc_agrupacionintersdos_ext_pid);
 Y   DROP INDEX test_ladm_cadastral_cartography.extinteresado_lc_agrupacionntrsds_xt_pid_idx;
       test_ladm_cadastral_cartography         postgres    false    713            �!           1259    586566 '   extinteresado_lc_interesado_ext_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_interesado_ext_pid_idx ON test_ladm_cadastral_cartography.extinteresado USING btree (lc_interesado_ext_pid);
 T   DROP INDEX test_ladm_cadastral_cartography.extinteresado_lc_interesado_ext_pid_idx;
       test_ladm_cadastral_cartography         postgres    false    713            �!           1259    586525 '   fraccion_col_miembros_participacion_idx    INDEX     �   CREATE INDEX fraccion_col_miembros_participacion_idx ON test_ladm_cadastral_cartography.fraccion USING btree (col_miembros_participacion);
 T   DROP INDEX test_ladm_cadastral_cartography.fraccion_col_miembros_participacion_idx;
       test_ladm_cadastral_cartography         postgres    false    709            �!           1259    586526 '   fraccion_lc_predio_copropidd_cfcnte_idx    INDEX     �   CREATE INDEX fraccion_lc_predio_copropidd_cfcnte_idx ON test_ladm_cadastral_cartography.fraccion USING btree (lc_predio_copropiedad_coeficiente);
 T   DROP INDEX test_ladm_cadastral_cartography.fraccion_lc_predio_copropidd_cfcnte_idx;
       test_ladm_cadastral_cartography         postgres    false    709            q"           1259    586798    gc_barrio_geometria_idx    INDEX     j   CREATE INDEX gc_barrio_geometria_idx ON test_ladm_cadastral_cartography.gc_barrio USING gist (geometria);
 D   DROP INDEX test_ladm_cadastral_cartography.gc_barrio_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    738            v"           1259    586808 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 a   DROP INDEX test_ladm_cadastral_cartography.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
       test_ladm_cadastral_cartography         postgres    false    739            w"           1259    586818 '   gc_comisionesconstruccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_ladm_cadastral_cartography.gc_comisionesconstruccion USING gist (geometria);
 T   DROP INDEX test_ladm_cadastral_cartography.gc_comisionesconstruccion_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    740            }"           1259    586838 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_ladm_cadastral_cartography.gc_comisionesunidadconstruccion USING gist (geometria);
 U   DROP INDEX test_ladm_cadastral_cartography.gc_comisionesnddcnstrccion_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    742            z"           1259    586828 "   gc_comisionesterreno_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_ladm_cadastral_cartography.gc_comisionesterreno USING gist (geometria);
 O   DROP INDEX test_ladm_cadastral_cartography.gc_comisionesterreno_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    741            �"           1259    586850    gc_construccion_gc_predio_idx    INDEX     w   CREATE INDEX gc_construccion_gc_predio_idx ON test_ladm_cadastral_cartography.gc_construccion USING btree (gc_predio);
 J   DROP INDEX test_ladm_cadastral_cartography.gc_construccion_gc_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    743            �"           1259    586849    gc_construccion_geometria_idx    INDEX     v   CREATE INDEX gc_construccion_geometria_idx ON test_ladm_cadastral_cartography.gc_construccion USING gist (geometria);
 J   DROP INDEX test_ladm_cadastral_cartography.gc_construccion_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    743            �"           1259    586848 %   gc_construccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_ladm_cadastral_cartography.gc_construccion USING btree (tipo_construccion);
 R   DROP INDEX test_ladm_cadastral_cartography.gc_construccion_tipo_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    743            �"           1259    586983    gc_copropiedad_gc_matriz_idx    INDEX     u   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_ladm_cadastral_cartography.gc_copropiedad USING btree (gc_matriz);
 I   DROP INDEX test_ladm_cadastral_cartography.gc_copropiedad_gc_matriz_idx;
       test_ladm_cadastral_cartography         postgres    false    757            �"           1259    586984    gc_copropiedad_gc_unidad_idx    INDEX     u   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_ladm_cadastral_cartography.gc_copropiedad USING btree (gc_unidad);
 I   DROP INDEX test_ladm_cadastral_cartography.gc_copropiedad_gc_unidad_idx;
       test_ladm_cadastral_cartography         postgres    false    757            �"           1259    588851    gc_copropiedad_gc_unidad_key    INDEX     |   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_ladm_cadastral_cartography.gc_copropiedad USING btree (gc_unidad);
 I   DROP INDEX test_ladm_cadastral_cartography.gc_copropiedad_gc_unidad_key;
       test_ladm_cadastral_cartography         postgres    false    757            �"           1259    586857 "   gc_datosphcondominio_gc_predio_idx    INDEX     �   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_ladm_cadastral_cartography.gc_datosphcondominio USING btree (gc_predio);
 O   DROP INDEX test_ladm_cadastral_cartography.gc_datosphcondominio_gc_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    744            �"           1259    586864 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     �   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_ladm_cadastral_cartography.gc_datostorreph USING btree (gc_datosphcondominio);
 U   DROP INDEX test_ladm_cadastral_cartography.gc_datostorreph_gc_datosphcondominio_idx;
       test_ladm_cadastral_cartography         postgres    false    745            �"           1259    586875 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_ladm_cadastral_cartography.gc_direccion USING btree (gc_prediocatastro_direcciones);
 X   DROP INDEX test_ladm_cadastral_cartography.gc_direccion_gc_prediocatastro_dirccnes_idx;
       test_ladm_cadastral_cartography         postgres    false    746            �"           1259    586874 %   gc_direccion_geometria_referencia_idx    INDEX     �   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_ladm_cadastral_cartography.gc_direccion USING gist (geometria_referencia);
 R   DROP INDEX test_ladm_cadastral_cartography.gc_direccion_geometria_referencia_idx;
       test_ladm_cadastral_cartography         postgres    false    746            �"           1259    586882 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_ladm_cadastral_cartography.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 [   DROP INDEX test_ladm_cadastral_cartography.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
       test_ladm_cadastral_cartography         postgres    false    747            �"           1259    586892    gc_manzana_geometria_idx    INDEX     l   CREATE INDEX gc_manzana_geometria_idx ON test_ladm_cadastral_cartography.gc_manzana USING gist (geometria);
 E   DROP INDEX test_ladm_cadastral_cartography.gc_manzana_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    748            �"           1259    586902    gc_perimetro_geometria_idx    INDEX     p   CREATE INDEX gc_perimetro_geometria_idx ON test_ladm_cadastral_cartography.gc_perimetro USING gist (geometria);
 G   DROP INDEX test_ladm_cadastral_cartography.gc_perimetro_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    749            �"           1259    586975 &   gc_prediocatastro_condicion_predio_idx    INDEX     �   CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_ladm_cadastral_cartography.gc_prediocatastro USING btree (condicion_predio);
 S   DROP INDEX test_ladm_cadastral_cartography.gc_prediocatastro_condicion_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    756            �"           1259    586976 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_ladm_cadastral_cartography.gc_prediocatastro USING btree (sistema_procedencia_datos);
 \   DROP INDEX test_ladm_cadastral_cartography.gc_prediocatastro_sistema_procedencia_datos_idx;
       test_ladm_cadastral_cartography         postgres    false    756            �"           1259    586912 %   gc_propietario_gc_predio_catastro_idx    INDEX     �   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_ladm_cadastral_cartography.gc_propietario USING btree (gc_predio_catastro);
 R   DROP INDEX test_ladm_cadastral_cartography.gc_propietario_gc_predio_catastro_idx;
       test_ladm_cadastral_cartography         postgres    false    750            �"           1259    586922    gc_sectorrural_geometria_idx    INDEX     t   CREATE INDEX gc_sectorrural_geometria_idx ON test_ladm_cadastral_cartography.gc_sectorrural USING gist (geometria);
 I   DROP INDEX test_ladm_cadastral_cartography.gc_sectorrural_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    751            �"           1259    586932    gc_sectorurbano_geometria_idx    INDEX     v   CREATE INDEX gc_sectorurbano_geometria_idx ON test_ladm_cadastral_cartography.gc_sectorurbano USING gist (geometria);
 J   DROP INDEX test_ladm_cadastral_cartography.gc_sectorurbano_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    752            �"           1259    586943    gc_terreno_gc_predio_idx    INDEX     m   CREATE INDEX gc_terreno_gc_predio_idx ON test_ladm_cadastral_cartography.gc_terreno USING btree (gc_predio);
 E   DROP INDEX test_ladm_cadastral_cartography.gc_terreno_gc_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    753            �"           1259    586942    gc_terreno_geometria_idx    INDEX     l   CREATE INDEX gc_terreno_geometria_idx ON test_ladm_cadastral_cartography.gc_terreno USING gist (geometria);
 E   DROP INDEX test_ladm_cadastral_cartography.gc_terreno_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    753            �"           1259    586955 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_ladm_cadastral_cartography.gc_unidadconstruccion USING btree (gc_construccion);
 V   DROP INDEX test_ladm_cadastral_cartography.gc_unidadconstruccion_gc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    754            �"           1259    586954 #   gc_unidadconstruccion_geometria_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_ladm_cadastral_cartography.gc_unidadconstruccion USING gist (geometria);
 P   DROP INDEX test_ladm_cadastral_cartography.gc_unidadconstruccion_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    754            �"           1259    586953 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_ladm_cadastral_cartography.gc_unidadconstruccion USING btree (tipo_construccion);
 X   DROP INDEX test_ladm_cadastral_cartography.gc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    754            �"           1259    586965    gc_vereda_geometria_idx    INDEX     j   CREATE INDEX gc_vereda_geometria_idx ON test_ladm_cadastral_cartography.gc_vereda USING gist (geometria);
 D   DROP INDEX test_ladm_cadastral_cartography.gc_vereda_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    755            �!           1259    586452    gm_curve3dlistvalue_avalue_idx    INDEX     x   CREATE INDEX gm_curve3dlistvalue_avalue_idx ON test_ladm_cadastral_cartography.gm_curve3dlistvalue USING gist (avalue);
 K   DROP INDEX test_ladm_cadastral_cartography.gm_curve3dlistvalue_avalue_idx;
       test_ladm_cadastral_cartography         postgres    false    702            �!           1259    586453 0   gm_curve3dlistvalue_gm_multicurve3d_geometry_idx    INDEX     �   CREATE INDEX gm_curve3dlistvalue_gm_multicurve3d_geometry_idx ON test_ladm_cadastral_cartography.gm_curve3dlistvalue USING btree (gm_multicurve3d_geometry);
 ]   DROP INDEX test_ladm_cadastral_cartography.gm_curve3dlistvalue_gm_multicurve3d_geometry_idx;
       test_ladm_cadastral_cartography         postgres    false    702            �!           1259    586435     gm_surface2dlistvalue_avalue_idx    INDEX     |   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_ladm_cadastral_cartography.gm_surface2dlistvalue USING gist (avalue);
 M   DROP INDEX test_ladm_cadastral_cartography.gm_surface2dlistvalue_avalue_idx;
       test_ladm_cadastral_cartography         postgres    false    700            �!           1259    586436 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_ladm_cadastral_cartography.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 a   DROP INDEX test_ladm_cadastral_cartography.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
       test_ladm_cadastral_cartography         postgres    false    700            �!           1259    586463     gm_surface3dlistvalue_avalue_idx    INDEX     |   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_ladm_cadastral_cartography.gm_surface3dlistvalue USING gist (avalue);
 M   DROP INDEX test_ladm_cadastral_cartography.gm_surface3dlistvalue_avalue_idx;
       test_ladm_cadastral_cartography         postgres    false    703            �!           1259    586464 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_ladm_cadastral_cartography.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 a   DROP INDEX test_ladm_cadastral_cartography.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
       test_ladm_cadastral_cartography         postgres    false    703            �!           1259    586554    imagen_extinteresado_firma_idx    INDEX     y   CREATE INDEX imagen_extinteresado_firma_idx ON test_ladm_cadastral_cartography.imagen USING btree (extinteresado_firma);
 K   DROP INDEX test_ladm_cadastral_cartography.imagen_extinteresado_firma_idx;
       test_ladm_cadastral_cartography         postgres    false    712            �!           1259    586553 #   imagen_extinteresado_fotografia_idx    INDEX     �   CREATE INDEX imagen_extinteresado_fotografia_idx ON test_ladm_cadastral_cartography.imagen USING btree (extinteresado_fotografia);
 P   DROP INDEX test_ladm_cadastral_cartography.imagen_extinteresado_fotografia_idx;
       test_ladm_cadastral_cartography         postgres    false    712            �!           1259    586552 %   imagen_extinteresado_huell_dctlar_idx    INDEX     �   CREATE INDEX imagen_extinteresado_huell_dctlar_idx ON test_ladm_cadastral_cartography.imagen USING btree (extinteresado_huella_dactilar);
 R   DROP INDEX test_ladm_cadastral_cartography.imagen_extinteresado_huell_dctlar_idx;
       test_ladm_cadastral_cartography         postgres    false    712            �"           1259    587061 (   ini_predioinsumos_gc_predio_catastro_idx    INDEX     �   CREATE INDEX ini_predioinsumos_gc_predio_catastro_idx ON test_ladm_cadastral_cartography.ini_predioinsumos USING btree (gc_predio_catastro);
 U   DROP INDEX test_ladm_cadastral_cartography.ini_predioinsumos_gc_predio_catastro_idx;
       test_ladm_cadastral_cartography         postgres    false    765            �"           1259    587062 )   ini_predioinsumos_snr_predio_juridico_idx    INDEX     �   CREATE INDEX ini_predioinsumos_snr_predio_juridico_idx ON test_ladm_cadastral_cartography.ini_predioinsumos USING btree (snr_predio_juridico);
 V   DROP INDEX test_ladm_cadastral_cartography.ini_predioinsumos_snr_predio_juridico_idx;
       test_ladm_cadastral_cartography         postgres    false    765            �"           1259    587060 )   ini_predioinsumos_tipo_emparejamiento_idx    INDEX     �   CREATE INDEX ini_predioinsumos_tipo_emparejamiento_idx ON test_ladm_cadastral_cartography.ini_predioinsumos USING btree (tipo_emparejamiento);
 V   DROP INDEX test_ladm_cadastral_cartography.ini_predioinsumos_tipo_emparejamiento_idx;
       test_ladm_cadastral_cartography         postgres    false    765            �"           1259    587073 !   lc_agrupacioninteresados_tipo_idx    INDEX        CREATE INDEX lc_agrupacioninteresados_tipo_idx ON test_ladm_cadastral_cartography.lc_agrupacioninteresados USING btree (tipo);
 N   DROP INDEX test_ladm_cadastral_cartography.lc_agrupacioninteresados_tipo_idx;
       test_ladm_cadastral_cartography         postgres    false    766            =#           1259    587315 5   lc_calificacionconvencinal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_lc_unidad_construccion_idx ON test_ladm_cadastral_cartography.lc_calificacionconvencional USING btree (lc_unidad_construccion);
 b   DROP INDEX test_ladm_cadastral_cartography.lc_calificacionconvencinal_lc_unidad_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    786            >#           1259    587314 -   lc_calificacionconvencinal_tipo_calificar_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_tipo_calificar_idx ON test_ladm_cadastral_cartography.lc_calificacionconvencional USING btree (tipo_calificar);
 Z   DROP INDEX test_ladm_cadastral_cartography.lc_calificacionconvencinal_tipo_calificar_idx;
       test_ladm_cadastral_cartography         postgres    false    786            C#           1259    587324 5   lc_calificacionnoconvncnal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_lc_unidad_construccion_idx ON test_ladm_cadastral_cartography.lc_calificacionnoconvencional USING btree (lc_unidad_construccion);
 b   DROP INDEX test_ladm_cadastral_cartography.lc_calificacionnoconvncnal_lc_unidad_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    787            D#           1259    587323 )   lc_calificacionnoconvncnal_tipo_anexo_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_tipo_anexo_idx ON test_ladm_cadastral_cartography.lc_calificacionnoconvencional USING btree (tipo_anexo);
 V   DROP INDEX test_ladm_cadastral_cartography.lc_calificacionnoconvncnal_tipo_anexo_idx;
       test_ladm_cadastral_cartography         postgres    false    787            �"           1259    587086    lc_construccion_dimension_idx    INDEX     w   CREATE INDEX lc_construccion_dimension_idx ON test_ladm_cadastral_cartography.lc_construccion USING btree (dimension);
 J   DROP INDEX test_ladm_cadastral_cartography.lc_construccion_dimension_idx;
       test_ladm_cadastral_cartography         postgres    false    767            �"           1259    587088    lc_construccion_geometria_idx    INDEX     v   CREATE INDEX lc_construccion_geometria_idx ON test_ladm_cadastral_cartography.lc_construccion USING gist (geometria);
 J   DROP INDEX test_ladm_cadastral_cartography.lc_construccion_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    767            �"           1259    587087 '   lc_construccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_construccion_relacion_superficie_idx ON test_ladm_cadastral_cartography.lc_construccion USING btree (relacion_superficie);
 T   DROP INDEX test_ladm_cadastral_cartography.lc_construccion_relacion_superficie_idx;
       test_ladm_cadastral_cartography         postgres    false    767            �"           1259    587084 %   lc_construccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_construccion_tipo_construccion_idx ON test_ladm_cadastral_cartography.lc_construccion USING btree (tipo_construccion);
 R   DROP INDEX test_ladm_cadastral_cartography.lc_construccion_tipo_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    767            �"           1259    587085     lc_construccion_tipo_dominio_idx    INDEX     }   CREATE INDEX lc_construccion_tipo_dominio_idx ON test_ladm_cadastral_cartography.lc_construccion USING btree (tipo_dominio);
 M   DROP INDEX test_ladm_cadastral_cartography.lc_construccion_tipo_dominio_idx;
       test_ladm_cadastral_cartography         postgres    false    767            �"           1259    587101 *   lc_contactovisita_lc_datos_adicionales_idx    INDEX     �   CREATE INDEX lc_contactovisita_lc_datos_adicionales_idx ON test_ladm_cadastral_cartography.lc_contactovisita USING btree (lc_datos_adicionales);
 W   DROP INDEX test_ladm_cadastral_cartography.lc_contactovisita_lc_datos_adicionales_idx;
       test_ladm_cadastral_cartography         postgres    false    768            �"           1259    587100 )   lc_contactovisita_relacion_con_predio_idx    INDEX     �   CREATE INDEX lc_contactovisita_relacion_con_predio_idx ON test_ladm_cadastral_cartography.lc_contactovisita USING btree (relacion_con_predio);
 V   DROP INDEX test_ladm_cadastral_cartography.lc_contactovisita_relacion_con_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    768            �"           1259    587099 0   lc_contactovisita_tipo_documento_quien_tndio_idx    INDEX     �   CREATE INDEX lc_contactovisita_tipo_documento_quien_tndio_idx ON test_ladm_cadastral_cartography.lc_contactovisita USING btree (tipo_documento_quien_atendio);
 ]   DROP INDEX test_ladm_cadastral_cartography.lc_contactovisita_tipo_documento_quien_tndio_idx;
       test_ladm_cadastral_cartography         postgres    false    768            �"           1259    587109 "   lc_datosphcondominio_lc_predio_idx    INDEX     �   CREATE INDEX lc_datosphcondominio_lc_predio_idx ON test_ladm_cadastral_cartography.lc_datosphcondominio USING btree (lc_predio);
 O   DROP INDEX test_ladm_cadastral_cartography.lc_datosphcondominio_lc_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    769            G#           1259    587338 .   lc_datsdcnlslvntmntctstral_categoria_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_categoria_suelo_idx ON test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral USING btree (categoria_suelo);
 [   DROP INDEX test_ladm_cadastral_cartography.lc_datsdcnlslvntmntctstral_categoria_suelo_idx;
       test_ladm_cadastral_cartography         postgres    false    788            H#           1259    587337 *   lc_datsdcnlslvntmntctstral_clase_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_clase_suelo_idx ON test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral USING btree (clase_suelo);
 W   DROP INDEX test_ladm_cadastral_cartography.lc_datsdcnlslvntmntctstral_clase_suelo_idx;
       test_ladm_cadastral_cartography         postgres    false    788            I#           1259    587336 4   lc_datsdcnlslvntmntctstral_destinacion_economica_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_destinacion_economica_idx ON test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral USING btree (destinacion_economica);
 a   DROP INDEX test_ladm_cadastral_cartography.lc_datsdcnlslvntmntctstral_destinacion_economica_idx;
       test_ladm_cadastral_cartography         postgres    false    788            J#           1259    587341 (   lc_datsdcnlslvntmntctstral_lc_predio_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_lc_predio_idx ON test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral USING btree (lc_predio);
 U   DROP INDEX test_ladm_cadastral_cartography.lc_datsdcnlslvntmntctstral_lc_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    788            K#           1259    587335 9   lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx ON test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral USING btree (procedimiento_catastral_registral);
 f   DROP INDEX test_ladm_cadastral_cartography.lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx;
       test_ladm_cadastral_cartography         postgres    false    788            L#           1259    587340 /   lc_datsdcnlslvntmntctstral_resultado_visita_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_resultado_visita_idx ON test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral USING btree (resultado_visita);
 \   DROP INDEX test_ladm_cadastral_cartography.lc_datsdcnlslvntmntctstral_resultado_visita_idx;
       test_ladm_cadastral_cartography         postgres    false    788            M#           1259    587339 9   lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx ON test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral USING btree (tipo_documento_reconocedor);
 f   DROP INDEX test_ladm_cadastral_cartography.lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx;
       test_ladm_cadastral_cartography         postgres    false    788            �"           1259    587122 )   lc_derecho_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_grpcnntrsdos_idx ON test_ladm_cadastral_cartography.lc_derecho USING btree (interesado_lc_agrupacioninteresados);
 V   DROP INDEX test_ladm_cadastral_cartography.lc_derecho_interesado_lc_grpcnntrsdos_idx;
       test_ladm_cadastral_cartography         postgres    false    770            �"           1259    587121 '   lc_derecho_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_interesado_idx ON test_ladm_cadastral_cartography.lc_derecho USING btree (interesado_lc_interesado);
 T   DROP INDEX test_ladm_cadastral_cartography.lc_derecho_interesado_lc_interesado_idx;
       test_ladm_cadastral_cartography         postgres    false    770            �"           1259    587120    lc_derecho_tipo_idx    INDEX     c   CREATE INDEX lc_derecho_tipo_idx ON test_ladm_cadastral_cartography.lc_derecho USING btree (tipo);
 @   DROP INDEX test_ladm_cadastral_cartography.lc_derecho_tipo_idx;
       test_ladm_cadastral_cartography         postgres    false    770            �"           1259    587123    lc_derecho_unidad_idx    INDEX     g   CREATE INDEX lc_derecho_unidad_idx ON test_ladm_cadastral_cartography.lc_derecho USING btree (unidad);
 B   DROP INDEX test_ladm_cadastral_cartography.lc_derecho_unidad_idx;
       test_ladm_cadastral_cartography         postgres    false    770            �"           1259    587130 6   lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx    INDEX     �   CREATE INDEX lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx ON test_ladm_cadastral_cartography.lc_estructuranovedadfmi USING btree (lc_dtsdcnlstmntctstral_novedad_fmi);
 c   DROP INDEX test_ladm_cadastral_cartography.lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx;
       test_ladm_cadastral_cartography         postgres    false    771            �"           1259    587138 9   lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx ON test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial USING btree (lc_dtsdcnlstmntctstral_novedad_numeros_prediales);
 f   DROP INDEX test_ladm_cadastral_cartography.lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx;
       test_ladm_cadastral_cartography         postgres    false    772            �"           1259    587137 +   lc_estructuranvddnmrprdial_tipo_novedad_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_tipo_novedad_idx ON test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial USING btree (tipo_novedad);
 X   DROP INDEX test_ladm_cadastral_cartography.lc_estructuranvddnmrprdial_tipo_novedad_idx;
       test_ladm_cadastral_cartography         postgres    false    772            �"           1259    587150 1   lc_fuenteadministrativa_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_estado_disponibilidad_idx ON test_ladm_cadastral_cartography.lc_fuenteadministrativa USING btree (estado_disponibilidad);
 ^   DROP INDEX test_ladm_cadastral_cartography.lc_fuenteadministrativa_estado_disponibilidad_idx;
       test_ladm_cadastral_cartography         postgres    false    773            �"           1259    587149     lc_fuenteadministrativa_tipo_idx    INDEX     }   CREATE INDEX lc_fuenteadministrativa_tipo_idx ON test_ladm_cadastral_cartography.lc_fuenteadministrativa USING btree (tipo);
 M   DROP INDEX test_ladm_cadastral_cartography.lc_fuenteadministrativa_tipo_idx;
       test_ladm_cadastral_cartography         postgres    false    773            �"           1259    587151 *   lc_fuenteadministrativa_tipo_principal_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_tipo_principal_idx ON test_ladm_cadastral_cartography.lc_fuenteadministrativa USING btree (tipo_principal);
 W   DROP INDEX test_ladm_cadastral_cartography.lc_fuenteadministrativa_tipo_principal_idx;
       test_ladm_cadastral_cartography         postgres    false    773            �"           1259    587163 +   lc_fuenteespacial_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_estado_disponibilidad_idx ON test_ladm_cadastral_cartography.lc_fuenteespacial USING btree (estado_disponibilidad);
 X   DROP INDEX test_ladm_cadastral_cartography.lc_fuenteespacial_estado_disponibilidad_idx;
       test_ladm_cadastral_cartography         postgres    false    774            �"           1259    587162    lc_fuenteespacial_tipo_idx    INDEX     q   CREATE INDEX lc_fuenteespacial_tipo_idx ON test_ladm_cadastral_cartography.lc_fuenteespacial USING btree (tipo);
 G   DROP INDEX test_ladm_cadastral_cartography.lc_fuenteespacial_tipo_idx;
       test_ladm_cadastral_cartography         postgres    false    774            �"           1259    587164 $   lc_fuenteespacial_tipo_principal_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_tipo_principal_idx ON test_ladm_cadastral_cartography.lc_fuenteespacial USING btree (tipo_principal);
 Q   DROP INDEX test_ladm_cadastral_cartography.lc_fuenteespacial_tipo_principal_idx;
       test_ladm_cadastral_cartography         postgres    false    774            �"           1259    587172 +   lc_grupocalificacion_clase_calificacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_clase_calificacion_idx ON test_ladm_cadastral_cartography.lc_grupocalificacion USING btree (clase_calificacion);
 X   DROP INDEX test_ladm_cadastral_cartography.lc_grupocalificacion_clase_calificacion_idx;
       test_ladm_cadastral_cartography         postgres    false    775            �"           1259    587173 %   lc_grupocalificacion_conservacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_conservacion_idx ON test_ladm_cadastral_cartography.lc_grupocalificacion USING btree (conservacion);
 R   DROP INDEX test_ladm_cadastral_cartography.lc_grupocalificacion_conservacion_idx;
       test_ladm_cadastral_cartography         postgres    false    775             #           1259    587174 3   lc_grupocalificacion_lc_calificacion_convencnal_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_lc_calificacion_convencnal_idx ON test_ladm_cadastral_cartography.lc_grupocalificacion USING btree (lc_calificacion_convencional);
 `   DROP INDEX test_ladm_cadastral_cartography.lc_grupocalificacion_lc_calificacion_convencnal_idx;
       test_ladm_cadastral_cartography         postgres    false    775            #           1259    587188    lc_interesado_grupo_etnico_idx    INDEX     y   CREATE INDEX lc_interesado_grupo_etnico_idx ON test_ladm_cadastral_cartography.lc_interesado USING btree (grupo_etnico);
 K   DROP INDEX test_ladm_cadastral_cartography.lc_interesado_grupo_etnico_idx;
       test_ladm_cadastral_cartography         postgres    false    776            #           1259    587187    lc_interesado_sexo_idx    INDEX     i   CREATE INDEX lc_interesado_sexo_idx ON test_ladm_cadastral_cartography.lc_interesado USING btree (sexo);
 C   DROP INDEX test_ladm_cadastral_cartography.lc_interesado_sexo_idx;
       test_ladm_cadastral_cartography         postgres    false    776            #           1259    587186     lc_interesado_tipo_documento_idx    INDEX     }   CREATE INDEX lc_interesado_tipo_documento_idx ON test_ladm_cadastral_cartography.lc_interesado USING btree (tipo_documento);
 M   DROP INDEX test_ladm_cadastral_cartography.lc_interesado_tipo_documento_idx;
       test_ladm_cadastral_cartography         postgres    false    776            #           1259    587185    lc_interesado_tipo_idx    INDEX     i   CREATE INDEX lc_interesado_tipo_idx ON test_ladm_cadastral_cartography.lc_interesado USING btree (tipo);
 C   DROP INDEX test_ladm_cadastral_cartography.lc_interesado_tipo_idx;
       test_ladm_cadastral_cartography         postgres    false    776            	#           1259    587199 '   lc_interesadocontacto_lc_interesado_idx    INDEX     �   CREATE INDEX lc_interesadocontacto_lc_interesado_idx ON test_ladm_cadastral_cartography.lc_interesadocontacto USING btree (lc_interesado);
 T   DROP INDEX test_ladm_cadastral_cartography.lc_interesadocontacto_lc_interesado_idx;
       test_ladm_cadastral_cartography         postgres    false    777            #           1259    587210    lc_lindero_geometria_idx    INDEX     l   CREATE INDEX lc_lindero_geometria_idx ON test_ladm_cadastral_cartography.lc_lindero USING gist (geometria);
 E   DROP INDEX test_ladm_cadastral_cartography.lc_lindero_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    778            #           1259    587219 /   lc_objetoconstruccion_lc_grupo_calificacion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_lc_grupo_calificacion_idx ON test_ladm_cadastral_cartography.lc_objetoconstruccion USING btree (lc_grupo_calificacion);
 \   DROP INDEX test_ladm_cadastral_cartography.lc_objetoconstruccion_lc_grupo_calificacion_idx;
       test_ladm_cadastral_cartography         postgres    false    779            #           1259    587218 2   lc_objetoconstruccion_tipo_objeto_construccion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_tipo_objeto_construccion_idx ON test_ladm_cadastral_cartography.lc_objetoconstruccion USING btree (tipo_objeto_construccion);
 _   DROP INDEX test_ladm_cadastral_cartography.lc_objetoconstruccion_tipo_objeto_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    779            #           1259    587228 (   lc_ofertasmercadoinmoblrio_lc_predio_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_lc_predio_idx ON test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario USING btree (lc_predio);
 U   DROP INDEX test_ladm_cadastral_cartography.lc_ofertasmercadoinmoblrio_lc_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    780            #           1259    587227 *   lc_ofertasmercadoinmoblrio_tipo_oferta_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_tipo_oferta_idx ON test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario USING btree (tipo_oferta);
 W   DROP INDEX test_ladm_cadastral_cartography.lc_ofertasmercadoinmoblrio_tipo_oferta_idx;
       test_ladm_cadastral_cartography         postgres    false    780            #           1259    587240    lc_predio_condicion_predio_idx    INDEX     y   CREATE INDEX lc_predio_condicion_predio_idx ON test_ladm_cadastral_cartography.lc_predio USING btree (condicion_predio);
 K   DROP INDEX test_ladm_cadastral_cartography.lc_predio_condicion_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    781            ^#           1259    587378 %   lc_predio_copropiedad_copropiedad_idx    INDEX     �   CREATE INDEX lc_predio_copropiedad_copropiedad_idx ON test_ladm_cadastral_cartography.lc_predio_copropiedad USING btree (copropiedad);
 R   DROP INDEX test_ladm_cadastral_cartography.lc_predio_copropiedad_copropiedad_idx;
       test_ladm_cadastral_cartography         postgres    false    791            a#           1259    587377     lc_predio_copropiedad_predio_idx    INDEX     }   CREATE INDEX lc_predio_copropiedad_predio_idx ON test_ladm_cadastral_cartography.lc_predio_copropiedad USING btree (predio);
 M   DROP INDEX test_ladm_cadastral_cartography.lc_predio_copropiedad_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    791            b#           1259    589377     lc_predio_copropiedad_predio_key    INDEX     �   CREATE UNIQUE INDEX lc_predio_copropiedad_predio_key ON test_ladm_cadastral_cartography.lc_predio_copropiedad USING btree (predio);
 M   DROP INDEX test_ladm_cadastral_cartography.lc_predio_copropiedad_predio_key;
       test_ladm_cadastral_cartography         postgres    false    791            c#           1259    587385 1   lc_predio_ini_predioinsmos_ini_predio_insumos_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_ini_predio_insumos_idx ON test_ladm_cadastral_cartography.lc_predio_ini_predioinsumos USING btree (ini_predio_insumos);
 ^   DROP INDEX test_ladm_cadastral_cartography.lc_predio_ini_predioinsmos_ini_predio_insumos_idx;
       test_ladm_cadastral_cartography         postgres    false    792            d#           1259    587386 (   lc_predio_ini_predioinsmos_lc_predio_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_lc_predio_idx ON test_ladm_cadastral_cartography.lc_predio_ini_predioinsumos USING btree (lc_predio);
 U   DROP INDEX test_ladm_cadastral_cartography.lc_predio_ini_predioinsmos_lc_predio_idx;
       test_ladm_cadastral_cartography         postgres    false    792            #           1259    587239    lc_predio_tipo_idx    INDEX     a   CREATE INDEX lc_predio_tipo_idx ON test_ladm_cadastral_cartography.lc_predio USING btree (tipo);
 ?   DROP INDEX test_ladm_cadastral_cartography.lc_predio_tipo_idx;
       test_ladm_cadastral_cartography         postgres    false    781            #           1259    587255    lc_puntocontrol_geometria_idx    INDEX     v   CREATE INDEX lc_puntocontrol_geometria_idx ON test_ladm_cadastral_cartography.lc_puntocontrol USING gist (geometria);
 J   DROP INDEX test_ladm_cadastral_cartography.lc_puntocontrol_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    782            #           1259    587254 $   lc_puntocontrol_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_metodoproduccion_idx ON test_ladm_cadastral_cartography.lc_puntocontrol USING btree (metodoproduccion);
 Q   DROP INDEX test_ladm_cadastral_cartography.lc_puntocontrol_metodoproduccion_idx;
       test_ladm_cadastral_cartography         postgres    false    782            #           1259    587253 *   lc_puntocontrol_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_posicion_interpolacion_idx ON test_ladm_cadastral_cartography.lc_puntocontrol USING btree (posicion_interpolacion);
 W   DROP INDEX test_ladm_cadastral_cartography.lc_puntocontrol_posicion_interpolacion_idx;
       test_ladm_cadastral_cartography         postgres    false    782             #           1259    587251    lc_puntocontrol_puntotipo_idx    INDEX     w   CREATE INDEX lc_puntocontrol_puntotipo_idx ON test_ladm_cadastral_cartography.lc_puntocontrol USING btree (puntotipo);
 J   DROP INDEX test_ladm_cadastral_cartography.lc_puntocontrol_puntotipo_idx;
       test_ladm_cadastral_cartography         postgres    false    782            !#           1259    587252 &   lc_puntocontrol_tipo_punto_control_idx    INDEX     �   CREATE INDEX lc_puntocontrol_tipo_punto_control_idx ON test_ladm_cadastral_cartography.lc_puntocontrol USING btree (tipo_punto_control);
 S   DROP INDEX test_ladm_cadastral_cartography.lc_puntocontrol_tipo_punto_control_idx;
       test_ladm_cadastral_cartography         postgres    false    782            "#           1259    587259 &   lc_puntocontrol_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_construccion_idx ON test_ladm_cadastral_cartography.lc_puntocontrol USING btree (ue_lc_construccion);
 S   DROP INDEX test_ladm_cadastral_cartography.lc_puntocontrol_ue_lc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    782            ##           1259    587257 -   lc_puntocontrol_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_servidumbretransito_idx ON test_ladm_cadastral_cartography.lc_puntocontrol USING btree (ue_lc_servidumbretransito);
 Z   DROP INDEX test_ladm_cadastral_cartography.lc_puntocontrol_ue_lc_servidumbretransito_idx;
       test_ladm_cadastral_cartography         postgres    false    782            $#           1259    587256 !   lc_puntocontrol_ue_lc_terreno_idx    INDEX        CREATE INDEX lc_puntocontrol_ue_lc_terreno_idx ON test_ladm_cadastral_cartography.lc_puntocontrol USING btree (ue_lc_terreno);
 N   DROP INDEX test_ladm_cadastral_cartography.lc_puntocontrol_ue_lc_terreno_idx;
       test_ladm_cadastral_cartography         postgres    false    782            %#           1259    587258 ,   lc_puntocontrol_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_unidadconstruccion_idx ON test_ladm_cadastral_cartography.lc_puntocontrol USING btree (ue_lc_unidadconstruccion);
 Y   DROP INDEX test_ladm_cadastral_cartography.lc_puntocontrol_ue_lc_unidadconstruccion_idx;
       test_ladm_cadastral_cartography         postgres    false    782            N#           1259    587354 ,   lc_puntolevantamiento_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_fotoidentificacion_idx ON test_ladm_cadastral_cartography.lc_puntolevantamiento USING btree (fotoidentificacion);
 Y   DROP INDEX test_ladm_cadastral_cartography.lc_puntolevantamiento_fotoidentificacion_idx;
       test_ladm_cadastral_cartography         postgres    false    789            O#           1259    587357 #   lc_puntolevantamiento_geometria_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_geometria_idx ON test_ladm_cadastral_cartography.lc_puntolevantamiento USING gist (geometria);
 P   DROP INDEX test_ladm_cadastral_cartography.lc_puntolevantamiento_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    789            P#           1259    587356 *   lc_puntolevantamiento_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_metodoproduccion_idx ON test_ladm_cadastral_cartography.lc_puntolevantamiento USING btree (metodoproduccion);
 W   DROP INDEX test_ladm_cadastral_cartography.lc_puntolevantamiento_metodoproduccion_idx;
       test_ladm_cadastral_cartography         postgres    false    789            S#           1259    587355 0   lc_puntolevantamiento_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_posicion_interpolacion_idx ON test_ladm_cadastral_cartography.lc_puntolevantamiento USING btree (posicion_interpolacion);
 ]   DROP INDEX test_ladm_cadastral_cartography.lc_puntolevantamiento_posicion_interpolacion_idx;
       test_ladm_cadastral_cartography         postgres    false    789            T#           1259    587352 #   lc_puntolevantamiento_puntotipo_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_puntotipo_idx ON test_ladm_cadastral_cartography.lc_puntolevantamiento USING btree (puntotipo);
 P   DROP INDEX test_ladm_cadastral_cartography.lc_puntolevantamiento_puntotipo_idx;
       test_ladm_cadastral_cartography         postgres    false    789            U#           1259    587353 2   lc_puntolevantamiento_tipo_punto_levantamiento_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_tipo_punto_levantamiento_idx ON test_ladm_cadastral_cartography.lc_puntolevantamiento USING btree (tipo_punto_levantamiento);
 _   DROP INDEX test_ladm_cadastral_cartography.lc_puntolevantamiento_tipo_punto_levantamiento_idx;
       test_ladm_cadastral_cartography         postgres    false    789            V#           1259    587361 ,   lc_puntolevantamiento_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_construccion_idx ON test_ladm_cadastral_cartography.lc_puntolevantamiento USING btree (ue_lc_construccion);
 Y   DROP INDEX test_ladm_cadastral_cartography.lc_puntolevantamiento_ue_lc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    789            W#           1259    587359 3   lc_puntolevantamiento_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_servidumbretransito_idx ON test_ladm_cadastral_cartography.lc_puntolevantamiento USING btree (ue_lc_servidumbretransito);
 `   DROP INDEX test_ladm_cadastral_cartography.lc_puntolevantamiento_ue_lc_servidumbretransito_idx;
       test_ladm_cadastral_cartography         postgres    false    789            X#           1259    587358 '   lc_puntolevantamiento_ue_lc_terreno_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_terreno_idx ON test_ladm_cadastral_cartography.lc_puntolevantamiento USING btree (ue_lc_terreno);
 T   DROP INDEX test_ladm_cadastral_cartography.lc_puntolevantamiento_ue_lc_terreno_idx;
       test_ladm_cadastral_cartography         postgres    false    789            Y#           1259    587360 2   lc_puntolevantamiento_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_unidadconstruccion_idx ON test_ladm_cadastral_cartography.lc_puntolevantamiento USING btree (ue_lc_unidadconstruccion);
 _   DROP INDEX test_ladm_cadastral_cartography.lc_puntolevantamiento_ue_lc_unidadconstruccion_idx;
       test_ladm_cadastral_cartography         postgres    false    789            &#           1259    587271    lc_puntolindero_acuerdo_idx    INDEX     s   CREATE INDEX lc_puntolindero_acuerdo_idx ON test_ladm_cadastral_cartography.lc_puntolindero USING btree (acuerdo);
 H   DROP INDEX test_ladm_cadastral_cartography.lc_puntolindero_acuerdo_idx;
       test_ladm_cadastral_cartography         postgres    false    783            '#           1259    587272 &   lc_puntolindero_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_fotoidentificacion_idx ON test_ladm_cadastral_cartography.lc_puntolindero USING btree (fotoidentificacion);
 S   DROP INDEX test_ladm_cadastral_cartography.lc_puntolindero_fotoidentificacion_idx;
       test_ladm_cadastral_cartography         postgres    false    783            (#           1259    587275    lc_puntolindero_geometria_idx    INDEX     v   CREATE INDEX lc_puntolindero_geometria_idx ON test_ladm_cadastral_cartography.lc_puntolindero USING gist (geometria);
 J   DROP INDEX test_ladm_cadastral_cartography.lc_puntolindero_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    783            )#           1259    587274 $   lc_puntolindero_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_metodoproduccion_idx ON test_ladm_cadastral_cartography.lc_puntolindero USING btree (metodoproduccion);
 Q   DROP INDEX test_ladm_cadastral_cartography.lc_puntolindero_metodoproduccion_idx;
       test_ladm_cadastral_cartography         postgres    false    783            ,#           1259    587273 *   lc_puntolindero_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_posicion_interpolacion_idx ON test_ladm_cadastral_cartography.lc_puntolindero USING btree (posicion_interpolacion);
 W   DROP INDEX test_ladm_cadastral_cartography.lc_puntolindero_posicion_interpolacion_idx;
       test_ladm_cadastral_cartography         postgres    false    783            -#           1259    587270    lc_puntolindero_puntotipo_idx    INDEX     w   CREATE INDEX lc_puntolindero_puntotipo_idx ON test_ladm_cadastral_cartography.lc_puntolindero USING btree (puntotipo);
 J   DROP INDEX test_ladm_cadastral_cartography.lc_puntolindero_puntotipo_idx;
       test_ladm_cadastral_cartography         postgres    false    783            .#           1259    587279 &   lc_puntolindero_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_construccion_idx ON test_ladm_cadastral_cartography.lc_puntolindero USING btree (ue_lc_construccion);
 S   DROP INDEX test_ladm_cadastral_cartography.lc_puntolindero_ue_lc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    783            /#           1259    587277 -   lc_puntolindero_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_servidumbretransito_idx ON test_ladm_cadastral_cartography.lc_puntolindero USING btree (ue_lc_servidumbretransito);
 Z   DROP INDEX test_ladm_cadastral_cartography.lc_puntolindero_ue_lc_servidumbretransito_idx;
       test_ladm_cadastral_cartography         postgres    false    783            0#           1259    587276 !   lc_puntolindero_ue_lc_terreno_idx    INDEX        CREATE INDEX lc_puntolindero_ue_lc_terreno_idx ON test_ladm_cadastral_cartography.lc_puntolindero USING btree (ue_lc_terreno);
 N   DROP INDEX test_ladm_cadastral_cartography.lc_puntolindero_ue_lc_terreno_idx;
       test_ladm_cadastral_cartography         postgres    false    783            1#           1259    587278 ,   lc_puntolindero_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_unidadconstruccion_idx ON test_ladm_cadastral_cartography.lc_puntolindero USING btree (ue_lc_unidadconstruccion);
 Y   DROP INDEX test_ladm_cadastral_cartography.lc_puntolindero_ue_lc_unidadconstruccion_idx;
       test_ladm_cadastral_cartography         postgres    false    783            2#           1259    587292 -   lc_restriccion_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_grpcnntrsdos_idx ON test_ladm_cadastral_cartography.lc_restriccion USING btree (interesado_lc_agrupacioninteresados);
 Z   DROP INDEX test_ladm_cadastral_cartography.lc_restriccion_interesado_lc_grpcnntrsdos_idx;
       test_ladm_cadastral_cartography         postgres    false    784            3#           1259    587291 +   lc_restriccion_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_interesado_idx ON test_ladm_cadastral_cartography.lc_restriccion USING btree (interesado_lc_interesado);
 X   DROP INDEX test_ladm_cadastral_cartography.lc_restriccion_interesado_lc_interesado_idx;
       test_ladm_cadastral_cartography         postgres    false    784            6#           1259    587290    lc_restriccion_tipo_idx    INDEX     k   CREATE INDEX lc_restriccion_tipo_idx ON test_ladm_cadastral_cartography.lc_restriccion USING btree (tipo);
 D   DROP INDEX test_ladm_cadastral_cartography.lc_restriccion_tipo_idx;
       test_ladm_cadastral_cartography         postgres    false    784            7#           1259    587293    lc_restriccion_unidad_idx    INDEX     o   CREATE INDEX lc_restriccion_unidad_idx ON test_ladm_cadastral_cartography.lc_restriccion USING btree (unidad);
 F   DROP INDEX test_ladm_cadastral_cartography.lc_restriccion_unidad_idx;
       test_ladm_cadastral_cartography         postgres    false    784            g#           1259    587397 $   lc_servidumbretransito_dimension_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_dimension_idx ON test_ladm_cadastral_cartography.lc_servidumbretransito USING btree (dimension);
 Q   DROP INDEX test_ladm_cadastral_cartography.lc_servidumbretransito_dimension_idx;
       test_ladm_cadastral_cartography         postgres    false    793            h#           1259    587399 $   lc_servidumbretransito_geometria_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_geometria_idx ON test_ladm_cadastral_cartography.lc_servidumbretransito USING gist (geometria);
 Q   DROP INDEX test_ladm_cadastral_cartography.lc_servidumbretransito_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    793            k#           1259    587398 .   lc_servidumbretransito_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_relacion_superficie_idx ON test_ladm_cadastral_cartography.lc_servidumbretransito USING btree (relacion_superficie);
 [   DROP INDEX test_ladm_cadastral_cartography.lc_servidumbretransito_relacion_superficie_idx;
       test_ladm_cadastral_cartography         postgres    false    793            8#           1259    587305    lc_terreno_dimension_idx    INDEX     m   CREATE INDEX lc_terreno_dimension_idx ON test_ladm_cadastral_cartography.lc_terreno USING btree (dimension);
 E   DROP INDEX test_ladm_cadastral_cartography.lc_terreno_dimension_idx;
       test_ladm_cadastral_cartography         postgres    false    785            9#           1259    587304    lc_terreno_geometria_idx    INDEX     l   CREATE INDEX lc_terreno_geometria_idx ON test_ladm_cadastral_cartography.lc_terreno USING gist (geometria);
 E   DROP INDEX test_ladm_cadastral_cartography.lc_terreno_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    785            <#           1259    587306 "   lc_terreno_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_terreno_relacion_superficie_idx ON test_ladm_cadastral_cartography.lc_terreno USING btree (relacion_superficie);
 O   DROP INDEX test_ladm_cadastral_cartography.lc_terreno_relacion_superficie_idx;
       test_ladm_cadastral_cartography         postgres    false    785            Z#           1259    587370 3   lc_tipologiaconstruccion_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_lc_unidad_construccion_idx ON test_ladm_cadastral_cartography.lc_tipologiaconstruccion USING btree (lc_unidad_construccion);
 `   DROP INDEX test_ladm_cadastral_cartography.lc_tipologiaconstruccion_lc_unidad_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    790            ]#           1259    587369 +   lc_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_tipo_tipologia_idx ON test_ladm_cadastral_cartography.lc_tipologiaconstruccion USING btree (tipo_tipologia);
 X   DROP INDEX test_ladm_cadastral_cartography.lc_tipologiaconstruccion_tipo_tipologia_idx;
       test_ladm_cadastral_cartography         postgres    false    790            l#           1259    587416 #   lc_unidadconstruccion_dimension_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_dimension_idx ON test_ladm_cadastral_cartography.lc_unidadconstruccion USING btree (dimension);
 P   DROP INDEX test_ladm_cadastral_cartography.lc_unidadconstruccion_dimension_idx;
       test_ladm_cadastral_cartography         postgres    false    794            m#           1259    587418 #   lc_unidadconstruccion_geometria_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_geometria_idx ON test_ladm_cadastral_cartography.lc_unidadconstruccion USING gist (geometria);
 P   DROP INDEX test_ladm_cadastral_cartography.lc_unidadconstruccion_geometria_idx;
       test_ladm_cadastral_cartography         postgres    false    794            n#           1259    587415 )   lc_unidadconstruccion_lc_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_lc_construccion_idx ON test_ladm_cadastral_cartography.lc_unidadconstruccion USING btree (lc_construccion);
 V   DROP INDEX test_ladm_cadastral_cartography.lc_unidadconstruccion_lc_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    794            q#           1259    587417 -   lc_unidadconstruccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_relacion_superficie_idx ON test_ladm_cadastral_cartography.lc_unidadconstruccion USING btree (relacion_superficie);
 Z   DROP INDEX test_ladm_cadastral_cartography.lc_unidadconstruccion_relacion_superficie_idx;
       test_ladm_cadastral_cartography         postgres    false    794            r#           1259    587411 +   lc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_construccion_idx ON test_ladm_cadastral_cartography.lc_unidadconstruccion USING btree (tipo_construccion);
 X   DROP INDEX test_ladm_cadastral_cartography.lc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    794            s#           1259    587410 &   lc_unidadconstruccion_tipo_dominio_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_dominio_idx ON test_ladm_cadastral_cartography.lc_unidadconstruccion USING btree (tipo_dominio);
 S   DROP INDEX test_ladm_cadastral_cartography.lc_unidadconstruccion_tipo_dominio_idx;
       test_ladm_cadastral_cartography         postgres    false    794            t#           1259    587413 %   lc_unidadconstruccion_tipo_planta_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_planta_idx ON test_ladm_cadastral_cartography.lc_unidadconstruccion USING btree (tipo_planta);
 R   DROP INDEX test_ladm_cadastral_cartography.lc_unidadconstruccion_tipo_planta_idx;
       test_ladm_cadastral_cartography         postgres    false    794            u#           1259    587412 2   lc_unidadconstruccion_tipo_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_unidad_construccion_idx ON test_ladm_cadastral_cartography.lc_unidadconstruccion USING btree (tipo_unidad_construccion);
 _   DROP INDEX test_ladm_cadastral_cartography.lc_unidadconstruccion_tipo_unidad_construccion_idx;
       test_ladm_cadastral_cartography         postgres    false    794            v#           1259    587414    lc_unidadconstruccion_uso_idx    INDEX     w   CREATE INDEX lc_unidadconstruccion_uso_idx ON test_ladm_cadastral_cartography.lc_unidadconstruccion USING btree (uso);
 J   DROP INDEX test_ladm_cadastral_cartography.lc_unidadconstruccion_uso_idx;
       test_ladm_cadastral_cartography         postgres    false    794            �"           1259    586991 (   snr_derecho_calidad_derecho_registro_idx    INDEX     �   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_ladm_cadastral_cartography.snr_derecho USING btree (calidad_derecho_registro);
 U   DROP INDEX test_ladm_cadastral_cartography.snr_derecho_calidad_derecho_registro_idx;
       test_ladm_cadastral_cartography         postgres    false    758            �"           1259    586992 "   snr_derecho_snr_fuente_derecho_idx    INDEX     �   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_ladm_cadastral_cartography.snr_derecho USING btree (snr_fuente_derecho);
 O   DROP INDEX test_ladm_cadastral_cartography.snr_derecho_snr_fuente_derecho_idx;
       test_ladm_cadastral_cartography         postgres    false    758            �"           1259    586993 #   snr_derecho_snr_predio_registro_idx    INDEX     �   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_ladm_cadastral_cartography.snr_derecho USING btree (snr_predio_registro);
 P   DROP INDEX test_ladm_cadastral_cartography.snr_derecho_snr_predio_registro_idx;
       test_ladm_cadastral_cartography         postgres    false    758            �"           1259    587000 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_ladm_cadastral_cartography.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 f   DROP INDEX test_ladm_cadastral_cartography.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
       test_ladm_cadastral_cartography         postgres    false    759            �"           1259    587010 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_ladm_cadastral_cartography.snr_fuentecabidalinderos USING btree (tipo_documento);
 X   DROP INDEX test_ladm_cadastral_cartography.snr_fuentecabidalinderos_tipo_documento_idx;
       test_ladm_cadastral_cartography         postgres    false    760            �"           1259    587020 $   snr_fuentederecho_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_ladm_cadastral_cartography.snr_fuentederecho USING btree (tipo_documento);
 Q   DROP INDEX test_ladm_cadastral_cartography.snr_fuentederecho_tipo_documento_idx;
       test_ladm_cadastral_cartography         postgres    false    761            �"           1259    587041 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_ladm_cadastral_cartography.snr_predioregistro USING btree (clase_suelo_registro);
 X   DROP INDEX test_ladm_cadastral_cartography.snr_predioregistro_clase_suelo_registro_idx;
       test_ladm_cadastral_cartography         postgres    false    763            �"           1259    587042 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_ladm_cadastral_cartography.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 ]   DROP INDEX test_ladm_cadastral_cartography.snr_predioregistro_snr_fuente_cabidalinderos_idx;
       test_ladm_cadastral_cartography         postgres    false    763            �"           1259    587050 #   snr_titular_derecho_snr_derecho_idx    INDEX     �   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_ladm_cadastral_cartography.snr_titular_derecho USING btree (snr_derecho);
 P   DROP INDEX test_ladm_cadastral_cartography.snr_titular_derecho_snr_derecho_idx;
       test_ladm_cadastral_cartography         postgres    false    764            �"           1259    587049 #   snr_titular_derecho_snr_titular_idx    INDEX     �   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_ladm_cadastral_cartography.snr_titular_derecho USING btree (snr_titular);
 P   DROP INDEX test_ladm_cadastral_cartography.snr_titular_derecho_snr_titular_idx;
       test_ladm_cadastral_cartography         postgres    false    764            �"           1259    587031    snr_titular_tipo_documento_idx    INDEX     y   CREATE INDEX snr_titular_tipo_documento_idx ON test_ladm_cadastral_cartography.snr_titular USING btree (tipo_documento);
 K   DROP INDEX test_ladm_cadastral_cartography.snr_titular_tipo_documento_idx;
       test_ladm_cadastral_cartography         postgres    false    762            �"           1259    587030    snr_titular_tipo_persona_idx    INDEX     u   CREATE INDEX snr_titular_tipo_persona_idx ON test_ladm_cadastral_cartography.snr_titular USING btree (tipo_persona);
 I   DROP INDEX test_ladm_cadastral_cartography.snr_titular_tipo_persona_idx;
       test_ladm_cadastral_cartography         postgres    false    762            2$           1259    589471 &   t_ili2db_attrname_sqlname_colowner_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_sqlname_colowner_key ON test_ladm_cadastral_cartography.t_ili2db_attrname USING btree (sqlname, colowner);
 S   DROP INDEX test_ladm_cadastral_cartography.t_ili2db_attrname_sqlname_colowner_key;
       test_ladm_cadastral_cartography         postgres    false    881    881            �#           1259    587538    t_ili2db_basket_dataset_idx    INDEX     s   CREATE INDEX t_ili2db_basket_dataset_idx ON test_ladm_cadastral_cartography.t_ili2db_basket USING btree (dataset);
 H   DROP INDEX test_ladm_cadastral_cartography.t_ili2db_basket_dataset_idx;
       test_ladm_cadastral_cartography         postgres    false    806            �#           1259    589469     t_ili2db_dataset_datasetname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_ladm_cadastral_cartography.t_ili2db_dataset USING btree (datasetname);
 M   DROP INDEX test_ladm_cadastral_cartography.t_ili2db_dataset_datasetname_key;
       test_ladm_cadastral_cartography         postgres    false    807            �#           1259    589470 '   t_ili2db_model_iliversion_modelname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_iliversion_modelname_key ON test_ladm_cadastral_cartography.t_ili2db_model USING btree (iliversion, modelname);
 T   DROP INDEX test_ladm_cadastral_cartography.t_ili2db_model_iliversion_modelname_key;
       test_ladm_cadastral_cartography         postgres    false    811    811            6$           2606    588237 E   cc_metodooperacion cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey FOREIGN KEY (col_transformacion_transformacion) REFERENCES test_ladm_cadastral_cartography.col_transformacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey;
       test_ladm_cadastral_cartography       postgres    false    8681    710    706            %           2606    589459 5   cc_nomenclaturavial cc_nomenclaturavial_tipo_via_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_nomenclaturavial
    ADD CONSTRAINT cc_nomenclaturavial_tipo_via_fkey FOREIGN KEY (tipo_via) REFERENCES test_ladm_cadastral_cartography.cc_nomenclaturavial_tipo_via(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.cc_nomenclaturavial DROP CONSTRAINT cc_nomenclaturavial_tipo_via_fkey;
       test_ladm_cadastral_cartography       postgres    false    799    841    9185            7$           2606    588248 5   col_areavalor col_areavalor_lc_construccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_construccion_area_fkey FOREIGN KEY (lc_construccion_area) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor DROP CONSTRAINT col_areavalor_lc_construccion_area_fkey;
       test_ladm_cadastral_cartography       postgres    false    8923    707    767            8$           2606    588258 ;   col_areavalor col_areavalor_lc_servidumbretransito_rea_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey FOREIGN KEY (lc_servidumbretransito_area) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor DROP CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey;
       test_ladm_cadastral_cartography       postgres    false    9066    793    707            9$           2606    588253 0   col_areavalor col_areavalor_lc_terreno_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_terreno_area_fkey FOREIGN KEY (lc_terreno_area) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor DROP CONSTRAINT col_areavalor_lc_terreno_area_fkey;
       test_ladm_cadastral_cartography       postgres    false    785    707    9019            :$           2606    588263 ;   col_areavalor col_areavalor_lc_unidadconstruccion_area_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey FOREIGN KEY (lc_unidadconstruccion_area) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor DROP CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey;
       test_ladm_cadastral_cartography       postgres    false    794    9072    707            ;$           2606    588242 %   col_areavalor col_areavalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor
    ADD CONSTRAINT col_areavalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_cadastral_cartography.col_areatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_areavalor DROP CONSTRAINT col_areavalor_tipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    828    9159    707            �$           2606    588701 Q   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     1  ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_cadastral_cartography.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_cadastral_cartography       postgres    false    766    734    8918            �$           2606    588696 O   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_cadastral_cartography.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey;
       test_ladm_cadastral_cartography       postgres    false    776    734    8965            �$           2606    588706 =   col_baunitcomointeresado col_baunitcomointeresado_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_unidad_fkey;
       test_ladm_cadastral_cartography       postgres    false    781    734    8985            r$           2606    588541 6   col_baunitfuente col_baunitfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_cadastral_cartography.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitfuente DROP CONSTRAINT col_baunitfuente_fuente_espacial_fkey;
       test_ladm_cadastral_cartography       postgres    false    774    724    8955            s$           2606    588546 -   col_baunitfuente col_baunitfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_baunitfuente DROP CONSTRAINT col_baunitfuente_unidad_fkey;
       test_ladm_cadastral_cartography       postgres    false    781    724    8985            u$           2606    588556 $   col_cclfuente col_cclfuente_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_cclfuente
    ADD CONSTRAINT col_cclfuente_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_cadastral_cartography.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_cclfuente DROP CONSTRAINT col_cclfuente_ccl_fkey;
       test_ladm_cadastral_cartography       postgres    false    778    726    8974            v$           2606    588561 0   col_cclfuente col_cclfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_cclfuente
    ADD CONSTRAINT col_cclfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_cadastral_cartography.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_cclfuente DROP CONSTRAINT col_cclfuente_fuente_espacial_fkey;
       test_ladm_cadastral_cartography       postgres    false    774    726    8955            �$           2606    588636 .   col_clfuente col_clfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_clfuente
    ADD CONSTRAINT col_clfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_cadastral_cartography.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_clfuente DROP CONSTRAINT col_clfuente_fuente_espacial_fkey;
       test_ladm_cadastral_cartography       postgres    false    774    730    8955            |$           2606    588591 "   col_masccl col_masccl_ccl_mas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl
    ADD CONSTRAINT col_masccl_ccl_mas_fkey FOREIGN KEY (ccl_mas) REFERENCES test_ladm_cadastral_cartography.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl DROP CONSTRAINT col_masccl_ccl_mas_fkey;
       test_ladm_cadastral_cartography       postgres    false    778    728    8974            }$           2606    588611 1   col_masccl col_masccl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    767    728    8923            ~$           2606    588601 5   col_masccl col_masccl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_cadastral_cartography       postgres    false    793    728    9066            $           2606    588596 ,   col_masccl col_masccl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey;
       test_ladm_cadastral_cartography       postgres    false    785    728    9019            �$           2606    588606 5   col_masccl col_masccl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    794    728    9072            �$           2606    588676 /   col_mascl col_mascl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    732    767    8923            �$           2606    588666 3   col_mascl col_mascl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_cadastral_cartography       postgres    false    793    732    9066            �$           2606    588661 *   col_mascl col_mascl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey;
       test_ladm_cadastral_cartography       postgres    false    785    732    9019            �$           2606    588671 3   col_mascl col_mascl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_cadastral_cartography.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    732    794    9072            w$           2606    588566 (   col_menosccl col_menosccl_ccl_menos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl
    ADD CONSTRAINT col_menosccl_ccl_menos_fkey FOREIGN KEY (ccl_menos) REFERENCES test_ladm_cadastral_cartography.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl DROP CONSTRAINT col_menosccl_ccl_menos_fkey;
       test_ladm_cadastral_cartography       postgres    false    778    727    8974            x$           2606    588586 7   col_menosccl col_menosccl_ue_menos_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    767    727    8923            y$           2606    588576 9   col_menosccl col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_cadastral_cartography       postgres    false    727    793    9066            z$           2606    588571 2   col_menosccl col_menosccl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey;
       test_ladm_cadastral_cartography       postgres    false    9019    727    785            {$           2606    588581 9   col_menosccl col_menosccl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    9072    727    794            �$           2606    588656 5   col_menoscl col_menoscl_ue_menos_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    767    731    8923            �$           2606    588646 7   col_menoscl col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_cadastral_cartography       postgres    false    793    731    9066            �$           2606    588641 0   col_menoscl col_menoscl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey;
       test_ladm_cadastral_cartography       postgres    false    785    731    9019            �$           2606    588651 7   col_menoscl col_menoscl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    794    731    9072            �$           2606    588751 )   col_miembros col_miembros_agrupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_miembros
    ADD CONSTRAINT col_miembros_agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES test_ladm_cadastral_cartography.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_miembros DROP CONSTRAINT col_miembros_agrupacion_fkey;
       test_ladm_cadastral_cartography       postgres    false    766    737    8918            �$           2606    588746 9   col_miembros col_miembros_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_cadastral_cartography.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_cadastral_cartography       postgres    false    766    737    8918            �$           2606    588741 7   col_miembros col_miembros_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_cadastral_cartography.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_interesado_fkey;
       test_ladm_cadastral_cartography       postgres    false    776    737    8965            �$           2606    588631 "   col_puntoccl col_puntoccl_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntoccl
    ADD CONSTRAINT col_puntoccl_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_cadastral_cartography.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntoccl DROP CONSTRAINT col_puntoccl_ccl_fkey;
       test_ladm_cadastral_cartography       postgres    false    8974    729    778            �$           2606    588616 4   col_puntoccl col_puntoccl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_cadastral_cartography.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey;
       test_ladm_cadastral_cartography       postgres    false    782    729    8990            �$           2606    588626 9   col_puntoccl col_puntoccl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_cadastral_cartography.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey;
       test_ladm_cadastral_cartography       postgres    false    729    789    9042            �$           2606    588621 4   col_puntoccl col_puntoccl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_cadastral_cartography.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey;
       test_ladm_cadastral_cartography       postgres    false    9003    729    783            �$           2606    588681 2   col_puntocl col_puntocl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_cadastral_cartography.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey;
       test_ladm_cadastral_cartography       postgres    false    8990    733    782            �$           2606    588691 7   col_puntocl col_puntocl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_cadastral_cartography.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey;
       test_ladm_cadastral_cartography       postgres    false    789    733    9042            �$           2606    588686 2   col_puntocl col_puntocl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_cadastral_cartography.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey;
       test_ladm_cadastral_cartography       postgres    false    783    733    9003            i$           2606    588496 4   col_puntofuente col_puntofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntofuente
    ADD CONSTRAINT col_puntofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_cadastral_cartography.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntofuente DROP CONSTRAINT col_puntofuente_fuente_espacial_fkey;
       test_ladm_cadastral_cartography       postgres    false    774    722    8955            j$           2606    588501 :   col_puntofuente col_puntofuente_punto_lc_puntocontrol_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_cadastral_cartography.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey;
       test_ladm_cadastral_cartography       postgres    false    782    722    8990            k$           2606    588511 ?   col_puntofuente col_puntofuente_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_cadastral_cartography.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey;
       test_ladm_cadastral_cartography       postgres    false    789    722    9042            l$           2606    588506 :   col_puntofuente col_puntofuente_punto_lc_puntolindero_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_cadastral_cartography.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey;
       test_ladm_cadastral_cartography       postgres    false    783    722    9003            f$           2606    588481 @   col_relacionfuente col_relacionfuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_cadastral_cartography.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_relacionfuente DROP CONSTRAINT col_relacionfuente_fuente_administrativa_fkey;
       test_ladm_cadastral_cartography       postgres    false    720    773    8950            t$           2606    588551 K   col_relacionfuenteuespacial col_relacionfuenteuespcial_fuente_espacial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_cadastral_cartography.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey;
       test_ladm_cadastral_cartography       postgres    false    774    725    8955            �$           2606    588711 F   col_responsablefuente col_responsablefuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_cadastral_cartography.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_responsablefuente DROP CONSTRAINT col_responsablefuente_fuente_administrativa_fkey;
       test_ladm_cadastral_cartography       postgres    false    773    735    8950            �$           2606    588721 K   col_responsablefuente col_responsablefuente_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     +  ALTER TABLE ONLY test_ladm_cadastral_cartography.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_cadastral_cartography.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_cadastral_cartography       postgres    false    735    8918    766            �$           2606    588716 I   col_responsablefuente col_responsablefuente_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_cadastral_cartography.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey;
       test_ladm_cadastral_cartography       postgres    false    735    8965    776            ^$           2606    588441 6   col_rrrfuente col_rrrfuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_cadastral_cartography.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_rrrfuente DROP CONSTRAINT col_rrrfuente_fuente_administrativa_fkey;
       test_ladm_cadastral_cartography       postgres    false    8950    718    773            _$           2606    588451 /   col_rrrfuente col_rrrfuente_rrr_lc_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey FOREIGN KEY (rrr_lc_derecho) REFERENCES test_ladm_cadastral_cartography.lc_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey;
       test_ladm_cadastral_cartography       postgres    false    770    718    8938            `$           2606    588446 3   col_rrrfuente col_rrrfuente_rrr_lc_restriccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey FOREIGN KEY (rrr_lc_restriccion) REFERENCES test_ladm_cadastral_cartography.lc_restriccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    784    718    9013            �$           2606    588726 <   col_topografofuente col_topografofuente_fuente_espacial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_topografofuente
    ADD CONSTRAINT col_topografofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_cadastral_cartography.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_cadastral_cartography.col_topografofuente DROP CONSTRAINT col_topografofuente_fuente_espacial_fkey;
       test_ladm_cadastral_cartography       postgres    false    736    774    8955            �$           2606    588736 G   col_topografofuente col_topografofuente_topografo_lc_agrpcnntrsdos_fkey    FK CONSTRAINT     &  ALTER TABLE ONLY test_ladm_cadastral_cartography.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey FOREIGN KEY (topografo_lc_agrupacioninteresados) REFERENCES test_ladm_cadastral_cartography.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey;
       test_ladm_cadastral_cartography       postgres    false    766    736    8918            �$           2606    588731 D   col_topografofuente col_topografofuente_topografo_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey FOREIGN KEY (topografo_lc_interesado) REFERENCES test_ladm_cadastral_cartography.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey;
       test_ladm_cadastral_cartography       postgres    false    8965    736    776            I$           2606    588335 E   col_transformacion col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey    FK CONSTRAINT     #  ALTER TABLE ONLY test_ladm_cadastral_cartography.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey FOREIGN KEY (lc_puntocontrol_transformacion_y_resultado) REFERENCES test_ladm_cadastral_cartography.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey;
       test_ladm_cadastral_cartography       postgres    false    8990    710    782            J$           2606    588340 E   col_transformacion col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey    FK CONSTRAINT     #  ALTER TABLE ONLY test_ladm_cadastral_cartography.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolindero_transformacion_y_resultado) REFERENCES test_ladm_cadastral_cartography.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey;
       test_ladm_cadastral_cartography       postgres    false    9003    783    710            K$           2606    588345 E   col_transformacion col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey    FK CONSTRAINT     /  ALTER TABLE ONLY test_ladm_cadastral_cartography.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolevantamiento_transformacion_y_resultado) REFERENCES test_ladm_cadastral_cartography.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey;
       test_ladm_cadastral_cartography       postgres    false    710    789    9042            a$           2606    588476 %   col_uebaunit col_uebaunit_baunit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit
    ADD CONSTRAINT col_uebaunit_baunit_fkey FOREIGN KEY (baunit) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit DROP CONSTRAINT col_uebaunit_baunit_fkey;
       test_ladm_cadastral_cartography       postgres    false    8985    719    781            b$           2606    588471 1   col_uebaunit col_uebaunit_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    767    719    8923            c$           2606    588461 8   col_uebaunit col_uebaunit_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey;
       test_ladm_cadastral_cartography       postgres    false    793    719    9066            d$           2606    588456 ,   col_uebaunit col_uebaunit_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_terreno_fkey;
       test_ladm_cadastral_cartography       postgres    false    785    719    9019            e$           2606    588466 7   col_uebaunit col_uebaunit_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    794    719    9072            m$           2606    588536 .   col_uefuente col_uefuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente
    ADD CONSTRAINT col_uefuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_cadastral_cartography.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente DROP CONSTRAINT col_uefuente_fuente_espacial_fkey;
       test_ladm_cadastral_cartography       postgres    false    8955    723    774            n$           2606    588531 1   col_uefuente col_uefuente_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    723    767    8923            o$           2606    588521 8   col_uefuente col_uefuente_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey;
       test_ladm_cadastral_cartography       postgres    false    9066    723    793            p$           2606    588516 ,   col_uefuente col_uefuente_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_terreno_fkey;
       test_ladm_cadastral_cartography       postgres    false    785    723    9019            q$           2606    588526 7   col_uefuente col_uefuente_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    9072    723    794            Z$           2606    588436 6   col_ueuegrupo col_ueuegrupo_parte_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey FOREIGN KEY (parte_lc_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    717    767    8923            [$           2606    588426 ;   col_ueuegrupo col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey FOREIGN KEY (parte_lc_servidumbretransito) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey;
       test_ladm_cadastral_cartography       postgres    false    9066    717    793            \$           2606    588421 1   col_ueuegrupo col_ueuegrupo_parte_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey FOREIGN KEY (parte_lc_terreno) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey;
       test_ladm_cadastral_cartography       postgres    false    785    717    9019            ]$           2606    588431 ;   col_ueuegrupo col_ueuegrupo_parte_lc_unidadconstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey FOREIGN KEY (parte_lc_unidadconstruccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    794    717    9072            g$           2606    588486 <   col_unidadfuente col_unidadfuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_cadastral_cartography.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_cadastral_cartography.col_unidadfuente DROP CONSTRAINT col_unidadfuente_fuente_administrativa_fkey;
       test_ladm_cadastral_cartography       postgres    false    8950    721    773            h$           2606    588491 -   col_unidadfuente col_unidadfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_unidadfuente DROP CONSTRAINT col_unidadfuente_unidad_fkey;
       test_ladm_cadastral_cartography       postgres    false    781    721    8985            U$           2606    588401 >   col_volumenvalor col_volumenvalor_lc_construccion_volumen_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey FOREIGN KEY (lc_construccion_volumen) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey;
       test_ladm_cadastral_cartography       postgres    false    767    716    8923            V$           2606    588411 A   col_volumenvalor col_volumenvalor_lc_servidumbretranst_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey FOREIGN KEY (lc_servidumbretransito_volumen) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey;
       test_ladm_cadastral_cartography       postgres    false    793    716    9066            W$           2606    588406 9   col_volumenvalor col_volumenvalor_lc_terreno_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey FOREIGN KEY (lc_terreno_volumen) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey;
       test_ladm_cadastral_cartography       postgres    false    785    716    9019            X$           2606    588416 A   col_volumenvalor col_volumenvalor_lc_unidadconstruccin_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey FOREIGN KEY (lc_unidadconstruccion_volumen) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey;
       test_ladm_cadastral_cartography       postgres    false    794    716    9072            Y$           2606    588396 +   col_volumenvalor col_volumenvalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_cadastral_cartography.col_volumentipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_cadastral_cartography.col_volumenvalor DROP CONSTRAINT col_volumenvalor_tipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    859    716    9221            R$           2606    588390 5   extarchivo extarchivo_lc_fuenteespacl_xt_rchv_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.extarchivo
    ADD CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteespacial_ext_archivo_id) REFERENCES test_ladm_cadastral_cartography.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.extarchivo DROP CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey;
       test_ladm_cadastral_cartography       postgres    false    715    774    8955            S$           2606    588385 5   extarchivo extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.extarchivo
    ADD CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteadministrtiva_ext_archivo_id) REFERENCES test_ladm_cadastral_cartography.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.extarchivo DROP CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey;
       test_ladm_cadastral_cartography       postgres    false    773    715    8950            T$           2606    588380 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_ladm_cadastral_cartography.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
       test_ladm_cadastral_cartography       postgres    false    760    715    8895            <$           2606    588273 2   extdireccion extdireccion_clase_via_principal_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_clase_via_principal_fkey FOREIGN KEY (clase_via_principal) REFERENCES test_ladm_cadastral_cartography.extdireccion_clase_via_principal(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_clase_via_principal_fkey;
       test_ladm_cadastral_cartography       postgres    false    708    9233    865            =$           2606    588293 9   extdireccion extdireccion_extinteresado_ext_drccn_id_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey FOREIGN KEY (extinteresado_ext_direccion_id) REFERENCES test_ladm_cadastral_cartography.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey;
       test_ladm_cadastral_cartography       postgres    false    708    713    8693            >$           2606    588288 9   extdireccion extdireccion_extndddfccnfsc_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey FOREIGN KEY (extunidadedificcnfsica_ext_direccion_id) REFERENCES test_ladm_cadastral_cartography.extunidadedificacionfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey;
       test_ladm_cadastral_cartography       postgres    false    708    8683    711            ?$           2606    588298 9   extdireccion extdireccion_lc_construccin_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey FOREIGN KEY (lc_construccion_ext_direccion_id) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey;
       test_ladm_cadastral_cartography       postgres    false    708    8923    767            @$           2606    588318 9   extdireccion extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey FOREIGN KEY (lc_unidadconstruccion_ext_direccion_id) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey;
       test_ladm_cadastral_cartography       postgres    false    794    9072    708            A$           2606    588303 2   extdireccion extdireccion_lc_predio_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_lc_predio_direccion_fkey FOREIGN KEY (lc_predio_direccion) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_lc_predio_direccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    708    781    8985            B$           2606    588313 9   extdireccion extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey FOREIGN KEY (lc_servidumbretransito_ext_direccion_id) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey;
       test_ladm_cadastral_cartography       postgres    false    793    708    9066            C$           2606    588308 9   extdireccion extdireccion_lc_terreno_ext_direccin_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey FOREIGN KEY (lc_terreno_ext_direccion_id) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey;
       test_ladm_cadastral_cartography       postgres    false    785    9019    708            D$           2606    588278 ,   extdireccion extdireccion_sector_ciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_sector_ciudad_fkey FOREIGN KEY (sector_ciudad) REFERENCES test_ladm_cadastral_cartography.extdireccion_sector_ciudad(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_sector_ciudad_fkey;
       test_ladm_cadastral_cartography       postgres    false    9239    868    708            E$           2606    588283 ,   extdireccion extdireccion_sector_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_sector_predio_fkey FOREIGN KEY (sector_predio) REFERENCES test_ladm_cadastral_cartography.extdireccion_sector_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_sector_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    9129    708    813            F$           2606    588268 -   extdireccion extdireccion_tipo_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion
    ADD CONSTRAINT extdireccion_tipo_direccion_fkey FOREIGN KEY (tipo_direccion) REFERENCES test_ladm_cadastral_cartography.extdireccion_tipo_direccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_cadastral_cartography.extdireccion DROP CONSTRAINT extdireccion_tipo_direccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    872    9247    708            O$           2606    588365 ;   extinteresado extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey    FK CONSTRAINT     *  ALTER TABLE ONLY test_ladm_cadastral_cartography.extinteresado
    ADD CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey FOREIGN KEY (extredserviciosfisica_ext_interesado_administrador_id) REFERENCES test_ladm_cadastral_cartography.extredserviciosfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.extinteresado DROP CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey;
       test_ladm_cadastral_cartography       postgres    false    714    713    8695            P$           2606    588370 ;   extinteresado extinteresado_lc_agrupacionntrsds_xt_pid_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.extinteresado
    ADD CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey FOREIGN KEY (lc_agrupacionintersdos_ext_pid) REFERENCES test_ladm_cadastral_cartography.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.extinteresado DROP CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey;
       test_ladm_cadastral_cartography       postgres    false    766    713    8918            Q$           2606    588375 6   extinteresado extinteresado_lc_interesado_ext_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.extinteresado
    ADD CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey FOREIGN KEY (lc_interesado_ext_pid) REFERENCES test_ladm_cadastral_cartography.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.extinteresado DROP CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey;
       test_ladm_cadastral_cartography       postgres    false    776    713    8965            G$           2606    588325 1   fraccion fraccion_col_miembros_participacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.fraccion
    ADD CONSTRAINT fraccion_col_miembros_participacion_fkey FOREIGN KEY (col_miembros_participacion) REFERENCES test_ladm_cadastral_cartography.col_miembros(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_cadastral_cartography.fraccion DROP CONSTRAINT fraccion_col_miembros_participacion_fkey;
       test_ladm_cadastral_cartography       postgres    false    8816    737    709            H$           2606    588330 1   fraccion fraccion_lc_predio_copropidd_cfcnte_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.fraccion
    ADD CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey FOREIGN KEY (lc_predio_copropiedad_coeficiente) REFERENCES test_ladm_cadastral_cartography.lc_predio_copropiedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_cadastral_cartography.fraccion DROP CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey;
       test_ladm_cadastral_cartography       postgres    false    791    9056    709            �$           2606    588757 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT     &  ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_ladm_cadastral_cartography.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    754    739    8872            �$           2606    588773 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_cadastral_cartography.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    756    743    8879            �$           2606    588762 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_cadastral_cartography.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    9231    743    864            �$           2606    588852 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_ladm_cadastral_cartography.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
       test_ladm_cadastral_cartography       postgres    false    8879    757    756            �$           2606    588857 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_ladm_cadastral_cartography.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
       test_ladm_cadastral_cartography       postgres    false    756    757    8879            �$           2606    588785 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_cadastral_cartography.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    8879    744    756            �$           2606    588795 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_ladm_cadastral_cartography.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
       test_ladm_cadastral_cartography       postgres    false    744    745    8839            �$           2606    588800 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_ladm_cadastral_cartography.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
       test_ladm_cadastral_cartography       postgres    false    756    746    8879            �$           2606    588805 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_ladm_cadastral_cartography.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
       test_ladm_cadastral_cartography       postgres    false    756    747    8879            �$           2606    588841 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_cadastral_cartography.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    829    756    9161            �$           2606    588846 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_ladm_cadastral_cartography.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
       test_ladm_cadastral_cartography       postgres    false    756    861    9225            �$           2606    588810 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_cadastral_cartography.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
       test_ladm_cadastral_cartography       postgres    false    756    750    8879            �$           2606    588818 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_cadastral_cartography.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    8879    753    756            �$           2606    588836 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_ladm_cadastral_cartography.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    8835    754    743            �$           2606    588823 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_cadastral_cartography.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    864    754    9231            4$           2606    588225 E   gm_curve3dlistvalue gm_curve3dlistvalue_gm_multicurve3d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_curve3dlistvalue
    ADD CONSTRAINT gm_curve3dlistvalue_gm_multicurve3d_geometry_fkey FOREIGN KEY (gm_multicurve3d_geometry) REFERENCES test_ladm_cadastral_cartography.gm_multicurve3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_curve3dlistvalue DROP CONSTRAINT gm_curve3dlistvalue_gm_multicurve3d_geometry_fkey;
       test_ladm_cadastral_cartography       postgres    false    704    702    8645            3$           2606    588220 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_ladm_cadastral_cartography.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
       test_ladm_cadastral_cartography       postgres    false    8635    700    701            5$           2606    588230 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_ladm_cadastral_cartography.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
       test_ladm_cadastral_cartography       postgres    false    8647    703    705            L$           2606    588360 &   imagen imagen_extinteresado_firma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.imagen
    ADD CONSTRAINT imagen_extinteresado_firma_fkey FOREIGN KEY (extinteresado_firma) REFERENCES test_ladm_cadastral_cartography.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_cadastral_cartography.imagen DROP CONSTRAINT imagen_extinteresado_firma_fkey;
       test_ladm_cadastral_cartography       postgres    false    713    712    8693            M$           2606    588355 +   imagen imagen_extinteresado_fotografia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.imagen
    ADD CONSTRAINT imagen_extinteresado_fotografia_fkey FOREIGN KEY (extinteresado_fotografia) REFERENCES test_ladm_cadastral_cartography.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_cadastral_cartography.imagen DROP CONSTRAINT imagen_extinteresado_fotografia_fkey;
       test_ladm_cadastral_cartography       postgres    false    713    712    8693            N$           2606    588350 -   imagen imagen_extinteresado_huell_dctlar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.imagen
    ADD CONSTRAINT imagen_extinteresado_huell_dctlar_fkey FOREIGN KEY (extinteresado_huella_dactilar) REFERENCES test_ladm_cadastral_cartography.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_cadastral_cartography.imagen DROP CONSTRAINT imagen_extinteresado_huell_dctlar_fkey;
       test_ladm_cadastral_cartography       postgres    false    8693    712    713            �$           2606    588928 ;   ini_predioinsumos ini_predioinsumos_gc_predio_catastro_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_cadastral_cartography.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey;
       test_ladm_cadastral_cartography       postgres    false    8879    756    765            �$           2606    588933 <   ini_predioinsumos ini_predioinsumos_snr_predio_juridico_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey FOREIGN KEY (snr_predio_juridico) REFERENCES test_ladm_cadastral_cartography.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_cadastral_cartography.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey;
       test_ladm_cadastral_cartography       postgres    false    8906    765    763            �$           2606    588923 <   ini_predioinsumos ini_predioinsumos_tipo_emparejamiento_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_cadastral_cartography.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey FOREIGN KEY (tipo_emparejamiento) REFERENCES test_ladm_cadastral_cartography.ini_emparejamientotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_cadastral_cartography.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey;
       test_ladm_cadastral_cartography       postgres    false    765    823    9149            �$           2606    588938 ;   lc_agrupacioninteresados lc_agrupacioninteresados_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_cadastral_cartography.col_grupointeresadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_tipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    766    819    9141            �$           2606    589269 R   lc_calificacionconvencional lc_calificacionconvencinal_lc_unidad_construccion_fkey    FK CONSTRAINT     "  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    9072    794    786            �$           2606    589263 J   lc_calificacionconvencional lc_calificacionconvencinal_tipo_calificar_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey FOREIGN KEY (tipo_calificar) REFERENCES test_ladm_cadastral_cartography.lc_calificartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey;
       test_ladm_cadastral_cartography       postgres    false    835    9173    786            �$           2606    589279 T   lc_calificacionnoconvencional lc_calificacionnoconvncnal_lc_unidad_construccion_fkey    FK CONSTRAINT     $  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    9072    794    787            �$           2606    589274 H   lc_calificacionnoconvencional lc_calificacionnoconvncnal_tipo_anexo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey FOREIGN KEY (tipo_anexo) REFERENCES test_ladm_cadastral_cartography.lc_anexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey;
       test_ladm_cadastral_cartography       postgres    false    787    848    9199            �$           2606    588961 .   lc_construccion lc_construccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccion
    ADD CONSTRAINT lc_construccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_cadastral_cartography.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccion DROP CONSTRAINT lc_construccion_dimension_fkey;
       test_ladm_cadastral_cartography       postgres    false    830    767    9163            �$           2606    588966 8   lc_construccion lc_construccion_relacion_superficie_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccion
    ADD CONSTRAINT lc_construccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_cadastral_cartography.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccion DROP CONSTRAINT lc_construccion_relacion_superficie_fkey;
       test_ladm_cadastral_cartography       postgres    false    9133    767    815            �$           2606    588943 6   lc_construccion lc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccion DROP CONSTRAINT lc_construccion_tipo_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    9155    767    826            �$           2606    588948 1   lc_construccion lc_construccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_cadastral_cartography.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_construccion DROP CONSTRAINT lc_construccion_tipo_dominio_fkey;
       test_ladm_cadastral_cartography       postgres    false    834    767    9171            �$           2606    588981 =   lc_contactovisita lc_contactovisita_lc_datos_adicionales_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey FOREIGN KEY (lc_datos_adicionales) REFERENCES test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_contactovisita DROP CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey;
       test_ladm_cadastral_cartography       postgres    false    9030    788    768            �$           2606    588976 <   lc_contactovisita lc_contactovisita_relacion_con_predio_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_relacion_con_predio_fkey FOREIGN KEY (relacion_con_predio) REFERENCES test_ladm_cadastral_cartography.lc_relacionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_contactovisita DROP CONSTRAINT lc_contactovisita_relacion_con_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    832    9167    768            �$           2606    588971 C   lc_contactovisita lc_contactovisita_tipo_documento_quien_tndio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey FOREIGN KEY (tipo_documento_quien_atendio) REFERENCES test_ladm_cadastral_cartography.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_contactovisita DROP CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey;
       test_ladm_cadastral_cartography       postgres    false    9139    818    768            �$           2606    588994 8   lc_datosphcondominio lc_datosphcondominio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_lc_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    769    781    8985            �$           2606    589300 Y   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_categoria_suelo_fkey    FK CONSTRAINT     "  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey FOREIGN KEY (categoria_suelo) REFERENCES test_ladm_cadastral_cartography.lc_categoriasuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey;
       test_ladm_cadastral_cartography       postgres    false    9193    845    788            �$           2606    589295 U   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_clase_suelo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey FOREIGN KEY (clase_suelo) REFERENCES test_ladm_cadastral_cartography.lc_clasesuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey;
       test_ladm_cadastral_cartography       postgres    false    788    9153    825            �$           2606    589290 _   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_destinacion_economica_fkey    FK CONSTRAINT     4  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey FOREIGN KEY (destinacion_economica) REFERENCES test_ladm_cadastral_cartography.lc_destinacioneconomicatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey;
       test_ladm_cadastral_cartography       postgres    false    839    788    9181            �$           2606    589315 S   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_lc_predio_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    788    8985    781            �$           2606    589285 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey    FK CONSTRAINT     P  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey FOREIGN KEY (procedimiento_catastral_registral) REFERENCES test_ladm_cadastral_cartography.lc_procedimientocatastralregistraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey;
       test_ladm_cadastral_cartography       postgres    false    788    9261    879            �$           2606    589310 Z   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_resultado_visita_fkey    FK CONSTRAINT     %  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey FOREIGN KEY (resultado_visita) REFERENCES test_ladm_cadastral_cartography.lc_resultadovisitatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey;
       test_ladm_cadastral_cartography       postgres    false    788    9191    844             %           2606    589305 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey    FK CONSTRAINT     =  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey FOREIGN KEY (tipo_documento_reconocedor) REFERENCES test_ladm_cadastral_cartography.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey;
       test_ladm_cadastral_cartography       postgres    false    9139    788    818            �$           2606    589010 5   lc_derecho lc_derecho_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_cadastral_cartography.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_cadastral_cartography       postgres    false    766    770    8918            �$           2606    589005 3   lc_derecho lc_derecho_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_cadastral_cartography.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_interesado_fkey;
       test_ladm_cadastral_cartography       postgres    false    776    770    8965            �$           2606    588999    lc_derecho lc_derecho_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derecho
    ADD CONSTRAINT lc_derecho_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_cadastral_cartography.lc_derechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derecho DROP CONSTRAINT lc_derecho_tipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    770    878    9259            �$           2606    589015 !   lc_derecho lc_derecho_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derecho
    ADD CONSTRAINT lc_derecho_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_derecho DROP CONSTRAINT lc_derecho_unidad_fkey;
       test_ladm_cadastral_cartography       postgres    false    781    770    8985            �$           2606    589020 O   lc_estructuranovedadfmi lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey    FK CONSTRAINT     ?  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_fmi) REFERENCES test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey;
       test_ladm_cadastral_cartography       postgres    false    788    771    9030            �$           2606    589030 \   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey    FK CONSTRAINT     Z  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_numeros_prediales) REFERENCES test_ladm_cadastral_cartography.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey;
       test_ladm_cadastral_cartography       postgres    false    788    772    9030            �$           2606    589025 N   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_tipo_novedad_fkey    FK CONSTRAINT     -  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey FOREIGN KEY (tipo_novedad) REFERENCES test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial_tipo_novedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey;
       test_ladm_cadastral_cartography       postgres    false    838    772    9179            �$           2606    589040 J   lc_fuenteadministrativa lc_fuenteadministrativa_estado_disponibilidad_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_cadastral_cartography.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey;
       test_ladm_cadastral_cartography       postgres    false    870    773    9243            �$           2606    589035 9   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_cadastral_cartography.lc_fuenteadministrativatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    822    773    9147            �$           2606    589045 C   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_principal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_cadastral_cartography.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey;
       test_ladm_cadastral_cartography       postgres    false    817    773    9137            �$           2606    589055 >   lc_fuenteespacial lc_fuenteespacial_estado_disponibilidad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_cadastral_cartography.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey;
       test_ladm_cadastral_cartography       postgres    false    774    870    9243            �$           2606    589050 -   lc_fuenteespacial lc_fuenteespacial_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_cadastral_cartography.col_fuenteespacialtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    821    774    9145            �$           2606    589060 7   lc_fuenteespacial lc_fuenteespacial_tipo_principal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_cadastral_cartography.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_principal_fkey;
       test_ladm_cadastral_cartography       postgres    false    774    817    9137            �$           2606    589065 A   lc_grupocalificacion lc_grupocalificacion_clase_calificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey FOREIGN KEY (clase_calificacion) REFERENCES test_ladm_cadastral_cartography.lc_clasecalificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey;
       test_ladm_cadastral_cartography       postgres    false    9151    775    824            �$           2606    589070 ;   lc_grupocalificacion lc_grupocalificacion_conservacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_conservacion_fkey FOREIGN KEY (conservacion) REFERENCES test_ladm_cadastral_cartography.lc_estadoconservaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_conservacion_fkey;
       test_ladm_cadastral_cartography       postgres    false    866    775    9235            �$           2606    589076 I   lc_grupocalificacion lc_grupocalificacion_lc_calificacion_convencnal_fkey    FK CONSTRAINT     %  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey FOREIGN KEY (lc_calificacion_convencional) REFERENCES test_ladm_cadastral_cartography.lc_calificacionconvencional(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey;
       test_ladm_cadastral_cartography       postgres    false    786    775    9024            �$           2606    589096 -   lc_interesado lc_interesado_grupo_etnico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesado
    ADD CONSTRAINT lc_interesado_grupo_etnico_fkey FOREIGN KEY (grupo_etnico) REFERENCES test_ladm_cadastral_cartography.lc_grupoetnicotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesado DROP CONSTRAINT lc_interesado_grupo_etnico_fkey;
       test_ladm_cadastral_cartography       postgres    false    877    776    9257            �$           2606    589091 %   lc_interesado lc_interesado_sexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesado
    ADD CONSTRAINT lc_interesado_sexo_fkey FOREIGN KEY (sexo) REFERENCES test_ladm_cadastral_cartography.lc_sexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesado DROP CONSTRAINT lc_interesado_sexo_fkey;
       test_ladm_cadastral_cartography       postgres    false    858    776    9219            �$           2606    589086 /   lc_interesado lc_interesado_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_cadastral_cartography.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesado DROP CONSTRAINT lc_interesado_tipo_documento_fkey;
       test_ladm_cadastral_cartography       postgres    false    818    776    9139            �$           2606    589081 %   lc_interesado lc_interesado_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_cadastral_cartography.lc_interesadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesado DROP CONSTRAINT lc_interesado_tipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    863    776    9229            �$           2606    589101 >   lc_interesadocontacto lc_interesadocontacto_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_lc_interesado_fkey FOREIGN KEY (lc_interesado) REFERENCES test_ladm_cadastral_cartography.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_lc_interesado_fkey;
       test_ladm_cadastral_cartography       postgres    false    776    777    8965            �$           2606    589113 F   lc_objetoconstruccion lc_objetoconstruccion_lc_grupo_calificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey FOREIGN KEY (lc_grupo_calificacion) REFERENCES test_ladm_cadastral_cartography.lc_grupocalificacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey;
       test_ladm_cadastral_cartography       postgres    false    775    8962    779            �$           2606    589107 I   lc_objetoconstruccion lc_objetoconstruccion_tipo_objeto_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey FOREIGN KEY (tipo_objeto_construccion) REFERENCES test_ladm_cadastral_cartography.lc_objetoconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    779    9135    816            �$           2606    589126 G   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    8985    780    781            �$           2606    589118 I   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_tipo_oferta_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey FOREIGN KEY (tipo_oferta) REFERENCES test_ladm_cadastral_cartography.lc_ofertatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey;
       test_ladm_cadastral_cartography       postgres    false    831    9165    780            �$           2606    589137 )   lc_predio lc_predio_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio
    ADD CONSTRAINT lc_predio_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_cadastral_cartography.lc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio DROP CONSTRAINT lc_predio_condicion_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    9245    781    871            %           2606    589383 <   lc_predio_copropiedad lc_predio_copropiedad_copropiedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_copropiedad_fkey FOREIGN KEY (copropiedad) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_copropiedad_fkey;
       test_ladm_cadastral_cartography       postgres    false    781    8985    791            %           2606    589378 7   lc_predio_copropiedad lc_predio_copropiedad_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_predio_fkey FOREIGN KEY (predio) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    781    8985    791            %           2606    589388 N   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_ini_predio_insumos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey FOREIGN KEY (ini_predio_insumos) REFERENCES test_ladm_cadastral_cartography.ini_predioinsumos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey;
       test_ladm_cadastral_cartography       postgres    false    792    8914    765            %           2606    589393 E   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey;
       test_ladm_cadastral_cartography       postgres    false    792    8985    781            �$           2606    589132    lc_predio lc_predio_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio
    ADD CONSTRAINT lc_predio_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_cadastral_cartography.lc_prediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_predio DROP CONSTRAINT lc_predio_tipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    781    9251    874            �$           2606    589159 5   lc_puntocontrol lc_puntocontrol_metodoproduccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_cadastral_cartography.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_metodoproduccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    9249    873    782            �$           2606    589154 ;   lc_puntocontrol lc_puntocontrol_posicion_interpolacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_cadastral_cartography.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey;
       test_ladm_cadastral_cartography       postgres    false    782    9177    837            �$           2606    589142 .   lc_puntocontrol lc_puntocontrol_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_cadastral_cartography.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_puntotipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    846    782    9195            �$           2606    589147 7   lc_puntocontrol lc_puntocontrol_tipo_punto_control_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey FOREIGN KEY (tipo_punto_control) REFERENCES test_ladm_cadastral_cartography.lc_puntocontroltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey;
       test_ladm_cadastral_cartography       postgres    false    782    842    9187            �$           2606    589179 7   lc_puntocontrol lc_puntocontrol_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    767    782    8923            �$           2606    589169 >   lc_puntocontrol lc_puntocontrol_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey;
       test_ladm_cadastral_cartography       postgres    false    793    9066    782            �$           2606    589164 2   lc_puntocontrol lc_puntocontrol_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey;
       test_ladm_cadastral_cartography       postgres    false    782    785    9019            �$           2606    589174 =   lc_puntocontrol lc_puntocontrol_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    782    794    9072            %           2606    589330 C   lc_puntolevantamiento lc_puntolevantamiento_fotoidentificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_cadastral_cartography.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey;
       test_ladm_cadastral_cartography       postgres    false    833    9169    789            %           2606    589342 A   lc_puntolevantamiento lc_puntolevantamiento_metodoproduccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_cadastral_cartography.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    873    789    9249            %           2606    589337 G   lc_puntolevantamiento lc_puntolevantamiento_posicion_interpolacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_cadastral_cartography.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey;
       test_ladm_cadastral_cartography       postgres    false    789    9177    837            %           2606    589320 :   lc_puntolevantamiento lc_puntolevantamiento_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_cadastral_cartography.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_puntotipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    846    789    9195            %           2606    589325 I   lc_puntolevantamiento lc_puntolevantamiento_tipo_punto_levantamiento_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey FOREIGN KEY (tipo_punto_levantamiento) REFERENCES test_ladm_cadastral_cartography.lc_puntolevtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey;
       test_ladm_cadastral_cartography       postgres    false    9203    850    789            %           2606    589362 C   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_construccion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    767    789    8923            %           2606    589352 J   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey;
       test_ladm_cadastral_cartography       postgres    false    789    9066    793            %           2606    589347 >   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey;
       test_ladm_cadastral_cartography       postgres    false    9019    789    785            	%           2606    589357 I   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    789    9072    794            �$           2606    589189 ,   lc_puntolindero lc_puntolindero_acuerdo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_acuerdo_fkey FOREIGN KEY (acuerdo) REFERENCES test_ladm_cadastral_cartography.lc_acuerdotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero DROP CONSTRAINT lc_puntolindero_acuerdo_fkey;
       test_ladm_cadastral_cartography       postgres    false    843    9189    783            �$           2606    589194 7   lc_puntolindero lc_puntolindero_fotoidentificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_cadastral_cartography.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero DROP CONSTRAINT lc_puntolindero_fotoidentificacion_fkey;
       test_ladm_cadastral_cartography       postgres    false    833    783    9169            �$           2606    589206 5   lc_puntolindero lc_puntolindero_metodoproduccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_cadastral_cartography.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero DROP CONSTRAINT lc_puntolindero_metodoproduccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    9249    783    873            �$           2606    589201 ;   lc_puntolindero lc_puntolindero_posicion_interpolacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_cadastral_cartography.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero DROP CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey;
       test_ladm_cadastral_cartography       postgres    false    837    9177    783            �$           2606    589184 .   lc_puntolindero lc_puntolindero_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_cadastral_cartography.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero DROP CONSTRAINT lc_puntolindero_puntotipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    846    9195    783            �$           2606    589226 7   lc_puntolindero lc_puntolindero_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    8923    783    767            �$           2606    589216 >   lc_puntolindero lc_puntolindero_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_cadastral_cartography.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey;
       test_ladm_cadastral_cartography       postgres    false    783    793    9066            �$           2606    589211 2   lc_puntolindero lc_puntolindero_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_cadastral_cartography.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey;
       test_ladm_cadastral_cartography       postgres    false    783    9019    785            �$           2606    589221 =   lc_puntolindero lc_puntolindero_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    783    9072    794            �$           2606    589241 =   lc_restriccion lc_restriccion_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_cadastral_cartography.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_cadastral_cartography       postgres    false    784    8918    766            �$           2606    589236 ;   lc_restriccion lc_restriccion_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_cadastral_cartography.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey;
       test_ladm_cadastral_cartography       postgres    false    8965    776    784            �$           2606    589231 '   lc_restriccion lc_restriccion_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restriccion
    ADD CONSTRAINT lc_restriccion_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_cadastral_cartography.lc_restricciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restriccion DROP CONSTRAINT lc_restriccion_tipo_fkey;
       test_ladm_cadastral_cartography       postgres    false    784    9157    827            �$           2606    589246 )   lc_restriccion lc_restriccion_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restriccion
    ADD CONSTRAINT lc_restriccion_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_cadastral_cartography.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_restriccion DROP CONSTRAINT lc_restriccion_unidad_fkey;
       test_ladm_cadastral_cartography       postgres    false    781    8985    784            %           2606    589399 <   lc_servidumbretransito lc_servidumbretransito_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_cadastral_cartography.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_dimension_fkey;
       test_ladm_cadastral_cartography       postgres    false    830    9163    793            %           2606    589404 F   lc_servidumbretransito lc_servidumbretransito_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_cadastral_cartography.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey;
       test_ladm_cadastral_cartography       postgres    false    815    9133    793            �$           2606    589253 $   lc_terreno lc_terreno_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_terreno
    ADD CONSTRAINT lc_terreno_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_cadastral_cartography.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_terreno DROP CONSTRAINT lc_terreno_dimension_fkey;
       test_ladm_cadastral_cartography       postgres    false    9163    830    785            �$           2606    589258 .   lc_terreno lc_terreno_relacion_superficie_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_terreno
    ADD CONSTRAINT lc_terreno_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_cadastral_cartography.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_terreno DROP CONSTRAINT lc_terreno_relacion_superficie_fkey;
       test_ladm_cadastral_cartography       postgres    false    815    785    9133            
%           2606    589372 M   lc_tipologiaconstruccion lc_tipologiaconstruccion_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    794    9072    790            %           2606    589367 E   lc_tipologiaconstruccion lc_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_ladm_cadastral_cartography.lc_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey;
       test_ladm_cadastral_cartography       postgres    false    840    9183    790            %           2606    589449 :   lc_unidadconstruccion lc_unidadconstruccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_cadastral_cartography.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_dimension_fkey;
       test_ladm_cadastral_cartography       postgres    false    9163    794    830            %           2606    589444 @   lc_unidadconstruccion lc_unidadconstruccion_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey FOREIGN KEY (lc_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    794    767    8923            %           2606    589454 D   lc_unidadconstruccion lc_unidadconstruccion_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_cadastral_cartography.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey;
       test_ladm_cadastral_cartography       postgres    false    815    794    9133            %           2606    589414 B   lc_unidadconstruccion lc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_cadastral_cartography.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    9155    794    826            %           2606    589409 =   lc_unidadconstruccion lc_unidadconstruccion_tipo_dominio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_cadastral_cartography.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey;
       test_ladm_cadastral_cartography       postgres    false    794    834    9171            %           2606    589424 <   lc_unidadconstruccion lc_unidadconstruccion_tipo_planta_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey FOREIGN KEY (tipo_planta) REFERENCES test_ladm_cadastral_cartography.lc_construccionplantatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey;
       test_ladm_cadastral_cartography       postgres    false    867    794    9237            %           2606    589419 I   lc_unidadconstruccion lc_unidadconstruccion_tipo_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey FOREIGN KEY (tipo_unidad_construccion) REFERENCES test_ladm_cadastral_cartography.lc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey;
       test_ladm_cadastral_cartography       postgres    false    9227    862    794            %           2606    589434 4   lc_unidadconstruccion lc_unidadconstruccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_ladm_cadastral_cartography.lc_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_cadastral_cartography.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_uso_fkey;
       test_ladm_cadastral_cartography       postgres    false    836    9175    794            �$           2606    588863 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_ladm_cadastral_cartography.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
       test_ladm_cadastral_cartography       postgres    false    869    758    9241            �$           2606    588868 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_ladm_cadastral_cartography.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
       test_ladm_cadastral_cartography       postgres    false    761    758    8898            �$           2606    588873 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_ladm_cadastral_cartography.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
       test_ladm_cadastral_cartography       postgres    false    8906    758    763            �$           2606    588878 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT     ?  ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_ladm_cadastral_cartography.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
       test_ladm_cadastral_cartography       postgres    false    8906    759    763            �$           2606    588883 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_cadastral_cartography.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
       test_ladm_cadastral_cartography       postgres    false    875    760    9253            �$           2606    588888 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_cadastral_cartography.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
       test_ladm_cadastral_cartography       postgres    false    9253    875    761            �$           2606    588903 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_ladm_cadastral_cartography.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
       test_ladm_cadastral_cartography       postgres    false    763    814    9131            �$           2606    588908 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_ladm_cadastral_cartography.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
       test_ladm_cadastral_cartography       postgres    false    760    8895    763            �$           2606    588918 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_ladm_cadastral_cartography.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
       test_ladm_cadastral_cartography       postgres    false    764    758    8888            �$           2606    588913 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_ladm_cadastral_cartography.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
       test_ladm_cadastral_cartography       postgres    false    764    762    8901            �$           2606    588898 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_cadastral_cartography.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
       test_ladm_cadastral_cartography       postgres    false    820    9143    762            �$           2606    588893 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_ladm_cadastral_cartography.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_cadastral_cartography.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
       test_ladm_cadastral_cartography       postgres    false    856    9215    762            %           2606    589464 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_ladm_cadastral_cartography.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_cadastral_cartography.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
       test_ladm_cadastral_cartography       postgres    false    807    9118    806            &      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      &      x������ � �      �%      x������ � �      �%      x������ � �       &      x������ � �      *&     x���Aj�0EףS�Ǝc%YuYRh�W1u� �%3�}������`w����{��˪����u7e�H�=���B#�B�ٻnuP��S�A�O�.B�]�lc0�F�]t�d��z�N����|����s�i���O-R,D����*se��e�3w%1���%���:�Ì_�Q��Z`BS��Ҩ�X���,
)^E�Ej0�UŢx|���7�gь���ej�.����l���.��qlۺ{��%�#9�I~Ƴ�Կ?��ig׌1����l      &      x������ � �      &      x������ � �      &      x������ � �      &      x������ � �      &   �   x���K
�0��N��D�JwE)>
WB%�I�z��k�����7���ħ0A���L)�VYD�l�N�K�����ֈ�V��P�@!�d�̇�/���F���0X�J]3�8cۣG�O�;8���wcg�oD��0�A"or^��+���C�+�ܘq��(uPn ��8Ѻ� �mǬ�      &     x�͑Aj�0E��)�&n {�n�J�*`&�8d�Ɂ'�.��|�Jr��.��� ��G���M��n��qݼ,�E�N�Q�"����Y�m7�"���F����^��
��%ԗ{�NQ��B��frۖ  �)ZΠ�N��d� ��Q0C��ݷ��wB0�ϡ�֓� u���́��c�Q������H���>�
~>�������\-��K����thǞ�rp��D\���G��]J��ezK�I\�����r��h�ً�y� ?�^��-�<� ����      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      7&   �   x����j�0�����	J�q�ˡWe�]	%&Ĝ�����ŖX�Z&rw���>��3�~]���ͺ���4�u�Za�4�2 ��F�O���
�??��	hB�Q&�\�����~���)��(�x�-����<J>������-�o8�l�F2�B{��՞7��1�f=b���IsJ>Թ�7�=h�\��CoȢ/V[h�TV�#�[�� �����b�&F��r�x7�r��-4\���t�PJ ��      &   j   x�347��qt�w���3�7���J�sR��@�.���yř�y!���1~��@!#3�*{xs�X���܌TA�ch5МT�8�K��!�AY\1z\\\ ��G�      G&   �   x���M�0F��)�0��;ą�	�t0MjK�x���-�E�\���o&3/E>I�ɱ�Oiq��7P֕���Ck׉hk��MH���Z�<#>��zbc�Zsʠ�Ptʩ�@C��]տ��{�Q`f�C�a��(
6($������|Dɀ�-�=���I��$$S.qYxy���Ҟ�=J��ˋt      M&   �   x�3�0��qt�w���3�7���J�sR��@���%�)�A�)��Ee�ə��!���1~��9�y�@Y/��ejaD�����y��PS]�J��f�m��[ijQb�Kj<Lb<XX!%U�!�Ʉl��9�K���CY\1z\\\ �r6      :&   �   x�350��qt�w���3�7���J�sR��@���%E��%�E�!���1~���E����� N�����dӀ:2�R���$S!f�^�S��WHE�ZeD�UF�!�%��aL�I�$�d��_������3�?�*����� T�o�      4&   �  x����N#1���S��'"Q\�]ſ]�9�y=���oDq�u����wC6�����|3?�ӓ����ryv}��u�<���*Y�Zg�gb��i�K��emn������xv�6���˛�rb�|������C�8;�^Ãi�k���䭨7A�W=�+8��)����*JV=4��}��״����Jl�(���9j����O�:z�əp�sK�Ͻϒ�M9��ƹ�s�A`j\�5�jfPG�c��u
�� ���w���'u�q����s4�hL��f�/(
�(�̓���`���Ed���<�q��;����ο�o�H4����_���9�}0�� Hm瘜F�#F٫2"-���
�m��3����="/�ţY�'Q��ڼ� y�k�%� UwuUU� k\!      &   '  x��T�n�@����2B�S$�!ن E,#�bs\2o�{p�F�
W���ǲwGA�"Q%q���ّ��}��\�W����E�(��.H�TF�:��x��
���x��be�1(W���P�
��L�F�-7�?� 34u������C�x8q��X�ck0b��(*gU��,vU�O�͆�\&�!"��|��ŕ�7O�\l���n.�����ੇ�1��̐$nv��p��L7��e�9?X��&m,b�8KĲ���Z򓻧�MF��	ҧ���5�t�����h�?I8��Q+����� ���h�d-v*J�O��'�w򁛕�Z�ɽL@��,�]h�=�-�	|�0U�0�m�T�r���*�-ƃ�آU�f;�<fU,�e^'�F����<3"����D�;>�8�UNtH�x�6=��00?�j�r5ρ����A����F�s2�ʲk9���'[�񖹲�z2X�;e��,�s�DuV&.���{��Gi���1��O��?�D��~r��Y��w�H������7��@G���ᡜ�f� h��      &   �   x���M
�0F��)r���B]�n�U��t������Ʌ+�Ћ٦
�B��2o�|���N�M�����&?�s�*u�5p���kaA�a�ܣ�A�4��|�W,pl�$��`�� �H��:�J0Q�������������i����r�=f�<F_+�ˮB�hѯ��aA G�?5�'ȩ;Y[�t���c�ś�I]<�{r�m'��0|00�:      &&   |   x�3�4��qt�w���3�7���J�sR��@��y%�E�9�ə�y!���1~�����9�)`N���Ҍ9�¹�)���E�P��
�A���X`�l�Of^j"�9��B��b���� ��Z�      0&   �   x�3����qt�w���3�7���J�sR��@�������F��!���1~��.��Y�y%`^2���ҀT�9C�!FAY@cI5ƈ3�� �� ?/b2h��s��'���'g��|�"����� ��]�      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      J&   $  x��SKjA]K���$��ֱ6�	$d%J�5�BOո?�K/���b��9�de����>5�WW���涹��m~j.�ctW\ ]��-e��#�/α�/�u��[\,�J��H.��vq;<�$�9y}_(M`��0E(�p���a�+8� -xډk�0B@������޵gJ���J�����w��p��M����K�T��d <I�:���)Y��?%OގpډQ�ṫь�8 ���1Y)@IZ[�H�FJU�N���e:���HN9�]�;�z����ש]eÒ��a��v�������W>�͉���D���Ș̙Nw��D�Y#Otρ�F+HzM�,�Vs{=#5���=&2�3V�����~}4��)�l��X7��F�u
giZ�mFнn�i;W�������i����څU�"��Ѹ��̊�f���y�.yb�iT�j֫�V���ƨ�C�E�:Jvx�Ɩ��8P�u^Wj{Obp�1��o�p���R�h~er�AÓ�WO�4�h��5Ё�d����b�QԾ��z�\�C�G      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      6&   e   x�3�0��qt�w���3�7���J�sR��@��y%�!���1~����y%E�9 N����9�K����&!x@��H1ʈ�n������ ˔A�      2&   �   x�313��qt�w���3�7���J�sR��@�A�)��Ee�ə��!���1~���%E�@% ^�wx3��ebfA������������#K��q�FZ�a�'P4>$�hN"�T��B��0.s26�I�IM��-���Ƀ��*zx3H�+F��� 	t_      8&   f   x�3�4��qt�w���3�7���J�sR��@�A���%E�!���1~��A�E�9 f��ebiF�9���EI�y���l�I�$�d���Á��b���� ��B      �%      x������ � �      �%      x������ � �      &   �   x�32��qt�w���3�7���J�sR��@�A�9�ə�y���Ei�ə�!���1~���y�A�ŉy%� ~��P�s��m�!���Ԝ|��eP������.M*F1�!�edN��Ɯ�%EPS�,�=... �p*      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      5&   f  x���Kn�0���)|��w�2m�Ю��!��$N�`��p�n�X�<(m�E������'є,���i�H��� ���I3�_΀�,�WZ��gx�S��R����Z"���ؾk�>z�^��2�P����]]:da0�f�<C���9Z$;��k!m~Mxߵ��~̶$�9"�9Fd���S.T�6���B��tZ^?�Fox�q�so�1٠�,A	6ܭN���[v2��7���A��@7�s�;�"���S���>�7թ=�V���4z3C'�A��g��2�$ޝs#��ks�֑7aD��Dy���^C|2�`~�Ղ\�?n7�Q����d'�P���Y�]�S߼a�� �2�      =&   i   x�35���qt�w���3�7���J�sR��@��y�)�)�)�i�ɉə�y!���1~������E%�)`~*���Ѐ\�9=�R2�2SJs F��b���� �g:�      �%      x������ � �      <&   j   x�350��qt�w���3�7���J�sR�����9���y!���1~���i�ə�9 N�����4�9�s�KsS�!�!s��Y�f��I�$(�+F��� �"Dh      �%      x������ � �      �%      x������ � �      �%      x������ � �      B&   �   x���;n�0��)rA�LJ�J�8.W�C��� Ǐl����{�L1���дZ}���e�\��8��?CKl����ao��P����;:���f���P+t�>�[������3=���l���9�֙�*`����q����͙���A��O�Cz̎m�CB�Z�5�er7��Uq�}&{-�w�u���u�I�������>�cv�2�%d����Z!~am:R      E&   |   x�351��qt�w���3�7���J�sR��\+J\2�R��3���S�K��3KSS8c�88��JRA�48���Ĉl9�K� �A@ӌ�6͈ӵ�<(h�	��s����1�b���� $Gd�      &   z   x�34��qt�w���3�7���J�sR��\+J\2�R��3���S�K���RS2�9c�88��JRA�48��Ђl9�K� �A\��df��Zs��ed@�qƜ��p�`L�=... &�dR      I&   f   x�353��qt�w���3�7���J�sR��\+J\2�R��3���B2���\�?NN�⒢��ҢĔD�H����)�r���c�ᗯ��fM� ��B�      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      &   �  x��VKo1>�_�c"!y�[T��Vj�S��ٝ��]�R{�Oɱ���z�?�!�iՕ@�5����a'G�c��XB���q�F����h���y���z��{�|��ԅF�Y(5~�7��l̃[1A����P�R���h��D2����.Q�J���L�`d	;�z���q "�.�'�	�^6ޗ˅%�:��۰��Ԃ��E��gfa���X*'+���
y ���lNZ`s�l���<K�7X��խ��BY���Ǯ�)��K��O�=J��+�[��.a��Z1���dcy��S^W�>��|Hm\a�7	�b�L�d�[ކ�ti~M+]�#Y�-�r(xkm4>����^��GxO[�q��cg�7�l���հm�K��Yx��%ܡU�U�K�}���is�q0	�f[x��:�a��'+ܓ�_�b�`7��tZ�?��T��b����O۲Xooe�[�hę)���C�������Õ[0
`;fG���"3YX�U����Ke>ˉ�6�~T���(`�ު����kgxЂ&�;4��)_j�UI�7���;(�AHy��z���+	ll��3"7F���P�u?d1[�L\k��^7�J|p

ʽ]q%&������-�m^����̓��A����;�u@�kJ(~H"�6�\��=�N~�0�BT(q���R9\k'.L`ʩ�(:RF���GCJ��*S����c�Y�g�s�L��SIe��� O�8�÷����jJa�t"�7�N��9�fP      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      >&   �   x�354�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,����4��s1�8�*��3��s��q��(�V 9�צ �@�p�K{�;:�q�Qѵ����I�9�B�x�������=... �o�      �%      x������ � �      �%      x������ � �      A&   �   x���1�0E��9 ��J=A���K��RdW���7�{q.F��	��~�����C<.dБ�z���W
��x����eѵz�ӒO8N�%��'c/J��}f�2�?ɀ*�l1��sD���vYT�)�ؚ�n�"�\*T֛��)dSW��DO�۽�l��~n�x@0i������|!�BJ� gI�w      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      &   7  x����J�0���)�M�Ov5�J/VĉW��m�D��d��y��z�a5λ�S~�@�S��U��f'+S�u+���*S�����P>�2��E^��FX�"��ukUcк@�����&�.s�*Ȅ,Ekն��km6�Rª�p7_�)�^����[�S�����n���ٷ��Ze�O�N��똲�oN
s2gNv�91���;P>��s�G�@z��;>3?q��GW[6���8q�c��!��1�ǟ������  u )��I�GJ��9��ҝ�I?IvL����`�z��L�3��dӅ��S��;��p~      �%      x������ � �      ,&   �   x�36����OI�ɏw,��LNL��ϋ�qt�u����I-�wN,�3�7��q�wL.M-J��,����4��
�8ip�kEfqI�Bi�B"DD�8?�(U!'Q� �839���<��
�y%�\�f��;���%�8�H|�CR�������� �^�      �%      x������ � �      1&   �  x��\M��F=˿�/؀2)�3���3�.;N��)��"{�L(������7s�!�-W��}���&5TǛݽy�Y�Uwիꦗ���k�X�_��(�A$��ݫ�_�~w����-���;������U">�w�N�~�v��}��|�C��o�F�y�(�O����.h��zA#�gϫ�L��L��/�g'�����E�s����OA���,O� /R�%A*r9gA���L\i𞳭ȏ	;�\���5xj�o�=ǀ��}������y=���E�d�2;~J��H� ��[�D"R�M!~�ly��R�L���L�0�AME�M��|��`�D.�$����ox����@l�={���-��3�[���70��G�94�X�9��,�������w&���O�`��P�G��Eʻ��Ŗ�jb\������LD��?�T��(G�·j��e����0?����	�#N�K>7����E�K�"j��!��l�Z��O!��ZJ�Q��`2��M����������Ǜ�Oo��p�5B3�2��sN�Q�b%���ט�X�Rs9N�;�w8���?�e��^�����L�� 3�bƱe技q�7[��9��z�،��v՘'�M~#WNM�YZ���l-z��[���\�3�Oa���5�y3�X����~l�Ȳ���b�-o
[�����@b*f�(͍���1��B��jAuI�{��3�Nab$ִ��4T� �Z�:��V�	��5�����b�R��1�h�&���N����3%��D������aeuԣ�i�����Ɩ>[� ԓ=g(��S��}S���VҎ7�G�|G���
H���t���vV�r�g�|��Kkd�������Fq��R����M�@��y�9�:չl����[ѥx��
t�fo�,��2`.��㘌���;�&S~�߲\l�J��"��Jr�(.�����F��N�����ŏ��G�*G��F 1�\��{K?
2򪪧0���c�G� �`�Z�9�F�aF�#*:N��@VP%�BE���I�B�E���`\c\50��9���Ҵ`n���lH�0"�q�A-��� �q����u:��a�^�N �mvQ(�U]SY��v��CM�L�
hz�x�&�;{��]��j�L�F	��e޾ëB���M��I-�u�ĉ�F9{����*�t	�?& A��R9=��e�W�jr��>r�m��0j�F�חͫ5�C�*�0t ���HB��٨�!�IJ2΂~�2���*���h�a�^��LO���!�W�f7dZ���R�A!^�*შ7]���q �Z���6�0nM@�z�y����P���p��Wл������h���:����U[Q�Jk�|4��� b�f2�{L�Tep�ÈH��v��a)B��}�,R��xI�(Q����"���Y j�Ȗ�w�E�{9Ȯ�ݑ�����)��l���@0�ku���^JE[�w�9\Y=�j�+�$W�۾�y"�������p���S-c�A�P%f�wkGϟ\p7,k�=շA`�,"��X�y�i���@dP�gj��S�uW�;m���fT�F=��ۛ�$�&а��"��K�Z^�׳�"��':��r뗒�n5�3��F�9��\{�IP�M��i�Ym�g��ɩI�ѵ֠�E����^Ɛňa�Z���WzR�\k���r�k-6�N�7�nlﲻfJ`:��D`����[���{�c��ƾV
��ի+�?���H�Yk�P[�@��$W�Vi�ޒm�n�(0l�����X�Ao�՟Ɠi�w5!���8�͎��Yc�5�lc�1�c�r	��'�H�d���Z6Ŝk�f�^�7�el�띑���c-O��6"w�h�{��nf��4���'.k��K�*� ��l�OT�﵅�����8�lt��@�<�����z���ry9�؟��Df:�y��u��j�7�Ȃ��.��J��8���(uR���JQ���,D|Z����Vb�ƽ�Lyy�~�	<���9���l�NPp��{�j۫#�li-���6*��A�a$99c:��F��Z�yN�7�g,��Ǆ�18����A�����KJ�"��M���R�[���ǞxS�{�S5��9�?>Dt(fx��w:[�QY�oe�O��`��9g��C�?�V\���n���8��D�!�D���a���x�厷j���xO̗�a�����V�%�1:e�Z�x����ȾI�Q��7��CuC�:��/F�
��VM�6���&���v��9�_Z�L��uPVn��dA�Jqa�Qe+�9=�Q��"Li���jmr���p̕�ob�ϫ�A�~ҩb���Y�$K�q?Ù��r��6k�a��M�	E�AŨe�����ƻj��z�UI���Y��m�7l�7lJ�)��:����9m�e�D�򄾥Z�t��/��{�<O;�s����y�ܿ-��Kr�=�s*�=뜹r)6�'�ʹ�z=�_�G����5f��b���b��<Dy��85�����B �a�o��}����qP����`��j�fA`Ztw�x�*��;Y��ZV�mV��:+��]n�1n�7K���R㮐.5cM��I��luO%����D�Z�]�3��벰caU� S|�����RQES��ݶ�Iz_Ru��I�)��&��´=F ��j���{�)���W]R�1R�&)K�Z�$�łC,���[��@{"��|!��<絢�"t��a�%S��{y��3�� ���8��'��z}�@7�`��:5�.�f��f�6���$�u3�l��֫���޸�ޓ���3�C��@�Z'��u�Rw���⚻�oZ�ϖ�v��]�È>�*�G��wy_=�5��昦��,F<����9 �O�U�!����������5�N����k-2|g��4\���Z���\�i��ɣ�����,�ep�]���ll����W�j�@I6�-�6G�j��KT�S|���x��������#�֡X���������ھ>p\�Q�����oԠ;~�tv"ש��\�� k��{�pܓp�UC���#�G1�QODsV��`&� ����_;���o�^�w�h���{�%v���Ԟ��ʋ:�K�t,�6\���	:��S��CԧF�s^��K��r��+s,��}˷�e�)5Z����&"�߫խ�~\u�
s�L7�c�Qi��MJuukc����*K��{��ké�2U
��fu	}:!ɣ�/���b�l^�l����`���5қV�ta�)���?�O���x� 3�$<I������)��qG93���[+:�U�:h5�eP�鯮!��a�o�vWPO��oY��6d��P�8�'h�
�f/��;z��!�(r��чK7_��9�k�T�=V#2(}򤡎k@�p�xsL!�dZKL��G��$�^�LJ�%�r��/:|�9�(�ֶ�����-�u-[ׯ��y&���]��u�V@ڕ?�Cy=��_���y��/1�C�[���L�G��SL���]�����Lґ;�/긓
&R�Qu���c��zc�#���9T
<��<��s���d����j2�3u8���.F9}e��i'z.�TB�B����5N��L�����`���f�Q�'�J�!9/�}���rq���qh��}�"bD�ޚ ����$��},'L���C���L���&��RO�������.�3�G?�N�^gzP��F�v3��e
˓܌H���O�;��SnΓ��_�ݏ�u�{���?�h�����O�鷂��P駹���)�ZW������u��m�яG�5C	��C�������l]҇?-V_�|��<:�N-�W]�ճ���]*sa�EZ���h�j�� 0�CQq�o�v]c�ᬭ��#�G��֧Ly\����RI ��v���ų.�={�otX��      �%      x������ � �      �%      x������ � �      $&   �   x���1
� ��YO�	BL�f�R0-��) �XMz��k2$&S�l��/~ =��qJ�+o@
	�rV]���8�^���(�3V�g��'x����CGP�JfZt���K�}-�"�V�"Q�ё���2?���j���XV�>�x��#�b|9��ӵ�Y��=�~"GH'T���ҸO�s��6���*Ļ      .&   J  x��T���6={����l�Ů����i��icD�UG!E����So�������MR �d�ș7ｙ����t�e?zg�:	��������;>�h��q���=��%:��q�w7�����������R(��W������p��ؚ��B�S2�/���-*w��q����M�&�H�1���?g6�����B��Iҫ�O��A�P����|�4����.w�5�s�(��T4H��a�be��_#��NSz���33@E#�'�;~�b<V���<:��r�̍>j#'� X�W��S�0�g
���<	��&�np�,�V=:�Mf<��B=�B����x��G)�p�J�h=ruR�5;~2ۭ��n7�s	_��<�o��t��%T��)N\��V\@)�(��:w&{	w�O�P��{E���1<��C�i�F��S6��z���DP�!{�醌����>��7�ܹ���퐝�ZQ�,[@�N^�ۘ�B�B�#�TL�r%�<F���
��G� �F�ŵ5w�t*9�f�� �W�9"����0��Q�=�`6���ͣp^Mȁc�4㔎yK�*�	戌΢�P��tl&��&(����}�N/6��)����͎���js����z�!
��W�Y�A�yɨ�An��3,��]�XK�b�c�:y�o
埳�ʨ� u�+���i�xTH1bq����{�z��H*�K���Q��N�ݘ
��!� �%1a�ufgUg	���-����9���wG��c?�F����\���S/&���z��s���3&��N�J��<��4pL7��Ы��$�έj�:
�Wo�j�_��Z�뫫�1��      &   b  x��T�n1����(�e�I:��"��p���a���7��|��&e�A>A?�!��\�H���������ד?���U0�I�w����M�q�/���(�_��|�����Y�2?K����uʱ�\"�xu_;��k���o7S��"���*����&2���kȖ�N3U����.�!P�&��-@����fa�NR��Z�
��HT�⚀�|�1SDC���	8�T�䒕,u��.Y�Q�@��Z2�<��"�|V�S�|Ϣ�z�zIRFk\�#�su[ �m �$���(����L��֑.�0��O�g��k1��4T��OQ�x �ik��D���[-����J�@�2�����L��R�(�ْ|������_A��-JS	ۤ�#�T��j�h`(G+���L-35��f��G�Mb�����=�i0���+��4�����^� ɧ*��Oޒ�U�-m~yJ�)�Ҕu��h��vm����kR`> ��#�'��L�B�i�������(��9?��I�5<ٲ٭��"D��Ä��v�����)�]�����Ƃ���Ñ����~�F�Px/�$��e��G0H��t�6�q���ٙO��������      &     x��U=s7��_�2��hLKI�RC��O�*�pV�����p��Fe
U����[���h�rC��ݷo�[,��g���7m�Oq��y�~��j���zIy��b��r�\/u�G���6��~����%��z3��)v��~��p0�0}�67a�Ga�!��,�s���]ƚ�I�飷���1bEr�O��R7F�L�D÷�"v�$�#5�cF��=�c6E��F����2;��{#���ߐ��pd�O47� �6R�36�@����{|�K��
���g��M��s��v��G��R�.͇�L��lYP$P�g�&C�%(m�SįV�J��\ �ˬ>�Դ�s��F���y D]�Х�]!Uý�ԡ ���5��1��C��fdJ��%�w��86���]����J�R�$i�� F�B���x��kxj8R�񦒈�C� ��+E#�گ��O"��Wwin��>��hG���'5��1�_A�J3�F���rʞ� _�?|����B1h�*}��F��d{Tz�����՛7zt���/?^,��.[.f�C䡺�._��Daʌ���V(�ڬ�I�Ta��{�}!q�2�3�
)�M*_�ѲU��ii�L6��l	���B�wk�ާ6�<�ĳ��E�GR�b�Z�f�Ӕx�8<����%�Wg9���8}=���R��TtT��*⾾����RH���^̼3s�� �F=��*s�T�߶�8�Wj���r��J��crJAeXP����`�z��}(�G�v[�<� ��*D*ch畺��Ǝ&,΄}��jw+]u��+|wM��	�n�h/j�`�S����\�``�DjKHpJ�ߋ*r��A���?��ӈBfUaA�CP��a���N��]ES�Gӹ������'�\g/4B")Eq[�r�V�S�s�T.���)�8�*�}i
^9%D�RH�ޝR4����f���b�$h��� _��$�:{�{j=�^LI ���y�r@���y�" �,.�v�;���3�������
�o^�      H&   �  x��V�N1=;_�#HQ� I�H�JT
�NH����ڋ�Ejo��=p����?�;	�h���k���y3�px(�M��IO�Be�)�������I:��t>����d����G$se��ʈ˩�irƃ+15���R�C.�ƪoF{(D� ��Δ�Un$�6?�D-sܹ�������w���(��/ۗ���2<��q��EI�Y�OH���h�MN����]��:
tLo؞�ӛ���$��*�*ס�X�Λ�\��k�Ѫyp�i��Z���[#=����|�lhF�*˕�ɛ�5��������oA���,�M����P.��%o� ��j~�I�H�Q{�/�Rie���q�d���~מ��6��iߦ3{�%1{1i[�"i�{�.���޺E���}�˝���µ�H��ƛ�H�O���aO���R�{��'������;���"L�j�>�|\��f���݊GA#v9FW7w���&���+;��6c����.�m2�X��Aw���Ar�s�T\�A�t m�������u3���x�$��f�f�%ͳ*j��
��a�l�AjȫZ?�����M0�D�-ѺM'���A{-Ną�H�����U|��ەU"�/s��	9/QW�J�`��6w:\����}V�s��tv9�d'�A����ÿ�A_�'ۤ3gҤ�DF<.(g6O��q�6W����ѐ�:]��PsV|�;�B�,���R�2Q�.��?�����=����9嘼D��u:��_Pa�      �%      x������ � �      D&   r  x���KN1��3��ШЖ��eH�X!�܌F�8ͣ܆3p�^gfxn�t9���oϧ�Ŋ[4�\:C4�m��W��ͲY�Y@lI�\4�!����ր�pG����bR�R���ɡߐ&TO��ElT�*Y���:
�6QD��4�mB�ҎDe8|�$�
LL�r>=;�q��W�dq`��exE6��F��8N2rz��C7�4P�l)���� �'E��hk��/=�h�XR�	ZV�����FY�ao�ɔ�`f�8۴���|���1�3��c�z4êC+.
OG���8ݣ��ҟ�H��69�L6t-S�`��a��_��r��,�Ny!�_��K�Gs�<ZI<J����*��,? �U;	      &   �   x����
�0���S�d�0���:��A(k���v������zQ�$ޒ?_�Y�َ:�zt�׽%���4z����P4���>CG;�ZV��.�s�]N���"�`1�З��Q�o�0
�b���hM��n��3�\
֛9�)��6K�|K���~��m2ڤ��x��//�~��
�����       �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      O&   �  x�Ŕ�n�0Eg�+���+�%v�lNӡ�@�%�e �*)H�&c�E?A?V^*�:�AϽ���U%Yv�z=��bL�:�l{�����ڃ~h�jj��6�������澘�e���<�tgcMZܽ.���G�>k
��A�M�|4�OK�w�ѽ�Iґ^m�k5��4[E�(~t^[�Wtr?��G�M��>
�|P���L^y���NzK�Q0��.ZظC�~�����Խ�nG�.��#!$���?R����(E��(����c�8��(

�������� \ . ��`��9�9`����Jp%�\	��s	��s	E	E�\� W�+��
p�`�(� , �� , ��j8׀kp5�H��_�׀k`� n`�@�@�@!��PH($
	��BB!��2M0�,/S�RM\'��0�0g�Ӡ�s��c�4Ǹ8&��@��^��i9�$��B�V�U�JH�v�x��m��c��P��d��`�즛�$Y���\~���"r�S��䐠���6�S�
SJ�������5�^�^�1�=���1g�Ѩ}pV�j��Gtpt?�幏�?D$�/���I{�GG5�˳�°�c��YGI�YwHr|�/����+E���to�^���.6���aE��^����k��齗'k�	z����o�w����>~jGoT�y��l6 @c��      (&   r  x��Z�n�8]W�B�(x⤟�˸t�tO0��*@�%��4$QMJ���&�,��.���9�ԣ\e'��%��s/�=��Ϟ|�������Mir�[�^?����^�ֻեjW��X=9}��E�����Enk[�������/�,���m������,W�٠m�NY!��L���[,3�g�����q�0�[غЙי��z��,�����Ig�mUm|�'��D~��:S����>�U�9U�fr-�7|<����3m�b�|��[޺���{N-���6]͙еP�Z��uzұ���0@vh�)l�:U��u�*��&�y���F9�a0�-�<7��\΀g���̮�53��Uk�F�ڡ�Թ�\>a]�U�(���J��*&�W������0��S�[����Idk}k���6:�88M��YEG|��S���/5�5t&l��<{k�t�&Xg���L�[�sGך+m�)�iT�)4�_���G F��g�0�g=�/YS�o�G�����=N6jv�t����.����'��<��<-��x�'5���#�;�e���n��bm�$�?΄�3�-�< ٿ����ˌ�֥�ME�^6�����o��Z�˙�ص�C�	t ���'
��Fl
�r1��h���:γWu^v7zjT�Ûr���o�(�Zg�pr����i&��[\&O���p�]�Iv7*ۘĐ@	[-�8�;�v��ˑ��q�2���0q	/�5~3n���aq��, �Mw��uHHXLÞi�6�����~q�c���JO'����v��Uq����!�du8�����@E����::��}3���_]�����}@r�d&H~X� g(rQ�dx<�N-��F�������ĸV���d��o�6�A1��<Vp�5�C�%ܤ0l�k4x͍�%p�\�E��s,.��RoE�����#E���y�tA!�`}is���(2�������f�]�4��L�q�rB�/"�{H���pz���k���O&*����1��ь��ҚtP���`���^���gqЌ���8�y6�NL�h��+�cm=�4^��t���L����U�MXX���F��F���Ts�yK��<���p�0^'d���al?ut�)�D��o�C��B7��޴23��Ac4�B��`�*HZ-E��c������W�����	���L���xu��^_| ���C�K����v&O,�a����yfx��Ԉtպ����Ӂ�����K���Jէ�B�a�	�T�,�d��v��b�p*(-I;�-s���VL�`e<<�Ɯ+GELzUo��O�깷Oj�&������J6���T�M�*5�x�3N�U��y�v24!�^r��h�X�39�!\l���R�s�`2/+'YjG!$FGV�5L��=�d����Z!���c��`Y~�Ty�TWp�IS9h`��0�ep�D/���)���w<�WS8�q��>q�������~���g�]K��$��dй���pb!h7ewm���� 趝�ҸF]z�aR�y4U"�)���,s%��]!F�}�EP�T]t,Ï#R�2^d0<P��	��sAxΕ�#n��[U븽տ�`�=�~h�վ��0t�j��z�8���=6����u�`-l6��;疿��s�����������0��6H��d�OΕ�C�1��v�������b��i�C��T�x"\�(v3�p*�f�et�F���)�c����q0�0I<rH�\����9W��P}��o��VG���C�#���ﳦ>��N[qV�B"X�rw���A
��m���!�$Z5 �Ht,�[�g�.�-R�44N�&؎��кZCl9a4h ���/��P+�-H��UT����in����4k�:@O��w���Ka��b�B"�Th������g�����΍�(��"DJ|�O����@8�u̯b�B���&�<����F�4A�X8׺�t��Ȋ��)���\O;ܗ�\��T6���gB�|0*����8�!(3c')Ǔ���U�@ym[�z� Hq�p:V�������m�nh�$����	uB�P���)ٖ�ӭc�O�/p��-`a�k 1I�ou��0��xSSA���[��0�Hl��RnGZ �9Ft&�E:K��L ~L�.,���85v7����-�ÌR"�P�A���鬧�ʴ�.���Mp���l#�䇿	��'�<�Є7]W��k��t<�Bj��bM��2B��xr"�Z�\Xl�}���]��hlص���ej1A�Uk��+[1-0Wm �&&����y�&wA��Z�"���и^�h_�i(LT�
�w��N"�N�����i�-�.TwR7f�r�!o��gK)�)(oP�c+Btw��9F�j�,䈄{���A�>��V�rF��ʵ���ѹӓ����)�Q�#V �梩�/xa���L!��RN��o�`򴌵�T���IĬ56y ,�5u�V3��E�d!o���y�%!��n�������&���i�b���X��ue;���e:����\�@�����pw�C����k�����d��D�V�jf�6�w�D�����o����V�v�Tp�|
A�7y�B8�mE�jl�X$����H�# ����ƴ��c�җ���Td�B� $TP���op�:��k�E�
�'��z�J�n�\� ��m���ˎg��������|S�}��	H���<�2�p��z��YM
�.^m�ː6-����i��ݖ���7�����yz���V�@bE��r(0�;oWo:�o�����ĺ������2Rm-_�.�����N��l��6�\����
�q��y��R"���!_W��,4�*�4���W�IW)�$w�zI�0���\�5�"3yi]'��/��#�?���� �K�L      #&   �   x����
� ���S�	$Nuf4m��)p�p �Hn׵/V�t�����)}��C��<�w�8����\,�x�q����y�Dl8�۲���Qf�Ђ�yOE>�|=��	�	���O,���?Pׅ�b�旛k.�(�o�R�      C&   �  x��TKn1]ۧв#���NЍ�M�U ��p�4�T#>N�E�#�b}�&�d��5����������7l��j�F�6ޭWW׷����w�%������|�\��D�_z9���_f���-ٲj��u!��+��!���?���(�!��8VlUO{T ��/q0>x�Y����S�0��X7F�pTC`M� ��Jg�J����:�ʞ���I���J}cǁl=��k
��\2]FZ_h�$$��}��ے�dMC�|z�X|��瓟�eK����qS��ĝ��4�U�h�}�E�dP2�m������?�A ��g�4��ǵT�(p#G��O�M�������[�7���2�a�_$MQ< o�nM��{��Q�L���@��H������1�H�;qPLj���x����(0R�+w��ŕV$?��ˇX{1�
j���%��8��½W��L�:S�+ǚ�4mb�y''��l	AȔ{pe�����b�Fh�6C�Ó����D��U����p�����(��DS�ݫS�-�䋔9�7m�ig�BkgE���!A��Ԏ�Sm�j�.?Đ���A�:Ք��;y�Z���a+��L/.	��>&-�`�|��Z# ����~�T�z�7%_R�QC���_)�/$�6�(��iH�?��~>�N��b,�      �%      x������ � �      �%      x������ � �      '&   �   x���Mn�0�}
N��i���;B����dM�4�dƈ�\��ns��@���y���b���Dm�~Ԫ�^��p��Z��,j��#Y� �B�&�p�购E�_��n���(Avn�ɜ&��o��ш�a�eli|�p6!�ܒ���U��ސ��\pe��y�e�Qk�E�3'��)Yԣ^>[I���E����z��UX�ޯ0T�Ą�ߡN�G��e|�u���`���r� d�EQ      "&   �   x���M��@�דS�	�Y<q+�Uԍ��v��t���<�31�(.ު���诘���XjDϻ����bY�+]�Q���Г�*��DaK.r}�n��[���r�}C��bA-�!y9;�����	��D�\8$�@@Τ~�#�z��B^����l���0�7Dn���P/4�-YF	��<�'��=��<�L��.ϲ�
��      �%      x������ � �      &   �  x��T;n�@��S�������Ā�T���(^��a�#@�M��]Z],oHɒ�VAr�o�|&W�՝8n��v��d��z>���}��s^�3���I}9���O�C�k}�)G�~M�|'�ӗ���l��D���Bc�xy�n�g�?2��"S�qbK�<�W��`�1?��&25�����������(ɉyf�,f'���,1��$�U�dG��.��K[2Vz�C��w�hE���d�4p�d:rfU�������<L7�W�%0��xR��u4��9Ss&Ճ*��T.����&̝|N@���'�9IS�߾�7;�_"��Q39��,j�/`<G�(���u��`H6�K0������2��E	�[ߏ��X�1�Q2�VC��Ѐi�֧V�ڻ3�vUMmF�c����Щ�1(���`p�R�KNyYP�m(�+�ZF�b�V�/�W-��1@l֨yN2S�0-;�O�n}|۷��� ���J�o���8�����`�#,SYq�{�(j�E�t������Ds��=}�1:��L��n�ע� ��=��� Qx��@� �"�%=4d���v�rL(�N�� h	�T�M��C��n����V�ҟ� z�iCG72	vP�
������|�9.���ƣ��//      �%      x������ � �      �%      x������ � �      N&   �  x��V�nG<S_1G
P*�97�!�"X�� ��ns9���zf��|�?�|�A÷\�O�%�����w^=�U]5<>9��K�NV���V�jy������jɻ՜�ջ���p9_��F������L�_Lf�׾�{��FG�m^�7�L�g̶�ɋ�ر�����RL�}���H���y��|ZC��K+�S�r�Ӝ���ٷ4���p��|o4���b�޴�G�cgcK�Z�[JWF;Bf׈究�u@� {B%��-�I�t�w|���@<��	Rg ����5nԡS�V�C���8[jʀ�%ǅ��2@�ߤ�	�-LC��!�臈��Q�����=�}'�ڒ�Cs�5��� u`R�_�G���P�U�i��, Ǽ3^���NI���r��5U�����Q��f�C m ���ܤ�Q
�ZMM�H� F�-[m��RZ�$�S�q�ט��-u��� _��QAK�=��
zl@<>I	��7��	��l\lS')ص�\P�u����!_ΧR����&�~���nh����zU#�Qq��Q�$���eI^�S_��_*�e&�/]���Ԣ"+D��u>��
�.H�@k��������ȸ�c���0ي#_��>F��h���� .3x�q,'|c76Ӂq�y2�"0"��ܣ���;>�V/GAk�Zu�����W��߂�*�+�@r��f�9M&�j����l��*{'�c��%��� ���vv�U�8O����6}�֒6�����H�&��JP�U��U�28s���@�fxPy�ma�U6�1g?n9@����[a.��+����q"���3^jt�f3���R�PQ#T��?�V}E�:��5�2�sڒ������W������?��b��p3���Rք�3*d-沿	�Y!�t�XU��S� �倃�^u�}e���1��*��&ȝܧX
=^[��)�:�Գ���l�0%�3y�RbN]@�4jG�����+�!yu|�Py�>�'���^P��Zk/\���uH]����'��F�K�FM���a��Z���:�ٸ��kk��&p�^<��d�������9=���${�~T���9j�� >R9{�ǓM���ap�7�}}��:c���?~����������      �%      x������ � �      �%      x������ � �      &   �  x��T�n�@����2C�#Ik�
`@V�DHe�XO��s!�߸L�"p�V?��#%9��J��؝����pTܺJ׮�jk�Xg������Ӵ��u9�X~���鸼�Q{�r�N�F���u�ݬc]��˱IWl���o�>U�T����$P�T�nL4���y���zeB�\%��4˸�F��&!����Բgj�������,3�퓕��?�څ=N���q؏v�'��>h�
}���?��K�'5mݡ\��<zI�g�wydm%�y�7��N��D)����?_ ��`aO����8+ʭM`r��>��$"��q�:+f7�NYLj�m�4�!�n^��{�H@j����[�ۨ�SeV0�7k�8�����"2V0�%*���"kp5��[��Ͱ��a#����8ϋ9����p�~�PX9yi���{V(8Zk��!r�%����FX�"��,�a��>owƿ<Ӌ��TW�~�h���l�������Ѳ"���<'�.p��rM���$d����H�pB�d��F~*�LV�����1нV�x�u�Ѭ�+w3#��=I��Ni�;�ɂ<�r� cB^�c{����s����y�G���(Ǿ
�S����b�����I+ZcO!feE�E����ܰ��
��%�ʌ�v{���T���ZZ���X�|�Y���TV%�@�0�w���CD]��k^ܘ>�*!hn��#̒�7&�@�5-�*�����`�cȌ�      @&      x���MN�0F��)� U�,*�*l@iA��dM�I�ʱ�qRQ����bL��kv���ϓ�]�
�\P��Fm�W��qU�Ԫ����W��u��|OL	Mx�1d�u6�^�S����n���_�SkeB�仡C�E�(���Q^5��F���|�>c1q���5���o�����
���5�<��.$8��gg�gkJ���:J3i��$1Sa�=��7;��SƧ���
�1M�f�@����aJ���� O����L�47���5y���ӌ[�"��_	���      �%      x������ � �      �%      x������ � �      &   �  x��[Koܶ^�~�	05<�q�r&no�1��� G���R����d�EEw����>��G\����tH~<�;���эJE���2�	O�*��˷7�w��x�7�����gכ���Q�j����M��w�T��?��G�:�_Tqv�S�9>���������?��AV��o���[S�jo���hvd��_���Zf0ߛL�ڈ= ���m�@4�1� �m�A*��j�iQŷ�R�'�>�$�A��V2�M������4��*~��o"KH�)��v�͂�[�n�*�i-��hꭨD�I�W>�2�^D�:I�
�G�c&:��l�҂{�?q-�-�e��"����"c�Qf�j+�A����:�u��y����.�s���ڞ(�зWA�\8#���΁꧗c��o�Y�X:9m����Xz'2���g5,��9���1����I����H �#����� O!��}S��j0A|�oq�����o7*��	ޓi����1&v��y�IV ϳC,lq���Eb'���{�����Y�������n>�"�Ĵz�`��|g/�������y����/�&����x��a���x3B�;f%��Y�
O��i7a��d��Ơ�1/����L~�)oq�<���?��t�sQ�<����$αm�`�"����sD�0�g�}ϓO��٭�jW��g��~w� �W�}o�m���a'Q�zesDŶ�Ny�r�lEv�B�qؒ���Q��Q�Ri���0ƃ0m��c����r�+X�����As\��һ?hfl�b�)19��ĕ� ���}-������[�(��D�\�r(���>,��(`�5�`!|^���LҎÔ*�L*r�~��`��օ��~ v�N>#b�=4���JYԍ�[�`h6�$h��R�b�7�U'ͥ`IJ.��O����9�ƹT��-�x��+�4q�Ô��g� &y���-Ǯ��*�\k����	 �z������rH�[�
F��h ӁA1�K�v9�q7,K���'≐�8D���.Y3o^�
콁!Hhk��o��Q��6�L�����aИ=t�����8P����
��~���u����[�RmXaw���Xb&�)��j���0�� ^�����C}i��4�O��&4�!�v�г�>�Zc*�~E��5���v8���������[^@|O�c��>d)0!Nfr��� 㴩��^$8c�]�<Q��R��N1�(*����1��$Х��Q�˱� 7n���j7���`��T� �&e�@�V�j��ژ��>�����&*�PEy�<p��WpNeh�  q���o��� &��o��{a�<�<�Ԙ=�T�|��y����~D���څ�ƺDQQ�+��R%~,n�I�K�x�<�S�����FS�j/^B��69��P��l�E��v�]Þ�윐d�d�ڱ�J}�1�r�:�e���DɷT�$<{�*��).{���{j{�����
��-��=� �����'z�t�l��!�O���dn�nBnD�;���s4�3x�*��,i���2T�b�=�isz��n*�!�����/���tӪ�R��"6����;O�c�^5��U�x�Z�)O@�{O�[^���yS��v'�'[���K���w�E;	Ӡ���䪪����ְvG�?O�7àX�6�n#�fd�Ә��`6G�������� b3ȻX����x�.�չ�L�AU1T��:�t�G��\�!�"LGa�a����بG��x����7�"�is�2+oLp��%����`�o�C@@���k��R��~+b��o3U���d���nð����A/����LpyA~�V��� D:]$�E��dvnۅ��l�_&�c�o�&��N�O3!���1�J8��X�-�p�2z�7��E�d3��\�ڈ:���j(~�5���l��ަ���6ǝ����\�KQv&	ͦ� ��A1�E����*�Eck�����C�)���?�q�d�ݙ������({�Ǒ�-�$��|��ZM���^ba�D�	����QX@��N�Y��6f���J^���ªa`P�/��M�X'v�V��C�D� :L�-���Sq�}݅U&�{�z^�6L�FW�ND���E��PrPP.ä��z ���r�Q����KH;L�]`��Οۙ��j�(f3j�v�̰~	L��$���1�oE�mK�_���Q�Rw&-�'��&�h<X<qy�(؍+�Y���|�PWa��|:�j�{h2�Q����U��U�D�xQ�e�f�˳�eםH`����I��] �*�VB?�i�'V3��1~�b@�0�P���Լ�sr"2�'�ʜ��u�k�x��C�����5�%����fz�[Y��+/*Scb�7�W]���� L�,owYH�Js. ��}�h��f{[�Ni��\a�$�x�M�T��@߆�ǆ�Sm�3�Z�t�̅z��F`�B�u:��zE��Fsk`��mW�]ܴ& ڛV��]&5�@�aJ��h��sP�N�ȑCC&�
�ц�������;s}�*���5�����K���{��!l���m���'����(-L�B�h��-�Inr��F}U�-8��q��-�y���c��b��Ym�wZ�"-u�I�c{�aݩ�w���3����.}�l��A��է��J���?e+_+a�ʛ/�۱`2�ڻ�X��sY��`r�$�5�>�������u߳>w�Ǜ��`�-��ٱ�<�{���S��	A:�� 8H�i��/��%�L���0E*]�x�K��z�&�0��|�+��J���X���e}B�m��d�U�bs~1�b�m'����0��|Ü�N�h�U��p1�8v�r��h��[��^���Q=z��Q�05�b65<H�:By��P���:L������ӓ�����:�W�G1?�����j&�/�C�����~����!�g��|�9~�Z���+�i����S��(+�����a�<e���
E�0���C0�
q�����a��k�P�����Dt&7P�v�D��p���E�|����w�`� Zf�"��"m@V��_LXQ��V��֊v���"LXο�ϋ��� mK�o��_�����"LX.��_=r��J��Rg�\ȷ�s��lĥ]�I��7 _f�������ǳ(��iw�}      �%      x������ � �       &   �   x����n�0Dg�+��OiG���$K�)�@�LA@!Y��?�-�,R�;t;wx���lt ���س�m��M�kmK�m0�}eWe��ݑ|�w��fe�$�<>��Qt$�����9L���'B�8/_�M8��qP`9iǎѳ>%w`�@���.U�ޗ�9�P�I�9O���*9�Z"u�ʢZ����2��L2�7���_l$��ّ|��`��/�CY�����      �%      x������ � �      �%      x������ � �      �%      x������ � �      K&   %  x��U=o1�ϿBc���n3�N;9��|L�NvT�ī>���c�E����J����ɓMJ�y��yv��2�_TFK�m����Z�X�K����I>-�ʩB㭮0{����*�)G_���}��Ӫ~M�����o^D+�ZY�m��(Q(Q9��*�`À����V<��&$

���pсQ~0�<>�d����;��{�>aU��ug,�PD�¢��tC*���V*� a(��: �~(<e0P��0%v�Mz:89���}�+N�h�U��np��:���2i�!pz�#/�(��>�����t�+*憈�R��	��#�r|��@N�]$E�K�]�C�l�郶�:�N� -�&5�K@<O�"�ּr;-{o�č����-h"��N��u�|,��WA��u���.���t�1o����]���& f�����<���P���ҤhC�rNt�������<#��7.�Ѧw�$�M�4[9��7���WE�4	���i0�}�PRĐ*&I 7�{�� \��^ry�F(`�&����/��M�ƫ�	]��6R� �2o�FGLcC���QL���TOb2�59??cv�G�3�n����-U��C3N�Dh����EZ�<�hy�y^[ah�d b�bE���`IA�e�'�i�Т�%G$�!��m�����L�EKC�߫m���]*�ŞN�Ӗ���n��Y'8]I����m��_�t4����7�ώ&|�݃�h8��z<L�D�l��������S5�a��m��W�>�B���ҍ
\�/-(����h0�Z5��      P&   &  x��VMo7=K��?@Pm�n�$89P��(z2 PܑKnH�P����CO���?�7$wW���||0ŏ�7�����裫ȸŬ1ZI��]�g�>^�/�Y\˸��|q6�_/>{��ҵ&d�^�[Z�4�]7ntw3:�Tl���K8m+�.��jm���,
嬠����BR�7bM!:/Tw#��E����H���E�	)�C:��7�G����)#}�:R_o�\��v�~b�JVD��gɌ񭥄��G��b�Z�{����c�Vh[����ƻF#+��Jօ�h\�w�%����DK$�K���n�B�=(\	qG�KT���N�j���4�,���]���������/!��A��:�b�JP��>���% ��Z0�|���"\�����Q|�edJ3��%>��O]��������)%~χ1x�{(�A�e�>�����Z�Ɖ�i�;5�Hy�N�_��gg��՛���������p3���؛/�%ĉ]7���I$��]�����x���@�`-@���t(1ɂ��f�A�,�t��d�{��K ��j5w�"�ȇ_�R�N�A��+�.L�P�l&�OItRN}@�u�ܢ p� $.�m���y<�������=xq���g�{�pr�xp�b�&��~ƞ�⠼Sn|ڋ�9n�n��� t�>ݴY��%Y)��ru9���:Ǚ�b.����Z3x��q���l��q��6���A{ဘmV9�tL��;z'�5ޖk�r����VH2i�����{j��F�7�S�p����Ѵ����s��I���?h�W/o�_G�2m�Pג{ޑ�2��V�$��,-r�m]F��-�p�+�:�S�����>�y��l�:Ϟ��_z��@Y�G�~?_�J^���tN@i����`d�g��پ��57Ǥ��k��mi�}
߉���0��������)���=6O�)�������x�%��g`�ֲ4\������lV�[�ޱ��͊|��ݸ�-}k�(k��?G�D��D9�r����C#������_�B��      �%      x������ � �      +&     x��P�n�0�����F� �l���v(:�(�J��I:��c��t�&�w�;�ev��*8�bkٛ�z>�/�ih45�yߛ]���u��5{vo6pv>e�l����wX��9P!��hD��% ��r�`?}!0\)��c �Vƴ�\0�Xb)	�v�����nP�M&��b=�,}�>U�Up_5��V<���m\�7.�Q%QS��nn)�K�;��RrԑR��E~(����>��y�q}���E��?����      �%      x������ � �      3&   �   x���K
�0E��*���J������Bx&�II҂�q.����ĉ�s�S�9�ym��UgQ�B�d]mw�P��R@��\f��ػ�'x�ΓfO2"��)�j�fr[����bD��f ��E3�A��Zl1A`"Sk��Y�P�6���qZ��?�sr2a@ݷ�`��k�3y���rKa|���s�pJ�.z      �%      x������ � �      /&   �  x��UMO1=o~�@��@��*�Ԫ'��ĞPW^{�G$�79p�O�?�g6��޼���̛���qu�W_�FK���zyyu��������'���rQ�&�wݺ��:�n]����aY���5{�� a\���Gb�>���Cb�߰����MS�F?���	�l�>I���}��f�IQ���V�k���X?"lx���9-_�y��V���%OB��hK9h 	QCO�")]�+@� �F+R�N��{���l~2�z'�bK�پ��}��	$Pe�]ar�3��q$�r���Q$;P����L�t,��h}X�>血W�v�%xPm*p�nt$�%Xh(<~j����.�͢�])�)��j+�iC^S�3�+���.57��gc)Ϊ����b�dz�oH��Y��i<tqϑz�۸��=��+�$�J!tB&2�<{�"�ˡe�y�gM�Rfx6��Yu�Yy�ׯ�æ-Y����|����7m�k�x��	�f���؎F�{6P8�^݄�cTW(X�F��,vV.@G�=0�Kq��렘��[P�D(����#��(<a��O&��n'���*䃿�xcy�i���D��gF8���u�JeX }��S��y�J6Ё\c�|1�E��J��l����{�8o��delC�m>�:�Kq����D���d�����֣�le����=1By��.V����M&�?��G      !&   5  x����j�0�g�)nl!�8ɐդNcJ��u�$d9׵/V�v��N�i'I������Ll�"me�4�X�52Ϟ��].s:�5�O�l���+��@�I�}cg��E�D�>�ܘ@�jTxI�.���Px�z�(lM�����l�c������t�A*�T��w?��A��8�(��Q�{J�SB����4�)�Q��0�Q�/%�\s��/X���j>�j.��Ě�w^�������t[�v[����[��o��#�����D �c��0�&{{�[-G[-E�Nl�>6�m���J�0M��A�t      �%      x������ � �      &   �	  x��Y�n9];_�e�ocV�;�Y8��$�U ���e���U��M�Yd��.[�X�s�zYJ&3��eɺ�sν�Z�]��q�����B��w�/~}u���ݭ������ߋ�����ݿL�[p�[��G�^�1ac�X-����nl+O�~=z�ކݧ���QmЭV�Q�`J�Uc��ԭQF��x�2N������j��Vk*�ڠ�V��b-���*6^m�'�Bx�o�ϧ��//B��RD����9;u3��?�8?~�����/VQ7w��n�@��:=�L\��:�|��c��u�=��l)�s8M˙ܤ���su}r5�=�ߋ��}2��s�_~���nT0��#��UM�Mh9�R�F���0�4��@J���1���7 �u)�su�զ�����f�ݷ%��'_y8�㿐#�Ƚ7�,j�����}��xWo)�b��	t�Z��K�o-M ��Ά	�N	u��"�xqr�/����x�t���2�Uݚ�Z���5�g������t�����껗�\��O14��>�eo��צK⏄����;��%k�FU��5�E�-�+�=h��+B�`�)��R��S��3�gF騛�6r�6G�;o� �QZFc�ך}�f��^#�.E�z�=h�/�	#gO���h�@�����$T#�y��@��]����3勈��I}-�yO0u�OY����x����H���x3e�#��E��+����I�pjm�Y[Q�����3:�_�j�	�I!���39  y�+Wc��\$��^��u�G������I?����xs6��o��e,׸�aw��}�S����Cij]RTh�<Wx�
��Mk��$��qi���K�gXޔR.�r������K��m��}�X�6�:k;�.�"�j�ӊ���X�A�ۚ��u���ԥ�w%V`Z��w5���޶X+�k��"�6>��k�2�`��`7d�pcmڰ����7Q�`\���K]]�%���D ~�0|��bb��N"�e����
(�����K���3ZXc�A`f�����E5�|؂�M��D�'�h
��[&jZ�G���H��4���?T�-?&]vCQ����������� ?%IÑ_ aA��\�c��1ԋ{(1�83F9��V�殭*B�#�z#�g�������	�2�(���g�&���+���2~�49:���m�xH���[`qW'�����ܚ�´R�r����x��D_�t��;ud��+���)�	Y���m�ng� =�)���y�Z��X�u}�P��i��w_K�F��s����b��;���p*h?V�^�XO)HuiE0�%:�iG��v�TIOC��%a��\gK��!����C��Y�Z��t�8����k@3򿊦�IX��A���F��ZD��ƒy��jho��B}�0�<]�MYߛ��^�o��G�@j�	4���KF�S�q�$ ���d�S�yF����8Z&栰��ֲ�G��e����mu�6z��,T��2�tɮ�Mǖ6@���R���aq�B��\8ض���	��stLiY����7,Zs���sd��g�m8������*�Z|�t�{5<�f�j;:�g���']C0\>W0��,O������Iѷ��\ٚLZq�[�B�ª��\QR�cZ��+���&U�QL�\��q��8&�����fK�A]@�>q�[|���KK��� S�|f��<��ft����+�<�]�H�B̠�4�>R�Ϛ�sAaA�b`���5Ե�tE3n�c���M��T}�ܐ����@�ҧ�E�o�^(]�n�%Ȋ�ﱸ���f��w�=j�[.�}�Չ/d�=��j8FoJ�te��@���B��7|�̪���Sj�롓��y�-��I2���*�����H�/�0��A$Z�DV-..���������x������z�N��vw��%��2����ш����1�rՙ��R�t m�Ê�u�����$�R�;ߌ�-{�K{+Ab�̹�84Q���u�X$_)���vuG7�Cfa]�?�d5�jo��0�xŷ�ċ¬s+�C��f��s�����E�e�����D�.7Mߖ�N�
�v,�I�sD1ڈ���C$�-��kp�����ƌ��\��� ��#
���0t��dO�rKt@|{����=_4\�e]�@O�_L��_cbaפ���A}��]u`RK���
�]�v7�@�}�l�9�W�oyb��)�������f�0m����9�m�ۤ�Gs�O+�OZ����ӡx��6��G�Ļ܂�/\l�\g�Fƌ>��������hv�܏����}S�F+Q���+�J@!�rR��6��i���^AJ��r�M�~����~h�M�5@��A�����݁3 	1	%�����h/⽝:�0�����dr���_.�t�
������t�o��L�~��u�;�Ǯ{mL�?�>FO����*h^��!W��3�D!1���'���x�Fw7p0���K�����td^\c������������?H���X��͟={�7�wP$      -&   �  x����j1��맘'X츉��ɡ�ئ9�����3��Ik�����[�~����ԁ��Y�h���,W��-:V���цث����z�Q<����i���f��`�]֖�(Q֏�y�6���;eN���vx�O�L��v ��ϖ��t�E����<J_�/Ճ��.�[��p�lY���kK8 l$C�+y����o�cA�!`L�uja_��NHMD��-��-��t�	���xüH���8��m�����9*���j; �PiL�]�V��:�C/'��4�꓅�z:ѵL*�C�P��E���A��5��E�^����pc/�;�J.ᱏ$&@�@I�h�Z�
�b*�B$:8,�V;7���4�d��K/dȽ}�PɝI����G2��)x]��V��i{��Ǩ�R<�J_Y.Q��"'~��k�h5�ߪ��8��_�O��U�?x��E�X���s;���Tͼ�      �%      x������ � �      ;&   �   x���1
�0 �99ENPR0(��"�S��I~%P�KҊ��^L,..�ozFo��@#C3�ѣ���6[�v,ݠ��5�ʶp�;��Ģ�-��1�9|񰐚#%R�G�`�&̨�K
����ϵ;�RZ�U��B���d_I)_vS
      �%      x������ � �      �%      x������ � �      )&   �  x���n�8Ư�S�����	��+`��HtuF{�BB&q[�;k'�vަ0���[^l�'�)`��J+U��N��}��߁N�u�#��0�i�C��|2��~�q2����g�?��e{2��)����Mk�{��@$�)���������yc��!CC���l��qD�E���꿌��"����CD��q�����a��&�Y��DX>._�"��hJ%�(�;F)�8���N�w	�7�:��:�+�~Ƃ���/�%�)m�;@R� ���! �;x������x��$!,�	I�h��C�K��v�]��&�D��u�4�*85�x� M��;ɀZ�S��'˟�C1�T�p�
ڿ�GeFǅO��ǞA33��<b�,,V��s
��o��,<ي�
ZE�pq��d����/b���]����n��ؓ��L��^��1���
.�����ʊ_ǹ�p��	�V7�E.3�빐���Ӱ3r$7��3�aߊ�2
s��I�1�gC��}�j�w2�CxLH��5��+ʏ������kO�n3�~��JJ�C\z�l�s�9;�Θ-ۓ�@�o��P�)~	��/$Y�\ ^ ڳ�;:���@T�!�`(�y�NpK��'��T�������څ��6ߞ=I{{%���|=4<I��Q � jS�^����\��V{���i�����Q�|=�� I�����D���:�K�_T��%��Hx�����)��L��#�R���Ҕ&��@��2��������.��~�o���Q�j�R]���ڠ*ߤ��U���К���ڷ%+D�jO��&Eo����:�8~�󄈂�v)x���a=r���oͮϘ�ۺ�k4zE�7c�v>1u�[����3 �N��9����f0c�˗=�W�&��z+�uj���c`��0��a5[i����,>��+U�`�:��6t�z|o�Ԙ+�{tNUp�ީq���H�q[׃�,��Y��j�L5��BS�ڔ�"
��`�V{����"��J�Y�q��Ȇ��)��8T����%c�Y�zN��<j���V��5�g�P-+����)7�U�ln�e6�D��ҵA}�f���>a��DTFmg;�$��M�n�m���:�u~���N�D�Q�7�ڄ��1���ũ�6(	�,.=�A����O�M+^+v�w�S�J�JE��ҿ��h��u�U�]�>UdT��>�>�&Ũ��j?���VJ��SE�vA�w:�RN�����\fjkO��ץ��@z��
����no�f�����tZ3v��r�P��`���ų��z�w"���z'�c�����s�u�˦>�$���[O����UW{6��o�捳�mgV�30t��|��>y�n�=���S�&�LU	v*7ք�Pþ.h�S����8�O�ʎ�d=���&����\+��̇�g�s����A7S�h��w^����@�m}�Օr�wg�����?�u!X      �%      x������ � �      ?&     x����J�0�s�y��lݭ�K�]QOa6�Ցn�4i_�G��L����,�M~��|ͳ�ر��U�ԤA[U׻�R����2�N�R=Z2`J�η���jX�o�Zܣ#�V�18�
bM���@��8��a%Z�9�� {�	��4ɳ�"�L�|�v�M��B�X(�����Ee���B�XӅxd���9i���@7�<�.��u�˝m�E�[QX|�A:�	!�`%n%�⩩9<�i��V�{���;��~'<Z
��?����4I�/�2�      %&      x��]K��F�>K�G;�ӣf�wr�g�]i�a�>9�Q�)�(����:���M�7���/3�P AK����F(BM� Vfee~�*_�<z�V6w��e��&�\�x��ً��/�ۇŵi?/�=�^�X��]Q��J���??z��[g+[��ɏ���j�������bc�E������o��ݣ��G�N�g��d�lv��Jl��C7u�&y�2[�L��&�۔}�|��C��2kx�����H�*���RBCL�9��S��|���6���j�~�ь�LY�2�+�J^�*{늆�|||u:�iǇ�vS,nt�����-��cֶ0�d!M�&�=K�%�W�-_��
>�	���	|����g�X|�	$w27��� ��|�'=ڿ1UeR3Jh���U��q<#�[N4ߵ�zK��jcV�?��,'�*��]L��io~צ6��|9>C�M���/%}U��R�
Z�M���V�_�/�\����oAflV�2Gɷ&��!+�U�rDHiS`��iՖm�j^u��mM�C���}/m�7�)s��zeSW�5�	-mV�ͤ��X���ħ�	|:���%b3�s����F�E�vx	T��d�w�>@5&nr��1)��MYO��zݚj�J/����9�1ִKz�J�Cm��@Lt�Im7Y�1�(yz�}�/1|�v�,���9qw�����h��| ������)�3�g~�����$ikh�W�:�&�����?��[ҚD���q����n�	�'y�6�L����O��<��*{0���z�K
y<z<�d1�������`-�Z"�"i����2�F����g�O�'�~٣�����k���4 D���9d�;���o	e��j��5L@Q7U�er
�=���A�x�SnYْ��z���F��*�5�;�����y?3�LJjzŻ�&S����ji���h����f�_$�4�X��|���|�)o����~ �_a�74+ҟ��.s-��:|R�q"��}̛�Ȃ�d6���q�mHϿ��j�nZ��yH����_N��$ƻwp;$�}ٜv��h�'�!$�$qٸ��AI�����m0��b��2Иį&�d+Ŵ�~��.��W��Ʉ\��#�I	C��0��l����M��)C����
�Ɇ�;64���(�"c�����.���Y�2t��t����1eF,�k�&4�]\UY���*�=V���6	h�/ط�4���0���#��xG2�!���"{� 3m���W!�2kl����mb6Kld���'B���k�/m��H��AB������{p�c
�>�?�q��ݹv���6��U��P�[X j�z.ύXҨP��#iW-��D��h{���z����_�����=�c�H�`�QrCp�6�l��#Ыv��5�8����i�U�t�֫0���;ue�� �Үs��T��S����u���D����\�����dH�(Z��li��F��d�*~}&F��R�8)�
S�l̦8'ǧ���3�:ޏ=���W��%}�.����J���=$�������B��J�Yz͚�p�����COś�^�1���cI�X�DL���0�K��Ѵ��L�!,��-�|)r>�C&�5������mط&ƭ�C�D��,;33U�4���'E�-�iRvi��f�{���}��ߧ�A���{���c��w�-O��/���f��[��E�A�"<���b�BMc.p�
�M�\w0#w�b��a���"ȃ��2C���8��w$��Y�������pt�
CE�l̖�B�n�LV����~[�#Z2��)����o����0����s=f_������W�����7�w�>�?�*�p(��%����T��\�sd]\�  �a<-���K%d�ܷv-�̼5<ſ�?�	������KX��a�9�0�J�
�܈�?�����)�p@h���:KO�>l�e�<g���\h
����#?O�ajc�`�^'� ٚ�4ũ��pi胏�+���op�����W{�������Y=)!3c�!���,���p�h�g(8��/m~q�[һ�oH1��DxL���-M/c�8x#��q�9�A^�}��mMJ�]����Wl)�;'W�٨���d��g�}�q8w�G\w��+]m�m#��)N��t��1��o�s3�X1�������ж�����l9H�f�3�+�Y`D�K�s�"?` x��ÈZ�t�a�TZ���Gj���Z" lH��o�"�F*�
��0p�ߛ���x>��?�/>EzPc�~�I��C�����98��/?���"0��:�"#��ߕ	�/3I�)�{C�[N�.�e��9���(�٬�a���s�weA'%�P��l�3Kz�[��8��A��=&Dt�H���̝&��5���,ٓ�4~�d���>����(ZIv�
侐iSr�8"�9Y� ��M��G�z��XI]��Q�����t%y��.#��S��$X� R�j��[�[v��S ���F�}��(�?�}{�q�П�� �x�~����.���������?�uO���8�=�l�]]�H�lhS1��)��9yȋ��G���7��Ǘ��ajQ$�ZРR�qXR�>.i�n��t	�&��w���]M���{�?4�֔TRb��8$��HY GW��4�$!���z��@�d��'�F��Y���Rm�:��W'���R�QO������!y�?�)0����l��x�h�y3����y#�W֐z\\g�݌)�t�#U��u[���`is��<~�q�j���N�4����[V,�M'´q+X�l�KՇ<��O.r��J�p`���/cH��"����a��_R�L��(O�}W�Z2�]Fj��߸���uC|*J�He�w�]e,#ʦ�$XC7,����w�dru4�ޚ�ϱ�&��~p��<�邺����N�cß�Q��k-zì2�5r��幎0
�qu�)j�`���i�ճEdt���8-���i<�|ݐP�r��/Y�s�k�@�ӓ�5�L��:x�%���|o�^���H��Nԭ��GU�| 8RR�F���;��2�Ie�D��������P���&�?�4�u�A���1�Ӄۨ5u)���׵p�umw���A�� L)ORP)�b��9�64��\KA�S0��ـ�d�<3·�~�zsWIٰFR@�\q�W�#nOҒ��Wå���o��v�?#<d��试K[)A���ٽ��2F�;��M��vz>`Ƶ��(&<`����F}f_X)�TQ v𛌯��2��*�"�[ɴ����-"H����xO���Ӌ=�j�|�P�1,�<�9W��y79��HH	��0I�&nd\���2ˉ_�pƺ����'���Ǎ	���"h�6{b��1Z �A_^�zU�<[����t
�;�r*���Y|Ko�p!�/x�	�>8c_Y��iIl��:��DJt����/^���e`��[p߻0 9��	;�R(�hV��՚�ߖ����R���b$�l��g�{���}!	��x�����-뭠��p���xz5\'�[��v�c!B��k#����7:�㴣��UEP-�Q��ʸ�:mN�L�����)����>�Ymʝ��Ά���:qBo���$�%��j�� ��>�&��3ώ�Hq�����!����:�l���}�B���¡5����!�M�g�!�`�Cb��X��8��_���*��т���NU1������pV2!��	�����ݣ䶵R��=h�i��e0 ��)X��d��?����?٭��1O��}�� ڜ� �i�����BO�����#Z�a�,�s5��h��]�M�gC�������7{�LJ& �}D9�D"okYܻ�����ơ0��W��Ҍ�������8�:��5F����	���1c
�<��b�x�q���8C��0�F��l3��-��ͥ�t��H�h�������D��������?a|۠��[B�Zzϴ;�H��\�P_(�*p}e5hq�+h��x�!�D� \ k  ���2���g�>��E�2B2�km���$8[���iޯ��i�.�3Ӭ w?m��PE�e��F��.S�0[��+���р�\��� g������l6���f�UV,�+�P��cʏ��~�#�������As�����>�Z�Y��й�H�v,B-����E��Q��)�l��55}m9KSe��NG��Տ[���0���	.#�{f��jt.�Ϙ�R�~�Jڟ7$J�&qڽ{@D�0�a�mn
z���x5�[�9����M��E����J;N���H3� h
�=�_I����U��O�6<N��Sj�;n���fB��?��r�A� �Yq�SWU�j7�P:�A1�(
h}I�cu���w�#(E��=������)��;�a~�s��&F{��/��� ��!r}�v_�^ߔ�����JeeL�?����D�f8� )6��s���.�`*�h�'���݇���>���|���/w|���~/�/Vt�P�W���u�X̪�Ɨ��':����K����yl���ۍ�&_:Г~�"p�"-R�����V\��H@����VI�-� \�hM>�w�?S���?�+<����� u.���|��dw�����xd����l�bYI���c|j���R�F�0B)6�J�ڸ�(�ei��Tb��~>��?�</�yo��2��
ɚzR���D'����;٢�Ҍ&^���ItM:d���*�q�[Ҙ��=N�}���8��( s�k�|;3�
���]Ҝ#�"A�Bs����)������GO�'��7���r�����.�F��fX��Z��d����#-��=�]}�%e��`j=�&�z�+������$�r��2�^cvN�|�14�V��_xc �`sM͜�1�/��ߐ�c���)W���6���􈋷�N�"�l����>]";���f�(���#.>�]��q#:����I'���zr:}�ڏS��&�6� 4�ax0�ॲ�K ������Do�gM�}��)���J�~m6�Be(���ui؁N]���,*y������3
�j�T�	�s>�^<	�/���S��/����8g<�#JR3]G�����d�c�`���ǆ\�\5�@KF�8��RvQ[�1ъT.�׆���oY4�Tg���`%M Gs�F��sDHC������^�*�>4�h���4���O�4@b)�����R�C�Y��	�]�F���Bx�X�{HҪ}�Gom�zF��V��ڜO���0q�v���e����%!�B���j�/t?��m\�z��Ɔ,�˝�ME5�Hdnv��e�S �ŉ�ޛqtG7�1}Ю���V�e��>��r�+�|�*����8,��zq�I�]P
�x�"��]�b��ݮ�\��,鞚%�͗K���$g��Y��(Yf��_ܽq�o����S �ř�ե���/p~��ŭC�pv��t0��n8}����ϽB��v'�@��0�����D�r�B6�i=l����6��]�>����[���#����C����Il�f��r*��|
��8��@"�/���x��`���!���>4t)�B�ZDZ��T���#���+�ݒ#6�)�S��qĜ�\j5:���K�8(�)sk������\j�+����yl��L!�|��1�/��Z��ܼv�=�_L:��[���r�������O���V��Bs	�zP)w�*�_��42�y���`��>[��3��c-���B,V�FwhG�:��u�u=���@}qxSUQ�Z��^}�5��J���R�wu)G��� q#����;�Nf���H梽z1�^x4+% ��omm��҃K.��W�~44a�gDO<���))���=�Ğ�4��]/���pL�j����8�L8F�qƇ±�v�ͻ �j�b
��|�����g�9�;=�>B��z��9�Q�Q�lb̓�s�r:��}c��w�ߞ�d��I�u&)�(`��S���)H��xȊ�p7f�*��1�(^�ep!�����-=i�ڽ+�*��j�원/�W���Nɲ�� ��
���O�Z�%Z$&�te^�x�WN8&(�yKh��H�b
Ҿ�H�O&/9+K�Y����8p���D��C�(���&*�76:"1B��֣Q�%�1����߁z��V7��OZ����JbI��)�r�g�z
WB>�5y�J2�^��$���N �a3���X�).��w	�%��L�^�	g��0�7�{�M�Pg�
�X�s
ο�8��I	�C��������p;%~M�XfVOy���h�M_�	Vw+��!4f_��]L����?7'�g����O���t�*::��:��R�:E�&5!��R$2X�^ù�b��$Y�"h�(95�>�80M�ĥ�đ)���c�R_���\��w�r&	3/5��kG`����t}�,8��Oƭ5����Y���Ȼ���l�W����\�@*�$3�S���/�?�%���x'�U�9��HL=wŚ��j�7�� ��j�Ө;j�c�yԗ�)�W��n��L�������&���U�}]Q5c,�`z��-Af�G���^Ʃ����$r	yO����
�j+g���zZ|��,�Ws�w��&��{T6.��K��imOn������#�Z#�J��ZK��ث�>��9�;<
��2�9�^y�z��j��O��`u%EFR�a�܇v瓒�Ѡ�it[#�qL��2/�޽O��a�ݳ�~-�\���m�����d��=�B�`W�/������_N��W���xJv�D���c"�cw���F�B��`�b}t�7z�:cGIé�׽��6��;�{Dk U�%�[�Ddwط"���o�/� &$�V�����z���{;4&r��2!D��8c���ĵ��l���V�u��K�H�Z�L�;��_d�
^��SݕGt?�A�E0sp��Ǉ������8#�J�,�|2 #�#i�?��y<���	�ߏU��C]�PJ ��S\��D�t
����ӟ�?`awyP;��c�}/X���8T����Q�I� �B�蠈h��X�tqu=���h &rf4|��[��Ī)���ח�^��\�t�H��"kt�k�,�'L��@�t~�Im��>j�θ�U������9�<�|�e@����L��= 2��p" �%��,qNE~%:qih��F&�j���Q�ZW�H%����u�ٛ�3�&�r�-��@TVʠ}''}KT�s�5X���<�����3�"w�Q���	GG��56�����j
2�����[��)��2\~fk�9���539Y�#C]+֘	+dI�\��$�_!���	�ݥ�'z�!��`��@qUYnQDC�ˇ�W��S����"Hafe�����s�M>ޜd�6�P����5�]k�*Cs�dC1���5�( a��:ؐ��%Ր�/�!�~5�GY�bF��}S�Ѣ��Ge��7�� ��2�Z
�5�L�E�q(]̠ѣ
4�U���n�iڏ�x��Ef���U�� ֣q6�uu5�ȗ�F"I^�ɢ��Q����R�"i�ϊ<� ���,���� ����$7
wn�f�y�χ h��7E@:[���Z���:TfIc�㟏?~���]	      &   �  x��VM��6=K������9.���� ��C����.�TII�Ϳ�1�=���?�7CQ���������̛7o��ޅ�\�\��ml�����Շ�fM�f����rs�X�6�V��6T��W�U�(Z��n2nOZ5�z��M���v��[�2��6��1�<o46������O�*�m$�t����5���3�A��������HZ=���"]_��pY]c��9�Y���&ju�'��?��%�&$���*(������D�S]�\ic(������iZT��"�6y;�c��X�X����c f#�Z��'��.v]��p>�o����^v!�ylC#_���ayY�r z�(�y� �1�#Jh���(�R���F.��<�����02BP�7����qǦDw}o��>4���_�K�y��ƅ�BdSla8˵:�r�W�CbxB��Ǧ�5pB\*Tw"�v}��^�/�E��Z�X"�̛��!swd���g��l14�!�\vh�=1�tΤ�n��ƶH�͗�KǓG�00#i4����BZԯ������$(�rZ�K�@�d��#�;��	��!կ���zK,0��Ym�k���7�qS��S��<-Z*
p*���v�tp%����}n�&x���Y����K�6
��O$p��"���;}r��}��u0��q���a?S�)yd�!{(λ���%qX#cS�f^�H�Aل��eT�%�ɫ8��#�(Atl�Ҷ�@S$��Nu�B���y�dX|zNig!A��G)�=�B�u�st��~�wQ��؛_�j��R-/�!�z/{K�&�tˈ9���<S08��xj�j�.l-E�ҏ.�r�x��>��Nw���΢�!��A���	J�pe�$��,��e��twDi���o:jx���e��[�NB�9-��ǒ��d����9�X����}"�`k;YEp'�c��[��|����-������'C�nQq���(<g��e�8�ux∰��-�F���{�k�\��g@i&���I��
���>��v��G���F�o�,>��j���������%#w�}�m�4�txR�����^���������2�YR߼��l �爐����n2�r��(��rѝn�D0�����x�<��S����؆H�Mwr}  �y�w�|X����E]��0%��      F&   w  x��V�n�6<;_��0K�(�=�N
,P���'-�^.$�KJ�?ꡇbo{���q��	�S.E��Q|�,�r�q���՝۽�a�]�}|x����֫�٨δ���^7��'sr���b��s��/���cm겯�fA��S�b�����e'�NF�|L�	��e^��i�F�X�Bl��y�-�IyŎ�O��kM89�=��)���^y�zm�dֱ`�mMa����_��/ں{w�B����vk��z�6C���h�
m�V�6>>>>+Жh��������������������������`q�8X9Xx<� � � � �@���
ppK�J�J�J�J�J�J�J���BD� W�%�`	�X,V|�XX����5毁�������F���\	�W�+���Jp%�\	��II
�"=��Hʘ�1i#�c�MjJBJ�XC�`qH�#��ϱ�����4�!%�!$(G"���d�05ڸ&	�IMB2I�\�o�B����/�j�ɫ�4���dC�|�����t��7'�ڧ�����L٣>�0x�������]`.���!�X�O��JW� ���@k���$��+�����N�5}V�f����V�}pV���9Ϡ㗯#9
k�߯�Eߞ�.����i@�1b?�}�����@�|E@E"H�@B$  ��
$W ��H����X �)H���D��%f�yE)�ޖ�|�0�j����S�������x����*l��ac�a��	�krg�쫉�;��+{�\����B�S�}��+���(IX���b���n�:�欦����Z���}��d��í�I�K���}����^��m�e�:Q�|�Ϫki�޲y1l^���4�q�����Q��|K�����bt㨲�0��13d���T4F%��~�Ik�o^��'{LG�:��ȷ�X�ƃ��S�����q|���Տ�E�{��=�A5c7��;�d�%U�ԑ��� ad�I�O���n���Mq��Ɠ������ɬx��F{4�?���5��ug����F� �<Q��"�M�;�}J{�<�P��Ϊ#�z�E�
j��_/<�ә�s�Chq�r��,���vuss�/TB      &   �  x����n1�g�)8��a���d,�� H�NZG*t�U�u�&��[�{����I�v�bSw'��ǟ���m�i�����1���������b}2��"p��$����\�~�NVW���M�8X�������%�����N���4S��$"�J�'&	�g�>m8�:M��^�dj���G�p3#�os�����W$���x�JN!yF;��HR�[M&&b䓟]�2��9��]�\�T����$N���;�sz�1���r9�K����̲,��?������b�8�#��#�3)��!	�P����+5�٣ik������#�C�\�"C�2��H��K,(�r=bhp��mb�J�3bt�{�F�K���$�(i��� ��߫��c�G!pS���_���h�o���1�	����3ʲ�"��yg�ӵ6		����$�ɿ]��%6���M�ԉ����>:m� �\d!��x(D_�#C�`N�5th��-��V_&F�|�4bF5���,�-��b܀W�x2��*����4��-��Ȩx`���צ\�c+���!����T�8�M�#�W�T�+�y����"E�`l"�O����801���M��5���M}}�1z������&x��`L� =����vr����>��[�)T��r�m��!����|:���-��      �%      x������ � �      &     x��T�n1�O_�e��G�^Q 5�a+���׸#/|Q>%��)wi��2{<=b)ToI.gfgw4wiY��Tn1�!�.,�f��/���P�N����9�J�97�����ؔ,ƜJU*�J«b���8��t���R�$P�T�9r�q�p�֬9D���q�fJ���B��&!*��+j�W�/׻�\"�X�J�le/�W�ra�`4�8��h�w�0���6���1�MP$�M�q�ؚ �^�q�s��J�h���<;�;}����__��'2P͓��K%��69�XC���#"���\��<�!�IE��O��Bf�����2+z��o�T�����0���}F�ho�)�VP�4_B=2�J	��~N/*a六�
��SY]s�MT�L6���x������QThc��E�l-e�e����(}���Ql��>�jg;_�����;�-����v14�������2+w��UI	���]ݘ(�����fy=�Q�P��Y��Ҭ���u������R�7X�As�wx�΀�}��!M�����.;�c»J����~���������?'��uw��������oY�J�ò~�enzdg�+G��[y;
Eɓ�U�^��>�\U�-ѡ�126(�y*(`Dc��Ȕ1�X�bĥ����TT|��G��}���˃u�� R�[�W�}���:4��K8A��IB	�τ���{�]�;S��sZ��J�i��-s(DXK���^��)��eB�n�$Ў�{�|�;��h��Ɯ���3z��      �%      x������ � �      �%      x������ � �      �%      x������ � �      L&   �  x��T�n�P];_q?��Z��,+
UVH�ĞЉ�;�>*����m~�3�N���,���s����m���^[���c�5֋������tn3���d���MuZ]5I뫶/1Jr_��pt����4;�.iK�'/+���<y��妣0�2܄��]G{%F����!ǈ��94҈�p�&�ڢ�Ag�'��VY���N�A=��ݽv�#�E]�ԈZ��;EZ'KcIu����-�i
��y�	��XjaC@���~�fIk��@�5��G���/.�#��� )�osAb�ag�!������k��=*�n�	Q9�L�<��^ً�<�3�uw���=G9i@x�3� �a���r%�' SfP$�;??�`B=�MT!��{�6[[p�^�0	i���j�<����8xU-��7B�猖B�H�Ύi&�B���cH�弍Ð+��j@%; -[?�d�=��"���g�k(4='[�L��A1�%��������^�� ��^λ��y]]o�Uߎ�0bs�,���l���1�YĆ�$�(�n�a��?�4Q=Œ��(�S�<=n�7�B|�bbP�N�z��ڼ�`����&*�v�+��MUF~��9,���~�g���D�      9&     x���AN�@E��)|�*j�.(7 �
ъU�ȝq������ ʝ� �^5�ز�߷���\�U���ڇ��O�n�/�뢝7c�L�)▇P��S�[W����5E0��� ��uLB��E?�#6�r�������X�=;��X����-B�߼��J������:��	���$��J!wH
'p)���>�:N��s �ـ���BYH)�GG?^&Ӈ�O}o:5��:��[:�9oƤ���[ �I&�t%����=E���h�!��-��?� ��      �%      x������ � �      �%      x������ � �      �%      x������ � �      R&      x��]]oܸ�}���Ɲ��b=����N�v`����h���Jjcn~����H�T���X"�n5E��ԩ�������}�����{v��\�����5]������n�򆔟���@Ƃ`Ӟ��h�k���⟟��~pݷ��^��fڝIq&e[��l_����\ӏ�
���_X8/��ߓ�/�NmS���J�M�k��[y]M��_�ד����cC��g������_����^k�����[�����~b��/|"���˟d���-����Uۼ⇲�xc�����g�k�K�ڗf8�����"���t�]S�V��y>�a|��|����~P �sSM��ݧ���~V]����́3����:W�y%�uy�K�'#k�ȟv����84]ݜ�����I��_���$�=��7=6�����Q������1�9'~e�W.��/�u'�H_j��?�g3�g_~�s��65�����v���3�z�.�����F��偄�t��$Hy�����<�z��%�^�5{&=�va�!�':0�;8)�Z2L�����3:�� C�`5{��@*!_hgQ��Z�{eK���t�w�J[���t��6ݞ�M-�R��"##|�p�ػkd[��ۚcu �ٕ�e:���ۛ�ɚV�O��4}��	����N�ѸT]�L�ͷiۆ<�,}M�TF��Y��A�/�/�J}G�G-�ÔC��0���zm*{P�c3��ˉp�܏R�\_�Ϥ�c�mx��~���GB�=]�ˑ_s�פ�V:/ɾ��fR�¾鍷g����=>�ݙ��X���L��v�����|Cm��Ѝf׮�J�j�n���
���/�޺�(KQ	)�9��$�v�V�0O�/�{�������*�>_=�w}z(���<��ת&nv8��]��u�ص/�.��R=�~!Ug7$�#8]���<�??�NOw�	&�940��G*X��>��ZJҕ��l��'쮴��cS�݀�t�\�Bs�g�]y�/Z~`��U-�nq�Ä-��c������	1�Bܲ��cqA���i�׺�Ͷ2�U�Ҵ�"�������~����f��q�����Jj�t;`B��9:	Fq�+��m󭌻�}�n�g�O��tn�a�T������?�N�\��4o�i&t��mww7p^bC��Aua2�7]F�'yM��k�X�w{����b/��F�C���&�=*�?hUk
��5ÚKq�,8)���V
b%z�~�(UT(���9�V���2�R�^(�HUk���t���X�g�ˬ�K����i���JǢ��V��%~��F�ݾ���Tt	������Zg�u�	;.�SO�<؟�ۣ_ލT���qM}��z��֭��u𕞓���85�߁5r�p��Q�@����.4��0~e�b�8��x�ӏZ�:<�g���y�����=�ǧs<0�3���Z=zL-�q[�)�J{
t���悞4�5���9P�'�o5��X��Bu����n�W����Q�Y؈gu�¯�q��q&m��~��0��t���޽�t�x�"�n�}��L���s�>:��p�v P�p�i�5��c?6��c�v�[�B'���u-�Ju�����R1��ac��~ ?���>�[n�׿�	���1g��^.w�LD�QAs�/�|���3�,����S��j!��&u��������4�,�S|����)+k�̡mp��k?щ���,6�V	��{�ל�jx�OYtL]��7��-U��)�ms�v�2�O��Վ����9p�����\p)�)}�+{�����	[f��K��a�l�y�	�ӄpO?Ь�)��8��Pe���l"�̤dӤ��{w��- ���E����g���[�:��^\�_1H��s��e�y�!ڨH��W̟��H)X��M��-syS���L$���籌u��"�m�����$��po2�@;�U�2�_Q�ĽJ����+�
OӼ[�pa"s�:]D0{[<۠}�Z��X�2Zў��&t>�Ϯ��2{nȉ~`uDGo�m�Y�n=�[���O�*j\	�*�7�t����s�O*�ǽ#�����C�4��T{�yr�#�
9�})�� ���י0,�8�b8<�rb�={=��|�WL�Һ�
���a� Z�G2<ǆ���t?Wۗ��G����9Ÿh���C��6I.�]���V�����l��h�O���'�
9-�:s/M�p	�@�iU�a���#!��a� ��� lN�V]>��_�W3yJЫ����y�󞩜�2�_Odӛh�B^EE�Vͷ$��E�Uf_T�'�;TB�3}����l�Jx&��!�nE
��38r&g�!3���UL���;��-Zy c�f�V��%%��&�,[�a4������f�����	<�j>K�Kfʝw3��YLz�G7��5�V�_z@�QA���$�/�@9=���y��M�*X| ��q�-����=RG�Q�.��q�����P'�^�3�Ƨ�#��#s�D��g���L���ر�~A�Z�1n6��pU��@%L�����G�����@�y�6�?�����6�C5z���
R��s����ކ5�\�c�+<&	���!�lS��������+E����y�cֿ#������c�Q�]���� s"���$BP"h1��;8S�ǂ��>��U�eAP����/���2���~�q�,N*��DF6���+T�Ѡ3���6��]ȇQ�t
^	w�W�iά�@J1�ߩU=U�'�֎~�bm�i01�o�θ͎�E8e�c��_�3c�KTlA���͕���,�;2��Fb�j��LM�Q���H��y_���R^M�cO�\�j(��;+�t��˟��t������`ۢ�
f��\�����x/6�,<ZI�&�);��������XAI�n�F�mʠ�j(8/J�2��l"�v�u׎ӱ��	�&e�7��VfS�b���5$ٲl�1&�a=��g)��?��N�!��ZH�s�iw�\T~����W59M�S�J5�fx��^7�n����8՟�|��֜tTv��W(n��]WT߫�]��/C�\���W:zg���I4���a�;{�05� Gv+r�悒1��W*���N�;�/M�T�x�͍ޜ-�e.�#-N{�F-�j"u|)��Q��~��K^�B��@E��[��@E�h\��LE_1�Sؽ(SU�|-e��'���,��$�|�oS~�	��;�Ęb҂ɛ���a)T�el�#)���3�.-�b@��ঌ8A��qq�3�$�{�o4��^3(�N����hZ��9<6Z����:;%^��/��Z6�ȫ8�9o@tt�k'��������k���և(y�|��נ�:0zI�'wW0�DMu%��)%��k{�љN7E:��u�}����.6�1(�P�J�&]��g��aj�r9��m#c�O\��Gy^�#�maܥ&mR���Ԍ
$q�'�nd���B&��!!�lޢ!]F��
"UK�xa3�l-�y�g?Վ�'o.{��ɾh�K�.zO�7�F=�ӷ�����njV�g���ey�Ҩ�Tw'�I���]z<�h]o@.�iW�%�m�āD{F����U'p7d�7OOK�`��ET�����D�]���+�}��p���?�:�S���i��y����K�Y�}w����Խ�g	~%Tݠz���$�����Y�"�50��5�!X� �'m2-.�^|�x�PXk+Cz�Hڈ1K��c�()��cn#`�?����0?;���u������Ԃ+�C��-ʸ���A�7�OT,slZUp�(���1�7 ��i,���ȹ\t�`����|��Q��$�?Ӥ�lң1=|�<��c^�tĀM�M��8��	�ɮK��H~��G���*^�/��Q�EI�M�6C�B���NxWJͽR�-�,<����
�|�ߓH�^V���u��`��0<��ƍY4[7i�y���Iݥ������|���lt�ߦ�u`���%�]X#g�diJ�֘���9x��Jo��ٚ�W�If
F�LyT���s�v�۩�a�2f�G`���w ʖw\/�s�r u�G���$W��    �-�w d���	޳�d���
ޫn�?��|L�/y8���㘌���%Op=%��
]�U�h��;8c�?�V�
�.C̗�(�u]]^�h��u���x�%d>��2�6@��r.u��4��4U7��Ѹ�9ξ��� ��r�/DbU��}���������`1
?!��Jr��[i��q�Θ�v�WIڸ�\��F!&�`Qo�,1�D����:��u�v�B�� �3]����B_.t���G+T���=�w
�Y�y�����6���x�8���X~Ɣ�ךzhr{�"b}e�ra_��ſ��(�t�u��O�@�$ZM�+����s�kD85�(��v��h����t+���E�W��;�oc_���1(W &$LE3+ ad]r�J��5В6�6G��Y1\^>G�P��.*�O�A?�����Y�9EpF��Z�yA�p&�b��sdg��ej5���sX�*����*z�̑Kj=����ۋH�8A�Y6l�g^���2͓H�3\t��8.(�,:$<�� ��4�5P�/�� �<��OjL��㌾�%bQ�0F�Z�$��i�1f���^��D�ބ�T8JW�m1���$�m��Q��(����l��X�����
�Eƴ �:�SO��Ἢ�-d�
�ݝƛ����NV�+σ�5$U�a.Ύ�p�ڱN�\�ѿ�OqT�&)B����:c�smz��}�Ԫ�J��q�ӆ���~_���"D@aT\�R<OJ^�6�%��g�"��'V����$�ŝ	{��~V~���WO���M���!�.��M��"�T-2A�W�P�ui���2�S�ܻf���>7����p�dئ>��ɂ�=�B�� ת��ծ]_���k��!��]%����o�Jٮ�D�+���Ɩ����ejl������֒���bd� ���yeA���-�a��;�=��OpB'K��>m�d�]m�*����i+���h�=�z�U���EpL�G�A7�+�H�+�=>���dS��,�ٶje��m9k0���\
_".-�<�����ѓ��.,O��B?(��$�gRY��hV��gp�\AoC���ދ�&m�M�����7��1�`	��AЄ��֬�UkwF�e�`��8pY��y���3VB����&�INu`��Ԍ6�ɻp3z�-NI=�h1J��Y�Z����hk+&33K�`2u�h����<��h��\��j��h�� C�i���%{�t}ݡ�/�ݪ��,���m�{8/B��H�!S��v+�'H�q����Xs�7O�V|���U�(7�}�C�]��z[�����򥂵���3������S��j�q�]0��<eRA����gNT��s�oD�+H��U���	�Ɛn+��؏�J�H�/�#��1��TebP�SebP��\&ƒ��P���9^�g����2���Bwɶ�8DL�xsf�n�v=�g�Q� p+.��Q���*�W�e5�{%�W*Ҥ(���-˒c� ��.E����/����&�U�ƴ��4qZF��M���9���'q �����U7p�K�ś��]{Jq��&P��s�feZr��Z�7�����v]&��?LNS%��{*Y�Ң���yLk^b����U�d~*&vtIMdM���&ʿA�<�6M |�Y�B�A���4T/���� ���l,��	7����9+�z�* �4���tlI����ٖ��C_޶T:}ǡ@�D��L�s��V���R�����f�D���R������jZ��%��̹F�ۉ��)Z�IL��wp�����?��f�0�?���X1�Å��l].]~��TLړY��K�낻W���B]^�~�=�_~>�oC��'J�#_,�ɸ�s���e�T��ǎ�rZs�f���QMQ̑���9�Uf*� �*3��㇭��� ���Aȑ�{X0��I1�|Ğ��)�9@�����aPw  �iX͇�	�DZ�ٺ���~�X������iH���P%�i3qiZ���z9-,�%7�r�-�΁�����ŷ�c�����!�]n&C/=VRv�	�A��q��q����8е������.o�ƊQ[%-�-w(ɊO��Iy�Ml�p���Zq�謭�~Lt4W7��f�?��F��_�����U�+c5_��,8�#�%V�w��Mp�0��Op@ 3L�C�������@�e\��\4���� ����x8�J�����F�;��`��2l�NoS�z��K�	�T����� ��z��[�҉RtLblW@'���I��"��g)��̻����z��y�q����)�k5ѿL���b?q���;�������b���"�]6�y��
c�T�d�	=�>�d���$E��3'���N�X���v�)ؿ������봭W�J�t2a���FI6/%�@�2�ȣ��(���(wq��4�2�����vd=�p'���9���h��2Ҽ��"'��Ȳe
�F{8F��ԑV�/o�9�B�$�
�j��+�k �d�($� q��REZ�Ȩ�f.s?���:N�nc'����]5��Jф3۝�v�u���k��究�HT�Ŝ��D`�F8Ӏ%�.I���o�X�2�)���,��wu��^T��+�R/>�#�k���0�;b�=t�h�iJW�ȁ�w�8^S:J!'��z1)�3����Ϭ��)�ꉅ�NWqb�Q�T���z�f��?��Y]����sB@5�d�� 	�a�Rz��O�6�@ �{	�@G���M�.E�Ɔ�%n�X�SJ�O���d!2�:���R�_GNH4���"g��CZרc�L�~����K����hD��Ө�+�����3�ͧ���A�W��g�]xň��b-3�C��m��:ְh �aƆ��}(N=~��������g������P���*#�ffU����Hw��В-|g�=����0��H̶yI��L��+�'��=�Gd���6+��rp��d;>�}8��(-,zG�)���[X���(@%Z���I:��N�m�t�tWP�͚��e����6e�蒪��a��{*V9H\�!	f@S� �zp�L�b+�R)O'v�f�$�ׯ�X��I#h��I�%UOtX��VlܡLMڝj�]��9{��Zf��C��M��(�۱�:�nW�D���1۽�K5�86�&r�願��8tfgB PK��f>�ju���X�I�D#�I��������o�VI�ߦ~̀>�E5tǻX.m�R��6,���6,4$��f�}#<��o`���/�τg�n�e2����iG��PG�7m�zL�� ̾x�,���OX���Ɉ�7�AZ�fM-6ĩ��/k�+��d�C"�o�Ϫ���[IV�������tp���L}=��,K�&�O��Ь`�)�f%K/�BqQK��N�҇:ց�^<��-��7t{��v���b/��0aH|�Rg�B��G�����kT�߱�������Jbl�Ӊ���j/rrƑU�ś�!�8Tu�<`��HF���R�m�,��	tKƖ�`!yYJdQ��d3g��o�>�S�F�`b�\	������g_��!H{w�Ì���r�&�.xj���:v^�����08]g���i1����98-��� �Yd�e��(*v�lh(�a���G?���ed�6nf�+��j��x+_U��1�{��� ��J�������B�Qso����vt���7��>>�y�$��+z��g��\rt������R[:�^F(�e|]����k��4�|u��$߇�{��}g�vPg��������_)gĭ=��?z���zf�8��[���앲(���J��c֫�(��E�2
�3ċ�^�d;DL�T&C=�P�a���l��l�J�KS`Ɏ$5]��N2*s*$ ��G�Zށ� 0P�Vs11	��=`�T���v���K!�b�[d��+�>�M�!X�:�KnhۈS��P�%V��ub��}��ob�p�%����CD�+w1���7�$�o�䓶p� �  �Vu��-��(�k+x��q��Su&F�)Sl���3��%ۑ�&D�jn�u{�6�f^m�.Y0��ܢ�ffQ���q���w��m�%Z�p�rC�7w�-�i��c�ZJ�]�X63�0�C�ؿ��0���E'�(E�a��^`޶���U?W"X}w�P&?
�O-�yK�zQ@�\���%��1%P�͌]�̹
��`$�2XKċT�q�����hRѵ�����h�H{)1?RE���dYt��d$���^�u+dY�M���/�
�gzh��0���v�Ua���&�7^�1)���%�f��7:5�Y<�*)C.�Y( yp%�L#�<�.�h9��j~��:��y�}3xu���|&���N'�Ws�a��h��2Z=m^���ЂP��/6�L���(Rr�h��z|�R;T��G4��dK�2[�~ZB��-
������*�Όl\`f���S��\-Ӷ�*���!x�mU�RbV|��)���F��R�B�9/�q��+N��tTN�Y��72��j�B���	�k*�kz����t�԰O#ܚq�J�FG %%a��ǆ^ɖ����/�es��D������G���6e1�9e���Rk��/����.lDik��)9��R�,��%ܡ���O�`�ks!�����fb�.�g�������jJ&�E<7��4�|u�RaM|��s�I஍ �"0����D	�����I���]d<��w��%.�n��3�VR���y�r?�9V��.'4\"���,ؐ��hn&���F���^�j��;h���p�#�>SD�{s��lGǝˀb���u$�o�H��L$�y��ʴ|3z�H�������t�+O��.i�@:В���i�H��[-�����|�Ƞ&�U�A���8P|Gb�&L�������/��;�Z      &      x������ � �      Q&     x���n�:������b������ �n�@S��B��d����d��٧�3M�>�n�m)rV��j�R4�wִBfKҒ�����?e�ޓvw�}�-E�.*��`R�J,�4��j�����s�|}�޿�r8z�h��-EVwU+�l�`.�d�`��ά�|̾	Y�l%Yê�P�i�X��bAy�Cd")"ϭ	���V���$�9o�I�����
n��I?ͤ'1?�fs���|ww�ȹ!� �ؒ�V�%�qr�KO��-k^k&I��1x8�2[1�K�7�%p��f�u����T�I����ȂZ M��!3������t-E�i��{)�8�������8�C���^[}|뀟���d��!��Y��]].��)���Am�\�	a��SЌ;.u��~%Rr��-~���[#ހH��[׈�n�!ف�ؕ�#�k��׊182�Z]��y���I��\�_-џ	6�R�T+�nP�P=�v��HZ5C����������|��������n�I��9�trG(�|�ě��[�ˬ1м �AA'��dM��"i�>)�\2���Q�8��	�%��5E�@��O�A�J���RSqD����1�mIo�(-�����PL&����(�&4������o$'_�@��M��+�ܒN!��[�q`�ۗ�dR��	#({�`TzF�3j=c����/�Y�LX 47�+�U��>Kx�Xh��RԍرKY dz��1j�
�<���G�%Y�q�����c���ܙ3�~��B���),4�v0�݀e��M-*��(l��ȼ�<A-�H����V�9�~�!�/a��Ө�:y���1�l<������s��~S�8ww���E G�����=қ��)�����;ClB��K�3\v�ƽ�&�4O��?�d�
Ph@o-E�'�[
�3��}|y4|c ��+�!Q\ӿ��w�w}�f��Б�h���4*Z�(�6�J����#S�r��@4��h+��e��Z�T�:��Y� aA	T��FkA�~5A��$�.��	Air: �(������1	P ����Y)��&*6��6.��u���Ņ�%3�(�[��g{n�R��X ��Ɩiئ��V�Qi$"Z�$��R�;P��Nؗ{��jLq�'�;��� V�MxlR�j �^G/�P�Ǿ�m�U��9��U�< 2S���+F�)��P�D���xyJñ8�y�������ȄY���t?����ek�o�<p����+�n,*�f���:̑���p��"�}'��_H<*�<9�Q
�ԖMbj�m�3F�3\)��Fw�M�A����i�N�vZ��n����1o����۽n2t�(3�_��iw�R_s���X_dx';�I�M:n�3G+�6�vo�g���)��D������ڼ?9���?a��J����5x���(E����9s�t�A�y�R$�.S�=�6���H�t�4�Z�<A�f���~����T��\����qXK)�j)��b��t����0j�&[�,�+w���A���MfzF��K(���.�;�]�����R�a滘�b|�b|	�񜤝Bu����Hk��������-.��:���[�����l&�����N�Q�Ɛ�h�����Ȉ>����ǫ���
"Q���;2���cN�~*,�E�� ݿ�,X�J?Z:7#�N>J��Oei�/G��$[`jc+���Ma�f|mv(Z�sX��x+?�&�뇑aޕ[��.r}��|RG��EOC�FL����ȷ;�1!Ѻ��X4�$Z&�Q`��+#].Uk���Zo,���m$�;��@��sT��*��qUP��;�&��q�tĎ��JJ��a4YR����8JUiDt��t�e��2�K*������Y�į���d�D�Wu�e̊��:L�kI0�SS	d�y�g1ɏ ��p�\&�1/��C.�<jH0�^� ��C�V���GgC����Dېm�z�.j�3Qttgm<kzS�L2?��b�]3�{�>4��!���&�g����Z��o�FߠQZ,~����!:�n0ӽ":�n0Q�v-e�b�L�Ku��'2��G2�d��srl�Z��aɀ"��H�LV0�	Cj������z��u}�LZ��IL�l�B�-�����H��0!�>"�vq�ww A�b@�S=��Llo��V�/���(�oϏ�dW�?҅�����4E��#L4ήG�%k_��=��e��Y�R�aSuj�P���߮I[5���#�4�8JU���Ȝ�S�#���qa�pU���	kĤ�
v}�/=�rc���u�?�5C}X#8���>��J��x�Ji=p�]bO}�sMv��5�vE@��;ue��rH�Y�̓Lv��"�M��M;����4�^%CAu�56��tXI��:��		�|X�z"����%��X��^�~�m=3�
9=<�l&VG��@��8���MRLub�Ķ@��jH�X�'o�u��gR�&z�����Hc-Hs�t�U��?�,����Ջ��'���2��Hwg��ȃ�j���C�*K�2�Q�8�����J���}��zJ{m���\8���S<!����!:���!�]��D���j���/x�g#�Z�v�Q��}��ae�t�����j&	k�C����y�ׅV�R�`/y�y/hW���^2��͇����n��st8^ϯ������:��H<h�nJ� g�V������J��2]T	���f��$;ۼ�:\���NHљ6�(�/ge�[���~�����%1c��V�����e��/
�m�jƌ�Ǳ6��x�P����T�������&��&ƨ���0��5lg
�7�9#��Oŉ&{�g�Ч��3��.,�t,�h��~�:Ш����k:����@�?��><QF�W��Ͳ}�������ܬ,�n���m�ƻ�I3"��� ���g���t��K�gՂ�?s�>��2^A�O6�W����:ak��4�P�>Y��!�2�+�ӣ"y<g���eJWϊj�{ca�]Ǧ���~����<���L��	���B�=5���6�&f����fA�/���EMV,p�������.�h      S&      x��]K��֑^����c�2�Y��BlI��`0@�y[4�d��}ak7?�K/���&@���y�Ω"y �nwU�!ϫ_U��4�����S7>��ͳ��8�yl���|����}��������|zS�g��o���&�;4�u������e�6M7Rԥ;��~<v���z/hv�vg�����Z!����cS�U��$|#�߽~)Y����������L�p�.��ݱy���qj�����g��W3��q�^j񎤔�k;\�z/P<Y}������nh�S���u���X��,D���T͸��b���Tr2�Q/	1�R�<��r��N�ĥC:��q?��v��Tʗ�^�z����	i�w���K��j^��I~S��j夝��~�)��3�w����iz)���?�^�oQ�Ë���=�Y��ӝ۟�]@ؕ[d��{�~��ob<K�._A}���}���ՆC9��]ZX�]X��t.�x�b}����<Lե�\�z��
��C��.�-�T3�@nr�:Zs��շ��82����j������8u⬿$g����q���-����ӡi�<���ެQ}�ab��}�����N�9�S#X��8�j{}]�*/NU�u�X����i�];��~gw�x��Q����ꨀ_��T.����T|A�R���ՌR�Ǳ�b]]/]_=�S�"���Z�
j}jn�o)`w�,$�wym�k����Dn��ٗЫ-ު�\��X˃G�w�����*o�k�Y�Է�$��*j\��7u�\V����:��!���b���>1ǜy��V�z)��E�``ȹ���#�^��t__Fqet��o���6:F�{*fs=ʯ��"D�M���Ϻ[i�[�	~Pv����y�;uۉ݃�^�u�<���y���t_O�|�/}��%�^���y���zj�J�*����7���/�}�i��|��yd��,;�"ߠ���;}�
��2>vb�+xj{�+F�Ȯ
K�I�X"�YJ�T���V^,�:��%�bg������_��^�< ��ݰo�Qk��A^��%_���S�=x��QY�	ڌ�9�L/x�_~[������;��/��y��%��/�q����|G�_�y����o���o�pG߉'��?,����w�_H����B^���s	�y�͋?��9�m^b���j\�Ѧ��R��+Fiju^Y*�v���WI��&Cl����RWo�^��ɟ>�P��V\F�{{�f'�&��������Z�A~,��i��{�f)��h"pAg�:��l�)Dhz����;���!1E'M�'<b����T���z�NY�z��W{#Ǫ�N��}ߝ/�um����UX�,�d鲸����7�߼���w����;�h53�-jw������z+���͞���cB;�T\gOpe]�����(��T6�4V�����Dvv�����[ʐ�~��j$������~�x�D˿��0������y�ſ[a �;^t���gM���ۻ�)�>�uh>�r�%�1�%�����C�V�[�$��k�(ԯ�z8v�uhxv�G����k�sA��F���T�W�`.^�&�㞙g^���;���ϻ��=k��A�v��,�=�ŞTy�^��_�:�����׹���Q�W9_n:	�g&��{�C��zl���w��}M3��PX*7�#�l�p=���yk#ਅd����K=5�G]�����/yKW��F�������L�H��$�[�F�dB�7� 57�����T�:J�3Ǩ�x�cw/b��]I}�����\�M�W��?/��i�B4�r��G�a�=�3�z1�3Չ���a�q��Gk�DNO��@��9����Wk7���D�W��w5AZ��o߱����J��>����io[x=����'��%:�w�������Q����v�Z'Π���Q�O}�Ο���!U>M�;����r�a�L�X�rD�%�t'<��%����W�'�|�*d��L#\��xD�J}�H8@]�eV��}��!߅�w}`0r�Do]���]��>����$�O��u,J�d��[��S#�D���9�b�o�{�.� sE�B˙�&ve�/�Wad��V�v�9��y�ۼ���0�c�����`iZK�s���]Py����)!�����&j�9�d̰2�z�����4�ȷ�c�]{�гG傴�9@CEJ,8����Nk�60����mL�rؠ�96v�4w롄lT��̐�\Q��QR1R':�� 1�NQ��� �2{�,���P�hţ��ҊGMM������*QA�a����[*]����ԝI�Er����ET�m`������G�L����A���B���(��[��O����c=�r�Bq���ܛk��� ��Z}O�ټ��_F��ݥ `]������;}{	��8��~�ZBD	a�/|�O V����$��!����:f�6��/�^��fu��*�;���X�=�V�&Wd�5��"��")�t
��Om�w8���),Y����E^��qœw��3+����s,9��o��_O�� 3c���b=�pp�<���C�2EYG{��{�P�rn�#;N&�Y��k)�}�F�p���x�U}i��}-g���N��>���U�!Ą[zF���0Q����ܡܝo	�򖐙!o	�y�n޽}��=s̩��1��MBfN�$��MB��$T.����dI�!���e����@#շ�$�:�gryq�?]��՟.b�+��x~�PSW�S/0����ƁB�~*N>�Q���S
�F��A���5��ƚ���А&0 hU?α6�5�yu$��#�
�es�ZXT^hqy�Fw����N�7\l+|�!$G��&m�Ș�cx5W8DA,��B�EQ��Wk�)>�ʛ���RѢt�����eR����7rlo���ę��{��i\������kn��.1`C<�oU�1� �I�g3��+��]�t�����us��q7q,k��աߘ��
��rOcO(M�	�\��g7�G._�AA8j��8'�ߔ�~�؜��e-T+��;Cm�_h���\�CX21���!V�P���T`��O��8�eJuW�����7*��nq��R���H��_�a�������=�������C� ��B��*��PI�q�d.=��YB�RJ�g<�Kk,�O��C;��;������4ş.0�1���a��v?��3�Q����{�T���<�;��̑n�r�h��P���>i�!ΐ'��II��]��^��\���`N�r`�u5�J�J�wx�jG�2o椐��JrJ�v<1�Y�A4K� ����[�������%���2�/�Ԧ\~F�3l#��=�j��yt��F�,�Z@���岥	o����$N�Jj�ḲZ$��@}��Z��(��C�c��F����)|Pd���B�icMÊ���E
_L�qEqDSB$0 �C�$_1S�Z33!x����"����^��,aM��t�AC?�gpEe�k�䙉5-?���k|��?F���~CB�i�ž�	@u�7�j��3�%:*-� �<	��N��`T�W�F�ѕ�zH�XPxʵ����m�=��^��4DJ՚<�f_��13�w0�w^��]&�o�$y��V��ظuu��C�2�&i�^����>�#YE�/ȗxX��}��|u/�Η�o��p����!�xc�Tޘ#=��)+<V_capzj����s���:HPQ����s ]����b=������8OP �nYޤ1Y�..�����{��eP A�c+.�.cv{a˙Exz5}��PxY`�`�5�v~�넺��W
T��8�+&١�������ss�����7���H6����FNt��d��	����}�I}��R��PCc�z�i �x�p[tN+�y�v$e��s�t��S1�$D��;�  b�$�S+���ԟU���_#��_�ApW[g�W�����礩O�80��1�A�
�In�S<����ʞ4��8<ͻ=�Ak `AkPب�N��.�KN<�WJ}�e�j�r��j�~OU6�0���r���S    �a�^�[qB�.(�L`��e64nLh.&4����0�)�	�y�����%����RJ�I��e���p6�$q���XF|9�b�U	��8�;�T6��&�������5I�[̒�{2)�%��"퇨8e�`�����2S�|ˀ�x�
"J�Z��%)���)��ߖ=ֺ퇧K1��۵9$K�s����I���cP�uWZj�$���r�ʼ���9�����M>t.:��v�Jx,�C�>���3�A���y#���f(2������Sv�X�����xݮk�$]�������P�mQ� y���F�K7W���2iH�X|{YÓuqy(_�����H���45��V�b�7�o���qyR�߯�~�~���b�2!����̲,���&���q�4y�	V��/\	���E`�O�K��V����k=�(䉽ڷ���s���V�;M)6�i0�\�CG�|u���l$�m�Kv���3�)I�s��qA)K�߹��z�g�<�⽨_N��B9�l�f��0Wȼ��NA�(��(��l!iV�QN$WBx�p��SE�YG�9 ���-Z��[�
(��/k�$��Ì6X���:V�`I��*nP�Bn� ��æż�(�m@��y!wt���+t`�\X�"X8 ���|A���{h���g1ɨ^�z�O������8\����V����g�fIԂ��'9y!�"��ª

��&�����Fª�+�!,��������.�CM��-#7�۽��+���9�:�g#�[؛�d�w-���q�^4C��
^�r��
�/�K�p�,�$���'�DV
��ř'��l��P1ʖ p����@�y���#�R�k$�g͒b�s��u�k�f�33�,��P�w�Bf����纔�<P{��D��ݕ��(Q��-�P�r)wx�	�.��=YAc�����)�0����$���-�=��o�ab{?#{�tx�/������S��­��6�V1�/E��4%����N��0���aJ����ٰ���_�rӀ��詻 �/�}���h����_�A/�aHV�V|r�~�r�TiCc2��%(��8��6����V.{/��)�qc9RG9��q�.���(�{9�X�~8Kپ��f2/Z=�VO&0G9D�1#ՓicF�'S����4V�z2���L�������m�Y��#��۶Z��e�]���ޮy��k琀��m6S�4��ՑE���}�n^�#����P�p����5�]��RY�(�;����F�:7J��cxK=�.�D5b��:�xK�S�f�Wn]K_R�����EBKPg�#r�͜�li�+%=��Z�e�@_P�X��P�\�y������N���N�i{��2K�%�������;?��J��X���#�Z����˞�s!�g�\(��<���<���<���rN~s�#�窭�Ī�%q���%qA}��̳�'+����T��k�Ɛ^Vޥ���R]����ɲ3tʡ�&Ǜ <ť�)���r�G�,p\vAq$���p�Eԙ�A�9�����B�yϐB�yϐB�9�)4��A��!T����O�j��'����	�H|��NqZKV1�j��W��G?%�1���S��r1�&�{D�E맗��#K��xd�3�*s�1�s�1�s�E`N>� ��G�~T^JvG{�2:��w�λ�sR�<�Lj75�^��*�`������͔pv�VE/�kH�O�D!杚=�g2�*	&'�Z��N�}�(^�l��	
j�dr�+��EcF�뽲�1�������T���g)CX%ʆ����
v����K]�jJ�ZW9�fo��ȳK�߀�XT
E������+��lZ��TyA�?�Ygs*)������\�Rd��w���l/c�7�����#9RQ�0[�#�ΥY@gm��m\�!8[  [�o~���R��N(�P�⬊,^��"�*xC��.�$Bf�.�!� ���i�H���f�qC����6� Z�X����o�I2
��3E�鶹Ba��M׸����.ml*�!M��?�:q�4@��D8u#*��/"�n�G�ڀᏹp8<XD:#�)�?a���Px"�\�ä)�I�R�"����(G��f��x��*���%��hlВ[Zi�:�ti-�4GbgpY8���$�ǳiK�@��H�ݙ�}/��13u��l�ĄFC)JLʴ>�E�Ò=�P�ͺer���$^��Ty0�VX�[ �ު�#�*�-"�?�(Hs�BF�J�A�� q&����3E�#��-�JN��EH�d�p���k[��%]J% ��ɾ=�D����c�6Z^~�P��Y	*������^�_I��E��3eK�s\^��˛}z�E3�3�t�3��e�p+��y��5~�4���׸Ӑ��]�ꀵ�_%�:Xq�W,��\)�S��dy哊���h�X���k���:�3�q'�D5uFs���4{��<^��T?� 
a�68�sw���R�|�*�T�CE�pyL:�\I��4��cH��L2\x��@�Wm_Px/]�y�B|U<Yv*e�_�c�}P���k�������p�Ĉ�O�����UԵ$;|��ٗ��	���-Twӗ�]v�2o�R�<a�7 ��G�*~	�Bݍj��o�֧���e��d��i���u߼n��f7�j�l|���2�z�Z����օ�����&�ɘ�u����u���:yiXo�����a��ڇ����ű��҂p�*a~q�����v>G�_
�"�@�[�δ�lk���ڮ�f��܋W{��ZiXQ*ϐ
�c���T׾�*]�X�/�n�M=��fm�}=�ʙ6�?��7�b��2�J�޿�j}J�1_f��U�rV�r�ly��(6١咲]�:�ed��9PѪ�L��y��9�V��O}�q]w�+b?�f�^��n���}��� ��V��-|�d��'��J�m�ݾusm����`�;X�C�C��,�q�N�U�����R[aM]��K}��j�u����g3<a��fRS+�m7��Ͻh�
Y����bL��&�EW����kE��Ĉ�ǩ�*^t�|#IuG� ��ݳT�oW�׀��|S�'���U��*@NL	��JĞd�w�g�8"RW�5���i:�鬱�lp>��(�r��(cϴٰKj� P�4�cB�|L/�r�q��V\ji��#�����?��m5�Nri����GF��Ei�Y�|��*,�5�����6zNX(|���"�t\�\e)�p72"� �i�#�A��ˮ�O
���=p�J�(���럯l�����~�����Ǩ���l�9i�t<Ʃ[��\��F9i~���$nG��N�G�a���h���<� (W�# DWz]f�O��m0�$M�`	H�7��Q
�;L��pb�@:���K5�%G(h���w��i��뮿;a
E�YҠ����w2f7%��TꝪ�B�&irB�tPn�)*������J�Q2�"��Lsl��t�����>5n�P�t�����+�{@܍�r��*c�no�^ {;V(��T����Ta�������]�5���G��1=���(�4rb���|#�<t��*�f],~w�J1Dw@�c �p %;��T{UR��Ŝ}p.���v��+)
���8��r�6Ã�#°�"j��f$��_�jc@i~�	�6���^i|�l���u��~�R�I�lS��4����Mw����F/�����h��l�֨P�xT�4�T��_$%�,�N;����	��M[�%�ˀ�%��,$�m�����z�^���t�XYZ���Dẉ��M�<(�˜B�V�(]�ὃh�U��ŉ���q��?>ڛ8������޺2<�:����H�jp�m�ꂁ���!^Zq���%:Ym�UR쾔Ӄ���C��*���Epǚ�Q(����\a@v��d�DK�V�Y.�&�S�~k��l3�ц�la���j.�b �k����H��]Q���xĉ���@sXD���
,2�2M��{9 �%Jn13A�,	ov\����a�=�fD��!� ��v&A~��Z:�$������p�F#5�DEBP�� �  D��4��
�0�ñj��c\��vm5�1���mG��-��a���T?e�Hsɋ�A܀�1($`x;nL�q�leT����K�e��	�ݪ�VHc����৥�br�7w1�Ѕ��1j�1�R�)eA��JYؠRe6��i�i)�@�Re���E�
b��ȧR�⃞�����Hcl��)[��-�ʀ
3e��{����ϓ�0��Hk�%DE���*�LfhS�vD��ͥꦫ��гݢ=�A��.xV�㹬�����C;M(�.9���mb����R���b)P����D���_[<!�Jy^v�<'�Y�I����=�r���$W��x@V���\`6���'r�H!�h�V����2���Yո6o�,�+�Х�*��.�¡:�S�
�Y7�l[/�`s��lo&6th@��}{�t�^����1��}i��$�o����{m�R:4#�TV����'q��|Δ��
�w͵�O6����eH�Gc�XE���$M✉ײ�	�b�p�y\��H�d��N�!xn�ǝ~�A���G�Z�?*RBH������2�s���Ŵ"X�KR-e�`�����П/���\��5D@G�E <$#r��X�ŧQY{�A�+E9��.�b"њt#Fjm���t�Z�I�W�\� ,02��>;�C+�IA���,*�ѧ��P���І�zP�G�̮s$ޠ�fd���p��$/@��$T�>SH��og���?�T	a&='�/f�D��fi�LJ�<P�!�E�0U�B��4�fY%m�6��8)-^dq�r
t�M�ը�Rׄ��s
�]Y`�/r)�-0��:���_�0�;y]��%"g���l^$��x��U�
�i_5�r��V�@��
`Mdx�����j�d��r� ��q��.��g�w-��`�:���0�l$��	���F¬g 	��h$��	���F�t樑0�k�[c�ⰸn�W3*6�y�~`m�ևr
�o,Al|�h|>M�6'q�$��o�/YF����4�+����>��Ϊu��U�F���
[j�2���8O��s�����t�?b��Ӄ1��Cn���}jk�-�f��p\�0[[�+	�r.L:3t]ҹ�˒̍^��ѧ%g��5I�N/IotE�Y���]�I-ER��h�4�ɳ�9>
��A>
⣍5E��ƚ��|!��� ��-���n_9t*��F-zX&�kF?�\���lr�咺��O��.C���x+���XB�gTӂiiuS���ʞDE�ż7cག��H�7`R�ȶou앢E�2�Eb���7}��*_ �^��Qm[��	������`�=D:�8H)l�W���B	|�M��!�4uy�F��9)|�s��y4	L���P�]��@6l?@����w.����C��µ�Mk_Ǆ�ԥ%�y��ܹj�?|qww��>�p�      &      x������ � �      	&   ,  x��Zߏ�:~��c�����>:83��3>mBj����R������EZ�8�}����������$
��h�=�:�ݴ�	*�HJ�R�L�/��a�e�c�O/�U*b��h#I(\e*�h�K����3���(�,�"���+�o�=~����t���N�E)ׄ�jI��!����,=e�Dr�a����"�	���K�
o���K&X�ĢS�I�(�r�i�&V3�<��nM/���]e7$S$�T��I�$Ia�<��=��� ����HR�<�����_5�Q-α���y�pp;(2��nEe0���3)Y�ڞ5��T�}����R���1�ϓ1Ά��Kp�ص��AW���*�\���F�^O�ÎG��%qѿY���a}�J�Z�MG<��тQ��+�y+h��x���.���yo��$�q�nER�,�T)$��$����@d;��+p9ܥm��L��4��C�'8ʸ"���'���� (�s?ڷ*�t?!����q�x:�f�U#�dC#*r)r�΂��Z�5bB�c����7!JrZ&��N*Dʵ#���Hk�f7j�KPf��	�#V�fF��I
&��O8�������B�߁J�����c5��P��̤QT�4 0

�2
JK�P��P�|˭#�8`�7_�����U^�I�(.8c����c'Ⱥ�g<�-�ݙ�_�!�O��/ޞ�l�G��F0�N����V�W�ɢ��Q��l��H��O�pmB;���Pp-�3���Of�?��ђl�~x]�]q0�;��Q�O?�H������gke��0��y*���E�'�!�M�#caR#Jx"R�`-P)?$��%m�.����JF��8ء0_o%������6��)����˞ �`�s��'�`�4�-F��ش�+L˅�6�Y�<��y�	��X��`-dj�%1�dG/v�Ԁ�p0�`(�d#��'8c,4ɀԧ.���LW��K�\]�����:�tU�����^��EШ�Nz�;[)�@���\�JZ�_��b�bck��r��8�Q�Bh�LP��E�A��$�h��@S���'���T|.{��leZ�*mj	�8����h�n���B�A�^�h�C�2}��]M[��	d/���3��*��I�����o���T&��<܃V�=<y��V��l���8%�Q�l�K�m�����` �b�T4U/Y�f�n�^U��%G��to�_�l�n�I�n���W[/�:{�En^툚��p+ΒS�M��	�h=�L"�e��2�����h�;vc^�/p��G}|sǛ�w���qb����n�����ҷ��g�jX����U��|���f>�ZͪuJp5V��D����'�ω����l" �&8�t&+_�\b��cE'��� ���H��Z��yξ�AI4��J)��L
ױ��n`��Ѹ�*�ӥ���P�D!F�j�`l�x��n������o?&Ǩ�L��!~C��x����+h����qWl]ڄ�z&��8�#J��|���� "���� �&}Y�=xxx�����      U&      x��}�n�Ȓ��)�<}�9=0PK������l� A��2,��d	>�ͣ��Yx1�7\���?�'����Iml�*����Ż��������ӿ���{�~�=�9)w���Su:&iV�l��I}Y�ߓ�Ի�&��D��,�~�?����i���gE�g�?n��?���w~ed�O��)c�����@~j4�ߜHѐ����i��0�oƎ1�:�w�A���W�����P�I^��E}:�u|Eꦬ��I�J���ߩ���Q����c�����rJ�D�c��t���>�z�T��|���Y2��.;d��I�4�sY�uz���ߒ����myx�����]P=��Hq���Ud�����ӁT��J?|F�'�E�!vW�y6S��#/?at�Q"	W������G��$�9���3�/N���ȘV����u]�'�z���'1�;+�?�=<�?�>�p�󍸃g�<K��3AL�;���|�3���CFE�������g�����L
�]�P6�.�����ц�,�h�=�$J;v|:j��qV|.���l�τ:qZR�)E�s���Yx^�R��yJM^5��ꊔ�T���B$�q<ٽr��{���~ UE�rwV���%�>e*iCZ�}�/�EW�=�A�;����<]s5\�C�QC����5�^H���#O}�2�l�,�ZH������7�-F/��r�Ze�s��C|�&"�^�%��iA/"���Y{4�zD�S�!�$����X���xO�!�#���ɉ�~-��/�}O���{�N"�^4��}��"���W>��@�{+��6�?�_V��J y�p%&�}�O�0�_�b���=��ٞ�z?���Xc��3ܑ*c�r��zT}�;?�%�D/�9U$Ȱn��[���KfQ�F'�����*jc�CDn���|	ՙ�M�RH3����\��=&�%j�j'^&W�܈�&g�n�ߝؙK����w��@���`$�c]��NdؑQ`�Æ���=%౭= 꽕p�@�Vx���V5i���B�6����c�Ќ! o�̰�T}m"z�,�LF!�4ό�'��d�B�]dI!v����H��jAd�d+8)���<7�����ɢ��<f��S�۲ʾ��p��<-��J�w�@#�I\�)�E^g��ͮ�'r�=�|w"��9��0_�41:`|
�/֟�g0�֙-:��p{?|y�;vI�yt�O��<�_����^d�Yʂ�� ef �[
����⽐˨��u��7�C	㯎Oa��h⩹�ފ�1�l���V���Tc�4��x��@�byw}{-�����ǚTϜ��F[DH᳝×�nC���<E-"Ȼsu+�˜����fr�)�֡��$"��ڕ,�|�R�J�d�sF�z$��u�d�@�?�
�o��i�{_�?#��Yc� 9��w����[ۛ�zH�A�Momm!m�;�����պ���nV< qA
歀1x�4���Aqq�f��ҫ��D|���)��)��.��-��a��>J��Q�ǯ���y�	��>��S�>ep�]�(�x^�'z�����j���5����s������!�\��T%��3��Eɳ�x�@0���A��Y�T�;K'+�M����>!��K�(ӘiGL<��(@a��Q����_pZ`�/vq���woʦ̺�R��|g=�<@#=�Ҫ		N����euO���&�S� ���˲�l����t3I�$� <Q7I�-)i�8�������͆ve���k�6Ys��}v/ئi�f�D��)��/��ޚ�Y]�ō��ᶨd�_V��Bէ�
��L��=��;�ۓ�{��]q���+ ��(d)����[灯�����)A��@!H�_V�M�S���WN����}g9��� X�Fz����}	_G���{�T�	;
�U�S��71Db�]����"���y|�mμ�F.x%4�c^�`���t7��H.�fξ����`Ts�w���|Y�����"�h�TE 5��JuBz|]��ٳ�Ƭ�,�he���3[*�)�G���V�`�o>@
G�I���!m0Jy����Uܦ{��
H��y.cR�on��
{qd�����\�
F�"���*Yi"WR��Z6M遑��[�)�+6�������lc��Ӭ4@M�i5XM�!�'
�|�PqX�
q�\�n��iX5} fЊ��~omW`�>��,�e8����䭲�G�� ��6�G�9d5GW�Gp7� ����*�R32�/�����)^ml�Am�2�@j���M��V����~�P>R����oqN&����cd/�]��@�Trg����e�0ހ.Z������]$��eD�p�}��A���$�P�y�
Y���?�T����&m�o�Q�����G�n��E�)�<�]�w��]��`h�3F�sݳ�㗴+FWּv��Q��C��!Y�ym���
tcy9I�K$>����,�9��r�@�~Ҥ
�s�#�]?�eY��*�gi)?�6��tg �H�8(a{���IM������T��i�&��3"�����D0}��"#�CzA�)]��2M��n7_$Lƶ'�)��6e#-����P4�:ʞP7é"ɧ$/+^��Ù�����u��F�̐	D�m<���0�u��3;�?����Two�(w����t��C�4A�Bj�=�|1:���y�뼻����{Z��P፻>��>�;��Lkt���S��Џ�LH#~��k�4_��9�`6���ZO�X ������mi��1 Þځ����wF}"��.�S�wG�T����Oe��.H����t� P��
`���PDD�3\u����3���vZ΅��ck3`[@b@s��Ą����}ܦxW/�_��Xv���~D�Aa���@	_�����?Bs$�SC
�`$���N<(��P%E�ϫ�?l�)o�ǲ�����P��72 ef�?�y$i���)[h��-�#쬤&�V�}�cM0���Y�8�#��N�q���<я�g) ����o��6ˈ��?�G����(O����d���6ʘA�{̙M�ϻ�$��.��1>X����N���7E7�@���꠿9�KFa�:5C�������q`gQ�A��p��|Rf���_��K�d���2f�.��a <yR����5݃jЭc+�l�����9�;�A�*v߰E�����&���*ͭ�sbw�=e�h�D�����Yd zT�O���X+����'���a�i=�3m �7���y� u�a�qP���W��T0��#��l���i���Y0}�9y�H�����ذ�3R��Rt�,�	�U���N�Ķu��G���GbJ�<��J��PjVs(J]u�Ӹ�0�1��#h� �E�y�N��r�= �4:�as�'x�M�V�4AE\k����BVrk%�nFVxA]���$�)0⋁XLЗ�Z0�e���X�
��s����$.������C�X�;���p��ߌ���T�Ģ������^]����Ǎ�-�j� �p� �n 5��X-\�cBoL-,}G���S��W��6)�]a�)0�處c�E�ŶG���/��:��ma�X�e���z�\$��&�zO[F2�ѷ�aVϚ��H6�=���2�;X�[0�o�ͯ�'Ze�Ҷ����Zf}�m���S�g�akgK��oɩȚ�#��5�a�P�c7	
�3Ks?�V|<��bFǶ�S��5�O��"�ܮH�0Pi�o�^��)����O9$L�1b�SI��S��
ϜWI�5]��Su:R�����;�wbz�c���@���!8��$�ĝ�T�e�&�$n)����n$�C	�Rv��r�BFMQ{8Bt��扼FŐr�8��n^��X�����;&�d�\��d-0f0W���)��z���8�N��-� �:�=��۶
&�ŧ#�Y�u�����b�^�ȟ'R���s��(��i�(�B��&���c�a�Z�˞/i1i��N��S�z|�7���gw_6���e{�X��3L�J����Rx_U5\�nX�2��Z;\A�[�o����Z\�F�K�G�A��l�Cx    W��6\�q
$ ��s}���l([��/���d�-�	�9��\u�m��nUAݣ�dG��k�xN_c���d��8VPt�L���2y�$)���T��t��<e�Uu:����v�'��X��LX������J�L{m�*ٳ��n=�\��B����a��0����t�H����S���q�`�)�� ח���Pe�$V���HA�:�!��Jyӌ��Jt�����|3e��j��T��3�$&��nHS�˻��j��0Zי��1
1�@Pᔽ���rR�ѷ��]��IC_Ն2޼����N����gI�1,I}��N���j�y�U^�߹��7"a����R8�����͑�3٬���[5�����O��<^ڵ��d�P
�w׷Ĝ��������@�]��=��ː_���S�Z%�%ԃ<�zzO[�z�q�Z�x��U#j��@c���MmT�k�M�9S@�:�~�����@�_����=�ټr����X6Ԥ�S��%D�_J�Z���� [s�H�u���{ۂsɪ"ڌ���̐[����EtJ�W�Rg���<�ufF���=<V<�7���������jX�Z�y�3۸f���㿯G��OuЁ���lIE��M�l��j��{�ц��97c;0�
Ny�e͆ ,�-�C
|Pl9��0����Vg|���yYG|β��k�?9�)��AzW��j_�����z�&�X?(l.�ùt�������i��t���K8�F:<�����	2�Ֆ�+PS4Z֒3�Y�&�Y���Y�X5*=��V_T��c�9m���Qa`l'l`��M�����"#a!+Ϡ�[��@�%��ד��	p檆��jI�����������`.؇����
�d�y��h�LEȾ�v��Hd"��XT8b���@��@i�OLz`��PT��Pð���"��hCM���M�g�P��{@��2'���!�`����V�J*1�o0��GS�(�����Α+[ti�i�aK����+�:֩�*�R��Wby)�qi�f,G���.�B;i�3B?^�,.�@�����u�-P�0��h�:��ڣ����a�-{��[W��CD��%CЃ�py��%ZߘR1�e?p�����@��(��qQ�I��o]�n8�x�Z��:�"1�Ǌ&���^:p69it9ncR�r8�l=�G�K
�cr��%��%����@�M<A�����#�b�	#'p"�m~u�yV���4��V?#�U��9I�e��=ù��A�yK:T
z��6j��]����CV�0qQ���л����5�W��@��������ʬ�T�hU�'�
J���R��������i� �௃B�B��W1��{˔xfw���)���0��2R� �D��U�<¢��L���΋�	�m�W>�[|�Vm�s��a$��[߭�2��""�j�DP'D��:ʾc��ȨP����I�oI�����T���S`�r'���(�7}�$.��"۷6;zwh�\,ɚ��)���
��U��Vxf�#�n���28���i��{N�S�"+�̑\Vapfp���*�1���`O��W���m�s�c9=�A�wf �"(�ճᤐ/�9�b�"q��B�{���� >���"l��po)!�kD�a�3��`a�,a2|���X��C-�NsѴN��r���w��"�.��-�p�F]e�����1ɳtk �ڿ��f*f)u4 ��P��>O���a2c0�2DO:,���|_���= h�U`�ɸ�*��U鈅t�8wD�M2����������M�ͣ��ÓU][9�]ܦOG/�#<�Hv_Q�/;���Q���8�'wI�
)��}/<���\�ޯߒ��Z�A�Bp�Aڮ͕�[��zT�뎏�L�x~�R�~��=a���F��o��D�Xx��JV%YTtd8��qGF��y��q��S�X=)kr����ٟ{;�� T�y0Qa�v���셒�h�����g'��Qv�n�\�^r�@��,�t��i�ݰK2dL�X���PPtu���@e@��!o��F(* ���i������l������T�X|��
�C��T�5ݑF���1uc���	0�6�b �������W�@�J��H]_�'�Y9~I��1q����()��ק�^��:�춽��v�����ō�9��S�9�Q �c!�(��;�Y6	4�E��m��k�ᾈOC��v#��B�悑�C�`�o���[�b�傒�o���l,́���t���Ӝ��F+l����f����p;�TP(�h7C/�w�HA���M��^��xt��e����v\?��an�ƀ�=��d<Ty:�/�e!�,��4w��d~<���Q.�J��V#�L7��y�y�K〼�͒a?܎��(2�t -dM�U�9��)>~8��3�3�_�O�@Vt_��aQ��"
�H�GWZ>c��(��%�O䩬���p�C���*��xj�ؠŋ�K<��Ѹ�G��委;�b!�G�����*�'UЋ�H���O����dg�l[,x�\�@��LԘ���IT�t�Z3�ۃ���v��>������`�,�CnS\��Yг�|q�:��q@��,w��U�Q;FG�-��L��щ?�(�>����}���̿D�M@��&T�{'%��=�
p�C�^�)}� u�x�]ᭀj%-v�=}/i� �P�>�T�g�L�Þ�b9��=����o!<��C���tp��dr:�wj�8]���[M$�ч�跜��ˑ���PR�� ��B?����w0�:��ٚ�HM�z���3
foN'O�D��5@;J؎�����,�	����@����mK��W`��ēvHg�v�:11k�>��1ZQ���41#m���Cr<$��<����Ғ��u�|�+'�j�F/T_�ff�n�Ƃ�B��di����Z��j���Xh3�M��0�[6׮�)v�*s0%aL4��I���k�[ �Xõ/������\Kx�>��MA��Ԅk��C*�Q�[i�s�:��j$��uQ�7XYaW��z�Úߎ����}���aQ�fPVࡵ��0䩫���s2"ѱ��U�	�kZ�PN4�O���!����m0p�~�_��g=G�������Ĵ�f�ӱ���o(��"��qB��)h�G�aE�-9[��c_E�/H��IC���� ��J��բ#�!�� F��ˠ��ú�`��$H�yS��B�E�zf�B[�W�;���������N�'{a(v�>������0����R�u�Y��"%��/�P4��M6�۫�{�@�8P5|�ȶ�	�l�fL?�`2f<Nƻ<�xԵ�����g�l���;��]4�`������mU��Tar㹵����a��\)�cs�
�:�#��/�'V���u�Ǭ�#?V�I�t��P�e��0��ko�*N�ҝ�%�%4��6c�9�4Fl�H��+�J:\AR����u��(��������ݐ����wG�βw��fj;�IT^�z���mgH-��	���ө�3��@���p�Mj��P{�X}��݄�]C�����,��Sv1mB��IVWtp��c���0C����o"���t�C�$��q��}�*���4��_�TT8�U޽d(�&�+{@��~�r#�XU���{~)4��x3���i�#?��D0���%����ݖϬ�"�S�֥h�Ҝ�=��J�� ��)�B��ukR�4�u�L-JS&q���n�Ro�����І<A��ݗzHwS=��T��� �)ޓE�.���6�f�}�m����L��������(��uA���##�����#'ql��d%��	,����Q���t�ғE�~��+v�k�w�yR�>l���j�F�Te$��wm�6&ƛ�L:��E鳌����}l��dF}<���.d,i�Y��T�(��`Ŋ�����E�J!.�Y�G��i�ww�����p����*"�޻*+X:D��P*���,u8�B� �k�t���R�8X    k��|��$_����g�?�����%�\�u]�w�@�M���0\ȁ;`���n̐�����������l��bc,Z�{H�D$nU�v�*������
��P
�gi����t��鍢OINo�,�w� ��*�c'�z�l���D�zf�\�:B?��>��|.���Av3������4$�˿�R��/�u�/~U<������9\
�W(�������);��]��LM�%SUÒ�V0������L	��<瞵[S�r1���~��#��]�>���+�Yr���n�/#���w$�C��`X[�;���X5��yH��T�y�;��`ĩ�J�r����Q+��� q���ى>Tٷ$�-�~V�9���h���F�|�Fݝk���#��+��T�ʜڠT��9�YP��,��M5�=�5��IG²�Ĳ�YB��tFa�1�3����N�Χp;��OUF������Oz��]֍�5w �.���e?el�(��+�[���L�
�E;�WniKj�mI�X���UEK���U�0|V�5PV3���`��P�Á�Ě�?��|K���Y��x�g�U7��!�R�T�*S����ja-&.e�z�,Z�U4��f\K�U�ݤ8�P4$����r8�Jɸ�9K��yfF��c�Ĉz:W�NCC�� ���X�&j+�"�7/p����Tc�י��1�$��˰0�l_W$�'����<;MQ�2�`�&�o%����Vy�!�RN�ވ����+��~��$�3�R*Q����;����]n,���,UŦ�y|!����x�=�<�p8�̬��m�"A})�1'��,.K�E�r`uk�[[;���2���{���#%m������#TDﻻ�K�v5�*�H_���;�����Z��ֿ���_S����5����e�]|uuy��\��J��sYDQ��W�4�5o@�wo��q�ou[���` r�h~�p1��S����ŭ�I��I�/���Db�R��6R�y�	��g�Q6 ��2h�<����w4f�0�̌�݈p�'��}k��CX��l�=�[sfj�y,��:ϣ-A������&��D U��\9j�>1-�Ypb� ʉ��#l<:!��bl@铓ͣ�Y(&����*kc	^��N��d-c>Z���CƗU6��E;�s�*���P��)k�4�ڊGn�_�}�/�E�Z�7�*��6�f0��H���D>���g�M
���<���g)6��g����y u���>�'�@�����`T�&��M�]��[+��3�W���]�������,2����W\XB5֓2T~��52x�m2�7�߿���4���ps\�%����0���)�3A����#}%@U�����KVר�H�dSC��Կ�l���t���'~��$,x��JX�s�*M2���1��{����b[?P���x{|�/*0���#�}��n'Rߒ��,� ��nC���V;�X� F���� n�;(*�Í{�CzB���=㌳W'!M�i�����>��l��d���M��J�o�/�O���縼�/"��<A�<�u�!�ws�H>;L0���3�|K|�q�=˃����^�ZaQ��j͇α��+�j�s���y��*�w� �8,�E�ka����l#�R���Z�"�-1D^G��T��5e����EZ��ݕk!�ߕ�C�psLD"݂%�;K,`�������뻐�t ��3�Bg1����ut�6�s�O6��0R� ŢsT��$����4����������	�,�_��؆�vO�4O����<e��ªV����je��g�L����ITZ��G��↥�bg�q͗1���ɹ�'���x����3�f�*��&n^wMdJ�3�/&2�\"n�R'�>���,�g`(=�h��b�0+��l#��-��,��v������t_��\z���KQ9p��D��}?�>V�k�I��� 	>E���
C���1�}�LC���2*��|�=��Mb�/?�,G���>��j���R�A��Qn/��T�D��O�QLy%�Vx�F�g>�$�wNr��>�	���Y��������Z��c�ځYw����ּf�o�p;0Q36�J�+â�hU\؏�i@
���c����g��S+N���}#t�����'�7h/�B�`�D������t�X�BQ���u��(xn-��5�%	l)��oE�Xн�����&0;e�q0���9�#B(k�͠��i;�bD��K��uBB��\T�w��8�6�ȑ�j^��K$WCbGR/��bىd���]h��e�������v����.���`)|��!�lh������ۨ��?�}�u�$`��
\3k�3票eR�|^�����y��8�����U6(�$�������_�ݗ	B.���z��vaދJ,R�gM�rg��49^��T�<�oS)o��y��rt���̮��fز��]
��T
�����~3NZ������_��ힰ[q�Bs�\��,ڈ������L�:���f���2S������J����Т�+e!��m�v���y�������νp���b���5�3?����jFۨ�MR|K�Dj���#���ʟV*����'a�cY˹D����XZ��,�u"�'�|� ���v�x|�_��\��(\37�O
���!3i��Ǆ�}��-�?���t,wM�^c�T����ż��9�?�ʤ]�*�a.,��mm��4	a��5Q��iGw��+�.���=��8��i6?�^��eW�*��U�?�����A�g<I��⒣$C<2{�'��b�x �A�>W�&+���Dv ��׆>��j����<��<�M���([�Z�U����7h���&�Y-?xz��m��c��Pa���7��I�cvT��l��V��UnݞL��O;�c�g�ސ)�e��e�d7>�Iv��H;��C�l�J�r�EK�4�QK7F%L����Ҕ������R��l��YnO��ZrFӞ�����MVӟ�9��n��}?����q��Lf����z��'Vr���&��T4�=��*���w�x��
wفЏ�s?~_eO�ɽr寳XM��Ύ$*9	���ϡk��~bw�z	n�:T�	�U@*������E?��D����p/֎J�t���jV��
����Zd7�Z��h{ww"��Ŷ��Ʊ ���uKR��l�8'T�8B��z�������]�oH�v���_6����%E��S%���V�A�-��^]�i#RD$��Á�%[:�����szǤjrqpvFG5;�@�c���lm��� �f�R$Q#�U�P	�P�Rs�Pb��ٖ�ai�k��t�	ⱀ� ���	����Z
e�E���W��b�e��L���K6����"�������0�Ű<鞀�3a�[����(���"x�=�!p�LM�ƔLg���/���z9��,%��Eے����q�kO$���?��u$QKl�Y(��D���Q�~ҼjK�Yd�,J�,��գC�;�a�/���+���-^,�� _x �>bt/��'"�?!~��e5 �iK�ձ+�{�G���U���>�&���F�v�F�Z��wGpfe�R8l�@$w]-0Hf���eNR�L1�,Kc����Ͳ���I"�I��Ii<m�&���x<.LP�2爁�n�^g��9��{�t��	�
��B��.S>3̠��͵6��ڔ
;LS�����k��2��ku�mb�� ݇�Dz�]�����`7�b�p�V� oL ��)��&�a�Vja��@R�߷p�V�b�<�����&�N}";��ζ�ol>
�#>6Y�U��I���Bʰʧ�e��'[|�O�`����Q�!@�L�~�h?�=�@�6'g�ŉ?���W���A�Fęϓ#I�mK�L5�"g��<�
�Q��~}�N**�o��Ga�֦��&r����s� � E	  =���Cɳ|T"	�ٴ�:��G���a-,	u��AxR1�g�Uq 5����y�Prq�u����5��.y�5刬����1��U���N��tQe�Q�4~��:�9Bj�3h�N��*$�?�֐A5�2C��=]q��D$����V�@��>�<D��Ao�8JTWN+�?V�+L�1?x	ʜ߰��/!�9�4~b5�1s}چҴ,�I!�lF1\����J�׫.�z�c�9�}�ݨ����H�<t�l'�V/~V��H�A(����荆��cB	�f��%8� ��'���tz����K�dAΰLf�7�U��Β
ʶ�CgXB� �n�&��Os���G�tR~�~AXO]b��
&���W>s�!vNg/=gy|N��13��mU���A�"�J��U;:h��&�4�T3�/v����1)ڤ*UU0��m��1�a�g����?	^6C]�$�U
Ĕ�Y^х�x�D�*ȃYaAo3����>e��0?��T�s���ڳ=�p��T5EVS�΍����YH�j��jз:-#4?-��n(7��녌;�$�n�F��O���اp��`K�Uiv6�m_L���8�Uv����@B��2�̨���-�]��v)2��:	 �yi.&�{�~0r�!{'P�4�:�`�{�cf��Q'X �19Y�N�᾵k�Ӕ% �	ai;���|�ٛ�7��_�RL�ю�}ub9�?�!O"����byG춵?,�E5X2�n��,H��Zmr����L~��$?��g@`���7�࡜A+�v����{i�����.�����b��w6���7��բ���w����f�Y/Q��/��D�hY�8v�`�>9(-�R7� �%nFsτ��}_��vl	2�n��k74��U�-,�����ߒ��k$��d��E��Xf05|�U`�Ha�E���V�oP+N�d�Y�9)؋D�� ��H�X�i�R�F� }���q����%�<��R�`�������e�퐓�,${iRw���.ޱa8�;>�{��58��+B�k��a�}�������Q؅�Q7^��<��oI�����v{�Yf�0���EPt��'��1b��%^��� 9AgA�9��w��oO$ϓ�"I�,O���Fq�v7\�G{��w@�ː�vV�o<ʍ2��
4Ac��b���۲�x#-���oUu,�<x���T$a����ƺ:��C}���UY���[o�W�_��o<�'Y���|w}!~���]�򱊼 ��j�1z�$f�F
��!�8�XC�@�
 �+B�J_ŴL@�l6�"�"K"��?(��q� ��R�v���MV�e3�y��(��>g��/��m6��b�s[���_��Ld�-�`�|�Λ�:�r����TS;�g�7`����#>��|������0�#Y�z�}��\0K�_.L�_�BKL���,q��*W�l���'5��S��7���h��2���`4��[� �\����՟�,cVIN���cP<�بp�%�x�F���nW^d6*�V���P����M�.m����X�⺟I�����NfwE�#�*��j�!��f���$?�BD��%��,I�S�����p�j��{)+8B�V����)l�ރ��c�U�pKi��{��}�j<���GM��X�1�U>��E�?2�E+MD�0k���w��u�X��=�?��U/�V�{�/t���Rr7��bo��8�lx8P��u�q������IM��6�/��	��u�K�*�Z����!T��W4/��d>q�[
Q��V���3۳�l6�L}	�i&�u^gӟa�Ҥ`)������+�Rai�O�O&�
����9흖�H'u�"��6{&y܆1 �m Y�`����ke�����+�ގ�῀L�-c,
�m�� �Wx�&@�T&�_h:s5;�&x��&���>-aT����L�ي�.�tb�ܓ��7̄��{|]<h���9j�w0�r��3' h������f���|�n�0��}�F�����G�rgi"��#3�~���rlF���@�)�3U���b�?/Gz�B�_�.H��.��v	#e���F����0����*������2Z�D�g�B@��Z�Ͻb+("Ab�xD7�,llS$�hM�s�K���ma7��;�Q�G�̱�Rm���B��mZɃ�� p7�[Rd��f;�>���̇CK����h�X���F���w�7�fk
^ҟ��CV[�=a�p1h"�\+�'|��zД��p���^�y;�o�tp��@���R��������yѠDG6�zM
aa�Y)4�t����s2.9���������i      &      x��[s�X�&�\�+0i6�Ru$ŋn��ƖIQY��(�L�ޮ�0D�D���6���6������e����O����~n "RY5f]m�d ��Ǐ��ۣW�����?��Y�����߼���k����������ۣӣ~�o�yszyr���ED_��c����o���}���h\������eq�fID}F�E�D�I���1�~�?_o�?�	�TQ�G3�_���8�/�8�&I��Q��Y:�'џ�ߖ�"���EVL�?��u��GY2N�U�̖?�tG��O<��yZ-�x�.Ω�,Z$e�.�2-�qa4��J�<�@�����+:��������{��j�����(-d-�D�x!�E��j�q�i1|���x�I	T�Y\%�w9C���P�1�ڦ/]	uq���8���G�79A0��	�f��{j���/�D�a9Is��$'he1Ol�&�QYT�pQ6����iYϹ���B��;;{4(����g;��P_O�/���u�H��)��@�%U1 ��]9�s��e7��hsqIVF�K^���@��a�q=��Ѵ��,^�����6���Y��� ���b~���S����� ��� @&AOB��/o��7���X��EW3dt�pr�|���-P�9z'��,��iV��@���@����mA�5|3	�6��#�օ��{<�m�3�DP�4g�MB$aL��ƞ����klґ%��:�pأ#�����:�R���N�f�J�Ì'�N���0�sT'�P��j.��y��g������rj�D�Y���	������C�5^�bb�˽fE>%�4vธ��bx�L6���J��l/g$i�'�q<��|�uR�A�a�	��Z�����`��H&�Fo�=:�m�8=�F�1���(�I)�����G�߽u�6
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
��9�-4>[�©{n��h��n��eu(H�9m���.i�/l�����5۵�M�_يI�\�x�5��5��u	�q��+熄���8�&O7�`����������9�3���/�zv�ڹ1�f��~'����Z7�k��wǭ�P�߷U��1�{���(՘YB��םp�6T�Ĥ�U���&�8�Zl�Ȅ|�Z�+.fm�Ɵ��8�S��Ej��0�sJ�+T�m����P�NL��Z/��v<m;�l�\Pg^.���m�ܤ���Ur(~qe���b�m�t\�l�}7���]�&����H$��F<�Wm�)�Pf�T"��<e?4�i��b,1�I�h`ƫ��v�ˮ��7޼���V��My9c����y��џ7�m����W�	�s�����Ŭ�Z���'�&�z��a8�5l���ŉw�W�o�Eps@8V�1�u]��Iz�d�u�kn{���q��s�|g�J]����ST;�������ӄ��U���;��[~�ᑒ�$x:7���D��n�/�L[ׅ��W��>���1������׻O��{�=~���bo�����^�晉g����mrM|�b��u@��7�;�٬����G�H|��SI�KW�����N̿���^�h�,iq��LT�|�}Ih3.�+)op�\�[�ī,�DN"�#t�6��|�����2�N9V9	����:������>����{�h6}��������nEg�ϣ��O�/�.�Owv��/.Q����|{t����\���>w��]�T��';���=QX��C�� ��gwgoO��1F�8z��?Ħ�����Ǻ����Hym�����/��EtZ'��t���ވ�����*�h�WW�f��F߾jԮ~���{��=����.��vq�A�Mn=����)绷f>B��k>�W�˳
�	���.h5�Kb�Ϭd���!#G�h�����>m�ms(�[u ��'غ���-:sd�`�ʮ�Of��qQ�#���S�d'�eC`;L�d��#�ư�J��֎I�S���CE�g��g/$S绳9��H1`}a,R�]0x$ůf���D���P� �o�����=+���Ţ�I7Ƽ���Fs�N����M�ZҼ!�Н��n�VMl�q�Ou* �Å������e�È?�߽'QSݰ�_91��m��bU������/P6x-���&<Ã��c;�<qc����c�����<�r�_O9!Gd|��!�}�{~�͊DP��(�)}T���%�s��w0� s<�Ǜ	�tP�#]F�H!P���,�Z�yrA�'i\�>	N-�ǟ�?q��\�x����]n�V��7-;�ށ�`�{e��re�),��a6�0���\
�O��!�<1�M�|��53�iMȥI
}�7�=:3#F2"�A+1#zKO�g'�)�4u��^����9����s!��6�Im٫3�7�JyS9
M鯭���4&f�6��5�9#�=>p�X� ��j��.oƔ	,��Aڤ$
�U� ��GҮ��nxV�HHҎ%et_��z�î�3�F�?�WL�e��ǖ��`��J�p��ܼ��л��AL�0����<+�6�� ֞k��s���ӳ:n���	'�"�X�<s�;���ӛ�!�84 ��	dԪZ��0<���<�hĚ6���4IL;*���������Н�?��Q��.vOl��-��g�{Vۿ��;�mC8w�t�0T��1�|�+,�E�y�A��
B�^&��\���:w�T��&�(\�ÜK`}KTx��K?�+�g��EV��}���x�c"ٝ��r�A� �7��q&z[O� ,$�Y����M�%΄������'�����<��m���٣A!_�� n�)&^�4]ԓ���Ea��{����>ԍi(���B{�ރ剧�`б�2��'<�^A����;'���踑���`u*�_��(*$�`��tN�)��.��o1g�Q���i�~_%���xrq~�̛} ��wY�z'����?�h�'&"��>˅Y1���y"���g��	Ճ\*�v�h^q��G�Y�\��&�:�Zjko��8֤dv� q�ˀk��A-�E<�^�!@Wf��]��,�:�U�xZ��f'rY�t7$Q�cQ�Є�{<�כ�Ǜ ㌗s��/<�p\x
�P$0���ݲC}/��6����/�	�����0��|��vь:�{鋚>9E_�q��6H��8L��e��� a)ȣ��2ī�X^���!!�U>�.܂9�8�}��{�G���2�2�~e�_51��	@L�6��bq������J?�g;�a�-�������뀖���F'��'�|�9��ox>|�;wY$���g�Z�����&=7����7��f�8'3h�Q���WK�]*|-�Jy��M���t�3UI���{�����~t����h���ӽ����o�G�=~��_�yu�FO���}�=���s]��s��x^����0Uܢ����պ�����l�;y�{���m���;z�T���e�Շ�b��ѣ?���;D�X�&��,㝔죯������%�����WQ����׻�_����xZћwg��//:��@�>�]�n5�z��-��`$1���짚NCτ�F������-i�s 	�\æk�UU�J�1؋0��{�}��������k�O��0�[�ާ��v���=4������ɧ���ȡG�h��QR.���8��97��`{�M�3	i��7� �)�P�kfY��˟H F4��)��&I�ȹ;�G)�;�I	�d���H�d��#(����*���Ƞr��f&�ⴃh�VE4�3��?�|?��Z�>�F���;���]Y	����X�w��{��򇻃&�<@��t� �}&vqBI	D!���w�,u��$��������}�v�H<@�E�p�E���rݚ#�3S�\���ڱ����n��/y���T  p�/���u�HNg_r�w,��{�pp+�6���|g�%)����o����:D�q�5��Y]�rR�v��1;6�
v>"
Ot'��Vl���lE'��>tf�ԛ,�Ϲ��Y�й`��`��V�Ѭb��TA˲>$��%rدpf�A���nD�֬zк��r�$�2��
���R|��w d��i�1�ќI�_���ٷ�R.��-Z�tq�|�>���	�}�
]� ��TkK��>A9�Fw�[�U ���"�R`�@a�8��=�MP�g�f�w�R*�X��௼�{�G���z�CB��AK ��ɴ��m�g��:J�	ij�)�@I4+��Z�pg���B�Z�U�sp�P_���bw"_��+�ӯ�bm�/�p���S�+��Ap$�"�a��#M��+ZwaH�㪶X*�vj`fqǱ��U/@��՘8&�}҆�y���l.9s�g�jۢ��ssMh��0�^���!���1�\g���ѯE	kB�\��`	[�8sX�V1    bSO��z��q��URT۠���߮Z�0��.k a2����x獍Y��ܐ,�E"��D��U���������k��kE^!�/��'�~�f�s����5E\��h�s������ ��*Y���<�{P�]�9�ȧ���u���$�G|[M��av��G#� �u=őE���G�L���W@1� �򇜀�H��SUL���.�m�^���X�uO��s��Z�]�9� ���pZ�/்*Zi��uo�0[��׻�	7�UT��ͽl1�f/%١�;= �`nx��dfƱ�&/�`L���-o��Ҿu�+�t��U��{`��!9���Nj���-,�:�1�5dL˲�5�~�^��\�d�5B��&$���mǪ6��� v��R�2�#W�˨VN�(�9{�:l�x��$�vw��t2��t��_�����rN��=����!�
�5.N��`�2�`z���ʫ��#a�{�S�J�����>w���m�+�c�t-D�ꜽ\r��{����=��l.���Z�<�H`��lR��'���ij����oq��[�>�L�}c���}E��Ikz"���iX�p��P)��\�����k�|+:m�z���_RVb+i0�\��/h��.���4��s����$��;ָb�W��;��M�b|����M�d�1\TS\:�F!� �p�&u��#����@���ֻ��e�ཱྀ�o����b�ӥl}�<G�Km�|���ܘDw�S����,��뾗t���٦��b�Nm�m���lH&��{�ď��w�+I�kh-6���y*oo9�f���C��˶�\�B���ο�B�p��s;����2��k�}�LD��&e�+o����=\�(^�1�|ʣ�J��
Tg�hh�֝H������\ǥ��-���N3�{p��^�{��B��,�.�c����j=�a%v�rT���ws������;+>�)�n۝詄99�jL?>�3���x7��H�;URM�d����,����׈��t�k�)d���6:zL���h����[SԱ��v�5mj)�p����g6D��(Ou��م>7�j
���	�����yZ�;��8�.�2S�"Eh���"�?�-["��(%N��oOk1�򷕻x���cD��9�˄�ٓ� *=���=�ln������iϯ�T�}��8���~���I޾��u�����iw�a8���d�/Y�%��;��t6��t�To'���?�̆��k2Mhms����N,�Y��I������6W��]���6�Zc���[�ǆzD�sug��4+&��1�����bTL�<���g-���$T8$��{�[T;� 	�X^�ѳ'hE��E�C���U�w����Do4�z.�n�E��	���Q��<����if��Nw �Z�a4�O�{&�W~U�K�
.�ۀ��I%V����=CaC��P��<��
���rU�&I�q�I�yƲbl�c�H��+�� �O�*�V,p��t-��P6tq@9��u@y@����s
�]��:�d����:��B�>Vw�����w�{��0��6�%�Z� B��[n�׍(<���ܼ�C���c6��(5�g��e�q�F�t�T��<���շi��]��e��
Ĺ9
����᱾�:,h���������Rt<�_@=OQ�y2��;�$9�L�[��c���������,�6{I@��Q�.Td�+<��&ɗ�s�;ү��-�C�D���/:�2��(zV��.�3������E5�$�ˢ�Y ���C�ڍ�� T����7.�@�:�c�6��`2=5?�B$?���>��Ns�CguK{,�����{���#����ǲL|����x�ɹ����+�DNB�C����\�����F�y��h�x�l���{���#�CF� 98U��;4���.-<O2��y���k�@,.Y\Aas|�Q�J��q�9���i���[�~,h��2M�#(_��i9�0+�z9g�����D�<�&����-��0z�oO?��ަ8�sE7H�5�w�;�{f;�a��?៬w��da�д����}E��Z�� ��y�E2'	oBU�F ��լ��	��"]�g!��y�u�q���BP�����;ـ�m�� �-*����L �u�R$.��䣐���;�W�k�����g�ͯ�l��'݇zPU�U�u�^�4�q���8m��D1|���3Ӽ��v����F�I\�X�z�B�M��(��E.���)O`��5�q����jOE�q�h�Es]�&z�� H����?Ȇ?��\bb7�����$��/+� #Ub�ͥ�5]��*WrAKp�t�&�������f��h� �I��e2A�U����q�Z�$��6��~�ӱ1M��w���;]��Nl��7Q�M��8R�%�c,(�����b@�_;-{o��R�{���*�)��+m�~�Ʈ��En���p7�*'zC�њ�|���95�
�@f3|K{���M�98�Ad{���g��׫����^�y;�_W'��Z�ދ)�4���'8���疳�r߾Fh^"�˴��A�ۚO���S����~6"�I���l��(�@��cq��z��c+:ĕ���y��.�	�M���f�f5�S�	#�f$�4�K���3�5&Y1�]U�O�Dr�����1��}�-�{:�;�4��HG�{*o��L���yC�G<���z���6������l����96�n��l.�ia��$9�9��Il=���%��6��T���@]#�/��
�-j7z�����<c��TQ=B�V>�u��&*��| T�2�$���8S�C-�L{)����J��1��l�7r�Ԝ��O�`�OK�X�jY���<ε j9b
��e�O�R����N��ڨ�+��}�N�`p�N~�)�ɭ�91>�f׋W�ԩ��fʘ�`-AjfIf�(K9|n�>�����$6q�%cu�#��Mn��CV�0�5������;�Y1A��@�t@ksi*�#�f���T~5�i��ĥ2@-E��R�(8*Q��-B�j���K�v�����/��~��"�RK��}S7��p"-ov�lNg�3*{;�f�Ez���n����F��#����QԒls8�U����ʑ�.K�-{T�V�.����{e�}U��.��
��ra�k(:Phb\Ԓr*^�cB�z̪�8�*�4� b������D�ʅ�$���?W<z����G?(�<k�b�8��)c�?s���4k�Jj�qvc��0��{R�'��7�]R��2�˟�fT�s��6]I2�y�V�G���Pz#ax )~Z'�Mc!���fƶ�N�L5�����PS��J8��L��H�%M�i�	
���p�4#��9���n�C=Á�����|
d���Z8�����Jv@�T0��]1���M�y�͊K��{��БF=�_��B���a���B��ȵ�q���9ಎ��+B��Q�/����=��'�E�|a-In��ä� PN�.�ƞ�[uE��3SO��`+�8����D��(�!�a�|�T$���
�Fe�a�έP_�@n�"ń��LF+g��=�%�z	��X��E��߱��$��2�����M\=.L^Y�q��Մ"��yR"D\+�!���+=��e�t�fwR&-��L��rQI���b&��o� �,�lݶ�Ծ�1=a{�`�ӁE����ؼ���-q���(����R�CQ����K�R�@8
�n��X��S�y���Y1R:�s�ߠ+?��Vq�k`��%�1��vQ��9.���AsEJrl]��ZlȲ��ǜ]�^-�w�rR`�Ŏ-[�	���c��x�F
��N� t����dꂻ5�\1C�ʲa^y\��Tr��`�P�"
or1pܽx7����`τސ�{aRPU����� ��V�t�d>��N���E#X��%R��\V�Lt��
2*xj�����?KS� �p��khw�D��sA�8oʃ��ca]���Yf�:��O���6��h�63x��p��!pq �D�b�@��(�!�e    ��T

��p�B�
UñH65�����x3l����vnf!�,�����Z���h�I����:��wWNﻦ���:��SOQTN^@|�|a��h�P�XA�V_Ɵ��Ϝ��6L>�=�����������0"K��+�*$�
B*�:֮.�VǓ
ɞ����b��>L�
�s���YIs���x��� r�+�B炲�\^���0��Ѥ���ޔ��A�i�R$�!�!�cL� WC��<�H�n�Zg����)�z�8��:&.�'+*��Nţ������"Du7�1�����k6��"e鈓�ܠoɁ�L�Ι�8
F�Uk��A/Zj��.�L�C��0�A�H���1
\Z1�3a^���!@-C�En�N�T���Ϡ��l���J���K��Р���*�8�TU'�`\(���\]��(���Ħ��?��R�\z�$	�w%	'ͣ��_�ȇL{�0l�
�٤,�d=W^=�6of�#e�4-ш��A���q
&]�C�az�=y�Ӣ�>�g�tN�Ϭ�%՘(+�,2e\'q���������N�2�j)~f�{��Ed/�^�D��(#I� 90�z��7%��r;����>yԎR�r.V[4T"�|Η?W)��Y�aT����ٛ��F��߷�cA�K�E�Ls�L��sV-̴t^�,پ7�h��3�s -������_��Wd�e�!B�S���4�^+�)�:�Ğ����k	�@4578c��W�~7�>8��J��!K��¡�B����rl���3�ZUL�ȴ�,[}��ˊ�J���FV�=�Xp�c��A;l��&�Nӭ�i��AF�~��v�|���^s�*�L'}�M�w�m�2~�k�BC���~��|U\�z�dѠ��w�B!�a��H���ر�&�*��3���}�gg̒��8�U�]�����
2�7���/�&�к���� )͹'��rjϮ��g�x���(1��a�2�v��}��{K�
*��]��R4��}0�iAx��������iv�j��T��oDv�O�ɿ�gu2�fB.�3��Ȕ�%&� �<휘?������+1R��,:U��I���V�T�!�2�!���J��������x����Rυ3Ly����g ��.H�'8Alg�z%Y�6�L:�ߗR�U@��g���&���5⢄$_�g����"�m��X�.���A7�<Ꚛ�K��Qu9�?
�d+r�1%��,\,^4��E[}�3�x,�g�L<X'�^q�b�2������w�m2K����k���֒�n%�я�r_"z�%��;�z ���	_U�t�����A]{\g�hܟm�΁sD%�m�+�Y��rh�7���&���.��jh<koMɸ{���П��}xE3XU�>�����k��:B���<���Dz#P�eG\�9�kejʟ��R|�`�-ŏ�����5���˥$��7��aƋ?B&e��N���at|��E���t�����?��)�y���C�g���n���n�1�y������{�b_��}|����h����h����h|��h|���� ��� ���1�=F��h�����h�=?����4~��O��	?A�'h�����n��⋧��)?E�h�����S4~�����z~������<C�gh��=G��h�힣��h��>����s|q�/��!�8����_�C|q�/yy�v�O�_�@�A�B���=�l�h��]l��� ��]؁ �  :x�&X��3�I�1�!�8D����Ct{�^DL�������>6������S|���߁~�Ғ�&��\��:���1��v�xC�*.s6-�BݨL����X_�@�p&2O��]��ܲ�ȇ��	>��a'_�p�-G\�	̬�OzR���zފчE��1��;2��1w����>jI��l��ayVTI�t��g�\�X���z�Pu�B�[G�x�G�+c�-���ULxb�k "V �H-����6��E��	�x��6�4��Z� �P'��q6M�=�p�L�����s���Q���^�1xw,�Jڸ�m�xT��������?��*&�lj�b'��Ix�N��$B�'�?���g7\]������z�(/#L��-���D=*&�����]�A��&� Rx��i�j��SH�v�}�����k0 /��y�BJgU;/J��C���t�w���� fWoW���w>�M˞8V8���<���-`���T��x�����2�	8��<�'���C�|�CU��n/�*��?м���A�9��Dn�^�"J�&��\����:� "C����dRy..<v�b����f�S�!:LpX29 ���:�4�6p���O�4�[϶��YF�|�A�"KU�o$m��DVˊ�V��^cܦ�*�S7��{7�o�����`J�Y7��C��&�k�I҅r��l���f�E'��DZh��.�|�E�`�1�&	g�
tZ!b�� ��>!}���`ֵ���,�c�������\�8v*K��p��J�
"R�I����4+N;�VZ�Uժ��ɣ	|D��\t�c��ܑ⺪+��E�X�8΅MA�s�����[�6��Kjik�P�wr�@@�O�u�MXC�If���s�ʱ��!��#{
M���W�-�W��?�S�37PJ>-��"���ۅ-(�G+M��P(���`��b�.߳0�|Op�n����h���MҾ�ۨ�<릘�t
B5�O�6*���,Nn�S\>8��8}�"d�C�$�2*&ʥ�IvV�R��^_��{:����y=�ti���ثxTz�<�`�������K��F(U��)~��/O��,�F�{e�������2/���X�a��1�B�������}^vޓmk����pi\j}����:6�e��1�.,�L��B̍,��Q�x�"̩�����ŋh��BѡB�L_h�**oc�{�;$�5�x�#'<0GUF�n��}X�	��_����~[��#��C�)�g�o�����ۨ�99d����d9y�W^e�G��y-ִ�C����qĭh�p�ِ�"J�	�Ն��WĦ[�˼�X*�4*�:I�(sn�9�N-��ԯ܏5��{j˦m�� �q�@	_��Kn����审8���8����p{B$h�a�5�+�`S��y�H�u;J�ـ~Ȇ�{4}����ny[�[���W���%Ӻ���{<�*� �j��q��@	땰p����<c�	��� 0&&x�YA�LA����hk��- kd�V�pu>��3)���+��6}m~��Q�,���%���\Қ{g����A-l"%��\�t��-� �����J������D�0E6vb���&`�B�k�o\���E�k�i��\��d��&�8خA�K��⎟h���/Xf�;/���2��H�)+��Y̕�W�bED�Is�
��"D'�� �Ռ��%��q-�$-9�]9j������LЪ��5�})�;��`��+�r�����})�:@a�w�<�|�Ih��qx�-^l(��j�p"�>�b�f�PHC��wav�DFC�
L��G��(���To����En���?'�U��$����9�횼�J$���$��>�;tԭ���Ϋs�M�p⫀6)�����f�UN�F�{.�|�#��!Q�Qz^���ӁT^�ܦ�,�Br�.�p�ٜz�T_H��٩wy'&52��ؠ��l��b6���)���Ȥdo�*�R�r�����)�"w8r�c��Z̐5D4��� .�5I�c�YPw�Ic5,���ԫ�>�K'r���du������L��V�T��Uo������_A����66�e�Z_(��&1��A+˃�
�e�F;�_�h�LP�u���z�W
���KtM��WDY�dp��I�F�� y���MᔥP�wae[��^����K/���f\#P �	�2�!�t��oB�E����x��Z
bf*g����.��k��Wt�e    '�s3� j����$d���B�����ф�É�S$�[ra��������{<:�B�%�D�B_��֔�����JmG�U�H��e~�����녅��:� u�א��Hp��<��l4��	�^4
�7d�ͪؓpO\8���x����Y�_����+�������1�����v��up~og�$�,�ZO��i�NHn��!P�!;�BE�Na��"<~6�U`q.Js�	�ؘc*�������$pY�r��m�=bD���ĵV�J�YQ�Lq����RX|���I��:F��H~i8uuenW���O�f���c�I�Bߛ\�
����
�{�-G�ƥ>���<�5���GM��SG����4M꠩�#��[��S�9Ǭ���r��g��#�D;g�j�V����c�RJ�fu��-H��c�8HZ'�F}�%��Lq�+�ƙ����]&��2#�����J�|:�HfVII"���c8^��i̹�ė����1&����I|����-o�O$`�K�9.��M	�&[+��f��8�kɶt�#�&3c_���/�c/E(($AH{�� o7=�"6�"4[m�|�2�d5��ܱl�f um%G*�ã^��:��Ą��a�︆��4 _F�*jVZ0is��k���ϯܶ\Ua�Z>%��H��P"I�l�H���?D���t���VZ��W;�V^�B�������6����6h�C�����5il���Fh~fUUp!��ͤx���*FܟF��Y�V�ڍ�I��`Y�<_�P�v�9�@�^������bQ����%��+b�ʱ+��	3�X�[�Ȥ��^.�Ƹ�������8U~2X3sN?
���`{mOC<.FI)�v�j���Nd~���>Z���v��*�A_�7�;F�V�d�Uc�5YE<�uS��34�}^��ϵ���h2�c��5�����o�xxEL@ؓ�>���+A���=FvW�Y�tlb�!2���K.�Y4P�^���hBɃ5\��wǚ��N_*_ڴ#���y��ƎSt���i�j��ř"+�I�AM�Ϭ�OG5�G�,;�$�m��w�����!�L
ϓx̦uo0�jЌ	�s[�+]���e����A_���I�mǄ�Ua_�+g��i$.���䚉��<�΁ZᣧB��$\`v�V�:�qd�	\״��C虊�@���8?3GLz�ӑ��AT5��IU$0nR��8�]�u���v�s_��� �dQ�Ҽh_Y���$�s�.fR��U��5��G���I�K)����c�UjD�L3�������k�
KRn�7p���Qou�E��Y��|h'���KBXq��
y��&��?���u"vp�%(�Q�C�&&�a"��
��'�$��Ԝ�^q����4���u��N�����\j�|�sˈ	mNa������Ь}h�r�@��7�����L ��s4c�G4�9a/*#!�D!��5��č��k�U��ǅ����Ù��z�C�cξ.��Q�/�,�8�h!{uDK�rڦ�]�8(��7��8�_����سp�sh�G�1Gvz ]��#K��ޞP�'�j9���;*�&|��J&9��T���QR!؏3c$���U%�b�B�jL����WC����@8� ��W���g�q>%��_�E5��K���3sg��έ@�#����D^��	�5Hu�r�?����?)��j�ʪ(�\/k�ޤ��"��A��=ͧYRI ��"�| ���JR�Y�L|�S�s��}_�mI�*����8z0.��!+jU`�PK�<�=V/@r�ӊyG���Qh��Bp���B��������,�#��8],�m1Q��������;	����j8c���*o&���� ���W�������mj;HFT|�<�@��U=M� �e���5�̕�O8V������A�����ȥ��욐��� z�����1�HM_0~��.Fɴ���?�X����}����$@�?Lj��u����xR�bz���$�":[�X?�@������t̸A��p�\ԄT���f�]�a��6��\�͔i����V��NF�h���UbRYȹ#f,Y�q1�[s�!�Qtz6=-�%��ն�~W5������[_k�qw���"�+�o�qj��Pc��4�p{	4�.x!$�4�|2!|FQ��[N�ָY��� ���7�	�F����&s��Q�ݧ�K5H�0	ك��� �p�d%��F��<��H�Ґ�T�q)��M
Ϛ��N�3���v�^��4�Ў�4P���[�mN�kY�8�%����;N�~x�/[��r'����L��ʡrXNt�T콩����z��paq�1�s!0W�ݡD9!�#p�y�l��~d?�6xN�m�d���Y"d�M
��0�=8}s�P�>����{�#*�6 �8�.�4TxEbԽ��� )�L��&��J��ț�[6��t
��fru-z��[�%5�0����f:{�
ٽ��J���e\���QoA�z�Ƽk,��f-�}6Uo�Je��a͙�~��H�S`֎���!��-J���@�z9����Ml��c&	�@=I�2#
-��QďODn�{��lF&�k	�7~�(C���X �BC�2�kcV���f�q4SI�N�qv��$w��U�&��;�z[k�[������n�L]���a��ܶhg��UAKV�p�μƦ��4^��m^����n�|���P�\��37��n������Y��Á����+��%u�ݪ�ABc�m$�ٽ*��Z��
��8D��f]-�݀�bmSU��4q�Rb���7��װ��˷�%v�U����~����UN� �%4J�-!m���? p�^�č�\�_�?�Q}����r�G���g��:��$���ҒH�Z؄m���&�z%�P�D�C.�'�4-�w�e�m���.;.i��Qo�1Gr�eW���?�ɔs��/��iTw�
1�1��M�'l�T��t6x��2A�W�gV�B����l��&v�{�s�yvV�AN0�XBduH�$�pY3���@��������	s!�q�����Tq��등�:b˕���Ok��S���[U�6��V�����W�E�ϑ0�H��G�~���)���@/z���b�(+�~���7��g�ǫ67ô�����jxƾ*[�F�߂�D���s����X�t͚Y��k
L��;:+��c4� L�bÙ=x}}��a3���qKN��y�@�G��&�L㭍�y-�<&7��G�2�Ʋm�Gh2�d��kew9UډŚ���eѥ�!3���c�m~94m5^�:�XvE�%8����˧�<�ua��9�h#43�Wb�"�r��U�qF����G��F�v����|<`�0��y8�%e�.�r�Gqs�4�ǘ�0�O�����=�pb8�聩�k�ECz���C����}��9)�4�+��t��3RH�o@���B?�9����"A��8�)�����pEݓ&(�������B ��͞3�ēq�p�1��:�-�,�]Βc��O���������������O�)D��J��a�O�2��@�J�b�md�#KDTrld��`h���)N�?~%3rc��X�Rt"��QĶ]�����)�z�;�3I�����Ϟ�dj�9]3�2�}S)Iig?��<i������-�Ɓ/��l�zUѨ.�3�x���3�'�d��q��0F>91��2��(�H��E����� 
��/��G�Z8l��V��AbQq�w���T��YF�ŚOk	4� �z�ۦp�Θ9z���vLS^�WL{�o�w�K�E�Ը���������u��&�e��'4�X��Ó)�D&�d��%\�%AK8=��bs�*�w���;��F$�	���ʪ8<<1�X�%��<IE9hC�2QPK����-�uf0'2�?v���ktr)<�Ȟے�+��''i�H���,����Y��u#�p��qT�C���V�d,3Q��    ���
��m:���0��[t^�0��F<�(;b��?��=���������B�E1�`�n]�4D�R*�wn@�-}�� �ni�B}Bd��/.��뼨������n����TTJ���],P��)7�u��
�]n���0L�����p����5�o(���I#�U�oh�QpȞ� ��D*$� ��B�QwH���nOc뀝�y4[hvq�9$�?��.����4|�%�<�-�-v�8��v��+��+��0W6�����Y��q��}x8�;Gd_m��p�,���bl�Ų�q�P.w>"����u:�:���,��6'�G����5�R��8�mb�:�Z���ܹ[8��E�l���r&��X�N�H��=�&~W�:̷'�B|`�=mW�����l�k��ۦ��.҅]�ϙ���:/{��vﱜ!���NIf�f2p���V܄�E3�o�C�������������c�֡�����pn�}�r&L���n�j��i=��4�ێ.���x΂_X[����_�X��c��=%	����P��u�
�]Y�WE,#F�z�x_Ί�a���5����]j�_��	䂦��QZՆ��Z�*	7��7���� ��x��S���>���e9P ,>�2d��s߳����B�7	�L'��ghcr��z�R#�qa����\�P���xQـRT9A�B�x��VB,a.e��E6e���-!&�-�����ʋ^�^����'Q�D�H�\����x�4�{�;g���n������#�W�~���iY�L^u)�eB=m���5`;^@��%ǘĒ��� �A��;Gcm�)�,+�V< ��?��-��HJ,�ૢ
א�$��ڏ-M��c5f��Zʑڿ'�ZfYdin~C�\�$ ����ޙ�ۂ|hz0������:}�X�t�"u���6Uw�rfh�����;>T������gC�aM@���w��	S��a�"���-J��}n9<NP:x�^��]�W3��GV(ȥ���yZ�,��@�NϢ,�'��{Q߇Es[�{M��(2�l9�Q�k++��r�q�8P��;s��N[%ջx�47��[W��uy78���eƖ��rj�ֱ؋�&�3���i�8��8[�R���{�K�ёFÇѥ��B}�o`�˿y�ǆ/�uߡ�WZ=�A�|g)i	B���QNכ�E�?Uz���/���a�(D�ټ�����F�)B���ߠ� �Z�`���ͽ1��Ip��)G
\p�.���c�xxD�
���/�"�Ӽ�H!���Wl8C�j��<��/oa�!��y��G���_cG�z��ʹא&��DZ(�j�Ă���V��M�V:.�N��߁�2B�꼣�=�P�b��9�C�[�.��[*�*f��=3[Y��=)�i����Z674���l�$$?I�������SL�~������Y공�D����l�|�r�`Z�h���B��RuU�h�R��.N/ox��ɖ?!�ErɸJB�\.~J$q�Z@��[D��ʜ����T˴e�&Y�"��m$*���	�p&֌���~z�;�
~@L����M~"B@�W4d5;�n�=���G���N}խ��,���O�P|��/:tp��ﴭ/1�y:�.i�p`��-���я�D�]\<��B�S��ش3\��#[�@�Y�y����r���iߙ�����{��=��Ň�W.�D��D���5��ݔ	��'�H�/%��!Ӥ֢�\�3<�� pa(��Z�@O��4�9[���j�;J)
G�<G�V��Mo��n�-qf��^�vN� ���@0�M�lc
�����LҽM'q94H� m|j*�8l!�SUCn��YH�s��R�6��@�Ϡ�r>h����3dυ�6��$U�.�v"�̇I�3	[�l�ݱŢ$v8Ϧ&d	`�6�<\�>\0�Ed�7�1a��<+,��"'�Zw\�Y5�&��$�#�<�b9��(�V3-�RH)z��k�0&>�\Y�VB=���fMk���^b6	�L%-BT͓�E#_����~]�g�_ s������3�%	c�츷�.���>�>S7&��'��`�/�:L�TQ/H ���ك:��w�C�8�����.K����D��T�=;|۾8��)=IBT�B�1�؈�lu�,e�k�&��F �����uI�[w*�\�!�m�eO��vƿM�)�بVw_���[�d�7�������=��=�_��7��X~{��
<�xL�c���f<o�7g����)�ԯ����L��s��2�%�����r{p;�g�nh�nf�\7�]��n����f�ִ/+0.t|����q�y=�}�ɍG�'-���,���t�xG�3*i�G��?��W�Z�8�֦"t+�/�k��)����������R�tσJI��b�����j��1�o�gt�'z��T�º�/�S�fH�@C)*bj��ۮ�H�	b����]>��!+w9ɴ���#s��l�T��7��W�$̉�QS�HȦ�L4	i���]�Ckt��\��% �x���O"+���2Zb�U���)[�Hf��-j�?F(����L��\���H͗��)H�-.E+8�������٥�iE�Y5��_s'��Q�dT���Mj!6{���y0�������-��Dl-E�4Vw4S	r�]�-�b3��r�a�x�TÅ��U���px+��jW��+�{��Z�RG�ɓ�H�M�6�g���+��್��v��u�B���}�u���鄥�N?�ݢ dB�f;I� 
�o�/��UWe��a�w�ژ�PXQ䧳�O��N%�ЌK��%�����b��T�Dq�Y8_R�y�\[˟�H�vc2s���zu&S��G��W+f\.��"z�\����&�{��_{��=������[�N�}Q�E!�	g��aӜ�n_�D#-�V�]����X �Q�m����e(�*�����b�0���4	�����
�'Qa��.+�LM*7o���Rh�쳭{鎁�o��=1����J��mV� �1����+9��d(�>ExJ��	�1��["�M�֞�V��Aiy��)Ɖ)+��� ���B��`R2������Kn7`u����
P��c&�����ewV�7pX�M�>g#�)]W�K�Ǹd�Ͻ�cLd�o�Qr�΋	W��9��|��/�P�g2'\�Cq�k��,�h
�&�L��*�9=�=��l�3:�����~���	|��{ş�tj��m%�ܯ&����&�;]&
qJQ�t!�v���M6���d4���[xp��݁Iq�,a%�ײC|�"e���#���l��=!������K%��h�æ-�T|O|�-�Kx�����ؘ0q�z�HiI�c�W�`C�R�f���L�j�p�<Q+Gj�,���IB~stLrR������#b���
h�fYn�aj�r���M=qS3���K��s&�,�r�g�|�cN)��i; y*�8�[:pG��&���֪��}�n;S�5��g�8���Q+�Iw�%
�O�����.��T��j�"g������*V#(jr�hr�� 07Z�s`M��j�l����Ŷ]wn�:e�����;��D;S��"WŊ����ښ_��$�|n��^5�(�`��k%���4¿��UC��!m(�6��_
G��&[`�H�X%,��
Y!�y
"���L�$d���/��q�$U�˗�Do�^�)��l�$�x���Y]Y,��"���iu\�mǕ�* ��и(f���H$�p��օ��ۻ��]�	�I1Y���f�I��l��7����O�w�í��S0*�ٳw�K
�;|�G|�0~v�bx�m�����2h]��b#IE%��T7Z�%ƪ����,2�/�[��mb}�
ϋ���W�f*'���­ kc�+r��ł:��r��(�a�e�r����*�qK�(���W��k��<Cj��k)
���%G����#T���(N���C�D�wD�1h7��ՈLu.�U���m!S��6�&�.k�d	���6%tA�f~2�O(���־�߫Oܙ9>�Ģ?����    Df��ֻ����כaŃ�[(�h�^v#��T/N�����g�mr����jco�1g�Ȉj-Xs��[-F�5i$������-���{�Y�n�[�����1��S��~�����j-T��^� �	�W����C)��U�ٳɛ>��P�!4����c�� ��VIFR)�.'͠�tE��ӟ&�����&��0��I�*V��1���XW�:a�y��8Oq_Y��볢
�}��k� r)k�JauEِ��`!ʖ����*7�Ai������6��tR�]�p�*E�J-�j�<Tk���O��`z��%�i��R�%�"��d⸩o�\�[�C����dj+ �s2��8*ĥ���i�D�<\�M�
�����n�mc[���9�q��
Z��-[ή�)�S5���dOU�L0@��@�X�����Po����3�4��ҿd����I���R'����{�}[{]�u׭4H�Ne<L�DÊA�T�,F���JS�a��ҔI�RUL\I��aQ� �U�ŏ%�`8s[P�<f`�3+qT�2FIL`��yyt9Gm)�ˤ��)Q��|�tA(���^|D���DM��#����,��c���h�-в٨��n���Ht� �=k{��T�6YgF_�Q�
*7����3N����W�ȷ3��i��uF�Q�%}���|Y�ʥ�1B��v��OI2�����'�[�ݺ}�`���.`��3�AE���<Js)�μ^gf�3���e��-�}�%�:�-�����"�8X�����8+�j�zu��p��W:��<��5�
��% D����4#U�P(i�%����ǱA��/�6:aM�_��L���ϗ���\R	�������>.mg�OU�ܴ�Ė��j�`����������}��}��}p�<x��>�s��.���F���>�~�R�����^��a�u�2�����>�a��HGPܨ<�q�-�xA����%�Hc����>'&�B��=�^���ghH���w��g�8'c`���)�((P}��r���jP�,wEq������T��xRc�0������hw���z�]"���c��c7Ë�9��|�cP��%��yBV����+eMK��(W������f�  ���"i��U������T�QEM��a5����)dJQXDk�����	��g�h�6��m8����������H�g��H�����tk�:9&��D�1LZY��bX��9�rR�*#�c�qS���%�p��+>��O�ǚ�S����j����p=��Zu}M`A�	�Roc(��sW�+�NF���]�#��Xl�M&�<�0Uƨ�Q�f�m1s���G"R1���v5�#�P:7��Z�` i{�S�S�Q����)U
IKsH�׹g�KY�~�4E
��w�� ؇�������C��/D�ƹxf|�y���j��ũ�S��=�}N!&�Q���E[L6��4dh�N�P
	�fR� �ۡR�w͘�I�Y�}��6�'b�T�*��?��|s| �v�!1ي���QOS�=!�\�n��h/���8�̊��@\:]��/CT��xWH=$�4ˊ���4�F����%�r�z�D�"���̼����$�,F����|��K��I�Z�J�i�*t�u&����fD m6-�.�)�����Ҍ��p*8,h�ƣ*qCQ�\]^�2	8��%4��W�9�Aߌ�s�k�]�76�\�ВŐ�Q��������@d���S���O�Gd���GX�uT֟c�����'v���=�J5�h�K������rE^1S�/�W_�f-���.�6`|���WLa��2+��RY2cD-	�}� w�w]k��9����4�q�
5����4�53-j�HF`�P@C_Utt��G,�sQt,�����?;���}��bv˹��b=�� �iG��}R
�7D1m���8I��ގ�����C�8(�3����'��q���
m"�	�8�L�7�� �A�a�HsGFHK��﮼ޟma�_H­�QO�kZ�ӥ�-�I���U�G #� ��Эh�V���6����C����O����6Fܜ�v>Pao�0��>��,��9�����ja�]O���R�e	�3@���5�n�X��b��f	$���Cl�iؑy˺�R�#|�q�� ���M
a� j�]�<5=��ҭ��ݓ��p�� �f�i��&ʇA	�R�T�4*�WH�yB��t�a4
%���Yl��3S%�3�nf!wǒV�T=8�PN�no�4C�B �����)v�?=�9;�� ʢ@P��ˑ�%����xJտ�L�#���"�����SYY�I�gw1%>P�g�{.�b.(���Ԇ��ƌ^pց� D��Fxu&�ԸZ|��n!�~�B�hB���i��-K���Y�P�ҕ���9���l!-���s-OB�Iqp)�;E��Ts/s�����'v�J�6���F{��(G�xF���{���↷3��8k��Iп���*歂�_�lV�@Ĝ:6$���CU�Sfͩ�����F'�� ��R\-qq� ��D�ȁk�u�M����2�!tP�D)�וw�QW�";8M=0�ݱ��|!�S> b��P=5���eZ�&X�9tt5	�5�Ff��dc�c'�;�z��	���D*��|JE�0�q&N�b*��o�{���;,��bA������)�����"КE�-�'��^m-�u �.K'R�#�(��X2�ת����t]�����5U>J�=��҃���c����Os#���Qe��,�Yqk��(h�
�&cU%=62��.���;�ƍYc��H7\���a��.�c�0� �I����]P+���f����d���f�D0����Ք���GcC"Or)��>P��#	8|j���õ(���-$uۃ��8��0���Ec�[�.���co���>̢BS��W��v��M)�Rr���<"�K���AE��[� b�)�-����\b��p�Z�W3���~���w$~wt���ߚ�ֽ��N3���T�bNi^��[>���q��
���{�h�=�75�Zc�j���b����o�~�DD����;<�����qF\-�2�n^z�����Q�&GQ��u��W(�ےt�	EB������|�'�ȃP�MM�)	�fb��{�"C<�G�AL��2����Qj�v@Sϩ	�`5x>'xh�>�Iͪ�X��1�s��\�9)�rY����T\FJ6��.?���HA>~%;�!�gG�a��j�N�����'h�B�Z=,6�(��2�i
f�f�V�/`\���Yx�`QN��cX�6\-l�!��5h�?�u�!���Ut�S9A�_���UTVu�W��ۡd�Yo���X.{o�[��h_�{��qn`^�b�ؿ�R��f^��q9�?�������bM��FE��%X��"��-0��Z��"5O�&�n?d�-�C�`�t��.�1��$ƹw�TK���cO>Yg���CzS�`�C�+ǳ�����|�����e)�{*���y����`_�+0mgЯ�~�����Cs������k���:o�gf;�a?����!���������������l��̖�.=_rۺ�b[��[����_��Tͮh���������E9a�=��6����r��^�S�l��v�|�6_�I;�\�!�Fb�c2��-�)$��,O�����\6�����,r`�(CX�xRi*�~Y:��Y(8���s��ᮘb����P�x��;N����|�lc�=�o~��*ח.�ַ�ylڧ�6����s/:�
#x	V.l�tk�v�ҭ����}�����oXXk��;��8���L<�/��eq�jC�1A�ɴ�rD9�K�6r��G�S�q;[�Y`�>����Mg���T����t�Q>�|6���������U�<�4{��x�ʰy�/ �z�g�����R8�x�҇ڞ�+�OCZ���:�|C�,]a���:�S(��k�    N��$;iC}JM1�F�8�=6��Z�nt#Q~&84m�Sߠ,4��]��]*:k�T�ܗB�k$�fNN�v�m?�n�+��V\��/O��\�QHgn\ӆ�����{�#��feAU�`����7m�Ǳ�����f����=G�����S�s��z8S���/=��@�Q��u/�Uk��IXJ�ۥiɠ�ɚ�Vq��= �.�j�o^�������+����W0��A�����ba71A�Z�͗_	�V^�N���F����)ǞR��}��w�觖���D�^w=�ڈ�Mˍ���<�JP����R�Qi����,���e6ҠMqXUS���0���7�h������|�	�zaG\!�9��t���x�2��}]{]=��}���^���B�z��]3��-�Q�Y^7��3.�"����/�bw���\�G��o)v�Τpsp}6���_@7W	�L�lB�]��x#��D�({��m?�n���߯�m�:7t+=��p���+�Z�yz��4�"�Z�*k�e$���F�̙��6`AYb[x�%������׏؞N�CQ|g�����������Utr���������s5��va��63�$	
��.�T�q��Q�A`�PO���Hr(FRk���7���m�6�D֞8���i�pK�1`7Ȅ(4~mi<oIg�'�bJN>�A�K1���di�����	!�������Q�I��Ǳ��B����\�WU���埪�� \gT�:U&�ۨ�,�ST
Qb�'X0��_�@(6�i�nQ%6�<�����I:%Di]�d�BRm�r��w�K�0��Sˋ�_~ogK_��Ӹ����>�t��	�9z��7������^�Ca�����D�m��g�4���<���7'K6�V����Ҵ4O�[�N1��7��$�2��ސf���Ƙ�	��s���t���^��ࡏK��2�H�#�~���sʈ��G ��?C[r�N�=W�*�(M�A��:0sLd��b�r�83����������OٟP���e.)�rؿ��{����HO��3C�x���};��#PW�c�o
��2���%;1K9�k�.c�0�zL��i�A���;M՟��)��h��Wc	/��$���N*B��-~0���?g(jg�Y�"�H(@��l�D����+)���~���6��f� �IA)���"���Bec�?$8Ko㱼���؛�F9\����m� �M�"WLSݒo�%�yM���W��i��L�J(+9��5Js�v � ��lr��������-�3�+��	 b�(d}2]�Wh���\	%O�%F`?9��wT9�sş���g*o�W��i�)��3*҇�ڮY��A��xs�ʪ�(w�Щ���� j�s6Oŀ��	 Hk��<�}b8c���i����N�V�[ӎ�↼T ׃�ו�/W�M��7��>K��=�K��E%'"��A�p��Z���b�;/�11U� JЪw`a0p�a��\!^�1���?O]Fm^������2��J*@��T,~� �A 5�s��p:`� ��ͣ��K!�O�g�k�v �6Ɋ(��>�A��%X��[�3q��d4�B10 �V�'�p� k.�ڤF,ͧ
�FT����7��6<��'���_� Ua���O���T]�W`��zwT��A��V���Ɍ�X�0'�r2 �N��ڣIn�G2��^�,RJ�M�-~�φ��L�U���9ȽdL�r�5�+�m��b�L2��N��<̲����6ܖ�fs}L�U S���+(v��b����C�ȣw]��-�~�=y&c��Kv׃<,��k�����'���/��f�m<�;�w���KM�!b}1���WU�3���_�2"/�\�(QB�,�T(�81n4�W��f���B{J�xX�&M'`��B�U=%|3 ��-TP��Q�t]��d�q��}m�� �	��hG?���������w2�-E�X!� ��$l�K��Yvc��^�z�F%iC�'<q�;&Xi!�MA�$�F�Y�SŮz���=U��c��œ��s���d5,�#Q8�S��f�cQ=�Ǖ����!c���bb�:]-�b��Ak1l��7���R��� ��xt�8:�5k��g�PK �p�[��ׄ��qe+��r!c�$#�!��Ye��u2!���:��@V����
������
A��C8�����2���Z������V_�5E"~��	=�r�Z�T�D(K�7�C�は�̪�R �j�؁�]6�0��?%��"���ڐɱ�:;�^R}���jX��o����VT��5Xݖ&8����6�4�{!���"�4�\F�4�= ��1;�2��#�0�ln\�ۣ*�� �P�P���h�1�[��Ĕ���E�Z�o������w*�Zf�5��főv��6��I�~�x4<]��>;���K���)n�|'�èJxRpИ|�ŏc/|��(/�d�K#���6�=30�Xg�mo���D���1g�q@���ۦ���5u����*<g�Sf�ڡ� cB�!YJ�F�e�����hz,�.8�aU��j]AL;�rU,ż�T^��
���"�pm&���D�^a a�$Z����#��,Ȗ�Y1辏�(�-�`I���Z<�nf�k	��h�8�-d�֯$����(dt,5���[�T��%�X1�_s�<O8��=��TΡ�����7��@@��L[
�PT3A��Dժڐp!�Ё�7b��u����7�!/��҇h��/\^MV,d)3�\`�}���\���҆8\�PiO����<�X�	�<��i?]�%3�Mq\��XxN]F�X��^�қ���f��b��t�՜h��|(��;(��/�mҫ&�W����i&�6c�n�����T���	:K2估��<��D��
�bP��/��VR�{Pb*�7��hz�M�EBjD�����~�r����v3`�Zͅ=l啅�Z�2ow
{ɞH�M�\�+�=g��S�d,K�m��H.
�|%Z��Fr�[o�4F�"��� �͘�?���2G�X�ܯj��"��
@�ȴ�n̥s1�����$7nk���p�����׏[��͚Y���ʦ"���e�%��.=_E�n^SAU���CC+NH}P֠��5���o��Z:w�|ؒ-���Ne%UW�U�3�*�ݸu��*Y�%�?�NJ-��K�jFţoν�����t�Gcd���:�@W(F��'�U��}|�Bx�ز�`3S�y�\"�tXb��KJuR�.��<�4�B�K���2�^�q1�)@���bt^&�����x���!f;ׂz��IB!���o\��,�Q�%�$TGL��$j�VѼ1��"쌭��q}�1=�ï1��1�X�.hG�D�$�@�Q<����4�LJ�`�K��j��[�$ENH�w��|pM.G!���2�U�����i��U�{�2:���u7�7�Skh�%�mZW�:�2b�n��
H�P���r�s9A����LStNM� ���Us�̕��sYd5X �m$���'�N�ű6���s�����Є����:�� ����O߫_d� � �f'�+�#�_�3T=@������cQ,�V�d!�N�}�%�H�-��w<�������7~�U��Fz��y��J��e��o��":��8[E�V����p����}��jo>�S����Bh�XG��FѢ�N���d ׿є�
؂����߱4����3�I��[�ain�YX	�pUCX�Nt���l���P7%�%�-��MsJ��7�|�pO�3#~g�c�P�6~3��%�^t��²D�-R[,��s�G�a�в�?�a�ߋ���/�(�B	ዟ!f�L�1^Z��4��!��.���|��YU���|��H��z��G��趵���,z��OM���E�B�L�± 2C� �m�jc��tY��=�])myM�ZW�z��1e�Q��!7H�,��ҔC����@0�β����JK�    �il�4��Y�$dd)�{ө�=��z����V���������AL��&̵T��=K�a��oS�d�+1�E�[�UF�n\�M�L膤��-�3K=P�h��7��j��P�]��i��KEdB+N~К$xq��@��BYi�t��	k�>.ǋ/�.�B�jF��+���Gi>8�o�(��׵�d�j}�	�gX�d�[M(�ʵ��:9)�����)�&C��L��������.i��rG�����`���rl���31�[d\:�UiB1���Ƹ�8�
��ߋ�f6pT,�nj�(-��.�UF*x࠼K��:*�2e�&X�VLʱ��zB=�)�No%�Kbc�/��{�f�JDÿ��J�Q4�#�C�i���pj���zl�^���+��/�k2dId�P+=V.~��pM�,�^�p�'��/ц��z�8��E,�,Ut��u��r�/�\����4�p� ��!'�RF�L
p�R�,�s�����z����R~seC��s����1Ƴ�a~�\���D���e�f�6)f�ߪ�-��:K��;�ʝ�j�� �ͧ�������m�z�����.<&��2�Xjp���CB��@&�ɡ���2qy$Ɍx�P�6��Ȭ��WJ7�b������(�#շ�{����0����R�6'��D��6�a����|�ęZs�̼�e�2�D%��
1��zL[��<��)����$[�4.�iABm��y�IV���%|B�n��xy�����U�ZS��B6'�%���!����q�C\1f@%���_z��`���%���g���~!�5J�T}@V���|��A�$P@�L;���ǐs5�W@l	�`<}0P��mw� �@���h�ŷ`���t�,�HS�eb�d�x�qD�w�B�i�T�'� 2���b�А�%*q���\$�1KFd����$�jVg3B}$�KP#o�Z�A�;�Y�W<�@���j��#�:����	�Q�,��"�I�P>�h�Q<��:}n��?�s_�����MPH
Y��qe��4�#KF&�0~����PfXn�0�;�ۤC�E�Y1BU��Ԙ�Z/�+�C,��Z�f�C"!�\;�)�!ށ$�~�g���PH�D�΁�����f5l�ɍ�hM�g=�ٲ�P+Q��3G��hT֟�k��7�h���r��#�N��W�`T!p2�Z���IC��t\ �2x*3V����ތ�����~%w�YJ�2�l�9]�t�f����$�I������:�%��V!;�r�4}��&�i�{񩄋�dQA_%c������`h	������]X�����,�G�jN��͞��#��3��+х= ����� 3��o�e������k `� �U!�a[(�w3����w2�:����]�L�z�C��	��7%�]��A$���jf��w�͔_�>���$z��9�qY����;F����ۀ��K4合&P�؊*"
�H�y�]�C�m}<�#����z��Q�&AЫ$P���C�D�f^&��1ZH�8�!�o�
�Ud�`W� f�q�跡�|�� �n���bV����9q�D�,�o�G�c��~r�A ��t� M���^�T��MV�7������?���h��{��ؗ{�g5����xK����P�"�j��Z�l������?�o�tnQ2��>��$+�j\�q��a��8�;t�}��M��^�>�?lrWʁ*6�>�
9 0<�����L�f�z���W�,+�0ң���P�qj�&���1:��)��%U2,���qN'0П̏�6cI���0���R��*HAGeGkĨ-�8|[�C)�ΉDI�R�Xv�$�s���yy���� ��w��!�%�V>X.~ȥZ������K>)���Ql0T8�u��= �
��:��E�LK�3|��̲l��� .P&}���7	0�f��U�=��l^ӧ��]�i#���<*�SX�7�":7r���R4�l�d��HY�A�hJ�g��R
S�sJ��������ɻ���"�K5��<��#�D�T�`��ң���1)
��,F��3�7X��q6C5�	�3Ks�( ������ڜ)�O�
�*��#�a�6��Bk��K���ՒK��=���%�g�=l�ZY=%۫�)�/a�j�V8��%`�ۢ�����gA�l`Fk#d�z�SL>��;�w�`#q����tp�i�X��$��V��=f�i�q������p�I��م��P���"�.�-�Wť�&�ʭ�S����6��K]�
H�5�fz�m��R�'�_R$G���t@.��>I�PV'�{\��/Z[�gV�!،{:��F�B�Q��������᳥x8pF�J�����'��d�[�G�?;�B�&K��o�08&�Q�^�XNО
���]�y�ɪ�N�{��T*4�gس1�j�E���q��"C�*�$���$�� C�vu�N�\W!��,�GT  Ϳ.j�ݼ�|^��q2��a0N<GfF�Ij��4�F�trX�����P�F@RB^p��g�[/~�`�w�8>Sྐྵm(T�����b�*i����1�9������h���pɵo�ٓq�zʫT{�pY�4�9����In?V��ޟ��fvCZxugR(�2����>���������FB�`a��[5V=- (Z��ǃc�қ&���$)7 @��P�Z��b"rB>>��C�#曀0
a�$�pA�@C�6Z�ٍ��'A�I�� �35�@-�8r�,�p~��;��2�R��.���'���A).ҾEI�j05n0MWDb�(�@�Թ����@8��Vŝ�Y�+_E&�~R�UCc�������#t�:�����
���Y9W�S�;lM��!���N��3*���@��ZnGvW!�3�#�����[Q�>*��K�]�F�l�����U����<�P)��!��$ Y)Y�8�R2�3�b�vq���.*��r������֥�4��rӜb����Tj�i�/�X�u���ƶ(
���趔	,F��4u9�h���A�Ф[��ts��L
!����*@ �� jBo�/������"WTm���j-�L\Vhx6�����R����H(i�M��A{+7��!���`��Ɲ=`��9DLU`���2�R_�.�)B���/ ʦN�&�I
P�����i
_�Ҙ��x�ۗ�җu$?@g*��d �W�ˠڙ"��yH!���E��W�9�P1���tg�k���{f���x �kN�[���S��c~ҳ2̜�0�h��D^�2dE������`� �c��h����A_~�o1��Qx�&���9L���ZC�"ܔ5��(=�RA^�p�}�������r����߁��Щ�ze%���:��9��V6�<\T8�Ļ�~���m�H�b!0Ps���M�R�ҸH�� T�Q�S^�D>h����4���We�T�D��r���D��J��9��瞁9�*2J�`)�̮�J����%�9
m|�X����0�(`g$�2�`�" C�b�'m���3�����OR޶Z�\sB�^`�P��@P�e���d�-4[��t�:)Vh�,<�g��4y�6k^觡�޽��Ky��q�SG�4���W�� �m�EK�������ڛ��?�����a����,ɸd#9L��Js�<@T�9�'K�DӁ�$�F,������%�9e �g���T��H�Dɴ�Ĩ�َ��S+��z�r"oi;0��ވ�"�Wb�d��M��� G5�wP�M>�Ύ?��Po��`�%�Xb	$�$6�m�D�%C׋3%}�V���!&�(�@�`����X9��S�Gr�\�7P����v=��.B=B�Iy��pV�'L�	�|[���!(�bR����":G	67Ot�}��l~-�mBiH#̡1	�nP���X)�z��[��,N�E�l,bEs.<Ԓ�s���|���x�}0�zX@��4�Kҍy-I���lqA=s    ��炼N��d�,��nt�]�ϬI����E�%V��@R	qN�� �6�蹐KL�_��2��x��]��3O��Q� 8��B>�3Q�l��}��D�S�J�9
K�vF*���n LllOd����ekF���=71`�	�IN-ݺ��6�#|%f`-�P����-����e� -�y��W���!yp�(	Z��@O�&G�f����&��9�VdqbEC��j��8�-�|CG�0?	)W7�g��Mr')kɃ~<�d_����9=?������/��vw��Z��B)�-_��D�������՛��w��Nĳo����Kl�⼹��u="��g���ǲ�����Hxm��x��]p	x\ȉ3/�a͹��}�W@��g��ؾX,��^�&D� ����9���V~[��g��cl5�WD���Q�d1P6�J�A��KӔ�eӭg�z*��@��Q����nCP�Vt�����t�^4|l��W`���C�S�Z�9�:�������|�m,~�	ZD
m��}�C��iǊ$~t�������[�����TB��eq���8�mW&��$�JSğ���1c�c�uS<����y�Cc9K�sb���i�@/1Կ������e*S-sKݝ����@�[ �V�y�9cx���,�58�I�i��G/����'�7W�݈Y���o�Q��M�Q��D�p�)��+wQn?i{��$�[�� &<� �X<X4q�%D��Y~h)<^�O�|��K�Rz�C��[�{s�{�D�)�fŀ�aMqBrx�o��j<t�S!���7T8�ڂ���Nt�����j���M�lէ����^�GG��&��<����Q���I|�z\�H(q�@3i��Mx�bF���x'"qCe�n3V2{걗�gϐ��g��<�����rVGR�����.�����c�¥���ʰC�⿃Ӂ�WAH�I�F�*�{<[���;G��G2��?��'�)�m�;�9�lj_l �ooww7��J!���\A뒱N���`�l�k�_�����^�X�,>͡@�> �� ��{O
\�����yG=���'J��؇���4:3_҇��� ��/k���j�H��T�0�N�ʔ7�dҘ��3m(\>s��%cK�H8c���'"')jƉY�:�L��Dz#W���l
�鱍^��As���=��N&5K�υOb�d�M��0<��,ɲt�n�_�$h\�%�����W=#!"Wn��9i��+�@T(A���fB�&���(��~X�U!=�J�⿜�5f��hc:�8�.U
��z�Ȗ���Es!j+Ȉ@v��E��:�dՖ݌�W���`~"|�ٳme�`����]ؼ��z�W�G�tH��=
��	�|��%� �yo�f�+� �N�m��5�7m�����:k/�qVо��k*�%F���U*�eǍ�J~�o�WoN����!�.1�Ct:`�C���7�h
���s��k�VZi�D�Dt�=��!%��G���O\��T�L�5��h�0Z���p:�J��]���n���վ��>�C���#�}.ွ���A [z����a����Vi�?� u���u�[�1&s�>�ؖoR=���S�������ʑna�bɜB�	��]w�)��+����R0E9����cD���VHln޴�����/��2����{-{7ؒ�.W8P�W�	�b"������%'�F��O�CRv$��L��emV����+��ŝ..~��\�DZ��jR�rF5�=��(h}o;�c먐05�&/𔗱RI2�vXZTiN����M�n�yה��1MqT��|��IM�-��%'�Q�4�HNUUP���`-ǋ/p��ɂ� �C(*n(��rA��A��H�tܣzYq��LnT@��\6BߋÒ���3�|�r��3�\Re���k��r39vzMp!�og��K8�c�>��V�8�#��G(l�;!��g�g�	`[=/u��?�}#�Q�1(��u����X��yq���wo�!�7W��7�N�m�-*�4Ov����i�N���������� �J���۵��Hu� =�ԋ]wfB�o2M��K�ؼ|ʈR���'{i4i˦<����ٔ����s�r�/#2��ވ&��;'�_�+A����	��O�bhcP���4rh�t�������,��kg:�C�7�$!q��%]���4�1~�=^y�]�D��ɺ(�ޛoZy�T�2e(M(4@�=,��|^*վ�j�w����s�F3�M�ENxɌ�C�w]�R���@쎭1��}f�N*
���I����� �$^c6�����<$i=�Q��<�(t����N+��ZU���P}zj�ŜJO~�?���q�Q�b��{��Tx:8ŧ!0��`6ʥFe_�=,ٴ{��.��-�fB�����3��
�2S#VxYٹ� P`-f�uY�=du��
~d�6��^���*�seP��������D���5�,��
��x^�!���a�sH)��w�V�&����Q�}�AK��U`IǑ�fC��]�Cm��p,�-��(��b�fm����6��E��a%(q�j�"b��!
f���v�1���(����R���ԗ���v�� .S��'J��:Ͽ��AS�v�`!��M��#�4��Č�!�1Y�]-����6-׮��9S=n�s��R�wZ-6��4;<���t��n�1:�k<�F�$�l�VY=U[��mtI�H3e}�C��r���β�8Y)@(\�tX	����:ۯ�"X�g��|��s��
ZB�q��|p:gW��]��w�� ږ|���4G�-�b��bd+��9@_��%Z�f}�eL�q�(f�w��<�S�Vޞ�Xv��`Y�ZԱ�s!��yᐹG�I�ŏ��y�p?{��)_��� M��4�,C����l)7�$i�C��*��<����ЪI(}"N˕�p�>DT�mG��P�� ���#?GDR:��*�h���C���F��0�㳬@��2�ӭҦ5�6TGkP��,5[$�Z4��.�H
%�i��^8�a���tyם�[�k� #���B �,�A^�zB�m�O�dH���� x&�b�&�LK�ț"��nS�h���|�0e�����~,"��ToR4I:��Z�0�3@���Z.�l�B���IJy���򨽅���?Q��4p5��\�B�]�M_Y	Y�Yn]�Pbius-g�pR��@�KS�iL�Yf�����d��Y�����tuY;E��o��;t��O�:�׋[���Z[p�
^Q6�Y�����w0e�:��QBC��a�K!���Q�|\�1����������/1K�wqV \�,ѩ�DI�[�!4�y����%>��*��<�X�P{�� �b�@f� E����t�I]�z��u���<4��Ha�[RP�3	8�Va���s�I�Q/ܤO�v]c܉l(��!l'����A����n}���X�q��++p�Z�a�{,	`4� �:y�~�$��oN!����ےP��LKI.��5"%63z}|�5�Gdu(�nI����7�S�`H�_���tN2�C�&�����;k����D�� ]gOIR-*��Xv�$�K$�A�0vVݪU�� �Mi����� 4JYUWV
X�v��%�y;I�"em���ιY�6ሣ�(l��	�]�%\�xd��!
$�S��-ur������1�D?�>��	@�u�ŚY2ƩR/7�A���y\Ç��#�e0� �y�X��9`GC�ӵJ�É0@�t��&A�����i.�#W�qq���Fk�S 4h� �=nД���8\Q������P��Y��E_�E&8���Q��`�v#�֔�f��!/|�pr'tFT^E�� D���G������⽹��P'Fu��)3���_�
�/ �21e���ؓz%�~�ͨ��� L���I1�5�'�������iǋ�����?��%#�g�&4��Ä����L�4�Q̳�8�5MnL�P�ˌ�]q��p'��*    �Od�]b�#��*� |�O���S��]^��0�NQO�H����}C�a,^ky��Rb��/~�hf1>���s!�u{�^9[����I��k�E���7�l�C N��i~8�����TL;��\����>�U�	���b�:\�ڹ2ߣ��v0-I�&5� ��jD��/�;Q��9�`C�E��4��9�w4�>v݆;F5�6�3Pͬh�q0�����>ǯ�������.�[�N?���:ߝ��ûSKv�Vyb�4CQ�b&q|˵C'���
��pTpW�x
Ǫ�����ĸZ����S�G�?�߶ӂ�a׃NJpa�X\F*䢟���I�S�=!jd��ڵ�Φ�T�i�!�O�z,�?�%~�:��lݵo����X��T�Ec�AeO+�s��]��K
���R��0r�	�8��a�z�+�`:�N�х7c������o/�lh;+�tWwP�q� ��M��^��z�;+��#�(u��,ݱ#��%��v�;Q�#-�A	zU���x�#��_p�1Hw� ��Bh��m���n����NnӶl4�;��B3g�A���6�P�DB�m���=��ks0�T��΍v�R�.�Ut��ы�V4&"L����6z����ˁ$p���ڛ���~��v�ۖ����CR����,��u��A���Ȓ��ʖF��m��i
ʸ2r0�Ӡ�3�-$E<~�������Dh�@
��)��MaR�_�m[� r�d��\����Iõ�/��ڗ�R�s��ƎUQb�^1	i����J����j*5��Alu�e���|]ѝ����� �];���$|�
�3	vT�R���i
k�unb�Ew뀴��Nf"=�V!
&O�L���{����C\Q~2`�g�{�*�e�4�������b*��,���l=,i6c�H�<�+��Bs��8�C���9��mK@s
]�*:C�\�t^,_�:����h�iٵsz���� �m%l�;�*���Ơ>���QKiQ���F����u肥]��q��zv}�w���|p��������뷃��E��uy������~��(<]����ׂ� Gp
���W�v�������7���ˍ�N�K�C�,��d�Z)�j���Lgx�*'6�q[7<t#�۫����w4���/���`�	��T:�5ej3\S�v3�Ƃ`I�!�6l��XIp&��rX���	�\Q3����-��y���� �o��cc��J�]5����l
{�S�b�n�p��@��`����	
������Y�N�X�Ҫ秝b��O�E�[.V�E��X�G�*��`ݨ�(�&oі����S'��ZWD�g/�e�+E��X]�A!s{1�X'-@���.	�B ׍Ztet5���}so7��])�_'��'O0��cNs�Q�q�A����3�?�SIɻm�0��`���y�!|!��	��Qp���YC�GQ��+J
i��b�/�b:� �v:��;�@pc�N�D(_�q_��T+�����j7��6Ng�]լj5�:�[x���b�*32���̱
�Q	M����?�]���7��ᝅ-~>����,���^R���
�)#,֭���;�+EiC��h�#
�*Z����Ī���Z+���Ks*>(P��
ѩ�RM�왾M��!�HG�8�jVg��|7��Q<ؓ�s��o���#&��W�p�5�i���ަ�p	��4T-�����,Y��k���6n	�Ȗ�J�:��>b�JƇ�?f����u�%\�xg=��-M���7���"��^#L�ق�r.)<��gO�9k��fLUG�Ⱥ���6$̫t]�C&m�G�X<�����@�9-���Z�*��G��%�Wen��bCME��O�U
��$���/Zv���pI�US�ak�����PYI� !�l�6媱��:.Iw<L�c�MxNˇ���/4� ��:������.�E��EUU�:.�/?� %˗�a�M�Kٷ�2��w�J2V	��s�a��8�:�O:&�^�,��>�˯�C���V�Ɨ�� ��s���|[!�2%<ƣ9����@��J��4X�v����?��`�������n�7�l,����o��;�E*`5[�5Y��vI-��䨬|畅5�n`�ISx��M;�|� ;��Õ���̈;k��5�nuܝ;J��ި��Qi�.~p6j���5����圈��k�����z��B,��.6Ϥλk���#�g���Y�
���.Bs�en�%6��Js��!`�}�Ӎ=�_{ZZ񵹚"���������C���L[J,�E������<�F��f�s@�ߪ�O�H�Y3`���s��s~d�`A�FB����DT�a�}�|?�>�$����o���Uf���d*c��P�lĳ��a�C=#�N}�E]E�h�2\�ΠY���0*�3*t�W�B�<5Y��o����3H|�@�i_ei/oH�k�M��3ͫz*Dc���@�Ea�����cc����R��<L(?R�B$�z����炟|۴	�f��7�5f�p���0�l4���}��I��-��G��i�ҕ��U6D� �r�a��蠼� 5;R����w���c@jq�^���H�ۿs�/oX�l��	���0��5��n��0Ǿa�5ߖ�9Z����bd�:�������N���t+o)y�/*����^.��H�ASV��|Y�U�F�q�*2����0�XB�2�b��ǐ����`���e-T��,֠BpJ���/��G&Nd[���(�.�P���pk-�2����V	�ْĖ. qp<��H�#�/�U��)�UQu�R�~M@��kB5�G5B��F�&�$�E�=��j�|9M�i�L�w�H���W����Mp���=?́��3�P�,kM�:&#!b��c���,X.�k5Y�kL�����}/K�vvco���hc��߬�鵃�-c[��2���[�IǱ.E+va�� ��=�&{;�]RzF�A���G�з;t���쳃�~e�̀/���㉍�!�ķ��`u�v���9j��P�%�C�������UFϞ���_��Ǵ����a()�Y?LGX)�;�-W/�͜шك�U�ٽU�~��x��H��=b_�yZ�$��jj�q��7�i+Jgi�P�M{T^b��؋�9VQ�2�YFclY�o��w�y���Z�%��w�E|0���c��[�L�WlX�^�{��3���m���T��6������*Sش4po��ͽN]��]�C_w��osH$N��'�A�d�0�r��$�Re,�~�N� �i��K���Sq�!��iH�҆ņM�'q�d��2��Ѻۣu� ^�h\�/��4o(CF�t�M|T�T@�5-L�sڷ���&
�PF�i9Ul+}`�]�&��yQ�:s|Kݒ�ي�bH�,n�7h��h�A����fֺٓ��-����p̼�
�Y��������d�����h�������{;O��Q{R�q9'���H������������_פʾ˂����f"ѻ9����Д	5I4��v�wv_����x}���d��q2�%���]RV�nggu�7�8�@q����m���>Um?y��F�	��D�,������&쟈n,��j�ۋ��7�:3=J�����O����o�����#�4��@�5;`�y��ӫk8-z����`r�D@��ݧO���/>%go//�n����[o}{����+�2��V�b �[���Y�u�c�z�S=B���$2#�ćP( T�҈���.�����Y?��aՅ�E%KF�Ԭ�@>��G}��Ίa������/�W�A�]FV�mSƨmv~u����F���U!�U��2Q�&�Y{nD�n����3% Ɗ
Q~m1�gF���peC�w���!�����Q���'ɨ������O��_1!���{GG{=�{ ������/~F�"4C���c�#�:4�C@������B���^��l��"T�!`M��K�x^A����Z��Ӫ���x���EN��&��{��    i��7rt/<_�Gt��������x�c��ǺL���3��= L���?t�:5��@W�q����)1�,�b ��?�
=�#T~"xڬ��ڒ�����+-K�8X:_ox�r��-)8�F���aIu�W+[B������ؔ��x�s��$���.¼Q�VA*�.b�Ж�P�ٲ��u�RfcѬǆ^�g>����KUO�wv�>m�!a� C\oSZ�������}�BV�ND����J����g���/�0ub�Y����(^���#sdx��ncUdKeo&�Y�Ĺ_�N�̷�l[�ϩE�]�A�������-�|L�����@V�{g�M7�d��PL��O���-��ת)�w-���������y1�����wq��s��P?'iL0��C��C��j�9�4U�}U�v���શ��=^��`��ύ�`4�={�0聻o��5sP!?F����J��4��I���S�.���=�!A�aH�QQ��	tT��p�����ˀE�0$V6Y��s�3�i<���i�4��" �8����p'B�f�>�4���&�Y�%5"B^�{�Y��$�/胿jJ�rMi;Z��
Eo=�Aɍ 7'F5c�?��Y�U�����\�B)��T[��4��$���(�?n�_�]t��^|�+Dba�5lKbm&)��m��;n��`y�m9�S/iQ$ߡUi�6�T��u�	��Ag��5�;⎺�-J=-�ŕ�ng���X7��mhs��6��X��J?�]�$���b��ﱌlln�� �W��H��h`��Wcֹa�E(�r��d :��'*�N�k�$O(��|�"��1PBK#���ex,6y�[���䨻d���Uk;$����7=om���&_�i�:����g��Y�=��8�t��.}9��V���#;���:m�C�D�0�~-�̆�*�!��q��(��,��{*fo&�dbqqR�g��1��+G�%ü*�8ZdL �Q���P��)�����L�Vh��2FQ<+����e�+� ���$��a�{΁� 9�>�X$Ms���Gt��-� 8�����`��3`K����tD�NÉ��`��&gۥ�7�W�CJ:vH5�5�)�W��N�?:	�j�ɷi����~�wu�>�i���F�7��Z��kv��M��A�e$x�e8Z��.O#
j��)���sZU�tg��FeG0���>�=x���O��{r�����d�b�/�4��_\\�DG/�V%�>�U��-�ho���`/�aԻ���D�����E{�:��	��x�Oo��O���������U��w}su|����k���^�s`��]���.ī7Ǘ��{��򿍮�]}w��v�����a/z�����<��烖�|�z���A��]����)�������!���3���V��M����Z���Tm���o���6��R[q������v�~<�g�4� ;F^�Fp}�U�
gD����=dV�]�Hh����up�f/�Qˣl �8��In�H�h{���A�-t�Bko��{s�O{�{�`l��\�[�`�[h3�&2����m��eb�	�g���)h�������FzY�7v}~��:���h.Hےn2�ܜ��͛�4N�y������n����$u�d�œ�=)I�H�j��
�^�I`T����ߚ1ZTvD�"�`g�!��,��"؊�@]~�ֆ*��1 �c��l��0C�9p��h�\N���VЛA9xJ?���pB[Ktq�Jl�d�} �B>e�&F�-s�4.���_��
�G=w(�f��$.�	��5���Ӥ�
p���1�0�E�T%���U��q�	�%�\���IM�W�L���[%����n7�,
���4q."��<�j;�p��"�$�aI�SKh�q��q�˪���K,�5 �p�4���}�>��;[S�f��kܩ� hh���-��8���	b�$δ2�_�Iv։|���B���s �W�¶��o����K�]C�=�iZy�:,u�8Z�ԁ�{;����]��$z�-���*�U�2�<��|�!���0`�ˣ´}�7pr�I�Le��4�P��<���ҨX�۰�n!xz$6|늺q����c��	�n�W��ԯt�k_]���u��?�4�ÅB��u����aܣdbq?�u]�m]V꒎׾��4ԭpPJ�zZg1��\���5c��;���U��O>`	O(r-��� ����mk��4v�?�jʜ~"v�8 z.�d��%`ڌ�Ո�d�? � `Ws14=d�xDXlT�E�z�rT�R�Ж��(�5`�.k|%�<������d�Q	kt7 \oX�9!��ObǊ��ቹ� ��cYt����rl�-�������/^]��JP��%����4�����5¼1?�b��@^�0B)VW����Q��j��q�5��S�Cd怘�C���Ɵ�܃���r
NpM6���?F,vYonxo�c{[`b�2��cG,���u���j�����9����*{~��&c���]�Ul��]����Eh>��w���}��zU�1iэ94�� ��'�몌G��y�[��¶TǱ]�*�.(X�Lp�|.��S�%`����ڸ���M�ĺGR��Ӧ^�Rk��5��a��AS��k�更cx�ɚ���q��D�)(�Nv�dXmE�s�֧�ȿc�ÿT����4�Vd�q���]n�H�q����9t
�B6 $���XVx���e'��x/�=,�*�]����b�j����ٶ�1=XRA����5���龿����,۲���U��+�f.�oc�n�h��f�.ou��C�կc�=jmƻZ�꾡��V�W˂א#N�f0QH#+WH�p�U`5	jKj�ʽ�DY�m�^
o��y*v�<X+����M�Z�l�	��7R iͰ��FS�o��)6+��Pe�ͷιJ��*�H�k�4�_]~�Z�$�붉����]ԝ*���i�9��<�2��Y�ķ�ǵ����f&���	oW̨���%U62�hs�l�OǦ@j���05R�	�E�&��ni,sG�PÐ�F��.�Ғ�V\ `=T����j%�E��2)�"�����0$i�"�	Wˌ2X���r*����*6�*�rВÕ,�2#Ԗ�eme/�ul���SG��d^��ee�ut��,8.�0z��N;ZqI�>���o���GMV��l�7���C���Y>LL�� ��R��n}�~?�aj���5hx���Y9�-��*\g�B��Uc���|�ؼW#Oj�r���~��j��8�tgB���0���<AW�/DgV�
^�"�6�'΄�I=�w�ձ ��~��tڥ�vE:�;�kb���2���b�i��}c��{�,��2�g��)}6܂7�ZP�Zմ|Ml�L����6�Kz�ېr��t=��ܣC���45��:�����F�^[ 3�mu�T�6�o{��)�3��,=�i�8v!#�M4J�}��G��m?�Z�x&�r˕��*uCV5=��<Xa�9�uB�ߙ~h��2zuq����ܡ��ѡ-*�]?,_�&2x�9�!�u)���6�R��(p!�csk`�@��aX��Ts�%+}m���Sl�������96�3�뙏�u�VJۆ�����َ�.4�NQ�r�ݷ��:��'�>��g��Q�.}���Cd18��Ӂ�8���\|��T(����`�����M��t��7"�U�f�f�����?,���s(=~� E�|�}3���rt��|���q߆'����.M�fe/V���l�g��aM=69i��7d�8���v=�4��݃j��@�����A�-_�qv�������T�+z�D�w�۷ ��P��(��A�G~��[�1�W���^���+6��`�|y�m*N�$�$`�ǘ"]넠��F�=�U�n�(�*ۚojR�S�l*x4.F�'�́�L��J�^�~���1E�0U}u�C}�>ho��<!��܉]�%L�\X���V�h���LO�@������'�4��9ىR1ڞd�]�
 ��d+�ɤ��έ�e7l&*ҋ��ϒ,K����x�d����>WN�P�6����]�    ��VDz��D��bZ،��D�p�{�~�jpMTh����b˪.d�K j�^)`~{�8'�]
��^��������ÕU��ٱMs�b<�__��/�,�	�0{���c����+���]�vYC�K$��ċ6���"��crb(��K�#�m����GP����'8�>J��-D��у ����,w�4��e����8EW�N�2&���H�wu�%�n��"-�4 s9��
���Z���yRH'i72������t��a7�0�u�k���]S����Ҝ���d���`�F�o85�5�:�)[Je�[K����Z�ne���8�^C���\%#�<��|�֪~�?2Uy|�m`��-z��E��ng۫��/��{�{�YE�0^��x ��m��Wq���*2Qjx����=B�p��(�����M�2�茨>7lt4��\�F��g\�E������*�щ��L�b_��6o�`��+��������c��)aÄ[�dz��lL�k�����Z�?��e�-��7�03���]Hp"�!�`+�!;J�,�̮��%,#&�s���@��̌�(n����V-��j��WU+]6�횥�FMy�I�]?t���*�� �[fgic����VN����]q��O6��2;4T<=3�K޵Զ���j[�Z� ��n���@�o�0s	jnU�Ӿ��6�F�_�I�]�J�T�Q�nV,J��;صc�fP�q���2+�4O��^|�+�"ɘ��<PO�X+ؓ�[D�
nd֋d�.t�y:��:�6��'u5_|��tğ?��cӀ���� �b�����^4:�W�j���Q`K��T!]�t!'��M��!����\����4���]^��'�Π��,�j 35T#tEx��nK%�1����q����1G�#dmG1�U֣x4�;G����7/�N�snpK?-��E�`�I�3��/N?�eF4�/��m(�8�҉��p=⃔C��aϯS��a�LS�������v_x�Q��'���1��hڊ����^���uW�[������R{�0��dϊ�y���{f�/��VG�^*��^�*��-z���t,��*�&ufJq�
6��qO�R��ʧ�C�0@#�I�;��s���:���{�� �,x
~7F�YրN����h�D��eqm�t���ka`T�������u0�h�E�R#�&A=F��.����@�K�[���wV�{.:�Q��~�co�P�Y�a��2?�\(-B�j�왍y���TP+_��Y����'TX�E^��⧩�W_�e:S��>�l�����T�<Tv��x�xI�uV�B���\�p��մu��K��¦��9���e�4�y�4���L9ټ���n�[nW4>(�`x��C���2I3]�B�;سwH�������/���$7�.���uM���2��x���+R�l��>�w�?�JƓ��d+6����ZFO��}�l�Rx���� ���?LղA��>h8
z�	��x�W�@��p�7f�{����1��.ޚ�������^h���[��Y���1'�G��6�y���~��_��4oY=�uw�,��A�Jm$T0�]��5J�8���)���t��2y�;�'�!Ğ���3�ղ�e.cMk���"m�b�5����c���S��~�l�>la���4_Y�=����CϗQ:PƵ�H63�%�C�Mz=R��"��W:�,:��.�F�W�>x��G�ɺ�MS�dY^�*��a>����?���;b.Q��ζF�oPPU�����Ip�o"��������L^�62��Z���D�j#�f*��5�,��X&��a��17��8 ,bk�5A�+�H}�O9+J̨�hR|�K(/��H���P�*��a
5�R2���$Uy�lH�#���/��ѣ�r�E��㗦Y�
n�>�s�������#���KǞKǞKǞK��S��3��K�K�K�K�K�K�K�KؾKؾKؾKؾKؾK؁K؁K؁K؁;�.a...O]:��t<u�x���ԝ��.aO�{�R�ԥ��K�3��g.a�\��=s	{���%�G�;��.��.��.a�.a�.a�.a�.a�.a�.a�]:��3��%�K�s���n���n_���¥�K�����p	{�N���.�/\J�\J�\J�\J�\J�\J�\J�\J�\J�\J�\Jw}>��v������3{���������������w]�^W.5.{>p����(�#|������Ͻ�8t�w�Rz�Nɑ{�St��Б{��7ܑ{��7ܑ{���ב{M���Х�fXkI��n~,�N*ތM�h�� �HTW�k��t]J�Pý�q�!U�B9��!%e�9�˒�?�# ����|Ȩ�N���@[��)�=DK��-5����jzw�Y��-��s|�
s���8t��C���'��ݷ��=t���{�ݝ}���Cw#�'���ه�0w�n�Cw��[����.�8���g���l�m�g�	� ��R7~_n�U�;{���G[��L�>O��*�j��X��Y����#�;�P8�Z�Q�[����wJ�:�r` kxƭ�Xa	�?�/��C�����5v����E�:p�D�ct���"�4u����"È�8:��������pʋY�c����-����,O'~ҳ��bؽt����-�/'�b��F��b/��z�FrN-g~��y�f�]p���U}x���wG��(�%��m<��9��ۙѳb�\}�����\�cS�nn5��6�a=y��5MKqq���u��K�S�H��I���I*x�����^��.)�T�.��8��#�i?��.�,~̓���j���qR���v�)�D/�V\�~��i�{?p5�W	8pe�W�?x�R�x'�ʟ�g�]D`�&c�$�V"yJ��(��ɤ��L+}�g�6 �JP/��HZ(��L��;�僷�YLr���x�*Ec�A����-���)��K�fY1��b��%�<�!b)�7���Y1�+2+aDL�0T����>:z���jب�p���h&Qor������+Ϗ����-)%dv�a&���i�$���ANNy9<r
�v�r�JT-�2N*U{a�b�z
F;\�D���X�&Ѝ�Ո��ਊ�ą<���R��/~�ۇ,f"LE��[�vT \L�tމ.�1�=��)�%pw�b,L�g���Ѡc�Q��^��[���ػ�tL^�w�s2n�&TeB�B ����Ǣ�i���Z�dx� c5�ѼGz�w�q����<L��>)Dj�(PXW�mpf<�bB2��@���p�aBbFOR�V�!�iNȌB��0R`ߋ�1�6l^��N�#�)�yЈm;�������mzP蒈�Lz+x�ڕ�`�|�"�����*�����l������������_<���H3d���.#~La�i"�.S�ְ����}a�۰��	���e��2�gPC&6	�����0��'Pp?�a�/0����#3����
�dgY�`1#8�2j�."D!��`dlft�}vT��9�o���L��3gn�tX�1������ce<2������CH���tD�Mܵ���P �M2�ʈ��m�(߳S�9�Y���+�!(�i^~��'~��=0����x�x�{/"L,n���:�52~=8���i[�̯�A���B\�>%�n����2cF���(T`Z@4?B��A�������� P�[�P�G��6.�t�_�L��hĒ�������K��o)C1���߻�
�i�$�L!�_��5����sR�{r.��{:�Hu�Cb���|/f�t������Р�ZH��y���.����K��Դi�|+���a�p��J�P��G=A��Z��]@Oy���V*�L�!i� 6K�����|�Q����
��O�p�����R!R�$����H����x��:�팬E\���|.���;���� 	  ��v�)l)�BVKo�Ҕ� FY,s2�)h7�,�j�O�D�P@".�K��s<܉�
*���py���S���-2H�]��V ~��C�0�Hd�bSe�%Ī���I��`CГ���XE3a�a,�s�%;���L�o��۞�*�U!V
=��t%��3�R>�M o
�P|�J��F�6i#�
��B|�������VL��)�)�UP��X������޴���q�uh&6
�x
a��4<�yc�b<j��\��nMN�������w���B��9�+��ۑ���&+E[�x�N`�$��$�4�����Z��R���¦D�D�����Bަ`W���3bg�CLgR�ɂ��9P9,�������Kg�NlAX���;@��P��`g�gou����T��~�5�k�g����=q}b������>6�Y���U#��F��������%�,���"�����T)��2Bb���I|S~���[p��JexЛ���<"��!{W��g:��ʏ�)�f�A|F�n�"^' ���3���	�B���Y9㆔B�z;���7��4V�P��	V,>$�K>��X!ю�_�$��	#�o:δ"%0�_�[�
m���˳>���B�y�CgN��B���ڤj��K'�������dPFrE�!�TWU[҃@���*}"�(	�Lfh���	G*:�D�^b�J��L+��H:�h�	l<��7�|��J� �p���u[�$n�|���IU`E�����I߻��g��U��kC�X7�@ˁ��\��L g���R�x����kx�n������r=�����S
]l'�ve"m`$r�4�`#��k4�k�o�Q$�0̥{!#��Mi͖H�z���}H���V��p���6�h�`���$��IL1ĝ�[�X�Ҵ��4��Z��,D�2��~nH�-�	ݪ]� ���B-sR��pc:�:���S��W�Vkg?"�K�3��1�-����	c�>�|_µ���D8�!���$h-k�f��E[�H]r	Bu�6�.)�m��} yK��"�
*:�1�IvI�Z�=��-�3�oYI��Os���!.Қj��+�k��������߲�#�{�;�p6�	���4{N�t��jE�M��o������2���`]w�9��'v�.������n�&
9�]$�n���Ah���UĴ*'$?	Q�l7�/U{;���V�܃���]mN��Թڜ��T�b�E����+K�d*�A;:�,c�r��L,����3&�Ḓ.��!N�\��v�����b}�f��y��e�Y�؁.6M
Q�v+|@�5�>��h=���L\`ϩ3i��VW��]�q�DS߽=kF�Y$�@|Ռ�������D��a�ӿN�Y%}��˙]�}��B����tX ��Q�	]�0G5���yϣ��Db������l�]��ژ��,��g��IևȸO�"h�7�
����ͷ�Nؑ`Z�QI�Sn���.����u�/Eo)�]�@,�x�>�@��'J��@U�cR�BF�e2T�y%���5|e.�*/J8�?���|�˵�I�!�6[�d�b���1n��<�f�e�xK�Sۡ�>Ɏ��Xjjv��ng�e]ϔ	6��wm��l+`�<Ո�R��O݀�}�OS3�"��W�_��uZbt��".�n�d���
��W�[��`��`����f:�"7���֝,�i�$A�,��v��T�.5�F=g�(@�Z����[�R��X��k;:w�W�	�����,�EjŮ�j�@��k���&hs�kD*]� 'R�L~��a�	b��y�D�8���������R����6A��w���E Z2��L�Rآ����T��#'Ƅ#p@f��'���,uq*�UQ��?�\����{���_��F��zWjϵ{��z���w��ߐʯ4�.�;����%��W��n�>s�}��k>x�.񇝉���s������x����llHƑK�ц�ґ)�z\y��I�ҵ!(���0��������K!H\G�N_G7
��m��׃A���`�v��.h2y�+�u��6��4�2V�ߎ�����S�'�X��9	n��S�e�wؒ�c ��;a	��|/���o���j�Ֆ1�Rs,q�[�F�!�S)x�Ƹ'�詏D��W��o���Ɛ����O������!����4�M)pu�ii��4�Y��MG-��P�MߨR5������B�y��<�{�r��������?v���?��2�      
&   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      T&   �  x��[�n�6>�O�cs	�=��n�Ĩ��ɩ����k�(P�"���r�W�XgH���8\��������|3C���V��Vo��;�,��B~ȷ�Z�-�_���\�<^�qUP��jZ�q.UU�jY\L|os���YD�?�=n�.��l�V�7Z��?�Y��U+X^�J��`Mº �Tk�K%��+U��\���G�~u�\�j���f��6�5��������d��Ni�� YUɃ(h2%kx���}�\�?\~��cީV��*w�3���`�t1�Z�Zհ\� +DS�ZV)a����.�ݞΩ�l
���x�g�f�[{m�*�Z�|wy�c��{do���>m�f��m<]�8��JѪ\�Z�T)�X#�Ӣ
A����^�q�%��.�m�hl�'�������]Kz#��6,��`�5>O�ܗO���k^@�;��[��,l��N�p@����(�>Cx;��Z��q.�[ހ-�a �d8W-*����k�c�Y����C��d������X��JQ���&��]���Ks�)-�a�Hl����:���|�fF�Q���3A���!��ǣș�Ix�t��,z���в�0{4ȳ��O�l��-����2rx��������lLH�j~⪟��uX�1�h��\՘�I$m{��/�B�toO�����R ��v�d�4�%B���3D�8+<�9%�'ɇ��xQd�V8�EƧy�0|�3���b�<�h,�i!���n� �
)ʭ^!������c>2Y"��H�R�2��MK����ߝ�3���M����D��Nhથ�v-�Rᩰ�w���E~����2&5%�~+�I
�9��[�kǼ3W�4�
ƹ0T��aȦh�+1'���w����_xQHF6�y��m�	a)���az@6��d���X[(�u&��]��L>8�������A0�@�Uj�CG��>��������y�lG�h��рF�b��?h�S�=w�3k'^��� G$��)j�\A1YI}��S9���߈���q��3���d�g�fu{��*�ٱN�)�Y�º���z)ԓ]����:.�h]͂5��DA�Un�ʠ�X�(�u�����=�������JV��h�]�Vxm1Fs#�
Fu vl�gqm%��C��I8�j#}j��88��C�B9#tVM���u��0���\���{B�φ��-CbKZ������C8���{7d#S	D[U����Rt�I!��[���4&JfMm���-��V앖�d��}W���d�O~������A���D��RL����d������oOTm«���Kh��V{�v*!��n�� ��ьw������iR�Ȣw��i�f�]|6�
?�Zrw4����^<���g�=����� g�eM�e�L��ן�<z�+uz>]�]Ȩ7*L�8,jTg"(yD��!݂V��M]t� ���6�z�ϸ�c"~����l�
�')Yn�?s�C������TN�D�#�g�b=7�0�������j
��,�ņ���dH�v�LMf&��G��=���}�����>iβ���nβ��P���M�:I#�L��~�̂�z*u=����$�Br�t����R}���x3F�}I����23�SU t����|:�	�C��i�a�{���q��%àU���BH�)�>߈�_��'
���e4�%���.`��uZɞv)�t�;���~��xr	uSC�&ӛ���%��U�xW�}5��]���"�����Э�Ņ�ુ��\���᪟h�7Fi�쩷F�a���خ��j���$].�¥8]��?E��^�"0<о�%�P����J���S�$�m�S�AA�SK���l�H?n��Z�qp 4��`:�6����3gxu��U'�M��;�	���nyS/��N3�Kω}�#�Ǳ��v7.,�7,�$^+�~�R��%�hk�-��;#�	�4��Ag� ]T�SKGW�^�[���~Ň�ϡ�{��p�f(#���3d�e���^���Jv ��-V���<P����a<egV���7��p�� 'e�i#߇��~�����ja��IJ�K��x�����O�d���86�Hר�"� ��  e���MXi��mQ|7$5��~wvv�z_=�      &     x��\K��8>o�4��j�t��a4�nN+E�1�Ug�߲ͯ �#��¹���\��W3�E8�bN	�"g�y�<g�D����|!�"	g�z��J�x4�הG$
D
#�S�A#v�#�o�v���\���?R��8���6�I���B���^D[4fbDER?� k?!|H쎦i^$"',WB^^��灨��&A���	��0)Y*�v�%E�L/��%�r�͝p,+��iS�Iʹ,ٲ(b�-$5�0�0%߽@RĊ��#��H��}����}�A�[�(�)��*~$�$U��b�,3=��gZ��G����5�GCy��/��Tb����f<���3�.��9�A�)y'��?��\��-%�8�~ P{v�ߕ��&�N;�ӐV�(̚6x6�z�*؂Y�Ǯ֌�ث�����#"����-,a[zU�y۠0ʂ����{�̋ ����σ�*.fk[�}e`�d3W��_�f��H�x�����_��z������УUH2' MZ���o,t-��`l���tRJs�t4�#s�����J��_;_x&b���`Q�S�R����/ؗ�" �۰��B|��ƒ����y�j�ƻw�9�Op�c$�n�pp =׍����mg�g�������˟�r6^��V�&�շ�DG�X�mZ��--Kb#9�X�E_�׎��wf�G0��i>�f�w8�~��?x��ֆ��xO}2��'�r%���+��:������h���͓���O�hP��O�k�|e洝�[��&��N'��Y΄ޏa�I�:��zD_�(�`p|��Ȱj��.��I��r1��4ͽ	,���ze���}Uѥ/�t��N8�pR����xu�I���ju�&����G�2\2ԚO�RP>�ꍑ����#X�D�3
���?)��WK�Q��?L	��N����zо�K�~��D,%p�$���ʱ&�m����e>$0a�~���v)L>����B�H����IP���<ۨ-�a�' ʑ~��9�iG�f���=v�q]�,`:Ǳ�ة��f>�,�Z<.U�H;'�o��םl3�1�L}����;�Q�5���u��@��/�t~,]��si����S��i�K)2�A*[\�Hk���'�8��~~4m�!F��5�t�Nj�Ӽ/�풪vPL�d
���>W��>���]K��)qi.b�$�Bd()��'[X�>���	�&�{�ެ����z�mm030jgf��q���*�\{٠�G�����6�g�j{+��g��k���y�����]
���01��t�ߨeSmYy�X��m�>+KF6$u��/WrR���7�".@E;��6��w��jS3bi�ƗN	Z��MIۏ�J�sl瀢��T��8�7q���gK���O��~NX
օ"�O�u??d�v�*�R��LN�voZ>wrU���E�5@胺��z��O:���N��-�wB&�I,�;ݺ�Ѣ܁��u�'�&�n����:"V�^�� ��j6�9ٖ?������@1���wi�n�6��*���ťN���>��anDڇs`��g8�/k�?a5�o����ҿ�A�vQ��ӄ�Z��]��P�=<=����n&z͂����+cl[��n����8���ǻ�X��߬S��B�O-�+kN'�zX���!��7N��=���l�f����x�w�陜5�L޼M�� ������H����w)�Ʊ�*1�u�'IP�ޝ�w��_# �q�	&����kk�ߣ����l���     