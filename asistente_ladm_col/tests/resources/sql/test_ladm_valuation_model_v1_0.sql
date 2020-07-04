PGDMP     6    9    
            x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) D   u&           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            v&           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            w&           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            x&           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false            	            2615    577328    test_ladm_valuation_model    SCHEMA     )   CREATE SCHEMA test_ladm_valuation_model;
 '   DROP SCHEMA test_ladm_valuation_model;
             postgres    false            �            1259    578918    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_ladm_valuation_model.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE test_ladm_valuation_model.t_ili2db_seq;
       test_ladm_valuation_model       postgres    false    9            M           1259    580062    av_disponibilidadaguatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_disponibilidadaguatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_valuation_model.av_disponibilidadaguatipo;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580665    av_influenciavialruraltipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_influenciavialruraltipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_valuation_model.av_influenciavialruraltipo;
       test_ladm_valuation_model         postgres    false    221    9            ^           1259    580215    av_influenciavialurbanatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_influenciavialurbanatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_valuation_model.av_influenciavialurbanatipo;
       test_ladm_valuation_model         postgres    false    221    9            x           1259    580449    av_serviciospublicostipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_serviciospublicostipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_valuation_model.av_serviciospublicostipo;
       test_ladm_valuation_model         postgres    false    221    9            ;           1259    579896     av_tablacalificacionconstruccion    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_tablacalificacionconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    valor_m2_construccion numeric(16,1),
    uso bigint,
    puntuacion character varying(20),
    CONSTRAINT av_tablacalfccncnstrccion_valor_m2_construccion_check CHECK (((valor_m2_construccion >= 0.0) AND (valor_m2_construccion <= '999999999999999'::numeric)))
);
 G   DROP TABLE test_ladm_valuation_model.av_tablacalificacionconstruccion;
       test_ladm_valuation_model         postgres    false    221    9            y&           0    0 &   TABLE av_tablacalificacionconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.av_tablacalificacionconstruccion IS 'Clase los valores por M2 de construcción según el uso y puntaje de calificación de construcción.';
            test_ladm_valuation_model       postgres    false    315            z&           0    0 =   COLUMN av_tablacalificacionconstruccion.valor_m2_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_tablacalificacionconstruccion.valor_m2_construccion IS 'Valor por metros cuadrado de construcción clasificando por uso y puntaje de las unidades de construcción.';
            test_ladm_valuation_model       postgres    false    315            {&           0    0 +   COLUMN av_tablacalificacionconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_tablacalificacionconstruccion.uso IS 'Es la actividad que se desarrolla en una unidad de construcción.';
            test_ladm_valuation_model       postgres    false    315            |&           0    0 2   COLUMN av_tablacalificacionconstruccion.puntuacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_tablacalificacionconstruccion.puntuacion IS 'Puntaje de las edificaciones de acuerdo a sus características constructivas.';
            test_ladm_valuation_model       postgres    false    315            W           1259    580152    av_tipificacionconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_tipificacionconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_ladm_valuation_model.av_tipificacionconstrucciontipo;
       test_ladm_valuation_model         postgres    false    221    9            <           1259    579904    av_tipologiaconstruccion    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint,
    valor_unitario numeric(16,1),
    CONSTRAINT av_tipologiaconstruccion_valor_unitario_check CHECK (((valor_unitario >= 0.0) AND (valor_unitario <= '999999999999999'::numeric)))
);
 ?   DROP TABLE test_ladm_valuation_model.av_tipologiaconstruccion;
       test_ladm_valuation_model         postgres    false    221    9            }&           0    0    TABLE av_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.av_tipologiaconstruccion IS 'Clase que relaciona las tipologias de las construcciones con su respectivo valor por M2 de construcción.';
            test_ladm_valuation_model       postgres    false    316            ~&           0    0 .   COLUMN av_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_tipologiaconstruccion.tipo_tipologia IS 'Se refiere a la zonificación del municipio de acuerdo con las clasificaciones de los inmuebles según su
actividad residencial, comercial e industrial.';
            test_ladm_valuation_model       postgres    false    316            &           0    0 .   COLUMN av_tipologiaconstruccion.valor_unitario    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_tipologiaconstruccion.valor_unitario IS 'Valor unitario en pesos del tipo de tipología constructiva.';
            test_ladm_valuation_model       postgres    false    316            |           1259    580485    av_tipologiatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_tipologiatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_valuation_model.av_tipologiatipo;
       test_ladm_valuation_model         postgres    false    221    9            k           1259    580332    av_topografiazonatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_topografiazonatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_valuation_model.av_topografiazonatipo;
       test_ladm_valuation_model         postgres    false    221    9            b           1259    580251    av_usosueloruraltipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_usosueloruraltipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_valuation_model.av_usosueloruraltipo;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580620    av_usosuelourbanotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_usosuelourbanotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_valuation_model.av_usosuelourbanotipo;
       test_ladm_valuation_model         postgres    false    221    9            f           1259    580287    av_usouconstipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_usouconstipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_valuation_model.av_usouconstipo;
       test_ladm_valuation_model         postgres    false    221    9            =           1259    579912    av_zonahomogeneafisicarural    TABLE     �  CREATE TABLE test_ladm_valuation_model.av_zonahomogeneafisicarural (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    codigo character varying(20) NOT NULL,
    codigo_zona_fisica character varying(20) NOT NULL,
    area_homogenea_tierra numeric(25,2),
    disponibilidad_agua bigint,
    influencia_vial bigint,
    uso_actual_suelo bigint,
    norma_uso_suelo character varying(250),
    vigencia date,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL,
    CONSTRAINT av_zonahomogeneafisicrral_area_homogenea_tierra_check CHECK (((area_homogenea_tierra >= 0.0) AND (area_homogenea_tierra <= '99999999999999990000000'::numeric)))
);
 B   DROP TABLE test_ladm_valuation_model.av_zonahomogeneafisicarural;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0 !   TABLE av_zonahomogeneafisicarural    COMMENT       COMMENT ON TABLE test_ladm_valuation_model.av_zonahomogeneafisicarural IS 'Clase que contiene las variables que componen las Zonas Homogeneas Fisicas rurales. Las ZHF Son espacios geográficos con características similares en cuanto a vías, topografía, servicios públicos, uso actual del suelo, norma de uso del suelo, tipificación de las construcciones y/o edificaciones, áreas homogéneas de tierra, disponibilidad de aguas superficiales permanentes u otras variables que permitan diferenciar estas áreas de las adyacentes.';
            test_ladm_valuation_model       postgres    false    317            �&           0    0 )   COLUMN av_zonahomogeneafisicarural.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicarural.codigo IS 'Código único del registro de la instancia de ZonaHomegeneaFisca.';
            test_ladm_valuation_model       postgres    false    317            �&           0    0 5   COLUMN av_zonahomogeneafisicarural.codigo_zona_fisica    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicarural.codigo_zona_fisica IS 'Identificador de la zona homogénea física rural.';
            test_ladm_valuation_model       postgres    false    317            �&           0    0 8   COLUMN av_zonahomogeneafisicarural.area_homogenea_tierra    COMMENT     �  COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicarural.area_homogenea_tierra IS 'Espacios de la superficie terrestre que presentan características o cualidades similares en cuanto a las condiciones de clima, relieve, material litológico superficial o depósitos superficiales y de las características internas de los suelos, condiciones que expresan la capacidad productiva de las tierras; ello se indica mediante un valor numérico denominado Valor Potencial (VP).';
            test_ladm_valuation_model       postgres    false    317            �&           0    0 6   COLUMN av_zonahomogeneafisicarural.disponibilidad_agua    COMMENT     M  COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicarural.disponibilidad_agua IS 'En el estudio de esta variable se analiza la existencia de fuentes de aguas superficiales permanentes y su clasificación, con el fin de zonificar de acuerdo con la posibilidad de aprovechamiento para el uso actual que se da al suelo.';
            test_ladm_valuation_model       postgres    false    317            �&           0    0 2   COLUMN av_zonahomogeneafisicarural.influencia_vial    COMMENT     +  COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicarural.influencia_vial IS 'Se refiere a la existencia y calidad de las vías, analizada a nivel de zona. A esta condición se asocia la existencia de otras obras de ingeniería, la instalación de redes de servicios públicos, etc.';
            test_ladm_valuation_model       postgres    false    317            �&           0    0 3   COLUMN av_zonahomogeneafisicarural.uso_actual_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicarural.uso_actual_suelo IS 'Actividad que se desarrolla en un determinado espacio geográfico en el momento de la elaboración del estudio de zonas homogéneas físicas.';
            test_ladm_valuation_model       postgres    false    317            �&           0    0 2   COLUMN av_zonahomogeneafisicarural.norma_uso_suelo    COMMENT     "  COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicarural.norma_uso_suelo IS 'Indicación legal sobre la actividad que se puede desarrollar en un determinado espacio geográfico con lo planificado y reglamentado por la respectiva autoridad de la unidad orgánica catastral.';
            test_ladm_valuation_model       postgres    false    317            �&           0    0 +   COLUMN av_zonahomogeneafisicarural.vigencia    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicarural.vigencia IS 'Vigencia del estudio de zonas homogeneas fisicas rurales.';
            test_ladm_valuation_model       postgres    false    317            �&           0    0 ,   COLUMN av_zonahomogeneafisicarural.geometria    COMMENT       COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicarural.geometria IS 'Definición de la geometría espacial georreferenciada de la zona homogénea física, delimitada mediante un polígono que contiene sus linderos y la superficie ocupada.';
            test_ladm_valuation_model       postgres    false    317            >           1259    579926    av_zonahomogeneafisicaurbana    TABLE     M  CREATE TABLE test_ladm_valuation_model.av_zonahomogeneafisicaurbana (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    codigo character varying(20) NOT NULL,
    codigo_zona_fisica character varying(20) NOT NULL,
    topografia bigint,
    influencia_vial bigint,
    servicio_publico bigint,
    uso_actual_suelo bigint,
    norma_uso_suelo character varying(250),
    tipificacion_construccion bigint,
    vigencia date,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 C   DROP TABLE test_ladm_valuation_model.av_zonahomogeneafisicaurbana;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0 "   TABLE av_zonahomogeneafisicaurbana    COMMENT       COMMENT ON TABLE test_ladm_valuation_model.av_zonahomogeneafisicaurbana IS 'Clase que contiene las variables que componen las Zonas Homogeneas Fisicas urbanas. Las ZHF Son espacios geográficos con características similares en cuanto a vías, topografía, servicios públicos, uso actual del suelo, norma de uso del suelo, tipificación de las construcciones y/o edificaciones, áreas homogéneas de tierra, disponibilidad de aguas superficiales permanentes u otras variables que permitan diferenciar estas áreas de las adyacentes.';
            test_ladm_valuation_model       postgres    false    318            �&           0    0 *   COLUMN av_zonahomogeneafisicaurbana.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicaurbana.codigo IS 'Código único del registro de la instancia de ZonaHomegeneaFisca.';
            test_ladm_valuation_model       postgres    false    318            �&           0    0 6   COLUMN av_zonahomogeneafisicaurbana.codigo_zona_fisica    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicaurbana.codigo_zona_fisica IS 'Identificador de la zona homogénea física urbana.';
            test_ladm_valuation_model       postgres    false    318            �&           0    0 .   COLUMN av_zonahomogeneafisicaurbana.topografia    COMMENT     �  COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicaurbana.topografia IS 'Características naturales relacionadas con el relieve que permitan o dificulten el desarrollo de las construcciones, dentro de esta variable deben considerarse factores tales como zonas anegadizas o inundables, las discontinuidades físicas tales como taludes, caños y ríos, altura por encima de la cota de servicios, áreas potenciales de derrumbe, por inclinación o presencia de drenajes superficiales.';
            test_ladm_valuation_model       postgres    false    318            �&           0    0 3   COLUMN av_zonahomogeneafisicaurbana.influencia_vial    COMMENT     ,  COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicaurbana.influencia_vial IS 'Se refiere a la existencia y calidad de las vías, analizada a nivel de zona. A esta condición se asocia la existencia de otras obras de ingeniería, la instalación de redes de servicios públicos, etc.';
            test_ladm_valuation_model       postgres    false    318            �&           0    0 4   COLUMN av_zonahomogeneafisicaurbana.servicio_publico    COMMENT     H  COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicaurbana.servicio_publico IS 'Se prestan con la finalidad específica de satisfacer las necesidades esenciales de las personas. Para efectos de la presente metodología se consideran servicios públicos básicos: Acueducto, Alcantarillado y Energía Eléctrica.';
            test_ladm_valuation_model       postgres    false    318            �&           0    0 4   COLUMN av_zonahomogeneafisicaurbana.uso_actual_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicaurbana.uso_actual_suelo IS 'Actividad que se desarrolla en un determinado espacio geográfico en el momento de la elaboración del estudio de zonas homogéneas físicas.';
            test_ladm_valuation_model       postgres    false    318            �&           0    0 3   COLUMN av_zonahomogeneafisicaurbana.norma_uso_suelo    COMMENT     #  COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicaurbana.norma_uso_suelo IS 'Indicación legal sobre la actividad que se puede desarrollar en un determinado espacio geográfico con lo planificado y reglamentado por la respectiva autoridad de la unidad orgánica catastral.';
            test_ladm_valuation_model       postgres    false    318            �&           0    0 =   COLUMN av_zonahomogeneafisicaurbana.tipificacion_construccion    COMMENT     8  COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicaurbana.tipificacion_construccion IS 'Clasificación de las construcciones de acuerdo a ciertas características observables y cuantificables que reflejan las condiciones socioeconómicas (ingresos y cultura) de los habitantes de las viviendas.';
            test_ladm_valuation_model       postgres    false    318            �&           0    0 ,   COLUMN av_zonahomogeneafisicaurbana.vigencia    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicaurbana.vigencia IS 'Vigencia del estudio de zonas homogeneas fisicas urbanas.';
            test_ladm_valuation_model       postgres    false    318            �&           0    0 -   COLUMN av_zonahomogeneafisicaurbana.geometria    COMMENT       COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneafisicaurbana.geometria IS 'Definición de la geometría espacial georreferenciada de la zona homogénea física, delimitada mediante un polígono que contiene sus linderos y la superficie ocupada.';
            test_ladm_valuation_model       postgres    false    318            @           1259    579953 !   av_zonahomogeneageoeconomicarural    TABLE     q  CREATE TABLE test_ladm_valuation_model.av_zonahomogeneageoeconomicarural (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    codigo character varying(20) NOT NULL,
    codigo_zona_geoeconomica character varying(20) NOT NULL,
    valor_hectarea numeric(16,1) NOT NULL,
    subzona_fisica text,
    vigencia date,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL,
    CONSTRAINT av_zonahomogeneagcnmcrral_valor_hectarea_check CHECK (((valor_hectarea >= 0.0) AND (valor_hectarea <= '999999999999999'::numeric)))
);
 H   DROP TABLE test_ladm_valuation_model.av_zonahomogeneageoeconomicarural;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0 '   TABLE av_zonahomogeneageoeconomicarural    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.av_zonahomogeneageoeconomicarural IS 'Esta clase permite gestionar las zonas con características económicas y de localización geográfica similares, definidas para caracterizar el avalúo.';
            test_ladm_valuation_model       postgres    false    320            �&           0    0 /   COLUMN av_zonahomogeneageoeconomicarural.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicarural.codigo IS 'Código único del registro de la instancia de la zona geoeconómica.';
            test_ladm_valuation_model       postgres    false    320            �&           0    0 A   COLUMN av_zonahomogeneageoeconomicarural.codigo_zona_geoeconomica    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicarural.codigo_zona_geoeconomica IS 'Identificador de la zona homogénea geoeconómica rural.';
            test_ladm_valuation_model       postgres    false    320            �&           0    0 7   COLUMN av_zonahomogeneageoeconomicarural.valor_hectarea    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicarural.valor_hectarea IS 'Valor económico de la zona homogénea que representa la instancia de la clase.';
            test_ladm_valuation_model       postgres    false    320            �&           0    0 7   COLUMN av_zonahomogeneageoeconomicarural.subzona_fisica    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicarural.subzona_fisica IS 'Códigos de las zonas homogeneas fisicas rurales que componen la zona homogénea geoeconómica rural.';
            test_ladm_valuation_model       postgres    false    320            �&           0    0 1   COLUMN av_zonahomogeneageoeconomicarural.vigencia    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicarural.vigencia IS 'Vigencia del estudio de zonas homogéneas geoeconómicas rurales.';
            test_ladm_valuation_model       postgres    false    320            �&           0    0 2   COLUMN av_zonahomogeneageoeconomicarural.geometria    COMMENT       COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicarural.geometria IS 'Definición de la geometría espacial georreferenciada de la zona homogénea geoeconómica, delimitada mediante un polígono que contiene sus linderos y la superficie ocupada.';
            test_ladm_valuation_model       postgres    false    320            ?           1259    579942 "   av_zonahomogeneageoeconomicaurbana    TABLE     f  CREATE TABLE test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    codigo character varying(20) NOT NULL,
    codigo_zona_geoeconomica character varying(20) NOT NULL,
    valor_metro numeric(16,1) NOT NULL,
    subzona_fisica text,
    vigencia date,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL,
    CONSTRAINT av_zonahomogenegcnmcrbana_valor_metro_check CHECK (((valor_metro >= 0.0) AND (valor_metro <= '999999999999999'::numeric)))
);
 I   DROP TABLE test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0 (   TABLE av_zonahomogeneageoeconomicaurbana    COMMENT     p  COMMENT ON TABLE test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana IS 'Clase que contiene las variables que componen las Zonas Homogeneas Geoconómicas rurales. Las ZHG son los espacios geográficos determinados a partir de Zonas Homogéneas Físicas con valores unitarios similares en cuanto a su precio, según las condiciones del mercado inmobiliario.';
            test_ladm_valuation_model       postgres    false    319            �&           0    0 0   COLUMN av_zonahomogeneageoeconomicaurbana.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana.codigo IS 'Código único del registro de la instancia de la zona geoeconómica.';
            test_ladm_valuation_model       postgres    false    319            �&           0    0 B   COLUMN av_zonahomogeneageoeconomicaurbana.codigo_zona_geoeconomica    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana.codigo_zona_geoeconomica IS 'Identificador de la zona homogénea geoeconómica urbana.';
            test_ladm_valuation_model       postgres    false    319            �&           0    0 5   COLUMN av_zonahomogeneageoeconomicaurbana.valor_metro    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana.valor_metro IS 'Valor económico de la zona homogénea que representa la instancia de la clase.';
            test_ladm_valuation_model       postgres    false    319            �&           0    0 8   COLUMN av_zonahomogeneageoeconomicaurbana.subzona_fisica    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana.subzona_fisica IS 'Códigos de las zonas homogeneas fisicas urbanas que componen la zona homogénea geoeconómica urbana.';
            test_ladm_valuation_model       postgres    false    319            �&           0    0 2   COLUMN av_zonahomogeneageoeconomicaurbana.vigencia    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana.vigencia IS 'Vigencia del estudio de zonas homogéneas geoeconómicas urbanas.';
            test_ladm_valuation_model       postgres    false    319            �&           0    0 3   COLUMN av_zonahomogeneageoeconomicaurbana.geometria    COMMENT       COMMENT ON COLUMN test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana.geometria IS 'Definición de la geometría espacial georreferenciada de la zona homogénea geoeconómica, delimitada mediante un polígono que contiene sus linderos y la superficie ocupada.';
            test_ladm_valuation_model       postgres    false    319            �            1259    578954    cc_metodooperacion    TABLE     a  CREATE TABLE test_ladm_valuation_model.cc_metodooperacion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    formula character varying(255) NOT NULL,
    dimensiones_origen integer,
    ddimensiones_objetivo integer,
    col_transformacion_transformacion bigint,
    CONSTRAINT cc_metodooperacion_ddimensiones_objetivo_check CHECK (((ddimensiones_objetivo >= 0) AND (ddimensiones_objetivo <= 999999999))),
    CONSTRAINT cc_metodooperacion_dimensiones_origen_check CHECK (((dimensiones_origen >= 0) AND (dimensiones_origen <= 999999999)))
);
 9   DROP TABLE test_ladm_valuation_model.cc_metodooperacion;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE cc_metodooperacion    COMMENT       COMMENT ON TABLE test_ladm_valuation_model.cc_metodooperacion IS 'Estructura que proviene de la traducción de la clase CC_OperationMethod de la ISO 19111. Indica el método utilizado, mediante un algoritmo o un procedimiento, para realizar operaciones con coordenadas.';
            test_ladm_valuation_model       postgres    false    226            �&           0    0 !   COLUMN cc_metodooperacion.formula    COMMENT     ~  COMMENT ON COLUMN test_ladm_valuation_model.cc_metodooperacion.formula IS 'Fórmulas o procedimientos utilizadoa por este método de operación de coordenadas. Esto puede ser una referencia a una publicación. Tenga en cuenta que el método de operación puede no ser analítico, en cuyo caso este atributo hace referencia o contiene el procedimiento, no una fórmula analítica.';
            test_ladm_valuation_model       postgres    false    226            �&           0    0 ,   COLUMN cc_metodooperacion.dimensiones_origen    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.cc_metodooperacion.dimensiones_origen IS 'Número de dimensiones en la fuente CRS de este método de operación de coordenadas.';
            test_ladm_valuation_model       postgres    false    226            �&           0    0 /   COLUMN cc_metodooperacion.ddimensiones_objetivo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.cc_metodooperacion.ddimensiones_objetivo IS 'Número de dimensiones en el CRS de destino de este método de operación de coordenadas.';
            test_ladm_valuation_model       postgres    false    226            �&           0    0 ;   COLUMN cc_metodooperacion.col_transformacion_transformacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.cc_metodooperacion.col_transformacion_transformacion IS 'Fórmula o procedimiento utilizado en la transformación.';
            test_ladm_valuation_model       postgres    false    226            q           1259    580386    ci_forma_presentacion_codigo    TABLE     �  CREATE TABLE test_ladm_valuation_model.ci_forma_presentacion_codigo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_valuation_model.ci_forma_presentacion_codigo;
       test_ladm_valuation_model         postgres    false    221    9            n           1259    580359    col_areatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_areatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_valuation_model.col_areatipo;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    578961    col_areavalor    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_areavalor (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 4   DROP TABLE test_ladm_valuation_model.col_areavalor;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    COLUMN col_areavalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_areavalor.tipo IS 'Indica si el valor a registrar corresponde al área gráfica o alfanumérica de la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    227            �&           0    0    COLUMN col_areavalor.area    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_areavalor.area IS 'Corresponde al valor del área registrada en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    227            �&           0    0 %   COLUMN col_areavalor.datos_proyeccion    COMMENT     S  COMMENT ON COLUMN test_ladm_valuation_model.col_areavalor.datos_proyeccion IS 'Parametros de la proyección utilizada para el cálculo del área de la forma proj, ejemplo: ''EPSG:3116'', ''+proj=tmerc +lat_0=4.59620041666667 +lon_0=-74.0775079166667 +k=1 +x_0=1000000 +y_0=1000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs''';
            test_ladm_valuation_model       postgres    false    227            �&           0    0 )   COLUMN col_areavalor.lc_construccion_area    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_areavalor.lc_construccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_valuation_model       postgres    false    227            �&           0    0 $   COLUMN col_areavalor.lc_terreno_area    COMMENT     |   COMMENT ON COLUMN test_ladm_valuation_model.col_areavalor.lc_terreno_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_valuation_model       postgres    false    227            �&           0    0 0   COLUMN col_areavalor.lc_servidumbretransito_area    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_areavalor.lc_servidumbretransito_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_valuation_model       postgres    false    227            �&           0    0 /   COLUMN col_areavalor.lc_unidadconstruccion_area    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_areavalor.lc_unidadconstruccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_valuation_model       postgres    false    227            �            1259    579230    col_baunitcomointeresado    TABLE     9  CREATE TABLE test_ladm_valuation_model.col_baunitcomointeresado (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint NOT NULL
);
 ?   DROP TABLE test_ladm_valuation_model.col_baunitcomointeresado;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579139    col_baunitfuente    TABLE       CREATE TABLE test_ladm_valuation_model.col_baunitfuente (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    unidad bigint NOT NULL
);
 7   DROP TABLE test_ladm_valuation_model.col_baunitfuente;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579154    col_cclfuente    TABLE     �   CREATE TABLE test_ladm_valuation_model.col_cclfuente (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl bigint NOT NULL,
    fuente_espacial bigint NOT NULL
);
 4   DROP TABLE test_ladm_valuation_model.col_cclfuente;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579194    col_clfuente    TABLE     �   CREATE TABLE test_ladm_valuation_model.col_clfuente (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 3   DROP TABLE test_ladm_valuation_model.col_clfuente;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580692    col_contenidoniveltipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_contenidoniveltipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_valuation_model.col_contenidoniveltipo;
       test_ladm_valuation_model         postgres    false    221    9            j           1259    580323    col_dimensiontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_dimensiontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_valuation_model.col_dimensiontipo;
       test_ladm_valuation_model         postgres    false    221    9            ~           1259    580503    col_estadodisponibilidadtipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_estadodisponibilidadtipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_valuation_model.col_estadodisponibilidadtipo;
       test_ladm_valuation_model         postgres    false    221    9            m           1259    580350    col_estadoredserviciostipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_estadoredserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_valuation_model.col_estadoredserviciostipo;
       test_ladm_valuation_model         postgres    false    221    9            Q           1259    580098    col_estructuratipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_estructuratipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_valuation_model.col_estructuratipo;
       test_ladm_valuation_model         postgres    false    221    9            p           1259    580377    col_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_valuation_model.col_fuenteadministrativatipo;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580566    col_fuenteespacialtipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_fuenteespacialtipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_valuation_model.col_fuenteespacialtipo;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580557    col_grupointeresadotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_grupointeresadotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_valuation_model.col_grupointeresadotipo;
       test_ladm_valuation_model         postgres    false    221    9            G           1259    580008    col_interpolaciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_interpolaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_valuation_model.col_interpolaciontipo;
       test_ladm_valuation_model         postgres    false    221    9            H           1259    580017    col_iso19125_tipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_iso19125_tipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_valuation_model.col_iso19125_tipo;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579173 
   col_masccl    TABLE     k  CREATE TABLE test_ladm_valuation_model.col_masccl (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_mas bigint NOT NULL,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint,
    ue_mas_lc_construccion bigint
);
 1   DROP TABLE test_ladm_valuation_model.col_masccl;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579211 	   col_mascl    TABLE     M  CREATE TABLE test_ladm_valuation_model.col_mascl (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint,
    ue_mas_lc_construccion bigint
);
 0   DROP TABLE test_ladm_valuation_model.col_mascl;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579162    col_menosccl    TABLE     w  CREATE TABLE test_ladm_valuation_model.col_menosccl (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_menos bigint NOT NULL,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint,
    ue_menos_lc_construccion bigint
);
 3   DROP TABLE test_ladm_valuation_model.col_menosccl;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579201    col_menoscl    TABLE     W  CREATE TABLE test_ladm_valuation_model.col_menoscl (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint,
    ue_menos_lc_construccion bigint
);
 2   DROP TABLE test_ladm_valuation_model.col_menoscl;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580584    col_metodoproducciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_metodoproducciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_valuation_model.col_metodoproducciontipo;
       test_ladm_valuation_model         postgres    false    221    9                       1259    579257    col_miembros    TABLE     1  CREATE TABLE test_ladm_valuation_model.col_miembros (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    agrupacion bigint NOT NULL
);
 3   DROP TABLE test_ladm_valuation_model.col_miembros;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579184    col_puntoccl    TABLE     A  CREATE TABLE test_ladm_valuation_model.col_puntoccl (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint,
    ccl bigint NOT NULL
);
 3   DROP TABLE test_ladm_valuation_model.col_puntoccl;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579221    col_puntocl    TABLE     '  CREATE TABLE test_ladm_valuation_model.col_puntocl (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint
);
 2   DROP TABLE test_ladm_valuation_model.col_puntocl;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579118    col_puntofuente    TABLE     P  CREATE TABLE test_ladm_valuation_model.col_puntofuente (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint
);
 6   DROP TABLE test_ladm_valuation_model.col_puntofuente;
       test_ladm_valuation_model         postgres    false    221    9            ]           1259    580206    col_puntotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_valuation_model.col_puntotipo;
       test_ladm_valuation_model         postgres    false    221    9            I           1259    580026    col_redserviciostipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_redserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_valuation_model.col_redserviciostipo;
       test_ladm_valuation_model         postgres    false    221    9            y           1259    580458    col_registrotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_registrotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_valuation_model.col_registrotipo;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579103    col_relacionfuente    TABLE     �   CREATE TABLE test_ladm_valuation_model.col_relacionfuente (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL
);
 9   DROP TABLE test_ladm_valuation_model.col_relacionfuente;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579147    col_relacionfuenteuespacial    TABLE     �   CREATE TABLE test_ladm_valuation_model.col_relacionfuenteuespacial (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 B   DROP TABLE test_ladm_valuation_model.col_relacionfuenteuespacial;
       test_ladm_valuation_model         postgres    false    221    9            _           1259    580224    col_relacionsuperficietipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_relacionsuperficietipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_valuation_model.col_relacionsuperficietipo;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579239    col_responsablefuente    TABLE     E  CREATE TABLE test_ladm_valuation_model.col_responsablefuente (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint
);
 <   DROP TABLE test_ladm_valuation_model.col_responsablefuente;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579083    col_rrrfuente    TABLE     "  CREATE TABLE test_ladm_valuation_model.col_rrrfuente (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    rrr_lc_restriccion bigint,
    rrr_lc_derecho bigint
);
 4   DROP TABLE test_ladm_valuation_model.col_rrrfuente;
       test_ladm_valuation_model         postgres    false    221    9                        1259    579248    col_topografofuente    TABLE     ;  CREATE TABLE test_ladm_valuation_model.col_topografofuente (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    topografo_lc_interesado bigint,
    topografo_lc_agrupacioninteresados bigint
);
 :   DROP TABLE test_ladm_valuation_model.col_topografofuente;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579004    col_transformacion    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_transformacion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    localizacion_transformada public.geometry(PointZ,38820) NOT NULL,
    lc_puntocontrol_transformacion_y_resultado bigint,
    lc_puntolindero_transformacion_y_resultado bigint,
    lc_puntolevantamiento_transformacion_y_resultado bigint
);
 9   DROP TABLE test_ladm_valuation_model.col_transformacion;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE col_transformacion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.col_transformacion IS 'Registro de la fórmula o procedimiento utilizado en la transformación y de su resultado.';
            test_ladm_valuation_model       postgres    false    230            �&           0    0 3   COLUMN col_transformacion.localizacion_transformada    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_transformacion.localizacion_transformada IS 'Geometría una vez realizado el proceso de transformación.';
            test_ladm_valuation_model       postgres    false    230            �&           0    0 D   COLUMN col_transformacion.lc_puntocontrol_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_transformacion.lc_puntocontrol_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_valuation_model       postgres    false    230            �&           0    0 D   COLUMN col_transformacion.lc_puntolindero_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_transformacion.lc_puntolindero_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_valuation_model       postgres    false    230            �&           0    0 J   COLUMN col_transformacion.lc_puntolevantamiento_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_transformacion.lc_puntolevantamiento_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_valuation_model       postgres    false    230            �            1259    579092    col_uebaunit    TABLE     \  CREATE TABLE test_ladm_valuation_model.col_uebaunit (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    baunit bigint NOT NULL
);
 3   DROP TABLE test_ladm_valuation_model.col_uebaunit;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579128    col_uefuente    TABLE     e  CREATE TABLE test_ladm_valuation_model.col_uefuente (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    fuente_espacial bigint NOT NULL
);
 3   DROP TABLE test_ladm_valuation_model.col_uefuente;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579073    col_ueuegrupo    TABLE     M  CREATE TABLE test_ladm_valuation_model.col_ueuegrupo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    parte_lc_terreno bigint,
    parte_lc_servidumbretransito bigint,
    parte_lc_unidadconstruccion bigint,
    parte_lc_construccion bigint
);
 4   DROP TABLE test_ladm_valuation_model.col_ueuegrupo;
       test_ladm_valuation_model         postgres    false    221    9            t           1259    580413 "   col_unidadadministrativabasicatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_unidadadministrativabasicatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_valuation_model.col_unidadadministrativabasicatipo;
       test_ladm_valuation_model         postgres    false    221    9            Y           1259    580170    col_unidadedificaciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_unidadedificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_valuation_model.col_unidadedificaciontipo;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579110    col_unidadfuente    TABLE       CREATE TABLE test_ladm_valuation_model.col_unidadfuente (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    unidad bigint NOT NULL
);
 7   DROP TABLE test_ladm_valuation_model.col_unidadfuente;
       test_ladm_valuation_model         postgres    false    221    9            i           1259    580314    col_volumentipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.col_volumentipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_valuation_model.col_volumentipo;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579062    col_volumenvalor    TABLE       CREATE TABLE test_ladm_valuation_model.col_volumenvalor (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    volumen_medicion numeric(15,1) NOT NULL,
    tipo bigint NOT NULL,
    lc_construccion_volumen bigint,
    lc_terreno_volumen bigint,
    lc_servidumbretransito_volumen bigint,
    lc_unidadconstruccion_volumen bigint,
    CONSTRAINT col_volumenvalor_volumen_medicion_check CHECK (((volumen_medicion >= 0.0) AND (volumen_medicion <= 99999999999999.9)))
);
 7   DROP TABLE test_ladm_valuation_model.col_volumenvalor;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE col_volumenvalor    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.col_volumenvalor IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar la medición de un volumen y la naturaleza de este.';
            test_ladm_valuation_model       postgres    false    236            �&           0    0 (   COLUMN col_volumenvalor.volumen_medicion    COMMENT     q   COMMENT ON COLUMN test_ladm_valuation_model.col_volumenvalor.volumen_medicion IS 'Medición del volumen en m3.';
            test_ladm_valuation_model       postgres    false    236            �&           0    0    COLUMN col_volumenvalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_volumenvalor.tipo IS 'Indicación de si el volumen es calculado, si figura como oficial o si se da otra circunstancia.';
            test_ladm_valuation_model       postgres    false    236            �&           0    0 /   COLUMN col_volumenvalor.lc_construccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_volumenvalor.lc_construccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    236            �&           0    0 *   COLUMN col_volumenvalor.lc_terreno_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_volumenvalor.lc_terreno_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    236            �&           0    0 6   COLUMN col_volumenvalor.lc_servidumbretransito_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_volumenvalor.lc_servidumbretransito_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    236            �&           0    0 5   COLUMN col_volumenvalor.lc_unidadconstruccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.col_volumenvalor.lc_unidadconstruccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    236            �            1259    579050 
   extarchivo    TABLE       CREATE TABLE test_ladm_valuation_model.extarchivo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_valuation_model.extarchivo;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE extarchivo    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
            test_ladm_valuation_model       postgres    false    235            �&           0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     }   COMMENT ON COLUMN test_ladm_valuation_model.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
            test_ladm_valuation_model       postgres    false    235            �&           0    0    COLUMN extarchivo.datos    COMMENT     d   COMMENT ON COLUMN test_ladm_valuation_model.extarchivo.datos IS 'Datos que contiene el documento.';
            test_ladm_valuation_model       postgres    false    235            �&           0    0    COLUMN extarchivo.extraccion    COMMENT     t   COMMENT ON COLUMN test_ladm_valuation_model.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
            test_ladm_valuation_model       postgres    false    235            �&           0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
            test_ladm_valuation_model       postgres    false    235            �&           0    0    COLUMN extarchivo.fecha_entrega    COMMENT     w   COMMENT ON COLUMN test_ladm_valuation_model.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
            test_ladm_valuation_model       postgres    false    235            �&           0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_valuation_model       postgres    false    235            �&           0    0 7   COLUMN extarchivo.lc_fuenteadministrtiva_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extarchivo.lc_fuenteadministrtiva_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_valuation_model       postgres    false    235            �&           0    0 2   COLUMN extarchivo.lc_fuenteespacial_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extarchivo.lc_fuenteespacial_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_valuation_model       postgres    false    235            �            1259    578975    extdireccion    TABLE       CREATE TABLE test_ladm_valuation_model.extdireccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 3   DROP TABLE test_ladm_valuation_model.extdireccion;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE extdireccion    COMMENT     y   COMMENT ON TABLE test_ladm_valuation_model.extdireccion IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_valuation_model       postgres    false    228            �&           0    0     COLUMN extdireccion.localizacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extdireccion.localizacion IS 'Par de valores georreferenciados (x,y) en la que se encuentra la dirección.';
            test_ladm_valuation_model       postgres    false    228            �&           0    0 2   COLUMN extdireccion.extinteresado_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extdireccion.extinteresado_ext_direccion_id IS 'Identificador externo del interesado.';
            test_ladm_valuation_model       postgres    false    228            �&           0    0 4   COLUMN extdireccion.lc_construccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extdireccion.lc_construccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    228            �&           0    0 '   COLUMN extdireccion.lc_predio_direccion    COMMENT     j   COMMENT ON COLUMN test_ladm_valuation_model.extdireccion.lc_predio_direccion IS 'Dirección del predio.';
            test_ladm_valuation_model       postgres    false    228            �&           0    0 /   COLUMN extdireccion.lc_terreno_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extdireccion.lc_terreno_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    228            �&           0    0 ;   COLUMN extdireccion.lc_servidumbretransito_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extdireccion.lc_servidumbretransito_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    228            �&           0    0 :   COLUMN extdireccion.lc_unidadconstruccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extdireccion.lc_unidadconstruccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    228            �           1259    580539     extdireccion_clase_via_principal    TABLE     �  CREATE TABLE test_ladm_valuation_model.extdireccion_clase_via_principal (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 G   DROP TABLE test_ladm_valuation_model.extdireccion_clase_via_principal;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580602    extdireccion_sector_ciudad    TABLE     �  CREATE TABLE test_ladm_valuation_model.extdireccion_sector_ciudad (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_valuation_model.extdireccion_sector_ciudad;
       test_ladm_valuation_model         postgres    false    221    9            K           1259    580044    extdireccion_sector_predio    TABLE     �  CREATE TABLE test_ladm_valuation_model.extdireccion_sector_predio (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_valuation_model.extdireccion_sector_predio;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580629    extdireccion_tipo_direccion    TABLE     �  CREATE TABLE test_ladm_valuation_model.extdireccion_tipo_direccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_valuation_model.extdireccion_tipo_direccion;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579032    extinteresado    TABLE     �  CREATE TABLE test_ladm_valuation_model.extinteresado (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    nombre character varying(255),
    documento_escaneado character varying(255),
    extredserviciosfisica_ext_interesado_administrador_id bigint,
    lc_agrupacionintersdos_ext_pid bigint,
    lc_interesado_ext_pid bigint
);
 4   DROP TABLE test_ladm_valuation_model.extinteresado;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE extinteresado    COMMENT     z   COMMENT ON TABLE test_ladm_valuation_model.extinteresado IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_valuation_model       postgres    false    233            �&           0    0    COLUMN extinteresado.nombre    COMMENT     g   COMMENT ON COLUMN test_ladm_valuation_model.extinteresado.nombre IS 'Campo de nombre del interesado.';
            test_ladm_valuation_model       postgres    false    233            �&           0    0 (   COLUMN extinteresado.documento_escaneado    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extinteresado.documento_escaneado IS 'Ruta de almacenamiento del documento escaneado del interesado.';
            test_ladm_valuation_model       postgres    false    233            �&           0    0 J   COLUMN extinteresado.extredserviciosfisica_ext_interesado_administrador_id    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extinteresado.extredserviciosfisica_ext_interesado_administrador_id IS 'Identificador de referencia a un interesado externo que es el administrador.';
            test_ladm_valuation_model       postgres    false    233            �&           0    0 3   COLUMN extinteresado.lc_agrupacionintersdos_ext_pid    COMMENT     }   COMMENT ON COLUMN test_ladm_valuation_model.extinteresado.lc_agrupacionintersdos_ext_pid IS 'Identificador del interesado.';
            test_ladm_valuation_model       postgres    false    233            �&           0    0 *   COLUMN extinteresado.lc_interesado_ext_pid    COMMENT     t   COMMENT ON COLUMN test_ladm_valuation_model.extinteresado.lc_interesado_ext_pid IS 'Identificador del interesado.';
            test_ladm_valuation_model       postgres    false    233            �            1259    579044    extredserviciosfisica    TABLE     �   CREATE TABLE test_ladm_valuation_model.extredserviciosfisica (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    orientada boolean
);
 <   DROP TABLE test_ladm_valuation_model.extredserviciosfisica;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE extredserviciosfisica    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.extredserviciosfisica IS 'Referencia a una clase externa para gestionar las redes físicas de servicios.';
            test_ladm_valuation_model       postgres    false    234            �&           0    0 &   COLUMN extredserviciosfisica.orientada    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.extredserviciosfisica.orientada IS 'Indica si la red de servicios tiene un gradiente o no.';
            test_ladm_valuation_model       postgres    false    234            �            1259    579017    extunidadedificacionfisica    TABLE     �   CREATE TABLE test_ladm_valuation_model.extunidadedificacionfisica (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 A   DROP TABLE test_ladm_valuation_model.extunidadedificacionfisica;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0     TABLE extunidadedificacionfisica    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.extunidadedificacionfisica IS 'Control externo de la unidad de edificación física.';
            test_ladm_valuation_model       postgres    false    231            �            1259    578996    fraccion    TABLE       CREATE TABLE test_ladm_valuation_model.fraccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    denominador integer NOT NULL,
    numerador integer NOT NULL,
    col_miembros_participacion bigint,
    lc_predio_copropiedad_coeficiente bigint,
    CONSTRAINT fraccion_denominador_check CHECK (((denominador >= 0) AND (denominador <= 999999999))),
    CONSTRAINT fraccion_numerador_check CHECK (((numerador >= 0) AND (numerador <= 999999999)))
);
 /   DROP TABLE test_ladm_valuation_model.fraccion;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE fraccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.fraccion IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar una fracción o quebrado cona serie específica de condiciones.';
            test_ladm_valuation_model       postgres    false    229            �&           0    0    COLUMN fraccion.denominador    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.fraccion.denominador IS 'Parte inferior de la fracción. Debe ser mayor que 0. Debe ser mayor que el numerador.';
            test_ladm_valuation_model       postgres    false    229            �&           0    0    COLUMN fraccion.numerador    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.fraccion.numerador IS 'Parte superior de la fracción. Debe ser mayor que 0. Debe sder menor que el denominador.';
            test_ladm_valuation_model       postgres    false    229                       1259    579266 	   gc_barrio    TABLE     Y  CREATE TABLE test_ladm_valuation_model.gc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 0   DROP TABLE test_ladm_valuation_model.gc_barrio;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
            test_ladm_valuation_model       postgres    false    258            �&           0    0    COLUMN gc_barrio.codigo    COMMENT     j   COMMENT ON COLUMN test_ladm_valuation_model.gc_barrio.codigo IS 'Código de identificación del barrio.';
            test_ladm_valuation_model       postgres    false    258            �&           0    0    COLUMN gc_barrio.nombre    COMMENT     V   COMMENT ON COLUMN test_ladm_valuation_model.gc_barrio.nombre IS 'Nombre del barrio.';
            test_ladm_valuation_model       postgres    false    258            �&           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
            test_ladm_valuation_model       postgres    false    258            �&           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_ladm_valuation_model       postgres    false    258                       1259    579276 !   gc_calificacionunidadconstruccion    TABLE     �  CREATE TABLE test_ladm_valuation_model.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 H   DROP TABLE test_ladm_valuation_model.gc_calificacionunidadconstruccion;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
            test_ladm_valuation_model       postgres    false    259            �&           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    259            �&           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    259            �&           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    259            �&           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
            test_ladm_valuation_model       postgres    false    259                       1259    579286    gc_comisionesconstruccion    TABLE     0  CREATE TABLE test_ladm_valuation_model.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 @   DROP TABLE test_ladm_valuation_model.gc_comisionesconstruccion;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    260            �&           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    260            �&           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_valuation_model       postgres    false    260                       1259    579296    gc_comisionesterreno    TABLE     *  CREATE TABLE test_ladm_valuation_model.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 ;   DROP TABLE test_ladm_valuation_model.gc_comisionesterreno;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    261            �&           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    261            �&           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_valuation_model       postgres    false    261                       1259    579306    gc_comisionesunidadconstruccion    TABLE     6  CREATE TABLE test_ladm_valuation_model.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 F   DROP TABLE test_ladm_valuation_model.gc_comisionesunidadconstruccion;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    262            �&           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    262            �&           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_valuation_model       postgres    false    262            \           1259    580197    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_valuation_model.gc_condicionprediotipo;
       test_ladm_valuation_model         postgres    false    221    9                       1259    579316    gc_construccion    TABLE     [  CREATE TABLE test_ladm_valuation_model.gc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_ladm_valuation_model.gc_construccion;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0    COLUMN gc_construccion.etiqueta    COMMENT     i   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     {   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     |   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     j   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.area_construida IS 'Área total construida.';
            test_ladm_valuation_model       postgres    false    263            �&           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    263                       1259    579454    gc_copropiedad    TABLE     �  CREATE TABLE test_ladm_valuation_model.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 5   DROP TABLE test_ladm_valuation_model.gc_copropiedad;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
            test_ladm_valuation_model       postgres    false    277                       1259    579328    gc_datosphcondominio    TABLE     �  CREATE TABLE test_ladm_valuation_model.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 ;   DROP TABLE test_ladm_valuation_model.gc_datosphcondominio;
       test_ladm_valuation_model         postgres    false    221    9            �&           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
            test_ladm_valuation_model       postgres    false    264            �&           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_valuation_model       postgres    false    264            �&           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_valuation_model       postgres    false    264            �&           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_valuation_model       postgres    false    264            �&           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_valuation_model       postgres    false    264            �&           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_valuation_model       postgres    false    264            �&           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
            test_ladm_valuation_model       postgres    false    264             '           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
            test_ladm_valuation_model       postgres    false    264            	           1259    579335    gc_datostorreph    TABLE     �  CREATE TABLE test_ladm_valuation_model.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_ladm_valuation_model.gc_datostorreph;
       test_ladm_valuation_model         postgres    false    221    9            '           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
            test_ladm_valuation_model       postgres    false    265            '           0    0    COLUMN gc_datostorreph.torre    COMMENT     p   COMMENT ON COLUMN test_ladm_valuation_model.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
            test_ladm_valuation_model       postgres    false    265            '           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     p   COMMENT ON COLUMN test_ladm_valuation_model.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
            test_ladm_valuation_model       postgres    false    265            '           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
            test_ladm_valuation_model       postgres    false    265            '           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     o   COMMENT ON COLUMN test_ladm_valuation_model.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
            test_ladm_valuation_model       postgres    false    265            '           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
            test_ladm_valuation_model       postgres    false    265            
           1259    579342    gc_direccion    TABLE     H  CREATE TABLE test_ladm_valuation_model.gc_direccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 3   DROP TABLE test_ladm_valuation_model.gc_direccion;
       test_ladm_valuation_model         postgres    false    221    9            '           0    0    COLUMN gc_direccion.valor    COMMENT     m   COMMENT ON COLUMN test_ladm_valuation_model.gc_direccion.valor IS 'Registros de la direcciones del predio.';
            test_ladm_valuation_model       postgres    false    266            '           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
            test_ladm_valuation_model       postgres    false    266            	'           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
            test_ladm_valuation_model       postgres    false    266            
'           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
            test_ladm_valuation_model       postgres    false    266                       1259    579353    gc_estadopredio    TABLE     J  CREATE TABLE test_ladm_valuation_model.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 6   DROP TABLE test_ladm_valuation_model.gc_estadopredio;
       test_ladm_valuation_model         postgres    false    221    9            '           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    267            '           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    267            '           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
            test_ladm_valuation_model       postgres    false    267            '           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
            test_ladm_valuation_model       postgres    false    267            '           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
            test_ladm_valuation_model       postgres    false    267                       1259    579360 
   gc_manzana    TABLE     d  CREATE TABLE test_ladm_valuation_model.gc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 1   DROP TABLE test_ladm_valuation_model.gc_manzana;
       test_ladm_valuation_model         postgres    false    221    9            '           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
            test_ladm_valuation_model       postgres    false    268            '           0    0    COLUMN gc_manzana.codigo    COMMENT     t   COMMENT ON COLUMN test_ladm_valuation_model.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
            test_ladm_valuation_model       postgres    false    268            '           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     w   COMMENT ON COLUMN test_ladm_valuation_model.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
            test_ladm_valuation_model       postgres    false    268            '           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
            test_ladm_valuation_model       postgres    false    268            '           0    0    COLUMN gc_manzana.geometria    COMMENT     n   COMMENT ON COLUMN test_ladm_valuation_model.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
            test_ladm_valuation_model       postgres    false    268                       1259    579370    gc_perimetro    TABLE     �  CREATE TABLE test_ladm_valuation_model.gc_perimetro (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 3   DROP TABLE test_ladm_valuation_model.gc_perimetro;
       test_ladm_valuation_model         postgres    false    221    9            '           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
            test_ladm_valuation_model       postgres    false    269            '           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
            test_ladm_valuation_model       postgres    false    269            '           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
            test_ladm_valuation_model       postgres    false    269            '           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     |   COMMENT ON COLUMN test_ladm_valuation_model.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
            test_ladm_valuation_model       postgres    false    269            '           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
            test_ladm_valuation_model       postgres    false    269            '           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     m   COMMENT ON COLUMN test_ladm_valuation_model.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
            test_ladm_valuation_model       postgres    false    269            '           0    0    COLUMN gc_perimetro.geometria    COMMENT     j   COMMENT ON COLUMN test_ladm_valuation_model.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
            test_ladm_valuation_model       postgres    false    269                       1259    579443    gc_prediocatastro    TABLE     �  CREATE TABLE test_ladm_valuation_model.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 8   DROP TABLE test_ladm_valuation_model.gc_prediocatastro;
       test_ladm_valuation_model         postgres    false    221    9            '           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
            test_ladm_valuation_model       postgres    false    276            '           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
            test_ladm_valuation_model       postgres    false    276            '           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT       COMMENT ON COLUMN test_ladm_valuation_model.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_valuation_model       postgres    false    276            '           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT       COMMENT ON COLUMN test_ladm_valuation_model.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_valuation_model       postgres    false    276             '           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     Q  COMMENT ON COLUMN test_ladm_valuation_model.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_valuation_model       postgres    false    276            !'           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
            test_ladm_valuation_model       postgres    false    276            "'           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
            test_ladm_valuation_model       postgres    false    276            #'           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
            test_ladm_valuation_model       postgres    false    276            $'           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     |   COMMENT ON COLUMN test_ladm_valuation_model.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_valuation_model       postgres    false    276            %'           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     P  COMMENT ON COLUMN test_ladm_valuation_model.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_valuation_model       postgres    false    276            &'           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
            test_ladm_valuation_model       postgres    false    276            ''           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT     s   COMMENT ON COLUMN test_ladm_valuation_model.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
            test_ladm_valuation_model       postgres    false    276                       1259    579380    gc_propietario    TABLE     B  CREATE TABLE test_ladm_valuation_model.gc_propietario (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 5   DROP TABLE test_ladm_valuation_model.gc_propietario;
       test_ladm_valuation_model         postgres    false    221    9            ('           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
            test_ladm_valuation_model       postgres    false    270            )'           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    270            *'           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    270            +'           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
            test_ladm_valuation_model       postgres    false    270            ,'           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     z   COMMENT ON COLUMN test_ladm_valuation_model.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
            test_ladm_valuation_model       postgres    false    270            -'           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     |   COMMENT ON COLUMN test_ladm_valuation_model.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
            test_ladm_valuation_model       postgres    false    270            .'           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     ~   COMMENT ON COLUMN test_ladm_valuation_model.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
            test_ladm_valuation_model       postgres    false    270            /'           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
            test_ladm_valuation_model       postgres    false    270            0'           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
            test_ladm_valuation_model       postgres    false    270                       1259    579390    gc_sectorrural    TABLE       CREATE TABLE test_ladm_valuation_model.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 5   DROP TABLE test_ladm_valuation_model.gc_sectorrural;
       test_ladm_valuation_model         postgres    false    221    9            1'           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
            test_ladm_valuation_model       postgres    false    271            2'           0    0    COLUMN gc_sectorrural.codigo    COMMENT     ~   COMMENT ON COLUMN test_ladm_valuation_model.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_valuation_model       postgres    false    271            3'           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    271                       1259    579400    gc_sectorurbano    TABLE       CREATE TABLE test_ladm_valuation_model.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 6   DROP TABLE test_ladm_valuation_model.gc_sectorurbano;
       test_ladm_valuation_model         postgres    false    221    9            4'           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
            test_ladm_valuation_model       postgres    false    272            5'           0    0    COLUMN gc_sectorurbano.codigo    COMMENT        COMMENT ON COLUMN test_ladm_valuation_model.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_valuation_model       postgres    false    272            6'           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    272            R           1259    580107    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 E   DROP TABLE test_ladm_valuation_model.gc_sistemaprocedenciadatostipo;
       test_ladm_valuation_model         postgres    false    221    9                       1259    579410 
   gc_terreno    TABLE     `  CREATE TABLE test_ladm_valuation_model.gc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_valuation_model.gc_terreno;
       test_ladm_valuation_model         postgres    false    221    9            7'           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
            test_ladm_valuation_model       postgres    false    273            8'           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    273            9'           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    273            :'           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
            test_ladm_valuation_model       postgres    false    273            ;'           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT     y   COMMENT ON COLUMN test_ladm_valuation_model.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
            test_ladm_valuation_model       postgres    false    273            <'           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    273                       1259    579421    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_ladm_valuation_model.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 <   DROP TABLE test_ladm_valuation_model.gc_unidadconstruccion;
       test_ladm_valuation_model         postgres    false    221    9            ='           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_valuation_model       postgres    false    274            >'           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_valuation_model       postgres    false    274            ?'           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT     y   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    274            @'           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_valuation_model       postgres    false    274            A'           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_valuation_model       postgres    false    274            B'           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_valuation_model       postgres    false    274            C'           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    274            D'           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    274            E'           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    274            F'           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    274            G'           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_valuation_model       postgres    false    274            H'           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    274            I'           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
            test_ladm_valuation_model       postgres    false    274            J'           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    274            K'           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_valuation_model       postgres    false    274            L'           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    274            M'           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_valuation_model       postgres    false    274            u           1259    580422    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_valuation_model.gc_unidadconstrucciontipo;
       test_ladm_valuation_model         postgres    false    221    9                       1259    579433 	   gc_vereda    TABLE     �  CREATE TABLE test_ladm_valuation_model.gc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 0   DROP TABLE test_ladm_valuation_model.gc_vereda;
       test_ladm_valuation_model         postgres    false    221    9            N'           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
            test_ladm_valuation_model       postgres    false    275            O'           0    0    COLUMN gc_vereda.codigo    COMMENT     r   COMMENT ON COLUMN test_ladm_valuation_model.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
            test_ladm_valuation_model       postgres    false    275            P'           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     {   COMMENT ON COLUMN test_ladm_valuation_model.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
            test_ladm_valuation_model       postgres    false    275            Q'           0    0    COLUMN gc_vereda.nombre    COMMENT     X   COMMENT ON COLUMN test_ladm_valuation_model.gc_vereda.nombre IS 'Nombre de la vereda.';
            test_ladm_valuation_model       postgres    false    275            R'           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
            test_ladm_valuation_model       postgres    false    275            S'           0    0    COLUMN gc_vereda.geometria    COMMENT     e   COMMENT ON COLUMN test_ladm_valuation_model.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
            test_ladm_valuation_model       postgres    false    275            �            1259    578931    gm_multisurface2d    TABLE     �   CREATE TABLE test_ladm_valuation_model.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 8   DROP TABLE test_ladm_valuation_model.gm_multisurface2d;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    578948    gm_multisurface3d    TABLE     �   CREATE TABLE test_ladm_valuation_model.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 8   DROP TABLE test_ladm_valuation_model.gm_multisurface3d;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    578920    gm_surface2dlistvalue    TABLE       CREATE TABLE test_ladm_valuation_model.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 <   DROP TABLE test_ladm_valuation_model.gm_surface2dlistvalue;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    578937    gm_surface3dlistvalue    TABLE       CREATE TABLE test_ladm_valuation_model.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 <   DROP TABLE test_ladm_valuation_model.gm_surface3dlistvalue;
       test_ladm_valuation_model         postgres    false    221    9            �            1259    579023    imagen    TABLE     1  CREATE TABLE test_ladm_valuation_model.imagen (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    uri character varying(255),
    extinteresado_huella_dactilar bigint,
    extinteresado_fotografia bigint,
    extinteresado_firma bigint
);
 -   DROP TABLE test_ladm_valuation_model.imagen;
       test_ladm_valuation_model         postgres    false    221    9            T'           0    0    TABLE imagen    COMMENT     a   COMMENT ON TABLE test_ladm_valuation_model.imagen IS 'Referencia a una imagen mediante su url.';
            test_ladm_valuation_model       postgres    false    232            U'           0    0    COLUMN imagen.uri    COMMENT     O   COMMENT ON COLUMN test_ladm_valuation_model.imagen.uri IS 'url de la imagen.';
            test_ladm_valuation_model       postgres    false    232            V'           0    0 +   COLUMN imagen.extinteresado_huella_dactilar    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.imagen.extinteresado_huella_dactilar IS 'Imagen de la huella dactilar del interesado.';
            test_ladm_valuation_model       postgres    false    232            W'           0    0 &   COLUMN imagen.extinteresado_fotografia    COMMENT     n   COMMENT ON COLUMN test_ladm_valuation_model.imagen.extinteresado_fotografia IS 'Fotografía del interesado.';
            test_ladm_valuation_model       postgres    false    232            X'           0    0 !   COLUMN imagen.extinteresado_firma    COMMENT     c   COMMENT ON COLUMN test_ladm_valuation_model.imagen.extinteresado_firma IS 'Firma del interesado.';
            test_ladm_valuation_model       postgres    false    232            `           1259    580233    ini_emparejamientotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.ini_emparejamientotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_valuation_model.ini_emparejamientotipo;
       test_ladm_valuation_model         postgres    false    221    9                       1259    579528    ini_predioinsumos    TABLE     8  CREATE TABLE test_ladm_valuation_model.ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_emparejamiento bigint,
    observaciones text,
    gc_predio_catastro bigint,
    snr_predio_juridico bigint
);
 8   DROP TABLE test_ladm_valuation_model.ini_predioinsumos;
       test_ladm_valuation_model         postgres    false    221    9            Y'           0    0    TABLE ini_predioinsumos    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.ini_predioinsumos IS 'Clase que relaciona los predios en los modelos de insumos para el Gestor Catastral y la SNR.';
            test_ladm_valuation_model       postgres    false    285            Z'           0    0 ,   COLUMN ini_predioinsumos.tipo_emparejamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.ini_predioinsumos.tipo_emparejamiento IS 'Tipo de emparejamiento de insumos Catastro-Registro';
            test_ladm_valuation_model       postgres    false    285            ['           0    0 &   COLUMN ini_predioinsumos.observaciones    COMMENT     q   COMMENT ON COLUMN test_ladm_valuation_model.ini_predioinsumos.observaciones IS 'Observaciones de la relación.';
            test_ladm_valuation_model       postgres    false    285            s           1259    580404    lc_acuerdotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_acuerdotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_valuation_model.lc_acuerdotipo;
       test_ladm_valuation_model         postgres    false    221    9                       1259    579540    lc_agrupacioninteresados    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_agrupacioninteresados (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 ?   DROP TABLE test_ladm_valuation_model.lc_agrupacioninteresados;
       test_ladm_valuation_model         postgres    false    221    9            \'           0    0    TABLE lc_agrupacioninteresados    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_agrupacioninteresados IS 'Clase que hereda los atributos de la  Clase COL_Agrupación_Interesados.';
            test_ladm_valuation_model       postgres    false    286            ]'           0    0 $   COLUMN lc_agrupacioninteresados.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_agrupacioninteresados.tipo IS 'Indica el tipo de agrupación del que se trata.';
            test_ladm_valuation_model       postgres    false    286            ^'           0    0 &   COLUMN lc_agrupacioninteresados.nombre    COMMENT     i   COMMENT ON COLUMN test_ladm_valuation_model.lc_agrupacioninteresados.nombre IS 'Nombre del interesado.';
            test_ladm_valuation_model       postgres    false    286            _'           0    0 :   COLUMN lc_agrupacioninteresados.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_agrupacioninteresados.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    286            `'           0    0 5   COLUMN lc_agrupacioninteresados.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_agrupacioninteresados.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    286            a'           0    0 2   COLUMN lc_agrupacioninteresados.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_agrupacioninteresados.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    286            b'           0    0 (   COLUMN lc_agrupacioninteresados.local_id    COMMENT     p   COMMENT ON COLUMN test_ladm_valuation_model.lc_agrupacioninteresados.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    286            O           1259    580080    lc_anexotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_anexotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_valuation_model.lc_anexotipo;
       test_ladm_valuation_model         postgres    false    221    9            2           1259    579784    lc_calificacionconvencional    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_calificacionconvencional (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_calificar bigint NOT NULL,
    total_calificacion integer NOT NULL,
    lc_unidad_construccion bigint,
    CONSTRAINT lc_calificacionconvencnal_total_calificacion_check CHECK (((total_calificacion >= 0) AND (total_calificacion <= 999999999)))
);
 B   DROP TABLE test_ladm_valuation_model.lc_calificacionconvencional;
       test_ladm_valuation_model         postgres    false    221    9            c'           0    0 !   TABLE lc_calificacionconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_calificacionconvencional IS 'Proceso mediante el cual se le asigna un puntaje a las edificaciones de acuerdo a sus características constructivas';
            test_ladm_valuation_model       postgres    false    306            d'           0    0 1   COLUMN lc_calificacionconvencional.tipo_calificar    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_calificacionconvencional.tipo_calificar IS 'Indica si la calificación de construcción corresponde a residencial, comercial o industrial.';
            test_ladm_valuation_model       postgres    false    306            e'           0    0 5   COLUMN lc_calificacionconvencional.total_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_calificacionconvencional.total_calificacion IS 'Puntaje total de la calificación de la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    306            3           1259    579793    lc_calificacionnoconvencional    TABLE        CREATE TABLE test_ladm_valuation_model.lc_calificacionnoconvencional (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_anexo bigint NOT NULL,
    lc_unidad_construccion bigint
);
 D   DROP TABLE test_ladm_valuation_model.lc_calificacionnoconvencional;
       test_ladm_valuation_model         postgres    false    221    9            f'           0    0 #   TABLE lc_calificacionnoconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_calificacionnoconvencional IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_valuation_model       postgres    false    307            g'           0    0 /   COLUMN lc_calificacionnoconvencional.tipo_anexo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_calificacionnoconvencional.tipo_anexo IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_valuation_model       postgres    false    307            }           1259    580494    lc_calificartipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_calificartipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_valuation_model.lc_calificartipo;
       test_ladm_valuation_model         postgres    false    221    9            z           1259    580467    lc_categoriasuelotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_categoriasuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_valuation_model.lc_categoriasuelotipo;
       test_ladm_valuation_model         postgres    false    221    9            X           1259    580161    lc_clasecalificaciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_clasecalificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_valuation_model.lc_clasecalificaciontipo;
       test_ladm_valuation_model         postgres    false    221    9            d           1259    580269    lc_clasesuelotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_clasesuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_valuation_model.lc_clasesuelotipo;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580611    lc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_valuation_model.lc_condicionprediotipo;
       test_ladm_valuation_model         postgres    false    221    9                       1259    579551    lc_construccion    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_ladm_valuation_model.lc_construccion;
       test_ladm_valuation_model         postgres    false    221    9            h'           0    0    TABLE lc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_construccion IS 'Es la unión de materiales adheridos al terreno, con carácter de permanente, cualesquiera sean los elementos que la constituyan.';
            test_ladm_valuation_model       postgres    false    287            i'           0    0 $   COLUMN lc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_valuation_model       postgres    false    287            j'           0    0 (   COLUMN lc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_valuation_model       postgres    false    287            k'           0    0 #   COLUMN lc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_valuation_model       postgres    false    287            l'           0    0 #   COLUMN lc_construccion.numero_pisos    COMMENT     {   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_valuation_model       postgres    false    287            m'           0    0 %   COLUMN lc_construccion.numero_sotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_valuation_model       postgres    false    287            n'           0    0 '   COLUMN lc_construccion.numero_mezanines    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_valuation_model       postgres    false    287            o'           0    0 )   COLUMN lc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_valuation_model       postgres    false    287            p'           0    0 (   COLUMN lc_construccion.anio_construccion    COMMENT     ~   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.anio_construccion IS 'Año de edificación de la construcción.';
            test_ladm_valuation_model       postgres    false    287            q'           0    0 *   COLUMN lc_construccion.avaluo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.avaluo_construccion IS 'Avalúo total catastral de la construcción.';
            test_ladm_valuation_model       postgres    false    287            r'           0    0 (   COLUMN lc_construccion.area_construccion    COMMENT     l   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.area_construccion IS 'Área total construida.';
            test_ladm_valuation_model       postgres    false    287            s'           0    0    COLUMN lc_construccion.altura    COMMENT     k   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.altura IS 'Altura total de la construcción.';
            test_ladm_valuation_model       postgres    false    287            t'           0    0 $   COLUMN lc_construccion.observaciones    COMMENT     }   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.observaciones IS 'Observaciones generales de la construcción.';
            test_ladm_valuation_model       postgres    false    287            u'           0    0     COLUMN lc_construccion.dimension    COMMENT     c   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.dimension IS 'Dimensión del objeto.';
            test_ladm_valuation_model       postgres    false    287            v'           0    0    COLUMN lc_construccion.etiqueta    COMMENT     ~   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    287            w'           0    0 *   COLUMN lc_construccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    287            x'           0    0     COLUMN lc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_valuation_model       postgres    false    287            y'           0    0 1   COLUMN lc_construccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    287            z'           0    0 ,   COLUMN lc_construccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    287            {'           0    0 )   COLUMN lc_construccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    287            |'           0    0    COLUMN lc_construccion.local_id    COMMENT     g   COMMENT ON COLUMN test_ladm_valuation_model.lc_construccion.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    287            {           1259    580476    lc_construccionplantatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_construccionplantatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_valuation_model.lc_construccionplantatipo;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580656    lc_construcciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_construcciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_valuation_model.lc_construcciontipo;
       test_ladm_valuation_model         postgres    false    221    9                        1259    579566    lc_contactovisita    TABLE     =  CREATE TABLE test_ladm_valuation_model.lc_contactovisita (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 8   DROP TABLE test_ladm_valuation_model.lc_contactovisita;
       test_ladm_valuation_model         postgres    false    221    9            }'           0    0 5   COLUMN lc_contactovisita.tipo_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_contactovisita.tipo_documento_quien_atendio IS 'Indica el tipo de documento de la persona que atendió la visita predial.';
            test_ladm_valuation_model       postgres    false    288            ~'           0    0 7   COLUMN lc_contactovisita.numero_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_contactovisita.numero_documento_quien_atendio IS 'Indica el número de documento de la persona que atendió la visita predial.';
            test_ladm_valuation_model       postgres    false    288            '           0    0 4   COLUMN lc_contactovisita.primer_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_contactovisita.primer_nombre_quien_atendio IS 'Primer nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_valuation_model       postgres    false    288            �'           0    0 5   COLUMN lc_contactovisita.segundo_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_contactovisita.segundo_nombre_quien_atendio IS 'Segundo nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_valuation_model       postgres    false    288            �'           0    0 6   COLUMN lc_contactovisita.primer_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_contactovisita.primer_apellido_quien_atendio IS 'Primer apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_valuation_model       postgres    false    288            �'           0    0 7   COLUMN lc_contactovisita.segundo_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_contactovisita.segundo_apellido_quien_atendio IS 'Segundo apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_valuation_model       postgres    false    288            �'           0    0 ,   COLUMN lc_contactovisita.relacion_con_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_contactovisita.relacion_con_predio IS 'Relación con el predio de la persona encargada de atender la visita, por ejemplo propietario, encargado, administrador, poseedor, etc.';
            test_ladm_valuation_model       postgres    false    288            �'           0    0 1   COLUMN lc_contactovisita.domicilio_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_contactovisita.domicilio_notificaciones IS 'Dirección de domicilio para notificaciones.';
            test_ladm_valuation_model       postgres    false    288            �'           0    0     COLUMN lc_contactovisita.celular    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_contactovisita.celular IS 'Número de celular de la persona que atendió la visita de actividades catastrales.';
            test_ladm_valuation_model       postgres    false    288            �'           0    0 +   COLUMN lc_contactovisita.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_contactovisita.correo_electronico IS 'Correo electrónico de la persona que atendió la visita de actividades catastrales.';
            test_ladm_valuation_model       postgres    false    288            �'           0    0 0   COLUMN lc_contactovisita.autoriza_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_contactovisita.autoriza_notificaciones IS 'Indica si autoriza las notificaciones administrativas por medio de vía electrónica.';
            test_ladm_valuation_model       postgres    false    288            4           1259    579802 )   lc_datosadicionaleslevantamientocatastral    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 P   DROP TABLE test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0 /   TABLE lc_datosadicionaleslevantamientocatastral    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral IS 'Datos de adicionales del predio para catastro multipropósito';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.tiene_area_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.tiene_area_registral IS 'Indica si el predio según la información registral cuenta con el valor de área en la cabida y linderos.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 B   COLUMN lc_datosadicionaleslevantamientocatastral.area_registral_m2    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.area_registral_m2 IS 'Indica el valor del área registral del predio en metros cuadrados.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 R   COLUMN lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral    COMMENT     �  COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral IS 'Se considerará como procedimientos catastrales con efectos registrales los siguientes: actualización de linderos, rectificación de área por imprecisa determinación, actualización masiva y puntual de linderos y áreas, rectificación de linderos por acuerdo entre las partes, e inclusión de área y/o linderos.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 F   COLUMN lc_datosadicionaleslevantamientocatastral.destinacion_economica    COMMENT     h  COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 <   COLUMN lc_datosadicionaleslevantamientocatastral.clase_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.clase_suelo IS 'Clasificación del suelo según el instrumento de planeación vigente.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 @   COLUMN lc_datosadicionaleslevantamientocatastral.categoria_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.categoria_suelo IS 'Categoría del suelo según el instrumento de planeación vigente.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 >   COLUMN lc_datosadicionaleslevantamientocatastral.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.observaciones IS 'Observaciones generales respecto del predio.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.fecha_visita_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.fecha_visita_predial IS 'Fecha de la visita en campo al predio.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor IS 'Indica el tipo de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor IS 'Indica el número de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor IS 'Primer nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor IS 'Segundo nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 L   COLUMN lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor IS 'Primer apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor IS 'Segundo apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 A   COLUMN lc_datosadicionaleslevantamientocatastral.resultado_visita    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.resultado_visita IS 'Posibles situaciones que se presentan y afectan el resultado del levantamiento de la información en campo.';
            test_ladm_valuation_model       postgres    false    308            �'           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia    COMMENT       COMMENT ON COLUMN test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia IS 'Indica si dentro del proceso de formación o actualización catastral se suscribe acta de colindancia para el predio objeto de levantamiento catastral.';
            test_ladm_valuation_model       postgres    false    308            !           1259    579579    lc_datosphcondominio    TABLE       CREATE TABLE test_ladm_valuation_model.lc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 ;   DROP TABLE test_ladm_valuation_model.lc_datosphcondominio;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0    TABLE lc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal.';
            test_ladm_valuation_model       postgres    false    289            �'           0    0 .   COLUMN lc_datosphcondominio.area_total_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosphcondominio.area_total_terreno IS 'Área total del terreno del PH o Condominio Matriz.';
            test_ladm_valuation_model       postgres    false    289            �'           0    0 6   COLUMN lc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_valuation_model       postgres    false    289            �'           0    0 4   COLUMN lc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_valuation_model       postgres    false    289            �'           0    0 1   COLUMN lc_datosphcondominio.area_total_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosphcondominio.area_total_construida IS 'Área total de construida del PH o Condominio Matriz.';
            test_ladm_valuation_model       postgres    false    289            �'           0    0 9   COLUMN lc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_valuation_model       postgres    false    289            �'           0    0 7   COLUMN lc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_valuation_model       postgres    false    289            �'           0    0 )   COLUMN lc_datosphcondominio.numero_torres    COMMENT     ~   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosphcondominio.numero_torres IS 'Número de torres en el PH o Condominio.';
            test_ladm_valuation_model       postgres    false    289            �'           0    0 3   COLUMN lc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_valuation_model       postgres    false    289            "           1259    579587 
   lc_derecho    TABLE       CREATE TABLE test_ladm_valuation_model.lc_derecho (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_valuation_model.lc_derecho;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0    TABLE lc_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_derecho IS 'Clase que registra las instancias de los derechos que un interesado ejerce sobre un predio. Es una especialización de la clase COL_DRR del propio modelo.';
            test_ladm_valuation_model       postgres    false    290            �'           0    0    COLUMN lc_derecho.tipo    COMMENT     Y   COMMENT ON COLUMN test_ladm_valuation_model.lc_derecho.tipo IS 'Derecho que se ejerce.';
            test_ladm_valuation_model       postgres    false    290            �'           0    0 "   COLUMN lc_derecho.fraccion_derecho    COMMENT     �  COMMENT ON COLUMN test_ladm_valuation_model.lc_derecho.fraccion_derecho IS 'Indica la fracción del derecho en relación a la forma de tenencia y el área que esta ocupa dentro de la extensión del predio. Ejemplo: un predio informal que se encuentra sobre un predio baldío y un predio privado tendrá un porcentaje de derecho de ocupación y posesión expresado en tanto por uno (0.0000000000 a 1.0000000000).';
            test_ladm_valuation_model       postgres    false    290            �'           0    0 '   COLUMN lc_derecho.fecha_inicio_tenencia    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_derecho.fecha_inicio_tenencia IS 'Fecha de inicio de tenencia del interesado con respecto al predio.';
            test_ladm_valuation_model       postgres    false    290            �'           0    0    COLUMN lc_derecho.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_derecho.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_valuation_model       postgres    false    290            �'           0    0 ,   COLUMN lc_derecho.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_derecho.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    290            �'           0    0 '   COLUMN lc_derecho.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_derecho.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    290            �'           0    0 $   COLUMN lc_derecho.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_derecho.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    290            �'           0    0    COLUMN lc_derecho.local_id    COMMENT     b   COMMENT ON COLUMN test_ladm_valuation_model.lc_derecho.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    290            J           1259    580035    lc_derechotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_derechotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_valuation_model.lc_derechotipo;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580548    lc_destinacioneconomicatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_destinacioneconomicatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_valuation_model.lc_destinacioneconomicatipo;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580683    lc_dominioconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_dominioconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_valuation_model.lc_dominioconstrucciontipo;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580530    lc_estadoconservaciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_estadoconservaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_valuation_model.lc_estadoconservaciontipo;
       test_ladm_valuation_model         postgres    false    221    9            #           1259    579601    lc_estructuranovedadfmi    TABLE     .  CREATE TABLE test_ladm_valuation_model.lc_estructuranovedadfmi (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(3),
    numero_fmi character varying(80),
    lc_dtsdcnlstmntctstral_novedad_fmi bigint
);
 >   DROP TABLE test_ladm_valuation_model.lc_estructuranovedadfmi;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0 A   COLUMN lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi IS 'Relaciona los cambios del predio respecto de la información registral vigente.';
            test_ladm_valuation_model       postgres    false    291            $           1259    579608 !   lc_estructuranovedadnumeropredial    TABLE     F  CREATE TABLE test_ladm_valuation_model.lc_estructuranovedadnumeropredial (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    numero_predial character varying(30) NOT NULL,
    tipo_novedad bigint,
    lc_dtsdcnlstmntctstral_novedad_numeros_prediales bigint
);
 H   DROP TABLE test_ladm_valuation_model.lc_estructuranovedadnumeropredial;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0 Y   COLUMN lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales IS 'Relaciona los cambios del predio respecto de la información catastral vigente.';
            test_ladm_valuation_model       postgres    false    292            e           1259    580278 .   lc_estructuranovedadnumeropredial_tipo_novedad    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_estructuranovedadnumeropredial_tipo_novedad (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 U   DROP TABLE test_ladm_valuation_model.lc_estructuranovedadnumeropredial_tipo_novedad;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580638    lc_fotoidentificaciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_fotoidentificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_valuation_model.lc_fotoidentificaciontipo;
       test_ladm_valuation_model         postgres    false    221    9            %           1259    579616    lc_fuenteadministrativa    TABLE     8  CREATE TABLE test_ladm_valuation_model.lc_fuenteadministrativa (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 >   DROP TABLE test_ladm_valuation_model.lc_fuenteadministrativa;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0    TABLE lc_fuenteadministrativa    COMMENT       COMMENT ON TABLE test_ladm_valuation_model.lc_fuenteadministrativa IS 'Clase que almacena las fuentes administrativas (escrituras, sentencias, actos administrativos, etc) que sustentan el Derecho respecto de la relación de tenencia entre el Interesado y el predio.';
            test_ladm_valuation_model       postgres    false    293            �'           0    0 #   COLUMN lc_fuenteadministrativa.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteadministrativa.tipo IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_valuation_model       postgres    false    293            �'           0    0 *   COLUMN lc_fuenteadministrativa.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteadministrativa.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_valuation_model       postgres    false    293            �'           0    0 *   COLUMN lc_fuenteadministrativa.observacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteadministrativa.observacion IS 'Observaciones o descripción del documento de la fuente administrativa.';
            test_ladm_valuation_model       postgres    false    293            �'           0    0 ,   COLUMN lc_fuenteadministrativa.numero_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteadministrativa.numero_fuente IS 'Identificador del documento, ejemplo: número de la resolución, número de la escritura pública o número de radicado de una sentencia.';
            test_ladm_valuation_model       postgres    false    293            �'           0    0 4   COLUMN lc_fuenteadministrativa.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteadministrativa.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_valuation_model       postgres    false    293            �'           0    0 -   COLUMN lc_fuenteadministrativa.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteadministrativa.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_valuation_model       postgres    false    293            �'           0    0 5   COLUMN lc_fuenteadministrativa.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteadministrativa.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_valuation_model       postgres    false    293            �'           0    0 1   COLUMN lc_fuenteadministrativa.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteadministrativa.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    293            �'           0    0 '   COLUMN lc_fuenteadministrativa.local_id    COMMENT     o   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteadministrativa.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    293            P           1259    580089    lc_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_valuation_model.lc_fuenteadministrativatipo;
       test_ladm_valuation_model         postgres    false    221    9            &           1259    579629    lc_fuenteespacial    TABLE       CREATE TABLE test_ladm_valuation_model.lc_fuenteespacial (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 8   DROP TABLE test_ladm_valuation_model.lc_fuenteespacial;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0    TABLE lc_fuenteespacial    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_fuenteespacial IS 'Clase que hereda los atributos de la  Clase COL_FuenteEspacial.';
            test_ladm_valuation_model       postgres    false    294            �'           0    0    COLUMN lc_fuenteespacial.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteespacial.nombre IS 'Nombre de la fuente espacial del levantamiento catastral de un predio.';
            test_ladm_valuation_model       postgres    false    294            �'           0    0    COLUMN lc_fuenteespacial.tipo    COMMENT     b   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteespacial.tipo IS 'Tipo de fuente espacial.';
            test_ladm_valuation_model       postgres    false    294            �'           0    0 $   COLUMN lc_fuenteespacial.descripcion    COMMENT     t   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteespacial.descripcion IS 'Descripción de la fuente espacial.';
            test_ladm_valuation_model       postgres    false    294            �'           0    0 !   COLUMN lc_fuenteespacial.metadato    COMMENT     m   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteespacial.metadato IS 'Metadato de la fuente espacial.';
            test_ladm_valuation_model       postgres    false    294            �'           0    0 .   COLUMN lc_fuenteespacial.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteespacial.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_valuation_model       postgres    false    294            �'           0    0 '   COLUMN lc_fuenteespacial.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteespacial.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_valuation_model       postgres    false    294            �'           0    0 /   COLUMN lc_fuenteespacial.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteespacial.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_valuation_model       postgres    false    294            �'           0    0 +   COLUMN lc_fuenteespacial.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteespacial.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    294            �'           0    0 !   COLUMN lc_fuenteespacial.local_id    COMMENT     i   COMMENT ON COLUMN test_ladm_valuation_model.lc_fuenteespacial.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    294            '           1259    579642    lc_grupocalificacion    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_grupocalificacion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    clase_calificacion bigint NOT NULL,
    conservacion bigint NOT NULL,
    subtotal integer NOT NULL,
    lc_calificacion_convencional bigint NOT NULL,
    CONSTRAINT lc_grupocalificacion_subtotal_check CHECK (((subtotal >= 0) AND (subtotal <= 9999999)))
);
 ;   DROP TABLE test_ladm_valuation_model.lc_grupocalificacion;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0    TABLE lc_grupocalificacion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_grupocalificacion IS 'Calificación de la construccion según los item determinados para calificar.';
            test_ladm_valuation_model       postgres    false    295            �'           0    0 .   COLUMN lc_grupocalificacion.clase_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_grupocalificacion.clase_calificacion IS 'Indica los elementos generales de la calificación de la construcción de acuerdo al método vigente.';
            test_ladm_valuation_model       postgres    false    295            �'           0    0 (   COLUMN lc_grupocalificacion.conservacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_grupocalificacion.conservacion IS 'Estado de conservación del grupo calificado.';
            test_ladm_valuation_model       postgres    false    295            �'           0    0 $   COLUMN lc_grupocalificacion.subtotal    COMMENT     o   COMMENT ON COLUMN test_ladm_valuation_model.lc_grupocalificacion.subtotal IS 'Subtotal del grupo calificado.';
            test_ladm_valuation_model       postgres    false    295            N           1259    580071    lc_grupoetnicotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_grupoetnicotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_valuation_model.lc_grupoetnicotipo;
       test_ladm_valuation_model         postgres    false    221    9            (           1259    579652    lc_interesado    TABLE     I  CREATE TABLE test_ladm_valuation_model.lc_interesado (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 4   DROP TABLE test_ladm_valuation_model.lc_interesado;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0    TABLE lc_interesado    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_interesado IS 'Es la parte que tiene una relación con el predio por algún tipo de derecho, restricción, publicidad o responsabilidad';
            test_ladm_valuation_model       postgres    false    296            �'           0    0    COLUMN lc_interesado.tipo    COMMENT     f   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.tipo IS 'Tipo de persona del que se trata';
            test_ladm_valuation_model       postgres    false    296            �'           0    0 #   COLUMN lc_interesado.tipo_documento    COMMENT     s   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0 (   COLUMN lc_interesado.documento_identidad    COMMENT     {   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.documento_identidad IS 'Documento de identidad del interesado.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0 "   COLUMN lc_interesado.primer_nombre    COMMENT     s   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.primer_nombre IS 'Primer nombre de la persona física.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0 #   COLUMN lc_interesado.segundo_nombre    COMMENT     u   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.segundo_nombre IS 'Segundo nombre de la persona física.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0 $   COLUMN lc_interesado.primer_apellido    COMMENT     w   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0 %   COLUMN lc_interesado.segundo_apellido    COMMENT     y   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0    COLUMN lc_interesado.sexo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.sexo IS 'Condición orgánica que distingue a los machos de las hembras.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0 !   COLUMN lc_interesado.razon_social    COMMENT     o   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.razon_social IS 'Nombre con el que está inscrito.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0    COLUMN lc_interesado.nombre    COMMENT     ^   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.nombre IS 'Nombre del interesado.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0 /   COLUMN lc_interesado.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0 *   COLUMN lc_interesado.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0 '   COLUMN lc_interesado.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    296            �'           0    0    COLUMN lc_interesado.local_id    COMMENT     e   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesado.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    296            )           1259    579666    lc_interesadocontacto    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_interesadocontacto (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 <   DROP TABLE test_ladm_valuation_model.lc_interesadocontacto;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0    TABLE lc_interesadocontacto    COMMENT     q   COMMENT ON TABLE test_ladm_valuation_model.lc_interesadocontacto IS 'Datos de contacto de la parte interesada.';
            test_ladm_valuation_model       postgres    false    297            �'           0    0 &   COLUMN lc_interesadocontacto.telefono1    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesadocontacto.telefono1 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_valuation_model       postgres    false    297            �'           0    0 &   COLUMN lc_interesadocontacto.telefono2    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesadocontacto.telefono2 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_valuation_model       postgres    false    297            �'           0    0 3   COLUMN lc_interesadocontacto.domicilio_notificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesadocontacto.domicilio_notificacion IS 'Domicilio para notificaciones del interesado.';
            test_ladm_valuation_model       postgres    false    297            �'           0    0 1   COLUMN lc_interesadocontacto.direccion_residencia    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesadocontacto.direccion_residencia IS 'Dirección de residencia del interesado.';
            test_ladm_valuation_model       postgres    false    297            �'           0    0 /   COLUMN lc_interesadocontacto.correo_electronico    COMMENT        COMMENT ON COLUMN test_ladm_valuation_model.lc_interesadocontacto.correo_electronico IS 'Correo electrónico del interesado.';
            test_ladm_valuation_model       postgres    false    297            �'           0    0 9   COLUMN lc_interesadocontacto.autoriza_notificacion_correo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesadocontacto.autoriza_notificacion_correo IS 'Indica si el interesado autoriza notificación vía correo electrónico';
            test_ladm_valuation_model       postgres    false    297            �'           0    0 )   COLUMN lc_interesadocontacto.departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesadocontacto.departamento IS 'Departamento de residencia del interesado.';
            test_ladm_valuation_model       postgres    false    297            �'           0    0 &   COLUMN lc_interesadocontacto.municipio    COMMENT     z   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesadocontacto.municipio IS 'Municipio de residencia del interesado.';
            test_ladm_valuation_model       postgres    false    297            �'           0    0 #   COLUMN lc_interesadocontacto.vereda    COMMENT     t   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesadocontacto.vereda IS 'Vereda de residencia del interesado.';
            test_ladm_valuation_model       postgres    false    297            �'           0    0 *   COLUMN lc_interesadocontacto.corregimiento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_interesadocontacto.corregimiento IS 'Corregimiento de residencia del interesado.';
            test_ladm_valuation_model       postgres    false    297            h           1259    580305    lc_interesadodocumentotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_interesadodocumentotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_valuation_model.lc_interesadodocumentotipo;
       test_ladm_valuation_model         postgres    false    221    9            Z           1259    580179    lc_interesadotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_interesadotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_valuation_model.lc_interesadotipo;
       test_ladm_valuation_model         postgres    false    221    9            *           1259    579677 
   lc_lindero    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_lindero (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_valuation_model.lc_lindero;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0    TABLE lc_lindero    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_lindero IS 'Linea de división que separa un bien inmueble de otro, que puede o no estar materializada físicamente.';
            test_ladm_valuation_model       postgres    false    298            �'           0    0    COLUMN lc_lindero.longitud    COMMENT     f   COMMENT ON COLUMN test_ladm_valuation_model.lc_lindero.longitud IS 'Longitud en metros del lindero.';
            test_ladm_valuation_model       postgres    false    298            �'           0    0    COLUMN lc_lindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_lindero.geometria IS 'Geometría lineal que define el lindero. Puede estar asociada a geometrías de tipo punto que definen sus vértices o ser una entidad lineal independiente.';
            test_ladm_valuation_model       postgres    false    298            �'           0    0 &   COLUMN lc_lindero.localizacion_textual    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_lindero.localizacion_textual IS 'Descripción de la localización, cuando esta se basa en texto.';
            test_ladm_valuation_model       postgres    false    298            �'           0    0 ,   COLUMN lc_lindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_lindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    298            �'           0    0 '   COLUMN lc_lindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_lindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    298            �'           0    0 $   COLUMN lc_lindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_lindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    298            �'           0    0    COLUMN lc_lindero.local_id    COMMENT     b   COMMENT ON COLUMN test_ladm_valuation_model.lc_lindero.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    298            +           1259    579688    lc_objetoconstruccion    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_objetoconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_objeto_construccion bigint NOT NULL,
    puntos integer NOT NULL,
    lc_grupo_calificacion bigint NOT NULL,
    CONSTRAINT lc_objetoconstruccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 16)))
);
 <   DROP TABLE test_ladm_valuation_model.lc_objetoconstruccion;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0    TABLE lc_objetoconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_objetoconstruccion IS 'Puntaje de cada item de la calificación de construcción.';
            test_ladm_valuation_model       postgres    false    299            �'           0    0 5   COLUMN lc_objetoconstruccion.tipo_objeto_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_objetoconstruccion.tipo_objeto_construccion IS 'Item de la calificación de construcción según la método de calificación vigente.';
            test_ladm_valuation_model       postgres    false    299            �'           0    0 #   COLUMN lc_objetoconstruccion.puntos    COMMENT     m   COMMENT ON COLUMN test_ladm_valuation_model.lc_objetoconstruccion.puntos IS 'Puntaje del ítem calificado.';
            test_ladm_valuation_model       postgres    false    299            �           1259    580647    lc_objetoconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_objetoconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_valuation_model.lc_objetoconstrucciontipo;
       test_ladm_valuation_model         postgres    false    221    9            ,           1259    579697    lc_ofertasmercadoinmobiliario    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_ofertasmercadoinmobiliario (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 D   DROP TABLE test_ladm_valuation_model.lc_ofertasmercadoinmobiliario;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0 0   COLUMN lc_ofertasmercadoinmobiliario.tipo_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_ofertasmercadoinmobiliario.tipo_oferta IS 'La clase de oferta corresponde a una oferta de venta o a una oferta de arriendo del predio.';
            test_ladm_valuation_model       postgres    false    300            �'           0    0 1   COLUMN lc_ofertasmercadoinmobiliario.valor_pedido    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_ofertasmercadoinmobiliario.valor_pedido IS 'Dato del valor en pesos de la oferta';
            test_ladm_valuation_model       postgres    false    300            �'           0    0 4   COLUMN lc_ofertasmercadoinmobiliario.valor_negociado    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_ofertasmercadoinmobiliario.valor_negociado IS 'Dato del valor en pesos negociado entre el vendedor y el posible comprador';
            test_ladm_valuation_model       postgres    false    300            �'           0    0 9   COLUMN lc_ofertasmercadoinmobiliario.fecha_captura_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_ofertasmercadoinmobiliario.fecha_captura_oferta IS 'Año, mes y día de captura de la oferta en campo.';
            test_ladm_valuation_model       postgres    false    300            �'           0    0 :   COLUMN lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado IS 'Número de meses de la publicitación de la oferta en el mercado inmobiliario.';
            test_ladm_valuation_model       postgres    false    300            �'           0    0 =   COLUMN lc_ofertasmercadoinmobiliario.numero_contacto_oferente    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_ofertasmercadoinmobiliario.numero_contacto_oferente IS 'Número de teléfono fijo o número celular de la persona que está publicitando el bien inmueble.';
            test_ladm_valuation_model       postgres    false    300            �           1259    580593    lc_ofertatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_ofertatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_valuation_model.lc_ofertatipo;
       test_ladm_valuation_model         postgres    false    221    9            -           1259    579706 	   lc_predio    TABLE     @  CREATE TABLE test_ladm_valuation_model.lc_predio (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_ladm_valuation_model.lc_predio;
       test_ladm_valuation_model         postgres    false    221    9            �'           0    0    TABLE lc_predio    COMMENT     )  COMMENT ON TABLE test_ladm_valuation_model.lc_predio IS 'Clase especializada de BaUnit, que describe la unidad administrativa básica para el caso de Colombia.
El predio es la unidad territorial legal propia de Catastro. Está formada por el terreno y puede o no tener construcciones asociadas.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0    COLUMN lc_predio.departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.departamento IS 'Corresponde al código del departamento al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 2 dígitos.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0    COLUMN lc_predio.municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.municipio IS 'Corresponde al código del municipio al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 3 dígitos.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0    COLUMN lc_predio.id_operacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.id_operacion IS 'Identificador único temporal de cada predio que se asigna en el desarrollo del levantamiento catastral.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0    COLUMN lc_predio.tiene_fmi    COMMENT     x   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.tiene_fmi IS 'Indica si el predio tiene matricula inmobiliaria.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0    COLUMN lc_predio.codigo_orip    COMMENT     Z   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.codigo_orip IS 'Circulo registral';
            test_ladm_valuation_model       postgres    false    301            �'           0    0 '   COLUMN lc_predio.matricula_inmobiliaria    COMMENT     j   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.matricula_inmobiliaria IS 'Matricula inmobiliaria';
            test_ladm_valuation_model       postgres    false    301            �'           0    0    COLUMN lc_predio.numero_predial    COMMENT     ,  COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.numero_predial IS 'Nuevo Código numérico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0 (   COLUMN lc_predio.numero_predial_anterior    COMMENT     5  COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.numero_predial_anterior IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0    COLUMN lc_predio.nupre    COMMENT     I  COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0 !   COLUMN lc_predio.avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.avaluo_catastral IS 'Valor catastral del predio, obtenido mediante investigación y análisis estadístico del mercado inmobiliario y la metodología de aplicación correspondiente.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0 !   COLUMN lc_predio.condicion_predio    COMMENT     t   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0    COLUMN lc_predio.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.nombre IS 'Nombre que recibe la unidad administrativa básica, en muchos casos toponímico, especialmente en terrenos rústicos.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0 +   COLUMN lc_predio.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0 &   COLUMN lc_predio.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    301            �'           0    0 #   COLUMN lc_predio.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    301             (           0    0    COLUMN lc_predio.local_id    COMMENT     a   COMMENT ON COLUMN test_ladm_valuation_model.lc_predio.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    301            7           1259    579848    lc_predio_copropiedad    TABLE     �   CREATE TABLE test_ladm_valuation_model.lc_predio_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    predio bigint NOT NULL,
    copropiedad bigint NOT NULL
);
 <   DROP TABLE test_ladm_valuation_model.lc_predio_copropiedad;
       test_ladm_valuation_model         postgres    false    221    9            8           1259    579856    lc_predio_ini_predioinsumos    TABLE       CREATE TABLE test_ladm_valuation_model.lc_predio_ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ini_predio_insumos bigint NOT NULL,
    lc_predio bigint NOT NULL
);
 B   DROP TABLE test_ladm_valuation_model.lc_predio_ini_predioinsumos;
       test_ladm_valuation_model         postgres    false    221    9            o           1259    580368    lc_prediotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_prediotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_valuation_model.lc_prediotipo;
       test_ladm_valuation_model         postgres    false    221    9                       1259    580512 &   lc_procedimientocatastralregistraltipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_procedimientocatastralregistraltipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 M   DROP TABLE test_ladm_valuation_model.lc_procedimientocatastralregistraltipo;
       test_ladm_valuation_model         postgres    false    221    9            .           1259    579718    lc_puntocontrol    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_puntocontrol (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_ladm_valuation_model.lc_puntocontrol;
       test_ladm_valuation_model         postgres    false    221    9            (           0    0    TABLE lc_puntocontrol    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_puntocontrol IS 'Puntos topograficos o geodesicos utilizados como amarre para la ejecución del levantamiento catastral.';
            test_ladm_valuation_model       postgres    false    302            (           0    0 '   COLUMN lc_puntocontrol.id_punto_control    COMMENT     z   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.id_punto_control IS 'Nombre o código del punto de control.';
            test_ladm_valuation_model       postgres    false    302            (           0    0     COLUMN lc_puntocontrol.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_valuation_model       postgres    false    302            (           0    0 )   COLUMN lc_puntocontrol.tipo_punto_control    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.tipo_punto_control IS 'Si se trata de un punto de control o de apoyo.';
            test_ladm_valuation_model       postgres    false    302            (           0    0 +   COLUMN lc_puntocontrol.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.exactitud_horizontal IS 'Exactitud horizontal de la medición del punto.';
            test_ladm_valuation_model       postgres    false    302            (           0    0 )   COLUMN lc_puntocontrol.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.exactitud_vertical IS 'Exactitud vertical de la medición del punto.';
            test_ladm_valuation_model       postgres    false    302            (           0    0 -   COLUMN lc_puntocontrol.posicion_interpolacion    COMMENT     v   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_valuation_model       postgres    false    302            (           0    0 '   COLUMN lc_puntocontrol.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_valuation_model       postgres    false    302            	(           0    0     COLUMN lc_puntocontrol.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_valuation_model       postgres    false    302            
(           0    0 1   COLUMN lc_puntocontrol.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    302            (           0    0 ,   COLUMN lc_puntocontrol.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    302            (           0    0 )   COLUMN lc_puntocontrol.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    302            (           0    0    COLUMN lc_puntocontrol.local_id    COMMENT     g   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntocontrol.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    302            U           1259    580134    lc_puntocontroltipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_puntocontroltipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_valuation_model.lc_puntocontroltipo;
       test_ladm_valuation_model         postgres    false    221    9            5           1259    579819    lc_puntolevantamiento    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_puntolevantamiento (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 <   DROP TABLE test_ladm_valuation_model.lc_puntolevantamiento;
       test_ladm_valuation_model         postgres    false    221    9            (           0    0    TABLE lc_puntolevantamiento    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_puntolevantamiento IS 'Puntos que definen los limites de las construcciones, unidad de construcción y servidumbres de transito.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 3   COLUMN lc_puntolevantamiento.id_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.id_punto_levantamiento IS 'Nombre o código del punto levantamiento.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 &   COLUMN lc_puntolevantamiento.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 5   COLUMN lc_puntolevantamiento.tipo_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.tipo_punto_levantamiento IS 'Indica si el tipo de punto corresponde a una construcción o servidumbre de tránsito.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 /   COLUMN lc_puntolevantamiento.fotoidentificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 1   COLUMN lc_puntolevantamiento.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto levantamiento.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 /   COLUMN lc_puntolevantamiento.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto levantamiento';
            test_ladm_valuation_model       postgres    false    309            (           0    0 3   COLUMN lc_puntolevantamiento.posicion_interpolacion    COMMENT     |   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 -   COLUMN lc_puntolevantamiento.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 &   COLUMN lc_puntolevantamiento.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 7   COLUMN lc_puntolevantamiento.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 2   COLUMN lc_puntolevantamiento.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 /   COLUMN lc_puntolevantamiento.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    309            (           0    0 %   COLUMN lc_puntolevantamiento.local_id    COMMENT     m   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolevantamiento.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    309            w           1259    580440    lc_puntolevtipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_puntolevtipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_valuation_model.lc_puntolevtipo;
       test_ladm_valuation_model         postgres    false    221    9            /           1259    579737    lc_puntolindero    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_puntolindero (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_ladm_valuation_model.lc_puntolindero;
       test_ladm_valuation_model         postgres    false    221    9            (           0    0    TABLE lc_puntolindero    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_puntolindero IS 'Puntos que definen los lindero de un terreno. La sucesión de estos puntos forman una línea que representa el límite entre dos terrenos.';
            test_ladm_valuation_model       postgres    false    303            (           0    0 '   COLUMN lc_puntolindero.id_punto_lindero    COMMENT     v   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.id_punto_lindero IS 'Nombre o código del punto lindero';
            test_ladm_valuation_model       postgres    false    303            (           0    0     COLUMN lc_puntolindero.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_valuation_model       postgres    false    303            (           0    0    COLUMN lc_puntolindero.acuerdo    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.acuerdo IS 'Indica si existe acuerdo o no entre los colindantes en relación al punto lindero que se está midiendo.';
            test_ladm_valuation_model       postgres    false    303             (           0    0 )   COLUMN lc_puntolindero.fotoidentificacion    COMMENT     ~   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_valuation_model       postgres    false    303            !(           0    0 +   COLUMN lc_puntolindero.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto lindero';
            test_ladm_valuation_model       postgres    false    303            "(           0    0 )   COLUMN lc_puntolindero.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto lindero';
            test_ladm_valuation_model       postgres    false    303            #(           0    0 -   COLUMN lc_puntolindero.posicion_interpolacion    COMMENT     v   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_valuation_model       postgres    false    303            $(           0    0 '   COLUMN lc_puntolindero.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_valuation_model       postgres    false    303            %(           0    0     COLUMN lc_puntolindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_valuation_model       postgres    false    303            &(           0    0 1   COLUMN lc_puntolindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    303            '(           0    0 ,   COLUMN lc_puntolindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    303            ((           0    0 )   COLUMN lc_puntolindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    303            )(           0    0    COLUMN lc_puntolindero.local_id    COMMENT     g   COMMENT ON COLUMN test_ladm_valuation_model.lc_puntolindero.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    303            S           1259    580116    lc_puntotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_valuation_model.lc_puntotipo;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580521    lc_relacionprediotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_relacionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_valuation_model.lc_relacionprediotipo;
       test_ladm_valuation_model         postgres    false    221    9            0           1259    579757    lc_restriccion    TABLE     Z  CREATE TABLE test_ladm_valuation_model.lc_restriccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 5   DROP TABLE test_ladm_valuation_model.lc_restriccion;
       test_ladm_valuation_model         postgres    false    221    9            *(           0    0    TABLE lc_restriccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_restriccion IS 'Restricción legalmente constituida y registrada que afecta el derecho de un persona en relación con el predio.';
            test_ladm_valuation_model       postgres    false    304            +(           0    0    COLUMN lc_restriccion.tipo    COMMENT     r   COMMENT ON COLUMN test_ladm_valuation_model.lc_restriccion.tipo IS 'Tipo de Restricción que afecta el derecho.';
            test_ladm_valuation_model       postgres    false    304            ,(           0    0 !   COLUMN lc_restriccion.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_restriccion.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_valuation_model       postgres    false    304            -(           0    0 0   COLUMN lc_restriccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_restriccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    304            .(           0    0 +   COLUMN lc_restriccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_restriccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    304            /(           0    0 (   COLUMN lc_restriccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_restriccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    304            0(           0    0    COLUMN lc_restriccion.local_id    COMMENT     f   COMMENT ON COLUMN test_ladm_valuation_model.lc_restriccion.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    304            v           1259    580431    lc_restricciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_restricciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_valuation_model.lc_restricciontipo;
       test_ladm_valuation_model         postgres    false    221    9            �           1259    580674    lc_resultadovisitatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_resultadovisitatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_valuation_model.lc_resultadovisitatipo;
       test_ladm_valuation_model         postgres    false    221    9            9           1259    579864    lc_servidumbretransito    TABLE       CREATE TABLE test_ladm_valuation_model.lc_servidumbretransito (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 =   DROP TABLE test_ladm_valuation_model.lc_servidumbretransito;
       test_ladm_valuation_model         postgres    false    221    9            1(           0    0    TABLE lc_servidumbretransito    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_servidumbretransito IS 'Tipo de unidad espacial que permite la representación de una servidumbre de paso asociada a una COL_BAUnit.';
            test_ladm_valuation_model       postgres    false    313            2(           0    0 .   COLUMN lc_servidumbretransito.area_servidumbre    COMMENT     y   COMMENT ON COLUMN test_ladm_valuation_model.lc_servidumbretransito.area_servidumbre IS 'Área total de la servidumbre.';
            test_ladm_valuation_model       postgres    false    313            3(           0    0 '   COLUMN lc_servidumbretransito.dimension    COMMENT     j   COMMENT ON COLUMN test_ladm_valuation_model.lc_servidumbretransito.dimension IS 'Dimensión del objeto.';
            test_ladm_valuation_model       postgres    false    313            4(           0    0 &   COLUMN lc_servidumbretransito.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_servidumbretransito.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    313            5(           0    0 1   COLUMN lc_servidumbretransito.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_servidumbretransito.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    313            6(           0    0 '   COLUMN lc_servidumbretransito.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_servidumbretransito.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_valuation_model       postgres    false    313            7(           0    0 8   COLUMN lc_servidumbretransito.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_servidumbretransito.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    313            8(           0    0 3   COLUMN lc_servidumbretransito.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_servidumbretransito.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    313            9(           0    0 0   COLUMN lc_servidumbretransito.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_servidumbretransito.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    313            :(           0    0 &   COLUMN lc_servidumbretransito.local_id    COMMENT     n   COMMENT ON COLUMN test_ladm_valuation_model.lc_servidumbretransito.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    313            [           1259    580188    lc_sexotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_sexotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_valuation_model.lc_sexotipo;
       test_ladm_valuation_model         postgres    false    221    9            1           1259    579771 
   lc_terreno    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_valuation_model.lc_terreno;
       test_ladm_valuation_model         postgres    false    221    9            ;(           0    0    TABLE lc_terreno    COMMENT     x   COMMENT ON TABLE test_ladm_valuation_model.lc_terreno IS 'Porción de tierra con una extensión geográfica definida.';
            test_ladm_valuation_model       postgres    false    305            <(           0    0    COLUMN lc_terreno.area_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_terreno.area_terreno IS 'Área total del terreno  resultante del levantamiento catastral..';
            test_ladm_valuation_model       postgres    false    305            =(           0    0     COLUMN lc_terreno.avaluo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_terreno.avaluo_terreno IS 'Valor catastral asignado en el proceso de valoración económica masiva al terreno del predio.';
            test_ladm_valuation_model       postgres    false    305            >(           0    0 '   COLUMN lc_terreno.manzana_vereda_codigo    COMMENT     b  COMMENT ON COLUMN test_ladm_valuation_model.lc_terreno.manzana_vereda_codigo IS 'Corresponde la identificación del número predial hasta la posición 21, permite identificar la relación espacial en sus componentes: departamento, municipio, zona, sector, comuna, barrio, manzana o vereda y terreno de acuerdo a su codificación en el número predial.';
            test_ladm_valuation_model       postgres    false    305            ?(           0    0    COLUMN lc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_terreno.geometria IS 'Corresponde a la figura geométrica vectorial poligonal, generada a partir de los linderos del predio.';
            test_ladm_valuation_model       postgres    false    305            @(           0    0    COLUMN lc_terreno.dimension    COMMENT     ^   COMMENT ON COLUMN test_ladm_valuation_model.lc_terreno.dimension IS 'Dimensión del objeto.';
            test_ladm_valuation_model       postgres    false    305            A(           0    0    COLUMN lc_terreno.etiqueta    COMMENT     y   COMMENT ON COLUMN test_ladm_valuation_model.lc_terreno.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    305            B(           0    0 %   COLUMN lc_terreno.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_terreno.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    305            C(           0    0 ,   COLUMN lc_terreno.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_terreno.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    305            D(           0    0 '   COLUMN lc_terreno.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_terreno.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    305            E(           0    0 $   COLUMN lc_terreno.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_terreno.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    305            F(           0    0    COLUMN lc_terreno.local_id    COMMENT     b   COMMENT ON COLUMN test_ladm_valuation_model.lc_terreno.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    305            6           1259    579839    lc_tipologiaconstruccion    TABLE       CREATE TABLE test_ladm_valuation_model.lc_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint NOT NULL,
    lc_unidad_construccion bigint
);
 ?   DROP TABLE test_ladm_valuation_model.lc_tipologiaconstruccion;
       test_ladm_valuation_model         postgres    false    221    9            G(           0    0    TABLE lc_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_tipologiaconstruccion IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_valuation_model       postgres    false    310            H(           0    0 .   COLUMN lc_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_tipologiaconstruccion.tipo_tipologia IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_valuation_model       postgres    false    310            �           1259    580575    lc_tipologiatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_tipologiatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_valuation_model.lc_tipologiatipo;
       test_ladm_valuation_model         postgres    false    221    9            :           1259    579877    lc_unidadconstruccion    TABLE     �	  CREATE TABLE test_ladm_valuation_model.lc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 <   DROP TABLE test_ladm_valuation_model.lc_unidadconstruccion;
       test_ladm_valuation_model         postgres    false    221    9            I(           0    0    TABLE lc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.lc_unidadconstruccion IS 'Es cada conjunto de materiales consolidados dentro de un predio que tiene unas características específicas en cuanto a elementos constitutivos físicos y usos de la misma.';
            test_ladm_valuation_model       postgres    false    314            J(           0    0 *   COLUMN lc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_valuation_model       postgres    false    314            K(           0    0 )   COLUMN lc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_valuation_model       postgres    false    314            L(           0    0 .   COLUMN lc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_valuation_model       postgres    false    314            M(           0    0 5   COLUMN lc_unidadconstruccion.tipo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.tipo_unidad_construccion IS 'Indica si la unidad de construcción es residencial, comercial, industrial o anexo.';
            test_ladm_valuation_model       postgres    false    314            N(           0    0 (   COLUMN lc_unidadconstruccion.tipo_planta    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.tipo_planta IS 'Indica el tipo de planta donde se ubica la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    314            O(           0    0 -   COLUMN lc_unidadconstruccion.planta_ubicacion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.planta_ubicacion IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_valuation_model       postgres    false    314            P(           0    0 /   COLUMN lc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    314            Q(           0    0 )   COLUMN lc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    314            R(           0    0 *   COLUMN lc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    314            S(           0    0 (   COLUMN lc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    314            T(           0    0     COLUMN lc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_valuation_model       postgres    false    314            U(           0    0 .   COLUMN lc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    314            V(           0    0 7   COLUMN lc_unidadconstruccion.avaluo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.avaluo_unidad_construccion IS 'Avalúo catastral de la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    314            W(           0    0 ,   COLUMN lc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    314            X(           0    0 4   COLUMN lc_unidadconstruccion.area_privada_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.area_privada_construida IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_valuation_model       postgres    false    314            Y(           0    0 #   COLUMN lc_unidadconstruccion.altura    COMMENT     {   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.altura IS 'Altura total de la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    314            Z(           0    0 *   COLUMN lc_unidadconstruccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.observaciones IS 'Observaciones generales respecto de la unidad de construcción.';
            test_ladm_valuation_model       postgres    false    314            [(           0    0 &   COLUMN lc_unidadconstruccion.dimension    COMMENT     i   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.dimension IS 'Dimensión del objeto.';
            test_ladm_valuation_model       postgres    false    314            \(           0    0 %   COLUMN lc_unidadconstruccion.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    314            ](           0    0 0   COLUMN lc_unidadconstruccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    314            ^(           0    0 &   COLUMN lc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_valuation_model       postgres    false    314            _(           0    0 7   COLUMN lc_unidadconstruccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    314            `(           0    0 2   COLUMN lc_unidadconstruccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_valuation_model       postgres    false    314            a(           0    0 /   COLUMN lc_unidadconstruccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_valuation_model       postgres    false    314            b(           0    0 %   COLUMN lc_unidadconstruccion.local_id    COMMENT     m   COMMENT ON COLUMN test_ladm_valuation_model.lc_unidadconstruccion.local_id IS 'Identificador único local.';
            test_ladm_valuation_model       postgres    false    314            l           1259    580341    lc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_valuation_model.lc_unidadconstrucciontipo;
       test_ladm_valuation_model         postgres    false    221    9            c           1259    580260    lc_usouconstipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_usouconstipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_valuation_model.lc_usouconstipo;
       test_ladm_valuation_model         postgres    false    221    9            g           1259    580296 
   lc_viatipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.lc_viatipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_valuation_model.lc_viatipo;
       test_ladm_valuation_model         postgres    false    221    9            T           1259    580125    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_valuation_model.snr_calidadderechotipo;
       test_ladm_valuation_model         postgres    false    221    9            r           1259    580395    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_valuation_model.snr_clasepredioregistrotipo;
       test_ladm_valuation_model         postgres    false    221    9                       1259    579462    snr_derecho    TABLE     o  CREATE TABLE test_ladm_valuation_model.snr_derecho (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 2   DROP TABLE test_ladm_valuation_model.snr_derecho;
       test_ladm_valuation_model         postgres    false    221    9            c(           0    0    TABLE snr_derecho    COMMENT     c   COMMENT ON TABLE test_ladm_valuation_model.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
            test_ladm_valuation_model       postgres    false    278            d(           0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     v   COMMENT ON COLUMN test_ladm_valuation_model.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
            test_ladm_valuation_model       postgres    false    278            e(           0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
            test_ladm_valuation_model       postgres    false    278            a           1259    580242    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_valuation_model.snr_documentotitulartipo;
       test_ladm_valuation_model         postgres    false    221    9                       1259    579471    snr_estructuramatriculamatriz    TABLE     O  CREATE TABLE test_ladm_valuation_model.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 D   DROP TABLE test_ladm_valuation_model.snr_estructuramatriculamatriz;
       test_ladm_valuation_model         postgres    false    221    9            f(           0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_valuation_model       postgres    false    279            g(           0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_valuation_model       postgres    false    279            h(           0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
            test_ladm_valuation_model       postgres    false    279                       1259    579478    snr_fuentecabidalinderos    TABLE     }  CREATE TABLE test_ladm_valuation_model.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 ?   DROP TABLE test_ladm_valuation_model.snr_fuentecabidalinderos;
       test_ladm_valuation_model         postgres    false    221    9            i(           0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
            test_ladm_valuation_model       postgres    false    280            j(           0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_valuation_model       postgres    false    280            k(           0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_valuation_model       postgres    false    280            l(           0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_valuation_model       postgres    false    280            m(           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_valuation_model       postgres    false    280                       1259    579488    snr_fuentederecho    TABLE     v  CREATE TABLE test_ladm_valuation_model.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 8   DROP TABLE test_ladm_valuation_model.snr_fuentederecho;
       test_ladm_valuation_model         postgres    false    221    9            n(           0    0    TABLE snr_fuentederecho    COMMENT     o   COMMENT ON TABLE test_ladm_valuation_model.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
            test_ladm_valuation_model       postgres    false    281            o(           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_valuation_model       postgres    false    281            p(           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_valuation_model       postgres    false    281            q(           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_valuation_model       postgres    false    281            r(           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_valuation_model       postgres    false    281            V           1259    580143    snr_fuentetipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_valuation_model.snr_fuentetipo;
       test_ladm_valuation_model         postgres    false    221    9            L           1259    580053    snr_personatitulartipo    TABLE     �  CREATE TABLE test_ladm_valuation_model.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_valuation_model.snr_personatitulartipo;
       test_ladm_valuation_model         postgres    false    221    9                       1259    579509    snr_predioregistro    TABLE     ?  CREATE TABLE test_ladm_valuation_model.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
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
 9   DROP TABLE test_ladm_valuation_model.snr_predioregistro;
       test_ladm_valuation_model         postgres    false    221    9            s(           0    0    TABLE snr_predioregistro    COMMENT     l   COMMENT ON TABLE test_ladm_valuation_model.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
            test_ladm_valuation_model       postgres    false    283            t(           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_valuation_model       postgres    false    283            u(           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_valuation_model       postgres    false    283            v(           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     T  COMMENT ON COLUMN test_ladm_valuation_model.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_valuation_model       postgres    false    283            w(           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     X  COMMENT ON COLUMN test_ladm_valuation_model.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_valuation_model       postgres    false    283            x(           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
            test_ladm_valuation_model       postgres    false    283            y(           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
            test_ladm_valuation_model       postgres    false    283            z(           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
            test_ladm_valuation_model       postgres    false    283            {(           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT     s   COMMENT ON COLUMN test_ladm_valuation_model.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
            test_ladm_valuation_model       postgres    false    283                       1259    579498    snr_titular    TABLE     �  CREATE TABLE test_ladm_valuation_model.snr_titular (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 2   DROP TABLE test_ladm_valuation_model.snr_titular;
       test_ladm_valuation_model         postgres    false    221    9            |(           0    0    TABLE snr_titular    COMMENT     p   COMMENT ON TABLE test_ladm_valuation_model.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
            test_ladm_valuation_model       postgres    false    282            }(           0    0    COLUMN snr_titular.tipo_persona    COMMENT     [   COMMENT ON COLUMN test_ladm_valuation_model.snr_titular.tipo_persona IS 'Tipo de persona';
            test_ladm_valuation_model       postgres    false    282            ~(           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     q   COMMENT ON COLUMN test_ladm_valuation_model.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_valuation_model       postgres    false    282            (           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     v   COMMENT ON COLUMN test_ladm_valuation_model.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
            test_ladm_valuation_model       postgres    false    282            �(           0    0    COLUMN snr_titular.nombres    COMMENT     e   COMMENT ON COLUMN test_ladm_valuation_model.snr_titular.nombres IS 'Nombres de la persona física.';
            test_ladm_valuation_model       postgres    false    282            �(           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     u   COMMENT ON COLUMN test_ladm_valuation_model.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_valuation_model       postgres    false    282            �(           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     w   COMMENT ON COLUMN test_ladm_valuation_model.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_valuation_model       postgres    false    282            �(           0    0    COLUMN snr_titular.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_valuation_model.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
            test_ladm_valuation_model       postgres    false    282                       1259    579520    snr_titular_derecho    TABLE     :  CREATE TABLE test_ladm_valuation_model.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_ladm_valuation_model.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 :   DROP TABLE test_ladm_valuation_model.snr_titular_derecho;
       test_ladm_valuation_model         postgres    false    221    9            �(           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_valuation_model.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
            test_ladm_valuation_model       postgres    false    284            �           1259    580709    t_ili2db_attrname    TABLE     �   CREATE TABLE test_ladm_valuation_model.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 8   DROP TABLE test_ladm_valuation_model.t_ili2db_attrname;
       test_ladm_valuation_model         postgres    false    9            A           1259    579964    t_ili2db_basket    TABLE       CREATE TABLE test_ladm_valuation_model.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 6   DROP TABLE test_ladm_valuation_model.t_ili2db_basket;
       test_ladm_valuation_model         postgres    false    9            �           1259    580701    t_ili2db_classname    TABLE     �   CREATE TABLE test_ladm_valuation_model.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 9   DROP TABLE test_ladm_valuation_model.t_ili2db_classname;
       test_ladm_valuation_model         postgres    false    9            �           1259    580717    t_ili2db_column_prop    TABLE       CREATE TABLE test_ladm_valuation_model.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 ;   DROP TABLE test_ladm_valuation_model.t_ili2db_column_prop;
       test_ladm_valuation_model         postgres    false    9            B           1259    579973    t_ili2db_dataset    TABLE     ~   CREATE TABLE test_ladm_valuation_model.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 7   DROP TABLE test_ladm_valuation_model.t_ili2db_dataset;
       test_ladm_valuation_model         postgres    false    9            C           1259    579978    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_ladm_valuation_model.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 ;   DROP TABLE test_ladm_valuation_model.t_ili2db_inheritance;
       test_ladm_valuation_model         postgres    false    9            �           1259    580729    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_ladm_valuation_model.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 :   DROP TABLE test_ladm_valuation_model.t_ili2db_meta_attrs;
       test_ladm_valuation_model         postgres    false    9            F           1259    580000    t_ili2db_model    TABLE       CREATE TABLE test_ladm_valuation_model.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 5   DROP TABLE test_ladm_valuation_model.t_ili2db_model;
       test_ladm_valuation_model         postgres    false    9            D           1259    579986    t_ili2db_settings    TABLE     �   CREATE TABLE test_ladm_valuation_model.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 8   DROP TABLE test_ladm_valuation_model.t_ili2db_settings;
       test_ladm_valuation_model         postgres    false    9            �           1259    580723    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_ladm_valuation_model.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 :   DROP TABLE test_ladm_valuation_model.t_ili2db_table_prop;
       test_ladm_valuation_model         postgres    false    9            E           1259    579994    t_ili2db_trafo    TABLE     �   CREATE TABLE test_ladm_valuation_model.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 5   DROP TABLE test_ladm_valuation_model.t_ili2db_trafo;
       test_ladm_valuation_model         postgres    false    9            '&          0    580062    av_disponibilidadaguatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_disponibilidadaguatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    333   ��
      j&          0    580665    av_influenciavialruraltipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_influenciavialruraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    400   ��
      8&          0    580215    av_influenciavialurbanatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_influenciavialurbanatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    350   ��
      R&          0    580449    av_serviciospublicostipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_serviciospublicostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    376   ��
      &          0    579896     av_tablacalificacionconstruccion 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_tablacalificacionconstruccion (t_id, t_ili_tid, valor_m2_construccion, uso, puntuacion) FROM stdin;
    test_ladm_valuation_model       postgres    false    315   ��
      1&          0    580152    av_tipificacionconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_tipificacionconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    343   �
      &          0    579904    av_tipologiaconstruccion 
   TABLE DATA               v   COPY test_ladm_valuation_model.av_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, valor_unitario) FROM stdin;
    test_ladm_valuation_model       postgres    false    316   o�
      V&          0    580485    av_tipologiatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    380   ��
      E&          0    580332    av_topografiazonatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_topografiazonatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    363   ��
      <&          0    580251    av_usosueloruraltipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_usosueloruraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    354   ��
      e&          0    580620    av_usosuelourbanotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_usosuelourbanotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    395   �      @&          0    580287    av_usouconstipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    358   D	      &          0    579912    av_zonahomogeneafisicarural 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_zonahomogeneafisicarural (t_id, t_ili_tid, codigo, codigo_zona_fisica, area_homogenea_tierra, disponibilidad_agua, influencia_vial, uso_actual_suelo, norma_uso_suelo, vigencia, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    317   �'      &          0    579926    av_zonahomogeneafisicaurbana 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_zonahomogeneafisicaurbana (t_id, t_ili_tid, codigo, codigo_zona_fisica, topografia, influencia_vial, servicio_publico, uso_actual_suelo, norma_uso_suelo, tipificacion_construccion, vigencia, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    318   �'      &          0    579953 !   av_zonahomogeneageoeconomicarural 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_zonahomogeneageoeconomicarural (t_id, t_ili_tid, codigo, codigo_zona_geoeconomica, valor_hectarea, subzona_fisica, vigencia, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    320   �'      &          0    579942 "   av_zonahomogeneageoeconomicaurbana 
   TABLE DATA               �   COPY test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana (t_id, t_ili_tid, codigo, codigo_zona_geoeconomica, valor_metro, subzona_fisica, vigencia, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    319   �'      �%          0    578954    cc_metodooperacion 
   TABLE DATA               �   COPY test_ladm_valuation_model.cc_metodooperacion (t_id, t_seq, formula, dimensiones_origen, ddimensiones_objetivo, col_transformacion_transformacion) FROM stdin;
    test_ladm_valuation_model       postgres    false    226   (      K&          0    580386    ci_forma_presentacion_codigo 
   TABLE DATA               �   COPY test_ladm_valuation_model.ci_forma_presentacion_codigo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    369   *(      H&          0    580359    col_areatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_areatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    366   �(      �%          0    578961    col_areavalor 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_areavalor (t_id, t_seq, tipo, area, datos_proyeccion, lc_construccion_area, lc_terreno_area, lc_servidumbretransito_area, lc_unidadconstruccion_area) FROM stdin;
    test_ladm_valuation_model       postgres    false    227   *      �%          0    579230    col_baunitcomointeresado 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_baunitcomointeresado (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad) FROM stdin;
    test_ladm_valuation_model       postgres    false    254   :*      �%          0    579139    col_baunitfuente 
   TABLE DATA               g   COPY test_ladm_valuation_model.col_baunitfuente (t_id, t_ili_tid, fuente_espacial, unidad) FROM stdin;
    test_ladm_valuation_model       postgres    false    244   W*      �%          0    579154    col_cclfuente 
   TABLE DATA               a   COPY test_ladm_valuation_model.col_cclfuente (t_id, t_ili_tid, ccl, fuente_espacial) FROM stdin;
    test_ladm_valuation_model       postgres    false    246   t*      �%          0    579194    col_clfuente 
   TABLE DATA               [   COPY test_ladm_valuation_model.col_clfuente (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_valuation_model       postgres    false    250   �*      m&          0    580692    col_contenidoniveltipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_contenidoniveltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    403   �*      D&          0    580323    col_dimensiontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_dimensiontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    362   �+      X&          0    580503    col_estadodisponibilidadtipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_estadodisponibilidadtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    382   .,      G&          0    580350    col_estadoredserviciostipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_estadoredserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    365    -      +&          0    580098    col_estructuratipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_estructuratipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    337   �-      J&          0    580377    col_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    368   G.      _&          0    580566    col_fuenteespacialtipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_fuenteespacialtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    389   �/      ^&          0    580557    col_grupointeresadotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_grupointeresadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    388   32      !&          0    580008    col_interpolaciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_interpolaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    327   3      "&          0    580017    col_iso19125_tipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_iso19125_tipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    328   �3      �%          0    579173 
   col_masccl 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_masccl (t_id, t_ili_tid, ccl_mas, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion, ue_mas_lc_construccion) FROM stdin;
    test_ladm_valuation_model       postgres    false    248   /4      �%          0    579211 	   col_mascl 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_mascl (t_id, t_ili_tid, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion, ue_mas_lc_construccion) FROM stdin;
    test_ladm_valuation_model       postgres    false    252   L4      �%          0    579162    col_menosccl 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_menosccl (t_id, t_ili_tid, ccl_menos, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion, ue_menos_lc_construccion) FROM stdin;
    test_ladm_valuation_model       postgres    false    247   i4      �%          0    579201    col_menoscl 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_menoscl (t_id, t_ili_tid, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion, ue_menos_lc_construccion) FROM stdin;
    test_ladm_valuation_model       postgres    false    251   �4      a&          0    580584    col_metodoproducciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_metodoproducciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    391   �4      �%          0    579257    col_miembros 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_miembros (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, agrupacion) FROM stdin;
    test_ladm_valuation_model       postgres    false    257   �6      �%          0    579184    col_puntoccl 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_puntoccl (t_id, t_ili_tid, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento, ccl) FROM stdin;
    test_ladm_valuation_model       postgres    false    249   �6      �%          0    579221    col_puntocl 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_puntocl (t_id, t_ili_tid, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento) FROM stdin;
    test_ladm_valuation_model       postgres    false    253   7      �%          0    579118    col_puntofuente 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_puntofuente (t_id, t_ili_tid, fuente_espacial, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento) FROM stdin;
    test_ladm_valuation_model       postgres    false    242   -7      7&          0    580206    col_puntotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    349   J7      #&          0    580026    col_redserviciostipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_redserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    329   �7      S&          0    580458    col_registrotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_registrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    377   l8      �%          0    579103    col_relacionfuente 
   TABLE DATA               g   COPY test_ladm_valuation_model.col_relacionfuente (t_id, t_ili_tid, fuente_administrativa) FROM stdin;
    test_ladm_valuation_model       postgres    false    240   �8      �%          0    579147    col_relacionfuenteuespacial 
   TABLE DATA               j   COPY test_ladm_valuation_model.col_relacionfuenteuespacial (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_valuation_model       postgres    false    245   �8      9&          0    580224    col_relacionsuperficietipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_relacionsuperficietipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    351   9      �%          0    579239    col_responsablefuente 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_responsablefuente (t_id, t_ili_tid, fuente_administrativa, interesado_lc_interesado, interesado_lc_agrupacioninteresados) FROM stdin;
    test_ladm_valuation_model       postgres    false    255   �9      �%          0    579083    col_rrrfuente 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_rrrfuente (t_id, t_ili_tid, fuente_administrativa, rrr_lc_restriccion, rrr_lc_derecho) FROM stdin;
    test_ladm_valuation_model       postgres    false    238   �9      �%          0    579248    col_topografofuente 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_topografofuente (t_id, t_ili_tid, fuente_espacial, topografo_lc_interesado, topografo_lc_agrupacioninteresados) FROM stdin;
    test_ladm_valuation_model       postgres    false    256   �9      �%          0    579004    col_transformacion 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_transformacion (t_id, t_seq, localizacion_transformada, lc_puntocontrol_transformacion_y_resultado, lc_puntolindero_transformacion_y_resultado, lc_puntolevantamiento_transformacion_y_resultado) FROM stdin;
    test_ladm_valuation_model       postgres    false    230   :      �%          0    579092    col_uebaunit 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_uebaunit (t_id, t_ili_tid, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, baunit) FROM stdin;
    test_ladm_valuation_model       postgres    false    239   ,:      �%          0    579128    col_uefuente 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_uefuente (t_id, t_ili_tid, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, fuente_espacial) FROM stdin;
    test_ladm_valuation_model       postgres    false    243   I:      �%          0    579073    col_ueuegrupo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_ueuegrupo (t_id, t_ili_tid, parte_lc_terreno, parte_lc_servidumbretransito, parte_lc_unidadconstruccion, parte_lc_construccion) FROM stdin;
    test_ladm_valuation_model       postgres    false    237   f:      N&          0    580413 "   col_unidadadministrativabasicatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_unidadadministrativabasicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    372   �:      3&          0    580170    col_unidadedificaciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_unidadedificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    345   �;      �%          0    579110    col_unidadfuente 
   TABLE DATA               m   COPY test_ladm_valuation_model.col_unidadfuente (t_id, t_ili_tid, fuente_administrativa, unidad) FROM stdin;
    test_ladm_valuation_model       postgres    false    241   s<      C&          0    580314    col_volumentipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_volumentipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    361   �<      �%          0    579062    col_volumenvalor 
   TABLE DATA               �   COPY test_ladm_valuation_model.col_volumenvalor (t_id, t_seq, volumen_medicion, tipo, lc_construccion_volumen, lc_terreno_volumen, lc_servidumbretransito_volumen, lc_unidadconstruccion_volumen) FROM stdin;
    test_ladm_valuation_model       postgres    false    236   
=      �%          0    579050 
   extarchivo 
   TABLE DATA                 COPY test_ladm_valuation_model.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo, lc_fuenteadministrtiva_ext_archivo_id, lc_fuenteespacial_ext_archivo_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    235   '=      �%          0    578975    extdireccion 
   TABLE DATA               -  COPY test_ladm_valuation_model.extdireccion (t_id, t_seq, tipo_direccion, es_direccion_principal, localizacion, codigo_postal, clase_via_principal, valor_via_principal, letra_via_principal, sector_ciudad, valor_via_generadora, letra_via_generadora, numero_predio, sector_predio, complemento, nombre_predio, extunidadedificcnfsica_ext_direccion_id, extinteresado_ext_direccion_id, lc_construccion_ext_direccion_id, lc_predio_direccion, lc_terreno_ext_direccion_id, lc_servidumbretransito_ext_direccion_id, lc_unidadconstruccion_ext_direccion_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    228   D=      \&          0    580539     extdireccion_clase_via_principal 
   TABLE DATA               �   COPY test_ladm_valuation_model.extdireccion_clase_via_principal (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    386   a=      c&          0    580602    extdireccion_sector_ciudad 
   TABLE DATA               �   COPY test_ladm_valuation_model.extdireccion_sector_ciudad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    393   T>      %&          0    580044    extdireccion_sector_predio 
   TABLE DATA               �   COPY test_ladm_valuation_model.extdireccion_sector_predio (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    331   �>      f&          0    580629    extdireccion_tipo_direccion 
   TABLE DATA               �   COPY test_ladm_valuation_model.extdireccion_tipo_direccion (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    396   j?      �%          0    579032    extinteresado 
   TABLE DATA               �   COPY test_ladm_valuation_model.extinteresado (t_id, t_seq, nombre, documento_escaneado, extredserviciosfisica_ext_interesado_administrador_id, lc_agrupacionintersdos_ext_pid, lc_interesado_ext_pid) FROM stdin;
    test_ladm_valuation_model       postgres    false    233   �?      �%          0    579044    extredserviciosfisica 
   TABLE DATA               Z   COPY test_ladm_valuation_model.extredserviciosfisica (t_id, t_seq, orientada) FROM stdin;
    test_ladm_valuation_model       postgres    false    234   �?      �%          0    579017    extunidadedificacionfisica 
   TABLE DATA               T   COPY test_ladm_valuation_model.extunidadedificacionfisica (t_id, t_seq) FROM stdin;
    test_ladm_valuation_model       postgres    false    231   @      �%          0    578996    fraccion 
   TABLE DATA               �   COPY test_ladm_valuation_model.fraccion (t_id, t_seq, denominador, numerador, col_miembros_participacion, lc_predio_copropiedad_coeficiente) FROM stdin;
    test_ladm_valuation_model       postgres    false    229   7@      �%          0    579266 	   gc_barrio 
   TABLE DATA               q   COPY test_ladm_valuation_model.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    258   T@      �%          0    579276 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_ladm_valuation_model.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
    test_ladm_valuation_model       postgres    false    259   q@      �%          0    579286    gc_comisionesconstruccion 
   TABLE DATA               r   COPY test_ladm_valuation_model.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    260   �@      �%          0    579296    gc_comisionesterreno 
   TABLE DATA               m   COPY test_ladm_valuation_model.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    261   �@      �%          0    579306    gc_comisionesunidadconstruccion 
   TABLE DATA               x   COPY test_ladm_valuation_model.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    262   �@      6&          0    580197    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    348   �@      �%          0    579316    gc_construccion 
   TABLE DATA                 COPY test_ladm_valuation_model.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
    test_ladm_valuation_model       postgres    false    263   �C      �%          0    579454    gc_copropiedad 
   TABLE DATA               p   COPY test_ladm_valuation_model.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
    test_ladm_valuation_model       postgres    false    277   D      �%          0    579328    gc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_valuation_model.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
    test_ladm_valuation_model       postgres    false    264   %D      �%          0    579335    gc_datostorreph 
   TABLE DATA               �   COPY test_ladm_valuation_model.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
    test_ladm_valuation_model       postgres    false    265   BD      �%          0    579342    gc_direccion 
   TABLE DATA               �   COPY test_ladm_valuation_model.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
    test_ladm_valuation_model       postgres    false    266   _D      �%          0    579353    gc_estadopredio 
   TABLE DATA               �   COPY test_ladm_valuation_model.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
    test_ladm_valuation_model       postgres    false    267   |D      �%          0    579360 
   gc_manzana 
   TABLE DATA               {   COPY test_ladm_valuation_model.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    268   �D      �%          0    579370    gc_perimetro 
   TABLE DATA               �   COPY test_ladm_valuation_model.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    269   �D      �%          0    579443    gc_prediocatastro 
   TABLE DATA                  COPY test_ladm_valuation_model.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
    test_ladm_valuation_model       postgres    false    276   �D      �%          0    579380    gc_propietario 
   TABLE DATA               �   COPY test_ladm_valuation_model.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
    test_ladm_valuation_model       postgres    false    270   �D      �%          0    579390    gc_sectorrural 
   TABLE DATA               _   COPY test_ladm_valuation_model.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    271   E      �%          0    579400    gc_sectorurbano 
   TABLE DATA               `   COPY test_ladm_valuation_model.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    272   *E      ,&          0    580107    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    338   GE      �%          0    579410 
   gc_terreno 
   TABLE DATA               �   COPY test_ladm_valuation_model.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
    test_ladm_valuation_model       postgres    false    273   �E      �%          0    579421    gc_unidadconstruccion 
   TABLE DATA               ?  COPY test_ladm_valuation_model.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
    test_ladm_valuation_model       postgres    false    274   F      O&          0    580422    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    373   7F      �%          0    579433 	   gc_vereda 
   TABLE DATA               �   COPY test_ladm_valuation_model.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_valuation_model       postgres    false    275   G      �%          0    578931    gm_multisurface2d 
   TABLE DATA               K   COPY test_ladm_valuation_model.gm_multisurface2d (t_id, t_seq) FROM stdin;
    test_ladm_valuation_model       postgres    false    223   #G      �%          0    578948    gm_multisurface3d 
   TABLE DATA               K   COPY test_ladm_valuation_model.gm_multisurface3d (t_id, t_seq) FROM stdin;
    test_ladm_valuation_model       postgres    false    225   @G      �%          0    578920    gm_surface2dlistvalue 
   TABLE DATA               s   COPY test_ladm_valuation_model.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
    test_ladm_valuation_model       postgres    false    222   ]G      �%          0    578937    gm_surface3dlistvalue 
   TABLE DATA               s   COPY test_ladm_valuation_model.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
    test_ladm_valuation_model       postgres    false    224   zG      �%          0    579023    imagen 
   TABLE DATA               �   COPY test_ladm_valuation_model.imagen (t_id, t_seq, uri, extinteresado_huella_dactilar, extinteresado_fotografia, extinteresado_firma) FROM stdin;
    test_ladm_valuation_model       postgres    false    232   �G      :&          0    580233    ini_emparejamientotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.ini_emparejamientotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    352   �G      �%          0    579528    ini_predioinsumos 
   TABLE DATA               �   COPY test_ladm_valuation_model.ini_predioinsumos (t_id, t_ili_tid, tipo_emparejamiento, observaciones, gc_predio_catastro, snr_predio_juridico) FROM stdin;
    test_ladm_valuation_model       postgres    false    285   �H      M&          0    580404    lc_acuerdotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_acuerdotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    371   I      �%          0    579540    lc_agrupacioninteresados 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_agrupacioninteresados (t_id, t_ili_tid, tipo, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    286   �I      )&          0    580080    lc_anexotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_anexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    335   �I      &          0    579784    lc_calificacionconvencional 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_calificacionconvencional (t_id, t_ili_tid, tipo_calificar, total_calificacion, lc_unidad_construccion) FROM stdin;
    test_ladm_valuation_model       postgres    false    306   jY      &          0    579793    lc_calificacionnoconvencional 
   TABLE DATA                  COPY test_ladm_valuation_model.lc_calificacionnoconvencional (t_id, t_ili_tid, tipo_anexo, lc_unidad_construccion) FROM stdin;
    test_ladm_valuation_model       postgres    false    307   �Y      W&          0    580494    lc_calificartipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_calificartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    381   �Y      T&          0    580467    lc_categoriasuelotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_categoriasuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    378   sZ      2&          0    580161    lc_clasecalificaciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_clasecalificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    344   �]      >&          0    580269    lc_clasesuelotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_clasesuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    356   B`      d&          0    580611    lc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    394   Ud      �%          0    579551    lc_construccion 
   TABLE DATA               �  COPY test_ladm_valuation_model.lc_construccion (t_id, t_ili_tid, identificador, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, anio_construccion, avaluo_construccion, area_construccion, altura, observaciones, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    287   dg      U&          0    580476    lc_construccionplantatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_construccionplantatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    379   �g      i&          0    580656    lc_construcciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_construcciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    399   �h      �%          0    579566    lc_contactovisita 
   TABLE DATA               �  COPY test_ladm_valuation_model.lc_contactovisita (t_id, t_ili_tid, tipo_documento_quien_atendio, numero_documento_quien_atendio, primer_nombre_quien_atendio, segundo_nombre_quien_atendio, primer_apellido_quien_atendio, segundo_apellido_quien_atendio, relacion_con_predio, domicilio_notificaciones, celular, correo_electronico, autoriza_notificaciones, lc_datos_adicionales) FROM stdin;
    test_ladm_valuation_model       postgres    false    288   �i      &          0    579802 )   lc_datosadicionaleslevantamientocatastral 
   TABLE DATA               �  COPY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral (t_id, t_ili_tid, tiene_area_registral, area_registral_m2, procedimiento_catastral_registral, destinacion_economica, clase_suelo, categoria_suelo, observaciones, fecha_visita_predial, tipo_documento_reconocedor, numero_documento_reconocedor, primer_nombre_reconocedor, segundo_nombre_reconocedor, primer_apellido_reconocedor, segundo_apellido_reconocedor, resultado_visita, suscribe_acta_colindancia, lc_predio) FROM stdin;
    test_ladm_valuation_model       postgres    false    308   �i      �%          0    579579    lc_datosphcondominio 
   TABLE DATA               "  COPY test_ladm_valuation_model.lc_datosphcondominio (t_id, t_ili_tid, area_total_terreno, area_total_terreno_privada, area_total_terreno_comun, area_total_construida, area_total_construida_privada, area_total_construida_comun, numero_torres, total_unidades_privadas, lc_predio) FROM stdin;
    test_ladm_valuation_model       postgres    false    289   j      �%          0    579587 
   lc_derecho 
   TABLE DATA                 COPY test_ladm_valuation_model.lc_derecho (t_id, t_ili_tid, tipo, fraccion_derecho, fecha_inicio_tenencia, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    290    j      $&          0    580035    lc_derechotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_derechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    330   =j      ]&          0    580548    lc_destinacioneconomicatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_destinacioneconomicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    387   m      l&          0    580683    lc_dominioconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_dominioconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    402   �x      [&          0    580530    lc_estadoconservaciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_estadoconservaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    385   +y      �%          0    579601    lc_estructuranovedadfmi 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_estructuranovedadfmi (t_id, t_seq, codigo_orip, numero_fmi, lc_dtsdcnlstmntctstral_novedad_fmi) FROM stdin;
    test_ladm_valuation_model       postgres    false    291   �{      �%          0    579608 !   lc_estructuranovedadnumeropredial 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_estructuranovedadnumeropredial (t_id, t_seq, numero_predial, tipo_novedad, lc_dtsdcnlstmntctstral_novedad_numeros_prediales) FROM stdin;
    test_ladm_valuation_model       postgres    false    292   |      ?&          0    580278 .   lc_estructuranovedadnumeropredial_tipo_novedad 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_estructuranovedadnumeropredial_tipo_novedad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    357   %|      g&          0    580638    lc_fotoidentificaciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_fotoidentificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    397   !}      �%          0    579616    lc_fuenteadministrativa 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_fuenteadministrativa (t_id, t_ili_tid, tipo, ente_emisor, observacion, numero_fuente, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    293   ~      *&          0    580089    lc_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    336   #~       &          0    579629    lc_fuenteespacial 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_fuenteespacial (t_id, t_ili_tid, nombre, tipo, descripcion, metadato, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    294   ��      &          0    579642    lc_grupocalificacion 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_grupocalificacion (t_id, t_ili_tid, clase_calificacion, conservacion, subtotal, lc_calificacion_convencional) FROM stdin;
    test_ladm_valuation_model       postgres    false    295   ۀ      (&          0    580071    lc_grupoetnicotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_grupoetnicotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    334   ��      &          0    579652    lc_interesado 
   TABLE DATA               3  COPY test_ladm_valuation_model.lc_interesado (t_id, t_ili_tid, tipo, tipo_documento, documento_identidad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, sexo, grupo_etnico, razon_social, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    296   ��      &          0    579666    lc_interesadocontacto 
   TABLE DATA                 COPY test_ladm_valuation_model.lc_interesadocontacto (t_id, t_ili_tid, telefono1, telefono2, domicilio_notificacion, direccion_residencia, correo_electronico, autoriza_notificacion_correo, departamento, municipio, vereda, corregimiento, lc_interesado) FROM stdin;
    test_ladm_valuation_model       postgres    false    297   ��      B&          0    580305    lc_interesadodocumentotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_interesadodocumentotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    360   ̅      4&          0    580179    lc_interesadotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_interesadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    346   ň      &          0    579677 
   lc_lindero 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_lindero (t_id, t_ili_tid, longitud, geometria, localizacion_textual, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    298   ��      &          0    579688    lc_objetoconstruccion 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_objetoconstruccion (t_id, t_ili_tid, tipo_objeto_construccion, puntos, lc_grupo_calificacion) FROM stdin;
    test_ladm_valuation_model       postgres    false    299   �      h&          0    580647    lc_objetoconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_objetoconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    398   /�      &          0    579697    lc_ofertasmercadoinmobiliario 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_ofertasmercadoinmobiliario (t_id, t_ili_tid, tipo_oferta, valor_pedido, valor_negociado, fecha_captura_oferta, tiempo_oferta_mercado, numero_contacto_oferente, nombre_oferente, lc_predio) FROM stdin;
    test_ladm_valuation_model       postgres    false    300   �      b&          0    580593    lc_ofertatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_ofertatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    392   (�      &          0    579706 	   lc_predio 
   TABLE DATA               Q  COPY test_ladm_valuation_model.lc_predio (t_id, t_ili_tid, departamento, municipio, id_operacion, tiene_fmi, codigo_orip, matricula_inmobiliaria, numero_predial, numero_predial_anterior, nupre, avaluo_catastral, tipo, condicion_predio, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    301   �      &          0    579848    lc_predio_copropiedad 
   TABLE DATA               ]   COPY test_ladm_valuation_model.lc_predio_copropiedad (t_id, predio, copropiedad) FROM stdin;
    test_ladm_valuation_model       postgres    false    311   6�      &          0    579856    lc_predio_ini_predioinsumos 
   TABLE DATA               x   COPY test_ladm_valuation_model.lc_predio_ini_predioinsumos (t_id, t_ili_tid, ini_predio_insumos, lc_predio) FROM stdin;
    test_ladm_valuation_model       postgres    false    312   S�      I&          0    580368    lc_prediotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_prediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    367   p�      Y&          0    580512 &   lc_procedimientocatastralregistraltipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_procedimientocatastralregistraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    383   ��      &          0    579718    lc_puntocontrol 
   TABLE DATA               �  COPY test_ladm_valuation_model.lc_puntocontrol (t_id, t_ili_tid, id_punto_control, puntotipo, tipo_punto_control, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    302   ۟      /&          0    580134    lc_puntocontroltipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_puntocontroltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    341   ��      &          0    579819    lc_puntolevantamiento 
   TABLE DATA               �  COPY test_ladm_valuation_model.lc_puntolevantamiento (t_id, t_ili_tid, id_punto_levantamiento, puntotipo, tipo_punto_levantamiento, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    309   
�      Q&          0    580440    lc_puntolevtipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_puntolevtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    375   '�      	&          0    579737    lc_puntolindero 
   TABLE DATA               �  COPY test_ladm_valuation_model.lc_puntolindero (t_id, t_ili_tid, id_punto_lindero, puntotipo, acuerdo, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    303   �      -&          0    580116    lc_puntotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    339   �      Z&          0    580521    lc_relacionprediotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_relacionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    384   �      
&          0    579757    lc_restriccion 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_restriccion (t_id, t_ili_tid, tipo, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    304   2�      P&          0    580431    lc_restricciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_restricciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    374   O�      k&          0    580674    lc_resultadovisitatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_resultadovisitatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    401   ^�      &          0    579864    lc_servidumbretransito 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_servidumbretransito (t_id, t_ili_tid, area_servidumbre, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    313   H�      5&          0    580188    lc_sexotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_sexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    347   e�      &          0    579771 
   lc_terreno 
   TABLE DATA                 COPY test_ladm_valuation_model.lc_terreno (t_id, t_ili_tid, area_terreno, avaluo_terreno, manzana_vereda_codigo, geometria, dimension, etiqueta, relacion_superficie, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    305   �      &          0    579839    lc_tipologiaconstruccion 
   TABLE DATA               ~   COPY test_ladm_valuation_model.lc_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, lc_unidad_construccion) FROM stdin;
    test_ladm_valuation_model       postgres    false    310   "�      `&          0    580575    lc_tipologiatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    390   ?�      &          0    579877    lc_unidadconstruccion 
   TABLE DATA                 COPY test_ladm_valuation_model.lc_unidadconstruccion (t_id, t_ili_tid, identificador, tipo_dominio, tipo_construccion, tipo_unidad_construccion, tipo_planta, planta_ubicacion, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, avaluo_unidad_construccion, area_construida, area_privada_construida, altura, observaciones, lc_construccion, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_valuation_model       postgres    false    314   +�      F&          0    580341    lc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    364   H�      =&          0    580260    lc_usouconstipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    355   m�      A&          0    580296 
   lc_viatipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.lc_viatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    359   ��      .&          0    580125    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    340   ��      L&          0    580395    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    370   6�      �%          0    579462    snr_derecho 
   TABLE DATA               �   COPY test_ladm_valuation_model.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
    test_ladm_valuation_model       postgres    false    278   ��      ;&          0    580242    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    353   �      �%          0    579471    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_ladm_valuation_model.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
    test_ladm_valuation_model       postgres    false    279   :�      �%          0    579478    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_ladm_valuation_model.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_valuation_model       postgres    false    280   W�      �%          0    579488    snr_fuentederecho 
   TABLE DATA               �   COPY test_ladm_valuation_model.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_valuation_model       postgres    false    281   t�      0&          0    580143    snr_fuentetipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    342   ��      &&          0    580053    snr_personatitulartipo 
   TABLE DATA               �   COPY test_ladm_valuation_model.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_valuation_model       postgres    false    332    �      �%          0    579509    snr_predioregistro 
   TABLE DATA                 COPY test_ladm_valuation_model.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
    test_ladm_valuation_model       postgres    false    283   A�      �%          0    579498    snr_titular 
   TABLE DATA               �   COPY test_ladm_valuation_model.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
    test_ladm_valuation_model       postgres    false    282   ^�      �%          0    579520    snr_titular_derecho 
   TABLE DATA               �   COPY test_ladm_valuation_model.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
    test_ladm_valuation_model       postgres    false    284   {�      o&          0    580709    t_ili2db_attrname 
   TABLE DATA               b   COPY test_ladm_valuation_model.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
    test_ladm_valuation_model       postgres    false    405   ��      &          0    579964    t_ili2db_basket 
   TABLE DATA               u   COPY test_ladm_valuation_model.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
    test_ladm_valuation_model       postgres    false    321   �      n&          0    580701    t_ili2db_classname 
   TABLE DATA               Q   COPY test_ladm_valuation_model.t_ili2db_classname (iliname, sqlname) FROM stdin;
    test_ladm_valuation_model       postgres    false    404   �      p&          0    580717    t_ili2db_column_prop 
   TABLE DATA               o   COPY test_ladm_valuation_model.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
    test_ladm_valuation_model       postgres    false    406         &          0    579973    t_ili2db_dataset 
   TABLE DATA               P   COPY test_ladm_valuation_model.t_ili2db_dataset (t_id, datasetname) FROM stdin;
    test_ladm_valuation_model       postgres    false    322   �B      &          0    579978    t_ili2db_inheritance 
   TABLE DATA               W   COPY test_ladm_valuation_model.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
    test_ladm_valuation_model       postgres    false    323   �B      r&          0    580729    t_ili2db_meta_attrs 
   TABLE DATA               c   COPY test_ladm_valuation_model.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
    test_ladm_valuation_model       postgres    false    408   I       &          0    580000    t_ili2db_model 
   TABLE DATA               q   COPY test_ladm_valuation_model.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
    test_ladm_valuation_model       postgres    false    326   ҂      &          0    579986    t_ili2db_settings 
   TABLE DATA               L   COPY test_ladm_valuation_model.t_ili2db_settings (tag, setting) FROM stdin;
    test_ladm_valuation_model       postgres    false    324   A�      q&          0    580723    t_ili2db_table_prop 
   TABLE DATA               Y   COPY test_ladm_valuation_model.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
    test_ladm_valuation_model       postgres    false    407   <�      &          0    579994    t_ili2db_trafo 
   TABLE DATA               R   COPY test_ladm_valuation_model.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
    test_ladm_valuation_model       postgres    false    325   �      �(           0    0    t_ili2db_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('test_ladm_valuation_model.t_ili2db_seq', 841, true);
            test_ladm_valuation_model       postgres    false    221            �#           2606    580070 8   av_disponibilidadaguatipo av_disponibilidadaguatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_disponibilidadaguatipo
    ADD CONSTRAINT av_disponibilidadaguatipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_valuation_model.av_disponibilidadaguatipo DROP CONSTRAINT av_disponibilidadaguatipo_pkey;
       test_ladm_valuation_model         postgres    false    333            :$           2606    580673 :   av_influenciavialruraltipo av_influenciavialruraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_influenciavialruraltipo
    ADD CONSTRAINT av_influenciavialruraltipo_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_valuation_model.av_influenciavialruraltipo DROP CONSTRAINT av_influenciavialruraltipo_pkey;
       test_ladm_valuation_model         postgres    false    400            �#           2606    580223 <   av_influenciavialurbanatipo av_influenciavialurbanatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_influenciavialurbanatipo
    ADD CONSTRAINT av_influenciavialurbanatipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_valuation_model.av_influenciavialurbanatipo DROP CONSTRAINT av_influenciavialurbanatipo_pkey;
       test_ladm_valuation_model         postgres    false    350            
$           2606    580457 6   av_serviciospublicostipo av_serviciospublicostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_serviciospublicostipo
    ADD CONSTRAINT av_serviciospublicostipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_valuation_model.av_serviciospublicostipo DROP CONSTRAINT av_serviciospublicostipo_pkey;
       test_ladm_valuation_model         postgres    false    376            �#           2606    579902 F   av_tablacalificacionconstruccion av_tablacalificacionconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_tablacalificacionconstruccion
    ADD CONSTRAINT av_tablacalificacionconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_tablacalificacionconstruccion DROP CONSTRAINT av_tablacalificacionconstruccion_pkey;
       test_ladm_valuation_model         postgres    false    315            �#           2606    580160 D   av_tipificacionconstrucciontipo av_tipificacionconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_tipificacionconstrucciontipo
    ADD CONSTRAINT av_tipificacionconstrucciontipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_tipificacionconstrucciontipo DROP CONSTRAINT av_tipificacionconstrucciontipo_pkey;
       test_ladm_valuation_model         postgres    false    343            �#           2606    579910 6   av_tipologiaconstruccion av_tipologiaconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_tipologiaconstruccion
    ADD CONSTRAINT av_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_valuation_model.av_tipologiaconstruccion DROP CONSTRAINT av_tipologiaconstruccion_pkey;
       test_ladm_valuation_model         postgres    false    316            $           2606    580493 &   av_tipologiatipo av_tipologiatipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_valuation_model.av_tipologiatipo
    ADD CONSTRAINT av_tipologiatipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_valuation_model.av_tipologiatipo DROP CONSTRAINT av_tipologiatipo_pkey;
       test_ladm_valuation_model         postgres    false    380            �#           2606    580340 0   av_topografiazonatipo av_topografiazonatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_topografiazonatipo
    ADD CONSTRAINT av_topografiazonatipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.av_topografiazonatipo DROP CONSTRAINT av_topografiazonatipo_pkey;
       test_ladm_valuation_model         postgres    false    363            �#           2606    580259 .   av_usosueloruraltipo av_usosueloruraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_usosueloruraltipo
    ADD CONSTRAINT av_usosueloruraltipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_valuation_model.av_usosueloruraltipo DROP CONSTRAINT av_usosueloruraltipo_pkey;
       test_ladm_valuation_model         postgres    false    354            0$           2606    580628 0   av_usosuelourbanotipo av_usosuelourbanotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_usosuelourbanotipo
    ADD CONSTRAINT av_usosuelourbanotipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.av_usosuelourbanotipo DROP CONSTRAINT av_usosuelourbanotipo_pkey;
       test_ladm_valuation_model         postgres    false    395            �#           2606    580295 $   av_usouconstipo av_usouconstipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.av_usouconstipo
    ADD CONSTRAINT av_usouconstipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.av_usouconstipo DROP CONSTRAINT av_usouconstipo_pkey;
       test_ladm_valuation_model         postgres    false    358            �#           2606    579921 <   av_zonahomogeneafisicarural av_zonahomogeneafisicarural_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicarural
    ADD CONSTRAINT av_zonahomogeneafisicarural_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicarural DROP CONSTRAINT av_zonahomogeneafisicarural_pkey;
       test_ladm_valuation_model         postgres    false    317            �#           2606    579935 >   av_zonahomogeneafisicaurbana av_zonahomogeneafisicaurbana_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicaurbana_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicaurbana_pkey;
       test_ladm_valuation_model         postgres    false    318            �#           2606    579962 H   av_zonahomogeneageoeconomicarural av_zonahomogeneageoeconomicarural_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneageoeconomicarural
    ADD CONSTRAINT av_zonahomogeneageoeconomicarural_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneageoeconomicarural DROP CONSTRAINT av_zonahomogeneageoeconomicarural_pkey;
       test_ladm_valuation_model         postgres    false    320            �#           2606    579951 J   av_zonahomogeneageoeconomicaurbana av_zonahomogeneageoeconomicaurbana_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana
    ADD CONSTRAINT av_zonahomogeneageoeconomicaurbana_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana DROP CONSTRAINT av_zonahomogeneageoeconomicaurbana_pkey;
       test_ladm_valuation_model         postgres    false    319            �!           2606    578959 *   cc_metodooperacion cc_metodooperacion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_valuation_model.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_valuation_model.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_pkey;
       test_ladm_valuation_model         postgres    false    226            �#           2606    580394 >   ci_forma_presentacion_codigo ci_forma_presentacion_codigo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.ci_forma_presentacion_codigo
    ADD CONSTRAINT ci_forma_presentacion_codigo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_valuation_model.ci_forma_presentacion_codigo DROP CONSTRAINT ci_forma_presentacion_codigo_pkey;
       test_ladm_valuation_model         postgres    false    369            �#           2606    580367    col_areatipo col_areatipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.col_areatipo
    ADD CONSTRAINT col_areatipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.col_areatipo DROP CONSTRAINT col_areatipo_pkey;
       test_ladm_valuation_model         postgres    false    366            �!           2606    578969     col_areavalor col_areavalor_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor
    ADD CONSTRAINT col_areavalor_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor DROP CONSTRAINT col_areavalor_pkey;
       test_ladm_valuation_model         postgres    false    227            i"           2606    579235 6   col_baunitcomointeresado col_baunitcomointeresado_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_pkey;
       test_ladm_valuation_model         postgres    false    254            5"           2606    579144 &   col_baunitfuente col_baunitfuente_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitfuente DROP CONSTRAINT col_baunitfuente_pkey;
       test_ladm_valuation_model         postgres    false    244            ="           2606    579159     col_cclfuente col_cclfuente_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_valuation_model.col_cclfuente
    ADD CONSTRAINT col_cclfuente_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_valuation_model.col_cclfuente DROP CONSTRAINT col_cclfuente_pkey;
       test_ladm_valuation_model         postgres    false    246            T"           2606    579199    col_clfuente col_clfuente_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.col_clfuente
    ADD CONSTRAINT col_clfuente_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.col_clfuente DROP CONSTRAINT col_clfuente_pkey;
       test_ladm_valuation_model         postgres    false    250            @$           2606    580700 2   col_contenidoniveltipo col_contenidoniveltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_contenidoniveltipo
    ADD CONSTRAINT col_contenidoniveltipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_valuation_model.col_contenidoniveltipo DROP CONSTRAINT col_contenidoniveltipo_pkey;
       test_ladm_valuation_model         postgres    false    403            �#           2606    580331 (   col_dimensiontipo col_dimensiontipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_valuation_model.col_dimensiontipo
    ADD CONSTRAINT col_dimensiontipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_valuation_model.col_dimensiontipo DROP CONSTRAINT col_dimensiontipo_pkey;
       test_ladm_valuation_model         postgres    false    362            $           2606    580511 >   col_estadodisponibilidadtipo col_estadodisponibilidadtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_estadodisponibilidadtipo
    ADD CONSTRAINT col_estadodisponibilidadtipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_valuation_model.col_estadodisponibilidadtipo DROP CONSTRAINT col_estadodisponibilidadtipo_pkey;
       test_ladm_valuation_model         postgres    false    382            �#           2606    580358 :   col_estadoredserviciostipo col_estadoredserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_estadoredserviciostipo
    ADD CONSTRAINT col_estadoredserviciostipo_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_valuation_model.col_estadoredserviciostipo DROP CONSTRAINT col_estadoredserviciostipo_pkey;
       test_ladm_valuation_model         postgres    false    365            �#           2606    580106 *   col_estructuratipo col_estructuratipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_valuation_model.col_estructuratipo
    ADD CONSTRAINT col_estructuratipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_valuation_model.col_estructuratipo DROP CONSTRAINT col_estructuratipo_pkey;
       test_ladm_valuation_model         postgres    false    337            �#           2606    580385 >   col_fuenteadministrativatipo col_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_fuenteadministrativatipo
    ADD CONSTRAINT col_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_valuation_model.col_fuenteadministrativatipo DROP CONSTRAINT col_fuenteadministrativatipo_pkey;
       test_ladm_valuation_model         postgres    false    368            $$           2606    580574 2   col_fuenteespacialtipo col_fuenteespacialtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_fuenteespacialtipo
    ADD CONSTRAINT col_fuenteespacialtipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_valuation_model.col_fuenteespacialtipo DROP CONSTRAINT col_fuenteespacialtipo_pkey;
       test_ladm_valuation_model         postgres    false    389            "$           2606    580565 4   col_grupointeresadotipo col_grupointeresadotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_grupointeresadotipo
    ADD CONSTRAINT col_grupointeresadotipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_valuation_model.col_grupointeresadotipo DROP CONSTRAINT col_grupointeresadotipo_pkey;
       test_ladm_valuation_model         postgres    false    388            �#           2606    580016 0   col_interpolaciontipo col_interpolaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_interpolaciontipo
    ADD CONSTRAINT col_interpolaciontipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.col_interpolaciontipo DROP CONSTRAINT col_interpolaciontipo_pkey;
       test_ladm_valuation_model         postgres    false    327            �#           2606    580025 (   col_iso19125_tipo col_iso19125_tipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_valuation_model.col_iso19125_tipo
    ADD CONSTRAINT col_iso19125_tipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_valuation_model.col_iso19125_tipo DROP CONSTRAINT col_iso19125_tipo_pkey;
       test_ladm_valuation_model         postgres    false    328            G"           2606    579178    col_masccl col_masccl_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_valuation_model.col_masccl
    ADD CONSTRAINT col_masccl_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_valuation_model.col_masccl DROP CONSTRAINT col_masccl_pkey;
       test_ladm_valuation_model         postgres    false    248            \"           2606    579216    col_mascl col_mascl_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_valuation_model.col_mascl
    ADD CONSTRAINT col_mascl_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_valuation_model.col_mascl DROP CONSTRAINT col_mascl_pkey;
       test_ladm_valuation_model         postgres    false    252            @"           2606    579167    col_menosccl col_menosccl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl
    ADD CONSTRAINT col_menosccl_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl DROP CONSTRAINT col_menosccl_pkey;
       test_ladm_valuation_model         postgres    false    247            V"           2606    579206    col_menoscl col_menoscl_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_valuation_model.col_menoscl
    ADD CONSTRAINT col_menoscl_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_valuation_model.col_menoscl DROP CONSTRAINT col_menoscl_pkey;
       test_ladm_valuation_model         postgres    false    251            ($           2606    580592 6   col_metodoproducciontipo col_metodoproducciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_metodoproducciontipo
    ADD CONSTRAINT col_metodoproducciontipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_valuation_model.col_metodoproducciontipo DROP CONSTRAINT col_metodoproducciontipo_pkey;
       test_ladm_valuation_model         postgres    false    391            y"           2606    579262    col_miembros col_miembros_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.col_miembros
    ADD CONSTRAINT col_miembros_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.col_miembros DROP CONSTRAINT col_miembros_pkey;
       test_ladm_valuation_model         postgres    false    257            N"           2606    579189    col_puntoccl col_puntoccl_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.col_puntoccl
    ADD CONSTRAINT col_puntoccl_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.col_puntoccl DROP CONSTRAINT col_puntoccl_pkey;
       test_ladm_valuation_model         postgres    false    249            b"           2606    579226    col_puntocl col_puntocl_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_valuation_model.col_puntocl
    ADD CONSTRAINT col_puntocl_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_valuation_model.col_puntocl DROP CONSTRAINT col_puntocl_pkey;
       test_ladm_valuation_model         postgres    false    253            ("           2606    579123 $   col_puntofuente col_puntofuente_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.col_puntofuente
    ADD CONSTRAINT col_puntofuente_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.col_puntofuente DROP CONSTRAINT col_puntofuente_pkey;
       test_ladm_valuation_model         postgres    false    242            �#           2606    580214     col_puntotipo col_puntotipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_valuation_model.col_puntotipo
    ADD CONSTRAINT col_puntotipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_valuation_model.col_puntotipo DROP CONSTRAINT col_puntotipo_pkey;
       test_ladm_valuation_model         postgres    false    349            �#           2606    580034 .   col_redserviciostipo col_redserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_redserviciostipo
    ADD CONSTRAINT col_redserviciostipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_valuation_model.col_redserviciostipo DROP CONSTRAINT col_redserviciostipo_pkey;
       test_ladm_valuation_model         postgres    false    329            $           2606    580466 &   col_registrotipo col_registrotipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_valuation_model.col_registrotipo
    ADD CONSTRAINT col_registrotipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_valuation_model.col_registrotipo DROP CONSTRAINT col_registrotipo_pkey;
       test_ladm_valuation_model         postgres    false    377            !"           2606    579108 *   col_relacionfuente col_relacionfuente_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_valuation_model.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_valuation_model.col_relacionfuente DROP CONSTRAINT col_relacionfuente_pkey;
       test_ladm_valuation_model         postgres    false    240            8"           2606    579152 <   col_relacionfuenteuespacial col_relacionfuenteuespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespacial_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_valuation_model.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespacial_pkey;
       test_ladm_valuation_model         postgres    false    245            �#           2606    580232 :   col_relacionsuperficietipo col_relacionsuperficietipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_relacionsuperficietipo
    ADD CONSTRAINT col_relacionsuperficietipo_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_valuation_model.col_relacionsuperficietipo DROP CONSTRAINT col_relacionsuperficietipo_pkey;
       test_ladm_valuation_model         postgres    false    351            o"           2606    579244 0   col_responsablefuente col_responsablefuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.col_responsablefuente DROP CONSTRAINT col_responsablefuente_pkey;
       test_ladm_valuation_model         postgres    false    255            "           2606    579088     col_rrrfuente col_rrrfuente_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_valuation_model.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_valuation_model.col_rrrfuente DROP CONSTRAINT col_rrrfuente_pkey;
       test_ladm_valuation_model         postgres    false    238            r"           2606    579253 ,   col_topografofuente col_topografofuente_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_valuation_model.col_topografofuente
    ADD CONSTRAINT col_topografofuente_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_valuation_model.col_topografofuente DROP CONSTRAINT col_topografofuente_pkey;
       test_ladm_valuation_model         postgres    false    256            �!           2606    579012 *   col_transformacion col_transformacion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_valuation_model.col_transformacion
    ADD CONSTRAINT col_transformacion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_valuation_model.col_transformacion DROP CONSTRAINT col_transformacion_pkey;
       test_ladm_valuation_model         postgres    false    230            "           2606    579097    col_uebaunit col_uebaunit_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit DROP CONSTRAINT col_uebaunit_pkey;
       test_ladm_valuation_model         postgres    false    239            ."           2606    579133    col_uefuente col_uefuente_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente
    ADD CONSTRAINT col_uefuente_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente DROP CONSTRAINT col_uefuente_pkey;
       test_ladm_valuation_model         postgres    false    243            "           2606    579078     col_ueuegrupo col_ueuegrupo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_valuation_model.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_valuation_model.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_pkey;
       test_ladm_valuation_model         postgres    false    237            $           2606    580421 J   col_unidadadministrativabasicatipo col_unidadadministrativabasicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_unidadadministrativabasicatipo
    ADD CONSTRAINT col_unidadadministrativabasicatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_unidadadministrativabasicatipo DROP CONSTRAINT col_unidadadministrativabasicatipo_pkey;
       test_ladm_valuation_model         postgres    false    372            �#           2606    580178 8   col_unidadedificaciontipo col_unidadedificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_unidadedificaciontipo
    ADD CONSTRAINT col_unidadedificaciontipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_valuation_model.col_unidadedificaciontipo DROP CONSTRAINT col_unidadedificaciontipo_pkey;
       test_ladm_valuation_model         postgres    false    345            $"           2606    579115 &   col_unidadfuente col_unidadfuente_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_valuation_model.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_valuation_model.col_unidadfuente DROP CONSTRAINT col_unidadfuente_pkey;
       test_ladm_valuation_model         postgres    false    241            �#           2606    580322 $   col_volumentipo col_volumentipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.col_volumentipo
    ADD CONSTRAINT col_volumentipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.col_volumentipo DROP CONSTRAINT col_volumentipo_pkey;
       test_ladm_valuation_model         postgres    false    361            "           2606    579067 &   col_volumenvalor col_volumenvalor_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_pkey;
       test_ladm_valuation_model         postgres    false    236            "           2606    579058    extarchivo extarchivo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_valuation_model.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_valuation_model.extarchivo DROP CONSTRAINT extarchivo_pkey;
       test_ladm_valuation_model         postgres    false    235            $           2606    580547 F   extdireccion_clase_via_principal extdireccion_clase_via_principal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion_clase_via_principal
    ADD CONSTRAINT extdireccion_clase_via_principal_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion_clase_via_principal DROP CONSTRAINT extdireccion_clase_via_principal_pkey;
       test_ladm_valuation_model         postgres    false    386            �!           2606    578983    extdireccion extdireccion_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_pkey;
       test_ladm_valuation_model         postgres    false    228            ,$           2606    580610 :   extdireccion_sector_ciudad extdireccion_sector_ciudad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion_sector_ciudad
    ADD CONSTRAINT extdireccion_sector_ciudad_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion_sector_ciudad DROP CONSTRAINT extdireccion_sector_ciudad_pkey;
       test_ladm_valuation_model         postgres    false    393            �#           2606    580052 :   extdireccion_sector_predio extdireccion_sector_predio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion_sector_predio
    ADD CONSTRAINT extdireccion_sector_predio_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion_sector_predio DROP CONSTRAINT extdireccion_sector_predio_pkey;
       test_ladm_valuation_model         postgres    false    331            2$           2606    580637 <   extdireccion_tipo_direccion extdireccion_tipo_direccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion_tipo_direccion
    ADD CONSTRAINT extdireccion_tipo_direccion_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion_tipo_direccion DROP CONSTRAINT extdireccion_tipo_direccion_pkey;
       test_ladm_valuation_model         postgres    false    396            �!           2606    579040     extinteresado extinteresado_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_valuation_model.extinteresado
    ADD CONSTRAINT extinteresado_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_valuation_model.extinteresado DROP CONSTRAINT extinteresado_pkey;
       test_ladm_valuation_model         postgres    false    233             "           2606    579049 0   extredserviciosfisica extredserviciosfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extredserviciosfisica
    ADD CONSTRAINT extredserviciosfisica_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.extredserviciosfisica DROP CONSTRAINT extredserviciosfisica_pkey;
       test_ladm_valuation_model         postgres    false    234            �!           2606    579022 :   extunidadedificacionfisica extunidadedificacionfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extunidadedificacionfisica
    ADD CONSTRAINT extunidadedificacionfisica_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_valuation_model.extunidadedificacionfisica DROP CONSTRAINT extunidadedificacionfisica_pkey;
       test_ladm_valuation_model         postgres    false    231            �!           2606    579001    fraccion fraccion_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_valuation_model.fraccion
    ADD CONSTRAINT fraccion_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_valuation_model.fraccion DROP CONSTRAINT fraccion_pkey;
       test_ladm_valuation_model         postgres    false    229            |"           2606    579274    gc_barrio gc_barrio_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_valuation_model.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_valuation_model.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
       test_ladm_valuation_model         postgres    false    258            ~"           2606    579284 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
       test_ladm_valuation_model         postgres    false    259            �"           2606    579294 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_valuation_model.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
       test_ladm_valuation_model         postgres    false    260            �"           2606    579304 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_valuation_model.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
       test_ladm_valuation_model         postgres    false    261            �"           2606    579314 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
       test_ladm_valuation_model         postgres    false    262            �#           2606    580205 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_valuation_model.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
       test_ladm_valuation_model         postgres    false    348            �"           2606    579324 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
       test_ladm_valuation_model         postgres    false    263            �"           2606    579459 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_valuation_model.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_valuation_model.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
       test_ladm_valuation_model         postgres    false    277            �"           2606    579333 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_valuation_model.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
       test_ladm_valuation_model         postgres    false    264            �"           2606    579340 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
       test_ladm_valuation_model         postgres    false    265            �"           2606    579350    gc_direccion gc_direccion_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
       test_ladm_valuation_model         postgres    false    266            �"           2606    579358 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
       test_ladm_valuation_model         postgres    false    267            �"           2606    579368    gc_manzana gc_manzana_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_valuation_model.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_valuation_model.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
       test_ladm_valuation_model         postgres    false    268            �"           2606    579378    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
       test_ladm_valuation_model         postgres    false    269            �"           2606    579451 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_valuation_model.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_valuation_model.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
       test_ladm_valuation_model         postgres    false    276            �"           2606    579388 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_valuation_model.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_valuation_model.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
       test_ladm_valuation_model         postgres    false    270            �"           2606    579398 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_valuation_model.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_valuation_model.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
       test_ladm_valuation_model         postgres    false    271            �"           2606    579408 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
       test_ladm_valuation_model         postgres    false    272            �#           2606    580115 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_valuation_model.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
       test_ladm_valuation_model         postgres    false    338            �"           2606    579418    gc_terreno gc_terreno_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_valuation_model.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_valuation_model.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
       test_ladm_valuation_model         postgres    false    273            �"           2606    579429 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
       test_ladm_valuation_model         postgres    false    274            $           2606    580430 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_valuation_model.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
       test_ladm_valuation_model         postgres    false    373            �"           2606    579441    gc_vereda gc_vereda_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_valuation_model.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_valuation_model.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
       test_ladm_valuation_model         postgres    false    275            �!           2606    578936 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_valuation_model.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_valuation_model.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
       test_ladm_valuation_model         postgres    false    223            �!           2606    578953 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_valuation_model.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_valuation_model.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
       test_ladm_valuation_model         postgres    false    225            �!           2606    578928 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
       test_ladm_valuation_model         postgres    false    222            �!           2606    578945 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
       test_ladm_valuation_model         postgres    false    224            �!           2606    579028    imagen imagen_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_valuation_model.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_valuation_model.imagen DROP CONSTRAINT imagen_pkey;
       test_ladm_valuation_model         postgres    false    232            �#           2606    580241 2   ini_emparejamientotipo ini_emparejamientotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.ini_emparejamientotipo
    ADD CONSTRAINT ini_emparejamientotipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_valuation_model.ini_emparejamientotipo DROP CONSTRAINT ini_emparejamientotipo_pkey;
       test_ladm_valuation_model         postgres    false    352            �"           2606    579536 (   ini_predioinsumos ini_predioinsumos_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_valuation_model.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_valuation_model.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_pkey;
       test_ladm_valuation_model         postgres    false    285             $           2606    580412 "   lc_acuerdotipo lc_acuerdotipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_valuation_model.lc_acuerdotipo
    ADD CONSTRAINT lc_acuerdotipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_valuation_model.lc_acuerdotipo DROP CONSTRAINT lc_acuerdotipo_pkey;
       test_ladm_valuation_model         postgres    false    371            �"           2606    579549 6   lc_agrupacioninteresados lc_agrupacioninteresados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_valuation_model.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_pkey;
       test_ladm_valuation_model         postgres    false    286            �#           2606    580088    lc_anexotipo lc_anexotipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.lc_anexotipo
    ADD CONSTRAINT lc_anexotipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.lc_anexotipo DROP CONSTRAINT lc_anexotipo_pkey;
       test_ladm_valuation_model         postgres    false    335            I#           2606    579790 <   lc_calificacionconvencional lc_calificacionconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencional_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencional_pkey;
       test_ladm_valuation_model         postgres    false    306            K#           2606    579799 @   lc_calificacionnoconvencional lc_calificacionnoconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvencional_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvencional_pkey;
       test_ladm_valuation_model         postgres    false    307            $           2606    580502 &   lc_calificartipo lc_calificartipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_valuation_model.lc_calificartipo
    ADD CONSTRAINT lc_calificartipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_valuation_model.lc_calificartipo DROP CONSTRAINT lc_calificartipo_pkey;
       test_ladm_valuation_model         postgres    false    381            $           2606    580475 0   lc_categoriasuelotipo lc_categoriasuelotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_categoriasuelotipo
    ADD CONSTRAINT lc_categoriasuelotipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.lc_categoriasuelotipo DROP CONSTRAINT lc_categoriasuelotipo_pkey;
       test_ladm_valuation_model         postgres    false    378            �#           2606    580169 6   lc_clasecalificaciontipo lc_clasecalificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_clasecalificaciontipo
    ADD CONSTRAINT lc_clasecalificaciontipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_valuation_model.lc_clasecalificaciontipo DROP CONSTRAINT lc_clasecalificaciontipo_pkey;
       test_ladm_valuation_model         postgres    false    344            �#           2606    580277 (   lc_clasesuelotipo lc_clasesuelotipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_valuation_model.lc_clasesuelotipo
    ADD CONSTRAINT lc_clasesuelotipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_valuation_model.lc_clasesuelotipo DROP CONSTRAINT lc_clasesuelotipo_pkey;
       test_ladm_valuation_model         postgres    false    356            .$           2606    580619 2   lc_condicionprediotipo lc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_condicionprediotipo
    ADD CONSTRAINT lc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_valuation_model.lc_condicionprediotipo DROP CONSTRAINT lc_condicionprediotipo_pkey;
       test_ladm_valuation_model         postgres    false    394            �"           2606    579560 $   lc_construccion lc_construccion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccion
    ADD CONSTRAINT lc_construccion_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccion DROP CONSTRAINT lc_construccion_pkey;
       test_ladm_valuation_model         postgres    false    287            $           2606    580484 8   lc_construccionplantatipo lc_construccionplantatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccionplantatipo
    ADD CONSTRAINT lc_construccionplantatipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccionplantatipo DROP CONSTRAINT lc_construccionplantatipo_pkey;
       test_ladm_valuation_model         postgres    false    379            8$           2606    580664 ,   lc_construcciontipo lc_construcciontipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_valuation_model.lc_construcciontipo
    ADD CONSTRAINT lc_construcciontipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_valuation_model.lc_construcciontipo DROP CONSTRAINT lc_construcciontipo_pkey;
       test_ladm_valuation_model         postgres    false    399            �"           2606    579575 (   lc_contactovisita lc_contactovisita_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_valuation_model.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_valuation_model.lc_contactovisita DROP CONSTRAINT lc_contactovisita_pkey;
       test_ladm_valuation_model         postgres    false    288            O#           2606    579811 X   lc_datosadicionaleslevantamientocatastral lc_datosadicionaleslevantamientocatastral_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey;
       test_ladm_valuation_model         postgres    false    308            �"           2606    579585 .   lc_datosphcondominio lc_datosphcondominio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_pkey;
       test_ladm_valuation_model         postgres    false    289            �"           2606    579596    lc_derecho lc_derecho_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_valuation_model.lc_derecho
    ADD CONSTRAINT lc_derecho_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_valuation_model.lc_derecho DROP CONSTRAINT lc_derecho_pkey;
       test_ladm_valuation_model         postgres    false    290            �#           2606    580043 "   lc_derechotipo lc_derechotipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_valuation_model.lc_derechotipo
    ADD CONSTRAINT lc_derechotipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_valuation_model.lc_derechotipo DROP CONSTRAINT lc_derechotipo_pkey;
       test_ladm_valuation_model         postgres    false    330             $           2606    580556 <   lc_destinacioneconomicatipo lc_destinacioneconomicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_destinacioneconomicatipo
    ADD CONSTRAINT lc_destinacioneconomicatipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_valuation_model.lc_destinacioneconomicatipo DROP CONSTRAINT lc_destinacioneconomicatipo_pkey;
       test_ladm_valuation_model         postgres    false    387            >$           2606    580691 :   lc_dominioconstrucciontipo lc_dominioconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_dominioconstrucciontipo
    ADD CONSTRAINT lc_dominioconstrucciontipo_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_valuation_model.lc_dominioconstrucciontipo DROP CONSTRAINT lc_dominioconstrucciontipo_pkey;
       test_ladm_valuation_model         postgres    false    402            $           2606    580538 8   lc_estadoconservaciontipo lc_estadoconservaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_estadoconservaciontipo
    ADD CONSTRAINT lc_estadoconservaciontipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_valuation_model.lc_estadoconservaciontipo DROP CONSTRAINT lc_estadoconservaciontipo_pkey;
       test_ladm_valuation_model         postgres    false    385            �"           2606    579606 4   lc_estructuranovedadfmi lc_estructuranovedadfmi_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_pkey;
       test_ladm_valuation_model         postgres    false    291            �"           2606    579613 H   lc_estructuranovedadnumeropredial lc_estructuranovedadnumeropredial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranovedadnumeropredial_pkey;
       test_ladm_valuation_model         postgres    false    292            �#           2606    580286 b   lc_estructuranovedadnumeropredial_tipo_novedad lc_estructuranovedadnumeropredial_tipo_novedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadnumeropredial_tipo_novedad
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadnumeropredial_tipo_novedad DROP CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey;
       test_ladm_valuation_model         postgres    false    357            4$           2606    580646 8   lc_fotoidentificaciontipo lc_fotoidentificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_fotoidentificaciontipo
    ADD CONSTRAINT lc_fotoidentificaciontipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_valuation_model.lc_fotoidentificaciontipo DROP CONSTRAINT lc_fotoidentificaciontipo_pkey;
       test_ladm_valuation_model         postgres    false    397            �"           2606    579625 4   lc_fuenteadministrativa lc_fuenteadministrativa_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_pkey;
       test_ladm_valuation_model         postgres    false    293            �#           2606    580097 <   lc_fuenteadministrativatipo lc_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteadministrativatipo
    ADD CONSTRAINT lc_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteadministrativatipo DROP CONSTRAINT lc_fuenteadministrativatipo_pkey;
       test_ladm_valuation_model         postgres    false    336            #           2606    579638 (   lc_fuenteespacial lc_fuenteespacial_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_pkey;
       test_ladm_valuation_model         postgres    false    294            #           2606    579648 .   lc_grupocalificacion lc_grupocalificacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_valuation_model.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_pkey;
       test_ladm_valuation_model         postgres    false    295            �#           2606    580079 *   lc_grupoetnicotipo lc_grupoetnicotipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_valuation_model.lc_grupoetnicotipo
    ADD CONSTRAINT lc_grupoetnicotipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_valuation_model.lc_grupoetnicotipo DROP CONSTRAINT lc_grupoetnicotipo_pkey;
       test_ladm_valuation_model         postgres    false    334            #           2606    579661     lc_interesado lc_interesado_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesado
    ADD CONSTRAINT lc_interesado_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesado DROP CONSTRAINT lc_interesado_pkey;
       test_ladm_valuation_model         postgres    false    296            #           2606    579675 0   lc_interesadocontacto lc_interesadocontacto_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_pkey;
       test_ladm_valuation_model         postgres    false    297            �#           2606    580313 :   lc_interesadodocumentotipo lc_interesadodocumentotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesadodocumentotipo
    ADD CONSTRAINT lc_interesadodocumentotipo_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesadodocumentotipo DROP CONSTRAINT lc_interesadodocumentotipo_pkey;
       test_ladm_valuation_model         postgres    false    360            �#           2606    580187 (   lc_interesadotipo lc_interesadotipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesadotipo
    ADD CONSTRAINT lc_interesadotipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesadotipo DROP CONSTRAINT lc_interesadotipo_pkey;
       test_ladm_valuation_model         postgres    false    346            #           2606    579686    lc_lindero lc_lindero_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_valuation_model.lc_lindero
    ADD CONSTRAINT lc_lindero_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_valuation_model.lc_lindero DROP CONSTRAINT lc_lindero_pkey;
       test_ladm_valuation_model         postgres    false    298            #           2606    579694 0   lc_objetoconstruccion lc_objetoconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_pkey;
       test_ladm_valuation_model         postgres    false    299            6$           2606    580655 8   lc_objetoconstrucciontipo lc_objetoconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_objetoconstrucciontipo
    ADD CONSTRAINT lc_objetoconstrucciontipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_valuation_model.lc_objetoconstrucciontipo DROP CONSTRAINT lc_objetoconstrucciontipo_pkey;
       test_ladm_valuation_model         postgres    false    398            #           2606    579703 @   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmobiliario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmobiliario_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_valuation_model.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmobiliario_pkey;
       test_ladm_valuation_model         postgres    false    300            *$           2606    580601     lc_ofertatipo lc_ofertatipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_valuation_model.lc_ofertatipo
    ADD CONSTRAINT lc_ofertatipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_valuation_model.lc_ofertatipo DROP CONSTRAINT lc_ofertatipo_pkey;
       test_ladm_valuation_model         postgres    false    392            i#           2606    579853 0   lc_predio_copropiedad lc_predio_copropiedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_pkey;
       test_ladm_valuation_model         postgres    false    311            o#           2606    579861 <   lc_predio_ini_predioinsumos lc_predio_ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsumos_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsumos_pkey;
       test_ladm_valuation_model         postgres    false    312            "#           2606    579715    lc_predio lc_predio_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio
    ADD CONSTRAINT lc_predio_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio DROP CONSTRAINT lc_predio_pkey;
       test_ladm_valuation_model         postgres    false    301            �#           2606    580376     lc_prediotipo lc_prediotipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_valuation_model.lc_prediotipo
    ADD CONSTRAINT lc_prediotipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_valuation_model.lc_prediotipo DROP CONSTRAINT lc_prediotipo_pkey;
       test_ladm_valuation_model         postgres    false    367            $           2606    580520 R   lc_procedimientocatastralregistraltipo lc_procedimientocatastralregistraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_procedimientocatastralregistraltipo
    ADD CONSTRAINT lc_procedimientocatastralregistraltipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_procedimientocatastralregistraltipo DROP CONSTRAINT lc_procedimientocatastralregistraltipo_pkey;
       test_ladm_valuation_model         postgres    false    383            '#           2606    579727 $   lc_puntocontrol lc_puntocontrol_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_pkey;
       test_ladm_valuation_model         postgres    false    302            �#           2606    580142 ,   lc_puntocontroltipo lc_puntocontroltipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontroltipo
    ADD CONSTRAINT lc_puntocontroltipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontroltipo DROP CONSTRAINT lc_puntocontroltipo_pkey;
       test_ladm_valuation_model         postgres    false    341            [#           2606    579828 0   lc_puntolevantamiento lc_puntolevantamiento_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_pkey;
       test_ladm_valuation_model         postgres    false    309            $           2606    580448 $   lc_puntolevtipo lc_puntolevtipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevtipo
    ADD CONSTRAINT lc_puntolevtipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevtipo DROP CONSTRAINT lc_puntolevtipo_pkey;
       test_ladm_valuation_model         postgres    false    375            4#           2606    579746 $   lc_puntolindero lc_puntolindero_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_pkey;
       test_ladm_valuation_model         postgres    false    303            �#           2606    580124    lc_puntotipo lc_puntotipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntotipo
    ADD CONSTRAINT lc_puntotipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntotipo DROP CONSTRAINT lc_puntotipo_pkey;
       test_ladm_valuation_model         postgres    false    339            $           2606    580529 0   lc_relacionprediotipo lc_relacionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_relacionprediotipo
    ADD CONSTRAINT lc_relacionprediotipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.lc_relacionprediotipo DROP CONSTRAINT lc_relacionprediotipo_pkey;
       test_ladm_valuation_model         postgres    false    384            >#           2606    579766 "   lc_restriccion lc_restriccion_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_valuation_model.lc_restriccion
    ADD CONSTRAINT lc_restriccion_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_valuation_model.lc_restriccion DROP CONSTRAINT lc_restriccion_pkey;
       test_ladm_valuation_model         postgres    false    304            $           2606    580439 *   lc_restricciontipo lc_restricciontipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_valuation_model.lc_restricciontipo
    ADD CONSTRAINT lc_restricciontipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_valuation_model.lc_restricciontipo DROP CONSTRAINT lc_restricciontipo_pkey;
       test_ladm_valuation_model         postgres    false    374            <$           2606    580682 2   lc_resultadovisitatipo lc_resultadovisitatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_resultadovisitatipo
    ADD CONSTRAINT lc_resultadovisitatipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_valuation_model.lc_resultadovisitatipo DROP CONSTRAINT lc_resultadovisitatipo_pkey;
       test_ladm_valuation_model         postgres    false    401            s#           2606    579873 2   lc_servidumbretransito lc_servidumbretransito_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_valuation_model.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_pkey;
       test_ladm_valuation_model         postgres    false    313            �#           2606    580196    lc_sexotipo lc_sexotipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_valuation_model.lc_sexotipo
    ADD CONSTRAINT lc_sexotipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_valuation_model.lc_sexotipo DROP CONSTRAINT lc_sexotipo_pkey;
       test_ladm_valuation_model         postgres    false    347            D#           2606    579780    lc_terreno lc_terreno_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_valuation_model.lc_terreno
    ADD CONSTRAINT lc_terreno_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_valuation_model.lc_terreno DROP CONSTRAINT lc_terreno_pkey;
       test_ladm_valuation_model         postgres    false    305            e#           2606    579845 6   lc_tipologiaconstruccion lc_tipologiaconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_valuation_model.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_pkey;
       test_ladm_valuation_model         postgres    false    310            &$           2606    580583 &   lc_tipologiatipo lc_tipologiatipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_valuation_model.lc_tipologiatipo
    ADD CONSTRAINT lc_tipologiatipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_valuation_model.lc_tipologiatipo DROP CONSTRAINT lc_tipologiatipo_pkey;
       test_ladm_valuation_model         postgres    false    390            y#           2606    579886 0   lc_unidadconstruccion lc_unidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_pkey;
       test_ladm_valuation_model         postgres    false    314            �#           2606    580349 8   lc_unidadconstrucciontipo lc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstrucciontipo
    ADD CONSTRAINT lc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstrucciontipo DROP CONSTRAINT lc_unidadconstrucciontipo_pkey;
       test_ladm_valuation_model         postgres    false    364            �#           2606    580268 $   lc_usouconstipo lc_usouconstipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.lc_usouconstipo
    ADD CONSTRAINT lc_usouconstipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.lc_usouconstipo DROP CONSTRAINT lc_usouconstipo_pkey;
       test_ladm_valuation_model         postgres    false    355            �#           2606    580304    lc_viatipo lc_viatipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_valuation_model.lc_viatipo
    ADD CONSTRAINT lc_viatipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_valuation_model.lc_viatipo DROP CONSTRAINT lc_viatipo_pkey;
       test_ladm_valuation_model         postgres    false    359            �#           2606    580133 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_valuation_model.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
       test_ladm_valuation_model         postgres    false    340            �#           2606    580403 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_valuation_model.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
       test_ladm_valuation_model         postgres    false    370            �"           2606    579467    snr_derecho snr_derecho_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_valuation_model.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_valuation_model.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
       test_ladm_valuation_model         postgres    false    278            �#           2606    580250 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_valuation_model.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
       test_ladm_valuation_model         postgres    false    353            �"           2606    579476 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_valuation_model.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
       test_ladm_valuation_model         postgres    false    279            �"           2606    579486 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_valuation_model.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
       test_ladm_valuation_model         postgres    false    280            �"           2606    579496 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_valuation_model.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_valuation_model.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
       test_ladm_valuation_model         postgres    false    281            �#           2606    580151 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_valuation_model.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_valuation_model.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
       test_ladm_valuation_model         postgres    false    342            �#           2606    580061 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_valuation_model.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
       test_ladm_valuation_model         postgres    false    332            �"           2606    579517 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_valuation_model.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_valuation_model.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
       test_ladm_valuation_model         postgres    false    283            �"           2606    579525 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_valuation_model.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_valuation_model.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
       test_ladm_valuation_model         postgres    false    284            �"           2606    579506    snr_titular snr_titular_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_valuation_model.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_valuation_model.snr_titular DROP CONSTRAINT snr_titular_pkey;
       test_ladm_valuation_model         postgres    false    282            D$           2606    580716 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (sqlname, colowner);
 e   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
       test_ladm_valuation_model         postgres    false    405    405            �#           2606    579971 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
       test_ladm_valuation_model         postgres    false    321            B$           2606    580708 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 g   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
       test_ladm_valuation_model         postgres    false    404            �#           2606    579977 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
       test_ladm_valuation_model         postgres    false    322            �#           2606    579985 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 k   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
       test_ladm_valuation_model         postgres    false    323            �#           2606    580007 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (iliversion, modelname);
 _   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
       test_ladm_valuation_model         postgres    false    326    326            �#           2606    579993 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 e   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
       test_ladm_valuation_model         postgres    false    324            �#           1259    579903 "   av_tablacalifccncnstrccion_uso_idx    INDEX     �   CREATE INDEX av_tablacalifccncnstrccion_uso_idx ON test_ladm_valuation_model.av_tablacalificacionconstruccion USING btree (uso);
 I   DROP INDEX test_ladm_valuation_model.av_tablacalifccncnstrccion_uso_idx;
       test_ladm_valuation_model         postgres    false    315            �#           1259    579911 +   av_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX av_tipologiaconstruccion_tipo_tipologia_idx ON test_ladm_valuation_model.av_tipologiaconstruccion USING btree (tipo_tipologia);
 R   DROP INDEX test_ladm_valuation_model.av_tipologiaconstruccion_tipo_tipologia_idx;
       test_ladm_valuation_model         postgres    false    316            �#           1259    579922 2   av_zonahomogeneafisicarral_disponibilidad_agua_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicarral_disponibilidad_agua_idx ON test_ladm_valuation_model.av_zonahomogeneafisicarural USING btree (disponibilidad_agua);
 Y   DROP INDEX test_ladm_valuation_model.av_zonahomogeneafisicarral_disponibilidad_agua_idx;
       test_ladm_valuation_model         postgres    false    317            �#           1259    579925 (   av_zonahomogeneafisicarral_geometria_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicarral_geometria_idx ON test_ladm_valuation_model.av_zonahomogeneafisicarural USING gist (geometria);
 O   DROP INDEX test_ladm_valuation_model.av_zonahomogeneafisicarral_geometria_idx;
       test_ladm_valuation_model         postgres    false    317            �#           1259    579923 .   av_zonahomogeneafisicarral_influencia_vial_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicarral_influencia_vial_idx ON test_ladm_valuation_model.av_zonahomogeneafisicarural USING btree (influencia_vial);
 U   DROP INDEX test_ladm_valuation_model.av_zonahomogeneafisicarral_influencia_vial_idx;
       test_ladm_valuation_model         postgres    false    317            �#           1259    579924 /   av_zonahomogeneafisicarral_uso_actual_suelo_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicarral_uso_actual_suelo_idx ON test_ladm_valuation_model.av_zonahomogeneafisicarural USING btree (uso_actual_suelo);
 V   DROP INDEX test_ladm_valuation_model.av_zonahomogeneafisicarral_uso_actual_suelo_idx;
       test_ladm_valuation_model         postgres    false    317            �#           1259    579941 (   av_zonahomogeneafisicrbana_geometria_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_geometria_idx ON test_ladm_valuation_model.av_zonahomogeneafisicaurbana USING gist (geometria);
 O   DROP INDEX test_ladm_valuation_model.av_zonahomogeneafisicrbana_geometria_idx;
       test_ladm_valuation_model         postgres    false    318            �#           1259    579937 .   av_zonahomogeneafisicrbana_influencia_vial_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_influencia_vial_idx ON test_ladm_valuation_model.av_zonahomogeneafisicaurbana USING btree (influencia_vial);
 U   DROP INDEX test_ladm_valuation_model.av_zonahomogeneafisicrbana_influencia_vial_idx;
       test_ladm_valuation_model         postgres    false    318            �#           1259    579938 /   av_zonahomogeneafisicrbana_servicio_publico_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_servicio_publico_idx ON test_ladm_valuation_model.av_zonahomogeneafisicaurbana USING btree (servicio_publico);
 V   DROP INDEX test_ladm_valuation_model.av_zonahomogeneafisicrbana_servicio_publico_idx;
       test_ladm_valuation_model         postgres    false    318            �#           1259    579940 8   av_zonahomogeneafisicrbana_tipificacion_construccion_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_tipificacion_construccion_idx ON test_ladm_valuation_model.av_zonahomogeneafisicaurbana USING btree (tipificacion_construccion);
 _   DROP INDEX test_ladm_valuation_model.av_zonahomogeneafisicrbana_tipificacion_construccion_idx;
       test_ladm_valuation_model         postgres    false    318            �#           1259    579936 )   av_zonahomogeneafisicrbana_topografia_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_topografia_idx ON test_ladm_valuation_model.av_zonahomogeneafisicaurbana USING btree (topografia);
 P   DROP INDEX test_ladm_valuation_model.av_zonahomogeneafisicrbana_topografia_idx;
       test_ladm_valuation_model         postgres    false    318            �#           1259    579939 /   av_zonahomogeneafisicrbana_uso_actual_suelo_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_uso_actual_suelo_idx ON test_ladm_valuation_model.av_zonahomogeneafisicaurbana USING btree (uso_actual_suelo);
 V   DROP INDEX test_ladm_valuation_model.av_zonahomogeneafisicrbana_uso_actual_suelo_idx;
       test_ladm_valuation_model         postgres    false    318            �#           1259    579952 (   av_zonahomogeneagcnmcrbana_geometria_idx    INDEX     �   CREATE INDEX av_zonahomogeneagcnmcrbana_geometria_idx ON test_ladm_valuation_model.av_zonahomogeneageoeconomicaurbana USING gist (geometria);
 O   DROP INDEX test_ladm_valuation_model.av_zonahomogeneagcnmcrbana_geometria_idx;
       test_ladm_valuation_model         postgres    false    319            �#           1259    579963 (   av_zonahomogeneagecnmcrral_geometria_idx    INDEX     �   CREATE INDEX av_zonahomogeneagecnmcrral_geometria_idx ON test_ladm_valuation_model.av_zonahomogeneageoeconomicarural USING gist (geometria);
 O   DROP INDEX test_ladm_valuation_model.av_zonahomogeneagecnmcrral_geometria_idx;
       test_ladm_valuation_model         postgres    false    320            �!           1259    578960 1   cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx    INDEX     �   CREATE INDEX cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx ON test_ladm_valuation_model.cc_metodooperacion USING btree (col_transformacion_transformacion);
 X   DROP INDEX test_ladm_valuation_model.cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx;
       test_ladm_valuation_model         postgres    false    226            �!           1259    578971 &   col_areavalor_lc_construccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_construccion_area_idx ON test_ladm_valuation_model.col_areavalor USING btree (lc_construccion_area);
 M   DROP INDEX test_ladm_valuation_model.col_areavalor_lc_construccion_area_idx;
       test_ladm_valuation_model         postgres    false    227            �!           1259    578973 ,   col_areavalor_lc_servidumbretransito_rea_idx    INDEX     �   CREATE INDEX col_areavalor_lc_servidumbretransito_rea_idx ON test_ladm_valuation_model.col_areavalor USING btree (lc_servidumbretransito_area);
 S   DROP INDEX test_ladm_valuation_model.col_areavalor_lc_servidumbretransito_rea_idx;
       test_ladm_valuation_model         postgres    false    227            �!           1259    578972 !   col_areavalor_lc_terreno_area_idx    INDEX     y   CREATE INDEX col_areavalor_lc_terreno_area_idx ON test_ladm_valuation_model.col_areavalor USING btree (lc_terreno_area);
 H   DROP INDEX test_ladm_valuation_model.col_areavalor_lc_terreno_area_idx;
       test_ladm_valuation_model         postgres    false    227            �!           1259    578974 ,   col_areavalor_lc_unidadconstruccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_unidadconstruccion_area_idx ON test_ladm_valuation_model.col_areavalor USING btree (lc_unidadconstruccion_area);
 S   DROP INDEX test_ladm_valuation_model.col_areavalor_lc_unidadconstruccion_area_idx;
       test_ladm_valuation_model         postgres    false    227            �!           1259    578970    col_areavalor_tipo_idx    INDEX     c   CREATE INDEX col_areavalor_tipo_idx ON test_ladm_valuation_model.col_areavalor USING btree (tipo);
 =   DROP INDEX test_ladm_valuation_model.col_areavalor_tipo_idx;
       test_ladm_valuation_model         postgres    false    227            f"           1259    579237 7   col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx ON test_ladm_valuation_model.col_baunitcomointeresado USING btree (interesado_lc_agrupacioninteresados);
 ^   DROP INDEX test_ladm_valuation_model.col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx;
       test_ladm_valuation_model         postgres    false    254            g"           1259    579236 5   col_baunitcomointeresado_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_interesado_idx ON test_ladm_valuation_model.col_baunitcomointeresado USING btree (interesado_lc_interesado);
 \   DROP INDEX test_ladm_valuation_model.col_baunitcomointeresado_interesado_lc_interesado_idx;
       test_ladm_valuation_model         postgres    false    254            j"           1259    579238 #   col_baunitcomointeresado_unidad_idx    INDEX     }   CREATE INDEX col_baunitcomointeresado_unidad_idx ON test_ladm_valuation_model.col_baunitcomointeresado USING btree (unidad);
 J   DROP INDEX test_ladm_valuation_model.col_baunitcomointeresado_unidad_idx;
       test_ladm_valuation_model         postgres    false    254            3"           1259    579145 $   col_baunitfuente_fuente_espacial_idx    INDEX        CREATE INDEX col_baunitfuente_fuente_espacial_idx ON test_ladm_valuation_model.col_baunitfuente USING btree (fuente_espacial);
 K   DROP INDEX test_ladm_valuation_model.col_baunitfuente_fuente_espacial_idx;
       test_ladm_valuation_model         postgres    false    244            6"           1259    579146    col_baunitfuente_unidad_idx    INDEX     m   CREATE INDEX col_baunitfuente_unidad_idx ON test_ladm_valuation_model.col_baunitfuente USING btree (unidad);
 B   DROP INDEX test_ladm_valuation_model.col_baunitfuente_unidad_idx;
       test_ladm_valuation_model         postgres    false    244            :"           1259    579160    col_cclfuente_ccl_idx    INDEX     a   CREATE INDEX col_cclfuente_ccl_idx ON test_ladm_valuation_model.col_cclfuente USING btree (ccl);
 <   DROP INDEX test_ladm_valuation_model.col_cclfuente_ccl_idx;
       test_ladm_valuation_model         postgres    false    246            ;"           1259    579161 !   col_cclfuente_fuente_espacial_idx    INDEX     y   CREATE INDEX col_cclfuente_fuente_espacial_idx ON test_ladm_valuation_model.col_cclfuente USING btree (fuente_espacial);
 H   DROP INDEX test_ladm_valuation_model.col_cclfuente_fuente_espacial_idx;
       test_ladm_valuation_model         postgres    false    246            R"           1259    579200     col_clfuente_fuente_espacial_idx    INDEX     w   CREATE INDEX col_clfuente_fuente_espacial_idx ON test_ladm_valuation_model.col_clfuente USING btree (fuente_espacial);
 G   DROP INDEX test_ladm_valuation_model.col_clfuente_fuente_espacial_idx;
       test_ladm_valuation_model         postgres    false    250            E"           1259    579179    col_masccl_ccl_mas_idx    INDEX     c   CREATE INDEX col_masccl_ccl_mas_idx ON test_ladm_valuation_model.col_masccl USING btree (ccl_mas);
 =   DROP INDEX test_ladm_valuation_model.col_masccl_ccl_mas_idx;
       test_ladm_valuation_model         postgres    false    248            H"           1259    579183 %   col_masccl_ue_mas_lc_construccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_construccion_idx ON test_ladm_valuation_model.col_masccl USING btree (ue_mas_lc_construccion);
 L   DROP INDEX test_ladm_valuation_model.col_masccl_ue_mas_lc_construccion_idx;
       test_ladm_valuation_model         postgres    false    248            I"           1259    579181 )   col_masccl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_valuation_model.col_masccl USING btree (ue_mas_lc_servidumbretransito);
 P   DROP INDEX test_ladm_valuation_model.col_masccl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_valuation_model         postgres    false    248            J"           1259    579180     col_masccl_ue_mas_lc_terreno_idx    INDEX     w   CREATE INDEX col_masccl_ue_mas_lc_terreno_idx ON test_ladm_valuation_model.col_masccl USING btree (ue_mas_lc_terreno);
 G   DROP INDEX test_ladm_valuation_model.col_masccl_ue_mas_lc_terreno_idx;
       test_ladm_valuation_model         postgres    false    248            K"           1259    579182 )   col_masccl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_valuation_model.col_masccl USING btree (ue_mas_lc_unidadconstruccion);
 P   DROP INDEX test_ladm_valuation_model.col_masccl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_valuation_model         postgres    false    248            ]"           1259    579220 $   col_mascl_ue_mas_lc_construccion_idx    INDEX        CREATE INDEX col_mascl_ue_mas_lc_construccion_idx ON test_ladm_valuation_model.col_mascl USING btree (ue_mas_lc_construccion);
 K   DROP INDEX test_ladm_valuation_model.col_mascl_ue_mas_lc_construccion_idx;
       test_ladm_valuation_model         postgres    false    252            ^"           1259    579218 (   col_mascl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_valuation_model.col_mascl USING btree (ue_mas_lc_servidumbretransito);
 O   DROP INDEX test_ladm_valuation_model.col_mascl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_valuation_model         postgres    false    252            _"           1259    579217    col_mascl_ue_mas_lc_terreno_idx    INDEX     u   CREATE INDEX col_mascl_ue_mas_lc_terreno_idx ON test_ladm_valuation_model.col_mascl USING btree (ue_mas_lc_terreno);
 F   DROP INDEX test_ladm_valuation_model.col_mascl_ue_mas_lc_terreno_idx;
       test_ladm_valuation_model         postgres    false    252            `"           1259    579219 (   col_mascl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_valuation_model.col_mascl USING btree (ue_mas_lc_unidadconstruccion);
 O   DROP INDEX test_ladm_valuation_model.col_mascl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_valuation_model         postgres    false    252            >"           1259    579168    col_menosccl_ccl_menos_idx    INDEX     k   CREATE INDEX col_menosccl_ccl_menos_idx ON test_ladm_valuation_model.col_menosccl USING btree (ccl_menos);
 A   DROP INDEX test_ladm_valuation_model.col_menosccl_ccl_menos_idx;
       test_ladm_valuation_model         postgres    false    247            A"           1259    579172 )   col_menosccl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_construccion_idx ON test_ladm_valuation_model.col_menosccl USING btree (ue_menos_lc_construccion);
 P   DROP INDEX test_ladm_valuation_model.col_menosccl_ue_menos_lc_construccion_idx;
       test_ladm_valuation_model         postgres    false    247            B"           1259    579170 +   col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_valuation_model.col_menosccl USING btree (ue_menos_lc_servidumbretransito);
 R   DROP INDEX test_ladm_valuation_model.col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_valuation_model         postgres    false    247            C"           1259    579169 $   col_menosccl_ue_menos_lc_terreno_idx    INDEX        CREATE INDEX col_menosccl_ue_menos_lc_terreno_idx ON test_ladm_valuation_model.col_menosccl USING btree (ue_menos_lc_terreno);
 K   DROP INDEX test_ladm_valuation_model.col_menosccl_ue_menos_lc_terreno_idx;
       test_ladm_valuation_model         postgres    false    247            D"           1259    579171 +   col_menosccl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_valuation_model.col_menosccl USING btree (ue_menos_lc_unidadconstruccion);
 R   DROP INDEX test_ladm_valuation_model.col_menosccl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_valuation_model         postgres    false    247            W"           1259    579210 (   col_menoscl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_construccion_idx ON test_ladm_valuation_model.col_menoscl USING btree (ue_menos_lc_construccion);
 O   DROP INDEX test_ladm_valuation_model.col_menoscl_ue_menos_lc_construccion_idx;
       test_ladm_valuation_model         postgres    false    251            X"           1259    579208 *   col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_valuation_model.col_menoscl USING btree (ue_menos_lc_servidumbretransito);
 Q   DROP INDEX test_ladm_valuation_model.col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_valuation_model         postgres    false    251            Y"           1259    579207 #   col_menoscl_ue_menos_lc_terreno_idx    INDEX     }   CREATE INDEX col_menoscl_ue_menos_lc_terreno_idx ON test_ladm_valuation_model.col_menoscl USING btree (ue_menos_lc_terreno);
 J   DROP INDEX test_ladm_valuation_model.col_menoscl_ue_menos_lc_terreno_idx;
       test_ladm_valuation_model         postgres    false    251            Z"           1259    579209 *   col_menoscl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_valuation_model.col_menoscl USING btree (ue_menos_lc_unidadconstruccion);
 Q   DROP INDEX test_ladm_valuation_model.col_menoscl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_valuation_model         postgres    false    251            u"           1259    579265    col_miembros_agrupacion_idx    INDEX     m   CREATE INDEX col_miembros_agrupacion_idx ON test_ladm_valuation_model.col_miembros USING btree (agrupacion);
 B   DROP INDEX test_ladm_valuation_model.col_miembros_agrupacion_idx;
       test_ladm_valuation_model         postgres    false    257            v"           1259    579264 +   col_miembros_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_grpcnntrsdos_idx ON test_ladm_valuation_model.col_miembros USING btree (interesado_lc_agrupacioninteresados);
 R   DROP INDEX test_ladm_valuation_model.col_miembros_interesado_lc_grpcnntrsdos_idx;
       test_ladm_valuation_model         postgres    false    257            w"           1259    579263 )   col_miembros_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_interesado_idx ON test_ladm_valuation_model.col_miembros USING btree (interesado_lc_interesado);
 P   DROP INDEX test_ladm_valuation_model.col_miembros_interesado_lc_interesado_idx;
       test_ladm_valuation_model         postgres    false    257            L"           1259    579193    col_puntoccl_ccl_idx    INDEX     _   CREATE INDEX col_puntoccl_ccl_idx ON test_ladm_valuation_model.col_puntoccl USING btree (ccl);
 ;   DROP INDEX test_ladm_valuation_model.col_puntoccl_ccl_idx;
       test_ladm_valuation_model         postgres    false    249            O"           1259    579190 &   col_puntoccl_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntocontrol_idx ON test_ladm_valuation_model.col_puntoccl USING btree (punto_lc_puntocontrol);
 M   DROP INDEX test_ladm_valuation_model.col_puntoccl_punto_lc_puntocontrol_idx;
       test_ladm_valuation_model         postgres    false    249            P"           1259    579192 +   col_puntoccl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolevantaminto_idx ON test_ladm_valuation_model.col_puntoccl USING btree (punto_lc_puntolevantamiento);
 R   DROP INDEX test_ladm_valuation_model.col_puntoccl_punto_lc_puntolevantaminto_idx;
       test_ladm_valuation_model         postgres    false    249            Q"           1259    579191 &   col_puntoccl_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolindero_idx ON test_ladm_valuation_model.col_puntoccl USING btree (punto_lc_puntolindero);
 M   DROP INDEX test_ladm_valuation_model.col_puntoccl_punto_lc_puntolindero_idx;
       test_ladm_valuation_model         postgres    false    249            c"           1259    579227 %   col_puntocl_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntocontrol_idx ON test_ladm_valuation_model.col_puntocl USING btree (punto_lc_puntocontrol);
 L   DROP INDEX test_ladm_valuation_model.col_puntocl_punto_lc_puntocontrol_idx;
       test_ladm_valuation_model         postgres    false    253            d"           1259    579229 *   col_puntocl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolevantaminto_idx ON test_ladm_valuation_model.col_puntocl USING btree (punto_lc_puntolevantamiento);
 Q   DROP INDEX test_ladm_valuation_model.col_puntocl_punto_lc_puntolevantaminto_idx;
       test_ladm_valuation_model         postgres    false    253            e"           1259    579228 %   col_puntocl_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolindero_idx ON test_ladm_valuation_model.col_puntocl USING btree (punto_lc_puntolindero);
 L   DROP INDEX test_ladm_valuation_model.col_puntocl_punto_lc_puntolindero_idx;
       test_ladm_valuation_model         postgres    false    253            &"           1259    579124 #   col_puntofuente_fuente_espacial_idx    INDEX     }   CREATE INDEX col_puntofuente_fuente_espacial_idx ON test_ladm_valuation_model.col_puntofuente USING btree (fuente_espacial);
 J   DROP INDEX test_ladm_valuation_model.col_puntofuente_fuente_espacial_idx;
       test_ladm_valuation_model         postgres    false    242            )"           1259    579125 )   col_puntofuente_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntocontrol_idx ON test_ladm_valuation_model.col_puntofuente USING btree (punto_lc_puntocontrol);
 P   DROP INDEX test_ladm_valuation_model.col_puntofuente_punto_lc_puntocontrol_idx;
       test_ladm_valuation_model         postgres    false    242            *"           1259    579127 .   col_puntofuente_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolevantaminto_idx ON test_ladm_valuation_model.col_puntofuente USING btree (punto_lc_puntolevantamiento);
 U   DROP INDEX test_ladm_valuation_model.col_puntofuente_punto_lc_puntolevantaminto_idx;
       test_ladm_valuation_model         postgres    false    242            +"           1259    579126 )   col_puntofuente_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolindero_idx ON test_ladm_valuation_model.col_puntofuente USING btree (punto_lc_puntolindero);
 P   DROP INDEX test_ladm_valuation_model.col_puntofuente_punto_lc_puntolindero_idx;
       test_ladm_valuation_model         postgres    false    242            "           1259    579109 ,   col_relacionfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_relacionfuente_fuente_administrativa_idx ON test_ladm_valuation_model.col_relacionfuente USING btree (fuente_administrativa);
 S   DROP INDEX test_ladm_valuation_model.col_relacionfuente_fuente_administrativa_idx;
       test_ladm_valuation_model         postgres    false    240            9"           1259    579153 .   col_relacionfuenteuespcial_fuente_espacial_idx    INDEX     �   CREATE INDEX col_relacionfuenteuespcial_fuente_espacial_idx ON test_ladm_valuation_model.col_relacionfuenteuespacial USING btree (fuente_espacial);
 U   DROP INDEX test_ladm_valuation_model.col_relacionfuenteuespcial_fuente_espacial_idx;
       test_ladm_valuation_model         postgres    false    245            k"           1259    579245 /   col_responsablefuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_responsablefuente_fuente_administrativa_idx ON test_ladm_valuation_model.col_responsablefuente USING btree (fuente_administrativa);
 V   DROP INDEX test_ladm_valuation_model.col_responsablefuente_fuente_administrativa_idx;
       test_ladm_valuation_model         postgres    false    255            l"           1259    579247 4   col_responsablefuente_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_grpcnntrsdos_idx ON test_ladm_valuation_model.col_responsablefuente USING btree (interesado_lc_agrupacioninteresados);
 [   DROP INDEX test_ladm_valuation_model.col_responsablefuente_interesado_lc_grpcnntrsdos_idx;
       test_ladm_valuation_model         postgres    false    255            m"           1259    579246 2   col_responsablefuente_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_interesado_idx ON test_ladm_valuation_model.col_responsablefuente USING btree (interesado_lc_interesado);
 Y   DROP INDEX test_ladm_valuation_model.col_responsablefuente_interesado_lc_interesado_idx;
       test_ladm_valuation_model         postgres    false    255            "           1259    579089 '   col_rrrfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_rrrfuente_fuente_administrativa_idx ON test_ladm_valuation_model.col_rrrfuente USING btree (fuente_administrativa);
 N   DROP INDEX test_ladm_valuation_model.col_rrrfuente_fuente_administrativa_idx;
       test_ladm_valuation_model         postgres    false    238            "           1259    579091     col_rrrfuente_rrr_lc_derecho_idx    INDEX     w   CREATE INDEX col_rrrfuente_rrr_lc_derecho_idx ON test_ladm_valuation_model.col_rrrfuente USING btree (rrr_lc_derecho);
 G   DROP INDEX test_ladm_valuation_model.col_rrrfuente_rrr_lc_derecho_idx;
       test_ladm_valuation_model         postgres    false    238            "           1259    579090 $   col_rrrfuente_rrr_lc_restriccion_idx    INDEX        CREATE INDEX col_rrrfuente_rrr_lc_restriccion_idx ON test_ladm_valuation_model.col_rrrfuente USING btree (rrr_lc_restriccion);
 K   DROP INDEX test_ladm_valuation_model.col_rrrfuente_rrr_lc_restriccion_idx;
       test_ladm_valuation_model         postgres    false    238            p"           1259    579254 '   col_topografofuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_topografofuente_fuente_espacial_idx ON test_ladm_valuation_model.col_topografofuente USING btree (fuente_espacial);
 N   DROP INDEX test_ladm_valuation_model.col_topografofuente_fuente_espacial_idx;
       test_ladm_valuation_model         postgres    false    256            s"           1259    579256 2   col_topografofuente_topografo_lc_agrpcnntrsdos_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_agrpcnntrsdos_idx ON test_ladm_valuation_model.col_topografofuente USING btree (topografo_lc_agrupacioninteresados);
 Y   DROP INDEX test_ladm_valuation_model.col_topografofuente_topografo_lc_agrpcnntrsdos_idx;
       test_ladm_valuation_model         postgres    false    256            t"           1259    579255 /   col_topografofuente_topografo_lc_interesado_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_interesado_idx ON test_ladm_valuation_model.col_topografofuente USING btree (topografo_lc_interesado);
 V   DROP INDEX test_ladm_valuation_model.col_topografofuente_topografo_lc_interesado_idx;
       test_ladm_valuation_model         postgres    false    256            �!           1259    579014 1   col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx ON test_ladm_valuation_model.col_transformacion USING btree (lc_puntocontrol_transformacion_y_resultado);
 X   DROP INDEX test_ladm_valuation_model.col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx;
       test_ladm_valuation_model         postgres    false    230            �!           1259    579015 1   col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx ON test_ladm_valuation_model.col_transformacion USING btree (lc_puntolindero_transformacion_y_resultado);
 X   DROP INDEX test_ladm_valuation_model.col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx;
       test_ladm_valuation_model         postgres    false    230            �!           1259    579016 1   col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx ON test_ladm_valuation_model.col_transformacion USING btree (lc_puntolevantamiento_transformacion_y_resultado);
 X   DROP INDEX test_ladm_valuation_model.col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx;
       test_ladm_valuation_model         postgres    false    230            �!           1259    579013 0   col_transformacion_localizacion_transformada_idx    INDEX     �   CREATE INDEX col_transformacion_localizacion_transformada_idx ON test_ladm_valuation_model.col_transformacion USING gist (localizacion_transformada);
 W   DROP INDEX test_ladm_valuation_model.col_transformacion_localizacion_transformada_idx;
       test_ladm_valuation_model         postgres    false    230            "           1259    579102    col_uebaunit_baunit_idx    INDEX     e   CREATE INDEX col_uebaunit_baunit_idx ON test_ladm_valuation_model.col_uebaunit USING btree (baunit);
 >   DROP INDEX test_ladm_valuation_model.col_uebaunit_baunit_idx;
       test_ladm_valuation_model         postgres    false    239            "           1259    579101 #   col_uebaunit_ue_lc_construccion_idx    INDEX     }   CREATE INDEX col_uebaunit_ue_lc_construccion_idx ON test_ladm_valuation_model.col_uebaunit USING btree (ue_lc_construccion);
 J   DROP INDEX test_ladm_valuation_model.col_uebaunit_ue_lc_construccion_idx;
       test_ladm_valuation_model         postgres    false    239            "           1259    579099 *   col_uebaunit_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_servidumbretransito_idx ON test_ladm_valuation_model.col_uebaunit USING btree (ue_lc_servidumbretransito);
 Q   DROP INDEX test_ladm_valuation_model.col_uebaunit_ue_lc_servidumbretransito_idx;
       test_ladm_valuation_model         postgres    false    239            "           1259    579098    col_uebaunit_ue_lc_terreno_idx    INDEX     s   CREATE INDEX col_uebaunit_ue_lc_terreno_idx ON test_ladm_valuation_model.col_uebaunit USING btree (ue_lc_terreno);
 E   DROP INDEX test_ladm_valuation_model.col_uebaunit_ue_lc_terreno_idx;
       test_ladm_valuation_model         postgres    false    239            "           1259    579100 )   col_uebaunit_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_unidadconstruccion_idx ON test_ladm_valuation_model.col_uebaunit USING btree (ue_lc_unidadconstruccion);
 P   DROP INDEX test_ladm_valuation_model.col_uebaunit_ue_lc_unidadconstruccion_idx;
       test_ladm_valuation_model         postgres    false    239            ,"           1259    579138     col_uefuente_fuente_espacial_idx    INDEX     w   CREATE INDEX col_uefuente_fuente_espacial_idx ON test_ladm_valuation_model.col_uefuente USING btree (fuente_espacial);
 G   DROP INDEX test_ladm_valuation_model.col_uefuente_fuente_espacial_idx;
       test_ladm_valuation_model         postgres    false    243            /"           1259    579137 #   col_uefuente_ue_lc_construccion_idx    INDEX     }   CREATE INDEX col_uefuente_ue_lc_construccion_idx ON test_ladm_valuation_model.col_uefuente USING btree (ue_lc_construccion);
 J   DROP INDEX test_ladm_valuation_model.col_uefuente_ue_lc_construccion_idx;
       test_ladm_valuation_model         postgres    false    243            0"           1259    579135 *   col_uefuente_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_servidumbretransito_idx ON test_ladm_valuation_model.col_uefuente USING btree (ue_lc_servidumbretransito);
 Q   DROP INDEX test_ladm_valuation_model.col_uefuente_ue_lc_servidumbretransito_idx;
       test_ladm_valuation_model         postgres    false    243            1"           1259    579134    col_uefuente_ue_lc_terreno_idx    INDEX     s   CREATE INDEX col_uefuente_ue_lc_terreno_idx ON test_ladm_valuation_model.col_uefuente USING btree (ue_lc_terreno);
 E   DROP INDEX test_ladm_valuation_model.col_uefuente_ue_lc_terreno_idx;
       test_ladm_valuation_model         postgres    false    243            2"           1259    579136 )   col_uefuente_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_unidadconstruccion_idx ON test_ladm_valuation_model.col_uefuente USING btree (ue_lc_unidadconstruccion);
 P   DROP INDEX test_ladm_valuation_model.col_uefuente_ue_lc_unidadconstruccion_idx;
       test_ladm_valuation_model         postgres    false    243            "           1259    579082 '   col_ueuegrupo_parte_lc_construccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_construccion_idx ON test_ladm_valuation_model.col_ueuegrupo USING btree (parte_lc_construccion);
 N   DROP INDEX test_ladm_valuation_model.col_ueuegrupo_parte_lc_construccion_idx;
       test_ladm_valuation_model         postgres    false    237            "           1259    579080 ,   col_ueuegrupo_parte_lc_servidumbrtrnsito_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_servidumbrtrnsito_idx ON test_ladm_valuation_model.col_ueuegrupo USING btree (parte_lc_servidumbretransito);
 S   DROP INDEX test_ladm_valuation_model.col_ueuegrupo_parte_lc_servidumbrtrnsito_idx;
       test_ladm_valuation_model         postgres    false    237            "           1259    579079 "   col_ueuegrupo_parte_lc_terreno_idx    INDEX     {   CREATE INDEX col_ueuegrupo_parte_lc_terreno_idx ON test_ladm_valuation_model.col_ueuegrupo USING btree (parte_lc_terreno);
 I   DROP INDEX test_ladm_valuation_model.col_ueuegrupo_parte_lc_terreno_idx;
       test_ladm_valuation_model         postgres    false    237            "           1259    579081 ,   col_ueuegrupo_parte_lc_unidadconstrccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_unidadconstrccion_idx ON test_ladm_valuation_model.col_ueuegrupo USING btree (parte_lc_unidadconstruccion);
 S   DROP INDEX test_ladm_valuation_model.col_ueuegrupo_parte_lc_unidadconstrccion_idx;
       test_ladm_valuation_model         postgres    false    237            ""           1259    579116 *   col_unidadfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_unidadfuente_fuente_administrativa_idx ON test_ladm_valuation_model.col_unidadfuente USING btree (fuente_administrativa);
 Q   DROP INDEX test_ladm_valuation_model.col_unidadfuente_fuente_administrativa_idx;
       test_ladm_valuation_model         postgres    false    241            %"           1259    579117    col_unidadfuente_unidad_idx    INDEX     m   CREATE INDEX col_unidadfuente_unidad_idx ON test_ladm_valuation_model.col_unidadfuente USING btree (unidad);
 B   DROP INDEX test_ladm_valuation_model.col_unidadfuente_unidad_idx;
       test_ladm_valuation_model         postgres    false    241            "           1259    579069 ,   col_volumenvalor_lc_construccion_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_construccion_volumen_idx ON test_ladm_valuation_model.col_volumenvalor USING btree (lc_construccion_volumen);
 S   DROP INDEX test_ladm_valuation_model.col_volumenvalor_lc_construccion_volumen_idx;
       test_ladm_valuation_model         postgres    false    236            "           1259    579071 /   col_volumenvalor_lc_servidumbretranst_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_servidumbretranst_vlmen_idx ON test_ladm_valuation_model.col_volumenvalor USING btree (lc_servidumbretransito_volumen);
 V   DROP INDEX test_ladm_valuation_model.col_volumenvalor_lc_servidumbretranst_vlmen_idx;
       test_ladm_valuation_model         postgres    false    236            "           1259    579070 '   col_volumenvalor_lc_terreno_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_terreno_volumen_idx ON test_ladm_valuation_model.col_volumenvalor USING btree (lc_terreno_volumen);
 N   DROP INDEX test_ladm_valuation_model.col_volumenvalor_lc_terreno_volumen_idx;
       test_ladm_valuation_model         postgres    false    236            	"           1259    579072 /   col_volumenvalor_lc_unidadconstruccin_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_unidadconstruccin_vlmen_idx ON test_ladm_valuation_model.col_volumenvalor USING btree (lc_unidadconstruccion_volumen);
 V   DROP INDEX test_ladm_valuation_model.col_volumenvalor_lc_unidadconstruccin_vlmen_idx;
       test_ladm_valuation_model         postgres    false    236            "           1259    579068    col_volumenvalor_tipo_idx    INDEX     i   CREATE INDEX col_volumenvalor_tipo_idx ON test_ladm_valuation_model.col_volumenvalor USING btree (tipo);
 @   DROP INDEX test_ladm_valuation_model.col_volumenvalor_tipo_idx;
       test_ladm_valuation_model         postgres    false    236            "           1259    579061 )   extarchivo_lc_fuenteespacl_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_fuenteespacl_xt_rchv_id_idx ON test_ladm_valuation_model.extarchivo USING btree (lc_fuenteespacial_ext_archivo_id);
 P   DROP INDEX test_ladm_valuation_model.extarchivo_lc_fuenteespacl_xt_rchv_id_idx;
       test_ladm_valuation_model         postgres    false    235            "           1259    579060 )   extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx ON test_ladm_valuation_model.extarchivo USING btree (lc_fuenteadministrtiva_ext_archivo_id);
 P   DROP INDEX test_ladm_valuation_model.extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx;
       test_ladm_valuation_model         postgres    false    235            "           1259    579059 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_ladm_valuation_model.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 P   DROP INDEX test_ladm_valuation_model.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
       test_ladm_valuation_model         postgres    false    235            �!           1259    578986 $   extdireccion_clase_via_principal_idx    INDEX        CREATE INDEX extdireccion_clase_via_principal_idx ON test_ladm_valuation_model.extdireccion USING btree (clase_via_principal);
 K   DROP INDEX test_ladm_valuation_model.extdireccion_clase_via_principal_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    578990 +   extdireccion_extinteresado_ext_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extinteresado_ext_drccn_id_idx ON test_ladm_valuation_model.extdireccion USING btree (extinteresado_ext_direccion_id);
 R   DROP INDEX test_ladm_valuation_model.extdireccion_extinteresado_ext_drccn_id_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    578989 +   extdireccion_extndddfccnfsc_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extndddfccnfsc_xt_drccn_id_idx ON test_ladm_valuation_model.extdireccion USING btree (extunidadedificcnfsica_ext_direccion_id);
 R   DROP INDEX test_ladm_valuation_model.extdireccion_extndddfccnfsc_xt_drccn_id_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    578991 +   extdireccion_lc_construccin_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_construccin_xt_drccn_id_idx ON test_ladm_valuation_model.extdireccion USING btree (lc_construccion_ext_direccion_id);
 R   DROP INDEX test_ladm_valuation_model.extdireccion_lc_construccin_xt_drccn_id_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    578995 +   extdireccion_lc_nddcnstrccn_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_nddcnstrccn_xt_drccn_id_idx ON test_ladm_valuation_model.extdireccion USING btree (lc_unidadconstruccion_ext_direccion_id);
 R   DROP INDEX test_ladm_valuation_model.extdireccion_lc_nddcnstrccn_xt_drccn_id_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    578992 $   extdireccion_lc_predio_direccion_idx    INDEX        CREATE INDEX extdireccion_lc_predio_direccion_idx ON test_ladm_valuation_model.extdireccion USING btree (lc_predio_direccion);
 K   DROP INDEX test_ladm_valuation_model.extdireccion_lc_predio_direccion_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    578994 +   extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx ON test_ladm_valuation_model.extdireccion USING btree (lc_servidumbretransito_ext_direccion_id);
 R   DROP INDEX test_ladm_valuation_model.extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    578993 +   extdireccion_lc_terreno_ext_direccin_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_terreno_ext_direccin_id_idx ON test_ladm_valuation_model.extdireccion USING btree (lc_terreno_ext_direccion_id);
 R   DROP INDEX test_ladm_valuation_model.extdireccion_lc_terreno_ext_direccin_id_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    578985    extdireccion_localizacion_idx    INDEX     p   CREATE INDEX extdireccion_localizacion_idx ON test_ladm_valuation_model.extdireccion USING gist (localizacion);
 D   DROP INDEX test_ladm_valuation_model.extdireccion_localizacion_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    578987    extdireccion_sector_ciudad_idx    INDEX     s   CREATE INDEX extdireccion_sector_ciudad_idx ON test_ladm_valuation_model.extdireccion USING btree (sector_ciudad);
 E   DROP INDEX test_ladm_valuation_model.extdireccion_sector_ciudad_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    578988    extdireccion_sector_predio_idx    INDEX     s   CREATE INDEX extdireccion_sector_predio_idx ON test_ladm_valuation_model.extdireccion USING btree (sector_predio);
 E   DROP INDEX test_ladm_valuation_model.extdireccion_sector_predio_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    578984    extdireccion_tipo_direccion_idx    INDEX     u   CREATE INDEX extdireccion_tipo_direccion_idx ON test_ladm_valuation_model.extdireccion USING btree (tipo_direccion);
 F   DROP INDEX test_ladm_valuation_model.extdireccion_tipo_direccion_idx;
       test_ladm_valuation_model         postgres    false    228            �!           1259    579041 ,   extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx    INDEX     �   CREATE INDEX extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx ON test_ladm_valuation_model.extinteresado USING btree (extredserviciosfisica_ext_interesado_administrador_id);
 S   DROP INDEX test_ladm_valuation_model.extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx;
       test_ladm_valuation_model         postgres    false    233            �!           1259    579042 ,   extinteresado_lc_agrupacionntrsds_xt_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_agrupacionntrsds_xt_pid_idx ON test_ladm_valuation_model.extinteresado USING btree (lc_agrupacionintersdos_ext_pid);
 S   DROP INDEX test_ladm_valuation_model.extinteresado_lc_agrupacionntrsds_xt_pid_idx;
       test_ladm_valuation_model         postgres    false    233            �!           1259    579043 '   extinteresado_lc_interesado_ext_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_interesado_ext_pid_idx ON test_ladm_valuation_model.extinteresado USING btree (lc_interesado_ext_pid);
 N   DROP INDEX test_ladm_valuation_model.extinteresado_lc_interesado_ext_pid_idx;
       test_ladm_valuation_model         postgres    false    233            �!           1259    579002 '   fraccion_col_miembros_participacion_idx    INDEX     �   CREATE INDEX fraccion_col_miembros_participacion_idx ON test_ladm_valuation_model.fraccion USING btree (col_miembros_participacion);
 N   DROP INDEX test_ladm_valuation_model.fraccion_col_miembros_participacion_idx;
       test_ladm_valuation_model         postgres    false    229            �!           1259    579003 '   fraccion_lc_predio_copropidd_cfcnte_idx    INDEX     �   CREATE INDEX fraccion_lc_predio_copropidd_cfcnte_idx ON test_ladm_valuation_model.fraccion USING btree (lc_predio_copropiedad_coeficiente);
 N   DROP INDEX test_ladm_valuation_model.fraccion_lc_predio_copropidd_cfcnte_idx;
       test_ladm_valuation_model         postgres    false    229            z"           1259    579275    gc_barrio_geometria_idx    INDEX     d   CREATE INDEX gc_barrio_geometria_idx ON test_ladm_valuation_model.gc_barrio USING gist (geometria);
 >   DROP INDEX test_ladm_valuation_model.gc_barrio_geometria_idx;
       test_ladm_valuation_model         postgres    false    258            "           1259    579285 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_ladm_valuation_model.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 [   DROP INDEX test_ladm_valuation_model.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
       test_ladm_valuation_model         postgres    false    259            �"           1259    579295 '   gc_comisionesconstruccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_ladm_valuation_model.gc_comisionesconstruccion USING gist (geometria);
 N   DROP INDEX test_ladm_valuation_model.gc_comisionesconstruccion_geometria_idx;
       test_ladm_valuation_model         postgres    false    260            �"           1259    579315 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_ladm_valuation_model.gc_comisionesunidadconstruccion USING gist (geometria);
 O   DROP INDEX test_ladm_valuation_model.gc_comisionesnddcnstrccion_geometria_idx;
       test_ladm_valuation_model         postgres    false    262            �"           1259    579305 "   gc_comisionesterreno_geometria_idx    INDEX     z   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_ladm_valuation_model.gc_comisionesterreno USING gist (geometria);
 I   DROP INDEX test_ladm_valuation_model.gc_comisionesterreno_geometria_idx;
       test_ladm_valuation_model         postgres    false    261            �"           1259    579327    gc_construccion_gc_predio_idx    INDEX     q   CREATE INDEX gc_construccion_gc_predio_idx ON test_ladm_valuation_model.gc_construccion USING btree (gc_predio);
 D   DROP INDEX test_ladm_valuation_model.gc_construccion_gc_predio_idx;
       test_ladm_valuation_model         postgres    false    263            �"           1259    579326    gc_construccion_geometria_idx    INDEX     p   CREATE INDEX gc_construccion_geometria_idx ON test_ladm_valuation_model.gc_construccion USING gist (geometria);
 D   DROP INDEX test_ladm_valuation_model.gc_construccion_geometria_idx;
       test_ladm_valuation_model         postgres    false    263            �"           1259    579325 %   gc_construccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_ladm_valuation_model.gc_construccion USING btree (tipo_construccion);
 L   DROP INDEX test_ladm_valuation_model.gc_construccion_tipo_construccion_idx;
       test_ladm_valuation_model         postgres    false    263            �"           1259    579460    gc_copropiedad_gc_matriz_idx    INDEX     o   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_ladm_valuation_model.gc_copropiedad USING btree (gc_matriz);
 C   DROP INDEX test_ladm_valuation_model.gc_copropiedad_gc_matriz_idx;
       test_ladm_valuation_model         postgres    false    277            �"           1259    579461    gc_copropiedad_gc_unidad_idx    INDEX     o   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_ladm_valuation_model.gc_copropiedad USING btree (gc_unidad);
 C   DROP INDEX test_ladm_valuation_model.gc_copropiedad_gc_unidad_idx;
       test_ladm_valuation_model         postgres    false    277            �"           1259    581361    gc_copropiedad_gc_unidad_key    INDEX     v   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_ladm_valuation_model.gc_copropiedad USING btree (gc_unidad);
 C   DROP INDEX test_ladm_valuation_model.gc_copropiedad_gc_unidad_key;
       test_ladm_valuation_model         postgres    false    277            �"           1259    579334 "   gc_datosphcondominio_gc_predio_idx    INDEX     {   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_ladm_valuation_model.gc_datosphcondominio USING btree (gc_predio);
 I   DROP INDEX test_ladm_valuation_model.gc_datosphcondominio_gc_predio_idx;
       test_ladm_valuation_model         postgres    false    264            �"           1259    579341 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     �   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_ladm_valuation_model.gc_datostorreph USING btree (gc_datosphcondominio);
 O   DROP INDEX test_ladm_valuation_model.gc_datostorreph_gc_datosphcondominio_idx;
       test_ladm_valuation_model         postgres    false    265            �"           1259    579352 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_ladm_valuation_model.gc_direccion USING btree (gc_prediocatastro_direcciones);
 R   DROP INDEX test_ladm_valuation_model.gc_direccion_gc_prediocatastro_dirccnes_idx;
       test_ladm_valuation_model         postgres    false    266            �"           1259    579351 %   gc_direccion_geometria_referencia_idx    INDEX     �   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_ladm_valuation_model.gc_direccion USING gist (geometria_referencia);
 L   DROP INDEX test_ladm_valuation_model.gc_direccion_geometria_referencia_idx;
       test_ladm_valuation_model         postgres    false    266            �"           1259    579359 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_ladm_valuation_model.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 U   DROP INDEX test_ladm_valuation_model.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
       test_ladm_valuation_model         postgres    false    267            �"           1259    579369    gc_manzana_geometria_idx    INDEX     f   CREATE INDEX gc_manzana_geometria_idx ON test_ladm_valuation_model.gc_manzana USING gist (geometria);
 ?   DROP INDEX test_ladm_valuation_model.gc_manzana_geometria_idx;
       test_ladm_valuation_model         postgres    false    268            �"           1259    579379    gc_perimetro_geometria_idx    INDEX     j   CREATE INDEX gc_perimetro_geometria_idx ON test_ladm_valuation_model.gc_perimetro USING gist (geometria);
 A   DROP INDEX test_ladm_valuation_model.gc_perimetro_geometria_idx;
       test_ladm_valuation_model         postgres    false    269            �"           1259    579452 &   gc_prediocatastro_condicion_predio_idx    INDEX     �   CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_ladm_valuation_model.gc_prediocatastro USING btree (condicion_predio);
 M   DROP INDEX test_ladm_valuation_model.gc_prediocatastro_condicion_predio_idx;
       test_ladm_valuation_model         postgres    false    276            �"           1259    579453 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_ladm_valuation_model.gc_prediocatastro USING btree (sistema_procedencia_datos);
 V   DROP INDEX test_ladm_valuation_model.gc_prediocatastro_sistema_procedencia_datos_idx;
       test_ladm_valuation_model         postgres    false    276            �"           1259    579389 %   gc_propietario_gc_predio_catastro_idx    INDEX     �   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_ladm_valuation_model.gc_propietario USING btree (gc_predio_catastro);
 L   DROP INDEX test_ladm_valuation_model.gc_propietario_gc_predio_catastro_idx;
       test_ladm_valuation_model         postgres    false    270            �"           1259    579399    gc_sectorrural_geometria_idx    INDEX     n   CREATE INDEX gc_sectorrural_geometria_idx ON test_ladm_valuation_model.gc_sectorrural USING gist (geometria);
 C   DROP INDEX test_ladm_valuation_model.gc_sectorrural_geometria_idx;
       test_ladm_valuation_model         postgres    false    271            �"           1259    579409    gc_sectorurbano_geometria_idx    INDEX     p   CREATE INDEX gc_sectorurbano_geometria_idx ON test_ladm_valuation_model.gc_sectorurbano USING gist (geometria);
 D   DROP INDEX test_ladm_valuation_model.gc_sectorurbano_geometria_idx;
       test_ladm_valuation_model         postgres    false    272            �"           1259    579420    gc_terreno_gc_predio_idx    INDEX     g   CREATE INDEX gc_terreno_gc_predio_idx ON test_ladm_valuation_model.gc_terreno USING btree (gc_predio);
 ?   DROP INDEX test_ladm_valuation_model.gc_terreno_gc_predio_idx;
       test_ladm_valuation_model         postgres    false    273            �"           1259    579419    gc_terreno_geometria_idx    INDEX     f   CREATE INDEX gc_terreno_geometria_idx ON test_ladm_valuation_model.gc_terreno USING gist (geometria);
 ?   DROP INDEX test_ladm_valuation_model.gc_terreno_geometria_idx;
       test_ladm_valuation_model         postgres    false    273            �"           1259    579432 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_ladm_valuation_model.gc_unidadconstruccion USING btree (gc_construccion);
 P   DROP INDEX test_ladm_valuation_model.gc_unidadconstruccion_gc_construccion_idx;
       test_ladm_valuation_model         postgres    false    274            �"           1259    579431 #   gc_unidadconstruccion_geometria_idx    INDEX     |   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_ladm_valuation_model.gc_unidadconstruccion USING gist (geometria);
 J   DROP INDEX test_ladm_valuation_model.gc_unidadconstruccion_geometria_idx;
       test_ladm_valuation_model         postgres    false    274            �"           1259    579430 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_ladm_valuation_model.gc_unidadconstruccion USING btree (tipo_construccion);
 R   DROP INDEX test_ladm_valuation_model.gc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_valuation_model         postgres    false    274            �"           1259    579442    gc_vereda_geometria_idx    INDEX     d   CREATE INDEX gc_vereda_geometria_idx ON test_ladm_valuation_model.gc_vereda USING gist (geometria);
 >   DROP INDEX test_ladm_valuation_model.gc_vereda_geometria_idx;
       test_ladm_valuation_model         postgres    false    275            �!           1259    578929     gm_surface2dlistvalue_avalue_idx    INDEX     v   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_ladm_valuation_model.gm_surface2dlistvalue USING gist (avalue);
 G   DROP INDEX test_ladm_valuation_model.gm_surface2dlistvalue_avalue_idx;
       test_ladm_valuation_model         postgres    false    222            �!           1259    578930 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_ladm_valuation_model.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 [   DROP INDEX test_ladm_valuation_model.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
       test_ladm_valuation_model         postgres    false    222            �!           1259    578946     gm_surface3dlistvalue_avalue_idx    INDEX     v   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_ladm_valuation_model.gm_surface3dlistvalue USING gist (avalue);
 G   DROP INDEX test_ladm_valuation_model.gm_surface3dlistvalue_avalue_idx;
       test_ladm_valuation_model         postgres    false    224            �!           1259    578947 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_ladm_valuation_model.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 [   DROP INDEX test_ladm_valuation_model.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
       test_ladm_valuation_model         postgres    false    224            �!           1259    579031    imagen_extinteresado_firma_idx    INDEX     s   CREATE INDEX imagen_extinteresado_firma_idx ON test_ladm_valuation_model.imagen USING btree (extinteresado_firma);
 E   DROP INDEX test_ladm_valuation_model.imagen_extinteresado_firma_idx;
       test_ladm_valuation_model         postgres    false    232            �!           1259    579030 #   imagen_extinteresado_fotografia_idx    INDEX     }   CREATE INDEX imagen_extinteresado_fotografia_idx ON test_ladm_valuation_model.imagen USING btree (extinteresado_fotografia);
 J   DROP INDEX test_ladm_valuation_model.imagen_extinteresado_fotografia_idx;
       test_ladm_valuation_model         postgres    false    232            �!           1259    579029 %   imagen_extinteresado_huell_dctlar_idx    INDEX     �   CREATE INDEX imagen_extinteresado_huell_dctlar_idx ON test_ladm_valuation_model.imagen USING btree (extinteresado_huella_dactilar);
 L   DROP INDEX test_ladm_valuation_model.imagen_extinteresado_huell_dctlar_idx;
       test_ladm_valuation_model         postgres    false    232            �"           1259    579538 (   ini_predioinsumos_gc_predio_catastro_idx    INDEX     �   CREATE INDEX ini_predioinsumos_gc_predio_catastro_idx ON test_ladm_valuation_model.ini_predioinsumos USING btree (gc_predio_catastro);
 O   DROP INDEX test_ladm_valuation_model.ini_predioinsumos_gc_predio_catastro_idx;
       test_ladm_valuation_model         postgres    false    285            �"           1259    579539 )   ini_predioinsumos_snr_predio_juridico_idx    INDEX     �   CREATE INDEX ini_predioinsumos_snr_predio_juridico_idx ON test_ladm_valuation_model.ini_predioinsumos USING btree (snr_predio_juridico);
 P   DROP INDEX test_ladm_valuation_model.ini_predioinsumos_snr_predio_juridico_idx;
       test_ladm_valuation_model         postgres    false    285            �"           1259    579537 )   ini_predioinsumos_tipo_emparejamiento_idx    INDEX     �   CREATE INDEX ini_predioinsumos_tipo_emparejamiento_idx ON test_ladm_valuation_model.ini_predioinsumos USING btree (tipo_emparejamiento);
 P   DROP INDEX test_ladm_valuation_model.ini_predioinsumos_tipo_emparejamiento_idx;
       test_ladm_valuation_model         postgres    false    285            �"           1259    579550 !   lc_agrupacioninteresados_tipo_idx    INDEX     y   CREATE INDEX lc_agrupacioninteresados_tipo_idx ON test_ladm_valuation_model.lc_agrupacioninteresados USING btree (tipo);
 H   DROP INDEX test_ladm_valuation_model.lc_agrupacioninteresados_tipo_idx;
       test_ladm_valuation_model         postgres    false    286            F#           1259    579792 5   lc_calificacionconvencinal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_lc_unidad_construccion_idx ON test_ladm_valuation_model.lc_calificacionconvencional USING btree (lc_unidad_construccion);
 \   DROP INDEX test_ladm_valuation_model.lc_calificacionconvencinal_lc_unidad_construccion_idx;
       test_ladm_valuation_model         postgres    false    306            G#           1259    579791 -   lc_calificacionconvencinal_tipo_calificar_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_tipo_calificar_idx ON test_ladm_valuation_model.lc_calificacionconvencional USING btree (tipo_calificar);
 T   DROP INDEX test_ladm_valuation_model.lc_calificacionconvencinal_tipo_calificar_idx;
       test_ladm_valuation_model         postgres    false    306            L#           1259    579801 5   lc_calificacionnoconvncnal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_lc_unidad_construccion_idx ON test_ladm_valuation_model.lc_calificacionnoconvencional USING btree (lc_unidad_construccion);
 \   DROP INDEX test_ladm_valuation_model.lc_calificacionnoconvncnal_lc_unidad_construccion_idx;
       test_ladm_valuation_model         postgres    false    307            M#           1259    579800 )   lc_calificacionnoconvncnal_tipo_anexo_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_tipo_anexo_idx ON test_ladm_valuation_model.lc_calificacionnoconvencional USING btree (tipo_anexo);
 P   DROP INDEX test_ladm_valuation_model.lc_calificacionnoconvncnal_tipo_anexo_idx;
       test_ladm_valuation_model         postgres    false    307            �"           1259    579563    lc_construccion_dimension_idx    INDEX     q   CREATE INDEX lc_construccion_dimension_idx ON test_ladm_valuation_model.lc_construccion USING btree (dimension);
 D   DROP INDEX test_ladm_valuation_model.lc_construccion_dimension_idx;
       test_ladm_valuation_model         postgres    false    287            �"           1259    579565    lc_construccion_geometria_idx    INDEX     p   CREATE INDEX lc_construccion_geometria_idx ON test_ladm_valuation_model.lc_construccion USING gist (geometria);
 D   DROP INDEX test_ladm_valuation_model.lc_construccion_geometria_idx;
       test_ladm_valuation_model         postgres    false    287            �"           1259    579564 '   lc_construccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_construccion_relacion_superficie_idx ON test_ladm_valuation_model.lc_construccion USING btree (relacion_superficie);
 N   DROP INDEX test_ladm_valuation_model.lc_construccion_relacion_superficie_idx;
       test_ladm_valuation_model         postgres    false    287            �"           1259    579561 %   lc_construccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_construccion_tipo_construccion_idx ON test_ladm_valuation_model.lc_construccion USING btree (tipo_construccion);
 L   DROP INDEX test_ladm_valuation_model.lc_construccion_tipo_construccion_idx;
       test_ladm_valuation_model         postgres    false    287            �"           1259    579562     lc_construccion_tipo_dominio_idx    INDEX     w   CREATE INDEX lc_construccion_tipo_dominio_idx ON test_ladm_valuation_model.lc_construccion USING btree (tipo_dominio);
 G   DROP INDEX test_ladm_valuation_model.lc_construccion_tipo_dominio_idx;
       test_ladm_valuation_model         postgres    false    287            �"           1259    579578 *   lc_contactovisita_lc_datos_adicionales_idx    INDEX     �   CREATE INDEX lc_contactovisita_lc_datos_adicionales_idx ON test_ladm_valuation_model.lc_contactovisita USING btree (lc_datos_adicionales);
 Q   DROP INDEX test_ladm_valuation_model.lc_contactovisita_lc_datos_adicionales_idx;
       test_ladm_valuation_model         postgres    false    288            �"           1259    579577 )   lc_contactovisita_relacion_con_predio_idx    INDEX     �   CREATE INDEX lc_contactovisita_relacion_con_predio_idx ON test_ladm_valuation_model.lc_contactovisita USING btree (relacion_con_predio);
 P   DROP INDEX test_ladm_valuation_model.lc_contactovisita_relacion_con_predio_idx;
       test_ladm_valuation_model         postgres    false    288            �"           1259    579576 0   lc_contactovisita_tipo_documento_quien_tndio_idx    INDEX     �   CREATE INDEX lc_contactovisita_tipo_documento_quien_tndio_idx ON test_ladm_valuation_model.lc_contactovisita USING btree (tipo_documento_quien_atendio);
 W   DROP INDEX test_ladm_valuation_model.lc_contactovisita_tipo_documento_quien_tndio_idx;
       test_ladm_valuation_model         postgres    false    288            �"           1259    579586 "   lc_datosphcondominio_lc_predio_idx    INDEX     {   CREATE INDEX lc_datosphcondominio_lc_predio_idx ON test_ladm_valuation_model.lc_datosphcondominio USING btree (lc_predio);
 I   DROP INDEX test_ladm_valuation_model.lc_datosphcondominio_lc_predio_idx;
       test_ladm_valuation_model         postgres    false    289            P#           1259    579815 .   lc_datsdcnlslvntmntctstral_categoria_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_categoria_suelo_idx ON test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral USING btree (categoria_suelo);
 U   DROP INDEX test_ladm_valuation_model.lc_datsdcnlslvntmntctstral_categoria_suelo_idx;
       test_ladm_valuation_model         postgres    false    308            Q#           1259    579814 *   lc_datsdcnlslvntmntctstral_clase_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_clase_suelo_idx ON test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral USING btree (clase_suelo);
 Q   DROP INDEX test_ladm_valuation_model.lc_datsdcnlslvntmntctstral_clase_suelo_idx;
       test_ladm_valuation_model         postgres    false    308            R#           1259    579813 4   lc_datsdcnlslvntmntctstral_destinacion_economica_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_destinacion_economica_idx ON test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral USING btree (destinacion_economica);
 [   DROP INDEX test_ladm_valuation_model.lc_datsdcnlslvntmntctstral_destinacion_economica_idx;
       test_ladm_valuation_model         postgres    false    308            S#           1259    579818 (   lc_datsdcnlslvntmntctstral_lc_predio_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_lc_predio_idx ON test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral USING btree (lc_predio);
 O   DROP INDEX test_ladm_valuation_model.lc_datsdcnlslvntmntctstral_lc_predio_idx;
       test_ladm_valuation_model         postgres    false    308            T#           1259    579812 9   lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx ON test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral USING btree (procedimiento_catastral_registral);
 `   DROP INDEX test_ladm_valuation_model.lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx;
       test_ladm_valuation_model         postgres    false    308            U#           1259    579817 /   lc_datsdcnlslvntmntctstral_resultado_visita_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_resultado_visita_idx ON test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral USING btree (resultado_visita);
 V   DROP INDEX test_ladm_valuation_model.lc_datsdcnlslvntmntctstral_resultado_visita_idx;
       test_ladm_valuation_model         postgres    false    308            V#           1259    579816 9   lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx ON test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral USING btree (tipo_documento_reconocedor);
 `   DROP INDEX test_ladm_valuation_model.lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx;
       test_ladm_valuation_model         postgres    false    308            �"           1259    579599 )   lc_derecho_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_grpcnntrsdos_idx ON test_ladm_valuation_model.lc_derecho USING btree (interesado_lc_agrupacioninteresados);
 P   DROP INDEX test_ladm_valuation_model.lc_derecho_interesado_lc_grpcnntrsdos_idx;
       test_ladm_valuation_model         postgres    false    290            �"           1259    579598 '   lc_derecho_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_interesado_idx ON test_ladm_valuation_model.lc_derecho USING btree (interesado_lc_interesado);
 N   DROP INDEX test_ladm_valuation_model.lc_derecho_interesado_lc_interesado_idx;
       test_ladm_valuation_model         postgres    false    290            �"           1259    579597    lc_derecho_tipo_idx    INDEX     ]   CREATE INDEX lc_derecho_tipo_idx ON test_ladm_valuation_model.lc_derecho USING btree (tipo);
 :   DROP INDEX test_ladm_valuation_model.lc_derecho_tipo_idx;
       test_ladm_valuation_model         postgres    false    290            �"           1259    579600    lc_derecho_unidad_idx    INDEX     a   CREATE INDEX lc_derecho_unidad_idx ON test_ladm_valuation_model.lc_derecho USING btree (unidad);
 <   DROP INDEX test_ladm_valuation_model.lc_derecho_unidad_idx;
       test_ladm_valuation_model         postgres    false    290            �"           1259    579607 6   lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx    INDEX     �   CREATE INDEX lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx ON test_ladm_valuation_model.lc_estructuranovedadfmi USING btree (lc_dtsdcnlstmntctstral_novedad_fmi);
 ]   DROP INDEX test_ladm_valuation_model.lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx;
       test_ladm_valuation_model         postgres    false    291            �"           1259    579615 9   lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx ON test_ladm_valuation_model.lc_estructuranovedadnumeropredial USING btree (lc_dtsdcnlstmntctstral_novedad_numeros_prediales);
 `   DROP INDEX test_ladm_valuation_model.lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx;
       test_ladm_valuation_model         postgres    false    292            �"           1259    579614 +   lc_estructuranvddnmrprdial_tipo_novedad_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_tipo_novedad_idx ON test_ladm_valuation_model.lc_estructuranovedadnumeropredial USING btree (tipo_novedad);
 R   DROP INDEX test_ladm_valuation_model.lc_estructuranvddnmrprdial_tipo_novedad_idx;
       test_ladm_valuation_model         postgres    false    292            �"           1259    579627 1   lc_fuenteadministrativa_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_estado_disponibilidad_idx ON test_ladm_valuation_model.lc_fuenteadministrativa USING btree (estado_disponibilidad);
 X   DROP INDEX test_ladm_valuation_model.lc_fuenteadministrativa_estado_disponibilidad_idx;
       test_ladm_valuation_model         postgres    false    293             #           1259    579626     lc_fuenteadministrativa_tipo_idx    INDEX     w   CREATE INDEX lc_fuenteadministrativa_tipo_idx ON test_ladm_valuation_model.lc_fuenteadministrativa USING btree (tipo);
 G   DROP INDEX test_ladm_valuation_model.lc_fuenteadministrativa_tipo_idx;
       test_ladm_valuation_model         postgres    false    293            #           1259    579628 *   lc_fuenteadministrativa_tipo_principal_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_tipo_principal_idx ON test_ladm_valuation_model.lc_fuenteadministrativa USING btree (tipo_principal);
 Q   DROP INDEX test_ladm_valuation_model.lc_fuenteadministrativa_tipo_principal_idx;
       test_ladm_valuation_model         postgres    false    293            #           1259    579640 +   lc_fuenteespacial_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_estado_disponibilidad_idx ON test_ladm_valuation_model.lc_fuenteespacial USING btree (estado_disponibilidad);
 R   DROP INDEX test_ladm_valuation_model.lc_fuenteespacial_estado_disponibilidad_idx;
       test_ladm_valuation_model         postgres    false    294            #           1259    579639    lc_fuenteespacial_tipo_idx    INDEX     k   CREATE INDEX lc_fuenteespacial_tipo_idx ON test_ladm_valuation_model.lc_fuenteespacial USING btree (tipo);
 A   DROP INDEX test_ladm_valuation_model.lc_fuenteespacial_tipo_idx;
       test_ladm_valuation_model         postgres    false    294            #           1259    579641 $   lc_fuenteespacial_tipo_principal_idx    INDEX        CREATE INDEX lc_fuenteespacial_tipo_principal_idx ON test_ladm_valuation_model.lc_fuenteespacial USING btree (tipo_principal);
 K   DROP INDEX test_ladm_valuation_model.lc_fuenteespacial_tipo_principal_idx;
       test_ladm_valuation_model         postgres    false    294            #           1259    579649 +   lc_grupocalificacion_clase_calificacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_clase_calificacion_idx ON test_ladm_valuation_model.lc_grupocalificacion USING btree (clase_calificacion);
 R   DROP INDEX test_ladm_valuation_model.lc_grupocalificacion_clase_calificacion_idx;
       test_ladm_valuation_model         postgres    false    295            #           1259    579650 %   lc_grupocalificacion_conservacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_conservacion_idx ON test_ladm_valuation_model.lc_grupocalificacion USING btree (conservacion);
 L   DROP INDEX test_ladm_valuation_model.lc_grupocalificacion_conservacion_idx;
       test_ladm_valuation_model         postgres    false    295            	#           1259    579651 3   lc_grupocalificacion_lc_calificacion_convencnal_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_lc_calificacion_convencnal_idx ON test_ladm_valuation_model.lc_grupocalificacion USING btree (lc_calificacion_convencional);
 Z   DROP INDEX test_ladm_valuation_model.lc_grupocalificacion_lc_calificacion_convencnal_idx;
       test_ladm_valuation_model         postgres    false    295            #           1259    579665    lc_interesado_grupo_etnico_idx    INDEX     s   CREATE INDEX lc_interesado_grupo_etnico_idx ON test_ladm_valuation_model.lc_interesado USING btree (grupo_etnico);
 E   DROP INDEX test_ladm_valuation_model.lc_interesado_grupo_etnico_idx;
       test_ladm_valuation_model         postgres    false    296            #           1259    579664    lc_interesado_sexo_idx    INDEX     c   CREATE INDEX lc_interesado_sexo_idx ON test_ladm_valuation_model.lc_interesado USING btree (sexo);
 =   DROP INDEX test_ladm_valuation_model.lc_interesado_sexo_idx;
       test_ladm_valuation_model         postgres    false    296            #           1259    579663     lc_interesado_tipo_documento_idx    INDEX     w   CREATE INDEX lc_interesado_tipo_documento_idx ON test_ladm_valuation_model.lc_interesado USING btree (tipo_documento);
 G   DROP INDEX test_ladm_valuation_model.lc_interesado_tipo_documento_idx;
       test_ladm_valuation_model         postgres    false    296            #           1259    579662    lc_interesado_tipo_idx    INDEX     c   CREATE INDEX lc_interesado_tipo_idx ON test_ladm_valuation_model.lc_interesado USING btree (tipo);
 =   DROP INDEX test_ladm_valuation_model.lc_interesado_tipo_idx;
       test_ladm_valuation_model         postgres    false    296            #           1259    579676 '   lc_interesadocontacto_lc_interesado_idx    INDEX     �   CREATE INDEX lc_interesadocontacto_lc_interesado_idx ON test_ladm_valuation_model.lc_interesadocontacto USING btree (lc_interesado);
 N   DROP INDEX test_ladm_valuation_model.lc_interesadocontacto_lc_interesado_idx;
       test_ladm_valuation_model         postgres    false    297            #           1259    579687    lc_lindero_geometria_idx    INDEX     f   CREATE INDEX lc_lindero_geometria_idx ON test_ladm_valuation_model.lc_lindero USING gist (geometria);
 ?   DROP INDEX test_ladm_valuation_model.lc_lindero_geometria_idx;
       test_ladm_valuation_model         postgres    false    298            #           1259    579696 /   lc_objetoconstruccion_lc_grupo_calificacion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_lc_grupo_calificacion_idx ON test_ladm_valuation_model.lc_objetoconstruccion USING btree (lc_grupo_calificacion);
 V   DROP INDEX test_ladm_valuation_model.lc_objetoconstruccion_lc_grupo_calificacion_idx;
       test_ladm_valuation_model         postgres    false    299            #           1259    579695 2   lc_objetoconstruccion_tipo_objeto_construccion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_tipo_objeto_construccion_idx ON test_ladm_valuation_model.lc_objetoconstruccion USING btree (tipo_objeto_construccion);
 Y   DROP INDEX test_ladm_valuation_model.lc_objetoconstruccion_tipo_objeto_construccion_idx;
       test_ladm_valuation_model         postgres    false    299            #           1259    579705 (   lc_ofertasmercadoinmoblrio_lc_predio_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_lc_predio_idx ON test_ladm_valuation_model.lc_ofertasmercadoinmobiliario USING btree (lc_predio);
 O   DROP INDEX test_ladm_valuation_model.lc_ofertasmercadoinmoblrio_lc_predio_idx;
       test_ladm_valuation_model         postgres    false    300            #           1259    579704 *   lc_ofertasmercadoinmoblrio_tipo_oferta_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_tipo_oferta_idx ON test_ladm_valuation_model.lc_ofertasmercadoinmobiliario USING btree (tipo_oferta);
 Q   DROP INDEX test_ladm_valuation_model.lc_ofertasmercadoinmoblrio_tipo_oferta_idx;
       test_ladm_valuation_model         postgres    false    300             #           1259    579717    lc_predio_condicion_predio_idx    INDEX     s   CREATE INDEX lc_predio_condicion_predio_idx ON test_ladm_valuation_model.lc_predio USING btree (condicion_predio);
 E   DROP INDEX test_ladm_valuation_model.lc_predio_condicion_predio_idx;
       test_ladm_valuation_model         postgres    false    301            g#           1259    579855 %   lc_predio_copropiedad_copropiedad_idx    INDEX     �   CREATE INDEX lc_predio_copropiedad_copropiedad_idx ON test_ladm_valuation_model.lc_predio_copropiedad USING btree (copropiedad);
 L   DROP INDEX test_ladm_valuation_model.lc_predio_copropiedad_copropiedad_idx;
       test_ladm_valuation_model         postgres    false    311            j#           1259    579854     lc_predio_copropiedad_predio_idx    INDEX     w   CREATE INDEX lc_predio_copropiedad_predio_idx ON test_ladm_valuation_model.lc_predio_copropiedad USING btree (predio);
 G   DROP INDEX test_ladm_valuation_model.lc_predio_copropiedad_predio_idx;
       test_ladm_valuation_model         postgres    false    311            k#           1259    581887     lc_predio_copropiedad_predio_key    INDEX     ~   CREATE UNIQUE INDEX lc_predio_copropiedad_predio_key ON test_ladm_valuation_model.lc_predio_copropiedad USING btree (predio);
 G   DROP INDEX test_ladm_valuation_model.lc_predio_copropiedad_predio_key;
       test_ladm_valuation_model         postgres    false    311            l#           1259    579862 1   lc_predio_ini_predioinsmos_ini_predio_insumos_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_ini_predio_insumos_idx ON test_ladm_valuation_model.lc_predio_ini_predioinsumos USING btree (ini_predio_insumos);
 X   DROP INDEX test_ladm_valuation_model.lc_predio_ini_predioinsmos_ini_predio_insumos_idx;
       test_ladm_valuation_model         postgres    false    312            m#           1259    579863 (   lc_predio_ini_predioinsmos_lc_predio_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_lc_predio_idx ON test_ladm_valuation_model.lc_predio_ini_predioinsumos USING btree (lc_predio);
 O   DROP INDEX test_ladm_valuation_model.lc_predio_ini_predioinsmos_lc_predio_idx;
       test_ladm_valuation_model         postgres    false    312            ##           1259    579716    lc_predio_tipo_idx    INDEX     [   CREATE INDEX lc_predio_tipo_idx ON test_ladm_valuation_model.lc_predio USING btree (tipo);
 9   DROP INDEX test_ladm_valuation_model.lc_predio_tipo_idx;
       test_ladm_valuation_model         postgres    false    301            $#           1259    579732    lc_puntocontrol_geometria_idx    INDEX     p   CREATE INDEX lc_puntocontrol_geometria_idx ON test_ladm_valuation_model.lc_puntocontrol USING gist (geometria);
 D   DROP INDEX test_ladm_valuation_model.lc_puntocontrol_geometria_idx;
       test_ladm_valuation_model         postgres    false    302            %#           1259    579731 $   lc_puntocontrol_metodoproduccion_idx    INDEX        CREATE INDEX lc_puntocontrol_metodoproduccion_idx ON test_ladm_valuation_model.lc_puntocontrol USING btree (metodoproduccion);
 K   DROP INDEX test_ladm_valuation_model.lc_puntocontrol_metodoproduccion_idx;
       test_ladm_valuation_model         postgres    false    302            (#           1259    579730 *   lc_puntocontrol_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_posicion_interpolacion_idx ON test_ladm_valuation_model.lc_puntocontrol USING btree (posicion_interpolacion);
 Q   DROP INDEX test_ladm_valuation_model.lc_puntocontrol_posicion_interpolacion_idx;
       test_ladm_valuation_model         postgres    false    302            )#           1259    579728    lc_puntocontrol_puntotipo_idx    INDEX     q   CREATE INDEX lc_puntocontrol_puntotipo_idx ON test_ladm_valuation_model.lc_puntocontrol USING btree (puntotipo);
 D   DROP INDEX test_ladm_valuation_model.lc_puntocontrol_puntotipo_idx;
       test_ladm_valuation_model         postgres    false    302            *#           1259    579729 &   lc_puntocontrol_tipo_punto_control_idx    INDEX     �   CREATE INDEX lc_puntocontrol_tipo_punto_control_idx ON test_ladm_valuation_model.lc_puntocontrol USING btree (tipo_punto_control);
 M   DROP INDEX test_ladm_valuation_model.lc_puntocontrol_tipo_punto_control_idx;
       test_ladm_valuation_model         postgres    false    302            +#           1259    579736 &   lc_puntocontrol_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_construccion_idx ON test_ladm_valuation_model.lc_puntocontrol USING btree (ue_lc_construccion);
 M   DROP INDEX test_ladm_valuation_model.lc_puntocontrol_ue_lc_construccion_idx;
       test_ladm_valuation_model         postgres    false    302            ,#           1259    579734 -   lc_puntocontrol_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_servidumbretransito_idx ON test_ladm_valuation_model.lc_puntocontrol USING btree (ue_lc_servidumbretransito);
 T   DROP INDEX test_ladm_valuation_model.lc_puntocontrol_ue_lc_servidumbretransito_idx;
       test_ladm_valuation_model         postgres    false    302            -#           1259    579733 !   lc_puntocontrol_ue_lc_terreno_idx    INDEX     y   CREATE INDEX lc_puntocontrol_ue_lc_terreno_idx ON test_ladm_valuation_model.lc_puntocontrol USING btree (ue_lc_terreno);
 H   DROP INDEX test_ladm_valuation_model.lc_puntocontrol_ue_lc_terreno_idx;
       test_ladm_valuation_model         postgres    false    302            .#           1259    579735 ,   lc_puntocontrol_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_unidadconstruccion_idx ON test_ladm_valuation_model.lc_puntocontrol USING btree (ue_lc_unidadconstruccion);
 S   DROP INDEX test_ladm_valuation_model.lc_puntocontrol_ue_lc_unidadconstruccion_idx;
       test_ladm_valuation_model         postgres    false    302            W#           1259    579831 ,   lc_puntolevantamiento_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_fotoidentificacion_idx ON test_ladm_valuation_model.lc_puntolevantamiento USING btree (fotoidentificacion);
 S   DROP INDEX test_ladm_valuation_model.lc_puntolevantamiento_fotoidentificacion_idx;
       test_ladm_valuation_model         postgres    false    309            X#           1259    579834 #   lc_puntolevantamiento_geometria_idx    INDEX     |   CREATE INDEX lc_puntolevantamiento_geometria_idx ON test_ladm_valuation_model.lc_puntolevantamiento USING gist (geometria);
 J   DROP INDEX test_ladm_valuation_model.lc_puntolevantamiento_geometria_idx;
       test_ladm_valuation_model         postgres    false    309            Y#           1259    579833 *   lc_puntolevantamiento_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_metodoproduccion_idx ON test_ladm_valuation_model.lc_puntolevantamiento USING btree (metodoproduccion);
 Q   DROP INDEX test_ladm_valuation_model.lc_puntolevantamiento_metodoproduccion_idx;
       test_ladm_valuation_model         postgres    false    309            \#           1259    579832 0   lc_puntolevantamiento_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_posicion_interpolacion_idx ON test_ladm_valuation_model.lc_puntolevantamiento USING btree (posicion_interpolacion);
 W   DROP INDEX test_ladm_valuation_model.lc_puntolevantamiento_posicion_interpolacion_idx;
       test_ladm_valuation_model         postgres    false    309            ]#           1259    579829 #   lc_puntolevantamiento_puntotipo_idx    INDEX     }   CREATE INDEX lc_puntolevantamiento_puntotipo_idx ON test_ladm_valuation_model.lc_puntolevantamiento USING btree (puntotipo);
 J   DROP INDEX test_ladm_valuation_model.lc_puntolevantamiento_puntotipo_idx;
       test_ladm_valuation_model         postgres    false    309            ^#           1259    579830 2   lc_puntolevantamiento_tipo_punto_levantamiento_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_tipo_punto_levantamiento_idx ON test_ladm_valuation_model.lc_puntolevantamiento USING btree (tipo_punto_levantamiento);
 Y   DROP INDEX test_ladm_valuation_model.lc_puntolevantamiento_tipo_punto_levantamiento_idx;
       test_ladm_valuation_model         postgres    false    309            _#           1259    579838 ,   lc_puntolevantamiento_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_construccion_idx ON test_ladm_valuation_model.lc_puntolevantamiento USING btree (ue_lc_construccion);
 S   DROP INDEX test_ladm_valuation_model.lc_puntolevantamiento_ue_lc_construccion_idx;
       test_ladm_valuation_model         postgres    false    309            `#           1259    579836 3   lc_puntolevantamiento_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_servidumbretransito_idx ON test_ladm_valuation_model.lc_puntolevantamiento USING btree (ue_lc_servidumbretransito);
 Z   DROP INDEX test_ladm_valuation_model.lc_puntolevantamiento_ue_lc_servidumbretransito_idx;
       test_ladm_valuation_model         postgres    false    309            a#           1259    579835 '   lc_puntolevantamiento_ue_lc_terreno_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_terreno_idx ON test_ladm_valuation_model.lc_puntolevantamiento USING btree (ue_lc_terreno);
 N   DROP INDEX test_ladm_valuation_model.lc_puntolevantamiento_ue_lc_terreno_idx;
       test_ladm_valuation_model         postgres    false    309            b#           1259    579837 2   lc_puntolevantamiento_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_unidadconstruccion_idx ON test_ladm_valuation_model.lc_puntolevantamiento USING btree (ue_lc_unidadconstruccion);
 Y   DROP INDEX test_ladm_valuation_model.lc_puntolevantamiento_ue_lc_unidadconstruccion_idx;
       test_ladm_valuation_model         postgres    false    309            /#           1259    579748    lc_puntolindero_acuerdo_idx    INDEX     m   CREATE INDEX lc_puntolindero_acuerdo_idx ON test_ladm_valuation_model.lc_puntolindero USING btree (acuerdo);
 B   DROP INDEX test_ladm_valuation_model.lc_puntolindero_acuerdo_idx;
       test_ladm_valuation_model         postgres    false    303            0#           1259    579749 &   lc_puntolindero_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_fotoidentificacion_idx ON test_ladm_valuation_model.lc_puntolindero USING btree (fotoidentificacion);
 M   DROP INDEX test_ladm_valuation_model.lc_puntolindero_fotoidentificacion_idx;
       test_ladm_valuation_model         postgres    false    303            1#           1259    579752    lc_puntolindero_geometria_idx    INDEX     p   CREATE INDEX lc_puntolindero_geometria_idx ON test_ladm_valuation_model.lc_puntolindero USING gist (geometria);
 D   DROP INDEX test_ladm_valuation_model.lc_puntolindero_geometria_idx;
       test_ladm_valuation_model         postgres    false    303            2#           1259    579751 $   lc_puntolindero_metodoproduccion_idx    INDEX        CREATE INDEX lc_puntolindero_metodoproduccion_idx ON test_ladm_valuation_model.lc_puntolindero USING btree (metodoproduccion);
 K   DROP INDEX test_ladm_valuation_model.lc_puntolindero_metodoproduccion_idx;
       test_ladm_valuation_model         postgres    false    303            5#           1259    579750 *   lc_puntolindero_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_posicion_interpolacion_idx ON test_ladm_valuation_model.lc_puntolindero USING btree (posicion_interpolacion);
 Q   DROP INDEX test_ladm_valuation_model.lc_puntolindero_posicion_interpolacion_idx;
       test_ladm_valuation_model         postgres    false    303            6#           1259    579747    lc_puntolindero_puntotipo_idx    INDEX     q   CREATE INDEX lc_puntolindero_puntotipo_idx ON test_ladm_valuation_model.lc_puntolindero USING btree (puntotipo);
 D   DROP INDEX test_ladm_valuation_model.lc_puntolindero_puntotipo_idx;
       test_ladm_valuation_model         postgres    false    303            7#           1259    579756 &   lc_puntolindero_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_construccion_idx ON test_ladm_valuation_model.lc_puntolindero USING btree (ue_lc_construccion);
 M   DROP INDEX test_ladm_valuation_model.lc_puntolindero_ue_lc_construccion_idx;
       test_ladm_valuation_model         postgres    false    303            8#           1259    579754 -   lc_puntolindero_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_servidumbretransito_idx ON test_ladm_valuation_model.lc_puntolindero USING btree (ue_lc_servidumbretransito);
 T   DROP INDEX test_ladm_valuation_model.lc_puntolindero_ue_lc_servidumbretransito_idx;
       test_ladm_valuation_model         postgres    false    303            9#           1259    579753 !   lc_puntolindero_ue_lc_terreno_idx    INDEX     y   CREATE INDEX lc_puntolindero_ue_lc_terreno_idx ON test_ladm_valuation_model.lc_puntolindero USING btree (ue_lc_terreno);
 H   DROP INDEX test_ladm_valuation_model.lc_puntolindero_ue_lc_terreno_idx;
       test_ladm_valuation_model         postgres    false    303            :#           1259    579755 ,   lc_puntolindero_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_unidadconstruccion_idx ON test_ladm_valuation_model.lc_puntolindero USING btree (ue_lc_unidadconstruccion);
 S   DROP INDEX test_ladm_valuation_model.lc_puntolindero_ue_lc_unidadconstruccion_idx;
       test_ladm_valuation_model         postgres    false    303            ;#           1259    579769 -   lc_restriccion_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_grpcnntrsdos_idx ON test_ladm_valuation_model.lc_restriccion USING btree (interesado_lc_agrupacioninteresados);
 T   DROP INDEX test_ladm_valuation_model.lc_restriccion_interesado_lc_grpcnntrsdos_idx;
       test_ladm_valuation_model         postgres    false    304            <#           1259    579768 +   lc_restriccion_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_interesado_idx ON test_ladm_valuation_model.lc_restriccion USING btree (interesado_lc_interesado);
 R   DROP INDEX test_ladm_valuation_model.lc_restriccion_interesado_lc_interesado_idx;
       test_ladm_valuation_model         postgres    false    304            ?#           1259    579767    lc_restriccion_tipo_idx    INDEX     e   CREATE INDEX lc_restriccion_tipo_idx ON test_ladm_valuation_model.lc_restriccion USING btree (tipo);
 >   DROP INDEX test_ladm_valuation_model.lc_restriccion_tipo_idx;
       test_ladm_valuation_model         postgres    false    304            @#           1259    579770    lc_restriccion_unidad_idx    INDEX     i   CREATE INDEX lc_restriccion_unidad_idx ON test_ladm_valuation_model.lc_restriccion USING btree (unidad);
 @   DROP INDEX test_ladm_valuation_model.lc_restriccion_unidad_idx;
       test_ladm_valuation_model         postgres    false    304            p#           1259    579874 $   lc_servidumbretransito_dimension_idx    INDEX        CREATE INDEX lc_servidumbretransito_dimension_idx ON test_ladm_valuation_model.lc_servidumbretransito USING btree (dimension);
 K   DROP INDEX test_ladm_valuation_model.lc_servidumbretransito_dimension_idx;
       test_ladm_valuation_model         postgres    false    313            q#           1259    579876 $   lc_servidumbretransito_geometria_idx    INDEX     ~   CREATE INDEX lc_servidumbretransito_geometria_idx ON test_ladm_valuation_model.lc_servidumbretransito USING gist (geometria);
 K   DROP INDEX test_ladm_valuation_model.lc_servidumbretransito_geometria_idx;
       test_ladm_valuation_model         postgres    false    313            t#           1259    579875 .   lc_servidumbretransito_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_relacion_superficie_idx ON test_ladm_valuation_model.lc_servidumbretransito USING btree (relacion_superficie);
 U   DROP INDEX test_ladm_valuation_model.lc_servidumbretransito_relacion_superficie_idx;
       test_ladm_valuation_model         postgres    false    313            A#           1259    579782    lc_terreno_dimension_idx    INDEX     g   CREATE INDEX lc_terreno_dimension_idx ON test_ladm_valuation_model.lc_terreno USING btree (dimension);
 ?   DROP INDEX test_ladm_valuation_model.lc_terreno_dimension_idx;
       test_ladm_valuation_model         postgres    false    305            B#           1259    579781    lc_terreno_geometria_idx    INDEX     f   CREATE INDEX lc_terreno_geometria_idx ON test_ladm_valuation_model.lc_terreno USING gist (geometria);
 ?   DROP INDEX test_ladm_valuation_model.lc_terreno_geometria_idx;
       test_ladm_valuation_model         postgres    false    305            E#           1259    579783 "   lc_terreno_relacion_superficie_idx    INDEX     {   CREATE INDEX lc_terreno_relacion_superficie_idx ON test_ladm_valuation_model.lc_terreno USING btree (relacion_superficie);
 I   DROP INDEX test_ladm_valuation_model.lc_terreno_relacion_superficie_idx;
       test_ladm_valuation_model         postgres    false    305            c#           1259    579847 3   lc_tipologiaconstruccion_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_lc_unidad_construccion_idx ON test_ladm_valuation_model.lc_tipologiaconstruccion USING btree (lc_unidad_construccion);
 Z   DROP INDEX test_ladm_valuation_model.lc_tipologiaconstruccion_lc_unidad_construccion_idx;
       test_ladm_valuation_model         postgres    false    310            f#           1259    579846 +   lc_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_tipo_tipologia_idx ON test_ladm_valuation_model.lc_tipologiaconstruccion USING btree (tipo_tipologia);
 R   DROP INDEX test_ladm_valuation_model.lc_tipologiaconstruccion_tipo_tipologia_idx;
       test_ladm_valuation_model         postgres    false    310            u#           1259    579893 #   lc_unidadconstruccion_dimension_idx    INDEX     }   CREATE INDEX lc_unidadconstruccion_dimension_idx ON test_ladm_valuation_model.lc_unidadconstruccion USING btree (dimension);
 J   DROP INDEX test_ladm_valuation_model.lc_unidadconstruccion_dimension_idx;
       test_ladm_valuation_model         postgres    false    314            v#           1259    579895 #   lc_unidadconstruccion_geometria_idx    INDEX     |   CREATE INDEX lc_unidadconstruccion_geometria_idx ON test_ladm_valuation_model.lc_unidadconstruccion USING gist (geometria);
 J   DROP INDEX test_ladm_valuation_model.lc_unidadconstruccion_geometria_idx;
       test_ladm_valuation_model         postgres    false    314            w#           1259    579892 )   lc_unidadconstruccion_lc_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_lc_construccion_idx ON test_ladm_valuation_model.lc_unidadconstruccion USING btree (lc_construccion);
 P   DROP INDEX test_ladm_valuation_model.lc_unidadconstruccion_lc_construccion_idx;
       test_ladm_valuation_model         postgres    false    314            z#           1259    579894 -   lc_unidadconstruccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_relacion_superficie_idx ON test_ladm_valuation_model.lc_unidadconstruccion USING btree (relacion_superficie);
 T   DROP INDEX test_ladm_valuation_model.lc_unidadconstruccion_relacion_superficie_idx;
       test_ladm_valuation_model         postgres    false    314            {#           1259    579888 +   lc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_construccion_idx ON test_ladm_valuation_model.lc_unidadconstruccion USING btree (tipo_construccion);
 R   DROP INDEX test_ladm_valuation_model.lc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_valuation_model         postgres    false    314            |#           1259    579887 &   lc_unidadconstruccion_tipo_dominio_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_dominio_idx ON test_ladm_valuation_model.lc_unidadconstruccion USING btree (tipo_dominio);
 M   DROP INDEX test_ladm_valuation_model.lc_unidadconstruccion_tipo_dominio_idx;
       test_ladm_valuation_model         postgres    false    314            }#           1259    579890 %   lc_unidadconstruccion_tipo_planta_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_planta_idx ON test_ladm_valuation_model.lc_unidadconstruccion USING btree (tipo_planta);
 L   DROP INDEX test_ladm_valuation_model.lc_unidadconstruccion_tipo_planta_idx;
       test_ladm_valuation_model         postgres    false    314            ~#           1259    579889 2   lc_unidadconstruccion_tipo_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_unidad_construccion_idx ON test_ladm_valuation_model.lc_unidadconstruccion USING btree (tipo_unidad_construccion);
 Y   DROP INDEX test_ladm_valuation_model.lc_unidadconstruccion_tipo_unidad_construccion_idx;
       test_ladm_valuation_model         postgres    false    314            #           1259    579891    lc_unidadconstruccion_uso_idx    INDEX     q   CREATE INDEX lc_unidadconstruccion_uso_idx ON test_ladm_valuation_model.lc_unidadconstruccion USING btree (uso);
 D   DROP INDEX test_ladm_valuation_model.lc_unidadconstruccion_uso_idx;
       test_ladm_valuation_model         postgres    false    314            �"           1259    579468 (   snr_derecho_calidad_derecho_registro_idx    INDEX     �   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_ladm_valuation_model.snr_derecho USING btree (calidad_derecho_registro);
 O   DROP INDEX test_ladm_valuation_model.snr_derecho_calidad_derecho_registro_idx;
       test_ladm_valuation_model         postgres    false    278            �"           1259    579469 "   snr_derecho_snr_fuente_derecho_idx    INDEX     {   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_ladm_valuation_model.snr_derecho USING btree (snr_fuente_derecho);
 I   DROP INDEX test_ladm_valuation_model.snr_derecho_snr_fuente_derecho_idx;
       test_ladm_valuation_model         postgres    false    278            �"           1259    579470 #   snr_derecho_snr_predio_registro_idx    INDEX     }   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_ladm_valuation_model.snr_derecho USING btree (snr_predio_registro);
 J   DROP INDEX test_ladm_valuation_model.snr_derecho_snr_predio_registro_idx;
       test_ladm_valuation_model         postgres    false    278            �"           1259    579477 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_ladm_valuation_model.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 `   DROP INDEX test_ladm_valuation_model.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
       test_ladm_valuation_model         postgres    false    279            �"           1259    579487 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_ladm_valuation_model.snr_fuentecabidalinderos USING btree (tipo_documento);
 R   DROP INDEX test_ladm_valuation_model.snr_fuentecabidalinderos_tipo_documento_idx;
       test_ladm_valuation_model         postgres    false    280            �"           1259    579497 $   snr_fuentederecho_tipo_documento_idx    INDEX        CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_ladm_valuation_model.snr_fuentederecho USING btree (tipo_documento);
 K   DROP INDEX test_ladm_valuation_model.snr_fuentederecho_tipo_documento_idx;
       test_ladm_valuation_model         postgres    false    281            �"           1259    579518 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_ladm_valuation_model.snr_predioregistro USING btree (clase_suelo_registro);
 R   DROP INDEX test_ladm_valuation_model.snr_predioregistro_clase_suelo_registro_idx;
       test_ladm_valuation_model         postgres    false    283            �"           1259    579519 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_ladm_valuation_model.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 W   DROP INDEX test_ladm_valuation_model.snr_predioregistro_snr_fuente_cabidalinderos_idx;
       test_ladm_valuation_model         postgres    false    283            �"           1259    579527 #   snr_titular_derecho_snr_derecho_idx    INDEX     }   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_ladm_valuation_model.snr_titular_derecho USING btree (snr_derecho);
 J   DROP INDEX test_ladm_valuation_model.snr_titular_derecho_snr_derecho_idx;
       test_ladm_valuation_model         postgres    false    284            �"           1259    579526 #   snr_titular_derecho_snr_titular_idx    INDEX     }   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_ladm_valuation_model.snr_titular_derecho USING btree (snr_titular);
 J   DROP INDEX test_ladm_valuation_model.snr_titular_derecho_snr_titular_idx;
       test_ladm_valuation_model         postgres    false    284            �"           1259    579508    snr_titular_tipo_documento_idx    INDEX     s   CREATE INDEX snr_titular_tipo_documento_idx ON test_ladm_valuation_model.snr_titular USING btree (tipo_documento);
 E   DROP INDEX test_ladm_valuation_model.snr_titular_tipo_documento_idx;
       test_ladm_valuation_model         postgres    false    282            �"           1259    579507    snr_titular_tipo_persona_idx    INDEX     o   CREATE INDEX snr_titular_tipo_persona_idx ON test_ladm_valuation_model.snr_titular USING btree (tipo_persona);
 C   DROP INDEX test_ladm_valuation_model.snr_titular_tipo_persona_idx;
       test_ladm_valuation_model         postgres    false    282            E$           1259    582031 &   t_ili2db_attrname_sqlname_colowner_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_sqlname_colowner_key ON test_ladm_valuation_model.t_ili2db_attrname USING btree (sqlname, colowner);
 M   DROP INDEX test_ladm_valuation_model.t_ili2db_attrname_sqlname_colowner_key;
       test_ladm_valuation_model         postgres    false    405    405            �#           1259    579972    t_ili2db_basket_dataset_idx    INDEX     m   CREATE INDEX t_ili2db_basket_dataset_idx ON test_ladm_valuation_model.t_ili2db_basket USING btree (dataset);
 B   DROP INDEX test_ladm_valuation_model.t_ili2db_basket_dataset_idx;
       test_ladm_valuation_model         postgres    false    321            �#           1259    582029     t_ili2db_dataset_datasetname_key    INDEX     ~   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_ladm_valuation_model.t_ili2db_dataset USING btree (datasetname);
 G   DROP INDEX test_ladm_valuation_model.t_ili2db_dataset_datasetname_key;
       test_ladm_valuation_model         postgres    false    322            �#           1259    582030 '   t_ili2db_model_iliversion_modelname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_iliversion_modelname_key ON test_ladm_valuation_model.t_ili2db_model USING btree (iliversion, modelname);
 N   DROP INDEX test_ladm_valuation_model.t_ili2db_model_iliversion_modelname_key;
       test_ladm_valuation_model         postgres    false    326    326            ,%           2606    581970 D   av_tablacalificacionconstruccion av_tablacalifccncnstrccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_tablacalificacionconstruccion
    ADD CONSTRAINT av_tablacalifccncnstrccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_ladm_valuation_model.av_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_tablacalificacionconstruccion DROP CONSTRAINT av_tablacalifccncnstrccion_uso_fkey;
       test_ladm_valuation_model       postgres    false    315    9190    358            -%           2606    581975 E   av_tipologiaconstruccion av_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_tipologiaconstruccion
    ADD CONSTRAINT av_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_ladm_valuation_model.av_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_tipologiaconstruccion DROP CONSTRAINT av_tipologiaconstruccion_tipo_tipologia_fkey;
       test_ladm_valuation_model       postgres    false    380    9234    316            .%           2606    581982 O   av_zonahomogeneafisicarural av_zonahomogeneafisicarral_disponibilidad_agua_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicarural
    ADD CONSTRAINT av_zonahomogeneafisicarral_disponibilidad_agua_fkey FOREIGN KEY (disponibilidad_agua) REFERENCES test_ladm_valuation_model.av_disponibilidadaguatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicarural DROP CONSTRAINT av_zonahomogeneafisicarral_disponibilidad_agua_fkey;
       test_ladm_valuation_model       postgres    false    9140    317    333            /%           2606    581987 K   av_zonahomogeneafisicarural av_zonahomogeneafisicarral_influencia_vial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicarural
    ADD CONSTRAINT av_zonahomogeneafisicarral_influencia_vial_fkey FOREIGN KEY (influencia_vial) REFERENCES test_ladm_valuation_model.av_influenciavialruraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicarural DROP CONSTRAINT av_zonahomogeneafisicarral_influencia_vial_fkey;
       test_ladm_valuation_model       postgres    false    9274    317    400            0%           2606    581992 L   av_zonahomogeneafisicarural av_zonahomogeneafisicarral_uso_actual_suelo_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicarural
    ADD CONSTRAINT av_zonahomogeneafisicarral_uso_actual_suelo_fkey FOREIGN KEY (uso_actual_suelo) REFERENCES test_ladm_valuation_model.av_usosueloruraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicarural DROP CONSTRAINT av_zonahomogeneafisicarral_uso_actual_suelo_fkey;
       test_ladm_valuation_model       postgres    false    317    354    9182            1%           2606    582002 L   av_zonahomogeneafisicaurbana av_zonahomogeneafisicrbana_influencia_vial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicrbana_influencia_vial_fkey FOREIGN KEY (influencia_vial) REFERENCES test_ladm_valuation_model.av_influenciavialurbanatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicrbana_influencia_vial_fkey;
       test_ladm_valuation_model       postgres    false    318    9174    350            2%           2606    582007 M   av_zonahomogeneafisicaurbana av_zonahomogeneafisicrbana_servicio_publico_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicrbana_servicio_publico_fkey FOREIGN KEY (servicio_publico) REFERENCES test_ladm_valuation_model.av_serviciospublicostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicrbana_servicio_publico_fkey;
       test_ladm_valuation_model       postgres    false    9226    376    318            3%           2606    582017 V   av_zonahomogeneafisicaurbana av_zonahomogeneafisicrbana_tipificacion_construccion_fkey    FK CONSTRAINT     '  ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicrbana_tipificacion_construccion_fkey FOREIGN KEY (tipificacion_construccion) REFERENCES test_ladm_valuation_model.av_tipificacionconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicrbana_tipificacion_construccion_fkey;
       test_ladm_valuation_model       postgres    false    318    9160    343            4%           2606    581997 G   av_zonahomogeneafisicaurbana av_zonahomogeneafisicrbana_topografia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicrbana_topografia_fkey FOREIGN KEY (topografia) REFERENCES test_ladm_valuation_model.av_topografiazonatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicrbana_topografia_fkey;
       test_ladm_valuation_model       postgres    false    318    9200    363            5%           2606    582012 M   av_zonahomogeneafisicaurbana av_zonahomogeneafisicrbana_uso_actual_suelo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicrbana_uso_actual_suelo_fkey FOREIGN KEY (uso_actual_suelo) REFERENCES test_ladm_valuation_model.av_usosuelourbanotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicrbana_uso_actual_suelo_fkey;
       test_ladm_valuation_model       postgres    false    9264    318    395            H$           2606    580747 E   cc_metodooperacion cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey FOREIGN KEY (col_transformacion_transformacion) REFERENCES test_ladm_valuation_model.col_transformacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey;
       test_ladm_valuation_model       postgres    false    8690    226    230            I$           2606    580758 5   col_areavalor col_areavalor_lc_construccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_construccion_area_fkey FOREIGN KEY (lc_construccion_area) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor DROP CONSTRAINT col_areavalor_lc_construccion_area_fkey;
       test_ladm_valuation_model       postgres    false    227    8932    287            J$           2606    580768 ;   col_areavalor col_areavalor_lc_servidumbretransito_rea_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey FOREIGN KEY (lc_servidumbretransito_area) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor DROP CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey;
       test_ladm_valuation_model       postgres    false    9075    313    227            K$           2606    580763 0   col_areavalor col_areavalor_lc_terreno_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_terreno_area_fkey FOREIGN KEY (lc_terreno_area) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor DROP CONSTRAINT col_areavalor_lc_terreno_area_fkey;
       test_ladm_valuation_model       postgres    false    227    9028    305            L$           2606    580773 ;   col_areavalor col_areavalor_lc_unidadconstruccion_area_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey FOREIGN KEY (lc_unidadconstruccion_area) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor DROP CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey;
       test_ladm_valuation_model       postgres    false    227    9081    314            M$           2606    580752 %   col_areavalor col_areavalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor
    ADD CONSTRAINT col_areavalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_valuation_model.col_areatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_valuation_model.col_areavalor DROP CONSTRAINT col_areavalor_tipo_fkey;
       test_ladm_valuation_model       postgres    false    9206    366    227            �$           2606    581211 Q   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     %  ALTER TABLE ONLY test_ladm_valuation_model.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_valuation_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_valuation_model       postgres    false    8927    254    286            �$           2606    581206 O   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_valuation_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey;
       test_ladm_valuation_model       postgres    false    8974    254    296            �$           2606    581216 =   col_baunitcomointeresado col_baunitcomointeresado_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_unidad_fkey;
       test_ladm_valuation_model       postgres    false    301    254    8994            �$           2606    581051 6   col_baunitfuente col_baunitfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_valuation_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitfuente DROP CONSTRAINT col_baunitfuente_fuente_espacial_fkey;
       test_ladm_valuation_model       postgres    false    8964    244    294            �$           2606    581056 -   col_baunitfuente col_baunitfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_valuation_model.col_baunitfuente DROP CONSTRAINT col_baunitfuente_unidad_fkey;
       test_ladm_valuation_model       postgres    false    8994    301    244            �$           2606    581066 $   col_cclfuente col_cclfuente_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_cclfuente
    ADD CONSTRAINT col_cclfuente_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_valuation_model.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_valuation_model.col_cclfuente DROP CONSTRAINT col_cclfuente_ccl_fkey;
       test_ladm_valuation_model       postgres    false    8983    298    246            �$           2606    581071 0   col_cclfuente col_cclfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_cclfuente
    ADD CONSTRAINT col_cclfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_valuation_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_valuation_model.col_cclfuente DROP CONSTRAINT col_cclfuente_fuente_espacial_fkey;
       test_ladm_valuation_model       postgres    false    8964    294    246            �$           2606    581146 .   col_clfuente col_clfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_clfuente
    ADD CONSTRAINT col_clfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_valuation_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_valuation_model.col_clfuente DROP CONSTRAINT col_clfuente_fuente_espacial_fkey;
       test_ladm_valuation_model       postgres    false    294    250    8964            �$           2606    581101 "   col_masccl col_masccl_ccl_mas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_masccl
    ADD CONSTRAINT col_masccl_ccl_mas_fkey FOREIGN KEY (ccl_mas) REFERENCES test_ladm_valuation_model.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_valuation_model.col_masccl DROP CONSTRAINT col_masccl_ccl_mas_fkey;
       test_ladm_valuation_model       postgres    false    248    298    8983            �$           2606    581121 1   col_masccl col_masccl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_valuation_model.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    8932    287    248            �$           2606    581111 5   col_masccl col_masccl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_valuation_model       postgres    false    248    313    9075            �$           2606    581106 ,   col_masccl col_masccl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_valuation_model.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey;
       test_ladm_valuation_model       postgres    false    248    305    9028            �$           2606    581116 5   col_masccl col_masccl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_valuation_model       postgres    false    9081    248    314            �$           2606    581186 /   col_mascl col_mascl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_valuation_model.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    252    287    8932            �$           2606    581176 3   col_mascl col_mascl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_valuation_model.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_valuation_model       postgres    false    313    252    9075            �$           2606    581171 *   col_mascl col_mascl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_valuation_model.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey;
       test_ladm_valuation_model       postgres    false    305    252    9028            �$           2606    581181 3   col_mascl col_mascl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_valuation_model.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_valuation_model       postgres    false    9081    314    252            �$           2606    581076 (   col_menosccl col_menosccl_ccl_menos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl
    ADD CONSTRAINT col_menosccl_ccl_menos_fkey FOREIGN KEY (ccl_menos) REFERENCES test_ladm_valuation_model.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl DROP CONSTRAINT col_menosccl_ccl_menos_fkey;
       test_ladm_valuation_model       postgres    false    298    247    8983            �$           2606    581096 7   col_menosccl col_menosccl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    247    287    8932            �$           2606    581086 9   col_menosccl col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_valuation_model       postgres    false    9075    247    313            �$           2606    581081 2   col_menosccl col_menosccl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey;
       test_ladm_valuation_model       postgres    false    9028    305    247            �$           2606    581091 9   col_menosccl col_menosccl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_valuation_model       postgres    false    247    314    9081            �$           2606    581166 5   col_menoscl col_menoscl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    8932    251    287            �$           2606    581156 7   col_menoscl col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_valuation_model       postgres    false    9075    313    251            �$           2606    581151 0   col_menoscl col_menoscl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_valuation_model.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey;
       test_ladm_valuation_model       postgres    false    305    9028    251            �$           2606    581161 7   col_menoscl col_menoscl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_valuation_model       postgres    false    251    314    9081            �$           2606    581261 )   col_miembros col_miembros_agrupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_miembros
    ADD CONSTRAINT col_miembros_agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES test_ladm_valuation_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_valuation_model.col_miembros DROP CONSTRAINT col_miembros_agrupacion_fkey;
       test_ladm_valuation_model       postgres    false    257    286    8927            �$           2606    581256 9   col_miembros col_miembros_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_valuation_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_valuation_model       postgres    false    286    8927    257            �$           2606    581251 7   col_miembros col_miembros_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_valuation_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_interesado_fkey;
       test_ladm_valuation_model       postgres    false    257    8974    296            �$           2606    581141 "   col_puntoccl col_puntoccl_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_puntoccl
    ADD CONSTRAINT col_puntoccl_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_valuation_model.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_valuation_model.col_puntoccl DROP CONSTRAINT col_puntoccl_ccl_fkey;
       test_ladm_valuation_model       postgres    false    249    8983    298            �$           2606    581126 4   col_puntoccl col_puntoccl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_valuation_model.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_valuation_model.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey;
       test_ladm_valuation_model       postgres    false    249    302    8999            �$           2606    581136 9   col_puntoccl col_puntoccl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_valuation_model.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey;
       test_ladm_valuation_model       postgres    false    309    249    9051            �$           2606    581131 4   col_puntoccl col_puntoccl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_valuation_model.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_valuation_model.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey;
       test_ladm_valuation_model       postgres    false    249    303    9012            �$           2606    581191 2   col_puntocl col_puntocl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_valuation_model.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_valuation_model.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey;
       test_ladm_valuation_model       postgres    false    8999    302    253            �$           2606    581201 7   col_puntocl col_puntocl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_valuation_model.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_valuation_model.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey;
       test_ladm_valuation_model       postgres    false    9051    253    309            �$           2606    581196 2   col_puntocl col_puntocl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_valuation_model.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_valuation_model.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey;
       test_ladm_valuation_model       postgres    false    9012    303    253            {$           2606    581006 4   col_puntofuente col_puntofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_puntofuente
    ADD CONSTRAINT col_puntofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_valuation_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_valuation_model.col_puntofuente DROP CONSTRAINT col_puntofuente_fuente_espacial_fkey;
       test_ladm_valuation_model       postgres    false    242    8964    294            |$           2606    581011 :   col_puntofuente col_puntofuente_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_valuation_model.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_valuation_model.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey;
       test_ladm_valuation_model       postgres    false    8999    302    242            }$           2606    581021 ?   col_puntofuente col_puntofuente_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_valuation_model.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_valuation_model.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey;
       test_ladm_valuation_model       postgres    false    9051    309    242            ~$           2606    581016 :   col_puntofuente col_puntofuente_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_valuation_model.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_valuation_model.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey;
       test_ladm_valuation_model       postgres    false    9012    303    242            x$           2606    580991 @   col_relacionfuente col_relacionfuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_valuation_model.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_valuation_model.col_relacionfuente DROP CONSTRAINT col_relacionfuente_fuente_administrativa_fkey;
       test_ladm_valuation_model       postgres    false    8959    240    293            �$           2606    581061 K   col_relacionfuenteuespacial col_relacionfuenteuespcial_fuente_espacial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_valuation_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey;
       test_ladm_valuation_model       postgres    false    294    8964    245            �$           2606    581221 F   col_responsablefuente col_responsablefuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_valuation_model.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_responsablefuente DROP CONSTRAINT col_responsablefuente_fuente_administrativa_fkey;
       test_ladm_valuation_model       postgres    false    8959    293    255            �$           2606    581231 K   col_responsablefuente col_responsablefuente_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_valuation_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_valuation_model       postgres    false    255    8927    286            �$           2606    581226 I   col_responsablefuente col_responsablefuente_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_valuation_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey;
       test_ladm_valuation_model       postgres    false    296    8974    255            p$           2606    580951 6   col_rrrfuente col_rrrfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_valuation_model.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_valuation_model.col_rrrfuente DROP CONSTRAINT col_rrrfuente_fuente_administrativa_fkey;
       test_ladm_valuation_model       postgres    false    8959    238    293            q$           2606    580961 /   col_rrrfuente col_rrrfuente_rrr_lc_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey FOREIGN KEY (rrr_lc_derecho) REFERENCES test_ladm_valuation_model.lc_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_valuation_model.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey;
       test_ladm_valuation_model       postgres    false    8947    238    290            r$           2606    580956 3   col_rrrfuente col_rrrfuente_rrr_lc_restriccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey FOREIGN KEY (rrr_lc_restriccion) REFERENCES test_ladm_valuation_model.lc_restriccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_valuation_model.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey;
       test_ladm_valuation_model       postgres    false    9022    238    304            �$           2606    581236 <   col_topografofuente col_topografofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_topografofuente
    ADD CONSTRAINT col_topografofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_valuation_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_valuation_model.col_topografofuente DROP CONSTRAINT col_topografofuente_fuente_espacial_fkey;
       test_ladm_valuation_model       postgres    false    8964    256    294            �$           2606    581246 G   col_topografofuente col_topografofuente_topografo_lc_agrpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey FOREIGN KEY (topografo_lc_agrupacioninteresados) REFERENCES test_ladm_valuation_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey;
       test_ladm_valuation_model       postgres    false    256    8927    286            �$           2606    581241 D   col_topografofuente col_topografofuente_topografo_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey FOREIGN KEY (topografo_lc_interesado) REFERENCES test_ladm_valuation_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey;
       test_ladm_valuation_model       postgres    false    296    8974    256            [$           2606    580845 E   col_transformacion col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey FOREIGN KEY (lc_puntocontrol_transformacion_y_resultado) REFERENCES test_ladm_valuation_model.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey;
       test_ladm_valuation_model       postgres    false    8999    230    302            \$           2606    580850 E   col_transformacion col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolindero_transformacion_y_resultado) REFERENCES test_ladm_valuation_model.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey;
       test_ladm_valuation_model       postgres    false    303    230    9012            ]$           2606    580855 E   col_transformacion col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey    FK CONSTRAINT     #  ALTER TABLE ONLY test_ladm_valuation_model.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolevantamiento_transformacion_y_resultado) REFERENCES test_ladm_valuation_model.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey;
       test_ladm_valuation_model       postgres    false    230    9051    309            s$           2606    580986 %   col_uebaunit col_uebaunit_baunit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_baunit_fkey FOREIGN KEY (baunit) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit DROP CONSTRAINT col_uebaunit_baunit_fkey;
       test_ladm_valuation_model       postgres    false    8994    301    239            t$           2606    580981 1   col_uebaunit col_uebaunit_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    239    8932    287            u$           2606    580971 8   col_uebaunit col_uebaunit_ue_lc_servidumbretransito_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey;
       test_ladm_valuation_model       postgres    false    9075    313    239            v$           2606    580966 ,   col_uebaunit col_uebaunit_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_terreno_fkey;
       test_ladm_valuation_model       postgres    false    305    239    9028            w$           2606    580976 7   col_uebaunit col_uebaunit_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey;
       test_ladm_valuation_model       postgres    false    9081    314    239            $           2606    581046 .   col_uefuente col_uefuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente
    ADD CONSTRAINT col_uefuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_valuation_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente DROP CONSTRAINT col_uefuente_fuente_espacial_fkey;
       test_ladm_valuation_model       postgres    false    243    8964    294            �$           2606    581041 1   col_uefuente col_uefuente_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    243    8932    287            �$           2606    581031 8   col_uefuente col_uefuente_ue_lc_servidumbretransito_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey;
       test_ladm_valuation_model       postgres    false    243    9075    313            �$           2606    581026 ,   col_uefuente col_uefuente_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_terreno_fkey;
       test_ladm_valuation_model       postgres    false    9028    243    305            �$           2606    581036 7   col_uefuente col_uefuente_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey;
       test_ladm_valuation_model       postgres    false    9081    314    243            l$           2606    580946 6   col_ueuegrupo col_ueuegrupo_parte_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey FOREIGN KEY (parte_lc_construccion) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_valuation_model.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    287    8932    237            m$           2606    580936 ;   col_ueuegrupo col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey FOREIGN KEY (parte_lc_servidumbretransito) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey;
       test_ladm_valuation_model       postgres    false    313    237    9075            n$           2606    580931 1   col_ueuegrupo col_ueuegrupo_parte_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey FOREIGN KEY (parte_lc_terreno) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_valuation_model.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey;
       test_ladm_valuation_model       postgres    false    237    9028    305            o$           2606    580941 ;   col_ueuegrupo col_ueuegrupo_parte_lc_unidadconstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey FOREIGN KEY (parte_lc_unidadconstruccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey;
       test_ladm_valuation_model       postgres    false    314    237    9081            y$           2606    580996 <   col_unidadfuente col_unidadfuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_valuation_model.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_valuation_model.col_unidadfuente DROP CONSTRAINT col_unidadfuente_fuente_administrativa_fkey;
       test_ladm_valuation_model       postgres    false    293    241    8959            z$           2606    581001 -   col_unidadfuente col_unidadfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_valuation_model.col_unidadfuente DROP CONSTRAINT col_unidadfuente_unidad_fkey;
       test_ladm_valuation_model       postgres    false    8994    301    241            g$           2606    580911 >   col_volumenvalor col_volumenvalor_lc_construccion_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey FOREIGN KEY (lc_construccion_volumen) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey;
       test_ladm_valuation_model       postgres    false    236    287    8932            h$           2606    580921 A   col_volumenvalor col_volumenvalor_lc_servidumbretranst_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey FOREIGN KEY (lc_servidumbretransito_volumen) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey;
       test_ladm_valuation_model       postgres    false    9075    313    236            i$           2606    580916 9   col_volumenvalor col_volumenvalor_lc_terreno_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey FOREIGN KEY (lc_terreno_volumen) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey;
       test_ladm_valuation_model       postgres    false    9028    236    305            j$           2606    580926 A   col_volumenvalor col_volumenvalor_lc_unidadconstruccin_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey FOREIGN KEY (lc_unidadconstruccion_volumen) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey;
       test_ladm_valuation_model       postgres    false    9081    236    314            k$           2606    580906 +   col_volumenvalor col_volumenvalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_valuation_model.col_volumentipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_valuation_model.col_volumenvalor DROP CONSTRAINT col_volumenvalor_tipo_fkey;
       test_ladm_valuation_model       postgres    false    361    9196    236            d$           2606    580900 5   extarchivo extarchivo_lc_fuenteespacl_xt_rchv_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extarchivo
    ADD CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteespacial_ext_archivo_id) REFERENCES test_ladm_valuation_model.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.extarchivo DROP CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey;
       test_ladm_valuation_model       postgres    false    294    8964    235            e$           2606    580895 5   extarchivo extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_valuation_model.extarchivo
    ADD CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteadministrtiva_ext_archivo_id) REFERENCES test_ladm_valuation_model.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.extarchivo DROP CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey;
       test_ladm_valuation_model       postgres    false    8959    293    235            f$           2606    580890 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_ladm_valuation_model.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
       test_ladm_valuation_model       postgres    false    280    235    8904            N$           2606    580783 2   extdireccion extdireccion_clase_via_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_clase_via_principal_fkey FOREIGN KEY (clase_via_principal) REFERENCES test_ladm_valuation_model.extdireccion_clase_via_principal(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_clase_via_principal_fkey;
       test_ladm_valuation_model       postgres    false    386    228    9246            O$           2606    580803 9   extdireccion extdireccion_extinteresado_ext_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey FOREIGN KEY (extinteresado_ext_direccion_id) REFERENCES test_ladm_valuation_model.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey;
       test_ladm_valuation_model       postgres    false    228    8702    233            P$           2606    580798 9   extdireccion extdireccion_extndddfccnfsc_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey FOREIGN KEY (extunidadedificcnfsica_ext_direccion_id) REFERENCES test_ladm_valuation_model.extunidadedificacionfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey;
       test_ladm_valuation_model       postgres    false    231    8692    228            Q$           2606    580808 9   extdireccion extdireccion_lc_construccin_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey FOREIGN KEY (lc_construccion_ext_direccion_id) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey;
       test_ladm_valuation_model       postgres    false    287    8932    228            R$           2606    580828 9   extdireccion extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey FOREIGN KEY (lc_unidadconstruccion_ext_direccion_id) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey;
       test_ladm_valuation_model       postgres    false    314    9081    228            S$           2606    580813 2   extdireccion extdireccion_lc_predio_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_lc_predio_direccion_fkey FOREIGN KEY (lc_predio_direccion) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_lc_predio_direccion_fkey;
       test_ladm_valuation_model       postgres    false    228    8994    301            T$           2606    580823 9   extdireccion extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey FOREIGN KEY (lc_servidumbretransito_ext_direccion_id) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey;
       test_ladm_valuation_model       postgres    false    228    313    9075            U$           2606    580818 9   extdireccion extdireccion_lc_terreno_ext_direccin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey FOREIGN KEY (lc_terreno_ext_direccion_id) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey;
       test_ladm_valuation_model       postgres    false    228    305    9028            V$           2606    580788 ,   extdireccion extdireccion_sector_ciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_sector_ciudad_fkey FOREIGN KEY (sector_ciudad) REFERENCES test_ladm_valuation_model.extdireccion_sector_ciudad(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_sector_ciudad_fkey;
       test_ladm_valuation_model       postgres    false    228    393    9260            W$           2606    580793 ,   extdireccion extdireccion_sector_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_sector_predio_fkey FOREIGN KEY (sector_predio) REFERENCES test_ladm_valuation_model.extdireccion_sector_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_sector_predio_fkey;
       test_ladm_valuation_model       postgres    false    331    228    9136            X$           2606    580778 -   extdireccion extdireccion_tipo_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion
    ADD CONSTRAINT extdireccion_tipo_direccion_fkey FOREIGN KEY (tipo_direccion) REFERENCES test_ladm_valuation_model.extdireccion_tipo_direccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_valuation_model.extdireccion DROP CONSTRAINT extdireccion_tipo_direccion_fkey;
       test_ladm_valuation_model       postgres    false    9266    396    228            a$           2606    580875 ;   extinteresado extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.extinteresado
    ADD CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey FOREIGN KEY (extredserviciosfisica_ext_interesado_administrador_id) REFERENCES test_ladm_valuation_model.extredserviciosfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.extinteresado DROP CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey;
       test_ladm_valuation_model       postgres    false    234    233    8704            b$           2606    580880 ;   extinteresado extinteresado_lc_agrupacionntrsds_xt_pid_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_valuation_model.extinteresado
    ADD CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey FOREIGN KEY (lc_agrupacionintersdos_ext_pid) REFERENCES test_ladm_valuation_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.extinteresado DROP CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey;
       test_ladm_valuation_model       postgres    false    233    8927    286            c$           2606    580885 6   extinteresado extinteresado_lc_interesado_ext_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.extinteresado
    ADD CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey FOREIGN KEY (lc_interesado_ext_pid) REFERENCES test_ladm_valuation_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_valuation_model.extinteresado DROP CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey;
       test_ladm_valuation_model       postgres    false    296    233    8974            Y$           2606    580835 1   fraccion fraccion_col_miembros_participacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.fraccion
    ADD CONSTRAINT fraccion_col_miembros_participacion_fkey FOREIGN KEY (col_miembros_participacion) REFERENCES test_ladm_valuation_model.col_miembros(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_valuation_model.fraccion DROP CONSTRAINT fraccion_col_miembros_participacion_fkey;
       test_ladm_valuation_model       postgres    false    257    8825    229            Z$           2606    580840 1   fraccion fraccion_lc_predio_copropidd_cfcnte_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_valuation_model.fraccion
    ADD CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey FOREIGN KEY (lc_predio_copropiedad_coeficiente) REFERENCES test_ladm_valuation_model.lc_predio_copropiedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_valuation_model.fraccion DROP CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey;
       test_ladm_valuation_model       postgres    false    229    311    9065            �$           2606    581267 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_ladm_valuation_model.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
       test_ladm_valuation_model       postgres    false    8881    259    274            �$           2606    581283 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_valuation_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_valuation_model.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
       test_ladm_valuation_model       postgres    false    263    8888    276            �$           2606    581272 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_valuation_model.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_valuation_model.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
       test_ladm_valuation_model       postgres    false    373    263    9220            �$           2606    581362 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_ladm_valuation_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_valuation_model.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
       test_ladm_valuation_model       postgres    false    277    8888    276            �$           2606    581367 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_ladm_valuation_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_valuation_model.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
       test_ladm_valuation_model       postgres    false    277    8888    276            �$           2606    581295 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_valuation_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_valuation_model.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
       test_ladm_valuation_model       postgres    false    276    8888    264            �$           2606    581305 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_ladm_valuation_model.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
       test_ladm_valuation_model       postgres    false    8848    265    264            �$           2606    581310 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_valuation_model.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_ladm_valuation_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
       test_ladm_valuation_model       postgres    false    266    276    8888            �$           2606    581315 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_ladm_valuation_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_valuation_model.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
       test_ladm_valuation_model       postgres    false    276    8888    267            �$           2606    581351 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_valuation_model.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
       test_ladm_valuation_model       postgres    false    9170    276    348            �$           2606    581356 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_ladm_valuation_model.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_valuation_model.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
       test_ladm_valuation_model       postgres    false    9150    338    276            �$           2606    581320 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_valuation_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
       test_ladm_valuation_model       postgres    false    276    8888    270            �$           2606    581328 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_valuation_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_valuation_model.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
       test_ladm_valuation_model       postgres    false    8888    273    276            �$           2606    581346 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_ladm_valuation_model.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_valuation_model.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    263    274    8844            �$           2606    581333 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_valuation_model.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_valuation_model.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_valuation_model       postgres    false    373    9220    274            F$           2606    580735 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_ladm_valuation_model.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
       test_ladm_valuation_model       postgres    false    223    8650    222            G$           2606    580740 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_ladm_valuation_model.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
       test_ladm_valuation_model       postgres    false    225    224    8656            ^$           2606    580870 &   imagen imagen_extinteresado_firma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.imagen
    ADD CONSTRAINT imagen_extinteresado_firma_fkey FOREIGN KEY (extinteresado_firma) REFERENCES test_ladm_valuation_model.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_valuation_model.imagen DROP CONSTRAINT imagen_extinteresado_firma_fkey;
       test_ladm_valuation_model       postgres    false    233    8702    232            _$           2606    580865 +   imagen imagen_extinteresado_fotografia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.imagen
    ADD CONSTRAINT imagen_extinteresado_fotografia_fkey FOREIGN KEY (extinteresado_fotografia) REFERENCES test_ladm_valuation_model.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_valuation_model.imagen DROP CONSTRAINT imagen_extinteresado_fotografia_fkey;
       test_ladm_valuation_model       postgres    false    8702    233    232            `$           2606    580860 -   imagen imagen_extinteresado_huell_dctlar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.imagen
    ADD CONSTRAINT imagen_extinteresado_huell_dctlar_fkey FOREIGN KEY (extinteresado_huella_dactilar) REFERENCES test_ladm_valuation_model.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_valuation_model.imagen DROP CONSTRAINT imagen_extinteresado_huell_dctlar_fkey;
       test_ladm_valuation_model       postgres    false    233    8702    232            �$           2606    581438 ;   ini_predioinsumos ini_predioinsumos_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_valuation_model.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey;
       test_ladm_valuation_model       postgres    false    8888    276    285            �$           2606    581443 <   ini_predioinsumos ini_predioinsumos_snr_predio_juridico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey FOREIGN KEY (snr_predio_juridico) REFERENCES test_ladm_valuation_model.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_valuation_model.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey;
       test_ladm_valuation_model       postgres    false    285    8915    283            �$           2606    581433 <   ini_predioinsumos ini_predioinsumos_tipo_emparejamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey FOREIGN KEY (tipo_emparejamiento) REFERENCES test_ladm_valuation_model.ini_emparejamientotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_valuation_model.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey;
       test_ladm_valuation_model       postgres    false    9178    285    352            �$           2606    581448 ;   lc_agrupacioninteresados lc_agrupacioninteresados_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_valuation_model.col_grupointeresadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_tipo_fkey;
       test_ladm_valuation_model       postgres    false    388    9250    286            %           2606    581779 R   lc_calificacionconvencional lc_calificacionconvencinal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey;
       test_ladm_valuation_model       postgres    false    9081    314    306            	%           2606    581773 J   lc_calificacionconvencional lc_calificacionconvencinal_tipo_calificar_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey FOREIGN KEY (tipo_calificar) REFERENCES test_ladm_valuation_model.lc_calificartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey;
       test_ladm_valuation_model       postgres    false    381    306    9236            
%           2606    581789 T   lc_calificacionnoconvencional lc_calificacionnoconvncnal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey;
       test_ladm_valuation_model       postgres    false    307    9081    314            %           2606    581784 H   lc_calificacionnoconvencional lc_calificacionnoconvncnal_tipo_anexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey FOREIGN KEY (tipo_anexo) REFERENCES test_ladm_valuation_model.lc_anexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey;
       test_ladm_valuation_model       postgres    false    335    307    9144            �$           2606    581471 .   lc_construccion lc_construccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccion
    ADD CONSTRAINT lc_construccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_valuation_model.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccion DROP CONSTRAINT lc_construccion_dimension_fkey;
       test_ladm_valuation_model       postgres    false    287    9198    362            �$           2606    581476 8   lc_construccion lc_construccion_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccion
    ADD CONSTRAINT lc_construccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_valuation_model.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccion DROP CONSTRAINT lc_construccion_relacion_superficie_fkey;
       test_ladm_valuation_model       postgres    false    351    287    9176            �$           2606    581453 6   lc_construccion lc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_valuation_model.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccion DROP CONSTRAINT lc_construccion_tipo_construccion_fkey;
       test_ladm_valuation_model       postgres    false    287    9272    399            �$           2606    581458 1   lc_construccion lc_construccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_valuation_model.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_valuation_model.lc_construccion DROP CONSTRAINT lc_construccion_tipo_dominio_fkey;
       test_ladm_valuation_model       postgres    false    287    402    9278            �$           2606    581491 =   lc_contactovisita lc_contactovisita_lc_datos_adicionales_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey FOREIGN KEY (lc_datos_adicionales) REFERENCES test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_valuation_model.lc_contactovisita DROP CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey;
       test_ladm_valuation_model       postgres    false    308    288    9039            �$           2606    581486 <   lc_contactovisita lc_contactovisita_relacion_con_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_relacion_con_predio_fkey FOREIGN KEY (relacion_con_predio) REFERENCES test_ladm_valuation_model.lc_relacionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_valuation_model.lc_contactovisita DROP CONSTRAINT lc_contactovisita_relacion_con_predio_fkey;
       test_ladm_valuation_model       postgres    false    288    9242    384            �$           2606    581481 C   lc_contactovisita lc_contactovisita_tipo_documento_quien_tndio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey FOREIGN KEY (tipo_documento_quien_atendio) REFERENCES test_ladm_valuation_model.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_contactovisita DROP CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey;
       test_ladm_valuation_model       postgres    false    9194    360    288            �$           2606    581504 8   lc_datosphcondominio lc_datosphcondominio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_lc_predio_fkey;
       test_ladm_valuation_model       postgres    false    301    289    8994            %           2606    581810 Y   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_categoria_suelo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey FOREIGN KEY (categoria_suelo) REFERENCES test_ladm_valuation_model.lc_categoriasuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey;
       test_ladm_valuation_model       postgres    false    378    308    9230            %           2606    581805 U   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_clase_suelo_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey FOREIGN KEY (clase_suelo) REFERENCES test_ladm_valuation_model.lc_clasesuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey;
       test_ladm_valuation_model       postgres    false    356    9186    308            %           2606    581800 _   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_destinacion_economica_fkey    FK CONSTRAINT     (  ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey FOREIGN KEY (destinacion_economica) REFERENCES test_ladm_valuation_model.lc_destinacioneconomicatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey;
       test_ladm_valuation_model       postgres    false    9248    387    308            %           2606    581825 S   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey;
       test_ladm_valuation_model       postgres    false    8994    301    308            %           2606    581795 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey    FK CONSTRAINT     D  ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey FOREIGN KEY (procedimiento_catastral_registral) REFERENCES test_ladm_valuation_model.lc_procedimientocatastralregistraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey;
       test_ladm_valuation_model       postgres    false    9240    308    383            %           2606    581820 Z   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_resultado_visita_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey FOREIGN KEY (resultado_visita) REFERENCES test_ladm_valuation_model.lc_resultadovisitatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey;
       test_ladm_valuation_model       postgres    false    9276    401    308            %           2606    581815 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey    FK CONSTRAINT     1  ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey FOREIGN KEY (tipo_documento_reconocedor) REFERENCES test_ladm_valuation_model.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey;
       test_ladm_valuation_model       postgres    false    360    308    9194            �$           2606    581520 5   lc_derecho lc_derecho_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_valuation_model.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_valuation_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_valuation_model       postgres    false    290    286    8927            �$           2606    581515 3   lc_derecho lc_derecho_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_valuation_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_valuation_model.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_interesado_fkey;
       test_ladm_valuation_model       postgres    false    290    8974    296            �$           2606    581509    lc_derecho lc_derecho_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_derecho
    ADD CONSTRAINT lc_derecho_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_valuation_model.lc_derechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_valuation_model.lc_derecho DROP CONSTRAINT lc_derecho_tipo_fkey;
       test_ladm_valuation_model       postgres    false    330    290    9134            �$           2606    581525 !   lc_derecho lc_derecho_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_derecho
    ADD CONSTRAINT lc_derecho_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_valuation_model.lc_derecho DROP CONSTRAINT lc_derecho_unidad_fkey;
       test_ladm_valuation_model       postgres    false    301    290    8994            �$           2606    581530 O   lc_estructuranovedadfmi lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey    FK CONSTRAINT     3  ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_fmi) REFERENCES test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey;
       test_ladm_valuation_model       postgres    false    308    291    9039            �$           2606    581540 \   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey    FK CONSTRAINT     N  ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_numeros_prediales) REFERENCES test_ladm_valuation_model.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey;
       test_ladm_valuation_model       postgres    false    9039    308    292            �$           2606    581535 N   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_tipo_novedad_fkey    FK CONSTRAINT     !  ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey FOREIGN KEY (tipo_novedad) REFERENCES test_ladm_valuation_model.lc_estructuranovedadnumeropredial_tipo_novedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey;
       test_ladm_valuation_model       postgres    false    357    292    9188            �$           2606    581550 J   lc_fuenteadministrativa lc_fuenteadministrativa_estado_disponibilidad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_valuation_model.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey;
       test_ladm_valuation_model       postgres    false    382    9238    293            �$           2606    581545 9   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_valuation_model.lc_fuenteadministrativatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_fkey;
       test_ladm_valuation_model       postgres    false    336    293    9146            �$           2606    581555 C   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_principal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_valuation_model.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey;
       test_ladm_valuation_model       postgres    false    9212    293    369            �$           2606    581565 >   lc_fuenteespacial lc_fuenteespacial_estado_disponibilidad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_valuation_model.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey;
       test_ladm_valuation_model       postgres    false    294    382    9238            �$           2606    581560 -   lc_fuenteespacial lc_fuenteespacial_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_valuation_model.col_fuenteespacialtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_fkey;
       test_ladm_valuation_model       postgres    false    9252    294    389            �$           2606    581570 7   lc_fuenteespacial lc_fuenteespacial_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_valuation_model.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_principal_fkey;
       test_ladm_valuation_model       postgres    false    9212    294    369            �$           2606    581575 A   lc_grupocalificacion lc_grupocalificacion_clase_calificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey FOREIGN KEY (clase_calificacion) REFERENCES test_ladm_valuation_model.lc_clasecalificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_valuation_model.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey;
       test_ladm_valuation_model       postgres    false    295    344    9162            �$           2606    581580 ;   lc_grupocalificacion lc_grupocalificacion_conservacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_conservacion_fkey FOREIGN KEY (conservacion) REFERENCES test_ladm_valuation_model.lc_estadoconservaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_conservacion_fkey;
       test_ladm_valuation_model       postgres    false    295    9244    385            �$           2606    581586 I   lc_grupocalificacion lc_grupocalificacion_lc_calificacion_convencnal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey FOREIGN KEY (lc_calificacion_convencional) REFERENCES test_ladm_valuation_model.lc_calificacionconvencional(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey;
       test_ladm_valuation_model       postgres    false    306    9033    295            �$           2606    581606 -   lc_interesado lc_interesado_grupo_etnico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesado
    ADD CONSTRAINT lc_interesado_grupo_etnico_fkey FOREIGN KEY (grupo_etnico) REFERENCES test_ladm_valuation_model.lc_grupoetnicotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesado DROP CONSTRAINT lc_interesado_grupo_etnico_fkey;
       test_ladm_valuation_model       postgres    false    296    334    9142            �$           2606    581601 %   lc_interesado lc_interesado_sexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesado
    ADD CONSTRAINT lc_interesado_sexo_fkey FOREIGN KEY (sexo) REFERENCES test_ladm_valuation_model.lc_sexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesado DROP CONSTRAINT lc_interesado_sexo_fkey;
       test_ladm_valuation_model       postgres    false    347    9168    296            �$           2606    581596 /   lc_interesado lc_interesado_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_valuation_model.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesado DROP CONSTRAINT lc_interesado_tipo_documento_fkey;
       test_ladm_valuation_model       postgres    false    296    9194    360            �$           2606    581591 %   lc_interesado lc_interesado_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_valuation_model.lc_interesadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesado DROP CONSTRAINT lc_interesado_tipo_fkey;
       test_ladm_valuation_model       postgres    false    9166    346    296            �$           2606    581611 >   lc_interesadocontacto lc_interesadocontacto_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_lc_interesado_fkey FOREIGN KEY (lc_interesado) REFERENCES test_ladm_valuation_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_valuation_model.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_lc_interesado_fkey;
       test_ladm_valuation_model       postgres    false    296    8974    297            �$           2606    581623 F   lc_objetoconstruccion lc_objetoconstruccion_lc_grupo_calificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey FOREIGN KEY (lc_grupo_calificacion) REFERENCES test_ladm_valuation_model.lc_grupocalificacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey;
       test_ladm_valuation_model       postgres    false    295    8971    299            �$           2606    581617 I   lc_objetoconstruccion lc_objetoconstruccion_tipo_objeto_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey FOREIGN KEY (tipo_objeto_construccion) REFERENCES test_ladm_valuation_model.lc_objetoconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey;
       test_ladm_valuation_model       postgres    false    398    9270    299            �$           2606    581636 G   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey;
       test_ladm_valuation_model       postgres    false    300    8994    301            �$           2606    581628 I   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_tipo_oferta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey FOREIGN KEY (tipo_oferta) REFERENCES test_ladm_valuation_model.lc_ofertatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey;
       test_ladm_valuation_model       postgres    false    392    300    9258            �$           2606    581647 )   lc_predio lc_predio_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio
    ADD CONSTRAINT lc_predio_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_valuation_model.lc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio DROP CONSTRAINT lc_predio_condicion_predio_fkey;
       test_ladm_valuation_model       postgres    false    9262    394    301            %           2606    581893 <   lc_predio_copropiedad lc_predio_copropiedad_copropiedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_copropiedad_fkey FOREIGN KEY (copropiedad) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_copropiedad_fkey;
       test_ladm_valuation_model       postgres    false    301    311    8994            %           2606    581888 7   lc_predio_copropiedad lc_predio_copropiedad_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_predio_fkey FOREIGN KEY (predio) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_predio_fkey;
       test_ladm_valuation_model       postgres    false    8994    301    311             %           2606    581898 N   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_ini_predio_insumos_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey FOREIGN KEY (ini_predio_insumos) REFERENCES test_ladm_valuation_model.ini_predioinsumos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey;
       test_ladm_valuation_model       postgres    false    312    8923    285            !%           2606    581903 E   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey;
       test_ladm_valuation_model       postgres    false    312    8994    301            �$           2606    581642    lc_predio lc_predio_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio
    ADD CONSTRAINT lc_predio_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_valuation_model.lc_prediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY test_ladm_valuation_model.lc_predio DROP CONSTRAINT lc_predio_tipo_fkey;
       test_ladm_valuation_model       postgres    false    9208    301    367            �$           2606    581669 5   lc_puntocontrol lc_puntocontrol_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_valuation_model.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_metodoproduccion_fkey;
       test_ladm_valuation_model       postgres    false    302    391    9256            �$           2606    581664 ;   lc_puntocontrol lc_puntocontrol_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_valuation_model.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey;
       test_ladm_valuation_model       postgres    false    9128    302    327            �$           2606    581652 .   lc_puntocontrol lc_puntocontrol_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_valuation_model.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_puntotipo_fkey;
       test_ladm_valuation_model       postgres    false    9152    302    339            �$           2606    581657 7   lc_puntocontrol lc_puntocontrol_tipo_punto_control_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey FOREIGN KEY (tipo_punto_control) REFERENCES test_ladm_valuation_model.lc_puntocontroltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey;
       test_ladm_valuation_model       postgres    false    302    341    9156            �$           2606    581689 7   lc_puntocontrol lc_puntocontrol_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    8932    287    302            �$           2606    581679 >   lc_puntocontrol lc_puntocontrol_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey;
       test_ladm_valuation_model       postgres    false    313    302    9075            �$           2606    581674 2   lc_puntocontrol lc_puntocontrol_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey;
       test_ladm_valuation_model       postgres    false    9028    305    302            �$           2606    581684 =   lc_puntocontrol lc_puntocontrol_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey;
       test_ladm_valuation_model       postgres    false    9081    314    302            %           2606    581840 C   lc_puntolevantamiento lc_puntolevantamiento_fotoidentificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_valuation_model.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey;
       test_ladm_valuation_model       postgres    false    309    9268    397            %           2606    581852 A   lc_puntolevantamiento lc_puntolevantamiento_metodoproduccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_valuation_model.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey;
       test_ladm_valuation_model       postgres    false    9256    391    309            %           2606    581847 G   lc_puntolevantamiento lc_puntolevantamiento_posicion_interpolacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_valuation_model.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey;
       test_ladm_valuation_model       postgres    false    9128    327    309            %           2606    581830 :   lc_puntolevantamiento lc_puntolevantamiento_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_valuation_model.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_puntotipo_fkey;
       test_ladm_valuation_model       postgres    false    309    339    9152            %           2606    581835 I   lc_puntolevantamiento lc_puntolevantamiento_tipo_punto_levantamiento_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey FOREIGN KEY (tipo_punto_levantamiento) REFERENCES test_ladm_valuation_model.lc_puntolevtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey;
       test_ladm_valuation_model       postgres    false    375    309    9224            %           2606    581872 C   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    8932    309    287            %           2606    581862 J   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey;
       test_ladm_valuation_model       postgres    false    313    9075    309            %           2606    581857 >   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey;
       test_ladm_valuation_model       postgres    false    305    309    9028            %           2606    581867 I   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey;
       test_ladm_valuation_model       postgres    false    9081    314    309            �$           2606    581699 ,   lc_puntolindero lc_puntolindero_acuerdo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_acuerdo_fkey FOREIGN KEY (acuerdo) REFERENCES test_ladm_valuation_model.lc_acuerdotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_acuerdo_fkey;
       test_ladm_valuation_model       postgres    false    371    303    9216            �$           2606    581704 7   lc_puntolindero lc_puntolindero_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_valuation_model.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_fotoidentificacion_fkey;
       test_ladm_valuation_model       postgres    false    9268    397    303            �$           2606    581716 5   lc_puntolindero lc_puntolindero_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_valuation_model.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_metodoproduccion_fkey;
       test_ladm_valuation_model       postgres    false    9256    391    303            �$           2606    581711 ;   lc_puntolindero lc_puntolindero_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_valuation_model.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey;
       test_ladm_valuation_model       postgres    false    327    9128    303            �$           2606    581694 .   lc_puntolindero lc_puntolindero_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_valuation_model.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_puntotipo_fkey;
       test_ladm_valuation_model       postgres    false    339    9152    303            �$           2606    581736 7   lc_puntolindero lc_puntolindero_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    287    8932    303            �$           2606    581726 >   lc_puntolindero lc_puntolindero_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_valuation_model.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey;
       test_ladm_valuation_model       postgres    false    9075    313    303             %           2606    581721 2   lc_puntolindero lc_puntolindero_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_valuation_model.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey;
       test_ladm_valuation_model       postgres    false    9028    305    303            %           2606    581731 =   lc_puntolindero lc_puntolindero_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_valuation_model.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey;
       test_ladm_valuation_model       postgres    false    303    314    9081            %           2606    581751 =   lc_restriccion lc_restriccion_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_valuation_model.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_valuation_model.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_valuation_model       postgres    false    304    286    8927            %           2606    581746 ;   lc_restriccion lc_restriccion_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_valuation_model.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_valuation_model.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey;
       test_ladm_valuation_model       postgres    false    296    304    8974            %           2606    581741 '   lc_restriccion lc_restriccion_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_restriccion
    ADD CONSTRAINT lc_restriccion_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_valuation_model.lc_restricciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_valuation_model.lc_restriccion DROP CONSTRAINT lc_restriccion_tipo_fkey;
       test_ladm_valuation_model       postgres    false    374    304    9222            %           2606    581756 )   lc_restriccion lc_restriccion_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_restriccion
    ADD CONSTRAINT lc_restriccion_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_valuation_model.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_valuation_model.lc_restriccion DROP CONSTRAINT lc_restriccion_unidad_fkey;
       test_ladm_valuation_model       postgres    false    301    304    8994            "%           2606    581909 <   lc_servidumbretransito lc_servidumbretransito_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_valuation_model.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_valuation_model.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_dimension_fkey;
       test_ladm_valuation_model       postgres    false    9198    313    362            #%           2606    581914 F   lc_servidumbretransito lc_servidumbretransito_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_valuation_model.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey;
       test_ladm_valuation_model       postgres    false    9176    313    351            %           2606    581763 $   lc_terreno lc_terreno_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_terreno
    ADD CONSTRAINT lc_terreno_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_valuation_model.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_valuation_model.lc_terreno DROP CONSTRAINT lc_terreno_dimension_fkey;
       test_ladm_valuation_model       postgres    false    362    305    9198            %           2606    581768 .   lc_terreno lc_terreno_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_terreno
    ADD CONSTRAINT lc_terreno_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_valuation_model.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_valuation_model.lc_terreno DROP CONSTRAINT lc_terreno_relacion_superficie_fkey;
       test_ladm_valuation_model       postgres    false    9176    351    305            %           2606    581882 M   lc_tipologiaconstruccion lc_tipologiaconstruccion_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_valuation_model.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey;
       test_ladm_valuation_model       postgres    false    314    310    9081            %           2606    581877 E   lc_tipologiaconstruccion lc_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_ladm_valuation_model.lc_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey;
       test_ladm_valuation_model       postgres    false    9254    310    390            $%           2606    581959 :   lc_unidadconstruccion lc_unidadconstruccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_valuation_model.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_dimension_fkey;
       test_ladm_valuation_model       postgres    false    362    9198    314            %%           2606    581954 @   lc_unidadconstruccion lc_unidadconstruccion_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey FOREIGN KEY (lc_construccion) REFERENCES test_ladm_valuation_model.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey;
       test_ladm_valuation_model       postgres    false    314    8932    287            &%           2606    581964 D   lc_unidadconstruccion lc_unidadconstruccion_relacion_superficie_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_valuation_model.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey;
       test_ladm_valuation_model       postgres    false    9176    314    351            '%           2606    581924 B   lc_unidadconstruccion lc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_valuation_model.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_valuation_model       postgres    false    314    399    9272            (%           2606    581919 =   lc_unidadconstruccion lc_unidadconstruccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_valuation_model.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey;
       test_ladm_valuation_model       postgres    false    402    9278    314            )%           2606    581934 <   lc_unidadconstruccion lc_unidadconstruccion_tipo_planta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey FOREIGN KEY (tipo_planta) REFERENCES test_ladm_valuation_model.lc_construccionplantatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey;
       test_ladm_valuation_model       postgres    false    379    9232    314            *%           2606    581929 I   lc_unidadconstruccion lc_unidadconstruccion_tipo_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey FOREIGN KEY (tipo_unidad_construccion) REFERENCES test_ladm_valuation_model.lc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey;
       test_ladm_valuation_model       postgres    false    314    9202    364            +%           2606    581944 4   lc_unidadconstruccion lc_unidadconstruccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_ladm_valuation_model.lc_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_valuation_model.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_uso_fkey;
       test_ladm_valuation_model       postgres    false    355    314    9184            �$           2606    581373 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_ladm_valuation_model.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_valuation_model.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
       test_ladm_valuation_model       postgres    false    9154    278    340            �$           2606    581378 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_ladm_valuation_model.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_valuation_model.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
       test_ladm_valuation_model       postgres    false    281    278    8907            �$           2606    581383 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_ladm_valuation_model.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_valuation_model.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
       test_ladm_valuation_model       postgres    false    8915    278    283            �$           2606    581388 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT     3  ALTER TABLE ONLY test_ladm_valuation_model.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_ladm_valuation_model.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
       test_ladm_valuation_model       postgres    false    279    283    8915            �$           2606    581393 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_valuation_model.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
       test_ladm_valuation_model       postgres    false    9158    280    342            �$           2606    581398 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_valuation_model.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_valuation_model.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
       test_ladm_valuation_model       postgres    false    9158    281    342            �$           2606    581413 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_ladm_valuation_model.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_valuation_model.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
       test_ladm_valuation_model       postgres    false    283    370    9214            �$           2606    581418 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_valuation_model.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_ladm_valuation_model.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_valuation_model.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
       test_ladm_valuation_model       postgres    false    8904    280    283            �$           2606    581428 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_ladm_valuation_model.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_valuation_model.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
       test_ladm_valuation_model       postgres    false    284    278    8897            �$           2606    581423 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_ladm_valuation_model.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_valuation_model.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
       test_ladm_valuation_model       postgres    false    282    8910    284            �$           2606    581408 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_valuation_model.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_valuation_model.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
       test_ladm_valuation_model       postgres    false    353    282    9180            �$           2606    581403 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_ladm_valuation_model.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_valuation_model.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
       test_ladm_valuation_model       postgres    false    282    332    9138            6%           2606    582024 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_ladm_valuation_model.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_valuation_model.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
       test_ladm_valuation_model       postgres    false    9119    321    322            '&     x����n�0���S�[$�� ���.z
�D�dѓ� ���v�y��rڸI{�I6���O�j9��x
R��z����Z����-�V"o9�G�����[�<��,&�$b��K�̞����cG����'���'��̞�SBu��)U�	�d��sG��<Ab�	l�̄�H�K�'�����r�?��䙺�־�[m�*I��(�~4��RؗQ����a��ZR�)�N;�'� :� �d>]��!�� ��kvL�#�#�FF䞋pį��u���4�7�Qk�4$Vn�;����L.ڲ���+�����K�fR��a:�^��t�g�^"���k>7���${r��X
�Fԭ0�7�@]]@��3~���`���	�q����RXY�9��)��pP�;J�bA�N��Z��6�찋��<k�.�:ѐw4�^C��Hs�G�c����[��U� ��O����N�l���p�3%��r�<^ }��$IO�m�efQv#�ǠV{pg$u��pS��O����?y���      j&     x��Kn�0E��*�\#�%2J�I���4� ³�찠H������2���^R�qF�L2(���Ԩ;Ln���mz9g]Y��wӓ��}��Lt%&S|�X�T�������Kr��G��Z��E]zG�<W���snSn=Y*�O���g�ɭ5��+���0	-_.�e����0��̺z�6+zʅfMG��b��"�F�ӣ�tWFz;Fz0r��fk�O�@�/y�E�=?;Jx/��i�ىO������r��zw6S���˕� w�	a�i�F�QZ�4��G!W�ĳsVkK<uv&Y�Nًh/�b
�#�:�5eù����(�x5gĈ���J�p��{���C�Cjbri04�<�Q&�����&��R���]B��۪^4�e�����l,F��&��������^(�7*{T�P�r~�Ar�6�Lb���q��Kk|��,�{�lr��_Q����1݈R3_�Λ�I�N����L��{ I��D+�K���������"�����W�@�V��(�q���-����Q���ދ���&��~��&9�h�݋jq�}հ0[4��֨wr�a��t�)��G#�D�~��g>sy\>��*({+��_
;t�pPݣ�ᴩ���z8��P(c(��x>�C�����5���[��;
=���I�ڧ��~�mj�p9#�LP{Ea�5���\���)K��ߢ�ϝ�����E+�J�q�ٚ��1	��F!@�w`7�ۈ���Q&G���&ϛ?����um�dtZ�V���t�*      8&   #  x���;n�0�g�<�7C�]� m36f4銒��N�@�\���
t��E�_"����Ŭx̝���,�֬�fV-�ͽ�8�l��s|E���k�y(f�
�Б$l�Fe�[Y�gbF8� ��/��g���9�����`�Z�HY
�Z�rRP�O��*�E}��i.��ڵKv�^F�Vū_Q#!���D���5�y;~	t�(zu?�`���l
�;�ޯ�h��63wŊ09,�����71���|��v��{�>6�;yql#'�XQ �qZ��)�*7UY���a�      R&   �  x����n�@�g�)8&�`�I�ts�E
�m\q:���h�6;d��U/VR�%�1��˝�D������vV�r\�w�2��aY�,�UIag���1����lǳ���Yi��X�6zq���(v����@�5�S`�t�����C����`M�����������$��٘�D��׾A���?����g����z�C��z�m�(�NG��Ƭ�frA60ď���8����g��O\���{<�45��Q��0ex����^������c2
6A���ys��3l��If�R*g7֠v����I,ò��u�W7j����{W`IC_��+��&K�B�S��/:F茐�`�4|]L*t�~Pt�$g�١,[Y|��1��Í��ru˻3,?h�4���O�Sdy�j%T��C����B�4�C/#[�̛�裎{t"��U:㷐��?6�9[�����0~��Ҫ��,����$Jf1\���ߐ=�      &      x������ � �      1&   N  x��W�n$5>'O�#HÐ�$Y`O�q�X��H��'q�m7v{Dr�x���Ê�^�Mx�*w�Lo~��
��Iw�.W}�W��l�b�u�|aJ�8]S�|\��-��o��ڮ�&m�;�.6!i~�w�w������&��8m�\��������L����3��>����Z۵5��ӯɨڄ�8��S�Ll�������:����G�T]�3���ˋ�H]�TV�a9V������0��F_zՐk`ة�j
�^�o>�����fS��"�� �cacE�h�DQr��*��=�a����ن�NT_cm\�%|���F��#�#2�Rф5[Qu�~YZ�ղ��������Y���Ɉ�Åu=�Ja	nd���+;0�`��֭)
��������u{G$�JN���5�\�=�f�t6�jwi�F�:|DU�U}��8NOVO�I�RQ�	U��e`����`˒E�,=|�����رNc�1W�h.)ߡM����p��n��BPt:]$'��0⠌�K�H�m��C�wUN �ɮ8(x�m�-T!�3�'�-�B�D �^���ҍX_ﮃÑ�x�G�0�j�)�.2#���D!,�΂��}�9�̔��V�/%�4��(����p�J
yZ�BF�I�b^S�<��i|/$.�Wڰ+��b��'��#j�}40�H��s$י�1כ�?:؝����L�}��������y�fƤ�;/�>I""�&!��p�����\Mr'y�e
�l�Q/Qo�wbL{mݶH}_ր q}ڗT� �:۝֣��]&����og2O��	�M� ս$Y��$^��y{��c�CMLOd�'��P��}.��'B�2���'��&�^|B"�3=wg[^7��9�dߪ.M>Il�pu&c�ìM(�A�:�q�3A��4�V��I,F%ȸ�c���R�w���H�'�(�$+�?��6P�-� D0�+
��I�Y�M#fBҕ�R黖��������oڔ]�*�bn��|)@Q��f��m.���� ��ZL��Y��{3�
���!�5�]Q'{g�2A��
 �gA��1��g> Htf�7�lk�I�6���U�[��U�*��v �`�.��㝹D�%`�}���	��V���"��Iu@k뭋����7�>Rq�]S��X�a�5&'�
�y��
Rd��xp��u꭬ڻ(M���!`0�o�*+?|rJE�%�G�5`@s�á���$i�/zq�O��(�*��]�F�v�p��r���rP�+�q��e[������bK]�%K�WF
+�r��/p~qb�޹�\�ɌH��Rd�E1>��8�DeL�n�>����K{,�      &      x������ � �      V&      x��]Ko�Ȗ^ǿ��b@��(��⻉=݃�$���� F�,;̥Xj>��?evY�"�F��VlΩYdUQ*�s�/0@��"U�;�b�a��]�e-���{R����e~s~��������.'��Ň��8�3��iN�3��f�/ܾx�]9�R �^W[���|�%��E����
F��j�~d����eQ���v�Ӫ!��(G5� u@������SR_�y�ꠁ;*��d��$���-�]�%�<J��H*�kKg���i�.��{�W^�(�'"n�*�xD�7A�� !��
�薖��6m�t�!hh
�U�TX�����W�6GYpޫ������#;Z)���Q΂�dh,�U4{ �������C]���% H�'%��beZц�V��P�PQ��)�$E�j"��R��{�)@��v�nq�]db�p��B7�7�'g��`� �{���K�}����3�i{�9��=���� 5� *� �6���7���5�@�)�m^�0fW��5��W��1hJ(��6�Ǥ��قI+Po�����%&~���"��:�HjH'�fV�$���.&��PZ�,������H����ڒ�c��n*�q��--��m.�|
fo�<�a,�\JI�iIaj9�wW�%� i�p�E��ʄ3v�`|�	^�,x�,�)�f�t���J�.J���(�(�-(��2�e�L,x��/@^s���V[J6 �#�DL��h�'��bp��ڲb&���X��&L�A�e� $�Y����3xɑ����p�;;ES�!�sOܶ�<�m��[!�U>�X��@����M1q�"L��m���8�A���8�̧r��/�ؖV�K�0���\B�]9�`n��+�PJZ+k#�Z�e҇r̚���Ѩ?�?B�Di��?�¦��γ?��2�:r���wX`,|
��Z�F-� gd�
�Aai&X����Ct�J&g.����33Ww�*4��G�p'q�S��#�w4m��B��V�?��c�a+qP#�s��bOׄC��B/�Y���]���:g%��z�HMk?ӻ� ���v�kCk��T\��(� �i�_<<!��U?_���s�B��'�!ע�Q�-ɔR��eKK�?t����3dL�EjP�l�X���+�)�������0��
�w��ݡmmt�@o�·��<I=]&S�NAO"q���ޕ�|���ҩ4��f��h�JF>bU�`%?��M'o�U��tLŀ]*���!����'��<�b|����Oe�����7�}NJ�9R�4�מ�����������}s:�}(�L�"��o���N�:��	R4=����=Q��'J��
2<���fN��׆F����ѝ`�}�eԣH��ÜIQ����#Es�ɬa�I���I���%���ޓP�Ey�:�
��N���,Q��"@�w�
�HƎ�yF����Φ�p��ͰjS�%�u>�:a2��=�ЁՖ�e[�toٴ�)���DYY��~@A����ù�,mQB��s�C݄Р � -��Wc�L��h�7�D�U�P����@\�#�jZ��<5�B������2b��Bɨ�CY`C���W5�#�vEJ��B�z��[xT7��6��7,E�Q�{DE|������\�S;��P���S�`K��(�p���"�j��c��$�$f�BdX�-��<��%�H�C>2�ا���3�ܑ��}8=: �#g~�P" �\� >i=L�� y"� �n�7w .�p�Q�������hD�'"9���	
<BGcL$nZ*�q���JB��ر��7��f��5fz׍�v���C���H��P8ɽ$�D8N�~��P�T���T��LA5��b\���MM���p��O��8?���NS>T�u�4+�ؼ�����'x�O���'�'��	 ��_;�Ix���y:6��Ƨ.X�* ׸i����
rfg92@����B�V��e�T���ܾu8wSK���*�8����'�1R�fT�c�OzN��fiR'q�C��!�̔>�3���T�x� �_�H|2j��y�#�$>�w�8SP8"��@<p��|��B��+�~Dqn��4H�?^3,�q�uwu���i�:Ǆ�8�Ap���N̡j!��Ƌ�\F�9.#ȃ'�q�)��&C��^�|�4���@:C�7�}%J|�b�����ȟ,�mD���|�t�����pb��5�M���<|Hk47�a��>ë���}a��u^��C\��=
j|������%�j@uuC��'�][�pIr� �`��.7|$;��@ۂ~b�K�J�>.Y~�k�sQ��g�;�)���t�>����h70��/��p��VHu!I4Hx�<�	 @�뒁X(��7�����K���U�xZ�X�~�![���ɖ�X?�1�0���r���h *Ȟ�^@� v�q�͇�E�Uj#'��4�e�Yo�`�Z�Le����{W�,E���0�hi[64�r�l��ˆ�;�͝~ِ���j8� {@���n�2�w����}�Aw~���vx�p�ף�M\CWCq�^\�.P�e�Q �
�֘��A�������q�Q@�'mGkFz"�h�y�݁с|��ɷ�ʷ�@� ����w8ȕ��Zzp��<�#��Hޘ����H(r6]� `�`D΋g��"<���Kqɥ��dv��Y�k��<<0VgB�p�76��K�'�5"�^��E����S +��wߋ" ~��q�jS>`�P�8� ˈ3V�`��{>C@/�T�-z~�����m�+�/7�=a�c�;�sA�������p+��B&0TH8%Mii����ϰ�k����L.!�H��3I(3���E�T]�r5.��@�Bµ�!\�"\�h:����j�S�h�h�\Z�d-h�k���`��K�5z9.���T�6/&���ʇ�ő	�!�,�mS�8��l�Z��SN�XF���š���:(��3�m,�k�o�6J2��q����܈�@��-�P���Qn���N�;X-n���!��?��#U���l8KB�B�ax���\��}�p����'x{��$��wwJ5�:Gx\�pC�7{pC�ʇ��K�P�S�J\���YJ�d�9ڵ���V>�6^ل1\`(�����sK���!���&�AT�"9�������:���A� G�6�C[E[_�,���$%O�Ά��۟P1f�u3�yc�zr��@�����C%��!���y"A���'�#L�C2n:%��i�S����b�Q�t�Ǚ�o�A=2���3!�>�.Yt�gp�¹L]>f]Y�	R��gdܲj���-����=��5j�M[�д$��eY���ڽe��>^��b�ڇ�%�U �b�@ WV�Hn�<F�^{�Z$�
fY���M�t�S�S�!=�"=������5�)�F�֯#������<��`;5��m���h!����f�7������^��_x��)~%܂H>�'Y�"�muM��H��
,�E�C|��)��M���@�4�m��/zNde.g]9���1KEcރ�����
z�[�"�KmЩ���>d�W��o*�1��\�=�߂��$�Z-1� ��7|q|�䑧-������+\#�wP�B	s��̅��u��'MU� �aZ*�����;�ɫ�ϊ/f��k�b 2e4�;�
�>��3��9��6S��3M�3}�	J����a˅m.����2���$9�I��.�\Ȫo��2wf1��0q��9J4�{��@�����e���ș�8u�����%E����Ϊ��#������[�k��2�[���ۦ>��,���D�;�b�2�Q�qX��������C��w�$�/�B*�wo
z����-��n(z��$��x��ki�\�����Y���16a�a) �Ej|����Ǣ@Ҕ�byb�z����\�a0V��0�0����.a.bE?�5?�DE#�f$V.y��7#0NoZ����0p�}!n ���p��ڎ� �  ��9B%�QY�T�$*��r��bW�h����a��"��E���%V�K���Δ׏8�,OZ�RB�7���ޯ��7�%�>iz5w��L�Ƽ�=E��?j���prW�k�f�4&�<�=وxwp�>�}�pM�H��T��G�/,^ ��8I�>L`�on�r<��6�M\��!D��:^tQ��يÿ/W�!��?'O�+Bf��+auve͎V5A^������|��C�3Պ�ոJ��`*���fl��S~�_��a��f�!2�r��d���h ��欒i �{�� DG����V,C\���.���P�G ������g�Q<}�����{�N�BT���t�a�Z�-�^�d׈� ��<WS�!�*Oh���T�>�OR�E�r�M$�9ՇX���%'7?�eQ���/����7��nS_
B��ނ[uE��[� H���7��
�߇@��;y"s-b���Tz��U\�9E��S|��������� ��VnI}��X����,�r��U��k<�U���aZ��`�VN���iW9��&�����[�)/K ߯�����a���Y��>�h}�P�F-
J\
"��9�x U�������J#=([�WGއܭ�]��wc�ת�Z�R߁�ߋ�.X5^����
����f�B��Zޛ�>uK���I������i�x�����XE����`7���*��1���f��R���C����,!����u�@�\��("uQH2;�ߍ�4��'`�Ck�݊�z[�M�To�;0n��5�W]�]݋^���|S�N�ڇ�~�>�����x�R��@E�-���GV召;�^��w�u��e�Z'|nģ·@��D'Ut���V���?-�7 Gd}1�o����O�E[�� ���x�M�Z$��a��{&I��$\���7�̄fKaDȄ !A0��i��z$gZA/^c��&�`o���'^1~^ �ӓ$�)֑��͐s���v�B >�<߬���>{v�/���C@���T{�d2���!�	���=���i{ۅD���hda���%Ǩ#�Q�����U�꟦�Ъ�)�6���wC���S�o�k�k8����EŞ
k1� �Q
��|�Mrj�S��U-���nE��7\������R21~���z9���޼��>��^m廔���_��zfW���g!���Խ��Q��ɱȂ�[�_�$m6�z�\��>X�-03y���@L%pm��)�@��T��Ջ�c��O'�NNN��kO      E&   #  x���Mj�@���)t�b��9@-J)$dQF�����d�'��M��]��Xec�B��j���=�^��܉u^��}��l�ͬZn�����#|�5�Rl��Y��G����b�)���2$��w��H�����Q��:ȡEm����f
��Yڑ�ѧ/��zQ_K:/�xb���|R���(#��U3;Bq
2�����:ސ!9&+#Z�`��>����t����������_��j�.*�ڟ>ߩ�? �_.0���^��d*�;vY��O2�%�S�۪,�8�c      <&   �  x��X�n7=��� ��QQr;F��d`P�]3��&�\���Gt|˵,��ݳXv��h�5��ծ�����-���ܐ+!->��g���`���}�}�}z;;���ڕmlH2]�M�B�G�-G�ֱ����7Xa=�y�d!�>sMK�u�ܩ��-)G+�&tc=e�K=f>6>Nyx�8�m9RKr��1�Ǚޑ�"���	&s�6yA����T���ݔ�$��͙���qx�T��<�Z�v�oS���d���D�g�Hiq	r,M��r�;*��Ύ��S�VJ�3�Ģ�t���!�TL�����	��l7���ȸ9�"��/����"���m솇4r�Sk������ea	�鬃nc%�Ց�\��Q����-�*3��������Kd�[���Vl�N��v�"� |�딠>4 -�O�;��`|ۻ�G�-&4[S�.�0�o"��*�GKv��I�HW�Mt#���J0^����7!ٔ�pr2Y�.���Y��t�P��a�^��v�f�t\7|]W%�!1P ���z T-y��xAHk�c�Ǖl��ܑ�����6��2��G���>R�?ͮ������"l���CB/�V�	�ዜ2���%���Of�	���V��� �J��ӏ��jM�#Pi��wx��(.��
�A�YjL�u!P����������<�)����2-�|p�Ԭ�b$Q@!��X���=ʢяo�B���lhAGv�E���P4�WM&Y���๹ƫr�]��Y�Z	*�ʤS`��^�Uo����g'��G����D������7��8_U�_�2����W�b/�g��p���7E<M����i���T?T+r��5��!��id�
D,%	pђ��wwB�ˬ��Mah~$Cϟ2�6�/IH���\��xa!?���^R���5�$��C�$��8W6Q��IA�MAGr�b����IX=\4���'Ҋ���=s:��`d_J�<�JN}��"��=T�������}#|��k�Rٓ�:RƗ[�*�0�o�k�������蚒����l9�a����I�A����
��Aʚ=���^ѐ;<�ޒ�+�t qgx�t<&<��\hI"F��f[���HJ^!����|U�.��*n��5\s\"	p�d�r�<ʛmä��t=��h�U��H��'��1kU�-R��� �F�)#}���c���j}~�����A=ц��P7�?�J�ʳ�C��ԫ&���q�$�K��M �����琤ƫ��>���CwHq��P�Ac���@��x��=UwH´� �W�U��C뮩�ؒv�(�~��h���(`]4��q\� �g����U�bIbiaF��[�D�-/� ҈��5O�!��a�x��H0[�ͥ&��ג�N5�.N	u�5��m,�2m�*��m5�	�ʵ�n�L���e�V�e~l�1&64�ů���C�H{�w{ߑ찕=����Ezf�t%���Ԓ�����q�@P ��U�,���Q�j���kg,�����zc�|����PY��K> �bFqh��n�%L<v�ȿ×[���Bϭ�!*���ccjYj��I[����HG=Km����5�H�~��E��Xg�h(V#��,����]�jM����h�V����p(_`Z�}���N�� �d-٩���{������_S]}      e&   �  x��T�n1�O_��������F��"�]V��D��{�C��7� W����2˓%�	p������r�/����Ií�n��f��ǳٴ�y�=D���xs����R=}�����ao�X��=#�p��:1K�e��^8+���YjĐiɬ�ڱo�q� o�w�\�(1]n�~]O�/��r=��H�����Ó}"娹�����9��#˞��'�ƾ�k�8H�9$95�l��l#rX;��]�ή$qI
�@>�
�XQ|�ZHp�*`��g�m�=��� ����Μ�f)�EU�Oc�<�n}�c
{1��#�L�..$@=��㋮�0��#e},�fH�S8Ny��N�6�����Y��G��}�	WG K��Ef��v���M��7�6t���85]*`m�=k�Tp�����`W�ɿ\LEY�a�A�o�s�-L(�\��R`Xw;�f^��v��V���ag�
{	)k�E��}@��<��XaR�S���qh���t�C�ww6P[�x�ա��4�d%�wi'���,�M�������U�G�uk���j���-VU��λ�@=$�I�(���t�F��� M���"࢏4��p��C/�tS�e���ܾ�a�a[���W��Im��Y�A�PԠf�=z����:s0bz�h�!�,�?���H:��,�f���e<Փ��/oT4�      @&      x��]K��F�>K�G;����k}ؐZ=c�Z3���#E��B/�� CԿ�Q��)��?��ef
 h5<��ݍp��DX���/U>;={�Y�������䍫goNf�G���~�ݏ7��_g�{�ӟ�?�����if�g���fe�5M�ζ���geV�'[��Ō�'_ES�N�9�4�&�݇:�I�-�t['Ma�M��l�0�_��nUV���#'�ޚy�6i�
[O0�)���3�*��Seο{�g��ڭ�:[8L�v��s�ʕ�]�E��U�{W��Χg������0�n�٭.��u>�cn�`����U�F$���	�$�*�����s��p�x6�f�K��8��"�$U����"���uH}n�ʤf���셫V���h)9�x���=�k��Yп�YNT˹|�r���ܘ��n�����4���w?�Yj�_�� ��JW�m��ٰn�bTfB��X�Y��%ߚ��2U<Ǣi_hݥ]�JV�US6��yOmR75����^��wI��ѧ��<z�¦��k�ڸ���ɚ��&'�\=�-����D[i�ޥ�a�A�Р�'Eґ�8�?���'�Z|�u���[���o�Ap�^6�Z���KmI$%��fN�Z�f�0L�O�3�v����R���<4��_���`7HO�������@J��G�Q�g~��yBv�^�����^��_?��.�������#2m�Vv���H�m����T��vx��k��U�3����Fo����)���~v���_����+��n뷮��~����*oׂ��I8ࣺN����^uH}erW�ndC�� H�.���T�!��;��by%�0��l�k�^W͖W_�t�	3	;b��Yn^ْ�>�2M"�e[�����V�$%;���|2)Y��-� �K�4�������:���J�'~'to���ǳ���V��J�~p�k���
c��"�ԭ;�m���IM��$n�9_gD�S�/����fM&�=f��0lfi�*fa��8}�IHwZ|tH���7B�t1�w�>��lX���$zE��]m�E��e�Tƍس�,y1�4�������rrf�uDģ")�b` �>��7ڐ�y0lA��)o��uַ����E���@��6fW]��W��?e��c��C��6�ڔQ07o	#�J&�����Ni��k�`�?c�����|k�z��c��Io129$���
�b�^d��fk��K�ò�M��@d���Z)�(l! G� �5��VKl��C�R%x-ûA�5�OL��zr����a&���q@�N5��*Y�
�-��5A,��FYC�ܑ,���^Dׅ�_=���4�^C���f�Xg�t��"�=p|��$UE
ț^��}��kԶ��+Z�������G��bg�pa�렐�.s������lx[�)�]���gg`?1d��-F��Ʒt�?Z�ٕ�_G��oy6�K�v�5����d�e�!���n4.A�oT�9}��z�hh��DsI���xaF'��+[IHs��oE��<�?{&1��&4���P�%Ѵ�w�NLډ�4�������2�B?�ajKEI��"8���s��8�7��ǣħE�b(B����a�֎VUrP��,!J�+�313���Ur@W8b�����l��N_`m���0s$l����N.#��0~�p~��:(����$����
�	��'
wA{����%i���܄�"����b����{�8�����,�F"�ڧ�T�x��1g3VfKk!K��l��#B�K���
�rH���tD�vr��,?$������쟌U����u�Wy3G҃���i?'��Gо� Į�n�P��Ma�+�a ES�S �A�T�*�Cc�b��{S}#����>��P柼��-�����Y6���sx�<�3)A�� �h��u�f�>��2��f���\�_
��	���I�ai�"b��±�rA�u:"T:=`J?��N��:�m�I{���Q-�`�3rvL��t����g������}�0N�����Y��o�D�"����!�Ҧ4�b���3f�[$���=�}�.͛�#�����Wl�)�%0U���'�&��f��:=�Z3S�苘�Z�U���QJ�>"�:���7v��n~�#b���}��>8�7s���GD	�q��g�3�hr������+�o�#QiMn�(���������k���P��aAV��G��a���W���ԧg�#P���(�>$��N�9��Jw���ԧW_d�	��pJ�} |���<�,�G ����qYq�"�ت�<�>_d~|�	>����es)K��*؆�8i���$&QU�&g}
;�Q���=�U�;-���5q{]Y���#0����RQ=D�>��%$��2H�7)"���b �UaSao��ş���)O��m53���t��!�aY�3���RN&�L/���մZ7������g'�vH��1�i�$��j����P�p�,��w�Y+f�Y��2?�t$�&�|��\�)�2z��V��r�����t�İ�.��q�R`��R�s^:�S����spm�D-�O�eqQw�r�y�g��h���d2����6�6�}�i�>�,��Fю�9I̒���Ym�6sBm�Ȣ�8
�bP���� �h�ax�׹�5sde�I�U_�q(�B�G ���a�d��O��7ܝ]X�!k�9�O�Б飋8�,�q��!�5��
����MG�H�r[��Tis���"��v�j����$��4�p�ep��#)]���E*�FU#p���A��c��{u܌�?��Gq���b���fJ��ή�|W,rcm)dƽ~��j�M�!�"2��2�qں�$A, ���4=�_K-����K��5�\��%�������fzS��h��h�!���}��]`Q��������⦖~����k+ED�2=&���CB��!���D��ߌ#���,��k�����@xt�H�q�A�~E#���Q,2�SXD���h'"+ro�UƲ:��wJ�AZ7R�?z�6[�#¢1_'$�Õ!�Mj��<����񸑁[k�������I��"3i�q� ̕�������@��@*����3�����&;z���ܔSү�8&�=�=��7���0&f)
����ab������e��*��X���K�9��f����%$�U~'��@hzѣ����(;٣�f�A�w���V��t��z~����U�qH����F�q+a`�|�(���r���4��#�V1F�� Q�b�c����:#��#������$ْ�ϸ���2ˉ�}����Yu�c�������V�C��Ξ�'����|��ڷ� �ْ"V��#����Ϙ<�8`�-Ex�"-���/a\�!Љ�e�D�k�-�}ٻmGs�س��M<��$W۔Ef��g:��+[H����j�xjˢ��|��\42C�a$yks���F!f���=B'0�!+6X�R_�e��V�I�����mq������B�Y,�B��3:��Z���E5��lϞ�ʸ�5m��L��5>e#����>eYmJ�� �ŇlZa�i
a?HrF�N����ސ�AcF�����+0���A�]��g~�z�{�F}�8*� ���/_������ ����}�hg�69<���qBf��$�U8�C۹��Cj5��ŀD�+W���0J(2 f8X�G%w���?>d����I���� ��z�����a���Q�h��|xV�w��D�b���D֑�p�-Lj(��Ȏ�ՠO;o�M�{W�����/�f�@��wއ߉��G��~�$P��3�$%IfX%e��3�{�s�v�»>M��Y��UDØ�Y}����&C��,�ߙ�1��}�;�ø�bh6{�� �Bǅ���id�fh��qh%7uї��B@�l��s��o���R���Q��G��ZS�Y�7r$H^.?�/�~}��|��	Z;�Ԫ�3V+����,2vkzn�zJ�ˆ��T�ğ�@�����g� @  "�Ԗ&ZJ��+��*��m������g*�4����c "t�V������3��! �%+i�$Ϳ�������L�Ȋ�w�=��rh ��`��gD2Z�.�Ht:*���\8,%[�-�md�B_�4�,�H(�/��/�F���>.�j������`��7>T!��b�D���1^~`.[����E	9D�:�����E��$,����#��yl�妰�v��l�Kh�����M�Z�WQ�S�m�oz₭/�@D�6�����}H)�$
�^���E�5�Aت��Za��bI�
�]�8����[�F<�������L-�5/�P��
v������5�T.r.4�=��i������v�un�_&T�A�H�P�.�1�/�x�es�볮�Q���/"��f��ݘP��:hdԄ��;)����lb��b���-��Tqa��\��A��|��ĕ��-,��/�L����cuo�px�/\�t��Hyч��,�ڂSl��s���u�@zJ�"!a��Y�.�Η����B�B�u(f4�����Ev�>��(I>�w�#P�E�Jp8� }t�ALژ�i����^I�O�i칐dZ�Dt�N��PI��iN4�iYxY)F"��ЁͣZ�ЁQ�������n���Y8g/|H4�E�N��<e�����J3����_iF0�0�@��s@ؾ�Y�ʭ�쎌[!�BCw����B?=	xW@�{`p�aK��H�i�IX�~�y@{���uq�����g8���sS��X�?O~��#�Ul��Ɓ�QC��a��� ��&ꑣ�_����6�'�)����?�_���-�DB{E�{ƤK��	&��8^k:��}����XM@��*3rp��RF>'��.#�R&���ɭ�/���{NŦ��Zv,��y�O�HF�:Ď��Yl=�c���|_��7l��n-��嶃N"�S�g
���UZ�6��)NkoL%8�l�h9���`*��W|�A�yf��V6ߘ�����j��������4��Z.�QH��˙99cKmXN����#��qXm���_�|�
�86�s:��K2�A\�f#�6������k���ø�pC(?��8a�R���7����#����B���&�R'���- ��I+�S��˗6�V^d�z2��'�+��`�Xi!�2����G@�˓.��c�[����^�����+���IZ5��b�7C��E��
G��#��iX'����@��?���qQ9��8��{��un�x7�#���c�cx��X#`�������&�q��z��<�D"��E����VR�4�aK�"�����)�s��n���'��_Ǆm��.��vv9f/T���;((9�����&I;k��4ZOKxZ�`Q���cY�u��!Rl߸ҷ�u��[�����ܓ�ҷ���������!� L�WLp�N�	1����\����Y�lS�!�|��%�Q�L�ܶ���G��+�v�����Q�Q�U%��oz��t-���Il�E��zW���xy�:o��^�Bu3{����3�����I}��5N�D��1?]F(�g9P��>��00✕�5�Ϛ˹��R��-"�.���)�U�[S�gŸ�ɝ#���F0���ǆe�Rt���y�k5�[=�tz<�
��v'p��U{����ȑ�~�j'h��7�J:Ѓ��F�����ΛM��"���OjtFl;���h�������~HF:��L�k�O�#`��U`EUE�g#��WL;��ꦝ�Lx-嶥!�,��fmf�(:��U�H�Zś����#J͟F�Q�=�ivC���}��GÊ��|�9��}�*��� Qfy���4X�߻Nb2n��J�^Ґs*s����0��ǌ�_bal���{&jz<�^G�b�����[��9Җ�s�W�� MC69��VT92hCDm�7^�([�� �LJQTl���
����W'}�_!RZ��렙C\PXT��.���|�M7zeW��P��7��l���w�.���{ ��������fӂ�;�(�$��#�M:�d�7,��#��0ض+az<�^y��G��\ۣ?�؏}� �����NMS籂� ����u��l66�Z,±��(	���IE�ƫ��l�U��[���aζCSj�r;��t�Ց����EZ�&�-��M���*���q��ܰ�C�؍@���o)^1='��݆�(|�̻���_Z�Y�pڲ\ǲF��+����8���r�D' I_0���dJ��&�iɛ�d�:7��90�ݯn�����~�gz<A_y��A<ͱ�ߑ,C������� ZٚFW��9���L�2F��ل�#:Kȕ�6	���kKd3�`X�fO
ץCIn��B�$H�t�<�})f>~zǕ�KR��H�[�j�co��u��{Яw���צ�叵���B]V�όB��șz�ǉA����P�#�88�<�|��]d�/_X"����V21�����JsW,	,&m��!?a�F+�N�Si�c�O�
˖�������2
m��X� �Ϭ�<yO[�ɫ�7�}<�=�]y�wG�����n�Q��¥��v=��X�IC/�a���6�c�wf�R�3�I��G��M\k��ѥ�
��j\ۥ�ʚs� bW#5:=�Znq@P�q"wGsF��P��P�o����b�}�[���-���H�`�s��L�/mE��!�o�<�pE	k�Vy��}LS��"UX��!k:h��-��T����f�b����r��W�S�ד�����՚�w�%�����ڧ��':��+0�(�Z/�eD&��ڷuo��1����j�a��/y�r���#dtS��٭|����^d�J�L�=�s��f^�"�$��w4|��$��"�����*m��2�G�p��z��d��"�+�<']{���k�g�� @,�o�u_)�Grh(c�Bz��� ��?�E�ŧo86��^[���Ǟ��Ǳx��n���p�@r,��=���=�8�~�����0�~\(W7K��΅��*���'�������o�)�J{�J� M<D����� "�%Ό������:n�.��Bۦ�~�U�Q]�P��sp-T��+�R[�w��^Wg�L(EDW��G �k�^���-��"-���䚡�Pl[�d���|�M�knHu�����4��?mYK����e�ۼ��&�a�Ƿ��������n.q����$�kZ��O��<�:������^"U�ů�>rN�
~E4������t޼�x󵛻�)�v.|���rm�&y�����<aY��O�r�A%�;��f�]N�bk�_i�w}wxA�@��W����|~
g�\ާ������}�Ӗ�����;���%��tI�I��i�����m��N=JM#�O�QK�T�'���߉��6����§c�濎��mqO,*���Zg̫��eݐ-�τΛ���⠌�_֬�V�,WD��QW�{ �Awr��� �L-e�Keh�HoW��G��r��R���7�p�16)�;��1��{X�&3�? ��+�A�z�ɝѢ-{��p���q_8D�AG�R�-!T�C_��?����ӧ����_      &      x������ � �      &      x������ � �      &      x������ � �      &      x������ � �      �%      x������ � �      K&   �   x���K
�0 D��)r�����]Q
��B��B�ФX=Y�Ћժ��*d���y��Az�3)+]F��It��(a3��]��z�B�"S�ր*$=o��p��X6J+�^O��FGɭ@4��prq1�|�BJAl��ύY��q�,���;_g�s&���T�܎��C��q،�VB�qw�l      H&     x�͑AN�0E��)�Q%�( 6�H��M�Ie��Dc�R��%V!�v���,ر��������M��n��qռ\7�"�֣2�E�Y	�8۬�EOM��4ͽ`�F�K�/v2�-�Z�Y�"��-A@�c��@m��ȂAآ�`�=�o�o�`��C�'A�H�%�i]�ң�ӻ��ّ�N;O}L�| 5��)<��,�����^*ӡ{�����^q��3�uw)A���-�&ep�K�ӫ��hX�qf�vC楂�D;=�Ǧ����#��      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      m&   �   x���ϊ�0���S��n�v��� hWD<	%&�����޼�b&�-�Bn����1L��d�5[ӟE�M�8�u��Jb�Sԕ� 0�Z��Hv9����*c9�>TK�K����Y_����4KFA�a_��[��'�q��ㆶ��43�����&A��|����֎��R2ׇ��9�gsD��T���&��fid{Xe���LɏX��^�����E����=��� ���@��Kw����Rz��      D&   j   x�315��qt�w���3�7���J�sR��@�.���yř�y!���1~��@!#3�*{xs�X���ԐTA�ch5ЈT�8�K��!�AY\1z\\\ �G�      X&   �   x���K�0���)��GB�Ҁ;ą�	�t0M*%�x���-� /׬&�?��/�;���c����3P��ӇmW�е��MH���Z�,%.�T���>p��A�be�/PL
,��L޻O�a�=�Vw��Gb���*f�upF�#"H�o����O�7�6��d�%�"/�Am���!��̡�~��w      G&   �   x�313��qt�w���3�7���J�sR��@���%�)�A�)��Ee�ə��!���1~��9�y�@Y/��ebfD�����y��PS]�J��f�m��[ijQb�Kj<Lb<XX!%U�!�Ʉl��9�K���CY\1z\\\ �ir*      +&   �   x�344��qt�w���3�7���J�sR��@���%E��%�E�!���1~���E����� N���АdӀ:2�R���$S!f�^�S��WHE�ZeD�UF�!�%��aL�I�$�d��_������3�?�*����� J�o�      J&   �  x���1n1Ek�)� ��H%�I�8)�T�;���rV�R@r��ܹ����]Y++�ґ�����?_�g7��/���7�����n�u�u?'�=/�V��>�^��t:����Ϯզt�-���"�d�v/�~*GbG�kx0ty���&���'~�`G�0��QEɪ�F�VÖ��}M˸�C��Vϲ١��歝#��3���	'�Ǳ����U2�)��8�Bq�6LM���ʶ��ԑ@�رh��(#����������I�q�}A��I�&̓)��l��'����<�o��G}t��:t(�"f'�������i���H���/�ba�IG�-( R�9&���E�Q���H놭��Ɠr{l��z�6�[~��K~�h��ITr�v�sD���5��C������Wd\#      _&   (  x��T�n�@����2B�E.�6(r`��㒹�xK�8�R��ti�c���B�HTI�cfv��b�m.V���ͦ�rV���i�i��xա�xZ��i)��f�l��3�XB���R%*=�kۅ蹱���~o�~m��Gp�É�#H���Ω�ci(��Ob�.[A$�滒B"7 J�zs�y7U�!��"E�S�1��۩¨�cC���%/̐������
�)g\����2��Bl=i�6�8I����G�(�����(&Q��8��0��RR{��g
��G�$ �k"��Aw��7p�����X�jINZ?F�t��7��q�{����x�]��=�-�b�a�
]��2�������Q.����c�ޔ�@�&DL�X��N������41"���l�;�?��UA�HM�~xH)k�e~�G���j�%3#��(���Ń�윖[yv�#�������x�\�n;lҝ��t��Y2q~R&β��=XܡvF��A�'N��@��~r糓�}�n9><���1�Gz�o~7����ǟ�}>�L^ �/��      ^&   �   x���K
�0���)r��V�ۢ"����*���e�MJ�Gr��#�b��B����7L���p>��r�,��$#�U{�s�~�ʖr#(�,�G,�ｑ����7���;eu�8V/AS�%(-�T0c�A�$�â�m��(��B����q��z�ș��|=�@.�
��~��8B����ZA��dc5f�V;���T�����{o;�Oya"�c      !&   w   x�3��qt�w���3�7���J�sR��@��y%�E�9�ə�y!���1~�����9�)`N�ˈ�9�¹�)���E�Pc�
�A.cr�7B6�'3/5����k!�\1z\\\  �Y�      "&   ~   x�3��qt�w���3�7���J�sR��@�������F��!���1~��.��Y�y%`^2�˔T�9C�!AY\f�b�\Z�ZT���
1	��eN�qƜ.����y�ə)0?�p��qqq C�[�      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      a&   #  x��SKjA]K��a'e�X������Q��j����Z�s�Tό�2���~������������v����\��衸@���{���{T_�c����b���ZL�fˑ\s��~x�I�s��P���!�ca�$P�ȉ3�îWp*@Z��``��6��=z+A�k�$���+�������4�/4���~M�J7��'�ܲC�Ë@;��+�]�p�v��N��/]�f���!G<��JJ��b�D�4R�Jt�5�l(�!�/E:p���B߱�3f>־N�*+���3��cͬ ex
&}���hN��-F�`%rE<F�d�t��'�G�y"�{�5ZA*�k�dQ�������m�1�9��կ������M�fK.�ĺ95�p�S8H�"�m3��m�۹��7�G���M3�g��.�׏�MeV|4�����u��N�jV�^��b��0F��,B�Q�ë4��pg��\�m���$wxS|�6w?=.���W&'�0�-8�yb��G�F����'��a^�9.FE��ڭ���'\�>      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      7&   e   x�343��qt�w���3�7���J�sR��@��y%�!���1~����y%E�9 N���̂�9�K����&!x@�,I1ʈ�n������ �A�      #&   �   x����qt�w���3�7���J�sR��@�A�)��Ee�ə��!���1~���%E�@% ^�wx3��eI������������K��q��0ш(�Z4&b(P@���J���!�s���&������AG=�$�����  �s      S&   f   x�354��qt�w���3�7���J�sR��@�A���%E�!���1~��A�E�9 f��ejhN�9���EI�y���l�I$�d���Á��b���� �B      �%      x������ � �      �%      x������ � �      9&   �   x�347��qt�w���3�7���J�sR��@�A�9�ə�y���Ei�ə�!���1~���y�A�ŉy%� ~��P�s���m�!���Ԝ|��eP�\3��5�\�T�bt1B h�9٦s��A����b���� Vq      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      N&   g  x���Kn�0���)|��G
a��K
hWH�d)�S?X�6\�[.V;qx4�"����_ߌ�Q<A���-}Y�ӏq:�j����Њ�%#@R��I%@�<�dlY��n�h%(a��о��_�։	�9`E��Yٺ�&�� ���<C���P0Z*�n�Lqa����a�u�1����d爽��'�1.ӕ��,㲙�������e7�rϼ��hMm8�tJȩ�nu\^��آ�a�go��@|jځv�s�;�"���PR���2�^3*��y�j�.����=�4�Kt���3n��Z�ބS���9�5$G�������KyS�h+��ʭ����0؅A� .�2�      3&   i   x�345��qt�w���3�7���J�sR��@��y�)�)�)�i�ɉə�y!���1~������E%�)`~*���Ԑ\�9=�R2�2SJs F��b���� ��:�      �%      x������ � �      C&   j   x�311��qt�w���3�7���J�sR�����9���y!���1~���i�ə�9 N���Ă4�9�s�KsS�!�!s��Y�f��I�$(�+F��� �,Dt      �%      x������ � �      �%      x������ � �      �%      x������ � �      \&   �   x����n�0F���	�@bc��P1!YW� K��n~��7mpew��}�9���cӞ��8�K���w�G�LW^Ck�hm;_H��Q�ꓬ����g(����7T�3?�=\+�������u�!2��M�]�L�&`���g�+hơ{�~�h2��L~Ғ��i1���Xg:8D��_c���
H�ʨ)�2�[h->:��{�fz�I����'C}�������2��nz-cߵ{:t      c&   |   x�372��qt�w���3�7���J�sR��\+J\2�R��3���S�K��3KSS8c�88��JRA�48���Ȉl9�K� �A@ӌ�6͈ӵ�<(h�	��s����1�b���� $Od�      %&   z   x�34��qt�w���3�7���J�sR��\+J\2�R��3���S�K���RS2�9c�88��JRA�48��Ќl9�K� �A\��df��Zs��ehA�qƜ��p�`L�=... #DdS      f&   f   x�371��qt�w���3�7���J�sR��\+J\2�R��3���B2���\�?NN�⒢��ҢĔD�H�����r���c�ᗯ��fM� �'B�      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      6&   �  x��VKO1>;��G��(B��F�@�R'���;$F���G��֟±�^��u�NB���J��׌�3�OaZc	��ƅ]~Σ�G�+筪�A���RMf���Y/P\OD_L�1n����BC�J9G�����@�k�D�*i�3]��%�4�u�w- �lܻP��&�{�x_.���8#$o�"S�N�g@����2�c�����&+p���
�9i�������,9�`�6V���e�"2�r����.�Z4�N{�)�V��(=]¼�37�bx�����.0e	���h}J���ڸ²o�ń�vɖ������V�@G��� ˡ�����<�O�z�>���=���h���0o��
��a���X3�Ax��nѪު����vu����8�u�-�Y~�����+ܓ�_�b�`7��u?l�;�)K��� ��N��-���V��%��F��2���@?���,���<\�� �cvJq9(2���Z�y4]*�yXN$���j�eEK��FU���v�Z��d�&�;�Km�*��N2|Eb�!�!o�yZ�Tu%���0vF��hݺ���,ư1NŕV��U��G������Wb�/K����Jޢ���1� ��{�ܛ�j�/0o�@��]�˱���$�h��Š/>P���,D�'^�/�õv�������#e��j}4�d��2��90>��u!z�;g�Tz;5�T\/	�$��0|{�jh��fJ'�~��t:�ffI      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      ,&   �   x�344�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,����4��s1�8�*��3��s��q��(�V 9�צ �@�p�K{�;:�q�Rѵ����I�9�B�x�������=... �=o�      �%      x������ � �      �%      x������ � �      O&   �   x����
�0���S��l0��w^v�z��fP�mW�|_�֋�'�[��O�R�k���L-��q��Zy��a�`աT�l�wF�n�%�ѐۙ��cK�.3��L��G�q2�Q�9����v��(b�F�=�����R�0NǔO��U���x�:R��e���s��=�NCpx��O����$$�����      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      �%      x������ � �      :&   8  x����J�0���)�M����1Tz�"N��l�$�4%k_�[_���'��qޝ���;ʟ2�V�F���L�׭|�b�L�ׇN�C�D�`�yy�a��J֭yT�A�h�J:����Pt��ɪx ��Uۮ$��٨J	����|Af�x{��ro�N�ʵ'�vslO;u�=�*c�u��_ǔe�9��3���0'�<�AC�<h4��s
�G�{���w|&a�؉O�\m�N�ĉ��8E����O��y~6���9 � w��Hܑ2��]��3	�I�c~���,�d����%�.'��b��`�p�      �%      x������ � �      M&   �   x�3�0���OI�ɏw,��LNL��ϋ�qt�u����I-�wN,�3�7��q�wL.M-J��,����4��
�8ip�kEfqI�Bi�B"DD�8?�(U!'Q� �839���<��
�y%�\&��;���%�8�H|�CR�������� ��^�      �%      x������ � �      )&   �  x��\M��F=K��/؀"�(����L��"�Ā��-�gL�b+���){�1��r��W�M�[Cu���y�Y�Uw�몦��+�H�_���~(���˯_��p����-��?��Wӻ���X|�oÝ����j�M��-x����d��?y,"�Ұ��Fޏ���2���`�C�h<��;��H�,l/���;~��H�gߤY��Y�p<(���	��M�g�H�w�mEv�Hp؁e�=����a���a���w2�I��<g��mx���)��"ك���1{�Hx�6���t<wl��`��B�0���	�MIx|c�D&�8��E�ox��x_lA=�z���-� �	�j���7��݇�%,�H�9G�,9&�pm��ý���_n��rc�#2�"�MB�b�#�[��?x���H��G�h�\���ps~`he.L.����tB&�������M$�~qđ(:�4p�'ϖ�E?O���K� ���%�%�а�H�-��-=^?=�zZK�@3)�	���ǝK�" �0��]���m�Y�3�a��*g�OZ9����C�w�
�ݟ FĬl��&\�Mׯa�&�V"6#��i̓��f��)�&	o���%�t��P�mI̪�o1����L�Q�2QN��c3�Ʈ� �]���!�7�&�ˉ<JS�njr;��$崚��4Ìk�og�D8C��3��q�\΁�ĝ9�[�#P�W0��꟯e��Jۍfx)F�Q�'r�_t�!ѥ���^;�g�+vD-��Q�Z �����.'��Zr�A8yJ�co��q����F�{9����b���3�ǵγ�0���	�\�ZC�\�����	��^K]�:��&�"���g�Z��ٲj��eEk5�]k�7��S꣉�\.(�1?mwxM������r�pwy�+��`a�o�#��l��� ��c����G�m����,A/�d��r�S��~�#Zd�m<E�(?�7{��(L8/�5�l� ��&ī���`V�� `9�>j��V3����C �Z�9W��n��
D�=�[~�M�r �mØ��I��2��O)����GI���*sf�n7f��y'掿U�&��NRY��)�m���T�a�4�����3z�c��\��j�D�FyQ��9^�ë�ËMQ�I�,�5�ę�F�8{	���H���9~����<epz
��^��0kU��렽n�^	o/*U%h� �6�tð�����<�/bd�|��&)�̮�7*Q?�Z�8n���-����5�@�%�
/��6�0S�?(�s�W�y�T��)M�m���&΢������+��Ӗ�0t^S,�5�㍾��E�I	��E�f��8W��m-��2J�V���~��]- �k"#��lNT�;�UI@5�t�Ju��P��Y(d�Xe;d�xCˢgu��"�Ja-��e'��Yr{:$7�~�`;��3������R�{x!ki�Pe-��N�ܳT�n����!��z��_R�í��[L��='B�)3��Q��j�aiE�"��d9ED�6�BLRd�X�"������{B��]�����Li��O�dB��WI�%I�\CB�(�J�ZT:���wF���'�����KiN�*3��4���L;�F��#�h}S_Y��������DX������Ƀ��Co��`�/
b�N�I�+)�5��Iܳ���Y����?�\0.��w�7zZM�-4h���F>c_+YM�ʥ����~�Դ�B��
�h �]�)UDˉDEk��^�g�س��sg�V��ZCt���4�*T�ԩ�'�Z���3���y����;ߐI���H6T&�^ҕ\3��5�ܭCq���M}� ��x�kQ:_�9݀z��ͳ��f�����?pI�=k�:�F/�r
O�_�X��V��
��
�m�J9����5Ϟ�c ��l�/�{C �II������_�#v� �Y������F�v"�����I"/�r���7�L�Kk7_�n%g�*���4�Mx�)��OؽL�d*l��S���D��֞��-ɖ֒.���z@�1���+��h4Ӗ�"̝5�=p���EpL��C��Kk��:XN��l�ɓ��h�xi-p���|l)6u��Z���b\��q��!��~�½b�I��U��rF�(v���sQD~�]]��aG?�����l�K�czn���{�c�u��R��9�
���8U,_���v�v�1�Ccs�ǽ�dq��[Lw�~�cϮ_XT
�����|�#Q�d�*ԩ�7�,{�E�.J��zI34Go|ҢI��Qx�I+�UD�G������ʾ�d`B-�SzP�c�O�L	�&� ���'�ۼ���ڈ����ڙ�\-���0iTK
�to�N ��	)F}(R�xi�h��Z������Pj��qzm-��Z����������t|m�����Zq�[����o��$ݮ䉘f�^V�I���3�b�a��	3p���/�oK�y�aG}m�)b�F>��.+����eq�	��0Cf�*K����!��@W���-4
���o�zZ�@�r��Z���j}KS�7���H<`}C��5���n��j�X��żI��G�נfЫ&3�Y`�	�?�TB4e��=���"�]��r$X���$a�G��D,�U3�����J}� iD�Y��&�ƣ*��SF���/�)q��c=ۇr������_49q�8q��́iq���	3"�X:�S�rQ(��S�,�/uĉ ��ԕ<ս[魼3�S"?�~@f�j�<��Y��:!S�i��ouo���Qd�.[�t�M����n����3ՅC��0��S8�՚�:��>�V�
���[?52^Y�|�o���Tq�>���*l��)N7�d�I�b�CB0�1��!�fh;?�Ѥr�8Jp=�e'�T����ZZx�>���h��Zk�9}hݧѪr��2)�h�8L����c6������oB�)|���6�2j}��
n%�����z�?�A��xe�J���u�y����v���� km����s0��^Q�?y�
qǏ��J�8�^��Q���Z^xn7�,��Fm�|]�yO�Qt��Yh���@�+k��-F?�|�-��ͮ|Ξ��u�Ґ�o�YqQ�|I3��Tn��:A��x��Tp�f�4R�`�����9��\y��YjH�J��V��
��"�߫���{\U�rsdLW�#��F6���6FT�����)}���0K�f��!�T/��$��A���_G5Z�f^������Ȉi��MNA����k���&��M<~����Jq�j���hx������[�8o�]�:?��k2��J�O�	���
mo�v�S���mi��4�8W57�'XJs�j��';�x�cCaQЮ��ϋn��=NS��9}�x�Bݓ#s\ �������#*���'㕵���[\�Or�V��\^�)����Ag����!$$k�V�[S�LץZ]���Ak����{��駵#��dѮ�i��ч����O_�����TJ�UR����$|��>��l>��*Ȁ�>8O%��	��1�P"u�T���}^| �^��HA���@��ê���k,�&U~P{m�Z��|�H��#����'.��;�uPL;8�s�D2�#��rB�drR��O�F��`�m���[�>k���sx�zW������04���z1�y�M u��~��>	�&����!��3X&͔�SDO��"yczXo����G;��nczP��¨v3�e
˃܌H��H�����sn����_�ݎ�;ȥs���?�h笣'��/�[N�B���D��єo�7������z��5���=̚�V�xIe�mf���)O���7<|�/N��cI��F"��jMc��L�g�9~4J�4Z~�!ig�o�v]c>�,����"�G���Hy�櫍�R�!�Mc��b:�i:���`�      &      x������ � �      &      x������ � �      W&   �   x���=
� ��YO�	B�Ҵk�K��PJ���x`5hҋ��X㐯)C6��/��"?��)m/[RHp���R�;�L8e<M��!�Oh�o(E@i+A��hV�����Z�
/H��Ҥ���Np�{0�ZՇ�O�żM�)���I>�:��xm�,W۞UI�=�����O�M�c��:���k��      T&   J  x��T���6={�b�) ��.ۣ�H��ƈ�UG!E����So�������mZ � d�ș7ｙ��v�^:�e?zg�8	���/�~��w���i��f��=��Kt�)��on������Snsl9��ë�	irS~��l��L�pza���5Z<r���t6LQ����7��z�K��,��xFHp5Izu���;HJ6:���g��X?�q�㮡�lDA���A��3#�,����9rH��W��7͘-0T$i?�I��8F��c$PD��e֖\���ӡ6r��{����#��=s脀��$�r��q�f�Z��6�x���zJ�y��R��RF� �J�z��RK;�Dۭ�l�7�s	on����5}�.����p���d=ߊ(E%2��QB��d/�N����`��۴~�a���z�Q��ͩ���fi"��Ȑ=�tC�����>��7��sQ~��a39��(Y<�����x���B�B�G�Z��4�J�y�bl�*8�%����܍ҩ���/�A4���s8DVGe3a8*���{v�l��6�^�y5�6���A�01N�x�7\��a�h�Y�*А�҄���������b2`��6�17��͎�������?�a6��Q�}�ZW���KF�r��a!��2��Z*����ɫ}S(�����j
V7�bP]6��
)#BN�^P��|o��^�?�J�>�Uߩ��@��p]�XgvVu� (۲:�:��1����r컻�d�p�L��υ��lꅂ��&�뼝+-��1�-tZU�?���90ݼC��R��\;��m�( WL�z�Uk�����WWW� +�      2&   e  x��T�n1<�~�?`Ye!<�-r@� R�H�O撚�v��D��#�O���}�9� �Ӹ��*��/�+7�qݹ7�I������U�q�-��k)u_���l�v���-Yn3?�w�͇椹�)d�r�/�K���5ֲ�m���b�����.�
��粉̯�&����Xǩ�V��ei�!P�$�N5@����&a�VR�lk�X�HP���w!Q@C���8�T
d�(I�6�m�"�b�NS�"d$y ;8E(��Ǵ��D;���ĄָTG�#f�:ލ4�я}�(��Pes������d~��v͛sM}ѭ��{27��N�?8�v�{���OF���(���� �\����)?��8H���D_�4Yp-�gK��s@�RU�6)˫@S塴(�aK�	Zƚ��C�b�#�*1P���p�zI�~B�%�[P�Gic����b��1��\��Q��ֿŗhi�^E4��zm�.���R`> ���'��Dc�.�r����b���B��1ȼhZ��Ɇ�v�/t0>pY�'e6#���ΎA�tF�}~��v�[�3�)�]�h���bGR�+lY���r ��K�oǿȘ���f6�L� �\      >&     x��U=�7�u��e�ʇ]�����Wu�0"���z�+X�7W��*���cyC�J'�R�����̛7���f��67m�Oq��y�~��z���fEy��b��z�ڬu�{���6��~����)[�e}?�W)v�����p0�0}�67a�Ga�!��,�s���]ƚ�I�飷���1bEr�O��R7F�L�D÷�"v�$�#5�cF��=�c6E��BIos/d��F�M+�!���Ȳ�hn�'l�`)fl
�ⷩ�[|�K��
��ÿg���B)����%���.]��	��@ٲ�H�$|ϼK�PKP�>��_���dY� ��>�Դ�s��F���y D]�Х�]!UÝU�P��{��5��1��C��fdJ��%�w��85���]���J�R�O��Wj�B��(C�j�A���p�<�M%���Kb�W�F�گ��O"��Wwmn��>��hG����'5��1�_A�J3�F���rʞ�!_�?|��VX��I��w#yx�=*].�f��|�F�.޾�������o��b�D�+��̔
Sf�G��B��f�NR�
�ݫ�A�c��aUHinR�
����MK;d�	H�fG��E��+��X��>�!��$��m/z<���Ԋ6������1�u�._���o�����SK��Se�Q�w|����z�ڻJI ���:�y/�90�|��˿��RI~�"��\�1�~��z*I_��P
*[���G'�c7���C�?�����*��Ѽ I}W!R��C{��U�X4v4aq&��{tT�[��U_�;j�Q>����঎���&:U(��ϕ�H���ǡ�VT���Uu��G�F�2�
z�2�s
�^Ovv��(��<��MtU�Oݾ�f��4{�I!(���"����ҽ"���ՠr�f�fNq��WAJS��)!ڔBb���P���0���$A{����Z�%��)�k�S�9��bJyH���(�#��EϓQe�xy��Hݥ�_����뫫�� �*^�      d&   �  x��V;o�0��_�1Ï4N��-�����@8K��D*$���S2v�Pd�?�;�v�TIZ���q<~�wz<|]�s����L!�Z%ӳ���d���\�$��t�L��$[�3���RG�����s\E3-J�K�db������<
�����̴�\���J�D���z���=�A��.��ۀ� n��PlL6X?#ho�$RK��,ӊgH���(�tV�����Sh���-���7dzs�=���WiS�5=+�8 vNw�
\c������N�9�T���h��Z"�ٲ�Ż,W|.n*�@�J+^Z_�9߂B*��M�����6��-g*���-ImI���:�"�ЅTR?M���W� ���i{G�4þOg�$J��Š���	��.���z�q懢);7��+��w�7��`��>������t�O�Y�a{��(CE�L�לy��a[���g�o7<rq�c���� �x:d��}���M�9&G��K�HD�~P]��u��� �
��5AC���9���\7�Q{IN$i�A�ɞ4Ϫ��N*z�i ���!�*��^K�
��7A�5�Dcw����G��8��E}�G[�q�U"r(2i��	oQWsR�`���w�?����}ZQ�tw��r�)���v>��:��=�M2�:�+/O`ī���z'\�I.9���D&���y4�D�m�TSsT��;�B��̐��dJ���-�����=���%Řr��w��t:�@$a�      �%      x������ � �      U&   n  x���Kn1��3��*�� �.�E��
id2�u��CH�6=G�buf��n�a9�#�oO��b�5��ΐMl���q1{�Ws�W3������j�6D�t.Z�^�q�~*�ŒBm�h��-iB�Ξ,�Fը�U\���E��t��Y����$U�åL����WN�û��j<�%���-�+�}��0����q��ӓ���`�Ԁ�@IeMY/g��] �Ŋ#س��ӱ���g#�-U���f��Kj��(K{lM7���l㻰��6Br×﷌y��7��բVZqQx�Pg����}��,�D������eC72e/���W~����줠,�Ny!�_��g�Gs�<ZI�I��K�+׽�,�U�:�      i&   �   x���1�0E��9 �Z�е*c)���%�)�%i*���	 &�f?[�u�f;�h	��%�!]�ݵ�:\��3�*(����\�}T:���г��tA�3is2~&G���D�V��aE��`tޓv��3�\
������6W�'���)k���d�N3��J�_^���
>�����       �%      x������ � �      &      x������ � �      �%      x������ � �      �%      x������ � �      $&   �  x�Ŕ�n�0Eg�+���+�%v�lNӡ�@�%�e �*)H�&c�E?A?V^*�:�AϽ���+�k�����`:�g���������C�WS�����o/���7�Ō.����٥;k���uq5P�>��YS�4�hR�Y~Z���UO:���jK^�����*�\@��j�Ҩ�����<=Ro���Q�"�f��u�v�[���Ѷw����#�.����u;zw�	!i���r��(�@�(�FiPd,��1p�D�P�`P0(�p� \ . s�0�a�spW�+���Jp%�K�%�K(J(*��
p�\� W���^@!��`X �`�Wù\����@j �p�\�p���
	��BB!��PH($
	��i�ify�j�j�:�u�i�9[���&�c���9��1�r���@�r�N��I �������WB��۠ĳ%n����D���B��o�%�n�yL�5�/��ͮ,�<�(N��9�0a�:5�0����ݰ<��]����u�	S�S��c���gU ��9zDG��_����CDb�9[���1|tTC�<�-�9��u$�u� �g����;�R�}��H���/:�6�|{���:��k]��nm�k/O֜��˥oߌ'
��S#�}�Ў�<����v��l� ���      ]&   |  x��Zˎ�8];_�e5q�=�L:A7��	&�Y0h�v1�D������,��*�l�cs�%�G��J�UY��^�{�e=~�x�-ti�ϛ��*7�^�~���/��z�Z��/T���j}�����/ڷ��6/s[�
�4�]��cq�<�LnKŧ���Vg�*�m3t�
�f*�_�b����.K�����oa�Bg^gN�땪��+[��'�Y�S���8ȧ�e��LU��V��Vm�T�_�ɵ�������GOf��j�|��[޹���{N-����]͙еP�Z��uzұ���0@vh�)l�:U��u�*��2�y���F9�a0�-�<7��\΀g�]��n>h>f�˫���ʵC7 �s��|º*���Q�;��vULدП����/a2�-��5���9X������ٿmt�qp�����6��,�=�^��jnk�L8�&��Y��,��M����u��.�>h�����Q��p4�7�"Y���t&�:�/YS�o�G�����w�l����
3�;�MM%kO��y�=�k���a.����rp��� ,C��xp�hu�^kS%�|6��4�d��{8�F��Xfl�)un*���ٽ�/T|D6�^΄Ǯ2M��}u8Q�t4b3P���)�V� 4�q��V�ew��F�>�)�	o����u�'�N����gB���E� ��x
��u��dw���I	��բ�n�s�a_�	[.s���h��b]�7�y����r:�t�,Q���u�4��`C�V3��h�ǎ�+���N�( n��E���&S�C���pD1F���'��pQ��tt<��,fb牿���M����|&H/^�3�(`2<�E�ߓ�FԵc>s�q���(ɨ��Lm��bT�y��V �^K�Ia�|�h��K,��r"�ϱ�JK�31��ڎ�>�u�6�������I?0����{�~�3pW��v1t� f2ȓū	����H�C�lv���;Ul^#���x2Q�^��Ԍ�%��fG��|�����+���l������f��h�Aϲub
�D��0�X�p뱥��/��'�g���W�1aa	�ɛS�5:ɲR�Q�I,)���gD��x��A�~����ѡ�0��.��� ��9|����i���9�B�#WA�j)���l�d7�W��\U6섐̈́���o�T�o�o����6�R���8�'��0T��	A�<3<NzjD�jS�x�\�隐����K���Jէ�B�a�	�T�,�d��v��b�p*(-I;�-s���VL�`e<<�Ɯ+G]݇��Ni��'t��[�'�~Q��T�Io%�Oze*�ʦy�w<�'�*Owċ�ݸ �d/�VG4e��39�!\l��u���`�d^VN�ԎBH����k�؍{X��?��B���|�`Y~�Ty�TWp�IS9h`��z�1��`�^t��SfK�W7<�WS8�q��>q��O����~���g�MK��$��dй���pb!h�e��JCSwA��:5�q�$��ä~),"�h�D�S
))p�%uY�J��B���(���Q���"X�G�9d� �`x�ғ{��+	_�������q{���r{����}�a���1��nq���{l*.O���&�Z^���3n�[��(�y.{�g�2�{,�.T�R������ �r�}0?M8W�zpӄzב���?���R�Yq̻2�S��p���ͬéȚ÷���v|�����������$��!�s-�:�擹������I��Jo�q����O@>�:����>k�)��i+ΪSHKR�.�;=H�U����B�<d�D�D���\s%���EꞆ�I��۳pZW�M#'�� �����M�!j�����J�*��2�U��@b� �fmZ�R��1xp)�=���ztMh�������g�����΍�(��"DJ|�O����@8�u̯b�B���P����&S� G,�k��?:�	�]d���LUj�����\�oT6���gB�|0*���_Wq�CPf�NR�'�?��L�z�xm[�~� Hq�p:�������m�nh�$��\����'�JS�-#J���\��_�`�;�/�@b�����a���(��)B�wp9a "���܎� �s��L��t�X�U�X=�b]XB��G�������W,J3J��C��s4�����kP(ӆ�x��*3�� G
_�6�J~��`پp2I�CMx�u���ƌM��*��1j*ִ�/#���!G!2��ȅ���/8�]5��֔��L-&(�j�Rte�#�����_���l��:şC�{k��]�`�ּ�>v=4�W2���G
�B�o��H��w 뢫`�tKǲ՝ԍY�<|�[m�������7(�.��!�;���D5x/䈄{��[�A�޽�V�r��ϕk���ѹӓ����)�Q�#V �梩�/xa�?v���K�	)'���q0yZ��e*���$b֞��<� �݆:z���"]����`Z؁����l7�瀨4�4�	��x���.��c]َ��o�z��2� W:��×2ܝ�жE����Z9,�a6�_{(������}0Q*��=�+3<�x�`�Q*8z>����z!��H56v,���M�O$��xa}c�x�1�KO;|���_!��R*(�c�78`�t�5���n��jp�Q�tK�w?�+<,#o�_u<#\e�g�������O�@Bd��@�D��tի@�jRu�jX����r�z�~�����zkZ�(k��7\�m�$V��?�+�:�x���M'����Xw��~��XF��E�������0��A��5�&��T�T�7���.��XJ�t�*���
�����J7M>�����e��CJ-�]�^�?�1| W�CMd���L^Z�	;����6��;���ܹ�?�݆      l&   �   x��06���OI�ɏw,��LNL��ϋ�qt�u����I-�wN,�3�7��q�w������w��+.)*M��,����4�t��-�1�@�û�8Ar
)�
)m
�`a=.cc�Xj�P�Y�����A�� "������ �R�      [&   �  x��T�n1<�_�cF^�=q�^�h��������z���z(�	�����90`�$r�3�./�&��a�WW�5���n���z���\-y�ZPZ�>]�̗��ML���w�ö\�e?��>9�ܒ-����XQ�@N1~1���i��)���Z���N9`�c�V���Au@�a��W�Q�Ր�)Iq?
3ɏuc�G5�2Z�t&�iC�a����ف�qZ�Dk�q��7v��3A
���P1�%�e���vOBH ���-)M�4�̧������'w�R�2?�y/q���/̈́�Fզ�{_n�3��s�e�jh������'�q-7
���&C�}=v9��g5��V�m�G����b�{�IS��8�[����8�BT��!��jz P2[���Dc*�zn%;��Z�E.9�1��?
�����ggq��ɏ���k�&נ6�O]������Z!�{������3�r�9J��&v��r2�Ά�L�Wv0�u-�h��m3$�?9���Ht�a�A5ܯx�Y8 �aPAώBnM4�؝0�ܲN�H����ۑvv(�vV�Y���^0��f�ˇr>�y�l�N5���N��yx��c5�ǋKB�IEK)4_��HH.�"��_:���u�W�r�����W������?��鏤��O����x,�      �%      x������ � �      �%      x������ � �      ?&   �   x��ұn�0��~
� ah�v���N���F�����5/Vh���7����o�J<��Uh�܍F��kK����k+[�eN~Y�a r0h$gc7���Z6��{�'��
T���ۄJ��w=Z�5�ر�-M�<�6&�[�і�J<��	�������s@��G���5w��HϩXԣY>[I���E�K�w=�pZ�*��m�W�LaF��Xg��2=��u�Ξ`���s� K�EN      g&   �   x���M��@�דS�	���%�VQ7�Jڙ4$�q~��g�^�Ĉ�.\5UT�͊�K��yװA��t5_��M�+:���M�$�J�+Qؒ�\?�[�D��j�v��� �XP�~H^/,Arp={B0��%�� �3������;��CA�~��~6�fE���Z��-Z!���.BK��E����;O�j�@>&�ޓ�ϳ,�!��      �%      x������ � �      *&   �  x��T;n�@��S�A�?� 'E '�
@�vG�
���mr�T���byCJ���*��}��3���n�q#��k�%�%ԋ����ˢ^�S��M��x1�?�g����)�}��T�?W��C�����-K����Ql�ݟA~��b�L	Ɖ--��A!�����,l����G2(j$S�'��3G�$'�탘�8�?T�DĀ��h�W��G��S�|l�X�1�����# ^�ed���:��șu���N�(s�0��_-W�DZ�Y����t��B͙Vw��S�� ��f�γ0���A�� b�$M�~���~�T�F��g��	?����:�IP.�!��/��RR�Z��%H�o}?[c=�H'�t6X��B�a@Z�Zko/�ڋjf3��*e�M���A!�+V�����_q�{Ȃ�lC�P���0����"}���h��b�Fu�s��ҕi��~Z���۾ o�~xV�a;���%�!���� 3a�ʚ3އEQ�."���τ�,i-�{|�飌ѡw�����p-���П��ً���[4��.\�C�A��jw�P!�$�R���p����B%���|�����ҟ��j^��D��m��F&�Ρ� �ZA��]B:���%5����h4��/       &      x������ � �      &      x������ � �      (&   �  x��V�nG<�_1G
PJ����X��L�0@4w��1f��3���S�!_�:���/I��R��N�y�tWu�����BJv�>k�-����˳�.�.�Kޯ�Ԯߝ�g��|�s�Y���md��r4��ؓ��:�o�p%ް3��1��&/�c�fo�lJ6TtJ1�9�f+��V;���i1j.�Om�Ns*"Jd�R���v����FBJ�5t�{�2>i����-�k�(]9�	�]#���~���	�gw8'��t|���0<�Rg�����.ԡS�V�C���8[j�@�%ǅ��2 �ߤ�	�LC��!������Q�����=�|'�ƒ��Yu�F�!p- ������l63��#��4A�xc�/�wk����M��V̆*���ih�} ��!�6��KTjR�(�e���k$�N !f�����om)��]�ک�8Ύk��˖�G�a�/�n����Mޞ�uN�-6 �������F6.v����j.�	�:�@FÐ��S�c�=��NGo	��.�ߋ�75�9��{ʅD�&�,�p8�e�o���[f^��% ���A+*���3?Y�SlL��4�&M��ѐ��Z_9��86�J��8�.a���*�m �(�H�Ar�7v�^:6�1OfRF�#�B��{T��h�����(hC]�~��5U����kPMEPH^pߋ@�:��d�SMYX��m�[�����{1���aU$�`�Ծ��ʠ9̓*���-����M�ާ�"����s�*�ӭ�E&>��nTgS�v�MN�ٌ[P�$e�N��Z�������X�1�Ì���j׋O)�� PQ#4��?�N}M�:��u�e&�#-����6����{
��.B�����f2٥l��T�F�U��B�頱�R�.��3Yuh�#���9��*��6ȝԧ�	=^[��)�:5�����lV0%�3w�R"6U@�tP��xc! �Vz@����C᭚<ރ.{�x��j�I��Ķ�7!5�x8<�T7�M�ui|5�[���"=˰��c�][>Y��xow��NV;x�]{���K��_JR�W��F��%H��6==
�#M�/f�#���R���x\�`_y�̘����_����t<�\ώ�      &      x������ � �      &      x������ � �      B&   �  x��T�n�@����2ò�$�!+�Y!�bu<�g�w�=�(�2E��]Z�Xf���F*U<�cwfvvG�aq�*]�򪭍be�-�W׷�O�r���c�uX��N�卍�����v*5�F77�+�f�Y1�U���Tq�ְl/�����S�I�G�_\L%K�.��DS9j�'���W&D�U�M���kD�i"�جMM-{�V{y�_�
��2S�>Y9�S�]؃p�t0���p�~������ס?���ʁ��}R��ʥ�:ȣ�tzz�G�VB�7�y�����PH���͏���?
���y������&�+�Cx~H"R]G��bv3ﴑŤ���O�B��۹7����n�n���>Uf�x�F�
Zy-."csX�h)�W�@Й��uJ{��(6r*G��xQ��?��eG���ۇ���K+8�7�_�߳B�9�Z���@,���ww4���wfy#�w��x��3��q����S]������C�����r�BGˊ�ن��Ļ��5��R��q��#i�	5��5����2Y����5��@�Z���5G��J��͌�'�$�'C8�I�&"��]�	yY����~��5���Y�?#F9�Uxw�*\_� �tx��MZ�{"q0++r��,"u�  ��u�V(O�/�Wfl���<�V�d�h�Ң�0_th��������dG����*�J�i��h%"��d]��������T	AsK'a���1:��i�Va�ݝ�����      4&      x���MN�0F��)� UԀ�aW�(-H V���=i]9�5N*ʝ� �^�Iմb����yr���V��j�ըm�^>���Z�tP��T�ԓ�)�	�6�l����+q
���э�� �|#`j��C��|7t������4ʫ����Ȃ���O�g,&�awS�F3��V�V[�#~�!�=�&�'�ޅG�����B���lM	�=XGi&2�$f�"L�G3^4�f'1}��Tw�S5��"���9L)���D�c��������憼|�&/�!�~��o�|S�y��^��      &      x������ � �      &      x������ � �      h&   �  x��[Koܶ^ۿ����q��'no�6��� G����a$�7Yv�E�]����w��F���E3�ɏ�|��Ce1���U�HUtQ�2�Tyt}�����:�Oъ��o�hxv��n֏�V+�Wu��$z'u�ᗓ��E��/*?{�Qrzv�B?����d���b:���/y[�{�.1U�v��� ˏ���<)e��.S�{#v���v@��b�Q�m\B*��jݕ��ne��<N�}$IVC�V�΃ ��[5�.Ut��߅kY�X���E7A�7��@�Z�����Q�����*z����Z���$Y"�0ё�Qts��� c��D�Et�ك�E��̀�Vh�A�,��:����z6	��Ү�Y�ǹ��,E��g� XΝ��FΏ{�/,m�@��:����e��Q�N��ꞧ5q��$mM���@Qy�B���c�|�@]��@���wM���bB 9!^�8�����n��	�q��*G,�X�G`�z��y���-p?����C��~���a2�h�ـ��MO�~;�Ewb[�U���}g3��Ҁ�%F���U]�M&s	�Oy�"�0ܱg��h�XA�=f�ܳ��E��y��2���1��
Qf��e*������nUţ_��2��k���K��$ͱn�`�&���5Lu��v�����GĒg�j]���><���ۆ��b�G�o��>���+�,*�nʄW����������)Ǟ��r��������b=����>��~�=���W9����ʟU���gFxS����4���V$C`����?4���#t�[�(�lR�Lb9�IY���E9fII�����y�rp�X&n�0%E�Jc�*r9)K®���� ~@'�	1O�\UvG��릴[L1
��f�NBk57�*���נz.�I�Vr�7
������4����%���_%�3�+La1Zxz��g�ޒ��ٮҘ뒯��Fm�Ģ�|%`F�;G,Qd�ys�h���K`:h�Q]��˩��Q�*�ώ�h"Y�}�1$���5��W��C���Jնe:Vh��l��
i�C�{�R��A�L9��-�"�%�"��FKo�wF�}��ָ�FXl
���b3�Lh���a֪�<o��1E�S��V"���Lhy�G�Ďa��[Ɓ��oatkl�W���&���G�38/6��&M��9B|l\hj�`C�vr�!㶉�ڭXp��MMDQ��R��Q�P�`�gzst!Eb�8f��,ԧOF��"�ba*��8��d�$�(���,�����l��L��1PKy�<�?
v�pj�2JL N鵠��-�@�0G�ѹ'�%l���CK�M��cJ�����O_����a8{a̫9jb
�Ka�P�K�ob���^���	�I��xY����B/�c�͏;8�s<qɹv�c���y�)�!kҎ�U�C�!�3�7��L�<��K�K��J=�h����ko���^�+�&�t/rQ���.��8����٤�}D�v45T7A7��Z~��4�3<#�Xz��P�Rb{�s�x��n��>�����/���|Ӵ릅�Dd�>�eu�����Ru��*��!,P�y��-,
�D��)��Y����)4-�"�\#d�m���p�l%L�b<ٳ����G+�U�vK?��G�a�DI�s��{3�ô(��=��Q6�������ݬwf_�iA�g{ᖙJM�AU�BU���J#�/Wvp��-��'tpvG�m�$]��^�d����,��9^��W&�F֘��
�B�rA��,0H���K�䒧	5��#���v�ש���g�����o�aT��ҹӖ^�)����52&x�!?�l]�A�@$}��I I�Be2�,Q`TC��{F��~2�/r
FX��D�#H�8�X�78}Mߛ�@&�LF�-/oD]���t��r�x`w��f���,Y��O���B�\�K���"L:���D��-.�l�~�A������B��vtrr�Q}Jb ��s��e�ݙ&�i��t&�?O�/�	�J&��{:��6��$)OPͅ���r*!����2L��z ߊD��0F������3^��̨l�6�l]8EY8'��:L:��{���q�}�Ō�S7�PM�w�&�L'W9�SD���E���Ѳ_`.�$�ɲ������A���\JMw�,49��6x��_s��T���� h3j�ZSf�vMl �IW��!�oDL�L�[�C��Q;��2L���zx}��*鴙�إ؃hW�@g��S��&1M�=�6#��&'��+^a_�N�d�)�+]�����Z�^�}��)-�j���4P�g1��J7Z+Q>ᐬ�)^S�D�GaP
�xHP��׺���s,R�hN�9�SG�֬� ��ta�u��L|�EQ7��J����2���ԨL�IE��߂�\�(ϳ��e.Y"���A6ЧG�]=ۋ$uL�^�)1�Ń��"���gS^��r��yjt��ѝ�H������;$�L��V�dwi��z��vKܝNkߴhv�9u��>S,�{�޾�٫i'r��!���5�������������[m����Nwuo.���
�����:l� ��儌���hV����Z�bE ��] e��� S^o��j�������ґ�G)�:=�:a/]����-Mg�BӖ�>8W��S�����t�u�H�3���.}SU[�^�9#B���'��
�H���5��U��07��wD�Z،�n]uL麑���?LN��OT�k��#�߿�����x�Ilk��{�l����V�h�p8~!�Ή��{9ؽ5�t��]����Z5L��?��u+��e�u�9�Ô�ӥ��W*�aMݬ���~nkf',a���y�=�A�108�Ԓ�a�9���
 E�
q6�8t�r �{`S���ʯˎc��-��U�a��٤���:v�����zg��0%�l��S�sNS�a���gA?�8����yj9��g�>�r�rx�w�Z�D�٢���G*o����0�AD�3�s���*�VV8�d�=l��C�A�Є��s�>�cu��� K���E�c9\�z���&K��8�3�u��a2�|r�
��i�ڻ��󤁬�����/`�(*]+���a�\0�~�!)f]�Dm���ۥ~��r&�g�ż]$=s֖N�Q��3.�[ѹ}6��0	a��⋔�UyP/{������և,      &      x������ � �      b&   �   x����n�0Dg�+��aw	:n7'Y�L�f

�Ȓ��Q�n]�c�ڠ�ܡ��x���֏f�#9���x��Ul�<��Cg;Zl��k[�]kg�_xRsڛ�Ify���� �D>5���H0xB�7��qY�fH�p!?��rў�g�$wd�@���.U�~-gsR�T�~K�t���Lj��;*��C�g��4�3ɨ�`?���$�kdG�>��}R�(OeQ��d��      &      x������ � �      &      x������ � �      &      x������ � �      I&   &  x��U=o1�ϿBc��8N2�N;9��|L�NvT�ī>���c�E����J����ɓMJ�y��Yv��2�_VFK�m������X�����I>-��ҩB㝮0{����2�(G_���}��˲~K�#����o^D+VZY�m��(Q(Q9��*�`À����V<��"$

���pсQ~0��w���]{	��ֽ@��*�⺷	���(�GaQT��!���a+�J�0�+�l?�2(�~�;�:=�
�8���]�KN�h�'U��nq��ڻ��2i�!pz�#/�(��>�����t�+*憈�P��	��#�r���@N�]$E�K�]�C�b�郶�:�N� -�&5�K@<O�"�ּr[-{o�ĭ����-h"��N��u�|,��WA���`z6>�K'�.�{����t�+/�	��m�&�S*�"�+D@&�4)�P���e��0�>�-�H����ļDC��-2	��I�fK���FWxc�H�&!<��`4-��@cJ�R�$	��r���K��K.���ѤPQR��U��i�x�4����F� �P���ilhR<��y;��,&�1[���f��`vN��]c�y�xK��hߌ�$Z�D<�?c��(O��2Z�b��VZ%�ظXѭ�%XR�o�*�Ɇh�;�(u��@~�fd�%a�M� �x�����jS��dWJ:E�Ǔٴ��T`�Rv���$H���j�/�5:�Nf���'>�@�X4wFo=�I�Q6	�o�M�������0��6��+G�M�Q��F.�q]��q4�p���      Y&   %  x��V=o#7��_� (��8R	��|#He@��#.�Gr����K�ҥ����+�V�\\����͛��{s5}p��7F+������݇ۏ�傶�[��_./����'�U��d�Â�KsO���ƍ�F����4�k	�mE�^[����E���&1�]H
�_��P���݈�uC(h"*n�q�pB�����m����00"b�H�Ƹ��g�*Wk��D�_F�������Y1#A|i)�s��0coh�X����^C�*d�����-�x����
�� ��D4���ǒo\F
y�K�%�%�Q^7y!���#�����k'B��VN�-y�d�Ǯ�O�U|^������ϠqTz�A1O%(P�L�^�V��XT-��L>�ev��?�M�����(>��22�K������K��sM��O�℔�����#�P����2UHN��G�Z��l��.��w�<E'.�戳���t|su���݃�T�nP��%��8���uс3�䡵��w@�?�p �!H���C�t�%&Y0�܌����ł��U���O{ b�[��NS��[Z���)?H�}�7�	�*ݕ�$��)�Nʩ�O���N|�; .�D�%��rߏ�a��_�׃�o��ى����>�e��I���af�e��~�{ъ��ι�e/����5h�6����Pt�f}�K�d������f(BJ�sj�0���2�m^�-�ǽ��jJ�#bvY�8�1����|�x;>����Z�Z#ɤ�ZF�O��J��HO���囎�G�Oϙg'�:�~|{\��[e���n%���e�9��Id)YZ��ں�� [��P�LW�;t|��	�}�����u^=׵��F	��dO��0~�B���wC需�
eY����r~�}f�kn�I���G��M�)|'��[�Zn�H�S~ֲs:K�tz��<G�����ざp�d��5[��<p�J:h4óY�o�z��g7+���y=�s�{�Ң+P����BW�r~�q׍�F:?L������      &      x������ � �      /&     x��P;n�0��S� �#'0��i;��Lѥ(9R�N=�/V��^�c7Q���Wŉ{�l��;��q0]�tj_:��dZT�^�Cյ�5喃
�77rq~.�����R#P �$B��ӄA�����#_����J9Gt� :��nOp�H0� ��GY���; ^"����dL(�Ӵa�"}�?U�Up�4h �	R T�-�����-ʣdjm������,%O=)����X��ɺhF������w-���, �%��      &      x������ � �      Q&   �   x���K
�0E��*�������
��Bx&�Iɧ�r\�K��l��:q���{�T�$���zY(�N6���F6f���pY���쒟�O�=)��.��բ-�!�ӑՈLf�.A�f&l� 3��c��,D��"���P�6�������jNN&��s��?����9������|A��R�"}y�      	&      x������ � �      -&   �  x��UMO1=o~�@�H��Q�R�H�zBZM���k/����#N�	����uHh�*��;��ͼy;�}��l����V����^^\^-�.�%o���Ǭ>>Z.�h���:[�^W�Ս���r]�y_8^�S�$����κ�^l������,�r6�aA�}���V�������T��!OS�rԐ����Q9W��28%�~@X���s��6��� !$�4OEG��ұU�RP���+�jT�.�dP�P�t��i>��fgc�7�������'|��@��>5Pz�&�9�jG|� �m�D4����%"�c����%`�({�C�(�?��Aet1�ժU�L�`��\x�T��(��:w7�&u�ǔר�W�A�6��=ݿ�>.w����l��i,œ�s�T_S���@r�T�=�rǧ�q��4 ��9�r+�In}:h����yv���}�Rq�gM�Ώ�2<�n7�J���t9؜�y泱���)S_Q�K�L`7�����h��g�c�Mh9Fu���d��`ge=t��S�?g7�����l�EN@D��0i�`U�'��I'���$��c����ז7���҅6%BGo=3�i�������TLAZ�0+�@�$Ƅ�d,�ꋑ*�k�.�����q��������8	��Xh��1^
;U��w��c�d���Z�����G����E3�Xv���{{4�L� �h��      Z&   8  x���AK�0���xG�1:7��Dt���4��m<Ȓ���p^�bfm�V<i�S���~�d>�+�H[�9�%�l�̳��b�˜�r���Ld:��ts��ؾ��b�"RQ��H.ME�*<��6>�pSx�*�lGP�@������c����̧�&bC%�rw�Q������@h���]S��j�_���	H��US
+2����W��	�8Z=���x`��[��g���t���ݦ"�>v�����%�H�W;`��6�|�q�����^j������d��Ld���C�c����Q��z�Ķ�$I>�1t"      
&      x������ � �      P&   �	  x��Y��9��_�p��oa#�ǘڞ����@����4XUVQ��788s��s.Y�����6j��d��9��K].n�^U�q�Ë����lU>ܿ�������f�p����f�������6㚷vS��{}6;{c���Xz3}�uY�F���~<z��������Q�׍V�Qor[��b�)��F�a�2N����j��V��X��VYU�R��-U�+�SK� ���U�t�T���7�/Yp�Z̮�ة���������i��G��X]?�6��>y����e=r�����
kU(���^kgs���iZ��&���G}����m��~/N��|��樿��1�(o`�Gdg�
�Z/�r%3���a�iV6CJ3���6뀯� �u1�Su�զ����k�f���%��*'�p*��>E�{oJY��v�E+����R��8�5謱pM���Z�@�!­#ԝ�#�~5�7�����_���f6Q�[wuӪ��N�/���%Rv5�����Q�^"�k�^:�q�>�?Y�������	��4m�$$%�ߑ��X*�5�L�ui[®�E�¹۽vؽ& t^��_Jsj�}��L(e]�ZNإȷ�����3r�h,C�Zs�؄��4���\��Ёf�x�L�8x���D`"���n"�x�ċ�:�r��Uo_5QUu9�cU
s�L-�c�R�l30/*h1��@== �D����pQm��"�&�*��B�r��i�-x猎����kb�ZrT� �����!�ϯ#�/nq��:W�EWi������f~o.G��M�U��5��1|ʘ��|T>7��)*4� �k<A�[���Kg"Ԛ�4�pQ�%�,�s)H�Mo�6��K��m+��V�:��߰n�mY�5�D�,h�]G+�&BLz��%!m�̅�)�J8�R�X�iQ�ߕ���z�`���>b���V>%�|ظ�'�@FJQ�vK�	76�����T8�.h1 ��pu�����	�O���ZL���Id��WXEs��6=si�7k<kL�����DbQ��v`k��?�Q@*� NL-5-�#Luk�G�O'����ގ�.��(���[E|WޏU�g����Ȗ/�� �t.�!g����
JC)Ό��E�ſ�-�k�2�����/����#��VpDL�vT�KU�T���-w�d??M��Frt>"~��X@��	F/|�1�᫁0���|�$�+���)��9]��N�%�r�4}{JvBV��|ۮݙWH������*�Z��P�k���+�wq�z���ܢ������X^�b�{��c����
�)�)�̭&���@g8�H���*�i7��#Ӓ�ln68D:�C�w%7�T����'���AxhF���<�k0�˲NѨ��R�h�9�Z2o<Z����-�W����`���tu�ҵx��
U�1N8 $���.�O�5������N���nB��h����BTk[�v�R%{+�m ���NGl��y�BEi�SM'��:�xln=Tؓ��-��/`g,:ͅ�m[XPV4A�r��)�#k��؂�Ek��~p�,q��'��`�[�R���N�򠆧�LTi�vl����k����p;�+��t���]�Ε�I��w�)�-�z���%E0��),�"�ܩceĤN5ǀ�1��a",��jJ�t�K���'�]���iH31`��Ϥ�G�Մ.@ z��Se���K)XB�����E*?�Y�u.�#,��S��`������h��`bl��淑p��ϛ����B��Wql���J��i�,�{,.����AD�}�����yuRe2��d{5�7&E���`�b�]�!�S�k�AfU@y�)6�e�I�b��z����$���T�����H�/�0�H4&���__K?q}+��l66]�ƦŸ�0k��is�O�e��G�.�����C.��3Z���� �x��$���!H�y]�Vw�	S�w ��V�ľ�sIvl�����رH�b|G-��n~��º�'~���j����a���o�Ƙ�٤V��2�M$�����Ջ\Kz;D9͉�\j>�-�����Xғx�b�}!��H0[h�7�`;5�َ��9O�I�G.)�q��dɁ6����v2Uv-{�h��LZ�@'ހ��Wீ1���kR���� �>{ή�0�%��j�nڛQ }��j���[��5Clri�y��� �Y0L���)E�w�2��q�ќ���J��V�09EU�P�tk��G�Ļ܌��\��\g7Fƌ.�-�������`�������]S�F+Q���+�J@!�rR��ּ�h���^Cr��r���~�����o�M�6@��Q�����ݑ3 	!
%�����`/�;�0�����|x�5;���'?]�L.���h{=^�[��#oE�-&�D(Î��^k��Y��ѣcem�
���C`ȕ��w&�($�;+���4�O~�h��F�{�	�x������-.f��?������� 1U��b�|7}����;P<      k&   �  x���Mn�0���)x�?�q���E�6� �" A�g �#����誻n}�>RJ� �	q�����Y�.�{��D�4�kS�x����_nVzEG�4I?N�d�Z�o[���G���7R=��Iu��Ib9<�ڣ(S�E%I�)<M �2Z�.��N����C�(��g�s�Ƅ���� �0�֢_�O�e�֢Q]�;{e��O�j$d�Dʒj(D�&�ն �[��m�Lw=�n�� s��P�u��,�7���Ƕ-��a��KЖ��5�*�ܘ�h,�E�W��A�q�gԱ�2}Nt�I��+�&X�z���_}>���ڞ�v7� Ot01�"���0��Њ�()M_�<LE,D䝣l�k5��'��\U?�Zى�g��}}�eP�N��|~v��/���ʧ�pVc��$��A%<�J����{B��r�{/�N>[��t���j�B�|����<�x�%����i<����      &      x������ � �      5&   �   x���1
�0 �99ENP0(��"�S��I~%P�K҈��^L,..�oz�lDǞ&�f��C8�m�]�[�t�8k�+��|
3�a/j�ave
���Bj	I=邑��1�ɕ�1Im̟�;�R\�U��L��z��PI)_�S      &      x������ � �      &      x������ � �      `&   �  x���n�8ǯ�)|�JYD�G��
ەF�;�3ڋ2��z��Y;���6}������b{�8!�M#mWZ�4v�����?0��[�<"1�ߦ1qH9�On���'�e>�����L���4�1�X�i�~ou[D҈��⸣���[5��:k��#5�`�V$����F�8"ߠ�\p�_F�D�?I�g�!"��8�Y�|A��0JV����X",��q�4��K����J�N{x���B�C��?cA�ʉ�p���6�FR� ���! �;x��������IBX��#�"��{.�ۑv�����ux|0_Є��Դ�y�h���I�R���<Y�d�q�҆�T��<*3�.|z>����1�Cda�J՘�P��X~c�Pd�!�V�V�*jh��K�'�����xC$��
��ffϞl�f�M�<��9�TUpq}}���PV��:έ�K�N8�ʸ�]�2������={#Gr�_yF0�[q�PFaN�#�>�l��!�^��Nfy�	�X�&~E���c�^� n��S��Lź����C+��R���&[�\e�N�3fD��d{�ҷ�N�������,�
��./�Y�q�~ ���d0�p'8��Quߓ��I��t�}��s���r���������f_��=I��Q � jS�^����\�ݮ�+V{��i�����Q�|=�� I�����D���:�K�_T��%��Hx�����)��L��#�R���Ҕ&��@��2�����T����/��:<*[M[�+SYRT�T���֙Z��=Y��d�H�T���/�ݤ���C��Zc�Q�.�s_3�GΑB�V�����~[�u�F���fl��'�x������xĀ��	]<�`�?Q�l fL{��'�*פ�^k�.�N���3`��&�S3�F`+-sq����7p�
�W'Tǆn_��m;�s�w�Ω
�;5N~���	3n��zИ�z=�^[��fT�Ah�S��XD�l�j���Y�U���P	1�5N�ِ�<�1���V��d�5��Bo�	c��GQ>SՊS�����e%X`?{妽���m۠�Ɨ��U�6��r��S�'����ʨ�l甤���-���vNm�?lp��)QoԱ�MŲ6a�`��k��oq��J�$�KOmP�(���lӊ׊��ԯ�Rѩ��/�**h]Ec�׼�F�*�χC�OC�I1j���m頕�p��A�]P�N��S��_�>�(����:�B1�u���Α;���,�ۛ�i0��=�֌m�|�տ2av`,_<{;���y'�a;L�w;6>܎)}�zݠ���Dִ�c�i_�`۽�@X�j��5��ݼq����*6cF��7�/��'�э�?�;�сo�TP�`�rcM�
5�����?�9x�s�t��xO���4�O�P�Z)��c>�=�0ߩ�z�L%�u��y���WA��VWʡߵg�v���!�      &      x������ � �      F&     x���AN�0еs
��RH,��AJAB���5��z�؉��\�AiX����_?_/�j-6l�fU45i��VU�����T��*�����ҪT������m�c���[��{td�j�:Ͽ�X�ew��G�>�D+;ǲ�dO=�5�&��b�R����H;>�	9h`��.t~�G���(�č5]�G��}��Ɓz5�<��'���h�F�r'�:�E����;���K��p+��M��AN�����>8�`�+�8��RH<��%�?ئI�|�@3      =&      x��]K��H�>ۿ��6��q�쪝��.�L��=]h��Ԁ���T���>���G��뛱7���/"2����=�����D&���Ȉ/^�������n��̳Ԥ�+�/��xu����K��_�f������˫���������t~���~�u��E����Yi�ƬmѸz~6��צ��YM�l1��O�>�&z�Q?��%�d�{_'�Pb������0�&�d�X��/�MR�.+�d������"kx�����H�2���RBC7�ʜ��J>�nm�l��X����hFx��\�٥Y&w��޹�!:��N`��a�]�k�13�|~���-�gYHӾ�hG�~I�Mxˣ�S��sa"�r6�/'����%�0%�eɝ�M��#$�h?�@�i��禪LjF	�^�j�5�gDsˉ���V��S�͒��ݔ�DQe1�'�w֛ߕ���:_��w��f�KI_������Vf]��������6Wef��;Ѕ����Q�Ijl��bU@�R��بuZ�e���W�&u[��o��uC�K��-}�=G�^��UxfBK�r3i�*ָ09���>��������K��V��A��<�*�q���w����79�[����:��'`P�jM�d	���
�Kؘۜk��k)�!���}$&:��,|�a��<��ŗ�L;�v���z򒸻{_Y�j4C~>����������sr�����$ikh���:.&��I��")���5�n[5�
C%� R6O�ve*��\��;0���y�U�1�������BA��b��s}ȂzB���k�pP��s��+�`�V�ƾm<y<�����MN�^ɬ�h�� :�/!�x�ء�,�|K({<V���a����-�S�@��?��{@�r�ʖ��X���C�Eֲ?��)o��$%����gRR�K�U4���8��VS�E�'��6+�"������'����g�����Q��`��<�Y��\�v�� h	�ᓪ����S�dD�%�!_�E��mCz�� UcXwӚU�C���.�r��� 1޽��!�����{�G�?�!�$����J �$�X�n����[����$~5�%[)�����Dtiv���L&�J�1�HJ2h]�)f�f`�6$JF68���	2�+�&���tФ�n�t�����2"�䷯f���݇�``�ƔQ�0wMh&3����<'UU�{�pc�l�>_�oi���a0V�#�S�xG2�!���"�X���[C���K�56m���61�6��`�!Lbɵ��ZA���� ���hxy�8��1`�|?�q��ݹr���6��U��P�[X j�z.ύXҨP��#iW-��D��h{���z����_�����=�c�H�`�QrMp�6�l��#Ы7��A��VyEgZx�;]��*L�@t��N]�۬�<Ƚ���;*4��g��t|��)#8�7�7p�=�$���'#[��w���k�Y��_G���y�0N���5�)�����������c���;|A���=�4��o�g���� bE��A�j��x���9��
��?��#�̟�7c�c�ѕǒ��w�>�t
�a�����i�I�
CXPS[*8�R�|�M&�5�����έٷ&�-�C�D��,;33U�4���'E�-�iRvi��f�{���}��ߧ�A���6��8�gx��G���hq�w�4Z�+�M���_/��
(v*�4�ǯ@�ڴ�u3r�-!F�h��ZA��-�<�j�-3� x���ë
qG�X�Uފ/Y��
G���0T�P��li.���F.y�d�h���w�@�e1�%�a8��M_���#+10�?�c���t��z|/^�.�!?�pc{��}�#h���b�\[k�aMU1��>G�5� �V��OA �TBF�}kW���;S�S�˓�1��!��y�^8�0�RiY!������`�II���F�J������X��sV+x�E���8=�=��d��1� F�u�
�"ѧS����.}�vE�o���^y �j���?#�'%dN�X}Hgz>���_*�!��
��;�K;9���-���7���w"<��\ږ���j��jx�8Ü� /ľM�&%ǮE[G
������lԎS
�_r�]��I�i�����}�JW[�U��b�xr6d���7��H���}����ж�����l9H��$�g�W�3ǈ6���>E~�@<�z߇��� � ��zs�Ԉ���D ؐF�fI��TP��a���׻K"�H��?�<��A]�	�.$�3#�Z�������r�Y��y=��q���L�}�I:��Ob�}�����lc������1��2vL=��tpQ"	U�/[��0���Eꎃ��*�cB�G��ޮ��ir�P��ʒ=9���O��BR߇��w�E+��}���!mJNG�8'K�������}�OO��K�#��]�9�Y0�<�.�$�C]�f�\�{JY��Q @JYM�u�{�N���~z|���v_<f4
��d�^n�7���)��4�7�x#ͷ�.p=&�~ m�x�Oq�f�*r ۝�K"�)�5�a*&�4� �&'y�J���q���:⺗A������]5L-ʃ�XT�=K�ݧ���4��!�ĕ �.¸ؽ�i�4>t/��Fњ�JJ̊���)���ґ���$�s6�����P$����	�Q�=�i�D��Tۤ�*��I$���@���qrGĺwwHޗ�v
=}r`��TX<� ����e��l
�<��kH=ί�®ǔ�����*�d���MCn��9ka?ݸU�{��Q'[~yx�-*ۦaڸ�K�䆥�C�OA��9ph��|8��Q��1$�H|k���Ȱ���)v&�NA��}W,[2�]Fj����z�k��!>%E�2��2�e�V����|
�#�boru4�ޚ�ϱ�&��~p��<����ޞ>����H�#DE7����ʐ���>��:�(P���������aV����RzD��D0�ƃ��	�+������1'���f
#����sT��$�:���٫})ܢ��U�4�*� GJ�֨?#�tkU��=�,���#�״R�q�Jt�$�D�G�Fc%$Y/�9=���Q�P���9q]�[�v��)��z
�$�R)渐�shCS`i͵��1SX�3�yF���3�|����7Wq�4�5{`$����p�:��� -�\0~5\
A����ly@�3b�&��E-]�J	
�4��}�V�1r���lʧ@6�}f\�*�b�V\���m�g�u���Mb�����*c��)r��L����"�$�@ʯ���|
X#�=��V�G�� �Ò�c^r�x��w��;����� �	�d+�Fƥ�)��X�ȇ3VL4o�8�\�>��H��U�Ac|�i���̎�Xh���׫���ي<x�O��:B�N�{=�o���.������!!�g�+˓3-��5^��}�H�n{�?��+���pz�{$�4�"a�V
�m�j��Z1�۲p�c��XjrZyBB�$�������bo�B�}(�#���b�ސL{��ز�
���>��.���rK"0��,$@�t`md0x��F�q�v5�����;j� WWX�-�I�����3�:x�?�'5��A��w��pqSZ'N�"���ķ���U-�@ۧ�dSp���k).�_ü��32�~]������xAR�� \8�����_ "Ĵ)���d�4�����?bD2�i��#��
mn��K�SU��-,($4���Eiq»�î�l�(�i���rZFf�+yH�Dh
V=?p㏭`��Ov�Aw�g̳¾u�@�� 6-R���X���_�r�ACB�2,�%��f�A������@��)@�|T��:���f�I�D �O(�H��m-�{�Y�ߑ�8���jtT��2WQ����S�=p��H�a��3�_>#fL��C��]"�|#���g����hW�c&�������.�v��_�v��(|Y�`2��'�o�VqKh[K�vGi������Y���-}�oM<���k� k  e��T���W��\VFH&v��3ߕg�Q7����#���xf��U}�(�LV����f* f��y�c1"t���〚�34����CYL���Cl�o�Zf����5�9����(a��812�
�,4����Ny��$����ۊ$n�"�b�P�*�Qd�_�x:������,gi�쀻���h���q��t�6�<��cd�l�R����s@@R��O]I��DIC�$N��DTH�N���CX|�������/^+ǖk���5~SD�d�/$ �Ҏ��>�!��<�~�����s}�C�'�']�)��7��J�
!u���R9��|�˿��8����L�(���A1�(
h}M�cy���w�#(E��=������)��;�a~�s��&F{��/�PO� �'C���=�轾)S=��E�"4�ʘ�ߘ���D�f8� )6��s���.�`*�h�'wD��c�Y`S�t>���[�EPY����K�}�ݫ��z�"V�*��!�	�N�O����EPE˼�۸q�v#��W�������H������ĵ%��b;!Є�pFCh�URo�(�<Z��������d�������A�:��i|�[�A2��P��^J<2DfzN�H��$N��1
>�J`U)V�M��G�	cm�|��ﲴ�^*1s
n2��?�<�_xo��2��
ɚzR���D'����;٢�Ҍ&^���ItM:d��-+�v�Ҙ��=N�}���8��  s�k�|;3�
���]Ҝ#�"A�Bs����S�!yk��=C�B��M���<c?�]ҍͰ%���F�4��GZg)zP��*~Jʴ���z.@M^��W�R�
E�w�$�kr��1�^avN�|�14�V��_xc �`sM�^L����	g���c���)W���ֈ�,���w�N�-"�l����>]";��f�(�݇#.>�]��q#:����I'���zr:}�ڏS��&�6� 4�aؘJ�R��%�~�ACǎa"�7��&ƃ>��tK~���ʬM�4�P��}��Ұ���[�YT�p�t9s+g������b
�%��O�H���._#���p�xG ��f��z�g��z���0��O�(
�jvCKF�8��RvQ[�1ъT.�;C�\�,�i�3�BX��&��9h#K߂9"�!M[͈�Cj/��{k�d4�qk������B �S�69Y��`��]|�܍',M��h�����U�N��Zs��4>,�������ə��o����_�'1��i\R2�K�Z1���v�B�H�ƕ��Hm����ܩ�0QT3�D�z�q���-��xɱR��Ig@wt�
�����h�X�^Y��)�������:��ψ�BN���Q)I��}~J��Z���lr�۵���%�S�����c	?�ׂ��e;�0%�,����7��-�a��u
�$gGiu�t����c5=�q�� �7�&X���u��WH�����(s�U�vҐ��C�P�F9��M6����ư���'=�`yK5�}D�����r���x��/���,p[Oż�j�m��@"����3��`���!���>4t)�A�ZDZ��T���#���+�ݒ#6�)�S��qĜ�\j5:���K�8(�.sk������\j�+����yl��L!�|��1�/��Z��ܼv���L:��i�48yk�=���?�߭�$m��2��b��&R�Uv���id��v��`��>[��3��c-���D,V�FwhG�:��u�u=�ě�)���E�MUE-j�3z�u� �+!�~��K��ե7�č���6��
w����Ǒ�E{�r
�}�Ѭ�������]�OH.��n_-��Єa<�e=�w�c����<{�c�@�w�`o\��0=W�%X�N� 3���
���)7�쫹�)H��q�:~�9��s�wz�}��}� �?rУ����Ě����t�/�Ƃ�o[�=��\��P�LRRQ�/���S���������M��clQ�V��>B�1�e[z�`�{_x�>Tnm��ٷ!_���蓝�E[�A>8��	՟�:K�HL�1�ʼz�^��pLP����Q����}���L^rV��ȳb���p�T7D`�N��(�P~�=�MT�o66:"1B��֣Q�%�1����߁z��V7��OZ����JbI��)�r�g�z
WB>�5y�J6�v�~S�M�~' �ܰ��vv,���»ߒ�e�T�]��m|��̽Ӧ�	��nh,�9�_x���ҡ���{�V��H8�����t[,3���]KP�w��������������.�`���_�س��-�?��'^G`
:��g�Ekv�}��}��M�)��V��pn�X:9)I��ں+JN��=LS9q�*qd
&�����pc��)�:���F��KMC7���i�w��A_*�n�qk͸p}Dt�s8l8�n`�#�:}�.�8�
%df
4����B�C��/��D5�/ष*6��Ƀ��X4Yκ��"�[�cpug@�����/R26$D����hu�T#A7x��L��--�����j�GD�`z��Af�G���^Ʃ����$r	yO����
�j+g���zZ|��,�Ws�w�ޑ�\�=*��A���촶'7ve�����I��%�m���h�UL������?s���V/=Z�AT��㧿
`V���"#�^�0C�C���I��hP�4��R�8&�w�V�wJ�>��~�0��YC�݉.Ԃ��߶DQ\�c��w!s�+ڗ�οY�<�����y��?#�\�F��1Ʊ��Ki�k!XP�T�>��=k����������?v����=�5�*��-K"�;�[��bw@Z�r�k �B+�pi
X��`�ƽ�D{��_x�1��y�ډe}��-�p+�:Z���s-@&�y�/2H/�ʃ�)���#�� �<�9�Å����Ck�Hv�el�C�g[������������<^[����Ǫ��ǡ�.h(%�}�)�Ӂp"x:}^z�������<���1��,���
�Uc���$y m!EtP�
4�l�B����F�h493>�
�-�rb��z���l�v\.�A�f�X�EJ�5��p�&�u�V:�ަ�lv�4�Zg\�*�`W-S 祇�oؠ���ߒ�v�D&�N���5�%Ωȯd@'.�����]��~!JU����1����;{�wfڄU��e2��J�o`��oc��tN�Kw���G??q�R�;j��3��h��ȷ ���f��BNAƗ�q�2��R��/l-?�����f&'��qd�k�3a�,���>��D�+$�[ 2����dC�9O��`�ˋ@qUYnQDC�ˇ�W��S����"Hafe�����s�M>ޜd�6�P����5�]k�2Cs�dC1���5�( a��:ؐ��%Ր�/�!�~<�GY.cF��}]�Ң��Ge��7�� �/3�Z
�5�L�E�q(]̠ѣ
4�U���n�iڏ�x��Ef7�s�sU�� ֣q6�uu5��לF"I^�ɢ��Q����R�"i�ϊ<� �������� ����$7
wn�f�y�χ h��7E@:[���Z���:TfIc�ß�>|��>	      A&   �  x��WMo�6=˿��\�z�4Gcݜ6@�� .5k��*)	v�M�9�P�֫�X�E�n�^t�j(j8���z���ކ�\��6�ml���������vC�v�������r��~���mB��]uU�Ɩ��l�'���UM��*���A��j����>(�j"93��y���t'v�o>�6�v���	ˇ�[R=|��5�7N�;���HZ=���� }�Z���㢺-N�,'��4�}�5bL���O? @K�uH���*(������F�Smh�\ic(����ΉZ\��"�7yۓc�T[�Xn���c`f#�Z��'��.v]��p>�o����Av!�GylB#���桹��9�s��<]��	e�^���i(lk#��G���0<c%��\��0�f�)�}��}5?s��K�Z[�B�
)�)����z�9r�+�"5<��G�c��8!.*�m��.�^s���ź����!�X'�Sԇ�<�B��1ZL��ΐbF;4끘d:�Rv7�zc�����k��ɣH ��4��Kd���!!��yI�Tw�k���]N�|�#Ƞ��s� �^ruB�igH�b1/���b��ǿ��S��Dß\b�N�YOe>�u�h�h��,����������v�i���Yr!(�.�)p�'>��8t˅�Z����ɹ\��<4^U�`J-��:x!����k���'��g����NQR�5�+v=/F�;�[����KԔWq\�[*�Q��؈��s��"8&I�
��h�ז3��u���B�FOR�4��k���>�y����ơ�3-��� A<�k5���;�[*6Y��iF��u�������S#|C��ag)��~t�QͼR,�����ӭ�hn�<�����쩃�'|�ĉDi���E��t{�i�~��t���v/���o����XVJRc0�y&w`�7ZdE��q`l�7����meѝhg�Mwh\V�}�3Ww�!���G����3�e��F�H�:�'3���#¦�{*�&�����czq� �(΄��"9�t�ó��%����%#��3��bU}Ġ����'�Y�2]9��SV<�wd�v�-��Q��g��K�R�F^����9~x�.����λ�$���f���.·�f1ʿ��;]�9�`���Nz����;"3z�[��N��>�Y��s�{�|Xĸ//�\^\\����"      .&   w  x��V�n�6<;_��0K�(�=�N
,P���'-�^.$�KJ�?ꡇbo{���q��	�S.E��Q|���r�q���՝۽�a�]�}|x����֫�٨δ���^7��'sr���b��s��/���cm겯�fA��S�b�����e'�NF�|L�	��e^��i�F�X�Bl��y�-�IyŎ�O��kM89�=��)���^y�zm�dֱ`�mMa����_��/ں{w�B����vk��z�6C���h�
m�V�6>>>>+Жh��������������������������`q�8X9Xx<� � � � �@���
ppK�J�J�J�J�J�J�J���BD� W�%�`	�X,V|�XX����5毁�������F���\	�W�+���Jp%�\	��II
�"=��Hʘ�1i#�c�MjJBJ�XC�`qH�#��ϱ�����4�!%�!$(G"���d�05ڸ&	�IMB2I�\�oHxos�l���}�5�q6�ِ/���>0*]cC��	C��i�!l,S���&��>-a�c,p؇��}g�$�����U3 G!l8Кlc0�h�7�q����lM�U��buv>�;i�U�:4F�3����H��E3���mѷg�n���A{Pm�؏z���+�"�t_P���*�P	H ��H��x�+�+)H�@�R, *�|�Gd��e^Q����8_<���}x���8v��ů/^h����
wt���k��|B����1�j"��2�ʞ7�o�9����c9���x$�D��o�C���?�۸N7�9�鸻����f�$y_�$���p�GkҾ�h/�ů�W+v�~�NT,���ZC���l^��n�?MG��C����gx��8*�R���-���8�,3��g�Yn�-�Q	p�_c�����l����Q��)'�m9)����G������j�����E��~���|EO�sP��)G�1�t	A�1udj&H��y�uà��,��DS��d,kG}��-�F2+�bi��y�O�jr�rvݙ�7�6��Q;@+O�ž��zzǎt�Ҟ&O:TǴ���Ⱥ^|m��Z�:�����t&��Z�G-�!�k~�]������A�      L&   �  x����n1�g�)8��a�u�:ct(A�v2`�}P���.��6y�Lݲދ��|��[��;��x�ZLn�m+��l��ܷ�77�כ���\��`2_%v^���$��;��/''��>���n�%��K��H��!k
7��CA2N�#�(d���3��P��&ʌ:I�̝D����G�Է��T����w$��3���@���$w�TL`��ǿ� e��sb�'�M�.PuO��%q2q�Ҙ<�w�RA�>-�3��=-W+Ͳ8;��~z�����ɷ���t������Ϩ�����FI���I^�if����=�;�#5��Gf�L�bE�.�
E��hZϱ��Ϟ�����J$w� U�"�[��{�T\]�I�J"����=;|/J7X>
��:��>�2�G'�u�U���' �y{8�(s3<F�U�X�eNW�P�	B�rB��Р����/�j7]��z���h�����p��P����#C��V�Uth��ܕ^+/��H1�T�\�Eg1���i�ل�:��ŋ�$����-�Q��(��3T�N�����C5~7BD���
����G�:�*�>�s����#E�`t"�O�ɟT
�j��U4�5���My}�)�t�j��q�E�f0&u�/��K�|�Rb�}ĭ
2�a;�P�������z>�N� m��I      �%      x������ � �      ;&     x��T�n1�O_�e��Gb׊�[Ie@�x�����!D��t.S�ҥՏe�x:)��B���rfvv7��C�׮4���mH�������`�?���SmltS��R~�+W<N�~14%�!�R�ʲ��nH�JC����T�(P�T�9r�h�<���Yr�^���4M�fgU�,�BT89�5W�R^��x�����x�W�����*U.t \8�n��������}6�a��k���ER��2�[��k-�.������{�γ#��gC!Q�\���￐�j��v^*�h���!����q��sQL�Ӭ�,FM�jd2�W����	�X��~�b��]���F��(�8��
ʰ��s�'BW)Ab���i�E%,����]auq*��b����j�)�F�c�Ov^�ہ1CbA��4����>^���Rv\v>�1H��G��Ŗ�����W���ܮ���ܬ�LlC�H��-����X��1���J�H f�ꕉ�{h��Kk����
e��e�)�"Y�0Nn�Wo_=��[�T*�+1h��O����pN��/2���������m��������r�#�}R(@��թ�_�O㻶Udu�+���і�k��I�Po�Yx�(%O>W�z�2�sUI�D����X�dB��T"�#���F�������� .5%xi���T=o�cԬ+�UZ�H�o����mK�o6�p�(#���	+#к�v'�
7��I�:)�H��nc�̡a-E�z�;��#�	I�ɓ@;����5xl����s�����3���      �%      x������ � �      �%      x������ � �      �%      x������ � �      0&     x��T�n�P];_q?���+
UV���=��w�}Tj��`���g�����"�=�9��7�]^��r��gs�����V�\ԗs{���'�.�V�7�eu�$���^��(�cq���ѩ�w���8��-����9&jd�❺������p�Zv����ߪ��#�s���H#V���j�>'�)^��[!ldI�3;���bv��e�,u�S#jni��8�%�	�G� �) 2�'�Oc��-[<>�N�a�m�zq�h/�u>[,����>�&Hʁ��\�i؛�����l,d�Zmr�ʺ}B�F��S'���0C��DA�����e݃�&sA�QNP�A�kŌk�qZ颴\K�	Ȕ���·�xl@�G��*$� a�`o���ok�#�B�&!�1SQ�ɂ�p��<p;����KFK�n$ao�4��+���
�1	$ɍr��a�5kb5�����-��l
�ʞF��v���
v�3�5���-N&nࠍ�ܒA��@G�L�
p�yw���^b� ��y�,�띲���Fl������d�a�"6�p$�D��t[�����q��)��NG�x;���M
����!&��4���ͫ	恞��l��`�y�n�Te�����Ê���~>�����      &&     x���AN�@E��)|�*j��@�BMŪR��8��dfdg�N\�m/���Vl�����_^�Wm��SH�c�2$����{]u�f*^H4E��Xʖs�v�jY]x�Ʊ�	�3�x�-�P�$!_�C0bS�-�g���?a������~�%���UZ@�7ܳٱQ�?�БđX)�I�.�Q�X�~C�)���w��55Y()������d����L��Q�zK�``:�͘4�c� 9�l|��D?w6��h�v�>��t��]S��L�(      �%      x������ � �      �%      x������ � �      �%      x������ � �      o&      x��][oܸ�~���ƙ���>zl'�"v�v`d���@-��Ř�_�$�x)��ه�"��Qd�._}����>���9��{���g�z�ʦ���W}��~#�å(�.������WCVaױ�[���X��>�����e��S�G1��x��l���I�Xˮ�~*�[����n̬���<��c�t��[�Lݐ��|6W����k�S]\+/;|/��Ͽ��-����Xs���-�˴/D~�=~ܥ�K:mN���������FюŹ�ڱ��y��9|���J~��u�Z2�jOV����S�����^���N}���O��,��ߔ��:s�7s���Sܫ޺�L��GυG��u"?�*�纭��뷂N�����Z��0��-& f�-c����}��,��p���f�1d��dq�v�ۧ2?í˫�v~`��@�f���mY_�&�k.����U��IO����WǺî��*9�={e�GvM~΅�Y�˿�{�߫~ �8���ѕ��˿�5�k��`���ѡ�����䁎}-V��D�^��	�"+���
���}?�x���r"����T\��rc�)�F20�h�WMՏY��U@�L2t�T��/}Up�B���K�vʖ���n-����Z�e"_���c����C�����c�sA�]-��W�W��S��C�e:پ�騬�`��qJ$��ce���X���3h��;������v���&O�.]Y��p����2H
�����F���F9�����6k'�Be�"Q� @���.B�@%e WYf����Kf�Sw�Ȳ���@��D�t<�~~\��]��E�������	�xY�:�uC�'z���-����C�
��T���є*N����K���r���������?~�z�z���x��O�X?O�kQV��NUw�����霟�ЀC�\�9����/��D�����#|rM䵼*�0#���ʷ��j]���˟'�Y��i�m_#{�}>?<���4���Su�a�Mg"x��L�j��?�ߑ}Ȇ/8\(ï�:�wh�o�*¹)���1k؅�WW}��F�����l���k�ڻ���:������Ts�Vrz$U�[��\i����T��;P�?�e�T���Ю�qA�+yrd�U�6��U�B{<o9l�e�����O�&�s�~�4�Z�8O�j.d�ɣmw7�α#����P��:����Q����t%٬�#�C�uv}��#�C����&����?�{
��5K� �^�����o
b%x�~��,Dw�ʺ�V���3��.(]HE9R����&s����Y�+������?�#��o�%~��F��1�B&H*��:���yE%"��p]�VD�3~A5#��}z��ۡf���*A;�ܓ@�Վ^㨵��f=|%�*g�".无��f�Eg����?~"�M->�_��,���_��/�]?��3W�ٺif���@�����)C�j�X�=���[�1���-�t�=J�M�J�:$��@u�~�������:���ja��åk뗺��$�:MEv��
ڷ��Խ.��1�P7a9�T���/?`��G==1��	T����T��%K�����5=�@k8�>����� �n���u�ݵ�m�ނ�eۦ��m��^�K2�T�v.
���g�֭��g�a����8kP�\ƞ����~Y�\��gF|7�eVz�Vk�1�����g�EVB�¦���	��s?8V���׭/�|�2������86S(LC�ڍd�H�:�ܽ>�Q�d��6�M9a��z%®%%�3��u���({��6%;J�����4����JcR�~cu�BlEeZ�ww���//��B�Z���'��pwq���b���	S�.>�*��)x��;u
�bs$5	e�߻��5-�a�]�Z8��Xv�?΢Q�6���∫x�枣���յ-�=P'B�ʛyV���5ƞ4JX��7L6��[ԥUK�&�F�k�k�0˾���pq&��\��.�ڹ� ��a���'|�*��H���\&�;@/�+����ڏ�������E=��a�'?��/dB����Y����NetH����������6;w|;��m�}�~(��_������%ĥ��z,�TZ��ݴA����������xm����hw�e����_4���-L�T�)ڪF���43�8 ��}ECdǟ�E"�t�ٌh�sX����hvn���q:Ro$o�d��z�]AH���Ô��n\��$vV��p���E��!�?)��ZU���V����R���g�[��S5U,d=�U��V��?w�Nmֈ�܊� g�]��L�"�yd�l���_t�F^�\J2�Ф�T�,�{�a�}�8��P���c��S��� H��i�2�*�ZDL��vW�G3�]�m�����o�\e�}L\���;��yA��9��f�&�\�8;O�3HB�v5��������B�IL ���c���8���D@x8���,N���U9U=���:��6�'f�;=�If_�ɟ������Cv&�u��������l��īr�Ȯ�"�&бQ�x�a\��TD��_�QEꐣAls��C�4�vQ�b�ևn������˲���e�+SQ�6�͘r�`��t8�� <9k;��4������`D!�;Jf�<U}�D�e2e���	�Ts�H�Kc�zQ��t�]i�Zŧ?��;>�߉|��S!~ڏ���}�)�%>�o�a����ض�g�I7�k+|B߶�V���ȸ�k���WI<u�tS��)Y�5���OG_�<Y�}��yI~5V-]x<YvC�/6X�uU��~�l�Grv?to�p=�1��(XM8k��F�2���	V'�]E�~��u��-��&0u��j�ڕ�%�Ku�SC�u�Ò���p,�f��X����2�[|�E}��j�V,"���$[6<��0��x��j�h�hwķ9������r�,rڞ��4���@n�UY]F�iYG!;|s�d�έ����Ǯ/i���U�XP۫�p��h����s�.��W\}1|��5�&X���	��+�����s䝚os�s�`��4,� E�'f��������R�[���$�N^w�(4�� �����dYsh�K7h���D�c[�(������/~ ����}9"1��=93�ఠ�h�gƸS��O�pPx���iRy�\Qߣ3^�Q�s��h�lI��R�<�4R�����uTI���|��{{���b�����/M�T�3�60�!cԡ7�ջ0�@��J��qe/�p�4#�U�5ÂdO�ᡖ��w��K�U�;�OQ �ZXc��/E�»
�'���Mv!�,�
�3N��X5�D�~��[�[�"�����^	
�(�JDM}����(Z}�ꍈ���x)��o�SM�/(��#v�"�ʁ:	R��g�y�T=������A�mDU�ݥ;��+�0�v&���*�h��)�(�z���k{��G"M�2���U�{�2���	��yr��y�nL�Y�{Z�w)-	/�d�b)�y�h^\t�~�����ou��i>�ش��_����P�z>A�3�;�gJm�y"�Λ��%�Ad��$F�/[��و��sU8ϣ�q^}�K�rذ��?4�55cq����~��|��l�|u�>�-��~�'	~��nA��_�Q\9C~a3�������9���$y�JM�C����!����m��sty��c7��	��Z�_9��(D\�͐)��-[�b�[E+=�>)��W��c�$;�~D���ވ��ъ���E���	�#���̄��NIv�3N"�&���'�M,�4K��8m8�AJ�S�:�؈`�9| ������e��Š�[yP	��0yܣ�+.���iJ���֌W����,m��RdԬ;�� #U�D��w�M�)?�t��]W�we<k.)9|*=��^����m�C�!��X�0W���z�tcG����<ǎo(���vD���6��fz�����*��-Ъ��	<\Jk��Q�E��Kɋ�&y���Z�O�-    Y�3H{DX�s���-[ɼ�e]8B�騼xv�ʙ(����ޙ��W�W����S�8U�Ʃ8�yS��
w��0�!����¹�#D��FTBNw�C.'�l ���,E���Z�tVO"DC2!�z^��R�Q��k���Dw�ɉ��fo�Ö�o�8V�"��	�!DF:�D�Q� ��n��"�������e��BlW�U#��S)�0`�Qn᤼>b��U��)���9M�+�7�iO����>�N}M�e������5��:j5�_��R����쾽��PW٣TPah�Ϻ�lCY-�s�7��w佺��_q]���t
�K�=��eC%?$�-��n%�H��b�IF)����#�6�:�<,HX�:6>bЛ��#���*�U�-��ɤ�s	B��\N*��Z�S<�P�>8�a�N���B,���h���BK�:^),.f�Q�N�Twh���06�%Ӳ6��!��zl�����pp��Itl�gN���.M�N]QlK����x��i��c��`3,�5��P���|����h�wV9&�uB��&���I�y��2͸�=��H2�b�3��<��\!+�K���ߙ�r�+�x�z�ۻ���L�0�����V�
�D�l��W�2�h�=�a,$�r�ݞ9��jq
v��AUuSQGF�bFG�Z���.��ߌ	�0`����	f��N�d�m8�͜�0�ҧbr����?5f3ݱ�� �����~���\�z }�<��q�,?�#C��d�'=K��W�݀�S Ϧ����􉷙�){�'%}.�r�� ;�\�GE��ٓ�e�=�}%�5FtKy��*&W������)�~��Ly����hVG�J��^���q����O���u���Q��]G���u�mqMY���d����M�K"�yi˦��JIت�`�0��W ����!��|�C�d�t�3�N�ՑB��V���b�������[���YQa_ga ٓ�w�h�O�R�8L����m�N��3j򙞺F^_�������r�cxO�e�O�N���$/�0�脱ۓi�0J,l��͙�]F��ֺeq��җ iJۉ|/���uҋ7��Q'��ўs��f�z*�W�e�k��9pdp��y���3Fʵ�kmg��NF`����&�ɻ�$z:�rG5�iP;nr&�ͯ��d��hwKJ1=}̠۪�#�q;��7]�J��Z�3��2��P %�
.�4l�\RD��_�4�B�[Qd
�40%>��gFsv��a��^�S3�w��s��!+Xa�J��o\���z�C7�4�Zʒ����E�U�h;S�V�������3/�7�LSӝ�b�C0��hR���=�6T��(DY��]��m�2�!��O��8/ɯ��HA[]���j��	��)n+���������R���4�b�e�wY,�D����Ug.�I��lQm�<
�����D�F7v��+Sb���}Y�7�0� ����a u�q���9cx��9�����sgl<��lTgэd�>����m9��<wD���nz������T�РKe�=���?]:
P�4(Pu�0A����ƀ� 	P�F��(���t`3�#�8�+�S�6x�ta�A�'-�������Ě|iWxD�A�۠���
�Lc�tp!~�8���xm_���	��,�O=�b�3p���� �FCp���d��6d��]K���*�+�SW�̫�`�.��"�8Y<P;��GN��K��J��
a��_י!Q�ld��)!�8跊���"D�2���vd��r���7�I��k���7�h��o3z��e�.8��%��S�R�<����kh���pJ�PJ�XG|�G��"�e	���X'�c��2h5lc�ȣ8�y�>�x�z|w�L�Z���/�� ́��x�J70� �G���;Zf�KӇ%��'m7�����ff��m�,�+:O݋�����Y,�$��|'���f�k��NN+�[��urR�7��}&_�:S�����v8rQF �;��4=�q����S�Q��T����� ��75��QS�K��}�{&�OU�_�Q� "�@^�؜�h{z���D%ZK�ޏE��l�4|�K�s���҃jr��,0���"�D��N��d��J����Y�s��5��y�1W�}s~����������6� �{1�����]0��68 q($포�ǡ� <蓃I v"�B���{�x��87ت�"�a5\�b�rX%v�b�D�dL5ڈo�[Ѓ���h]�bt��x>����us�~ˆ4�,b�[�@g���b�EH)���ly�P�\/�»�s��_'J�8VX�lZC���8�.�񒐸WT���(��qz+��e�o*�J�-;b���1ς�NW�W����ڡcA�5h���R}��Nx�dԵ;�sqw.NU{��:��j֌3wc[/)�Mf� ��P���Nn{��]x#���B��p���D�8�@�f`�1�3��������`��$֌ۃGJ�L��k�h��G&�-�`��CG�qe��A�"k�J�/�:��D�p��!�\�/��٧�j̺DF� 06s/�S�0UoD�n˼1�-�4�v�jМ@��lw)���;���B�2�_�QLI�lO�E��5�������������Y�Z��>{W�HO��,�^�~���YL�G��\�`�tCwJˌϟ}�r@ڧ/ܡ�(6����X�����t��9��`x�e�w26�_�7A~���_*�>��g���!k�#)��H�����v��>%y|�;�~�JT\_�Z�J	�:V�����2o�=��ɝmX��rDaU>�*�%�hT'�B5(.�ح����^,��ĩ�	����J�6�����VT���m���܎��C�Y0�xٛ��3G4�<��p��X��o�b��t����ijHA{f� 3W+��2�pehw��Ŏ���Ƿ����7��NM�C��ho@��jt�p�%�aG���B�?��ΩJ�3
�C�K�۲�B��+x����2W�
�1#c��@�o�@E{>~9K��R6J-��Gv�JG��$��g�GAQ��Qp%��v���S���K���R��{�<��>��3̜����֢&�x	E]��C�>$���{6��%&�@6.*��bn$�ՅLk����͗eHy��9�@{��*ߌwĬ2�o����Qy��;�ѕ��e�~%��\��.ȥz��h��nV�v�"K^nO1Tҍ�%_��v�$'��˕�+�dKy����_�Я�棉յ���Ab��TͶe���$NL���x�t˳X.#�]OX�^�Y� >��oB�|��kfԷ�e˲�����h��b	������f#�ْ�l�.[����<Rz7p���]7��NZN�"f�k�f�{	9�D�Q��`�����&�}q���o)Xu��A:���IRr56�ࡑU���fykʂ��uX����Y����E�v+���C��c�-��r,�qPwE�@5l�E������3�'��1����Ϙ���a׸�E����Z�(�w���WE<���Lb�uZ8;�n5��%.`�Z�y�T3圂�6m�H<bF���2��(�c$�lN��,��Bg�V�ewJ|��@���b����l%�K�� A哃L�aO�B5(��c��w9�]�k���B����Kl:t���ݑ���
�@�8�M��\x[�AL��:m����
��k��;צ��3��n܈�����1Q��� )(*����c,�P�3Q����|L�@�n�޾�e��6nݕ���oY��r �W��b�[bJV'��[a+�Ԓ�t}]�s����;pv݇���wN&�񒍷��);��^�,��e��؛J���g���U��m%����ʐX��D3�Nk<��c!
>b��ߔ2�Q��41-Ȟ�*jp3�'j94�J�Bhh�h�X���T�uD�Z!J��o.����ª�-��-<!y��R�5���'�QT֠Fp^ـ��PJ\�� �  �<����Qfe4�><T��+���Uj�#���<f�L<u�-�1L����=>������1�p��O9�; b�.�ba���t�"*�j^��C�����)�꙽�G6#����S�Y�^�b��]�1RQp�8JD�K����
!�E+�JW"p��{��{N@�A�����k���*Ŷ���`q9I]�͔�<�t�z�/_Y��p>�Y˒��3g5lw�S�-��Rv��l��uSQ�KqF�/�;�}�ٺ���J�6u$u�����N��JH��#�i֠3m׏�B�Ԧ����P^�1h,fT�)�<��u��� �%�;�($x���\d��0'��l_�}+�\Ƌ@�؊5sg�(`3?��~�ͨc
�Y��u����dJ��D��������qLu��MQ�$I�>>�wB�Z��X�8t߫<��_Mbl��6[\*Չ�#�K����-�4�՟+��s^��-v�d��� Wt������B��(
~_Q;���ˡ�m�[5m��6��Z���n�������'�h��I�s�e�]�W��Ā ��e���T��HKSU���;DZ��Vo���0&��U[�dh��TD'ٙ���;��2o�)���1\#RMC�N�煉*y ~�J�N�N��@�N�8�+L�����'2�������\71KV�yh�9[���j��$�2�@��˪�1��̒<7���߼��茶7�����XIO��=;����7������t���!Y��^�� B �a�
@1�^"'B�s ǁ0K����y���D��y���ȣ�]
��;�%AeIuX�/�Ƽv'�IEz�(�	�� ?�\t�؝��x�< `T��p�ɡI�p)$
&1��zȼ3�����`�}����`۰n����Ca��TPt:��[A*�:��`�A@E���Q��7��rِ�@IԂ�7�/���vR`�w�� ��o�(v��w�:�y�~���w�|�      &      x������ � �      n&   A  x��\[o�:~v~Lp�b��G�I��b�Ih�vXH������~�Ë(K�(�}�8dh^��Ͱ�f���e"y(�&U�U��ɊԤ�%ɒ�O�_�w����JV"��^����M�#֚x�{JV/����[�͘��"Kʦ�ņ����,M:ڙV�7!s��%�XQ
?K�A,(O��Y��;��	���T��n$O9oOIz��=�8.��A?͠�v����#��,໡�r�F��!�ȓR��F�W^
�|K��4���p�$ÿ7�5�k7��=�+Q��D��j���uā�>o����[W�p�U!�=6q�O���ef.(Q�T�{dG�=��
&�eIΓф;�̩�*�;��DM%��9Ӱ#��9lExg�o�-rd5�l�g.��W���ł���������[�l-E�V�rLu��������Cn�/����'����r����S�m�P���W�;��8�Ie�iԣ�N(3�2ܚ���O�|x�R�d���-�(���KJmWR�.�]�N���@��MO/U3Gt�_d>5�H�h�ZJ�	��1��(ȭ����X]un���;Ҩ�[n5��82���&gR���&(��-�G�z�ݲ,�/���jLhrT��+�U�p�7>��ߘo��8{��;8^��{�VP��]�m�}������z�<^x�<��9qG;gӆ���JQ�ϔ��M:t��Α�r6S����\�`��0f�6�]35�Z�0C-ȏ���C�z߅�1�T��"j~$_Ie9��kHg��D�٫3Fk����֊�oq/�x�d�I0��i�L!�)β|�8��uq�_ǊHR=�~J>U�L:���A���61�}���`��Pp�f/\S�x��+�u9�ŶKCO�v�-,ƻ�U���P�����U�b�ʔ���eۍ~����'V�T��L���&9��%EP��	׫�J�l=���?�"(�Ns�����WQ
��='��S;�o���A7�L���\X��w&�y|�;R5����9xC�%7�) T*\��php~�P�<+����M�u+���N�$�QM6�jfl��HŶ����*J�(����w=Z]k�Zp�5���]C��7@-)My��D��fMxJ�9���H����������X�̂�d�$!Nֆ�[&�~�:q���+��T�k{��n����-`�K�D�B�V���Q�b8� ��>X���FD�3�"4b\��[Ć�V���?��a�8-&|�W☃WBSf*���O��\��̼�g~d�7.��?�7�E��I�Jl�m����̝��+�0�����8�w�b�#��ɿh�����É�3��X�	cw2�驪k�>�;��V�hWr���1"���%��]����zk�k �����iՊy�<@��)�]?���WI�
3*.RwH���Ȇr ��b��t���0j�>�H�ҚIᏉQl#���&3>#���/��� ��Gl�)��� ���C�ï]{p���M#�E��z�ft�Mdv�����)��5�|��Š�OK<(��9��Q���kᅓ�hI.m�s��:��MF$�Z�q�OS1D)���W��"��S�6�FDP�' )��	>:
M<{�1�����aB���u��ar(]l��+�1F��ҳ;��O��nE-x
S8�neq����aH�6�N24�\_lՒkC>Ö� G6ޛ�	�Yp�;L@'`�*�P�tRj����JpuG? �N(Bm� �B����W ��k?<�#�"+�ā�`�%Db�a�t�v�gJ3���5�Qn�d%rq��
�`�x�d"o2����3ҧ(��M���U��3�P���26�����������m�W<+��J�#6,�<?��ثBE�^����O��`'�QX�I�[B����yqS�5}��1��?�DC$Zߐ�JC4Z�S�7	?W�N!��u�P5R�罴.�:C�H��vd���!o38f�=T��!�i4��*������������?^r������:�S��	�)=�/e\ו{�������.�x��Wg�gXX8_f��&+�� �Z"v>.5C6p���(�p�-b'-���<(&�1�@��#j�h~"�#�S���_!a[�xnJ�RB���J	��X<��I��^��Ť3˷��A���ܠ��	�@X��OT<�X�ÁƀQ?|�tv�-�~VN�Q���ޝ�R����l�U�G���*�U'+?�}�5U�/�\��5=9��#.�z�3����g�=�근U���Kw�<j�7:�	������<��	���\��+ƉT�0n=����?��w ����0W@��p���L���1%=�;{G��uB���y�#L�ե� ��.�4@�)�S�P0P�����(��@ɼ��c�E)��ȉ`��07 �R���.�p�}�U��4���ƶz��x.�GF�^6�c1�܄������<i��,sA|�D�ߪd����9EF����A��f&�T2��ٜ��9#p�T;!ƺ�s-E�mVk^�Q��X9�6�}��-=Ǹz8s���6�t�I�Z���+|��:Z�?�{8�H�8>H�A�E��JG����+��Fw�5�������ß1�]��{͘�:W�a���Do6����>�tM�%���w�6���쀔��
+@�^��l��>\�����^e����n�~ӌD���l+)����)'��|'͵��Tj���Nykt�f��G6V���d5w��F#WW����W	9���/�� $'�JoKm��çDt�.8u�ȐT�Q4�z����C�M���_���lyh���}IF���L6��)�9��l �nc �
7��n��u�7Ī��3`V��_�Ԍ��a�}$Nt3��D����34l�'�V:�Y�n�g+.)h��X��x>���ǘ#�f7���]V �U����-���[���	��5�j�	�t���5�]���ڞ����CN�Xp�g�;�t��d;>H�>�Ĩn�u�}�ѭN�[A��o̯)l�.&��c�U��k�{�Q��ܴu��-�TԹj����w��'��|)�AEU���ZJx�ثM�<�>��K�����K�YR��3+'њ��w��T$^Ԡ�Y������?إܙ      p&      x��]K��ȑ>���<=��d#y Xj	#���*v�Yf������8�9s�ŀ�m����$�V#�I2��"��P���ܵs3u㋿޽���ơ�����_>}�~�����x�ձ���S�����C%�n�2t��x��<-�C7\�ܝ��8����FD}d4ձ��M���I錔~<4}�1	o����K�zi���v�����♎ݩe0y���qj���O�/c_2>��̐^J�������9�dO���Sc^�y�Cw�޵;��f�F�^������0��q�|�*�1���r1���#|䳨=v�K��xs8ԧv��xn�FJ��ŋ�#��3�}|Z��{p�R���.��̯�ǶF��.�C���|�)�~�Ss9z.ji�u�߆3����|l�(����]���*��	��Ͳ�~`���w-{�3Xv�
��i�k�����
����������e�G�>���7��0�s7/}3qYw��1�z��&	�Q�/�Bn��ZZ��4O5�ǛO�i|l��y�.ݡ���������&�z�����o߬���������o���b��t�}��fA���?��o����������w��6<^����n��c����vA�pA����b���ύR.�����nWK0��;Ip��1[@�>5�d�� ���ss�k�X���n��;����M"�n�i+K�<�2�7�8��:��ο��|��C;�s��N�ov�i�g�ZA��>ͶIT+"|s��|{�J�T�P�}�+W<�tb:�=�:�.~�]��T傢MR��a�2k��5�2w}��N)U�/�2W��,��������I�ri�1��Dt���ыC�0�uj���N4����O���9������������J�|ތ��di�� ?`3�� 7J���y���_��<2U��7}{���}徦L��r◘��D���8N��Zm������0����+��Z��Е�_���=��k��O+�P�OL�6��fj��=8ӓ�ۘ�AX1O�1��rS��.�����,�}(�Jq�ȍ�`�����Y��S�k�lP�j�kzI�?����|b�|sw�f�/6�:��n�,'��w���x$����N��k�G~&��n�ֱ��u|���%3S���,��:}�dd����3'��"V�o|�=�n�;�'� �t���d�%NS��q"�!w�S7��{�?��1�Q�>�7���W��_[�L�Q�"��^)3�.���f�O�|+��!B�����#�֞���E�¤fG�4֗���m��X��������ȯ���Y�o�zg�Sd�Q3�Y9:��_���1���:�ؿ[v���Ne�}�F��Y��<��U?v�C��18�-�P��sN�c'f��Js���}b��P?���<T<���F�߾�t��xந'n�q}��]l�g�t��\�cߏ�b��R�K�z�YL��0�����:���p���<��R9r��J;w[��#��u�k-�a|�+�� ;A������i%�P�o�\_�gkB����C7�3nc`�6O���3�������~���m�N;·���&Ў�Wooc�(��߾u���f:|�d��/(4L�/�-;�G�82����m��h� -_��{Y}K�]i���Hչ-u�u綧y��&���Ր��]�]7дN}�U�G���?�����׽1�|)b>�s��LuP}�t���N挼�TNؽ^0���^0���N�t��T�+�s�"t�\��*��d#���@}��F��~���%��R�v��9��͸�������e��zJM��8�����*|B>�82���4��𞶲�	�&�pԝ�x�<'�X�{�n�GT`d�ai��@��,;���*{!���5�j�O�JJ�*	��j����"b;lF��t&��rR)C��nb����d�rb[{�$q�Oyh�_��ZZE*��4M��W��D���_��O*<u��3���j��;6L�d~A����>S����.	��0v�6�̣�M=��ц������oz�'Sb69��d�x�+�Lܐ�d���'��ҏ.Yq���a�@zk�v��a�����Sc���;�����~s�ـ�)*V�pZ��m��J��1�oy�ۜ���85c�줻2����4�-�ԇ�vWQ��Dz���@F>�R���%̑z\�k�eC�䲡zr	s .)cu%��~^���&� �KgSȅR�v(U��,��L\VU$��*}�Ī�3@�2q�U���HVzU$YG`�]�إ/���;��|��u͡��>�H�D�!t�.BB@,���E�Y-rҬ��m6<j����wg��`�n���|/�Z)�jE|���B�
:��Ոq4D1�����K³M�b�C�f�I'=@1��ٜJ\�?�g��O��S34|���������M?5���p��xQo���X�~�Efis�@: ,��?�%�G���. �@F4��a�w{{��<��Ӕ(�G|������b�rb?�?b\���D.�i�g�5@С�Ev
����a"�95��;�`N�,�$^�EA^�P���g����?���~��
{y�	�2I�XIc��]��7���e�$�Łc��@����,i��6���rn'CJo]���;��B� �����i�B%b=�ts�/r��\��`��[�+����C���|���
`��1Cn���Z�#��#��pL��ɼ�������X{������1ǾÂ1ǾC2s�;,`|�TN�wH�B��`v�3��G��?
���iŎj�	ٙ4�d�y�?�l!���E
�ٯN�̉��)����X!�:(ŮP� ?	�r��P�m����6�اA��=$��n͠��z*L��L�PP���IEe�&��\D^t���O2���F��'�	�p>R��	�)� +:"Pe�8A\Q � �(��W�!=sA,�������hI5�F����.^�1�'��SDc�XƎQ���;E.v�Y����x�ER[���%lV!�>!��4����q�����P�C�{����x���@�N�)d9�D��G�*I�4��W�А,�;Ï>�/����|����Q�q���<��BR��\*�>�	v8���>
8Y�3�M")�'��)	SS7=�ˁ�ޒ�RԪ����"�R&������B)aj�h�D���#1QF���T/��)S������3n/BxNɟ������W���FV��Ħ���9���R��r�9�8t<�����%Y|�\4�6�}ˉ%.ץ��NLO�w�9S���2{�ND��.���e�P�X��!�^\��L>����"#)�Jڝqf�D�����	t>��Pޚ��wK��� 9z;����@��ZBJn��� ��Y���)(D�%R�R��|�x*��3^U�5Ne�oa��� |Я�o�᭞:ؑU��k�j8��IYW蝠�S��s�S��}�Qg��A!6
]#��|�X��m�qT���h\A,������D�o���[(+8�!�*I��[��j �Z_���K��L���ȃ�SF`�$�yG���$�{�ʮ8�<�I�=�q�Q5�>1�c��}^�gAy�*޹������ �G.�+���G���� �k'�1}��{4�#E7H4���'_��a�>�M�������_O�+Qf1?uM��"Ώ��U�����a�#�2���|Y��H��A�ju��GN�(�4��H)`@>ec4��1�H	s������I���p��YB��}\����h?H:�-Z��.ʹN�Ԫ�g|�^�V �������_\�ѶD$�tj���%Le'�dhQd�S\�z]2�j��֪�\�V�u\.�Nc�4:>��E���74��uSdҵ��Q6�����B7}���44d��Nĩ�C^�����2�)�����@W�4���S�"�t�Mz=����o��Q��A�(7��� `?W|�3���ğu +O��y�m���M;��l�V�+E����
���М���    h�_D�{�0Ƕ��M�fk�}�뇂��qI�L�O���%w��GZq�[���ܳ�����@s��̉�r�B�؛-�����r��@i俒*�m){�J*��HE��� H���G��AGE�����Rd�\ZJEJN��%z���$�%�$wp��<��aPKI�\?O����YB��m�g?�I#�l��TG�
y�?���&��B��<Z�QVfL���o_A@��@dO� ϩ�~�TE��X;��>_��߯� Y��Bڦ�=V፫��<zU���QS;EДr��E:8�)�dTE�HT����g�7G*�BnE(�ڏ����Bf �m S���N���9���ԝ�O��g���~�V�-N��E���B7�}�aoKׇF�!�I�V���Yr�U\�f�X��p[�oj��H���b,�_�*���dE�	HC�W��K% ��B�+�$�/����"	{��x�<�V�����TK�oe%)��R����r�h��?\���Q�`��
�K��ۜ�<w�W�I�ts^�����ދ�s|�C�8�2�\,ZåB�2~���Շ�߿��n���x��K�XH��BD�}S*��RJ��]��YK@i�b:��9��A��(-`��,O#&��y�f<�8Ϝ�$&K%&�%�3C��y.�4���;Z��((Fp��*|�G"74#��A�1�`Pb�vEY��#��Vth.b���$�����0���4̇Y8�jE^K����#� ��H�@DU���)WwS����Mٸ�rp7dޮϷ]�e�)�Vo��rZ?�-%7�[Ճ����=��"Li��X�_G�<�ǡ�9�S
O�9��p�d�O�Bx����%�д0���ζ.�l�_�;M ��*�2����Miµ$/ѡ>H�ĭ7���dA��!�v;u��P�?��|�I9�?5�ݜI�1�i��x�U[��'+R�����Y���� ��n�T����5]�{�"���g�'�N~��H͝]`���٣z:�]eH/WA��$aɸ4R�MT��$��
��+�@�c1�l�%K���%�͹`o~�p�`JW�咭ٺ5yV4��ϗ�r	)q�cI��wp҄�ʨ�Y�"�Ҫ��a���^���]�����1��$�J��%��T��e�hT6O>�زͺo=J<�(h%�w�׎*6k#ui��e7�>v��m	'�KӶL:5=d�_���W)�h�U3R|�6f��*m�H�U
3R|��
_%p�W	\�K�PI�H��Sjv> W��j�CH�:�U����M�����G�����L����ZCYIJ����v����[�\	���t_�}�-Iu���7
jj)r��X����?��G]�"<!p�^N9!c�Q�4���V ݕ���vZ��е�Z؀��3e	�2Ou���I*epMP�	XW�Q�]{��k�oh�.N������Xl�/�W�.)���x�_ķs�"[�
�0>H����������=��'�'����8|�O>��'�юRn/�QĜV�-�X*���򎠒Q���&�Q&+��]r+��ʳ���0�I��pQ/�Xֺ��:�PXi�J���-��%��è�Y���U�y�����1Tg��W���X�l K�]d��*s?<�(x
�A�9$
�n	*?t�Py!Eh�0SܺӲy0�.��:�lB\��Kϓń�!eE�"(+C	���'l��5�������	=���=7��:���ÊP4��b��U�M}Y�m��P׃l�(Gx8r,�� �'~n1���O5�H�a���Ģ
jw��b6���ђS��4<�%N_�~:=���5u��Z$iA��j�A�Q�I優M�z֓W*����rg�x�C;���
��D�Ǣ�f��&��$Y@�N�M�[[ 8�UK�z���Bһ���>Lg�X���(/sF'�*���Q����,Q$n�5�&d�3ؓ$T�o����UQLU�T(��4C�,�1��T':�*�ͤ�&��; �4��
OS�$�T�/#m��h�T ,"� �](B��0�e"P$x���x�⇉Q�"blx�� !^�����x�h�)4�lД˳�ӌ4�xj�O�<�����W�M����xQM8#d��
H-.�;�[7�P'Ш�m5����Ku�O�h{ �4F���%���6�S�0��D>�@5}P�\�� �n�PI,<*(��zJo�(H���e�\�Fp�f�f�TI�� ܔn�.�tª7E�R) ���1R?��n�H�L{���&[-2�d �"ݙ��q��Z�V _ܵ��s��H;8,4M�t���W�jsI�U�ɂ�%n��9�|�҉���L-O��E�%&gბ;��+q��i<�޸�S��X�ŌT���	�&��� '� T�)�F1p�)�IW�'9*]XP/-�q�"�ܮ���������*8��<���Z[hK�qΦ3�	���.�enE�<���T�}uUq9L2O�E���
��r" ��	W�ýHP>�y^K������H�~BTm62��-N�6(��*NK�#6?�/��vRyf/-	t��k�)�$�=[���Y�y�rL �hTXT�.��"�6b��MSM���:���W�QF�AP_o޷,l�z���%Կz���(e��0Ĺ�;v���9�Q^�5�&/ m~�����a��Fy�Ww�4�ŻM��-�&ȷ�t������k�<�'VB6�:����=�v�F{�jG8�CЍ/zP����TT�C���|����m����R���N�9\�~�Z��`p	H8Š�����UB�P��*-�v�l�s��8��h2��c�񜶾d���xJ���["�� ��sGs��|��*F�8��bōl3�~��*�V\�ɸ���:��^������Uq�Ѕ�ig4g��lK;e���I�",�S^�UW�s�Sw�m��>��Ww&ʕb!w�k4���5����:���_ƿ�Lb����N~��>�[�'t�k�c���7� �ɛ
�f
�DF4�cEЬ��'�=@=�}3y��3��)ݯ��A�Q�L!��ݩg��$є���f��X�w�o��JD������W+��ŀ�t�Q4<b�!���cjt��t>4P�/.���倉����C��-��sC�o�M�&ǿ����i�\<*�2���J/�B�G{�@f��U��rng�8V8A�q���Fk�SA�x's����i�^^�;��<����g��~j�q�ϣ��?_�V��૮盯a�}��O�cx	���hW�����'z�<���k�}H�m�����]ړ"N��EC�i��ٱM�$,E��A�]騦��{j�|����w��I�TkY��5�xjg�$_��5�k���&�3$9��,(7>�U~��:P�� H�����2ㄟ]�7�lA��&�&�,la(J}HV�<UJ�V�k_WYh���	�
�oK��.�H)=�`Cy������`�$�y�]p0`<	yW!y�[��˿�LL������S>�����E�7�����u�,3y�`��{X���['ۉP`J�2.L'�ؔ����X��\!=:�C?LTb��#G>�_vA @�`�����\�l5�g�$�ˆ+�R��U�WA������W�/���,�Ϋ���ׇnịLŏMA�H�����
�WU=������Ag�l�{"xR墭��ץ�S$�ѕ8��r'�(*w٦҉N-���@�9����'� ��q�leOhNU���R��P���Z��eK&�WZ5e�r��~yj���%>��eZ��mVt>,}�Z+�WjCU;G�mKK�CK$�?h`[�%j�8N�U��m�l�}�~�����)����A
�1���*�<��
�P�Qz���<���e�4���\��w��Y�(�&���)Ū&��\lqt����,	�e�u��9đ$�h;����	&/Q�Xe�%Z�>viOܷ.Qt8*� ��w��tl�0e�ú�%W̈,,EC命ѐ wx��4[�W�|�	���W���Pj�)�}�WI>(�&�ܽ�Q�J��M=*�-�s�ωcG�l�S��
�C��au���6�tFϻ�� �  ��}Ä_�Ӧ8Hz�=����,��V�W��!���j�Q��PR��U@ �A�lh�@�
����l~�<=T��=������L˘�c�f��(KJ����j��ʀ��ʀg��牫��?O\�TF\�\BP�P�_��Z��o�ֶ	��q@>��?mʊ�Cڱ�CP���6�}�f�L7PElZ�m���֒t���EBǯnRMoP��Sg̿}b"����2���r��ylyu�&��|�� հ�&֧=�yO�-�'wY�	%?H*��b��ʔ�JL~��9�Xq����V68)6cH9zvD��u���d��
d����]�r%YEZ-(R�VK�ԥ��`�i��ӆ'�Ւ5j�W�Z+�Q�֊@��p�ܱ�
]j��
iɨƣa�l����mL�B�$�Ʊ����[����Ģ"�Q��}:Qm���ЅyΤ��K	:q�-S��ڳh������4Tlk�\:N�קP�?�.B��i(ygI�T��9N:�~�Pߥ�#�["�7�H�rù,c�r2kؽ��AV����\������aPac�'f=�?dݯ\�O+����#�էs��+��8�N�����_d٢�d��ci9)�0c�֓lȪ'U�3J��[��9Η�a�/�i��\u���
;��)� B"r���s7f�(�u���(�hI`r�(h����e�h�K�e�ӵ�8��9%x�'_|��ab2�SC-}�?`� vnQh���+u%^fײo�� ���r�Nh�'zrs'A/��.������0�՞��Gݞ�+S=	"�Tϸ+��ln^ �瀣�e��t�=d��t�|'-)�����F�7e=[��kOb*���U:��~�\8ۣ����f[�/����f��/��!����O5��P���Z�"E`RX�B���bf�3(8I�xMj#MV|�H������R��05%ӕ���E�`�Z!^-�7}*�n%�d��,�<C�sn��&=D9�K����F���
�G
�t�	��sSҩ�R�=��� ��ZH��49L[IC_�����ܧ��_Qڢ��h��b`m~}f��$d~63}l�V�KN�lhM�����4r�A�Rke}��8��G{�����h+��B�k�U�gHa���>iH�C�����XC�Xc�!��G =��2�ǽC�;�C��$]p��8� ���ejm��4��[n'�#!M��;�����E���Q�"�S�۳�޲��n^H��)X R������[�l�q�o@��Mό>��- `l5eP������ā⋥�R��zZ��u`0v]�;��A
�%!�S���W>~���;�Hcom�����=h\�����{8Y��j,F[⛳�ߝk���N@`�K��!�L`�oK�ߊ"���E�ˤ�og����������1      &      x������ � �      &     x��ZK��8>?MOF{�C7͈����j��8�Ug���o�NH�@l���������)� �� �%��4���`>	'�"��C���H*I� �\�\
�cfa& b���YO-����Z���
��%��3����{�"A��g��Đ;/a��$_��Q�xoz��'A8ai�w�T�ŔD�|�&��*6�y�8͋���j�4oi�����EL�R���}! ����Ҩ��η ��E��ӄoX��|��g�S	�!�}Y=����,�;�K�ۀJG�ך����򎮋aGI̶��Bۜ�T�1ͳ�'Af|����XI>��䒋zu3>?돂P?y��ЋWW{���L��lO|X�(��~j�8N��SD�@�{H�/tt��M�	^ס����	88�����!�:��{t��+�4�ʅ�[J�I\�J-����ÿQe�<�;H����z�����)��] �,ODm��v��%�E���Ի ?�8��d����I1y�G,4G*�|��}�^Mqv�h�ݐt�q]��P=�Q{�`��>3+P��@g��V�F�I�Ab͈TP�}ءj ��I̅+��!|��b3�/D�[02E���O�5��ML>����o��3<����e�#��$?b[����߆�|YϾ=VN���3Ց���-���hK�S��F����,� �ٮ�lS�K[�y�����q.+�1H�ݾD�ڏ<��f�]T�zȎ���[�i��@�N�G�^���.�]�޷�,���L��A�.������|�H�_^��W�����l�2_:���Bl	����4B{q&{���<�>���V���Al��:�&ʗa�!f�Q�o���������N5D&�T��L�S��!�%�j\
9SS1�2T"�	������v��	(*�`m &/���;����e�D��W�٢�Ƨ|*��@k��»�89jB�tڽcB��,b�7���@� �(k[��z���ź��:�O����kn�"g
�e	9~vd��g`9��"��D�C?��:k�{�֩���=%R0Z���{�c�=d����؀�5�0�ή���a���k��L��~��n��y\ uh� c���޺z�#K�a�r�C;�ه��C�Cp��|u�MBs��S��n�hTZ����/���@�6�m�i�z6c{p�	!�1ّ6;nn�p��͎��*����wx����KT"�C�B�Dޯ<����Z��KN�vA���	�y�g �Ay��ǝo��n�>,:T�!�����	Vo�/�+5.M`}<��U�����Tp�wQf�v.�*eS��奴5�h�R�!\�l/:�t���}/'0�S)��.`=p���֕/��,��>�Ʃ} 0�����qB�.jjHse��!�t&�;���FE�ඛ	�Hs�QvM��Sim���:4G/:�^�m��F|�u������R�]�C�[�	.]�ǡ�a��I����lS�������]qխ���t�!�%�����&�y�����{����f      r&      x��}�n�Ʋ���)�<�E����%�ZgZj]I�� (VJM�E��*�G��(^z�Ņw�`��&�H&3232���3*"T$3���Og7���O����m��v{LsRn�ų��OҬ,��6ْ��f�'9�7����#9$����ӆ��I��<��Y����_7�o�����Ȋ����mV�o��[��a��H�in.H�Vٞ	s�f�ӯÝq��k����O�rK�2�.�㮬�+R�*>OI}��<��*�"9L�m��c�����rL�D�c��t���>~����Ud���R��=�HU����g�A���
���+�t#�i����;#���0J$��˖�y\�zO�y���m��?q��eEƴ:d������`��Co���$�f��og�ϯ�/�w�l�g)ߗc&�I�D^�����B��d�Q�r?��_��Y~��S��`?ѵ��@�}�ߍ6|�^E��)�$Qڒ�}�Q�<��⹬v��6��iI��C�(���׬����)�_������H����"I�K�w�T,�˳$�}KN�EW�-��@�kV��޿dϹ��������kvҒ:ٖ�+jȗ����Ϡ�d��I/�}�bt���"Ƚ�S�	��1ۇ��MD"��s"�c�^D�Íгf'u����@�oI���籴/|�C�Gڵ����Z������>���I:��{�*��v�E���<��@��(M�&\?�_V��J y�p%v;}�0�O1J����lOsW�
`r,��H���G�)mKf�4��ޥ�U��ن�Ra���,�3��ͳ)�e��rr�C��g�p_U�L���F�4�Y?tC��Ȏ>��Ue��2��#˂{�{���#��Fi�����C��@�Z±bGZ���[դ��v��/�#f9�y�]T��CD��eWn��SEpSAz��Y�>�.��/c��<꾹�*���α4C�X�Ռ�.�&Vp�i��y$��W�?F�,���}F�9},��E����i��UR����)w�:Ю�_s��y�i8+�?ufȑ�f�$�������8�������3W�̴>�������_7���.�F�~+y�'�(�㎽��=����A��@�609uQ�[!!��_����7�C	㯎Oa������V,���e��7������@^*q�7
)�'�7׷��o�|~�I�ʩHm�E�>�9|	o7��*�����"��9g��2��IJ]�@�'�b�`�;!H"�I�]��@G�$��&����������E�ܕ/� 	5�}Ũ�&_���`r���H�.Gnp�r������`�P��J�e����8>�yܓ�}_X2��@om�l>W��Cb�^8k: �n?hVPN�}㫰_w	5��������=�`q�]]�_^-�����8��(p��N|Xb���k�O)���s⳶\�2��"O���B��^�*k�D���-~Ie�КLS�z�~�I'�C?�`r�Ԋ�-��W� ��j0<�#L�x��l��z�Ur[��m\Tˢ�A�q SM����>s�׾����'�qw�.��"�;��d�7m�鏻����8��*�<��Q�bה�,ho}�<�Y��T����l�GW6 �I�<P����67��x*FD��o�YV��t����n$��D=�'�&)ތ2�"5�G!�{(���%�!;�q��iZ�YS�Aq %Q��%2��	�UF�f/�'	RM�U�|��d�_X����4vrV�fɈ��}�vS�G���b��߅o V&d9��+P�A�W��6�1��=�TQ Y��˜,��^D��wNJdlD�W_�X�w��|5��owB	�\�y�6�;
��>$�R��Ζ��TA��d#�*Z��N���#�^D��T�	��U�S���n�wE��Qv���eB�����`r!�+᠁��J1 '��}Gr0uvC���8��#�,���
���*ҋ�KU�Wq��N���GW5�!�̪1��L{&ZŹ-�Ϛ
`�A
�q|<i��-X����9���C�`&�"��Jqq���KVO ^��k�"�ps�W�#Ӭ"�\��P0�%��K��4��i�D�\D\kN9�bc��	�A𡉟��&�b&�J��V���)����k����3��OSJ&���U�	b-�1���f����@���hc��r�E��(؍��h{ ���x ���5G@4��ՌL �8��m=�e�wqP��7�ڶ-�����<��ەO�}�'�ɤ^׾w���'��2�TI'wֶ�U^F����h8�m+n�@��>&Oy2 w�yf����$�����z�VG�½�T8���}�W�`��pʡH�U��U�Sin1�%i*�JKE-����"jb¡ܗ/U�\�]��]o.�`���3Fo�߲����-NW�Cv������0�5B��5��m?.�h?�2����H|��?�ʳ9ke����$�'��A�DRy�(�9�<V�6KK�2Sz�0Z:�e �;#�p��r�'5���ޏKSaN�咰.���x�B�G�%�飘��\R^��)h�G�ߡ�M^�H�5�ˊ��:��pf���if�bUCKG&0���ö�L�[�i:�艗�Ϭ���!C�T
�ߘ��n�� M����tl1���� vۅ�������[��P����>�宔G�p��:����YdF�v�?��5��N�0lT�	�z}A��m,
�q5{Y�LV*cK��m�|���@�H���偱cj��L2�ș`�����Vxi�w��u�6����)0vcW��NsI햴c�r.\�_���jg'&D��]���:��z��
j��;��_�#�7�u��|�J���g�t�u��#Y �"R0F #a���t���J������P�c~H���v���C�w߈B�����H�b��F-�%�G�dԂ� K�Fr�u|�><u��G����@
���n����a��<�7��W��(�9���p�~*'��e�R�11c�%�`��(e�"(O1RO	�淕�S��SC��+I���?o#����s��@��-J7XDN�UF��ߜ�F#�������������"�h�T��R��<>�_�����d��c�2Fg[�7�0��<�z�4�5݃j�Rd+�l:���H�9�;�AO�a�]A�L��/�[#-0��"{ɨ���T!1�4@��@t�ק?��ұ���C�Or��ӷ9fT8�o���:�R�~��o�A9�"���8�=G	�/%���	�v������ʷ,2��g������i(��L+M�Wi����G\�˱`��$�rV�G���g�L���G�$���Sӊw��YQ��hI���"�^g4[bB�0;��S���G�Q*u�^\���������SW��4�f�(?��Uc��z��(�1��I��U��D�F;A��6z�_��IT�j�&���j�_�/&~w I�Y�IS���}D(�X[	�'���e��?jr�H�K[`�)��`S3b� t�SN��K�V.j�UΤ �p�n^
���Ǫ��Ul �3�<j� ��> hf�fĞ����y��9���(�?'T��@ ��]j�>��S��S|�f8�� �PD�_�m'�D��$��%�=D��M� Xw�p�&zeE�]�B���̲�<ZO�O�u�1�`˱{�B��w��.��Y^I]�FF2a�uc�L���V��������p1=n�ɧ��}7?����jHg��j��jH�k·�:J�ɖ!:P]���Q`��,\ ISc�E�E��©���s�G�sr,�����Z4`�PJ�c7�n/3Ks?�V|<�/z��ޔ��v�f��oMz�J��{0�f?M0}���˭Pg/�q��Ґ�R>��ވQc�k� �\T<:z١��� O��z��;]�4�jు�,J�Y�xǼ�*��+��P�9)����U9<!�?Q��h��ƃ�GŐj"p�mq��,@i���x�h�)�,�g+Y�s̉��wJ�!�ί?�'U���UUvO�uӀ�    D��OD�Iʮ���9QK��W��f^a�����oi�W��#����Ź� K�*D�=��y
7(�Q<sZpk��S���Ŭ�%$���H�%/�3���jR�rF�i�k	�Q�0)�+�UW����7�����߄�Q���p�5�ma�:�ʔ>��[�:"7���./����G�3�o�WB_�7�F��몀��AU���F���>��3d|��(���d����Pt�L���2a%)� ���?I�T���:��M��w�sYv�I��6������縜�)Ɔ6P�m�屏 Е���#��6V���L]͔嗴�қ�1�L�UF�aU	�O������3e��tj��ȍO) oȡܖwU�3c3 /3��?���"�pJ��y9��w��|9j�}�}%Ձ2^�!��f��p��Ds"��<�	���� ��ԋ������7"av�C�9��~����:�3ج�N�j�����O{�8N�"�td��4�w׷Ĝ�>�4S?�$����-��=O	����ޕ���*9��+PyTu���t�e�j#ʵ��
ܖeO�%�3��'g�5�9�E�m�@�͙jі�v�U�:jBS^�颴��ζ�2�w�	ұl�����F��ȑ�о�n�`:}g#<�g�o�C�?�䬨bDHQc�l[�;@r�\0RrlY�(t�t��A��j��ʤ�fȤr��QvUc#�B����@�.83����̨S�n��������ԟ�YB�; K\c5O��_̦��X��Q�&�Et��VDU�V�^�X*�f� uTe_ ���JG�<.�(ǲ�9Qj}H�p�n̰�e{A���v�۰5��Gl�����#]�l$��XA�ڮR���@�oI�eYK�L<���bk����m�<����}z�'�^B03H�"3|���<⺓Po ����ł�N~Q�R+�o��f9�ּM�����2�'��H��z#� A��[3�f�jnM��RV�#����);��?u��7�Ӕ��o
��Q�� h��qp(�A�P%"�)/�H%Y��JiDwV '��]	�����#�¢���q��Sc<�n0�5�rb��`1�@��Jڬ�|��)��]�C�,=�J;m�8�E?����:h�u����s��8�-[l?��6�9��[�������Z��$�İVe8��^Q�!��Ł,W�h.���W��^�ћW�u���(T��ͯ��R�}�N̠�^��]�|�ld�~�9YK�H��+u�u���N�0*�8�u\�CH����0����ȳ
t�,.k��`/\^�d�։�T)����<�u��M�Q^9�����C���7.Z7��?t��k: ���@'O�N_z6�St9ns���(@�l=�W�K
�cr��%��%��l��h�����H~c�������e&���ωX� �����Y��� �j]�@�`*(�Ɵ��Ó2�p!����� ż[*��E�?�u�o.Y���.��������@U�\�!J����@u ;�+̺Yx��Z�@V���P��t�|%�n(��C^��ˊmd�z�V�
�z4&U�|uÚV�[��+�۬�l�ZR��ߖ�JC�iWU���b3��O�a:��{$8�=_yd���㴅�)�#��>�nޕ��s!T;&�:!Z�gԙ�l�O��
5�.p�"6�u�:�h�\a��d&��OC��	l����q��2�o~2-!
+c�ܢЮ��QE7?����#H\o��}�1�!��<T���_�e�
��ȉ��]L�=�F.����f݅�3iB��ma=,|0W;���#�c9�>VG����;��*�wR�[!+��j'>�4�l��p/(w�5�mh�����B�yj���n�s��+�-x;�.���܋g?�����q^ćO�:4�e���J��}�v���^13�WHum�Թ��S���~v}��B˵��B��AbM�2�f��k^��Pl*n<��i��k��M�$x�o0if9Oi���ީ>����S������'������pb���D;'n
4���,��a�_�ƻ�n�K�fC#��ӌ��vm���/-�u�GC��=?� )��@J�C��V�2P��B�5��F�2�����I�xV%}�7�]<��-�iJ��h�ph��C��B������X���Z��}��m\�%���n�
�F�\`$��?����'u��㗽%�w;�,GE��R�(��N������
Zg���ɰBQ{�A3)���\�^�2��
�\��IE~I��P��>�H�Q�a4c	�#Psl0iX��ci�2��.�+��ŉ�QRIT
���E~�������Wx���$�>n�����k��B��\�q�&D��î�L7�����#� ���$ r:�򵢚'�+�1DK6���5�p_�������`��&}��9�f-z���pAI�����&��_�X?��jt�����.]��c���	%�f���NM�7o�a�f�,�W`+��~^|7g�Y�~+6>����PE�g�s��ǿG6��,���4�M��AHJ�tR�ַ�`����k�\��n���J�o�C�L(�Q4/T	�ӫfH���[9~8�I�LwO��S��,��#h�mT�D��0�g�ȁ�x/c7�#�t�0��9��B�y)�,)�G�0��S����<E���I�/m�C*&�(�z���K�TA�/~ �k�=2XU^՝d�����rUi�3Qc�E-Ǻ���\��,M�6��NQN: 
3"?�)5˯�i`%��;��YA~q�:���@��(1��U���G��9au�8����?|X��6�T~��(�D�ZugQ�
�!��f��y�>yc�X9��Q�HP�v!�)���q����vX��uJ_[Hݾ'�FlxO`�������	� ��P�>��d�NY� {�뢊圕��Q.�m?�Bx�ч���T9�e�&U��4I��aax�'�&��CM�[β/eO�T��&)B�S�z!�iF����D����ٚǰA��:�L�-�bA�,����O�>a>�'H��l���)\D�k�v6����rn(�[CɿYu����Y���z��4E�=D,�G��ꀑ�B�jwmP'ki3?�%W���r�ˡ�ɵIK³��a�}��@���P]!��I��3>V5�w��ٖ��{�i��nb��h7~�qް��%�`�����1ј�c&�G�ilsQ����7䐰�kGG+���p�
#�v%:4q^���{XJk�N��V�<�R�Iy�v�`�,v�W=�Q��i��71�%[	e��Az�kzAw�<'=�M��Z������r��X���H"����l�����4-�F��;��I0�k�#W�Ȃ�c�uB�!3N(�x��07�0�%g�t�B��hv�i�8i�H�V���tZMu�5������S}S��m�k�
́����.P����Ɍ!��}�!�G8<A���_�`8��z�T������S��� [��/�ץfa
����pTb�ӊn��^%��M���˟ 뤵1l�-6ˎ�cHn=��$뿦
h50�j+GI�8�=����۲�CW9`UFK�Í���@�IzH*��.�qvӒ�J�������~�4�9a��|������W�%ˎ�
���ʣ]�b���OD��uS��9v�$?F�&���~�43���3P��a�;F���:D十Hl�ɁH%�MW"���ܓz���v�T�����LmpAa�����5�ڃ�ݡ==��c�e���);�p���wbb9*�:C�	�i��{���a8�G?���J���zä���KQ�nĒ��0�~�x��\���~Z�D�Ym�+ޱo4�h_�A�)r��L�<��d8�0@o%\����i�S��������{�7��������\E�g����5�9����R(�{K��J�G�k��yݖ���>/N��nh��{	=�8K����Q!v��1���<�-û���2�،%Y����/��GǺě����t\���Zc ��H��Z��gC��]�N|_�!    �AL�<��h�zs�&8}G5sǐg^�˫I�1���^F�eS���k����Ƴ���(:p4`�9�e��+�H�?`�����J9���Wq�J���bG�Z�9ϓڰ�b}5��R5�$6#7P�k�䂚�xP�j���礏r3ʌ���&)�X0^V0�y܅��"�?�r�&�=�1HXq 1�}s}�@?���`�Q�`�����}�y!�0���"�콫��e�C�#�bY��Rչ)bA^s�˷L����:���#}� �S��N| z��u�޹��x�u��_�e~G��@��&���R9p��r��X�2���k��=&���w�"i���i3�ыV�-6�[�L�18������	��]\�E�����Y��k��;^���u�Ks�o= 8������}�l��KK�g�#��sY��0����$?���"��O�~����?-|�K�{��(����b35� &�گ�,:>�UU�b�=�zJ	�y<���[��r6���~�}�#��]�>���+�ʱ���>�/#���$�C���taW�Sw��?��+��* ��
�,x.<�ψS� ���	 �3�̔ŀ�3m���C��%�my�ƈ��ꈰ�Cg��ٴ��;�GEK, ?5V��V�9�A����eѐe����fZ�A{OZ�!�$���$Υ
[�ٜ
���]��5-���r��c�Qs��'[>ӕ^�7���m��� @�\@�x��~J��UT�	�W�7WOٚ0�Ք�v�(\Ӗ�*�ے�)0SM髢��(�U+�a��*k0YY���އ)Mn�[RdE��Z��;1�?uv��sO��i�v��6f�bNc���w4��4F�c�%�^%�MM3/�D���o����C�����3'Y��2�Ƈ����T�!�P8n @���r�Yfy=�\�I�i�Ϝ���aǋ�u�G(&�0 v<�т%�Q� ���.>ώ��<��5��I�z��r�U	ʚr��8ߛ�㛻�J飗�B�;#���5_��l�������B�hjL�ش7�/D��G���s�l�4y`'X*�K���7�b߈=��(s�Hُe�]�C 8��'���]�%w��*� �񞫛������3Q�
�x�w8��sV۟W�]��2;���b���/����������;�~u�X����xw����i�n��w��>�e����!�'/�Y�u�(=Qc%{������L�x�j}����MXe9#�2�<�qrȌ��6���јf!�%��5Sf&n-'���A<i�6.i j��^�_�P������p��r�ߴ�p �
 !i�)`.lv2��H��v2f��>>z%s��s`Ik�W$i~�'�Kv�_g+�xI|�՟��R5�H�T>�7�M60�0 �B��\(��Ʃ3�e���g�)V�;f���	d u�J��>�+�@����ߕ��N����w^[	��i+%�Vv�Q,���>Y��"c>�[�م5������G���\h�v���n�#���-���a.�׈����H17�~���<y����7��R|ɪ���� �l*�����M��Uj�=m�����	^���V푣J��,r��JO9K7{|��*0Jǧ��:m��\����C���{KRR���z��	{�����h-`��6��c�^	n�*X�k>)o<gw��t~G�D��	��^I���y�gۄ �<�N5��4�ϋ�7�ي�I�a�g���/"��<���o_��^��`$�&xV79��Q�������k���������E|���xt�w�e,�F���f�`���:�#g�݇ޗ�=H��^S��l��`��/@c��S+, ΤZ�gl��s�K%kvqeӞX�t�r�LY���Wyʥ_d������2#�7�2���9	o�>�3��x��,)3���03�\�$��,^0B��c"�̉T�k���[�͐���w![�@Bq�6O�Xl�:@ߠ�d��6Y	!�HX	�j����4�KR����gT��_�̄�Mdl���p�|WD�`��X,nplR�ho��2���7�;����6Xd�ڌ\31�p�i*��L�?�b"�zc�_H�3�/�@�.K��P*zF>n�Ā(`nb%��c��,lY� �Zw���9@~X���O�0��}��A������=�`�Sp��8SR��0[�9��z�Oߋ,������.��`~��� �p)���
����N�i��)o�����eD~�"�$g=���= �xA����+�k,���a�<�	������d�`1�F<C���ۻ�R1,ΈV���e�R���0�ˀ�Vw�m-\I�:6�|�������^��O NJ���qG�錱�g
�!Od�o���Q���<>�>�� A0;-�#7�-H���t���?4����)+b��t��
>�a�[K�P�ݙAʏi�&�#Q���R���:!��%!.*�;jlK={K$���:�.��Ր�y��q�X6��+=iyp^������{٠dD���.���`)|��a��l�������Ǩ��?�]�q# a�R��ęu{����螗�>{<s>0���t���N@0�>;��a����y�˲���u|�M�P�H���d׶�#nޮ�.�e*�
�_�'������u�ҭl"O�{�J�ϮJ�	Ī�m�It�y�;���(�YUm��Ҧ)�j�m�rw�����������g�N��A7�=ptzoV}�20S�H_�ؑ��v�J����MR�%E"5����+�G��]���$yܲ�}��Q>	���ZN�i)-�R��f	�#a?��2�� Ɍef�0z��y~vs).� �Lt?�zD������=sjt9��[�e~!W�q_n�{y�7P	�"70"V���H��H+�"�	Vas�`ѧnm��I�|�ɤ=��dp�Z�ұ,.V���%���L���2�����?)��*�E`G�� �=�A�Z$���	0~��ڇ���P�Tn�`vS�5Yh��F�q;��"���R�/\c��gv���D?D�X��%8F�fu��/+@f�1y����;���p�)=�O�7�Jc�i��ǎ1�$�3Fo����X��8d����	X]�G�@y2S�Ryd&��-a5S� H#A5�p�H�3��wk%��_�$�&(�o��:�%��t0�E"�[l۩�i��o���v#I�7�J�����e��S�@��l{dߏl�Q61�M�a��#+d�K&�y|CX$�m"�\d;B?���s��'{ߕ�΄2�B-ITrHն�Cז5������m뵣�w��T�Ua�e��(�+�=P�^��)�C�{i�,
J�/�����Țe7DO�l~n�6"�Ŷ����=#�k��u)4R����8g��8B�|z�����g�.�7�b;�2-�de�;��)bI��T	�a�UIi�cTҫ+9mD����N|B��X�����.ɴO�Br��(6��7~_+bm ?[m�tyC��A�����\��Fs�%TD�$ҽ��@�P�q��c� ďg=�3V����^΋2=�)��2�V˰=B-��hl�WC?�h*�c.[5�°̲W'l��%]�h�F�$FF�kޕ5�g��	��$�Qe�//�yM9G�,%��+��%W�߯�:|�HH��w9��$QCl����Pz!�\�`�6�4/o���ZKav�;���c�ʋ~G�G�J���a3���^�L������O��H|�O�Y��wY YS�
�=�=[��$MB6��*.��F�I�F���Ƨ��=g��e|������pD��������zt�"'�'�����i�j�q�39�@剜#�Ox�4�����bX�Lx��n��Ӎ���+�[�?�\k#c�M���&�Rҩ|-z.�V�Β��)��ys��H�]�Gb�?f`.�g=� op�+S���6Cn�2��_h-dZ��A )�X1��+���Ū�6F��2�ʌ�/�,����$E�4j!EM�׼��w��q�gfs��ӏj�)�gRw#�����#� �	  �pt>[���Y0����AP�M}���y�g��$\�>�T#��$v�������	 ��E@�9:u����y/V������]�M���y7Y��H>�F�(ȟH�p&�ñN���g�A+�z��Z��i=��pժ��>0�\AQ�^���'�c�@Ͷ�K^WL�"K7�FL��#����$�O%%�:�����Ir�r�3��Xd�^�$�lo�}&�A"/&"qG��D�P�⥋^���T�`s��4��$0�� ��S�����*q�l7�OF����F|	!t��������޴<�e�J
q�0
u-V�9���n �z��8����M��ٞ�y��^O<Ze�^���4���[���wWl�N��(�4��(i��� �p$���ΐ^���.]�)jm2iӫY�&cj�&��&���� ��;|�y�*��uc$�Q�`�ч�.ȟ��*�~pK��t�U�zK�>�)pB�W䠁��0�� !ؔ���E��r��{h�
}���xy,D����M�:�2�]<�[=�RĘ>���g�ϼ|ɒ�'��'�;�Xf�D�`�Q.�)3:�W� )FԠ+�WOs4�?��n(7��LX%2k�F�����ԅp��`��]i�w�jkhf��&�.�G�t�!��8�l�:��*5iC�R�t�WM��u\?���ڕ�,9i߉�� �Z�z��^�y#�^f�zJ�܀�s�5>g�������Ѹy�ja�����.�_�x��/��{ˑX��I�"��?O��&�7��nF3e�.*e�,�����R �F[4q6�3`�g��凞MS���7��I�v����{�&%�o9]d��5_�h�lm�	�
����9-���T�K�^�i�}m/*G@��Ǿ[���!��ƀA����q3;",���bg6J�!���E�p�I���9?��$�
3�Hrl󚑤 �4��+�Fڹ�Ծ=)sН�ef�'����		,)&=+s�f���6�DO�Z���I�n0�#<�N: `��L9�7��?-�W��sַ��7����9'����/kNU6
�������ۣwg_�Xa.���u7�����utӑÙPG;JTT�&���[��Xe[�Wދ,�\֨(�hi�_�tceĐ����Րr�Nk��d2�E�Y?I�'�E��<ѻ��A���mo�X��r�ܘ����Z4�yde*��z��Q ��*�e��n�|5O�_�rs���š*��s!~��E���1 �;_�B@-�&3:��ݯ�j���+� *����S|6���������̉4+��|�
��'�4���I��� ��ym!�BӠ �w

��׾TO
�#�ł����4����?�Fi��ӟ�-#�Sj$�q���U�PV�c��ް��"�Z�]���/��`&��3�J#���:^Q�F��d �w�fr�,�f8d�0�8\Ԁ��PQ`�y�Ԅ%\P <]X��g�m���[%tKRp=u��?��^�z�1��d\�d��09�P�F�V,�Yv�$+� �:�l�Z�S[8R`[�x�����
��/U���^M:z������Q�~�A�^�׎�p2�+�3pB�Qm��4���]�件T�+��{!Ȣ�A/���^G�P�[
|4���r1'�KAR����D�;*}R���y��9>���T#��j��[ޱ���C�%��tFx�C��:Ѳ)%1e��^Ƕ����!���ey��N�Δ�*�f���9b��""��G&_�e�lB�{�} �++�1,q��_�,���&��}Q�r<q��'fdK�z����1������#�`o��WsQ�կˢf�_�'a!��.�(�tT�6�@��_s ���P?�>	ÃW�����T�X�������ʨ�PX�������w�(j�t�V�f�t8%��6{%y܄� Q�@� �.Y]D�D���������h<�_@&��1�Vf�6^�b��c��z��.�8�v�t8;)��6�
������Z	Z��7��b4G�<L��޼aC�R�C�8�jA#G����D���!���伐�
���������ܓ���Շ	���x��uԬk�n����� ������悰y'{��n��7�L�a���.���G�\���ܑ������(��������т:9�@��z�lhb�?/w{z�B�߉.Xc�MuQ�i�%��1/0��T��J6V�\'�����h�Ή��l	�D�ĺ,l,E$�pO�c]��a_��47W��H��*X
��Y�QH7��I�#�u�C��Y0/�N��f�9�S���!�3��K"�h.�k_�~���C�hi�5/����::�9�雖DG�I[k��_��
�
S��M;!�K�3dy�� Hb�
:��i��X�1�� ��ƅi�I!,�3+���������������?A�~       &      x��[s�X�&�\�+0i6�Ru$ŋn��ƖIQY��(�L�ޮ�0D�D���6���6������e����O����~n "RY5f]m�d ��Ǐ��ۣW�����?��Y�����߼���k����������ۣӣ~�o�yszyr���ED_��c����o���}���h\������eq�fID}F�E�D�I���1�~�?_o�?�	�TQ�G3�_���8�/�8�&I��Q��Y:�'џ�ߖ�"���EVL�?��u��GY2N�U�̖?�tG��O<��yZ-�x�.Ω�,Z$e�.�2-�qa4��J�<�@�����+:��������{��j�����(-d-�D�x!�E��j�q�i1|���x�I	T�Y\%�w9C���P�1�ڦ/]	uq���8���G�79A0��	�f��{j���/�D�a9Is��$'he1Ol�&�QYT�pQ6����iYϹ���B��;;{4(����g;��P_O�/���u�H��)��@�%U1 ��]9�s��e7��hsqIVF�K^���@��a�q=��Ѵ��,^�����6���Y��� ���b~���S����� ��� @&AOB��/o��7���X��EW3dt�pr�|���-P�9z'��,��iV��@���@����mA�5|3	�6��#�օ��{<�m�3�DP�4g�MB$aL��ƞ����klґ%��:�pأ#�����:�R���N�f�J�Ì'�N���0�sT'�P��j.��y��g������rj�D�Y���	������C�5^�bb�˽fE>%�4vธ��bx�L6���J��l/g$i�'�q<��|�uR�A�a�	��Z�����`��H&�Fo�=:�m�8=�F�1���(�I)�����G�߽u�6
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
��9�-4>[�©{n��h��n��eu(H�9m���.i�/l�����5۵�M�_يI�\�x�5��5��u	�q��+熄���8�&O7�`����������9�3���/�zv�ڹ1�f��~'����Z7�k��wǭ�P�߷U��1�{���(՘YB��םp�6T�Ĥ�U���&�8�Zl�Ȅ|�Z�+.fm�Ɵ��8�S��Ej��0�sJ�+T�m����P�NL��Z/��v<m;�l�\Pg^.���m�ܤ���Ur(~qe���b�m�t\�l�}7���]�&����H$��F<�Wm�)�Pf�T"��<e?4�i��b,1�I�h`ƫ��v�ˮ��7޼���V��My9c����y��џ7�m����W�	�s�����Ŭ�Z���'�&�z��a8�5l���ŉw�W�o�Eps@8V�1�u]��Iz�d�u�kn{���q��s�|g�J]����ST;�������ӄ��U���;��[~�ᑒ�$x:7���D��n�/�L[ׅ��W��>���1������׻O��{�=~����������;v��3ЀO��������=���o�w~�Y�Ǐ.�8y1(��}����YQ��J���I���/�X������J��'���f\[R��"�J36A�[Y2���.>D^G�"�m���z��ier�r�.��ͽu������}�������l�":��ɻ���݊�ޟG�_��_]�/���>u_\�zQ��������6�?��}���:�L'Ovv�{"� � A����ޞ��c�n�q�:�M�'A���u�7��&�pwgo_VՋ�N����s�O7O�U��t��̚�!��}7԰]��`og� �?{t5{]�3�� �惪��zd?�(�SNxo�|��ׄ���g��Q�]�j��7�YI�e]b�EF�vQ����M}ڜ�8�DP�����O�u	 
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
����M"���7[�������9�Yt�]��O���D�5,���$?_I��i���	P.��(㺖ED��S�P�Άc�`8]��U�k�%Ǡ�h�V#2չ�Vq�׶�L�k�@F�ĺ�E�%��۔`T�E����?��C\Z�B~�>qg�� ��즖    ����[�fh��V�_o�Bn���xzٍT�fzP5�8�d�j�������'����Ɯ�"#��`́?o�x�֤��?��oCT�p����Yg��yNl}�^�W���N)o�	r�ۧ��P��z)�`&�_�/Z��P�V!g�&o�@�CM�����b��[��,Z%I����4���5�ON�@N�������')�X�C��3gXc]u�|��Ml��D<�}]d���ϊ*����� ȥ��*��eC*��([�:���D�r�r˃���IIw��o�y*�����Y�P��˖?���	�Y@��{ �8�9�K��Tx��⒉㦾�s�n=Z������,��hO����rTçU��Pp�7u+��ޭ7ndK}��+��imK�\�����Ҍe�-٘ك"�I��f��ɤک� 3����[=�����p�&�����W3��)W��{��e�L2bŊ��-��{-��ԨNU>L�EÊI�R�*����)Å�\�vYʤ�O�+&.IBR�zX�	�?�ɴ�R
�Gے2�� �و���=$��Zs���dA���.SnN�E�}���P)
���n?W�ښl%F�$�%�Y*���Am�y�ɝ�9�e�a���T*�8z�"1������F>��t�uf}k���
�ɥ�/��Sk=)Ge�2���"��|s�]�<��c���X��r���G���.�_k �S�� c�Bv�ҽ����~�a���i`�˃3��Dl��d��M���N��N����>]S٧\R��Aբ4��bp�a�����^���s򪒬�ϙw@�~�3����6ӥ�Ya��h���\f���` %%yZ
��<���)a�������L��=#���Y�K:QS]�	����v��T7�*l�pl�% V�y?�/��x�_����̿�ܻ�����p�_x�_�Gz����Q�'�H���gXv�L��k�n����q�#n�	͸�p���q�H��%%�(g8��n���C%�޾=0Q�珎Бz��o>��9Yۋ���좠@�E���$w�Ie��A�a�R�5[L�ҭ�Ÿ�Na�nU��[�ݏ�>3�$�˙�1~�Rs��f����	_�t*o�o0�"%/	L��މZ{�R�E�>�u:85�/e�j� ���I[�jUM4�s:�95�c�YS��K�A@�b��B)*��m�u�0�9�Y�18wx@�CR�?Q2��V&��v&ٓCNxz���˼��NDl0MZ{��rX��C9.�~��Xܔ=+O	j��`�
����3�g�=+s&�	1��>1���l���·ư�څC���9�*np��T���犁���Ē�Rt�(�>���Yy���G�9��Y.��X�!��,����jZG�P6��5�X5� ����j�;�
0�r�AS�*4�V�ڐ*�3g�K��~'D"Oɜ/ ��b�')��)���g��־8�:�g��9o��Mq���u�����r�����n�b�	c��@kq�JH�5���͐J��\ �L��B�<�K�l���B��2���EJ��+威�oH�݆�A(Lv���5�I�'ԜK��0���2ڭ��ɢ�]
ĥ3�_���T؋���C��Ӽ��q9f<�(����tV-�I��/�NtF���ۇ:�P��#H�>��?G�1?���W�=xB�i��w8�I�<!>h@�M�۔`J���~�Кq��v���yT�~*jZ��˒A!۝����Cg5W?����ٱ��Wv��Gh�T��(Cy���D3"��k)�)�e��'�!��S�#�ޚT͝���*�z��Կ��+5E/�HE���u��;�JJ>�_}���'��ݚpu���Z1@��*+��R{2"�V�>K��lmw�k�W�9����6�y�5�=W���5s�j�LF��@�u���2<�J=7Eǖ�ۓ�Ms��޵�&G�-�nZ�0s|�Sf����(e�RŌ;��rG��iz;J�`�Sڗ�A�N��'��Q���m��	�8�L�7�� �A�a�JsKNH��2�#u���ߩ�;K����i]N���'�n�n�L�W˶"��aF)�m��A��;8��	���	rOl��%��Pco�0��m.���^z�� >�[���&�D���bSDhػF$pr���F>K�n�]�A`G�Y����N�j��H�<���j�|Rk�P��Ϥ N�y���E0�7jвL[i��͠Vebjp]�+��"%�]:�0��Sfb*�r�g�L��Y�ֶ�U�M��*���u�Vvʣ6��X|����AJ"�g�-g��dY�*8�%�dEE �Ϩ����(0�Z�/�考:<U��yv+���<C�乢*]P*�7TԆ��ƌQNp6�� D��Vzu.�TQ/�Bf�TN?�B�q6!c�S광�6�Ң�n6��/�te��L����-�%�B:wa�Ih1)7.e{ghwV���ƹj��|�St���@�5:x����ώ(�����n�sdx�2/�g�}�'	�׹�VͲU
C�k��
�XSǎ`/�T���2k�f �6��
,`� ��6\uq� �xG�ʁk�}�m��acU�ڨ�������FG�v�Lp�ݲ��|!�S� �������%yY�֮m�]M
E�U��U�e���X�ev/Д �AHOM��h�S��+A��Z�D\bR"�:s|�%wX�	V-�
�����'�9�o�9� ��ۜ��z!<��,�jo��vy6V*�E�<%�\�g���uFN!�6��(�� �_s��MgIKi?-��{�2G���dE� �Y
�Nj8��t�taU"K.���[UƍU#��H*7ܛ��a�-��i���0��+���	]R+U��n�- ����V��b,�H���֌��9�G#K#O���Q�P��#8<���U������-u����ܭ�2}p�Cg�9.�������bXE��R�(�mܚJ3���Qs���E�	� �i>�� ����P������3�žu?dp͌��w����w�?jۿ/mg���� �]C��x�� �r���VW��nt��i�N��#F���J��s5e�GB� �⛧��сŦ+��J�^A���yF�-�M2�~]zV`�?�ɨl�3��J�:r�kTF}����V?�� ��2��c��.Q�p"ͦ$	���u?�����H������Q9}���逮�S���jp=�1\���Jt
���a�F�N�90a.�L����kR�-{�h}&#���O~�1IH9||J!v�R9ώ��0�Aݾ�*
9nL�ǘ���%kͰܖQ��2RhJa��mV�'`^h�ey�W�)��5-X�6٠��k���t������^�ŷj�ؿ�eˣ���,j)��T2}m�ޗ�Z���[��پ��եN� ]�r�Ŀ<2�歜��j"�$��`����9��?��(J�.Ş7�U�����k�~���,œ��^��c�Kl�T�L��MNk"�3I�����4-��~��,��F�ݔ"����b�YS}�1+��'W�*9�S��"�E��*�-O�E��n&�*0�WkN��|�?5��9��_�5�y[N����a���T�ŰBG�K5��� up���K�������5ۺ�f[��;�c��������Rn"��r}�_7TT+]J��l�6���^�ӡl�D{`��˘o�ߕ3ȽQX�XL��eK`
�:�e�.�����2����1�޳�ȁ}�a=`�)�,%��
��X��/��
;-�B����>|Cb>	0�e��61��N�jח-�ַ#:���FL�r]:�����Ć���$�	E��{��b�7l�����%��BUҚC���\Vw��1�Y
�m��M)��m�%"�s�nX�(��G;aѐ\ݖ��:��o����Gy_�|`Ч�2(���7$�~�;�^����|�!OJ��^ǆ8z�w���&�e����=�k���Uܲw���( A���j��6��(��[dN�&���    =�I��N����ƫ�A���n�)�Ǥ�&v_A�c���S1��4�G��%K-��ZHx��ڬa�)��f���v��I�O�ŷAxa�T�q%����ܹ��)�uA�Z�M�����/����܏c+���-f����O��z��ι�v������חnY�L�Q����Uk��IXKU�ҵd��d�M�%���(�K���l�ػ���V�c�m��
�0��R��V,�6.�^���k���j�k��b�����=�r�)����ٹ�ގ~�(��v��u'���ٵ��zh�����"�2�:a2*�v�!�|�d��2h[�ݔ��>L=~ԋ;9%=Z�'o�6{��FJ�Y���;Dyۘ�.���l^S�^���`�k�v�t��W�w�Ї��^�v7�~��G�yV���;�����
�4m��y̅<�g|O���L�ـ��y����*��J�f�d�j��WP��T�{Rſ��Z�����S��z5m{թ���Y��ߔ�8�:������Ч�MO���ڷ�Ys�2��6�eN��B�#��eWX_@�����>a:E�V�_�����ǳ�����w'�O�^��-�孞���?a��v$��;�CИ߷�:��&�Z�/����7$�"QVXot@m�9��|m'c�Ed�g��ɑVw4<��p�Z�vi]�9NQ�����`#�����Z���Q[Ͳ;�A(�?-��`@��r,���8��tP���T��U�`w�wզ� �g��:�&�ۨ�,�S�
Qa���0��_�@(6���nQ-}�Qs�j�e�MQڴ��
U(�ݨ]�<�/�y�ĉ���/~v�%���'�<��:ƇcH��9Tt��������s��:u�3�ߡ4�'��X�m{�T8-b�{��Q�?��o�&K�h�$�b�'D�nR�Kfx�J*�s�y�.�J��2��e�O.��7�"N@�����3�H�T��Vx.�qI_���{��O{yFq���Y��ށ�U���G?s7�*�Amr
���a!#tk�P+ŕ�Px,����k�oN?SfJU�I����R4��-����9����C�Bp9��m�9���+�1��� 0��(,M�N�R. y�m�5� w���f�����L������k�~U(�x�}� �|vZ"�t��k��Ci�{�"h��GҀ��m-f^�/"z�Oi��Z>P�������͛1@���RZ=tUGn]��ƒ|Ho�Jo��$����M6�<)�wc}w�)	j�(��ԧ$�O�]�j��#Q��4x�&@-������99v�����q�S�������ܵ�� 1�?���6h�ᰔ��	5O�%F`?��gT5��O���S]7̫��5�/ENM��nh(�Н�_9=w���j��&��LN�J$ @�8t֘�b��ጁz	�iHF�s��fkŭ�#wȐ�r ��0?��7���N��7���K
��=j*��E-'"��C�p��Z�����W�$���-X�
fآ�Ј#,:���d��2_P����a������Z'��&�/��?�cnNΔL�'l�~�>[��R�N�|._����ۥ+�Z��Ev�bc/(�Gl-���A���d��b`���p� k.��ڸAlͧ�F����wG �m����H��C}<)+Ъ�U���jj?�'q�kp�B��;j@ˠ�d���݌dF$6-�	��(�3��sx4-,��i����K�GJ���շ�/��RX��9*p���+��%��#���]g!/V�8�Z����,k�x/n�i�[F���`Q��bD�A��T / ��b�I�F �Z�u������{�R��b��~b���t#+h�Z��!z4}��|��2��,�2Ƴ�#���^�9��q,չ�{���,a|QdeD^B��3���Y��T�Qj�h:=��	����������bXV&M;`�F�u3!|3 ��-LP<����C��d�Q
��'�= D>�٦�}N�������X��ø�+!�}k�+V���Bkv��,��1wu�U�S���e�������T�&�l`#�,�W��tN���D"1Λ�{��Lu��6�s 85�k&b�M�|W��
 0f���j(B�ɵ��h��_�,�똡��2t*�:`��N`�['�f�~��Rj	�p3��з�l��B."d$���� ��D��tLrM�9P�P o�(�OD@����f̷B��r��5jc��N��]Vs/��A)^����hM��_/�aD[�:�ձ�H]@�r,}�>d8xjĢZ�x������eK��?]�)u�/����C�4�Z��xz)�����a[��6��BYQ�?�u;"p@�)�vɴ��B0'�Ei���i�{ $/c:2vbm��x``�\Q�ӣ.1� �P�R��Y������>I������\�m���<��0��e~��3-w@O��k���==�7�N��h�*��9�|܊}(>A<��N9I�3����;�)��`�M_F�����|�4���0�@}t�����~b�y�=��	�w|��b�p����l3�~ǌ&�C���
�,���T;�`N1$oA���\�H�M�����w!`ga�G� ��
r�8 ���r)f�F�,�P�'����J�gBOį���L��/�� <�$UI�<�Jj`�^`PjZ�ɒM1�ർn��V��#ǜ11&�=H�k�J)�_)�Y�KQ���j���wBT�Вn�����W+�;�~7�M��>�owl��v��#���n�z*G�)ս����_h�ϭ\>o��3�<���Ny���+}��0�����T��R�2k�p-})�+�T���_j�#7�D���:���cIF��U�2C�G�؈��%�rq��bĥ܌���J�l�c}
9��c7'������p�p�����=��kȫ�����i��bƾݥKw��Ѯ,��	:Ms���yY�J�[� ��m��-���J��v{iO%;��RD(�Z#��]_��+l�T����S�E���U��z�2^r	I��+�"�<���T�m�)$C)���E `c&'�m�L���_Z�`��hO��f�,�'֭��'�ɨoP32�q�\̆�n;~�/-���D������������f1��)�onv�P�a`��k���-J"�V��hER��mjH\��hPQ�5�_A��;��Şbi�j�p)������1��u���*�t�gQ�	H'%���H��d���16�K�s��T6��5����)���z�	p���	�[�<`n�T��	�<�.6@6�0�[�%�>)���7K?ϔ�?Ŗ:�J��W�kT&%�@��l�K^��AgU�9ܟG�W��x)�l�XЗ��� I)E�4�U��Be�W�V�R1��W��h�:M�F��n�aon'�_` ~l\��v�5&�C7&�M���6"���'&r$b
e���r��+8`QJ؁j�[�&ENȺ�6H�}>�����BF~���Ud㬬7�|��Z�/�*:h��u7%7�ή�,����J-����طO��,tg��Z�Z�Q{�#[��T�1e�4�rJJ��Ym��,��&�h��Po#��[�X��y�%��^��y�V� ]ٌ�	g�gZqq�I���E�� !	���W1I�jd9 X��	�=� U�r`۶� !�p����<SE�z3��!ć�9?�g��W)C�Z�m��.^�'ς��АG6�=w���<�S%��˵]�~���~���q�g3����?`�E�~���i�I�ֿӕ�؂�����B9�G����d�-���"�R֊?Ր�]`Cah�k���bIU��iNiV.Ө��%z�2�w�0���9ț���H�5"
���0I��dXc���߇7��c��T������r�2)���r�Ʌ)p�҂^g�*��s����ݪ����tF*�kgе�>�>N���<dgѝ�bjroNg�┺dJ5���!n�u〇j��*�4�v�:��5a=hSS�S�������T��-��f'G�h2ͳJu�0-1e�j$epSl��E�(R �fJ��H	    � �)�%��EKF�xπÃX5IYj���9NK�a�̯3���UX��-ᴑ�wi�:�!)�x���14�<�z&>�D��γ��ө�W�ȘV\�`,I���@��RYi�l������F��`.]C�jN��kW��CY��3��@��:�H�y�9Ǥ�3,Q���oM)�ڵ����:������	4�&G�d��/��Y�+pH���@t����n{�)�	b��\c5v��뙄���W��{ݚP�����W.
�p�ǽ�r�nfGͪJ闆%Y�vUد+R���uXqg֤���e�9;q	���0֓��Uzk�\V`ٔ��07G":��UQ���!��6��O�Q����jF��&L�n�8�X��F�&K�D!�҅�c(�=��LNx�v/���8D%����E�0�L��q��z�7`_U�b"(�!@�y�E�T�zӀK�SJ��
)>w@��e�Хu�gT�[hJ��A�,@[8�%EF��
���g���*J�œ]���E�w�`�)xz蜗_�ţܫ�VO@
=нkJ`c���k7k�Eװ<�m�����1�ܥ
b�2��MNW���=h�#in�#���DU]�m�t{�����G5e�����l�j�TR�+�c�m?�
���L�nƯ�͠o@�z��1�W�˨U�{+D����X��B|�(�̛��4_|U�$����:�4/�j|�п{�'�(^�x�FKA�*e�m>P@�)u����<�~��|��˸�AԌPK�y�g���W��}#�=���u����/�AIP���
4�w�:!H>�
(��Fk�v�1�\%�R�
F,�5��b}��vo�(v�n�D\�c�7��=EbL��IR�f�t��w,��な�����2�����Б���pؕ�\$�1O�?\í�H��6��P	�ƈ�����k Z��}���9�/��Za�(�wy���<�0�4���X�H��c��O�DT[:tN�>�X���-�&`~n�F���
���m�3E2
���c��Τ1�z���J�&.�P�e��lC�1�Z�,�#�FH��Q����H	3��N0�}(���9�����Kd��9����Vs�&��ȭ���^[�z%*�}��%Us�p\̽�Bc�5F��H;r�	3�z��&3h�J[���0�@NG%,C��s%y[���v.�547��+�ulgi}�ʲ�X�d��6�7�6�D�D���j{��؛B(�W��C�vV�
��H�'��9+�xU��m��`����+Z��W4�ED������V5�j�.�CQo!�O�kOu�Ҁ�����J~��Ul~�o�y����7�&���2� � �U��a_(�w�3����g2�:����]���{�cˤ�	��'%�]�(@%����2����f*��
�s�?,����=`=��1z>6O�ֳ������C!�2< Ar+2�(e ]�p� 52��1m����9F��$e� �U
(Pe¡Q��.�͘-�Rf�A�'X���a�P����6��N0nC'��A=�6�a�4�2�_�i⭉�x$��G��Q	�	�� Fj:#Ц�e	N�i����'��K�K�b����ٟ7����9VC����Y��l#pޒ�a�<�G���[����q;��<}������� ,J�?����N��)�ƅ����V��E�oA7���bڝl�jCN�Ůp���S��R�	��Y�u0��J��k'�`����y�M�#���Y	�Ј7ee�N�Q6L��-��ał���t��y<���U&���@��JUO(���c��L��u�6�4;�
%��(be�R�s�Ԫyy��-⠸�{��!X%�V>X-~)�Y����|य़u�MO�(��æF��v�y���Ԧ%+��df9�_%w (W�K��$�8�c}����"L�Kz4����6��R��R�0����KDgV���M-,EK˶w�|���}���hI&��(�4ڧ\Z���&����k-"��3ϓ�?�N�Iw�)=����@���\ɾŢ�$�)���yV������,�6�Lu|���0�3�<�����YZ��=����X-�t�كv�Zb1-��(��fB�W�S%_�2��v�p�CK��C'����O��kA�laF'd�v�JSL?'�Vǝ!�H�hf7�(��DkZhQm2�Ab�q�8�cg�n>�7�(��>˯����i���DYx��;DK�Uq��	�rk��`�����q�-��|�PW�J~�a�-8��/�H��29 �֣1=���u:��:��q)�*<h-leo�yY��b3�l�8A�	�p"D�>T���4xwS?��ז��p��*��֊n��L �_C�8r���iTB�Y:N��9q-��ŗj��T8l,��kC^}�wZ^�	ԇP�Ԭ����Tn�]C��������}��w���T	������:{��9Cj�Y��� �}�4�yz^(�x��t1�'^�0��$J�t�\9{�R9-,Rd,�7t���P̙|v���KB�1��r�L@���ԉ�/�m#ș���v��m�44�����`r��p��o\ꩆ8K#�uf"GHC���}ƨ�bR؏M?8���ـ�P^_�\)E܆���|�A[L�x4��~NWT(�R�M�ͺ���.���g&�c}�E&�}R�T �%�s�V��؟���R�O.��R����B=i!�Ёb,�"��m�V���3p%�2�p�xf�hO�Q-3�×h�q^[�	%���K��E:�=ơHy��)J�T��q2���!�X�rt~�:=�c~lUީ����&2����
��f�S�[z&����R�"�c+%g܍OW<�7Mx�C�?hy�����ST����(�ZaGW���#�����[PQ�<*��K�]��t:[��q�:�DY
o�P�&��)�x%�Yi]���J39{�,5݄��x�� Q9rk�j'eui$����4��0~xA�+m�����z�+���آJ))V2`�R�XI<��/��ůCP�F�~�_;�I��v4BD�7�u` ���iH��|����^}+^,rM�6�m��R��B�3�q�nIDK�4C�PӰڛ#�x;7ٽ!�l1]��Ν��ڝ"�;0Pzf�b�/�_�l����Dݔ���%_�"I	�a�A�2M�	��i�aȁG>}�/sXG����M%"mq$\���Q{$�7�>����m�]~���;'��&F��{��L����� ����A�9-�%§���~$dg�X99f��`Ӊ�4%d(�JS%�I�O���������z0��'����&8��ʋ�0!p�a�0jI�pR6����Z'yQ��������#�}�5���ГeS���Jʧ�}Z?rBC�}�D��q�wS�|�)
��M�4#�F$��9x ێ%L���y�	h,X�\��f�r�Nͣ+^kP��!�8���7�4P�倇-`��N� 9(����9�+��ذ��fW~�N����%�9J�|SX��� 0�(a'QY�0K C�2�6Y|-�_��3�w��o�R�
6AյA�w��D ����I����j�B�^�:%˖ͳN�]"D���j�= ���\��b�MxA��d	t����@j�64>�o���q�O���d�6`m��H���<͹e#L���r�:@4�9���K�F
Ӂ�$�F.�����9�4 �k����ɜ8��iG�ի��^��:���uo(��)�&��[�Y$�*���R�K0�U�� �a���g��9�G��-�`\��+,���=��}�����D'�0pdHB�7�"���[(�3:��:Q,�s-�@�k���7��Zq�jO��l���xr)D����镥1� �Ȥ�ҁ��LR|�,5U{���F@����\���*p�@C�x/.c��m� <V[�I/y��E&vs�<��c�+Zp㡞c}�n,�.yC{C���>X
E3,�ZP���Эy=��_���7�?�ur��p�ȧ�����k���I]Z&��0!��R    p i%$9��g�9FυZb��m�|�Ll��no�;&;�LQ� ���R>�3չl,�~��A�$�-�<�5u�"Oq�ԅ0 6�Tع#�+�֌����=�01`�I�I��N�z�8�;��~h~G�'q�h��}�_0�F�y^j�k��bH�Z�֪6���h��S�^�Hd[P3��-*�8�������j��ܝ=�|E[˚0_	WW�.�N�7��l%�'bž����������������ݛ�����>������4�ԛߝ���/���W��ߜ]��p�Z^{��>��W�{����e3�*���3��K(�mY���$n;f#���8F\

�̪l�p�����x\5SZI|�\,��Y�.ļ^o�D��ɛ��K�jճea=��ZI�}{��+̊�7t~��X�;��zв��v����9����%{,U�(_Db�������qf�?a�� �Ok��܈��Z�V�O[����/�1 �k��k!�FE
��^���� ׎�I�������㓫��*.�ek9O$���W1�ہ}���e�@ �V�2���E�'�ӭ���1Ut.���	����=�~ۃ�D�^r����g:�;R�L��-�9g;�lX �V�Y�5cx���*�5$�=��\�^D��o__�{�_�+I�8|��
nr��@'%JЄ�L��ܹ��
�J�3'�O y�YE�	��i�a�`��q��zo��M��ZrJ�3-]�*�8uO�1i��?��<�>3�߬��[FXӒ������}-������;�8�a�G��~��ѣUc�ߤj��a���GzY��^��?_5�Iz'��kw7B������$�8�'JZoP���ϔ�e$n9F�Z�5N1{�/GG8�ãoߊ|�j����u�?嫛�����G�}�]Hc���BЁG���z^�l��~Kf�m��L`�o�y�_ݙL�o�� �����_g��/ �w��ѣ�j�d����.��ĵ?;Λmw���x��A)E�K��V�f� �� UP���~K
���̄�:ʣ��Sq�
��}�����>
f���S��#�2>�_�����H�w��aa�~��4ކh,��!*�G��`l)�	g͕��0�D�I+k4��n�HS��p���+���[�]�N/�dL��(q�:G.�q͒Ǵh���h5:h���4ϳ����"Ƹ�%���͙�wM�� W2F'M:(�^5Jbb�!�D�}���` �K��"�SKY��W�e:m��='¡JI9��6�M���A�R*4+��@�e��:�d�.�5v\Y="%���Z�ã�ke�`����Y���}���U;F��Pc�y��S��Hf� �y~�n��89p7>Ż%�s���}�#כּ��^A�*ڗ�Eb��Qq�>��U�6S�z�����ۀ.l��K��]�X�ЉY���FF M  pgA=瘁�Vk���L�MD?C�����8>t�y�W�m��[��w��ۣs��F柶�����w��+�����f߳�v��A���3S�\:Ø�����5 �6��<�3˧yLw:I���^&h��ى��Φe��f�{��r&5s�=�:�ǧ�Ϭ��X�RKf�:Np���6w��[�F6'���\Q�Ȯ�����	�x'C�~��EA��'gY^^��,�N�%'3��p�:�-��H�DJ-��T�%�'�N��O-�C2v��*�����m��������/�ty�j��0��p����V0F�����������64Hx4�./��WB�$�Z;l-�-'�T;j�c�5��rN��ʤ��S�Ԇ.0:�\r�_X�M3���]5���0 k9Z|E�C}M5��RQ�qC��P������1G��\��bT@��Z6Bߋ��R��9�����?Z$W���\�\V�L���������?������k+a��1�
�獜K��$�ʧ�3|�-i</L��>#�Q�PD�u��ޜ�YX���������@.��8�����m��G����2��Fٸ�޽?�pl<��Ue�=~���cR�<0~ճG>eB�߆Lj$��y9�h���5������V�j��?ZMM�(hp~�AM�E�@fw�Q�Mz���y$��5^����y9t1���u^rx���?dY%�[����Z�=�!m�s%y���t�׿�
 �q^��̥��[���%*�*�E����ڮ�i�TCiB���`�n��P���e� ��((����[4�ElJ.r�Kn�ҹ�K蕪Ϗbw�̩��c�S����|5�*$�2�:kP�;�6u��4�4���{*]��4��ZGg�W�2T�!̓��Q��O�8������ ���������<���B��:)�^������e�����m;�С��ݦ��g���dH#Wx9չ �`=(�S�Hr>ަ
>d'�v$�	��䉥3��-�ʡW+���B��Y_#���O൵,x�I��p����7�SJ�氺�d��a��:<�_�h��N,�pf4j�E��]6C��r.�]v�Q���c��h1kG4���2-B�G(��cTK�C�� Q0�L�c�q��D�g�H�������h��O��q���(�4�y���f��%���6��3��^s�^�y<�=�����wp7�N'���������^|����7v��t<���l6"����1���lE&���l�դ����.���	�!Ri5^�QgՋc�� ���Rs�����K�	��+?~�m⥊�Ti��>^�Og�_���C�]�$�ؒ�1S2�h��� �z�L\]^�k���
0��uSx�#�YeNԕ���`	���3R�ˎQ�,��&�r&���(�an!���|�_y`3�������3����;��zYҶW;+��r�IIj��T7�
�6�B����x�=PzD��棝��!m1���*r�(���������~�����]�M���)E�� 	�+����Y�J =���l�c�/��6���G���pH�Fk<��%�B�iZٮ�y��M��jw�li{o ͍U�������o�bҤC�.����K4!fZ�B���Xw��N�������'%��gm���DN�~��K�;]�0к�	�b$|�炩�9:��@�d^�?�u@��<���]4:�(k�:�:ʅV.�;B�]QMO9Y�[nݱY�����{�6t�)�� /-	�9uW�����В�b���+Pkc��E�5��m���S���C]'������RV�CƇ0=}N�Y϶6�ʗ����[8J�(��!q)�w�"JZ�J;gcC��w�8���!s��C��Z���K�������F��T�M�>��r|���I�*��n��K�_h"^�PH1B 3X��Ά�zo2�"�M&��Қ�[����U� )�xK�r� ��j ���L7N6	���nrB���3洛l('��!�'v�ӘA�����ɴ\��t�N�"�����X��h'Ajs�:�HI*��]
B.
M������I���\rϣvֈ��p�-l�k��?��{w|�J�|��C���T+��W�C��H�a*����p�4t�c�f�'e.Go#o���s�$��7j�`!�t,8�àR��	���*3U s[ۅ8~�DE!��RNו�
օ[åOI��OӥLY7��J 鼓�ą#L8���&-��5@,��rƉ]և(��O=���볏g��C�N�c��4��0W}��%s�h�r�	>�t�=m�Ǿ��Aݑ�2�I ټd��xp ���I�:-�aGX k�`l� 5����� ��躧W���Z���VLР}�����|E���fxa��	b1�:�<���Ͳ/�#�}Of��@�]�%6k��Ė���gm�pz+mF�T�HC�b^�*`Z��Ǐ���X�5���shԉY	"U�B��f���d�B-cS :��eW��G���ZQ��� ���)-Ǫ'������C��e�kd��y�XuxW"����-4�A��zf;"g$�:�t�5���X���˂��q��t'��jN�OU��b�3��+�|�O��}�    S�~�x
�D6A;2����-E�����Vd�]Z�`�ŗQ�n�ajQ�������eP�j37�Ny&|�-�m6��냨p�Ȃ�ϊ[�1�:Q,~�3Ivt;��"��!{� LRp'��m8�ֹvߣ��m�ZR�Mz>P%=��J+�����d}v����uM���g�j��kŊ��w��cԣk;<��� 6��yG(�Q�㟢�v����=z��>8�<�?������?~8ut����g4����:�S)��5����5��M�ᮔUbǺ�����Ƹ���E'^�c��m���
��t2�K���2� ������Vr_�hT��ֵ_Φ�T���?�M�{,�?�%y�;��~��?ޑli¹f��N��F܃�%+�s���M��K
�����7+�a(��3�q@��6��G�%t�==gz���n�?�o���ȇ����|��1&�2���>��������Ju�HrJ]gkwd�dw�>D'�&1�������"��W�v�a
����T!��q���^�#d�Έ)��(l�W���G6��7K��$�&B�D��"��6jb�G&�ޜ%P��W����R��e�N�F����4[!�am6{��������g������t~��v�ݞ��퟇�n'�U���d���O�%󱎕�f�Ӥ�ҕ��ު��H�n΄������>b�kh.Y��i ��z�'�=��A����� G(!��"8��N���x���m-��L9g&Ol���X�c���Ld���<�+�N|c��PW��.@/Hbkrls����ݹ�KCz� ���3�xNʛ��>��G�'U����oX;�s#�^�{��(<ur���JQ�ejn�-��㕶G7���dH���LW��i�����҂�r"��U�/��������
|�Б�y�[��!���������:E	i��(h^�ZEoj�/����ƔS�F��}?g밣�v  ���E�P��\���q�*:u��%)k�ޜJ]�r;���Lt)�g���<�!�xs��������\��첩�E�>~�R���g��r ։Z� ���@��sB�
���׳��u+�O��#�r���~�%�W��	W2s��U�l63��9�	�O|�����U��꟢��o�U�_����
�;z�lL�U��p]���2��UA��yj%��8P�>����.����f8�e�}��ޖ;��2�^=���{�$��%[�{�p��]�&(����2M\��RTC���4�[��3�7:t�8�c�K���	�u�>3��XMք��(U��`ݨg"�d��S�'3���u꥟��� �C+�u��z��sIL5�����Ħh�|WnK�
�yy�������Z������+5����`���F�|�e..�<.3ؓ�;p&���M�*)E�F^{ LH\5�	��D8�j�� +xoda��J�G�R������C������'�- ��};�!B�����7Q��n��&����}���{�k�[èCm/
�kl\eg�ʗ9ҩ0��	���'������/v�A;��t�χ��\��U|�K�t^��B5%�f����RԆ1��_P!��z}�����ڨuR*�	�4����M!:����B�̶O�n ��deHwM�i.߭j4~��s���s_̘�j_YQ��������d�n&̄{h��ۮ�����"H\G��f�V ��	�ծs���!F�U~!�Cb�#���.Y½���C���̹��˜�z�41Lgf�*ZRz�SO���uuG�H��{d��h���t�P�A���v6Ϣ� �D�3�Gq��FkЅDz�u[������Amh�)�n��øJ��t�#I��<���]�Mnɶ���6l]D\�	��TO��f�S�;H��n����5�.<��S]��7�l`��z������.�3������m������#Y����Z\���Y�>��VR�J�p��[�GG�ҡ�~�aQ�{�+K�F����< L���,�/�=� �5�����Fe*xɌ��RF��(o%k~�`7G���_��`;�.���X>�X��l����o��;�Ej`5�ty�%�����r�V�E�`���Xg��+��~�_`�w����-ӕ����;����w�:�Οe��e��fT���/�n��ܵ�V�s��������t��t�-���7+/$�����r��ѵΚK���F�.��bN�0�:���x���zI&3Ui>y ��τ0�:�����K��4�|Y����ӿEb��vJ.ɻ��㫳wo�<�Λ��$��)�՗>Tγn�6�+�~w��ș��-�	)��rƈ���0���	ޏ���X������i3�Х�ʚ�:#^6��M�J�;-�h�bU�釰��|�4=�Dg�Ys���5OR������ib�Fh���������Ã�`��W�ګ5��hט���3+�f"Uk��f��2����=k�͐J�q?��>R�B$t{���ӂ���b�.*��o�h*.Rs	s�u`����͗K_�n��>�.{u��U��M6�D� ��r�i��頣�5{Z����wxx��1�
�8y/��^)��}�ZO^�-���듂����i~��?�Þ����|Zh�����Eb�:����X�<g���d���������q/��G$砓���A̞/g�*���<�Ev��!Q���D,wG�"���k��ln��:�B���#t
N��3��,���0�s���tWG�t��ܷȇ[k�i�A�J��W��$v�p���i01Fe�p,�|)5�.�y�TuE5MK��5;¬	�N�PV�&U$�M�=���|9��I�J��I�Ķm"�R���X���2���S��T�5����T���1:X],����,5�~�K��Bu�V����k� 0������M�w�y�i��9���W6��R�b��0�����S�E��``UD�����;��Ӂ6�.P���`i�_;~s�˒1ܱQ3d�����ϴ���!r�T�E�V�n�:�~>FN=�F}��47��ˏ���PQ���4`����F=W�/�˚��������;-�W�|(.�i����`_�"+{�����@��G{�t���EO|uk��Af�ʩ9�Y�*�YecnYS�j�j�,��:K��@��`h��]n�`��a�s����(~�-H��֔w��]>�zU
۞�T���������|v'5���H��	ˠf*M��z��2��q��T;KM�m#"��tゞp��1)�s��I;bX|�=x���C��gYtq�l�ݍu�^�h|V[�[��Ў������J��Ek{������W�(G��	��^
z��]t�/
|6�i{ꖼ��+�����D�֤Fwj%�_B��@y�'�|���C�9��)xf�����G��>z������ɋ��/��>{��P
�<>�������e������{^q���)Q����a�XZ]gy�V�u�p�B���H����q���Vxd�=�N	���O���?D������� %�pQ��d5`=$�F o>:�a����G���p��T���M� ����*A��]���X��N�M]$f��@J��+�>�J�I@�ZySj.��J�eW�J��zՈ�U�aVe�ffz���_��i��C��#D��*� m��e��K�aQe��T �_*%b���~լ����p;|����K�T-���q�V�l
��;��>�_A����z��h�$��!x����C�&��+UUf��7Hփ7=�7�Л0i�er�тo�i
�(��?��ٮ_y����<_��sޒ���W%+>��^O�����0�0'.�Q
��gIf�"�1îs��Oi��*I����c�>9|-������c{��vd��0ԌCk�D' �vU|�k�oKUɎ*��%��B�;���L�����r�q�����A��+Ҽ*Nߘ���[�挛�S�� �E� �+O�j�m*�V\��a�DI&���u)    ��8t7�q��h;['���I�mv���(��"w����@�Ԉ�k�� c�A2�7{���%�
�@i1(MAR�0���ۓ���	a0h7�Q'�@�tU~�?5��˜�!���,�f�����j]�d$ �,���P#�vVL�"8��� �`���rN�0r�P��H{��y�P�:�I��iFi��Jl?�rq�[	Y�y���40לO���A䥞R�}W(� hTh�m.�7UY�?լ�+#
���O��FLSo���jzޚ���3��i(|GZ�y�L�K�.�v,�<�+w���,UBRu�QA��'�Sd�ʴb��G�t��R���o=}��Ֆ.�\�]U�Wdg���G���]k��@|��Eg?��!\�}��y.'e�[]6���8�F?���M���i��_E3�M_�������/�o�F�����1>������?J�j���� %���G��_lў�_�{u����i�N����Ώ��:V���u�>��~<npF�.z�z�l��R�砆a�GY� �a5S��t\R۽�qYƕ��u:��ӓ4Y��H���!��˳J�z�{��p���r�A1q�O�F#)��ؒ����}c��L�
|Em�0��@��@�:>�<J������m���sh��aM�9�r. �F@Ȓ��d�`U�R�[�r�<�a�C%d1pO�4�^�l��[�]�:)~�m�}�֍Jb]F�K��j���[T5Ĭ��g��W�v�;�d��A'hj�6i���(q��� ��!�M��c�s(��殨�։Tv�Q��������p݈9�~%�ah�jjV�J�'�����9Mnw1G�A�$G��̀�TD���(o����k��ռnD�:#��~���Ս����<+��5�R�}�0�Q@D�76°�����Dx���`Q����e�``�tY��r}�o���P����0�`��2�,~���!�'��zrj�t �9S��c?�h�����bhS�3�Co����K���J�z,5�'��k0&��RVwX�P��3!1�2�J���0���H�Pҷ������j\7C<����Emo�[�'��A76<��f)ek���9PBn�O�q�����C5}u�� y"��b\ֽ�8�u� ���֩��ď��2����{'k�$�qV��ou.��
lx��>G萒�(�8/5�G,�^�I<.����AYD�ϳ�Qֆ(�D����ȭ�?���>~�\1�(I��p�)�qA�h�\k��D�u�&tN i��f����'��!'�̨�v�&=�5�q�G�#�Wzotб�����x�w�'��m��¡�mz�(_VP�C<��w��bF�v�A���A~W2�
@��e��`��mk�c�y��-^���z�1�W_i�dI�
_ͨ�ќX�Y�?^kW�FU�%Ǟ*5�#gU��@\r=����YIC}'g����@��u��w5U5꾘Dz��YO�5i=��kC��t8�X�C�V�S@�����S����U�-cy��Z�3ػJ��>e�v汭º���f��!8�U��тt(�!BU��׃R9��.X�sZ����Ƭ��yKwaԾ��]�bF�Q���]��8���zJ%�(q�5;[�����XI�de}�spi�����Q3�tdT��p�,��	V��!�����3��r�&������e�؀�u5���^����p�B��R���`��K#�%��	�P�F�����f��iJl��ߓ���QN�y:si��_	|.����+����z�$Cj@[�s#l�B�N�b�X��3x�=��p����Ƃ8%�`$��VeryF���|%UɊ�J�T:�����s�=�\{��GՓN�Z��
$:�(-`���Y��&y ��2T��?g\v9)_D�4_|�.�7cP!Ee� �Զx�6.�<on3�Q:K���)KD�����)���yR����nfAK�z��BCJ����@mJ�F�FX�m܌*��|�6Զ��PA1W�n�g�����{��P��R�F�N*?����(z�Ղ�����O잖��0T��I)�����ဈ����fо��45p�Tʙ����K3�ZN��!
aaՈElGH=1#^,��P}���$I�5(��nE��a !�
һ%*���@�M��������������ʇ���\�H�\|�]���L�lq�r�B֙��* &�Ű�܁��g��a^ʱH��4Z(y,�{3H���O�Q�$��!�j�0c8TG\�xg�,����>赉� �#�Xa�JY��	]ä 5����R�"�^�C�k�!��۠4���[�ġa�.n8܎�յ��~���e�ŗ����,��0�Hn��캥;���T*�c	����	}I��!�<�ɀC�\%T��KoX�"|�ulr'>5�vx������޽t�?���˚�Kn�8�&R�BDC�N��h�Ly9KX,��	m��	���S��KUx
'�
�_K%��P�7��3�+��Z��}B��]�� �SB\�s��`�Βҋ��7`�*Q޵�K��V"����8�`����31��9M��F) F�珴&`������ZJ�ޮ��۴��R2h�������$�2I��7)�����t�-8�ȖQ������XF�3ߓ�m���UBR��	�V1�E�>�ru�Oe�g +��)$|J�x�[�9Is�j)�e����S��[���ڌNU~M��u��(����s���.9�)q�2{��mZJ8$��ZS���� _v��mɹ��U�V+:��0��$� �$vjc�Ƥ	�4����M-3���/�G��JƔ�A�<m���I�LyƎU;"'�閊�>#H�X_�'? S�q*��W+<.G`OL�R�'��$��3�R�̧���ΦUn���
ѫ����{�(�P����\Г28��|�w��2����� ��{R��{��+�+Pz�6�Jt���a8ڙD�FmN��fn���{����֪Isp����2����u�7sx�Z�`o)d�#��9Z�/#H{��S�U�}E/#]!01�S�[\�׋_r��zV�&��9aB����{`Md��!����!"�6��P��B���C����f�T_D�Be�Z΃�T���fQՠ$�ɾ�NR��?)��j$v3�W�I�Zs�5�y��wjVu<��{]H--���)�a�.�1e�ᥔ�?��p?\X���jB'J��:w�R+�C-C.C/E��ȥ 
D��ᕔ�`-��;\�bo��FZ��aF�{���<gT��&k�Ya���2���h���x�mB��r�
r�C�р�bv�q/�u(�d=T��Z�E����Y��2����1�޳7*d14�Uv&�+6a�8�՝C��Ś4~A>�U$~�IC{'7���F;"� c>YƘk�� ә������qb�,�w�<-����I�i�lĴ/ץ� :މ �JB:�`�E��ʪ@Sl��H��8�h-��>��-�p��D�@f�O2I�0�<� ����@bJsR��s0��V��@[~[�
%��f��	�2z�T�����?�{�aѣ ��ECru[j����Y�����Dϧ}�.�BZI��AC�����s;�^���2��,B�2�CF�Js��z+�lZ�!��þq0	�-��{ɏ�ᗫ���/�	H���7l@��=PJ[Tnmzi�E촉���Ni�*�w?� �1)�ig� }�]�E�iI�����bc���A[a	��Z�5l=E�ݬ�ap�W����6/�J=��Z2�;״c5�2CX�� z��Tp"p����]���I[��T]n1Cx�OtHֵ�k��>��v�~Go���K���<���c���ت5�\*��*v�Z2,�\o��$��٥�r���Ƌ��Ս�+xر��6ox�t�ځ�΅��[�k��_~��Px�7��_�
1���Ԃ�*����[oG?qt�e;z����z�GK�Z�7��z�[봭    E�e���&��߿�e>\��V�����`7�����,�*��zq'W�R�t�Ul��H�6�'Մ�L���|u�f�p������}_e|]�h�{�������>.�RC}�t��Pymξ2�n�i�=�u��{OU�h�c.J$�驢��i�6�c꛿���o��۫4��E�UX��]��R��Im��zzh�����OI�����U��轿Y����8E<�������{#���iF��`����`�!�C�x��T�(ҹS�,��p|��O�A�c�$̹Pw���2f
�LrSE�9)A%>��3��6J
90R���_��F��NKy���2@^gٻ�J)Ǆ�
��*������+�4ދ�"!�&�?�{���x�h�&�E=���2��w�w��Ad���&����Yp��V�_'��~�A�^.�A$T��w��� 5��MR{���(FƤOS�p/߉O�dx�Ⱦ�7XC��$�iIuc��Yy�λ��O�~@f������}hN�/��M��V�cK�zُc�]� ��ڪ��>�`K�Z; ���22m���Q��T�^��"��N_F������[B�V��T|���r�mN���	t$�a�w�E(a�r��J��S����B�__�YER�XSx��{C��Q�]�)!
m��=�{T���$U����f[K?C��G�G~�(�7�F�Rҁ��}��X�YB�-e��*=��_�;"�Τ�I���{q[�)�Ǵ����Γq���\?_�g�˻u\��Z�m�HZGm�x���D�V�-��^�f+t�e��>J���Z�V�n����>m�O�k�����E��$ٙ`��rϼ�+��ߐ�(u Nkx[ ���L	�em7���ٛ�Y������h�nEe��:�BaA�}e�MťԨ���B���|�X%�r-�<�Tbj h5�)����2rA���< �?B��&b�h��SB$ȳ:�#w���3����Dx�M�%���~��7�d�a�`�s�q�9�c�0
� 0��v��cVe��E"̄�"H�ݮ�Q�
GK��Qۡ�X�eo�A��&�ĚQ�`C�t6;�J^	 �s5_���-�* !O`: ����{�O�{��W��I+�g�$FV�	F�@���rO��lPt��oj�@�~'�� t]^7���͔�݊��Q�P����;�rB�_�k�!\����l�e���D�QaS�W=�z�$� *�X�AD�U�� �}j��w�񽒦t
#���¹�R\�g<G?q�Ԛ�#�m4:�g�N���Ƨ
�g*���/��[��عۧf9���2h�Ȣu��J�A�oQ��ڝ��Rr7�˗��U��7!�KDZ��i@�m��oJ�����Y��-����&
=tR��|�o�&Ֆ�\0����J	��wS�_h��^(� �0m�)�{��	s�6��εU�:��A�J. ��%ٙ^s�&9���W��$8��j��o4|cI �����↵ ��%�
��	/�n��e����k�Hq
2�IЦj�刡�_ޫb��v�\㪉��Y]6�4�	�@u��w�G�U'k��nX�z�h��A�������6͕���c��l#�')�����p-YC�h9n�8� J۽r�;�ܖKyj[�H+�
{F���ڂ�ܙ&��n�H��]Oq�+�u|�Ϙ�Lʩ��1K&�)lv:�������)Fz�{^=��6�����6DҥIh/-57��gp�;�����1�-��.��?�/��]3O}��?�4n��4��S�>���#�I�RQ�.���a�'j�{'�|}DM�.�VTd��l��}(�j;�	O1�֟؎����=�{M������:��Lt���X7��n���c����Tk�
��Ak�54���A���G�d�xM�8ޚ!�@�E�t��ѿ��([�B�צ���ɶ���1��<�l�Q`��v�s������s�0;��� B7M���U�:u�{�IE9+t��Zק�Y�Q6xm�6�ϵ��N�<����W���3�*�-���SW[>�Pf�D���咡F�nou˨e>�:�Uri�?����2v��A?|&>�XG��C=O�k)Bw��(e�E�(M����~V
Ԗ,�c�/C��q7�!��z����|jn{���۝2) ��2�"�J�_���fY���-��m�Zo<+���b(�{pKݭU����:� ��cQ�y �j��ǪL�<�[��(:���i��l֌(�V`�3x�#xJ��X��+/�mIn�������,/`���o�t��ѥ�2��0ib'�l4U��/:Z=�Tx���H��?mJ@3k��U;��*�P[�[zD�u�T�!��*rhO��$���1��Fi���)��oӼLTw��$K��I��S����	wY��W�"䮉�#�鱜��R"�t�r TQ��-xMS�4��(_uV��0z��خg����\��<u�\_��`9��
��y6�cs&�+�����iF�+����Zk!l�]�d3BG����}���ǽ��o;��!��.���J���:�U�����r�L���M' ���i��"o��"���:�!�l�����iUC?�-	�u�M�(1�TJ�7G$�Q#�1USP'k�=�*S�F�J��9:�}�!��{�C�-�&J+BKhT`�vQg�m�;;�.rqG�n�g��:��U�MqH��<*��w��Ԥ�����e�m��q���͝��	9;?�V+���T���֚��9�L ��8�^|��ԭ������.D�T?"ݮ�]���#Մ{$���@(��}��P*���A0�<>�L�=GY=��>z$IP��n�L ���s�)Ԗ��;5b�V���Ll��[9,�qy�0���6�F����׊Y���(Uc@�/�iav� r"^���~ɶG��L��>�\��5*ps�!J�?�??P�⭊������;��:�`?�\lD}�n��!��@VX���l �E���O�u��
�T��ޫKx��>t^Gˑ��ר�	ꙩWE� F'XI��Z��V��M<X�h(���*��a�>���&�_�v�j�Q��LaE�C������1bĻ�/�B{@gnI��nk���Hu���3�n�*�+ʠ}p����}
 Eu	��)v��T[��%[�	]7�V?MQ�Ҵ����c����D�=E�;�rb�ƚ �̰b�i��x+✂��Wy�J����@�f`���cL�ZC�a�k]���I0���e�5��D�Ym���ݯx����j�#���Be��h~��@�P/�s��>b���ԩ�����,)H��T
�L�����^���B��CwU����dU���=	�[����,���y�>Ywf���H�T����NO���=Q!��Ћ"Ό��]g!���ω�U�Q��f���m�ݴ*g)��#�:�<��S���Y����:
~�5�G˨��}1�>��q�e��@*�E����m�!H�>`�X6��4��w�v�ty�J��:,�@u`��x1JP#�$7(��s�t��RbjHs�&U$mE�nS��ɤ�pV�����_k�k4���da����~#j�7�'��=�˪���&Dt#
���u�ё��(��J�f��6u|n9�Æ�+*)N'���2��
<q�L���-zEp6�5a:W\�G����&$ ����9���ԟ����i�����R�aF�LJ��b\5S���fŪ�7b�̈́��f�+�5�����=��� �֗�L9��c��k%/*O�<M���J�h���F��ri>IK�\_a�Vm�SSdRŭ��K{���9>a}m�ETo;��`�T�0W"�3���A�z��|���!�~��M��dDZ�R��PmEhT�o�QU���K2�%e�9���qzJ�u�p(B�(���7I��k�xW"��}��r�T�ӧ�
g�|_��1�����\�X��S@}Z&%9;ًF�c�T�P��f�f�����0����B�����Y->��IbA-?�ʍ    ��U�7!W�&6E�yI�!��S���8r�8����ƴlӲN�(�JoENU		?PҺ.�̔�ij�	���k�nN��_�,wi���'�.B�bǾ'E9�ڧ݋ߪ{���	��p�9��lL�艸^|��\
bq�\���q�a�,�� �jX�[�O:DQ ��Bg���8v�?w�3E,đ����ʿ�2� C������׈52��<R�>g�(�2r D0�^ ,��$���W�� �� vcprK��|)��?!���^�'��@�%=Q�A�
�_@��σ�%9��hˏƯ������B?\oQsV>#��1�8sºXQL�4�pE��#�*hqI�@������%=r:Tx5\�=�s��a�	���)��3�HK��i��4�KA�9�i~(����C�PK��ܼ�G-٧���t
�ySg�:A)G�Fy��f`���HĶ� �u��\�@���퐎J���	Ts��2� d"y)��HaРݏ%�Cy6J��P��BcD�:�7��-
8aS�'d|�7���G��srk�fhP,~�f�3yd��>I�,h_:(km�/�bp^H�_����Y|�d� ��װ���*�|����a�	1�ܢA�8�ﷴ��S���MZ��JK<V+yx��?&�d�)��6\��>��V灧ƌ�UI��؋r��7�T�3ҢB�>���a���a��2��N�@^�
IR(�ij���r;�J��	�{�Q:>W-��#���� )QrǙl�`l�؆�gwr��=V�ښg�ܞ�>�}�*k���xs�������A둧���s�#8��st��X�Mǩ�������0I��z��2��6�n_+�5���V�1�;��pd�P'?���:	IG 9R��L~K-XR��{�Ci5-�����uz��i�6�#�}il�P�3��%	l�N�v�2X��|(�iZ�ENI��G�O���c�`C}ib@f�6i��i��qRA��'w	H�F?�I[��(�SF����)Ϯ$�$	�zؤa���"�c�Ӕ1���K�'�4����5�ZR��S�j�Zn�����֝��A$08�Ɋů�ٵzJ���ͣ����V=E�U���{���9�"<���'��&e�)tZ����u�
Pc���TW�[im���E���� ����A��'��O�M�)v#`��`�a�6b�E����$O�T��R��B��=�PX>��(@�)g�}S�H	{<.ڤ�� �+ܠ�2� ��RB���@���
��^~��a���d5mZq���(�ȡ��~VY��} o�����*��i�*�����0"�r�=�&3|E�F�Ѵ��-Zg�u1@y�O9�_�Λ&A�¼�ͧ��=S�C�G��Tʟ9�;R: X���rj ���}�K�fo��b�bʺ�"S�3`�ǰ7e=�fLQ�M���E.��2�u��5|���c\;�ꤠ�n���Խ��3�7��ʺއ\�	��JK�\���PCcf��Trm��xc֌���CȻ���d�IGw��(��A��>y�ΰ��{S: �s�a���cfS��j�.v�:��G��.�b^��[PN$�����ELF�p;�js�Ƌ/c�[���J����l�Sٚ�^t��O��2�����\������x"�l|8N����@-��4:
�m�r��S��w��;�m��fB��b��
�E�~�9��Ǳ����d	�D��}Bd�&�9�֞Z�~-�ꌔ���sIJ	���Mxh��������.��v��:E8nA�Z�'SH^��|�����A�p}�3�bFP�t����C�$��H�zǲ/(li0T�p.��k�	y0����'�O���i>l%2�"��m���v�O�k@�Z��S�d� Q�����ê�f�:��
�ON��1�AD�ʣ$�P&�1'�ݗ&�*�.�������W���t�F�*�y��_�/�a��SZ����x?~CwC�Bjy3��d�N�&�
B��F�&�T}o9��t-�z.?	�֪�v�I)ލ��]N�$�a��BS�� <:N�]�j��#Q��4x���9:.x��4��$cg{����-�m\Y��_�Q+��IB�Dy��i���-����c:I 	%#��F����������^x�S�q��d~����� ��]v�C�Ld�{���wt �G"����	Z�=�䒸��NQPHrT���t�0A��$�E�@�c�����6-�P�C�H�Gf��im_���.D3p�wHw��Q"r4� =GV�Yk������b>�&F�i��o�g�*�5�fk�����]*�p�ŭiEnpA
�.| �BZ�.ԝ�_�lۚ�d�<a����1�
UU��h�����jM7�\`��yO6�����c�	0�
0Ɛu ���|����>( �j6�ѡ�p�����sGN|�N��~�>(�S_�G�c����*�m_{�>��wH�s׵����&]�,
�*��0o�-����jsN��D�A���v*mQb�q$P�&�"u�BQvw֟R�.&�msP��2��Rs�<��6���Fu�!��sm;�)�O頀��D{�H�O�rXd19g�>�@>�4/Ib��֜5�����4s�]δ��~������RX�g�8�F�<�Qc�����L�`{��7ȟǙ����܆�ҷ�Rx���t���ɧб
e@�NR�פNS��:�|ؖu~a�3�#�����W�����$��ԣv���u��]x�3����;����s��1�嶳�t�x�[%f�����ٝ#���Qu���D>���X�F����0�ӼC!�U�@8`Tq)0�p��b�7�j��ҜQx5���}h�%�@n��ׁD?\��~ӳ~��_��/��_	�[�\0C�F��I�ٗ�Ls*6�-uA.��G˦��i���T�+�ɔ�G:%���Y�d?$sX鰘J� ��x��`��3�@��)y:��Z�*��L,Cg���� >�'�c��]�ݷ���P�뜀�g�:�يl�Ȝ5���d��S�r5:O0	t�[G�Vy�;��n���W&��fC��|�zy�� u+}ü�Tz���[�
ZC�	�sW,Ֆ	EQd����Q펝��X`�N�Z�@*ۋ(V��B9��ݞ��H�@�*� /��k%���0�g�2�/�e'&�>dOs��f��K��_)W���m6��KQ�?�ubpD�	w�dZ(��@ƉcaY0����{ T��*+�D�I�>�!b�� (Í�W7X��խ�����6Z��xi:񕊷���~μ� W<m��m��Hzdo�ƭ�*��9 >���������!\q'�!�NȆ�2f*��j4�a�C��hv� �Rg�9�gz�ˌ��I�d����<뙇#��]6��w�h�9��U�g�]�V�J�,/���yx2��E�8�]ء+��؇���	y���X�Ȼ�l�#��)���|�	=�;2�8HX3Ifߗ��ȴ?�ȗ�Y��c:@O��QK6ŀ���	3[QK��1��AB��e�t�W��D�R�� ��P�o��m�s+k �Kn�;����_A$w��nH��}h�n�~��;�5E/���A榢�3#h��.�J��`��y�,��z�3�)/T���kt���*��I��.�d�JC5t8������m|�׳�k�!�n~)���t��q:���>�A5�4��k�NPL�	i{���B�l�c����KlW0�����ȱ� /Lz|\�X^�ܤ�M$/֗�#�3:�l�#bƾݤK7��Ѯ�,����@�+//3(\�RV�T��¹I����^�:�Ѵ�
�5�p�aWC�5"U^����[g�ʩj�˧Њ.'��˧x�T�Ͳ0��\F�jj
\P�Oʛq�Bd��i,7V�	�P
�W�i$`��LN���F��_Z�`��T[#���k��u.@�R�h� T�`�w��*(��u?����im�}k�]�����r��3��ό��77    �c(�0�s�&2��L)������AGk"u�ظW��8_{�_�EiѮ��-��F�R0R*���1��uc��`Fw����k:��hT�JJ,C�cV<���c	!�"P�������`J����1n! �!�[�<��3#�y���9�D"L���wʖ�h����M�m7`wP >W�T���_�)����#�`����U�>؈ޱ�/G3B]A��&�+��[���9�Oc.��Us%Y���\3$M�Joc;�}����.��טp0���3N��0h�P��J!��t4���sd8�����jkԤ��Y��A0�$��������x�!�Y�C��j��ϗ�����AEm����&r��ٵ�?��-�ei�W��JI�,4A>��4��L�H�1e�L�䔴Z���Ѳ|�4@�CK&EP���%��5�D o��Z�����K�q�O93�>���'�7�=Ix���e����H�W=� ������A�͂G8��70z.��ތ�ߋ�C���{��������.o3+�z�̾'����wߔ<�������y%������K����<����9��TT�n�/�]�X~�='=��FW��R#��c}j$/Nw�Ɖ}U��-r�0r�ta��K��Vr�q[�t-���)��;U�l`�H��h���s��X	��}�0d�"E\�b�i'��j܃�c�T��D�^ei�5~ެΏ	F�C��jg���+ʤ�J��'�&f���&�;��s�z.G�8>N٭�aן�R\;��}�Ѵq�ml�1;��,SS{�Suɔ�������4��TÕ�^/%��T(\��\���&Pׄ�� J�Ot��O�KU+X�2a``�a[�b4�+�1#{$cLKL9��\f' �E
��L�rG����� ��EKF�x�FC"�b�Z:q����0Y�79���ZQ��@G��P���s��KC���7 �N�@3ȳЭgz�4��P�Y����ȋ!2$�?K���5�l5�TV��2h�����x };��2T�i E#ࡼ��3��@���:�HTHh�c��At�Nr�o�(�:Z����:�U>��99��b�}��W;<pH�Z��芅���p�)�	b���(�5SZ�g2��yu�����3��qi��vĽ�r�nfGͪJ嗆��1�ۥ�_W��3��+t' ȡj<�Y�!r�f�6�Ѥ�3�p�B.Ħ�b�5x$ t?}$��_�[c�Q��#�C�hzlB�O��XӁ; �	C������@}�F�&K�D!��r����>HQC;^Nx�v��of<�b���c��!}��MY�����	4��X��ƹ�
"ڧJ|n��女�C���Q�o�}(���RYݲNG��
�������Ɣ,k�|UZ͒%����2!c���Q��V���D4�
��1֫Zc�ţkX�ʶ�����\3�A��E��o!w�S�c���������b��>ܯo���b��#����(��-�d8XwY���"/�����%��Ngt�w$7�����sΏ�Ǹ.�J4��9��=�%�g�ޮ�W��CV��<#$%���r�(��«�sx���*>���N�;�Gh����*�p�
�9Q�8-�#�\�7f�2	���˘���e܏;6���~	���2�>�n=L�s��A���b,�.9!H>�:��\�~ 5W}L)�
�	:��=};Xv����� ��u���� ��Dpaj�L��Z	kq��4�_u��P���F��b�����|YI��A��1N��>�Fu7-�R��˻�v�f����S��9�/��Z`�D{p��e���N������j�t��C��v���C�\0>7A#Ehd�y��m��"9�n����4Q��m�f{�l�\]C�V�GSvJ�1):�,Y�G��T�S���ء����H z�=�`�u����z
$���;�K��5����[-�Md�F�5'H�7xm�\���$����q�0�F=Co��t5,�N��+F0��̨��Pw�St��q�!�P۹��-`Dv.�4������U�v�֧�,[�E�f�ϋ���4�o��s���v8��ZO`���n����O�0�o��U��[gR�^%g�W���/h�.�Q��8�¦ǩ�E{@�Ars�\��V�����gq~3o��;�,�#0���1 Z5����y�9��H >x&���x����y0�L�1����;)��i& �^���^�����f
��G��%� ���?�+p����G����y�g=��|���(��	j���9��Z&�Ȩm������~���%��ݭL8������M]&ƛ1[HR������&�H�n^��G�=¸���
��֙���57��x�͉�x$��z�
~�A"��t F�t����%9�|���X�]i�hM����G͡uϱz�-��M�m �[�5���W��Kqje���+���_O�|aQr��>Yv"
�5.&8��p���J,�-����֢����e}�)\)�b
\}�
8��Z�?|Q9.^;a��TW���؄ۿ*�ۿ`K����9AG�0ʶ�ή�,�qI'?��{��Q��dR{��$[�T���
J���11Z�n{.�R��CAI�s�XY~�L��ZG�8�j^���9(n��|V	A��츘�:����;;�]]���i��= �
��:�{���.�/1�Y��W���Ķ_k$�8�X{�\͌"��Kz�w���m��R����0���|Q�������R��l��PzO���G[�$�lP��{�}*�T��l�EL�u�c$�6�h9������Fr�s��;u �ܲR�2�	�����MZܡ��Y�e��'z�~c!�qg�� R�aP�fz�K��5�FY��{�ѥűZ
鐳�����z�%�R�^`֊ĩ�u��v�p�C���F�h�������ע��6N��i�(��)��F�D3� F�($�$��R�j�I�OI�0.�i���NW�Ֆ�l���5�T�I�ɭ���Uq�����q�s%,�g���6x�̷uP�+��}=���X	�(�����)�#jm=ڣ��[e�E�'�׸kc<h-leo��CU)6���f�PS*u�!*i
���n�G���\<N8�T%��Z����:��Z ��3�Ө��3u����s�����!�Sᰱ�KܯS��þ���@}�Y�ݚ%5�c��1���&7�����IU �?��z�I6�Dp�S\�5x;u���q��͹� �}�4�y~�w��h��/Q���v�NQ��7�$�ia����{C�I	e���.�������oi@*�(�%�m 9s�xi������&;�Pҟ�v����-]����#�P���M�!��P�>aTvT1)�Ǧ�Ղ�솲���R����{{���`������?�I� %Q��;���c��V�=��w`��lR�Oi��  �d� �\��I�;�"g�S~l�������&�S�^+`��U����U�$�]��#�(>��#-3"��/��� �v��(I�/'3%y�ك�q0EʋtOQ��\�k�邈CMXЊ:�t��{�آ�S�bZ�&2����L�U�[z&���%���0f�������x�boZ�y�����vzۯ�Q���Q�K�9\��ϒ�(s�ꟳoAE��2�/�v}���&��8N[�(K��*eP��R�W"���ŭ�.�QZ�'�R�M��'�P��שښ��I�.��A����&����ZH�cm�[�4S=�c����ŘۡJ!�-��e4���?���AoS&���椅i�ݲ
t�q�1�>����0>���^}k���I������\��:���b\NWbM5�mDb@M�job�Z+ع���pf��V��0������1݁��3���B��>t��a��Dݔ���%?E��M1� ��e
���8Ӹ�"�S���:�0�ʾ7IDZ�H��aYT{,R7�>����m�]}���;��V&�4G�:��)��o�    8������F-�H����؏��+'�<m:QV��EQe��V)�a�w���5��vN�ԃ�Cy0T�R����"L(�\sXlu
I�pRN9�Gۉ�N򢂋�G���_++Gi�^k���5��,�����n+�vO�&�.�s�h�-*6'��w9m'�O��O i�~$���8��N�ꓡ\���&�WS5��2�N����������������'G�ڗr�������29;M�U�U��NJ�{o��������B5�}��mo�?�=�G�i�i�t�D�F�+i��ǻ��a��G�N&(4
�7����@3���I���@�. ��{3\�_�������%4���U�?�[���C��7�̀�m|68ۺ�K�B%�"�`�m|��n���u�+�CV�u:�Y�u��՗.����4NN��T�a������/E���hQӾ���x��>w��lَ�HFB�)�������*Wq�����ov�5�j�.\�[��X��J9ō�r5�ȉq�)u��[�^/�ȊZq���CiG��P=o;^�Xo���'J�w����2�l�ʞ���6=�e�d�nq�ڞqk�[��:��A����E��r���vYkn���	���V Q1���j9Y��f�쥿�P�/�轐�B�?=�/�=N|��'�x�l�<�5�OA���pc����ߨc�1�?��k�crP��y�5���i5��O����20��S�!]wp-(#����[�!��J�J)�_O3hUW��@	����\��dD~!ّ��0��%w��@V�3�k��Jl$]�hԯC�g]~S�?ub%�boZR����҉�l#�`.��$���M�S�#x\O<M�(z"�p��A>�%7Ȥ*ЋV�����C�&Y¯����{�����B^'�N���.�98_8�B{�لopWV#���/
�D����K�|,{��5i�V�EX�J.�k���jW|���h33J�8/��:&�X(K���y�m-v�U����|ڨ͓q�㎥j3M�n� S�[�.H�����YI��5L�h�V�<��t��!Z��S%	�si��<�p���"���X+�H�+~�=��������d{k{;��J�����?u�_%A�M���k�&�/X�Z���u1�z�2��e��X��$�Y�zQCơ�A5��������1�\��DS�qA���#W4� -��w{���Y�������,f?��V�!�S�Ԓ���c+9���=@�%�g�3Ig����K��r��h�k���rh��^"��>)o�)s�C�ʝ��Ksxl�'�0�`���%Fl�"�P�`D�?c'F���9�m��z[��}D_qͼ���]­6>�ĥx��Ά���0)f��!��a�xI>R*91�|�b�Mnw�����46�\<!�y�b�}0-y{�Z���Y�Ż�4�Y:g_����\ҞjZ��x*pK�?c������O���ף���涯G�
8f�n���:����L��l�t�פֿ����cRY���n��
��cW'��3��*�7zW�b�*I'�g;�;�/{�oN.�|��]�$�_N�7JE��~�&]�1-$l��f!��-�����$M�R&�{|���F"����C��+ڬ�#ئqW���Vr���.9� 7%��ջ)�
���R�n� �0B�Z��t ���|�&�`��C唭7Q?��L �A���d��eyc�	��K��#�R5�����܎������:�~��B�FY�'�؁ږ�m�����@#�l _]���O���MC\��\�������JJH��)�n��72;6�g������U蔗@XU���0h=����@�;�q�r�`��0�ZY�s�:�A�;)T[�Z{\fc|�q1���������}cM���O	�k�ȳ5?��f#�6���7#icFҡ�jP��b_���5�I��H��7k�O��"��0p������'9�kQ���=����6/[|�HUjo�<�g�ҏ>ϋaE���V[cU��ߌ�_��J��cX��pk#yQ�o4�@�nu򔰤{��ŀ����(� %�F�M�. Am=��r��0���rT]s��f�?5X���RV�7�H݌-({����e�ش�Q輯�4����0(���Z5�����湭�@K��^)�*�T���hZe*1�A��0���cL�������;�ȇ�k̱|qH��w�p���P�G�1��x�	J�r�v,f�G=��B��t�GK�&�q�9�``~u��������2	6�6���;v����u�:`b~D�\7��7�)�
��j���YeV�BG�/=�ۑ��O�����V�W�Zܐ�������~���l�e��������[�����R���ݭ��b7'K QO�_���q�����mt�ɓ��
����'���_|����n���u]����@ʩ8�������i��흽g��g�/����A�?:{wprj�����U^Nv��L��]%��W���9L/^n�?�U/�ѿu��m���N���sqvup��&��.���#�p:�ϐ�������8��'Wo�'���˫���o�\]>M���>�i����_%g��ۃ�˿�������|���ᦿ�Ow�����뱽���m��nK>w[�y�/�_�?�zq�b��{�V)>�T"�o��?��2^��po�?me�������o饸�����ﱾh��Qzw��C�(C��%�o9T�-��>� ����*�������)9��QLG��i����<���m�:��t�v'�i	u�-�nl	u�^B��?7�%��K����i�,��&��z$702��,��n��s�����r��������� �Ʀ.���kD��S����"�{�Q�O����?F^�m�g�W�HZ���J5J�bR�>?|���:�XՓ@���������RIr������2ʵ��k�Ft�C(�+�1��V��C ��L�NzE���K��o�C�N�<��6T$����Z(���CY�h?�O����)S>���O�BYD8�����]��P	�i�P�JM���s�<�6�T�@��U'���6��������M�Zy�U(~Ym騗dB�Oi/8u�``;�r�u2����X�n5���}s��g[��eQ�<����x���)��n\�bI-���@n`�ǿUrׁ%�{_?�W����
߸R�A���%jK���݂�ʅ��<1�X ��(�vT?��D,x2�Hhao���@9�w��:�e��S�D�UC���+}�i�@��XVJ�e+�WYCB��S��E��$�Jw*�ii���g��5�]V9I�W^Bs=�(�do�ё,8� Ѓʼֈ�C��t�lS?��/}t�,h#���ʙ���j����:�&^���5@a�2��҇􆆺	J)xOb���T#%qgi�AXw��T�"xR[7�����4Ԧ�D�` $��$�9��g*k�"�anQ�ၸ
�2q��j��蚖-�#�{F9)r-G�U�z�hn+�ƤB�W�;O]� �+���]�(�Pzkh��-¼TG�8��Aw��7�}���a�(R����a�u�g_��]����ځ
ÿYJ���"�i��7���	�<��!6%��
���iM��|g$��jm��ӊ����V=���t�����`GY������S��\a�p�����a������DD��o�&_������zS����5��D��	0������q���y����J|3j0����i���`o��X�	�.��L�G���Xa�BBr�JȘ�ؐ�T�-f?B��ғq�A^Y�+na�w�@���5H!��@�B���Xe��)W���;����h���B�5����ц�
���M� ��Fa2�+��bC�f��S�����e/��va0���㦯Xt�3�� ���?��5��l�zd��	����^>2gX+@�98�t�S �mf���E�R�j�5A�5myi5_O��T�dRjԃMQuG�)�YR(͟���:b8@��    ��O���,�s�+>�`�;og?!q��GT����u��xCcZu(9ú���`�^���sY�Lμ%ˏ,�ZŮ_04{�~Kv�I��.�P�
f7X��5����e�҂w�µ���e,�G�џ�^B�8J'&)�sQ���;��8�:2�T�!3~�Z�c,X�����b�Uv؊ʧ�rыl2h�묟��f�S`�8E���:�L���m�~�m����A5�u��2FϹs�M	���++B��)V��"��b�]���d�����Z��<p���Z�r������Yj���T�Gm�_:�byeD��ذ�<Ne���J�n�8ykH�eE�c
�}_S@�(�����No�B�ڐ�w��KYgJ�?'�7G�	wpT|}+��.����N6��� �v�_�_Tk;���c���3<�0��h:(�Jˡ��ʭk~�c��>�M��[���u+�F���{]t1Nd!u^ۘ��h�UK�r�}�}���IZrr���)\v��|����Eڠ�Myc>j�B�v��<�+f�j5�aƲ༼��
���������7��}��VS6��Ro ����'}f�0�y0-77H#=����(��ćid��'Ԣ�1'4��n`N�d-Y��Ⱦ�sl�a���kz���]��R4�%(�N\D:�3��Z{F�l����U��֤�7�j��J]�ꚾ�ާ·��kU�ZIKw�38&�:�{(&�ɍ�7)f��ωy�x�t8"�� ��S�^5�_�6���N������"Pr�b�!���.�M:`��]�sij&)*u�%�e���6@f��"���m$�昹����oG�݃�8��BVٛz)�]��!*�~ :��*Bԗ�C�uz�?ʸ;4?S��l9�B���8�\Sd~uv����ԣ���G�Y@_T��N$�� ��/L�Εxh�4x���Ym�}{�疟��&3�葆���F��K���F#9��z��/h���ܘ��\�}LoWbe����z� �7��9$�����+a=�t����QR��1=��nկ���2��";`'ܰ+�U$ �"�Uxiۋ$�Y=SS������r��x��+C�o4%k:ŝ��`��07 �L馳6_.�o�T0��e�S�@>Ӹn��ڌ�������n�&��p�Ra��Л��_2m��FwZ�9�."(`���v�r��pǝ��6'H���(3E�x� ���{h���J��k>.(���~�f����yc{�'��c�j�����P8�w�	�6$P��S���^k++��~���
���Q<r(���s���
�E/M¼f�J9����y�בM��g�^�ⴗ~>?Ϸ��Ik�,�O�#�M-i�$�`�<]��,��eRP`W��^r32�JS*�ZnR"����E�	����N\�3����ԃ�yBQc������ǾƠ�A��6��^���`B���:���E�����Dm�w��;clK7�ٙ61��d置@]_(V.���;7N��b���X,�h`�]V� \�k�L�2�@���m�@�����w�~���U?��BtGX�ؿ�̫A}���-����%Q�]NCņM]��ϸ��}�"���q.~���%C�1ޝ��w��~�e}���Eְ�vs;�x�s<�_�G��X3���i��ƨ�P�"�������*�)��O��:�����ꘆ��e��R��yejc���O��
s@ecB�^;K���/->�`�cM�<bZ���I1ι��7��q&J�xbһV�%�g�#6�� �:����[;�uzT;/�J�������H�,�N�^T4f�&��Ω���k��rJP�K��2�(�X-Q��.M�^eʆJ�W�Q��k�u���S��6N�7��X��C��I[��9��6���-��`�)�!Y��e��k�/�5o��;'�"ʯ���L���*-s��[D&j��Z~y@�[�h+J)��Q����<:+��O]�HwSd���.����.�|��E������/�v^��b�Z�)� v�m�j���>�X8א�ɕ������[;�hafBPg���DTC-�FJb~�b^}���J7�e�D�\i�+�E�d�%+��ʛ"�u�Q����]_1m���YSAjҺĴH�j��[�������Y��2�oM��n[�>+{W��ݣu��Hn���>��K<�5׷���jS�Zd �d���r�!-�����^.V���Ѿ|�=$;�W5+}RŢ��,LX�_��vs��s�9�t���}:��C�1yz�{�@�(�̠n�IDh�&V�p���䓩��o�D��ᴞ�~,aw��>叇cӀc��_	�b���[�!d���QKUn2�ڦA�#gr�t=�6��0N g4MK�)��rq�[�q���?�8N>��V�A�y���i����menޥ��}��`����0g� dm�ݼ�Y2]9+G�.^��s~r�a>�r{E؂���X	p8����}��MS��wR9PqZ�C���x��a(�ķÞ_�E��E�,�Ó���@�
��O��}����N.����䫃o�?nK�e��qhꭠ��S�'wxN��k�ޱs��w&�\��w���BI۪�����.�z8M�M�^%��2��/C������i��:Ј�o����)uDi����?vY�hV<MOp�6J�;����ʅ8���u�h���P����$
�0�"�`��V�c�S��"���_�[@l��������Ѭ�7���GG�F�-� [ܴ������"��(�ٙ�A[5���
��׶��+��ۏ��O�i:�ⴎ��q��3�0��p+@�n���`�u>�2$�4=�Fy=j]"�S���%�i�TfY'�^ͭ)�8SI>/l;a��e��Ӛ���h!�q���C�<C&�δ�{�l�ң=�+�����szk̩ͻ7]�q����FG�x2�����<�Ds�Oeĝ�P+�a�g��;�,�N=A��g�d�6{���_��)�e$�ǩ�7d��GGAW����7�3��&�������a -a�g>��F�w�ѷ�����ًM��r�7�c�� �x�zdK/㻠^Y=������%kƸ쪽�������6���!D��g�������%2Vb.����#.cB���;kY�c.K����VX;�4P�74Ph�cl�-[Oϊ�ռt�q�9�3reI�=�@�z>�Ҟv�-G�]�M���n��2�pVa7�^	^9tډ]��W-��~\e��#�*�>��^�i��q2�{���~���%��ٶ���j �K�ݭ����"�~�/�uw�/�a�򽑁$��jGe�v������Ml�E��2e�^�JK�"�M�&hyEie����Uc���hX}J��^.��סMU���s豗�����%��[��`C���?�{�-$P&OƓ�doo?9<|��V��m%-�;��]�B׿��_x�_x�_��.��t��t��t��t�<�/��/��������������������������������������u}º>a]����®OXק������x���ܧ�O�s���>Ǟ��=�9�ܧ��O���>a/|�^����	{���'�O؋�0��{>�{>�{>a{>a{>a{>a{>a{>a{>a/}:^�{��ҧ��ٗ�g_��}���O�+��W>�|��	{�3�O�+��W>��>��>��>��>��>��>��>��>��>��>�ۡ��?���y;����} �����@�o�"��W]���/��������o��K�����~�ѱ�3nߧt�gɾ��,��9��y��	��p��	��p����������)u�N� ���D���w�.Ut~�Ql4�+4tb���%4��t�
r�9�@iUe�Q�0sHkYy	M��l����i@�n�{���vD4������MT�-/�����jGw�-����\���ܞ�;�|en���{�����ힿn�������=e��+{�_�{�N��W������K}�_�{�R����/-�e��}��?�}Ww[   ���2���ϟ�[�+�U���k���5��a������D���a:��D��%��z��Y]�u}�t}�v�{��u�%"��p��ğ�Q�a�@" ec�Å�u ^8�����Vr0�	�I@,\Sǥ�~X�ё&ɡ}<��c'�Ŭ10�T���-�LI�9�N|���� r8�t����M�N�'�jB`F��b�(���f���S'X��i�i���H�i=���
lvK���� ���&�O�	���Yгa�R}���!�<�&�`��z��i��~��s�����L��T]���Y"i7�r�+��%���+�Uq���\�.Ğ8��3�i=s�.�~(�qՑn�C��qR�Z_�B������.r"t}��Դ]O�w}˳�]_���*~�UK��L�S?����D�&g�(q/�������r6�0+�)���;LM��%�N��-���\��;��郻�X�r
���t�*Uc�*�A͸����O(��K����TS�5?��KI�P+Hǿ��^ξ/�aZ�[	3b����`�b��+������l��	�pt�p�P��7ax�t���1���$�̮1̄g�VN�Ν��6d�x�d�\��3(	 9*ӽ��iVk��{H#xP|d��8�p�2��j�;X@7@Q�x[�VU�y��]�14�}_*�U�D��
ypZ��<@8�8輕�W�{�S�tK�*�"L�X
`�'����``�Q�ݯ%��`�g�v���(�w�s
~�K�����
���3�T��j�lV_���XHz�o k6�ټ�DzkV�q�����<0M-�25a��k�6�w�ZŐ�5�ׇd9\9�0�!1��9Q�v�Rʼ$dFH����0S`�>��c�	,ز��N�#�)�}��mS+�V���w�Q=蒄�L:x����d���3���Y�j��+%�t����\�ej6s�'(�_:��6�L3��r��]A��v�q4m�l�B�w>��_�Nv8�QP�n��a�{�|3t�3�!������H�4Lx���pDX�,?Ka�
�I^h�0ȮaϠhQ"��S���s�BT�Č-������({��nȟ�8�p5ί�L�|rzr��U@�G�rt��1���R*ЎH�������+��
�nVPTF}����=������9�����j�����}�ǈ�,Ƹ�����K�[�y�`aq۔�t|ˠ�q�"�۽����j��UR�_J���)�'p2e6T���ۡT�QuР�(ݖ�A;�����ט�@�o�FE�H��l(�M~H3%�o�[�">�Yz:/�����So�#��Js���c��,��Cy׼ef����3��t�HM�C��|.��:'l-�5��A[����Nߟ�;y�'��.�ҢQ�-̬I���i��CO��!�v�,F���f��R�� ?��	��]�TO�����)Dy	��!#�T)�Ij����:W*eN:���Y�|�x@/[c�^f��Q����8��o>��F�9~`�/���&��U�t���!��/R���F`�� ���H%�F�:��,��[Mpsg^�+�L#�6��!Y�� "��*�H|�~YLO$_��Y�_Cw�f"���*+��!���l�ij|���/���:�	�+a��N�A�R��Z��8w;���R�\)0l#=�J��f-�&�7�<Tϗ�����b\�(y�����\�$�.�(�o"��&�
k�e��3�`���x���SN<���,��^X7����� gn7'�?��g��;����[���ݕjy��HK]������ר��!���#�'�d�FJ�p]�P���<sX�h�����}_�i
~%)����8Sb9���j+od�2,G����?�M�SG�",�c�P�+�b�X����_��𣢢5ն��|�����{�d��C�h����!��Y��<U++�|�1-K�g�k[K�Y�3Mt�lg-`�Qv�m�Ԛ��I|R~���7������;=.��DP�C��w}�ҩ��Or�͂���j1���E�v f[�k��χ�J���8W㆒BPf9���w�:+b����kV�����i-Vi����ԚW#�m$�fENkR"����R�խ��:;?9�B�T(9O�q�3�m��M��z���m� �G|L�$�dXz`KsU�K"��^�G������b��ɭx��W��j�Z�%��U\��B����D����0��ǟ��F�'��

g`ʩ���Z���ڇY���6���a~�+8�y�3g���uP^[FŲ)F4��������bN��y�פ�hۈD���	�2�j��J��]
��LE��B��Hd�4�`#���4�c�o�YY$�p�KJG*1��Z,��v?��-�&"��AzN[��£ߴ��_��F�z�B���r�W.�n��b�H36���og�:҈�5U�}ni�-�	�u�pA4����Em֋���� F.}�Xz]�����/���N?[:����.}n���{�5C�p0:�c(93I�Z� ����(ڊD�$� tP�V��9�A�E���A@��>F��*�@��?�1)�.�Vj���}o^K���&�X cR�� 4�٪�Y�T����/W��F��W$�\S��	Y�\&��i���"���4I��W���� ��m݅�8�w4@����X�ok۳a�R(D��h,�M�a��w3�ph����P�nf?����� '�60�g��j}2����tm��#/�i�2CYpd�����\��U(�E 򞘣&iL�g1n�y%��?�8��]DF����&O�����uD@^��LQ/�#�� �Z49d<�n?���:7�h�Cr=���a>^`��;^�Igݷ:
v�D~�W}��E���ʞz�EKcF��ϒ'����7��]��_8�p
���G�bKY��0T<�r?�{���~D$6���Tg��J/��,�x���l7|���q�M��?МhX+u���7�ʦ`G��0{���S�$���>�N���w��`*�,� 
p<�� �8%�gP����-�Pj���6�$>ٻ���\E���GM<���|�+`B
�ְ�R�#T�Oಘ'���8{�!�ɑ�h��@�b,5���Z�Y7��a����n\4k��m,ԧ�Y�r��]�#w��i�`�SՂ|��U�Y�M��7ą�fJ�(�l�;qUл��Vi�]`�i�wN��6�����/6qIr�dk��9z����~��Q�̥�?聻+�%�5��5�vt��/��$����"EjŶ�j�@��7Os]���"<�T�>� �H�3y,�#�R�&��D�4/&������Z�:�'.A����C�#-	��i�~.l���I�x��ov˅1��� �9#ǜA��/u֯����g��7«��j���W���,��Q�����^;���
T��T�I�g�nק����]���>��?�W#��O��ܟ�����[�������ˆ�&n���y�7�$c�'cM��(������N\��ၠ���#'�ъ��ϕ"q��3}�(rf��^�mg��Z�I�vA#�����
�i�"�x`�Y�{�j�B聀�nL,sT{n��b�������jJ�� �
n�5,��=�F��~k�(�4{�wY#p�Af��N��h1�e.�wn�{�_���D}������S[�_���ԡ�։�Q��f4�-S���`7�R���li�4�Y��uG����P�E�hR5lx�w�ۻ���y��2�y�zg�����W������������r�      &   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      q&   �  x��[Ko�6>ǿB��b�	z���:���1�ȡ(��R�5�(i���؃O���áD=V���l�iH��:��V��d�����,/d&ߦ���m2�T雫ۧ�3�_�hŞu�wB	�����Ԇe���O���,�[��7�\�Yv�����oMP��/'�ëOP��댺����VeejΥVE�T��b�[�J#Pf��x��z|��Z����� �
���BU���T���� �.�H����s]N!�������
&�|�ܡl��َ�k%S���4��]/HTd��{��drV�y;��}^]_>^���V���E�k�a�f[]i��9�-}-n`g�b���<iR��J�<��+��mHY�K�J���2{�%���ќU��g��O}O�V:�'�Ŀ �`��*˒`WF�w�O�o)�&XE������	�����g�{O.*����*+�7����,�o��G�q	>frfcP	���� ���V.n�]H�F:`�]���>wq�,�(Be�&�m5l�����@�ɏ���._���2.ަ$p�z^�.cɜA0! �_�q�g�������c����\(PW��&���;��I3�Ad�. ݵƖ|�FB�Xf��yC/�DI�̺�U����:�瑝����ɣ9���r�Y���y=7�p�$X�B��JfsZXNqÌ���$nx� �2�*189��JS)	h�Y�)�)I'J~�ҕ�|�	'�H�8#!��LK�CF�,[%��E���,`ַ(A�wR��@o�;�gߐ�x�M��G*�fo�GI*����Bi��z�@Ɵ�c��I�Go���a�R�ڞ
�W��W�H��/s�jwB0N��'���(�y��}KK�m&�(ࣄ�U�S&�e��y��[��ͩĲX`���Vzo�aH~�q�������-�,�ʋ&�N6�=��Ү��?X)U8�Xz<<��gU2"ÀLMz�E��
�(0bM�~߀Q�f�҆�єtq�F�B������pǛ����Z���v�[E���}J�F�tG�,&i�v�w�'�]MS�l{?6o4�U�E�v�.t��Y�-c�T[(W�l��m\snm���ʆ�t��	/ȌϹ�W;�ve�J��,�ٳԝW�+H�˺l��J��
|��L����,ph�7Ӕ5�Т�m�.�5�a�VRx7��^�!�^�$��RDlU�9xΨ]�� Fh��CyRZԛLr
��t#L��֔�}pn�<�6T�����:�֒�.@Uo4�.�#�_9��9TZ��R�ѥG���>»K�\�3ghv�CB����5�B�a�;m$�Ǳ#{���Dz,���o�{>�*��q���}�AJ`���� K��￾�mM�Mx�=/���=�#B��h B��Ok�Df=�m��D*�X��,�(��E�P��%�8״#���`8N��g.~9 ���ҧ'�Eٙz��YԎJ�g����o�]*��*!-�/5�1!�,pضs�&���E���}iޏl��i#���j�^�D�Ll�O��:��L�>����N��dK�F.|xe�g츗��)2��O��{4V�� Vjq5��h��&ѓ��	�Mŕ��h�a��$��h�}��?5�S	�)Tp��=��JAQ9S���qJ����1#��^��F�\�Y\y��s؞��XM͙�Pi�/�l#?j������V�/��-���Iw���O��:��1&������:
 ���}���A�/TIM��?���+!\��W����z�	�E]&���>��-8Q��%��7(f��H���\�х0ԉ0|cޓZ_���*_�'ӄ=܂�Dm�Z��S��@�L)f���K��$�bӃ����M�AԶ���=�'K���g��N������}Fb�n�K�/L�NOO�������$�7�&ۖA��i�*E�$��ݢ�/lԕ���H�y��;$��9J��NmU���M��6誗5��%�w6_�O,�4���
�	�����%�ߓ/�!Pz8��w �`�Kma|D�/Tm�lx3��jZ��,����,�-�ǉ����
UP����ȑc�V��&���:����$��	yU:�=�Gs���q����eG~�t�� i����-[y�����R����Ql2��<MU�?AD����8;;��p�Z      &   �  x��\Ks�8>O~5�9l��0�����V��܀�l�+�lj~��,�G&ؖ՘�S������g*C�d�O#�2	&����yL`�V���^�D�X@��Yf�V,�M�k"Bd�+97[|��DOD�[��dJh�p����$\��AĲ��<+0[}71W��G {\F��S�����J4N�<�Y0�LKu|e+�#ӟ���@�"C! {� �TҬY����1�� c!��i�ǲ�n�p�*��xa�54���A��^ �#-���0/�mPn�"�8T�e�m��X$�<W�={`�j����J	�{�(E!Py�믂�d�~��l!�$̾���8�8�R�S?s%B���%���������0�hes� ��O��G4Ŧ�$���M��	x��j7�a&�Pu����k�j�\0���+����U�S�(l���h�1J3Tz��>=eZ|4�r��l�k��Wl!t?4p���=���_�({9[��/{fiXx�F��2�&�#��ĕ�V ]��P]ܙ�@�	wļc�T׬���[�He$��]��*����j��kE�T��;GM|c%�t_��� �u���!�&�(逄�ύ>У�pD��P0^>��y���`>���K{��iPƩo���+��NP��򢬡�BTh�c75�?q������c���=�|�4��4[e����N��۸�(�] Nnoy���1��g��SR{��30{���%�w^$r����Q��~��5���y3�7�B�b΀�U!%΀#�b���Gj�� ��D�<ek4���?4������W�Oȍ����9x�ʊ�t�k>�п��3n�/��Y�%�BirC"�u�%*���6�ѽ_6�.��H���L���kT�e*��@��6v������$����,�ws�^T�7`!$l��&"�b����}��	��u]�@d�8�3�)Ho�US�F"���%�W�5횃�s�F�G"A��l}P���������fW�a�鎈��G���2�p�w�r�t$��,����PM�d�s�?5k��-R�̡���m]Ɍs�`<�SY�ti�s%S�#�>����(�B�!���)�B���r�S����\�.�G�:r�cq��0Ivѳ\!Cҝ���L����E��A>�z`����i`�r
W1�R����5>�|x��M�6�a�5-����~EX���g���F��<���\��6���I�A�'?y��aa����0�ak+2�ȱ5q��+$�
؊E��ߐ��[dJ'���L��2��D;W�����Q7�GX����{Ɋ~���֍��d�]��^O���
 ..�Yns��c��1�ْЩ��f��[\���(��c�=�O�^����*~��Wo�6��\�EɤZ�Wm�:�A��N�f#&����0U�Xۍs�hqI��*v��%���%��+�ܦp~��7i��><#+����Y���q��!�l׿9���I��m&IÚ�/ʎ�,�X��}��R[G�à�M|�s4���9��Կ�`�\��t�H�C�1C����ޭfDr�{�اӂM��W���e��z���G̡�C@��9%��ŝ�&����� ̋&�V@�0�q��%��5.�h�f�4��`N�V��դ~��\��c�0��
�lP���_6�'�H}�~ Iǹ/h��nx��\;��������̤     