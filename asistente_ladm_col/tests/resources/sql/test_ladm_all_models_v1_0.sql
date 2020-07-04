PGDMP                         x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) �   �&           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �&           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �&           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �&           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false                        2615    589647    test_ladm_all_models    SCHEMA     $   CREATE SCHEMA test_ladm_all_models;
 "   DROP SCHEMA test_ladm_all_models;
             postgres    false            u           1259    589648    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_ladm_all_models.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE test_ladm_all_models.t_ili2db_seq;
       test_ladm_all_models       postgres    false    13            +           1259    591433    av_disponibilidadaguatipo    TABLE     �  CREATE TABLE test_ladm_all_models.av_disponibilidadaguatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_all_models.av_disponibilidadaguatipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590902    av_influenciavialruraltipo    TABLE     �  CREATE TABLE test_ladm_all_models.av_influenciavialruraltipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_all_models.av_influenciavialruraltipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    591010    av_influenciavialurbanatipo    TABLE     �  CREATE TABLE test_ladm_all_models.av_influenciavialurbanatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_all_models.av_influenciavialurbanatipo;
       test_ladm_all_models         postgres    false    885    13            &           1259    591388    av_serviciospublicostipo    TABLE     �  CREATE TABLE test_ladm_all_models.av_serviciospublicostipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_all_models.av_serviciospublicostipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590643     av_tablacalificacionconstruccion    TABLE     �  CREATE TABLE test_ladm_all_models.av_tablacalificacionconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    valor_m2_construccion numeric(16,1),
    uso bigint,
    puntuacion character varying(20),
    CONSTRAINT av_tablacalfccncnstrccion_valor_m2_construccion_check CHECK (((valor_m2_construccion >= 0.0) AND (valor_m2_construccion <= '999999999999999'::numeric)))
);
 B   DROP TABLE test_ladm_all_models.av_tablacalificacionconstruccion;
       test_ladm_all_models         postgres    false    885    13            �&           0    0 &   TABLE av_tablacalificacionconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.av_tablacalificacionconstruccion IS 'Clase los valores por M2 de construcción según el uso y puntaje de calificación de construcción.';
            test_ladm_all_models       postgres    false    981            �&           0    0 =   COLUMN av_tablacalificacionconstruccion.valor_m2_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_tablacalificacionconstruccion.valor_m2_construccion IS 'Valor por metros cuadrado de construcción clasificando por uso y puntaje de las unidades de construcción.';
            test_ladm_all_models       postgres    false    981            �&           0    0 +   COLUMN av_tablacalificacionconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_tablacalificacionconstruccion.uso IS 'Es la actividad que se desarrolla en una unidad de construcción.';
            test_ladm_all_models       postgres    false    981            �&           0    0 2   COLUMN av_tablacalificacionconstruccion.puntuacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_tablacalificacionconstruccion.puntuacion IS 'Puntaje de las edificaciones de acuerdo a sus características constructivas.';
            test_ladm_all_models       postgres    false    981                        1259    591046    av_tipificacionconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.av_tipificacionconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_all_models.av_tipificacionconstrucciontipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590651    av_tipologiaconstruccion    TABLE     �  CREATE TABLE test_ladm_all_models.av_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint,
    valor_unitario numeric(16,1),
    CONSTRAINT av_tipologiaconstruccion_valor_unitario_check CHECK (((valor_unitario >= 0.0) AND (valor_unitario <= '999999999999999'::numeric)))
);
 :   DROP TABLE test_ladm_all_models.av_tipologiaconstruccion;
       test_ladm_all_models         postgres    false    885    13            �&           0    0    TABLE av_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.av_tipologiaconstruccion IS 'Clase que relaciona las tipologias de las construcciones con su respectivo valor por M2 de construcción.';
            test_ladm_all_models       postgres    false    982            �&           0    0 .   COLUMN av_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_tipologiaconstruccion.tipo_tipologia IS 'Se refiere a la zonificación del municipio de acuerdo con las clasificaciones de los inmuebles según su
actividad residencial, comercial e industrial.';
            test_ladm_all_models       postgres    false    982            �&           0    0 .   COLUMN av_tipologiaconstruccion.valor_unitario    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_tipologiaconstruccion.valor_unitario IS 'Valor unitario en pesos del tipo de tipología constructiva.';
            test_ladm_all_models       postgres    false    982                       1259    591055    av_tipologiatipo    TABLE     �  CREATE TABLE test_ladm_all_models.av_tipologiatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_all_models.av_tipologiatipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590911    av_topografiazonatipo    TABLE     �  CREATE TABLE test_ladm_all_models.av_topografiazonatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_all_models.av_topografiazonatipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    591001    av_usosueloruraltipo    TABLE     �  CREATE TABLE test_ladm_all_models.av_usosueloruraltipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_all_models.av_usosueloruraltipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591307    av_usosuelourbanotipo    TABLE     �  CREATE TABLE test_ladm_all_models.av_usosuelourbanotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_all_models.av_usosuelourbanotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590920    av_usouconstipo    TABLE     �  CREATE TABLE test_ladm_all_models.av_usouconstipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_all_models.av_usouconstipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590659    av_zonahomogeneafisicarural    TABLE     �  CREATE TABLE test_ladm_all_models.av_zonahomogeneafisicarural (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 =   DROP TABLE test_ladm_all_models.av_zonahomogeneafisicarural;
       test_ladm_all_models         postgres    false    885    13            �&           0    0 !   TABLE av_zonahomogeneafisicarural    COMMENT       COMMENT ON TABLE test_ladm_all_models.av_zonahomogeneafisicarural IS 'Clase que contiene las variables que componen las Zonas Homogeneas Fisicas rurales. Las ZHF Son espacios geográficos con características similares en cuanto a vías, topografía, servicios públicos, uso actual del suelo, norma de uso del suelo, tipificación de las construcciones y/o edificaciones, áreas homogéneas de tierra, disponibilidad de aguas superficiales permanentes u otras variables que permitan diferenciar estas áreas de las adyacentes.';
            test_ladm_all_models       postgres    false    983            �&           0    0 )   COLUMN av_zonahomogeneafisicarural.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicarural.codigo IS 'Código único del registro de la instancia de ZonaHomegeneaFisca.';
            test_ladm_all_models       postgres    false    983            �&           0    0 5   COLUMN av_zonahomogeneafisicarural.codigo_zona_fisica    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicarural.codigo_zona_fisica IS 'Identificador de la zona homogénea física rural.';
            test_ladm_all_models       postgres    false    983            �&           0    0 8   COLUMN av_zonahomogeneafisicarural.area_homogenea_tierra    COMMENT     �  COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicarural.area_homogenea_tierra IS 'Espacios de la superficie terrestre que presentan características o cualidades similares en cuanto a las condiciones de clima, relieve, material litológico superficial o depósitos superficiales y de las características internas de los suelos, condiciones que expresan la capacidad productiva de las tierras; ello se indica mediante un valor numérico denominado Valor Potencial (VP).';
            test_ladm_all_models       postgres    false    983            �&           0    0 6   COLUMN av_zonahomogeneafisicarural.disponibilidad_agua    COMMENT     H  COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicarural.disponibilidad_agua IS 'En el estudio de esta variable se analiza la existencia de fuentes de aguas superficiales permanentes y su clasificación, con el fin de zonificar de acuerdo con la posibilidad de aprovechamiento para el uso actual que se da al suelo.';
            test_ladm_all_models       postgres    false    983            �&           0    0 2   COLUMN av_zonahomogeneafisicarural.influencia_vial    COMMENT     &  COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicarural.influencia_vial IS 'Se refiere a la existencia y calidad de las vías, analizada a nivel de zona. A esta condición se asocia la existencia de otras obras de ingeniería, la instalación de redes de servicios públicos, etc.';
            test_ladm_all_models       postgres    false    983            �&           0    0 3   COLUMN av_zonahomogeneafisicarural.uso_actual_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicarural.uso_actual_suelo IS 'Actividad que se desarrolla en un determinado espacio geográfico en el momento de la elaboración del estudio de zonas homogéneas físicas.';
            test_ladm_all_models       postgres    false    983            �&           0    0 2   COLUMN av_zonahomogeneafisicarural.norma_uso_suelo    COMMENT       COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicarural.norma_uso_suelo IS 'Indicación legal sobre la actividad que se puede desarrollar en un determinado espacio geográfico con lo planificado y reglamentado por la respectiva autoridad de la unidad orgánica catastral.';
            test_ladm_all_models       postgres    false    983            �&           0    0 +   COLUMN av_zonahomogeneafisicarural.vigencia    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicarural.vigencia IS 'Vigencia del estudio de zonas homogeneas fisicas rurales.';
            test_ladm_all_models       postgres    false    983            �&           0    0 ,   COLUMN av_zonahomogeneafisicarural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicarural.geometria IS 'Definición de la geometría espacial georreferenciada de la zona homogénea física, delimitada mediante un polígono que contiene sus linderos y la superficie ocupada.';
            test_ladm_all_models       postgres    false    983            �           1259    590673    av_zonahomogeneafisicaurbana    TABLE     C  CREATE TABLE test_ladm_all_models.av_zonahomogeneafisicaurbana (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 >   DROP TABLE test_ladm_all_models.av_zonahomogeneafisicaurbana;
       test_ladm_all_models         postgres    false    885    13            �&           0    0 "   TABLE av_zonahomogeneafisicaurbana    COMMENT       COMMENT ON TABLE test_ladm_all_models.av_zonahomogeneafisicaurbana IS 'Clase que contiene las variables que componen las Zonas Homogeneas Fisicas urbanas. Las ZHF Son espacios geográficos con características similares en cuanto a vías, topografía, servicios públicos, uso actual del suelo, norma de uso del suelo, tipificación de las construcciones y/o edificaciones, áreas homogéneas de tierra, disponibilidad de aguas superficiales permanentes u otras variables que permitan diferenciar estas áreas de las adyacentes.';
            test_ladm_all_models       postgres    false    984            �&           0    0 *   COLUMN av_zonahomogeneafisicaurbana.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicaurbana.codigo IS 'Código único del registro de la instancia de ZonaHomegeneaFisca.';
            test_ladm_all_models       postgres    false    984            �&           0    0 6   COLUMN av_zonahomogeneafisicaurbana.codigo_zona_fisica    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicaurbana.codigo_zona_fisica IS 'Identificador de la zona homogénea física urbana.';
            test_ladm_all_models       postgres    false    984            �&           0    0 .   COLUMN av_zonahomogeneafisicaurbana.topografia    COMMENT     �  COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicaurbana.topografia IS 'Características naturales relacionadas con el relieve que permitan o dificulten el desarrollo de las construcciones, dentro de esta variable deben considerarse factores tales como zonas anegadizas o inundables, las discontinuidades físicas tales como taludes, caños y ríos, altura por encima de la cota de servicios, áreas potenciales de derrumbe, por inclinación o presencia de drenajes superficiales.';
            test_ladm_all_models       postgres    false    984            �&           0    0 3   COLUMN av_zonahomogeneafisicaurbana.influencia_vial    COMMENT     '  COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicaurbana.influencia_vial IS 'Se refiere a la existencia y calidad de las vías, analizada a nivel de zona. A esta condición se asocia la existencia de otras obras de ingeniería, la instalación de redes de servicios públicos, etc.';
            test_ladm_all_models       postgres    false    984            �&           0    0 4   COLUMN av_zonahomogeneafisicaurbana.servicio_publico    COMMENT     C  COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicaurbana.servicio_publico IS 'Se prestan con la finalidad específica de satisfacer las necesidades esenciales de las personas. Para efectos de la presente metodología se consideran servicios públicos básicos: Acueducto, Alcantarillado y Energía Eléctrica.';
            test_ladm_all_models       postgres    false    984            �&           0    0 4   COLUMN av_zonahomogeneafisicaurbana.uso_actual_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicaurbana.uso_actual_suelo IS 'Actividad que se desarrolla en un determinado espacio geográfico en el momento de la elaboración del estudio de zonas homogéneas físicas.';
            test_ladm_all_models       postgres    false    984            �&           0    0 3   COLUMN av_zonahomogeneafisicaurbana.norma_uso_suelo    COMMENT       COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicaurbana.norma_uso_suelo IS 'Indicación legal sobre la actividad que se puede desarrollar en un determinado espacio geográfico con lo planificado y reglamentado por la respectiva autoridad de la unidad orgánica catastral.';
            test_ladm_all_models       postgres    false    984            �&           0    0 =   COLUMN av_zonahomogeneafisicaurbana.tipificacion_construccion    COMMENT     3  COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicaurbana.tipificacion_construccion IS 'Clasificación de las construcciones de acuerdo a ciertas características observables y cuantificables que reflejan las condiciones socioeconómicas (ingresos y cultura) de los habitantes de las viviendas.';
            test_ladm_all_models       postgres    false    984            �&           0    0 ,   COLUMN av_zonahomogeneafisicaurbana.vigencia    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicaurbana.vigencia IS 'Vigencia del estudio de zonas homogeneas fisicas urbanas.';
            test_ladm_all_models       postgres    false    984            �&           0    0 -   COLUMN av_zonahomogeneafisicaurbana.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneafisicaurbana.geometria IS 'Definición de la geometría espacial georreferenciada de la zona homogénea física, delimitada mediante un polígono que contiene sus linderos y la superficie ocupada.';
            test_ladm_all_models       postgres    false    984            �           1259    590700 !   av_zonahomogeneageoeconomicarural    TABLE     g  CREATE TABLE test_ladm_all_models.av_zonahomogeneageoeconomicarural (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    codigo character varying(20) NOT NULL,
    codigo_zona_geoeconomica character varying(20) NOT NULL,
    valor_hectarea numeric(16,1) NOT NULL,
    subzona_fisica text,
    vigencia date,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL,
    CONSTRAINT av_zonahomogeneagcnmcrral_valor_hectarea_check CHECK (((valor_hectarea >= 0.0) AND (valor_hectarea <= '999999999999999'::numeric)))
);
 C   DROP TABLE test_ladm_all_models.av_zonahomogeneageoeconomicarural;
       test_ladm_all_models         postgres    false    885    13            �&           0    0 '   TABLE av_zonahomogeneageoeconomicarural    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.av_zonahomogeneageoeconomicarural IS 'Esta clase permite gestionar las zonas con características económicas y de localización geográfica similares, definidas para caracterizar el avalúo.';
            test_ladm_all_models       postgres    false    986            �&           0    0 /   COLUMN av_zonahomogeneageoeconomicarural.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicarural.codigo IS 'Código único del registro de la instancia de la zona geoeconómica.';
            test_ladm_all_models       postgres    false    986            �&           0    0 A   COLUMN av_zonahomogeneageoeconomicarural.codigo_zona_geoeconomica    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicarural.codigo_zona_geoeconomica IS 'Identificador de la zona homogénea geoeconómica rural.';
            test_ladm_all_models       postgres    false    986            �&           0    0 7   COLUMN av_zonahomogeneageoeconomicarural.valor_hectarea    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicarural.valor_hectarea IS 'Valor económico de la zona homogénea que representa la instancia de la clase.';
            test_ladm_all_models       postgres    false    986            �&           0    0 7   COLUMN av_zonahomogeneageoeconomicarural.subzona_fisica    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicarural.subzona_fisica IS 'Códigos de las zonas homogeneas fisicas rurales que componen la zona homogénea geoeconómica rural.';
            test_ladm_all_models       postgres    false    986            �&           0    0 1   COLUMN av_zonahomogeneageoeconomicarural.vigencia    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicarural.vigencia IS 'Vigencia del estudio de zonas homogéneas geoeconómicas rurales.';
            test_ladm_all_models       postgres    false    986            �&           0    0 2   COLUMN av_zonahomogeneageoeconomicarural.geometria    COMMENT     	  COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicarural.geometria IS 'Definición de la geometría espacial georreferenciada de la zona homogénea geoeconómica, delimitada mediante un polígono que contiene sus linderos y la superficie ocupada.';
            test_ladm_all_models       postgres    false    986            �           1259    590689 "   av_zonahomogeneageoeconomicaurbana    TABLE     \  CREATE TABLE test_ladm_all_models.av_zonahomogeneageoeconomicaurbana (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    codigo character varying(20) NOT NULL,
    codigo_zona_geoeconomica character varying(20) NOT NULL,
    valor_metro numeric(16,1) NOT NULL,
    subzona_fisica text,
    vigencia date,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL,
    CONSTRAINT av_zonahomogenegcnmcrbana_valor_metro_check CHECK (((valor_metro >= 0.0) AND (valor_metro <= '999999999999999'::numeric)))
);
 D   DROP TABLE test_ladm_all_models.av_zonahomogeneageoeconomicaurbana;
       test_ladm_all_models         postgres    false    885    13            �&           0    0 (   TABLE av_zonahomogeneageoeconomicaurbana    COMMENT     k  COMMENT ON TABLE test_ladm_all_models.av_zonahomogeneageoeconomicaurbana IS 'Clase que contiene las variables que componen las Zonas Homogeneas Geoconómicas rurales. Las ZHG son los espacios geográficos determinados a partir de Zonas Homogéneas Físicas con valores unitarios similares en cuanto a su precio, según las condiciones del mercado inmobiliario.';
            test_ladm_all_models       postgres    false    985            �&           0    0 0   COLUMN av_zonahomogeneageoeconomicaurbana.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicaurbana.codigo IS 'Código único del registro de la instancia de la zona geoeconómica.';
            test_ladm_all_models       postgres    false    985            �&           0    0 B   COLUMN av_zonahomogeneageoeconomicaurbana.codigo_zona_geoeconomica    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicaurbana.codigo_zona_geoeconomica IS 'Identificador de la zona homogénea geoeconómica urbana.';
            test_ladm_all_models       postgres    false    985            �&           0    0 5   COLUMN av_zonahomogeneageoeconomicaurbana.valor_metro    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicaurbana.valor_metro IS 'Valor económico de la zona homogénea que representa la instancia de la clase.';
            test_ladm_all_models       postgres    false    985            �&           0    0 8   COLUMN av_zonahomogeneageoeconomicaurbana.subzona_fisica    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicaurbana.subzona_fisica IS 'Códigos de las zonas homogeneas fisicas urbanas que componen la zona homogénea geoeconómica urbana.';
            test_ladm_all_models       postgres    false    985            �&           0    0 2   COLUMN av_zonahomogeneageoeconomicaurbana.vigencia    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicaurbana.vigencia IS 'Vigencia del estudio de zonas homogéneas geoeconómicas urbanas.';
            test_ladm_all_models       postgres    false    985            �&           0    0 3   COLUMN av_zonahomogeneageoeconomicaurbana.geometria    COMMENT     
  COMMENT ON COLUMN test_ladm_all_models.av_zonahomogeneageoeconomicaurbana.geometria IS 'Definición de la geometría espacial georreferenciada de la zona homogénea geoeconómica, delimitada mediante un polígono que contiene sus linderos y la superficie ocupada.';
            test_ladm_all_models       postgres    false    985            �           1259    590812 	   cc_barrio    TABLE     j  CREATE TABLE test_ladm_all_models.cc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(2) NOT NULL,
    nombre character varying(100) NOT NULL,
    codigo_sector character varying(2),
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 +   DROP TABLE test_ladm_all_models.cc_barrio;
       test_ladm_all_models         postgres    false    885    13            �&           0    0    TABLE cc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.cc_barrio IS 'Zona ocupada por un barrio dado y su determinación toponímica y catastral.';
            test_ladm_all_models       postgres    false    997            �&           0    0    COLUMN cc_barrio.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_barrio.codigo IS 'Código del barrio aprobado por el acuerdo municipal, su número corresponderá al que se haya determinado en la norma.';
            test_ladm_all_models       postgres    false    997            �&           0    0    COLUMN cc_barrio.nombre    COMMENT     r   COMMENT ON COLUMN test_ladm_all_models.cc_barrio.nombre IS 'Nombre del barrio aprobado en el acuerdo municipal.';
            test_ladm_all_models       postgres    false    997            �&           0    0    COLUMN cc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_barrio.codigo_sector IS 'Código del sector catastral donde se encuentra el barrio.';
            test_ladm_all_models       postgres    false    997            �&           0    0    COLUMN cc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_ladm_all_models       postgres    false    997            �           1259    590711    cc_centropoblado    TABLE     H  CREATE TABLE test_ladm_all_models.cc_centropoblado (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(2) NOT NULL,
    nombre character varying(50) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 2   DROP TABLE test_ladm_all_models.cc_centropoblado;
       test_ladm_all_models         postgres    false    885    13            �&           0    0    COLUMN cc_centropoblado.codigo    COMMENT     t   COMMENT ON COLUMN test_ladm_all_models.cc_centropoblado.codigo IS 'Código de identificación del centro poblado.';
            test_ladm_all_models       postgres    false    987            �&           0    0    COLUMN cc_centropoblado.nombre    COMMENT     `   COMMENT ON COLUMN test_ladm_all_models.cc_centropoblado.nombre IS 'Nombre del centro poblado.';
            test_ladm_all_models       postgres    false    987             '           0    0 !   COLUMN cc_centropoblado.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_centropoblado.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el centro poblado.';
            test_ladm_all_models       postgres    false    987            �           1259    590721    cc_corregimiento    TABLE     H  CREATE TABLE test_ladm_all_models.cc_corregimiento (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(2) NOT NULL,
    nombre character varying(50) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 2   DROP TABLE test_ladm_all_models.cc_corregimiento;
       test_ladm_all_models         postgres    false    885    13            '           0    0    TABLE cc_corregimiento    COMMENT     4  COMMENT ON TABLE test_ladm_all_models.cc_corregimiento IS 'Es una división del departamento, al tenor del Decreto 2274 del 4 de octubre de 1991, la cual incluye un núcleo de población. Según esta misma disposición, los ahora corregimientos departamentales no forman parte de un determinado municipio.';
            test_ladm_all_models       postgres    false    988            '           0    0    COLUMN cc_corregimiento.codigo    COMMENT     s   COMMENT ON COLUMN test_ladm_all_models.cc_corregimiento.codigo IS 'Código de identificación del corregimiento.';
            test_ladm_all_models       postgres    false    988            '           0    0    COLUMN cc_corregimiento.nombre    COMMENT     _   COMMENT ON COLUMN test_ladm_all_models.cc_corregimiento.nombre IS 'Nombre del corregimiento.';
            test_ladm_all_models       postgres    false    988            '           0    0 !   COLUMN cc_corregimiento.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_corregimiento.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el corregimiento.';
            test_ladm_all_models       postgres    false    988            �           1259    590731    cc_limitemunicipio    TABLE     �  CREATE TABLE test_ladm_all_models.cc_limitemunicipio (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2) NOT NULL,
    codigo_municipio character varying(5) NOT NULL,
    nombre_municipio character varying(255) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 4   DROP TABLE test_ladm_all_models.cc_limitemunicipio;
       test_ladm_all_models         postgres    false    885    13            '           0    0    TABLE cc_limitemunicipio    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.cc_limitemunicipio IS 'Límites geográficos fijados entre municipios que determinan su jurisdicción territorial.';
            test_ladm_all_models       postgres    false    989            '           0    0 -   COLUMN cc_limitemunicipio.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_limitemunicipio.codigo_departamento IS 'Código de 2 dígitos correspondiente al departamento donde se encuentra el municipio según la clasificación del Divipola.';
            test_ladm_all_models       postgres    false    989            '           0    0 *   COLUMN cc_limitemunicipio.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_limitemunicipio.codigo_municipio IS 'Código de 3 dígitos correspondiente al municipio según la clasificación del Divipola.';
            test_ladm_all_models       postgres    false    989            '           0    0 *   COLUMN cc_limitemunicipio.nombre_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_limitemunicipio.nombre_municipio IS 'Nombre del municipio según la clasificación del Divipola.';
            test_ladm_all_models       postgres    false    989            	'           0    0 #   COLUMN cc_limitemunicipio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_limitemunicipio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por limite del municipio.';
            test_ladm_all_models       postgres    false    989            �           1259    590802    cc_localidadcomuna    TABLE     J  CREATE TABLE test_ladm_all_models.cc_localidadcomuna (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(2) NOT NULL,
    nombre character varying(50) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 4   DROP TABLE test_ladm_all_models.cc_localidadcomuna;
       test_ladm_all_models         postgres    false    885    13            
'           0    0    TABLE cc_localidadcomuna    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.cc_localidadcomuna IS 'Unidad administrativa en la cual se subdivide el área urbana de una ciudad media o principal del país, que agrupa barrios o sectores determinados.';
            test_ladm_all_models       postgres    false    996            '           0    0     COLUMN cc_localidadcomuna.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_localidadcomuna.codigo IS 'Código de la localidad o comuna aprobada por el acuerdo municipal, su número corresponderá al que se haya determinado en la norma.';
            test_ladm_all_models       postgres    false    996            '           0    0     COLUMN cc_localidadcomuna.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_localidadcomuna.nombre IS 'Nombre de la localidad o comuna aprobada por el acuerdo municipal.';
            test_ladm_all_models       postgres    false    996            '           0    0 #   COLUMN cc_localidadcomuna.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_localidadcomuna.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por la localidad o comuna.';
            test_ladm_all_models       postgres    false    996            �           1259    590741 
   cc_manzana    TABLE     a  CREATE TABLE test_ladm_all_models.cc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(4) NOT NULL,
    codigo_barrio character varying(2),
    nombre character varying(50),
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 ,   DROP TABLE test_ladm_all_models.cc_manzana;
       test_ladm_all_models         postgres    false    885    13            '           0    0    TABLE cc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.cc_manzana IS 'Es una superficie de espacio geograáfico delimitada por calles en sus cuatro lados.';
            test_ladm_all_models       postgres    false    990            '           0    0    COLUMN cc_manzana.codigo    COMMENT     i   COMMENT ON COLUMN test_ladm_all_models.cc_manzana.codigo IS 'Código de identificación de la manzana.';
            test_ladm_all_models       postgres    false    990            '           0    0    COLUMN cc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_manzana.codigo_barrio IS 'Código de identificación del barrio donde se encuentra la manzana.';
            test_ladm_all_models       postgres    false    990            '           0    0    COLUMN cc_manzana.nombre    COMMENT     U   COMMENT ON COLUMN test_ladm_all_models.cc_manzana.nombre IS 'Nombre de la manzana.';
            test_ladm_all_models       postgres    false    990            '           0    0    COLUMN cc_manzana.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_manzana.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por la manzana.';
            test_ladm_all_models       postgres    false    990            |           1259    589701    cc_metodooperacion    TABLE     W  CREATE TABLE test_ladm_all_models.cc_metodooperacion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    formula character varying(255) NOT NULL,
    dimensiones_origen integer,
    ddimensiones_objetivo integer,
    col_transformacion_transformacion bigint,
    CONSTRAINT cc_metodooperacion_ddimensiones_objetivo_check CHECK (((ddimensiones_objetivo >= 0) AND (ddimensiones_objetivo <= 999999999))),
    CONSTRAINT cc_metodooperacion_dimensiones_origen_check CHECK (((dimensiones_origen >= 0) AND (dimensiones_origen <= 999999999)))
);
 4   DROP TABLE test_ladm_all_models.cc_metodooperacion;
       test_ladm_all_models         postgres    false    885    13            '           0    0    TABLE cc_metodooperacion    COMMENT       COMMENT ON TABLE test_ladm_all_models.cc_metodooperacion IS 'Estructura que proviene de la traducción de la clase CC_OperationMethod de la ISO 19111. Indica el método utilizado, mediante un algoritmo o un procedimiento, para realizar operaciones con coordenadas.';
            test_ladm_all_models       postgres    false    892            '           0    0 !   COLUMN cc_metodooperacion.formula    COMMENT     y  COMMENT ON COLUMN test_ladm_all_models.cc_metodooperacion.formula IS 'Fórmulas o procedimientos utilizadoa por este método de operación de coordenadas. Esto puede ser una referencia a una publicación. Tenga en cuenta que el método de operación puede no ser analítico, en cuyo caso este atributo hace referencia o contiene el procedimiento, no una fórmula analítica.';
            test_ladm_all_models       postgres    false    892            '           0    0 ,   COLUMN cc_metodooperacion.dimensiones_origen    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_metodooperacion.dimensiones_origen IS 'Número de dimensiones en la fuente CRS de este método de operación de coordenadas.';
            test_ladm_all_models       postgres    false    892            '           0    0 /   COLUMN cc_metodooperacion.ddimensiones_objetivo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_metodooperacion.ddimensiones_objetivo IS 'Número de dimensiones en el CRS de destino de este método de operación de coordenadas.';
            test_ladm_all_models       postgres    false    892            '           0    0 ;   COLUMN cc_metodooperacion.col_transformacion_transformacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_metodooperacion.col_transformacion_transformacion IS 'Fórmula o procedimiento utilizado en la transformación.';
            test_ladm_all_models       postgres    false    892            �           1259    590751    cc_nomenclaturavial    TABLE     G  CREATE TABLE test_ladm_all_models.cc_nomenclaturavial (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_via bigint NOT NULL,
    numero_via character varying(100) NOT NULL,
    geometria public.geometry(MultiLineStringZ,38820) NOT NULL
);
 5   DROP TABLE test_ladm_all_models.cc_nomenclaturavial;
       test_ladm_all_models         postgres    false    885    13            '           0    0    TABLE cc_nomenclaturavial    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.cc_nomenclaturavial IS 'La Nomenclatura Vial es el conjunto de caracteres alfanuméricos que se emplean para identificar una vía espacialmente.';
            test_ladm_all_models       postgres    false    991            '           0    0 #   COLUMN cc_nomenclaturavial.tipo_via    COMMENT     \   COMMENT ON COLUMN test_ladm_all_models.cc_nomenclaturavial.tipo_via IS 'Tipo de eje vial.';
            test_ladm_all_models       postgres    false    991            '           0    0 %   COLUMN cc_nomenclaturavial.numero_via    COMMENT     y   COMMENT ON COLUMN test_ladm_all_models.cc_nomenclaturavial.numero_via IS 'Indica el número o nombre del tipo de vía.';
            test_ladm_all_models       postgres    false    991            '           0    0 $   COLUMN cc_nomenclaturavial.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_nomenclaturavial.geometria IS 'Geometría de tipo línea que corresponde a la representación espacial de la vía.';
            test_ladm_all_models       postgres    false    991            0           1259    591478    cc_nomenclaturavial_tipo_via    TABLE     �  CREATE TABLE test_ladm_all_models.cc_nomenclaturavial_tipo_via (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_all_models.cc_nomenclaturavial_tipo_via;
       test_ladm_all_models         postgres    false    885    13            �           1259    590762    cc_perimetrourbano    TABLE     �  CREATE TABLE test_ladm_all_models.cc_perimetrourbano (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2) NOT NULL,
    codigo_municipio character varying(5) NOT NULL,
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50) NOT NULL,
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 4   DROP TABLE test_ladm_all_models.cc_perimetrourbano;
       test_ladm_all_models         postgres    false    885    13            '           0    0    TABLE cc_perimetrourbano    COMMENT       COMMENT ON TABLE test_ladm_all_models.cc_perimetrourbano IS 'Es la delimitación física del suelo urbano, determina su área y se representa gráficamente por una línea imaginaria continua que divide el suelo urbano del suelo rural y del suelo de expansión urbana.';
            test_ladm_all_models       postgres    false    992            '           0    0 -   COLUMN cc_perimetrourbano.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_perimetrourbano.codigo_departamento IS 'Código de 2 dígitos correspondiente al departamento donde se encuentra el municipio según la clasificación del Divipola.';
            test_ladm_all_models       postgres    false    992            '           0    0 *   COLUMN cc_perimetrourbano.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_perimetrourbano.codigo_municipio IS 'Código de 3 dígitos correspondiente al municipio según la clasificación del Divipola.';
            test_ladm_all_models       postgres    false    992            '           0    0 %   COLUMN cc_perimetrourbano.tipo_avaluo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_perimetrourbano.tipo_avaluo IS 'Tipo de avaluo del perimetro urbano que para efectos catastrales es 01.';
            test_ladm_all_models       postgres    false    992             '           0    0 +   COLUMN cc_perimetrourbano.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_perimetrourbano.nombre_geografico IS 'Nombre geográfico del perimetro urbano, ejemplo, TABIO.';
            test_ladm_all_models       postgres    false    992            !'           0    0 '   COLUMN cc_perimetrourbano.codigo_nombre    COMMENT     l   COMMENT ON COLUMN test_ladm_all_models.cc_perimetrourbano.codigo_nombre IS 'Codgio del nombre geografico.';
            test_ladm_all_models       postgres    false    992            "'           0    0 #   COLUMN cc_perimetrourbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_perimetrourbano.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el perímetro urbano.';
            test_ladm_all_models       postgres    false    992            �           1259    590772    cc_sectorrural    TABLE       CREATE TABLE test_ladm_all_models.cc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 0   DROP TABLE test_ladm_all_models.cc_sectorrural;
       test_ladm_all_models         postgres    false    885    13            #'           0    0    TABLE cc_sectorrural    COMMENT       COMMENT ON TABLE test_ladm_all_models.cc_sectorrural IS 'Es la delimitación física del suelo rual, determina su área y se representa gráficamente por una línea imaginaria continua que divide el suelo urbano del suelo rural y del suelo de expansión urbana.';
            test_ladm_all_models       postgres    false    993            $'           0    0    COLUMN cc_sectorrural.codigo    COMMENT     z   COMMENT ON COLUMN test_ladm_all_models.cc_sectorrural.codigo IS 'Código de identificación del sector rural catastral.';
            test_ladm_all_models       postgres    false    993            %'           0    0    COLUMN cc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_sectorrural.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el sector rural.';
            test_ladm_all_models       postgres    false    993            �           1259    590782    cc_sectorurbano    TABLE       CREATE TABLE test_ladm_all_models.cc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 1   DROP TABLE test_ladm_all_models.cc_sectorurbano;
       test_ladm_all_models         postgres    false    885    13            &'           0    0    TABLE cc_sectorurbano    COMMENT       COMMENT ON TABLE test_ladm_all_models.cc_sectorurbano IS 'Es la delimitación física del suelo urbano, determina su área y se representa gráficamente por una línea imaginaria continua que divide el suelo urbano del suelo rural y del suelo de expansión urbana.';
            test_ladm_all_models       postgres    false    994            ''           0    0    COLUMN cc_sectorurbano.codigo    COMMENT     |   COMMENT ON COLUMN test_ladm_all_models.cc_sectorurbano.codigo IS 'Código de identificación única del sector catastral.';
            test_ladm_all_models       postgres    false    994            ('           0    0     COLUMN cc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_sectorurbano.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el sector urbano catastral.';
            test_ladm_all_models       postgres    false    994            �           1259    590792 	   cc_vereda    TABLE     i  CREATE TABLE test_ladm_all_models.cc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(4) NOT NULL,
    nombre character varying(50) NOT NULL,
    codigo_sector character varying(2),
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL
);
 +   DROP TABLE test_ladm_all_models.cc_vereda;
       test_ladm_all_models         postgres    false    885    13            )'           0    0    TABLE cc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.cc_vereda IS 'Unidad geográfica rural conformada por un número determinado de predios pertenecientes a una o varias parcelaciones, delimitado por accidentes geográficos naturales o vías.';
            test_ladm_all_models       postgres    false    995            *'           0    0    COLUMN cc_vereda.codigo    COMMENT     g   COMMENT ON COLUMN test_ladm_all_models.cc_vereda.codigo IS 'Código de identificación de la vereda.';
            test_ladm_all_models       postgres    false    995            +'           0    0    COLUMN cc_vereda.nombre    COMMENT     S   COMMENT ON COLUMN test_ladm_all_models.cc_vereda.nombre IS 'Nombre de la vereda.';
            test_ladm_all_models       postgres    false    995            ,'           0    0    COLUMN cc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_vereda.codigo_sector IS 'Código del sector catastral donde se encuentra localizada la vereda.';
            test_ladm_all_models       postgres    false    995            -'           0    0    COLUMN cc_vereda.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.cc_vereda.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por la vereda.';
            test_ladm_all_models       postgres    false    995            �           1259    590929    ci_forma_presentacion_codigo    TABLE     �  CREATE TABLE test_ladm_all_models.ci_forma_presentacion_codigo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_all_models.ci_forma_presentacion_codigo;
       test_ladm_all_models         postgres    false    885    13                       1259    591316    col_areatipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_areatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_ladm_all_models.col_areatipo;
       test_ladm_all_models         postgres    false    885    13            }           1259    589708    col_areavalor    TABLE     �  CREATE TABLE test_ladm_all_models.col_areavalor (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 /   DROP TABLE test_ladm_all_models.col_areavalor;
       test_ladm_all_models         postgres    false    885    13            .'           0    0    COLUMN col_areavalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_areavalor.tipo IS 'Indica si el valor a registrar corresponde al área gráfica o alfanumérica de la base de datos catastral.';
            test_ladm_all_models       postgres    false    893            /'           0    0    COLUMN col_areavalor.area    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_areavalor.area IS 'Corresponde al valor del área registrada en la base de datos catastral.';
            test_ladm_all_models       postgres    false    893            0'           0    0 %   COLUMN col_areavalor.datos_proyeccion    COMMENT     N  COMMENT ON COLUMN test_ladm_all_models.col_areavalor.datos_proyeccion IS 'Parametros de la proyección utilizada para el cálculo del área de la forma proj, ejemplo: ''EPSG:3116'', ''+proj=tmerc +lat_0=4.59620041666667 +lon_0=-74.0775079166667 +k=1 +x_0=1000000 +y_0=1000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs''';
            test_ladm_all_models       postgres    false    893            1'           0    0 )   COLUMN col_areavalor.lc_construccion_area    COMMENT     |   COMMENT ON COLUMN test_ladm_all_models.col_areavalor.lc_construccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_all_models       postgres    false    893            2'           0    0 $   COLUMN col_areavalor.lc_terreno_area    COMMENT     w   COMMENT ON COLUMN test_ladm_all_models.col_areavalor.lc_terreno_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_all_models       postgres    false    893            3'           0    0 0   COLUMN col_areavalor.lc_servidumbretransito_area    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_areavalor.lc_servidumbretransito_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_all_models       postgres    false    893            4'           0    0 /   COLUMN col_areavalor.lc_unidadconstruccion_area    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_areavalor.lc_unidadconstruccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_all_models       postgres    false    893            �           1259    589977    col_baunitcomointeresado    TABLE     /  CREATE TABLE test_ladm_all_models.col_baunitcomointeresado (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint NOT NULL
);
 :   DROP TABLE test_ladm_all_models.col_baunitcomointeresado;
       test_ladm_all_models         postgres    false    885    13            �           1259    589886    col_baunitfuente    TABLE     �   CREATE TABLE test_ladm_all_models.col_baunitfuente (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    unidad bigint NOT NULL
);
 2   DROP TABLE test_ladm_all_models.col_baunitfuente;
       test_ladm_all_models         postgres    false    885    13            �           1259    589901    col_cclfuente    TABLE     �   CREATE TABLE test_ladm_all_models.col_cclfuente (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl bigint NOT NULL,
    fuente_espacial bigint NOT NULL
);
 /   DROP TABLE test_ladm_all_models.col_cclfuente;
       test_ladm_all_models         postgres    false    885    13            �           1259    589941    col_clfuente    TABLE     �   CREATE TABLE test_ladm_all_models.col_clfuente (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 .   DROP TABLE test_ladm_all_models.col_clfuente;
       test_ladm_all_models         postgres    false    885    13                       1259    591217    col_contenidoniveltipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_contenidoniveltipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_all_models.col_contenidoniveltipo;
       test_ladm_all_models         postgres    false    885    13            8           1259    591550    col_dimensiontipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_dimensiontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_all_models.col_dimensiontipo;
       test_ladm_all_models         postgres    false    885    13            )           1259    591415    col_estadodisponibilidadtipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_estadodisponibilidadtipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_all_models.col_estadodisponibilidadtipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591271    col_estadoredserviciostipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_estadoredserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_all_models.col_estadoredserviciostipo;
       test_ladm_all_models         postgres    false    885    13            4           1259    591514    col_estructuratipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_estructuratipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_all_models.col_estructuratipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591091    col_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_all_models.col_fuenteadministrativatipo;
       test_ladm_all_models         postgres    false    885    13            $           1259    591370    col_fuenteespacialtipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_fuenteespacialtipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_all_models.col_fuenteespacialtipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591235    col_grupointeresadotipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_grupointeresadotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_all_models.col_grupointeresadotipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591190    col_interpolaciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_interpolaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_all_models.col_interpolaciontipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591280    col_iso19125_tipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_iso19125_tipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_all_models.col_iso19125_tipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    589920 
   col_masccl    TABLE     a  CREATE TABLE test_ladm_all_models.col_masccl (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_mas bigint NOT NULL,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint,
    ue_mas_lc_construccion bigint
);
 ,   DROP TABLE test_ladm_all_models.col_masccl;
       test_ladm_all_models         postgres    false    885    13            �           1259    589958 	   col_mascl    TABLE     C  CREATE TABLE test_ladm_all_models.col_mascl (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint,
    ue_mas_lc_construccion bigint
);
 +   DROP TABLE test_ladm_all_models.col_mascl;
       test_ladm_all_models         postgres    false    885    13            �           1259    589909    col_menosccl    TABLE     m  CREATE TABLE test_ladm_all_models.col_menosccl (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_menos bigint NOT NULL,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint,
    ue_menos_lc_construccion bigint
);
 .   DROP TABLE test_ladm_all_models.col_menosccl;
       test_ladm_all_models         postgres    false    885    13            �           1259    589948    col_menoscl    TABLE     M  CREATE TABLE test_ladm_all_models.col_menoscl (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint,
    ue_menos_lc_construccion bigint
);
 -   DROP TABLE test_ladm_all_models.col_menoscl;
       test_ladm_all_models         postgres    false    885    13                       1259    591064    col_metodoproducciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_metodoproducciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_all_models.col_metodoproducciontipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590004    col_miembros    TABLE     '  CREATE TABLE test_ladm_all_models.col_miembros (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    agrupacion bigint NOT NULL
);
 .   DROP TABLE test_ladm_all_models.col_miembros;
       test_ladm_all_models         postgres    false    885    13            �           1259    589931    col_puntoccl    TABLE     7  CREATE TABLE test_ladm_all_models.col_puntoccl (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint,
    ccl bigint NOT NULL
);
 .   DROP TABLE test_ladm_all_models.col_puntoccl;
       test_ladm_all_models         postgres    false    885    13            �           1259    589968    col_puntocl    TABLE       CREATE TABLE test_ladm_all_models.col_puntocl (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint
);
 -   DROP TABLE test_ladm_all_models.col_puntocl;
       test_ladm_all_models         postgres    false    885    13            �           1259    589865    col_puntofuente    TABLE     F  CREATE TABLE test_ladm_all_models.col_puntofuente (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    punto_lc_puntolevantamiento bigint
);
 1   DROP TABLE test_ladm_all_models.col_puntofuente;
       test_ladm_all_models         postgres    false    885    13                       1259    591262    col_puntotipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_ladm_all_models.col_puntotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590983    col_redserviciostipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_redserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_all_models.col_redserviciostipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590992    col_registrotipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_registrotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_all_models.col_registrotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    589850    col_relacionfuente    TABLE     �   CREATE TABLE test_ladm_all_models.col_relacionfuente (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL
);
 4   DROP TABLE test_ladm_all_models.col_relacionfuente;
       test_ladm_all_models         postgres    false    885    13            �           1259    589894    col_relacionfuenteuespacial    TABLE     �   CREATE TABLE test_ladm_all_models.col_relacionfuenteuespacial (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 =   DROP TABLE test_ladm_all_models.col_relacionfuenteuespacial;
       test_ladm_all_models         postgres    false    885    13                       1259    591298    col_relacionsuperficietipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_relacionsuperficietipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_all_models.col_relacionsuperficietipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    589986    col_responsablefuente    TABLE     ;  CREATE TABLE test_ladm_all_models.col_responsablefuente (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint
);
 7   DROP TABLE test_ladm_all_models.col_responsablefuente;
       test_ladm_all_models         postgres    false    885    13            �           1259    589830    col_rrrfuente    TABLE       CREATE TABLE test_ladm_all_models.col_rrrfuente (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    rrr_lc_restriccion bigint,
    rrr_lc_derecho bigint
);
 /   DROP TABLE test_ladm_all_models.col_rrrfuente;
       test_ladm_all_models         postgres    false    885    13            �           1259    589995    col_topografofuente    TABLE     1  CREATE TABLE test_ladm_all_models.col_topografofuente (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    topografo_lc_interesado bigint,
    topografo_lc_agrupacioninteresados bigint
);
 5   DROP TABLE test_ladm_all_models.col_topografofuente;
       test_ladm_all_models         postgres    false    885    13            �           1259    589751    col_transformacion    TABLE     �  CREATE TABLE test_ladm_all_models.col_transformacion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    localizacion_transformada public.geometry(PointZ,38820) NOT NULL,
    lc_puntocontrol_transformacion_y_resultado bigint,
    lc_puntolindero_transformacion_y_resultado bigint,
    lc_puntolevantamiento_transformacion_y_resultado bigint
);
 4   DROP TABLE test_ladm_all_models.col_transformacion;
       test_ladm_all_models         postgres    false    885    13            5'           0    0    TABLE col_transformacion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.col_transformacion IS 'Registro de la fórmula o procedimiento utilizado en la transformación y de su resultado.';
            test_ladm_all_models       postgres    false    896            6'           0    0 3   COLUMN col_transformacion.localizacion_transformada    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_transformacion.localizacion_transformada IS 'Geometría una vez realizado el proceso de transformación.';
            test_ladm_all_models       postgres    false    896            7'           0    0 D   COLUMN col_transformacion.lc_puntocontrol_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_transformacion.lc_puntocontrol_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_all_models       postgres    false    896            8'           0    0 D   COLUMN col_transformacion.lc_puntolindero_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_transformacion.lc_puntolindero_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_all_models       postgres    false    896            9'           0    0 J   COLUMN col_transformacion.lc_puntolevantamiento_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_transformacion.lc_puntolevantamiento_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_all_models       postgres    false    896            �           1259    589839    col_uebaunit    TABLE     R  CREATE TABLE test_ladm_all_models.col_uebaunit (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    baunit bigint NOT NULL
);
 .   DROP TABLE test_ladm_all_models.col_uebaunit;
       test_ladm_all_models         postgres    false    885    13            �           1259    589875    col_uefuente    TABLE     [  CREATE TABLE test_ladm_all_models.col_uefuente (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    ue_lc_construccion bigint,
    fuente_espacial bigint NOT NULL
);
 .   DROP TABLE test_ladm_all_models.col_uefuente;
       test_ladm_all_models         postgres    false    885    13            �           1259    589820    col_ueuegrupo    TABLE     C  CREATE TABLE test_ladm_all_models.col_ueuegrupo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    parte_lc_terreno bigint,
    parte_lc_servidumbretransito bigint,
    parte_lc_unidadconstruccion bigint,
    parte_lc_construccion bigint
);
 /   DROP TABLE test_ladm_all_models.col_ueuegrupo;
       test_ladm_all_models         postgres    false    885    13                        1259    591334 "   col_unidadadministrativabasicatipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_unidadadministrativabasicatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 D   DROP TABLE test_ladm_all_models.col_unidadadministrativabasicatipo;
       test_ladm_all_models         postgres    false    885    13            *           1259    591424    col_unidadedificaciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_unidadedificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_all_models.col_unidadedificaciontipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    589857    col_unidadfuente    TABLE     �   CREATE TABLE test_ladm_all_models.col_unidadfuente (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    unidad bigint NOT NULL
);
 2   DROP TABLE test_ladm_all_models.col_unidadfuente;
       test_ladm_all_models         postgres    false    885    13            �           1259    591019    col_volumentipo    TABLE     �  CREATE TABLE test_ladm_all_models.col_volumentipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_all_models.col_volumentipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    589809    col_volumenvalor    TABLE       CREATE TABLE test_ladm_all_models.col_volumenvalor (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    volumen_medicion numeric(15,1) NOT NULL,
    tipo bigint NOT NULL,
    lc_construccion_volumen bigint,
    lc_terreno_volumen bigint,
    lc_servidumbretransito_volumen bigint,
    lc_unidadconstruccion_volumen bigint,
    CONSTRAINT col_volumenvalor_volumen_medicion_check CHECK (((volumen_medicion >= 0.0) AND (volumen_medicion <= 99999999999999.9)))
);
 2   DROP TABLE test_ladm_all_models.col_volumenvalor;
       test_ladm_all_models         postgres    false    885    13            :'           0    0    TABLE col_volumenvalor    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.col_volumenvalor IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar la medición de un volumen y la naturaleza de este.';
            test_ladm_all_models       postgres    false    902            ;'           0    0 (   COLUMN col_volumenvalor.volumen_medicion    COMMENT     l   COMMENT ON COLUMN test_ladm_all_models.col_volumenvalor.volumen_medicion IS 'Medición del volumen en m3.';
            test_ladm_all_models       postgres    false    902            <'           0    0    COLUMN col_volumenvalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_volumenvalor.tipo IS 'Indicación de si el volumen es calculado, si figura como oficial o si se da otra circunstancia.';
            test_ladm_all_models       postgres    false    902            ='           0    0 /   COLUMN col_volumenvalor.lc_construccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_volumenvalor.lc_construccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_all_models       postgres    false    902            >'           0    0 *   COLUMN col_volumenvalor.lc_terreno_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_volumenvalor.lc_terreno_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_all_models       postgres    false    902            ?'           0    0 6   COLUMN col_volumenvalor.lc_servidumbretransito_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_volumenvalor.lc_servidumbretransito_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_all_models       postgres    false    902            @'           0    0 5   COLUMN col_volumenvalor.lc_unidadconstruccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.col_volumenvalor.lc_unidadconstruccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_all_models       postgres    false    902            �           1259    589797 
   extarchivo    TABLE       CREATE TABLE test_ladm_all_models.extarchivo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 ,   DROP TABLE test_ladm_all_models.extarchivo;
       test_ladm_all_models         postgres    false    885    13            A'           0    0    TABLE extarchivo    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
            test_ladm_all_models       postgres    false    901            B'           0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     x   COMMENT ON COLUMN test_ladm_all_models.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
            test_ladm_all_models       postgres    false    901            C'           0    0    COLUMN extarchivo.datos    COMMENT     _   COMMENT ON COLUMN test_ladm_all_models.extarchivo.datos IS 'Datos que contiene el documento.';
            test_ladm_all_models       postgres    false    901            D'           0    0    COLUMN extarchivo.extraccion    COMMENT     o   COMMENT ON COLUMN test_ladm_all_models.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
            test_ladm_all_models       postgres    false    901            E'           0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
            test_ladm_all_models       postgres    false    901            F'           0    0    COLUMN extarchivo.fecha_entrega    COMMENT     r   COMMENT ON COLUMN test_ladm_all_models.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
            test_ladm_all_models       postgres    false    901            G'           0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_all_models       postgres    false    901            H'           0    0 7   COLUMN extarchivo.lc_fuenteadministrtiva_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extarchivo.lc_fuenteadministrtiva_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_all_models       postgres    false    901            I'           0    0 2   COLUMN extarchivo.lc_fuenteespacial_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extarchivo.lc_fuenteespacial_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_all_models       postgres    false    901            ~           1259    589722    extdireccion    TABLE     
  CREATE TABLE test_ladm_all_models.extdireccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 .   DROP TABLE test_ladm_all_models.extdireccion;
       test_ladm_all_models         postgres    false    885    13            J'           0    0    TABLE extdireccion    COMMENT     t   COMMENT ON TABLE test_ladm_all_models.extdireccion IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_all_models       postgres    false    894            K'           0    0     COLUMN extdireccion.localizacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extdireccion.localizacion IS 'Par de valores georreferenciados (x,y) en la que se encuentra la dirección.';
            test_ladm_all_models       postgres    false    894            L'           0    0 2   COLUMN extdireccion.extinteresado_ext_direccion_id    COMMENT        COMMENT ON COLUMN test_ladm_all_models.extdireccion.extinteresado_ext_direccion_id IS 'Identificador externo del interesado.';
            test_ladm_all_models       postgres    false    894            M'           0    0 4   COLUMN extdireccion.lc_construccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extdireccion.lc_construccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_all_models       postgres    false    894            N'           0    0 '   COLUMN extdireccion.lc_predio_direccion    COMMENT     e   COMMENT ON COLUMN test_ladm_all_models.extdireccion.lc_predio_direccion IS 'Dirección del predio.';
            test_ladm_all_models       postgres    false    894            O'           0    0 /   COLUMN extdireccion.lc_terreno_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extdireccion.lc_terreno_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_all_models       postgres    false    894            P'           0    0 ;   COLUMN extdireccion.lc_servidumbretransito_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extdireccion.lc_servidumbretransito_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_all_models       postgres    false    894            Q'           0    0 :   COLUMN extdireccion.lc_unidadconstruccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extdireccion.lc_unidadconstruccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_all_models       postgres    false    894            '           1259    591397     extdireccion_clase_via_principal    TABLE     �  CREATE TABLE test_ladm_all_models.extdireccion_clase_via_principal (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_all_models.extdireccion_clase_via_principal;
       test_ladm_all_models         postgres    false    885    13            .           1259    591460    extdireccion_sector_ciudad    TABLE     �  CREATE TABLE test_ladm_all_models.extdireccion_sector_ciudad (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_all_models.extdireccion_sector_ciudad;
       test_ladm_all_models         postgres    false    885    13            �           1259    590884    extdireccion_sector_predio    TABLE     �  CREATE TABLE test_ladm_all_models.extdireccion_sector_predio (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_all_models.extdireccion_sector_predio;
       test_ladm_all_models         postgres    false    885    13            1           1259    591487    extdireccion_tipo_direccion    TABLE     �  CREATE TABLE test_ladm_all_models.extdireccion_tipo_direccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_all_models.extdireccion_tipo_direccion;
       test_ladm_all_models         postgres    false    885    13            �           1259    589779    extinteresado    TABLE     �  CREATE TABLE test_ladm_all_models.extinteresado (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    nombre character varying(255),
    documento_escaneado character varying(255),
    extredserviciosfisica_ext_interesado_administrador_id bigint,
    lc_agrupacionintersdos_ext_pid bigint,
    lc_interesado_ext_pid bigint
);
 /   DROP TABLE test_ladm_all_models.extinteresado;
       test_ladm_all_models         postgres    false    885    13            R'           0    0    TABLE extinteresado    COMMENT     u   COMMENT ON TABLE test_ladm_all_models.extinteresado IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_all_models       postgres    false    899            S'           0    0    COLUMN extinteresado.nombre    COMMENT     b   COMMENT ON COLUMN test_ladm_all_models.extinteresado.nombre IS 'Campo de nombre del interesado.';
            test_ladm_all_models       postgres    false    899            T'           0    0 (   COLUMN extinteresado.documento_escaneado    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extinteresado.documento_escaneado IS 'Ruta de almacenamiento del documento escaneado del interesado.';
            test_ladm_all_models       postgres    false    899            U'           0    0 J   COLUMN extinteresado.extredserviciosfisica_ext_interesado_administrador_id    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extinteresado.extredserviciosfisica_ext_interesado_administrador_id IS 'Identificador de referencia a un interesado externo que es el administrador.';
            test_ladm_all_models       postgres    false    899            V'           0    0 3   COLUMN extinteresado.lc_agrupacionintersdos_ext_pid    COMMENT     x   COMMENT ON COLUMN test_ladm_all_models.extinteresado.lc_agrupacionintersdos_ext_pid IS 'Identificador del interesado.';
            test_ladm_all_models       postgres    false    899            W'           0    0 *   COLUMN extinteresado.lc_interesado_ext_pid    COMMENT     o   COMMENT ON COLUMN test_ladm_all_models.extinteresado.lc_interesado_ext_pid IS 'Identificador del interesado.';
            test_ladm_all_models       postgres    false    899            �           1259    589791    extredserviciosfisica    TABLE     �   CREATE TABLE test_ladm_all_models.extredserviciosfisica (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    orientada boolean
);
 7   DROP TABLE test_ladm_all_models.extredserviciosfisica;
       test_ladm_all_models         postgres    false    885    13            X'           0    0    TABLE extredserviciosfisica    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.extredserviciosfisica IS 'Referencia a una clase externa para gestionar las redes físicas de servicios.';
            test_ladm_all_models       postgres    false    900            Y'           0    0 &   COLUMN extredserviciosfisica.orientada    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.extredserviciosfisica.orientada IS 'Indica si la red de servicios tiene un gradiente o no.';
            test_ladm_all_models       postgres    false    900            �           1259    589764    extunidadedificacionfisica    TABLE     �   CREATE TABLE test_ladm_all_models.extunidadedificacionfisica (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 <   DROP TABLE test_ladm_all_models.extunidadedificacionfisica;
       test_ladm_all_models         postgres    false    885    13            Z'           0    0     TABLE extunidadedificacionfisica    COMMENT     }   COMMENT ON TABLE test_ladm_all_models.extunidadedificacionfisica IS 'Control externo de la unidad de edificación física.';
            test_ladm_all_models       postgres    false    897                       1259    589743    fraccion    TABLE     �  CREATE TABLE test_ladm_all_models.fraccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    denominador integer NOT NULL,
    numerador integer NOT NULL,
    col_miembros_participacion bigint,
    lc_predio_copropiedad_coeficiente bigint,
    CONSTRAINT fraccion_denominador_check CHECK (((denominador >= 0) AND (denominador <= 999999999))),
    CONSTRAINT fraccion_numerador_check CHECK (((numerador >= 0) AND (numerador <= 999999999)))
);
 *   DROP TABLE test_ladm_all_models.fraccion;
       test_ladm_all_models         postgres    false    885    13            ['           0    0    TABLE fraccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.fraccion IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar una fracción o quebrado cona serie específica de condiciones.';
            test_ladm_all_models       postgres    false    895            \'           0    0    COLUMN fraccion.denominador    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.fraccion.denominador IS 'Parte inferior de la fracción. Debe ser mayor que 0. Debe ser mayor que el numerador.';
            test_ladm_all_models       postgres    false    895            ]'           0    0    COLUMN fraccion.numerador    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.fraccion.numerador IS 'Parte superior de la fracción. Debe ser mayor que 0. Debe sder menor que el denominador.';
            test_ladm_all_models       postgres    false    895            �           1259    590013 	   gc_barrio    TABLE     O  CREATE TABLE test_ladm_all_models.gc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 +   DROP TABLE test_ladm_all_models.gc_barrio;
       test_ladm_all_models         postgres    false    885    13            ^'           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
            test_ladm_all_models       postgres    false    924            _'           0    0    COLUMN gc_barrio.codigo    COMMENT     e   COMMENT ON COLUMN test_ladm_all_models.gc_barrio.codigo IS 'Código de identificación del barrio.';
            test_ladm_all_models       postgres    false    924            `'           0    0    COLUMN gc_barrio.nombre    COMMENT     Q   COMMENT ON COLUMN test_ladm_all_models.gc_barrio.nombre IS 'Nombre del barrio.';
            test_ladm_all_models       postgres    false    924            a'           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
            test_ladm_all_models       postgres    false    924            b'           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_ladm_all_models       postgres    false    924            �           1259    590023 !   gc_calificacionunidadconstruccion    TABLE     �  CREATE TABLE test_ladm_all_models.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 C   DROP TABLE test_ladm_all_models.gc_calificacionunidadconstruccion;
       test_ladm_all_models         postgres    false    885    13            c'           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
            test_ladm_all_models       postgres    false    925            d'           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
            test_ladm_all_models       postgres    false    925            e'           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
            test_ladm_all_models       postgres    false    925            f'           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
            test_ladm_all_models       postgres    false    925            g'           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
            test_ladm_all_models       postgres    false    925            �           1259    590033    gc_comisionesconstruccion    TABLE     &  CREATE TABLE test_ladm_all_models.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 ;   DROP TABLE test_ladm_all_models.gc_comisionesconstruccion;
       test_ladm_all_models         postgres    false    885    13            h'           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_all_models       postgres    false    926            i'           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_all_models       postgres    false    926            j'           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_all_models       postgres    false    926            �           1259    590043    gc_comisionesterreno    TABLE        CREATE TABLE test_ladm_all_models.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 6   DROP TABLE test_ladm_all_models.gc_comisionesterreno;
       test_ladm_all_models         postgres    false    885    13            k'           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_all_models       postgres    false    927            l'           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
            test_ladm_all_models       postgres    false    927            m'           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_all_models       postgres    false    927            �           1259    590053    gc_comisionesunidadconstruccion    TABLE     ,  CREATE TABLE test_ladm_all_models.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 A   DROP TABLE test_ladm_all_models.gc_comisionesunidadconstruccion;
       test_ladm_all_models         postgres    false    885    13            n'           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_all_models       postgres    false    928            o'           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_all_models       postgres    false    928            p'           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_all_models       postgres    false    928                       1259    591118    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_all_models.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_all_models.gc_condicionprediotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590063    gc_construccion    TABLE     Q  CREATE TABLE test_ladm_all_models.gc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_all_models.gc_construccion;
       test_ladm_all_models         postgres    false    885    13            q'           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_all_models       postgres    false    929            r'           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_all_models       postgres    false    929            s'           0    0    COLUMN gc_construccion.etiqueta    COMMENT     d   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
            test_ladm_all_models       postgres    false    929            t'           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_all_models       postgres    false    929            u'           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_all_models       postgres    false    929            v'           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     v   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_all_models       postgres    false    929            w'           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     {   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_all_models       postgres    false    929            x'           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT     ~   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_all_models       postgres    false    929            y'           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_all_models       postgres    false    929            z'           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     w   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
            test_ladm_all_models       postgres    false    929            {'           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
            test_ladm_all_models       postgres    false    929            |'           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     e   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.area_construida IS 'Área total construida.';
            test_ladm_all_models       postgres    false    929            }'           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
            test_ladm_all_models       postgres    false    929            �           1259    590201    gc_copropiedad    TABLE     �  CREATE TABLE test_ladm_all_models.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 0   DROP TABLE test_ladm_all_models.gc_copropiedad;
       test_ladm_all_models         postgres    false    885    13            ~'           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
            test_ladm_all_models       postgres    false    943            �           1259    590075    gc_datosphcondominio    TABLE     �  CREATE TABLE test_ladm_all_models.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_ladm_all_models.gc_datosphcondominio;
       test_ladm_all_models         postgres    false    885    13            '           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
            test_ladm_all_models       postgres    false    930            �'           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_all_models       postgres    false    930            �'           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_all_models       postgres    false    930            �'           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_all_models       postgres    false    930            �'           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_all_models       postgres    false    930            �'           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_all_models       postgres    false    930            �'           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
            test_ladm_all_models       postgres    false    930            �'           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
            test_ladm_all_models       postgres    false    930            �           1259    590082    gc_datostorreph    TABLE     �  CREATE TABLE test_ladm_all_models.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_all_models.gc_datostorreph;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
            test_ladm_all_models       postgres    false    931            �'           0    0    COLUMN gc_datostorreph.torre    COMMENT     k   COMMENT ON COLUMN test_ladm_all_models.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
            test_ladm_all_models       postgres    false    931            �'           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     k   COMMENT ON COLUMN test_ladm_all_models.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
            test_ladm_all_models       postgres    false    931            �'           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT     }   COMMENT ON COLUMN test_ladm_all_models.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
            test_ladm_all_models       postgres    false    931            �'           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     j   COMMENT ON COLUMN test_ladm_all_models.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
            test_ladm_all_models       postgres    false    931            �'           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
            test_ladm_all_models       postgres    false    931            �           1259    590089    gc_direccion    TABLE     >  CREATE TABLE test_ladm_all_models.gc_direccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 .   DROP TABLE test_ladm_all_models.gc_direccion;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    COLUMN gc_direccion.valor    COMMENT     h   COMMENT ON COLUMN test_ladm_all_models.gc_direccion.valor IS 'Registros de la direcciones del predio.';
            test_ladm_all_models       postgres    false    932            �'           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
            test_ladm_all_models       postgres    false    932            �'           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
            test_ladm_all_models       postgres    false    932            �'           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
            test_ladm_all_models       postgres    false    932            �           1259    590100    gc_estadopredio    TABLE     @  CREATE TABLE test_ladm_all_models.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 1   DROP TABLE test_ladm_all_models.gc_estadopredio;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
            test_ladm_all_models       postgres    false    933            �'           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
            test_ladm_all_models       postgres    false    933            �'           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
            test_ladm_all_models       postgres    false    933            �'           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
            test_ladm_all_models       postgres    false    933            �'           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
            test_ladm_all_models       postgres    false    933            �           1259    590107 
   gc_manzana    TABLE     Z  CREATE TABLE test_ladm_all_models.gc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 ,   DROP TABLE test_ladm_all_models.gc_manzana;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
            test_ladm_all_models       postgres    false    934            �'           0    0    COLUMN gc_manzana.codigo    COMMENT     o   COMMENT ON COLUMN test_ladm_all_models.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
            test_ladm_all_models       postgres    false    934            �'           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     r   COMMENT ON COLUMN test_ladm_all_models.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
            test_ladm_all_models       postgres    false    934            �'           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
            test_ladm_all_models       postgres    false    934            �'           0    0    COLUMN gc_manzana.geometria    COMMENT     i   COMMENT ON COLUMN test_ladm_all_models.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
            test_ladm_all_models       postgres    false    934            �           1259    590117    gc_perimetro    TABLE     �  CREATE TABLE test_ladm_all_models.gc_perimetro (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 .   DROP TABLE test_ladm_all_models.gc_perimetro;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
            test_ladm_all_models       postgres    false    935            �'           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
            test_ladm_all_models       postgres    false    935            �'           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
            test_ladm_all_models       postgres    false    935            �'           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     w   COMMENT ON COLUMN test_ladm_all_models.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
            test_ladm_all_models       postgres    false    935            �'           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
            test_ladm_all_models       postgres    false    935            �'           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     h   COMMENT ON COLUMN test_ladm_all_models.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
            test_ladm_all_models       postgres    false    935            �'           0    0    COLUMN gc_perimetro.geometria    COMMENT     e   COMMENT ON COLUMN test_ladm_all_models.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
            test_ladm_all_models       postgres    false    935            �           1259    590190    gc_prediocatastro    TABLE     �  CREATE TABLE test_ladm_all_models.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 3   DROP TABLE test_ladm_all_models.gc_prediocatastro;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
            test_ladm_all_models       postgres    false    942            �'           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
            test_ladm_all_models       postgres    false    942            �'           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT       COMMENT ON COLUMN test_ladm_all_models.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_all_models       postgres    false    942            �'           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT       COMMENT ON COLUMN test_ladm_all_models.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_all_models       postgres    false    942            �'           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     L  COMMENT ON COLUMN test_ladm_all_models.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_all_models       postgres    false    942            �'           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
            test_ladm_all_models       postgres    false    942            �'           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
            test_ladm_all_models       postgres    false    942            �'           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
            test_ladm_all_models       postgres    false    942            �'           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     w   COMMENT ON COLUMN test_ladm_all_models.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_all_models       postgres    false    942            �'           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     K  COMMENT ON COLUMN test_ladm_all_models.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_all_models       postgres    false    942            �'           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
            test_ladm_all_models       postgres    false    942            �'           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT     n   COMMENT ON COLUMN test_ladm_all_models.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
            test_ladm_all_models       postgres    false    942            �           1259    590127    gc_propietario    TABLE     8  CREATE TABLE test_ladm_all_models.gc_propietario (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_ladm_all_models.gc_propietario;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
            test_ladm_all_models       postgres    false    936            �'           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
            test_ladm_all_models       postgres    false    936            �'           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
            test_ladm_all_models       postgres    false    936            �'           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
            test_ladm_all_models       postgres    false    936            �'           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     u   COMMENT ON COLUMN test_ladm_all_models.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
            test_ladm_all_models       postgres    false    936            �'           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     w   COMMENT ON COLUMN test_ladm_all_models.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
            test_ladm_all_models       postgres    false    936            �'           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     y   COMMENT ON COLUMN test_ladm_all_models.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
            test_ladm_all_models       postgres    false    936            �'           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     {   COMMENT ON COLUMN test_ladm_all_models.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
            test_ladm_all_models       postgres    false    936            �'           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
            test_ladm_all_models       postgres    false    936            �           1259    590137    gc_sectorrural    TABLE       CREATE TABLE test_ladm_all_models.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 0   DROP TABLE test_ladm_all_models.gc_sectorrural;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
            test_ladm_all_models       postgres    false    937            �'           0    0    COLUMN gc_sectorrural.codigo    COMMENT     y   COMMENT ON COLUMN test_ladm_all_models.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_all_models       postgres    false    937            �'           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_all_models       postgres    false    937            �           1259    590147    gc_sectorurbano    TABLE     	  CREATE TABLE test_ladm_all_models.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 1   DROP TABLE test_ladm_all_models.gc_sectorurbano;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
            test_ladm_all_models       postgres    false    938            �'           0    0    COLUMN gc_sectorurbano.codigo    COMMENT     z   COMMENT ON COLUMN test_ladm_all_models.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_all_models       postgres    false    938            �'           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_all_models       postgres    false    938            	           1259    591127    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_ladm_all_models.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_all_models.gc_sistemaprocedenciadatostipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590157 
   gc_terreno    TABLE     V  CREATE TABLE test_ladm_all_models.gc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 ,   DROP TABLE test_ladm_all_models.gc_terreno;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
            test_ladm_all_models       postgres    false    939            �'           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
            test_ladm_all_models       postgres    false    939            �'           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
            test_ladm_all_models       postgres    false    939            �'           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
            test_ladm_all_models       postgres    false    939            �'           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT     t   COMMENT ON COLUMN test_ladm_all_models.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
            test_ladm_all_models       postgres    false    939            �'           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_all_models       postgres    false    939            �           1259    590168    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_ladm_all_models.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_ladm_all_models.gc_unidadconstruccion;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_all_models       postgres    false    940            �'           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_all_models       postgres    false    940            �'           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT     t   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
            test_ladm_all_models       postgres    false    940            �'           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_all_models       postgres    false    940            �'           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_all_models       postgres    false    940            �'           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_all_models       postgres    false    940            �'           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_all_models       postgres    false    940            �'           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_all_models       postgres    false    940            �'           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_all_models       postgres    false    940            �'           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_all_models       postgres    false    940            �'           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_all_models       postgres    false    940            �'           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_all_models       postgres    false    940            �'           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT        COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
            test_ladm_all_models       postgres    false    940            �'           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_all_models       postgres    false    940            �'           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_all_models       postgres    false    940            �'           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
            test_ladm_all_models       postgres    false    940            �'           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_all_models       postgres    false    940                       1259    591163    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_all_models.gc_unidadconstrucciontipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590180 	   gc_vereda    TABLE     z  CREATE TABLE test_ladm_all_models.gc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 +   DROP TABLE test_ladm_all_models.gc_vereda;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
            test_ladm_all_models       postgres    false    941            �'           0    0    COLUMN gc_vereda.codigo    COMMENT     m   COMMENT ON COLUMN test_ladm_all_models.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
            test_ladm_all_models       postgres    false    941            �'           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     v   COMMENT ON COLUMN test_ladm_all_models.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
            test_ladm_all_models       postgres    false    941            �'           0    0    COLUMN gc_vereda.nombre    COMMENT     S   COMMENT ON COLUMN test_ladm_all_models.gc_vereda.nombre IS 'Nombre de la vereda.';
            test_ladm_all_models       postgres    false    941            �'           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
            test_ladm_all_models       postgres    false    941            �'           0    0    COLUMN gc_vereda.geometria    COMMENT     `   COMMENT ON COLUMN test_ladm_all_models.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
            test_ladm_all_models       postgres    false    941            x           1259    589667    gm_curve3dlistvalue    TABLE       CREATE TABLE test_ladm_all_models.gm_curve3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(LineStringZ,38820) NOT NULL,
    gm_multicurve3d_geometry bigint
);
 5   DROP TABLE test_ladm_all_models.gm_curve3dlistvalue;
       test_ladm_all_models         postgres    false    885    13            z           1259    589689    gm_multicurve3d    TABLE     �   CREATE TABLE test_ladm_all_models.gm_multicurve3d (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 1   DROP TABLE test_ladm_all_models.gm_multicurve3d;
       test_ladm_all_models         postgres    false    885    13            w           1259    589661    gm_multisurface2d    TABLE     �   CREATE TABLE test_ladm_all_models.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 3   DROP TABLE test_ladm_all_models.gm_multisurface2d;
       test_ladm_all_models         postgres    false    885    13            {           1259    589695    gm_multisurface3d    TABLE     �   CREATE TABLE test_ladm_all_models.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 3   DROP TABLE test_ladm_all_models.gm_multisurface3d;
       test_ladm_all_models         postgres    false    885    13            v           1259    589650    gm_surface2dlistvalue    TABLE       CREATE TABLE test_ladm_all_models.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 7   DROP TABLE test_ladm_all_models.gm_surface2dlistvalue;
       test_ladm_all_models         postgres    false    885    13            y           1259    589678    gm_surface3dlistvalue    TABLE       CREATE TABLE test_ladm_all_models.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 7   DROP TABLE test_ladm_all_models.gm_surface3dlistvalue;
       test_ladm_all_models         postgres    false    885    13            �           1259    589770    imagen    TABLE     '  CREATE TABLE test_ladm_all_models.imagen (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    uri character varying(255),
    extinteresado_huella_dactilar bigint,
    extinteresado_fotografia bigint,
    extinteresado_firma bigint
);
 (   DROP TABLE test_ladm_all_models.imagen;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE imagen    COMMENT     \   COMMENT ON TABLE test_ladm_all_models.imagen IS 'Referencia a una imagen mediante su url.';
            test_ladm_all_models       postgres    false    898            �'           0    0    COLUMN imagen.uri    COMMENT     J   COMMENT ON COLUMN test_ladm_all_models.imagen.uri IS 'url de la imagen.';
            test_ladm_all_models       postgres    false    898            �'           0    0 +   COLUMN imagen.extinteresado_huella_dactilar    COMMENT        COMMENT ON COLUMN test_ladm_all_models.imagen.extinteresado_huella_dactilar IS 'Imagen de la huella dactilar del interesado.';
            test_ladm_all_models       postgres    false    898            �'           0    0 &   COLUMN imagen.extinteresado_fotografia    COMMENT     i   COMMENT ON COLUMN test_ladm_all_models.imagen.extinteresado_fotografia IS 'Fotografía del interesado.';
            test_ladm_all_models       postgres    false    898            �'           0    0 !   COLUMN imagen.extinteresado_firma    COMMENT     ^   COMMENT ON COLUMN test_ladm_all_models.imagen.extinteresado_firma IS 'Firma del interesado.';
            test_ladm_all_models       postgres    false    898            #           1259    591361    ini_emparejamientotipo    TABLE     �  CREATE TABLE test_ladm_all_models.ini_emparejamientotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_all_models.ini_emparejamientotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590275    ini_predioinsumos    TABLE     .  CREATE TABLE test_ladm_all_models.ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_emparejamiento bigint,
    observaciones text,
    gc_predio_catastro bigint,
    snr_predio_juridico bigint
);
 3   DROP TABLE test_ladm_all_models.ini_predioinsumos;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE ini_predioinsumos    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.ini_predioinsumos IS 'Clase que relaciona los predios en los modelos de insumos para el Gestor Catastral y la SNR.';
            test_ladm_all_models       postgres    false    951            �'           0    0 ,   COLUMN ini_predioinsumos.tipo_emparejamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.ini_predioinsumos.tipo_emparejamiento IS 'Tipo de emparejamiento de insumos Catastro-Registro';
            test_ladm_all_models       postgres    false    951            �'           0    0 &   COLUMN ini_predioinsumos.observaciones    COMMENT     l   COMMENT ON COLUMN test_ladm_all_models.ini_predioinsumos.observaciones IS 'Observaciones de la relación.';
            test_ladm_all_models       postgres    false    951                       1259    591154    lc_acuerdotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_acuerdotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_all_models.lc_acuerdotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590287    lc_agrupacioninteresados    TABLE     �  CREATE TABLE test_ladm_all_models.lc_agrupacioninteresados (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 :   DROP TABLE test_ladm_all_models.lc_agrupacioninteresados;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE lc_agrupacioninteresados    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_agrupacioninteresados IS 'Clase que hereda los atributos de la  Clase COL_Agrupación_Interesados.';
            test_ladm_all_models       postgres    false    952            �'           0    0 $   COLUMN lc_agrupacioninteresados.tipo    COMMENT     {   COMMENT ON COLUMN test_ladm_all_models.lc_agrupacioninteresados.tipo IS 'Indica el tipo de agrupación del que se trata.';
            test_ladm_all_models       postgres    false    952            �'           0    0 &   COLUMN lc_agrupacioninteresados.nombre    COMMENT     d   COMMENT ON COLUMN test_ladm_all_models.lc_agrupacioninteresados.nombre IS 'Nombre del interesado.';
            test_ladm_all_models       postgres    false    952            �'           0    0 :   COLUMN lc_agrupacioninteresados.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_agrupacioninteresados.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    952            �'           0    0 5   COLUMN lc_agrupacioninteresados.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_agrupacioninteresados.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    952            �'           0    0 2   COLUMN lc_agrupacioninteresados.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_agrupacioninteresados.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    952            �'           0    0 (   COLUMN lc_agrupacioninteresados.local_id    COMMENT     k   COMMENT ON COLUMN test_ladm_all_models.lc_agrupacioninteresados.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    952                       1259    591082    lc_anexotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_anexotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_ladm_all_models.lc_anexotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590531    lc_calificacionconvencional    TABLE     �  CREATE TABLE test_ladm_all_models.lc_calificacionconvencional (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_calificar bigint NOT NULL,
    total_calificacion integer NOT NULL,
    lc_unidad_construccion bigint,
    CONSTRAINT lc_calificacionconvencnal_total_calificacion_check CHECK (((total_calificacion >= 0) AND (total_calificacion <= 999999999)))
);
 =   DROP TABLE test_ladm_all_models.lc_calificacionconvencional;
       test_ladm_all_models         postgres    false    885    13            �'           0    0 !   TABLE lc_calificacionconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_calificacionconvencional IS 'Proceso mediante el cual se le asigna un puntaje a las edificaciones de acuerdo a sus características constructivas';
            test_ladm_all_models       postgres    false    972            �'           0    0 1   COLUMN lc_calificacionconvencional.tipo_calificar    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_calificacionconvencional.tipo_calificar IS 'Indica si la calificación de construcción corresponde a residencial, comercial o industrial.';
            test_ladm_all_models       postgres    false    972            �'           0    0 5   COLUMN lc_calificacionconvencional.total_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_calificacionconvencional.total_calificacion IS 'Puntaje total de la calificación de la unidad de construcción.';
            test_ladm_all_models       postgres    false    972            �           1259    590540    lc_calificacionnoconvencional    TABLE       CREATE TABLE test_ladm_all_models.lc_calificacionnoconvencional (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_anexo bigint NOT NULL,
    lc_unidad_construccion bigint
);
 ?   DROP TABLE test_ladm_all_models.lc_calificacionnoconvencional;
       test_ladm_all_models         postgres    false    885    13            �'           0    0 #   TABLE lc_calificacionnoconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_calificacionnoconvencional IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_all_models       postgres    false    973            �'           0    0 /   COLUMN lc_calificacionnoconvencional.tipo_anexo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_calificacionnoconvencional.tipo_anexo IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_all_models       postgres    false    973            /           1259    591469    lc_calificartipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_calificartipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_all_models.lc_calificartipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591289    lc_categoriasuelotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_categoriasuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_all_models.lc_categoriasuelotipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591325    lc_clasecalificaciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_clasecalificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_all_models.lc_clasecalificaciontipo;
       test_ladm_all_models         postgres    false    885    13            
           1259    591136    lc_clasesuelotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_clasesuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_all_models.lc_clasesuelotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    591037    lc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_all_models.lc_condicionprediotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590298    lc_construccion    TABLE     �  CREATE TABLE test_ladm_all_models.lc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_all_models.lc_construccion;
       test_ladm_all_models         postgres    false    885    13            �'           0    0    TABLE lc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_construccion IS 'Es la unión de materiales adheridos al terreno, con carácter de permanente, cualesquiera sean los elementos que la constituyan.';
            test_ladm_all_models       postgres    false    953            �'           0    0 $   COLUMN lc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_all_models       postgres    false    953            �'           0    0 (   COLUMN lc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_all_models       postgres    false    953            �'           0    0 #   COLUMN lc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_all_models       postgres    false    953            �'           0    0 #   COLUMN lc_construccion.numero_pisos    COMMENT     v   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_all_models       postgres    false    953            �'           0    0 %   COLUMN lc_construccion.numero_sotanos    COMMENT     {   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_all_models       postgres    false    953            �'           0    0 '   COLUMN lc_construccion.numero_mezanines    COMMENT     ~   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_all_models       postgres    false    953            �'           0    0 )   COLUMN lc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_all_models       postgres    false    953            �'           0    0 (   COLUMN lc_construccion.anio_construccion    COMMENT     y   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.anio_construccion IS 'Año de edificación de la construcción.';
            test_ladm_all_models       postgres    false    953            �'           0    0 *   COLUMN lc_construccion.avaluo_construccion    COMMENT     ~   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.avaluo_construccion IS 'Avalúo total catastral de la construcción.';
            test_ladm_all_models       postgres    false    953            �'           0    0 (   COLUMN lc_construccion.area_construccion    COMMENT     g   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.area_construccion IS 'Área total construida.';
            test_ladm_all_models       postgres    false    953            �'           0    0    COLUMN lc_construccion.altura    COMMENT     f   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.altura IS 'Altura total de la construcción.';
            test_ladm_all_models       postgres    false    953            �'           0    0 $   COLUMN lc_construccion.observaciones    COMMENT     x   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.observaciones IS 'Observaciones generales de la construcción.';
            test_ladm_all_models       postgres    false    953            �'           0    0     COLUMN lc_construccion.dimension    COMMENT     ^   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.dimension IS 'Dimensión del objeto.';
            test_ladm_all_models       postgres    false    953            �'           0    0    COLUMN lc_construccion.etiqueta    COMMENT     y   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_all_models       postgres    false    953            �'           0    0 *   COLUMN lc_construccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_all_models       postgres    false    953            �'           0    0     COLUMN lc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_all_models       postgres    false    953            �'           0    0 1   COLUMN lc_construccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    953             (           0    0 ,   COLUMN lc_construccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    953            (           0    0 )   COLUMN lc_construccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    953            (           0    0    COLUMN lc_construccion.local_id    COMMENT     b   COMMENT ON COLUMN test_ladm_all_models.lc_construccion.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    953                       1259    591181    lc_construccionplantatipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_construccionplantatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_all_models.lc_construccionplantatipo;
       test_ladm_all_models         postgres    false    885    13            !           1259    591343    lc_construcciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_construcciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_all_models.lc_construcciontipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590313    lc_contactovisita    TABLE     3  CREATE TABLE test_ladm_all_models.lc_contactovisita (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 3   DROP TABLE test_ladm_all_models.lc_contactovisita;
       test_ladm_all_models         postgres    false    885    13            (           0    0 5   COLUMN lc_contactovisita.tipo_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_contactovisita.tipo_documento_quien_atendio IS 'Indica el tipo de documento de la persona que atendió la visita predial.';
            test_ladm_all_models       postgres    false    954            (           0    0 7   COLUMN lc_contactovisita.numero_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_contactovisita.numero_documento_quien_atendio IS 'Indica el número de documento de la persona que atendió la visita predial.';
            test_ladm_all_models       postgres    false    954            (           0    0 4   COLUMN lc_contactovisita.primer_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_contactovisita.primer_nombre_quien_atendio IS 'Primer nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_all_models       postgres    false    954            (           0    0 5   COLUMN lc_contactovisita.segundo_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_contactovisita.segundo_nombre_quien_atendio IS 'Segundo nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_all_models       postgres    false    954            (           0    0 6   COLUMN lc_contactovisita.primer_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_contactovisita.primer_apellido_quien_atendio IS 'Primer apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_all_models       postgres    false    954            (           0    0 7   COLUMN lc_contactovisita.segundo_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_contactovisita.segundo_apellido_quien_atendio IS 'Segundo apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_all_models       postgres    false    954            	(           0    0 ,   COLUMN lc_contactovisita.relacion_con_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_contactovisita.relacion_con_predio IS 'Relación con el predio de la persona encargada de atender la visita, por ejemplo propietario, encargado, administrador, poseedor, etc.';
            test_ladm_all_models       postgres    false    954            
(           0    0 1   COLUMN lc_contactovisita.domicilio_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_contactovisita.domicilio_notificaciones IS 'Dirección de domicilio para notificaciones.';
            test_ladm_all_models       postgres    false    954            (           0    0     COLUMN lc_contactovisita.celular    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_contactovisita.celular IS 'Número de celular de la persona que atendió la visita de actividades catastrales.';
            test_ladm_all_models       postgres    false    954            (           0    0 +   COLUMN lc_contactovisita.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_contactovisita.correo_electronico IS 'Correo electrónico de la persona que atendió la visita de actividades catastrales.';
            test_ladm_all_models       postgres    false    954            (           0    0 0   COLUMN lc_contactovisita.autoriza_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_contactovisita.autoriza_notificaciones IS 'Indica si autoriza las notificaciones administrativas por medio de vía electrónica.';
            test_ladm_all_models       postgres    false    954            �           1259    590549 )   lc_datosadicionaleslevantamientocatastral    TABLE     �  CREATE TABLE test_ladm_all_models.lc_datosadicionaleslevantamientocatastral (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 K   DROP TABLE test_ladm_all_models.lc_datosadicionaleslevantamientocatastral;
       test_ladm_all_models         postgres    false    885    13            (           0    0 /   TABLE lc_datosadicionaleslevantamientocatastral    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_datosadicionaleslevantamientocatastral IS 'Datos de adicionales del predio para catastro multipropósito';
            test_ladm_all_models       postgres    false    974            (           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.tiene_area_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.tiene_area_registral IS 'Indica si el predio según la información registral cuenta con el valor de área en la cabida y linderos.';
            test_ladm_all_models       postgres    false    974            (           0    0 B   COLUMN lc_datosadicionaleslevantamientocatastral.area_registral_m2    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.area_registral_m2 IS 'Indica el valor del área registral del predio en metros cuadrados.';
            test_ladm_all_models       postgres    false    974            (           0    0 R   COLUMN lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral    COMMENT     �  COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral IS 'Se considerará como procedimientos catastrales con efectos registrales los siguientes: actualización de linderos, rectificación de área por imprecisa determinación, actualización masiva y puntual de linderos y áreas, rectificación de linderos por acuerdo entre las partes, e inclusión de área y/o linderos.';
            test_ladm_all_models       postgres    false    974            (           0    0 F   COLUMN lc_datosadicionaleslevantamientocatastral.destinacion_economica    COMMENT     c  COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_all_models       postgres    false    974            (           0    0 <   COLUMN lc_datosadicionaleslevantamientocatastral.clase_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.clase_suelo IS 'Clasificación del suelo según el instrumento de planeación vigente.';
            test_ladm_all_models       postgres    false    974            (           0    0 @   COLUMN lc_datosadicionaleslevantamientocatastral.categoria_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.categoria_suelo IS 'Categoría del suelo según el instrumento de planeación vigente.';
            test_ladm_all_models       postgres    false    974            (           0    0 >   COLUMN lc_datosadicionaleslevantamientocatastral.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.observaciones IS 'Observaciones generales respecto del predio.';
            test_ladm_all_models       postgres    false    974            (           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.fecha_visita_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.fecha_visita_predial IS 'Fecha de la visita en campo al predio.';
            test_ladm_all_models       postgres    false    974            (           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor IS 'Indica el tipo de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_all_models       postgres    false    974            (           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor IS 'Indica el número de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_all_models       postgres    false    974            (           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor IS 'Primer nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_all_models       postgres    false    974            (           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor IS 'Segundo nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_all_models       postgres    false    974            (           0    0 L   COLUMN lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor IS 'Primer apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_all_models       postgres    false    974            (           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor IS 'Segundo apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_all_models       postgres    false    974            (           0    0 A   COLUMN lc_datosadicionaleslevantamientocatastral.resultado_visita    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.resultado_visita IS 'Posibles situaciones que se presentan y afectan el resultado del levantamiento de la información en campo.';
            test_ladm_all_models       postgres    false    974            (           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia    COMMENT     	  COMMENT ON COLUMN test_ladm_all_models.lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia IS 'Indica si dentro del proceso de formación o actualización catastral se suscribe acta de colindancia para el predio objeto de levantamiento catastral.';
            test_ladm_all_models       postgres    false    974            �           1259    590326    lc_datosphcondominio    TABLE       CREATE TABLE test_ladm_all_models.lc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_ladm_all_models.lc_datosphcondominio;
       test_ladm_all_models         postgres    false    885    13            (           0    0    TABLE lc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal.';
            test_ladm_all_models       postgres    false    955             (           0    0 .   COLUMN lc_datosphcondominio.area_total_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosphcondominio.area_total_terreno IS 'Área total del terreno del PH o Condominio Matriz.';
            test_ladm_all_models       postgres    false    955            !(           0    0 6   COLUMN lc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_all_models       postgres    false    955            "(           0    0 4   COLUMN lc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_all_models       postgres    false    955            #(           0    0 1   COLUMN lc_datosphcondominio.area_total_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosphcondominio.area_total_construida IS 'Área total de construida del PH o Condominio Matriz.';
            test_ladm_all_models       postgres    false    955            $(           0    0 9   COLUMN lc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_all_models       postgres    false    955            %(           0    0 7   COLUMN lc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_all_models       postgres    false    955            &(           0    0 )   COLUMN lc_datosphcondominio.numero_torres    COMMENT     y   COMMENT ON COLUMN test_ladm_all_models.lc_datosphcondominio.numero_torres IS 'Número de torres en el PH o Condominio.';
            test_ladm_all_models       postgres    false    955            '(           0    0 3   COLUMN lc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_all_models       postgres    false    955            �           1259    590334 
   lc_derecho    TABLE       CREATE TABLE test_ladm_all_models.lc_derecho (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 ,   DROP TABLE test_ladm_all_models.lc_derecho;
       test_ladm_all_models         postgres    false    885    13            ((           0    0    TABLE lc_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_derecho IS 'Clase que registra las instancias de los derechos que un interesado ejerce sobre un predio. Es una especialización de la clase COL_DRR del propio modelo.';
            test_ladm_all_models       postgres    false    956            )(           0    0    COLUMN lc_derecho.tipo    COMMENT     T   COMMENT ON COLUMN test_ladm_all_models.lc_derecho.tipo IS 'Derecho que se ejerce.';
            test_ladm_all_models       postgres    false    956            *(           0    0 "   COLUMN lc_derecho.fraccion_derecho    COMMENT     �  COMMENT ON COLUMN test_ladm_all_models.lc_derecho.fraccion_derecho IS 'Indica la fracción del derecho en relación a la forma de tenencia y el área que esta ocupa dentro de la extensión del predio. Ejemplo: un predio informal que se encuentra sobre un predio baldío y un predio privado tendrá un porcentaje de derecho de ocupación y posesión expresado en tanto por uno (0.0000000000 a 1.0000000000).';
            test_ladm_all_models       postgres    false    956            +(           0    0 '   COLUMN lc_derecho.fecha_inicio_tenencia    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_derecho.fecha_inicio_tenencia IS 'Fecha de inicio de tenencia del interesado con respecto al predio.';
            test_ladm_all_models       postgres    false    956            ,(           0    0    COLUMN lc_derecho.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_derecho.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_all_models       postgres    false    956            -(           0    0 ,   COLUMN lc_derecho.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_derecho.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    956            .(           0    0 '   COLUMN lc_derecho.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_derecho.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    956            /(           0    0 $   COLUMN lc_derecho.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_derecho.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    956            0(           0    0    COLUMN lc_derecho.local_id    COMMENT     ]   COMMENT ON COLUMN test_ladm_all_models.lc_derecho.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    956            5           1259    591523    lc_derechotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_derechotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_all_models.lc_derechotipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591199    lc_destinacioneconomicatipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_destinacioneconomicatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_all_models.lc_destinacioneconomicatipo;
       test_ladm_all_models         postgres    false    885    13            (           1259    591406    lc_dominioconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_dominioconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_all_models.lc_dominioconstrucciontipo;
       test_ladm_all_models         postgres    false    885    13            ,           1259    591442    lc_estadoconservaciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_estadoconservaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_all_models.lc_estadoconservaciontipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590348    lc_estructuranovedadfmi    TABLE     $  CREATE TABLE test_ladm_all_models.lc_estructuranovedadfmi (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(3),
    numero_fmi character varying(80),
    lc_dtsdcnlstmntctstral_novedad_fmi bigint
);
 9   DROP TABLE test_ladm_all_models.lc_estructuranovedadfmi;
       test_ladm_all_models         postgres    false    885    13            1(           0    0 A   COLUMN lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi IS 'Relaciona los cambios del predio respecto de la información registral vigente.';
            test_ladm_all_models       postgres    false    957            �           1259    590355 !   lc_estructuranovedadnumeropredial    TABLE     <  CREATE TABLE test_ladm_all_models.lc_estructuranovedadnumeropredial (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    numero_predial character varying(30) NOT NULL,
    tipo_novedad bigint,
    lc_dtsdcnlstmntctstral_novedad_numeros_prediales bigint
);
 C   DROP TABLE test_ladm_all_models.lc_estructuranovedadnumeropredial;
       test_ladm_all_models         postgres    false    885    13            2(           0    0 Y   COLUMN lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales IS 'Relaciona los cambios del predio respecto de la información catastral vigente.';
            test_ladm_all_models       postgres    false    958                       1259    591145 .   lc_estructuranovedadnumeropredial_tipo_novedad    TABLE     �  CREATE TABLE test_ladm_all_models.lc_estructuranovedadnumeropredial_tipo_novedad (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 P   DROP TABLE test_ladm_all_models.lc_estructuranovedadnumeropredial_tipo_novedad;
       test_ladm_all_models         postgres    false    885    13            �           1259    590938    lc_fotoidentificaciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_fotoidentificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_all_models.lc_fotoidentificaciontipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590363    lc_fuenteadministrativa    TABLE     .  CREATE TABLE test_ladm_all_models.lc_fuenteadministrativa (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 9   DROP TABLE test_ladm_all_models.lc_fuenteadministrativa;
       test_ladm_all_models         postgres    false    885    13            3(           0    0    TABLE lc_fuenteadministrativa    COMMENT       COMMENT ON TABLE test_ladm_all_models.lc_fuenteadministrativa IS 'Clase que almacena las fuentes administrativas (escrituras, sentencias, actos administrativos, etc) que sustentan el Derecho respecto de la relación de tenencia entre el Interesado y el predio.';
            test_ladm_all_models       postgres    false    959            4(           0    0 #   COLUMN lc_fuenteadministrativa.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteadministrativa.tipo IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_all_models       postgres    false    959            5(           0    0 *   COLUMN lc_fuenteadministrativa.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteadministrativa.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_all_models       postgres    false    959            6(           0    0 *   COLUMN lc_fuenteadministrativa.observacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteadministrativa.observacion IS 'Observaciones o descripción del documento de la fuente administrativa.';
            test_ladm_all_models       postgres    false    959            7(           0    0 ,   COLUMN lc_fuenteadministrativa.numero_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteadministrativa.numero_fuente IS 'Identificador del documento, ejemplo: número de la resolución, número de la escritura pública o número de radicado de una sentencia.';
            test_ladm_all_models       postgres    false    959            8(           0    0 4   COLUMN lc_fuenteadministrativa.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteadministrativa.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_all_models       postgres    false    959            9(           0    0 -   COLUMN lc_fuenteadministrativa.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteadministrativa.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_all_models       postgres    false    959            :(           0    0 5   COLUMN lc_fuenteadministrativa.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteadministrativa.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_all_models       postgres    false    959            ;(           0    0 1   COLUMN lc_fuenteadministrativa.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteadministrativa.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    959            <(           0    0 '   COLUMN lc_fuenteadministrativa.local_id    COMMENT     j   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteadministrativa.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    959                       1259    591109    lc_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_all_models.lc_fuenteadministrativatipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590376    lc_fuenteespacial    TABLE       CREATE TABLE test_ladm_all_models.lc_fuenteespacial (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 3   DROP TABLE test_ladm_all_models.lc_fuenteespacial;
       test_ladm_all_models         postgres    false    885    13            =(           0    0    TABLE lc_fuenteespacial    COMMENT     ~   COMMENT ON TABLE test_ladm_all_models.lc_fuenteespacial IS 'Clase que hereda los atributos de la  Clase COL_FuenteEspacial.';
            test_ladm_all_models       postgres    false    960            >(           0    0    COLUMN lc_fuenteespacial.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteespacial.nombre IS 'Nombre de la fuente espacial del levantamiento catastral de un predio.';
            test_ladm_all_models       postgres    false    960            ?(           0    0    COLUMN lc_fuenteespacial.tipo    COMMENT     ]   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteespacial.tipo IS 'Tipo de fuente espacial.';
            test_ladm_all_models       postgres    false    960            @(           0    0 $   COLUMN lc_fuenteespacial.descripcion    COMMENT     o   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteespacial.descripcion IS 'Descripción de la fuente espacial.';
            test_ladm_all_models       postgres    false    960            A(           0    0 !   COLUMN lc_fuenteespacial.metadato    COMMENT     h   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteespacial.metadato IS 'Metadato de la fuente espacial.';
            test_ladm_all_models       postgres    false    960            B(           0    0 .   COLUMN lc_fuenteespacial.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteespacial.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_all_models       postgres    false    960            C(           0    0 '   COLUMN lc_fuenteespacial.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteespacial.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_all_models       postgres    false    960            D(           0    0 /   COLUMN lc_fuenteespacial.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteespacial.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_all_models       postgres    false    960            E(           0    0 +   COLUMN lc_fuenteespacial.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteespacial.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    960            F(           0    0 !   COLUMN lc_fuenteespacial.local_id    COMMENT     d   COMMENT ON COLUMN test_ladm_all_models.lc_fuenteespacial.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    960            �           1259    590389    lc_grupocalificacion    TABLE     �  CREATE TABLE test_ladm_all_models.lc_grupocalificacion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    clase_calificacion bigint NOT NULL,
    conservacion bigint NOT NULL,
    subtotal integer NOT NULL,
    lc_calificacion_convencional bigint NOT NULL,
    CONSTRAINT lc_grupocalificacion_subtotal_check CHECK (((subtotal >= 0) AND (subtotal <= 9999999)))
);
 6   DROP TABLE test_ladm_all_models.lc_grupocalificacion;
       test_ladm_all_models         postgres    false    885    13            G(           0    0    TABLE lc_grupocalificacion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_grupocalificacion IS 'Calificación de la construccion según los item determinados para calificar.';
            test_ladm_all_models       postgres    false    961            H(           0    0 .   COLUMN lc_grupocalificacion.clase_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_grupocalificacion.clase_calificacion IS 'Indica los elementos generales de la calificación de la construcción de acuerdo al método vigente.';
            test_ladm_all_models       postgres    false    961            I(           0    0 (   COLUMN lc_grupocalificacion.conservacion    COMMENT     }   COMMENT ON COLUMN test_ladm_all_models.lc_grupocalificacion.conservacion IS 'Estado de conservación del grupo calificado.';
            test_ladm_all_models       postgres    false    961            J(           0    0 $   COLUMN lc_grupocalificacion.subtotal    COMMENT     j   COMMENT ON COLUMN test_ladm_all_models.lc_grupocalificacion.subtotal IS 'Subtotal del grupo calificado.';
            test_ladm_all_models       postgres    false    961                       1259    591172    lc_grupoetnicotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_grupoetnicotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_all_models.lc_grupoetnicotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590399    lc_interesado    TABLE     ?  CREATE TABLE test_ladm_all_models.lc_interesado (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 /   DROP TABLE test_ladm_all_models.lc_interesado;
       test_ladm_all_models         postgres    false    885    13            K(           0    0    TABLE lc_interesado    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_interesado IS 'Es la parte que tiene una relación con el predio por algún tipo de derecho, restricción, publicidad o responsabilidad';
            test_ladm_all_models       postgres    false    962            L(           0    0    COLUMN lc_interesado.tipo    COMMENT     a   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.tipo IS 'Tipo de persona del que se trata';
            test_ladm_all_models       postgres    false    962            M(           0    0 #   COLUMN lc_interesado.tipo_documento    COMMENT     n   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_all_models       postgres    false    962            N(           0    0 (   COLUMN lc_interesado.documento_identidad    COMMENT     v   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.documento_identidad IS 'Documento de identidad del interesado.';
            test_ladm_all_models       postgres    false    962            O(           0    0 "   COLUMN lc_interesado.primer_nombre    COMMENT     n   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.primer_nombre IS 'Primer nombre de la persona física.';
            test_ladm_all_models       postgres    false    962            P(           0    0 #   COLUMN lc_interesado.segundo_nombre    COMMENT     p   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.segundo_nombre IS 'Segundo nombre de la persona física.';
            test_ladm_all_models       postgres    false    962            Q(           0    0 $   COLUMN lc_interesado.primer_apellido    COMMENT     r   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_all_models       postgres    false    962            R(           0    0 %   COLUMN lc_interesado.segundo_apellido    COMMENT     t   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_all_models       postgres    false    962            S(           0    0    COLUMN lc_interesado.sexo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.sexo IS 'Condición orgánica que distingue a los machos de las hembras.';
            test_ladm_all_models       postgres    false    962            T(           0    0 !   COLUMN lc_interesado.razon_social    COMMENT     j   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.razon_social IS 'Nombre con el que está inscrito.';
            test_ladm_all_models       postgres    false    962            U(           0    0    COLUMN lc_interesado.nombre    COMMENT     Y   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.nombre IS 'Nombre del interesado.';
            test_ladm_all_models       postgres    false    962            V(           0    0 /   COLUMN lc_interesado.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    962            W(           0    0 *   COLUMN lc_interesado.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    962            X(           0    0 '   COLUMN lc_interesado.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    962            Y(           0    0    COLUMN lc_interesado.local_id    COMMENT     `   COMMENT ON COLUMN test_ladm_all_models.lc_interesado.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    962            �           1259    590413    lc_interesadocontacto    TABLE     �  CREATE TABLE test_ladm_all_models.lc_interesadocontacto (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_ladm_all_models.lc_interesadocontacto;
       test_ladm_all_models         postgres    false    885    13            Z(           0    0    TABLE lc_interesadocontacto    COMMENT     l   COMMENT ON TABLE test_ladm_all_models.lc_interesadocontacto IS 'Datos de contacto de la parte interesada.';
            test_ladm_all_models       postgres    false    963            [(           0    0 &   COLUMN lc_interesadocontacto.telefono1    COMMENT     |   COMMENT ON COLUMN test_ladm_all_models.lc_interesadocontacto.telefono1 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_all_models       postgres    false    963            \(           0    0 &   COLUMN lc_interesadocontacto.telefono2    COMMENT     |   COMMENT ON COLUMN test_ladm_all_models.lc_interesadocontacto.telefono2 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_all_models       postgres    false    963            ](           0    0 3   COLUMN lc_interesadocontacto.domicilio_notificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_interesadocontacto.domicilio_notificacion IS 'Domicilio para notificaciones del interesado.';
            test_ladm_all_models       postgres    false    963            ^(           0    0 1   COLUMN lc_interesadocontacto.direccion_residencia    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_interesadocontacto.direccion_residencia IS 'Dirección de residencia del interesado.';
            test_ladm_all_models       postgres    false    963            _(           0    0 /   COLUMN lc_interesadocontacto.correo_electronico    COMMENT     z   COMMENT ON COLUMN test_ladm_all_models.lc_interesadocontacto.correo_electronico IS 'Correo electrónico del interesado.';
            test_ladm_all_models       postgres    false    963            `(           0    0 9   COLUMN lc_interesadocontacto.autoriza_notificacion_correo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_interesadocontacto.autoriza_notificacion_correo IS 'Indica si el interesado autoriza notificación vía correo electrónico';
            test_ladm_all_models       postgres    false    963            a(           0    0 )   COLUMN lc_interesadocontacto.departamento    COMMENT     {   COMMENT ON COLUMN test_ladm_all_models.lc_interesadocontacto.departamento IS 'Departamento de residencia del interesado.';
            test_ladm_all_models       postgres    false    963            b(           0    0 &   COLUMN lc_interesadocontacto.municipio    COMMENT     u   COMMENT ON COLUMN test_ladm_all_models.lc_interesadocontacto.municipio IS 'Municipio de residencia del interesado.';
            test_ladm_all_models       postgres    false    963            c(           0    0 #   COLUMN lc_interesadocontacto.vereda    COMMENT     o   COMMENT ON COLUMN test_ladm_all_models.lc_interesadocontacto.vereda IS 'Vereda de residencia del interesado.';
            test_ladm_all_models       postgres    false    963            d(           0    0 *   COLUMN lc_interesadocontacto.corregimiento    COMMENT     }   COMMENT ON COLUMN test_ladm_all_models.lc_interesadocontacto.corregimiento IS 'Corregimiento de residencia del interesado.';
            test_ladm_all_models       postgres    false    963            �           1259    590866    lc_interesadodocumentotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_interesadodocumentotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_all_models.lc_interesadodocumentotipo;
       test_ladm_all_models         postgres    false    885    13            -           1259    591451    lc_interesadotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_interesadotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_all_models.lc_interesadotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590424 
   lc_lindero    TABLE     �  CREATE TABLE test_ladm_all_models.lc_lindero (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 ,   DROP TABLE test_ladm_all_models.lc_lindero;
       test_ladm_all_models         postgres    false    885    13            e(           0    0    TABLE lc_lindero    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_lindero IS 'Linea de división que separa un bien inmueble de otro, que puede o no estar materializada físicamente.';
            test_ladm_all_models       postgres    false    964            f(           0    0    COLUMN lc_lindero.longitud    COMMENT     a   COMMENT ON COLUMN test_ladm_all_models.lc_lindero.longitud IS 'Longitud en metros del lindero.';
            test_ladm_all_models       postgres    false    964            g(           0    0    COLUMN lc_lindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_lindero.geometria IS 'Geometría lineal que define el lindero. Puede estar asociada a geometrías de tipo punto que definen sus vértices o ser una entidad lineal independiente.';
            test_ladm_all_models       postgres    false    964            h(           0    0 &   COLUMN lc_lindero.localizacion_textual    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_lindero.localizacion_textual IS 'Descripción de la localización, cuando esta se basa en texto.';
            test_ladm_all_models       postgres    false    964            i(           0    0 ,   COLUMN lc_lindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_lindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    964            j(           0    0 '   COLUMN lc_lindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_lindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    964            k(           0    0 $   COLUMN lc_lindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_lindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    964            l(           0    0    COLUMN lc_lindero.local_id    COMMENT     ]   COMMENT ON COLUMN test_ladm_all_models.lc_lindero.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    964            �           1259    590435    lc_objetoconstruccion    TABLE     �  CREATE TABLE test_ladm_all_models.lc_objetoconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_objeto_construccion bigint NOT NULL,
    puntos integer NOT NULL,
    lc_grupo_calificacion bigint NOT NULL,
    CONSTRAINT lc_objetoconstruccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 16)))
);
 7   DROP TABLE test_ladm_all_models.lc_objetoconstruccion;
       test_ladm_all_models         postgres    false    885    13            m(           0    0    TABLE lc_objetoconstruccion    COMMENT     }   COMMENT ON TABLE test_ladm_all_models.lc_objetoconstruccion IS 'Puntaje de cada item de la calificación de construcción.';
            test_ladm_all_models       postgres    false    965            n(           0    0 5   COLUMN lc_objetoconstruccion.tipo_objeto_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_objetoconstruccion.tipo_objeto_construccion IS 'Item de la calificación de construcción según la método de calificación vigente.';
            test_ladm_all_models       postgres    false    965            o(           0    0 #   COLUMN lc_objetoconstruccion.puntos    COMMENT     h   COMMENT ON COLUMN test_ladm_all_models.lc_objetoconstruccion.puntos IS 'Puntaje del ítem calificado.';
            test_ladm_all_models       postgres    false    965                       1259    591073    lc_objetoconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_objetoconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_all_models.lc_objetoconstrucciontipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590444    lc_ofertasmercadoinmobiliario    TABLE     �  CREATE TABLE test_ladm_all_models.lc_ofertasmercadoinmobiliario (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 ?   DROP TABLE test_ladm_all_models.lc_ofertasmercadoinmobiliario;
       test_ladm_all_models         postgres    false    885    13            p(           0    0 0   COLUMN lc_ofertasmercadoinmobiliario.tipo_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_ofertasmercadoinmobiliario.tipo_oferta IS 'La clase de oferta corresponde a una oferta de venta o a una oferta de arriendo del predio.';
            test_ladm_all_models       postgres    false    966            q(           0    0 1   COLUMN lc_ofertasmercadoinmobiliario.valor_pedido    COMMENT     }   COMMENT ON COLUMN test_ladm_all_models.lc_ofertasmercadoinmobiliario.valor_pedido IS 'Dato del valor en pesos de la oferta';
            test_ladm_all_models       postgres    false    966            r(           0    0 4   COLUMN lc_ofertasmercadoinmobiliario.valor_negociado    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_ofertasmercadoinmobiliario.valor_negociado IS 'Dato del valor en pesos negociado entre el vendedor y el posible comprador';
            test_ladm_all_models       postgres    false    966            s(           0    0 9   COLUMN lc_ofertasmercadoinmobiliario.fecha_captura_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_ofertasmercadoinmobiliario.fecha_captura_oferta IS 'Año, mes y día de captura de la oferta en campo.';
            test_ladm_all_models       postgres    false    966            t(           0    0 :   COLUMN lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado IS 'Número de meses de la publicitación de la oferta en el mercado inmobiliario.';
            test_ladm_all_models       postgres    false    966            u(           0    0 =   COLUMN lc_ofertasmercadoinmobiliario.numero_contacto_oferente    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_ofertasmercadoinmobiliario.numero_contacto_oferente IS 'Número de teléfono fijo o número celular de la persona que está publicitando el bien inmueble.';
            test_ladm_all_models       postgres    false    966            2           1259    591496    lc_ofertatipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_ofertatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_ladm_all_models.lc_ofertatipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590453 	   lc_predio    TABLE     6  CREATE TABLE test_ladm_all_models.lc_predio (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 +   DROP TABLE test_ladm_all_models.lc_predio;
       test_ladm_all_models         postgres    false    885    13            v(           0    0    TABLE lc_predio    COMMENT     $  COMMENT ON TABLE test_ladm_all_models.lc_predio IS 'Clase especializada de BaUnit, que describe la unidad administrativa básica para el caso de Colombia.
El predio es la unidad territorial legal propia de Catastro. Está formada por el terreno y puede o no tener construcciones asociadas.';
            test_ladm_all_models       postgres    false    967            w(           0    0    COLUMN lc_predio.departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_predio.departamento IS 'Corresponde al código del departamento al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 2 dígitos.';
            test_ladm_all_models       postgres    false    967            x(           0    0    COLUMN lc_predio.municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_predio.municipio IS 'Corresponde al código del municipio al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 3 dígitos.';
            test_ladm_all_models       postgres    false    967            y(           0    0    COLUMN lc_predio.id_operacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_predio.id_operacion IS 'Identificador único temporal de cada predio que se asigna en el desarrollo del levantamiento catastral.';
            test_ladm_all_models       postgres    false    967            z(           0    0    COLUMN lc_predio.tiene_fmi    COMMENT     s   COMMENT ON COLUMN test_ladm_all_models.lc_predio.tiene_fmi IS 'Indica si el predio tiene matricula inmobiliaria.';
            test_ladm_all_models       postgres    false    967            {(           0    0    COLUMN lc_predio.codigo_orip    COMMENT     U   COMMENT ON COLUMN test_ladm_all_models.lc_predio.codigo_orip IS 'Circulo registral';
            test_ladm_all_models       postgres    false    967            |(           0    0 '   COLUMN lc_predio.matricula_inmobiliaria    COMMENT     e   COMMENT ON COLUMN test_ladm_all_models.lc_predio.matricula_inmobiliaria IS 'Matricula inmobiliaria';
            test_ladm_all_models       postgres    false    967            }(           0    0    COLUMN lc_predio.numero_predial    COMMENT     '  COMMENT ON COLUMN test_ladm_all_models.lc_predio.numero_predial IS 'Nuevo Código numérico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_all_models       postgres    false    967            ~(           0    0 (   COLUMN lc_predio.numero_predial_anterior    COMMENT     0  COMMENT ON COLUMN test_ladm_all_models.lc_predio.numero_predial_anterior IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi.';
            test_ladm_all_models       postgres    false    967            (           0    0    COLUMN lc_predio.nupre    COMMENT     D  COMMENT ON COLUMN test_ladm_all_models.lc_predio.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_all_models       postgres    false    967            �(           0    0 !   COLUMN lc_predio.avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_predio.avaluo_catastral IS 'Valor catastral del predio, obtenido mediante investigación y análisis estadístico del mercado inmobiliario y la metodología de aplicación correspondiente.';
            test_ladm_all_models       postgres    false    967            �(           0    0 !   COLUMN lc_predio.condicion_predio    COMMENT     o   COMMENT ON COLUMN test_ladm_all_models.lc_predio.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_all_models       postgres    false    967            �(           0    0    COLUMN lc_predio.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_predio.nombre IS 'Nombre que recibe la unidad administrativa básica, en muchos casos toponímico, especialmente en terrenos rústicos.';
            test_ladm_all_models       postgres    false    967            �(           0    0 +   COLUMN lc_predio.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_predio.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    967            �(           0    0 &   COLUMN lc_predio.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_predio.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    967            �(           0    0 #   COLUMN lc_predio.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_predio.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    967            �(           0    0    COLUMN lc_predio.local_id    COMMENT     \   COMMENT ON COLUMN test_ladm_all_models.lc_predio.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    967            �           1259    590595    lc_predio_copropiedad    TABLE     �   CREATE TABLE test_ladm_all_models.lc_predio_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    predio bigint NOT NULL,
    copropiedad bigint NOT NULL
);
 7   DROP TABLE test_ladm_all_models.lc_predio_copropiedad;
       test_ladm_all_models         postgres    false    885    13            �           1259    590603    lc_predio_ini_predioinsumos    TABLE       CREATE TABLE test_ladm_all_models.lc_predio_ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ini_predio_insumos bigint NOT NULL,
    lc_predio bigint NOT NULL
);
 =   DROP TABLE test_ladm_all_models.lc_predio_ini_predioinsumos;
       test_ladm_all_models         postgres    false    885    13            �           1259    590875    lc_prediotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_prediotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_ladm_all_models.lc_prediotipo;
       test_ladm_all_models         postgres    false    885    13            6           1259    591532 &   lc_procedimientocatastralregistraltipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_procedimientocatastralregistraltipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 H   DROP TABLE test_ladm_all_models.lc_procedimientocatastralregistraltipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590465    lc_puntocontrol    TABLE     �  CREATE TABLE test_ladm_all_models.lc_puntocontrol (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_all_models.lc_puntocontrol;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE lc_puntocontrol    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_puntocontrol IS 'Puntos topograficos o geodesicos utilizados como amarre para la ejecución del levantamiento catastral.';
            test_ladm_all_models       postgres    false    968            �(           0    0 '   COLUMN lc_puntocontrol.id_punto_control    COMMENT     u   COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.id_punto_control IS 'Nombre o código del punto de control.';
            test_ladm_all_models       postgres    false    968            �(           0    0     COLUMN lc_puntocontrol.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_all_models       postgres    false    968            �(           0    0 )   COLUMN lc_puntocontrol.tipo_punto_control    COMMENT        COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.tipo_punto_control IS 'Si se trata de un punto de control o de apoyo.';
            test_ladm_all_models       postgres    false    968            �(           0    0 +   COLUMN lc_puntocontrol.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.exactitud_horizontal IS 'Exactitud horizontal de la medición del punto.';
            test_ladm_all_models       postgres    false    968            �(           0    0 )   COLUMN lc_puntocontrol.exactitud_vertical    COMMENT     ~   COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.exactitud_vertical IS 'Exactitud vertical de la medición del punto.';
            test_ladm_all_models       postgres    false    968            �(           0    0 -   COLUMN lc_puntocontrol.posicion_interpolacion    COMMENT     q   COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_all_models       postgres    false    968            �(           0    0 '   COLUMN lc_puntocontrol.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_all_models       postgres    false    968            �(           0    0     COLUMN lc_puntocontrol.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_all_models       postgres    false    968            �(           0    0 1   COLUMN lc_puntocontrol.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    968            �(           0    0 ,   COLUMN lc_puntocontrol.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    968            �(           0    0 )   COLUMN lc_puntocontrol.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    968            �(           0    0    COLUMN lc_puntocontrol.local_id    COMMENT     b   COMMENT ON COLUMN test_ladm_all_models.lc_puntocontrol.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    968            7           1259    591541    lc_puntocontroltipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_puntocontroltipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_all_models.lc_puntocontroltipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590566    lc_puntolevantamiento    TABLE     �  CREATE TABLE test_ladm_all_models.lc_puntolevantamiento (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_ladm_all_models.lc_puntolevantamiento;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE lc_puntolevantamiento    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_puntolevantamiento IS 'Puntos que definen los limites de las construcciones, unidad de construcción y servidumbres de transito.';
            test_ladm_all_models       postgres    false    975            �(           0    0 3   COLUMN lc_puntolevantamiento.id_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.id_punto_levantamiento IS 'Nombre o código del punto levantamiento.';
            test_ladm_all_models       postgres    false    975            �(           0    0 &   COLUMN lc_puntolevantamiento.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_all_models       postgres    false    975            �(           0    0 5   COLUMN lc_puntolevantamiento.tipo_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.tipo_punto_levantamiento IS 'Indica si el tipo de punto corresponde a una construcción o servidumbre de tránsito.';
            test_ladm_all_models       postgres    false    975            �(           0    0 /   COLUMN lc_puntolevantamiento.fotoidentificacion    COMMENT        COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_all_models       postgres    false    975            �(           0    0 1   COLUMN lc_puntolevantamiento.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto levantamiento.';
            test_ladm_all_models       postgres    false    975            �(           0    0 /   COLUMN lc_puntolevantamiento.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto levantamiento';
            test_ladm_all_models       postgres    false    975            �(           0    0 3   COLUMN lc_puntolevantamiento.posicion_interpolacion    COMMENT     w   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_all_models       postgres    false    975            �(           0    0 -   COLUMN lc_puntolevantamiento.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_all_models       postgres    false    975            �(           0    0 &   COLUMN lc_puntolevantamiento.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_all_models       postgres    false    975            �(           0    0 7   COLUMN lc_puntolevantamiento.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    975            �(           0    0 2   COLUMN lc_puntolevantamiento.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    975            �(           0    0 /   COLUMN lc_puntolevantamiento.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    975            �(           0    0 %   COLUMN lc_puntolevantamiento.local_id    COMMENT     h   COMMENT ON COLUMN test_ladm_all_models.lc_puntolevantamiento.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    975            �           1259    590956    lc_puntolevtipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_puntolevtipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_all_models.lc_puntolevtipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590484    lc_puntolindero    TABLE     �  CREATE TABLE test_ladm_all_models.lc_puntolindero (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_ladm_all_models.lc_puntolindero;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE lc_puntolindero    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_puntolindero IS 'Puntos que definen los lindero de un terreno. La sucesión de estos puntos forman una línea que representa el límite entre dos terrenos.';
            test_ladm_all_models       postgres    false    969            �(           0    0 '   COLUMN lc_puntolindero.id_punto_lindero    COMMENT     q   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.id_punto_lindero IS 'Nombre o código del punto lindero';
            test_ladm_all_models       postgres    false    969            �(           0    0     COLUMN lc_puntolindero.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_all_models       postgres    false    969            �(           0    0    COLUMN lc_puntolindero.acuerdo    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.acuerdo IS 'Indica si existe acuerdo o no entre los colindantes en relación al punto lindero que se está midiendo.';
            test_ladm_all_models       postgres    false    969            �(           0    0 )   COLUMN lc_puntolindero.fotoidentificacion    COMMENT     y   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_all_models       postgres    false    969            �(           0    0 +   COLUMN lc_puntolindero.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto lindero';
            test_ladm_all_models       postgres    false    969            �(           0    0 )   COLUMN lc_puntolindero.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto lindero';
            test_ladm_all_models       postgres    false    969            �(           0    0 -   COLUMN lc_puntolindero.posicion_interpolacion    COMMENT     q   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_all_models       postgres    false    969            �(           0    0 '   COLUMN lc_puntolindero.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_all_models       postgres    false    969            �(           0    0     COLUMN lc_puntolindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_all_models       postgres    false    969            �(           0    0 1   COLUMN lc_puntolindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    969            �(           0    0 ,   COLUMN lc_puntolindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    969            �(           0    0 )   COLUMN lc_puntolindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    969            �(           0    0    COLUMN lc_puntolindero.local_id    COMMENT     b   COMMENT ON COLUMN test_ladm_all_models.lc_puntolindero.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    969            �           1259    590965    lc_puntotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_ladm_all_models.lc_puntotipo;
       test_ladm_all_models         postgres    false    885    13            %           1259    591379    lc_relacionprediotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_relacionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_all_models.lc_relacionprediotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590504    lc_restriccion    TABLE     P  CREATE TABLE test_ladm_all_models.lc_restriccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_ladm_all_models.lc_restriccion;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE lc_restriccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_restriccion IS 'Restricción legalmente constituida y registrada que afecta el derecho de un persona en relación con el predio.';
            test_ladm_all_models       postgres    false    970            �(           0    0    COLUMN lc_restriccion.tipo    COMMENT     m   COMMENT ON COLUMN test_ladm_all_models.lc_restriccion.tipo IS 'Tipo de Restricción que afecta el derecho.';
            test_ladm_all_models       postgres    false    970            �(           0    0 !   COLUMN lc_restriccion.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_restriccion.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_all_models       postgres    false    970            �(           0    0 0   COLUMN lc_restriccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_restriccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    970            �(           0    0 +   COLUMN lc_restriccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_restriccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    970            �(           0    0 (   COLUMN lc_restriccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_restriccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    970            �(           0    0    COLUMN lc_restriccion.local_id    COMMENT     a   COMMENT ON COLUMN test_ladm_all_models.lc_restriccion.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    970                       1259    591226    lc_restricciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_restricciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_all_models.lc_restricciontipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590974    lc_resultadovisitatipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_resultadovisitatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_all_models.lc_resultadovisitatipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590611    lc_servidumbretransito    TABLE     �  CREATE TABLE test_ladm_all_models.lc_servidumbretransito (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 8   DROP TABLE test_ladm_all_models.lc_servidumbretransito;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE lc_servidumbretransito    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_servidumbretransito IS 'Tipo de unidad espacial que permite la representación de una servidumbre de paso asociada a una COL_BAUnit.';
            test_ladm_all_models       postgres    false    979            �(           0    0 .   COLUMN lc_servidumbretransito.area_servidumbre    COMMENT     t   COMMENT ON COLUMN test_ladm_all_models.lc_servidumbretransito.area_servidumbre IS 'Área total de la servidumbre.';
            test_ladm_all_models       postgres    false    979            �(           0    0 '   COLUMN lc_servidumbretransito.dimension    COMMENT     e   COMMENT ON COLUMN test_ladm_all_models.lc_servidumbretransito.dimension IS 'Dimensión del objeto.';
            test_ladm_all_models       postgres    false    979            �(           0    0 &   COLUMN lc_servidumbretransito.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_servidumbretransito.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_all_models       postgres    false    979            �(           0    0 1   COLUMN lc_servidumbretransito.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_servidumbretransito.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_all_models       postgres    false    979            �(           0    0 '   COLUMN lc_servidumbretransito.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_servidumbretransito.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_all_models       postgres    false    979            �(           0    0 8   COLUMN lc_servidumbretransito.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_servidumbretransito.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    979            �(           0    0 3   COLUMN lc_servidumbretransito.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_servidumbretransito.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    979            �(           0    0 0   COLUMN lc_servidumbretransito.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_servidumbretransito.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    979            �(           0    0 &   COLUMN lc_servidumbretransito.local_id    COMMENT     i   COMMENT ON COLUMN test_ladm_all_models.lc_servidumbretransito.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    979            �           1259    591028    lc_sexotipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_sexotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 -   DROP TABLE test_ladm_all_models.lc_sexotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590518 
   lc_terreno    TABLE     �  CREATE TABLE test_ladm_all_models.lc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 ,   DROP TABLE test_ladm_all_models.lc_terreno;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE lc_terreno    COMMENT     s   COMMENT ON TABLE test_ladm_all_models.lc_terreno IS 'Porción de tierra con una extensión geográfica definida.';
            test_ladm_all_models       postgres    false    971            �(           0    0    COLUMN lc_terreno.area_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_terreno.area_terreno IS 'Área total del terreno  resultante del levantamiento catastral..';
            test_ladm_all_models       postgres    false    971            �(           0    0     COLUMN lc_terreno.avaluo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_terreno.avaluo_terreno IS 'Valor catastral asignado en el proceso de valoración económica masiva al terreno del predio.';
            test_ladm_all_models       postgres    false    971            �(           0    0 '   COLUMN lc_terreno.manzana_vereda_codigo    COMMENT     ]  COMMENT ON COLUMN test_ladm_all_models.lc_terreno.manzana_vereda_codigo IS 'Corresponde la identificación del número predial hasta la posición 21, permite identificar la relación espacial en sus componentes: departamento, municipio, zona, sector, comuna, barrio, manzana o vereda y terreno de acuerdo a su codificación en el número predial.';
            test_ladm_all_models       postgres    false    971            �(           0    0    COLUMN lc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_terreno.geometria IS 'Corresponde a la figura geométrica vectorial poligonal, generada a partir de los linderos del predio.';
            test_ladm_all_models       postgres    false    971            �(           0    0    COLUMN lc_terreno.dimension    COMMENT     Y   COMMENT ON COLUMN test_ladm_all_models.lc_terreno.dimension IS 'Dimensión del objeto.';
            test_ladm_all_models       postgres    false    971            �(           0    0    COLUMN lc_terreno.etiqueta    COMMENT     t   COMMENT ON COLUMN test_ladm_all_models.lc_terreno.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_all_models       postgres    false    971            �(           0    0 %   COLUMN lc_terreno.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_terreno.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_all_models       postgres    false    971            �(           0    0 ,   COLUMN lc_terreno.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_terreno.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    971            �(           0    0 '   COLUMN lc_terreno.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_terreno.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    971            �(           0    0 $   COLUMN lc_terreno.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_terreno.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    971            �(           0    0    COLUMN lc_terreno.local_id    COMMENT     ]   COMMENT ON COLUMN test_ladm_all_models.lc_terreno.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    971            �           1259    590586    lc_tipologiaconstruccion    TABLE       CREATE TABLE test_ladm_all_models.lc_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint NOT NULL,
    lc_unidad_construccion bigint
);
 :   DROP TABLE test_ladm_all_models.lc_tipologiaconstruccion;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE lc_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_tipologiaconstruccion IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_all_models       postgres    false    976            �(           0    0 .   COLUMN lc_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_tipologiaconstruccion.tipo_tipologia IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_all_models       postgres    false    976            �           1259    590893    lc_tipologiatipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_tipologiatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_all_models.lc_tipologiatipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590624    lc_unidadconstruccion    TABLE     �	  CREATE TABLE test_ladm_all_models.lc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_ladm_all_models.lc_unidadconstruccion;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE lc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.lc_unidadconstruccion IS 'Es cada conjunto de materiales consolidados dentro de un predio que tiene unas características específicas en cuanto a elementos constitutivos físicos y usos de la misma.';
            test_ladm_all_models       postgres    false    980            �(           0    0 *   COLUMN lc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_all_models       postgres    false    980            �(           0    0 )   COLUMN lc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_all_models       postgres    false    980            �(           0    0 .   COLUMN lc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_all_models       postgres    false    980            �(           0    0 5   COLUMN lc_unidadconstruccion.tipo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.tipo_unidad_construccion IS 'Indica si la unidad de construcción es residencial, comercial, industrial o anexo.';
            test_ladm_all_models       postgres    false    980            �(           0    0 (   COLUMN lc_unidadconstruccion.tipo_planta    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.tipo_planta IS 'Indica el tipo de planta donde se ubica la unidad de construcción.';
            test_ladm_all_models       postgres    false    980            �(           0    0 -   COLUMN lc_unidadconstruccion.planta_ubicacion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.planta_ubicacion IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_all_models       postgres    false    980            �(           0    0 /   COLUMN lc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_all_models       postgres    false    980            �(           0    0 )   COLUMN lc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_all_models       postgres    false    980            �(           0    0 *   COLUMN lc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_all_models       postgres    false    980            �(           0    0 (   COLUMN lc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_all_models       postgres    false    980            �(           0    0     COLUMN lc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_all_models       postgres    false    980            �(           0    0 .   COLUMN lc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_all_models       postgres    false    980            �(           0    0 7   COLUMN lc_unidadconstruccion.avaluo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.avaluo_unidad_construccion IS 'Avalúo catastral de la unidad de construcción.';
            test_ladm_all_models       postgres    false    980            �(           0    0 ,   COLUMN lc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_all_models       postgres    false    980            �(           0    0 4   COLUMN lc_unidadconstruccion.area_privada_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.area_privada_construida IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_all_models       postgres    false    980            �(           0    0 #   COLUMN lc_unidadconstruccion.altura    COMMENT     v   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.altura IS 'Altura total de la unidad de construcción.';
            test_ladm_all_models       postgres    false    980            �(           0    0 *   COLUMN lc_unidadconstruccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.observaciones IS 'Observaciones generales respecto de la unidad de construcción.';
            test_ladm_all_models       postgres    false    980            �(           0    0 &   COLUMN lc_unidadconstruccion.dimension    COMMENT     d   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.dimension IS 'Dimensión del objeto.';
            test_ladm_all_models       postgres    false    980            �(           0    0 %   COLUMN lc_unidadconstruccion.etiqueta    COMMENT        COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_all_models       postgres    false    980            �(           0    0 0   COLUMN lc_unidadconstruccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_all_models       postgres    false    980            �(           0    0 &   COLUMN lc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_all_models       postgres    false    980            �(           0    0 7   COLUMN lc_unidadconstruccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    980            �(           0    0 2   COLUMN lc_unidadconstruccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_all_models       postgres    false    980            �(           0    0 /   COLUMN lc_unidadconstruccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_all_models       postgres    false    980            �(           0    0 %   COLUMN lc_unidadconstruccion.local_id    COMMENT     h   COMMENT ON COLUMN test_ladm_all_models.lc_unidadconstruccion.local_id IS 'Identificador único local.';
            test_ladm_all_models       postgres    false    980            �           1259    590947    lc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_all_models.lc_unidadconstrucciontipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591253    lc_usouconstipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_usouconstipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_all_models.lc_usouconstipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591100 
   lc_viatipo    TABLE     �  CREATE TABLE test_ladm_all_models.lc_viatipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ,   DROP TABLE test_ladm_all_models.lc_viatipo;
       test_ladm_all_models         postgres    false    885    13            9           1259    591559    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_ladm_all_models.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_all_models.snr_calidadderechotipo;
       test_ladm_all_models         postgres    false    885    13                       1259    591244    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_ladm_all_models.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_all_models.snr_clasepredioregistrotipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590209    snr_derecho    TABLE     e  CREATE TABLE test_ladm_all_models.snr_derecho (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 -   DROP TABLE test_ladm_all_models.snr_derecho;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE snr_derecho    COMMENT     ^   COMMENT ON TABLE test_ladm_all_models.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
            test_ladm_all_models       postgres    false    944            �(           0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     q   COMMENT ON COLUMN test_ladm_all_models.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
            test_ladm_all_models       postgres    false    944            �(           0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
            test_ladm_all_models       postgres    false    944            3           1259    591505    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_ladm_all_models.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_all_models.snr_documentotitulartipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590218    snr_estructuramatriculamatriz    TABLE     E  CREATE TABLE test_ladm_all_models.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 ?   DROP TABLE test_ladm_all_models.snr_estructuramatriculamatriz;
       test_ladm_all_models         postgres    false    885    13            �(           0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_all_models       postgres    false    945            �(           0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_all_models       postgres    false    945            �(           0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
            test_ladm_all_models       postgres    false    945            �           1259    590225    snr_fuentecabidalinderos    TABLE     s  CREATE TABLE test_ladm_all_models.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 :   DROP TABLE test_ladm_all_models.snr_fuentecabidalinderos;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
            test_ladm_all_models       postgres    false    946            �(           0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_all_models       postgres    false    946            �(           0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_all_models       postgres    false    946            �(           0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_all_models       postgres    false    946            �(           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_all_models       postgres    false    946            �           1259    590235    snr_fuentederecho    TABLE     l  CREATE TABLE test_ladm_all_models.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 3   DROP TABLE test_ladm_all_models.snr_fuentederecho;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE snr_fuentederecho    COMMENT     j   COMMENT ON TABLE test_ladm_all_models.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
            test_ladm_all_models       postgres    false    947            �(           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_all_models       postgres    false    947            �(           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_all_models       postgres    false    947            �(           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_all_models       postgres    false    947            �(           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_all_models       postgres    false    947                       1259    591208    snr_fuentetipo    TABLE     �  CREATE TABLE test_ladm_all_models.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_all_models.snr_fuentetipo;
       test_ladm_all_models         postgres    false    885    13            "           1259    591352    snr_personatitulartipo    TABLE     �  CREATE TABLE test_ladm_all_models.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_all_models.snr_personatitulartipo;
       test_ladm_all_models         postgres    false    885    13            �           1259    590256    snr_predioregistro    TABLE     5  CREATE TABLE test_ladm_all_models.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
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
 4   DROP TABLE test_ladm_all_models.snr_predioregistro;
       test_ladm_all_models         postgres    false    885    13            �(           0    0    TABLE snr_predioregistro    COMMENT     g   COMMENT ON TABLE test_ladm_all_models.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
            test_ladm_all_models       postgres    false    949            �(           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_all_models       postgres    false    949            �(           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_all_models       postgres    false    949            �(           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     O  COMMENT ON COLUMN test_ladm_all_models.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_all_models       postgres    false    949            �(           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     S  COMMENT ON COLUMN test_ladm_all_models.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_all_models       postgres    false    949            �(           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
            test_ladm_all_models       postgres    false    949            �(           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
            test_ladm_all_models       postgres    false    949             )           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_all_models.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
            test_ladm_all_models       postgres    false    949            )           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT     n   COMMENT ON COLUMN test_ladm_all_models.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
            test_ladm_all_models       postgres    false    949            �           1259    590245    snr_titular    TABLE     �  CREATE TABLE test_ladm_all_models.snr_titular (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 -   DROP TABLE test_ladm_all_models.snr_titular;
       test_ladm_all_models         postgres    false    885    13            )           0    0    TABLE snr_titular    COMMENT     k   COMMENT ON TABLE test_ladm_all_models.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
            test_ladm_all_models       postgres    false    948            )           0    0    COLUMN snr_titular.tipo_persona    COMMENT     V   COMMENT ON COLUMN test_ladm_all_models.snr_titular.tipo_persona IS 'Tipo de persona';
            test_ladm_all_models       postgres    false    948            )           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     l   COMMENT ON COLUMN test_ladm_all_models.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_all_models       postgres    false    948            )           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     q   COMMENT ON COLUMN test_ladm_all_models.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
            test_ladm_all_models       postgres    false    948            )           0    0    COLUMN snr_titular.nombres    COMMENT     `   COMMENT ON COLUMN test_ladm_all_models.snr_titular.nombres IS 'Nombres de la persona física.';
            test_ladm_all_models       postgres    false    948            )           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     p   COMMENT ON COLUMN test_ladm_all_models.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_all_models       postgres    false    948            )           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     r   COMMENT ON COLUMN test_ladm_all_models.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_all_models       postgres    false    948            	)           0    0    COLUMN snr_titular.razon_social    COMMENT     |   COMMENT ON COLUMN test_ladm_all_models.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
            test_ladm_all_models       postgres    false    948            �           1259    590267    snr_titular_derecho    TABLE     0  CREATE TABLE test_ladm_all_models.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_ladm_all_models.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 5   DROP TABLE test_ladm_all_models.snr_titular_derecho;
       test_ladm_all_models         postgres    false    885    13            
)           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_all_models.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
            test_ladm_all_models       postgres    false    950            ;           1259    591576    t_ili2db_attrname    TABLE     �   CREATE TABLE test_ladm_all_models.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 3   DROP TABLE test_ladm_all_models.t_ili2db_attrname;
       test_ladm_all_models         postgres    false    13            �           1259    590822    t_ili2db_basket    TABLE       CREATE TABLE test_ladm_all_models.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 1   DROP TABLE test_ladm_all_models.t_ili2db_basket;
       test_ladm_all_models         postgres    false    13            :           1259    591568    t_ili2db_classname    TABLE     �   CREATE TABLE test_ladm_all_models.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 4   DROP TABLE test_ladm_all_models.t_ili2db_classname;
       test_ladm_all_models         postgres    false    13            <           1259    591584    t_ili2db_column_prop    TABLE       CREATE TABLE test_ladm_all_models.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 6   DROP TABLE test_ladm_all_models.t_ili2db_column_prop;
       test_ladm_all_models         postgres    false    13            �           1259    590831    t_ili2db_dataset    TABLE     y   CREATE TABLE test_ladm_all_models.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 2   DROP TABLE test_ladm_all_models.t_ili2db_dataset;
       test_ladm_all_models         postgres    false    13            �           1259    590836    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_ladm_all_models.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 6   DROP TABLE test_ladm_all_models.t_ili2db_inheritance;
       test_ladm_all_models         postgres    false    13            >           1259    591596    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_ladm_all_models.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 5   DROP TABLE test_ladm_all_models.t_ili2db_meta_attrs;
       test_ladm_all_models         postgres    false    13            �           1259    590858    t_ili2db_model    TABLE     �   CREATE TABLE test_ladm_all_models.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 0   DROP TABLE test_ladm_all_models.t_ili2db_model;
       test_ladm_all_models         postgres    false    13            �           1259    590844    t_ili2db_settings    TABLE     �   CREATE TABLE test_ladm_all_models.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 3   DROP TABLE test_ladm_all_models.t_ili2db_settings;
       test_ladm_all_models         postgres    false    13            =           1259    591590    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_ladm_all_models.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 5   DROP TABLE test_ladm_all_models.t_ili2db_table_prop;
       test_ladm_all_models         postgres    false    13            �           1259    590852    t_ili2db_trafo    TABLE     �   CREATE TABLE test_ladm_all_models.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 0   DROP TABLE test_ladm_all_models.t_ili2db_trafo;
       test_ladm_all_models         postgres    false    13            �&          0    591433    av_disponibilidadaguatipo 
   TABLE DATA               �   COPY test_ladm_all_models.av_disponibilidadaguatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1067   h      z&          0    590902    av_influenciavialruraltipo 
   TABLE DATA               �   COPY test_ladm_all_models.av_influenciavialruraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1008   �      �&          0    591010    av_influenciavialurbanatipo 
   TABLE DATA               �   COPY test_ladm_all_models.av_influenciavialurbanatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1020   �!      �&          0    591388    av_serviciospublicostipo 
   TABLE DATA               �   COPY test_ladm_all_models.av_serviciospublicostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1062   �"      _&          0    590643     av_tablacalificacionconstruccion 
   TABLE DATA               �   COPY test_ladm_all_models.av_tablacalificacionconstruccion (t_id, t_ili_tid, valor_m2_construccion, uso, puntuacion) FROM stdin;
    test_ladm_all_models       postgres    false    981   �$      �&          0    591046    av_tipificacionconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.av_tipificacionconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1024   �$      `&          0    590651    av_tipologiaconstruccion 
   TABLE DATA               q   COPY test_ladm_all_models.av_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, valor_unitario) FROM stdin;
    test_ladm_all_models       postgres    false    982   H*      �&          0    591055    av_tipologiatipo 
   TABLE DATA               �   COPY test_ladm_all_models.av_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1025   e*      {&          0    590911    av_topografiazonatipo 
   TABLE DATA               �   COPY test_ladm_all_models.av_topografiazonatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1009   w?      �&          0    591001    av_usosueloruraltipo 
   TABLE DATA               �   COPY test_ladm_all_models.av_usosueloruraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1019   �@      �&          0    591307    av_usosuelourbanotipo 
   TABLE DATA               �   COPY test_ladm_all_models.av_usosuelourbanotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1053   fG      |&          0    590920    av_usouconstipo 
   TABLE DATA               �   COPY test_ladm_all_models.av_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1010   J      a&          0    590659    av_zonahomogeneafisicarural 
   TABLE DATA               �   COPY test_ladm_all_models.av_zonahomogeneafisicarural (t_id, t_ili_tid, codigo, codigo_zona_fisica, area_homogenea_tierra, disponibilidad_agua, influencia_vial, uso_actual_suelo, norma_uso_suelo, vigencia, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    983   mh      b&          0    590673    av_zonahomogeneafisicaurbana 
   TABLE DATA               �   COPY test_ladm_all_models.av_zonahomogeneafisicaurbana (t_id, t_ili_tid, codigo, codigo_zona_fisica, topografia, influencia_vial, servicio_publico, uso_actual_suelo, norma_uso_suelo, tipificacion_construccion, vigencia, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    984   �h      d&          0    590700 !   av_zonahomogeneageoeconomicarural 
   TABLE DATA               �   COPY test_ladm_all_models.av_zonahomogeneageoeconomicarural (t_id, t_ili_tid, codigo, codigo_zona_geoeconomica, valor_hectarea, subzona_fisica, vigencia, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    986   �h      c&          0    590689 "   av_zonahomogeneageoeconomicaurbana 
   TABLE DATA               �   COPY test_ladm_all_models.av_zonahomogeneageoeconomicaurbana (t_id, t_ili_tid, codigo, codigo_zona_geoeconomica, valor_metro, subzona_fisica, vigencia, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    985   �h      o&          0    590812 	   cc_barrio 
   TABLE DATA               l   COPY test_ladm_all_models.cc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    997   �h      e&          0    590711    cc_centropoblado 
   TABLE DATA               d   COPY test_ladm_all_models.cc_centropoblado (t_id, t_ili_tid, codigo, nombre, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    987   �h      f&          0    590721    cc_corregimiento 
   TABLE DATA               d   COPY test_ladm_all_models.cc_corregimiento (t_id, t_ili_tid, codigo, nombre, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    988   i      g&          0    590731    cc_limitemunicipio 
   TABLE DATA               �   COPY test_ladm_all_models.cc_limitemunicipio (t_id, t_ili_tid, codigo_departamento, codigo_municipio, nombre_municipio, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    989   8i      n&          0    590802    cc_localidadcomuna 
   TABLE DATA               f   COPY test_ladm_all_models.cc_localidadcomuna (t_id, t_ili_tid, codigo, nombre, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    996   Ui      h&          0    590741 
   cc_manzana 
   TABLE DATA               m   COPY test_ladm_all_models.cc_manzana (t_id, t_ili_tid, codigo, codigo_barrio, nombre, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    990   ri      &          0    589701    cc_metodooperacion 
   TABLE DATA               �   COPY test_ladm_all_models.cc_metodooperacion (t_id, t_seq, formula, dimensiones_origen, ddimensiones_objetivo, col_transformacion_transformacion) FROM stdin;
    test_ladm_all_models       postgres    false    892   �i      i&          0    590751    cc_nomenclaturavial 
   TABLE DATA               m   COPY test_ladm_all_models.cc_nomenclaturavial (t_id, t_ili_tid, tipo_via, numero_via, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    991   �i      �&          0    591478    cc_nomenclaturavial_tipo_via 
   TABLE DATA               �   COPY test_ladm_all_models.cc_nomenclaturavial_tipo_via (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1072   �i      j&          0    590762    cc_perimetrourbano 
   TABLE DATA               �   COPY test_ladm_all_models.cc_perimetrourbano (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    992   �j      k&          0    590772    cc_sectorrural 
   TABLE DATA               Z   COPY test_ladm_all_models.cc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    993   k      l&          0    590782    cc_sectorurbano 
   TABLE DATA               [   COPY test_ladm_all_models.cc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    994   $k      m&          0    590792 	   cc_vereda 
   TABLE DATA               l   COPY test_ladm_all_models.cc_vereda (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    995   Ak      }&          0    590929    ci_forma_presentacion_codigo 
   TABLE DATA               �   COPY test_ladm_all_models.ci_forma_presentacion_codigo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1011   ^k      �&          0    591316    col_areatipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_areatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1054   &l      &          0    589708    col_areavalor 
   TABLE DATA               �   COPY test_ladm_all_models.col_areavalor (t_id, t_seq, tipo, area, datos_proyeccion, lc_construccion_area, lc_terreno_area, lc_servidumbretransito_area, lc_unidadconstruccion_area) FROM stdin;
    test_ladm_all_models       postgres    false    893   Rm      "&          0    589977    col_baunitcomointeresado 
   TABLE DATA               �   COPY test_ladm_all_models.col_baunitcomointeresado (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad) FROM stdin;
    test_ladm_all_models       postgres    false    920   om      &          0    589886    col_baunitfuente 
   TABLE DATA               b   COPY test_ladm_all_models.col_baunitfuente (t_id, t_ili_tid, fuente_espacial, unidad) FROM stdin;
    test_ladm_all_models       postgres    false    910   �m      &          0    589901    col_cclfuente 
   TABLE DATA               \   COPY test_ladm_all_models.col_cclfuente (t_id, t_ili_tid, ccl, fuente_espacial) FROM stdin;
    test_ladm_all_models       postgres    false    912   �m      &          0    589941    col_clfuente 
   TABLE DATA               V   COPY test_ladm_all_models.col_clfuente (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_all_models       postgres    false    916   �m      �&          0    591217    col_contenidoniveltipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_contenidoniveltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1043   �m      �&          0    591550    col_dimensiontipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_dimensiontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1080   �n      �&          0    591415    col_estadodisponibilidadtipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_estadodisponibilidadtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1065   co      �&          0    591271    col_estadoredserviciostipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_estadoredserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1049   4p      �&          0    591514    col_estructuratipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_estructuratipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1076   �p      �&          0    591091    col_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1029   {q      �&          0    591370    col_fuenteespacialtipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_fuenteespacialtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1060   /s      �&          0    591235    col_grupointeresadotipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_grupointeresadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1045   du      �&          0    591190    col_interpolaciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_interpolaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1040   Lv      �&          0    591280    col_iso19125_tipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_iso19125_tipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1050   �v      &          0    589920 
   col_masccl 
   TABLE DATA               �   COPY test_ladm_all_models.col_masccl (t_id, t_ili_tid, ccl_mas, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion, ue_mas_lc_construccion) FROM stdin;
    test_ladm_all_models       postgres    false    914   lw       &          0    589958 	   col_mascl 
   TABLE DATA               �   COPY test_ladm_all_models.col_mascl (t_id, t_ili_tid, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion, ue_mas_lc_construccion) FROM stdin;
    test_ladm_all_models       postgres    false    918   �w      &          0    589909    col_menosccl 
   TABLE DATA               �   COPY test_ladm_all_models.col_menosccl (t_id, t_ili_tid, ccl_menos, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion, ue_menos_lc_construccion) FROM stdin;
    test_ladm_all_models       postgres    false    913   �w      &          0    589948    col_menoscl 
   TABLE DATA               �   COPY test_ladm_all_models.col_menoscl (t_id, t_ili_tid, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion, ue_menos_lc_construccion) FROM stdin;
    test_ladm_all_models       postgres    false    917   �w      �&          0    591064    col_metodoproducciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_metodoproducciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1026   �w      %&          0    590004    col_miembros 
   TABLE DATA               �   COPY test_ladm_all_models.col_miembros (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, agrupacion) FROM stdin;
    test_ladm_all_models       postgres    false    923   z      &          0    589931    col_puntoccl 
   TABLE DATA               �   COPY test_ladm_all_models.col_puntoccl (t_id, t_ili_tid, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento, ccl) FROM stdin;
    test_ladm_all_models       postgres    false    915   1z      !&          0    589968    col_puntocl 
   TABLE DATA               �   COPY test_ladm_all_models.col_puntocl (t_id, t_ili_tid, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento) FROM stdin;
    test_ladm_all_models       postgres    false    919   Nz      &          0    589865    col_puntofuente 
   TABLE DATA               �   COPY test_ladm_all_models.col_puntofuente (t_id, t_ili_tid, fuente_espacial, punto_lc_puntocontrol, punto_lc_puntolindero, punto_lc_puntolevantamiento) FROM stdin;
    test_ladm_all_models       postgres    false    908   kz      �&          0    591262    col_puntotipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1048   �z      �&          0    590983    col_redserviciostipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_redserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1017   �z      �&          0    590992    col_registrotipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_registrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1018   �{      &          0    589850    col_relacionfuente 
   TABLE DATA               b   COPY test_ladm_all_models.col_relacionfuente (t_id, t_ili_tid, fuente_administrativa) FROM stdin;
    test_ladm_all_models       postgres    false    906   $|      &          0    589894    col_relacionfuenteuespacial 
   TABLE DATA               e   COPY test_ladm_all_models.col_relacionfuenteuespacial (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_all_models       postgres    false    911   A|      �&          0    591298    col_relacionsuperficietipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_relacionsuperficietipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1052   ^|      #&          0    589986    col_responsablefuente 
   TABLE DATA               �   COPY test_ladm_all_models.col_responsablefuente (t_id, t_ili_tid, fuente_administrativa, interesado_lc_interesado, interesado_lc_agrupacioninteresados) FROM stdin;
    test_ladm_all_models       postgres    false    921   �|      &          0    589830    col_rrrfuente 
   TABLE DATA               �   COPY test_ladm_all_models.col_rrrfuente (t_id, t_ili_tid, fuente_administrativa, rrr_lc_restriccion, rrr_lc_derecho) FROM stdin;
    test_ladm_all_models       postgres    false    904   }      $&          0    589995    col_topografofuente 
   TABLE DATA               �   COPY test_ladm_all_models.col_topografofuente (t_id, t_ili_tid, fuente_espacial, topografo_lc_interesado, topografo_lc_agrupacioninteresados) FROM stdin;
    test_ladm_all_models       postgres    false    922   3}      
&          0    589751    col_transformacion 
   TABLE DATA               �   COPY test_ladm_all_models.col_transformacion (t_id, t_seq, localizacion_transformada, lc_puntocontrol_transformacion_y_resultado, lc_puntolindero_transformacion_y_resultado, lc_puntolevantamiento_transformacion_y_resultado) FROM stdin;
    test_ladm_all_models       postgres    false    896   P}      &          0    589839    col_uebaunit 
   TABLE DATA               �   COPY test_ladm_all_models.col_uebaunit (t_id, t_ili_tid, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, baunit) FROM stdin;
    test_ladm_all_models       postgres    false    905   m}      &          0    589875    col_uefuente 
   TABLE DATA               �   COPY test_ladm_all_models.col_uefuente (t_id, t_ili_tid, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, fuente_espacial) FROM stdin;
    test_ladm_all_models       postgres    false    909   �}      &          0    589820    col_ueuegrupo 
   TABLE DATA               �   COPY test_ladm_all_models.col_ueuegrupo (t_id, t_ili_tid, parte_lc_terreno, parte_lc_servidumbretransito, parte_lc_unidadconstruccion, parte_lc_construccion) FROM stdin;
    test_ladm_all_models       postgres    false    903   �}      �&          0    591334 "   col_unidadadministrativabasicatipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_unidadadministrativabasicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1056   �}      �&          0    591424    col_unidadedificaciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_unidadedificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1066   :      &          0    589857    col_unidadfuente 
   TABLE DATA               h   COPY test_ladm_all_models.col_unidadfuente (t_id, t_ili_tid, fuente_administrativa, unidad) FROM stdin;
    test_ladm_all_models       postgres    false    907   �      �&          0    591019    col_volumentipo 
   TABLE DATA               �   COPY test_ladm_all_models.col_volumentipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1021   �      &          0    589809    col_volumenvalor 
   TABLE DATA               �   COPY test_ladm_all_models.col_volumenvalor (t_id, t_seq, volumen_medicion, tipo, lc_construccion_volumen, lc_terreno_volumen, lc_servidumbretransito_volumen, lc_unidadconstruccion_volumen) FROM stdin;
    test_ladm_all_models       postgres    false    902   J�      &          0    589797 
   extarchivo 
   TABLE DATA                 COPY test_ladm_all_models.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo, lc_fuenteadministrtiva_ext_archivo_id, lc_fuenteespacial_ext_archivo_id) FROM stdin;
    test_ladm_all_models       postgres    false    901   g�      &          0    589722    extdireccion 
   TABLE DATA               (  COPY test_ladm_all_models.extdireccion (t_id, t_seq, tipo_direccion, es_direccion_principal, localizacion, codigo_postal, clase_via_principal, valor_via_principal, letra_via_principal, sector_ciudad, valor_via_generadora, letra_via_generadora, numero_predio, sector_predio, complemento, nombre_predio, extunidadedificcnfsica_ext_direccion_id, extinteresado_ext_direccion_id, lc_construccion_ext_direccion_id, lc_predio_direccion, lc_terreno_ext_direccion_id, lc_servidumbretransito_ext_direccion_id, lc_unidadconstruccion_ext_direccion_id) FROM stdin;
    test_ladm_all_models       postgres    false    894   ��      �&          0    591397     extdireccion_clase_via_principal 
   TABLE DATA               �   COPY test_ladm_all_models.extdireccion_clase_via_principal (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1063   ��      �&          0    591460    extdireccion_sector_ciudad 
   TABLE DATA               �   COPY test_ladm_all_models.extdireccion_sector_ciudad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1070   ��      x&          0    590884    extdireccion_sector_predio 
   TABLE DATA               �   COPY test_ladm_all_models.extdireccion_sector_predio (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1006    �      �&          0    591487    extdireccion_tipo_direccion 
   TABLE DATA               �   COPY test_ladm_all_models.extdireccion_tipo_direccion (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1073   ��      &          0    589779    extinteresado 
   TABLE DATA               �   COPY test_ladm_all_models.extinteresado (t_id, t_seq, nombre, documento_escaneado, extredserviciosfisica_ext_interesado_administrador_id, lc_agrupacionintersdos_ext_pid, lc_interesado_ext_pid) FROM stdin;
    test_ladm_all_models       postgres    false    899    �      &          0    589791    extredserviciosfisica 
   TABLE DATA               U   COPY test_ladm_all_models.extredserviciosfisica (t_id, t_seq, orientada) FROM stdin;
    test_ladm_all_models       postgres    false    900   =�      &          0    589764    extunidadedificacionfisica 
   TABLE DATA               O   COPY test_ladm_all_models.extunidadedificacionfisica (t_id, t_seq) FROM stdin;
    test_ladm_all_models       postgres    false    897   Z�      	&          0    589743    fraccion 
   TABLE DATA               �   COPY test_ladm_all_models.fraccion (t_id, t_seq, denominador, numerador, col_miembros_participacion, lc_predio_copropiedad_coeficiente) FROM stdin;
    test_ladm_all_models       postgres    false    895   w�      &&          0    590013 	   gc_barrio 
   TABLE DATA               l   COPY test_ladm_all_models.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    924   ��      '&          0    590023 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_ladm_all_models.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
    test_ladm_all_models       postgres    false    925   ��      (&          0    590033    gc_comisionesconstruccion 
   TABLE DATA               m   COPY test_ladm_all_models.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    926   ΃      )&          0    590043    gc_comisionesterreno 
   TABLE DATA               h   COPY test_ladm_all_models.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    927   �      *&          0    590053    gc_comisionesunidadconstruccion 
   TABLE DATA               s   COPY test_ladm_all_models.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    928   �      �&          0    591118    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_all_models.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1032   %�      +&          0    590063    gc_construccion 
   TABLE DATA                 COPY test_ladm_all_models.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
    test_ladm_all_models       postgres    false    929   *�      9&          0    590201    gc_copropiedad 
   TABLE DATA               k   COPY test_ladm_all_models.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
    test_ladm_all_models       postgres    false    943   G�      ,&          0    590075    gc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_all_models.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
    test_ladm_all_models       postgres    false    930   d�      -&          0    590082    gc_datostorreph 
   TABLE DATA               �   COPY test_ladm_all_models.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
    test_ladm_all_models       postgres    false    931   ��      .&          0    590089    gc_direccion 
   TABLE DATA               �   COPY test_ladm_all_models.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
    test_ladm_all_models       postgres    false    932   ��      /&          0    590100    gc_estadopredio 
   TABLE DATA               �   COPY test_ladm_all_models.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
    test_ladm_all_models       postgres    false    933   ��      0&          0    590107 
   gc_manzana 
   TABLE DATA               v   COPY test_ladm_all_models.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    934   ؇      1&          0    590117    gc_perimetro 
   TABLE DATA               �   COPY test_ladm_all_models.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    935   ��      8&          0    590190    gc_prediocatastro 
   TABLE DATA                 COPY test_ladm_all_models.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
    test_ladm_all_models       postgres    false    942   �      2&          0    590127    gc_propietario 
   TABLE DATA               �   COPY test_ladm_all_models.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
    test_ladm_all_models       postgres    false    936   /�      3&          0    590137    gc_sectorrural 
   TABLE DATA               Z   COPY test_ladm_all_models.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    937   L�      4&          0    590147    gc_sectorurbano 
   TABLE DATA               [   COPY test_ladm_all_models.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    938   i�      �&          0    591127    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_ladm_all_models.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1033   ��      5&          0    590157 
   gc_terreno 
   TABLE DATA               �   COPY test_ladm_all_models.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
    test_ladm_all_models       postgres    false    939   <�      6&          0    590168    gc_unidadconstruccion 
   TABLE DATA               :  COPY test_ladm_all_models.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
    test_ladm_all_models       postgres    false    940   Y�      �&          0    591163    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1037   v�      7&          0    590180 	   gc_vereda 
   TABLE DATA               }   COPY test_ladm_all_models.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_all_models       postgres    false    941   D�      &          0    589667    gm_curve3dlistvalue 
   TABLE DATA               j   COPY test_ladm_all_models.gm_curve3dlistvalue (t_id, t_seq, avalue, gm_multicurve3d_geometry) FROM stdin;
    test_ladm_all_models       postgres    false    888   a�      &          0    589689    gm_multicurve3d 
   TABLE DATA               D   COPY test_ladm_all_models.gm_multicurve3d (t_id, t_seq) FROM stdin;
    test_ladm_all_models       postgres    false    890   ~�      &          0    589661    gm_multisurface2d 
   TABLE DATA               F   COPY test_ladm_all_models.gm_multisurface2d (t_id, t_seq) FROM stdin;
    test_ladm_all_models       postgres    false    887   ��      &          0    589695    gm_multisurface3d 
   TABLE DATA               F   COPY test_ladm_all_models.gm_multisurface3d (t_id, t_seq) FROM stdin;
    test_ladm_all_models       postgres    false    891   ��       &          0    589650    gm_surface2dlistvalue 
   TABLE DATA               n   COPY test_ladm_all_models.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
    test_ladm_all_models       postgres    false    886   Պ      &          0    589678    gm_surface3dlistvalue 
   TABLE DATA               n   COPY test_ladm_all_models.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
    test_ladm_all_models       postgres    false    889   �      &          0    589770    imagen 
   TABLE DATA               �   COPY test_ladm_all_models.imagen (t_id, t_seq, uri, extinteresado_huella_dactilar, extinteresado_fotografia, extinteresado_firma) FROM stdin;
    test_ladm_all_models       postgres    false    898   �      �&          0    591361    ini_emparejamientotipo 
   TABLE DATA               �   COPY test_ladm_all_models.ini_emparejamientotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1059   ,�      A&          0    590275    ini_predioinsumos 
   TABLE DATA               �   COPY test_ladm_all_models.ini_predioinsumos (t_id, t_ili_tid, tipo_emparejamiento, observaciones, gc_predio_catastro, snr_predio_juridico) FROM stdin;
    test_ladm_all_models       postgres    false    951   r�      �&          0    591154    lc_acuerdotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_acuerdotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1036   ��      B&          0    590287    lc_agrupacioninteresados 
   TABLE DATA               �   COPY test_ladm_all_models.lc_agrupacioninteresados (t_id, t_ili_tid, tipo, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    952   3�      �&          0    591082    lc_anexotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_anexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1028   P�      V&          0    590531    lc_calificacionconvencional 
   TABLE DATA               �   COPY test_ladm_all_models.lc_calificacionconvencional (t_id, t_ili_tid, tipo_calificar, total_calificacion, lc_unidad_construccion) FROM stdin;
    test_ladm_all_models       postgres    false    972   ޜ      W&          0    590540    lc_calificacionnoconvencional 
   TABLE DATA               z   COPY test_ladm_all_models.lc_calificacionnoconvencional (t_id, t_ili_tid, tipo_anexo, lc_unidad_construccion) FROM stdin;
    test_ladm_all_models       postgres    false    973   ��      �&          0    591469    lc_calificartipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_calificartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1071   �      �&          0    591289    lc_categoriasuelotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_categoriasuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1051   �      �&          0    591325    lc_clasecalificaciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_clasecalificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1055   ?�      �&          0    591136    lc_clasesuelotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_clasesuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1034   ��      �&          0    591037    lc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1023   ŧ      C&          0    590298    lc_construccion 
   TABLE DATA               �  COPY test_ladm_all_models.lc_construccion (t_id, t_ili_tid, identificador, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, anio_construccion, avaluo_construccion, area_construccion, altura, observaciones, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    953   Ѫ      �&          0    591181    lc_construccionplantatipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_construccionplantatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1039   �      �&          0    591343    lc_construcciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_construcciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1057   o�      D&          0    590313    lc_contactovisita 
   TABLE DATA               }  COPY test_ladm_all_models.lc_contactovisita (t_id, t_ili_tid, tipo_documento_quien_atendio, numero_documento_quien_atendio, primer_nombre_quien_atendio, segundo_nombre_quien_atendio, primer_apellido_quien_atendio, segundo_apellido_quien_atendio, relacion_con_predio, domicilio_notificaciones, celular, correo_electronico, autoriza_notificaciones, lc_datos_adicionales) FROM stdin;
    test_ladm_all_models       postgres    false    954   9�      X&          0    590549 )   lc_datosadicionaleslevantamientocatastral 
   TABLE DATA               �  COPY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral (t_id, t_ili_tid, tiene_area_registral, area_registral_m2, procedimiento_catastral_registral, destinacion_economica, clase_suelo, categoria_suelo, observaciones, fecha_visita_predial, tipo_documento_reconocedor, numero_documento_reconocedor, primer_nombre_reconocedor, segundo_nombre_reconocedor, primer_apellido_reconocedor, segundo_apellido_reconocedor, resultado_visita, suscribe_acta_colindancia, lc_predio) FROM stdin;
    test_ladm_all_models       postgres    false    974   V�      E&          0    590326    lc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_all_models.lc_datosphcondominio (t_id, t_ili_tid, area_total_terreno, area_total_terreno_privada, area_total_terreno_comun, area_total_construida, area_total_construida_privada, area_total_construida_comun, numero_torres, total_unidades_privadas, lc_predio) FROM stdin;
    test_ladm_all_models       postgres    false    955   s�      F&          0    590334 
   lc_derecho 
   TABLE DATA                 COPY test_ladm_all_models.lc_derecho (t_id, t_ili_tid, tipo, fraccion_derecho, fecha_inicio_tenencia, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    956   ��      �&          0    591523    lc_derechotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_derechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1077   ��      �&          0    591199    lc_destinacioneconomicatipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_destinacioneconomicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1041   u�      �&          0    591406    lc_dominioconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_dominioconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1064   �      �&          0    591442    lc_estadoconservaciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_estadoconservaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1068   ��      G&          0    590348    lc_estructuranovedadfmi 
   TABLE DATA               �   COPY test_ladm_all_models.lc_estructuranovedadfmi (t_id, t_seq, codigo_orip, numero_fmi, lc_dtsdcnlstmntctstral_novedad_fmi) FROM stdin;
    test_ladm_all_models       postgres    false    957   a�      H&          0    590355 !   lc_estructuranovedadnumeropredial 
   TABLE DATA               �   COPY test_ladm_all_models.lc_estructuranovedadnumeropredial (t_id, t_seq, numero_predial, tipo_novedad, lc_dtsdcnlstmntctstral_novedad_numeros_prediales) FROM stdin;
    test_ladm_all_models       postgres    false    958   ~�      �&          0    591145 .   lc_estructuranovedadnumeropredial_tipo_novedad 
   TABLE DATA               �   COPY test_ladm_all_models.lc_estructuranovedadnumeropredial_tipo_novedad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1035   ��      ~&          0    590938    lc_fotoidentificaciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_fotoidentificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1012   ��      I&          0    590363    lc_fuenteadministrativa 
   TABLE DATA               �   COPY test_ladm_all_models.lc_fuenteadministrativa (t_id, t_ili_tid, tipo, ente_emisor, observacion, numero_fuente, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    959   x�      �&          0    591109    lc_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1031   ��      J&          0    590376    lc_fuenteespacial 
   TABLE DATA               �   COPY test_ladm_all_models.lc_fuenteespacial (t_id, t_ili_tid, nombre, tipo, descripcion, metadato, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    960   /�      K&          0    590389    lc_grupocalificacion 
   TABLE DATA               �   COPY test_ladm_all_models.lc_grupocalificacion (t_id, t_ili_tid, clase_calificacion, conservacion, subtotal, lc_calificacion_convencional) FROM stdin;
    test_ladm_all_models       postgres    false    961   L�      �&          0    591172    lc_grupoetnicotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_grupoetnicotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1038   i�      L&          0    590399    lc_interesado 
   TABLE DATA               .  COPY test_ladm_all_models.lc_interesado (t_id, t_ili_tid, tipo, tipo_documento, documento_identidad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, sexo, grupo_etnico, razon_social, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    962   �      M&          0    590413    lc_interesadocontacto 
   TABLE DATA                 COPY test_ladm_all_models.lc_interesadocontacto (t_id, t_ili_tid, telefono1, telefono2, domicilio_notificacion, direccion_residencia, correo_electronico, autoriza_notificacion_correo, departamento, municipio, vereda, corregimiento, lc_interesado) FROM stdin;
    test_ladm_all_models       postgres    false    963   !�      v&          0    590866    lc_interesadodocumentotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_interesadodocumentotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1004   >�      �&          0    591451    lc_interesadotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_interesadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1069   3�      N&          0    590424 
   lc_lindero 
   TABLE DATA               �   COPY test_ladm_all_models.lc_lindero (t_id, t_ili_tid, longitud, geometria, localizacion_textual, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    964   c�      O&          0    590435    lc_objetoconstruccion 
   TABLE DATA               �   COPY test_ladm_all_models.lc_objetoconstruccion (t_id, t_ili_tid, tipo_objeto_construccion, puntos, lc_grupo_calificacion) FROM stdin;
    test_ladm_all_models       postgres    false    965   ��      �&          0    591073    lc_objetoconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_objetoconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1027   ��      P&          0    590444    lc_ofertasmercadoinmobiliario 
   TABLE DATA               �   COPY test_ladm_all_models.lc_ofertasmercadoinmobiliario (t_id, t_ili_tid, tipo_oferta, valor_pedido, valor_negociado, fecha_captura_oferta, tiempo_oferta_mercado, numero_contacto_oferente, nombre_oferente, lc_predio) FROM stdin;
    test_ladm_all_models       postgres    false    966   w�      �&          0    591496    lc_ofertatipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_ofertatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1074   ��      Q&          0    590453 	   lc_predio 
   TABLE DATA               L  COPY test_ladm_all_models.lc_predio (t_id, t_ili_tid, departamento, municipio, id_operacion, tiene_fmi, codigo_orip, matricula_inmobiliaria, numero_predial, numero_predial_anterior, nupre, avaluo_catastral, tipo, condicion_predio, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    967   ��      [&          0    590595    lc_predio_copropiedad 
   TABLE DATA               X   COPY test_ladm_all_models.lc_predio_copropiedad (t_id, predio, copropiedad) FROM stdin;
    test_ladm_all_models       postgres    false    977   ��      \&          0    590603    lc_predio_ini_predioinsumos 
   TABLE DATA               s   COPY test_ladm_all_models.lc_predio_ini_predioinsumos (t_id, t_ili_tid, ini_predio_insumos, lc_predio) FROM stdin;
    test_ladm_all_models       postgres    false    978   ��      w&          0    590875    lc_prediotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_prediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1005   ��      �&          0    591532 &   lc_procedimientocatastralregistraltipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_procedimientocatastralregistraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1078   �      R&          0    590465    lc_puntocontrol 
   TABLE DATA               �  COPY test_ladm_all_models.lc_puntocontrol (t_id, t_ili_tid, id_punto_control, puntotipo, tipo_punto_control, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    968   A�      �&          0    591541    lc_puntocontroltipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_puntocontroltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1079   ^�      Y&          0    590566    lc_puntolevantamiento 
   TABLE DATA               �  COPY test_ladm_all_models.lc_puntolevantamiento (t_id, t_ili_tid, id_punto_levantamiento, puntotipo, tipo_punto_levantamiento, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    975   q�      �&          0    590956    lc_puntolevtipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_puntolevtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1014   ��      S&          0    590484    lc_puntolindero 
   TABLE DATA               �  COPY test_ladm_all_models.lc_puntolindero (t_id, t_ili_tid, id_punto_lindero, puntotipo, acuerdo, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, ue_lc_construccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    969   W�      �&          0    590965    lc_puntotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1015   t�      �&          0    591379    lc_relacionprediotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_relacionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1061   O�      T&          0    590504    lc_restriccion 
   TABLE DATA               �   COPY test_ladm_all_models.lc_restriccion (t_id, t_ili_tid, tipo, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    970   ��      �&          0    591226    lc_restricciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_restricciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1044   ��      �&          0    590974    lc_resultadovisitatipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_resultadovisitatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1016   ��      ]&          0    590611    lc_servidumbretransito 
   TABLE DATA               �   COPY test_ladm_all_models.lc_servidumbretransito (t_id, t_ili_tid, area_servidumbre, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    979   ��      �&          0    591028    lc_sexotipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_sexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1022   ��      U&          0    590518 
   lc_terreno 
   TABLE DATA               �   COPY test_ladm_all_models.lc_terreno (t_id, t_ili_tid, area_terreno, avaluo_terreno, manzana_vereda_codigo, geometria, dimension, etiqueta, relacion_superficie, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    971   d�      Z&          0    590586    lc_tipologiaconstruccion 
   TABLE DATA               y   COPY test_ladm_all_models.lc_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, lc_unidad_construccion) FROM stdin;
    test_ladm_all_models       postgres    false    976   ��      y&          0    590893    lc_tipologiatipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1007   ��      ^&          0    590624    lc_unidadconstruccion 
   TABLE DATA                 COPY test_ladm_all_models.lc_unidadconstruccion (t_id, t_ili_tid, identificador, tipo_dominio, tipo_construccion, tipo_unidad_construccion, tipo_planta, planta_ubicacion, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, avaluo_unidad_construccion, area_construida, area_privada_construida, altura, observaciones, lc_construccion, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_all_models       postgres    false    980   ��      &          0    590947    lc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1013   ��      �&          0    591253    lc_usouconstipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1047   ��      �&          0    591100 
   lc_viatipo 
   TABLE DATA               �   COPY test_ladm_all_models.lc_viatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1030   F      �&          0    591559    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_ladm_all_models.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1081   
!      �&          0    591244    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_ladm_all_models.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1046   �%      :&          0    590209    snr_derecho 
   TABLE DATA               �   COPY test_ladm_all_models.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
    test_ladm_all_models       postgres    false    944   M(      �&          0    591505    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_ladm_all_models.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1075   j(      ;&          0    590218    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_ladm_all_models.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
    test_ladm_all_models       postgres    false    945   �+      <&          0    590225    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_ladm_all_models.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_all_models       postgres    false    946   �+      =&          0    590235    snr_fuentederecho 
   TABLE DATA               �   COPY test_ladm_all_models.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_all_models       postgres    false    947   �+      �&          0    591208    snr_fuentetipo 
   TABLE DATA               �   COPY test_ladm_all_models.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1042   �+      �&          0    591352    snr_personatitulartipo 
   TABLE DATA               �   COPY test_ladm_all_models.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_all_models       postgres    false    1058   ~.      ?&          0    590256    snr_predioregistro 
   TABLE DATA                 COPY test_ladm_all_models.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
    test_ladm_all_models       postgres    false    949   �/      >&          0    590245    snr_titular 
   TABLE DATA               �   COPY test_ladm_all_models.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
    test_ladm_all_models       postgres    false    948   �/      @&          0    590267    snr_titular_derecho 
   TABLE DATA               �   COPY test_ladm_all_models.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
    test_ladm_all_models       postgres    false    950   �/      �&          0    591576    t_ili2db_attrname 
   TABLE DATA               ]   COPY test_ladm_all_models.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
    test_ladm_all_models       postgres    false    1083   �/      p&          0    590822    t_ili2db_basket 
   TABLE DATA               p   COPY test_ladm_all_models.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
    test_ladm_all_models       postgres    false    998   ^V      �&          0    591568    t_ili2db_classname 
   TABLE DATA               L   COPY test_ladm_all_models.t_ili2db_classname (iliname, sqlname) FROM stdin;
    test_ladm_all_models       postgres    false    1082   {V      �&          0    591584    t_ili2db_column_prop 
   TABLE DATA               j   COPY test_ladm_all_models.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
    test_ladm_all_models       postgres    false    1084   �c      q&          0    590831    t_ili2db_dataset 
   TABLE DATA               K   COPY test_ladm_all_models.t_ili2db_dataset (t_id, datasetname) FROM stdin;
    test_ladm_all_models       postgres    false    999   �      r&          0    590836    t_ili2db_inheritance 
   TABLE DATA               R   COPY test_ladm_all_models.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
    test_ladm_all_models       postgres    false    1000   �      �&          0    591596    t_ili2db_meta_attrs 
   TABLE DATA               ^   COPY test_ladm_all_models.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
    test_ladm_all_models       postgres    false    1086   ��      u&          0    590858    t_ili2db_model 
   TABLE DATA               l   COPY test_ladm_all_models.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
    test_ladm_all_models       postgres    false    1003   ��      s&          0    590844    t_ili2db_settings 
   TABLE DATA               G   COPY test_ladm_all_models.t_ili2db_settings (tag, setting) FROM stdin;
    test_ladm_all_models       postgres    false    1001         �&          0    591590    t_ili2db_table_prop 
   TABLE DATA               T   COPY test_ladm_all_models.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
    test_ladm_all_models       postgres    false    1085   z	      t&          0    590852    t_ili2db_trafo 
   TABLE DATA               M   COPY test_ladm_all_models.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
    test_ladm_all_models       postgres    false    1002   �      )           0    0    t_ili2db_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('test_ladm_all_models.t_ili2db_seq', 852, true);
            test_ladm_all_models       postgres    false    885            j$           2606    591441 8   av_disponibilidadaguatipo av_disponibilidadaguatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_disponibilidadaguatipo
    ADD CONSTRAINT av_disponibilidadaguatipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_all_models.av_disponibilidadaguatipo DROP CONSTRAINT av_disponibilidadaguatipo_pkey;
       test_ladm_all_models         postgres    false    1067            �#           2606    590910 :   av_influenciavialruraltipo av_influenciavialruraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_influenciavialruraltipo
    ADD CONSTRAINT av_influenciavialruraltipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_all_models.av_influenciavialruraltipo DROP CONSTRAINT av_influenciavialruraltipo_pkey;
       test_ladm_all_models         postgres    false    1008            $           2606    591018 <   av_influenciavialurbanatipo av_influenciavialurbanatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_influenciavialurbanatipo
    ADD CONSTRAINT av_influenciavialurbanatipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_all_models.av_influenciavialurbanatipo DROP CONSTRAINT av_influenciavialurbanatipo_pkey;
       test_ladm_all_models         postgres    false    1020            `$           2606    591396 6   av_serviciospublicostipo av_serviciospublicostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_serviciospublicostipo
    ADD CONSTRAINT av_serviciospublicostipo_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_all_models.av_serviciospublicostipo DROP CONSTRAINT av_serviciospublicostipo_pkey;
       test_ladm_all_models         postgres    false    1062            �#           2606    590649 F   av_tablacalificacionconstruccion av_tablacalificacionconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_tablacalificacionconstruccion
    ADD CONSTRAINT av_tablacalificacionconstruccion_pkey PRIMARY KEY (t_id);
 ~   ALTER TABLE ONLY test_ladm_all_models.av_tablacalificacionconstruccion DROP CONSTRAINT av_tablacalificacionconstruccion_pkey;
       test_ladm_all_models         postgres    false    981            $           2606    591054 D   av_tipificacionconstrucciontipo av_tipificacionconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_tipificacionconstrucciontipo
    ADD CONSTRAINT av_tipificacionconstrucciontipo_pkey PRIMARY KEY (t_id);
 |   ALTER TABLE ONLY test_ladm_all_models.av_tipificacionconstrucciontipo DROP CONSTRAINT av_tipificacionconstrucciontipo_pkey;
       test_ladm_all_models         postgres    false    1024            �#           2606    590657 6   av_tipologiaconstruccion av_tipologiaconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_tipologiaconstruccion
    ADD CONSTRAINT av_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_all_models.av_tipologiaconstruccion DROP CONSTRAINT av_tipologiaconstruccion_pkey;
       test_ladm_all_models         postgres    false    982            $           2606    591063 &   av_tipologiatipo av_tipologiatipo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_all_models.av_tipologiatipo
    ADD CONSTRAINT av_tipologiatipo_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_all_models.av_tipologiatipo DROP CONSTRAINT av_tipologiatipo_pkey;
       test_ladm_all_models         postgres    false    1025            �#           2606    590919 0   av_topografiazonatipo av_topografiazonatipo_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.av_topografiazonatipo
    ADD CONSTRAINT av_topografiazonatipo_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.av_topografiazonatipo DROP CONSTRAINT av_topografiazonatipo_pkey;
       test_ladm_all_models         postgres    false    1009            
$           2606    591009 .   av_usosueloruraltipo av_usosueloruraltipo_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_all_models.av_usosueloruraltipo
    ADD CONSTRAINT av_usosueloruraltipo_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_all_models.av_usosueloruraltipo DROP CONSTRAINT av_usosueloruraltipo_pkey;
       test_ladm_all_models         postgres    false    1019            N$           2606    591315 0   av_usosuelourbanotipo av_usosuelourbanotipo_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.av_usosuelourbanotipo
    ADD CONSTRAINT av_usosuelourbanotipo_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.av_usosuelourbanotipo DROP CONSTRAINT av_usosuelourbanotipo_pkey;
       test_ladm_all_models         postgres    false    1053            �#           2606    590928 $   av_usouconstipo av_usouconstipo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.av_usouconstipo
    ADD CONSTRAINT av_usouconstipo_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.av_usouconstipo DROP CONSTRAINT av_usouconstipo_pkey;
       test_ladm_all_models         postgres    false    1010            �#           2606    590668 <   av_zonahomogeneafisicarural av_zonahomogeneafisicarural_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicarural
    ADD CONSTRAINT av_zonahomogeneafisicarural_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicarural DROP CONSTRAINT av_zonahomogeneafisicarural_pkey;
       test_ladm_all_models         postgres    false    983            �#           2606    590682 >   av_zonahomogeneafisicaurbana av_zonahomogeneafisicaurbana_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicaurbana_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicaurbana_pkey;
       test_ladm_all_models         postgres    false    984            �#           2606    590709 H   av_zonahomogeneageoeconomicarural av_zonahomogeneageoeconomicarural_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneageoeconomicarural
    ADD CONSTRAINT av_zonahomogeneageoeconomicarural_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneageoeconomicarural DROP CONSTRAINT av_zonahomogeneageoeconomicarural_pkey;
       test_ladm_all_models         postgres    false    986            �#           2606    590698 J   av_zonahomogeneageoeconomicaurbana av_zonahomogeneageoeconomicaurbana_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneageoeconomicaurbana
    ADD CONSTRAINT av_zonahomogeneageoeconomicaurbana_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneageoeconomicaurbana DROP CONSTRAINT av_zonahomogeneageoeconomicaurbana_pkey;
       test_ladm_all_models         postgres    false    985            �#           2606    590820    cc_barrio cc_barrio_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY test_ladm_all_models.cc_barrio
    ADD CONSTRAINT cc_barrio_pkey PRIMARY KEY (t_id);
 P   ALTER TABLE ONLY test_ladm_all_models.cc_barrio DROP CONSTRAINT cc_barrio_pkey;
       test_ladm_all_models         postgres    false    997            �#           2606    590719 &   cc_centropoblado cc_centropoblado_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_all_models.cc_centropoblado
    ADD CONSTRAINT cc_centropoblado_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_all_models.cc_centropoblado DROP CONSTRAINT cc_centropoblado_pkey;
       test_ladm_all_models         postgres    false    987            �#           2606    590729 &   cc_corregimiento cc_corregimiento_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_all_models.cc_corregimiento
    ADD CONSTRAINT cc_corregimiento_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_all_models.cc_corregimiento DROP CONSTRAINT cc_corregimiento_pkey;
       test_ladm_all_models         postgres    false    988            �#           2606    590739 *   cc_limitemunicipio cc_limitemunicipio_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_all_models.cc_limitemunicipio
    ADD CONSTRAINT cc_limitemunicipio_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_all_models.cc_limitemunicipio DROP CONSTRAINT cc_limitemunicipio_pkey;
       test_ladm_all_models         postgres    false    989            �#           2606    590810 *   cc_localidadcomuna cc_localidadcomuna_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_all_models.cc_localidadcomuna
    ADD CONSTRAINT cc_localidadcomuna_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_all_models.cc_localidadcomuna DROP CONSTRAINT cc_localidadcomuna_pkey;
       test_ladm_all_models         postgres    false    996            �#           2606    590749    cc_manzana cc_manzana_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_all_models.cc_manzana
    ADD CONSTRAINT cc_manzana_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_all_models.cc_manzana DROP CONSTRAINT cc_manzana_pkey;
       test_ladm_all_models         postgres    false    990            �!           2606    589706 *   cc_metodooperacion cc_metodooperacion_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_all_models.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_all_models.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_pkey;
       test_ladm_all_models         postgres    false    892            �#           2606    590759 ,   cc_nomenclaturavial cc_nomenclaturavial_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_all_models.cc_nomenclaturavial
    ADD CONSTRAINT cc_nomenclaturavial_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_all_models.cc_nomenclaturavial DROP CONSTRAINT cc_nomenclaturavial_pkey;
       test_ladm_all_models         postgres    false    991            t$           2606    591486 >   cc_nomenclaturavial_tipo_via cc_nomenclaturavial_tipo_via_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.cc_nomenclaturavial_tipo_via
    ADD CONSTRAINT cc_nomenclaturavial_tipo_via_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_all_models.cc_nomenclaturavial_tipo_via DROP CONSTRAINT cc_nomenclaturavial_tipo_via_pkey;
       test_ladm_all_models         postgres    false    1072            �#           2606    590770 *   cc_perimetrourbano cc_perimetrourbano_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_all_models.cc_perimetrourbano
    ADD CONSTRAINT cc_perimetrourbano_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_all_models.cc_perimetrourbano DROP CONSTRAINT cc_perimetrourbano_pkey;
       test_ladm_all_models         postgres    false    992            �#           2606    590780 "   cc_sectorrural cc_sectorrural_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_all_models.cc_sectorrural
    ADD CONSTRAINT cc_sectorrural_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_all_models.cc_sectorrural DROP CONSTRAINT cc_sectorrural_pkey;
       test_ladm_all_models         postgres    false    993            �#           2606    590790 $   cc_sectorurbano cc_sectorurbano_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.cc_sectorurbano
    ADD CONSTRAINT cc_sectorurbano_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.cc_sectorurbano DROP CONSTRAINT cc_sectorurbano_pkey;
       test_ladm_all_models         postgres    false    994            �#           2606    590800    cc_vereda cc_vereda_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY test_ladm_all_models.cc_vereda
    ADD CONSTRAINT cc_vereda_pkey PRIMARY KEY (t_id);
 P   ALTER TABLE ONLY test_ladm_all_models.cc_vereda DROP CONSTRAINT cc_vereda_pkey;
       test_ladm_all_models         postgres    false    995            �#           2606    590937 >   ci_forma_presentacion_codigo ci_forma_presentacion_codigo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.ci_forma_presentacion_codigo
    ADD CONSTRAINT ci_forma_presentacion_codigo_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_all_models.ci_forma_presentacion_codigo DROP CONSTRAINT ci_forma_presentacion_codigo_pkey;
       test_ladm_all_models         postgres    false    1011            P$           2606    591324    col_areatipo col_areatipo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.col_areatipo
    ADD CONSTRAINT col_areatipo_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.col_areatipo DROP CONSTRAINT col_areatipo_pkey;
       test_ladm_all_models         postgres    false    1054            �!           2606    589716     col_areavalor col_areavalor_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_all_models.col_areavalor
    ADD CONSTRAINT col_areavalor_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_all_models.col_areavalor DROP CONSTRAINT col_areavalor_pkey;
       test_ladm_all_models         postgres    false    893            �"           2606    589982 6   col_baunitcomointeresado col_baunitcomointeresado_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_all_models.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_pkey;
       test_ladm_all_models         postgres    false    920            W"           2606    589891 &   col_baunitfuente col_baunitfuente_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_all_models.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_all_models.col_baunitfuente DROP CONSTRAINT col_baunitfuente_pkey;
       test_ladm_all_models         postgres    false    910            _"           2606    589906     col_cclfuente col_cclfuente_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_all_models.col_cclfuente
    ADD CONSTRAINT col_cclfuente_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_all_models.col_cclfuente DROP CONSTRAINT col_cclfuente_pkey;
       test_ladm_all_models         postgres    false    912            v"           2606    589946    col_clfuente col_clfuente_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.col_clfuente
    ADD CONSTRAINT col_clfuente_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.col_clfuente DROP CONSTRAINT col_clfuente_pkey;
       test_ladm_all_models         postgres    false    916            :$           2606    591225 2   col_contenidoniveltipo col_contenidoniveltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_contenidoniveltipo
    ADD CONSTRAINT col_contenidoniveltipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_all_models.col_contenidoniveltipo DROP CONSTRAINT col_contenidoniveltipo_pkey;
       test_ladm_all_models         postgres    false    1043            �$           2606    591558 (   col_dimensiontipo col_dimensiontipo_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_all_models.col_dimensiontipo
    ADD CONSTRAINT col_dimensiontipo_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_all_models.col_dimensiontipo DROP CONSTRAINT col_dimensiontipo_pkey;
       test_ladm_all_models         postgres    false    1080            f$           2606    591423 >   col_estadodisponibilidadtipo col_estadodisponibilidadtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_estadodisponibilidadtipo
    ADD CONSTRAINT col_estadodisponibilidadtipo_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_all_models.col_estadodisponibilidadtipo DROP CONSTRAINT col_estadodisponibilidadtipo_pkey;
       test_ladm_all_models         postgres    false    1065            F$           2606    591279 :   col_estadoredserviciostipo col_estadoredserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_estadoredserviciostipo
    ADD CONSTRAINT col_estadoredserviciostipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_all_models.col_estadoredserviciostipo DROP CONSTRAINT col_estadoredserviciostipo_pkey;
       test_ladm_all_models         postgres    false    1049            |$           2606    591522 *   col_estructuratipo col_estructuratipo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_all_models.col_estructuratipo
    ADD CONSTRAINT col_estructuratipo_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_all_models.col_estructuratipo DROP CONSTRAINT col_estructuratipo_pkey;
       test_ladm_all_models         postgres    false    1076            $           2606    591099 >   col_fuenteadministrativatipo col_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_fuenteadministrativatipo
    ADD CONSTRAINT col_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_ladm_all_models.col_fuenteadministrativatipo DROP CONSTRAINT col_fuenteadministrativatipo_pkey;
       test_ladm_all_models         postgres    false    1029            \$           2606    591378 2   col_fuenteespacialtipo col_fuenteespacialtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_fuenteespacialtipo
    ADD CONSTRAINT col_fuenteespacialtipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_all_models.col_fuenteespacialtipo DROP CONSTRAINT col_fuenteespacialtipo_pkey;
       test_ladm_all_models         postgres    false    1060            >$           2606    591243 4   col_grupointeresadotipo col_grupointeresadotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_grupointeresadotipo
    ADD CONSTRAINT col_grupointeresadotipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_all_models.col_grupointeresadotipo DROP CONSTRAINT col_grupointeresadotipo_pkey;
       test_ladm_all_models         postgres    false    1045            4$           2606    591198 0   col_interpolaciontipo col_interpolaciontipo_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.col_interpolaciontipo
    ADD CONSTRAINT col_interpolaciontipo_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.col_interpolaciontipo DROP CONSTRAINT col_interpolaciontipo_pkey;
       test_ladm_all_models         postgres    false    1040            H$           2606    591288 (   col_iso19125_tipo col_iso19125_tipo_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_all_models.col_iso19125_tipo
    ADD CONSTRAINT col_iso19125_tipo_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_all_models.col_iso19125_tipo DROP CONSTRAINT col_iso19125_tipo_pkey;
       test_ladm_all_models         postgres    false    1050            i"           2606    589925    col_masccl col_masccl_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_all_models.col_masccl
    ADD CONSTRAINT col_masccl_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_all_models.col_masccl DROP CONSTRAINT col_masccl_pkey;
       test_ladm_all_models         postgres    false    914            ~"           2606    589963    col_mascl col_mascl_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY test_ladm_all_models.col_mascl
    ADD CONSTRAINT col_mascl_pkey PRIMARY KEY (t_id);
 P   ALTER TABLE ONLY test_ladm_all_models.col_mascl DROP CONSTRAINT col_mascl_pkey;
       test_ladm_all_models         postgres    false    918            b"           2606    589914    col_menosccl col_menosccl_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.col_menosccl
    ADD CONSTRAINT col_menosccl_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.col_menosccl DROP CONSTRAINT col_menosccl_pkey;
       test_ladm_all_models         postgres    false    913            x"           2606    589953    col_menoscl col_menoscl_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_all_models.col_menoscl
    ADD CONSTRAINT col_menoscl_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_all_models.col_menoscl DROP CONSTRAINT col_menoscl_pkey;
       test_ladm_all_models         postgres    false    917            $           2606    591072 6   col_metodoproducciontipo col_metodoproducciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_metodoproducciontipo
    ADD CONSTRAINT col_metodoproducciontipo_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_all_models.col_metodoproducciontipo DROP CONSTRAINT col_metodoproducciontipo_pkey;
       test_ladm_all_models         postgres    false    1026            �"           2606    590009    col_miembros col_miembros_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.col_miembros
    ADD CONSTRAINT col_miembros_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.col_miembros DROP CONSTRAINT col_miembros_pkey;
       test_ladm_all_models         postgres    false    923            p"           2606    589936    col_puntoccl col_puntoccl_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.col_puntoccl
    ADD CONSTRAINT col_puntoccl_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.col_puntoccl DROP CONSTRAINT col_puntoccl_pkey;
       test_ladm_all_models         postgres    false    915            �"           2606    589973    col_puntocl col_puntocl_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_all_models.col_puntocl
    ADD CONSTRAINT col_puntocl_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_all_models.col_puntocl DROP CONSTRAINT col_puntocl_pkey;
       test_ladm_all_models         postgres    false    919            J"           2606    589870 $   col_puntofuente col_puntofuente_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.col_puntofuente
    ADD CONSTRAINT col_puntofuente_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.col_puntofuente DROP CONSTRAINT col_puntofuente_pkey;
       test_ladm_all_models         postgres    false    908            D$           2606    591270     col_puntotipo col_puntotipo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_all_models.col_puntotipo
    ADD CONSTRAINT col_puntotipo_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_all_models.col_puntotipo DROP CONSTRAINT col_puntotipo_pkey;
       test_ladm_all_models         postgres    false    1048            $           2606    590991 .   col_redserviciostipo col_redserviciostipo_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_all_models.col_redserviciostipo
    ADD CONSTRAINT col_redserviciostipo_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_all_models.col_redserviciostipo DROP CONSTRAINT col_redserviciostipo_pkey;
       test_ladm_all_models         postgres    false    1017            $           2606    591000 &   col_registrotipo col_registrotipo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_all_models.col_registrotipo
    ADD CONSTRAINT col_registrotipo_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_all_models.col_registrotipo DROP CONSTRAINT col_registrotipo_pkey;
       test_ladm_all_models         postgres    false    1018            C"           2606    589855 *   col_relacionfuente col_relacionfuente_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_all_models.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_all_models.col_relacionfuente DROP CONSTRAINT col_relacionfuente_pkey;
       test_ladm_all_models         postgres    false    906            Z"           2606    589899 <   col_relacionfuenteuespacial col_relacionfuenteuespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespacial_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_all_models.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespacial_pkey;
       test_ladm_all_models         postgres    false    911            L$           2606    591306 :   col_relacionsuperficietipo col_relacionsuperficietipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_relacionsuperficietipo
    ADD CONSTRAINT col_relacionsuperficietipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_all_models.col_relacionsuperficietipo DROP CONSTRAINT col_relacionsuperficietipo_pkey;
       test_ladm_all_models         postgres    false    1052            �"           2606    589991 0   col_responsablefuente col_responsablefuente_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.col_responsablefuente DROP CONSTRAINT col_responsablefuente_pkey;
       test_ladm_all_models         postgres    false    921            7"           2606    589835     col_rrrfuente col_rrrfuente_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_all_models.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_all_models.col_rrrfuente DROP CONSTRAINT col_rrrfuente_pkey;
       test_ladm_all_models         postgres    false    904            �"           2606    590000 ,   col_topografofuente col_topografofuente_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_all_models.col_topografofuente
    ADD CONSTRAINT col_topografofuente_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_all_models.col_topografofuente DROP CONSTRAINT col_topografofuente_pkey;
       test_ladm_all_models         postgres    false    922            "           2606    589759 *   col_transformacion col_transformacion_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_all_models.col_transformacion
    ADD CONSTRAINT col_transformacion_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_all_models.col_transformacion DROP CONSTRAINT col_transformacion_pkey;
       test_ladm_all_models         postgres    false    896            <"           2606    589844    col_uebaunit col_uebaunit_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit
    ADD CONSTRAINT col_uebaunit_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit DROP CONSTRAINT col_uebaunit_pkey;
       test_ladm_all_models         postgres    false    905            P"           2606    589880    col_uefuente col_uefuente_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.col_uefuente
    ADD CONSTRAINT col_uefuente_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.col_uefuente DROP CONSTRAINT col_uefuente_pkey;
       test_ladm_all_models         postgres    false    909            4"           2606    589825     col_ueuegrupo col_ueuegrupo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_all_models.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_all_models.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_pkey;
       test_ladm_all_models         postgres    false    903            T$           2606    591342 J   col_unidadadministrativabasicatipo col_unidadadministrativabasicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_unidadadministrativabasicatipo
    ADD CONSTRAINT col_unidadadministrativabasicatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_all_models.col_unidadadministrativabasicatipo DROP CONSTRAINT col_unidadadministrativabasicatipo_pkey;
       test_ladm_all_models         postgres    false    1056            h$           2606    591432 8   col_unidadedificaciontipo col_unidadedificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_unidadedificaciontipo
    ADD CONSTRAINT col_unidadedificaciontipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_all_models.col_unidadedificaciontipo DROP CONSTRAINT col_unidadedificaciontipo_pkey;
       test_ladm_all_models         postgres    false    1066            F"           2606    589862 &   col_unidadfuente col_unidadfuente_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_all_models.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_all_models.col_unidadfuente DROP CONSTRAINT col_unidadfuente_pkey;
       test_ladm_all_models         postgres    false    907            $           2606    591027 $   col_volumentipo col_volumentipo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.col_volumentipo
    ADD CONSTRAINT col_volumentipo_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.col_volumentipo DROP CONSTRAINT col_volumentipo_pkey;
       test_ladm_all_models         postgres    false    1021            -"           2606    589814 &   col_volumenvalor col_volumenvalor_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor DROP CONSTRAINT col_volumenvalor_pkey;
       test_ladm_all_models         postgres    false    902            &"           2606    589805    extarchivo extarchivo_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_all_models.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_all_models.extarchivo DROP CONSTRAINT extarchivo_pkey;
       test_ladm_all_models         postgres    false    901            b$           2606    591405 F   extdireccion_clase_via_principal extdireccion_clase_via_principal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion_clase_via_principal
    ADD CONSTRAINT extdireccion_clase_via_principal_pkey PRIMARY KEY (t_id);
 ~   ALTER TABLE ONLY test_ladm_all_models.extdireccion_clase_via_principal DROP CONSTRAINT extdireccion_clase_via_principal_pkey;
       test_ladm_all_models         postgres    false    1063            "           2606    589730    extdireccion extdireccion_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_pkey;
       test_ladm_all_models         postgres    false    894            p$           2606    591468 :   extdireccion_sector_ciudad extdireccion_sector_ciudad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion_sector_ciudad
    ADD CONSTRAINT extdireccion_sector_ciudad_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_all_models.extdireccion_sector_ciudad DROP CONSTRAINT extdireccion_sector_ciudad_pkey;
       test_ladm_all_models         postgres    false    1070            �#           2606    590892 :   extdireccion_sector_predio extdireccion_sector_predio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion_sector_predio
    ADD CONSTRAINT extdireccion_sector_predio_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_all_models.extdireccion_sector_predio DROP CONSTRAINT extdireccion_sector_predio_pkey;
       test_ladm_all_models         postgres    false    1006            v$           2606    591495 <   extdireccion_tipo_direccion extdireccion_tipo_direccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion_tipo_direccion
    ADD CONSTRAINT extdireccion_tipo_direccion_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_all_models.extdireccion_tipo_direccion DROP CONSTRAINT extdireccion_tipo_direccion_pkey;
       test_ladm_all_models         postgres    false    1073             "           2606    589787     extinteresado extinteresado_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_all_models.extinteresado
    ADD CONSTRAINT extinteresado_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_all_models.extinteresado DROP CONSTRAINT extinteresado_pkey;
       test_ladm_all_models         postgres    false    899            ""           2606    589796 0   extredserviciosfisica extredserviciosfisica_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.extredserviciosfisica
    ADD CONSTRAINT extredserviciosfisica_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.extredserviciosfisica DROP CONSTRAINT extredserviciosfisica_pkey;
       test_ladm_all_models         postgres    false    900            "           2606    589769 :   extunidadedificacionfisica extunidadedificacionfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extunidadedificacionfisica
    ADD CONSTRAINT extunidadedificacionfisica_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_all_models.extunidadedificacionfisica DROP CONSTRAINT extunidadedificacionfisica_pkey;
       test_ladm_all_models         postgres    false    897            "           2606    589748    fraccion fraccion_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY test_ladm_all_models.fraccion
    ADD CONSTRAINT fraccion_pkey PRIMARY KEY (t_id);
 N   ALTER TABLE ONLY test_ladm_all_models.fraccion DROP CONSTRAINT fraccion_pkey;
       test_ladm_all_models         postgres    false    895            �"           2606    590021    gc_barrio gc_barrio_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY test_ladm_all_models.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 P   ALTER TABLE ONLY test_ladm_all_models.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
       test_ladm_all_models         postgres    false    924            �"           2606    590031 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_all_models.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
       test_ladm_all_models         postgres    false    925            �"           2606    590041 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_all_models.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
       test_ladm_all_models         postgres    false    926            �"           2606    590051 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_all_models.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_all_models.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
       test_ladm_all_models         postgres    false    927            �"           2606    590061 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 |   ALTER TABLE ONLY test_ladm_all_models.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
       test_ladm_all_models         postgres    false    928            $$           2606    591126 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_all_models.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
       test_ladm_all_models         postgres    false    1032            �"           2606    590071 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
       test_ladm_all_models         postgres    false    929            �"           2606    590206 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_all_models.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_all_models.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
       test_ladm_all_models         postgres    false    943            �"           2606    590080 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_all_models.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_all_models.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
       test_ladm_all_models         postgres    false    930            �"           2606    590087 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
       test_ladm_all_models         postgres    false    931            �"           2606    590097    gc_direccion gc_direccion_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
       test_ladm_all_models         postgres    false    932            �"           2606    590105 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
       test_ladm_all_models         postgres    false    933            �"           2606    590115    gc_manzana gc_manzana_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_all_models.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_all_models.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
       test_ladm_all_models         postgres    false    934            �"           2606    590125    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
       test_ladm_all_models         postgres    false    935            �"           2606    590198 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_all_models.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_all_models.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
       test_ladm_all_models         postgres    false    942            �"           2606    590135 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_all_models.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_all_models.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
       test_ladm_all_models         postgres    false    936            �"           2606    590145 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_all_models.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_all_models.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
       test_ladm_all_models         postgres    false    937            �"           2606    590155 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
       test_ladm_all_models         postgres    false    938            &$           2606    591135 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
 z   ALTER TABLE ONLY test_ladm_all_models.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
       test_ladm_all_models         postgres    false    1033            �"           2606    590165    gc_terreno gc_terreno_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_all_models.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_all_models.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
       test_ladm_all_models         postgres    false    939            �"           2606    590176 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
       test_ladm_all_models         postgres    false    940            .$           2606    591171 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_all_models.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
       test_ladm_all_models         postgres    false    1037            �"           2606    590188    gc_vereda gc_vereda_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY test_ladm_all_models.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 P   ALTER TABLE ONLY test_ladm_all_models.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
       test_ladm_all_models         postgres    false    941            �!           2606    589675 ,   gm_curve3dlistvalue gm_curve3dlistvalue_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_all_models.gm_curve3dlistvalue
    ADD CONSTRAINT gm_curve3dlistvalue_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_all_models.gm_curve3dlistvalue DROP CONSTRAINT gm_curve3dlistvalue_pkey;
       test_ladm_all_models         postgres    false    888            �!           2606    589694 $   gm_multicurve3d gm_multicurve3d_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.gm_multicurve3d
    ADD CONSTRAINT gm_multicurve3d_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.gm_multicurve3d DROP CONSTRAINT gm_multicurve3d_pkey;
       test_ladm_all_models         postgres    false    890            �!           2606    589666 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_all_models.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_all_models.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
       test_ladm_all_models         postgres    false    887            �!           2606    589700 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_all_models.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_all_models.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
       test_ladm_all_models         postgres    false    891            �!           2606    589658 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
       test_ladm_all_models         postgres    false    886            �!           2606    589686 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
       test_ladm_all_models         postgres    false    889            "           2606    589775    imagen imagen_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY test_ladm_all_models.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (t_id);
 J   ALTER TABLE ONLY test_ladm_all_models.imagen DROP CONSTRAINT imagen_pkey;
       test_ladm_all_models         postgres    false    898            Z$           2606    591369 2   ini_emparejamientotipo ini_emparejamientotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.ini_emparejamientotipo
    ADD CONSTRAINT ini_emparejamientotipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_all_models.ini_emparejamientotipo DROP CONSTRAINT ini_emparejamientotipo_pkey;
       test_ladm_all_models         postgres    false    1059            �"           2606    590283 (   ini_predioinsumos ini_predioinsumos_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_all_models.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_all_models.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_pkey;
       test_ladm_all_models         postgres    false    951            ,$           2606    591162 "   lc_acuerdotipo lc_acuerdotipo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_all_models.lc_acuerdotipo
    ADD CONSTRAINT lc_acuerdotipo_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_all_models.lc_acuerdotipo DROP CONSTRAINT lc_acuerdotipo_pkey;
       test_ladm_all_models         postgres    false    1036            #           2606    590296 6   lc_agrupacioninteresados lc_agrupacioninteresados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_all_models.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_pkey;
       test_ladm_all_models         postgres    false    952            $           2606    591090    lc_anexotipo lc_anexotipo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.lc_anexotipo
    ADD CONSTRAINT lc_anexotipo_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.lc_anexotipo DROP CONSTRAINT lc_anexotipo_pkey;
       test_ladm_all_models         postgres    false    1028            k#           2606    590537 <   lc_calificacionconvencional lc_calificacionconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencional_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_all_models.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencional_pkey;
       test_ladm_all_models         postgres    false    972            m#           2606    590546 @   lc_calificacionnoconvencional lc_calificacionnoconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvencional_pkey PRIMARY KEY (t_id);
 x   ALTER TABLE ONLY test_ladm_all_models.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvencional_pkey;
       test_ladm_all_models         postgres    false    973            r$           2606    591477 &   lc_calificartipo lc_calificartipo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_all_models.lc_calificartipo
    ADD CONSTRAINT lc_calificartipo_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_all_models.lc_calificartipo DROP CONSTRAINT lc_calificartipo_pkey;
       test_ladm_all_models         postgres    false    1071            J$           2606    591297 0   lc_categoriasuelotipo lc_categoriasuelotipo_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.lc_categoriasuelotipo
    ADD CONSTRAINT lc_categoriasuelotipo_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.lc_categoriasuelotipo DROP CONSTRAINT lc_categoriasuelotipo_pkey;
       test_ladm_all_models         postgres    false    1051            R$           2606    591333 6   lc_clasecalificaciontipo lc_clasecalificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_clasecalificaciontipo
    ADD CONSTRAINT lc_clasecalificaciontipo_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_all_models.lc_clasecalificaciontipo DROP CONSTRAINT lc_clasecalificaciontipo_pkey;
       test_ladm_all_models         postgres    false    1055            ($           2606    591144 (   lc_clasesuelotipo lc_clasesuelotipo_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_all_models.lc_clasesuelotipo
    ADD CONSTRAINT lc_clasesuelotipo_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_all_models.lc_clasesuelotipo DROP CONSTRAINT lc_clasesuelotipo_pkey;
       test_ladm_all_models         postgres    false    1034            $           2606    591045 2   lc_condicionprediotipo lc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_condicionprediotipo
    ADD CONSTRAINT lc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_all_models.lc_condicionprediotipo DROP CONSTRAINT lc_condicionprediotipo_pkey;
       test_ladm_all_models         postgres    false    1023            #           2606    590307 $   lc_construccion lc_construccion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.lc_construccion
    ADD CONSTRAINT lc_construccion_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.lc_construccion DROP CONSTRAINT lc_construccion_pkey;
       test_ladm_all_models         postgres    false    953            2$           2606    591189 8   lc_construccionplantatipo lc_construccionplantatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_construccionplantatipo
    ADD CONSTRAINT lc_construccionplantatipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_all_models.lc_construccionplantatipo DROP CONSTRAINT lc_construccionplantatipo_pkey;
       test_ladm_all_models         postgres    false    1039            V$           2606    591351 ,   lc_construcciontipo lc_construcciontipo_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_all_models.lc_construcciontipo
    ADD CONSTRAINT lc_construcciontipo_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_all_models.lc_construcciontipo DROP CONSTRAINT lc_construcciontipo_pkey;
       test_ladm_all_models         postgres    false    1057            #           2606    590322 (   lc_contactovisita lc_contactovisita_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_all_models.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_all_models.lc_contactovisita DROP CONSTRAINT lc_contactovisita_pkey;
       test_ladm_all_models         postgres    false    954            q#           2606    590558 X   lc_datosadicionaleslevantamientocatastral lc_datosadicionaleslevantamientocatastral_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey;
       test_ladm_all_models         postgres    false    974            #           2606    590332 .   lc_datosphcondominio lc_datosphcondominio_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_all_models.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_all_models.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_pkey;
       test_ladm_all_models         postgres    false    955            #           2606    590343    lc_derecho lc_derecho_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_all_models.lc_derecho
    ADD CONSTRAINT lc_derecho_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_all_models.lc_derecho DROP CONSTRAINT lc_derecho_pkey;
       test_ladm_all_models         postgres    false    956            ~$           2606    591531 "   lc_derechotipo lc_derechotipo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_all_models.lc_derechotipo
    ADD CONSTRAINT lc_derechotipo_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_all_models.lc_derechotipo DROP CONSTRAINT lc_derechotipo_pkey;
       test_ladm_all_models         postgres    false    1077            6$           2606    591207 <   lc_destinacioneconomicatipo lc_destinacioneconomicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_destinacioneconomicatipo
    ADD CONSTRAINT lc_destinacioneconomicatipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_all_models.lc_destinacioneconomicatipo DROP CONSTRAINT lc_destinacioneconomicatipo_pkey;
       test_ladm_all_models         postgres    false    1041            d$           2606    591414 :   lc_dominioconstrucciontipo lc_dominioconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_dominioconstrucciontipo
    ADD CONSTRAINT lc_dominioconstrucciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_all_models.lc_dominioconstrucciontipo DROP CONSTRAINT lc_dominioconstrucciontipo_pkey;
       test_ladm_all_models         postgres    false    1064            l$           2606    591450 8   lc_estadoconservaciontipo lc_estadoconservaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_estadoconservaciontipo
    ADD CONSTRAINT lc_estadoconservaciontipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_all_models.lc_estadoconservaciontipo DROP CONSTRAINT lc_estadoconservaciontipo_pkey;
       test_ladm_all_models         postgres    false    1068            #           2606    590353 4   lc_estructuranovedadfmi lc_estructuranovedadfmi_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_pkey;
       test_ladm_all_models         postgres    false    957            #           2606    590360 H   lc_estructuranovedadnumeropredial lc_estructuranovedadnumeropredial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranovedadnumeropredial_pkey;
       test_ladm_all_models         postgres    false    958            *$           2606    591153 b   lc_estructuranovedadnumeropredial_tipo_novedad lc_estructuranovedadnumeropredial_tipo_novedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadnumeropredial_tipo_novedad
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadnumeropredial_tipo_novedad DROP CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey;
       test_ladm_all_models         postgres    false    1035            �#           2606    590946 8   lc_fotoidentificaciontipo lc_fotoidentificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_fotoidentificaciontipo
    ADD CONSTRAINT lc_fotoidentificaciontipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_all_models.lc_fotoidentificaciontipo DROP CONSTRAINT lc_fotoidentificaciontipo_pkey;
       test_ladm_all_models         postgres    false    1012            !#           2606    590372 4   lc_fuenteadministrativa lc_fuenteadministrativa_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_pkey;
       test_ladm_all_models         postgres    false    959            "$           2606    591117 <   lc_fuenteadministrativatipo lc_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteadministrativatipo
    ADD CONSTRAINT lc_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteadministrativatipo DROP CONSTRAINT lc_fuenteadministrativatipo_pkey;
       test_ladm_all_models         postgres    false    1031            &#           2606    590385 (   lc_fuenteespacial lc_fuenteespacial_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_pkey;
       test_ladm_all_models         postgres    false    960            -#           2606    590395 .   lc_grupocalificacion lc_grupocalificacion_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_all_models.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_ladm_all_models.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_pkey;
       test_ladm_all_models         postgres    false    961            0$           2606    591180 *   lc_grupoetnicotipo lc_grupoetnicotipo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_all_models.lc_grupoetnicotipo
    ADD CONSTRAINT lc_grupoetnicotipo_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_all_models.lc_grupoetnicotipo DROP CONSTRAINT lc_grupoetnicotipo_pkey;
       test_ladm_all_models         postgres    false    1038            0#           2606    590408     lc_interesado lc_interesado_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_all_models.lc_interesado
    ADD CONSTRAINT lc_interesado_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_all_models.lc_interesado DROP CONSTRAINT lc_interesado_pkey;
       test_ladm_all_models         postgres    false    962            6#           2606    590422 0   lc_interesadocontacto lc_interesadocontacto_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_pkey;
       test_ladm_all_models         postgres    false    963            �#           2606    590874 :   lc_interesadodocumentotipo lc_interesadodocumentotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_interesadodocumentotipo
    ADD CONSTRAINT lc_interesadodocumentotipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_ladm_all_models.lc_interesadodocumentotipo DROP CONSTRAINT lc_interesadodocumentotipo_pkey;
       test_ladm_all_models         postgres    false    1004            n$           2606    591459 (   lc_interesadotipo lc_interesadotipo_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_all_models.lc_interesadotipo
    ADD CONSTRAINT lc_interesadotipo_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_all_models.lc_interesadotipo DROP CONSTRAINT lc_interesadotipo_pkey;
       test_ladm_all_models         postgres    false    1069            9#           2606    590433    lc_lindero lc_lindero_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_all_models.lc_lindero
    ADD CONSTRAINT lc_lindero_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_all_models.lc_lindero DROP CONSTRAINT lc_lindero_pkey;
       test_ladm_all_models         postgres    false    964            <#           2606    590441 0   lc_objetoconstruccion lc_objetoconstruccion_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_pkey;
       test_ladm_all_models         postgres    false    965            $           2606    591081 8   lc_objetoconstrucciontipo lc_objetoconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_objetoconstrucciontipo
    ADD CONSTRAINT lc_objetoconstrucciontipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_all_models.lc_objetoconstrucciontipo DROP CONSTRAINT lc_objetoconstrucciontipo_pkey;
       test_ladm_all_models         postgres    false    1027            ?#           2606    590450 @   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmobiliario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmobiliario_pkey PRIMARY KEY (t_id);
 x   ALTER TABLE ONLY test_ladm_all_models.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmobiliario_pkey;
       test_ladm_all_models         postgres    false    966            x$           2606    591504     lc_ofertatipo lc_ofertatipo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_all_models.lc_ofertatipo
    ADD CONSTRAINT lc_ofertatipo_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_all_models.lc_ofertatipo DROP CONSTRAINT lc_ofertatipo_pkey;
       test_ladm_all_models         postgres    false    1074            �#           2606    590600 0   lc_predio_copropiedad lc_predio_copropiedad_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_pkey;
       test_ladm_all_models         postgres    false    977            �#           2606    590608 <   lc_predio_ini_predioinsumos lc_predio_ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsumos_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_all_models.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsumos_pkey;
       test_ladm_all_models         postgres    false    978            D#           2606    590462    lc_predio lc_predio_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY test_ladm_all_models.lc_predio
    ADD CONSTRAINT lc_predio_pkey PRIMARY KEY (t_id);
 P   ALTER TABLE ONLY test_ladm_all_models.lc_predio DROP CONSTRAINT lc_predio_pkey;
       test_ladm_all_models         postgres    false    967            �#           2606    590883     lc_prediotipo lc_prediotipo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_ladm_all_models.lc_prediotipo
    ADD CONSTRAINT lc_prediotipo_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_ladm_all_models.lc_prediotipo DROP CONSTRAINT lc_prediotipo_pkey;
       test_ladm_all_models         postgres    false    1005            �$           2606    591540 R   lc_procedimientocatastralregistraltipo lc_procedimientocatastralregistraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_procedimientocatastralregistraltipo
    ADD CONSTRAINT lc_procedimientocatastralregistraltipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_all_models.lc_procedimientocatastralregistraltipo DROP CONSTRAINT lc_procedimientocatastralregistraltipo_pkey;
       test_ladm_all_models         postgres    false    1078            I#           2606    590474 $   lc_puntocontrol lc_puntocontrol_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_pkey;
       test_ladm_all_models         postgres    false    968            �$           2606    591549 ,   lc_puntocontroltipo lc_puntocontroltipo_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontroltipo
    ADD CONSTRAINT lc_puntocontroltipo_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontroltipo DROP CONSTRAINT lc_puntocontroltipo_pkey;
       test_ladm_all_models         postgres    false    1079            }#           2606    590575 0   lc_puntolevantamiento lc_puntolevantamiento_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_pkey;
       test_ladm_all_models         postgres    false    975             $           2606    590964 $   lc_puntolevtipo lc_puntolevtipo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevtipo
    ADD CONSTRAINT lc_puntolevtipo_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevtipo DROP CONSTRAINT lc_puntolevtipo_pkey;
       test_ladm_all_models         postgres    false    1014            V#           2606    590493 $   lc_puntolindero lc_puntolindero_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero DROP CONSTRAINT lc_puntolindero_pkey;
       test_ladm_all_models         postgres    false    969            $           2606    590973    lc_puntotipo lc_puntotipo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_ladm_all_models.lc_puntotipo
    ADD CONSTRAINT lc_puntotipo_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_ladm_all_models.lc_puntotipo DROP CONSTRAINT lc_puntotipo_pkey;
       test_ladm_all_models         postgres    false    1015            ^$           2606    591387 0   lc_relacionprediotipo lc_relacionprediotipo_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.lc_relacionprediotipo
    ADD CONSTRAINT lc_relacionprediotipo_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.lc_relacionprediotipo DROP CONSTRAINT lc_relacionprediotipo_pkey;
       test_ladm_all_models         postgres    false    1061            `#           2606    590513 "   lc_restriccion lc_restriccion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_all_models.lc_restriccion
    ADD CONSTRAINT lc_restriccion_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_all_models.lc_restriccion DROP CONSTRAINT lc_restriccion_pkey;
       test_ladm_all_models         postgres    false    970            <$           2606    591234 *   lc_restricciontipo lc_restricciontipo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_all_models.lc_restricciontipo
    ADD CONSTRAINT lc_restricciontipo_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_all_models.lc_restricciontipo DROP CONSTRAINT lc_restricciontipo_pkey;
       test_ladm_all_models         postgres    false    1044            $           2606    590982 2   lc_resultadovisitatipo lc_resultadovisitatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_resultadovisitatipo
    ADD CONSTRAINT lc_resultadovisitatipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_all_models.lc_resultadovisitatipo DROP CONSTRAINT lc_resultadovisitatipo_pkey;
       test_ladm_all_models         postgres    false    1016            �#           2606    590620 2   lc_servidumbretransito lc_servidumbretransito_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_all_models.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_pkey;
       test_ladm_all_models         postgres    false    979            $           2606    591036    lc_sexotipo lc_sexotipo_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_all_models.lc_sexotipo
    ADD CONSTRAINT lc_sexotipo_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_all_models.lc_sexotipo DROP CONSTRAINT lc_sexotipo_pkey;
       test_ladm_all_models         postgres    false    1022            f#           2606    590527    lc_terreno lc_terreno_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_all_models.lc_terreno
    ADD CONSTRAINT lc_terreno_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_all_models.lc_terreno DROP CONSTRAINT lc_terreno_pkey;
       test_ladm_all_models         postgres    false    971            �#           2606    590592 6   lc_tipologiaconstruccion lc_tipologiaconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_all_models.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_pkey;
       test_ladm_all_models         postgres    false    976            �#           2606    590901 &   lc_tipologiatipo lc_tipologiatipo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_all_models.lc_tipologiatipo
    ADD CONSTRAINT lc_tipologiatipo_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_all_models.lc_tipologiatipo DROP CONSTRAINT lc_tipologiatipo_pkey;
       test_ladm_all_models         postgres    false    1007            �#           2606    590633 0   lc_unidadconstruccion lc_unidadconstruccion_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_pkey;
       test_ladm_all_models         postgres    false    980            �#           2606    590955 8   lc_unidadconstrucciontipo lc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstrucciontipo
    ADD CONSTRAINT lc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstrucciontipo DROP CONSTRAINT lc_unidadconstrucciontipo_pkey;
       test_ladm_all_models         postgres    false    1013            B$           2606    591261 $   lc_usouconstipo lc_usouconstipo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.lc_usouconstipo
    ADD CONSTRAINT lc_usouconstipo_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.lc_usouconstipo DROP CONSTRAINT lc_usouconstipo_pkey;
       test_ladm_all_models         postgres    false    1047             $           2606    591108    lc_viatipo lc_viatipo_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_ladm_all_models.lc_viatipo
    ADD CONSTRAINT lc_viatipo_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_ladm_all_models.lc_viatipo DROP CONSTRAINT lc_viatipo_pkey;
       test_ladm_all_models         postgres    false    1030            �$           2606    591567 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_all_models.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
       test_ladm_all_models         postgres    false    1081            @$           2606    591252 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_ladm_all_models.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
       test_ladm_all_models         postgres    false    1046            �"           2606    590214    snr_derecho snr_derecho_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_all_models.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_all_models.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
       test_ladm_all_models         postgres    false    944            z$           2606    591513 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_all_models.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
       test_ladm_all_models         postgres    false    1075            �"           2606    590223 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 x   ALTER TABLE ONLY test_ladm_all_models.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
       test_ladm_all_models         postgres    false    945            �"           2606    590233 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_ladm_all_models.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
       test_ladm_all_models         postgres    false    946            �"           2606    590243 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_all_models.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_ladm_all_models.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
       test_ladm_all_models         postgres    false    947            8$           2606    591216 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_ladm_all_models.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_ladm_all_models.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
       test_ladm_all_models         postgres    false    1042            X$           2606    591360 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_ladm_all_models.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
       test_ladm_all_models         postgres    false    1058            �"           2606    590264 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_ladm_all_models.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_ladm_all_models.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
       test_ladm_all_models         postgres    false    949            �"           2606    590272 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_ladm_all_models.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_ladm_all_models.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
       test_ladm_all_models         postgres    false    950            �"           2606    590253    snr_titular snr_titular_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_ladm_all_models.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_ladm_all_models.snr_titular DROP CONSTRAINT snr_titular_pkey;
       test_ladm_all_models         postgres    false    948            �$           2606    591583 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (sqlname, colowner);
 `   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
       test_ladm_all_models         postgres    false    1083    1083            �#           2606    590829 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
       test_ladm_all_models         postgres    false    998            �$           2606    591575 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 b   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
       test_ladm_all_models         postgres    false    1082            �#           2606    590835 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
       test_ladm_all_models         postgres    false    999            �#           2606    590843 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 f   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
       test_ladm_all_models         postgres    false    1000            �#           2606    590865 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (iliversion, modelname);
 Z   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
       test_ladm_all_models         postgres    false    1003    1003            �#           2606    590851 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 `   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
       test_ladm_all_models         postgres    false    1001            �#           1259    590650 "   av_tablacalifccncnstrccion_uso_idx    INDEX     |   CREATE INDEX av_tablacalifccncnstrccion_uso_idx ON test_ladm_all_models.av_tablacalificacionconstruccion USING btree (uso);
 D   DROP INDEX test_ladm_all_models.av_tablacalifccncnstrccion_uso_idx;
       test_ladm_all_models         postgres    false    981            �#           1259    590658 +   av_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX av_tipologiaconstruccion_tipo_tipologia_idx ON test_ladm_all_models.av_tipologiaconstruccion USING btree (tipo_tipologia);
 M   DROP INDEX test_ladm_all_models.av_tipologiaconstruccion_tipo_tipologia_idx;
       test_ladm_all_models         postgres    false    982            �#           1259    590669 2   av_zonahomogeneafisicarral_disponibilidad_agua_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicarral_disponibilidad_agua_idx ON test_ladm_all_models.av_zonahomogeneafisicarural USING btree (disponibilidad_agua);
 T   DROP INDEX test_ladm_all_models.av_zonahomogeneafisicarral_disponibilidad_agua_idx;
       test_ladm_all_models         postgres    false    983            �#           1259    590672 (   av_zonahomogeneafisicarral_geometria_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicarral_geometria_idx ON test_ladm_all_models.av_zonahomogeneafisicarural USING gist (geometria);
 J   DROP INDEX test_ladm_all_models.av_zonahomogeneafisicarral_geometria_idx;
       test_ladm_all_models         postgres    false    983            �#           1259    590670 .   av_zonahomogeneafisicarral_influencia_vial_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicarral_influencia_vial_idx ON test_ladm_all_models.av_zonahomogeneafisicarural USING btree (influencia_vial);
 P   DROP INDEX test_ladm_all_models.av_zonahomogeneafisicarral_influencia_vial_idx;
       test_ladm_all_models         postgres    false    983            �#           1259    590671 /   av_zonahomogeneafisicarral_uso_actual_suelo_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicarral_uso_actual_suelo_idx ON test_ladm_all_models.av_zonahomogeneafisicarural USING btree (uso_actual_suelo);
 Q   DROP INDEX test_ladm_all_models.av_zonahomogeneafisicarral_uso_actual_suelo_idx;
       test_ladm_all_models         postgres    false    983            �#           1259    590688 (   av_zonahomogeneafisicrbana_geometria_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_geometria_idx ON test_ladm_all_models.av_zonahomogeneafisicaurbana USING gist (geometria);
 J   DROP INDEX test_ladm_all_models.av_zonahomogeneafisicrbana_geometria_idx;
       test_ladm_all_models         postgres    false    984            �#           1259    590684 .   av_zonahomogeneafisicrbana_influencia_vial_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_influencia_vial_idx ON test_ladm_all_models.av_zonahomogeneafisicaurbana USING btree (influencia_vial);
 P   DROP INDEX test_ladm_all_models.av_zonahomogeneafisicrbana_influencia_vial_idx;
       test_ladm_all_models         postgres    false    984            �#           1259    590685 /   av_zonahomogeneafisicrbana_servicio_publico_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_servicio_publico_idx ON test_ladm_all_models.av_zonahomogeneafisicaurbana USING btree (servicio_publico);
 Q   DROP INDEX test_ladm_all_models.av_zonahomogeneafisicrbana_servicio_publico_idx;
       test_ladm_all_models         postgres    false    984            �#           1259    590687 8   av_zonahomogeneafisicrbana_tipificacion_construccion_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_tipificacion_construccion_idx ON test_ladm_all_models.av_zonahomogeneafisicaurbana USING btree (tipificacion_construccion);
 Z   DROP INDEX test_ladm_all_models.av_zonahomogeneafisicrbana_tipificacion_construccion_idx;
       test_ladm_all_models         postgres    false    984            �#           1259    590683 )   av_zonahomogeneafisicrbana_topografia_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_topografia_idx ON test_ladm_all_models.av_zonahomogeneafisicaurbana USING btree (topografia);
 K   DROP INDEX test_ladm_all_models.av_zonahomogeneafisicrbana_topografia_idx;
       test_ladm_all_models         postgres    false    984            �#           1259    590686 /   av_zonahomogeneafisicrbana_uso_actual_suelo_idx    INDEX     �   CREATE INDEX av_zonahomogeneafisicrbana_uso_actual_suelo_idx ON test_ladm_all_models.av_zonahomogeneafisicaurbana USING btree (uso_actual_suelo);
 Q   DROP INDEX test_ladm_all_models.av_zonahomogeneafisicrbana_uso_actual_suelo_idx;
       test_ladm_all_models         postgres    false    984            �#           1259    590699 (   av_zonahomogeneagcnmcrbana_geometria_idx    INDEX     �   CREATE INDEX av_zonahomogeneagcnmcrbana_geometria_idx ON test_ladm_all_models.av_zonahomogeneageoeconomicaurbana USING gist (geometria);
 J   DROP INDEX test_ladm_all_models.av_zonahomogeneagcnmcrbana_geometria_idx;
       test_ladm_all_models         postgres    false    985            �#           1259    590710 (   av_zonahomogeneagecnmcrral_geometria_idx    INDEX     �   CREATE INDEX av_zonahomogeneagecnmcrral_geometria_idx ON test_ladm_all_models.av_zonahomogeneageoeconomicarural USING gist (geometria);
 J   DROP INDEX test_ladm_all_models.av_zonahomogeneagecnmcrral_geometria_idx;
       test_ladm_all_models         postgres    false    986            �#           1259    590821    cc_barrio_geometria_idx    INDEX     _   CREATE INDEX cc_barrio_geometria_idx ON test_ladm_all_models.cc_barrio USING gist (geometria);
 9   DROP INDEX test_ladm_all_models.cc_barrio_geometria_idx;
       test_ladm_all_models         postgres    false    997            �#           1259    590720    cc_centropoblado_geometria_idx    INDEX     m   CREATE INDEX cc_centropoblado_geometria_idx ON test_ladm_all_models.cc_centropoblado USING gist (geometria);
 @   DROP INDEX test_ladm_all_models.cc_centropoblado_geometria_idx;
       test_ladm_all_models         postgres    false    987            �#           1259    590730    cc_corregimiento_geometria_idx    INDEX     m   CREATE INDEX cc_corregimiento_geometria_idx ON test_ladm_all_models.cc_corregimiento USING gist (geometria);
 @   DROP INDEX test_ladm_all_models.cc_corregimiento_geometria_idx;
       test_ladm_all_models         postgres    false    988            �#           1259    590740     cc_limitemunicipio_geometria_idx    INDEX     q   CREATE INDEX cc_limitemunicipio_geometria_idx ON test_ladm_all_models.cc_limitemunicipio USING gist (geometria);
 B   DROP INDEX test_ladm_all_models.cc_limitemunicipio_geometria_idx;
       test_ladm_all_models         postgres    false    989            �#           1259    590811     cc_localidadcomuna_geometria_idx    INDEX     q   CREATE INDEX cc_localidadcomuna_geometria_idx ON test_ladm_all_models.cc_localidadcomuna USING gist (geometria);
 B   DROP INDEX test_ladm_all_models.cc_localidadcomuna_geometria_idx;
       test_ladm_all_models         postgres    false    996            �#           1259    590750    cc_manzana_geometria_idx    INDEX     a   CREATE INDEX cc_manzana_geometria_idx ON test_ladm_all_models.cc_manzana USING gist (geometria);
 :   DROP INDEX test_ladm_all_models.cc_manzana_geometria_idx;
       test_ladm_all_models         postgres    false    990            �!           1259    589707 1   cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx    INDEX     �   CREATE INDEX cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx ON test_ladm_all_models.cc_metodooperacion USING btree (col_transformacion_transformacion);
 S   DROP INDEX test_ladm_all_models.cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx;
       test_ladm_all_models         postgres    false    892            �#           1259    590761 !   cc_nomenclaturavial_geometria_idx    INDEX     s   CREATE INDEX cc_nomenclaturavial_geometria_idx ON test_ladm_all_models.cc_nomenclaturavial USING gist (geometria);
 C   DROP INDEX test_ladm_all_models.cc_nomenclaturavial_geometria_idx;
       test_ladm_all_models         postgres    false    991            �#           1259    590760     cc_nomenclaturavial_tipo_via_idx    INDEX     r   CREATE INDEX cc_nomenclaturavial_tipo_via_idx ON test_ladm_all_models.cc_nomenclaturavial USING btree (tipo_via);
 B   DROP INDEX test_ladm_all_models.cc_nomenclaturavial_tipo_via_idx;
       test_ladm_all_models         postgres    false    991            �#           1259    590771     cc_perimetrourbano_geometria_idx    INDEX     q   CREATE INDEX cc_perimetrourbano_geometria_idx ON test_ladm_all_models.cc_perimetrourbano USING gist (geometria);
 B   DROP INDEX test_ladm_all_models.cc_perimetrourbano_geometria_idx;
       test_ladm_all_models         postgres    false    992            �#           1259    590781    cc_sectorrural_geometria_idx    INDEX     i   CREATE INDEX cc_sectorrural_geometria_idx ON test_ladm_all_models.cc_sectorrural USING gist (geometria);
 >   DROP INDEX test_ladm_all_models.cc_sectorrural_geometria_idx;
       test_ladm_all_models         postgres    false    993            �#           1259    590791    cc_sectorurbano_geometria_idx    INDEX     k   CREATE INDEX cc_sectorurbano_geometria_idx ON test_ladm_all_models.cc_sectorurbano USING gist (geometria);
 ?   DROP INDEX test_ladm_all_models.cc_sectorurbano_geometria_idx;
       test_ladm_all_models         postgres    false    994            �#           1259    590801    cc_vereda_geometria_idx    INDEX     _   CREATE INDEX cc_vereda_geometria_idx ON test_ladm_all_models.cc_vereda USING gist (geometria);
 9   DROP INDEX test_ladm_all_models.cc_vereda_geometria_idx;
       test_ladm_all_models         postgres    false    995            �!           1259    589718 &   col_areavalor_lc_construccion_area_idx    INDEX     ~   CREATE INDEX col_areavalor_lc_construccion_area_idx ON test_ladm_all_models.col_areavalor USING btree (lc_construccion_area);
 H   DROP INDEX test_ladm_all_models.col_areavalor_lc_construccion_area_idx;
       test_ladm_all_models         postgres    false    893            �!           1259    589720 ,   col_areavalor_lc_servidumbretransito_rea_idx    INDEX     �   CREATE INDEX col_areavalor_lc_servidumbretransito_rea_idx ON test_ladm_all_models.col_areavalor USING btree (lc_servidumbretransito_area);
 N   DROP INDEX test_ladm_all_models.col_areavalor_lc_servidumbretransito_rea_idx;
       test_ladm_all_models         postgres    false    893            �!           1259    589719 !   col_areavalor_lc_terreno_area_idx    INDEX     t   CREATE INDEX col_areavalor_lc_terreno_area_idx ON test_ladm_all_models.col_areavalor USING btree (lc_terreno_area);
 C   DROP INDEX test_ladm_all_models.col_areavalor_lc_terreno_area_idx;
       test_ladm_all_models         postgres    false    893            �!           1259    589721 ,   col_areavalor_lc_unidadconstruccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_unidadconstruccion_area_idx ON test_ladm_all_models.col_areavalor USING btree (lc_unidadconstruccion_area);
 N   DROP INDEX test_ladm_all_models.col_areavalor_lc_unidadconstruccion_area_idx;
       test_ladm_all_models         postgres    false    893            �!           1259    589717    col_areavalor_tipo_idx    INDEX     ^   CREATE INDEX col_areavalor_tipo_idx ON test_ladm_all_models.col_areavalor USING btree (tipo);
 8   DROP INDEX test_ladm_all_models.col_areavalor_tipo_idx;
       test_ladm_all_models         postgres    false    893            �"           1259    589984 7   col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx ON test_ladm_all_models.col_baunitcomointeresado USING btree (interesado_lc_agrupacioninteresados);
 Y   DROP INDEX test_ladm_all_models.col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx;
       test_ladm_all_models         postgres    false    920            �"           1259    589983 5   col_baunitcomointeresado_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_interesado_idx ON test_ladm_all_models.col_baunitcomointeresado USING btree (interesado_lc_interesado);
 W   DROP INDEX test_ladm_all_models.col_baunitcomointeresado_interesado_lc_interesado_idx;
       test_ladm_all_models         postgres    false    920            �"           1259    589985 #   col_baunitcomointeresado_unidad_idx    INDEX     x   CREATE INDEX col_baunitcomointeresado_unidad_idx ON test_ladm_all_models.col_baunitcomointeresado USING btree (unidad);
 E   DROP INDEX test_ladm_all_models.col_baunitcomointeresado_unidad_idx;
       test_ladm_all_models         postgres    false    920            U"           1259    589892 $   col_baunitfuente_fuente_espacial_idx    INDEX     z   CREATE INDEX col_baunitfuente_fuente_espacial_idx ON test_ladm_all_models.col_baunitfuente USING btree (fuente_espacial);
 F   DROP INDEX test_ladm_all_models.col_baunitfuente_fuente_espacial_idx;
       test_ladm_all_models         postgres    false    910            X"           1259    589893    col_baunitfuente_unidad_idx    INDEX     h   CREATE INDEX col_baunitfuente_unidad_idx ON test_ladm_all_models.col_baunitfuente USING btree (unidad);
 =   DROP INDEX test_ladm_all_models.col_baunitfuente_unidad_idx;
       test_ladm_all_models         postgres    false    910            \"           1259    589907    col_cclfuente_ccl_idx    INDEX     \   CREATE INDEX col_cclfuente_ccl_idx ON test_ladm_all_models.col_cclfuente USING btree (ccl);
 7   DROP INDEX test_ladm_all_models.col_cclfuente_ccl_idx;
       test_ladm_all_models         postgres    false    912            ]"           1259    589908 !   col_cclfuente_fuente_espacial_idx    INDEX     t   CREATE INDEX col_cclfuente_fuente_espacial_idx ON test_ladm_all_models.col_cclfuente USING btree (fuente_espacial);
 C   DROP INDEX test_ladm_all_models.col_cclfuente_fuente_espacial_idx;
       test_ladm_all_models         postgres    false    912            t"           1259    589947     col_clfuente_fuente_espacial_idx    INDEX     r   CREATE INDEX col_clfuente_fuente_espacial_idx ON test_ladm_all_models.col_clfuente USING btree (fuente_espacial);
 B   DROP INDEX test_ladm_all_models.col_clfuente_fuente_espacial_idx;
       test_ladm_all_models         postgres    false    916            g"           1259    589926    col_masccl_ccl_mas_idx    INDEX     ^   CREATE INDEX col_masccl_ccl_mas_idx ON test_ladm_all_models.col_masccl USING btree (ccl_mas);
 8   DROP INDEX test_ladm_all_models.col_masccl_ccl_mas_idx;
       test_ladm_all_models         postgres    false    914            j"           1259    589930 %   col_masccl_ue_mas_lc_construccion_idx    INDEX     |   CREATE INDEX col_masccl_ue_mas_lc_construccion_idx ON test_ladm_all_models.col_masccl USING btree (ue_mas_lc_construccion);
 G   DROP INDEX test_ladm_all_models.col_masccl_ue_mas_lc_construccion_idx;
       test_ladm_all_models         postgres    false    914            k"           1259    589928 )   col_masccl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_all_models.col_masccl USING btree (ue_mas_lc_servidumbretransito);
 K   DROP INDEX test_ladm_all_models.col_masccl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_all_models         postgres    false    914            l"           1259    589927     col_masccl_ue_mas_lc_terreno_idx    INDEX     r   CREATE INDEX col_masccl_ue_mas_lc_terreno_idx ON test_ladm_all_models.col_masccl USING btree (ue_mas_lc_terreno);
 B   DROP INDEX test_ladm_all_models.col_masccl_ue_mas_lc_terreno_idx;
       test_ladm_all_models         postgres    false    914            m"           1259    589929 )   col_masccl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_all_models.col_masccl USING btree (ue_mas_lc_unidadconstruccion);
 K   DROP INDEX test_ladm_all_models.col_masccl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_all_models         postgres    false    914            "           1259    589967 $   col_mascl_ue_mas_lc_construccion_idx    INDEX     z   CREATE INDEX col_mascl_ue_mas_lc_construccion_idx ON test_ladm_all_models.col_mascl USING btree (ue_mas_lc_construccion);
 F   DROP INDEX test_ladm_all_models.col_mascl_ue_mas_lc_construccion_idx;
       test_ladm_all_models         postgres    false    918            �"           1259    589965 (   col_mascl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_all_models.col_mascl USING btree (ue_mas_lc_servidumbretransito);
 J   DROP INDEX test_ladm_all_models.col_mascl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_all_models         postgres    false    918            �"           1259    589964    col_mascl_ue_mas_lc_terreno_idx    INDEX     p   CREATE INDEX col_mascl_ue_mas_lc_terreno_idx ON test_ladm_all_models.col_mascl USING btree (ue_mas_lc_terreno);
 A   DROP INDEX test_ladm_all_models.col_mascl_ue_mas_lc_terreno_idx;
       test_ladm_all_models         postgres    false    918            �"           1259    589966 (   col_mascl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_all_models.col_mascl USING btree (ue_mas_lc_unidadconstruccion);
 J   DROP INDEX test_ladm_all_models.col_mascl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_all_models         postgres    false    918            `"           1259    589915    col_menosccl_ccl_menos_idx    INDEX     f   CREATE INDEX col_menosccl_ccl_menos_idx ON test_ladm_all_models.col_menosccl USING btree (ccl_menos);
 <   DROP INDEX test_ladm_all_models.col_menosccl_ccl_menos_idx;
       test_ladm_all_models         postgres    false    913            c"           1259    589919 )   col_menosccl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_construccion_idx ON test_ladm_all_models.col_menosccl USING btree (ue_menos_lc_construccion);
 K   DROP INDEX test_ladm_all_models.col_menosccl_ue_menos_lc_construccion_idx;
       test_ladm_all_models         postgres    false    913            d"           1259    589917 +   col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_all_models.col_menosccl USING btree (ue_menos_lc_servidumbretransito);
 M   DROP INDEX test_ladm_all_models.col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_all_models         postgres    false    913            e"           1259    589916 $   col_menosccl_ue_menos_lc_terreno_idx    INDEX     z   CREATE INDEX col_menosccl_ue_menos_lc_terreno_idx ON test_ladm_all_models.col_menosccl USING btree (ue_menos_lc_terreno);
 F   DROP INDEX test_ladm_all_models.col_menosccl_ue_menos_lc_terreno_idx;
       test_ladm_all_models         postgres    false    913            f"           1259    589918 +   col_menosccl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_all_models.col_menosccl USING btree (ue_menos_lc_unidadconstruccion);
 M   DROP INDEX test_ladm_all_models.col_menosccl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_all_models         postgres    false    913            y"           1259    589957 (   col_menoscl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_construccion_idx ON test_ladm_all_models.col_menoscl USING btree (ue_menos_lc_construccion);
 J   DROP INDEX test_ladm_all_models.col_menoscl_ue_menos_lc_construccion_idx;
       test_ladm_all_models         postgres    false    917            z"           1259    589955 *   col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_all_models.col_menoscl USING btree (ue_menos_lc_servidumbretransito);
 L   DROP INDEX test_ladm_all_models.col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_all_models         postgres    false    917            {"           1259    589954 #   col_menoscl_ue_menos_lc_terreno_idx    INDEX     x   CREATE INDEX col_menoscl_ue_menos_lc_terreno_idx ON test_ladm_all_models.col_menoscl USING btree (ue_menos_lc_terreno);
 E   DROP INDEX test_ladm_all_models.col_menoscl_ue_menos_lc_terreno_idx;
       test_ladm_all_models         postgres    false    917            |"           1259    589956 *   col_menoscl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_all_models.col_menoscl USING btree (ue_menos_lc_unidadconstruccion);
 L   DROP INDEX test_ladm_all_models.col_menoscl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_all_models         postgres    false    917            �"           1259    590012    col_miembros_agrupacion_idx    INDEX     h   CREATE INDEX col_miembros_agrupacion_idx ON test_ladm_all_models.col_miembros USING btree (agrupacion);
 =   DROP INDEX test_ladm_all_models.col_miembros_agrupacion_idx;
       test_ladm_all_models         postgres    false    923            �"           1259    590011 +   col_miembros_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_grpcnntrsdos_idx ON test_ladm_all_models.col_miembros USING btree (interesado_lc_agrupacioninteresados);
 M   DROP INDEX test_ladm_all_models.col_miembros_interesado_lc_grpcnntrsdos_idx;
       test_ladm_all_models         postgres    false    923            �"           1259    590010 )   col_miembros_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_interesado_idx ON test_ladm_all_models.col_miembros USING btree (interesado_lc_interesado);
 K   DROP INDEX test_ladm_all_models.col_miembros_interesado_lc_interesado_idx;
       test_ladm_all_models         postgres    false    923            n"           1259    589940    col_puntoccl_ccl_idx    INDEX     Z   CREATE INDEX col_puntoccl_ccl_idx ON test_ladm_all_models.col_puntoccl USING btree (ccl);
 6   DROP INDEX test_ladm_all_models.col_puntoccl_ccl_idx;
       test_ladm_all_models         postgres    false    915            q"           1259    589937 &   col_puntoccl_punto_lc_puntocontrol_idx    INDEX     ~   CREATE INDEX col_puntoccl_punto_lc_puntocontrol_idx ON test_ladm_all_models.col_puntoccl USING btree (punto_lc_puntocontrol);
 H   DROP INDEX test_ladm_all_models.col_puntoccl_punto_lc_puntocontrol_idx;
       test_ladm_all_models         postgres    false    915            r"           1259    589939 +   col_puntoccl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolevantaminto_idx ON test_ladm_all_models.col_puntoccl USING btree (punto_lc_puntolevantamiento);
 M   DROP INDEX test_ladm_all_models.col_puntoccl_punto_lc_puntolevantaminto_idx;
       test_ladm_all_models         postgres    false    915            s"           1259    589938 &   col_puntoccl_punto_lc_puntolindero_idx    INDEX     ~   CREATE INDEX col_puntoccl_punto_lc_puntolindero_idx ON test_ladm_all_models.col_puntoccl USING btree (punto_lc_puntolindero);
 H   DROP INDEX test_ladm_all_models.col_puntoccl_punto_lc_puntolindero_idx;
       test_ladm_all_models         postgres    false    915            �"           1259    589974 %   col_puntocl_punto_lc_puntocontrol_idx    INDEX     |   CREATE INDEX col_puntocl_punto_lc_puntocontrol_idx ON test_ladm_all_models.col_puntocl USING btree (punto_lc_puntocontrol);
 G   DROP INDEX test_ladm_all_models.col_puntocl_punto_lc_puntocontrol_idx;
       test_ladm_all_models         postgres    false    919            �"           1259    589976 *   col_puntocl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolevantaminto_idx ON test_ladm_all_models.col_puntocl USING btree (punto_lc_puntolevantamiento);
 L   DROP INDEX test_ladm_all_models.col_puntocl_punto_lc_puntolevantaminto_idx;
       test_ladm_all_models         postgres    false    919            �"           1259    589975 %   col_puntocl_punto_lc_puntolindero_idx    INDEX     |   CREATE INDEX col_puntocl_punto_lc_puntolindero_idx ON test_ladm_all_models.col_puntocl USING btree (punto_lc_puntolindero);
 G   DROP INDEX test_ladm_all_models.col_puntocl_punto_lc_puntolindero_idx;
       test_ladm_all_models         postgres    false    919            H"           1259    589871 #   col_puntofuente_fuente_espacial_idx    INDEX     x   CREATE INDEX col_puntofuente_fuente_espacial_idx ON test_ladm_all_models.col_puntofuente USING btree (fuente_espacial);
 E   DROP INDEX test_ladm_all_models.col_puntofuente_fuente_espacial_idx;
       test_ladm_all_models         postgres    false    908            K"           1259    589872 )   col_puntofuente_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntocontrol_idx ON test_ladm_all_models.col_puntofuente USING btree (punto_lc_puntocontrol);
 K   DROP INDEX test_ladm_all_models.col_puntofuente_punto_lc_puntocontrol_idx;
       test_ladm_all_models         postgres    false    908            L"           1259    589874 .   col_puntofuente_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolevantaminto_idx ON test_ladm_all_models.col_puntofuente USING btree (punto_lc_puntolevantamiento);
 P   DROP INDEX test_ladm_all_models.col_puntofuente_punto_lc_puntolevantaminto_idx;
       test_ladm_all_models         postgres    false    908            M"           1259    589873 )   col_puntofuente_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolindero_idx ON test_ladm_all_models.col_puntofuente USING btree (punto_lc_puntolindero);
 K   DROP INDEX test_ladm_all_models.col_puntofuente_punto_lc_puntolindero_idx;
       test_ladm_all_models         postgres    false    908            A"           1259    589856 ,   col_relacionfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_relacionfuente_fuente_administrativa_idx ON test_ladm_all_models.col_relacionfuente USING btree (fuente_administrativa);
 N   DROP INDEX test_ladm_all_models.col_relacionfuente_fuente_administrativa_idx;
       test_ladm_all_models         postgres    false    906            ["           1259    589900 .   col_relacionfuenteuespcial_fuente_espacial_idx    INDEX     �   CREATE INDEX col_relacionfuenteuespcial_fuente_espacial_idx ON test_ladm_all_models.col_relacionfuenteuespacial USING btree (fuente_espacial);
 P   DROP INDEX test_ladm_all_models.col_relacionfuenteuespcial_fuente_espacial_idx;
       test_ladm_all_models         postgres    false    911            �"           1259    589992 /   col_responsablefuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_responsablefuente_fuente_administrativa_idx ON test_ladm_all_models.col_responsablefuente USING btree (fuente_administrativa);
 Q   DROP INDEX test_ladm_all_models.col_responsablefuente_fuente_administrativa_idx;
       test_ladm_all_models         postgres    false    921            �"           1259    589994 4   col_responsablefuente_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_grpcnntrsdos_idx ON test_ladm_all_models.col_responsablefuente USING btree (interesado_lc_agrupacioninteresados);
 V   DROP INDEX test_ladm_all_models.col_responsablefuente_interesado_lc_grpcnntrsdos_idx;
       test_ladm_all_models         postgres    false    921            �"           1259    589993 2   col_responsablefuente_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_interesado_idx ON test_ladm_all_models.col_responsablefuente USING btree (interesado_lc_interesado);
 T   DROP INDEX test_ladm_all_models.col_responsablefuente_interesado_lc_interesado_idx;
       test_ladm_all_models         postgres    false    921            5"           1259    589836 '   col_rrrfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_rrrfuente_fuente_administrativa_idx ON test_ladm_all_models.col_rrrfuente USING btree (fuente_administrativa);
 I   DROP INDEX test_ladm_all_models.col_rrrfuente_fuente_administrativa_idx;
       test_ladm_all_models         postgres    false    904            8"           1259    589838     col_rrrfuente_rrr_lc_derecho_idx    INDEX     r   CREATE INDEX col_rrrfuente_rrr_lc_derecho_idx ON test_ladm_all_models.col_rrrfuente USING btree (rrr_lc_derecho);
 B   DROP INDEX test_ladm_all_models.col_rrrfuente_rrr_lc_derecho_idx;
       test_ladm_all_models         postgres    false    904            9"           1259    589837 $   col_rrrfuente_rrr_lc_restriccion_idx    INDEX     z   CREATE INDEX col_rrrfuente_rrr_lc_restriccion_idx ON test_ladm_all_models.col_rrrfuente USING btree (rrr_lc_restriccion);
 F   DROP INDEX test_ladm_all_models.col_rrrfuente_rrr_lc_restriccion_idx;
       test_ladm_all_models         postgres    false    904            �"           1259    590001 '   col_topografofuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_topografofuente_fuente_espacial_idx ON test_ladm_all_models.col_topografofuente USING btree (fuente_espacial);
 I   DROP INDEX test_ladm_all_models.col_topografofuente_fuente_espacial_idx;
       test_ladm_all_models         postgres    false    922            �"           1259    590003 2   col_topografofuente_topografo_lc_agrpcnntrsdos_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_agrpcnntrsdos_idx ON test_ladm_all_models.col_topografofuente USING btree (topografo_lc_agrupacioninteresados);
 T   DROP INDEX test_ladm_all_models.col_topografofuente_topografo_lc_agrpcnntrsdos_idx;
       test_ladm_all_models         postgres    false    922            �"           1259    590002 /   col_topografofuente_topografo_lc_interesado_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_interesado_idx ON test_ladm_all_models.col_topografofuente USING btree (topografo_lc_interesado);
 Q   DROP INDEX test_ladm_all_models.col_topografofuente_topografo_lc_interesado_idx;
       test_ladm_all_models         postgres    false    922            "           1259    589761 1   col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx ON test_ladm_all_models.col_transformacion USING btree (lc_puntocontrol_transformacion_y_resultado);
 S   DROP INDEX test_ladm_all_models.col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx;
       test_ladm_all_models         postgres    false    896            "           1259    589762 1   col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx ON test_ladm_all_models.col_transformacion USING btree (lc_puntolindero_transformacion_y_resultado);
 S   DROP INDEX test_ladm_all_models.col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx;
       test_ladm_all_models         postgres    false    896            "           1259    589763 1   col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx ON test_ladm_all_models.col_transformacion USING btree (lc_puntolevantamiento_transformacion_y_resultado);
 S   DROP INDEX test_ladm_all_models.col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx;
       test_ladm_all_models         postgres    false    896            "           1259    589760 0   col_transformacion_localizacion_transformada_idx    INDEX     �   CREATE INDEX col_transformacion_localizacion_transformada_idx ON test_ladm_all_models.col_transformacion USING gist (localizacion_transformada);
 R   DROP INDEX test_ladm_all_models.col_transformacion_localizacion_transformada_idx;
       test_ladm_all_models         postgres    false    896            :"           1259    589849    col_uebaunit_baunit_idx    INDEX     `   CREATE INDEX col_uebaunit_baunit_idx ON test_ladm_all_models.col_uebaunit USING btree (baunit);
 9   DROP INDEX test_ladm_all_models.col_uebaunit_baunit_idx;
       test_ladm_all_models         postgres    false    905            ="           1259    589848 #   col_uebaunit_ue_lc_construccion_idx    INDEX     x   CREATE INDEX col_uebaunit_ue_lc_construccion_idx ON test_ladm_all_models.col_uebaunit USING btree (ue_lc_construccion);
 E   DROP INDEX test_ladm_all_models.col_uebaunit_ue_lc_construccion_idx;
       test_ladm_all_models         postgres    false    905            >"           1259    589846 *   col_uebaunit_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_servidumbretransito_idx ON test_ladm_all_models.col_uebaunit USING btree (ue_lc_servidumbretransito);
 L   DROP INDEX test_ladm_all_models.col_uebaunit_ue_lc_servidumbretransito_idx;
       test_ladm_all_models         postgres    false    905            ?"           1259    589845    col_uebaunit_ue_lc_terreno_idx    INDEX     n   CREATE INDEX col_uebaunit_ue_lc_terreno_idx ON test_ladm_all_models.col_uebaunit USING btree (ue_lc_terreno);
 @   DROP INDEX test_ladm_all_models.col_uebaunit_ue_lc_terreno_idx;
       test_ladm_all_models         postgres    false    905            @"           1259    589847 )   col_uebaunit_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_unidadconstruccion_idx ON test_ladm_all_models.col_uebaunit USING btree (ue_lc_unidadconstruccion);
 K   DROP INDEX test_ladm_all_models.col_uebaunit_ue_lc_unidadconstruccion_idx;
       test_ladm_all_models         postgres    false    905            N"           1259    589885     col_uefuente_fuente_espacial_idx    INDEX     r   CREATE INDEX col_uefuente_fuente_espacial_idx ON test_ladm_all_models.col_uefuente USING btree (fuente_espacial);
 B   DROP INDEX test_ladm_all_models.col_uefuente_fuente_espacial_idx;
       test_ladm_all_models         postgres    false    909            Q"           1259    589884 #   col_uefuente_ue_lc_construccion_idx    INDEX     x   CREATE INDEX col_uefuente_ue_lc_construccion_idx ON test_ladm_all_models.col_uefuente USING btree (ue_lc_construccion);
 E   DROP INDEX test_ladm_all_models.col_uefuente_ue_lc_construccion_idx;
       test_ladm_all_models         postgres    false    909            R"           1259    589882 *   col_uefuente_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_servidumbretransito_idx ON test_ladm_all_models.col_uefuente USING btree (ue_lc_servidumbretransito);
 L   DROP INDEX test_ladm_all_models.col_uefuente_ue_lc_servidumbretransito_idx;
       test_ladm_all_models         postgres    false    909            S"           1259    589881    col_uefuente_ue_lc_terreno_idx    INDEX     n   CREATE INDEX col_uefuente_ue_lc_terreno_idx ON test_ladm_all_models.col_uefuente USING btree (ue_lc_terreno);
 @   DROP INDEX test_ladm_all_models.col_uefuente_ue_lc_terreno_idx;
       test_ladm_all_models         postgres    false    909            T"           1259    589883 )   col_uefuente_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_unidadconstruccion_idx ON test_ladm_all_models.col_uefuente USING btree (ue_lc_unidadconstruccion);
 K   DROP INDEX test_ladm_all_models.col_uefuente_ue_lc_unidadconstruccion_idx;
       test_ladm_all_models         postgres    false    909            /"           1259    589829 '   col_ueuegrupo_parte_lc_construccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_construccion_idx ON test_ladm_all_models.col_ueuegrupo USING btree (parte_lc_construccion);
 I   DROP INDEX test_ladm_all_models.col_ueuegrupo_parte_lc_construccion_idx;
       test_ladm_all_models         postgres    false    903            0"           1259    589827 ,   col_ueuegrupo_parte_lc_servidumbrtrnsito_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_servidumbrtrnsito_idx ON test_ladm_all_models.col_ueuegrupo USING btree (parte_lc_servidumbretransito);
 N   DROP INDEX test_ladm_all_models.col_ueuegrupo_parte_lc_servidumbrtrnsito_idx;
       test_ladm_all_models         postgres    false    903            1"           1259    589826 "   col_ueuegrupo_parte_lc_terreno_idx    INDEX     v   CREATE INDEX col_ueuegrupo_parte_lc_terreno_idx ON test_ladm_all_models.col_ueuegrupo USING btree (parte_lc_terreno);
 D   DROP INDEX test_ladm_all_models.col_ueuegrupo_parte_lc_terreno_idx;
       test_ladm_all_models         postgres    false    903            2"           1259    589828 ,   col_ueuegrupo_parte_lc_unidadconstrccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_unidadconstrccion_idx ON test_ladm_all_models.col_ueuegrupo USING btree (parte_lc_unidadconstruccion);
 N   DROP INDEX test_ladm_all_models.col_ueuegrupo_parte_lc_unidadconstrccion_idx;
       test_ladm_all_models         postgres    false    903            D"           1259    589863 *   col_unidadfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_unidadfuente_fuente_administrativa_idx ON test_ladm_all_models.col_unidadfuente USING btree (fuente_administrativa);
 L   DROP INDEX test_ladm_all_models.col_unidadfuente_fuente_administrativa_idx;
       test_ladm_all_models         postgres    false    907            G"           1259    589864    col_unidadfuente_unidad_idx    INDEX     h   CREATE INDEX col_unidadfuente_unidad_idx ON test_ladm_all_models.col_unidadfuente USING btree (unidad);
 =   DROP INDEX test_ladm_all_models.col_unidadfuente_unidad_idx;
       test_ladm_all_models         postgres    false    907            ("           1259    589816 ,   col_volumenvalor_lc_construccion_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_construccion_volumen_idx ON test_ladm_all_models.col_volumenvalor USING btree (lc_construccion_volumen);
 N   DROP INDEX test_ladm_all_models.col_volumenvalor_lc_construccion_volumen_idx;
       test_ladm_all_models         postgres    false    902            )"           1259    589818 /   col_volumenvalor_lc_servidumbretranst_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_servidumbretranst_vlmen_idx ON test_ladm_all_models.col_volumenvalor USING btree (lc_servidumbretransito_volumen);
 Q   DROP INDEX test_ladm_all_models.col_volumenvalor_lc_servidumbretranst_vlmen_idx;
       test_ladm_all_models         postgres    false    902            *"           1259    589817 '   col_volumenvalor_lc_terreno_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_terreno_volumen_idx ON test_ladm_all_models.col_volumenvalor USING btree (lc_terreno_volumen);
 I   DROP INDEX test_ladm_all_models.col_volumenvalor_lc_terreno_volumen_idx;
       test_ladm_all_models         postgres    false    902            +"           1259    589819 /   col_volumenvalor_lc_unidadconstruccin_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_unidadconstruccin_vlmen_idx ON test_ladm_all_models.col_volumenvalor USING btree (lc_unidadconstruccion_volumen);
 Q   DROP INDEX test_ladm_all_models.col_volumenvalor_lc_unidadconstruccin_vlmen_idx;
       test_ladm_all_models         postgres    false    902            ."           1259    589815    col_volumenvalor_tipo_idx    INDEX     d   CREATE INDEX col_volumenvalor_tipo_idx ON test_ladm_all_models.col_volumenvalor USING btree (tipo);
 ;   DROP INDEX test_ladm_all_models.col_volumenvalor_tipo_idx;
       test_ladm_all_models         postgres    false    902            #"           1259    589808 )   extarchivo_lc_fuenteespacl_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_fuenteespacl_xt_rchv_id_idx ON test_ladm_all_models.extarchivo USING btree (lc_fuenteespacial_ext_archivo_id);
 K   DROP INDEX test_ladm_all_models.extarchivo_lc_fuenteespacl_xt_rchv_id_idx;
       test_ladm_all_models         postgres    false    901            $"           1259    589807 )   extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx ON test_ladm_all_models.extarchivo USING btree (lc_fuenteadministrtiva_ext_archivo_id);
 K   DROP INDEX test_ladm_all_models.extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx;
       test_ladm_all_models         postgres    false    901            '"           1259    589806 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_ladm_all_models.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 K   DROP INDEX test_ladm_all_models.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
       test_ladm_all_models         postgres    false    901            �!           1259    589733 $   extdireccion_clase_via_principal_idx    INDEX     z   CREATE INDEX extdireccion_clase_via_principal_idx ON test_ladm_all_models.extdireccion USING btree (clase_via_principal);
 F   DROP INDEX test_ladm_all_models.extdireccion_clase_via_principal_idx;
       test_ladm_all_models         postgres    false    894            �!           1259    589737 +   extdireccion_extinteresado_ext_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extinteresado_ext_drccn_id_idx ON test_ladm_all_models.extdireccion USING btree (extinteresado_ext_direccion_id);
 M   DROP INDEX test_ladm_all_models.extdireccion_extinteresado_ext_drccn_id_idx;
       test_ladm_all_models         postgres    false    894            �!           1259    589736 +   extdireccion_extndddfccnfsc_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extndddfccnfsc_xt_drccn_id_idx ON test_ladm_all_models.extdireccion USING btree (extunidadedificcnfsica_ext_direccion_id);
 M   DROP INDEX test_ladm_all_models.extdireccion_extndddfccnfsc_xt_drccn_id_idx;
       test_ladm_all_models         postgres    false    894             "           1259    589738 +   extdireccion_lc_construccin_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_construccin_xt_drccn_id_idx ON test_ladm_all_models.extdireccion USING btree (lc_construccion_ext_direccion_id);
 M   DROP INDEX test_ladm_all_models.extdireccion_lc_construccin_xt_drccn_id_idx;
       test_ladm_all_models         postgres    false    894            "           1259    589742 +   extdireccion_lc_nddcnstrccn_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_nddcnstrccn_xt_drccn_id_idx ON test_ladm_all_models.extdireccion USING btree (lc_unidadconstruccion_ext_direccion_id);
 M   DROP INDEX test_ladm_all_models.extdireccion_lc_nddcnstrccn_xt_drccn_id_idx;
       test_ladm_all_models         postgres    false    894            "           1259    589739 $   extdireccion_lc_predio_direccion_idx    INDEX     z   CREATE INDEX extdireccion_lc_predio_direccion_idx ON test_ladm_all_models.extdireccion USING btree (lc_predio_direccion);
 F   DROP INDEX test_ladm_all_models.extdireccion_lc_predio_direccion_idx;
       test_ladm_all_models         postgres    false    894            "           1259    589741 +   extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx ON test_ladm_all_models.extdireccion USING btree (lc_servidumbretransito_ext_direccion_id);
 M   DROP INDEX test_ladm_all_models.extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx;
       test_ladm_all_models         postgres    false    894            "           1259    589740 +   extdireccion_lc_terreno_ext_direccin_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_terreno_ext_direccin_id_idx ON test_ladm_all_models.extdireccion USING btree (lc_terreno_ext_direccion_id);
 M   DROP INDEX test_ladm_all_models.extdireccion_lc_terreno_ext_direccin_id_idx;
       test_ladm_all_models         postgres    false    894            "           1259    589732    extdireccion_localizacion_idx    INDEX     k   CREATE INDEX extdireccion_localizacion_idx ON test_ladm_all_models.extdireccion USING gist (localizacion);
 ?   DROP INDEX test_ladm_all_models.extdireccion_localizacion_idx;
       test_ladm_all_models         postgres    false    894            "           1259    589734    extdireccion_sector_ciudad_idx    INDEX     n   CREATE INDEX extdireccion_sector_ciudad_idx ON test_ladm_all_models.extdireccion USING btree (sector_ciudad);
 @   DROP INDEX test_ladm_all_models.extdireccion_sector_ciudad_idx;
       test_ladm_all_models         postgres    false    894            	"           1259    589735    extdireccion_sector_predio_idx    INDEX     n   CREATE INDEX extdireccion_sector_predio_idx ON test_ladm_all_models.extdireccion USING btree (sector_predio);
 @   DROP INDEX test_ladm_all_models.extdireccion_sector_predio_idx;
       test_ladm_all_models         postgres    false    894            
"           1259    589731    extdireccion_tipo_direccion_idx    INDEX     p   CREATE INDEX extdireccion_tipo_direccion_idx ON test_ladm_all_models.extdireccion USING btree (tipo_direccion);
 A   DROP INDEX test_ladm_all_models.extdireccion_tipo_direccion_idx;
       test_ladm_all_models         postgres    false    894            "           1259    589788 ,   extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx    INDEX     �   CREATE INDEX extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx ON test_ladm_all_models.extinteresado USING btree (extredserviciosfisica_ext_interesado_administrador_id);
 N   DROP INDEX test_ladm_all_models.extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx;
       test_ladm_all_models         postgres    false    899            "           1259    589789 ,   extinteresado_lc_agrupacionntrsds_xt_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_agrupacionntrsds_xt_pid_idx ON test_ladm_all_models.extinteresado USING btree (lc_agrupacionintersdos_ext_pid);
 N   DROP INDEX test_ladm_all_models.extinteresado_lc_agrupacionntrsds_xt_pid_idx;
       test_ladm_all_models         postgres    false    899            "           1259    589790 '   extinteresado_lc_interesado_ext_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_interesado_ext_pid_idx ON test_ladm_all_models.extinteresado USING btree (lc_interesado_ext_pid);
 I   DROP INDEX test_ladm_all_models.extinteresado_lc_interesado_ext_pid_idx;
       test_ladm_all_models         postgres    false    899            "           1259    589749 '   fraccion_col_miembros_participacion_idx    INDEX     �   CREATE INDEX fraccion_col_miembros_participacion_idx ON test_ladm_all_models.fraccion USING btree (col_miembros_participacion);
 I   DROP INDEX test_ladm_all_models.fraccion_col_miembros_participacion_idx;
       test_ladm_all_models         postgres    false    895            "           1259    589750 '   fraccion_lc_predio_copropidd_cfcnte_idx    INDEX     �   CREATE INDEX fraccion_lc_predio_copropidd_cfcnte_idx ON test_ladm_all_models.fraccion USING btree (lc_predio_copropiedad_coeficiente);
 I   DROP INDEX test_ladm_all_models.fraccion_lc_predio_copropidd_cfcnte_idx;
       test_ladm_all_models         postgres    false    895            �"           1259    590022    gc_barrio_geometria_idx    INDEX     _   CREATE INDEX gc_barrio_geometria_idx ON test_ladm_all_models.gc_barrio USING gist (geometria);
 9   DROP INDEX test_ladm_all_models.gc_barrio_geometria_idx;
       test_ladm_all_models         postgres    false    924            �"           1259    590032 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_ladm_all_models.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 V   DROP INDEX test_ladm_all_models.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
       test_ladm_all_models         postgres    false    925            �"           1259    590042 '   gc_comisionesconstruccion_geometria_idx    INDEX        CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_ladm_all_models.gc_comisionesconstruccion USING gist (geometria);
 I   DROP INDEX test_ladm_all_models.gc_comisionesconstruccion_geometria_idx;
       test_ladm_all_models         postgres    false    926            �"           1259    590062 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_ladm_all_models.gc_comisionesunidadconstruccion USING gist (geometria);
 J   DROP INDEX test_ladm_all_models.gc_comisionesnddcnstrccion_geometria_idx;
       test_ladm_all_models         postgres    false    928            �"           1259    590052 "   gc_comisionesterreno_geometria_idx    INDEX     u   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_ladm_all_models.gc_comisionesterreno USING gist (geometria);
 D   DROP INDEX test_ladm_all_models.gc_comisionesterreno_geometria_idx;
       test_ladm_all_models         postgres    false    927            �"           1259    590074    gc_construccion_gc_predio_idx    INDEX     l   CREATE INDEX gc_construccion_gc_predio_idx ON test_ladm_all_models.gc_construccion USING btree (gc_predio);
 ?   DROP INDEX test_ladm_all_models.gc_construccion_gc_predio_idx;
       test_ladm_all_models         postgres    false    929            �"           1259    590073    gc_construccion_geometria_idx    INDEX     k   CREATE INDEX gc_construccion_geometria_idx ON test_ladm_all_models.gc_construccion USING gist (geometria);
 ?   DROP INDEX test_ladm_all_models.gc_construccion_geometria_idx;
       test_ladm_all_models         postgres    false    929            �"           1259    590072 %   gc_construccion_tipo_construccion_idx    INDEX     |   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_ladm_all_models.gc_construccion USING btree (tipo_construccion);
 G   DROP INDEX test_ladm_all_models.gc_construccion_tipo_construccion_idx;
       test_ladm_all_models         postgres    false    929            �"           1259    590207    gc_copropiedad_gc_matriz_idx    INDEX     j   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_ladm_all_models.gc_copropiedad USING btree (gc_matriz);
 >   DROP INDEX test_ladm_all_models.gc_copropiedad_gc_matriz_idx;
       test_ladm_all_models         postgres    false    943            �"           1259    590208    gc_copropiedad_gc_unidad_idx    INDEX     j   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_ladm_all_models.gc_copropiedad USING btree (gc_unidad);
 >   DROP INDEX test_ladm_all_models.gc_copropiedad_gc_unidad_idx;
       test_ladm_all_models         postgres    false    943            �"           1259    592233    gc_copropiedad_gc_unidad_key    INDEX     q   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_ladm_all_models.gc_copropiedad USING btree (gc_unidad);
 >   DROP INDEX test_ladm_all_models.gc_copropiedad_gc_unidad_key;
       test_ladm_all_models         postgres    false    943            �"           1259    590081 "   gc_datosphcondominio_gc_predio_idx    INDEX     v   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_ladm_all_models.gc_datosphcondominio USING btree (gc_predio);
 D   DROP INDEX test_ladm_all_models.gc_datosphcondominio_gc_predio_idx;
       test_ladm_all_models         postgres    false    930            �"           1259    590088 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     �   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_ladm_all_models.gc_datostorreph USING btree (gc_datosphcondominio);
 J   DROP INDEX test_ladm_all_models.gc_datostorreph_gc_datosphcondominio_idx;
       test_ladm_all_models         postgres    false    931            �"           1259    590099 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_ladm_all_models.gc_direccion USING btree (gc_prediocatastro_direcciones);
 M   DROP INDEX test_ladm_all_models.gc_direccion_gc_prediocatastro_dirccnes_idx;
       test_ladm_all_models         postgres    false    932            �"           1259    590098 %   gc_direccion_geometria_referencia_idx    INDEX     {   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_ladm_all_models.gc_direccion USING gist (geometria_referencia);
 G   DROP INDEX test_ladm_all_models.gc_direccion_geometria_referencia_idx;
       test_ladm_all_models         postgres    false    932            �"           1259    590106 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_ladm_all_models.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 P   DROP INDEX test_ladm_all_models.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
       test_ladm_all_models         postgres    false    933            �"           1259    590116    gc_manzana_geometria_idx    INDEX     a   CREATE INDEX gc_manzana_geometria_idx ON test_ladm_all_models.gc_manzana USING gist (geometria);
 :   DROP INDEX test_ladm_all_models.gc_manzana_geometria_idx;
       test_ladm_all_models         postgres    false    934            �"           1259    590126    gc_perimetro_geometria_idx    INDEX     e   CREATE INDEX gc_perimetro_geometria_idx ON test_ladm_all_models.gc_perimetro USING gist (geometria);
 <   DROP INDEX test_ladm_all_models.gc_perimetro_geometria_idx;
       test_ladm_all_models         postgres    false    935            �"           1259    590199 &   gc_prediocatastro_condicion_predio_idx    INDEX     ~   CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_ladm_all_models.gc_prediocatastro USING btree (condicion_predio);
 H   DROP INDEX test_ladm_all_models.gc_prediocatastro_condicion_predio_idx;
       test_ladm_all_models         postgres    false    942            �"           1259    590200 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_ladm_all_models.gc_prediocatastro USING btree (sistema_procedencia_datos);
 Q   DROP INDEX test_ladm_all_models.gc_prediocatastro_sistema_procedencia_datos_idx;
       test_ladm_all_models         postgres    false    942            �"           1259    590136 %   gc_propietario_gc_predio_catastro_idx    INDEX     |   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_ladm_all_models.gc_propietario USING btree (gc_predio_catastro);
 G   DROP INDEX test_ladm_all_models.gc_propietario_gc_predio_catastro_idx;
       test_ladm_all_models         postgres    false    936            �"           1259    590146    gc_sectorrural_geometria_idx    INDEX     i   CREATE INDEX gc_sectorrural_geometria_idx ON test_ladm_all_models.gc_sectorrural USING gist (geometria);
 >   DROP INDEX test_ladm_all_models.gc_sectorrural_geometria_idx;
       test_ladm_all_models         postgres    false    937            �"           1259    590156    gc_sectorurbano_geometria_idx    INDEX     k   CREATE INDEX gc_sectorurbano_geometria_idx ON test_ladm_all_models.gc_sectorurbano USING gist (geometria);
 ?   DROP INDEX test_ladm_all_models.gc_sectorurbano_geometria_idx;
       test_ladm_all_models         postgres    false    938            �"           1259    590167    gc_terreno_gc_predio_idx    INDEX     b   CREATE INDEX gc_terreno_gc_predio_idx ON test_ladm_all_models.gc_terreno USING btree (gc_predio);
 :   DROP INDEX test_ladm_all_models.gc_terreno_gc_predio_idx;
       test_ladm_all_models         postgres    false    939            �"           1259    590166    gc_terreno_geometria_idx    INDEX     a   CREATE INDEX gc_terreno_geometria_idx ON test_ladm_all_models.gc_terreno USING gist (geometria);
 :   DROP INDEX test_ladm_all_models.gc_terreno_geometria_idx;
       test_ladm_all_models         postgres    false    939            �"           1259    590179 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_ladm_all_models.gc_unidadconstruccion USING btree (gc_construccion);
 K   DROP INDEX test_ladm_all_models.gc_unidadconstruccion_gc_construccion_idx;
       test_ladm_all_models         postgres    false    940            �"           1259    590178 #   gc_unidadconstruccion_geometria_idx    INDEX     w   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_ladm_all_models.gc_unidadconstruccion USING gist (geometria);
 E   DROP INDEX test_ladm_all_models.gc_unidadconstruccion_geometria_idx;
       test_ladm_all_models         postgres    false    940            �"           1259    590177 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_ladm_all_models.gc_unidadconstruccion USING btree (tipo_construccion);
 M   DROP INDEX test_ladm_all_models.gc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_all_models         postgres    false    940            �"           1259    590189    gc_vereda_geometria_idx    INDEX     _   CREATE INDEX gc_vereda_geometria_idx ON test_ladm_all_models.gc_vereda USING gist (geometria);
 9   DROP INDEX test_ladm_all_models.gc_vereda_geometria_idx;
       test_ladm_all_models         postgres    false    941            �!           1259    589676    gm_curve3dlistvalue_avalue_idx    INDEX     m   CREATE INDEX gm_curve3dlistvalue_avalue_idx ON test_ladm_all_models.gm_curve3dlistvalue USING gist (avalue);
 @   DROP INDEX test_ladm_all_models.gm_curve3dlistvalue_avalue_idx;
       test_ladm_all_models         postgres    false    888            �!           1259    589677 0   gm_curve3dlistvalue_gm_multicurve3d_geometry_idx    INDEX     �   CREATE INDEX gm_curve3dlistvalue_gm_multicurve3d_geometry_idx ON test_ladm_all_models.gm_curve3dlistvalue USING btree (gm_multicurve3d_geometry);
 R   DROP INDEX test_ladm_all_models.gm_curve3dlistvalue_gm_multicurve3d_geometry_idx;
       test_ladm_all_models         postgres    false    888            �!           1259    589659     gm_surface2dlistvalue_avalue_idx    INDEX     q   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_ladm_all_models.gm_surface2dlistvalue USING gist (avalue);
 B   DROP INDEX test_ladm_all_models.gm_surface2dlistvalue_avalue_idx;
       test_ladm_all_models         postgres    false    886            �!           1259    589660 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_ladm_all_models.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 V   DROP INDEX test_ladm_all_models.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
       test_ladm_all_models         postgres    false    886            �!           1259    589687     gm_surface3dlistvalue_avalue_idx    INDEX     q   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_ladm_all_models.gm_surface3dlistvalue USING gist (avalue);
 B   DROP INDEX test_ladm_all_models.gm_surface3dlistvalue_avalue_idx;
       test_ladm_all_models         postgres    false    889            �!           1259    589688 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_ladm_all_models.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 V   DROP INDEX test_ladm_all_models.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
       test_ladm_all_models         postgres    false    889            "           1259    589778    imagen_extinteresado_firma_idx    INDEX     n   CREATE INDEX imagen_extinteresado_firma_idx ON test_ladm_all_models.imagen USING btree (extinteresado_firma);
 @   DROP INDEX test_ladm_all_models.imagen_extinteresado_firma_idx;
       test_ladm_all_models         postgres    false    898            "           1259    589777 #   imagen_extinteresado_fotografia_idx    INDEX     x   CREATE INDEX imagen_extinteresado_fotografia_idx ON test_ladm_all_models.imagen USING btree (extinteresado_fotografia);
 E   DROP INDEX test_ladm_all_models.imagen_extinteresado_fotografia_idx;
       test_ladm_all_models         postgres    false    898            "           1259    589776 %   imagen_extinteresado_huell_dctlar_idx    INDEX        CREATE INDEX imagen_extinteresado_huell_dctlar_idx ON test_ladm_all_models.imagen USING btree (extinteresado_huella_dactilar);
 G   DROP INDEX test_ladm_all_models.imagen_extinteresado_huell_dctlar_idx;
       test_ladm_all_models         postgres    false    898            �"           1259    590285 (   ini_predioinsumos_gc_predio_catastro_idx    INDEX     �   CREATE INDEX ini_predioinsumos_gc_predio_catastro_idx ON test_ladm_all_models.ini_predioinsumos USING btree (gc_predio_catastro);
 J   DROP INDEX test_ladm_all_models.ini_predioinsumos_gc_predio_catastro_idx;
       test_ladm_all_models         postgres    false    951            �"           1259    590286 )   ini_predioinsumos_snr_predio_juridico_idx    INDEX     �   CREATE INDEX ini_predioinsumos_snr_predio_juridico_idx ON test_ladm_all_models.ini_predioinsumos USING btree (snr_predio_juridico);
 K   DROP INDEX test_ladm_all_models.ini_predioinsumos_snr_predio_juridico_idx;
       test_ladm_all_models         postgres    false    951            �"           1259    590284 )   ini_predioinsumos_tipo_emparejamiento_idx    INDEX     �   CREATE INDEX ini_predioinsumos_tipo_emparejamiento_idx ON test_ladm_all_models.ini_predioinsumos USING btree (tipo_emparejamiento);
 K   DROP INDEX test_ladm_all_models.ini_predioinsumos_tipo_emparejamiento_idx;
       test_ladm_all_models         postgres    false    951            #           1259    590297 !   lc_agrupacioninteresados_tipo_idx    INDEX     t   CREATE INDEX lc_agrupacioninteresados_tipo_idx ON test_ladm_all_models.lc_agrupacioninteresados USING btree (tipo);
 C   DROP INDEX test_ladm_all_models.lc_agrupacioninteresados_tipo_idx;
       test_ladm_all_models         postgres    false    952            h#           1259    590539 5   lc_calificacionconvencinal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_lc_unidad_construccion_idx ON test_ladm_all_models.lc_calificacionconvencional USING btree (lc_unidad_construccion);
 W   DROP INDEX test_ladm_all_models.lc_calificacionconvencinal_lc_unidad_construccion_idx;
       test_ladm_all_models         postgres    false    972            i#           1259    590538 -   lc_calificacionconvencinal_tipo_calificar_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_tipo_calificar_idx ON test_ladm_all_models.lc_calificacionconvencional USING btree (tipo_calificar);
 O   DROP INDEX test_ladm_all_models.lc_calificacionconvencinal_tipo_calificar_idx;
       test_ladm_all_models         postgres    false    972            n#           1259    590548 5   lc_calificacionnoconvncnal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_lc_unidad_construccion_idx ON test_ladm_all_models.lc_calificacionnoconvencional USING btree (lc_unidad_construccion);
 W   DROP INDEX test_ladm_all_models.lc_calificacionnoconvncnal_lc_unidad_construccion_idx;
       test_ladm_all_models         postgres    false    973            o#           1259    590547 )   lc_calificacionnoconvncnal_tipo_anexo_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_tipo_anexo_idx ON test_ladm_all_models.lc_calificacionnoconvencional USING btree (tipo_anexo);
 K   DROP INDEX test_ladm_all_models.lc_calificacionnoconvncnal_tipo_anexo_idx;
       test_ladm_all_models         postgres    false    973            #           1259    590310    lc_construccion_dimension_idx    INDEX     l   CREATE INDEX lc_construccion_dimension_idx ON test_ladm_all_models.lc_construccion USING btree (dimension);
 ?   DROP INDEX test_ladm_all_models.lc_construccion_dimension_idx;
       test_ladm_all_models         postgres    false    953            #           1259    590312    lc_construccion_geometria_idx    INDEX     k   CREATE INDEX lc_construccion_geometria_idx ON test_ladm_all_models.lc_construccion USING gist (geometria);
 ?   DROP INDEX test_ladm_all_models.lc_construccion_geometria_idx;
       test_ladm_all_models         postgres    false    953            #           1259    590311 '   lc_construccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_construccion_relacion_superficie_idx ON test_ladm_all_models.lc_construccion USING btree (relacion_superficie);
 I   DROP INDEX test_ladm_all_models.lc_construccion_relacion_superficie_idx;
       test_ladm_all_models         postgres    false    953            #           1259    590308 %   lc_construccion_tipo_construccion_idx    INDEX     |   CREATE INDEX lc_construccion_tipo_construccion_idx ON test_ladm_all_models.lc_construccion USING btree (tipo_construccion);
 G   DROP INDEX test_ladm_all_models.lc_construccion_tipo_construccion_idx;
       test_ladm_all_models         postgres    false    953            	#           1259    590309     lc_construccion_tipo_dominio_idx    INDEX     r   CREATE INDEX lc_construccion_tipo_dominio_idx ON test_ladm_all_models.lc_construccion USING btree (tipo_dominio);
 B   DROP INDEX test_ladm_all_models.lc_construccion_tipo_dominio_idx;
       test_ladm_all_models         postgres    false    953            
#           1259    590325 *   lc_contactovisita_lc_datos_adicionales_idx    INDEX     �   CREATE INDEX lc_contactovisita_lc_datos_adicionales_idx ON test_ladm_all_models.lc_contactovisita USING btree (lc_datos_adicionales);
 L   DROP INDEX test_ladm_all_models.lc_contactovisita_lc_datos_adicionales_idx;
       test_ladm_all_models         postgres    false    954            #           1259    590324 )   lc_contactovisita_relacion_con_predio_idx    INDEX     �   CREATE INDEX lc_contactovisita_relacion_con_predio_idx ON test_ladm_all_models.lc_contactovisita USING btree (relacion_con_predio);
 K   DROP INDEX test_ladm_all_models.lc_contactovisita_relacion_con_predio_idx;
       test_ladm_all_models         postgres    false    954            #           1259    590323 0   lc_contactovisita_tipo_documento_quien_tndio_idx    INDEX     �   CREATE INDEX lc_contactovisita_tipo_documento_quien_tndio_idx ON test_ladm_all_models.lc_contactovisita USING btree (tipo_documento_quien_atendio);
 R   DROP INDEX test_ladm_all_models.lc_contactovisita_tipo_documento_quien_tndio_idx;
       test_ladm_all_models         postgres    false    954            #           1259    590333 "   lc_datosphcondominio_lc_predio_idx    INDEX     v   CREATE INDEX lc_datosphcondominio_lc_predio_idx ON test_ladm_all_models.lc_datosphcondominio USING btree (lc_predio);
 D   DROP INDEX test_ladm_all_models.lc_datosphcondominio_lc_predio_idx;
       test_ladm_all_models         postgres    false    955            r#           1259    590562 .   lc_datsdcnlslvntmntctstral_categoria_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_categoria_suelo_idx ON test_ladm_all_models.lc_datosadicionaleslevantamientocatastral USING btree (categoria_suelo);
 P   DROP INDEX test_ladm_all_models.lc_datsdcnlslvntmntctstral_categoria_suelo_idx;
       test_ladm_all_models         postgres    false    974            s#           1259    590561 *   lc_datsdcnlslvntmntctstral_clase_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_clase_suelo_idx ON test_ladm_all_models.lc_datosadicionaleslevantamientocatastral USING btree (clase_suelo);
 L   DROP INDEX test_ladm_all_models.lc_datsdcnlslvntmntctstral_clase_suelo_idx;
       test_ladm_all_models         postgres    false    974            t#           1259    590560 4   lc_datsdcnlslvntmntctstral_destinacion_economica_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_destinacion_economica_idx ON test_ladm_all_models.lc_datosadicionaleslevantamientocatastral USING btree (destinacion_economica);
 V   DROP INDEX test_ladm_all_models.lc_datsdcnlslvntmntctstral_destinacion_economica_idx;
       test_ladm_all_models         postgres    false    974            u#           1259    590565 (   lc_datsdcnlslvntmntctstral_lc_predio_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_lc_predio_idx ON test_ladm_all_models.lc_datosadicionaleslevantamientocatastral USING btree (lc_predio);
 J   DROP INDEX test_ladm_all_models.lc_datsdcnlslvntmntctstral_lc_predio_idx;
       test_ladm_all_models         postgres    false    974            v#           1259    590559 9   lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx ON test_ladm_all_models.lc_datosadicionaleslevantamientocatastral USING btree (procedimiento_catastral_registral);
 [   DROP INDEX test_ladm_all_models.lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx;
       test_ladm_all_models         postgres    false    974            w#           1259    590564 /   lc_datsdcnlslvntmntctstral_resultado_visita_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_resultado_visita_idx ON test_ladm_all_models.lc_datosadicionaleslevantamientocatastral USING btree (resultado_visita);
 Q   DROP INDEX test_ladm_all_models.lc_datsdcnlslvntmntctstral_resultado_visita_idx;
       test_ladm_all_models         postgres    false    974            x#           1259    590563 9   lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx ON test_ladm_all_models.lc_datosadicionaleslevantamientocatastral USING btree (tipo_documento_reconocedor);
 [   DROP INDEX test_ladm_all_models.lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx;
       test_ladm_all_models         postgres    false    974            #           1259    590346 )   lc_derecho_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_grpcnntrsdos_idx ON test_ladm_all_models.lc_derecho USING btree (interesado_lc_agrupacioninteresados);
 K   DROP INDEX test_ladm_all_models.lc_derecho_interesado_lc_grpcnntrsdos_idx;
       test_ladm_all_models         postgres    false    956            #           1259    590345 '   lc_derecho_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_interesado_idx ON test_ladm_all_models.lc_derecho USING btree (interesado_lc_interesado);
 I   DROP INDEX test_ladm_all_models.lc_derecho_interesado_lc_interesado_idx;
       test_ladm_all_models         postgres    false    956            #           1259    590344    lc_derecho_tipo_idx    INDEX     X   CREATE INDEX lc_derecho_tipo_idx ON test_ladm_all_models.lc_derecho USING btree (tipo);
 5   DROP INDEX test_ladm_all_models.lc_derecho_tipo_idx;
       test_ladm_all_models         postgres    false    956            #           1259    590347    lc_derecho_unidad_idx    INDEX     \   CREATE INDEX lc_derecho_unidad_idx ON test_ladm_all_models.lc_derecho USING btree (unidad);
 7   DROP INDEX test_ladm_all_models.lc_derecho_unidad_idx;
       test_ladm_all_models         postgres    false    956            #           1259    590354 6   lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx    INDEX     �   CREATE INDEX lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx ON test_ladm_all_models.lc_estructuranovedadfmi USING btree (lc_dtsdcnlstmntctstral_novedad_fmi);
 X   DROP INDEX test_ladm_all_models.lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx;
       test_ladm_all_models         postgres    false    957            #           1259    590362 9   lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx ON test_ladm_all_models.lc_estructuranovedadnumeropredial USING btree (lc_dtsdcnlstmntctstral_novedad_numeros_prediales);
 [   DROP INDEX test_ladm_all_models.lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx;
       test_ladm_all_models         postgres    false    958            #           1259    590361 +   lc_estructuranvddnmrprdial_tipo_novedad_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_tipo_novedad_idx ON test_ladm_all_models.lc_estructuranovedadnumeropredial USING btree (tipo_novedad);
 M   DROP INDEX test_ladm_all_models.lc_estructuranvddnmrprdial_tipo_novedad_idx;
       test_ladm_all_models         postgres    false    958            #           1259    590374 1   lc_fuenteadministrativa_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_estado_disponibilidad_idx ON test_ladm_all_models.lc_fuenteadministrativa USING btree (estado_disponibilidad);
 S   DROP INDEX test_ladm_all_models.lc_fuenteadministrativa_estado_disponibilidad_idx;
       test_ladm_all_models         postgres    false    959            "#           1259    590373     lc_fuenteadministrativa_tipo_idx    INDEX     r   CREATE INDEX lc_fuenteadministrativa_tipo_idx ON test_ladm_all_models.lc_fuenteadministrativa USING btree (tipo);
 B   DROP INDEX test_ladm_all_models.lc_fuenteadministrativa_tipo_idx;
       test_ladm_all_models         postgres    false    959            ##           1259    590375 *   lc_fuenteadministrativa_tipo_principal_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_tipo_principal_idx ON test_ladm_all_models.lc_fuenteadministrativa USING btree (tipo_principal);
 L   DROP INDEX test_ladm_all_models.lc_fuenteadministrativa_tipo_principal_idx;
       test_ladm_all_models         postgres    false    959            $#           1259    590387 +   lc_fuenteespacial_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_estado_disponibilidad_idx ON test_ladm_all_models.lc_fuenteespacial USING btree (estado_disponibilidad);
 M   DROP INDEX test_ladm_all_models.lc_fuenteespacial_estado_disponibilidad_idx;
       test_ladm_all_models         postgres    false    960            '#           1259    590386    lc_fuenteespacial_tipo_idx    INDEX     f   CREATE INDEX lc_fuenteespacial_tipo_idx ON test_ladm_all_models.lc_fuenteespacial USING btree (tipo);
 <   DROP INDEX test_ladm_all_models.lc_fuenteespacial_tipo_idx;
       test_ladm_all_models         postgres    false    960            (#           1259    590388 $   lc_fuenteespacial_tipo_principal_idx    INDEX     z   CREATE INDEX lc_fuenteespacial_tipo_principal_idx ON test_ladm_all_models.lc_fuenteespacial USING btree (tipo_principal);
 F   DROP INDEX test_ladm_all_models.lc_fuenteespacial_tipo_principal_idx;
       test_ladm_all_models         postgres    false    960            )#           1259    590396 +   lc_grupocalificacion_clase_calificacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_clase_calificacion_idx ON test_ladm_all_models.lc_grupocalificacion USING btree (clase_calificacion);
 M   DROP INDEX test_ladm_all_models.lc_grupocalificacion_clase_calificacion_idx;
       test_ladm_all_models         postgres    false    961            *#           1259    590397 %   lc_grupocalificacion_conservacion_idx    INDEX     |   CREATE INDEX lc_grupocalificacion_conservacion_idx ON test_ladm_all_models.lc_grupocalificacion USING btree (conservacion);
 G   DROP INDEX test_ladm_all_models.lc_grupocalificacion_conservacion_idx;
       test_ladm_all_models         postgres    false    961            +#           1259    590398 3   lc_grupocalificacion_lc_calificacion_convencnal_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_lc_calificacion_convencnal_idx ON test_ladm_all_models.lc_grupocalificacion USING btree (lc_calificacion_convencional);
 U   DROP INDEX test_ladm_all_models.lc_grupocalificacion_lc_calificacion_convencnal_idx;
       test_ladm_all_models         postgres    false    961            .#           1259    590412    lc_interesado_grupo_etnico_idx    INDEX     n   CREATE INDEX lc_interesado_grupo_etnico_idx ON test_ladm_all_models.lc_interesado USING btree (grupo_etnico);
 @   DROP INDEX test_ladm_all_models.lc_interesado_grupo_etnico_idx;
       test_ladm_all_models         postgres    false    962            1#           1259    590411    lc_interesado_sexo_idx    INDEX     ^   CREATE INDEX lc_interesado_sexo_idx ON test_ladm_all_models.lc_interesado USING btree (sexo);
 8   DROP INDEX test_ladm_all_models.lc_interesado_sexo_idx;
       test_ladm_all_models         postgres    false    962            2#           1259    590410     lc_interesado_tipo_documento_idx    INDEX     r   CREATE INDEX lc_interesado_tipo_documento_idx ON test_ladm_all_models.lc_interesado USING btree (tipo_documento);
 B   DROP INDEX test_ladm_all_models.lc_interesado_tipo_documento_idx;
       test_ladm_all_models         postgres    false    962            3#           1259    590409    lc_interesado_tipo_idx    INDEX     ^   CREATE INDEX lc_interesado_tipo_idx ON test_ladm_all_models.lc_interesado USING btree (tipo);
 8   DROP INDEX test_ladm_all_models.lc_interesado_tipo_idx;
       test_ladm_all_models         postgres    false    962            4#           1259    590423 '   lc_interesadocontacto_lc_interesado_idx    INDEX     �   CREATE INDEX lc_interesadocontacto_lc_interesado_idx ON test_ladm_all_models.lc_interesadocontacto USING btree (lc_interesado);
 I   DROP INDEX test_ladm_all_models.lc_interesadocontacto_lc_interesado_idx;
       test_ladm_all_models         postgres    false    963            7#           1259    590434    lc_lindero_geometria_idx    INDEX     a   CREATE INDEX lc_lindero_geometria_idx ON test_ladm_all_models.lc_lindero USING gist (geometria);
 :   DROP INDEX test_ladm_all_models.lc_lindero_geometria_idx;
       test_ladm_all_models         postgres    false    964            :#           1259    590443 /   lc_objetoconstruccion_lc_grupo_calificacion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_lc_grupo_calificacion_idx ON test_ladm_all_models.lc_objetoconstruccion USING btree (lc_grupo_calificacion);
 Q   DROP INDEX test_ladm_all_models.lc_objetoconstruccion_lc_grupo_calificacion_idx;
       test_ladm_all_models         postgres    false    965            =#           1259    590442 2   lc_objetoconstruccion_tipo_objeto_construccion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_tipo_objeto_construccion_idx ON test_ladm_all_models.lc_objetoconstruccion USING btree (tipo_objeto_construccion);
 T   DROP INDEX test_ladm_all_models.lc_objetoconstruccion_tipo_objeto_construccion_idx;
       test_ladm_all_models         postgres    false    965            @#           1259    590452 (   lc_ofertasmercadoinmoblrio_lc_predio_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_lc_predio_idx ON test_ladm_all_models.lc_ofertasmercadoinmobiliario USING btree (lc_predio);
 J   DROP INDEX test_ladm_all_models.lc_ofertasmercadoinmoblrio_lc_predio_idx;
       test_ladm_all_models         postgres    false    966            A#           1259    590451 *   lc_ofertasmercadoinmoblrio_tipo_oferta_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_tipo_oferta_idx ON test_ladm_all_models.lc_ofertasmercadoinmobiliario USING btree (tipo_oferta);
 L   DROP INDEX test_ladm_all_models.lc_ofertasmercadoinmoblrio_tipo_oferta_idx;
       test_ladm_all_models         postgres    false    966            B#           1259    590464    lc_predio_condicion_predio_idx    INDEX     n   CREATE INDEX lc_predio_condicion_predio_idx ON test_ladm_all_models.lc_predio USING btree (condicion_predio);
 @   DROP INDEX test_ladm_all_models.lc_predio_condicion_predio_idx;
       test_ladm_all_models         postgres    false    967            �#           1259    590602 %   lc_predio_copropiedad_copropiedad_idx    INDEX     |   CREATE INDEX lc_predio_copropiedad_copropiedad_idx ON test_ladm_all_models.lc_predio_copropiedad USING btree (copropiedad);
 G   DROP INDEX test_ladm_all_models.lc_predio_copropiedad_copropiedad_idx;
       test_ladm_all_models         postgres    false    977            �#           1259    590601     lc_predio_copropiedad_predio_idx    INDEX     r   CREATE INDEX lc_predio_copropiedad_predio_idx ON test_ladm_all_models.lc_predio_copropiedad USING btree (predio);
 B   DROP INDEX test_ladm_all_models.lc_predio_copropiedad_predio_idx;
       test_ladm_all_models         postgres    false    977            �#           1259    592759     lc_predio_copropiedad_predio_key    INDEX     y   CREATE UNIQUE INDEX lc_predio_copropiedad_predio_key ON test_ladm_all_models.lc_predio_copropiedad USING btree (predio);
 B   DROP INDEX test_ladm_all_models.lc_predio_copropiedad_predio_key;
       test_ladm_all_models         postgres    false    977            �#           1259    590609 1   lc_predio_ini_predioinsmos_ini_predio_insumos_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_ini_predio_insumos_idx ON test_ladm_all_models.lc_predio_ini_predioinsumos USING btree (ini_predio_insumos);
 S   DROP INDEX test_ladm_all_models.lc_predio_ini_predioinsmos_ini_predio_insumos_idx;
       test_ladm_all_models         postgres    false    978            �#           1259    590610 (   lc_predio_ini_predioinsmos_lc_predio_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_lc_predio_idx ON test_ladm_all_models.lc_predio_ini_predioinsumos USING btree (lc_predio);
 J   DROP INDEX test_ladm_all_models.lc_predio_ini_predioinsmos_lc_predio_idx;
       test_ladm_all_models         postgres    false    978            E#           1259    590463    lc_predio_tipo_idx    INDEX     V   CREATE INDEX lc_predio_tipo_idx ON test_ladm_all_models.lc_predio USING btree (tipo);
 4   DROP INDEX test_ladm_all_models.lc_predio_tipo_idx;
       test_ladm_all_models         postgres    false    967            F#           1259    590479    lc_puntocontrol_geometria_idx    INDEX     k   CREATE INDEX lc_puntocontrol_geometria_idx ON test_ladm_all_models.lc_puntocontrol USING gist (geometria);
 ?   DROP INDEX test_ladm_all_models.lc_puntocontrol_geometria_idx;
       test_ladm_all_models         postgres    false    968            G#           1259    590478 $   lc_puntocontrol_metodoproduccion_idx    INDEX     z   CREATE INDEX lc_puntocontrol_metodoproduccion_idx ON test_ladm_all_models.lc_puntocontrol USING btree (metodoproduccion);
 F   DROP INDEX test_ladm_all_models.lc_puntocontrol_metodoproduccion_idx;
       test_ladm_all_models         postgres    false    968            J#           1259    590477 *   lc_puntocontrol_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_posicion_interpolacion_idx ON test_ladm_all_models.lc_puntocontrol USING btree (posicion_interpolacion);
 L   DROP INDEX test_ladm_all_models.lc_puntocontrol_posicion_interpolacion_idx;
       test_ladm_all_models         postgres    false    968            K#           1259    590475    lc_puntocontrol_puntotipo_idx    INDEX     l   CREATE INDEX lc_puntocontrol_puntotipo_idx ON test_ladm_all_models.lc_puntocontrol USING btree (puntotipo);
 ?   DROP INDEX test_ladm_all_models.lc_puntocontrol_puntotipo_idx;
       test_ladm_all_models         postgres    false    968            L#           1259    590476 &   lc_puntocontrol_tipo_punto_control_idx    INDEX     ~   CREATE INDEX lc_puntocontrol_tipo_punto_control_idx ON test_ladm_all_models.lc_puntocontrol USING btree (tipo_punto_control);
 H   DROP INDEX test_ladm_all_models.lc_puntocontrol_tipo_punto_control_idx;
       test_ladm_all_models         postgres    false    968            M#           1259    590483 &   lc_puntocontrol_ue_lc_construccion_idx    INDEX     ~   CREATE INDEX lc_puntocontrol_ue_lc_construccion_idx ON test_ladm_all_models.lc_puntocontrol USING btree (ue_lc_construccion);
 H   DROP INDEX test_ladm_all_models.lc_puntocontrol_ue_lc_construccion_idx;
       test_ladm_all_models         postgres    false    968            N#           1259    590481 -   lc_puntocontrol_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_servidumbretransito_idx ON test_ladm_all_models.lc_puntocontrol USING btree (ue_lc_servidumbretransito);
 O   DROP INDEX test_ladm_all_models.lc_puntocontrol_ue_lc_servidumbretransito_idx;
       test_ladm_all_models         postgres    false    968            O#           1259    590480 !   lc_puntocontrol_ue_lc_terreno_idx    INDEX     t   CREATE INDEX lc_puntocontrol_ue_lc_terreno_idx ON test_ladm_all_models.lc_puntocontrol USING btree (ue_lc_terreno);
 C   DROP INDEX test_ladm_all_models.lc_puntocontrol_ue_lc_terreno_idx;
       test_ladm_all_models         postgres    false    968            P#           1259    590482 ,   lc_puntocontrol_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_unidadconstruccion_idx ON test_ladm_all_models.lc_puntocontrol USING btree (ue_lc_unidadconstruccion);
 N   DROP INDEX test_ladm_all_models.lc_puntocontrol_ue_lc_unidadconstruccion_idx;
       test_ladm_all_models         postgres    false    968            y#           1259    590578 ,   lc_puntolevantamiento_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_fotoidentificacion_idx ON test_ladm_all_models.lc_puntolevantamiento USING btree (fotoidentificacion);
 N   DROP INDEX test_ladm_all_models.lc_puntolevantamiento_fotoidentificacion_idx;
       test_ladm_all_models         postgres    false    975            z#           1259    590581 #   lc_puntolevantamiento_geometria_idx    INDEX     w   CREATE INDEX lc_puntolevantamiento_geometria_idx ON test_ladm_all_models.lc_puntolevantamiento USING gist (geometria);
 E   DROP INDEX test_ladm_all_models.lc_puntolevantamiento_geometria_idx;
       test_ladm_all_models         postgres    false    975            {#           1259    590580 *   lc_puntolevantamiento_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_metodoproduccion_idx ON test_ladm_all_models.lc_puntolevantamiento USING btree (metodoproduccion);
 L   DROP INDEX test_ladm_all_models.lc_puntolevantamiento_metodoproduccion_idx;
       test_ladm_all_models         postgres    false    975            ~#           1259    590579 0   lc_puntolevantamiento_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_posicion_interpolacion_idx ON test_ladm_all_models.lc_puntolevantamiento USING btree (posicion_interpolacion);
 R   DROP INDEX test_ladm_all_models.lc_puntolevantamiento_posicion_interpolacion_idx;
       test_ladm_all_models         postgres    false    975            #           1259    590576 #   lc_puntolevantamiento_puntotipo_idx    INDEX     x   CREATE INDEX lc_puntolevantamiento_puntotipo_idx ON test_ladm_all_models.lc_puntolevantamiento USING btree (puntotipo);
 E   DROP INDEX test_ladm_all_models.lc_puntolevantamiento_puntotipo_idx;
       test_ladm_all_models         postgres    false    975            �#           1259    590577 2   lc_puntolevantamiento_tipo_punto_levantamiento_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_tipo_punto_levantamiento_idx ON test_ladm_all_models.lc_puntolevantamiento USING btree (tipo_punto_levantamiento);
 T   DROP INDEX test_ladm_all_models.lc_puntolevantamiento_tipo_punto_levantamiento_idx;
       test_ladm_all_models         postgres    false    975            �#           1259    590585 ,   lc_puntolevantamiento_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_construccion_idx ON test_ladm_all_models.lc_puntolevantamiento USING btree (ue_lc_construccion);
 N   DROP INDEX test_ladm_all_models.lc_puntolevantamiento_ue_lc_construccion_idx;
       test_ladm_all_models         postgres    false    975            �#           1259    590583 3   lc_puntolevantamiento_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_servidumbretransito_idx ON test_ladm_all_models.lc_puntolevantamiento USING btree (ue_lc_servidumbretransito);
 U   DROP INDEX test_ladm_all_models.lc_puntolevantamiento_ue_lc_servidumbretransito_idx;
       test_ladm_all_models         postgres    false    975            �#           1259    590582 '   lc_puntolevantamiento_ue_lc_terreno_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_terreno_idx ON test_ladm_all_models.lc_puntolevantamiento USING btree (ue_lc_terreno);
 I   DROP INDEX test_ladm_all_models.lc_puntolevantamiento_ue_lc_terreno_idx;
       test_ladm_all_models         postgres    false    975            �#           1259    590584 2   lc_puntolevantamiento_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_unidadconstruccion_idx ON test_ladm_all_models.lc_puntolevantamiento USING btree (ue_lc_unidadconstruccion);
 T   DROP INDEX test_ladm_all_models.lc_puntolevantamiento_ue_lc_unidadconstruccion_idx;
       test_ladm_all_models         postgres    false    975            Q#           1259    590495    lc_puntolindero_acuerdo_idx    INDEX     h   CREATE INDEX lc_puntolindero_acuerdo_idx ON test_ladm_all_models.lc_puntolindero USING btree (acuerdo);
 =   DROP INDEX test_ladm_all_models.lc_puntolindero_acuerdo_idx;
       test_ladm_all_models         postgres    false    969            R#           1259    590496 &   lc_puntolindero_fotoidentificacion_idx    INDEX     ~   CREATE INDEX lc_puntolindero_fotoidentificacion_idx ON test_ladm_all_models.lc_puntolindero USING btree (fotoidentificacion);
 H   DROP INDEX test_ladm_all_models.lc_puntolindero_fotoidentificacion_idx;
       test_ladm_all_models         postgres    false    969            S#           1259    590499    lc_puntolindero_geometria_idx    INDEX     k   CREATE INDEX lc_puntolindero_geometria_idx ON test_ladm_all_models.lc_puntolindero USING gist (geometria);
 ?   DROP INDEX test_ladm_all_models.lc_puntolindero_geometria_idx;
       test_ladm_all_models         postgres    false    969            T#           1259    590498 $   lc_puntolindero_metodoproduccion_idx    INDEX     z   CREATE INDEX lc_puntolindero_metodoproduccion_idx ON test_ladm_all_models.lc_puntolindero USING btree (metodoproduccion);
 F   DROP INDEX test_ladm_all_models.lc_puntolindero_metodoproduccion_idx;
       test_ladm_all_models         postgres    false    969            W#           1259    590497 *   lc_puntolindero_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_posicion_interpolacion_idx ON test_ladm_all_models.lc_puntolindero USING btree (posicion_interpolacion);
 L   DROP INDEX test_ladm_all_models.lc_puntolindero_posicion_interpolacion_idx;
       test_ladm_all_models         postgres    false    969            X#           1259    590494    lc_puntolindero_puntotipo_idx    INDEX     l   CREATE INDEX lc_puntolindero_puntotipo_idx ON test_ladm_all_models.lc_puntolindero USING btree (puntotipo);
 ?   DROP INDEX test_ladm_all_models.lc_puntolindero_puntotipo_idx;
       test_ladm_all_models         postgres    false    969            Y#           1259    590503 &   lc_puntolindero_ue_lc_construccion_idx    INDEX     ~   CREATE INDEX lc_puntolindero_ue_lc_construccion_idx ON test_ladm_all_models.lc_puntolindero USING btree (ue_lc_construccion);
 H   DROP INDEX test_ladm_all_models.lc_puntolindero_ue_lc_construccion_idx;
       test_ladm_all_models         postgres    false    969            Z#           1259    590501 -   lc_puntolindero_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_servidumbretransito_idx ON test_ladm_all_models.lc_puntolindero USING btree (ue_lc_servidumbretransito);
 O   DROP INDEX test_ladm_all_models.lc_puntolindero_ue_lc_servidumbretransito_idx;
       test_ladm_all_models         postgres    false    969            [#           1259    590500 !   lc_puntolindero_ue_lc_terreno_idx    INDEX     t   CREATE INDEX lc_puntolindero_ue_lc_terreno_idx ON test_ladm_all_models.lc_puntolindero USING btree (ue_lc_terreno);
 C   DROP INDEX test_ladm_all_models.lc_puntolindero_ue_lc_terreno_idx;
       test_ladm_all_models         postgres    false    969            \#           1259    590502 ,   lc_puntolindero_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_unidadconstruccion_idx ON test_ladm_all_models.lc_puntolindero USING btree (ue_lc_unidadconstruccion);
 N   DROP INDEX test_ladm_all_models.lc_puntolindero_ue_lc_unidadconstruccion_idx;
       test_ladm_all_models         postgres    false    969            ]#           1259    590516 -   lc_restriccion_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_grpcnntrsdos_idx ON test_ladm_all_models.lc_restriccion USING btree (interesado_lc_agrupacioninteresados);
 O   DROP INDEX test_ladm_all_models.lc_restriccion_interesado_lc_grpcnntrsdos_idx;
       test_ladm_all_models         postgres    false    970            ^#           1259    590515 +   lc_restriccion_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_interesado_idx ON test_ladm_all_models.lc_restriccion USING btree (interesado_lc_interesado);
 M   DROP INDEX test_ladm_all_models.lc_restriccion_interesado_lc_interesado_idx;
       test_ladm_all_models         postgres    false    970            a#           1259    590514    lc_restriccion_tipo_idx    INDEX     `   CREATE INDEX lc_restriccion_tipo_idx ON test_ladm_all_models.lc_restriccion USING btree (tipo);
 9   DROP INDEX test_ladm_all_models.lc_restriccion_tipo_idx;
       test_ladm_all_models         postgres    false    970            b#           1259    590517    lc_restriccion_unidad_idx    INDEX     d   CREATE INDEX lc_restriccion_unidad_idx ON test_ladm_all_models.lc_restriccion USING btree (unidad);
 ;   DROP INDEX test_ladm_all_models.lc_restriccion_unidad_idx;
       test_ladm_all_models         postgres    false    970            �#           1259    590621 $   lc_servidumbretransito_dimension_idx    INDEX     z   CREATE INDEX lc_servidumbretransito_dimension_idx ON test_ladm_all_models.lc_servidumbretransito USING btree (dimension);
 F   DROP INDEX test_ladm_all_models.lc_servidumbretransito_dimension_idx;
       test_ladm_all_models         postgres    false    979            �#           1259    590623 $   lc_servidumbretransito_geometria_idx    INDEX     y   CREATE INDEX lc_servidumbretransito_geometria_idx ON test_ladm_all_models.lc_servidumbretransito USING gist (geometria);
 F   DROP INDEX test_ladm_all_models.lc_servidumbretransito_geometria_idx;
       test_ladm_all_models         postgres    false    979            �#           1259    590622 .   lc_servidumbretransito_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_relacion_superficie_idx ON test_ladm_all_models.lc_servidumbretransito USING btree (relacion_superficie);
 P   DROP INDEX test_ladm_all_models.lc_servidumbretransito_relacion_superficie_idx;
       test_ladm_all_models         postgres    false    979            c#           1259    590529    lc_terreno_dimension_idx    INDEX     b   CREATE INDEX lc_terreno_dimension_idx ON test_ladm_all_models.lc_terreno USING btree (dimension);
 :   DROP INDEX test_ladm_all_models.lc_terreno_dimension_idx;
       test_ladm_all_models         postgres    false    971            d#           1259    590528    lc_terreno_geometria_idx    INDEX     a   CREATE INDEX lc_terreno_geometria_idx ON test_ladm_all_models.lc_terreno USING gist (geometria);
 :   DROP INDEX test_ladm_all_models.lc_terreno_geometria_idx;
       test_ladm_all_models         postgres    false    971            g#           1259    590530 "   lc_terreno_relacion_superficie_idx    INDEX     v   CREATE INDEX lc_terreno_relacion_superficie_idx ON test_ladm_all_models.lc_terreno USING btree (relacion_superficie);
 D   DROP INDEX test_ladm_all_models.lc_terreno_relacion_superficie_idx;
       test_ladm_all_models         postgres    false    971            �#           1259    590594 3   lc_tipologiaconstruccion_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_lc_unidad_construccion_idx ON test_ladm_all_models.lc_tipologiaconstruccion USING btree (lc_unidad_construccion);
 U   DROP INDEX test_ladm_all_models.lc_tipologiaconstruccion_lc_unidad_construccion_idx;
       test_ladm_all_models         postgres    false    976            �#           1259    590593 +   lc_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_tipo_tipologia_idx ON test_ladm_all_models.lc_tipologiaconstruccion USING btree (tipo_tipologia);
 M   DROP INDEX test_ladm_all_models.lc_tipologiaconstruccion_tipo_tipologia_idx;
       test_ladm_all_models         postgres    false    976            �#           1259    590640 #   lc_unidadconstruccion_dimension_idx    INDEX     x   CREATE INDEX lc_unidadconstruccion_dimension_idx ON test_ladm_all_models.lc_unidadconstruccion USING btree (dimension);
 E   DROP INDEX test_ladm_all_models.lc_unidadconstruccion_dimension_idx;
       test_ladm_all_models         postgres    false    980            �#           1259    590642 #   lc_unidadconstruccion_geometria_idx    INDEX     w   CREATE INDEX lc_unidadconstruccion_geometria_idx ON test_ladm_all_models.lc_unidadconstruccion USING gist (geometria);
 E   DROP INDEX test_ladm_all_models.lc_unidadconstruccion_geometria_idx;
       test_ladm_all_models         postgres    false    980            �#           1259    590639 )   lc_unidadconstruccion_lc_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_lc_construccion_idx ON test_ladm_all_models.lc_unidadconstruccion USING btree (lc_construccion);
 K   DROP INDEX test_ladm_all_models.lc_unidadconstruccion_lc_construccion_idx;
       test_ladm_all_models         postgres    false    980            �#           1259    590641 -   lc_unidadconstruccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_relacion_superficie_idx ON test_ladm_all_models.lc_unidadconstruccion USING btree (relacion_superficie);
 O   DROP INDEX test_ladm_all_models.lc_unidadconstruccion_relacion_superficie_idx;
       test_ladm_all_models         postgres    false    980            �#           1259    590635 +   lc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_construccion_idx ON test_ladm_all_models.lc_unidadconstruccion USING btree (tipo_construccion);
 M   DROP INDEX test_ladm_all_models.lc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_all_models         postgres    false    980            �#           1259    590634 &   lc_unidadconstruccion_tipo_dominio_idx    INDEX     ~   CREATE INDEX lc_unidadconstruccion_tipo_dominio_idx ON test_ladm_all_models.lc_unidadconstruccion USING btree (tipo_dominio);
 H   DROP INDEX test_ladm_all_models.lc_unidadconstruccion_tipo_dominio_idx;
       test_ladm_all_models         postgres    false    980            �#           1259    590637 %   lc_unidadconstruccion_tipo_planta_idx    INDEX     |   CREATE INDEX lc_unidadconstruccion_tipo_planta_idx ON test_ladm_all_models.lc_unidadconstruccion USING btree (tipo_planta);
 G   DROP INDEX test_ladm_all_models.lc_unidadconstruccion_tipo_planta_idx;
       test_ladm_all_models         postgres    false    980            �#           1259    590636 2   lc_unidadconstruccion_tipo_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_unidad_construccion_idx ON test_ladm_all_models.lc_unidadconstruccion USING btree (tipo_unidad_construccion);
 T   DROP INDEX test_ladm_all_models.lc_unidadconstruccion_tipo_unidad_construccion_idx;
       test_ladm_all_models         postgres    false    980            �#           1259    590638    lc_unidadconstruccion_uso_idx    INDEX     l   CREATE INDEX lc_unidadconstruccion_uso_idx ON test_ladm_all_models.lc_unidadconstruccion USING btree (uso);
 ?   DROP INDEX test_ladm_all_models.lc_unidadconstruccion_uso_idx;
       test_ladm_all_models         postgres    false    980            �"           1259    590215 (   snr_derecho_calidad_derecho_registro_idx    INDEX     �   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_ladm_all_models.snr_derecho USING btree (calidad_derecho_registro);
 J   DROP INDEX test_ladm_all_models.snr_derecho_calidad_derecho_registro_idx;
       test_ladm_all_models         postgres    false    944            �"           1259    590216 "   snr_derecho_snr_fuente_derecho_idx    INDEX     v   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_ladm_all_models.snr_derecho USING btree (snr_fuente_derecho);
 D   DROP INDEX test_ladm_all_models.snr_derecho_snr_fuente_derecho_idx;
       test_ladm_all_models         postgres    false    944            �"           1259    590217 #   snr_derecho_snr_predio_registro_idx    INDEX     x   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_ladm_all_models.snr_derecho USING btree (snr_predio_registro);
 E   DROP INDEX test_ladm_all_models.snr_derecho_snr_predio_registro_idx;
       test_ladm_all_models         postgres    false    944            �"           1259    590224 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_ladm_all_models.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 [   DROP INDEX test_ladm_all_models.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
       test_ladm_all_models         postgres    false    945            �"           1259    590234 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_ladm_all_models.snr_fuentecabidalinderos USING btree (tipo_documento);
 M   DROP INDEX test_ladm_all_models.snr_fuentecabidalinderos_tipo_documento_idx;
       test_ladm_all_models         postgres    false    946            �"           1259    590244 $   snr_fuentederecho_tipo_documento_idx    INDEX     z   CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_ladm_all_models.snr_fuentederecho USING btree (tipo_documento);
 F   DROP INDEX test_ladm_all_models.snr_fuentederecho_tipo_documento_idx;
       test_ladm_all_models         postgres    false    947            �"           1259    590265 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_ladm_all_models.snr_predioregistro USING btree (clase_suelo_registro);
 M   DROP INDEX test_ladm_all_models.snr_predioregistro_clase_suelo_registro_idx;
       test_ladm_all_models         postgres    false    949            �"           1259    590266 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_ladm_all_models.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 R   DROP INDEX test_ladm_all_models.snr_predioregistro_snr_fuente_cabidalinderos_idx;
       test_ladm_all_models         postgres    false    949            �"           1259    590274 #   snr_titular_derecho_snr_derecho_idx    INDEX     x   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_ladm_all_models.snr_titular_derecho USING btree (snr_derecho);
 E   DROP INDEX test_ladm_all_models.snr_titular_derecho_snr_derecho_idx;
       test_ladm_all_models         postgres    false    950            �"           1259    590273 #   snr_titular_derecho_snr_titular_idx    INDEX     x   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_ladm_all_models.snr_titular_derecho USING btree (snr_titular);
 E   DROP INDEX test_ladm_all_models.snr_titular_derecho_snr_titular_idx;
       test_ladm_all_models         postgres    false    950            �"           1259    590255    snr_titular_tipo_documento_idx    INDEX     n   CREATE INDEX snr_titular_tipo_documento_idx ON test_ladm_all_models.snr_titular USING btree (tipo_documento);
 @   DROP INDEX test_ladm_all_models.snr_titular_tipo_documento_idx;
       test_ladm_all_models         postgres    false    948            �"           1259    590254    snr_titular_tipo_persona_idx    INDEX     j   CREATE INDEX snr_titular_tipo_persona_idx ON test_ladm_all_models.snr_titular USING btree (tipo_persona);
 >   DROP INDEX test_ladm_all_models.snr_titular_tipo_persona_idx;
       test_ladm_all_models         postgres    false    948            �$           1259    592908 &   t_ili2db_attrname_sqlname_colowner_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_sqlname_colowner_key ON test_ladm_all_models.t_ili2db_attrname USING btree (sqlname, colowner);
 H   DROP INDEX test_ladm_all_models.t_ili2db_attrname_sqlname_colowner_key;
       test_ladm_all_models         postgres    false    1083    1083            �#           1259    590830    t_ili2db_basket_dataset_idx    INDEX     h   CREATE INDEX t_ili2db_basket_dataset_idx ON test_ladm_all_models.t_ili2db_basket USING btree (dataset);
 =   DROP INDEX test_ladm_all_models.t_ili2db_basket_dataset_idx;
       test_ladm_all_models         postgres    false    998            �#           1259    592906     t_ili2db_dataset_datasetname_key    INDEX     y   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_ladm_all_models.t_ili2db_dataset USING btree (datasetname);
 B   DROP INDEX test_ladm_all_models.t_ili2db_dataset_datasetname_key;
       test_ladm_all_models         postgres    false    999            �#           1259    592907 '   t_ili2db_model_iliversion_modelname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_iliversion_modelname_key ON test_ladm_all_models.t_ili2db_model USING btree (iliversion, modelname);
 I   DROP INDEX test_ladm_all_models.t_ili2db_model_iliversion_modelname_key;
       test_ladm_all_models         postgres    false    1003    1003            s%           2606    592842 D   av_tablacalificacionconstruccion av_tablacalifccncnstrccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_tablacalificacionconstruccion
    ADD CONSTRAINT av_tablacalifccncnstrccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_ladm_all_models.av_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_all_models.av_tablacalificacionconstruccion DROP CONSTRAINT av_tablacalifccncnstrccion_uso_fkey;
       test_ladm_all_models       postgres    false    981    1010    9208            t%           2606    592847 E   av_tipologiaconstruccion av_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_tipologiaconstruccion
    ADD CONSTRAINT av_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_ladm_all_models.av_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_all_models.av_tipologiaconstruccion DROP CONSTRAINT av_tipologiaconstruccion_tipo_tipologia_fkey;
       test_ladm_all_models       postgres    false    1025    982    9238            u%           2606    592854 O   av_zonahomogeneafisicarural av_zonahomogeneafisicarral_disponibilidad_agua_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicarural
    ADD CONSTRAINT av_zonahomogeneafisicarral_disponibilidad_agua_fkey FOREIGN KEY (disponibilidad_agua) REFERENCES test_ladm_all_models.av_disponibilidadaguatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicarural DROP CONSTRAINT av_zonahomogeneafisicarral_disponibilidad_agua_fkey;
       test_ladm_all_models       postgres    false    9322    1067    983            v%           2606    592859 K   av_zonahomogeneafisicarural av_zonahomogeneafisicarral_influencia_vial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicarural
    ADD CONSTRAINT av_zonahomogeneafisicarral_influencia_vial_fkey FOREIGN KEY (influencia_vial) REFERENCES test_ladm_all_models.av_influenciavialruraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicarural DROP CONSTRAINT av_zonahomogeneafisicarral_influencia_vial_fkey;
       test_ladm_all_models       postgres    false    1008    983    9204            w%           2606    592864 L   av_zonahomogeneafisicarural av_zonahomogeneafisicarral_uso_actual_suelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicarural
    ADD CONSTRAINT av_zonahomogeneafisicarral_uso_actual_suelo_fkey FOREIGN KEY (uso_actual_suelo) REFERENCES test_ladm_all_models.av_usosueloruraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicarural DROP CONSTRAINT av_zonahomogeneafisicarral_uso_actual_suelo_fkey;
       test_ladm_all_models       postgres    false    1019    983    9226            x%           2606    592874 L   av_zonahomogeneafisicaurbana av_zonahomogeneafisicrbana_influencia_vial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicrbana_influencia_vial_fkey FOREIGN KEY (influencia_vial) REFERENCES test_ladm_all_models.av_influenciavialurbanatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicrbana_influencia_vial_fkey;
       test_ladm_all_models       postgres    false    9228    1020    984            y%           2606    592879 M   av_zonahomogeneafisicaurbana av_zonahomogeneafisicrbana_servicio_publico_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicrbana_servicio_publico_fkey FOREIGN KEY (servicio_publico) REFERENCES test_ladm_all_models.av_serviciospublicostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicrbana_servicio_publico_fkey;
       test_ladm_all_models       postgres    false    9312    1062    984            z%           2606    592889 V   av_zonahomogeneafisicaurbana av_zonahomogeneafisicrbana_tipificacion_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicrbana_tipificacion_construccion_fkey FOREIGN KEY (tipificacion_construccion) REFERENCES test_ladm_all_models.av_tipificacionconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicrbana_tipificacion_construccion_fkey;
       test_ladm_all_models       postgres    false    984    1024    9236            {%           2606    592869 G   av_zonahomogeneafisicaurbana av_zonahomogeneafisicrbana_topografia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicrbana_topografia_fkey FOREIGN KEY (topografia) REFERENCES test_ladm_all_models.av_topografiazonatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicrbana_topografia_fkey;
       test_ladm_all_models       postgres    false    1009    9206    984            |%           2606    592884 M   av_zonahomogeneafisicaurbana av_zonahomogeneafisicrbana_uso_actual_suelo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana
    ADD CONSTRAINT av_zonahomogeneafisicrbana_uso_actual_suelo_fkey FOREIGN KEY (uso_actual_suelo) REFERENCES test_ladm_all_models.av_usosuelourbanotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.av_zonahomogeneafisicaurbana DROP CONSTRAINT av_zonahomogeneafisicrbana_uso_actual_suelo_fkey;
       test_ladm_all_models       postgres    false    1053    984    9294            �$           2606    591619 E   cc_metodooperacion cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey FOREIGN KEY (col_transformacion_transformacion) REFERENCES test_ladm_all_models.col_transformacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_all_models.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey;
       test_ladm_all_models       postgres    false    892    896    8724            }%           2606    592896 5   cc_nomenclaturavial cc_nomenclaturavial_tipo_via_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.cc_nomenclaturavial
    ADD CONSTRAINT cc_nomenclaturavial_tipo_via_fkey FOREIGN KEY (tipo_via) REFERENCES test_ladm_all_models.cc_nomenclaturavial_tipo_via(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.cc_nomenclaturavial DROP CONSTRAINT cc_nomenclaturavial_tipo_via_fkey;
       test_ladm_all_models       postgres    false    9332    1072    991            �$           2606    591630 5   col_areavalor col_areavalor_lc_construccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_construccion_area_fkey FOREIGN KEY (lc_construccion_area) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.col_areavalor DROP CONSTRAINT col_areavalor_lc_construccion_area_fkey;
       test_ladm_all_models       postgres    false    893    8966    953            �$           2606    591640 ;   col_areavalor col_areavalor_lc_servidumbretransito_rea_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey FOREIGN KEY (lc_servidumbretransito_area) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.col_areavalor DROP CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey;
       test_ladm_all_models       postgres    false    9109    979    893            �$           2606    591635 0   col_areavalor col_areavalor_lc_terreno_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_terreno_area_fkey FOREIGN KEY (lc_terreno_area) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_all_models.col_areavalor DROP CONSTRAINT col_areavalor_lc_terreno_area_fkey;
       test_ladm_all_models       postgres    false    9062    893    971            �$           2606    591645 ;   col_areavalor col_areavalor_lc_unidadconstruccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey FOREIGN KEY (lc_unidadconstruccion_area) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.col_areavalor DROP CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey;
       test_ladm_all_models       postgres    false    980    9115    893            �$           2606    591624 %   col_areavalor col_areavalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_areavalor
    ADD CONSTRAINT col_areavalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_all_models.col_areatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_all_models.col_areavalor DROP CONSTRAINT col_areavalor_tipo_fkey;
       test_ladm_all_models       postgres    false    1054    9296    893            �$           2606    592083 Q   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_all_models.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_all_models       postgres    false    952    920    8961            �$           2606    592078 O   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_all_models.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey;
       test_ladm_all_models       postgres    false    920    962    9008            �$           2606    592088 =   col_baunitcomointeresado col_baunitcomointeresado_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_all_models.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_unidad_fkey;
       test_ladm_all_models       postgres    false    967    920    9028            �$           2606    591923 6   col_baunitfuente col_baunitfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_all_models.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_all_models.col_baunitfuente DROP CONSTRAINT col_baunitfuente_fuente_espacial_fkey;
       test_ladm_all_models       postgres    false    910    960    8998            �$           2606    591928 -   col_baunitfuente col_baunitfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_all_models.col_baunitfuente DROP CONSTRAINT col_baunitfuente_unidad_fkey;
       test_ladm_all_models       postgres    false    910    967    9028            �$           2606    591938 $   col_cclfuente col_cclfuente_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_cclfuente
    ADD CONSTRAINT col_cclfuente_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_all_models.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_all_models.col_cclfuente DROP CONSTRAINT col_cclfuente_ccl_fkey;
       test_ladm_all_models       postgres    false    912    964    9017            �$           2606    591943 0   col_cclfuente col_cclfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_cclfuente
    ADD CONSTRAINT col_cclfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_all_models.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_all_models.col_cclfuente DROP CONSTRAINT col_cclfuente_fuente_espacial_fkey;
       test_ladm_all_models       postgres    false    912    960    8998            �$           2606    592018 .   col_clfuente col_clfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_clfuente
    ADD CONSTRAINT col_clfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_all_models.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_all_models.col_clfuente DROP CONSTRAINT col_clfuente_fuente_espacial_fkey;
       test_ladm_all_models       postgres    false    916    960    8998            �$           2606    591973 "   col_masccl col_masccl_ccl_mas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_masccl
    ADD CONSTRAINT col_masccl_ccl_mas_fkey FOREIGN KEY (ccl_mas) REFERENCES test_ladm_all_models.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY test_ladm_all_models.col_masccl DROP CONSTRAINT col_masccl_ccl_mas_fkey;
       test_ladm_all_models       postgres    false    914    964    9017            �$           2606    591993 1   col_masccl col_masccl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_all_models.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey;
       test_ladm_all_models       postgres    false    914    953    8966            �$           2606    591983 5   col_masccl col_masccl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_all_models       postgres    false    914    979    9109            �$           2606    591978 ,   col_masccl col_masccl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_all_models.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey;
       test_ladm_all_models       postgres    false    914    971    9062            �$           2606    591988 5   col_masccl col_masccl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_all_models       postgres    false    914    980    9115            �$           2606    592058 /   col_mascl col_mascl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_all_models.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey;
       test_ladm_all_models       postgres    false    918    953    8966            �$           2606    592048 3   col_mascl col_mascl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_all_models.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_all_models       postgres    false    918    979    9109            �$           2606    592043 *   col_mascl col_mascl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_all_models.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey;
       test_ladm_all_models       postgres    false    918    971    9062            �$           2606    592053 3   col_mascl col_mascl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_all_models.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_all_models       postgres    false    918    980    9115            �$           2606    591948 (   col_menosccl col_menosccl_ccl_menos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_menosccl
    ADD CONSTRAINT col_menosccl_ccl_menos_fkey FOREIGN KEY (ccl_menos) REFERENCES test_ladm_all_models.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_all_models.col_menosccl DROP CONSTRAINT col_menosccl_ccl_menos_fkey;
       test_ladm_all_models       postgres    false    913    964    9017            �$           2606    591968 7   col_menosccl col_menosccl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey;
       test_ladm_all_models       postgres    false    913    953    8966            �$           2606    591958 9   col_menosccl col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_all_models       postgres    false    913    979    9109            �$           2606    591953 2   col_menosccl col_menosccl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_all_models.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey;
       test_ladm_all_models       postgres    false    913    971    9062            �$           2606    591963 9   col_menosccl col_menosccl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_all_models       postgres    false    913    980    9115            �$           2606    592038 5   col_menoscl col_menoscl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey;
       test_ladm_all_models       postgres    false    917    953    8966            �$           2606    592028 7   col_menoscl col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_all_models       postgres    false    917    979    9109            �$           2606    592023 0   col_menoscl col_menoscl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_all_models.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey;
       test_ladm_all_models       postgres    false    917    971    9062            �$           2606    592033 7   col_menoscl col_menoscl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_all_models       postgres    false    917    980    9115            �$           2606    592133 )   col_miembros col_miembros_agrupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_miembros
    ADD CONSTRAINT col_miembros_agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES test_ladm_all_models.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_all_models.col_miembros DROP CONSTRAINT col_miembros_agrupacion_fkey;
       test_ladm_all_models       postgres    false    923    952    8961            �$           2606    592128 9   col_miembros col_miembros_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_all_models.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_all_models       postgres    false    923    952    8961            �$           2606    592123 7   col_miembros col_miembros_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_all_models.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_interesado_fkey;
       test_ladm_all_models       postgres    false    962    923    9008            �$           2606    592013 "   col_puntoccl col_puntoccl_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_puntoccl
    ADD CONSTRAINT col_puntoccl_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_all_models.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY test_ladm_all_models.col_puntoccl DROP CONSTRAINT col_puntoccl_ccl_fkey;
       test_ladm_all_models       postgres    false    915    964    9017            �$           2606    591998 4   col_puntoccl col_puntoccl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_all_models.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_all_models.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey;
       test_ladm_all_models       postgres    false    915    968    9033            �$           2606    592008 9   col_puntoccl col_puntoccl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_all_models.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey;
       test_ladm_all_models       postgres    false    915    975    9085            �$           2606    592003 4   col_puntoccl col_puntoccl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_all_models.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_all_models.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey;
       test_ladm_all_models       postgres    false    915    969    9046            �$           2606    592063 2   col_puntocl col_puntocl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_all_models.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_all_models.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey;
       test_ladm_all_models       postgres    false    919    968    9033            �$           2606    592073 7   col_puntocl col_puntocl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_all_models.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey;
       test_ladm_all_models       postgres    false    919    975    9085            �$           2606    592068 2   col_puntocl col_puntocl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_all_models.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_all_models.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey;
       test_ladm_all_models       postgres    false    919    969    9046            �$           2606    591878 4   col_puntofuente col_puntofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_puntofuente
    ADD CONSTRAINT col_puntofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_all_models.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_all_models.col_puntofuente DROP CONSTRAINT col_puntofuente_fuente_espacial_fkey;
       test_ladm_all_models       postgres    false    960    8998    908            �$           2606    591883 :   col_puntofuente col_puntofuente_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_all_models.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_all_models.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey;
       test_ladm_all_models       postgres    false    9033    908    968            �$           2606    591893 ?   col_puntofuente col_puntofuente_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_all_models.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_all_models.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey;
       test_ladm_all_models       postgres    false    9085    975    908            �$           2606    591888 :   col_puntofuente col_puntofuente_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_all_models.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_all_models.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey;
       test_ladm_all_models       postgres    false    969    9046    908            �$           2606    591863 @   col_relacionfuente col_relacionfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_all_models.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_all_models.col_relacionfuente DROP CONSTRAINT col_relacionfuente_fuente_administrativa_fkey;
       test_ladm_all_models       postgres    false    8993    959    906            �$           2606    591933 K   col_relacionfuenteuespacial col_relacionfuenteuespcial_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_all_models.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey;
       test_ladm_all_models       postgres    false    911    960    8998            �$           2606    592093 F   col_responsablefuente col_responsablefuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_all_models.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_all_models.col_responsablefuente DROP CONSTRAINT col_responsablefuente_fuente_administrativa_fkey;
       test_ladm_all_models       postgres    false    8993    921    959            �$           2606    592103 K   col_responsablefuente col_responsablefuente_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_all_models.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_all_models       postgres    false    952    921    8961            �$           2606    592098 I   col_responsablefuente col_responsablefuente_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_all_models.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey;
       test_ladm_all_models       postgres    false    921    962    9008            �$           2606    591823 6   col_rrrfuente col_rrrfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_all_models.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_all_models.col_rrrfuente DROP CONSTRAINT col_rrrfuente_fuente_administrativa_fkey;
       test_ladm_all_models       postgres    false    8993    904    959            �$           2606    591833 /   col_rrrfuente col_rrrfuente_rrr_lc_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey FOREIGN KEY (rrr_lc_derecho) REFERENCES test_ladm_all_models.lc_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_all_models.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey;
       test_ladm_all_models       postgres    false    956    904    8981            �$           2606    591828 3   col_rrrfuente col_rrrfuente_rrr_lc_restriccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey FOREIGN KEY (rrr_lc_restriccion) REFERENCES test_ladm_all_models.lc_restriccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_all_models.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey;
       test_ladm_all_models       postgres    false    904    9056    970            �$           2606    592108 <   col_topografofuente col_topografofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_topografofuente
    ADD CONSTRAINT col_topografofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_all_models.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_all_models.col_topografofuente DROP CONSTRAINT col_topografofuente_fuente_espacial_fkey;
       test_ladm_all_models       postgres    false    8998    922    960            �$           2606    592118 G   col_topografofuente col_topografofuente_topografo_lc_agrpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey FOREIGN KEY (topografo_lc_agrupacioninteresados) REFERENCES test_ladm_all_models.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_all_models.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey;
       test_ladm_all_models       postgres    false    922    952    8961            �$           2606    592113 D   col_topografofuente col_topografofuente_topografo_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey FOREIGN KEY (topografo_lc_interesado) REFERENCES test_ladm_all_models.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_all_models.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey;
       test_ladm_all_models       postgres    false    922    962    9008            �$           2606    591717 E   col_transformacion col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey FOREIGN KEY (lc_puntocontrol_transformacion_y_resultado) REFERENCES test_ladm_all_models.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_all_models.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey;
       test_ladm_all_models       postgres    false    968    9033    896            �$           2606    591722 E   col_transformacion col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolindero_transformacion_y_resultado) REFERENCES test_ladm_all_models.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_all_models.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey;
       test_ladm_all_models       postgres    false    9046    969    896            �$           2606    591727 E   col_transformacion col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolevantamiento_transformacion_y_resultado) REFERENCES test_ladm_all_models.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_all_models.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey;
       test_ladm_all_models       postgres    false    9085    896    975            �$           2606    591858 %   col_uebaunit col_uebaunit_baunit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit
    ADD CONSTRAINT col_uebaunit_baunit_fkey FOREIGN KEY (baunit) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit DROP CONSTRAINT col_uebaunit_baunit_fkey;
       test_ladm_all_models       postgres    false    967    9028    905            �$           2606    591853 1   col_uebaunit col_uebaunit_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_construccion_fkey;
       test_ladm_all_models       postgres    false    905    953    8966            �$           2606    591843 8   col_uebaunit col_uebaunit_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey;
       test_ladm_all_models       postgres    false    979    9109    905            �$           2606    591838 ,   col_uebaunit col_uebaunit_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_terreno_fkey;
       test_ladm_all_models       postgres    false    905    9062    971            �$           2606    591848 7   col_uebaunit col_uebaunit_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey;
       test_ladm_all_models       postgres    false    9115    905    980            �$           2606    591918 .   col_uefuente col_uefuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_uefuente
    ADD CONSTRAINT col_uefuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_all_models.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_all_models.col_uefuente DROP CONSTRAINT col_uefuente_fuente_espacial_fkey;
       test_ladm_all_models       postgres    false    909    960    8998            �$           2606    591913 1   col_uefuente col_uefuente_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_all_models.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_construccion_fkey;
       test_ladm_all_models       postgres    false    8966    953    909            �$           2606    591903 8   col_uefuente col_uefuente_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_all_models.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey;
       test_ladm_all_models       postgres    false    909    979    9109            �$           2606    591898 ,   col_uefuente col_uefuente_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_all_models.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_terreno_fkey;
       test_ladm_all_models       postgres    false    971    909    9062            �$           2606    591908 7   col_uefuente col_uefuente_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey;
       test_ladm_all_models       postgres    false    9115    980    909            �$           2606    591818 6   col_ueuegrupo col_ueuegrupo_parte_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey FOREIGN KEY (parte_lc_construccion) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_all_models.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey;
       test_ladm_all_models       postgres    false    8966    903    953            �$           2606    591808 ;   col_ueuegrupo col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey FOREIGN KEY (parte_lc_servidumbretransito) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey;
       test_ladm_all_models       postgres    false    9109    903    979            �$           2606    591803 1   col_ueuegrupo col_ueuegrupo_parte_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey FOREIGN KEY (parte_lc_terreno) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_all_models.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey;
       test_ladm_all_models       postgres    false    971    9062    903            �$           2606    591813 ;   col_ueuegrupo col_ueuegrupo_parte_lc_unidadconstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey FOREIGN KEY (parte_lc_unidadconstruccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey;
       test_ladm_all_models       postgres    false    980    903    9115            �$           2606    591868 <   col_unidadfuente col_unidadfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_all_models.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_all_models.col_unidadfuente DROP CONSTRAINT col_unidadfuente_fuente_administrativa_fkey;
       test_ladm_all_models       postgres    false    8993    907    959            �$           2606    591873 -   col_unidadfuente col_unidadfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_all_models.col_unidadfuente DROP CONSTRAINT col_unidadfuente_unidad_fkey;
       test_ladm_all_models       postgres    false    967    9028    907            �$           2606    591783 >   col_volumenvalor col_volumenvalor_lc_construccion_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey FOREIGN KEY (lc_construccion_volumen) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey;
       test_ladm_all_models       postgres    false    953    902    8966            �$           2606    591793 A   col_volumenvalor col_volumenvalor_lc_servidumbretranst_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey FOREIGN KEY (lc_servidumbretransito_volumen) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey;
       test_ladm_all_models       postgres    false    979    9109    902            �$           2606    591788 9   col_volumenvalor col_volumenvalor_lc_terreno_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey FOREIGN KEY (lc_terreno_volumen) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey;
       test_ladm_all_models       postgres    false    971    9062    902            �$           2606    591798 A   col_volumenvalor col_volumenvalor_lc_unidadconstruccin_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey FOREIGN KEY (lc_unidadconstruccion_volumen) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey;
       test_ladm_all_models       postgres    false    980    9115    902            �$           2606    591778 +   col_volumenvalor col_volumenvalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_all_models.col_volumentipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_all_models.col_volumenvalor DROP CONSTRAINT col_volumenvalor_tipo_fkey;
       test_ladm_all_models       postgres    false    902    9230    1021            �$           2606    591772 5   extarchivo extarchivo_lc_fuenteespacl_xt_rchv_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extarchivo
    ADD CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteespacial_ext_archivo_id) REFERENCES test_ladm_all_models.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.extarchivo DROP CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey;
       test_ladm_all_models       postgres    false    8998    901    960            �$           2606    591767 5   extarchivo extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_all_models.extarchivo
    ADD CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteadministrtiva_ext_archivo_id) REFERENCES test_ladm_all_models.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.extarchivo DROP CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey;
       test_ladm_all_models       postgres    false    901    959    8993            �$           2606    591762 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_ladm_all_models.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
       test_ladm_all_models       postgres    false    901    8938    946            �$           2606    591655 2   extdireccion extdireccion_clase_via_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_clase_via_principal_fkey FOREIGN KEY (clase_via_principal) REFERENCES test_ladm_all_models.extdireccion_clase_via_principal(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_clase_via_principal_fkey;
       test_ladm_all_models       postgres    false    894    1063    9314            �$           2606    591675 9   extdireccion extdireccion_extinteresado_ext_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey FOREIGN KEY (extinteresado_ext_direccion_id) REFERENCES test_ladm_all_models.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey;
       test_ladm_all_models       postgres    false    894    8736    899            �$           2606    591670 9   extdireccion extdireccion_extndddfccnfsc_xt_drccn_id_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey FOREIGN KEY (extunidadedificcnfsica_ext_direccion_id) REFERENCES test_ladm_all_models.extunidadedificacionfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey;
       test_ladm_all_models       postgres    false    897    8726    894            �$           2606    591680 9   extdireccion extdireccion_lc_construccin_xt_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey FOREIGN KEY (lc_construccion_ext_direccion_id) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey;
       test_ladm_all_models       postgres    false    8966    894    953            �$           2606    591700 9   extdireccion extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey FOREIGN KEY (lc_unidadconstruccion_ext_direccion_id) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey;
       test_ladm_all_models       postgres    false    894    980    9115            �$           2606    591685 2   extdireccion extdireccion_lc_predio_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_lc_predio_direccion_fkey FOREIGN KEY (lc_predio_direccion) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_lc_predio_direccion_fkey;
       test_ladm_all_models       postgres    false    967    894    9028            �$           2606    591695 9   extdireccion extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey FOREIGN KEY (lc_servidumbretransito_ext_direccion_id) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey;
       test_ladm_all_models       postgres    false    894    979    9109            �$           2606    591690 9   extdireccion extdireccion_lc_terreno_ext_direccin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey FOREIGN KEY (lc_terreno_ext_direccion_id) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey;
       test_ladm_all_models       postgres    false    9062    971    894            �$           2606    591660 ,   extdireccion extdireccion_sector_ciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_sector_ciudad_fkey FOREIGN KEY (sector_ciudad) REFERENCES test_ladm_all_models.extdireccion_sector_ciudad(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_sector_ciudad_fkey;
       test_ladm_all_models       postgres    false    894    9328    1070            �$           2606    591665 ,   extdireccion extdireccion_sector_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_sector_predio_fkey FOREIGN KEY (sector_predio) REFERENCES test_ladm_all_models.extdireccion_sector_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_sector_predio_fkey;
       test_ladm_all_models       postgres    false    9200    1006    894            �$           2606    591650 -   extdireccion extdireccion_tipo_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extdireccion
    ADD CONSTRAINT extdireccion_tipo_direccion_fkey FOREIGN KEY (tipo_direccion) REFERENCES test_ladm_all_models.extdireccion_tipo_direccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_all_models.extdireccion DROP CONSTRAINT extdireccion_tipo_direccion_fkey;
       test_ladm_all_models       postgres    false    9334    894    1073            �$           2606    591747 ;   extinteresado extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.extinteresado
    ADD CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey FOREIGN KEY (extredserviciosfisica_ext_interesado_administrador_id) REFERENCES test_ladm_all_models.extredserviciosfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.extinteresado DROP CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey;
       test_ladm_all_models       postgres    false    8738    900    899            �$           2606    591752 ;   extinteresado extinteresado_lc_agrupacionntrsds_xt_pid_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_all_models.extinteresado
    ADD CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey FOREIGN KEY (lc_agrupacionintersdos_ext_pid) REFERENCES test_ladm_all_models.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.extinteresado DROP CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey;
       test_ladm_all_models       postgres    false    899    952    8961            �$           2606    591757 6   extinteresado extinteresado_lc_interesado_ext_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.extinteresado
    ADD CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey FOREIGN KEY (lc_interesado_ext_pid) REFERENCES test_ladm_all_models.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_all_models.extinteresado DROP CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey;
       test_ladm_all_models       postgres    false    899    9008    962            �$           2606    591707 1   fraccion fraccion_col_miembros_participacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.fraccion
    ADD CONSTRAINT fraccion_col_miembros_participacion_fkey FOREIGN KEY (col_miembros_participacion) REFERENCES test_ladm_all_models.col_miembros(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_all_models.fraccion DROP CONSTRAINT fraccion_col_miembros_participacion_fkey;
       test_ladm_all_models       postgres    false    895    8859    923            �$           2606    591712 1   fraccion fraccion_lc_predio_copropidd_cfcnte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.fraccion
    ADD CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey FOREIGN KEY (lc_predio_copropiedad_coeficiente) REFERENCES test_ladm_all_models.lc_predio_copropiedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_all_models.fraccion DROP CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey;
       test_ladm_all_models       postgres    false    895    977    9099            �$           2606    592139 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_ladm_all_models.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
       test_ladm_all_models       postgres    false    940    925    8915            �$           2606    592155 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_all_models.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_all_models.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
       test_ladm_all_models       postgres    false    8922    929    942            �$           2606    592144 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_all_models.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_all_models.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
       test_ladm_all_models       postgres    false    929    1037    9262            %           2606    592234 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_ladm_all_models.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_all_models.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
       test_ladm_all_models       postgres    false    942    943    8922            %           2606    592239 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_ladm_all_models.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_all_models.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
       test_ladm_all_models       postgres    false    942    943    8922            �$           2606    592167 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_all_models.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_all_models.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
       test_ladm_all_models       postgres    false    942    930    8922            �$           2606    592177 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_ladm_all_models.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
       test_ladm_all_models       postgres    false    930    8882    931            �$           2606    592182 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_ladm_all_models.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
       test_ladm_all_models       postgres    false    942    8922    932            �$           2606    592187 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_ladm_all_models.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_all_models.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
       test_ladm_all_models       postgres    false    942    8922    933            %           2606    592223 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_all_models.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
       test_ladm_all_models       postgres    false    1032    942    9252            %           2606    592228 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_ladm_all_models.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_all_models.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
       test_ladm_all_models       postgres    false    9254    942    1033            �$           2606    592192 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_all_models.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
       test_ladm_all_models       postgres    false    942    8922    936            �$           2606    592200 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_all_models.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_all_models.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
       test_ladm_all_models       postgres    false    942    939    8922            �$           2606    592218 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_ladm_all_models.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_all_models.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
       test_ladm_all_models       postgres    false    929    8878    940             %           2606    592205 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_all_models.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_all_models.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_all_models       postgres    false    1037    940    9262            �$           2606    591607 E   gm_curve3dlistvalue gm_curve3dlistvalue_gm_multicurve3d_geometry_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.gm_curve3dlistvalue
    ADD CONSTRAINT gm_curve3dlistvalue_gm_multicurve3d_geometry_fkey FOREIGN KEY (gm_multicurve3d_geometry) REFERENCES test_ladm_all_models.gm_multicurve3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_all_models.gm_curve3dlistvalue DROP CONSTRAINT gm_curve3dlistvalue_gm_multicurve3d_geometry_fkey;
       test_ladm_all_models       postgres    false    890    888    8688            �$           2606    591602 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_ladm_all_models.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
       test_ladm_all_models       postgres    false    8678    886    887            �$           2606    591612 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_ladm_all_models.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
       test_ladm_all_models       postgres    false    8690    891    889            �$           2606    591742 &   imagen imagen_extinteresado_firma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.imagen
    ADD CONSTRAINT imagen_extinteresado_firma_fkey FOREIGN KEY (extinteresado_firma) REFERENCES test_ladm_all_models.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_all_models.imagen DROP CONSTRAINT imagen_extinteresado_firma_fkey;
       test_ladm_all_models       postgres    false    8736    898    899            �$           2606    591737 +   imagen imagen_extinteresado_fotografia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.imagen
    ADD CONSTRAINT imagen_extinteresado_fotografia_fkey FOREIGN KEY (extinteresado_fotografia) REFERENCES test_ladm_all_models.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_all_models.imagen DROP CONSTRAINT imagen_extinteresado_fotografia_fkey;
       test_ladm_all_models       postgres    false    8736    898    899            �$           2606    591732 -   imagen imagen_extinteresado_huell_dctlar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.imagen
    ADD CONSTRAINT imagen_extinteresado_huell_dctlar_fkey FOREIGN KEY (extinteresado_huella_dactilar) REFERENCES test_ladm_all_models.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_all_models.imagen DROP CONSTRAINT imagen_extinteresado_huell_dctlar_fkey;
       test_ladm_all_models       postgres    false    8736    899    898            %           2606    592310 ;   ini_predioinsumos ini_predioinsumos_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_all_models.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey;
       test_ladm_all_models       postgres    false    951    8922    942            %           2606    592315 <   ini_predioinsumos ini_predioinsumos_snr_predio_juridico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey FOREIGN KEY (snr_predio_juridico) REFERENCES test_ladm_all_models.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_all_models.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey;
       test_ladm_all_models       postgres    false    951    8949    949            %           2606    592305 <   ini_predioinsumos ini_predioinsumos_tipo_emparejamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey FOREIGN KEY (tipo_emparejamiento) REFERENCES test_ladm_all_models.ini_emparejamientotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_all_models.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey;
       test_ladm_all_models       postgres    false    1059    951    9306            %           2606    592320 ;   lc_agrupacioninteresados lc_agrupacioninteresados_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_all_models.col_grupointeresadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_tipo_fkey;
       test_ladm_all_models       postgres    false    952    9278    1045            O%           2606    592651 R   lc_calificacionconvencional lc_calificacionconvencinal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey;
       test_ladm_all_models       postgres    false    9115    972    980            P%           2606    592645 J   lc_calificacionconvencional lc_calificacionconvencinal_tipo_calificar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey FOREIGN KEY (tipo_calificar) REFERENCES test_ladm_all_models.lc_calificartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey;
       test_ladm_all_models       postgres    false    9330    972    1071            Q%           2606    592661 T   lc_calificacionnoconvencional lc_calificacionnoconvncnal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey;
       test_ladm_all_models       postgres    false    973    980    9115            R%           2606    592656 H   lc_calificacionnoconvencional lc_calificacionnoconvncnal_tipo_anexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey FOREIGN KEY (tipo_anexo) REFERENCES test_ladm_all_models.lc_anexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey;
       test_ladm_all_models       postgres    false    9244    973    1028            %           2606    592343 .   lc_construccion lc_construccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_construccion
    ADD CONSTRAINT lc_construccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_all_models.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_all_models.lc_construccion DROP CONSTRAINT lc_construccion_dimension_fkey;
       test_ladm_all_models       postgres    false    1080    9348    953            %           2606    592348 8   lc_construccion lc_construccion_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_construccion
    ADD CONSTRAINT lc_construccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_all_models.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_all_models.lc_construccion DROP CONSTRAINT lc_construccion_relacion_superficie_fkey;
       test_ladm_all_models       postgres    false    953    9292    1052            %           2606    592325 6   lc_construccion lc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_all_models.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_all_models.lc_construccion DROP CONSTRAINT lc_construccion_tipo_construccion_fkey;
       test_ladm_all_models       postgres    false    953    1057    9302            %           2606    592330 1   lc_construccion lc_construccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_all_models.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_all_models.lc_construccion DROP CONSTRAINT lc_construccion_tipo_dominio_fkey;
       test_ladm_all_models       postgres    false    9316    953    1064            %           2606    592363 =   lc_contactovisita lc_contactovisita_lc_datos_adicionales_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_all_models.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey FOREIGN KEY (lc_datos_adicionales) REFERENCES test_ladm_all_models.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_all_models.lc_contactovisita DROP CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey;
       test_ladm_all_models       postgres    false    9073    954    974            %           2606    592358 <   lc_contactovisita lc_contactovisita_relacion_con_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_relacion_con_predio_fkey FOREIGN KEY (relacion_con_predio) REFERENCES test_ladm_all_models.lc_relacionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_all_models.lc_contactovisita DROP CONSTRAINT lc_contactovisita_relacion_con_predio_fkey;
       test_ladm_all_models       postgres    false    1061    954    9310            %           2606    592353 C   lc_contactovisita lc_contactovisita_tipo_documento_quien_tndio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey FOREIGN KEY (tipo_documento_quien_atendio) REFERENCES test_ladm_all_models.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_all_models.lc_contactovisita DROP CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey;
       test_ladm_all_models       postgres    false    1004    9196    954            %           2606    592376 8   lc_datosphcondominio lc_datosphcondominio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_all_models.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_lc_predio_fkey;
       test_ladm_all_models       postgres    false    955    967    9028            S%           2606    592682 Y   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_categoria_suelo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey FOREIGN KEY (categoria_suelo) REFERENCES test_ladm_all_models.lc_categoriasuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey;
       test_ladm_all_models       postgres    false    1051    974    9290            T%           2606    592677 U   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_clase_suelo_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey FOREIGN KEY (clase_suelo) REFERENCES test_ladm_all_models.lc_clasesuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey;
       test_ladm_all_models       postgres    false    1034    9256    974            U%           2606    592672 _   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_destinacion_economica_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey FOREIGN KEY (destinacion_economica) REFERENCES test_ladm_all_models.lc_destinacioneconomicatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey;
       test_ladm_all_models       postgres    false    1041    9270    974            V%           2606    592697 S   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey;
       test_ladm_all_models       postgres    false    974    967    9028            W%           2606    592667 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey    FK CONSTRAINT     :  ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey FOREIGN KEY (procedimiento_catastral_registral) REFERENCES test_ladm_all_models.lc_procedimientocatastralregistraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey;
       test_ladm_all_models       postgres    false    974    1078    9344            X%           2606    592692 Z   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_resultado_visita_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey FOREIGN KEY (resultado_visita) REFERENCES test_ladm_all_models.lc_resultadovisitatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey;
       test_ladm_all_models       postgres    false    974    9220    1016            Y%           2606    592687 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey    FK CONSTRAINT     '  ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey FOREIGN KEY (tipo_documento_reconocedor) REFERENCES test_ladm_all_models.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey;
       test_ladm_all_models       postgres    false    9196    974    1004            %           2606    592392 5   lc_derecho lc_derecho_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_all_models.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_all_models       postgres    false    952    8961    956            %           2606    592387 3   lc_derecho lc_derecho_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_all_models.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_all_models.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_interesado_fkey;
       test_ladm_all_models       postgres    false    956    9008    962            %           2606    592381    lc_derecho lc_derecho_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_derecho
    ADD CONSTRAINT lc_derecho_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_all_models.lc_derechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 W   ALTER TABLE ONLY test_ladm_all_models.lc_derecho DROP CONSTRAINT lc_derecho_tipo_fkey;
       test_ladm_all_models       postgres    false    9342    956    1077             %           2606    592397 !   lc_derecho lc_derecho_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_derecho
    ADD CONSTRAINT lc_derecho_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY test_ladm_all_models.lc_derecho DROP CONSTRAINT lc_derecho_unidad_fkey;
       test_ladm_all_models       postgres    false    967    9028    956            !%           2606    592402 O   lc_estructuranovedadfmi lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey    FK CONSTRAINT     )  ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_fmi) REFERENCES test_ladm_all_models.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey;
       test_ladm_all_models       postgres    false    974    9073    957            "%           2606    592412 \   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey    FK CONSTRAINT     D  ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_numeros_prediales) REFERENCES test_ladm_all_models.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey;
       test_ladm_all_models       postgres    false    974    9073    958            #%           2606    592407 N   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_tipo_novedad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey FOREIGN KEY (tipo_novedad) REFERENCES test_ladm_all_models.lc_estructuranovedadnumeropredial_tipo_novedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey;
       test_ladm_all_models       postgres    false    1035    9258    958            $%           2606    592422 J   lc_fuenteadministrativa lc_fuenteadministrativa_estado_disponibilidad_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_all_models.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_all_models.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey;
       test_ladm_all_models       postgres    false    9318    1065    959            %%           2606    592417 9   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_all_models.lc_fuenteadministrativatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_fkey;
       test_ladm_all_models       postgres    false    9250    959    1031            &%           2606    592427 C   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_all_models.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey;
       test_ladm_all_models       postgres    false    9210    959    1011            '%           2606    592437 >   lc_fuenteespacial lc_fuenteespacial_estado_disponibilidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_all_models.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey;
       test_ladm_all_models       postgres    false    960    9318    1065            (%           2606    592432 -   lc_fuenteespacial lc_fuenteespacial_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_all_models.col_fuenteespacialtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_fkey;
       test_ladm_all_models       postgres    false    960    9308    1060            )%           2606    592442 7   lc_fuenteespacial lc_fuenteespacial_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_all_models.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_principal_fkey;
       test_ladm_all_models       postgres    false    9210    1011    960            *%           2606    592447 A   lc_grupocalificacion lc_grupocalificacion_clase_calificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey FOREIGN KEY (clase_calificacion) REFERENCES test_ladm_all_models.lc_clasecalificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_all_models.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey;
       test_ladm_all_models       postgres    false    9298    961    1055            +%           2606    592452 ;   lc_grupocalificacion lc_grupocalificacion_conservacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_conservacion_fkey FOREIGN KEY (conservacion) REFERENCES test_ladm_all_models.lc_estadoconservaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_conservacion_fkey;
       test_ladm_all_models       postgres    false    961    1068    9324            ,%           2606    592458 I   lc_grupocalificacion lc_grupocalificacion_lc_calificacion_convencnal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey FOREIGN KEY (lc_calificacion_convencional) REFERENCES test_ladm_all_models.lc_calificacionconvencional(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey;
       test_ladm_all_models       postgres    false    972    9067    961            -%           2606    592478 -   lc_interesado lc_interesado_grupo_etnico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_interesado
    ADD CONSTRAINT lc_interesado_grupo_etnico_fkey FOREIGN KEY (grupo_etnico) REFERENCES test_ladm_all_models.lc_grupoetnicotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_all_models.lc_interesado DROP CONSTRAINT lc_interesado_grupo_etnico_fkey;
       test_ladm_all_models       postgres    false    1038    962    9264            .%           2606    592473 %   lc_interesado lc_interesado_sexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_interesado
    ADD CONSTRAINT lc_interesado_sexo_fkey FOREIGN KEY (sexo) REFERENCES test_ladm_all_models.lc_sexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_all_models.lc_interesado DROP CONSTRAINT lc_interesado_sexo_fkey;
       test_ladm_all_models       postgres    false    962    9232    1022            /%           2606    592468 /   lc_interesado lc_interesado_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_all_models.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_all_models.lc_interesado DROP CONSTRAINT lc_interesado_tipo_documento_fkey;
       test_ladm_all_models       postgres    false    962    9196    1004            0%           2606    592463 %   lc_interesado lc_interesado_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_all_models.lc_interesadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_all_models.lc_interesado DROP CONSTRAINT lc_interesado_tipo_fkey;
       test_ladm_all_models       postgres    false    1069    9326    962            1%           2606    592483 >   lc_interesadocontacto lc_interesadocontacto_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_lc_interesado_fkey FOREIGN KEY (lc_interesado) REFERENCES test_ladm_all_models.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_all_models.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_lc_interesado_fkey;
       test_ladm_all_models       postgres    false    9008    962    963            2%           2606    592495 F   lc_objetoconstruccion lc_objetoconstruccion_lc_grupo_calificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey FOREIGN KEY (lc_grupo_calificacion) REFERENCES test_ladm_all_models.lc_grupocalificacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_all_models.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey;
       test_ladm_all_models       postgres    false    965    961    9005            3%           2606    592489 I   lc_objetoconstruccion lc_objetoconstruccion_tipo_objeto_construccion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_all_models.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey FOREIGN KEY (tipo_objeto_construccion) REFERENCES test_ladm_all_models.lc_objetoconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey;
       test_ladm_all_models       postgres    false    965    1027    9242            4%           2606    592508 G   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_all_models.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey;
       test_ladm_all_models       postgres    false    966    967    9028            5%           2606    592500 I   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_tipo_oferta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey FOREIGN KEY (tipo_oferta) REFERENCES test_ladm_all_models.lc_ofertatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey;
       test_ladm_all_models       postgres    false    966    1074    9336            6%           2606    592519 )   lc_predio lc_predio_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_predio
    ADD CONSTRAINT lc_predio_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_all_models.lc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_all_models.lc_predio DROP CONSTRAINT lc_predio_condicion_predio_fkey;
       test_ladm_all_models       postgres    false    9234    1023    967            e%           2606    592765 <   lc_predio_copropiedad lc_predio_copropiedad_copropiedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_copropiedad_fkey FOREIGN KEY (copropiedad) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_all_models.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_copropiedad_fkey;
       test_ladm_all_models       postgres    false    9028    977    967            f%           2606    592760 7   lc_predio_copropiedad lc_predio_copropiedad_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_predio_fkey FOREIGN KEY (predio) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_predio_fkey;
       test_ladm_all_models       postgres    false    967    977    9028            g%           2606    592770 N   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_ini_predio_insumos_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_all_models.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey FOREIGN KEY (ini_predio_insumos) REFERENCES test_ladm_all_models.ini_predioinsumos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey;
       test_ladm_all_models       postgres    false    951    978    8957            h%           2606    592775 E   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_all_models.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey;
       test_ladm_all_models       postgres    false    967    978    9028            7%           2606    592514    lc_predio lc_predio_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_predio
    ADD CONSTRAINT lc_predio_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_all_models.lc_prediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 U   ALTER TABLE ONLY test_ladm_all_models.lc_predio DROP CONSTRAINT lc_predio_tipo_fkey;
       test_ladm_all_models       postgres    false    1005    9198    967            8%           2606    592541 5   lc_puntocontrol lc_puntocontrol_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_all_models.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_metodoproduccion_fkey;
       test_ladm_all_models       postgres    false    968    1026    9240            9%           2606    592536 ;   lc_puntocontrol lc_puntocontrol_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_all_models.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey;
       test_ladm_all_models       postgres    false    1040    968    9268            :%           2606    592524 .   lc_puntocontrol lc_puntocontrol_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_all_models.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_puntotipo_fkey;
       test_ladm_all_models       postgres    false    968    9218    1015            ;%           2606    592529 7   lc_puntocontrol lc_puntocontrol_tipo_punto_control_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey FOREIGN KEY (tipo_punto_control) REFERENCES test_ladm_all_models.lc_puntocontroltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey;
       test_ladm_all_models       postgres    false    968    9346    1079            <%           2606    592561 7   lc_puntocontrol lc_puntocontrol_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey;
       test_ladm_all_models       postgres    false    953    968    8966            =%           2606    592551 >   lc_puntocontrol lc_puntocontrol_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey;
       test_ladm_all_models       postgres    false    968    9109    979            >%           2606    592546 2   lc_puntocontrol lc_puntocontrol_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey;
       test_ladm_all_models       postgres    false    9062    968    971            ?%           2606    592556 =   lc_puntocontrol lc_puntocontrol_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_all_models.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey;
       test_ladm_all_models       postgres    false    980    9115    968            Z%           2606    592712 C   lc_puntolevantamiento lc_puntolevantamiento_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_all_models.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey;
       test_ladm_all_models       postgres    false    9212    975    1012            [%           2606    592724 A   lc_puntolevantamiento lc_puntolevantamiento_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_all_models.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey;
       test_ladm_all_models       postgres    false    9240    975    1026            \%           2606    592719 G   lc_puntolevantamiento lc_puntolevantamiento_posicion_interpolacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_all_models.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey;
       test_ladm_all_models       postgres    false    975    1040    9268            ]%           2606    592702 :   lc_puntolevantamiento lc_puntolevantamiento_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_all_models.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_puntotipo_fkey;
       test_ladm_all_models       postgres    false    975    1015    9218            ^%           2606    592707 I   lc_puntolevantamiento lc_puntolevantamiento_tipo_punto_levantamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey FOREIGN KEY (tipo_punto_levantamiento) REFERENCES test_ladm_all_models.lc_puntolevtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey;
       test_ladm_all_models       postgres    false    9216    975    1014            _%           2606    592744 C   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey;
       test_ladm_all_models       postgres    false    8966    953    975            `%           2606    592734 J   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey;
       test_ladm_all_models       postgres    false    979    975    9109            a%           2606    592729 >   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey;
       test_ladm_all_models       postgres    false    9062    971    975            b%           2606    592739 I   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey;
       test_ladm_all_models       postgres    false    980    9115    975            @%           2606    592571 ,   lc_puntolindero lc_puntolindero_acuerdo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_acuerdo_fkey FOREIGN KEY (acuerdo) REFERENCES test_ladm_all_models.lc_acuerdotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero DROP CONSTRAINT lc_puntolindero_acuerdo_fkey;
       test_ladm_all_models       postgres    false    9260    1036    969            A%           2606    592576 7   lc_puntolindero lc_puntolindero_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_all_models.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero DROP CONSTRAINT lc_puntolindero_fotoidentificacion_fkey;
       test_ladm_all_models       postgres    false    969    9212    1012            B%           2606    592588 5   lc_puntolindero lc_puntolindero_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_all_models.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero DROP CONSTRAINT lc_puntolindero_metodoproduccion_fkey;
       test_ladm_all_models       postgres    false    9240    969    1026            C%           2606    592583 ;   lc_puntolindero lc_puntolindero_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_all_models.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero DROP CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey;
       test_ladm_all_models       postgres    false    1040    9268    969            D%           2606    592566 .   lc_puntolindero lc_puntolindero_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_all_models.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero DROP CONSTRAINT lc_puntolindero_puntotipo_fkey;
       test_ladm_all_models       postgres    false    1015    9218    969            E%           2606    592608 7   lc_puntolindero lc_puntolindero_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey;
       test_ladm_all_models       postgres    false    953    969    8966            F%           2606    592598 >   lc_puntolindero lc_puntolindero_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_all_models.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey;
       test_ladm_all_models       postgres    false    979    9109    969            G%           2606    592593 2   lc_puntolindero lc_puntolindero_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_all_models.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey;
       test_ladm_all_models       postgres    false    9062    971    969            H%           2606    592603 =   lc_puntolindero lc_puntolindero_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_all_models.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey;
       test_ladm_all_models       postgres    false    969    980    9115            I%           2606    592623 =   lc_restriccion lc_restriccion_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_all_models.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_all_models.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_all_models       postgres    false    970    952    8961            J%           2606    592618 ;   lc_restriccion lc_restriccion_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_all_models.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_all_models.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey;
       test_ladm_all_models       postgres    false    9008    970    962            K%           2606    592613 '   lc_restriccion lc_restriccion_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_restriccion
    ADD CONSTRAINT lc_restriccion_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_all_models.lc_restricciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_all_models.lc_restriccion DROP CONSTRAINT lc_restriccion_tipo_fkey;
       test_ladm_all_models       postgres    false    1044    9276    970            L%           2606    592628 )   lc_restriccion lc_restriccion_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_restriccion
    ADD CONSTRAINT lc_restriccion_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_all_models.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_all_models.lc_restriccion DROP CONSTRAINT lc_restriccion_unidad_fkey;
       test_ladm_all_models       postgres    false    967    970    9028            i%           2606    592781 <   lc_servidumbretransito lc_servidumbretransito_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_all_models.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_all_models.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_dimension_fkey;
       test_ladm_all_models       postgres    false    1080    9348    979            j%           2606    592786 F   lc_servidumbretransito lc_servidumbretransito_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_all_models.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_all_models.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey;
       test_ladm_all_models       postgres    false    1052    979    9292            M%           2606    592635 $   lc_terreno lc_terreno_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_terreno
    ADD CONSTRAINT lc_terreno_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_all_models.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_ladm_all_models.lc_terreno DROP CONSTRAINT lc_terreno_dimension_fkey;
       test_ladm_all_models       postgres    false    971    9348    1080            N%           2606    592640 .   lc_terreno lc_terreno_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_terreno
    ADD CONSTRAINT lc_terreno_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_all_models.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_all_models.lc_terreno DROP CONSTRAINT lc_terreno_relacion_superficie_fkey;
       test_ladm_all_models       postgres    false    971    9292    1052            c%           2606    592754 M   lc_tipologiaconstruccion lc_tipologiaconstruccion_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_all_models.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey;
       test_ladm_all_models       postgres    false    9115    980    976            d%           2606    592749 E   lc_tipologiaconstruccion lc_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_ladm_all_models.lc_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_all_models.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey;
       test_ladm_all_models       postgres    false    976    9202    1007            k%           2606    592831 :   lc_unidadconstruccion lc_unidadconstruccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_all_models.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_dimension_fkey;
       test_ladm_all_models       postgres    false    980    9348    1080            l%           2606    592826 @   lc_unidadconstruccion lc_unidadconstruccion_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey FOREIGN KEY (lc_construccion) REFERENCES test_ladm_all_models.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey;
       test_ladm_all_models       postgres    false    953    980    8966            m%           2606    592836 D   lc_unidadconstruccion lc_unidadconstruccion_relacion_superficie_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_all_models.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey;
       test_ladm_all_models       postgres    false    1052    9292    980            n%           2606    592796 B   lc_unidadconstruccion lc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_all_models.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_all_models       postgres    false    980    9302    1057            o%           2606    592791 =   lc_unidadconstruccion lc_unidadconstruccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_all_models.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey;
       test_ladm_all_models       postgres    false    1064    9316    980            p%           2606    592806 <   lc_unidadconstruccion lc_unidadconstruccion_tipo_planta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey FOREIGN KEY (tipo_planta) REFERENCES test_ladm_all_models.lc_construccionplantatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey;
       test_ladm_all_models       postgres    false    1039    9266    980            q%           2606    592801 I   lc_unidadconstruccion lc_unidadconstruccion_tipo_unidad_construccion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey FOREIGN KEY (tipo_unidad_construccion) REFERENCES test_ladm_all_models.lc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey;
       test_ladm_all_models       postgres    false    9214    980    1013            r%           2606    592816 4   lc_unidadconstruccion lc_unidadconstruccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_ladm_all_models.lc_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_all_models.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_uso_fkey;
       test_ladm_all_models       postgres    false    1047    9282    980            %           2606    592245 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_ladm_all_models.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_all_models.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
       test_ladm_all_models       postgres    false    1081    9350    944            %           2606    592250 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_ladm_all_models.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_all_models.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
       test_ladm_all_models       postgres    false    8941    947    944            %           2606    592255 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_ladm_all_models.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_all_models.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
       test_ladm_all_models       postgres    false    8949    944    949            %           2606    592260 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT     )  ALTER TABLE ONLY test_ladm_all_models.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_ladm_all_models.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_all_models.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
       test_ladm_all_models       postgres    false    8949    945    949            	%           2606    592265 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_all_models.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_all_models.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
       test_ladm_all_models       postgres    false    946    9272    1042            
%           2606    592270 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_all_models.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_all_models.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
       test_ladm_all_models       postgres    false    947    1042    9272            %           2606    592285 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_ladm_all_models.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_all_models.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
       test_ladm_all_models       postgres    false    1046    9280    949            %           2606    592290 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_all_models.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_ladm_all_models.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_all_models.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
       test_ladm_all_models       postgres    false    8938    949    946            %           2606    592300 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_ladm_all_models.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_all_models.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
       test_ladm_all_models       postgres    false    8931    944    950            %           2606    592295 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_ladm_all_models.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_all_models.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
       test_ladm_all_models       postgres    false    8944    950    948            %           2606    592280 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_all_models.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_all_models.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
       test_ladm_all_models       postgres    false    1075    948    9338            %           2606    592275 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_ladm_all_models.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_all_models.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
       test_ladm_all_models       postgres    false    948    1058    9304            ~%           2606    592901 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_ladm_all_models.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_all_models.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
       test_ladm_all_models       postgres    false    999    9187    998            �&     x����n1�g�)�t3;id4��]��P8��&����@�6}�E�/VR��;Y<����'��v9�r�=׫�̩~X֋�꡾��q�5yr�V�?�����b����C��T��98=&�7��X�o��P�F��ދBN�qB&Q��C	7l֤fQD���C��p�}S�h�YN3qA#}���Ɖ$Rϣ���B�JaWF�bֆ�|6[)�Quҹq9��g����?�Oon�.A�<CX�,���HP��s� 6��^�I�3{��F�Cb���`��L�< �5��`<�ԃ%�U�w\	�L�Q:̾���^�~��%��tC���
$]y�v��`�� ����%T�Ψ~O|B�h��㑞�J���R`i�)��1�X�	��aDP�{�Ca�Nd��Z�XW�Л��B<I�&��Z���8�^�������1�D��=i+�g��'���\Gv���d(��̷9p��<ax�('x�m�e�Qz%6������t[�h�-e=Χ���t�B��      z&   	  x��Kn�0E��*�\#��|�Q�N
4E�����E��d��M�Q�������M:0�f��@�w�=O��ar�T�m������v���o�O�^7b
ŷ��U�Xߨ�M�$�{����uߵh@��g�Ss�=*�'K����l��>����{#Zc�O&�E��ţ��V�Q�z�Z�Ρ�zEO��ԡ�ȺR�PD�4���1X�8��q�ʬwv��
�����]�}�f��t&W2i4;�����zA�m
��n�fb�}r���N1!3]ֈ7*Ҝ�>}r��A;;g���g�R4�=���r"F��<bi��Z6\��ˏZ�W3F����htW�雱W��n��9�&�T�C3��e
�LL��WK���ѧ� ��|[V����_ݘ�Ũ�����^H�H�]$�3�e���㽰d�#�|�"�Ǎc8�y��͆sD*D쥰��*t��*���6�Q�F����l�o�}�L���?��z�:���
N����2;.-��/��P�!A�(�v��7�aUj2�E(��J�-�/e;~}뽊�mnҋ�ǈ�ޡ #�M�{��_D�t�����#�N�"?��m�?��d��H�/~����g&�'��!�Rao���+a���N���UG]9o��q,�J�<qN�S�A��7����%�tt�y\��x��~�iZ'�bF$p����¦+��߸B-~R8�\�1�y[�[1Q�oKV4�	�X�-T�c���B~���n�۵��{y<Y{<��x��|�����r)�����4����M      �&   #  x���AN�0E��)�Q�r�.٠J@�R4$Sjə	;�`ۋ1	m*$V]�q�o{����,���KG^�͈>�6u٬�M����'��a��?�Wd|r�d��l�mqt=q�uJ����{"����`�6����x��Z:�6y�p@u�@��4:� �}ε�ȫ����T7e���l�n����	��W�@��q��?a	���N_=F
�����hu��CR�����`Sh�Y�&Se[�h��.���w���$��X�׻�a/�G���g�V2�EE�<Ās�&�k�|W�y�ޭv      �&   �  x���Mk�@��֯�c���`��͵��K���XlY�(�a���{ȩ�^��:#ےIL[|���f���ȋ��l�[��q�ܢ�����j�|�V��X��y�����v<{�<���z��+����@�c_ 8�п��&��栣п�����.��P@x��ZI�x	�PK�軍��Ġ���u��ǼX,��p&9�G�GJU�n;Git:
��8f���9��`?�:�Z����s<r1���`�X�@VFIz�Ô��7
Xx�Z��_��(�������67'������e�8��X��!�&��X�׍^ݨ�N��\�%}�
.Pr�,�J)O��_u��!���+����T� b�&��I��CYY|�?0��Í������'X~��li��/L��T���1C���P&%b0�?xJ�Ht
��l	2oZx��:r�щtV�?@"��ܰ�4K���:�����o�U�,����$Jf^<΋���q�%      _&      x������ � �      �&   M  x��W�n�6>;O�c���N�E���^ڢ�{
`�):a �*)MN}�>A�{ȡ�m�z�>I�J����Ƌ�@�H"9���o����p�&U�0�_�n�L>.�._�N�.��][M�zw�]lB����~r�����'ma��T.������ǃ�P�����3��>�|GQm��W��dTmBc���)R&6F]�T{~lo����ӣu�.�������Er���*+�+TE�	��DU�E�/�j�50�T	c5�L��7U���t��W^�
�ޱ�����
A4~�(9��yL����av��lCp'*���6.�
��Է;��#�#2�Rф[Qu�~UZ�ժ��������Y���Ɉ�Åu=�Jand���+;0�`���m(
��������M{G$�JN���5�\�=�f��`���/��i�Q�|��O�����i=�^**0a��`ִ
L �PRlY�hV��/P؁?;�i�5����;�I�
6 6�M� P����B���dVF�{i`ai�M�`���	�0�5�-ܰ�*�w��䣍eP(`��+S�#X���`���;:X,��-Q�"�A�<���=��0t��;������k�n0S��Z���D�Tʢ���k�E*)�iU
�'S�yM9���|8����^iî��Ib�$��������#I>PΑ\g�w������/v(?ʔ�g�h���C���͌I�1v^}�DD�M
BX���	�ac㹚�4N��k��ٴ�>^�޴�1��uc�������/����xZ�vh=�2��l��x��<��&�7�T�
�d�?�xAN��]~�)5�1<���T �7@�;�����Ȍ�*���`z}�	��/��ܝ��n<(?r>ɾU]�|�خ��LƮ�٘PH��u�:g�̕iʭ �X�J�q[�Hk�,������<�ܓ���@�c��[`�`2�W
˓г�F̄�+��w-/+"W?l/]�_�)��U��܎�|)@Q��f��\����)ڍ�B���f��_MCh*����:������kt���5|�Ɛ?��� љ��ܳm&��H[t3Wn��W�;�Hsہ���@�w�Js��U��G|�[q�L.&�-��G+�a!��y}��V��ީ]��m֘�k��28�+0H������'�ש��n�4����8�)_n�H���l���5�Y(uЖ�Q�`�͵��+����m���m?̓;QU�l�7BH.�+�3�ݐ�pp&�����2]y�Å,�bu}���^���F��}�a`Ga�@��@nu��/N�;���9�I}Z��(��౜����I���g�,�      `&      x������ � �      �&      x��]Ko�Ɩ^ۿ��,���I�˺K����b#����,��e�:|�~��� ���?6�ԃ,���,Es' �[�"��w^�9Uń����f�R���7�$oXu��������7�=��]F�Ë�}q��'Ze)-�������^�}�J�r� .�)w���{�:xGRZ���]S2���%�R
�U4��f���<�Q��6�eM�]7P��iN��T���y�%�:���UAw�$�gI���0>�ln���-��$ɶ�)�/�$e[��&�L�u�_Y��L����,Aķ��"����@B&|\�-j��?l�2% ��C��4t�0t��
h!��/�/�]���0����59�Fk iO�4�;���9I�(X�/)h�������[���$ᓒB\�")i�g�]�E(�A����H�\�<e���a����� I{;by`��EnS�tS��?9�9Qޓ��_��;�H���aN���Tt��z��T�����Ȣ�?ԛGVS1'ovY���}NT�3^A�"�SДP���&��$�<|݁I+Po���-<�[���nC�uCk��� ����!X5�@
�:��caE���kLqǑ�ʪ�ڑ�S��mK�r̖��,��m.�x
fW�0��.%��4�$0��+	�z��P��牕�k΅��L�|*���ͳ�2�p�� �u���,�(ɟ
#���@qcA�m��Q&�Ă�`w���5�-��i��dB=M�D+�f�|F��( _��gb<���U
�kR�j��[~@܉;�WI�?H��4E>�����O�E[8��V*�@�����^|�B��nS\�L&~�6��C��ͺ|B�S9���lGK�D��f.!k���R07J�Y�,$����V-�2�c1d�;[�hԃ� q��4��ɟca��B��I�E9S���/0>�<���QG��i��aPX�	��.k�����ɩ��Tzf��U��zD	H��#�XC�=Mj�����F��~���J��܉���5��(��Ћc�j�~_����X�s��=R��O���I髬����Z�"�fJ0�Z��DO���~,���'t�H��'�!ע�A�-ɔR��EC�?�����3dL�EjP�l�X�o�k�S,͗�o�=��a��zz�`��E���P�
ަ�?R�Z��$���hH�[=��A�VzWJ���+��,��W��G�+��U9�����J4�\�N�i���TL�CE+�O�yv���}������jG�W�}F
�:Rw�$�מ�����������}s�ȁ>O'A>u�|cC1A1t4Zg#�h|�31�69{�t�O�P>dx���M�F-������!T�;��x�Z��X��9��F+5
N��ʓY�ʓ�Li����7��N?�P�Dy�>�
��N�W�,Q��"@����Hƞ$YJ����-κ�p��Ͱl�%�u>�Za2.�=�Ё��e[�to�6�)���DYQ��~@��>5y8���-J(�|.z����e��j��D��&>�$.�VC�k\4� q�_���i�ҧyF5�B������2|�a,��ۢ$��Hus	���G���A���0T����n�?�m2��}W,A�Q�{DE|�t��4�\�S;i�P���S�`Gk��(�p���<�j��c��$%�$f�BdX9|+��<���H�C>2��O�.&�g义��}8-�: �#g~�P" �z\�>i=\N�`�D�=�-��=�0p8�!@F!� �S���Ɉ�OD$v "��&�x�(���Hܴ�s��)4õ��?H�g�n�C����j$���;�]�1󑞯9�p�{I.�p�������&��1�����3����q���2	�3���+�/:;���Nc>��u�4+�ؼ���;O[����8�8�=�� `l�ړ��3���ӱa-6>uA��\�
̒nKș��� ��{4
�Z�ӗ1S!s����MͰ���*����#��z;(P���'='Jp�4)�ˇ.G�1�̔>�3u��T�x� �_�H|Rj��z�3����hq
#�A�8=���}�P𡿑���,���ܼ�i���fX�a�3�.��>����u���8�Ap���Ṉja�Í��\F���
��g�8�~���ʇYGk ��4Hg��&C�?F�|u���V�!�'KFr�'-&+&�>˝��f>FS��@/õi���<���ax����#�#�Ϊx�y�CA�X~����$W������o��.I�d�,�<��Od���c��όwɁ?C��� �nq-�z.j��4x�7%7���X�����>��yVQ�n�C��
���>$K#'�2��`]������r����lGl�q1.�B�~�&;r��ɖ�X?�11��I3����'*Ȟ�N@� v�Q�>D-^X�6rB_�X�Z6���
f����T�;.��wU	�4p��c�W�eC�,�ˆ�n�{粹�-�[�d�z�mS����s����0�����/�}�z���k�/n܉�����6
�VBa�s�0(0�=p�#)1π	�����|�v��!`��>a��6}����ɷk�|�P�������3���2�XK.?�'�`$��V�k	eN���K��=��x��W^�G��~).�T�̞�~i���� ��J�L���z\x�C#�x�Ha�ױ�p�q~�w���ʾ`F���"���g��ԄX>�g��e�+X0��=�!�����=?�p���.��W�ޞ��!������o���j�f�j�� *$��&��4�w~	�g؂�7�^�{&�+$�ɩ$�)����z��l���y U!�����"\�i2��G��j�S�h�h�\Z�d-h�5����`��K�z9.���T�6�G���Ƈ�-b;f)0@�Y�ۦq�Yo��姜b������c)}�uPva�p��x�U���(�D��]�nr#�A�v�B���-�w�:q\�`��)�߇�Z��{��U{t���,	�
)�ᵽ�sM
 ���-T�?���'�տ�S��֙�q��������Xل2��/�ҵ_�f0A�K���K�ɮ�tV��ᵋ�M��¸@,<�D�����D2�j_$g�{�r�Z�\G3�2h`�k��>�u�h�|��T7��)��0Q#y�*�Թn�5olR��W�iw��8}��P����Ȇ���<��|E��ه.�c2n:&��i�S�Ì��b��7t����o�A=�2���3!�>�n��gp�ܹL]���,����S2nY����hyd������ă��Eg>4m[Ų,���r�޲��oOd������*�e��'�++y	$�K�a��μ^-��
fY��	��M�t�S�S�!=KEz�٣���kZS��V�_G��/n��y�g�n6hvu�L���@<;|���n��S�gg�@�����(S�J��|��rm�d��5��GE
�&P`��/B �ܘ��dM�X
�K��F����W�DFPdr֥�R4��;�n��PЋ�6�^�h�N��!�B��l[2툙�����L� QUj������[&�<m���l�4GvX�Q�-����Hx8�K�g.��{ U<i��}�}�J�w�ݩN^�|V|1t_;�!(���QV�Eem���Y����؟��:Ӈ�����h��V�m.�����2�
���'��ڴNp!���@�̙1����aZ�(�l	fⓏW�L�g��YCl����5CL|�=�ƶ���j�zg�o�b���le�����Hgq��M*��A�V1�?�]�T?�m0�{{������)$�yw��;|gd�kqm�nKѻ�%I��%\+;8�� �� ����	�V2]�b��j�.<�$��Ћ�0��������<�a�� sY�������E�觴�瓨h��Ì��%�ufF��@�FvC���+��n�� �  �Q1W0��:*H�E��aP�W�
-�<lT��&�h!B�|��Zq�wm�ܙ����$%.%�Y�Zѻ��z�z�[�����5o3�v���~�����(�����5y3c���NٞlD<;8U�ľ�\S5R�9����������0y&��77�VR���&���"F�L/�(^�l��ߔ�+rӐ�	ם�'�!3m�ڕ�>=��fOˊ� ��X/���|��C�3Պ�ոR��`����fl��~�_��a��f�"��r��dÓ��h ��欗� X����'����V,C\���.붻��G �)�����g�Q<}���k�{�N�BT���t�a�J�-�^�dW�� ��<�c�!�*Oh���D�>�OR�E�r�M,����C,֊X������(qh�gp����+�t��/!`hoA���<��-��^�x��^��C�P��<�9����Jt"=V�*.pV����iq�4������ ��FnI}�TX�V��,�r��U��*<�U���aZ��`�VN���i���:;�
���[�)/K ߯�����a���i��>�hs�P�F-
Z�D�;VqN�@��\;;�̕"zP��/�|�C�6�n滱�kU� -o������~�/�n�`��F��f�E������?���9�[���CT�^�ԇE��e�]�q��SL{p�Q�GJ̈�@�_3R�(�r��!d���E>,s:P4��(�:�H]�̎�w Mp�	����M�����z�1����~�U�jW��W}�-ߔ�W�v����o{ �x4^�T�P�f�i�C����#+�ΦW��~�bsY��	��h���-P<n0�Iݫ�Q���O���iWL��k@�|�Sl��<i*� ^q�	xbث��I���	�6���.3��B2!HH18����əVЋט�$�IIS��\��K��`asj�)6���͐3]�K�v�B ��<߬���>{v�G4����)Ԟ-�L���e�`�. j�§p�,������"�FX�7E�~��b��_ک\%)�i����o](�~�װ��>��f�as�`���Q��WT쩰������ڤ1��ԢU�^Э(���vX�: �CQJ&��wZ/r�ߛ׃C{aޗ�ܫ�|�R߿���?[���KVS�,$��������;
þ�Y�y���"���_��=����� f*w8�� �-5����z�~�7`�w����ӗ/_��tj/      {&   !  x���Aj�@E��)t�b��9@-J)$dQF�����d4���6=Cw��bU�I
�&��BH�}�|V,s+>D�{�YR��֓j��W��NqK�*�+��<��%"r;�t�GH�%��+*��{r$	��w�I��`]i� Y��V@�	�l&���Ӗ��>~qU�o����"1��R>��h��C�ܘ���W9��d��ސ�L^�?Da�˱G*���"C��yVܷ�/�s��iH�f���wj��������xU5ջ
v��"[0�������MU��r'��      �&   �  x��X�n7=��� ��QQr;F��d`P�]3��&�\���Gt|˵,��ݳXv��h�5��ծ�����-���ܐ+!->��g���`���}�}�}z;;���ڕmlH2]�M�B�G�-G�ֱ����7Xa=�y�d!�>sMK�u�ܩ��-)G+�&tc=e�K=f>6>Nyx�8�m9RKr��1�Ǚޑ�"���	&s�6yA����T���ݔ�$��͙���qx�T��<�Z�v�oS���d��őD�g�Hiq	r,M��r�;*��Ύ��S�VJ�3�Ģ�t���!�TL�����	��l7���ȸ9�"��/����"���m솇4r�Sk������ea	�鬃nc%���\��Q����-�*3��������Kd�[���Vl�N��v�"� |�딠>4 -�O�;��`|ۻ�G�-&4[S�.�0�o"��*�GKv��I�HW�Mt#���J0^����7!ٔ�pr2Y�.���Y��t�P��a�^��v�f�t\7|]W%�!1P ���z T-y��xAHk�c�Ǖl��ܑ�����6��2��G���:R�?ͮ������"l���CB/�V�	�ዜ2���%���Of�	���V��� �J��ӏ��jM�#Pi��wx��(.��
�A�YjL�u!P����������<�)����2-�|p�Ԭ�b$Q@!��X���=ʢяo�B���lhAGv�E���P4�WM&Y���๹ƫr�]��Y�Z	*�ʤS`��^�Uo�������G����D������7��8_U�_�2����W�b/�g��p���7E<M����i���T?T+r��5��!��id�
D,%	pђ��wwB�ˬ��ͳ����#z�����IBB���*p�����-��z<��q%��*$	�ƹ���L
bo
B8����-H��7$a�Pp�lWןH+B���m�,���})	�+9�Al�+��f��P�
K�6h:�O��釯lJeO^d�8RƗ[�*�0�o�k�������蚒����l9�a����I�A����
��Aʚ=���^ѐ;<�ޒ�+�t qgx�t<&<��\hI"F��f[��ӑ��Bv%<����]ʇU��k��D��0"�F)x�7ۆI���z�����ّ8_O8/c֪�[�T��X��SF�>h!�Ǹ�����	��7|�z�?`�n���P�g����WM5D�'�(Iҗ$� �G�����!I�W�M�}<y����աV��"F99��g����{�i�n����͇�Ժ�-i���ǋ�6���E����}���oQY%)6�t!�f�,��L4���	"��^��_&������%�\j2�}-�.��T���P�Z:�Q���,�����^�V����\k�fAȤ(�Y�n%�[z̟�MAr�k�y��*�^ ���w$;le��tw���5]	,l;����b,e� ��$}�&�b�n|T��!����K�u1?�ޘ?����9T��� ��QZ��[m	��=����֢����s��B���"���X�Z��bl�+!nj�Q�R[k'?<D�+R��j{Q�2��4�Ո�#K��:}W��Z�$��8ڢ�U�C��:�l��wo�"�"YAv�a{��|:;99�t�]�      �&   �  x��T�n1�O_��[�5��q�ʀ��Q�;�!���\�s��,O��&�Uw\r��3˽�^T��ƶ2�]s�%Ξ�gg����1�C��c��������{uV���5�ǭ��E�d��='�����g��8ÍS˴vkg}ç�S<e�ܹ�q �.�i��'��˱\ϫ/��p`zX��i}b娹����#�p۱���S�'�d>�5�6H�mHrJ6��m#ڰv����g�]I�%)ؘ8�IW(ň⋏�B��U�������q ���9v�4K�?,�Q���崺�M�)��<Z�P3���� ����/�r���>�����Л!-؞�q�K�v��!��~'�B=
��[L�:Yz�/2�g�cN'�m����H��i}yF]*`m�=k�Tp�,跃���t��r1e	v�8B��s�L(ȶ\}����n��^��v��V���ag�
{	)k�E��}@��k�gXaR�S���qh���t�C�w6P[�x�ա��4�d%�wi'��vY��[�m�D񫢏���	����-FU��λ�@=$�I�(E���]T�x��4�ￊ��>��������Le�P�r��a�m��2X�^�b'5}-�D�*ԡ�A͸{���u�`��2t�2C�!X�,�ᣑt2v1Y��p�+��<x�'��_@�4�      |&      x��]K��F�>��v����^6�V�ػ�L�%��F�f�Da �CԿ�Q��)��?��ef
 h5<��ݍp��DX���/U>;{��Y��������W��NgG����~�ݏ׮��d�{�ӟ�=�����if��祩�fe�5M9�mf+S�ʬ�O���~�wϾ��|��s��d����'%�Hh�M�4�I�������I�VeE�,?r2��̳�I3W�z��M��Ev��W	}4U���O�,�X��]g�i���2�aNY�2��H�]��wŚ�<8;:���YtS�nt}̮��-3�c��0_d-�&��;K�%�W�-_��X��	ˈO���~.�"!yi���/�L2%+����88�|:�'J_��2�$+<{�U�v�����(�kl���5��,�_ҋ,��W�Vs��՜vVsmj3�������D����\f�IR|�����*]����g�zAJQ�	��T`}fa+s�|k��TYpk�]�e�vm
(X�VM����I���;�	~{���%�~G�2G�����
��Jh۲B&k��W������\9�p�%�2���.�[2�m?�(�\ǉ�Pm?�Z��,����ʤ�{�R����1Ղe�^j+�!�'1-F4sz�B�:�M�~"�9p���,|��`�
/������t�t �A:�|O��~��(���R:�_8ڋ�>�{��2���$m��*>}:��;L�#���%�FT�j=��:(i�z�<ɛ��h��$�ځ��7���uYe�F��h�?��5Z��ӗ~1���}>�/;��ߺd�E6+ǫ�I�	�`�s�x��Sz١���]1��5QJ ��g�CJ1����,��Օ0��V�M�a��z]5^|A��#�$�4��Yg�yeK2B��,�4��%��oMY	'�+IJ&�5��dR2��ZLAƖ�i��)���œe�K��~K�F��WO��ի.Wm��8����.��b+�yAk +�j�<�A���'5����|�pXLt�l�o�5Y���A&°����cd�9����'�~ha�>�����8�"Ƿ*�${$Mٰ��AI��${ڪ�J+ˢ��qg�Y�_�\iO'K������ 3ꂈEER¹�62,0}� ?�HbbD����2$��Kl��Y������J�2٘]eDt�o_�����ۏ�#�̆�$kSfD���8��L��E��9��<`?�����������֐嚝�ja��129 �Q�	"b�^d�D����)ċ�{ek����&1�9TRtQ�B���A2k򹭖�"��b'�H�W�7��k��@��:=~����0�;\�
`���N�+`��욠��s#>�,!�`�H��CK/"q�^���MAz@�!���K�B,38�@l��$>Ln��"��M�~�~��dԶz�W�.����o�d���h���e�Aa�]���9�#���dxW�)-]P�ngg`?�0d��+F��Ʒd�+Z�ٔ�_G��my6�Kf6�5\��?=�2uO�xx7��P�7��>A_=m4��_���d�V�.F��3R항$�9K
k�7��HΈȟ=���z��P@(ӒhZ�D'&�DA�p_�]��sA��A!��0��£^\Ba�{��3�u6�7{�ǠĦE�b(�����`���VUr(��� !WJf+�3�1��KrW���1���\��L_�l�����r^�M/"�_3p�0~��:(f�3��$����
��У�'
qAz��%���0܄�"h��Vb�P�w{�8�����,�F���T�0�ł�'0VfCk!3��l��#�A�K��uߊ�rm������9�O���3��?�?�#½�U�Uy3G��"���?'��Gж�Ħ��P�Aa��|`�:S�S �A[�T)�Cc�b��{S\��Վ�b��/7@����p�=��{gِH����>b�I� �|�DF��4{�i|�e5���b�R��N��L2KӤ�e����0��.FH�������D��s	!�NV��jʲ��Q�?!c�
�����y����_*x!���tp1"�9>�x�-Y��W$����9d\ڔ�S7Y;`}Kx�����'�oߥyS�qb��ԑ����9ŵ��j2��t8���<�\��_k.��v��C�JW[;JEȨ���O��B9��?7�.GD2�g���S@} �of¾u�������
7f��R\�]�w�ٍD�5��{F;37H�;��9r@B�_�Y$2U�
�^m?.HL.G`��/�|Hd�МDs��������/�ȯ=�X�a��@��w%y2�M\����1|�����e�h��Ӓ�l�1��E4�:8[Nf.,V�E+���`6�u23���D�S���)8�@DYs�`We��	����ue.G ۓ�ʥp��f}�M(:H�
T`��oR
>8��U?�������"o�?=9�R���۪eT'@��m�C�è�e�Jי��LB1^T�$�i�n�`�^� �'�=lۧG����?�Y;�VV�/k�{��[�׬�ͬM���H
|��`m��mݻ��E?�4��1X󘾕,��%�^	vX)s�KG�t��ȝsʭ튨E�I�����QNRn?��,u��rXL��������5�CZ�'��n�(�/2%�Y�P"�-EeΟ-S�.B#��I�����+h:�S�u>�DeY�MRg��
��W#����0q�y�'��k�N���m������O[�d���v��7֐ɚ]g�]�y��#�u�j��MC���9[F��^�e����haUD$f�y��n���b�sɊ��T⨫���r/��v�O����ZjƑEܣ�e�f,տ�i =���N��}W,r_m�cƍ|/�j��I�!��!�|2��2��ٺ�$�@,���p��hw)u���~���[�wa���r�SGG ��iLP�� !zx�-JXC��ynv1/�xE)%�ɛ��.���V�5![DN�-\�@����ݚvHhP�Gݘ}�"�[1b�9=����9:.��v<�nT��^�H��n�L8����)�5��Ȁܙy�APǴ�5d�֍���ð�A�߈�h��	I���p���Z�8)�Ե<�T����n1�{�;�f�^�pL�z7�r��o�-�����G# ��Y���DG��=�Kn�)�WW���V�|�m�H��x���@�+�����cӲR�`�}��i��K�*��f����%�"S~g�G �����FG�������q]���*�M����2�=*�\�7Rs���?D���m�ӣ���b��Z�ٕ=Da�1���k�@~� �+�b�_ m�dK">��zj�,'�������Wd͍�����J{/K[���1{�����vB���k�H��gK
R���tz�gL�1��}KQ����"�+�V�Ot��A�9�V�ZsIn�G�n���(ެD�}���rB�6EE�X.͗���ҩj��Z2�ڰ��4ߠ)}�̐�I�ZC[68��Qr�~,�c���KoȊG,{��ذ�	V+$�G#���U[\ni�)������Ǟ��� ���*%&j��j0�ų_�2nTM�C2�u��D�(wv�KYV۽R�*4w�љVXpʃ�����S�n$�7�tИ��l�#�F:f7�3�����Z/\�Ѩ/G�����};�וp�  ģ`���#�l�&��?b�3�������
�qh;|*H�&���Hp�*�@	C����䶱��ǧg2���^Y�! # ��I��?4(�t�<�Ҟ���}�� R�v�x��:�ɬ��I���1�ta�c�Ir�jV}r�8�B�h�����;�s���v�����~F#�d���l�]f}G{N��.\xק�:9$���`:s��t���d�������!�G���>��.�f�W�h�.tp\8�/��F�k�&.���Vr�}��,����v�x0�^�vY�>,�9:�5�q2��5���юp#�}����Bi�G((̧�����J��<c�b��=`�"c��g�pf�t�lHPrjKN�)(�i ?  u�{�*�Lm�`��#>ͱ�j�B�چ�
Z+q�]�� 颊�="BWn��)N�:��2\��fM����|�G��f�EV̾+���C{ ��%��?#����qG���Q�6v���a)�m�n#;T�Z��Ef�vA�}�m� ~:�����X˓ז3�U�'f�
e4L���Є�p��EOs�x���l�O��%x�YJOrF��#�+M���l?<"���6��`�67���Gd�\B6l7h��j���r�b,h�}{Wh}�"��X��<�CJ)"Qp��U�0G�$�y�V��
3\��J�UH�����@��J6��ye$�M]Uej��g@��yއ��U�� �5M]�!���m�s�Q�I}�L��M>�,���s��2y�J�IEz�Zw�����<x�ǃ����_�u��ZHu=Za<6�D��	%\N��FFM���}���IZn�˶!��(v M�������>��-���;~ %��lat}A�`������o���IWpi�ҁ# �yR��H"h�M���f���H>=�C�Srа	��̂�]��p�Ĥ�B7
�C�0�!�5�4(�;�ѵGI�9���J���T��a賠b�ƼN���~��1|�Mcυ$�B&�v�\�Jb�Os�iNk��J1iT�l�����5�������#��y���9{�C�a.ʨ6p"��)���ŠT��m%��J3�a��bDƘ3�}`��f-*�r�[2n��=L�~���
��,�] ]Z���H�-: �2�9'aE>������p������q������-z����.iG�;"�ޑ�G�������A�M�cE��<��mj=,\S����ԿB��=�DB{E�{ƤK��	&��8^+:��}����XM@��*3rp;�TF� ��.#�R&���ɭ�/�P�{NŦ��Zv,��y�K�HF�:Ď��Yl=�c���|��(l��n$���&�N"�S������TZ�6��)�b?�JpJ��%�r�)0��T"�� �$>�>b��x~�l�6+S!���A�{���i���\x� �b%�3srƖڜ��;�Z�@�Ga�Ez��R��5�ql^�s8�B�d"ړ�>�F�m��k���q��#����ㄍK9hk���p�&���N��<��??��N$n�9Z ߓVJW�9$�/-����$�d�O4W&I7�α�B$e�=�;rΏ���.��c�[����^�����+���IZ5��ƛ�A�	E��
G��#��qX'����@��?��qI9��8��{��un�x��!����cx��X#`�������cF���#/N<�p$G�#3zp�ՂT5Muؒz�������{�����3i������,a�F ��SO�?�:�	M�W�T��-�hm{��I���5Ix-��%<�k�(�}���,Z9Y�)�o\�[�:��-ӓ���̓��{X��+\p�tv�V &�+�&8��񄈘����J�b�M{��,n��ِh>O�רC�L.�`�	����j��~�C��(¨�"Z�7=��y������$6ڢ�\� nz2*^�ƶ��Wv�P�̞{D� ��n'��tR�?{��1Ѣqd�A���YT�_��'�8g�lM��&�r.(��jj���`˷2q�iU���0�ar�/�����n��aY�T����G>G��ZG�VO��N�����	\r�p����?r$����	�2����`"�Ä�?�D���1�]�s�'5:#6�i_d�@�P|~{?$#b�ϵG���0��2�����2���k
��OHu�N^&���r�ҐB�f�	f�0:��U�H�b��/<F��?���{�a��$�O�&͏����r4���-g��A�
��$#-�i��w��d�f����!�T�Na��߮���&��L�|zyq���nF�e��_��H[���^yw��3���[E�Ƞ9|�y�x]�8l����3)}DQ�5^
��OF���i��׈�Vf�&h��2�ĺq<�]@Ӎ^�Um?>�}7�?�]�K���cd?oj�[�´��c 
'�����m�N'Y�n��}96�J8�_/=~���K���yV�ƾ~ .xi�h~'����X�u����4�:jx6�6�8,±��(	���IE�ƫ��\�Q������Ͷ?Sj�r��\e�Ց����EZ�&�-���L��}U���3pݹa�\�#�����R�bzNN��	N���we;׻0�����e��e�@ϗ=�;)p���N�N
 ��`d�7ɔn�MdӒ7+��u��-r`d�_��2?飁���}����4ǚ~G���Ҫ#��:�hek�Q���j2}���1��YB���I�O|�\N"�Y��6{R�.Jr����&Ab��{��+�0�q�[�T�\���F��JU�{�D���ݣ}�3n���ov�5�����p5f"��F��+=�zռ��$b����w}��|i�H�
^Z��T�ע<{+�]�$H���}f�����d;M3L�e���2,[�{���o�k'�H�K`5h�=��7��m�&���T��`��w���-�N�����G�W����(jb}j$i��e#We��x���ޙI�J���&�'؏$����.统K�L=ɸ�K�5�AĮFj.tz6�6��T��D��d��`�x�1�-2������?[i�6��W�>�8_ڊ.�CP��y(0�2�̍�*>U���
�dE���),�S�.t�~�o[������9X�*�k;��ZݯV��#P�մ�՚�w�%�����ڧ��':��+0���Z/�eD&��ڷu�|������j�a��/y�r���#dtS˙ٍ|����^d�J�L�<�u��f^�"�$��w4|w��#��"�����*m��2�G�p��zG�d��"�+�<']y�����g�� @,�o�u� �Grh(c�Bz��� ��?��ŧo86��^[���Ǟ��Ǳx��n���pcOr,��<��w9�8�~�����0�n\(�2K��΅��*���'�������o�)�J{�J� M<D����� "�=�����W��v:n�.��Bۦ�~�U�]�P��sp-T��+�R[����^Wg�L(EDt��� rWȽaS�[��2�?DZ�q��5C�ض�����rS:��ܐꄃ>I�v��&��>�=6�*x7y�/M��J�oE�]Yi/�M�\���QIZ״�[�t�y�u�S�S׽D�ګ]�}�:.�
�8hEw���y���7wKS��\�����NtM�-29��y²�ӟ岃J:"w>�.=�x���"��Ȉo�����L�.�Ue��β��Og%3է��&\�--q���#
_�K�Ǘ�D�1��N�߉��_/2z��F��A��V��[O�S�?�km��md���ܻ�#ϛ�X>Td�1��Θ�= LQ?ʺ![D�	�7gy�A=��Y��ZY��2	�.�� T;�n���AęZʬ��Ь���xݏ|��
˥ފ7x/x��c,lR�wc�?��mff@��W�y��(���[�E[���������p�Z��.��F[0B�T���?����������      a&      x������ � �      b&      x������ � �      d&      x������ � �      c&      x������ � �      o&      x������ � �      e&      x������ � �      f&      x������ � �      g&      x������ � �      n&      x������ � �      h&      x������ � �      &      x������ � �      i&      x������ � �      �&     x���Mj�0F��)rc��YuYRh�W1u� �%3�}����ۭԽv3���C|�.��c���M'`p�����`dSɲx՝ʿ�
!�����Bȳ�m���`���]Ϭd�QY}{�����K�j��U�[��D���*KH2Un���M$&�:7|�NCp��a�G+	lrl���v8)�IlsK�XTH�W�]n�%q��������,��m�?����`���/i@un��Զ�{����"�SG�|���
��/X��k�9�Ǣ�t      j&      x������ � �      k&      x������ � �      l&      x������ � �      m&      x������ � �      }&   �   x���M
�0D�_N��Dk[�+JA�Pp%��Q��'�z�Z��]���00�a��s�� �y�rJ攎e+	"~1}'����Q*�y`*�(R�u������CY+�J�zj,5n�nf>c�ɡ�%�yG)�Дc75f���i۷�v w��δ�̞Z]�U%�#nQ2���_�3�!�N�O      �&     x�͑�N�0���)�	�@��1
��	!�J�չT�_tv*�q:20�y1l*�������������M��n��qռ,��H���qVB���6��⩩ѣ󂦹�¨uI���N�c�%�P�9�Y����%�t����S�=Y0[t�Тg�m����s(���"H)?�Ds ��XzTzz��6;Ҟ�i穏����f}@9��"_.�?�r����thǞ�rp��D\���G��]J��ezK�I\�����|�=�h�ٳ�y� ?�N��)�<� ·��      &      x������ � �      "&      x������ � �      &      x������ � �      &      x������ � �      &      x������ � �      �&   �   x���ϊ�0���S��Z�գ(�]�œPbq fJl�b޼�b�X�-�Bn����1L�ed5[|��U�N�8�v��Jb�sԕ� 0�Z�?(�lr7?V�r�}��ڗL���������4�&A�a_��[��'�i�|tE[YY����?��$2$d��p;��o��O��;�c���)�����̶�@0Ѡ�ΐ><�2��x!��{,~�V�����E����-��� w��m�f⥻M�MD)���      �&   j   x��01��qt�w���3�7���J�sR��@�.���yř�y!���1~��@!#3�*{xs�X���ČTA�ch5МT�8�K��!�AY\1z\\\ �CG�      �&   �   x���M�0F��s�5��!.4�HHmGӤ������r1����}3�y� ܒd���M�ӎҚ+4���e�Ĳ*��W��`�,C���$2������ۜ��Ŷ ��ݪ�Lݛ�[2���a�@iEb��1�G�ypB="(�o���O�5	��ɐ+�E&����m^��rg3�y��ǋ�      �&   �   x�374��qt�w���3�7���J�sR��@���%�)�A�)��Ee�ə��!���1~��9�y�@Y/��enhH�����y��PS]�J��f�m��[ijQb�Kj<Lb<XX!%U�!�ɘl��9�K���CY\1z\\\ }�r      �&   �   x��06��qt�w���3�7���J�sR��@���%E��%�E�!���1~���E����� N���؈dӀ�g�&���#I�$B��9�(������*�ʘd��8CR+J�!FØ@�LH6ɘ3$� ?'?=3f�x3T�+F��� l�p      �&   �  x����N#1���S��'R ]�]ſ]�9�y=���oDq�u����wC6�����|3?�ӓ����ryv}��u�<���*Y�Zg�gb��i�K��emn������xv�6���˛�rb�|������C�8;�^Ãi�k���䭨7A�W=�+8��)����*JV=4��}��״����Jl�(���9j����O�:z�əp�sK�Ͻϒ�M9��ƹ�s�A`j\�5�jfPG�c��u
�� ���w���'u�q����s4�hL��f�/(
�(�̓���`���Ed���<�q��;����ο�o�H4����_���9�}0�� Hm瘜F�#F٫2"-���
�m��3����="/�ţY�'Q��ڼ� y�k�%� UwuUU� f\#      �&   %  x��T�n�@����2A��6$��ȁm�2@��K��-}�ߨT�*]Z�Xvy�)U������|^l.W�������(��i��E�	x��E�
h��tT<n�y����L(��f�~�T�J�ڦ=7�?���,5�����.Bkx8qu)�Қ��<V�f���؝+���|�(dr��7���*đ[�v�6fuy7U��������3d������
�)g\����2��B�<i�6qz�����G�)����-4(&Q�t�Z��W)i<����#�
��5�sҠ�����=6F�Z�����Q�)|�f�5nt/����]�׼ſ@Lƪ�:����D䵎fr�~�<��M
��`BĬ�ž���4x���xL3#R�ipe�������-D�
�Aj�}��CNY�#>�U5W����D�(^��7�sZn��5��RV[�=se��h��wʺ�Y2g���L,���=X>�vF��A�'���@�rgG1;+�8><���1�z�o~7����ǟ��l2��\��      �&   �   x����
�@�������ǰ�@��Y�I&lW�O�#u��#�b��!o;�0������q��8�\���JN��Tb�5HP4���&�ku�,�+�-8} aXMA�/Nr H%8U�Sm$-A9�Ӣ�>zs�چD:���q6�~��h�p�i������P�~|Я�桁Ch>U��I1�l��iV��*ƛI]:��0�>�N�ض�c��W      �&   |   x�351��qt�w���3�7���J�sR��@��y%�E�9�ə�y!���1~�����9�)`N���Ą9�¹�)���E�P��
�A���X`�l�Of^j"�9��B��b���� �cZ�      �&   �   x�374��qt�w���3�7���J�sR��@�������F��!���1~��.��Y�y%`^2���ДT�9C�!FAY@c�H5ƈ3�� �� ?/b2h�9�s��'���'g��|�"����� ��]�      &      x������ � �       &      x������ � �      &      x������ � �      &      x������ � �      �&   $  x��SKjA]K���DY$K��d'���`(u׈
=U��t/���G���zf���A��_���l6����ms�}���4W�1�+.��k�z���X�����-�S��r$��\��k����/�&��t_�"	A8q����
P��<�ņ5�!��a`��JP�:0	%`�
��r���N.4���~I�J7��'�ܲC�ó@;<%V������{1*2<w5�� ��4<&+(Ik��I�H�*�iִ��L�8���)G�}�RϘ�T�:���`X2;;��5���!���Y��Gآ9q��!�����9��^��(�0k䉀80�h�@�)�E�jNc��f�9x�D�t�
4�_�����G�˛"͖\��usnn4�A�p6��E��f�붟�sU)o�OX�1�f��ث]X(2��;�ʬ�hK����'6�Fլf�Zo�:�)a�j;tY�>��d�il�ag�#�\�u���$wxS|�6w?=.�N�W&'�8<Yp~��H#���@[8O�a^�9.FE��گ���_ �5      %&      x������ � �      &      x������ � �      !&      x������ � �      &      x������ � �      �&   e   x�370��qt�w���3�7���J�sR��@��y%�!���1~����y%E�9 N������9�K����&!x@�,I1ʈ�n������ �,A�      �&   �   x���1�0���������htDm�HS�I��P����z14������D�A�;��T�[�>���-��Wto����yY�KH�����2���'Y��Py�m�HV>|��D�� �@UIt�ܣJa3��R+�$6�m�;r��E���qʬ挱StV      �&   f   x�3�4��qt�w���3�7���J�sR��@�A���%E�!���1~��A�E�9 f��ehiL�9���EI�y���l�I&$�d���Á��b���� �B      &      x������ � �      &      x������ � �      �&   �   x��̱
� ��Y��O F�̥�&��L�r�hИ�I��v�3|-���ޟ�6tb悒o�Qp$�#���S���Zix�͡�G=�e�v��k�?�����l��;�TrY�˲;�w����H:��9v_ز�B0��p�      #&      x������ � �      &      x������ � �      $&      x������ � �      
&      x������ � �      &      x������ � �      &      x������ � �      &      x������ � �      �&   f  x���Mn�0���)|�%t��K
hWH�$6�R��a��p�n�X��ڨ��;���oF�8��E��>��{��¦Z꼠<��[�����bR	P�O Y;Vs�_�ZJX�>t�ֆ�g��ubBqX��rV���	�0��؛g�V��
JF+���).L~Kx�5��0fS�?��s�9&hKŉ��t����\�\u\_�\c0��X�Go�m��.Aiuܝ���>[�2�t�M=Ek������\����co�����>͢7��cw�ڬ�53C/�BO��g��]f�ޝ��wƭ�Yk�M����8��a�!9jp�7�Y�m��X�7��T��B���Ճ1���0�o�2�      �&   i   x�3����qt�w���3�7���J�sR��@��y�)�)�)�i�ɉə�y!���1~������E%�)`~*���Ҁ\�9=�R2�2SJs F��b���� �e;      &      x������ � �      �&   j   x�324��qt�w���3�7���J�sR�����9���y!���1~���i�ə�9 N���Ќ4�9�s�KsS�!�!s�ƙ�f��I�$(�+F��� ��D_      &      x������ � �      &      x������ � �      &      x������ � �      �&   �   x����n�0F盧�D� c�t��P1!YW���d9��G}|L�+������8�݇����Ԫ*�q���������w��8u!Tg&���G�����/T�5���7��
!���U�a6��M���]�k��ca�Lv�4�w�@���7��Hb=�-�bH��g:�����*�������6�L����w˺���י�>�0� =���t에i�W�kY��:�      �&   |   x��00��qt�w���3�7���J�sR��\+J\2�R��3���S�K��3KSS8c�88��JRA�48�����l9�K� �A@ӌ�6͈ӵ�<(h�	��s����1�b���� !d�      x&   z   x�34��qt�w���3�7���J�sR��\+J\2�R��3���S�K���RS2�9c�88��JRA�48��Дl9�K� �A\�fdf��Zs��ehN�qƜ��p�`L�=...  dO      �&   f   x��02��qt�w���3�7���J�sR��\+J\2�R��3���B2���\�?NN�⒢��ҢĔD�H����!�r���c�ᗯ��fM� ݽB�      &      x������ � �      &      x������ � �      &      x������ � �      	&      x������ � �      &&      x������ � �      '&      x������ � �      (&      x������ � �      )&      x������ � �      *&      x������ � �      �&   �  x��VKO1>;��G��(B��F�@�R'���;$F���G��֟±�^��u�NB���J��׌�3��OaZc	��ƅ]~Σ�G�+筪�A���RMf���Y/P\OD_L�1n����BC�J9G�����@�k�D�*i�3]��%�4�u��w- �lܻP��&�{�x_.���8#$o�"S�N�g@����2�c�����&+p���
�9i�������,9�`�6V���e�"2�r����.�Z4�N{�)�V��(=]¼�37�bx�����.0e	���h}J���ڸ²o�ń�vɖ������V�@G��� ˡ�����<�O�z�>����[�q��cg�7�l���հm�K���Cq�hUo���|_f�:A�\jL����,?�}������u�W���Ϻ����Ȕ�J�G�n�}ږ�z{+�ݒHE#�tH���[�BOF��WN�܂Q �1;�����B�
�<�.��<,'�� �Q�沏��%dx��

J�X;G-hr�C�ݝ�6[��|'��"1���7�<��z�����V;#rc�n��_�Cc؂��J����yP�[PPP��+1ٗ�v��T%oQo���^�Ƚm�M|5��7E�����XSB�CY���z�J���a���P�ī�r��N��:��S9�Qt��pW������U�"U1��г.D�r�L�Jo�&�ʂ��%��q��o/S�Ք�L�Dܯ{�N�7�f>      +&      x������ � �      9&      x������ � �      ,&      x������ � �      -&      x������ � �      .&      x������ � �      /&      x������ � �      0&      x������ � �      1&      x������ � �      8&      x������ � �      2&      x������ � �      3&      x������ � �      4&      x������ � �      �&   �   x�354�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,����4��s1�8�*��3��s��q��(�V 9�צ �@�p�K{�;:�q�ZPѵ����I�9�B�x�������=... ��o�      5&      x������ � �      6&      x������ � �      �&   �   x���1�0E��9 �ZU=A���K��RdW���7�{q.F��	��~�����C<.dБ�z���W
��x����eѵz�ӒO8N�%��'c/J��}f�2�?ɀ*�l1��sD���vYT�)�ؚ�n�"�\*T֛��)dSW��DO�۽�l��~n�x@0i������|!�BJ� i~�y      7&      x������ � �      &      x������ � �      &      x������ � �      &      x������ � �      &      x������ � �       &      x������ � �      &      x������ � �      &      x������ � �      �&   6  x����J�0���)�M�Ҳ�!*�X'^J�E�4M�ڗ��3��'��qޝ���;ʟ'Ykm��1u���ي�2��w�6����ᴬ��Zw����l{�:CV	ɾ�پ~��)#7��.�{:��[�A�V��j���n�WtF��W-��wVn�h�=9��C{���[w�V�ӭ�ww=�i������7gt�9��@c���r��=���_��D��	�SO�^l� Np�ę'����)Ο��{~>�� ��{�� w�q�H�G*��ɉ$�I�C�~���d2��h��Mg�S��A��Kp�      A&      x������ � �      �&   �   x�35����OI�ɏw,��LNL��ϋ�qt�u����I-�wN,�3�7��q�wL.M-J��,����4��
�8ip�kEfqI�Bi�B"DD�8?�(U!'Q� �839���<��
�y%�\�F��;���%�8�H|�CR�������� �D^�      B&      x������ � �      �&   ~  x��\M��6=��
\�ʮRƒ��wrq&��V��TٕS�T�ӡ�*k~��|���Tn���k �&$
�fwo"���_7@{ӗg�e(b�|�����L�w��~}����Nl��<_�8[N/�n���A��6���Ϧg�$)_�g�[�i=I��'b'��|9��gϪ�L��L����g'����mE�s��w�OA����,O� /R�%A*r9aA���L\i������	۱\���<5�7�c@��6
�H��F�<��x��l�L��C��?%�L�[���=a�")�٪	�8�fSW�f#��>�:�oPSpSs"��$�0��4�r<Bq��+���b>kpO�f`���|���-D������z,�b�q���S�����q9��D><�\��HN`��P�G��Eʻ��Ś�jb\�������l�����Q����՘�� C�ar
�u��4F��|�b�K!���#��qE�ȹCDy�D-�D�c�j��FjT�,�L�#C�g`������v~�1��VO	gR#4S*I�;�� .fQ��sXc�+5Wvj�c����'�L���5��<�;��D��O0#+f�\��&`�͖�0g�V/�xߦs4���7r��4ᝥe_Uǳ�7׮̼�3�a���5�I3�8����~l��r�Ƴ��-o[��S�B�13x��F���zp��J�����B��]���L��0a�5��q�Hp����2xG���aO�?�e��J�G7Ĕ�՚(�;�/Θ��Ǘ�����GW7�̝�0��(��������9AN��C�@sg%i9�G�t���d���S:h�,�!.G14?���%R/�ud�C�r�ΐ�o��Ww�k��F=�&Y�Z��g�
�0�2���K�^g�tedH�s���d�����5�����b�U��i��,P��Eq�Əԟ70:x�7���OE,�KR@�9��=7X�`�(r]�f��(@�ȫ��zT+���ze$�g�)�f�f�o0���hZ� dU"-TZ˚T���!��Y�ͧ��a��F�>�k��M�� ����iF�4�2��^��a}�� jڠ�a�^�F ��kvQ(�U]SY��v��CM�L�
hz�x�&���-O`Lw����25%hk�x��
y�v/VeS'����M�Tl1$ZG����%������{J����_��e������F�ר���yU�&b�V��d�T>I�~� �9IIf6�ߨ�=���Avo����z5Z3=�N:��^�G�ݐi
J�;��� V	D5�銔���"Y�E�|��yM@�z�9n���#���Y]@|���(�Ɍ�M��8Ա�m��ڊJVZ+-����n��5�1�bB�*》FD�G���tK�#e�2f��H"�D��v�1�V�e���"[���Y4A���dײurSW7%ݙߘc(&x�Ι����h���8�+g�A4ĕw�+�m_W�<�`�MM�{���}����g E�3�����.��5Ğ�[� 0I�WD�y�<�4E�MD 2�
�35|O�Ǻ)⍶{bvE3�A���È���Me�Ih�HEx��女��h{#��`P]?�aݕ[���t��Q��yl4��\��C�H���h�%N��j��?3oNM�5(�\��F���1d1b��&`%ƕ��!�Z��X.���&�^�gCgۻ쮙�N�i�f�j4��{�����JaӸzue�G��5k-j�� ����Jъ"m�[���ٌ�Ί��;���������d��]�����cg��ђ4kܷ�/ۘ�aL���C.a��$i`��3zY˦���,d`�7��6�����D�q����-D�aD�6~�,B5��a�hFc��\���,V!�^�+��-��J���P9B�wQ��-�F�j��-��7������"�� >��NE|dg�b�썁lY�����T�FPi;�U���N
�Z)J[i�Bħ��� ��X�q�3S^�_nB�h��|�d�&[���2���Z��ꇝE�y��Nn��-�lц����8�mg9����Y����IxLȶ��셳��\s.[RZi�� i:,w�:��'�Եƞ�T��Fo��
�ޔ�'��V}T��B��0"��1yn6����@��U���o�����8��D�!�"���a���x���D�7��3x�`�T��Dm�Z�,��ѩ�}g��S^d�$��������J�����B�U�M�C�Je��]�E�엖8#�yt���'G�_��R\EyRي~N�n�S�����Z�e?=s%�X��j[P��t����*��F!�~�3W��/L:m֚�2����g��Q�\C��e��������Z�T��gY@��i�7l�7lJ�)�ιY��F]�V$Q/O�[�UI��"�����T����v̎؁���:x�B.{�qNE��3���ʕ|�I3��^O�W�h�z��d�`���b��<Fy��85�����B �a���Ҿh~��8(���]�j�K� 0-��X<b�Cם��\�-��6+q㜕��:��6n�7�@��K�|�lp�k"߱LB@�f�{,	<D�7 :$������ɑ3;,,l,,*`�����W�W�#
��b
�B�۶0I�K��Z=�0e���d�R��� �Tu��#�Hq?�����H�\�� )7-f�B�z����'BQ��Ry�s^+��!B�,(;V-�^����)Hi� �r�I��^ �M.2�95S����Ͷ6���(�u3�lw�֔\��{v۽����3�]��@�:'sʽ]K�vKG�k�޷n�-����_���}bU��jO��
zDk��M����,F<����9 �O�U�!�Ǔ�������5�F����ޕ���g6��q�����A������UMueR��hg1-����(5ec�d���	UcJ��u�9JV+��X��~��kH�`��D���O���c�ĳe(�(�������lm����iTe���5��3���uj�-��% �Yh �3��Q5T�;>�i>���z"��2�3� uV��?F|�-����-��=�k�=��!�������&K�3ux����=���w�f/�K��rt�].̱����-�Җe��h�BS0���~�V���q��+��2�ЎyF�m&W)�Iԭ�i;4�2��,��oa��m�j�T)`���i$��$����ڊŲ1x�E����%f��Hoz@X=����SB��'��|��x�(3�$v<I�������G����w��������v���5��5��>�B��\o
�	v�-+V+����MY!b����t�@O57�E�6;�p����4gq���jD�O�4�qm ȂN�o��!D�� �Lg�	��%�;J��$�RzI����}�����-���[f�Z�._�)�%�L��喐]��u�V@ڔ?�Cy=z�_���y��/1�A�k��w�L�'��SL϶�#]�����Lґ;�/긓
&R�Qu�=�c��zc�#���	T
<��<��s�e��d����j2��3u8���.F9}e��i'z.�TB�B����5N��LN����`�=OE3���o�������sup5=���84���z1�yoM u@�~��>	.GL���c���L���&��RO�����v��P�����:~zx��AaW4���|��),�r3"yhvLҿ���A�rs��n����^�v�#Q��w��O8z~�ѓ���O�[A�J���D���ȷ��,��;O���ʣ[�5C	��C�������l]҇?-V_�|��<:�N-�W]�ճ���M*sa�EZd��h�j��(0�CQq���z]c�ᬭ��#�G��֧Ly\���)�$�f�����������l%��      V&      x������ � �      W&      x������ � �      �&   �   x���=
� ��YO�	$ii�5إ`Z(�S@D-<H����z�^�q�ה!���`�Pe�i�(]J*����b7.��&�x�"����^}��,��(Cw@�V�l��X��߷%NzI�7l ڐ.X⧚�";n�����.D?Zf�:�8IN[$���!v�ڄ���=�>��-�=b�m��OӸNQCKqM1��s��      �&   I  x��T���6={�b� qw�]ۣ�H��ƈ�UG!E#���So�������MZ��d�ș7ｙ����t���~�ΰq���_�=���w���i��f�v�{������cƍOn���o�����ͱ�P^�^$��M���ib25���s�ӷh��-*w���0E��S�sd����/�R�4�g�!��$����r� q(���:.�c�L�去�:w�m��I�;�P���C"�u����@�7n
�1[`�H�~��b�/q���H��Σ3ʬ-���ѧCm� +��[C=G�{��	=�I��4Y��B���!m���W��
�#�
 (���*�����I��v���[=��n�����<�o��A�x�*ÑF��-��(.�E��F	�;���;��J(B��=�bo��1<��C�i�F��S6��zk����2"C�<�GoT#��/8�0��Ee��fh����:��d��rv��݆��
�k�bҔ#(A�1��I���z�pj$^\[s7J��C&���� �j��Y�̈́��������?l���jBl�!U�fab���`o�P�=�Ѣ��3T�!��	c�	
�5�t�Ӌɀ}}��\��͎�}su�����Y}���պb�w�x^2�f�[<��t�.�R���N^�B���leTS�����b�i�xTH1bp����{+=����TJ�������N��P��]�뒘0�:����p@ٖ�A��9���wG��c��+H����\��Φ^(nr��۹����B�uQ%�#:9����0��*�)ɵs�ڶ�r�d��\��/�b���������      �&   d  x��T�n1�O_�P�r` �}q@N8He��[��q��@�7)S��	������EU�%�fwf����67~`��ш&-�u���7��E��Ǯ��}=�Nf��kEn��r��EF��}lN��B�)*��0�vJ{Wc-�?n�8*6�y�V�U`-=�Md~�.y5��-c�*;ʗ]$�B�|If�j�<`���iL�2���ժ����4�-�чD-3�'�|W)��V��m��dEF���jE�H�Dn��P�E�i�#����E�	�q���:��m��#h '��NQ��Te�9Ԏt���lr1?;�]�ͥ����}��G27��N�xpr�%�?��X���(���� �|����)?XJ�`T["�����#�:r@�RU�6)ǫ@S5Bi5P00��G�	Zƚ��C�b�3�*1P�ˈ���=���7���K��4�����N�Q��E��1�?k�ȉ�(}E���2�hi�^E4�l�6��a�U)0 F�͓y�S"[�˴��ȅ���� ��9?�y�zO6l�������~BQf3��M��1������O��c+{��#%����R��^�H�}�-�r{[`wI��m ����ٙM�f���/�N      �&     x��U=o9��_���Fpqi8��We@�#.���
Q���+\]�v�ؽ!w%�q�4w��y������}r��ޒ�)��7���~\���[�R^��X]�/oW��:����?}�f�f��dM��7��6�.���9���/��!��(�?�5�E|N�q��XS0�4}�ַX;F�H���]��H�i�h�6P�.��q��s�H�gc{����h|�!��6�Bf�{o�ߴ�_ �,����a�F
�bƦ�!~�:�����1��1����Wp8�q���J�87o�o��-u��|JN��, ʖE%�{�m�0�Z���5E�j5�$���f�Ѧ��S77���!�xG�.�
���R��o���פc�L�IF��(L"xЖ�ܽ�Ʊ����}\5P���&ICߩ0
=�o�ū]]�S�Y�r�7�D�z/�E^)Yk�
��>���W\ݹ��&�X�)z:�P�
�4�G~�*͘�fz~�){��|5��m[a�b�&U��ˍ������j17Kޛ��o������_��\^��-��!�P]Y�'�|�0eF{�j+LmV�$E�0���ʾ�8v�V���&����h�*�Ѵ�E&��tn��XT�軂	��z�KRO�Y����#�k�M�h��iJ<QC�Rw��ի�.~����ݗ�b��ʠ�J��V���D�w��@�7u2�^�s`�eԃ/��2wH%�}��Op����-G�$}}L�C)�lj��I��T��=��h���c� �G�$=�]�He�c��RWuc��фřP���Q�n��NW}���F�DB����:ڋ�2��T�<��+l�Hm		�C)���"�����s�>��!dV�:e��V���4�ޕQ4�y4��誺���b�����FH$��"n�\�"�Jw� {W��e��9�G_�/M�+��hS
�ջS��B�^�l�?\l��Q���kU��d[�`�}O��<ҋ)	��>=OãPht�<OZD����ю"u/����������^�      �&   �  x��VKo1>�_�c"!$���J�D�
�H�aw�vmb{#����{ȡʭ��c����t���J �������X��lU�2et:>�p1�<N�x�����A��G���\�Eb1W�Zq9}1I�yp%&F��Y)�!�Kc�7�="��HgJ�*7
i�U��96�u��A{|���.��ۈr/i�l_�M�X�0#ho�$Rs��,��gH���h�MN����S�������7dz��=M��WiFS�1=[��@���X��.]�Ny#M�tS)��xk��kY��gÆV4�\ɹ��X�:�xh}N�|J�]f�7)���B�x������5'Q�#���t xÔJ+�4�_I�lk�"܇�i��h�.��(��AۡI3�w���6z�����);��k�+��v�7��`��}��=��K=����г�����,a:�Ps�y��m�m��e�[�(h�Y�1��;��C��E���3��6c���.�c2�X��Aw��z"��(W|�-9��WP�Q���9i/�I�$�]3J3ڑ�Y��IB�0�Dv� 5�U�׫r]�·&z��hݶ�_wB�ⴽ�b� ҝ�� >���{MQ%"�2W럐�u5�4��� �m}��sA�oqY�geNw�.G�҉_j���_Ǡ/�SڤSgҤ
�DF�(g�O��p�i�&2��Mϣ!%�d���
���C�Y"g�e�,�'SE��Bl���,�����y��%�)ƔK��^�����a�      C&      x������ � �      �&   q  x���KN1��3��Ш/$X���� VH#7c�(�yT��p�Ћ��Zذ�&r�?���>�_+��p{�i�Ķ���W�ۺ�q�.!��vR��v�6D�t����q�xSL�;
C�4FMr�H����"6�C����r~�(���OK��&��hK�2�eX&&Uy>�<	�X�;X�82��2�"���	#��G'9=YM��P(Qv��e�\LN9+�`��6���2�ܗT�b���c/�5�f�Q��8�n2�1�٦'a��Brė�ǌy�����5�V=ZqQxz��e����=��,�9���g'�_Ȇ�e�,~70>�>���,��
�2��5Z�4�Σ�ĳ���U�X�e���;      �&   �   x���A
�0E��)r 	�]��L�BqU!�B fj������W�n�ϛ�MUnH��ztV+m�KQ��f/��E6j���,�hd�>Na�:�Iߑ��t�3�r2|&`������L����9b¢5yO�UB�rɀYo�ħ�Ӫ��i�&�o���O޹M�A�4S����E�o�ӞSJ�0�      D&      x������ � �      X&      x������ � �      E&      x������ � �      F&      x������ � �      �&   �  x�Ŕ�n�0Eg�+���+�Ev�lNӡ�@�%�e �*)H�&c�E?A?V^*�:�AϽ���`uv�z=��bL�:�l{�����ڃ~h�jj�m�;��K�u��}1��n?eyv��ƚ��{]\ԯ��}�4�:+���h���F�F�{Փ�#�ڒ�j mi��:P���4*���~(O�ԛ0:�}F��H�����F�������`��]��q��H����{mݎ�]�iG�K������s��Da(�A(2�\� W�+*��������p	�\.��`�f�g�8����U�*p�
��
�5�p�\�׀k�u�aϡ�Pp�0�s�0܀k�� n�5@ ?N��L`S��B@!��PH($
	��BB!��2M0�,�R�SM\'��0�0/�a�A�	�!��h�q1L���-b�k�2rH($,%���ĕ�E�(�l�� q$�*�mɡ�l#{0�즛�$Y���\~���"r�S��䐠���6�S�
SJ�������5�^�^�1�=���1g�Ѩ}pV�j��Gtpt?�幏�?D$�/���I{�GG5�˳�°�c��YGI�YwHr|�/����+E���to�^���.6�y{���:��k]��vm�{/O֜��˥�ߌ'
��S'�}�Ԏ�<��4�v��l� JB��      �&   ~  x��ZM��8=;�B�0z�N:��-��`���ɞ�D�H������79�Sns�����>���d�=�%��U�իb_<}������Mir�[�߼���W�~�~���W�]�w�~|����G�[SK�׹�m����.>��x�x�w&����vxz��\�f��:e�b3�w�/l����.K�����oa�Bg^gN�뵪��+[��'�Y�S���8ȧ�e��LU��V��Vm�T�_�ɵ���������3my�x�s�-�\���=�G��vۮ�L�Z��[-��:=��j�t� �4�6k���ֺJ�t�ټk�g���0��]���W.g�3�lf753��Uk�V�ڡ�Թ�\>a]�U�(���J��*&�W��>���0��S�[����Idk}k���6:�88M��YEG|��S�w��jnk�L8�&��Y��,��M����u��.�>j�����Q��p4�7�"Y����L�uN_��.:������;�l����
3�;�mM%kO�=y�#�k���a.����jp��� ,C��xp�hu�^kS%�|1�O�4�d��.S�{P,3�ڔ:7	�{Q��^�*�"i/g�c��&Ё ƾ:�(pX:�(`��f�� �8�~���S�rޔ��7�F��:S��k'������x�<!@?<�½w�c$�]�lkC%l��ㄛ�\c��W.G��ց��2x0���%�X��͸A���Aw{���4�>K�!!a]0{�E"���Lp],^��1rE���I�b��ĭ���pU�d�}1Y�(�(tu�P�.��ێ�'x��L�<�W���)x����ɳ�kp�"L��S����.i�oD�8v0��3W��*݀�����&8(F՞�
n�r资����w���ѹ�>*W BQ������;Ccjl��H���s^i]P:X_ڜ��� �L���w=w��kC7�d&�<_�4!ӟ�#�;H���pz���k���O&*����1��ь��ҚtP�9|�`���^���WqЌ���8�Y6�NL�h��+�cc=�4^��t���L����YmLXX��.G��F���Ts�yK��<���p�0^'d���al?ut�)�D���C?
>�n_�ief!*��h�u�t��U��Z����:/��կ*WU�;!䋙0���
�%��=��-���^*E^ު�3ybiCU���3�㤧F��6%������n9yѪ^�Tȱ��T}�P)�&��J��"Lf� jG/v��Ғ��[�2��h��� Q��sh̹r��cXo�xB�/��xR�5Mu��V���W�b�l�W�q�Ӟqr���pG��ۍ��	A��kuDSƺ9�����ƈ�T�}L�e�$K�(���Ȋ���ݸ�����3�($|>x�l!��*���
�6�b*L_��7F�,ыnsz�l��ꖧ�l
�:�z�'.���)4�Vۏ�|������mi��d�A�:��YN,���>Zih�.�]��4��D��a����/�E�CM��xJ!�!n��.�\I� |W��|e:*U]���"��TzrBb�\�s%��[>�N�:no�/0Xn����}�/0"ݢ�<�`��-�p@~�M���?s�$X�6�zƭs�_�9�U��P|�Eх�R�W��pX�XN��	���WOn�P�:r`q�r���[�4�!�yWFw*�<�P��u8Ys�kt�F���)�c�8|�lp0�0I<rH�\����l�t��࿓���[}�v�����`��Ϛ�d�{sڊ������K�NRhUn����(&Ѫ�E�c9�\�>C@u�l����q5q��,\���b��	�A3 )�=���
��ۂT�pZ%A	Ni��*nj � N�6��T)}�<�֍��UY]��ߥ�G����Y@k2���s��1��e��_�+�4Nc󫘴Ъ,�T檅���ɔ&���t����|�aY1|;S���i���K���fa�`�LH�F3��*Nr���I����gs�)V�ol���)NN��7�?1t�M�m��tC���aB�<���_)cJ�eD�t����S�l}X���HL��[�!?�:��EA1E(�.'A$���ۑ@p����B���*��X�P��85v7����5�ÌR"�P�A���鬧�ʴ�>�������G�����&X�/�L�PC�t]�#�1c��
�y���5����>�E�Q�Lk5ra�C��N�QWFcî5�xD,S�	��ڸ]��ah��j�oc"`�N����ar4��5/��]�때�5����D���z�[�$R�����*�6�ұ�Bu'uc�(��V[�h)%>���x�bE���29�(Q>
9"�"�VuP�����<"�s����t����9ys�n��Ȧ�h���^��?:�D�%鄔�k�8�<-c�2�be1k�B�MH �nC�ӌuu�.Y��[0-�@�f�Gc��s@T^؄Xz<Wl�Mk���lG����L=T]�+���K�Nrh�"V��t�y�0��=�Hӊ\͌ц��>�(�����͕�?Y�S��(=�B��M��y[Q�;I���'�H����1m���������Y��Ey)	��1��u����@Q�B�	5�ިR�������ϟ����:��2�3�v��]i���'h !2V�H�� "�u���?�g5)��x�,C�x�h�\=E�M��v�U�5-�E����.޶�+�ǟϕC�_,�{�~ۉ}��G��$���߯&��jk��w��x4��v�EPe{����*U�U�k|x�s6�!]��r����Bs�G��M�ᬱ}q�t��RKr׫��cȕ�P�#�q0���u�N;�2�M1�����t���      �&   �   x�3�0���OI�ɏw,��LNL��ϋ�qt�u����I-�wN,�3�7��q�w������w��+.)*M��,����4�t��-�1�@�û�8Ar
)�
)m
�`a=.sS�Xj�P�Y�����A�� "������ AS      �&   �  x��TMk1=ۿB��IZ�4���8-4���2֎���Շ�N~@%?��o���k%ͼ7�������ڷl}s1X�I�����ŏe��m����>mN��Es�~�]�-W��On�ON&�d�j]W7��y ���Xi�4����l-E�Y��Ʊb�z����  �2~����+Ĩ�j�ܖ������Ǻ5�k
�W:�U��!�ذ��	U��@ȸ�L���8W�;d� �X�P����2��B�'!	$��ߖ�&kZj�ӳ��o����'w�R�2?~\y/q���/̈́�F�f4���"g2(���G���� �G�3�N��Z*n���M��G�&z�r���j�ѭ�[ڂ�Ё_��0��/��(��q�����qⅨ�w�C
q�� �d�$ȁ���T���J$v�9(&����x��~/0R�3w�ŕV$?���M��0��q~��FD�
�ޫDE���)�c�Q��6�˼��qt6� d�=��ÀI׬j1E#��:C�������D�3L=�����>d=*��Qȭ���S��׬�/R��_�E�v��
��mւ�1�c;�L�B��Y��&�|�\�i�B����y#���yx��c5�ǋKB�IEK)4���HH.�"��_:���U�W�r�����g������?��鏤��O���)P,�      G&      x������ � �      H&      x������ � �      �&   �   x���1��0��>ENA �5
�B�@[!YC< K�8
v.FG���N�,\�������ɳ��DmĦӪ�F�f�+���pX���@Z�dM��f{�iU�ҿ\c]�P��]��9�(��8�Έ�a��-�����`Br������*>lɶxC�jsƉ�1{�:>*c廨|���9+V 5���&�+x�ir}�w�=�=�G�ļ�'U"1��#�I��=�;>7g���#���?���_S�E]      ~&   �   x���M��@�דS�	�y�{�ﭢnĕ0�3hH���x�����EAp�VMUE��G-�R#z�5lа8]��r]銎�Ĩ����U��$
[r��{tÝ��JMԖ�D�j���ف%H.'OF� ���!r&���8�{��b(�Я��g�M���P�!r�VF��z���Eh�2�H� p}�)>Q�����1�g�� wy�eWQ��      I&      x������ � �      �&   �  x��T;n�@��S�A�@��"��S F��xr�ُ �69@*wiu��!%KJZ���y�\V⸑z�5ޒ�����a�u^�y]�(��/��x>����S���S������N��/դ��l��D��Bc�xy�n�g�?2��"S�qbK�<�W��`�1?��&25�����������(ɉye�*f'���,1��$�U�dG��.��K[2Vz�C��w�hE���d�4p�d:rfU�������<L7�W�%0��xR��}t;�:Ss.�'U��\��S3t�C�;���b/EO 1r��X�}v@�D*M�frԳYԄ��x�~Q��$(���l��`b))g-ge��$ַ�����c��d:��ds��0 �O����3�vUMmF�c����Щ�9(���`p�R�KNyYP�m(�+�ZF�b�V�/�W-��1@l֨yN2S�0-;�O�n}|۷��� ���J�o���8�����`�#,SYq�{�(j�E�t������Ds��=}�1:ts�]Ww�kQ? �����N|�(<�B���u���2\_P���
9&	�z�F�c���3�pS=�P��m�?��լ��%�^�W��эL��C���t=!��t:_k�jƣ��h4�&/      J&      x������ � �      K&      x������ � �      �&   �  x��V�n�F<��b�+@$KJ����"��R+1���I�r�N�3�"����/�Q�r��KR=C�u�i9���=;y5������[gK*�������ů���w�u�w����b�s�[Yvޖ�me��jv4{�+[�'mt4ܥ�x���z�l�����=��ݱ��P�s�Ĕ��(���?X	���ͧ5�h��b<u} g8�i��(�}GAc�Lp��FC���k���e|8��{;2�t��te�#d�	�<5��`O�e<��9	���NN^���m�&���δ=�Q�FLm;�k~�l�)���:���p�b'��Tr0-��Ǭ+�"�W�F�S�.C���{��4�%O��7(8j�����&,�����H<0m����w�����)�b�{C�SPM�!M��l�8� ��a��M�����4�		���Y�Eb��;[�Bk��~�=���3�����s�㣛=*���s!�Ω��F�㳔 �p�<�q�J����6u���X�5[��h�u�|*5��˚���-����f�{��V�Iq��Q�$�7�eI� �s_��_+�U&�O]���Ԣ"+D�#��>��
�>H�@k��-������ȸ�c���0ي#_��>F��h���� .3x�q,'|c?5Ӂq�y2�20"��ܣ���;>�V/GA��:�^�RT�҇oAE�L ��C3�&��xAee�B����w2����V$3�h���n��
���I50|զO�ZQ�&��s�T	��vY	j�ꖰ�NFg��"3�h�U�6}m�s��4)I[��n{5��b��ћa7 B��0�AGi6SM {�W����	 �5Bu��cj����I_�.3��-i��}�ۼ7��(�t��DH�G���lWRV/��B��p��B�頱�J�6��3���_����/c�tv�u��M�{'�O+�z��TcS�?��'�g���٬aJ�g���6���ViҎ:yk!!4WzC�����N}OBǽ�<Pe��$^�b�7EH]�O��'��V�K�FM���a��Z���:�ٸ��kk�&p�^<��d�������9=O��${�~����;��� >Q�2���?�]i��$��+����C���ÿ��k���poo�����      L&      x������ � �      M&      x������ � �      v&   �  x��T�n�@����2��#Ik�
`@V�DHe�XO��s!�߸L�"p�V?��#%9��J��؝���Qq�*]�򪭍be�-�W׷�O�r���c�uT�����F�u��];�m����w���*�\�M��bkX���x�S��Ҥ���/.&���j�tc����n�+��*yܦY��5��4	hl֦��=S��<�/M�xf��l�����)�.�A�0���h�}������ס?�كȁ��uR��ƥ�:ȣ�dzz�G�VB�7�y����PH���͏���?
���y������&�+�Cx~H2�G��bv3Ť���O�B��׹7����n�j���>Uf�x�F�
Zy-"cqXB��Q��Y ��]�:��(�e�9.��𼘳Бˎ�����E���6p`o � �g�bs��V��![_���ww4���wFy�w�x�[,y�Eߡ��}ؑ����do�[9l�#eE�l@�uN�Z�~�VG�GȨ�ɍ���F�g��Tz��`�����c�{����뚣Yc%&�fEƓ���!i�{�ɂ<�r cB^�c{����s����y�G�O�Q���S����b�N�g��|��'r��"�H�"Rw��{fX�i��T�Re�v�=˃geADd-�I	sE�V�}�ݍ,N��O��[�D�ֻ�V��!�*L�5/�nLM�47s��V��P���l���p0�튈      �&      x���MN�0F��)� U���쪰�	Ī�5�'�+Ƕ�IE�`ۋ1��V��y�7?O�[,�U0�ZFg5j������V5T�������+��{bJh»�!۬�2{%N��Zc?0���oL��a@p��=�}Y�Kc~�x�Y��c?������9�n
�h������j+Tc�/0�'���dһ��:��QXh�ݞ�)���(ͤAƒ�LQ���hƋf��$�O��Nr*��4Y��]�:#�)EҖ҃p<>B;x3U�ܐ�o��e?��O3�m�o�<����      N&      x������ � �      O&      x������ � �      �&   �  x��[Koܶ^ۿ����Y9��[�i����"���h��$��d4�7Yv�E�]����w��F���E3�ɏ�|��Ce6���U��UrY�2�Ters���ջ��F<%W�I~�$㳛����Q4�J�u�۔D�d�N>�x2>����ʳ�<�ӳ������%�Og�i�%'a�[-��Zc�L�,<x��gQ����ox�e��^���V� ��Gl��b�,���TC*����iQ'��V�/�>�$k �*'	`�(����Z�h��K��BK�,S��|�B���{l��A�Fh�s�ꍨE�Q%�5=�sOa#H���,�����I�ytK��5�ȵ c��L�Er�+9�DF��̈5Nh.��9��9v�J�ի(�]��k�8�[<����b�����m��x`�r���- ĉ����U��B7|U�DO���y�`�N~�A�64���8@��'���2�G��k���� T�&y��XZ� �!��5����ALo����7N�L;��%b!Ś�?�ԓ�!��}L쀇��E���a��=$��&���v����(�^l��w*Vۺ�m�vC_Z�q��dށ�����˼-d)��9O;�	�{�젷C���hp��RU�h�'�L�v,��J�B���g���7���y�s�N��e��}�9��9��,�$7s�����N�<4Y�|�ӏX��V���l�3�3��m	̷�}��m�]t�'U���%���[��s��2��l�>�ؓ�?TI���RQ�Ji���)�C����C�����s�k,~]b {МV����33�Y<��͟�� c�`�͗�����[0�qGم`-��H&g�?�^��%'���5+�1�b��7j�٨���Ek®���� ~@'�1��R�nG�,�V�-�ma3@'���[H5Y�ojP3��$�(��?I����5ͥJ� m	C�d�WA���SXL��q)0,<�Hv�mW̍�k�hP;>�h6_�	ΑJ�C��zZ0c}-�LB3�ϕn9�s8�Q��SM�S!��=�$��}�����
��b1�Y�޶L�*#�7�M YY#��(4b}��%�A�9W�EP�^�+2o�Jnr���*uh]����( ��A� �Yj'�m9X5�Zi�3
��S�:7�Ha���fB�3�%v,���e(��V��VPm|-oSI���<��bc�+���5/�S뚠@ۘ��L�䰓�X_Y�ͬ�nł3��5DU�)U����1�`��l�D�a�ʀ���,|Ǭ"}�ł���hÆ[�vK,LE ['W�lڌ�;ǫV4�Ԍ�	��6�#LT�1PK�<p��W85BSC�sz-h�{G���2�Q`�
d~[�*���GSk��ҵ
���e��W�A�G`g�^X��ژ�RX�T����T�����C�{F�|��9-��U�vR�%r�t�q���".9�n�c�{~rs"ϴ<dM�q��B������f���G�s�nI<{B�G���s�����R��Ď�UK.j�����^�?�Կ��1�N��6� ��s���v��x�g�B�����z �C�Mp ��9wNǁ��L��=���������8M��iZxK$���,����p�SʡN�[��9�-#���{��¢`Jr�+��h\�ehOQ����(b�5RqEvQ���r��V�*��=[���qrW�J�m�;P�(~;���)�;��#:N�b:��e�[�0{O�{ �A��g�e��t��.Tn[�NP��8��1�gmx�rC�3Noa�<�+��;:m�&)�:L��%�o��o�`�8���]������5��\� �oX$q�H���5�3jYG~#펯sU;���\�4<�è.7�s�-}���,�dL�	B~�ZwA�B$s�H I�Be6v,Q`TK���{F�K���/�
FX��D1#GH�8�ؐ7G8}YM���@'��&�-׿��I.�{E:J�S9C<�����	S��J�p�l�٧0��!W��l��<N:�M-�D��	->�l�~@��~���C��vtvr�Q}Jb �or�����&�m��L&7?O�/���Jf��{:��5�+$)OPͅ���r*#����y�2[@����a��= �-�Mg���7YP��od��p��pI�	u�t2[P��g� h���U�i ��^�*7Nꙝ�\��N=B��Nf@�a�y'	�.�|qy(+j����dp_��B�� ����\"~�J��ム���Ԛ�ökb9N���A~#Rjf�����̍ک}/�$��d�7T�W�N�%O}�=����,�cBj�X�$��t��e$��椃0C�+ܫ��a�ld><�K<:?{_�ݫu/�>e�Zs�T�Y�2��Z�'�M?��kΟ(��(�0���e��8>�"7��Lك9uTh͆�rzHf[?�~��o����S���Z��Z�-9���[0V��� �yVt�,%ˤ�!d/"}z4�ճ�HR�Td�����F<�� #B)!��|6TO� �ے�V��ݛ�K]�`�C�u6\�t�%��H{��ԋ߮[��t:���E�{�ie��8ł�Xl���˞���"w�Bqy[�؏��$Mu<�����j��}�v��hzs)$DQ�}����a+p`T.gd���Ű2�������+�#�����(;�@�
z3W��\�ިs����=J��)�	w��7O�����--}p�4�����|��r�~��gjO�}>��������F�����<<QW⑮��k@�`'ao�������aݺ$��w#YC��,i���r�{9����O=���7c��-��Y����[����M���@z'���`�2Զ��/t�f�k.C�8���q@ԭ<���7���D�_���J�0������?5�]��eNg�8e�|5��NqG��o,�8��b<�abG`t@�B\L�(�<���T~�����ةj�"�c�*N���Q�U�NT�9�#��,��S2-�C���0��>�4����� �g�v1<O��$��r����<ޯ��Vq���|���G�o���Vq2��-d(�hU�����|'+�o��8�:Bꄀ&Nn0����=�NX�d�I���j78�� �8Y�\q)f<������d���.L4E�*ww=?�YYɷ���u_�QT�N��/0��8�`9�<:CR̺A��_>���0`��
���b�.�����J��8ҿ�Y>��]�>r�Gq���<�
�˜�Uy� {������m`#      P&      x������ � �      �&   �   x����n�0Dg�+����KV���4K�)�@�LA@!Y��?�-�,R�;t;wx��2[ȩ�G�=��b��e��Z��lv����m��H>�;�jofe�$�<>��Qt$�����9L���'B�8/_�M8��qP`9iǎѳ>%w`�@���.U�ޗ�9�P�I�9O���*9�Z"u��bS=��jmj�d�o����H�9�#
����.�_���(��R��      Q&      x������ � �      [&      x������ � �      \&      x������ � �      w&     x���;o�@�g�S�� �a�1u��I�1��Y��tT�a �63d(�e�+y�l��ɾy�Rg�5�`~Y-Aj�����z�c�/�&�C�f�t���K�
�w����&�f˸"�|C���ξ,���{ x�y��ъ�VVh[E�2JJ�k�
(xa@����?+�E\Q$
2���pсQ~t�w��m�ߵ�`>�m/ЧH��)(�QD�¢��tC*Q�EV)� a��	V: ��Xx�`���K�w��iJ�b����-!8]�՟�8<��mT�n�V��t�����(*m�.EƆ�g:��!,%e�����?2(�ƻ�d�[�X�}�ݸ��|h^,m��-��εS2@G٤2��"���/��+��r��D�jv,�� \�֢UՋӳ&���>2�fӽ�t�-ҽǼ���H���R����J�<���)t'O��{]���J9�:�`S`�C�f$�~�"��h��� 1����8[:��'������h��F��X���%IcJ�\V�`;MpF�z��� !�5�d**rԼJ�5��"tA<�Eu
ؔ���Ɩ���Q�wͼP�bv:��������$�ۖ%���;R��])�@8�:9���4=�$V�rs�v��*� D�bM���`I?��U��-gj:�(u��?DRFpIV��g_�-����*����JI���pvz�:�ϓ-t
�O	���q[U:�v��Z���y���4{ �=�"��Ѹk9�%IF�$;<9�7%3h&�S��a��J|�u���&Ө��t����D�=NF��ҡ�k      �&   &  x��V�n9<K_�I6�^�Ip�@q#ؓ��.8��Q��Gr��^�c[M�C��x��`��fuuUsn�n�]A�-��J*��r1����b����V��_��d��]~�NQ�KM6:,��4���i�IWn�p7��*���oM8m�.���pm���Y�YAkRc߆�0�ӈ��P��[V��F� ��	'�Y�X<_I	#"���i��H}v��p��ڍD�ed��YP���3ė�:�	3��:�um9?�5�a�B�1Z�mYӊg+�*����o�.�D�
�l��H!�y)A�D��8��*/��������a�BUpYw�H�Z�@@�%���L�����)���k��߽q��G�����~���k�
>P�����ǿ�.�G�I01�!�GP_F�4c�\�{���Ԩ=פ��X,NHi�w|C���"Jt�M��ɱ���Um��������xK�Stbz}�g��d<�������Ap�H
7�l���&��8���
uс3�䡵f�9�&&�A}C$��[�Ѕ`�"JL�`�ҁ��[���8�
 Į�Zɝ�\�×�T��S~�*��o&r(t[6�ޥ$Z)��>���:�Y�P ���ȶ�i�:������'����ă���sv2��$���03ĲMR?���h�^y����_s��n��� t�>4�����%J�R����rZ��uN3w��(BJ�uj�0���2�m^j�m4�{e�Ք6��G���q�e����;���v|X۵��]�F�Iۥ����S��6�������75��&��3�N��IL/o���;�L8ԭ�w�f�s�E+�YJ6-��m]Fw�-��p�+�Z�S�Ǆ�>�y��l�u^=׶��F	��dO��0~�B���wC需�
eY����r~�]f�kn�I�����M�i�N|���܀�����e紖N�tt�y�L��%T,�-�=-�$�8k��M��e+����f��5^��ݬ���y=�s�{�R�+P���䉆�&���#�m7��x�0��h��      R&      x������ � �      �&     x��P�n�0�����F�z�j���v(:�(�J��I:��c��t�&�w�;�Oّ;rl��l��eo���X�4���Ԩ�}ovES���+��Uؽ��������c��a�F �@I�<���b���ʁ�����p��#Z��� Z�nGp�HP\b��$����^"�Aq6I�PT�Ê����m�TIW=�}ՠ�ZP`𠂊�Yp1߸�Fy�DM�[���(.��p;K�QGJ���,���>��y�q}���E��?����      Y&      x������ � �      �&   �   x���K
�0E��*���N�%�G��l�� MJ>��\B7f[։����Xm��i4N���rVU�v'���W��*�*���F7�3u��{�3�l�>5�6�ۂO�f#��`6BK8с��j)��h����dI��Y��2^��?�vBߓN���;z	~&O��s�o�(�����0Hz
      S&      x������ � �      �&   �  x��U�n�0<�_�0�8�:=N�4@��kj���H����CN��X�;���Q�%93;���gեmX����J�T�����ŷe��M��P��Շ�E}M�?Tg���갺�>pZ��2��kv�����^x�Y؋��4�w��Wn�F4,���v���AX����࢔��3�ijW��S�4*���I�$��k^#=}N��F�| �����ȑP:��P
j@BT�ya�@���e ^�j�j �n]�,-����h�z�j�JϚA��.�=b	���@�y+L�9�jG|� ��~�"�B�o���D���`����!�o��sp�3���jժ@&Y�PP.<~��Y�����M�IU�1�5j��EnP�9EyO�ϸ��]"(n;�(���x\})��+
ёH� �D����)i\*����@�mm����fG�[E�Z!#iT����e߱T\�YS4���exR]+n������r�9+�f�4����2�%�Dil{���xm��7 ��nB�Ѫ+� x�;+��4=��S�F��k�Φ[ r"���I-�Q� <��0�t�# ����I�*$�~���rS_�ЦD����������3�f��M��T���֡W� -�泱���W#\�S�m�#x_�㴝˛���p��c����x)l]]�>@���d����Pzԝ���=�cF8/�a��i�7���/��5      �&   7  x���Mj�0F��)f�BI�viR
�1�d�5	�$d9���b��MW�iW�>I3�I�ٽXYE���i.�`kd�>��Lft�r3��q������'�����19�@riy*Q�)�5)�9���[�гAnK"e��E�0��ŕd>�6��ll��ΗF�jP2T�u�@#�o��K�ZJ��~a®" d
�{Tu)d�S�#�b��q�����x`����g�k��t{�v+R�c���^rq�d������@�K�H[V`>�M��?�zlu'Ru`�e�a�m������+��8I�O��t>      T&      x������ � �      �&   �	  x��Y��9��_�pB��62z�٠����4�*JM�U�a��Ё��3���9��j�^�j�V�H�}�s������U�W=��8���V����__��~�po�w�y����|z��/S7�f\��n��w�������y(��L�z]ֶ�'��_����~�)>|cT�u�Un�ƛ�V��Xi�ƨ?�QuXy��Sk���0��h�����6�+�UV�{�_K�J��'�B�yp��*�>U�����K\���x����n������4�g#�_���^�]��<We|���h�M���E��*�ml|����D��4-gr�F�ꣾO��b޻=�߷��}1��zs�_~���n�7��#��SM-�h9���Z{���0�4+�!����R�u��[�ĺ�����jS��Z��5_3q���~�S�y8��?�"�Ƚ7�,�j�������xWg)�b��	t�X��ssh-M ��ֆ�.fu����xvq�/�lq{>Q�[w}Ӫ��Nͮ.�ŕ�l~Z�.G){��~x�Lƕ�X�dCc��sZ�&l�ҴIB����s|G7dc� נ2��U�m	�Bi�2l��a����y0L��)M̩T<���3�t�uak9a�"ߞׇ�C ��-���k͡cڷ�HC�s��0D@��3a��L���m���ZbX���j��/�����W�}�DUY@�夏U)�yO0���YK���x����H���xe�#��E��k����H�pj
m�Y[P�����3:���b�	��!j�Q%r  �V��C�_�D�_�q��:׃E�i�|�|t�y�8�7W#����*���?���eL�P>*��R�} �5���-C�إ3jMXO��(��	�׹��ܦ7U��	ť�����+XU�oX�ֶ,T�\�E4ծ�W� &�Zْ��e��Δy%o)J���(��JT{a�m�V�W1E�m+��g>l\ՓY�#��y�%����Wg*� �u������QT�R����y-&fz�$�m�ꎫ����Bz����ɛ?�5�5��f��jk"��Fv�;��n����( Z�'��������5Ђ��'��{��UoǏQ�]_����"�+��*�3��I�pd�HXd:�鐳v��b%��g���"���ܵS�tZo����~ޑ_C+8"
�n;�ٕ*I*��b�]?W�����H����cBį߲ ��:�腏 ] �6|5�������dp�1�#>E�:�}ة#�D^n��oO�N�Jr�o۵;�
	Ѓ��!��xY�X���z��3��..SϾ��[4w@��X�N���(���8���X�~�`�R��R��܊`�J
t�ӎ��Ͱ����p�)K0�0-���f�C�3>${�Pr�N�:)iq�I�׀f�L����,��X�-�����%�ƣU�ޞ���:b��<�LYߛ��^�o�\�j 5��	�B�٥���)¸f�Xb�)�<��Mhu-s�Y�jmKَܣA�d�c%� q��m�>�Y�(My���]�ͭ�
{�S������⌅B����mʊ&�R�}�0�ud-[PްhM��Α%.�!��$B�Lw�Pj�ө_����*��Ԏ�6>�t�py�#0��,O������Hѵ��\٘DZq�[�B�ª�\PR�c��*Rϝ:V�AL�T��q�8&��Ǯ�dKW��4�(��0ڵ�Ћ���4#���L�qy4[M�r���<U&y��D��%��A�i,�]��#��]�:>�&k�k[�&��!��+k~	g����!??+�.4y���A{�t���� �b���ڪ��D����o�p��W'UF 3�)O�W�!zcR�+�*v�u�:ż�dV���bC]���-6ȫg�mNN����OU�:��J���BS0�Dc�Ȫ�͍�7s��.��g�����ش�f���?m��i���h{�e4�q��~ȥTuF+�C;@�Bc�$��> I<�����7aj����J��7s.ɎM�Su?`;�W�逸A����YX���O��YͲڙ}4L^�m��!3��
tP���$`�T�a�߰z�kIo�('�9�t�K�Gݵ%�S���Kz�QL�6�/$y	f��l��a<�1cp3�;)�����%%9��,9Ц��N�ʮeO�W�@�����
�0�!�xM�����a��u�F�D{�[����M{3
��|`[�!��K�f�M.m=����4�i24�/���nSF�:N>��~�X��j&��*��nm]1�h�x��������Ș����"4<|���������"����kJ�h� ��]�v�_	(Z.C�ޚ��]��k�@��XN����1P���-�)�V=�A<��R<��;r$!D��C����E�wc�!󸻞]�n���r������m��+~k�`d�h��Ť�e�>��km�8�1��1zt��mUA��x�2X�΄���pg�p������/����Ht�/A"����y��������������?HL��X���Ϟ=�f�P�      �&   �  x����n�0���S�	����E�À4	������XlJ@I����ۮy�Q�ץ@o��"E}��d{��ؠeu�-u�#vju{��ܬ�
j��znբY-�#��&m��"%�D���u���S�X�����#C�-��4�u{���m�/���[L����T���ѩ~# g�Ϊ5�7�C9mG�5�D`�|%:����ہ�Q�A�";�$��n�"����ӝg:��)���y���y�c�.���8(���h3�PnL	M]�F��Z�G''�c5ʓ��r>ѥL*c�Pm�A���Nޛ�5��E�\����xc+�	{s.�~$&@�@I�"h�R�
pb*�BD�Y���Vg;W��\U�d��C�ԑ�0��ˠ�;����g�d�ES���8�d��=J�+I|%��G����{oÎ?]������M
����Q^�����^ yy��_����=	��      ]&      x������ � �      �&   �   x���1
�0 �99ENP�N:��S���T�|�_	���6�<�����^�W�qO#C�����`ۍ3{�n`p������t�SH,�����ɗ1�7�/
�9P$�|�F�Tj _b�Y6z��Ŗ��tѯs��y{�dWI)_LS      U&      x������ � �      Z&      x������ � �      y&   �  x���n�8���)|�JY�J[zlW���h/VH�$n�Qbg�������b4wsˋ�q� 6��]i�J��	>����[�<"1�Ә�8���'�_��'�	y��q6�ß_t&��g��?Q�޴f��.ZD҈��⸣����xl�5FΑB04	�����GD�[t���ˈ��("�'I��=D���0k�/(F�j����K����5� y��Tr�2�C`�R�#�i�7.���HG�HG{E���X��r�!��d8��p�O�B�\� �|�`4C"�1�И$�e0!)>-r�vp�x�x`�8�I,azY���M��MM+�7@S��N2����(���'�P�#�4����o���O׀ǞA3/��<b,,��s
��o�J,<��
يY�pq��d�����/b���X.,{�,��T�6Sm���E̡��j���#}}E����in�[�w��U�v�˶�u]�]�ٓ�;r7��3�aϊ�2
s��I�1�]C��}�j�w2�CxLH��5��+ȏ�ɳ�³�ͳgO�^3��}����I�@\zl�s�7;�Θ�,��@�o��P�)|	��/$Y)��.��9��p�~���d0⼰%8��Quߓ��I��t�}������{iO�˽R�v_�����"�H �)U���UI��X���ʅꍁ�=i/�I怍��Q�|= ��H������l�:�K��_T��$��Hx�����)��LU�#�:���Ҍ&�� �2����RթI�]Bߞ���rմ��"����U�	�a�n���!��S�oKU�Ԟ��"�M���M1���:u6~���v(x��a=r���ZoͥϘ�ٺ�ktwE[7c�.>1u�[���3����9w�����1m��>ث쒒{��:5@~�@1�Sv��N���m���mx�ޠ�*Z0^N�}����j��=��*�vש]�{�H�q[׃���Y��j֚K5��BSs�TƢ	��`�V����}"��J�Y�q��Ȇ��)��8T�����b-Y�z�M<j8��P)N]�i��P++��Y�-7�U�ln�a6�8�歒�}�f���:a��4Tmg���M�n�m���:5s~���N�D�Q'7��ڄ�r1�����66(�*.��A���O�M^v�i���-�S7�_YE4�Ϻ��ꭹ��2�U������F�b�ZQ�ڒA%��)�"R���5�Z(��Կn}`Q.3�}u&�b��B[�#=v
[�CQV�7E3��`pX{z�;�d9�����j��j`����a�v�;���^�����F�q�p���<�$�&�[O�����U���W�5��o��s�mOVY�3Z/t�!|!�>u�>�=81��9�Mz�ʩ��T>��V��=������qğΏ��zn?'M�S�k��Rʡ��{������]�l��Ѳ���鋀����+���ڳN����:H      ^&      x������ � �      &     x����J�0�s�y��lu�^K�]QOa6u��)MZ���|1+m=�,�M~��|��ز��U�ԤA[U���R����2�N�R=Z2`J�η���jX�n�Zܣ#�V�1x�Ě4(���x�q���J��s,hA��Zi����2Q�ۉ6=�����PB:�ߣ��|噸���Ȝ�Os�80@/�����N�yt*w�1��oDa��p�'�Ђ�l�������� �ɂ[��[Oo��\��h)$������$I���2�      �&      x��]�r�F�>KO����I�"ׇ�⌽+���#:���&�h?j���:���M��~��/3�P@�-ɘ��ݍP��@]�����_����/���n��̳Ԥ�+�/�>y������_�f�����ы���������t~�˃G~�u��E����ii�ƬmѸz�x���M=/��>�b~�-��}�U���I�L�8�&�ݻ:�[$��u���I6�&���$mm��uY�'˷�<tgY����Eb��mF��1U������c�ֶɖ�U����f�g�ʕ�]�er��+������	L;>̴�b~�3f��o�}W����$i�����Y�/I�
o��o�T��L��<�����|yI���K��O2��N�&��D�_L���G�3SU&5���{�]���3���D�mk������fI��n�r�������=�����f~�/�g����}�����JR\J]A+�.]��j����E��23��-���V�(��$56de�*��V�)mc
l�:�ڲ�]ͫn����{�7��������>e���W/m�*�3���
��4tk\�����	|:���%b3�����F�E�vx	T��d�w�>@5&nr��6)��uYO��z՚j�J/����9�1ִz�R�Cm��@Lt�Im�Y�1�(yz�}�/1|�v�,���qw�����h��| ������)�3���,!eK/I����/YuO`�y��&)���5�n[5�
C%� R6O�ve*��\��;0���y�U�1�������BA��b��s}ȂzB����D8(E҆9^�e0�P+Lc�6�N���G�+�ӳW2�1�i 6�����6�!v�50���լ�k���n�v��$�{�O���Чܢ�%)3�,��i����exk�[w�;,II9�~fƙ����wM� 5N����Am��I����J�H~it�����|��My[�p�(��0�
c�ѬH�[��m���I�ĉdr�1o2"�ِ�ڢ���!=�O��1��i�*�!ivb9}�Z���u��p�es
�=�ݟt��|��e��%a�+�F�{��Tbx�-��@c��̒��Nc�q"�4�_]N&r�掘V$%�.�3D3�y%#�\�S��׍|�Uwl:hRi�Q:@E� OW]�����?e��}��	0Icʌ(X�;�&4�]\VY���*�=V���6	h�/ط�4���0��v��ɩ@<�#�YPE�m,�Lۭ!�U�ņ���6��g���Yv���&�����[� �Eru��f�m4�<�^�����O>���8W��\�
��Q��*{@(�-,5A=��F�iT(�ܑ����^D"���=�ۂ�
��XI_�/�
������E�d0�(�&8J�M�Z��՛��� Nm����3-�Ꝯ�z&R ��`�.�mV`�^�U�����y�3q|:��?ؔ�����8��iE����-M�;���5�,Sů����<['e[a��������������c�����O��ZZ�7ѳ���V iEN��Adg	��J�Yz͊�p�����C�Oś�^�1���cI�X�DL���0�K��Ѵ��L�!,��-�|)r>�&�̚Ό���l���[�m��p�ln����*H�U�����4)�4�D3�=e�˾h��S� 2����8�	^�����~!Z<��ő���aSo)�Aŋ�����
5����+P�6-r����yK��+�;���@�3~� �t�!^�m��Bܑ f���K�>B���9B,(9T�6[�)?��K^0Y!Zn��0Pl�C�h�`N�x�dEsm�������1��4�E%H-^�.�!?�pc{��}�#h���b�\[k�aMU1��>G�5� �V��OA �TBF�}kW���[S�S�K����!��y�^8�0�RiY!������`�II���F�J������X��sV+x�E���8=�=��d��1� F�u�
�"�'S�:���\��#�<����8� ���!g��}�FVOJȜ������|E��T8C��3qw��F���w�ߐb�߉�si[�^ƪq�F��-�s�&�ۚ��m)���R�wN�&�Q;N)���v��&=�Z�p������;�W���/�F0S�@�5v�a,㟛��O�x_'g��8�m�v�7��-)��Ϝ����
����ܧ��^��0�4�C �Voa�q����  �(��,I��
��0���z�~I��S���'�"=��1A?��$zf�!_j������O.>���"0��:�"#��ߕ	�/3I�S �I�o8�;�mlUs w�Q2�YFî�����҂N J$�
�e+�@f��"�H�q���^{L���"@���u�;MNcjbSY�'�S���=^H���n?`�h%ٽ+��B2�Mɩ��d���7V�o��	wc)ut��2G9K ����e��y��ی��zO)k�P`!
 H)�i�nqo�	?��O�0���ǌF�����ˍ���}8x������o��v������m�)�{�l]�A�d�suId�#��1LŤ������!�_
�;nsPPG\�2H_p�����Ey�kA�J��aI����Y����9$@����E�w5�C�Ƈ�E��(ZSRI�Y㐔#S eq\:RӰ�@:S��i_ E�	�� u�3�f�KT; J�M�"_	�D�����)��l����������CO����
���֟7�/�=��8Oc���R�󫬰�1e#��.uġ�5٢nkӐ,m�Z��O7nU���q��ɖ�_�p��Ŷ�D�6n��5�a����� �Ӌ�8��C>X�� ��E$��5}�hdX���;G� J҉�˖�i���s��3�^�Z�n�OEI�������eDٴ�k�2y<�ۛ\ͮ���s��I����%O}�������/R{���z�����aV�����\G�:�5W�T\�4���"2�]J�h���H��xp��!�x��_�V=��3�L�`�#ּ6y�����[�={���"�[�R8Q���fUe��HI��g��n͢�X�'��?&�H�5��m=��/	6���ј������Fըq�K�휍����k���oJ=aJy��J�s\��9��)���Z
���l
�"]�gƳ��#�g����[o��*i"k��H
h�+���*u��	AZ�`�j���!�M�!w�.��gĂMF���Z���i�ݻܭ c��;a�Ϧ@6Қ}f\�*�b�V\���m�g�u���Mb�����*c��)r��L����"�$�@ʯ���l
X#�9��V�G�� �Ò�c^p�x��w��;����� �	�d+�Fƥ�)��X�g�*�h��q���}\k�pi��!���`��'�����嵯W%Qɳy��Ϧ�:R�N�{=�o���.��/���!!�g�+˓3-��5^��}�H�n{�?��+���pz�{$�4�"a�V
�m�j��Z1�۲p�c��XjrZyBB�$�������bo�B۽/�#���b�ސL{��ز�
��מM���/���rK"0��,$@�t`md0x��F�q�v5�����;j� WWX�-�I�����3�:x�=�'5��A��w��pqSZ'N�"���ķ���U-�@ۧ�dSp���k).�_ü��32�~]������xAR�� \8������!"Ĵ)���d�4�����?bD2�i��#��
mn��K�SU��-,($4���Eiq»�î�l�(�i���rZFf�+yH�Dh
V=;p�O�`��Ov�Aw�g��¾q_':�6g7@lZ�r�)����!��&�����eX:Kn]���Z)Ay�qS����~'�u|���*��� �wQ�+�H��Z�6���#�q(�/����4�e�zx~>��q8u��k�4&�;�%�3b��y6��� r��7�`Kq���a*�vu�0fr�[
;�K�"j���z�U�a'k��&c������Ao������iw��:y�|��P�U���j���W�܁��� l  Cމ�A�F1YflM��}p���ee�db��<�]Ip��uӼ_��1�n]�g�YA�~Z[�w��r�d��.~�m�"a���W<#B�n�=��:C*�>J�1)��)��l����Tˬ�Wܢf3���%��'FFc_��!����P׵�)�}�������s[���X�Z��[e1�l�+��S���kj��r����;�������Ial�\8F���v+��\`+�1$�(�ԕ�?�I�4$M�{�AD�0�a�Mn
z���x5�[�9����M��E����J;N���H3� h
�=�_I����U��O�6<N��Sj�;n���fB��?��r�A� �Qq�SWU�j7�P:�A1�(
h}E�cy���w�#(E��=������)��;�a~�s��&F{��/��� ��!r}�v_�^ߔ�����JeeL�oLH�s�D3�C����B���la0�A�ϓ;�~���,��)p:fc��-߀"����C�%݃>��Uie�k��Y���Ґ�C����!�}eT�2�b�6n���Hn�ա#=�.B g/�"u<�?l>qm�%��N�4!;���h���2
�����sx7�3?�����{a�8R��;��w+>H�q�z�K�G��L���!���I:F��V	�*�j�	#�b�4a����2�]�v�K}x�d
n?��Y��Ͻ�7�V�y�dM=���H��P���l�_iF/L��$�&�2��?ы��[��i�B�'���>�}A��~z�����5F����T��^�.iΑn� ~��GMړ)��t6��GO�'��3S�y9���O��t#�A3�DI��n�Qs�����Y�Ԯ��_��2�~0��P�W����ԿBQ�=�4����W��8_GaM�>�����*�\CS3g�@LR���g���0ŵ~������5" K=��-ǻSs��8�/�y�O��N�`ğ��Y,
�c����O}��vw܈N,��r�I/����܆N߾������M%�s6��T�y	��s�бc���M���>ݒQ�_����F�r|���x]v�S�~k9�J.9�.gn匂�Z?�w�ƙ�eI��������+D#��������L�Q�#�9Y�X=�v��!E"W�n�c��G�\�.j+�0�#Z��e�ugȟk��E3 Mu&YV�p4md�[0G�4��a�1yH�e�q�b�C��F8nM��Z�T�A$�b
�&��[
v(0��5����hq��T�+xIZ�o��5W�H�1��>@�'S�4Y?q�v���e����%!�D���j�/t?��m\�z��ƚ,�˝�ME5�Hd�w6Y�޲'S /ik�ޛqtG7�0}Ю���V�e��>��r�+�|�*����8,��J�PI�]���P
4�"����`��ݮ�\��,鞚%�͗K���$g��Y��(Yf��_ܽq�o���<<��!Ik*�.��n����}���7q������K���!~ ��?�
	S>7p۝�e�ôj�NUs�
!�(���Ɇ�s<��v���g�"o�泏hZ�)�:;��)���h���T̋)�����t"|i�]��S�88C�wG����K��5��"*к懠�UY��_����q�O���g�#�\=�R��A8U��@_2�A�u�[S�����R#_XѠܝ�_�côd�1�w���|�<������f�A}O����[KW�q�_���n�$i;�`��/4��5�r'�����N#ӟ���D��jը���k���%b�5�C;B��1t�����ao� �'�7U�����WY�L�����:/5~W�rܘ7����+�Qt2CG2��)h��G�RB����v�>!=��"�}��GC��|�A�ċޑ���Bh��<@��A�����qg��\��L`�;��̄c�g|(�k�ܼ2�� �G���g\8��)���
�5Ѓ\��A��Jgk��������.�m��$'s�OB�3IIE1 k��G\LA��CV���6��aw��E�Z-�����F �m�I���]���P��U+g߄|����OvJm���dW�'Tb��,�"19Ǥ+���{�r�1A��[BkGE*S���G�6y�YY�#ϊ}O���S��E :u��@�#�|6Q������q�[�F��z��vĈ.�V~��{[݈r>i����*�%�.�,��k���)\	���D�/(�dڽ�UI6��� r�f^�ٱ<S\��|K���R�vζ�aFo0�N�b'�κ�5,�����q���H���/�e[%#�vJ�2��m�̬��v-A����.��V�\Ch�"�6����/<�aN`���7$�xK�x�)�"�Utt4tu�٥�u��Mj6!��R$2X�^ù�b��$Y�"h�(95�>�80M�ĥ�đ)���c�R_���7\��w�r&	3/5��+G`����t}�,8��Oƭ5����Y���Ȼ���l�W����\�@*���)���C��џ����d{���ު؜Fg$���bE�d9�g�x�o���iԝ5�1�<�@���	ѫ�q7Z]&�H����w��{K��ᾮ����c
0���� ��#�f�^/�T��bs���'[	�com��3{�Z�-��jū�ƻM�ȅA������� ��rvZۓ��~���ֈn����q4�*�O����B럹~NA���� �Z���_0+X]I��T�F�!������dt4(b���A�Ļ{�̋;�w�SA�li���_���j���-QW�����]������'��S���qǼ�̟�].Q����������ѵ,(X�X]���Q�p��uo��������@�r���%���Hq�; ��[��5�	I���?�4�^z�z����\��L�/<�i�<q�Ĳ>���`��t-��ҹ ��<�$��a�A�Dw����d����n��A��5~$;�26Έ��3�-_�����@�H��v�4���V2��������q(�J	d�x��t ��NA��}�3�,�.jG={L����������p�?*9ɁC@[H�>��.���Q<�DΌ���v���GS�������q��隑b�)E�,����Y O� ׁZ��z�ڲ�}��k�q���]M�L���r�f�2��_�~K&���\C8 ��l�8�"����0��B#�w�R��(U�+j��K�@
̪
��uޙiV�Җ�H *+eо������%�?�9��,�}\ �\�\�K����~�����#߂�
�Q�B9_zd��-��{K.?����F�Ú���Ǒ��k̄���.�\Fѯ�tn����R��=��S0��E���,�(����C�+�©��[�g�0����\|�9�&oN2O�a��z�����`��9Y��a|ŀ�N�0�OlH� Βj�̗��&�(�e�(����[Z��������Ƽ@�e�]K!�F�ɱh3��4zT�>���9��4M������F~�aN`v��7�z4Φ�����H$�+=Yt�� 
����Z��A$M�Y�G�������}d�~B�O�F�΍�=#����\�Hg�2BX�Vkv�X��,i�x���Ç���
�      �&   �  x��WMo7=�~�-��?�(��I� �P(��&@�[rwa��䘃Eo����p�����k��μy󆾺��ޅ�\X/g�66��jq�n�a�^Q�^�v}?_�����{�?�&T_�W��"��fc;���jR�Wɦ�vZ�V;�ō�A��U���ߞ7Mwd�q��'���&�r:ay���T����'C�����Nm��c$��yEwmh��]ݼ���Z'C���y���1&jt�'� �%�:$��ů*(������F�Smh�\ic(����ΉZ\��"�7yۓc�T[�Xn���c`f#�Z��'��.v]��p>�o����Nv!�'ylB"?�o��yQ-sz�(�y� �1�3�h�$Q+��P���F.��\��q���0�Bp�7��t��ǦD]o��.���i�LK�ZZ�B�
)�)����z�9p�+�"5<���c��8!.*�m��.�^s���b�����!�XG�sԻ�<�B��1ZL��ΐbF;4뎘d:�Rv7�zc�����k��ɣH ��4��Kd���!!���iI]Ww�k���]N�t�Ƞ��s� �AruB�qgH�b>-���[b��ǿ��S��D���Č�"���|�� n�RтcY�?�Ճ+�ͯ��r����?=��BP�W\�S��O|"�q�(�'�n�?�s�&��xS��)�ȏ���Ȟ���Y�
@V��rȟŊ3/lcH8EI��[������:��/�K,QS^�q�並G	�C#��E�� �$�*�[�!_[�$��B�qR[9\<K�⮕ޣ����[����δ��W�P��iP�V�eo��h-J���?j�##���	��F��8��RD5�����x���Wb��[��\eyj�����S���2���L����#����h���� ����^X#���w9���s~Q},I���܁��h�	����M�-�0�"6��UDw��AP6ݮqYշ��\�@�.�Hz4�N �I ��#��,�����/6�����a<y��8��P��h��-�#J9<�]im-_2"�=q�ί�Ot�>0��>�V�+�yʊg���v���<J��E=���԰���+a�n�˨gie��2�Ɏ#:�]�O���k\$�o9�b���w�&s�<����Ý�Da��w@f�"�b"7��}
��(����a�^<�}9��f? g�y      �&   x  x��V�n�6<�_��0K�h�=�N
,P��춧 -�Z.$�KJ�?ꡇbo{���q��	�S.E��Q|󆬊j�q<��ѝۿ�a�]������7��٩�4���^ן�'sr����fq�zc^���]ǚ�e_G͂f]�z����/�Nޝ����L:M˼VӖ�V�څ����[����O��kL89�=��)���^y�zm�bֱ`�mMa����_��/ں5{w�5B������d��m���h�h+�2�����Y��DnnnnnnnVVVVV���������s�9�����b`�U�[�[�U�U�U�U�U�U�U�U&"
p�,� K�%�`	���ok��-�[ �@V�����B�
�
Q*p+p+p%�\	�W�+���Jp%�R&m$)l��(�#)c�Ƥ�$�M6�)	))cipH���!�drl?���-���M#/R�+BB�q$�HHOf	S��k����$$#�4)�|Y�m��-~Q]P�O^5�6�&w� ���]�F�kl��9a(�>�v$��e�tk��]��?�w�}�|?t�Lb?�*]�p#�����v�xckן:=���Y՚)vTg�X����YE�Cc�<��_���(�V4S|��}{���>~���Ĉ���N�"�+I�	�H �	P����+�\��
�G ��"�b��X ���WxD��Y��eUnޖ�|q?6j����S�������x����(l\밃1װ����5��c��D�e��=�.�Ӻ���c9���x$�D�fo�C���?�߹N׃9�鸻����z�$y_�$���p�GkҾ�h.����u�՚�4_F�ˇ���Ɛ��,���Ű�O��qz'����thG�꾷����;G�e�1����!�G{CEcT��ט����%��q��t�nr�I������x�#�y�����U5����~��q��uO��@��'�9�z솔�tǘ�`����[L�ڟ	Fvt�D�D�0��6�x9��i<��Q_�q+��̊�X�q��!o�)]M�Qή;����&w4jh剺�QoB�XK�)�i�Cզ��UG��"��hkԚU9�^x8,��3)�8�����8j9Y^���z�\��B      �&   �  x����n1�g�)8��a�u�6ct(A�v2`�}P���.��6y�Lݲދ��|��[�:�ȏ?~�����߶�8��K�}+ys}q����,����2��rō�%�W��d}1YL��d���1<���/��#q.��)�H��T8%����
��$C��B}ښ(3�$Q2�9�c�K�3nFR�=~@�h�~G2z?�iP�
$Ϩ1�8N�p'I�F�|��Rƛ8'�}����U�dl�7Z'�� ��sz�)���j5�s����GͲ<=��vz�X���r�"8 �#��#�*��.�QR���E�r�٣k kA���H�����!S�X���B��8��s,(�g�=bh���]2H�z����#�$W�|k����#�㟁h����Ă�B0�N<���w�Ifp�o�9�	�v��3��_�=�d�ӥ���q�P�����64�%(6���M�Ĳ����>Zi��Em�!��<��G�Ȑ%�U�t�Br�w����Ĩ��F̨�0�&�m�Y�+�b�C6a���x��:'�0|k�qdT<0�o�իS��e�P�ߍ�z�}�B,�ꑭΫJ������.l��H��:�H��S�G�*�Z�G}�j�(�zS^^rJ/���Zx�o��I$�K���R��R�/�GܪP!#�u1i<������<��:      :&      x������ � �      �&     x��T�n1�O_�e��J�ZQ 5�a+���׸#>�(���e�������O'�R�:ޒ\������O�ڕ�r���vav?��}����e���Tݔc�������_M��lȩT���$�(�۟�Ґn���T1
�,��ldj�\:Z9O8}g��We�8M��YU!KE�Ny���W�2^�77�D>^�ƕ틕��^�ʅ����ͩ|/v|G� �>������~��k�"�^Uׂ�	r�5�w�K�VRE�=G�ّ�鳡�(E��{w}����@5OJ;/�pV�ZsP�b	E����8�N粘��YY�*�l���*dƯ�M=����78�H�z�R���F��(�8��
ʰ��s�'BW)Ab���i�E%,����]a��TVW�T�'�,S��2�6�/��.�c�Ă�QiUZ}�荭���|>c���>�=�-ߋ���l���ܮ���ܬ�LlC�H��-����X��1���J�H f�ꕉ�{h��Kk����
e��e�)�"Y�0Nn�Wo�=��[�T*�+1h��O����pN��/2���������m��������r�#�}R(@���Su�)&�Ƿm���W�?,�-s�";�^9�$�ʳ��Q(J�|�r��e�檒n�����F�@�*�
#���F�������� .5%xi���T=o�cԬ+�UZ�H�o����mK�o6�p�(#���	+#к�v'�
7��I�:)�H��nc�̡a-E�z�;���	I�ɓ@;����5xl����s��������      ;&      x������ � �      <&      x������ � �      =&      x������ � �      �&   �  x��T�n�P];_q?��
�t]Q�@��(��d��	�Ⱦc�R�7| �����8s�����"�=�9��/�V����^��>�Ac}{�����>]�ç�>�w����N��6i}��%�@I�cU�?���f��%���e�1Q+�g��u���W��ձ�i���7��^Zr����C+�X7j���t�x��%���dճ��=h�=�\�&��F�
��+�zi8L%�	�G� �) 2�5'��c���-;<>�N�a���j���ku�O�\�_�Gě�cl���������y�X J���B���6����gDm��.0���3�{Md/�j0� �X��`n6��5�5�N̸��NJ˕���L�A��k���O���7S�!��s���l�	bdxA��,�f*�9Xp���n�^}+T�h)�O$��f�%4�Z=&�� �I��8��`M�T�0в���MA��i"�h	��`�<^KѠ8��d�ڊ�-�p���$P� ���X8$
pΏ笺�*���a���Ep���b+c��2I4Q&0ݕ�6pi�z�%��I8�N��q��u��n��A�;��C.j�j���G�;����a��7Uat�9{��P�\�-����      �&     x���Aj�@E��)t�`��-%�&t0ʌ�(�g�S�ީ�6�\�n��ޗ�?Z-Wզ���)��!j银��K��h��X<�h����-�T��ռ��v�C#�&�7B� �|��ǈM�Z���q�,�p,r���!�o�Wi%�p�n`�Ff�O@GGb��;$��Aci��H
��9��l���d�,����/���֧�7�xB�R�-����7c�L�I�-��$��	�������Q����ߖ�ٟwM]�?���      ?&      x������ � �      >&      x������ � �      @&      x������ � �      �&      x��][oܸ�~���ƙ��b=m'��v��`d���@-��b�ɯ_�U���H5�݇�"��Qd�._}uwu}����?���������l�nw��x՗?�wr9������*�N�}5dv���]�� ���ow�7.�&��?�����TeS�7eNZ��Pv�0�SI޺���Wvcf�������˯ދf�����Ӱ��������u�W^��Q4]�'�[�u����ě�{>�i_���{��sS�tڜ�4�;��|_��H�h��TW���K�����Sɯо�UKfR��
ڣ}�}�.�F�}�׿��S�7?�ӹ+��~�7����\�͜������.,�o��s�7~��Ϫ�énk��������<���m�V��K5��a�	�ٹ.F����>�/�_E[��ݡ>�i&C�HO'k�},�ܺ��i�g�mwtm�}ݖ��h2���h�_���D�=�}u�;��v���g��۳7v}`���ٝ%޹���������P���]i���Y����&_F����;���;��L���bu/O$�� *��뺯`�^��#����.'�)?���@ŕh+7F��a$S ��F~�T�X���Z��$CLu:��W�/d0+h��m�l	x������H��1�'�ś�=TkK�<�[�ɪ>�?��բ/c}��8V�>�aZ�����ʚv��DB�<V��5}1Y>�v���:N-]o�ijr�T��ҕՁȨ>�+�䡰�_��h��(�g�rh_�cw싷�0'��>�c5|;WL w��:�}�\�d����E���Tݩ"۞l	qU�����=q>����P��0�� ������H؇�O7Y;�=*U����6T�P���o�~�t�����u�����ڝ:����s=�E�4џ�� ϡ���h�t�6�w��~�ų���a���^d�gA?$�e�P��*#��hj��c���[~�}�����������᳾���S3��S�V�է���e�S~�CruH�6D��ϣ�� ��m`�vG}3�/���#B9�>t��Dށ�5ڞH{`m�a{ݱ����E�;����:ְݦ9R��L����?�ߒ}Ȇ�8\(�o�:�wh�o�z8q#�*���!k؅�WW}��F�����l���k���/2!t-إ2�`��8�j�US��U�^�&W6b�=U�g��T`�2i*���J�� ��<9��*X�L�*jG��
�������~�ǩ)��SA�I�ܱ�߳� �VG�+Γx�:�|�h���5�s���(mT�����v�z�]I6+���@�Pi�D_-���P�}}���F�2�z�B�t͇�|/hd�G�7��T��t�
"�;qe]Z+�z�5���.��(td�T���d�Ԗ�0K|�%���x���<�!+���]�G�L`��r��2IE�P'�<��D�.�%hE�:�T3b��0ѧG>�j6����#�=	4]��5�Z���av�iW93�qi0��d�p/:��H���+�hD�i|��b�8B����R��w�8��\�f릙i�|�V̷��r��&�Z�����cJ����[)�M����\�t�����@�|T����~��^}���~�D�Z�=Q������O؀�2ewm5U�����s�֯uCWA~u�����o�U�{���.�r�����~�聏zz�g!('��u�O�=�!qC=�;0*�������u�Sw��P���~�s��>��Z��A�m��\nvU�M��d�կ��[y
�D�)�� �A]�{j��i{��K'�8�Qn�����k�}=�����JhVؔ�D�$z��
�_��}��
X�l�iGua�)����t#Y(2DA�b�U�lT,h����ԡE��~�߫?,.���9웻�p`e�٣�ވ\m�3���x�:o�ץ���ݾr�ۜ�[?q_�m�ؽ6tf~���a8N���횝�贫�
�� U���LC!��f��>ܢ	�{��
_9#:�E>?����H�����Wr�N���yT�d�`�&�!^P�"�#�`y|C7��5�/��L�;S���"���4W��覩N��Oj�{5�*5I����d9����*&�U���G/��]�a�I;��̜�d��m��A�\5�]q.i5[aP��M�'�]�giw]Wg��	=u���Qo)}鉿4�Xa���\W��ūp �����{�b�<�y���NE�9i�	���{��r�9s�?��-c�?SEa$�"�`qي�����t�Fs���.��:�Ns�z� ��hGRך���x?w۷��G�˺�>������E��6�]�|��oW������{
���wP�g��,�z�/M�pqyC�im�	 �5/�E���ƢȎ?�D�E�۵�H����M�)A����o��U9�eH>�]�+��[5ߢ��Qo�}Qa35 mQ	!M�a�����F�p��W���U����љ��*����.��|A�u�Nmֈ���~۾5;���FY-��5;�}쑗4����G54)$�.��^~�}�+�~����uЂ�{�#�(4L�|y��̴J��0B����̝���z����\e�}L\�������A��59��f�&�\�8;��sJB�v5���������B�IL ���c���8�O0L�6��l`�R�8Z�8�4�P�����t���\�S�	S�� -D�	v�3$�dH��+��~QKT�~�N��O��������z�R��U9Nd����n�XB�F<g�@��2�����kꪤ�:ls3�l$�E�R݅���n���$�ۼ˲�>��Tv�TSAP��C�A|Q�BБ�Q䯀-c ��v�,�c�wD�� 0˨�|�::���pQ@:]��XOǜLw{����d�[/;���v���ʦQ��t�^i�� �����U>�?�|��SXڏ����}�)Q?>���a�,��P����v~�V��.6Q�-䑦9�/�36��,-�M1Tz��d]�Lh35!��~������K�j���~���a�ZW����M�Ht����0��1�	G`-��hX�+�;���^�(��.;�X��\�F?�AQ~�2��J�{j(�.rX2��"�ye���\&y�/8�/XYMފM�[�d�&�v�X�xv_��8��6'�q�Av�Bz�ENۓ$��1�4: $�*��:5�(d�oZ]�u�� 0����}T�U����3�ˊ��6`?�>�}A���h�� �2$&ֿ`��ٛ�^P;Gީyy�?�.F�KòR$S#e�:ȗ�o(�� e辠�X2��u��b���<��Z�N�@4����t�6�51�Z��*Hm�t��)��(R���"G�1����"G��o�����J�b��*�͆��q�!�G�C��e>�I?pń�N�$|N1SD��IB�t������&�6�,-/�ï���7����<(g�A��F?V�6�j:j+���\��p�ިڎB<��?)��6�B�ǎ ������=9�([��a�qV�)Q������
M):f0�U�Ȝ}"8�C��3y�d!V�rZ�vд�&�޾� S��*�}������(�ЖZ1@b���~�xX/��#���>�4��q�<`�/�˹�H� �R�P�'�ݐi�+�Cd�F$�؝�^�}����+���J.ڨ+r�$����~q����'�9��!���ޢ�]F~<�N��a7��-�᭧���6'#B�ć���jt�������u��7j����(��������:�c�c�j�O���K�@�|r�V��=���5P�&�h��L��!��~zZB���\����F��l���xZ�����.�7J�Ş��x�Ԍ�a�՛�����󅷖�a��qĳ[��Hj�z�$��R���
�g��rV#� �U���Ͷ��2��9�t[9R�<<_�vL�H�	1�D��hC����W��x솑=a�:C�<�V�ۺ"&�r�eʥz��_����MO�/D�2@a�<���=�ΰ� ���7�s�%Cw�	&à��.~9�{�L���{�]����I    a�dV�!�ΒW=N4Ύf獑��$���tZ���"��_"!�%I��8,�V��-$L����(su��Hr���3�?'Kځ|X)���z`�.�|��y�;7�\m=��n�2���[�2+?�������]�9����L�����k,�I��M�5c��\�P���2?��J�&"�s��yC��4��gGdz���o&���{! ���o��ue�*"H^���4�!R7T���i�%y��������?�;1��Q�e!��Y2�@:nE�ݻr2�4`o߷w�m� ]�8W����SɑU�ƹ�����Q�
��.9�9"�2á��х��G�	����CЯ��4o�il~۲|}��[ �Q��=��=-�\I���$���R��b�i`����=M�ȇ-g��ج$ø�������p����&��Ə�!@Bv�u��"�A:��6�E�wmT\��I���!]�L�/��΀MG1�����	�^<~VN�1������h��Ҭ2A��K�d'���_S_q�e���kbst
պ�o}M	�JW]v��V��0`*���E�g�Ҍ��������;�^�*��l��}95���Tb��w�P���n
��kᓛAɰ�8�XdF]J��E��`��%=$,E=$"��G<"'���=~Z���X���'΄Pֹ<l\k���8� *���C�������Q%���+���BK��:d-,thI�K��T�h�D1������R��
%��zl����W�]s��Itl�gN�2������j����	��-l����40�S�/�r���r��*ǌ:�N�]��Ec0tϼ�¡7������(�v��%L̳�u��k�Y/���J��VG#���]&܇[c�k�\�HWMz�/%a�eP��Ί�x�8Z��{�x��Q�"W�_�+���<#X�+�iY8��\�Lx��'��1aF/��"�8%��3"D�	��貹<�/�|�L��:7>����Lw�C�E ���!��TԲ�/����V/���$�%ݏ0K9��H�t@䷳7+;<�i5#�cO(��W?K_����{���X�jmrr���ɔ[��0�`�"Ɋ��e���"�AR��\�z��T;�I��H����@���XҾ���B���'�G�+�g��c�+��ӻru�c�Y0H�W~�,n}�Z,��<�oEi-�6��^fM�����~��&�N�dMղݴ9����I�S5�N�8M���FC��}�St��{;L�x$�y�0%��X:x�	^���Hf���@��EM��=�r��pi��9��6���G�hdr�2�8�����M�Ng�p�3:uGO{#��a}�)������`���`��'�G�fLDg�^؞L��qP�aK�o�$�U��V������=
��	�(r����u~�w�TR_2� �ў� �f���+�W�e���Mpq��y��R��Ik`�����a
�ī&�Ї0�z �X5�l��n&'�O\5T��
���� y
�LF��p�
����._v kmի0s�)�����RR���N��%Ed����Nէ�=��XD�t?CB�ڏp��~������l�+�}�L6+eL�sjS�rM��6�\��j)	xh�G�j���k�����Bo"h�̫AE @%��tǺ�����(�T*�F|o�q31.d��b�[��7-F�o��0�A-�h�7R@^Wi����be%4�˗5$TB������n�JM�"Y1���ݵ��a�Ūąj��ą�n�J\� r��[����D\��=c6�c�*b�L��y�Xk.��e�a*��i"4���)�PC=�Ӑ<���4:(x{��V�*�:C+#��BL��qzmX��8cG�4Nt����0h����3a���F�/�D\��H�,����;��ّ�Rj�r͐�Hp4';�93;�XQ���^g��dAb��m���6�<̿H0T� 途n�LW �%�6ݺ0�����"����Ĝ炍�3����}+�5��.��L�d0*W�W#m�SāG�N�0�+5	��_��t%pSE[OWJVJb����ڇq/xA�
��߂��x�)/��xÒ-G��z>>��>����7��}�2�tUJW�3B���T:c�Zʙ�:-���0Џ��>U.Pg����xY��E������4U�a���;5n�Ș󛑭F��W#�f�����O:�5�O3���e�!���U���k�Z�<e
��O�k�y!�7��0����������}��F//_C3ǋ��s��SrD���w'o˴�@������P �9T 9)-�C3�^Á�%'͎��L�����sJ��a4;�:0zCU��>O@����+Q�XzH����AI�˛EM9� b"�0�I��z7���|��DQ���c@1��Y�D�ж���p=P5-�&H�������YzB�y���_״�SM�.��#U�A�]H��8U%~�cQ�	X��3I��3ds�Z���EЪ�p��n�r�_�qK&��u^"ן�7W�}|��k�F�2~�0��vva'gT�/�q����p���ỹ�2�v���8�#no���VX-.�7u�؀��C�i��t�p���q�L��y!�����(L-s�!��]%@9,��3�J	8	��EL�\����DJZ�l!OV�8��.L؀%Yb�o�F�x�B!�����u/�n'S|��#�g�%�x}���z��0adf:Y�o�A��%]樂6F��Ct	�X�"/�ߓ�͢ެS��t�ؑS�X�-rOs�i�7"���gIr�h�9Ѯ�`׉�N�0�K�K����(����P�q˜_W�q7�v[v�NU�g�"�����`������X��g�!uu.fM����ڵ;�sq{*�U���:��j֌��⮝�^�1���Z�"�B�ʤ:1_�ES��{H��!�5��@q����j��g00�ʕ�;i%�R�)�=2���T�����"	�L�o��h�9�����8E��:�D��ej$�=�����|	��^�t��Kdc3w�>�S�Nl��Q1���c�J��]4�$~��_۝�&�D��͢��먀,IRd���v���Xi��!�n��X��2�)Ԯ֋�w5��,*����S�!+x��'�5м�Qi��;0
Н���g�9p@t����}yLG)��P/��u�'��4�}�ZQT)+P��`��)�H��D�&I���;u�Y�����}|pKd��-r�a��b|���O�W@��g	��%'��-l#���]�X�s�r<���*��;*i�Bdu8.٭̿�
�h,*��#D���P��t�Z����s��x�S9>ܪ��p���7Y/<g���y�!�?hY1zJ���󥥑ї���rp�%-�|EYA5u��=3`E�q��&�Pa�<X8t3�6�3Ŏ�	�!V�˪��4�_�4��M�EĴho@Mǲ�T��	'׋j�>ܢ��{�1|s:�/n����������@�e�ǖ���y�-��8����\}*\�H�IU�2�I� �-���M��¦�qTK62%�f��B���^�1��S�G(���FI�(b�`�����`V�C{����ׁ�D�s��H-. �n�ۧ���j��Y�DhQ0Z��bc
�Vš\5X�{6V�'F�@D�K�b&��Lk����ۗ�Ny��9���`�U.2�,%JĿ�{T�F���eA4O�rIjR�>=�i�Kٲ�-�c��~���ҝQ��}(.�'+��/�J��$�7�;b��lɖ��˰-�qY��D�k����Yc0�m�ؚ�I� [ӝjТ,�B�q0�$�W�zFT���a��YY3�W,����U��_�tNKy�D-��$6�\����_�t��׻�./���<��~v})A��$8jv
P ��g��3�dq���o�.Xum�A�4c�dSm��C#�
�ʲ��)�S$cM����c��B��ʡ������㖳��9T	��L�@Rl�Ee����3�#��1� K  J��1a@îq��4��Cha����Q�$�B(�+��g;��b��At��u����n��^q��)8�$��E��E��蔦
2ߴ#19����ȴ+�<�3�.0�Z���"d
��Z���1���B�h�Ӱ��`+����J�$&��r�A��h�>�h����_Hl����Y��Ų��m�1�	+���$�m�t\�İUF���z��֨*^K������}����q3K�ߍq�]�6&�|�'$I��D�_�v�ŉJ�a&��c5*�Y������	a῭����q=P���or S�����b�VG�4_aK�j�{�}�s�����f����;�g��o��6��%z�S�~*��������ZN�����ĩJ��j���aQ��ZMcW=d,�����h�?he��7.D�c�p�I)~E�i�����Ī�13�,u0"{\d�Q��d�Qi����x��z>�Z�QϦ�\�1�	�'�q�[XjB�>�",�!��/򣨄C=�$:�2W�����b��/�Ĉ2+s8<-���/^�QX��˵�l�o1s���ϰY0���[���f��i��W���9�`=�o}]��0G�D����\,�5�A%�˯����&�O����:r��i�?�y˼���$�|{�|�YLB��bO��("���yf Ǣ����+p��=���KN@������l���8Ţ��ڴ`�9)��̈́�<�y�z�/_Y���|Fg 4,K��!˥����	���K��g�f�-����׆�����Kv�nJ�x]Q�PqB7�;�}��b���~{rd"��O�l�:h�:n@�\i�A�dq�pF�t�0���GS��PxhS�)��XoC33B�|�k�ߏa�(�BbB�`�H�	s�{���޷�h���[��3P�0��t5ꘃ^cV1��i�FE�i�`p�U�Ze��Ў�T*f��C:{@vD�����1�n��F�Z�n����yz�W�>]Ϝ��,�#mF���#���mE{5#j[b�V�pW_�����K��WΎ�^��&�y�*��!�C#,��P�-���WԔ8d�}=ѝ�i^Bk��`�6�%�xZN�I|S��^�Q4$q�����B��_�P<��19.lI��ϴ4k��\�C$+Zo�.�B�+� ��j��:t4��uR
���L�!�IN�������P(���&�f�xR�D��� �
-Be�	�]M�_'R��,>� �����^JpufouP����
�l�����[�ڐ��a����p�-�UƤS�2KrQI*��L$x�{��BY1͜��W�ua��S��fFw��Q�:�.␸>T��֫5���*�1�x�ڈA$"bA��X/˶�g�B�����G�M��{�:����-	nא<X�".�ֈ�9n%�1��g.g�s��c%�msB�-��x�vP5Y�j'�ՋS_���X�Ƅm��sc5��JH��R�T�0*%A���d	�SZXH�*��Y=fwdޙp�~a� ^Ge�����CGenX7[�_�i2cQ	t�(z�-n��oW�^P� �b��p�9����M��@Iq��w�/��	������A>�_8Q쨤��;t�+�������o�cvi9      p&      x������ � �      �&      x��\[o�:~v~Lp�b��G�I��b���8�@S��B��d��;^DY7�f�"�g���/�.)�DrWTM.��;�j!��IUK�%��oH=�v�}�lD�+.
V�2)Y!V�PG�5��~}�l���/0�=64c⚊,)���lϠ/�d�h��&F��%߄�I���bEM(|&��XQ�챱�)6N�	�۪T��n$O9oOIz��=�8
N��N?M�;�����e,Fn��P�9,#��=�����8H����K�<�5��J&I͏�2���M�e��^���nR���� i�kjRu#�+/��%�@���fd+���S�R���b���F)Hj���*b�Aq�C/��zl��yb�ʪ��_q����ef� Q�T��gG5�N�H*p��&�Qp��w�+���F��i���*�L��ܚJ4(vKɎ�]΁;���Y	GV���uBFn�kI?`�+��&�1�d�J��b�k�����/>;9�Z�}�j�����ӧ�|�����~��~Ѭ����4rO(�|sϫ��d[�2�4�QQg��d.M���'iўޔ.����Q<q���MJmSR�&�M���3h�La=�T��$����"�!�mC�֪Q�E8����L		�� �g�D�4�i���>2
�Fr�uʷ�:[_��iTc���Q���ə[e����`�G�=J�c�[�ӬD��X 47�+�U�����1�|uOQ3`��_��y�����s�l%�ei��lۉY:8z���L0���+�c�����ۗyt���W�(���a�q4���n9 ����
C�`��0X¾�ƛ��F�C:� ���k��3='�!�n�*|�6$�|%����N�v��:6fw����=.>f8o���`(3�Zs�We��i��i��z�T���Oi�SE�4�3���zB~؅x�h��{�3�f(+�O��)A�֕O�r�d۩!��Ͱ��`�p
L��d+e)��8�2�[ts�6�32�����"h�GJ�I"(J�����j�PC�p&[7��͈�A�9���c7rV^Ei��EA쉩�7P�F�/j$��?D.�`�;�<��L԰j����uA?�Dp*�`�=�@�����˅2?D�}a��|ݍƕ7Z'9���M��"9��0���JC{�*z����4��*h�(��hG�2И�Ѐ��4�Ⱦ�(�+W�����jhX���3hTJ�D�w�.ߣG���ʈ���`����w�nH�5�1Q�N�)DK+�q��D����yJ�9�(�Q�pB�m4�a�n�B��̄`�g��0y����q��lS$����/KΞ�����h�^KF�I&$.v������v��b�/��l�W�ڞC����,Y��F��I<�Fćvy^7j�I�-��Z�}�W��WBS�5�v?��lY(	��ȴ�Q��%ȫ�7t��$`&6f�ҀZ�����ʺ��k
L�^�t��)h�H�ѓ�!ܝ� ~��e9������Dq�N��-�����+9s�t�1|�i�E�.s��y��kx�4�j%<^N�Os��,�9|��f]:��"���jʆRM�k�,}�5nԒ�Z9��ͱ/6����~��:H����A�R��G|
����l.��e0���K�K�ƕj <�HkXI������fgX]���-��p�]66P�~Z�Ag��IeXO4FJ�NQ$D>��6O����W^7���j���y砟�lJ��b��ϧF󷆸�u��zD��'Ql��I{4~tW�ጩ �rz1�b�H�5)��0�!ග`Cvp@�ݭ���� ���`��<�!^�gq�k�#�QM�|'�X�7�jɵ!��;M�h;Q	Ih�D���y��:��E|4��}f�c`%+'��t��R�͡]�A���n��3Z��c����߸Jè��#{�N�\af�8�6�j	��m `�i�4���f�Z9و\�D�t���p�xvl&3�0\��Q��O��z7uyQy�/(C�q��D ��l��!�lS�6� [�(�0W�b��\-�)�������^�	�x!vզ�eb9�"��3)��`	�\aS���q]J��f04���T�Sz��d)��>@Q�\	:��2�)�rT�5"y�k�X���z:w��=;�I.�@b^��������灨�>�~��幭��m+>���E:GaZ�ˌt�´Y�g)=�/ex�8��z$���/�1�i�d[�J�k$����vH`����O�h]K?򦦈��l[��gؔL��wآ6)-���:�n`�R��˹gԒцE
���! ����xX'Bͬ������.3��?)�V��M?)������ݠ����Գ�X9ˁ��~����9ðh�� G�g+[w*��5�M�WU���.	�"KV~�/�D��e� 

gg��#�=�L�n35��Tn�-���YO���+Rh��F�2��@HX��g�4a4h��@���L�g8�>�+����w�S�LG�c�Q�N�_5�zb��l	���6���4�9�����9�#�VM�� �vReL餢�JE�"ꂱ�0����Pg�K�ʆ7��Ɖ�`oS1�!�R����i8�?����f�%�~����JW�=#�^f�c1�����%��{����;�*��b�!����Rb8�h�"L�)~��K�m��@}�PYے�/��C	1#3b*�E�t�������X�yF����XmATC�b�ۺ��2��N��@@�I��ӭ�n��
�n��z1�\٠�vD�C��A�(�w[:���|[����WW���Ռ��o �]��]DNCA"HXo�6���dRB-�/;]����*X�*�s.8��䮞��MmSX��p<��,-Ʒ��t.�1X�۫½\���T��!$�L1���=j�.��ag�NY�/s9�N�l>c�����LY6Y`�J`\��+�Q��+Yƫ�/5;�I�����Ĉ�m]p��C�̐T��嗴�zI���Cuh��:�G�{�r}h�ԽDI�ez$���d��N[�0J�*lXp��J �D��UwP�t����/�l���jXX-�������>�����e�q����;����d��iU����İw�q5�`��]'񰮹SN�b��)[�ޭ(����g�h6> �C��DGKrK�껜X���g���Ez�s?<������,���I�E(�no����N5=����n퐟1�}c~�h�t��9�2#�:5b7�9G��Ê�fKË�i0�7�ϸ�TN:��A_W���ZJxB�+;���	mYV��̏����{�������N���A�ꕨ*U��뫫��~Y��      �&      x��]K��ȑ>K����<��=�H6����]` ��bws�"�,VC����0cn�p�����A�m``uUDT����wMu��s���ԍ�~x�l�?�Cu���5�_���W]߽8�|u�.�w��}�]����᠉��5�u�����<]��)j��cuO� D#�>
�ñ=��}SM���Y)���}�1	���o^I�K;=t���fj�.ݬ��؝Z�ʸ���������ʒɁ�g��J�w$��^�an�|@�d��=�����nh�s���u���T��"D���T�x������	�Tr2�Q/	1�R��^|�wr��N��\�!�ϛ�:��x�s;��Tʗ�^�z����	i�w���K��j^��Y~S�j�]��~�)��3�����K��RԵ�T�|ޢF�ʱ�{���ç����]@,+��j�{�~��ob�H�._A}7]������r {����eaI��u�G�>���7O�e�����}=IY��]��]F[$�A�fl���u��ܩ*q����i�k����.]SOשV������:�ڌ�t|eϷ���|���������������^~�Y����O���ۿ|��͇����޿��x�x;���O��7�������ň����\&q�����^��`W��4��/�=�����8�}���F��cu?N���9��ľ���6�p��B{p��s^��zP��C'>n�����^ޜM+ϸ�xӛ�[���7��.��x�N�>�S#X��4��E���	/MT"�X���`��f9�á������_��v��ѽ�Qx�ԧ���_Pr�*B�^oF)��X	����s�W�S�*��j�:�5���px�"$�wymoj�z��D�Ҽ^�Ы�U0��x��,�B�����G�7���}[�-*��UQ�A|����`E��!4�N�	��]�1j@a����k+U��iV/r������m�+>=��(ԩN�]��%X�F��g�1���I~%T/!jl��8e�il�w�BO�ۀ!h����c<(MP��쎂��������H.��z2�c~�hP.i������V0�S[W�U	�^������P�M����ّ=��`9(���p=ׇ�0��A�J�����_������U��k�eA����T���V^,����%�bg����i�M:���x"@
���N��Ɔ;y���B�ֳ����NַỶ���N4k7�N3G����G�3�;Җ�����a��bK�n��4KW���"꼲T��ԁǟ%�R���~	u�V�<tM��Q���pd$��'ibh��������ɏ��;Y{�f)��h"pAg�:��l�)Dhz����;���!1E'M�'<b����T���z�A-ڵ��7{��NUs�ڗǾ��um����UX�,�d鲸�����7�^��7���{���c�5�;Z�L^�sX��^�d�U�q�cB;�9���(I��I8�Q앩"l�i�.��a=�����/�Vn)C��wI��ˏ�ޙ��|=���b��h��>�o�څcܜ����w+Dyaǋ�M��I$�EBVL����͇]ζ�1F���S�"��S{שU�֟1ɫ��>�k�nO]i���~�?�}�s.������~U��b�j�<n�ly���p��c�,g{����.+��<�=��r���]�����{��\~�� ׫�/7���3��Խ��A�=Hߵ|O.re�&Ke
k�~$��:\��u�Z�9j�j��?�'q��Suz�s|������	t�ć�/�H!��~ж��zj����
EL�/y�N��ލB��`��/,K�H�[<�[ξ�dB�ַ� 5���$�ݲ�*M� W��4���2�� ����WE�x����l�b���Y�������AZo>�}AgLuz*g��9a��1�X���8�≜�*Me���RtP(��e��w�� �T@�"P�o�SD-?ܢ|��{I�ލ��&��t�_Fw���=�A��΁�7�5�ƻ�A�(E�,6Q���bU�Sz��d�J���M��k������\��$��>�+o�h�9�"�ҏw]���T�?�d��=�BU< ��V��� VTNM��$�2�Ž�G\В$��s���6�2'�ԗ����5�j�O��n}#*r%p��_�o�3/����L�]�Vv��0C�����W�L<�i�W�AS������0�V�O�?�CH��<(��[�&����4
qC��GI,�P����`p>(�`/|Gj���x;�H��wo>�,F�������ۺ�}{��UX���ʨ?e�c1�z��x��vL���?��v!�V���a��W�<������O�pxݘÜ��fXC�=R�yC��ds�����ng��rA*���ةR�0�!mG���<qE�1Kg�}�ژ���1O\y����deP�,9�>�[��}a�en������p,��K�F�Z��E�W�M�*�N���! Q�Q�E�Z-�����6<j�U�𨩣i��8z�ITL^/)t�����[��]HYE���h1 ��� ����#R9�)@SK"M�Ҝ��3*�>�K�"M�?�r����P�1
K��+n�A����̵L�8��V^|]��Q1c��0�%� 9Vԏ?��ȣ���A7 %PW���y{{	>Wί2z��P˔(!���S�ti$����P���xb��L�J&C|���u�)��/�i{�3�:�k$ME+G��!���֓����2NX5�����}�gqP�BV��Y�"B^�҄œw��f�ߛ���R+�ve�HL�U.�|�$A����'������r��Q���]p�Q��I	��`s9.W��"*.��Ka��D�����R�,}�ĵ~�/��ϥ �/>��W��*^iU��QH��(߿�;h��_At�&�,b��=ģR!�`�����܍\��(�򏒙!�(�ٚ޿y��9��1�s�%3��Qk��r��Q*d�`y�K4���n�al�,(���I�aKN(�@Z�i�J�|���Q�"1��Z�O�x��<�S
c��8�B�����P� g����Pm����6�ԱB��$���n-��zt�4�SE�7q�ZXT^hqy�Fw����N�7\lD&h���P�:�;��+���K\� ��"�cE�����)�33bS�gf���)�4jx�,��*B��uG�K+�����i���Nָ�P*o�J�RA��5�	\,q�}�u;��v�����)*�S<n�H�1��ѷ���1R!�4�|��UPެ_�8e%M��+�f%����e���L�F�}�����3K�:3 ����e@Rg;zfnέf����f�]jaL�R 
:v6z��cO(Z��5���3��G._��kֲD�M��)SZU��TWu/+�����>jS�M�%8mټA"&�Pw��
��[(3�yw�/&	�z�R=�pL`��`��_n9��̬�	�I[�㳷_��G����3�J/�(^���ۡ����IxB6�)�K���� ���&�X�}���I(��q�yw�m7�2���e������L�9�a�L
?dV0�Qӂ��y�{�����f�;25̑����(��P���>i�Ќ�'��I	D�]��P/�\��GI`��̑m�ɛJg۪wx��za)��d8I�(Ȃ\�b;^��ڀ��jE���`�Ľw���P�J�ϥ�:�>r���0�E��JG0���5RHFX�\�4��^:���IHN�C3WT�ddTX6������ƀP� d��`��<�Q@k
&��8W! 0���h�R�rk����[(���������tMg4����*�_s'�%ִ�j,�_�c���1�-��;��rf][��[�]p�Е(CG��\�Ѵ������hQ����	F��mhب�nGc~�eǡ�j}�-���Gu;�Qt�FGڀc��x����)��R��e�������%+���NtbBe.u:�X��O��Y    Q��#<,�v|�+"_݋��ŗJZ	�7QM8̉~�`�@��1G*
ȏ��a�����08=���W��
.��u�P�B^����%����+&�C�������! ���w���t���K���6��ޫm�eHL�Ԋ�˘�^T�Ң�n������c�!+����6�p~�넺��W
O��8�+&١�������y���N���;��H6�_�d����d��	���|�"����\���=���"�F�@��N��*֧�藑�E$�k�%c0�֧b�I�4ϵ�� `�W�$�S+���ԟU�����F)<���;>��J4|�5�^
cX�w����>K���gĐ��0'��V��_�����0�Y�w׌!d���<����g4�I���ik��Y��hH"�h2{���Ch[�Y/��^p١n~����S���;���o�i���t�!',N����6(^fCcߤ��!o�@�H7�-p����v��;�H^��t__ZJAkI���5�Ύ�$��5��/xZ<&��a���~��K�%�<�И��Rĩp��f���ҥ�zPT�QEQ��Ա��� �2S�|ӯ�x�
"J�EtI�D�9��Ʒe�5&���2�a��4?��;�嶺T"���.�0/M5SrhaX*�@��@�<ETQ�i��j��5W�A�h�"m�=:�L���ۯjQ�"�Qf:���3���j�|�x���M�))�7r�xmG#C��^��;g�B�_m;��lɨQ߬I{~Ie�4�Ui�4>T\��Lk�R�R5��遼k��߅�)κ=�3zAU����W�M���d+��;�����_��qu���w-}}���~��"$�8��`y��h
��9N�9O@>�m�+��Ƕ
��Ir�k<�1�`��<�W��x���7��)��2g�Ku�h��?<�c�$5ʢKv�_��4;I�s�sa���s7�8��T;�⽨_NU>()�-��l!��
�������}��ҭ�����%�r%�G
�8U�u�Qj ��'�_���ŗ�:^�Z�@-y~y�5Af�@��\ �б-k���P��2rQ�v�l��%����p�B0aHѰ��� ��>��V&/V�?yq�&�����n8R�)$���\GK8�Cp����̧anf�խy��/��%Q"S��2����JVl*T��<Ŧ��JQl(@���ĺb�JL��� li9���U恲H�:�'�l��3>/���7���2ï�iy���E�ף\$�g�˃ƒ��B}�e�ġ�rFӪ���R�8�;���T��D��E\d��a�8/�Wt�!RT{�$�Y���H��Nm1�*��Y(���B��M7rm��'�Ezea��|�D�F���(Q�-�1Q�r)wxPt1����d��������N��ʭ�]R=��٣���oJ�TBhi���d!.ˑIi���d�5h�Ŝp�߮�V��\���E틍@�b܀�n�-m�6���iJ�Y���	�a�����K�z�U�%�B�}��m68Xb��Ў��W������Go����nM�EL=II���B�����>؁d�j��'_�/W��xohLc��ɱG~��x�[�j�n��,<�:�ILjF�B8Ć�w���0_��ڇ��C~N�<�-�OaF�����4ޘ�2��1#e�)�H~+T���	��'pA64�;�coa��y'��{�HY�d��rU�"p�ջ��j���㲅��)ϻ]��ZKyД&�L��/�2mw/A���Tj�Yhи�pQS4�󤕺2�Ql~T^�ɍ"�u�0Y���{u)	0� 7�u����
Mr|�V9��P��З�����N�x�V�9{���B�^�+�Y��G.k�������ʎ*���k�����ov�	�)Ue֐Y�.���*x�����2�J��)K��A�\���(�K~�K.{&��ğI`��g���G���G�H�q����[X�yuq�"�\��Y�NE3��	OV&~�8�Q^Z�]CcHo������7XW�9:H�- �ե)���r�P�0p\˂�H3����8���s�!�8����!���!��s�Sh9�;��3�C�9�A�$�K�O8#l�z���9�����b��M���~��C.�0VSj2���}z�N<�ܕG�;��"0��)0��)0Y��c �}T~H���R�cڋ�S̃|}9���%Dw����2YX��rީ_��R¹�{�QiR�&��a��;5{0[2��&'v5.EC�"�4�2�C���r��.�B}�ƍ.�e�c�ߛ�4���p��ƅ�`0�5K�l��?�`϶�v�ҕ������&T�.�H0�vvi�;&��J��
�+���JΟ%�os��� Љ�3��.�l��k�+R�����_��͏�<�{S�?�+:&�f�~$ѹ4�a�հ��20g�1��K�n4����?���+���=���ꜗ�,^����8�r^xC�zk��|Cfƺk��y�"ц������j	�(�2qu�
��5w����
œd��o,E��iι�p�ZO����=+nL��f�0�dqO��]W'~�f,z��nU(:p$�㗑��`�h.���H1bJ���"�t#�4��0i��a�$��4�- JF��)I<�bb'EwM�B���(�4]Zk
���\W7��͍Tg���ۨ/E��r8O�62�*_�m�,u&��U8�	=�"�S�������4F�T	څ�6��?�!�×���"���F0�n,���J��P�'���OEA�����Eh�|��R�L�W��7��pA��dp�t:���%���-T�	r��z�f�Sd�5��i��( ��+wP�srgH�]	X%i�/BU!�Bc�eB�����5Cu�Z��x�4w�p�cGտ���� �R�}8^�ė�M�>=��2�{M`3�OpYčK^��<���~��c�k<nH�E�R���gI�VC����/�}n7��Ki�}oY���D3��Z�ADnu(�v��L��~/ѡMa�\�ek���6f�bRmXF Х�̭*,_��\U�P6\��VF��R�-�p��"�W�=SP�ᥙ/��������eH	F㬌"�_���^��.�%Fl}�=HW��C�@2�jȥM�r$�M���s� ����eW�D�.��',K�� M�Y�Y�RW��T͓�6o7/T�rY'4�Ch�ٮ�i��^��f[9��o��W���?�o�~p�_�.|����d}y���$�Zn�2��Kc���EX���>�>l�&/�n��L7	�è��F�����sDykqrD.ՙ�Uζ ��jNx�{�j/X+�A�Ra 5}P����7T�KK�������6�a�9�-��iS��M0;7�g�S�-ߡ���K���×|��0���=���R�̗�W�U�r6�r��y��x?ف��]� ��jYx��\��ce����uclvm�j$�ٸ�;Ivd^X!:���7QЉE�G�vf���0�8_���Mi@E�`�M�S;̫�e?�U;����NH������5�_�J�Yt�ԝK���wo>�V��Ϋ�Jodc.:T_gY ��B��)��O؇ꠙ�ט[�N�M�_80��,P�b�f9����&79t�n��85�q/CE�D�o%�
�Y4N��� �}�
��F��a0�9!���*�X="'���w�#bϺ���\�8"R��5�ƙa�	��l`x>�(�rp��s��۱f
Kj�P
PY8�"d�|t/�t�q�V�&�a&��:W��_��^��\BaJ�X��3j2��$J��3/V�����u��V�ipJCp�W��j�&�
\$c�Q	r��?����J��H��K����U�D9��_�|ݛ8�A��.�u����YݗUS��|��N1���У�f4��8�19Ǒ��ۅ+M��u��=n�ى����T�U�@}8)F,~(͈% J5��^+���YG�'I3�X��#&{������8�X&���چS]�#d���k��'7�� <	  0y���<��}9�+��nJbK�QU���*����T�UT�Pg��m(�L[Eb�kW�Lko��鴅�Fy]��1�1(�F=���0eӉ�V�v_�t�brW$X��+���pU&��AO��F�RήL�����Wpdt�W��M�,���u�9����9��g�b	3���K�R����y��{xo6�!zoB��!���������s�����Q�s���ʏ]�I٠O���m�[���r$@-z�ѩ7�_�(��^Pz�]=����t��M-�t��N;ٶG�ic���4�UH�j~�**SۡN��F�������X>�]RB�2�eF^�a�@�޴�~Z�xX=�J-���|�q�A�Tf�+S�4��H2��� E�/�]���%��,����9u��۠��JwO�jL�T(�Ӝ��V�}]f��#�Ҫm� �Z�3�����!�$*KUyFJ]��*JJ�����9�ՏWa��c(�~=�����kt����gIq�ZNRX�B�����X�BY+�cȨ>�����\�@-�'I)��/��Ț$*F�=�ԍ'4қ-����VD��s����w�y����wq⥉p#�~�����@TZV���FۯbJ�O�ܷf���H��l?l�	���z=g7,̈�UCg!ǭ%A~�m-������l 2�ѝ��S��Yu�h��惂�Zu�yw������_:x��=��
�`jW� ��0O�O	9g�Hsɋ�A܀�($ n"�N�q�qc����H�em���/e�nS)=��T�ZJf��eI4��w�2�Ѕ���&jV2� �ĩvC����ؠj7e6��i�i��@�j7e���M��9�1�R�⃾�$ۀ��cu/a��j�/Ε�.n��m��)���`�ʀ��3e��{�����ϓ�c��H��%Dٙ�LfhS�~h�ڡ�Q�!��9��uq`�ƢH(�8OJ�i527�|��f���_�m���'<ם�;��(B��6���xg���R2q�	�#�T�ƫK*5MZp��i�[
N�U���:�l-����(��^�<����6���*(]��Xe�'����7K2�]�$�ګ��3�-�J�dB`�ZzfW�4K���*8��(�љ�j\���-�d�l��D5[-)Q��J�մO)k�0R�VK��r|�m�O�[+����r�:\t��:\h���X�UEJoO<@p0�~����^?�_^֛���'�Eܦ-~;��
��8��[o;�j!W�����g���{�������Vn�c��4��k��$�"4�OK)��+|���\�����9V�)5�L!����K���Z��z���;.����7��y�2�/+ö=	ã���+�BZu�����!5�T�*���aB���U׾{�&�
9�V��+�¹�-���T�N�>ܞ:�v�����e>s3�]g�*I�Y�p�Hy��ʂ a���N?�n�(��U�̽���Nd���t���c�u�z�Kvw�-��x��Yfx������w:�|�t:��|��V�ޢІ�QP�P�̮s$ޠt�H����� }��0��LO�Pa�e��5��A�'f����ʴr�<�<-N�����3d�@�"����X��!���/sA\N�n��o-G������<�R�,�z#J�@�,N�ok_ �(ʷG_�5������H#|���������@ɉg��
���hݠLm�R`%���csb3����������4S�����d�\���X@!M(��o�-��:�`�H夲sءLv?����G�f�!�a�=C����O3�y�Q;�9�_g0b�|kl��ݭ����ތ<�G��뛾��eI��kN��PHk�7���-��{�DH���o��͵�u�Xru�ރ�B�ESB~rZ<���V<��&��y�9��1�f_�6#��[Bi8O�Om�}�J���Bm�F�dSr;6E�S/V�:�i"k���Z�[�&�Lg�.`:7t����˗3����>�x�����.]2kx�٠7�rM
?������z���a�)|�����icMaߴ���o_�&0@��@z��;V.���yK��,>�}�A�j)7��J�r����Ql,�*[��Qv���z�b��$*�n��[�E��ځ���#� o�VG�)Z�kC�Q$l��xӳ�/�:� �e�u@���+��
E	z��(��C���CɆ0�0�rS� 0���b^I?�HS_/m����zui\�+���o	E����f����Yy'��p��:�sS�p9�g�x��j0[���y��qO��;�C臯�?��
��      q&      x������ � �      r&   �  x��ZQo�8~����}X�#[�
(����J�q�ԧ$�9:����H!v��7Hl��|3�go�]�#�y8K�"�y8�\rD�\
�����hBd˻�4$�CR����n3x�P|�*v$�j��x���y������eAc�#�p1���K����k�"A�3���!�r}���? �D�C��צ!�^�7F��>g	��?g �d���qFAp!`�- �z�3�8��S��t�pPC�����~5�̃p���X�z�S��&����/� .&�}٘�h𡟍i������q�Q厌$.�it���h�_�.�u���^�S��귟���Wd3E��C$L���"f������W��r�1��.�EK�)���}b����Ͳ,�4��8Y�o�[����� 7�w���'��?��h���q���P���.�os���M/���sG��N�?g��bX��7;�n��a�Q�R��U7��{���ck*2�~�q���>���:�ߡ/#���7�u����(OE�I�;����q�`�p\�S�%���޴kTuDy
!�����"H��q�{h����x'\.D�)=��Vy�	�C
� �.�|��k�3K?^+�M�`M�S\o�(�	��BD=���JbX)-b�㏟$Se�ce�:�z�����%;��L�=�'ߚs���Q*)�����%�CT��K~@�3�mv�H�t	j�Z�L��W�t�%�*R5��0��Uo^qZ=�
��b��E��l�b�8Ĉ��5���0�[�Z��[A���ѠVC��jc��N��)�E�iT8�1~��aB�cA�1�\JH]<������������^�Yj�C�-'���/�.o�n�ʥ����bgJ�:�R3|&mw.e��/�j�o��T���V�5����eس�`��g���VO���ݥd�ӭ��-J{o���)�:�������ޘR�4{�#ͱ"���䛍j.}b!�������
�L*�8�+M���NY��؛3(=�e<�{F����G�<�R$ݒ��^{��$�џ�M��gJJj�W"�"�)�G��f<ο6��ף�r�$S>���� �/��cT$;��3�Sa��\��r՗�Y���Ņ+��VD�#����=��]Jd���WM�p.�v���`�}���W!�/�k֟~cv�r#�x�:�-��*���b�7�Wa�*t��:,��,"�s�'��ӭӳ.i�z�;�]�r�&�>��~���`��C�U�{�����yk�p:m[,%�'%�$�9�30��p���$�z�aqԕ���=�z6�ia��l ]�*M��m�� r��-�!nC��^������xVF���ԕ�^��
�"i�"f�����p<_�f�e5���x�C;����J+m��u���p��N_i��޺��"}*�T�8����Ȭ?W��U���� ߼��5U{I�L�M�Y���p��[���ڑ��n��^Ĩ��ŭ1����_�-���*4?h���U�	n��a�ܓP<>�0�MO-�@��[�.
I��U�ߟݛ����[�h��{���s�%�v��Rܪ�]���Biu�����p��"]����������H�����h�<��@�~�����e�n16�x+�������S_�,F��!�G�Gwww���t      �&      x��}�n串���Shyz�{�>���vU�L��׮*`���RC�ʖ2�>��G�e/zqѻ�0�b�?I�D�A2Hy�]�NId�~����6���>����m޳�>��Tv��>�������6ے�a�g%i6����9f+������Ɏ��2���>+��n�����އ�Q���o�2�Es�������7'�?����4y]�0�oƍ1�:�w�A�v�k����qWmIY�7�洫��-i�U�^fǬ9�Y�~��w�5k������/�=�rʙD�c��t��E�>}�z�T�c�Tg_�l,�}�+���x uv,��F�ӻ}����uQm>T�ǚX|����5������]M�E�	�pڑ�W�/��D��#<��� =�v��w���&A�d�pa�ʫ2�Is��N�X�}m���l�+�ӊ>���i����Co��$����.>^�\|���V���CY��xK� &�=yfwK�?�~�ٮ�"*�&������W�a�5=�=���}���.���g��h�w�U��rN��	;>=5*�����l�-�:i^Q��X1�����h�#�uxmJ��5(5z�����ڑc]�<1D���ݛ!W�f��'R�d_m.j���Dاl�"mHKb����_t5ْ�(L'Q]���K��/{�9j����a�i�-}䩏Y���}��x$cl�f������|A�=5B�BxN��C�/�F$�K>'�7-�E9ܰ�h�F�H{�7$���_��J�=�H;�{��]w;9ۯ���E����-�d�����o�]D�u�ʧ��w���F��+��X[	$�����O�I&��/Fi8��R��yi�cpXL�%V�>��f-W��G�W����Jt��S%��6߽�n�bUkt�.M����6�6F�K̗�R���~l_
i��}����ǌ�D���ވ���>��g�Y���[�w'v�Rg����%�mh/��X<��v`�05sq��<��D���4
����!��.�czws�0�cț�3�3U�z�.�LF!�ό.'��d�B�\5�!v����H��jFd�d+8)���<5��R���%wuu(=��wU]���p��5<-��ʚ��@#�M\�)�E^f���.�'�x&��D|-s '�a��idt�������<33�q��l��hߤ����CݰKbϻ�}���!����O;�";���Rf,v)i�R��4�:�
	��:�_�%�aKuB
3>xV[�O�u�V*���e��7������H�jq��
)�5˛�7�o�||lH�̩Hc�E�>�9B	�6��*���S�"���dQ�*�.IN]�Hi&/���`�;!H�I�]�P'�$\<g婽���ŗ�W��]���Ȟd�"��v`����-� Gbp9r�C��w���[��|u��x�~X^O����l��²(�zk�l�f�S��`�9��A��r
Z_���˨�b�N��v�A�������˦���� �ao���cg>,�S���5맔^U�9�EW'A��^�'tyNo!P� nUt�I��'��\x�EQ�����#<L��F�8���.��x�8%��-�vU��|�c����d�W�J��k���Tg�gv�JsYh>�;�`��^u�g�?trT>Vԉ�?�N1�%4}b$����f����;߃��IX%] ��l�_�8�L�o�TǪ�z�� ��@r����+�F$8y���W�=�榛����S ���/�J����W��M$q�d@��D�f���N<�HG�^�$҃ue~���,?��6퓪�6MG0Ks :(~�$J�uD��=�ˠޗ���A��ʐO0���k�}��N.��.�Qv�N'{��22F�v�U�`ebV�����Tz�af�;�c	�8E�廽��RAr8��܋&�eo��܄��_6�T�J�H*"��+ _�/�۟���=�{A����݇��_�n�ٶ��o��$u�'�H��Q���)��)#�0:f5}�B~�����M�Q:�R�M܊�i(�q�yN.Dx%<4�Θ�@�a�t7��H)��n/����hPU��TT���C1r�1TEz�B���*j`�x����>���kV�I�h>0�
�]���T +�R��%H��n�Z�|�l�ċ���C�`��&Xp���M��h4�kN�J�>}s{�W��#Ӯ��^�즰g�	�'�^/M�Zj�����#=0J�m8�v��:ZA��B�0��m�}�̭��9[���Z��'������7L�*=���U�
b�A�0���v�����n�%��,�U��,�Q*"������@vE��S��U5���h��D5�L �x��]=�e�W�P��8�ڮ��#��u�2���U��}f�Z��I�,�{���OF�
�rO�]���Rm���'�==���ɘ���=��`��w�֚G�˶�J�w��
R]�v�	Q�Bwp��)�}^f��<m���4�J�1,IS�z:*j�<����!6�7����.��n6B0@j��c l���[�È+G��{��Q��c\�!�R�	�YtcMI�c">����f�ٜ���@�a��Sl8�T^6�dA�?Ou�-�J�̔^0�o ��J�0��z�\�YC҇�d���V��i�$�Oo0"^��0��y�`�(�&�˃�Q�y}��2m��W��/^m�8zE�af)��H�0,��tѲ:ޞ�4߮&ٗ��j^1�ÙZ��̆u˖F��-	҈m<۰w0�M��sb�������T��T~c�s�-�1�4� �o,5�{O�br��˹��`sݤ�/z�@%I0����R��l;Od-�[×�dA3�; ��V� [�,?h�Ocs��%R��ZO�T�&�����mi��!�ʖځ����OF}"�B�ƍ�ͻ�e�IgaU���Nx�w��uЎ���j�)���2g��Q�L��K�)�%.L�ϭ̀ma�ͼt���d�q��g��p��Cٽ?�/��{{��u�s%�}�3J��:{�Ñ,��)#��0edc:���S��~���b��N�13z,Kۑ/{��e�#
)3��E�#I�����O��o>�`g%�慬%<D>�f^���!?'r�u|0�!�z��'����H����h�7(�V�y4z�˯�#I�?r�+)��@$`N�����'!$c�K��c_(e�$(�1�@����R����c�ӆ;I���j84&�Y
� p��H�e��#g3+0��7o?Պ!lz��a���'�	8��(� ��xh�T�+���7w��0~����ə��_�����<y���Z4��J�qc#=�tI�Φ`@՚�7n���"hޒ�"�jV{k��I�\O�ֿ�:&⷇hH�s��'#��;:V½|��q�}La��%G��5 G��a�rg��U�gX�H�S`
�4R6p��)�X�<A�0��צ)�%^Q�վ`�̜�x:��2-�9���)#T�$�4���tڳ�RR9�ǣ��	3:����ɓL�OCR��pŻbm�"n헵�fi��/��ɳ%fp t��s�B �e%i�=�Re���U
���Y�I��B�թ��~p��c._5F��l6m^�2㥽��X�8y@$i��j�k���b�{i����/]����� �3�1#I�9��G�
���@z�1*<p��}I�F�j��"�Y�ń�k�$� �.�_M�rU�
*���R���(EV�Wͮb��\�Vb+<�5H4�@?�����.3tX]Z�π�9�jŀ��� �n 5�S���ǌޘ���s�0��K�"����5h�{j$f�"�o[�dm�w�����c4�3��ﻕ2(mǧ>ZO���u�1�"�{�B��� ��>��Y^I}�F&2a���c�i���"�N��������x1=n�ɧ��}�?����jHg��j#��nI�k·�&�Oٖ�{PS�e�At��\ I��t�"b��lD�T܂�Q�9��9;�����[4`�PJhb7�n/3��0PN|<��lфk[��6 ذ��"IE�Y�`��(q,�`����]�0�0}�8�N��O�j�i"e    �L��]���A�R"͵|�I�3�<�=% ��,$�����G�L�ɼp��>1����V� `o�] ��6��z�$;@�Vv�N�rJ)B�b��^���{��!���(��=r�Y2$�L���:S�]v�U�P>Z|���9�������2y������{*�h��N&�e���;M�">A)��;x��%�3���x��5��Dj�u~�����1�^�8���~~�7��S�p�QsZ�P���c�YĬ��z��H�兑�(>>6�~�H��V`�!�G���jcu�'^�V,RtI��8����)H�7Wh=*6��:U�06T�b+3{_��6�lq�� �P���z���\!�ǽ�z&t�|s{c���
H�T=� ��q�l"�_m����<g�,Ʊ��f	��.���I���'Nj�l��n����"{[��&���9X7րn��������97;�0ڌg�ew��&z^e���kO	(�5P�i���g��⏉\�@D�n�S��S>\�&��?�C�	�I\Uг�"�MF��d�j�������:Z��	W5nPfT'�D8讀y�%�j[����/��0�`�i�?��(�p0A��� ��QiP�^ϗ�v=t�)}U����=�=�^+=4��ϒ�`X��ܜ����<���c�SC�oD�Z�!~u�F�'�#�g�Y�K�o�����{��i��[�������o�=S,=�0�$���2:�{��	\��+;okTr\�I��cG���뢉���$��tY�fpPr`�O9m�r����4�N�g
��\fڗ��-Pm-��ߓ����5_�&Hǲ�&
�[�h���ZB�B�i��}���͌f�I������j����}!e*�x�n"$��#%��O��-�W��w��o&nv�o*��eW6�����k�����38;�̬���6�{�y,q<�l�O�	�%Ļ��5V˼�����Bv��_�:H��>ꠣ��5�E�����4��7�|n����ç�#ʳ�eN�Z'�d���kog�^Q'j��G�]��������Wp��6�lfX*G�P)��ϼ!��,�!?�%|e_xo�5�rT5ɖCM-�y�
L�k��Az�����ן�f1�X(lt���m�KzKD4�s�t�m;3|��8���8�F����TP$�qr�����5�KY���i�����[��r:=��r��@��q�W#�8d0�"6�bH���D�S^��Jr�� 2��@N c��-��ɧ@��U#�f5��t.�h�j!�P2{�!b&��ӕ���:��SL1��6�E~"�q�<�q
�:_A/�?P�u4p*�.�BQa�<;����3)7-�i��rO�֒# ��qru���g�m�K��O|sF#�ZX��j���c����!��D��� ���F{��6�:���L޼�X�:5X�G]I��J*/�:.�4���5��^!)�qF�K�%�H]�}����z&�*G��k��(�7[�Og�rW 3|A�>?�"[-��+��"3�Ɣ�a���1;�f��)6
��Z�U`T� ~�;|�N1��V5�ϲH,UשS��#k��KN]���9ʈ���+)%��1��膒Q��Fxk�xO�'�+������ \,;!C�N��GA�_pY����,���U��bo��Iz�:���	@��((�R��RЛ��������\�&Jk��
H�T���g�����:T�c-جI�7�Uf�J�ŨJ?�]P�f�rX���c ��NX�p�/Z�-_]Ű��S��mּ���C6�P%*5KK�����GX��)|���i�� �����'v����-|N�Ir�.tO�t�P��\ԉ�1>���a�>)2*��} d�n��t$�R?g�2g>`
�Z��<"w�c���g0���=���,߁#s�Fc�y���A���q�ݩ���Y{�H��e�!�(e�ɬ�}p�{΀����O�u�q�bL�]��\3����q�a<��nL�N� ���UPgN�+d�i���k��:����G�3PQ#l�3�O��z�A�A��tf��f+z�ӫ��9�u�2*Ţ���A!�f#/�B�Z�T���m�2�޻b���w�YaĆ=���౯~��1�<l��^�� !��+�$ aJZ��cc��Ovף���I|��׮G�Y�3?�پ鞆Q&�[��tSڊ�K�*�&���^.p"�ϾϲCЉ�!zZm΋�*r5FvA��;M�łYWa�K��T�����h�(�����
�L�W�]����iܿ�A�dչ�t��eD���{F�e�{;�������ΉӁ8b>��Kt+<��!��ʋ���i�Qi��WfMٷ랏�Lj~�R�~�םP�dx+
���,gt)��ex� �W�'��Y{��E�Jt	�w���R�.ɒ}G�Sy0l�:���1Fﵵ\���%�}��\����u!R *�FG�0F)F'�L��'������Bw�c��8�ǯx��v�ᤞ���,�uI�lwH�KՆ�Qtk��A�t����P��SW��k�40G0�8BQaC@` ^s�n>����
�3]�YM~ɀu���?X�J�I.�a4
�CpC4iX�!Siӆg���/�����q�	$�$�B��"?���[�U��+����MKaN�>�0�Z$���@�L��/��v�nýK�}_Wm���=��t=% �p�R�L���@�L,��v7\��']��X����`��&}H�L?��~'�%�����J�����j��\T��=�T��+DpE�],�h7�,>tO����M^�^��xt��y����v�|��0�-c@ᓙ�����>�S��㩏x�Hv�H���Y�x-o����r��/R�8F�Zǡ�JF#�]�lg��M ot;H����#�}vB�N�y�Jڇ^��t/@҇}���M���`?�hA@��f�5.�Z�Ȣ�D|$��C�e�<��D����Z�רf���bJ;+_�g�(b��F��O9���B.�j���z���d�TA/ �s�=��,/�/��AY��n�����٨1EH�f^���ZcD�&A��p�Y%.tI��D��bO~�q�y��Wè�$˙�U��8�\�9cu�л�?����;{6�m���B)RQ$�\��#Ρ�*��v���z��}��\�j���p����7:�k��p���������MN_[H�C �V�xk��IK�����+M�>R	Tv����) �`�y��S9'�5'�Kf#+��!}�n��2瞫�NO��s�7�02B��d��P����G5�#W-6-E�]/����|�Q�^����>���v��`+�hjYH�)�!|��|6L�$�#p0K�S�,��,���#�#�˻�n�f�^��f�ޖH;��Q;�X��������1J�q�A��i�����R%�7˫�E�'�&��-R�1���R ��r�B�U�v&��j��X1�@�M�fS��e`��6H���6��D�YS��y��f�Q�ms����`bO�t�f��E�Og�ߒcƪ�=	� ?����J��e��]|�!��m�;�F���R�C*���[�M�,����m%�y{Vf�X���D�z�C:�1�36],�b�:J�
<�ݔ�<����eId1+q��3�}I+�	�D�	��mJ�9F)�߭��MK/�t�;�H�IL����r��98+�ǪK�ȟ"��Pt&Z�a�X�G�NdcE��A��6qq�,|��P���u���$�����}S���kƊw������%P����ʎ!���!��=>A?��_�`8���T������S����kf�ץfq�<��*�+�i뢛lB�W	s�I��@'�����ofG�1@����MZC4��
N%+���&��d��d8�P���
2���Cł���.�]�O����&����P����OF��:\�z�����Ǭ&����<��-����(��wJ�'�Ø�1F�Uk�P���    )�**����HLWJ���܇�±,d�p����G*i��:�c�������&����Uar×޴�Asw����D�$�ی��duA��F=�k��h�Q�����Q�h!uw$R��+	]1M�+=��r��,{�`�5l�����m֮3$gX��0u��߲Y%�|&7� �����Z���Q3��&,pOR�M'����-�T�%�M&�w��T���%�Ч8�M��@sx���5�-&'�xϞ��|������2;�P���}�p�!:���u������0q>6Ԑ����\�mf���5��8�/� �(>\��D��O
mf���e#uJԜ�U��?TϬ/,�SӖ�[k���ƃ)����&���K���hTQ�~s�d/N��u��7פ�������F�ZKrv%)_$]ONM�7ݵ���� 		�C)���	�Athg����VJ=�;��z�/ј�ħ��dI;�4��<�V�b ��_���&��Q��IW��P X���y�F�9�����1�Jg��l��X���{�JuyV��K�f����޲#O-��\�Yc�-��H�5�2F2���F���Y(�$�դ#�� ��f�����_���ĺ����\��gQ�n磘Ӈ�g	5�67W-<��-�� 5�i��݁�+����P���*j"�޻�س��y'K�X�Tu��XA�מ��-��i44g�H�7H�n�ى$��a��;�>\��.�.˺��H�:f�v ��D�ى@���!:^�6n�_�ݍ�hh}@1�h���N������T ���Q�?ͻ�e���ߎ�Y&Z����{RS/�����m���=j��G�3\����k����k���5d`'=f0/�?�Iy��-%������Ň��Z����V�m�)���f�2�u��n�hE� ZzϻDsBw��S��e܂����I~������J��w�]����C�e�|����}$��g��A5�����y�2~�
9��p�T�@U�&�KAzL�����LP6�2:�~Mo�]��CU�d���O�d�q�����i!uw�%N�� {b�X[�Z]���
�ӖEC���9����Qk��=�HXB��8v�K�P��8l1v��@b&@�������ꂚ��=��y��R��n�~#S� ����ǋ_S� �Mx�ڿ���΄A,����x⚶�Q�Ж�@����x9m.#�>��Q350�L��so�K�/�Q|g��'�u7{�!��T���vk%}�Ѹ��#�}��&[Oɴ.�*�mҧ})%�}�E`54��d\��9�jr��S���~�b�=K�}y ���\��q'���iėׅ��x)�!z��Lv��wf�Y�yD�q��) �9X���s�90�,����4��ȉ����ĵL���J�����f_�Gaפ[Ⱥ��>z�/$��B$�*���},���Io|n,����UǦ�y|!��J��<��;��9[��%�
�R�CI`�Z\�6/���b)vk�[�/��t�c�h����Y�gm�81�K4��˾�N��Tg�D:�
����>��g���~��p������� � � �y���������	M��:�7_��~�L�8��6�x�����3�����C���zY3�ߓ��8���ѓ<U��Y�/��_*�T�h���~�x�J�yR(�Ɏ�C~]��qd���:�l����5��( � ,�:�o��Y0S7a&Rֹ	]�Ҟ%��tS�>����+ �l������ �h�w�pN�,�a��.JG���>�*e�0w>e�#�Kܸɘy��eL�����(���.̩l��V����Z�O�1J+��x��%��W�/J�:��VP�pT��޴Y�8�P<4@
 5��$�a)(o�:HtTO���~&�8��*�U��	3f��\��'eH2���_Fš���UsLem%0 ��� �7=F�,Ĥ�ds���U��!>�q�Q5)?��<�j�{F���g���̢O��7��^r�i�3S�Z�9�Ȳl�2{����j6��Rz�J4���(�\J�͒��M��%��͛���W�E/DT	��S�Q�>ذI�=&��@>��~�U7��:_5��@���Y&q�|�;W���`/�wȚ�`�e�瞔|��@rҰL��������f��xkX� ���(���DK�N�M4�,�5����4�3����iWA��D�'�C�L�MM�|�m�R.s�T�K.A�W�6���Ev�i�g��t�E�דgY�����O#F�^0R�&x�O�9���̫jwݹ5}ae!S�c�>�|c�=�A?�<�O��bON��
��D��cT���l�v(�<�}_�}|��s���51����VO����w�>��mi՚��d����H�G�kwqe��,o�1^i�,7��}˥_$�����2�7�2�3�fS@F�u��l�	�[Rf�۷`C�Ę�r퀃�����D�96"�n��Hż�-���xs�;��tX���Xl1
Iߠ���6[	��J�p�,�jL�AN�49HR����T�1\�̆�Kdl��b8�5,O�{��ˌ.�m�(=�N���XeO�g�,�����IT)�C���F#�b'�q×1��֩�'���x�����f�*�	�S��г@d9�W�OJd����鱀�El�We��a)�%�@͠@`2h%��$�$�ZL�I�����+�0����>;Ǘ�Jq��L�\M?O>�/k�)(����>��M�C�o�)�}�LK�� S:��t�-�GOc ,���"G����)�.�~~��w��u���wJ�?ҭ?4�ǖ�U�t�w�aDaf���{��d@$� �x�����!��?���u�=��Xt'�����`�Z�F�5�`�D�rR1.ؖQ�ـ�p����aȦ7p����tp�i������M�{��`^`$�^�/��YB�����4}��'}tpAԲ�n]�-Vwh�}zdٞ͟D%w���� ]�.�ο3�p�&ޱ!�NYq�L��37�:h�n|�ZBz3H�1og�b4�`���0�N�C(v!��
���ņ69�eZJL�jLY��8B*Q,�앁���;�]w_����nA��#����P�@~�?��{� �+6�~�xq���]����پܾC+�dV.��ٵ�Z�R�2*L���W���<���a [�_��^�C,�{]qa�����/���!�'�=b��o��%)�$v�!�U�zLo-�Σ�C�6��&X�!�Y��]b����kۡ6�{��,����)p��ÙM��<jd�:G6�WFv{ �b\��<_��$TQ����ӌ�ǲ�����w�Rf��֖Ӷ�oy�;�-j�R��~��M�&<ܨÑ��zA��܋W/j+�+^;�s8�V�h5���/�>���@{jE����+�䀞�哱�ơj�x���Rw,�����:��o���p[f�:p8A9�Si/�g��&G��א��Q#`BrN�>y�o�����m}:T�c�_c�T��������9�?�ʦ]�*�a.,�ԭm��4�a�O5���yGw��+��.��^B�ȴ��.�
��O�����_vd�`�23�TDq�A�!Mؙ<����>o=�g��	f�+\��VWV~"��;��"�V<S��<\k��gv��R�qL2��K8�j]���_���㋛�.{,���W�G��Ǽ�'��B�1�/���&/E܉�N���FٺV�e{2��0�n�0�1zC��V��3��c����EIj���յ@�,�P�% -����g��i"h��n�J�"Y��9�W��s���YY���6���|�-�Cc������Dg�>HR��`�R�Ѷ3m�}���>���؞X��'6���Vh�{��UD3�%��2�%,���n���c�~��.���{���d���W�Ύ$�8	��#̡���~�v�	n:T�	�U@*������E?��4����� ֎N�x���j�X���|d� �  �W�a�R����x��b;�F㘑�w��˦�%�W�l�x'T�8B��f����ǯ�]lnI�vBe�5�!Jv��S��"�S����誒�e˨�WWqڄ�R&;�	u2xŖv�!K�~Ü�!���88;����]h �!���H��ڄ~�h3�v�?��(���K��Z(r��}�],�H��\K�gȴ���t�������!� ~:۳m܋�R(�诪�����J�W-�gB��X�y�-���-���mm����{rx�V�C�nID�۪Q:IE�{�]�@����`�i�Nv�_^�)���7$���99}Q����~����M�$���?��u$IKm��)RZ|�R�`�����ڒ}D1�1Gan�h����S��a3}@G�Iv�Y�W3 -���LF��O��O��D|$L�_�BwE�lZS�pu����-qF����O����Q0��������Yٽ[ .�]�����Uz]��*�����#\�f^����$	�$��4��J�`U6��~�s�@Rw�	������=j:�}�+�O���?�GΈ���fP����c|mJ���QJ9f�Z�*�Z�z������lG��812��J��`8��C=�<y��72����GN��PD*�]�X�Z�h�A�b�����l���I$���Ba�aza�SVR�߷x�a�b�<��V��m �y}!5;s��ζ�6w��g��E��U�I���A�Z=���i��.>Ƨm0����~�``Q=��ӚS�_ĩ���v<y�^�"��2r�%b��QP��2������k�p�R,[����i4�s�nP���_���6����A���)-����?d�낹�EH$�Ha7��I�/��|��S���#I/�#b�Au7�ADR1��eTQ�p~`y�Qrq�u������n�y5刬�3�0���E�JU'a���è��lC��!����\�Z׵>џ|ks�� ������ސ�9;g#wv�Dd��t+A�vd�*#�A0�!��I6GN+��?֙/��5?xiϔ�� ˗��e�>�Z���>m�n^��^ٌB]K�Es���U	\S=�q�|P���Qmk�Ł�e��YO<Z��Y��"�$ q[G�_1k	�(0��(iK�R%��'s��tz����K��B�\� �!]4:�!||#�����iNmWή��!m���Q��&���< l8.���"��3s��E��e @�k���B������/Y	'I�&���Ⱥ*�C��0��f��m=4wt��B�jg�}�s�����3UU0T{���1�a��O���wF���ї��Ex1�'1�iҁ�W��"������a���L�y����B�:�G�J�<(�sϾز@ �HU�$���l�����z*�����ٖ��^��X�����F�-3 ��T�ʤ\U�|P��5Q5%����_��T��L̯2�l�,����-�B�c��ͩ �֯J���<\������^%2����o�:��E 9�x��z<��-����P�:-���з,9i��	ԓQo=f<��zL� 3J��>f�n�L�`�opؖ% >a�:��u0C�o����X�Ф���4}�b9�?�H��O��)�fyC���P��}�,�e�W�a�d����,�6�fabf�@�,�E���3�
8�}�B<T(��N=X2z�Vr���E�3��U����1�罅D,H��at���#gLHT~������ʁ#�i��Э��� �hs�!�����Y�)N�}�3۳�̒��E0p(7��剕
f���A�g���$3�]�L���'e����¬��B�9�뾲'���X$��%�K���K{��ux�e"��ge.�鹾A�8-����l�^$�GD�H�t@2��:�#Ƃ4���F��}+E#%K=Gx�-��a��I������h1Ǎ:H�@�9j�]�c�6wUS��}U�+���@Xw߅ �s�z:}(|&vw%�����)�K���T[��5�,��$\��"�w��/'��1bȰ:^=��9A��9��T�0�N�,��*ˏE��� |������n�XO�r����E〟�y�asB=c;4�j6�ܐ�X��a�3֪�(=�^xw�gq'���ƺ&�����V�������w�kد���w�b�a������B��:W�X�v�}�J��9��-�P�сb��"�6N%�P��������m1b���'��1�H�HĜ�0}���^�e��E+�gU��؇E\�`x��hq���"^�-��l��,�g��i��A*�d֜�9���M�J�|=�Ɉq�b>�V2��}c�ӡno�zw*��6SS��ȴ��:���M>^�R����[ǋ�#��nm��[.ؕ�\�v�+oқ+�r���3s�U`,�;)��)�e�V��2�����y����h�UB�$e�)��O��׿��L��&%�ƛ��.�A�A(c�b$���huHpf�$=�q�Q��{}tY�t2q����ӛY::J�S?���������_l9P��h�E&����ҧw�w[��j�/�!M��Ph�{�r�iX(�/���K�����W�P����8\�;*}R�����y>���T#}�j��$ܱ���#z�%�cFx_���{0�eSJ��˲�Jz��c����*��=7;Q&S.�|���&���ń�`�|�=3�J�d�@�gV��`X�>����Y�Ck��)�'N�M��IZ�
%[Z7;x�_M����D�T�sV�
��:M{�Xu�˒�31q�E9w�,��m�A���BTq�[�Ѭ�V����((�>T��M/�N��8إqВ%�{�Rl�o��_��B6��=�.��1\Q�A��T��[����H�F�I��P<�2mc���T$Y�����>���_H}�]P`��3��/ �o���V��'/�rE��z�K�A:�n�U�qz���[����!l'��V�Q��+~����#:B�l������Ы���Q�$!h��f�I���&�a8�u!��ÁY�<�h�o��9�G�!��.4C:o=5�`Z��=s2 ��xu��"l���3Ђ �5�M�W�k؉^~��C*j�(=���;1_2����d�v"��@w�c�S	��Cw.�P�4��e�;УҰ�JtAz��uQP��%��<����T��I6VU�Iv���˚�����)b�4vÆ�D�8F�M���.�)w���i�@���Sd7��;�	s�G⌗�RmऋB�a|m5Xi3�н%/پ��7���2'_g>�Z"%4G��&FT�^0�׾,����5�`��|��L͏	�P�}���X�h蛖%'�IW����^��	�S�����q��:��#5]�&)cmn߽�07ŴH4P/ �,/��Ӂb葘ha]������uRh4$JL�Ȟ�ay�������čI{      u&      x��[s�X�&�\�+0i6�Ru$ŋn��ƖIQY��(�L�ޮ�0D�D���6���6������e����O����~n "RY5f]m�d ��Ǐ��ۣW�����?��Y�����߼���k����������ۣӣ~�o�yszyr���ED_��c����o���}���h\������eq�fID}F�E�D�I���1�~�?_o�?�	�TQ�G3�_���8�/�8�&I��Q��Y:�'џ�ߖ�"���EVL�?��u��GY2N�U�̖?�tG��O<��yZ-�x�.Ω�,Z$e�.�2-�qa4��J�<�@�����+:��������{��j�����(-d-�D�x!�E��j�q�i1|���x�I	T�Y\%�w9C���P�1�ڦ/]	uq���8���G�79A0��	�f��{j���/�D�a9Is��$'he1Ol�&�QYT�pQ6����iYϹ���B��;;{4(����g;��P_O�/���u�H��)��@�%U1 ��]9�s��e7��hsqIVF�K^���@��a�q=��Ѵ��,^�����6���Y��� ���b~���S����� ��� @&AOB��/o��7���X��EW3dt�pr�|���-P�9z'��,��iV��@���@����mA�5|3	�6��#�օ��{<�m�3�DP�4g�MB$aL��ƞ����klґ%��:�pأ#�����:�R���N�f�J�Ì'�N���0�sT'�P��j.��y��g������rj�D�Y���	������C�5^�bb�˽fE>%�4vธ��bx�L6���J��l/g$i�'�q<��|�uR�A�a�	��Z�����`��H&�Fo�=:�m�8=�F�1���(�I)�����G�߽u�6
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
��9�-4>[�©{n��h��n��eu(H�9m���.i�/l�����5۵�M�_يI�\�x�5��5��u	�q��+熄���8�&O7�`����������9�3���/�zv�ڹ1�f��~'����Z7�k��wǭ�P�߷U��1�{���(՘YB��םp�6T�Ĥ�U���&�8�Zl�Ȅ|�Z�+.fm�Ɵ��8�S��Ej��0�sJ�+T�m����P�NL��Z/��v<m;�l�\Pg^.���m�ܤ���Ur(~qe���b�m�t\�l�}7���]�&����H$��F<�Wm�)�Pf�T"��<e?4�i��b,1�I�h`ƫ��v�ˮ��7޼���V��My9c����y��џ7�m����W�	�s�����Ŭ�Z���'�&�z��a8�5l���ŉw�W�o�Eps@8V�1�u]��Iz�d�u�kn{���q��s�|g�J]����ST;�������ӄ��U���;��[~�ᑒ�$x:7���D��n�/�L[ׅ��W��>���1������׻O��{�=yqp����Γ����;v��3ЀO��������=���o�w~�Y�Ǐ.�8y1(��}����YQ��J���I���/�X������J��'���f\[R��"�J36A�[Y2���.>D^G�"�m���z��ier�r�.��ͽu������}�������l�":��ɻ���݊�ޟG�_��_]�/���>u_\�zQ��������6�?��}���:�L'Ovv�{"� � A����ޞ��c�n�q�:�M�'A���u�7��&�pwgo_VՋ�N����s�O7O�U��t��̚�!��}7԰]��`og� �?{t5{]�3�� �惪��zd?�(�SNxo�|��ׄ���g��Q�]�j��7�YI�e]b�EF�vQ����M}ڜ�8�DP�����O�u	 
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
����M"���7[�������9�Yt�]��O���D�5,���$?_I��i���	P.��(㺖ED��S�P�Άc�`8]��U�k�%Ǡ�h�V#2չ�Vq�׶�L�k�@F�ĺ�E�%��۔`T�E����?��C\Z�B~�>qg�� ��즖    ����[�fh��V�_o�Bn���xzٍT�fzP5�8�d�j�������'����Ɯ�"#��`́?o�x�֤��?��oCT�p����Yg��yNl}�^�W���N)o�	r�ۧ��P��z)�`&�_�/Z��P�V!g�&o�@�CM�����b��[��,Z%I����4���5�ON�@N�������')�X�C��3gXc]u�|��Ml��D<�}]d���ϊ*����� ȥ��*��eC*��([�:���D�r�r˃���IIw��o�y*�����Y�P��˖?���	�Y@��{ �8�9�K��Tx��⒉㦾�s�n=Z������,��hO����rTçU��Pp�7u+���n�mdK���D�9�3�t��>3H���|�ig;]��!�)�M�ڤ���`��g�sW�u�:uW8� �7�'9�/~�DIi��]�.'I�+V�X���ٹW��ݠA�*ҡ�L���[4���.5O�r�[Џ�2e�����`K�5�w�$�% $��Ge=F�2��?W��ж�Ly�0�g1�#�"�b���=<��G�m��˴�3hQz���: T�FD/?�����f�[I�?Y� ��}�
�s��oQ�v^~�'q�c�`�d덫�n�d���Al{�w#�0������f�3���t_���zr��\:d�!�E�������yH��fue�*}�R���.�_k��S�N0c�5Av-һ=����^�@��m`ʃd#��ؠ�y�Z7���:w�:��"v��lr�e����ǃ�Eji%�`���筯�����U��V_<o>������;��̗:gEq�
�9�_J����Cl�4���R�6�q��O	3�W��:��'��`B����W�̊\�	���*�L�v�������W�zg�g�� �����8���ax��ģ��7�o�����G��p���K�×�~����+���Ǯ㐉�u��m�P88�tDÍ�#��\1�7(�h���]rv��F��r�����;6J���19RON��g�<'gbw���R�QP��bX�`�;ͤ2��!�(y��њ-%A�V�j�P�0�[u��l��G�ډn�����ɩ9~r3����	_�L*o��o8�"e/	N��ީ�x�R�E�>�u:E85�/e�nȅ ���Y[wjUm4Ar:�95�c4YS��K�Aa�bE�B))��m
��p�8�9�Y�1xwt�gBRG�s2�7�N&��7n&��#Ixz���˂��NDl(M�x��rD�W�C9-�~�1�(�9{N	n����]����Գt&��!�1��>)���lԘ�ⷦ��ƅ��W
�9+	�jn���t�� ��t�~b`��\&�#�H*gV�,���U�9s��i�*o61K�g���Q(�-��S-U#0��=Ү�N��L��b�\�����;�7������NE�3&�����o�X��K�<zĬ��[x��/�����o�zo��Mq�攠u����s�����m��	k��@kq�KH�5���͈K��\`�L��b�3�%L���H!�u�cG�"���J9i06'Rz�Qh��,id�f���5�����2�_ƻUp<E�KA�t��_���{��vH�q��?�c�C��_9�9O��W�z�B���d�9�{8�Ï�I�x�d�ӡ{�K���J�|��ӈ'Tږ)f��t��V!�٬�N�&H-��{��˟pWHZЄ�Gu����9����EJXa�>rVK��=�����ڽ�e�&{��LaE~�3���)�L5Q����y/s�>A�g��Q��q�|R��A[W8M���|�v�䅙舔ֶJG^��ѷ��/q����_��v`| _�#I�|��
��4�LE��C�/R��.[����UyI�'db��R�A��o��_:蚹U5L&#�jl�a��:y��?�^��S��������~j�M��[-݌P��������8e�QŬ;�ΰ#��6���s��9�+܆�qp����-�3��$5�ԅ6��]
�Ef�JD��ΰ��\��3���{_��{���z��Ҙ��cڔ�e��I��uC[�2��ձ��mk\�I�z��n���	xH§�r��S�C'n�I;ﹱ7e��|�Q�˰�^Q<��O��z�d�H�U �)%@��A�k�Oe�]���g�C�8�{��i0ؑ{��S��#>��;8#=/8�Zi���a:Ԩu�i�e�jv�@��Z�,ӖEڶDe3�U�������V]���GeA�R;e���-0{�N��t>�A�p�%��kzH5$�P��n���rS�A rb�y�ۋ	����X�A�?̲(	TpJ$�)�$� �#�q�/K�Idf��_����;<U��Dyv����<c�\Q+�.J�{.j��pIc���$8��fbDi'�:�3U��Ϙ���8 Z�d
F?�N[)�,/
�f��bHW!y-4��d�bY�O�sV����q9�;#��2��5�eT���N1e�N�����#�#}{̙��wvc�����t�]8��9I(�.��j�� 1��>+
 RM�8��pSUj�ʬK�.��00)�D����p���x��*���yw�V��uICl�Ҏ2Zo��5�f�Q2Хw-�
��ŠNe �p?5��yE�־�l�]�
EmT��Sbd��t�TJ���J0� ����ht�	�'� D@#T)1D)g�z�%wD͉V#�
����ᛇ�9�9^"��ۼ��z!>2��[���Y���l�U<��<(-@���5�#�O�|�N�e���9�Ǧ�qKi?+��{�2'����d%�`MY
�Nn8�NL�t�T"cJ�.㦪��Сʍ����G\s�}m��x5L���7��$|B���J�l��D@xDmsE~c��������Lo��9�s�p2q4�����=����0Ҁ�7�wp������:�ŢnRsD����+ӇG{t���:^nq��:fAUT�*�񊁶�Ȗ���5S.��4���|Q��\�4���B�O�e��FNxzw��D ��޺2�fF�����c�������S��z��3���t�*��CB�W|z��b7:Λ�&'~��"����K��s5g�'J� ��g�у��+���"���d�<#��'�Ű.=+(�?6ɨlS2@U�lX��ԃI�!���"��'�DzU��.��F�F�܂I�-I�o�������pj�� f�̸Ct�D�,58��s*����ׇ�t��ô����:f9mĴ���Á"6�E�)���IM��e����02��k�D�GB���)����NY�<;���w��(`ܔ�O1A'!K֚Q�+��Y2d@h�0��6��8/2˲<�+ԔC
�ҙ��t�mQ��uƂv
���cG~�?����jJؿ�e�Q� VuOV5H}?��\l�eP���{˖�0������I�K^N�����!c?h��99�f�p���{��SO�s��"�u)������<�fT\��[��)����򧜒��R;��d�msp:��I0�Ó�[Ҽ����Mf9R��M)�M�0���3�'ɟ�b��� ��U�=�W�"��Wط2�'�L����Ȥ�m8i��Ԃnd�ܞ~��p��m5e��G~8Z��\�QE�ƧzB�e���ܻۗZ�>Բ���[�l�4��?�#,v���LϮd��������gr�RQ��)�b���lVX>{�I����A���b�m�v�\`��R�b*L�e([SH7���ueůG�>Xŀf�r"�i�6��@�ʤ������[(J�bC?�F�kH쵰����V��-��0W1���|�;%f�]_��[ߞ�aڇ[1��M�<HN�"���.�^�ےt/=�p��F�K�ߨ�2�&۔�DCU�5�F\�ع��r�c�Cs!�ߠU� jR���(-J�$A�����q�E��¢1��+5k}H�ޮ�g؏���( �6ePjw3�W$�~�{�^�=s|�!OK���Ćxz{p��.&�c���<j���Uܲw��|�0A��tj��"6B�($��XlN�&����=e    H���M�0������Jm��(Sԏ��fv_C�c���s
1��4G��%�-��ZH|���l`�i��gݎ��v��I`N�寃�����ZV�c6s�v�&,3&�0$w�L�W%w��^t�����N<0ח[�_y-��b���tНs��z�8S�k��ܲ���O���N��8𓈖�٥kɰ�Ɇ��H%TRWZ���F�w��}��Q�
�ڼ��/`Ի��5%`�Y�]\��{��7
Ah���|+�����iw>8��S���w�wo���S0W����Ϊ�>�g�rS���QT[�(�\��]̨�����,�ъevʠ]u�tS���0���/��h�h�����<�h�0w�lc��r_x�yC�z��������3ؿ�}�_���BEz�������1�Y_���s�*�ִ�'�jwr7`.�9�{��cZ��ҟ-��r�+���*���j��7P��T�[Rſ��[�����S��v5mwչ�a�Y����_�rY٣��v�ӻ��!��h�k�9љ`c��2�Sہad����+�/`L��O_?:%�Z���ʃ��ٻ�'o��O<?{������__�ixо?�'\pюb{ǐp��:�R�I��Q'@��0W��͆ P�����o*�\���LY��Y��r���=O �Q'�b�ί�A:�{�S�G�%���Hx(f5�V�*m0j�E��a
�OK%`E�娜���<N�����
����G�]�]��.����δI��6�"���BԘ�)5L9�Wz0��k��[R�/2nNZ-�f3F����c�*�n�.ҋ�P���}�E���?����ÇÛ�L�Czx���?Ċ��C0��qTW�q��3�;7�N��s��MAm��M��b�O9ҏ�混G�L�WI��C&K7)΁��@z�5��%VI�Uf�������|*�DD����:�ā�W��sx��K��<G��r?#��W���c g��'|�V�~�� ݸ��=i�T0�̂
��X3�Z)�L��cPSԘ�^3|s��3�S�B�T�,-E3I����P|�J�S��Y>
(���t�ͷ�;�qE8��c��Ҷ�*�b� �������1���%�c!�,3J��{xׯ*ۇ�A���g�5#Bϗ�"b��(~��q��"���b��2"���9�|Z�%���5�y3EH6PJ��������p�X��{���y.��~ �3*�rwh��s"%Cm����$x��)��cRϿ}$깟E�?���X)XnH����P��&��&u{�z܏hQR�]�
O#A���پ�m�����N(�yr/1�)�U�Q�HF>�?��Mݰ�����$�T97����Y����h��뙨��A��_N�w5�-_d0!<+� )���`���G�3F�N�[�m�.��#C^�(P��p a(�n���h�o\g��4�{�T�[N$$���ѵ���������@Z��,|3j�Sċ	s{A6�Y(�݃�J���p�_ߐYim�L������?��bn^Ζ��j�~�=[��V�N�|>_�C}�KW$��)���:��^X�O�Zd��A�-����Z�%�D!�\�ڴ!j�g�&�B���G �m�����A��xZV�UQ�%;��~�O҂���
zwԠ����V�׻ɌIl[�3f9;Hbg����hZ8�#��п���Q����˟����X {T�"[	r���\K��'v���X���i��?�����1���eh)�CE�`Jql%�oR!�����y6bu��<j8���O)3�7����ř���ʍ��FU�ص2�#�h�&����2��,�*�s�c���^銌9��Kp,��jz���l,���ʄ�DzY`D��Y^�T�I�h&=������D���zJs5*+���0xN�ɺ�1��䂖�&(�do�!��	��$E��S�N�!�	���l��>�����C���o�跭E�Y��F��I�ٗ�L����ս��N�NҎM�x��w°Ҡ��P�d�F�Y�W���;iʋ:$j�7I����el$N� pjt���5�c�yZ9^*��X8:���)k����,�)��[�1���e�<T�m.��n��jE�Ndͺ�乣�2@#�f$�5ѡ��F�a�\B�+$2!��W&�ФS�k�ձ�fD�T�d�O�n�V����X�6f��e��bOP�J�m�Ak�~���"ښ��N�E��*�g�;�����S�`��E�*%vPc�	�����ž$�>l�9�km�����Q��l}����+eE���@�����%��ҋ ��8C��2��)���(؉�#��ЁAmsU�G]R�M�<��#���]qЕW����Vף&s��ю��p~�qN�[��@�gZ�*��#��I�[zdoȝέѲUx�K @�8��H}�xHy�J�0�g;a�t�ӊ���-��ҷ������QkdİC�ч��g���̻�I�WH(���h6�G�/�6�/w��y�k�8���M�#��DC�TF���I�iU3y<�.�a��H�{]aN��	r�bQm�^��'yRy�}&��𹽽�A"�I�����G�qU�/��@
�+jʭC+3Y�)&���6��D-Q9��c�ߣ��ª�����5��n�N��/D嬁-��*~Iz�"ᴳowC����C�v��{�&8� �12}-�}Y�a�Rӫjǁ��������Y?3�:�t����ȕ>"w����j�[`�[���$�N�>��J��>����H��?��A`Q���p
d�8]E-3�OqR��&,�I��O4(�@|����9�Y���v��1��O7�͉��1<����v�J�Q5�y`se�K���z}y��~AG�;���qow��ii�+˛����9I^伬H���(�����.FC���{KP'5�È�������·)!��H��חo���vr��Q��)���O	���FN=R��K�/��dn�
\���
��Lt�]�9$�)����*�R&'�m�L���_Z�`��hO�vf�*e&֭��'��hhp32뿛H�\ʆ�n;a�/-���F�v����������f1��)"�oov�P�a`��k���-N"�Q��h%R�ևmjL\��hXQ�3˿�>�Up��=���>�R4Rm�]�?RY�&�;U���U|R�N������j%e�Sl.<��熤�lEGgfw��&�DWlF�'�Q����to��@�es33�y�]"n�lTQ��K�}R�/�Po�~\h%N-L�c�R/�kR�N��:��򧼜"�.�t{����2�x	jvp,��ьP_���"j��j��Jg�W�V�r1��TI�L��yi~�]�p0���O8�06��b;��α��&xwlC�dS�IF�c5ǲ���v�L+<`IJ��j�[�&�Nغ6Ș�|HOiGB>^��*�iV��Y!]T��[���&����7ޮu,����N-S��f�Է�N��,Lg��Z�VMI{�!����c��i���Z8m��,_�&�d��po#��5{j����1kOoH�<#+v@.�l�qֱd�gZqq����N@�q��d�J�H�W�!�N��h졅��Ԕ�ڶ5{���>f_��+�����!=4���g�L��*�V���r�ś���Y����ƶ�>�V�gu��\�t�v�o�ڻ��L2n�l�Z3 �����h��g�w�s2����J��آ�����J;�'����4d�-�t�#���jL>H.��0���ҵ{�f���E��4g<+�i�Ŏs��T��;c�0î�9ʛ���H�!
��W8I��fTc}7����o��c���T�>�ls�rřF	_��9���T�yyA��T���\F���8��i���*�`��3���M���f����f15؛��8�)�ҍcQe�tA����$�[�
E<��]�m�uMT��\z&��+����Ay!���q�$Ƕ�c�#�b4��Y�;�U���L2�4�2�9�Y�"d){���]�    �v��K�^��#�l�g �A*���"�L��M��a�̯2���UT��-嵑C��ti���]�y��3��yfxn���C�g���W#��);����Z�ŵ��d�)���"��-��/UM���\��՜{׾���b�B����Zx<_׫G�ͫ�9Ϩ$���5��sn�N+Y�\�R�+�g�x���L˟�ѳ�V��4���芅�����s��`C��z�)�3��WG�{Ӛ�/q�}�+Ww8�^r9j7���U�K��Y��v]�o*R� G�uTIg�qYU��49{q	���0���mz�\VQ�T��(�G"9��ܪ�F�َ�Qd[w�����~t`5B|�t�7�a"e�H]��K��^�ʄ�)����y���ݧ��/�� U��� yO�����O!}<.�����*����=��u(���+Z�7�R�����
���{޴������K~�Ci9;8�i��8PdB���YЀ_�Pp��6�8Y�Nv��j�m޽��_����s�rMGyP[���$~�{ה�:�X/��n�8��Qy���v	7�g�K;�jd����0�D+�=��#i��#��	�DW]�m�tw����E�G=m�E����l�j��T���3�v��K��M�o��Q߀�͚�c�1��I%�0��8'�1�j����U^Y0�wi��uR�����B���(Ӽ���|���+>E�j�#Z
IV���9��@A1��%IC������U�
L.��Uf@������W���~I=����D�5�٢$h�uu)�K�,�QE��l��;�k�ƔR�G�,4����v��^!:$�-p,�����
�t������)2c�H�����X�|@�.s��bKȄ�3 �3 GN���a_VRp���<����U�ռ����X�h0&ބf5��j�;�Y�g2�H��k�����奘�7)�Q� ;�̉h9�ǒ�?V3U���9�w���\o����y�	)� +08�����x�$�R���Z�� cF�6J���&!.�H��LنKc9�YNG�{�_�w��8 �2f���*.`PX�C�7�j#�/Q�s��D�.b��[��j#wZG�tm�Z�����Y�w2��O�5��.4F]c�Q���#�8�H�؀Ʉ bF�\��I�RL�tR�2Fj7WR����ͅ���}��N�,�O9Y���-������(1��#_mo~{S(-�j��u,�.�\�]c����FB����vYT�W�Y���kA��~I�}�rh��7�C�Ɉ��w�ħ��g&{i ��7���>�OH�jh4��o���!�f�d��Vfᘀo,��iѪI܈/T�;�0^F�3m���ӮN��=�̃�cRՄ�D݉�������P�VCC�mq35���{��%�X�%:{�z�c���>=t�����ĎѴ�	j�[�aGD�m�t]D�e����'����<�)�_�Sq	�]��u&��%�p�2)�L�B:�a��t�����
9�l:��6|�������VM�.����&����G�\~4<�?*�7�&�3Am�\����g:9�}�Z�q�;h���g�\cнO�X��/7��Bg���u�a<�e��*�8��Ռ��U�RN.�O�l�aQv��>�vZ�5.&8�����נ���o~�i�����9!�z�FL��I�'��gP�p�7*=��0C.A"j�h��8F<}�Y�Њ7me�O�q6LI�-��Q%����t�C���}8�3֙�A�?)*W=���t2v�EL�2��W�ޔ`vN5Jj�q���3�J3�.:ęS��2�[�!q��V�C�J3�|�Z�Th��$[�ȁ�~4�#2=��"dp����{�%�u�3��r��������~��A\�\�.Q��`�QO�U��?�85/���[�\Dh�X�y\j��4�?Q��©Pש���h��΄��X= ��j��d��2NS�}����_�m��9�n���K���<��v"�L�[��H��`*�Bm"W�H%������d���Y�r
�'��~g!�ug�㳅HE�A����F;L�������Z鰳����j^� ��ʛ�^= N�|��`W��¡-EG��h��_��'ע�����NȚ�j���~�kw�d#8��nF�Q>
8�״0��f����p��u���_*t��2��_������	4�割���4wHVԫ�R#rA����\	���;��Ρ�E��:�s�j;p�9�_H��gr�A��G���
|�������A�Ut�:���<󲘂b3�l�:A��h$��?)�;L��iѣk+�p$�S�PrE�]dfԁ��S��l�4)!�,���Ӑ�����G���jJ�T<l��k�^}�wF^�0��4�2�YǟM���+-��@��\�9�s�&]�H��9Y?��5z;M�rSK�8��v�p r���i>t�����	*��b4O� a��I����v�&�r:X��Xfo�P#")�,����˟Ǭ���g�ҷ���IJo�`�\���#�>mC����g��;��]��}�SO7�Y)�39"�ޏe�Ae'��~b��?o���Ʋ��J�Z)�6���Ċ��`Ǔi���7|E�Q��"l�m׍Ւu3֐<5<17[d�MR3 B�4P.Z��b9�,�� |STF1���i��1|r�.S+?��3x%�2�p�xf�h�@��-3"�çd�I_[�'�ضK��Ez�z�C��"�S�m�W�dzÃ#3:��ata�:?:��uy����n����Ƴ�c(%��O9n�8`#4��%��$gҍ�T<�7M�C�?y������ST����(��"���G�9X�/ٷ���yTZ�k�>���b���i�e9x�UB��T��ӕ�fetqg�k�H��	r�t��B.�fE�H��4�N��2H,k%�i�9a��V��=�큭�ZWR�E�rR�.d���.`q�dL�P�����PM�~�0'3f�����t�ב`L��1�f�~���[�Zd�k�!n{��*�Ê�(�M�9"/��mBb M�iob��������(��tu�;��jw������UJ��~ؔ ց�a�n*�d䒯P��u[�0ɰ~�������4�0������=�� S����v8�ⴜQ$��T�(S�Y��_������`b4����Tk ����y"�5g��P$|ʏ�|�GbvVN��S�6�(J[BF���UB۔��4�;(����h������T?�Vޔ��Iy�&@�G�[ �6���'e#9?�N�M�\l?�w�������� j�������g��$<���N�N0�ō�X����c8LQ�.nΤ�!5"A��̡�u,Q"�ϋ�8Lp c���&�5+��nj_	Z���8�ڦ&� �@u���%ztWw"D���P���I^�qJ+���mv��ujt<2.9�QZ��*5?F�@�0�0�	;c��!�� (1$/ǲ�f�υ`�È?�?i7���v+ի�T_Dx��~`��.k��$�Nhaj�6@:D�X�S�l�<�4�e�a���ya����{c�K�Yܼ� �:M6���=5Hm߆Ƨ�&��G|�ش���'{�!��t|V��4���01O�A� ������,M4���:,�����9�5 �k���4ɜ4��i'�ӫ���۟z����`(��)�'��;�Y,�*���R�K0�Ub�0����G��%����-�`]��k,���*�=��}������$�0rd !�J���>�*�L�?*�k蹖/�a�3R�;�Y�����'�^v�Yq<9Qi$$��zeC4��H(8��qJ�[��j���̀3>���t�rY�i����!���u ��-%�^
|�c�9Y�LK�����x��X_�K�K��^����BьJ��.z=t�E^�!����ꂹ��%G��(�+<0�y�av�#���yDҗV�E�%3Va    )$����ρ�sĜ��b-1�~Ӷ�>&vNC�7�'!�8�lQ� ���S>�35�l"�~��A�$3-�E4u�"�Nq���0 6�V��#�+�֌�W��=�01b���I˧n��L���X��X�?��cڳ�%���=�/`��</��3U{1�NR�AU�Sb�)ЩE��$�+��F��D��[�Q�Z`���vg�9���LX�Č���/^�&/�k�b%O��}����۳W�/��'�χ��_�=�?��^5�:�Q��������2y���ٛ�/.~���s��T�~vA�z���m��f*3��z�Xƍ۲�;�ǟ+L$����F:�q��#.�YT٨��U���dZ5s^Iz?,�߆�.@�b߀�w^bV�����%Z��ٲp�O����;`�vE��� � e�/����t]�V�p�z�#o`r�����D�_�-k�y9͜�'*$�����|E���߫��Z�Vا��r�S�Q��|͕�_R��U�b�b��|�,ص�e�9yv�����ۻ�U\���r�iH@�b<�j�A|���e�A �V�3�@�����DO��]y�*z��������;�~ۃ�ĉ^0����/L�w�K�][r2)�n ٲ ���Jj��h��U�Hnw8�л�<I�O^=?y���N����i0+��e�NJ���ۙ��sg����gN,��@p�[E����i����q����`��M��:rJ�3�\�':�x��c��p��e}f*�Y3�W��f$!<'ik��Z<t[�!�U�w�q�ǂ����������X/�n���om�����=�>~�n����*2�-���k�C<7_�x�����(�9BM����'�_8;>�H�q����k�b��%^��i�G�-�<�V��7MձVw�0����W7+E�	=���� c8��`�AFo��z_�j�p�%���?&p�w�8�/�LfG�wH| �Z�N�A�s�����޿?�/� ���y=B�K�:I��^D��f�]�}�	�fPZ��R�է�H�e@U����R�"� $!�΂��T\�ʅ`�>�an}~:C�X��)+?��rxB�,=^����֑y�J���:�"$ci��D�oB6R.�C�y!�R&Ι� �Q����V�h&������̈�TG#W��;�����^�䐡9�Q�u�\���%��i�b'1��.jt�@���i�g���D��qK�ȳ�3��"�A�e�N�tP�	 � ���C�n��
+� ��nE,斲����{�t�!�I$�C��r�=m���%���9�TV��p-�.��M���]�kܸ�~$���^���keB`����Y���}���U7F/��cy��S��/**����ߘ�#�r�����4���f�>���{g�v�
�Wi����,g(}����N��O������/�N^EtaGu]����"
�R�N-J?�7�h��O�sN��VZ�ʤ�Dr�&��!���C?�GB��5�\�5�7��tޞ��t�2��&�Ϳ�x�V>�������z���� |~ə�o���P�����3 �6��<�3��y�L�:I���V&h��٩��ަ���e�[��j&�s�?�z�ǧ�Ϭ��X�QK�:�p���w��[�F�$���]Q������d�3��^���z׋B�Q�М�xy���:�V��x���A����J �	Z��R��p�9a�?u0���hv���	��l���߼���t8�I5�s���"8�0D�(��	�yy��֧�n�G�b[$2�n�F�+eL�\��5�����ʍ���~%�I%帙�S�ԅ.�:,9ۀO�Ʀgr����4d���,?����z�n���Ը�B�K��E{K���c��qC�e-�>sͨ�DI�l����A���9t���s��sH�G妹�mXV�L������w��ߥ�����0k�+���1a�6��[9!V|�KⅧ�/�Ķ��<�IF���%��%������<��`&��k���;ar��͏�o|s���ʣ𤻳�L�寓lZ&�߼��l<�:īڸ{�t����9yp<�o��~2�\���$��o6 ��J�K[���{p=5u,����Q=�'����o$S4�uPzO7�H��^���y9�1���M^ry���?GdY-�[������=�o�s%	yDr�t�׿�
��^&�쥻k��Ǖ+T]�K*㽵]+w�z\e����z@-���KF��ޗuC�N\������i���i�(/��w��n(�ת>�1�݉7��"ď�O�ӊboդv�����Dm@�����mӴ��,Ϟ��R��?����&:+��'U��,i��[O~h>���n�Y�Q��{��T�:<��1�l��dvN���$��<��Ž��6|�N-�(�o�i�z��)�G��
��:� �E���!��m��Cn�iG� �J�X9C�`�{�~�5v�^�5��[�^W����-�+��}Ot�.$��j�keM�)-�f��S���Y�Ē-gƣv_��e3�n������[9����v�Asi�-�bT�x��8A�41|
��L~;���O\|V���n�+�a�ތ�^?��( ���pMRcAS���}�#��],Y����G��E��K����a�1ݯ�*-����wz�]����|q�̟�����{cW^Nw�se��v#�_ٙ�m>�Nd����VYO���+|銜�2>!�V��Ouֽ8h��N`p���a�#���_�M���^����`�T�@�	�t}x��P�柦��b%̖r�ْѬ ��y#Л��7��:B_��V�}�Ø��qΪp��<�FK�֞��NXu��d��X���Pj�ʢ���D~��˟镇�1#�9�LO�2c:���sL�W�!�zp���|-7�����N��3��k�$���;Ύ���G`����f<i��FV��GQ�T�e��_�7�Hk���u�DC�|;�ȀZ$�}r���8>�F	��\��ul�.ކ���zǞ�=���G>�BS�(M+���y/���`d\��N�-�c�%"#���a�n��^za�mV̚t���%��x�R�&�L+Sț���n3�i���|��0U䤔���S�Na2�ˌ\����R��=L�#�c=L��CБ�G��0����5�Y��1�`BY_\���Q.�v)^3j�"h~�+�
�r���%�^��s��N[�xeI0ϩ��ls��M���l3O���Z[��.��)5_h������&���W}�����YQ�6�,��9?��y��1u���Q"G���a�K��Q�bR�9[����)��-��~�(Ѣ�U^\�<���<����hNи�ن��tٛD��Ϯ�鴤��6�u��2�)�lD��fs*��fR�+�y�2��zjX勐�d�.�p̬�ȩ�|�d��K[�&��P��:�NZɆ0?�ߜ��۬D�u�����/瓸��2��H�	�n�1'�������ݥ �0�)�y��	m���ɥ�<jg�h���L��6���#��wǷ��n�'�>�n	�Ou�!YQ�~,��JE�x~���N3`�Ҭ���a�.��? �DJ��y��V�إS%y�4���M\u�W���q�]��W^T�,�)�u]Y�`]�5\����4]Δ�#���.8YO}8±dqڤc��3�e}�I��K=�����'ج��XG(.���%��kf�gƼ�m���`O��A���Pw@]F7	"���A���	D	�8]��<�d����G5q9=��k��������G&�k@S4� �#n�*?_��I��^�osJX̥I'��}~��K��Dgߓ����eM���#�;�۶k8��Q&U4`�U��f���yp���<��A�wY�uRVǘ�*G}!�K��|]���������ǁ�+q��r�f�hQ���`|��S��d������P�>e[�d��y�Dwx�"����54M�!A��zf{"g��:�t�u��d�PW)��V��N��ՒR��7�Ŭd��W� �:    ��������*ٌ�D���L�w���z[��w�CPȗ?Or�8s���>ǔϦ?܇,��V��iv�3y�l�ls�X$���'�V\#����9�b�S����8�n�|���	�0Kѝ��S��X��}O�B��kI�6��D@��T{ *�qG�������Y�>T�_45M^0��'�n���q�����k64�r2��pF}N�O�����?����w+�������珯^�ӏg����4y�'ucS�r�X]I��i
��i
�wAV�"������z��������n?+�_F��.=3���h���W�}}���>����E��발�4��d�)�n�X���w
�[����xO����]f&Y.�H*����m^�l�]�P��m-U�Y�c)��#@�A�w<�����9�����x}{���v�
�}hk�짮���Vf�_��;���3���Y�.�N����N��:��D݌���-�M�*�ぁn!�ƨ�Q�e��3WH�c��������3bJ��
�������Dh���2�?Dh�u\$��FO����dԛ�D*s�J�6:XJS�L^�Y6�(Z_՘�*�2��f/�^==�7⢴V\��w��C�.��=�����<�
=z����)�b>α���lz��>C��2�85i0͙���6�'�u��E�@t D�U��pG�>(�ݾ0��-=ZD����$��z[N�ع���ʖsfpb+�������be"�8�6 �2�$7�	u����$�&�6�+m�mѝ����� �C?��礲�J�3�~T|R7ʁ]�:õ�>7��E��w@{��Sg7��|�W�����=Ai{�^�\��	��ѡ��y>�r�TsQZ��T��Te��l�m@-��g�鰛܂�G�������)IHKmOA]�*S��x%]�X�u�)�C���r��lv�����U�b�Dn���˰?����S�Ziq���F������+�Ý\�T�����������/^��:�d���|x""�l�+5N<��s[��Ƴ][%�E-��yqg`��%�������\��ЧN�~�S��>ْ�k���+��Wʺ�?.�����Z���'>i�`��)�n�O1���t��߯Ȍ�`�#��T�&����J�n�M�Ҫ� ��<���L<(��
\�J�¡�\;Y3���>xU��
�ʽn�[�/��^�=u�֒-�S�d�.YS��d��'�1�j�{Z����6�����]�N������g�b�����&�{!V%�5��#�C�0�w��`�������'�v3���J !�����\��AO!��.�-Z�.ߕ���Bn_yc����Ϗ������ݵ��ejw0F�i�~>�2e���I�nƎ�I��i��J��m�Q�ƾ�,���lg��pP��7��pC�J#G�V�n���o���A��qO�&Z`���vzC���[2�Eo�ze�ΏmT��������ך��Q��^xWԸ����/sbRaLA�18�������_ݦ�nzg髟�:��t������+��B�Ejʘ�u[�vz�JI��"Y�L
�����|�u5F��R)O�Ҝ�%��Bt�w�W���m�|�`��(ʈ�ߝj}��sI��s�^͘ ���8��K���^{�|7Sv�=4t�m�T��FA��t� $�#Oj�ykD��z������ ��:?��11�N�ؔ,�������t��ލtWe�u�N���E3B5-9=�֩�a@-ͺ��9���=�iw��yS�c;r� ��h;�gqqw��3�Gq��Fk؅E�����M�
���pS����q�"�G��>�Uۮ}�[��#a�[7�b"c%5��4�����Rf����a���̺�i�T7@y�J���#>۠��?ݍa���zY���+ؖ�������t��r�-�� {�l[I�*Q�5Eni"��J�"�ɖE�o����i��o��0��߲2�����Μ��G`�ۚ ���Q���3r-D{+E�`�9����\= ׁu)�O��3�ΖX���6ϼ�X�V���A���5�lҠ���*jkl��:w�]�u�3����O혮�G��f�y�G�����p�m�
�QK�Q�O�?��]�s��:����ۓ&p�t��t����7+/&�����r��ѵΚK�F�&�.�z1/s� t�E����}r���lUZEI��3�Lw��~i���kC�P�bl)���c��(�=��%y}����ׯ�|<�8o�?�TOx�\�wO;Ϻ�̯�C��a�#o��j&�x��9$D���c��O���{�1��n~˟zm<�t S9S�dīf<?�۟�\�Sq*��C��^��O�;�9c6�\90n�3.m�Wg����Z#t{���3�ȣ)��0�n�U��jM�5����fE��@�wfho�]R�޼:yyי�e3�Rt�S����Ox�ӂ�n�x�Bh!W�v1A����f��J	�0��Fk���/W���`�A}�3\��֡���l&��@$%��L���D�Qk��9��8U����D�q�^��}������<�Vl�~�^�l��3�m����)��wL���2B�UL�>.�N�SxX:���\^�L���������_=��ځ��`&�j�F=���۬Z7p:�G���eI��=�)��ݑ�Ⱦ?����}����P=o�y��&����i�?��0�9Xmi���b���e�;��m������Z�@���k{Z���!�4��3a$Lp��T��<�H���ڦ�^���aׄ{��PQN�&]$EM�=����|9��Y�J���p�m�Dڧ�w��V',�e<R��֚�Z��1�X��=�.����ZD�s?�S|�;y��V�[���k� 0���G~���O���y�iƑy�ߺW���J����0�����s�E��`�T$�����;�ҁ7�>P���`e��8~s�����ؤ�K|O�	�gZ�]���9f����	kL7�
��<o��	���O���_������{�G��Rg�i:��(��{5"\�\q��>kJ�%�ZU%?���Zܯ�H-)oi����`��"+{���n�����@_�G{�t�շEOzuk��Af�ʩ91Y�:�YgSnYS�k�?��Y
�:K��Q�D�bh��}nE������px|x�?j����~kK���ٮ��n�*�]O�|+b����	����pj?��owJ�N�ՄP3�&�[�Z�<��8�Mj��6��p��q�O�Dٚ'9Ȼ��=1,��<	��.�Y]� [wc�4�-�Ї���ֺ7�##�;'.>�*hѺ��F����.
�Q���*�����.Q�E]̋"��sڞ�o/ƚ)��yѠ���ZK�f9�޺�ɭ�39��xμy
�����������{��;���'?y����G�����j���ʩ��7����������u�a��Yt����3	|�L] J��q�T)u5k8�H�?���{pt���'�w�B�Jg��Λ�slRB�nd�]�U����iWt��N�'��������w����O0,����N5��
�?
p��s�L �p���H;�����&�N��]�������/�'�ӿ�˿��Fm�� ]�"�����%n��G��{�rJp���?�w���m���������Ul��o}����2C��P ����P��5�� [P9�˂��,O��M}��Sb������:\ط�/^�&�8�~�Q�L�5.�;��w�Sv���Q�n�}
B��_��V��	�v{��[3��n�ί��t�i�Ʀ��b��HL�lZqD�_�4(8d��3e$ƚ;q�m9n�N��&�qeG���yb�}4�	�|ߨ�j���¬㣣o���@�E#���Ǐ��`�3�'�P(�X�FRuh�o��N�����E_g@k�@Ֆ�^SS����El��Țܔ�.���"����h���p���t�Uv���؜;���    ��;���|�gg�0��}�8[����'�N���*�'e��s�w�H��ڛ��Aۨ�{��?!�~��C�U�\�`[�X܏HV�s�i�2��L>�hx�n�ҳ琥����r�k/��ۊ�Caj�#Lnw��ە�y�,��!.V�G�{�E����]�D�q�V�JI�&�KOltq�S1G�PY�}0��Đ�뵅���u�r��ݭ���e@L`�Ø��u����{���]a�At�	_U;�z>������B��|sE.�wT)^��cSst~�̯��e�7��<OU�nd�;�魳0���}��:ka��G�Erb4�RzÖ���HY��`��8���`�!Ų�����[��׫�w=���2�7���5�r��*u�+�U�*�zk���<�㌺)i]�unn|��/�U��-������ww-��WϾp{;�u���FPB��(������8m�a-U(�L���W�N�Mu�M�΍)
��J ϊ��\���)�2
x�/C����`���C�����fj�ɟE�Y��A�Qqr���s@��m��|��\	J7��O6!���j$���G�b[��#=��a)��-��XI+�����A3'�5S����y�ur�p[�R�� Jy,]�%EKs��a������ً��Yu�W�6����d��`m��p�M?ߒ�P�����دf^�h�ë�5�}���$��$���;.	�=Pw��wI���/���n������}9�v'�{3Ϝ��C��p}��÷ת=!�SY���Ɨ�v�_ht~)�q݈�b�[=]
��MR�}��"-R.:����L�%J��4�L�1��Rp���Ja� �%'�^��z�!��G���zo/$76�bNHϡ�շ����&C���~O�B>Q���d[�����r�ȭ&x�[�ٺk�5��h<��=�x�|�$R�=�|	�zI�=��5������=��*qaׄ��KF�UFp���T@�8��C���~�X��sͭ��R�%j^�#G��1*Q�N�B��!ν��Xr�<�d.P�~���m����^%��m����FpiwVp(�@r��s@��$�	�M�o�~�����t���k&R&W�M����%�m��O��m��zVo;�[���u���U/9|��n|x��p�,�a2x��������<y���z\����ĸ��}	����s��;��h'��ɽ�{yr>�L&H#�����ɛs2� �=�W%��������o�?:��\��OpH�B`[TB���mr�2�d�̄�t�]KbR�oi�R�<z�<Y��&>pu|-y��r^voݫ�؝WM��t��1j����,�{��}�`� ��  �a{d�.�S�L��cSGTe�`A�uQ��q�31�rz�XX��������	lz䮰(���v����[�?p�<I�����m�h���@֌M큰	s�G���Դ��[�Լ�X�J�MR�@x���P�<��PL4M�|\���C�$���W�}%:�^uԍl��a�����W�{ӱ���d*`@ԝ�? �QV��wY�Qp|j�l\�c���<eՇF��z�q�	3Xr;<�H����J��h�S �0�qjߚ��9y��C��ҩ�U#<z�zmM
iY=I~����+*��A�����"B�*���j�Z���6b@�{	M����A.Yq�oғ1��SY�CAT57����Uv���I*?�E�*Ot�o#i�Ŧ���C�bL��,�Q38�I Ai1U^�҂�Xaυ�W�O#���s$�3��U��i��7�.�� 6�(KA�1��T�3)�M���D rE���D*�2� �C�K���p��N����@A�r*������`��Q�#��+C�9Q�x�[�X�{�m�c?`�y�x����K� ���R��;��6�'f5�p�Tem�Գ�T��>��?+���<�\Ꭸ��Yx�aoxh��'�E@�<�y�̆��.���p%���4��A���aL��0�{�)B3������{9�bR�e7��S���o	����~�׮*9+eg�*�&YW8�o�[�w�w�ߟ��._�!���6NK4���=��+�XL���<�w��Uq>}~���}:y7|��^E6bU�d��>K�I�;��j�\�Q����N1�L�t�ųU�N��5\���`�r/3>��ӳt������ Q����*C[Tzo������
F�P0rܠ�"hBE}�	H3�/�������2��7�+0�Q��6�=�g�D��'�A@�ҡ�'z�CūƘo��Ȝ��|XKh���q��st��We�������XE͙\x�F�&+�i�m��t�4����klk&Ew ~�;ݑ�u��W���>�����U-19�1��+svV-���F���5��%(�knT���}��B���1�kCw�����2{�nZ�A�]E�3~"��sv0�I�^� �j�ai*jjV\��y/����]ݔ����w>S�(%�4��������!mE�:c��~������O	����҄1ٖrN:Dd|cæǱ��6'	@�{��Ψ�v"��6Ze5���a��>��«Ђ���F�2�l�S�_v�?n&�VL& hN�h�G[�|�,�6�&�?
��Q�[�]�S@�xx�<Gcr�i��zp&�s9�Tjx���oٞT����kܵ�3*��fO(K�^$/I��q��$Êm����Z��ydo$�H	�24�PsR*4�%��r8 NZ"UL˺7�����X�k��_��?V��2!�emF6���y�΅Y�M_��19�@E�!�DD��.�o�K�4rFtP� 6L�^S��J:Ѫ9�>����x��w��Q���$y�3��;�%H���s�)�Z�#Ԇ�I�\U��	$}��t�B#��v"��j$�`J`��:���sNc=�p^���z|x�/��x�j�)-�^��_����7փ!Cx�]��~1'&3ȣ?�w� ������x�~4x{!��ot�����p�A/6���k-�-IT���� F��aL��+�4��%�j"BUg3�׊z4#�����xV�P�œ�_��� t�z���j�z�=�����	�&m��xCc�ԙ��hy��nNbnv�l,��{�{�MQ����lU_�|�{W�4��;��J�����)��v��!$�U��Ѣt(����tgB^G����Ъ��� �����1�kw��]X��gF�Zp�wu��.�AN�S!N3��w��$��;������dg���E3�ѥ�a;ǚ���r��ΘJ���#qݵ�H?��po�1�,�$#�L�[P¼.���p|�����%�5>@�XE(�����`�hA�2�����F�����d��1֦��ֺ�I��=I�z�%b8,|����=7t��+����zD$#jH^5���@������h{���V�4c�C�eʙx*#Hi�� sw`���d�U�l*�QS�nt�]U{����t݌���4uh
$9��p�9�'t��7�M����e��ZHG�Y�$Y����3ER�؁��ee[�O[u�7��(]�w��P��l}��P�<�)�@¹}��̂��#�8��5��)/��u�P/�f��������nG�O1��Fk�3��Ng�	���� <H��S�&�N:�����(y�E����L{A��qO��5΃�f8)��ʿ��	:܂���W	���$M�*�03<t5f��ɭ[�B�sc"�#@O�
�H��>�3�'` $���¨�Z�FR� ��BŽ�����kJ�;=W�/Mr������ɝg�Cy��]�Ye��.���y�\�8l5k���LUWjTQo&Dߜ�~F��%��J�x��X�{L�����,|��Ԉ�k�1�n1U�xg%,����>草
�EC�\�"�`BW8)LpC�����(����蚘���"n��Z�؁%�,Ktq��n�୮�@/�{-�����qa���Y�NaF5~OM��Z�R;���I-    \�&z=�+¯�Ux��G0�2s�P�8z�j���c�{�^a�w��x����+���!=�{Yswɝ��D�Y�d�ѩ��M��,�`+�%V�4�m��?�'[��A�Ԗ��T�$B�3�
�_K-���%%�1��[gvW����]������+��t�qy��&��:����oDZԢ�k�W�ٝDD[��I��&�?�'j�k�[f<A L���L���?m��%$�]���i5!m��~�7��`�J@�A/�P��q$�5E�;p�+�N�E'���g�$/�Tco��@Y���[�Lea�`u�eMg�(��),|J�x[�[�q���r�ˍo�������#�3�3:��5�7WU��x.�Gm�ef���G�i�x�Q��B�̇z��,�nhCq^?l}���˟�,*)0�*3��e�����!���d�qR&\��tb�)%7f�������Uj[������b�c��R�1�cG�4]-9�g����~�]�� M!t\h�\*�2W+:.9_K3�Ne��钜\`�B���`R�8�Q��7+jl|�#vcǡ��FA%r���Tjꮴ����[�i�D���@�{\��L��+7+P�6�Jr��d�Z����h��$���<s*`�M�8��M�);S�R�\/��U��2/�Y$ʱ~3���wJ�R̐�λ�dM>M0���WO!NR%R�=ML���>(O-R�U_-ʩ��ӄ�rn2v:T>΅O��qg"w����ă%`�Ó�6�����^�r�Y�y�L�I�g*�r$g��"[$UC�L&�$9M����T��I?�L�ن��y��Ss�#�1zߓ���S��jN`����qD�ۏ���~��(�G�����<�:���ܻۗZ�>Բ���K�����IDi�ֲُ����a��U,�Ҩl���fU�gr�RQ,pF��l�1��Ϟ�"��V�� �|V1�6D;�T.R��|,6�Z,.;.�K7����|T��T5����+�2V1�ٳ�V�Rh���B�gb��q�$�?�8��i��}(�H�2C�W����ٽ�&{"��c>\Ř��(�����5�qR�-�w$<�����0´�bڧ��y���E���N0�p����*��ֶ$�E�#�{��6���K7&��0�|�Y�F���i?�-T�x�L�Y���1��Z��l�n�+,���x���!�©�*����~X�8¢�{aј\ݕ��>�z�k�����Q�Amʠ�>�͠_��!���ܞ���G�쥻!י�1#{���O��Jv�������8���i��;���*�p���1'0E�14�߈���@+mI���eH,@nF��R�z�]��߃���@���XC�����s�5Ub���bk����A[a���^�l=M����Qtݎ�����u_!�~\��q̼�\ӎՄeư��Arǈ?��$�,��E����A��v⁹��b��ʟ���o(�ײj`��j����5�Wn�@x�W��ϱuk�TD���ҵdT��قIcj��� ^�6��1�x�y��qt�:Vp�捯`|���A;P׹��x+z����o�� ���V:�SD^a&��9PWe���{��臞.�jG�_w�R_��R���%=���6:mke�->F�H����_�2�Xf��}��E1i��S���/�;�TA�wrU4(�N��Y���J
�]���&\g��oy��r�_xr|C�{����2��M4ؿ�~�_A��BEz��N�>������+����!�S]�Zy�DTEO���i��2=U��1��e�sJ}��\�
꺻J�_�Z��o�T;�q���A==�nG�u������j��_`�>ܬ|�E��N���Qle��ބ�鼆�ޤ�YQ�e��<�5�>>�X�W�ց~xxj����$IXr���J'�Yd�Й䶊�pҘ��d�.@g$l�00�R���_��&��b_֊L�����gN9f�Tn��EC��T	ױ{%��w�;�H(������/E'��	��L�������2�'_{��ן�����f�&���["�h�t��\�5E��hcj�"؃O� �Ta��O[�p/_��dxx߽xw���^����*ϳ�ڽw�'�ߛ���z��F��9׾()6�r[��-u�i?��u���i���{��V�-j�8��Ϋȴ���F�0�V�{ml[�K��;}�����RnZٲs��7j˥�=��['�Q�@G���m���ôG�/P��ᅹ���s��V��
vu��^����VSb�U7.���# �I��i�"�v�~�885!��|�)D7�F�R�A��C��Y�YA�e��*=�a^�;"�ޤ�i9~��mS*�yYQyߧ@�������}v���D��,�����M�F���j�m@�]�ފJ�h�F�[E�/��mN���`oE����Խ�is{�_���/,
7'���e��-]Y-��P�48���H ���2%����X�vgor_d5�K�~Z��������u�I�����7��R�
�mLO䧂UB(��S��J�C�f6���V���ٳ�p�n�\v	�6hkF)#�Y�����Ԗ��_{C":6��
�P}?���i
�~��9�8̜tH�H�d��`�T�D0�2�Mh1Vv�i%�~W�8J��T����P#,��w�N[DGb-(O�!�:��y%�*���\���#-�*!+�t Б?���3�2���/�q	���+�g���D�T`N�]9D��_6h:LR�7�t`@���� �@�.��bB�@L�f��nUrx?!(��闝9��Îu8�nЎKWqv��貄׎�&�(c�R+T�z�$� j�8�!D�u�� �mj�����=S;�1b�_b��Z�����c�8_�ۀ�6�Y�\]c�S�3�'2�KQ���6un���Yΰ�ۼ!�(F�n�9H ��-��^�3�|J�'p�Ԛ����6��HkR8*��5��d�!���;����2p\��z��A�G^
����[�ɟ&��&{$->p�R����ݜ��ڬ&��'���0̛|��Hj���Mc�s]����l�+E��neI���\��2W7�+��$<�����o|c� ������Ƶ@��%�
��	OWn��e����k��8E��%S���r"P�OoU�	g�k.C�q�DY���.rL�l� P]+��s݉�����G��=<ۿX���Z`�|��}�kP{���6�y���6�k���v�����+�s�]�T��ӎt������``$y�n,hʽi���v݁������;��)ä�:�Nsd҆�f�3ޛ�p���A;��j��������3l�>Y��8lc$]�����JssWzF'��3���QX�s�ã���57i���G���ͽ#�G�y
�&U�v$#:i�C*I��^;"�TM}�Ԁ��O�i���\��M���xs���Ǟr��S#L��'���7�]�^���k~�zz��t�:�m�ߩ��ؽ(?�5]��z��m���?f�C�|x?��-�@�[3��l��ݗ���w� �d˟���\�r4�5Z���"�z�G��1�L��;�>1>��;����l@�	^<�y"խ�R�ө[ߣN
�(�[��l��צ>]�"�r�k39��|�uLt^�ⷧ\y��v��w;�B�箶r���Pc0����P�L	�צe�*��G��*��ß��ɿP\U��`��A?zfx�<��9�>z�* �"R��t7h�ʘ��I:�gi��Q+P;�����h���*�����cO�Rs������I�i�q�Y�T���[��,ܒץ�p��Q�g͑Y���ai���*�atP�[d��r��0@_�P�D�	a��ǰ���E}0 {��f�f�!����C��Sp��c�w��<p%����z��ly!c�ŝ�2O����\Z/󨜍R�&nB��ASM���ã����TG�p�t)�ͬ��W�o��mQ(ne�mR��������$������&iM��)�ƯӼ��(.�K�����K#���	wY��W�"侉�#��L�x%�    �zT9D����
��)v��Z�����BY=�Pl߳��Iqn�h��a�o�|pD�
��y�@pcs6�+�����iG�/�����h1l�}�d;BG���݄����{���n.ąG|?]p�3�k��-Mn�F�O�n|��3]j�1��fB���r��NR�7p��t�ط�����U���v$hd��7�Pd�Ę:Pi	�nߜ�x
B���TM���y�(ԫLw���+����ᇜ�o�=���t(�-�Q���E�54��y������'>w�0+�n��I:|[�sS�G�-χ&��p15+�i(ca��o�zp��m�p�'F�����T��gkj:��!OkC��Ɯ�&���.N��?WU�Ws����/Gn��nW�.J
t��n�=QUr�!"i�M�t�q>�Ç�%S���#����Z�inZ2s@Q���h��F�NMX����P�8�^�bW��YJn#Ha�*K9y�Xd˟��n��%8-�N�DI��_01/��v��?�ǗKӲ&�{�r�����������u��ao5U�� f"�ˑ�hn�ͼ�<dޠcɊKR7��ỸW9�	+P7i^��@U��lt�^}�s���:^��.�A�0Op�L�*�0!8�
p��ҏh0��n���D�B�04E�Pӵ�S�^@�6���(�?W�i�▧P
+��|N�?Z�gHxw����0߹q�d\Y׈���kw@�jfd��$��*�T�A{�:��e��A����S�K��$K��8�jt�<}����mK��6<�	.;c*�0jZ`�)J���)���j�xA��Msi�[1�̤���q���C'U�����1)���[C�0^��o<-�Fỻ�������"���6e���W����?�`�o�O�Bg�ʁhG���P2/���ux���vy%u�����&K��|�5�?��i���(����tQ�5���W��=_+Vup+��s���5<he@g�3����ɺ7#�Vb�Rh">":?�N���DY� Nc/J$3�w��p�v?�յ.h��R7ㅜ�����U�H�]�Q�y�izx��c���v�T�&g4���q��b�}Py3�zˎ�T�E"��]�!J�>`�� 6�5�T�;�O�W�{:���^e��ei������5!_�Q�5�����F�Sc�5٨�y�M5R�Y��2��c�ۿ�d7h�d�ΐ���~�j�7�'��=�˩�Q	h*y�
��ú���_AC)B��L0i[�痳m0l�����u�k��/S#����d���n1+B����й��=�5,`��d�4��L�f�p"�R'��X��h��i��m3�$��մj���_�.���2�߫Q�P��j�D��0B+�?F��`��υ-��#��'��
.jO4�&U&]��tUJb#�wX�`ib���3�ު��|j�T�O��7����6�]D�Ng˵1s%�;�؈�4�:��5����Ԅ&�Ҫͪ"���9H=�M�2͗?�㠤�5'��O��RR�)�X/����M�r��A�vo�[N:}�Pxf1��l0�d8����2Ԝ��r\��S�hL9��K�	5I96,���!�P�/&�={�F�4���AwV��2���X�!O���5�
�&�p�lb�Pr������)$�O#��󰬮�|�딗m^�)��A��Z�\�0�J^���-q�1�4�1���+�n77a3��t̊��2p��=�����|o�J����/��F��y�lc�F���Ϙ��� VW�ͅ����uݐ��g� HU�J|+�IG$
@; �;��?n��бK��D@:s�B���?��5�U�y���To �_�r��xs�\X}��}P��l����{E���3ꯎ9A��!�,��`K��|�h��?1�D�^�g�����Kz�W���?�N��G;8��h+����S������z�Z������ƛ�Ū�a:湁+�dX0���mt��=e��	V�=r>Td5R���s�YP�	���+��ęn�%��i��4���WM<״<�{�_�6��l�գ��"�$���D�C��ٵIPʉ�I�7��fh.r ��+%�cb�*7���,h;���22�jɞ�f�L��R���~*9���P���`D(�9����-*<a"S�rxN7��+G��s�k�dP,��382�$��/���֗�)8�+㲴�4�ϳL���4���9� �\���z�&L6c�-e�����U|h��!�O�ȩ��c��Û,�1��oHkU��^(�����:<=f��Z���^����݈Au�X�����F�N�,�����涑-����qWv��D[�\�=-K��z,[#ɞ~L"!`�n�7n��o���jY/zj5��?�_2y^�B�$Hʷ�nU��@���̓���IJ��1�V�B��e�L+����]���C��E���Cx�H�~w>HJ�q&N16��lC��'
�R��Lmͳ���OZ�į���}�+��!� 4E���+�z��?���y3�p��ʿ���
b�>&B���G��`�j˵��*��6���K�56�t��!�;�S��< '?���:	IG`9r��T}K�,)��[�CI9.4���w��:�d�\�ڑ�46}��cV�6`'
s�v,au>�4��"�~��G�O��ı@���<� C���@�Դ��8��)��]���Ф��G��)�}�Ra�B	�TgW?�$	�zؤa��R"�c��1�����O4�5:hMs��H+�-�"�)�]i	��3�.26��t�#"���N����n�\�)��;7���\0�	*��7�m7��0����R��{�a��iE&�X��` 7��O���+ks@&.�5ocp)P���[.���D��b7��v�'[ڈ��*����=K���Ic�j�V�\ȳ�=���(r��>ʾ)a�(	{<.9ڤ�A<��A�e.j��%�|g�@��%�
�k�^~��a���l5mZq���(�����~VZ��} o����֪��q�*�����0"�r��<ۍF|E�;F�Ѵ��-�g�y1@y�)�2j�?��7�>zf�l���:�?��E%���Q��� �>E(7�,0}���{a���g5HB��1.j=af����cQ��	sTiSC\�q���2�u��5|���c\9�rRPM7�f�V���3�7��ʺކ]�	�
K�\��� ��1� #\[�6Ę5b��A���nD~3G3��E��h2ʟ*@aP��'?�3�%����\tؼp��YW�ך����]/��H��E�V̫6qʉ��Z����{�dd��ө6w�m<�aqkv�AQ�4��uz*[|A�#�ԅ�`BB�g/^��K�ӽ��Yo��l|��佋ׁZ�-1x�,طy�1�O�:ߙ��`�UL���J��7s�4���#�z������d�"�*�������̊sr�=%��}��ꔔ�ԩsII�U���Ц#x=-�^��\��v=�<F8��1�Ɛ�4����/���	�+���@�G�,*P� A7G�2,�w,�����3@5�΅X�|�<�&2s�����s#=�nj��U����uk��,���:��: J
�/&D�.A���U�� `��+�?9�C�,;�W(���KB���� v_���d<��J���_�޳o�����'kq��|��KJ�������ݐ�PZ@6BN2y'
�a!��t�B3_�����b�o<�oc�V�R�֤����m� �a��BS�� <N�m�2���(c?�o`e�:.x��4��~���J�g8�͜�O�R�&��4U��B����v���	�3���z�͎��
�*�ڴ|B��#�����Y|g��׺����1ݩ����G���4�Y]�f��_,n�s�E�	�x��ͦ!���983(֌����#0$�q,�p�ŭiEnqA
�.| 	BZ�.՝��ض5{�Jy�4��� �53�
UE��h����    �jM7�\`��yO6�����c�	0�
0Ɛu ���|����>( �j6�ѡvp�����3&'��_�G�?`��1�������[}� X�ڶo<MD�;&���Z���n���j	��E��'�� �XK�t�9'I����xt;��(1�8"���rH�:t�(�;�O)k�rɋ�=(�{�������u��c�c6�\ێw��c:( �<��E&R��ӻ�YL�Y���ȇ��9I�4!ߚ�F���f��ˉ�õگ^}?��?Z
��l��'�H��5&ً�ИȔ�w&�{��y�i���m8-}�(ցg�\�Kv��N>��U�(�w�,�!u��4�Y�öl2�K+������F�Q�&���[e5�����{�	X����hݙ�VH�^�9�,��姓ś�)1K<ĥ�O�R��nGŽ.3�jA��+rtc�e.Ԛ.�4O���W� �Q�����ABLP<���̋5�JsF�� o��Px}���_G�p�s�M��M��ӿh0.~%Lh-r��7RhN�ξ�e�S�A�l�ra�|<Z6=FO�44�Z\IL�<�Y(���j${I0�	`��l*u��?�Ubl$�����6���Dky� z2�t�I��SZ�i=����:f�=���_�t���	�V`���O��%3�<����ѱx�I�C�:��ʃ��t�� =��2��4r���ˣ=�[��������ߪ[��5䘀@A?w�Rm��PdYr�AY����)�V꤬u����b�*�c�����9�Į2
@�ҁ{п�rI��.��b[qb��C�4�Jlv<��|��r5l`��f����sQ�%ěp�I�ե�8q,,��`Sp�q���q]�be�����6qՇ4D�1`� e�����P⬸3����F��!M'�R��"?�ϙ�[�����m��I��Ӹ5j�
m}��F�f�&�#x~e܉t��a����*���Px�G�N4�'�g�3ɜ��3=��U���$�2J��d������.�Η;f4����U�g�]�V�J�,/��Z���+v�=�v�
�<�!{1xB@@�%�qVp@k= y�L6<2������������s{���5�h�}10�L�eA�<�*n`��� z
݌2X�)�V�M�يZ� V��~�6�;�3�b6G:��$hE�2ps�llk_XY^rc��\����E�qg?솴Y؇�����Npc�)za=-27�w�A��M	W�m�����ͳ<ӛ��g�S^��\�7�3�/T��T],�ڕ�j�p-}%�"��o��WTC���R.)�%�P��t��?�>�A1�4���NPL��#�����R�l�c}LI�9�+(�1C}�#r�1�K�VíVWƿ4�U�����H���4�����o7��ii�+���4N2�����<��U)e%L�^п �����5�����U0nȄ��*���:����Z:�VNU;X>�V�p9�^^>�ۤ2o�����2�VS�P����Z0�,�-c"+�Nc����H��R8_�7Ɓ�M39�nm�4F������̈́@}@�5�E�(=�f�_��4P,Ո�	@5�7H��"*Y�~In��&ڷ�����mo.�_�9s����X�~s�9�;�^�DF�)%TSV�:�h����a�*@ �)Ӎ��u�e��(��R,�Pa.e#ՠ�h���X7v�ftW������ ��fA����2>f�cl�?�B( Ÿ*��=���TqI�C�"�%��{(13B���8�%&a����P��=@%<�ɴ݀�A�\�kP��#F�����ȃ%f[`ǫT}��cA_f�����Mx!(VPQ�dݗ)�O%�N몹�,Sxp
��&R����ϿB��xL��טp0���SF�l�t�~B���xM����p�����Rm��u�!��� ����@��Q�4 D�d)T)�g�|���\��- �V1�DnΜ]kY�%�mI-�+]���T:�HjPd�!�r�S)P1�t��c�Ι�/�)i�$Ca�e�i����L�� �KslWk��@�h������y�����rf }����^�_�$I�<����$�.z�;@<������A�͂G8���0z.��ތ�ߋ�C�Y��L������.o3+�z�̿'����wߔ<�������y%W�����+����<����9��TT�n�/�]�T~�='=��FW��\#��c}j$/Nw�Ɖ}E�-r�0r�ta��K��Nt�q[�t-���)��;U�la�H��`���s��X	��}�0d�,F\�l�i'�-*܃�c���D�^gi�~ެΏ	F�C��jg����+ʤ�J��'�&f���&�;��s�z.E�8>N٭�a7��3R\;��}�Ѵq�mm�!;��SS{s̀��dJ�QAe�tA��p��p��Ja��MN*�ih�Buh�k�zP�?%d��
:z�'���,e�00�����A1���dd��Ĵ�h����evp���Q�@�͔.w�H	�;p?q �-_�d���h4$�/f��'g8,���2�My�=Ժ���:*χ�gE�B\�B�]�yv��A��n=�;�Ll^C�g!ϧS#/�ȐV\�`,I���@��RYi��I7��?�� �v��-d��� �8F�Ci�;�g`+���uꑨ��>ǔ���p��ߚP�9u�@�-u
.r+.�|As.rT��4��>)�;<pH�Z���
������S�� b��Q�k&�\�$d ����0x/!5gr���<�����A���*�_�OK�Ka��HEg �W�N@�CEY�,�9{;C[�hR��l8�@!bcH1�< ��>��έ�j���9��FS���t��n���#�#P߸Q����%Q����:�/�b����W���݇���G���X1���@����7�ٔeo�s˙@㸈�*Za�� �}����{>�Y;ti����ڇRsvP*�[V��� �Ya��?ѡ�T=��QIɲ�W��,�P����د���1�=�^m�<)H�@�)`�c��4Y8���l���5���Z4��r795`X�V�����$�������~}�ts�����G��o��&����J�����4w ���>�笿�;�a��މ���L�9?f�R��*Q� �s���{LK��<�[+��̇$��8(�_��u�IV���<B�n�@��z'�]�Gh����*�p�
�9Q�8-�#�\�W2B���e� ����G�q~T�g�H�[�P��عu�Z���b,�.9!H>�:��\�~5W}L)}��:��=}�����?`���Ƿ�Q�;�w����2Ū%��A�Q���e\TlC��-Ί�#G�O�e%!����8����$�j<��1�k��]P;o�Z��o�)x�c����:�����x�����,&dC��Z�(.7t��;�k���~�	�����"4��<�ն�G��p�G����(c��6L��W�M���S��);�Ҙ�Z�,�#�c�쿩�f�u�P@�{@�=�g0^�:��Y"����-����u�{��.�V��&�k#7��Û��h.�L����.0Q��~b8���H�g�-x��e��	#�~�F��rc �uj��2n4D*;W���hf���B@�Io^ulgi}�ʲ�X�h��}��Um���=xÍ��h�����V�x��ͮ�>��2��6c��
\�&�
�*9���U}}�@Sv�wx�����6=N�.��j����'���:&W�X<���=�͢���Zfa�gH�4�hU(n����h/#������~�iW%؊���2�*�@Rk�k�D�� hz��tzqj毋�)�/�QWx��a�\��������=�t�z6��C9�Qb�Ԩ�#�s�Ǳn�tP#��!��>����#�E?a���w�2��7g	 ���L�7c���8@�*��YM��ݼ�ߏ�{�q:ɩ#��m2FM#�knn��ě�#�H��zG�~
�A    "��t F�t�����N>YQo,��4��gZSg?��Qsh��s��`*�gSDg��t�=���R�Z�j������9Ǘ�r:��(��\�,;cB�	�3\��R�bǂnp7��h���K��L�/6�+e�ZL��X!ǳR���W���f,Lu��ۍM����Y��vѱěX�t�S�lK��dAw��H:�A�<޳��%�ڋ�` �B��'�UP��Ǝ���Zp�sٔ��
Jj�R���3$���&:ĩU��
3�k�AqC��C�J2�|`�Ŭ��V3>��t�HwEtuK48n�"� �+H��g�����df9�_�;��I��~m�`�pO`�Ms53�07���޵~. ��VKq�����U�wR��K�Ҳ��C�=�;(mВL�An��Tz�8��&�����H�m�r���q/'5��>�b�Gcu WܲR�2�	������m���|��Ҽ��'z�~c!�qg��YC�BàJ����0G⵲c���K�c��!g�)2���@�E/0k���m�:�l�^8�%�d�N��������ׂ��6N��i�(��)��F�D3� F�($�$��\�j�I܏I�0.�i���N��Ֆ���-�k@�*���[��ի�Tr5�H�JX��VWm���o�"*��W�5�zx�m��)����/(�#jm=ڣ�[�$�E�'�׸k%���7N衪�A�d3v�)��O��4�{�A�w7�#zxm!'�Q�Hn��֋��:�Z ��3�Ө�l2u����s�j**���!�Sᰱ�KܯS��þ��jF�>�,�n͒�ձ�٘�]�[��A������I��$&"��)��
��:{yZq�8���\�  ݿ>j�ݼ?/�;^e4]��(�tc;W����䴰Hqa齡C�����`��˭uG�-;�ІB'��o@�\%^��>nC���'��G��M�pK�>����H9�#�cx�z?��O�UL
���g�`w ��,���Ĭ)�����^�q=�bjǣi@��3�"i�$*6V�3��.�i��3�{G����&���&) �K�P�Z�D��S*rB1>5�7�G�zj�A��{a">�X�E�6Z��ϝ�+A�I�a�5�>����=�2#>��=��k�xDI*}9�)�+Of���8)/�=Eɖjp5n��K"1p4u`A+���uz�g��c��N��qU7�	���g��`گJ��3q��0�)�1+&�%ݿt��{�b�{��-�@���~}�
�����_)���*�}�|D�U��}**�G��~���~2���8m�b�,��J��A�~J9^	hVZ�v�hFqƞ KM7!n<�0�Bm6@T��jk�j'��4��Z�b�PN?k!���=��i�z�K����E��P��ÖR�2�5���?���AoSF���椅i�ݲ
t�q�1�>��L70>���^}k���I������\ƙ:���b\NWbM5�mDb@M�job�Z+ع���pf��7�0������1݁��3�[}!�z�XV�Oa�n��d�/A��uS�0H�~����D,�4F�T���_氎����M�68�aX���M�O�!�,r[yW_���Ω���1MѽNgf̰��� �����Us�ߪ%��#0�����a�䐁G�M'���(*L��:�/<��wܷ�2�.���z�w,֕��c����J��[�B�B�"��S���vb�����b�Q~ ��7��Qھ� �}�'˦~,���J�ݓ�I�}�ͳE��d�`�.����q6�� $��g2��Й���tbV������qt�~5Uc�[!���Itt���>�|sv����ى����?9�8}{r�{��E�h,%�7G'������$�J���>��vw�Ў��#\���8s�h�� �8C���|�~��h�q��	�
���9�4;�Lh�d?+8Pn2 =�����>~stu�A��wE��O��,D-�A㐽�p��Sf��6>�m�̅�Z�a�y��6>�;��9#|������Ѕ� �����عH��k��En�@'���w*ɰ��}eP����J�b��i_�
�z�zd_�l��lَ�@FB-Sx�!���5�\��>������4�ͻti6lM*`��*�7�b�1�@"'�ɦԕ��n�{��+j��ITp���ؖB���xc�U+�(����Y4R��
{��ҿ��4�u �M��Y>h{ƭ�ou���Qb:g-�5k�B�e��i�h'�[�DŔn�'��d�ϛٲ��ZBI�T�D"��۳������ב�qB�g���[#����I�g0f���F��:�!C��B�P��������oX-e�O�A� x�R&'���v���誃kA��6�ܒYu��T�TL!�j�@��\J�������dM&@���I������sw(
du8C1�1qpP���Fr�%��F�:$��7�c'V�)��%f`�N�Pg�si&R�El"�ʺ<����Ӵ_b��'���?�a)�A&U�^�ʴ%D,6I"~m"����c�=���2:?z{rt���j�'Xh�2���n��z��;�E5:��=b�
4�ʞ"rMڬ�.F����5Bjb�+��xC@���T���'}̔%���l[��v���`�7�O�y2n}ܱTm����m`�y���UC	���;��)��	���ʜ��>���1DK�"|�$~!�u�G.�\���kEIvŏz����������F;;ѡ��.����k#'���t�rM�$���Ss�w��.WORfT����Ks�D4�[/jHYW:�������?ƞ�ђ�acj7.��Sp�f��~�n�\"4�qx:�b�z����i�h%r<5�A-�k(9v�#�H�d[2|V}&�L���i�VU��0-|�B p z]�s�K�]��g�m6%b�}(P��� {i�ͣ�$3&-��� �Ĉ-]D���b��h��~"ǹ� �Tok��+���;�۽+�����g��t�����&���1b�6�+�Rɡ�!���mr�˘������B�Y�E9��>�u�����[����b-��i��9��� ��T� ��S�[���8�/�4�<s�\��h.�ھ5+����&
�4p��29��A���:�S,.��IeQ�?��-pd �C)ƮN��gmU�o� ,����U�ή����>�]�9z{tE�ӷ�sH�����JE��~�&]�!-$l�f!��-���V���r%�=>�Wb#_~Fұ�yL~�m��lӸ���pm+9BZ�[�\� 7%��ջ)�
���R�n� �0B�Z��x ���|�&*c��C���7Q?��L �A���d��eyc�	��s��#�R5�����܎���r:�I�*�P��QV���+v��e|�x{��+�5��W����S�r~��VC')�2�~�������4�Aʱ���-�L��M�	�F��x:�%VU��%� Z����>-P��n\��-��x�;̼T��4�\�Nt��N��֞�I�/<��?��B�Z_��o�)�{��)ax-�y��gCa��l$�F�uZ�f$m�H:v�@��]�K�x�+y{���)��f��)q�%w���޲U�(t-��`���P�r�e�����ڛ"���"��ϋbX��g(���Xk�7c��h��y�֪"��H^T�[�!�[�<%,鞤�0�>����d�H�����"����[N����?t�����܎��k��^�
��~)�۱e/8������61
��5��6�W�u�[���������<���h��+�P�3��=�V�J�D}�-;|��{5�i0���1�a��s,_R�ǝ3���C�.DkG�)��x�	J�r�v,f�=��B��t�GK�&�q�9�``~u��������*	6˶���;v6���u�:`b~D�\7��׀)�
�j���YgV�BG�/=�ۑ��O�����V�W�Zؐ�������}�{�d�y���e��e��γ�����n�������������tq��;9}{    �(�����:����d�����?�TL�*��?~��Sqև�˫�wo�?���<��>�}�����ɻ󣳷�	�x{Q��d�D���w�'Q��')aӳ�����x���ho�y��~0�\��>����'�}�p<-�$��ݛzs��4�/gׯ�GG��W���ˣ�o___=����>�i��޽��ީ[o�.��>_� /�����o����|��p<�DO�Y����n{>w[�ۚϫ|A�������S�K�������#P���5{<�D��x����{C�i(������w4}K/�U���~��닖��q�A�}����P���6z��A����u�������s��F1䂦���j��(����$70�%ڝ��%�m����%�]y	��5��t�P��,���Kȧ)����\B�������Ȇ��W.�;��˺�V���"�G��� 1W��H|�O�m���Q�eWo/C�w��T/�I�S�uA�|��a%���U_o�T�8�&�ˋ�����E5��R�Ov_<��U*���/�]^_��qc�р�u%�c%2�7�ʵzH` ރ�i�I/kպ~��b�-vh��gֆ*c�$U�L)���鱸1��ю��ń_��5�`�GP���\(���2�/����4��?�*�שɿxxn@����j��G��@tщ�q�%S�Qo�-urS�V^�@e�_V[:�e�P)��C�N�$�Χc����3��[Ϳ�~��y��V(cY&� �b"^�A��x�mD��XR˃��.��`��o��u`������m(l���7�Tk4�M���*s���p!%9OL7�%+J��� +�L7�D؛�,��_�������p��Bm����ϕ>�8Z"�A��VJ�y+��YCB��S��e��$�Bwʜii�2�3v*���.�������+͡��^�P�Wjt$�� ��2�5b ���zh�:h6�����W>�|��uTs����nv]5��ttS/�T����0O��x�CzKC݊��G�yVc����3��4� �;M�y��
�m<����ucpjSB�@0]�ĊT�+k� �anQ�ၸ
�2q��j��蚖-�#�{F9)r-G�*�=U0�ncR!�ʝǮ�Xܕ��'�.qO(��n��-¼TG�8��Aw��7�}���q�(R�����N�߽z�f]���*�nd)�?���M;-���M���?��a(��UH��Nkj%�;!a�Wc�-��i�ַE�&74�h���Z��,f�PB�I�1`K��Z8�kys���7qY2\@��h����������?PK��7�l _�8N�m/� �{]/0*-�� �ޙg|�|�V�oF���8m`��<�ͷ+�#�4�+�8z�)`;V�xFHHn^	s����J٠��3d�0,=��u�����|W	�^�Pk)D�hT�m!V�l�A�U()�q��-�v���n�b��h�fե��M� ��Fa2�+�bK�f��S�����eς�va0���Ӧ�Xt�3�W� ���?�/5��l�zd��	����^>�`Xk@�98�t�S �mf����E=���&�k��k���j�g�� ��Ԩ�:���!P���P�?�S/t�p�<�hǿU����.�?,�"�]��������?�Z��z�]�voiL�e+gX�v��縶|�����,\&gђ�GVX�b�/�=]��%����Ek]��nm��oԬ~��Q+��
������`F�"x=�$���h�E!NV��W�h��lR9ܖ���ky��`e�/�C;�W�a+*���EϒI)��7I?���D�8��3p�^6,��	tt�Qyۚ	�*�*����k�lTi=ޗ0z��u7E����	���X��)�����jl4$���l7����|f���k����?�&��H�R�䤘P�=�h��ґ�+��Ć�~��T������붉����*�sL��k�8J>�y*��[�P��N����DV���I��n��%�_ߊmlJ�宵���Ӂ�k��_�_Tk;���c�[��3<�0��h:(�Jˡ��ʭk~�c��>�M��;�/�q+�F���{]t1N`!u^ۚ��`�UK�r�}�}�`�$-99\��.;Cm�Z�V�"m�䦼65yDu�v��<�+f�j5�aƲ༼��
���������7��}��VS6��Ro ����'}f�0�y0ͷ7H#=����(��	�Ȭ�O�E�CNh�3KG��9���d�B"�*α��3�����K,t�?KѠ�V�\:q�΄fk�aݳy ��.W�[Z���ԫ�~V��ZU���>v>\+���P����rw>;k���P��|ań:�q�&�!�91�EϵG�@}���>r�"߫f�kz�v�T���_�(��jJ�u�8Dr����I�X.h�\��I
J�M�{@Y�m�-�����e�kɷ=fn*�li����`Z&�_�*{S/��u��%g�ʲȃ�6�������z��)���O�2n��gL��-��Ah����k��W�޽9=z�Q�f�`�U��'��Qs���g�i�Z<4v���?���ޥ����s�O�z�a�H�K�v#`�%k{m���S|=兇��Dsn��d��>��+�R�>d��;���~l	���x%좧���|�oGl���X��h�o�o���2��";`'ܰk�U�F.�1D6«�ҶI0³~��:Gq�)��G[���+�:�hJ�t<�{ϣ���05 �L鶳6�/�o�TPn����S�H>ӸnÌ�ڌ������7n�&��p�Ra��Л��_2m��VwZ�)�."(`���v�r�����ПmN��w��Ib�r�_\>I����+	֮�P}A9dȎh��?3��V�`&.���v�i\��^f��C���k$|ې@ל
��x=�Z[3X�o����(hT8G݆ ���Cn��d4�0=7	�=k��۟�����l���=Sy�kN{����|�i���V+����>��ԒfA
�I���x��X%v5*�97S!c*7����!% 8�M_t�`~*�ę=0Si�]M���z�P�X"b���8��o�cеA�6�		lxϽZu��	]���۪M_p�7����IL���/�Җn6�mb����{]/���T�\%�)�wn�.��N���\����q�e頾>7f���δ#��R�= u���[N�e�	��T��a��a�&G0�?�u�C����G�zWDU�v9E[6u�2?��W��"����ǹ��2��U�xw!8�c���)���+��Yþ���h���~~IuMŚ�/��HO{�5F�����m��WM�b�x"�m���ed7V�4��P.����fλ(S[�%Π}��?��0G�PR���Y"v� (q�e�k�	Ӳ�-O�q�Eh�	���3Qj�#�޵�/Q>C�!��(�	�,t��٭��j�}�$]�̦�rf�v������0��0ِu�sN��˻�+�����/S��Z��
u���ߩ�U�l��}��_Z��_wi�>�	n3�z-��՝�L0t�����_��lS/زj���|���Y�:���B-���y�YF��Z~���5b_�y�t��D��X�/���?ڊRJy{:�++������F�5����+��m���H������"�[�UKЗg{����F��)� v�m�dz� |��p�!#|�+�K����?)�vH� �̄��v!����Z�����(٢�2��oˈ�X���W`�ԓW���(o����V=�\CX t}ʹ)"��gM�R�6%�E�T3��D�Ʒ���7ΐx}��8t��Yٻj��l¿r;�֨m�3��ē]}�?�:����EK�`�< �҂)�\@���b���a��7�,�{��Y�*�|fi¢X����E�S��Xf�E;�����}!�$c>������$Q��Aݤ�������"ޕ�;I'S5��Z�JG�i5��awğ>��cӀb��_	�B���[=C���.F-U��,j��DΤ�z�mޙa� �h��1R�����v��,z����|8�h�6���$`�    C���y�.|c����)�*�Ü�����v��g��t���V}�����[����Qd�,��}�J���g�;�aF4�.5L�S�I�8@y�q��b�㡀����{~��s�XjO�ά'kb�E-?*X����L�^��B���^}�iW���gCS��J{�0�xr���߼���;��<7Y�����3%m�Ntz����L��47�:x�N򸣾2�F:��C�0@#V�I�{�Ϸ��uf�;2��e�Y�4=�I�(�6���Gk�p�/׉뢥S/0C]s��X]���Q��"��Qku>&�<A��."�am`�%�������'���z?�p4qTh�,�a��6?�>8>P[�4��3;��9#`�&�V�|�C�8�ږr�PcVy����	5M�}�@��Q��xڮ�L'�Cg�>܊)����@c �g�ϫ�*�M�QZ�Z���T�K���ܶd�UfY'�^-�)�8SN>/l;a��e������h!�q(��C�<C&ilZ]���_���ў��j{����5��ݛ.膸u��B��J<���{II�k�9֧2���Q+�a�g��;�,�N=A��'Od�6{��j���s�H�S�hȶ�GGAW��|���s�H�&�������aZ��b���oau�og/4y{�M��9�[D��I둭��ǵze�_4�/�G���㪫v��5 ]��6��!D��'��+����2VB.���G\�2�ؓ��wֲZ�\�2[�?.�v�i�xoh�����;>�����E+h�q�9�3reE񠿽�@�z��Ҟv��F�]�M���n�[#e��n���r��,ݯZ����ʤ�GVU�7M}�������d2~��W��w/Q��ͶN��P�]�?��t����W�K~���y�W�$��V;�$Q��ǆ�ȧ��hb�%�b��)#�&���[rLP�mJ4A�+�H+{�O9.J���hX|�Kh/��H���Ц*�˛z��&�`wI���/(ؐ�"��|/�����Q9ى����/m5,r��U�¿��_��/t��������C�OǞOǞOǞO��S��3��O�O�O�O�O�O�O�OؾOؾOؾOؾOؾOX�'����	��,���u}:�>]���>O}:��t<��x�s�O�S�cO}J���>�	{���'�O�3��g>a�|��=����������'��'��'��'��'��'��'�O�s�c�}�t<�?����s��/|~���x���§�Ϡ>a/|��)}�S�§�Ч�Ч�Ч�Ч�Ч�Ч�Ч�Ч�Ч�Чt�.�w����_ޭ��������߭	�ݚ�߭I�]_�w���S���sח�]_Pt�-�}��_��絟xt��;�)=�Yr蟁�>�}�Gޡ��'ܡ��'ܡ~��ġ/�|J]��������W������K���(6ե:�CC�`�w9ΜR�����(g�9���4�&xY2���Ǹ q��=�Y��	;"���i�a�&�䖗ZY��f������o.�|e����2w�o������_��v?�w������}�/���+��W���~�/���K���5e��}��?�CWw[��g�2���ϟ�[�k�U���c��V5��a������D���a:��H����z�Y]�u}�t}�v�z��u�"��p��ğ�A�a�@" fc�Å�u ^8�����Nt4�	�I@,\S���~\d��GGѱ}|���N�:�Ya`��E_[:��|s"��H����6px�$	F7�⽺�PWjf��.V��i�h��/<u�e�����?Ꮄ�V�[��,�f��;��@�!!>Pn��4��:!��=�(Շ:�%�017��V�N������ӴT�zl0M��^tt9�zg���N�a�d��d��}RF��]�=q��3�i=s�.�ȓ��H��!Qv�8������P؉^�w�9��x��Դ}O�w}˳�]_���*~�EK��L�S?����D�&g�(a/���D�\�c9��锏C]�SS��f	��� i%`p����tg�0}p�B���U!]��@`c�6�W�����	e��w�qVLL5�Z��~�K
�ZA:���|�}V��J�SD�nS�/^`�������f�E݈������8d�	������+�Ϗ��P��&)%dv�a&<C�r☠=p�Դ!�ˁ��#p��Ϡ$��D��+��P���F0S|d��8�p���j�;X@7@Q�x��VU�y��]��14��+�U�D��
�9�vt Ltމ.��=�ҩU�%H�j,��B��h0��(��W��[u��Z��t@Q�;ȹ���%TWB�B���S��]Q2���&p,f��s����p6oM"�1+��8�����<0M-�25a��k�6�cf�bH���C����E����Ô�U;F)y�2#$�P���)0�g���g6/$����r
�A�r��J���a$�ݨ{�nT�$b,���^�n�F'Y!����"o�c�Z��,.��t�k<�D�f�����S��i�b��R����HS�nZӆȦ��|�SX�y�d�cNe���&�'p�w�7Ӛ.Cq=dS�a��[i�揀	O���}��g.��0����
����%b��;%k�>U*D�^1������������T�����pg���f:�t�GoϮ�
(��\���_��)�� �D�:k)��\(@�&Ee�fp�m��ٵm��]/�x́e��T��O�.�S?F�`1ƭŴ4�3��ދ�ۦD�����]��o���7<㫑�TNY1!/�SX����ɔ0�P�jL_�o�RF�A��t[N|4���>��_a
�����"a�ⲡH7� ��(��FlY���f��d<�
�M������ḱf"��V��F�]�������s�w8�)#5������������mm�B�7�{�����{?���)-���̚�qX=�f�K0�$��1�m��b�,��<af��(U��Ci����ؤ�{�D _�?�!�KP����S�F��D��T��)�S�f�f	d��i<o��{��rFѢb�Pn@H���������>'G��x
K
W����[؆�D?��&#�u���W��"�H$�p胲��o1�͝x)�`2� ���di:��<.�"�"��e1=�|�gYz���Z������XM����b���w�l&�6,@�}j;eGu����n�ȹ��g�*�J�ac�iW2�0k��6�)�z>/(�F?�.��F�����'���p�V1�}�)�U���X��/�W�Q#���S��X-8�4�&�,<Pg��n15���l7'�5~:i�|�w1�{uo��'�stW�奖#-uI�&+E_���2p
�$��Q�YK�u�~@%J��LaQ�}b�_r�}!�)����B>F�L=��L:�""�����ʰ��7{��7=N�������3@��Њ�`g�{O}����T��~�i��N̊�1����Iأ)���Ylm�
]?x�V2�cZ�8�O�=ֶ�l��3f��f��Z�B��
��5#����8�ol�/��Awz\�өA�����;H�f�?I�7���pr`J�z��m��)�?
*Y�^��q��%���r?�+�7�tV�P��	V�>$�KI�Z��h� �5�FB�H�͚�֤x�S�~�[�r�����
�R��<y�ƙ3�x��.,�6������j�у��1��\�a�-�U�.� �[l{�jzZC���s&w�^E���k��D�Vq��
�/�N"�v�v
�i����+��8SNͼ�Ԓ���>�*ݤ.���^��]�I����9������2*VM90z��/���&ο�tL!�4\]T{M
���x@4Y ��,��x���ޥ���T�.-��DVI�6�[�N3:fq���E�p
7��4S:R�є�b�l ���Eo�5)E�s���v����  z  ��7�֓db�ĔC�v�w��KD���;�֑F4/�R_�sK3n�MX�ۅ����-�f.j�^�XΦw� 0r�;�
����Gd~)}�n�i�������0v�s��%ܻ�J�+��qB�A�I��r��8��h+�܂�A�ZM4�-���yK���"��XƤ��l�����3�ޢ�Χ�M���4I�ւ�(f늻fe�hP�~�o�\������H¹""�\;���LҳӪ5vd�i�
l#�����5��u��㺿���m��z5x[۞۔B� ��Dc�m�v8#V���1��@��'��w3�\��s�j8���9�Apֺ]mN����ڜ��t�b�E>�Qb(K �l2�ߠ�+����r��'�ISE�C��p^�:�!N.}���n����c}�b5 ���DQ/�#�� �Z4)d<��>���:7.k�,��V�հ/0�p��Ϥ��[��#�ԫ�9?kFD������jF��X�A������>p?���v��e��.��c��������@l)���ʁGS��|ϣ��gDbp�YAu����T�}����'�~�v�7����ݤ�͉��Aw���l
vL�7*	8�N�A[Y�S� �^O{�P�M��	�B���G���lTE�?&U�!d�Z&���3�O���){"�EQ���Aς��#_�
�C�5,�X���S�,�p��fP&��?9r����X�����cv;�=�S6�Rލ�f#�� ����F|�*/{��z��?m�z��Z��~��<뽉�]��L�%�v'�
z���*-@�`��4�t�dn�oj��,�b�� �K��ݞ���ޅ!�����\i�� =p�a��d�&3��ڎΟ�%pB�d��1��HM���T-H���i���J����'��iq&�������G5\�Q�f�����ӿG-P��� ����!��V�L�4S�����Y�t��orǅ1��� �9#"ǜA�ʯu֯����'��7«��]��wï�}+Yt�� �����:=�5�����ߐ�/�ݮOw�a��!�O}r�~!6�G�3��g�?�w��6�k|�����_�B�x���b=nlHơO��lYS(�֤��:;q�O�5Д�8�Vtrz���H���F�3��j0�n;,��Or����`���Mk�%���j���U�B�x���GU�� ��O.�ʻ�_���9ª�NX��,�w7�`�o���f��.k�7��q���,4Zi���Z�����>R�<�|{�汭�o��o��I���(��
3�ؖ)�Hi���(que�4xW�,CЦ�VDM���o4��<�����]e�<�{�={�=|�}��{�������������      s&   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      �&   o	  x��[K��6>{~��닁x�C���I<X{<���l��a �%5��s�Sn���*��D�${[�'�Q�.�K�ם�d�����U~�����?tl_��:ws���_�����J�� [ə�5+W���׏�	�\���Ļ\Yy�[��� 53�ӟ@��7�g��UI�@�_���N��KU7%�;��߻\ja8��ǧ����������_p��6�?����+YKX��HX�_-r�d���j#�Ïg�)43�n-�}vo�ÿ�
���2g��L�����U�<��ƩX�����uw{�t����oUۋR�z�j�dT�d�  \���3���Ӗ����]�I�T�*����d_�ǐ�N�,��V��GԒJ��(�:����K�3���	=�����=�K�8lK�\i�]����,�pdo�x����g���<վ�\{*ѩ\5Z�T|����p���W�� n=�K�1]1�A-ܢQ0�,⫲vа�F
87��
jM,�Kl�b�y��^x���y	v��_���x/tN� �Aڵ���YÍ�����@p�Ufح��d�W-j��,�B��c\D����c��Ɋ�%$ �Z���+Qû�&P
gǚW��\�{�m�@	��5u��Xg���`�;V��po0��|8�V�E��S�:ɸ@m�C�z4��� ':Q��kk��ɮ/���ڝ�#�]<�=�Ϟ,h4?�_���� jđ"�N5
b��d��㔂h!�p�t:���n�'��WՊ����
�d��G�3�P0�&��x
��>v�$H⇧��T�-9�E�硂Ip �Z�FP�	�Eہ{ƅA8�,��HQ��F�1��iZ�LIL�fKp+�c��M	6P����Gh��/����ű�������VBsص�+����*�����j��dS�Y�Q%@8�)]��D_@�Z�KN�[��oB�����1U_a.��`�<����X��������+��l��@���1n�3l��S�vnvw�ٶ 4��=��#�&8����n�Th��-����F	��<`!BC0���� Tώ6�bkM[6	���Uk��ݲ]�H[�5\��3��-�͆�����G�B���P@nЅ`�hȉ����Tװ��A�d��p���Q�p7�BR��\����֬��}�R�������\����j��0}�)Xg���//��j,1Qox�3��)t���
�%k��i������b�a"�o�ځ1v��u,��.}�Y�W��{<�X����b��M�s�#
#�Ad�/���n�pa�u	Y�I�N�`��9(����~_JN	����59�Ƀ��UK��ZZ�"{�q|BM46���$��g��'����R5�`��n�g�hgA�Yқ%SN����Ri�)w�l�D��dt;v&O�J^��3���/_n'Uz����em��g;$F(���٪~���/�ӄW�]�AH�q5(�`�`7g�1r(��L��*�P�6��2��?TE)]�Mp�6WA}0nlN.4��ր��u��u 6���x�K.�h�%�2���3����Z]�7�+N�N�~�tt���(��AQ�	�/��������D���~���+��M�A�$��n��g�{?� �`{��k��.G4��.�2z�Ad���'�Q�Ք��,!L!�ƶ�����%;�I'GJ����/���D~��.�e\$�ŶыFݵŊp����Q���R{��lR��ӴY��KC�K��p�g�c�Ot��h=y��YHR� ��n�k��3N�TD9�&A@�VFl�ܿ�IS�D��7iI��W�=������.'����ސh���'Mx���E����iR�H�#�Z��"�l=E���];�Cm�K^.!Yki.�O�$��zt��"�M��4*�f`h)� F9�}��M�712?�AK;㔪h��G��uHhz��q7�����,�p�R�YN�Rk����B���x
�uujC^^��oJ㈳=r��@i�m����[�fZ;)B��5QV���� �``Ӂ����31r��ҫ��K��c��޾
 �d�$��Bh�hm>��@���f.���a���&җn�	��%�
�^�OT�:J�M�ܨIC��C��QKa+�y���La��0��\�fO��^� %a�3�"�(8�� v>K$2sPo���[x��o��0��� ^�z��+[�3�p 2���5/�s>hP�WT��y8V�Ğә��e3�g�r�pHL�Wy��V�cW�>��}�&f�`���0�k}�y_��0c�����I~��#��I��0�y	�:��j��#L�L��!���/���͍P3��R ����UAW��7aI���~�����Oit      t&   o  x��\Ks�8>O~5�����0L� ᰵU.!Жmye���_�-ɀ�$Ʋ��-�)������<�E8�bN	�"g�y�<g��7_��#�A҂$���P�I^H�fA���D�H�JI���a�|�c�5ڎxz`�$��S���Ѻ�1��;��P=l�M=D�Z�4fbDER?��@�~A�#1MӼLDNX^yye#�)޹7�a ��,aR�T`I�%e�X^LA$�r�����-+��eS�Iò,ٲ(bQ�M�HX!{����.�P�"��$f9er��ƶ�Q�S��[�#�'9�j����*	�G� ���1o¿DJ�Æ�Y��W�J�c[���<S>���<�6(Z3y�p)o���-
�,�4������,ΘV�ȫ��AxO�����<�,|)Y�Q����x���/;�v�lOCZú0�%���]�d~dM���kF�ګ�|s� *"n���� �z��,6La���V��a�d 4���F�7,(_�2�A���-ApW�z)O��^���?]��^�����#u�Q�NjN@������е�S���`a����;�h$T�G�[+)}�!>�n�/<��s���(�.J)�{�
�����Md���m�Lk%>�,ƒ`���y�f�&�w�9�;�Ti�
�RX ���oi��s�3N��_�����p9/�kcH�yX�����dN��mZe�yK�`�֜g�P���kGջ�݅,�/z�O��{����;�\����܆uyEkC^���>ˤݝ�g�\�
`��̣�OP�w^�2��>�Fի�>|����v�o����]@;�d�`9J�R�2���͈��Px�(�:���1��U��\�	�� �S�3e�{�X�ܫ���n'_��UGWl�j��p��N�`<D�-���~'W�Ս�|��gy�p�P�J	K����7Fݳ�:��2��� 6���v,̦M20�"�`6KԶ"Ӫ�.�`��X!@��2�h����lJd��$b)�"�1�^�Z����G_Lً�'�0a���{|{���v�L���8x�eI�W�г�S���<�ol+be]j"u';�s��\)Tn��8q�����*7K���Z���3u�b�%@ô��$�El�w�Y��)���?6��FBr����b��]�\�
�ǫ*�j����ֵ��b����O/\J�qV�f̅���%~P`<u�3`is ��V�5Yӻ�$:��O��0�K��0Qh�G� /-,�s$�f��&G��	9��m�՝|W�)vL�UȬ%킣&bϿ>�0���MQ�=�-7�M�.3�.������8^hͳ>�2�U<Jyd�|"�m&`;��
cڗ^�9���� /���ڟ��8&��s�a���h� �)�z�/b��i��Y=��$#�&r�����kյ~��".�D;+�?:��w��oV�1s��M��BN�f���ȁU�����LV�C$���h��_�G�ܹγIc�&���Kbln�X��^�g8�O��tߺvE�z� ��t��n��u~�*#ߘ-�l
a�R�tb��x��E��3`qi�2��7"Z�v��L0p���7���Dg�	���Ip�Zd'ƚ���2��]/��D3�jQihä�Z0�'�u9��:��~Ϫ���-.m4nߋ�U�$ۘ��"�އ�a���s ܔg8=X�?�i�ߒ}^�}�FM��+L��a��xzfl!9��Z��)\"�H[6�M��o�^�1��!"dD������Q��v���%{e���)��ٰ��a���v���^���-��{�k1I����}"�y#�����RT&[�t��̆|�/Tc
�硟$AE9���9d�}�X���4X��=.�ٞ�Gwww��3
�     