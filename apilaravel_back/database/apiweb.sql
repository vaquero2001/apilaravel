PGDMP                       |            appweb    16.1    16.1 5    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    appweb    DATABASE     z   CREATE DATABASE appweb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE appweb;
                postgres    false                        2615    16405    apilaravel_back    SCHEMA        CREATE SCHEMA apilaravel_back;
    DROP SCHEMA apilaravel_back;
                postgres    false            �            1259    16512    c_lients    TABLE     N  CREATE TABLE apilaravel_back.c_lients (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE apilaravel_back.c_lients;
       apilaravel_back         heap    postgres    false    6            �            1259    16511    c_lients_id_seq    SEQUENCE     �   CREATE SEQUENCE apilaravel_back.c_lients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE apilaravel_back.c_lients_id_seq;
       apilaravel_back          postgres    false    228    6            �           0    0    c_lients_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE apilaravel_back.c_lients_id_seq OWNED BY apilaravel_back.c_lients.id;
          apilaravel_back          postgres    false    227            �            1259    16488    failed_jobs    TABLE     /  CREATE TABLE apilaravel_back.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 (   DROP TABLE apilaravel_back.failed_jobs;
       apilaravel_back         heap    postgres    false    6            �            1259    16487    failed_jobs_id_seq    SEQUENCE     �   CREATE SEQUENCE apilaravel_back.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE apilaravel_back.failed_jobs_id_seq;
       apilaravel_back          postgres    false    224    6            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE apilaravel_back.failed_jobs_id_seq OWNED BY apilaravel_back.failed_jobs.id;
          apilaravel_back          postgres    false    223            �            1259    16414 
   migrations    TABLE     �   CREATE TABLE apilaravel_back.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
 '   DROP TABLE apilaravel_back.migrations;
       apilaravel_back         heap    postgres    false    6            �            1259    16413    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE apilaravel_back.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE apilaravel_back.migrations_id_seq;
       apilaravel_back          postgres    false    6    219            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE apilaravel_back.migrations_id_seq OWNED BY apilaravel_back.migrations.id;
          apilaravel_back          postgres    false    218            �            1259    16481    password_resets    TABLE     �   CREATE TABLE apilaravel_back.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 ,   DROP TABLE apilaravel_back.password_resets;
       apilaravel_back         heap    postgres    false    6            �            1259    16500    personal_access_tokens    TABLE     �  CREATE TABLE apilaravel_back.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 3   DROP TABLE apilaravel_back.personal_access_tokens;
       apilaravel_back         heap    postgres    false    6            �            1259    16499    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE apilaravel_back.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE apilaravel_back.personal_access_tokens_id_seq;
       apilaravel_back          postgres    false    226    6            �           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE apilaravel_back.personal_access_tokens_id_seq OWNED BY apilaravel_back.personal_access_tokens.id;
          apilaravel_back          postgres    false    225            �            1259    16406    user    TABLE     �   CREATE TABLE apilaravel_back."user" (
    id bigint NOT NULL,
    name character varying,
    lastname character varying,
    email character varying NOT NULL,
    phone bigint NOT NULL
);
 #   DROP TABLE apilaravel_back."user";
       apilaravel_back         heap    postgres    false    6            �            1259    16471    users    TABLE     �  CREATE TABLE apilaravel_back.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE apilaravel_back.users;
       apilaravel_back         heap    postgres    false    6            �            1259    16470    users_id_seq    SEQUENCE     ~   CREATE SEQUENCE apilaravel_back.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE apilaravel_back.users_id_seq;
       apilaravel_back          postgres    false    6    221            �           0    0    users_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE apilaravel_back.users_id_seq OWNED BY apilaravel_back.users.id;
          apilaravel_back          postgres    false    220            �            1259    16398    user    TABLE     �   CREATE TABLE public."user" (
    id bigint NOT NULL,
    name character varying,
    lastname character varying,
    email character varying NOT NULL,
    number bigint NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            @           2604    16515    c_lients id    DEFAULT     |   ALTER TABLE ONLY apilaravel_back.c_lients ALTER COLUMN id SET DEFAULT nextval('apilaravel_back.c_lients_id_seq'::regclass);
 C   ALTER TABLE apilaravel_back.c_lients ALTER COLUMN id DROP DEFAULT;
       apilaravel_back          postgres    false    228    227    228            =           2604    16491    failed_jobs id    DEFAULT     �   ALTER TABLE ONLY apilaravel_back.failed_jobs ALTER COLUMN id SET DEFAULT nextval('apilaravel_back.failed_jobs_id_seq'::regclass);
 F   ALTER TABLE apilaravel_back.failed_jobs ALTER COLUMN id DROP DEFAULT;
       apilaravel_back          postgres    false    223    224    224            ;           2604    16417    migrations id    DEFAULT     �   ALTER TABLE ONLY apilaravel_back.migrations ALTER COLUMN id SET DEFAULT nextval('apilaravel_back.migrations_id_seq'::regclass);
 E   ALTER TABLE apilaravel_back.migrations ALTER COLUMN id DROP DEFAULT;
       apilaravel_back          postgres    false    219    218    219            ?           2604    16503    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY apilaravel_back.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('apilaravel_back.personal_access_tokens_id_seq'::regclass);
 Q   ALTER TABLE apilaravel_back.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       apilaravel_back          postgres    false    225    226    226            <           2604    16474    users id    DEFAULT     v   ALTER TABLE ONLY apilaravel_back.users ALTER COLUMN id SET DEFAULT nextval('apilaravel_back.users_id_seq'::regclass);
 @   ALTER TABLE apilaravel_back.users ALTER COLUMN id DROP DEFAULT;
       apilaravel_back          postgres    false    221    220    221            �          0    16512    c_lients 
   TABLE DATA           e   COPY apilaravel_back.c_lients (id, name, lastname, email, phone, created_at, updated_at) FROM stdin;
    apilaravel_back          postgres    false    228   B       �          0    16488    failed_jobs 
   TABLE DATA           j   COPY apilaravel_back.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    apilaravel_back          postgres    false    224   �D       �          0    16414 
   migrations 
   TABLE DATA           C   COPY apilaravel_back.migrations (id, migration, batch) FROM stdin;
    apilaravel_back          postgres    false    219   �D       �          0    16481    password_resets 
   TABLE DATA           L   COPY apilaravel_back.password_resets (email, token, created_at) FROM stdin;
    apilaravel_back          postgres    false    222   jE       �          0    16500    personal_access_tokens 
   TABLE DATA           �   COPY apilaravel_back.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    apilaravel_back          postgres    false    226   �E       �          0    16406    user 
   TABLE DATA           K   COPY apilaravel_back."user" (id, name, lastname, email, phone) FROM stdin;
    apilaravel_back          postgres    false    217   �E       �          0    16471    users 
   TABLE DATA           ~   COPY apilaravel_back.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    apilaravel_back          postgres    false    221   �E       �          0    16398    user 
   TABLE DATA           C   COPY public."user" (id, name, lastname, email, number) FROM stdin;
    public          postgres    false    216   �E       �           0    0    c_lients_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('apilaravel_back.c_lients_id_seq', 39, true);
          apilaravel_back          postgres    false    227            �           0    0    failed_jobs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('apilaravel_back.failed_jobs_id_seq', 1, false);
          apilaravel_back          postgres    false    223                        0    0    migrations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('apilaravel_back.migrations_id_seq', 10, true);
          apilaravel_back          postgres    false    218                       0    0    personal_access_tokens_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('apilaravel_back.personal_access_tokens_id_seq', 1, false);
          apilaravel_back          postgres    false    225                       0    0    users_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('apilaravel_back.users_id_seq', 1, false);
          apilaravel_back          postgres    false    220            V           2606    16519    c_lients c_lients_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY apilaravel_back.c_lients
    ADD CONSTRAINT c_lients_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY apilaravel_back.c_lients DROP CONSTRAINT c_lients_pkey;
       apilaravel_back            postgres    false    228            M           2606    16496    failed_jobs failed_jobs_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY apilaravel_back.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY apilaravel_back.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       apilaravel_back            postgres    false    224            O           2606    16498 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     g   ALTER TABLE ONLY apilaravel_back.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 V   ALTER TABLE ONLY apilaravel_back.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       apilaravel_back            postgres    false    224            F           2606    16419    migrations migrations_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY apilaravel_back.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY apilaravel_back.migrations DROP CONSTRAINT migrations_pkey;
       apilaravel_back            postgres    false    219            Q           2606    16507 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY apilaravel_back.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY apilaravel_back.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       apilaravel_back            postgres    false    226            S           2606    16510 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT        ALTER TABLE ONLY apilaravel_back.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 m   ALTER TABLE ONLY apilaravel_back.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       apilaravel_back            postgres    false    226            D           2606    16412    user user_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY apilaravel_back."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY apilaravel_back."user" DROP CONSTRAINT user_pkey;
       apilaravel_back            postgres    false    217            H           2606    16480    users users_email_unique 
   CONSTRAINT     ]   ALTER TABLE ONLY apilaravel_back.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 K   ALTER TABLE ONLY apilaravel_back.users DROP CONSTRAINT users_email_unique;
       apilaravel_back            postgres    false    221            J           2606    16478    users users_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY apilaravel_back.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY apilaravel_back.users DROP CONSTRAINT users_pkey;
       apilaravel_back            postgres    false    221            B           2606    16404    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    216            K           1259    16486    password_resets_email_index    INDEX     a   CREATE INDEX password_resets_email_index ON apilaravel_back.password_resets USING btree (email);
 8   DROP INDEX apilaravel_back.password_resets_email_index;
       apilaravel_back            postgres    false    222            T           1259    16508 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON apilaravel_back.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 U   DROP INDEX apilaravel_back.personal_access_tokens_tokenable_type_tokenable_id_index;
       apilaravel_back            postgres    false    226    226            �   �  x����n�0���S�Z��d[:؀�z�q-�\��N���G�KS'°پ�O�DRP<��ԉ��6�eUl��!t~���>���QXk	sҪ$I�I��"#��G��^��)>e�oz���]���K�K�Q�4�(����=��o�ޏp.V�Yۙ��,��N��Q�A.�>��F��7;�Cͧ1Ṝͤ��"*3������b�ܐ#�bPn"7�b`7�+'m��M�
S7�k'o���9Wu�rŶ
ܙM߆�w��9��Z���d���5	<���i�b�F������?�6�"����K��$�0��m��%)�G�4R��G�U����|9����i�m]��[j�+mV����C�b��t��8S����.̀h�U�S�'02 �ʪM�?�˭t{[#�˭�$ŀ�V�"�b�e��jn�u`@�R+�fu�[g����>$��Žņҩ���I��:�c��}�mϙo?¹�`��y-���J1PS8k^ŗ���8�\~xO�c��vؤ�N�)J���v/�˙\E��LH�,f8T�e�D��%�1�N}Z΀��]�Ǌ7��34���_/y��|��rX�4�o�Gl�R�ƷZ#wS�/�Vk��c�0PV�ں��A|�,�ݓo���BA7+(5K����7��`�      �      x������ � �      �   �   x�U�A� ���a�T�K����-�l�~�&��`�����i���l^�$1a��IC�?�t	?���(I�J�BF�彐'/Nf��T�q���ݞӱ!_<;���2	o�U���dD�ԶD�p���U��R�oBL      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     