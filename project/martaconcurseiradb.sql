--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Ubuntu 13.4-0ubuntu0.21.04.1)
-- Dumped by pg_dump version 13.4 (Ubuntu 13.4-0ubuntu0.21.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accounts_profile; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.accounts_profile (
    id bigint NOT NULL,
    photo character varying(100) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.accounts_profile OWNER TO martaconcurseirauser;

--
-- Name: accounts_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.accounts_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_profile_id_seq OWNER TO martaconcurseirauser;

--
-- Name: accounts_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.accounts_profile_id_seq OWNED BY public.accounts_profile.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO martaconcurseirauser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO martaconcurseirauser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO martaconcurseirauser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO martaconcurseirauser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO martaconcurseirauser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO martaconcurseirauser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO martaconcurseirauser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO martaconcurseirauser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO martaconcurseirauser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO martaconcurseirauser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO martaconcurseirauser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO martaconcurseirauser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: blog_category; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.blog_category (
    id bigint NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    slug character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.blog_category OWNER TO martaconcurseirauser;

--
-- Name: blog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.blog_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_category_id_seq OWNER TO martaconcurseirauser;

--
-- Name: blog_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.blog_category_id_seq OWNED BY public.blog_category.id;


--
-- Name: blog_post; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.blog_post (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    content text NOT NULL,
    tags character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    is_active boolean NOT NULL,
    published_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    author_id integer NOT NULL,
    category_id bigint,
    image character varying(100) NOT NULL,
    headline character varying(160) NOT NULL
);


ALTER TABLE public.blog_post OWNER TO martaconcurseirauser;

--
-- Name: blog_post_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_id_seq OWNER TO martaconcurseirauser;

--
-- Name: blog_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;


--
-- Name: courses_course; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.courses_course (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    short_description character varying(160) NOT NULL,
    author character varying(150) NOT NULL,
    price numeric(19,2) NOT NULL,
    what_learn text NOT NULL,
    requirements text NOT NULL,
    description text NOT NULL,
    for_what text NOT NULL,
    image character varying(100) NOT NULL,
    teacher_id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    slug character varying(50) NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    url character varying(200) NOT NULL,
    platform_id bigint,
    course_id character varying(50)
);


ALTER TABLE public.courses_course OWNER TO martaconcurseirauser;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.courses_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO martaconcurseirauser;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses_course.id;


--
-- Name: courses_platform; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.courses_platform (
    id bigint NOT NULL,
    name character varying(150) NOT NULL,
    slug character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.courses_platform OWNER TO martaconcurseirauser;

--
-- Name: courses_platform_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.courses_platform_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_platform_id_seq OWNER TO martaconcurseirauser;

--
-- Name: courses_platform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.courses_platform_id_seq OWNED BY public.courses_platform.id;


--
-- Name: courses_teacher; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.courses_teacher (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    background character varying(150) NOT NULL,
    bio text NOT NULL,
    photo character varying(100),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.courses_teacher OWNER TO martaconcurseirauser;

--
-- Name: courses_teacher_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.courses_teacher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_teacher_id_seq OWNER TO martaconcurseirauser;

--
-- Name: courses_teacher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.courses_teacher_id_seq OWNED BY public.courses_teacher.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO martaconcurseirauser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO martaconcurseirauser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO martaconcurseirauser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO martaconcurseirauser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO martaconcurseirauser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO martaconcurseirauser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO martaconcurseirauser;

--
-- Name: pages_aboutus; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.pages_aboutus (
    id bigint NOT NULL,
    title_page character varying(150) NOT NULL,
    text_page text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.pages_aboutus OWNER TO martaconcurseirauser;

--
-- Name: pages_aboutus_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.pages_aboutus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_aboutus_id_seq OWNER TO martaconcurseirauser;

--
-- Name: pages_aboutus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.pages_aboutus_id_seq OWNED BY public.pages_aboutus.id;


--
-- Name: pages_socialnetwork; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.pages_socialnetwork (
    id bigint NOT NULL,
    network bigint NOT NULL,
    profile_url character varying(200) NOT NULL,
    CONSTRAINT pages_socialnetwork_network_check CHECK ((network >= 0))
);


ALTER TABLE public.pages_socialnetwork OWNER TO martaconcurseirauser;

--
-- Name: pages_socialnetwork_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.pages_socialnetwork_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_socialnetwork_id_seq OWNER TO martaconcurseirauser;

--
-- Name: pages_socialnetwork_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.pages_socialnetwork_id_seq OWNED BY public.pages_socialnetwork.id;


--
-- Name: pages_video; Type: TABLE; Schema: public; Owner: martaconcurseirauser
--

CREATE TABLE public.pages_video (
    id bigint NOT NULL,
    title character varying(60) NOT NULL,
    short_description character varying(160) NOT NULL,
    text text NOT NULL,
    thumbnail character varying(100) NOT NULL,
    slug character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    embed text NOT NULL
);


ALTER TABLE public.pages_video OWNER TO martaconcurseirauser;

--
-- Name: pages_video_id_seq; Type: SEQUENCE; Schema: public; Owner: martaconcurseirauser
--

CREATE SEQUENCE public.pages_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_video_id_seq OWNER TO martaconcurseirauser;

--
-- Name: pages_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: martaconcurseirauser
--

ALTER SEQUENCE public.pages_video_id_seq OWNED BY public.pages_video.id;


--
-- Name: accounts_profile id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.accounts_profile ALTER COLUMN id SET DEFAULT nextval('public.accounts_profile_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blog_category id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.blog_category ALTER COLUMN id SET DEFAULT nextval('public.blog_category_id_seq'::regclass);


--
-- Name: blog_post id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);


--
-- Name: courses_course id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.courses_course ALTER COLUMN id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: courses_platform id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.courses_platform ALTER COLUMN id SET DEFAULT nextval('public.courses_platform_id_seq'::regclass);


--
-- Name: courses_teacher id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.courses_teacher ALTER COLUMN id SET DEFAULT nextval('public.courses_teacher_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: pages_aboutus id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.pages_aboutus ALTER COLUMN id SET DEFAULT nextval('public.pages_aboutus_id_seq'::regclass);


--
-- Name: pages_socialnetwork id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.pages_socialnetwork ALTER COLUMN id SET DEFAULT nextval('public.pages_socialnetwork_id_seq'::regclass);


--
-- Name: pages_video id; Type: DEFAULT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.pages_video ALTER COLUMN id SET DEFAULT nextval('public.pages_video_id_seq'::regclass);


--
-- Data for Name: accounts_profile; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.accounts_profile (id, photo, user_id) FROM stdin;
2	photos/foto_YeMHmdU.jpeg	1
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Sobre nós	7	add_aboutus
26	Can change Sobre nós	7	change_aboutus
27	Can delete Sobre nós	7	delete_aboutus
28	Can view Sobre nós	7	view_aboutus
29	Can add Categoria	8	add_category
30	Can change Categoria	8	change_category
31	Can delete Categoria	8	delete_category
32	Can view Categoria	8	view_category
33	Can add Postagem	9	add_post
34	Can change Postagem	9	change_post
35	Can delete Postagem	9	delete_post
36	Can view Postagem	9	view_post
37	Can add Professor	10	add_teacher
38	Can change Professor	10	change_teacher
39	Can delete Professor	10	delete_teacher
40	Can view Professor	10	view_teacher
41	Can add Curso	11	add_course
42	Can change Curso	11	change_course
43	Can delete Curso	11	delete_course
44	Can view Curso	11	view_course
45	Can add Vídeo	12	add_video
46	Can change Vídeo	12	change_video
47	Can delete Vídeo	12	delete_video
48	Can view Vídeo	12	view_video
49	Can add Plataforma	13	add_platform
50	Can change Plataforma	13	change_platform
51	Can delete Plataforma	13	delete_platform
52	Can view Plataforma	13	view_platform
53	Can add Rede Social	14	add_socialnetwork
54	Can change Rede Social	14	change_socialnetwork
55	Can delete Rede Social	14	delete_socialnetwork
56	Can view Rede Social	14	view_socialnetwork
57	Can add Perfil	15	add_profile
58	Can change Perfil	15	change_profile
59	Can delete Perfil	15	delete_profile
60	Can view Perfil	15	view_profile
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$do5hgX8A2Jk5cRiIxGGKVC$DhAkC3UBEo2YDtJNej2bCiBPSkN8RV6vWesN2kQ7Rio=	2021-09-09 10:07:47.874365-03	t	admin			admin@admin.com	t	t	2021-07-14 18:36:27.267091-03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: blog_category; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.blog_category (id, name, description, slug, created_at, updated_at) FROM stdin;
1	Concursos		concursos	2021-09-09 10:23:37.026043-03	2021-09-09 10:23:37.028825-03
2	Disciplina		disciplina	2021-09-09 10:23:37.026043-03	2021-09-09 10:23:37.028825-03
3	Planejamento		planejamento	2021-09-09 10:23:37.026043-03	2021-09-09 10:23:37.028825-03
\.


--
-- Data for Name: blog_post; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.blog_post (id, title, content, tags, slug, is_active, published_at, created_at, updated_at, author_id, category_id, image, headline) FROM stdin;
1	Concurso Banco do Brasil 2021	<p>Aten&ccedil;&atilde;o, concurseiros! O edital n&deg; 01/2021 do <strong>concurso Banco do Brasil&nbsp;</strong>para Escritur&aacute;rio foi publicado! A fun&ccedil;&atilde;o &eacute; dividida em dois cargos: Agente de Tecnologia e Agente Comercial.</p>\r\n\r\n<p>A sele&ccedil;&atilde;o do Banco do Brasil est&aacute; sob a <strong>responsabilidade da banca Cesgranrio</strong>. Foram abertas 2.240 vagas de contrata&ccedil;&atilde;o imediata e 2.240 vagas de cadastro reserva (CR), totalizando 4.480 oportunidades.</p>\r\n\r\n<p>Vale ressaltar que, dentro do total ofertado no concurso BB, j&aacute; est&atilde;o reservadas oportunidades para <a href="https://www.concursosnobrasil.com.br/artigos/vagas-para-pessoas-com-deficiencia-em-concurso.html" rel="noopener" target="_blank">pessoas com defici&ecirc;ncia (PcD)</a> e candidatos negros.</p>\r\n\r\n<h2>Concurso Banco do Brasil: vagas</h2>\r\n\r\n<p>Interessados em participar do concurso BB precisam ter <strong>n&iacute;vel m&eacute;dio completo</strong> para pleitear o cargo de Escritur&aacute;rio.</p>\r\n\r\n<p>Os contratados ir&atilde;o receber <strong>remunera&ccedil;&atilde;o inicial de R$ 3.022,37 por m&ecirc;s</strong> para jornadas de 30 horas semanais de trabalho.</p>\r\n\r\n<p>Tamb&eacute;m est&atilde;o previstos in&uacute;meros benef&iacute;cios, como vale-transporte, ajuda-alimenta&ccedil;&atilde;o ou refei&ccedil;&atilde;o, aux&iacute;lio-creche, entre outros.</p>\r\n\r\n<p>Dentre as vagas abertas, <strong>240 imediatas </strong>e outras 240 em cadastro reserva <strong>s&atilde;o para Agente de Tecnologia</strong>. Os contratados ser&atilde;o lotados no <a href="https://www.concursosnobrasil.com.br/concursos/df/" rel="noopener" target="_blank">Distrito Federal</a>.</p>	concurso bb, bb 2021, concurso banco do brasil	concurso-banco-do-brasil-2021	t	2021-07-15 12:03:56-03	2021-07-15 16:03:06.558322-03	2021-07-15 16:08:13.352408-03	1	1	images/concurso-banco-do-brasil-vagas-ti-960x540.webp	Concurso Banco do Brasil 2021: novo edital abre oportunidades de nível médio em todo o país, com remuneração de R$ 3 mil. Veja aqui como se inscrever.
2	Como passar no seu primeiro concurso	<p>Voc&ecirc; sabe o que precisa para iniciar uma prepara&ccedil;&atilde;o para provas de concursos p&uacute;blicos? O que e como estudar? Por onde come&ccedil;ar e quais materiais ser&atilde;o necess&aacute;rios para essa empreitada?</p>\r\n\r\n<p>N&atilde;o h&aacute; uma f&oacute;rmula m&aacute;gica para responder a essas perguntas. Mas, com certeza, existem t&eacute;cnicas de estudo que podem ajudar a acelerar a sua aprova&ccedil;&atilde;o em uma sele&ccedil;&atilde;o. E o melhor. Tudo isso depende apenas de voc&ecirc;!</p>\r\n\r\n<p>Se voc&ecirc; &eacute; um iniciante no mundo dos concursos, em primeiro lugar, &eacute; importante entender como funciona todo o processo. Voc&ecirc; sabe o que falta para o concurso dos seus sonhos ser aberto? Entende como funcionam os preparativos das sele&ccedil;&otilde;es e a caminhada at&eacute; a sonhada posse?</p>\r\n\r\n<p>O caminho vai desde a vac&acirc;ncia nos &oacute;rg&atilde;os at&eacute; a posse dos novos servidores. Nesse meio tempo, voc&ecirc; precisa saber <strong><a href="https://folhadirigida.com.br/noticias/tema/especial-noticiario/voce-sabe-escolher-o-seu-concurso-aprenda-ja" target="_blank" title="Como escolher o seu concurso">escolher o seu concurso</a></strong>. Afinal, s&atilde;o muitas oportunidades em &aacute;reas como a de bancos, tributos/fiscal, policial, administrativa (com atua&ccedil;&atilde;o em prefeituras, secretarias, universidades, &oacute;rg&atilde;os estaduais e municipais) e autarquias e funda&ccedil;&otilde;es (como IBGE e INSS).</p>\r\n\r\n<p>Escolher a &aacute;rea que mais se adequa ao seu perfil vai al&eacute;m da forma&ccedil;&atilde;o acad&ecirc;mica. Existe a voca&ccedil;&atilde;o tamb&eacute;m. E, claro, identifica&ccedil;&atilde;o com o trabalho e as atividades desempenhadas por determinado &oacute;rg&atilde;o ou empresa p&uacute;blica.</p>\r\n\r\n<h2><strong>Como estudar para concurso p&uacute;blico em pouco tempo</strong></h2>\r\n\r\n<p><br />\r\nComo estudar em pouco tempo e quanto tempo estudar para concurso s&atilde;o d&uacute;vidas muito comuns de quem est&aacute; come&ccedil;ando nessa empreitada. Administrar e otimizar o tempo para os estudos &eacute; um grande desafio.</p>\r\n\r\n<p>O importante &eacute; voc&ecirc; definir como &eacute; sua rotina e quais s&atilde;o os momentos que tem para estudar. Na ida e volta do trabalho, na hora do almo&ccedil;o, depois de preparar o jantar e cuidar da casa, meia hora antes do que voc&ecirc; costuma acordar.</p>\r\n\r\n<p>N&atilde;o importa se voc&ecirc; tem quatro horas por dia ou 10 horas para estudar. O <strong><a href="https://folhadirigida.com.br/videos/qual-e-a-melhor-hora-para-estudar-para-concursos" target="_blank" title="melhor horário para estudar">melhor hor&aacute;rio para estudar</a></strong> tamb&eacute;m n&atilde;o existe. O que existe &eacute; o tempo que voc&ecirc; tem dispon&iacute;vel e o hor&aacute;rio que voc&ecirc; rende melhor, seja de madrugada ou de manh&atilde; cedinho.</p>\r\n\r\n<p>&Eacute; importante ter em mente que o que vale &eacute; a qualidade do estudo. &Eacute; manter o foco e estudar de acordo com um planejamento. Crie metas que s&atilde;o realiz&aacute;veis, quantific&aacute;veis. N&atilde;o estabele&ccedil;a padr&otilde;es que voc&ecirc; sabe que n&atilde;o vai cumprir e s&oacute; vai deix&aacute;-lo frustrado depois.</p>\r\n\r\n<p>Respondendo sobre como estudar para concurso p&uacute;blico em pouco tempo vai depender do quanto voc&ecirc; vai estudar e de qu&atilde;o focada ser&aacute; essa prepara&ccedil;&atilde;o.&nbsp;&Eacute; verdade tamb&eacute;m que a ansiedade atrapalha no estudo para concursos.</p>\r\n\r\n<p>Apesar disso, muitos futuros servidores se perguntam se h&aacute; um tempo m&iacute;nimo para ser aprovado. A coach em concursos Deborah Cal <strong><a href="https://folhadirigida.com.br/videos/ha-um-tempo-minimo-para-ser-aprovado-em-concursos" target="_blank" title="existe tempo mínimo para ser aprovado">responde em mais um Tira-D&uacute;vidas essa quest&atilde;o</a></strong>.</p>\r\n\r\n<p>Sabemos que se preparar para concursos &eacute; uma tarefa &aacute;rdua e a estrada &eacute; longa.&nbsp;As reprova&ccedil;&otilde;es s&atilde;o muitas e as dificuldades tamb&eacute;m, assim como a cobran&ccedil;a da sociedade, tamb&eacute;m.</p>\r\n\r\n<p>Se neste momento voc&ecirc; pensar &quot;Vou desistir de concurso p&uacute;blico&quot;, pare e <strong><a href="https://folhadirigida.com.br/videos/como-nao-desistir-de-concurso-publico" target="_blank" title="Não desistir de concurso público">assista a este&nbsp;v&iacute;deo</a></strong> do especialista Guilherme Miziara.</p>\r\n\r\n<h2><strong>Como estudar para concurso p&uacute;blico sozinho</strong></h2>\r\n\r\n<p><br />\r\nTem gente que prefere estudar em uma sala de aula e ter contato com outros alunos e os professores. J&aacute; outras pessoas se concentram melhor em um local isolado, assistindo a v&iacute;deos e resolvendo quest&otilde;es sozinho.</p>\r\n\r\n<p>Podemos considerar que existem <a href="https://folhadirigida.com.br/noticias/tema/especial-noticiario/como-estudar-por-conta-propria-para-concursos-confira-neste-guia" target="_blank" title="estudar para concurso público sozinho"><strong>11 passos para estudar para concurso p&uacute;blico sozinho</strong></a>, elaborados pelo coach Igor Lima, do Coach de Concursos, que tamb&eacute;m &eacute; analista legislativo da C&acirc;mara do Rio de Janeiro. S&atilde;o eles:</p>\r\n\r\n<p><span style="color:#8e44ad"><strong>1.</strong></span>&nbsp;Defina o foco;<br />\r\n<span style="color:#8e44ad"><strong>2.&nbsp;</strong></span>Fa&ccedil;a uma autoavalia&ccedil;&atilde;o;<br />\r\n<span style="color:#8e44ad"><strong>3.&nbsp;</strong></span>Elabore um plano de estudos;<br />\r\n<strong><span style="color:#8e44ad">4.&nbsp;</span></strong>Crie um cronograma de estudos;<br />\r\n<strong><span style="color:#8e44ad">5.&nbsp;</span></strong>Veja seu rendimento com os exerc&iacute;cios;<br />\r\n<span style="color:#8e44ad"><strong>6.</strong></span>&nbsp;Fa&ccedil;a resumos e revis&otilde;es;<a id="internet" name="internet"></a><br />\r\n<span style="color:#8e44ad"><strong>7.&nbsp;</strong></span>Adote um ritmo de estudo;<br />\r\n<span style="color:#8e44ad"><strong>8.&nbsp;</strong></span>Escolha um local adequado para estudar;<br />\r\n<span style="color:#8e44ad"><strong>9.</strong></span>&nbsp;Busque apoio;<br />\r\n<strong><span style="color:#8e44ad">10.&nbsp;</span></strong>Prepare um quadro motivacional;<br />\r\n<strong><span style="color:#8e44ad">11.&nbsp;</span></strong>Se presenteie.</p>\r\n\r\n<p>Mesmo que voc&ecirc; n&atilde;o tenha o perfil mais autodidata, as dicas para estudar por conta pr&oacute;pria tamb&eacute;m servem. Afinal, n&atilde;o d&aacute; para contar com o aux&iacute;lio de um professor, um coach ou um curso preparat&oacute;rio 24 horas por dia, n&atilde;o &eacute; mesmo?</p>	planejamento, estudos, até passar, concurso públic	como-passar-no-seu-primeiro-concurso	t	2021-07-15 18:02:52-03	2021-07-15 18:06:02.799942-03	2021-07-15 18:06:02.799979-03	1	3	images/escrita-aluno-estudos-freepik.jpg	Quer saber como se preparar de forma adequada para as provas de concursos públicos? Folha Dirigida reúne dicas e técnicas de estudo.
3	Concurso da Marinha tem novas datas	<p>A Marinha do Brasil divulgou novas datas do concurso&nbsp;para o quadro complementar de oficiais. A novidade foi publicada no Di&aacute;rio Oficial desta quinta-feira, 15.</p>\r\n\r\n<p>Agora, a divulga&ccedil;&atilde;o das notas da reda&ccedil;&atilde;o dos convocados para os eventos complementares acontecer&aacute; a partir do dia 26 de janeiro de 2022. O per&iacute;odo de adapta&ccedil;&atilde;o tamb&eacute;m j&aacute; tem data definida e ser&aacute; entre os dias 20 de junho a&nbsp;3 de julho de 2022.</p>\r\n\r\n<p>A data limite para a convoca&ccedil;&atilde;o dos candidatos reservas &eacute; dia 1&deg; de julho de 2022. A sele&ccedil;&atilde;o da corpora&ccedil;&atilde;o oferece <strong>11 vagas&nbsp;</strong>para&nbsp;oficiais fuzileiros, intendentes e oficiais da armada.</p>\r\n\r\n<p>Podem concorrer &agrave;s vagas pessoas do sexo masculino com n&iacute;vel superior completo e idade inferior a 29 anos at&eacute; janeiro de 2022.</p>\r\n\r\n<p>Confira os cursos de gradua&ccedil;&atilde;o aceitos:</p>\r\n\r\n<p>Nas oportunidades do quadro complementar de Intendentes da Marinha, uma &eacute; destinada a reserva para candidatos negros.</p>\r\n\r\n<p>Os oficiais do Corpo da Armada e do&nbsp;Corpo de Fuzileiros Navais exercem cargos relativos &agrave; aplica&ccedil;&atilde;o do Poder Naval e seu&nbsp;preparo. No caso de fuzileiros,&nbsp;em especial nas opera&ccedil;&otilde;es anf&iacute;bias.</p>\r\n\r\n<h3><strong>Quanto ganhar&aacute; um oficial da Marinha?</strong></h3>\r\n\r\n<p>Aprovados em todas as etapas ser&atilde;o encaminhados ao curso, que inicia com um per&iacute;odo de adapta&ccedil;&atilde;o (PA, que dura cerca de tr&ecirc;s semanas) e uma etapa curricular. Durante o curso, o &#39;guarda-marinha&#39; receber&aacute; R$9.070,60, sendo:</p>\r\n\r\n<ul>\r\n\t<li>R$7.315 relativos ao soldo militar;</li>\r\n\t<li>R$1.389,85 relativos ao adicional militar; e</li>\r\n\t<li>R$365,75 relativos ao adicional de compensa&ccedil;&atilde;o por disponibilidade militar.</li>\r\n</ul>\r\n\r\n<p>Al&eacute;m disso, eles ainda recebem&nbsp;alimenta&ccedil;&atilde;o, uniforme, assist&ecirc;ncia m&eacute;dico-odontol&oacute;gica, psicol&oacute;gica, social e religiosa.</p>	concurso 2021, marinha do brasil	concurso-da-marinha-tem-novas-datas	t	2021-07-15 18:06:02-03	2021-07-15 18:08:33.160335-03	2021-07-15 18:08:33.160369-03	1	1	images/marinha-oficiais-naval-foto-governo-federal.jpg	O concurso Marinha para o quadro complementar de oficias teve edital retificado com novas datas para os eventos complementares. Confira!
4	Concurso Polícia Civil de Tocantins	<p>O secret&aacute;rio de Seguran&ccedil;a P&uacute;blica do Tocantins, Cristiano Sampaio, trouxe a p&uacute;blico o que pode impedir a realiza&ccedil;&atilde;o de novo concurso para Pol&iacute;cia Civil do Estado.</p>\r\n\r\n<p>Em publica&ccedil;&atilde;o em <a href="https://www.instagram.com/p/CRUVxQBLrDd/" rel="noreferrer" target="_blank" title="Instagram Secretário de Segurança TO"> suas redes sociais na quarta-feira </a>, 14, ele informou que a Emenda Constitucional 110/2021 pode aumentar o gasto com pessoal em 61%, impedindo a contrata&ccedil;&atilde;o de agentes.</p>\r\n\r\n<p>&ldquo;A Emenda Constitucional 110/2021, a emenda Titanic, que quebra o Estado no meio para depois afundar, pode impedir a realiza&ccedil;&atilde;o do concurso PC TO&rdquo;, disse o secret&aacute;rio.</p>\r\n\r\n<p>Essa emenda &eacute; derivada da PEC dos Pioneiros. O secret&aacute;rio acredita que essa medida pode impossibilitar os pagamentos de progress&otilde;es e do novo Plano de Cargos, Carreiras e Subs&iacute;dios da corpora&ccedil;&atilde;o.</p>\r\n\r\n<p>Tal Emenda Constitucional disp&otilde;e sobre a convalida&ccedil;&atilde;o de atos administrativos praticados no Estado do Tocantins entre 1&ordm; de janeiro de 1989 e 31 de dezembro de 1994. O que pode readmitir at&eacute; 15 mil pessoas aprovadas no primeiro concurso p&uacute;blico do Estado.</p>\r\n\r\n<p>O receio do governo gira em torno das discuss&otilde;es da legalidade do primeiro concurso TO. Na &eacute;poca, mais de 15 mil pessoas foram exoneradas.</p>\r\n\r\n<p>Um relat&oacute;rio elaborado pela Procuradoria-Geral do estado de Tocantins apontou que a revis&atilde;o das exonera&ccedil;&otilde;es pode levar a um impacto hipot&eacute;tico de at&eacute; R$ 1,6 bilh&atilde;o. Al&eacute;m disso, PGE TO identificou que haveria enormes gastos com pens&otilde;es por morte e invalidez, e aposentadorias.</p>\r\n\r\n<p>Apesar da not&iacute;cia, o secret&aacute;rio de Seguran&ccedil;a do Tocantins informou que o governador Mauro Carlesse far&aacute; o poss&iacute;vel para continuar fazendo uma gest&atilde;o respons&aacute;vel e melhorando todos os &iacute;ndices de desenvolvimento do Estado.</p>\r\n\r\n<p>&ldquo;Estamos confiantes que essa irresponsabilidade fiscal e administrativa ser&aacute; superada e o #concursopcto seguir&aacute;&rdquo;, afirmou Cristiano Sampaio.</p>\r\n\r\n<p>No dia 3 de mar&ccedil;o, o governo autorizou que a Secretaria de Seguran&ccedil;a P&uacute;blica adotasse os&nbsp;<a href="https://folhadirigida.com.br/concursos/noticias/policia-civil-de-tocantins-pc-to-mig/concurso-pc-to-2021-autorizacao?utm_source=site&amp;utm_medium=materias&amp;utm_campaign=jornalismo" title="Concurso PC TO 2021: governo autoriza novo edital e forma comissão">tr&acirc;mites necess&aacute;rios para o novo concurso PC TO</a>.&nbsp;O objetivo &eacute; que as novas vagas supram o crescente d&eacute;ficit de policiais civis no Estado.</p>\r\n\r\n<h2><strong>&Agrave; espera de concurso, PC TO tem mil cargos vagos</strong></h2>\r\n\r\n<p>No final de junho, o secret&aacute;rio de Seguran&ccedil;a informou que a Pol&iacute;cia Civil do Estado de Tocantins registra&nbsp;<a href="https://folhadirigida.com.br/concursos/noticias/policia-civil-de-tocantins-pc-to-mig/concurso-pc-to-2021-cargos-vagos-2" title="Concurso PC TO: secretário confirma 1.071 cargos vagos">1.071 cargos vagos&nbsp;em todo o seu quadro</a>, sendo:</p>\r\n\r\n<ul>\r\n\t<li>621 agentes;</li>\r\n\t<li>225 escriv&atilde;es;</li>\r\n\t<li>78 papilosopistas;</li>\r\n\t<li>73 delegados;</li>\r\n\t<li>57 peritos; e</li>\r\n\t<li>17 agente de necrotomia.</li>\r\n</ul>\r\n\r\n<p>De acordo com Cristiano Sampaio, o n&uacute;mero de vagas imediatas depender&aacute;&nbsp;do or&ccedil;amento dispon&iacute;vel no pr&oacute;ximo ano para as nomea&ccedil;&otilde;es.</p>	planejamento, estudos, até passar, concurso públic	concurso-policia-civil-de-tocantins	t	2021-07-15 18:08:33-03	2021-07-15 18:10:35.081198-03	2021-07-15 18:10:35.08122-03	1	1	images/impeditivo-concurso-pc-to.png	De acordo com secretário de Segurança do Tocantins, a Emenda Constitucional 110/2021 pode impedir abertura do concurso PC TO. Entenda!
5	Concurso PM PA: divulgados os resultados finais das prova objetiva	<p>O Iades divulgou os resultados finais das provas objetivas do <strong><a href="https://folhadirigida.com.br/concursos/noticias/instituicao-policia-militar-do-para">concurso PM PA</a></strong>, para todos os candidatos. Al&eacute;m disso, a banca j&aacute; divulgou a convoca&ccedil;&atilde;o dos aprovados para a realiza&ccedil;&atilde;o das pr&oacute;ximas fases.</p>\r\n\r\n<p>Ao todo, para suprir essa demanda de resultados e convoca&ccedil;&atilde;o, a banca divulgou tr&ecirc;s editais, de n&ordm; 20, 21 e 22, que podem ser acessados abaixo:</p>\r\n\r\n<p>Os resultados divulgados acima s&atilde;o definitivos e, por isso, n&atilde;o s&atilde;o pass&iacute;veis mais de recurso. Os <strong><a href="https://folhadirigida.com.br/concursos/noticias/policia-militar-do-para/concurso-pm-pa-tem-resultado-preliminar-divulgado">resultados preliminares</a></strong> foram publicados anteriormente.</p>\r\n\r\n<p>As convoca&ccedil;&otilde;es divulgadas pelo Iades foram para as fases de avalia&ccedil;&atilde;o psicol&oacute;gica e investiga&ccedil;&atilde;o de antecedentes pessoais. Inclusive, a banca j&aacute; disponibilizou o link espec&iacute;fico destinado a esses formul&aacute;rios.</p>\r\n\r\n<p>Tamb&eacute;m j&aacute; foi liberado pelo Iades o&nbsp;formul&aacute;rio para comprova&ccedil;&atilde;o de requisito de idade. Confira a seguir as datas divulgadas pela banca:</p>\r\n\r\n<ul>\r\n\t<li>Avalia&ccedil;&atilde;o psicol&oacute;gica (2&ordf; etapa) -&nbsp;entre os dias 23 de julho e 2 de agosto de 2021;</li>\r\n\t<li>Investiga&ccedil;&atilde;o de Antecedentes Pessoais (5&ordf; etapa) entre os dias 23 de julho e 2 de agosto de 2021,</li>\r\n</ul>\r\n\r\n<p>A carta para a investiga&ccedil;&atilde;o de antecedentes deve ser&nbsp;enviada via postal &ndash; carta registrada com AR (Aviso de Recebimento) ou SEDEX, para o Centro de Forma&ccedil;&atilde;o de Pra&ccedil;as (CFAP), no seguinte endere&ccedil;o: Avenida Brigadeiro Prot&aacute;sio, s/n (Completo Operacional da PMPA), Bairro do Marco.</p>\r\n\r\n<h2><strong>Pr&oacute;ximas datas do concurso PM PA</strong></h2>\r\n\r\n<p>Por conta da pandemia e seu agravamento no m&ecirc;s de mar&ccedil;o, o concurso da Pol&iacute;cia Militar do Par&aacute; precisou suspender a aplica&ccedil;&atilde;o das provas para os candidatos do sexo masculino.</p>\r\n\r\n<p>A sele&ccedil;&atilde;o foi retomada no fim de abril&nbsp;e divulgou um novo cronograma. Veja as pr&oacute;ximas datas!</p>\r\n\r\n<h2><strong>Pr&oacute;ximas datas do concurso PM PA</strong></h2>\r\n\r\n<p>Por conta da pandemia e seu agravamento no m&ecirc;s de mar&ccedil;o, o concurso da Pol&iacute;cia Militar do Par&aacute; precisou suspender a aplica&ccedil;&atilde;o das provas para os candidatos do sexo masculino.</p>\r\n\r\n<p>A sele&ccedil;&atilde;o foi retomada no fim de abril&nbsp;e divulgou um novo cronograma. Veja as pr&oacute;ximas datas!</p>\r\n\r\n<h2><strong>Concurso PM PA: candidatos concorrem a 2,4 mil vagas</strong></h2>\r\n\r\n<p>Os&nbsp;<strong><a href="https://folhadirigida.com.br/concursos/noticias/policia-militar-do-para/concurso-pm-pa-2020-edital">editais do concurso PM PA</a></strong>&nbsp;somam 2.405 vagas de soldado e oficial. A maior parte das oportunidades &eacute; para o cargo de soldado, com&nbsp;&nbsp;<strong>2.310 vagas</strong>&nbsp;para candidatos de ambos os sexos.</p>\r\n\r\n<p>Para soldado (pra&ccedil;as), a oferta &eacute; de 2.310 vagas para candidatos de ambos os sexos. Dessas, s&atilde;o 2.079&nbsp;para homens e 231 para mulheres. Para concorrer &eacute; preciso ter n&iacute;vel m&eacute;dio.</p>\r\n\r\n<p>J&aacute; para oficiais, o edital traz 95 vagas para quem tem curso de n&iacute;vel superior. Dessas, 85 s&atilde;o para homens e dez para mulheres.</p>	pm pa, concursos 2021	concurso-pm-pa-divulgados-os-resultados-finais-das	t	2021-07-15 18:10:35-03	2021-07-15 18:13:16.401863-03	2021-07-15 18:13:16.401883-03	1	1	images/pm-pa-foto-governo-2020.jpg	O concurso PM PA 2021 para soldados teve o resultado final da prova objetiva divulgado e convoca os candidatos para próximas fases.
6	Prefeito tenta garantir novos concursos Olinda PE, após dez anos	<p>O prefeito de Olinda,&nbsp;Professor Lup&eacute;rcio, anunciou que j&aacute; trabalha para garantir a realiza&ccedil;&atilde;o de<strong> novos concursos p&uacute;blicos e processos seletivos </strong>no munic&iacute;pio. Se concretizar, a administra&ccedil;&atilde;o vai prover novos servidores efetivos ap&oacute;s dez anos.</p>\r\n\r\n<p>A <strong><a href="https://www.instagram.com/p/CRPT31whKHx/" rel="noreferrer" target="_blank" title="Acesse o Instagram"> informa&ccedil;&atilde;o foi divulgada </a></strong> pelo representante do munic&iacute;pio por meio do Instagram.</p>\r\n\r\n<p>Professor Lup&eacute;rcio anunciou um encontro com o secretariado para avan&ccedil;ar e discutir sobre o assunto, quando descreveu:</p>\r\n\r\n<p>&quot;O di&aacute;logo &eacute; fundamental para garantir mais conquistas e avan&ccedil;os para Olinda. Me reuni agora h&aacute; pouco com parte do secretariado para discutirmos sobre futuras sele&ccedil;&otilde;es simplificadas e concursos em diversas &aacute;reas aqui da cidade.&quot;</p>\r\n\r\n<p>O chefe do munic&iacute;pio de Olinda, no entanto, n&atilde;o deu mais detalhes ou avan&ccedil;os desse encontro. A expectativa &eacute; para que possam ser publicados novos editais, em breve, para efetivos.</p>\r\n\r\n<p>O munic&iacute;pio de Olinda fica na Regi&atilde;o Metropolitana de Recife, capital de Pernambuco. Se confirmado, o edital pode sair ainda este ano, j&aacute; que h&aacute; tempo h&aacute;bil para realizar os preparativos, dependendo apenas de aval do prefeito.</p>\r\n\r\n<h2><strong>&Uacute;ltimo concurso Olinda PE foi realizado em 2011</strong></h2>\r\n\r\n<p>Um novo edital para efetivos &eacute; de suma import&acirc;ncia, haja vista que a Prefeitura de Olinda PE n&atilde;o realiza concurso p&uacute;blico h&aacute; dez anos. O &uacute;ltimo foi em 2011, quando foram oferecidas 344 vagas em v&aacute;rios cargos.</p>\r\n\r\n<p>A sele&ccedil;&atilde;o foi organizada pelo&nbsp;Instituto de Apoio &agrave; Universidade de Pernambuco, o Iaupe.&nbsp;</p>\r\n\r\n<p>As oportunidades foram para cargos de n&iacute;veis m&eacute;dio, m&eacute;dio/t&eacute;cnico e superior, como:&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>Auditor Fiscal da Fazenda Municipal;</li>\r\n\t<li>M&eacute;dico em v&aacute;rias especialidades;</li>\r\n\t<li>Procurador Municipal;</li>\r\n\t<li>Professor em v&aacute;rias &aacute;reas;</li>\r\n\t<li>T&eacute;cnico de N&iacute;vel Superior;</li>\r\n\t<li>Agente de Tr&acirc;nsito e Transporte;</li>\r\n\t<li>Guarda Municipal;</li>\r\n\t<li>T&eacute;cnico Administrativo;</li>\r\n\t<li>T&eacute;cnico da Fazenda Municipal; e</li>\r\n\t<li>T&eacute;cnico em Seguran&ccedil;a do Trabalho.</li>\r\n</ul>\r\n\r\n<p>Naquela &eacute;poca, as carreiras contavam com sal&aacute;rios entre R$529,61 e&nbsp;R$2.032,67 conforme a&nbsp;fun&ccedil;&atilde;o desejada e carga hor&aacute;ria de trabalho, mas havendo ainda benef&iacute;cios.</p>\r\n\r\n<p>Todos os candidatos foram avaliados por meio de prova objetiva, aplicada no pr&oacute;prio munic&iacute;pio de Olinda.</p>\r\n\r\n<h2><strong>Olinda PE vem de v&aacute;rios processos seletivos</strong></h2>\r\n\r\n<p>Enquanto n&atilde;o &eacute; autorizada a realizar concursos p&uacute;blicos para efetivos, a Prefeitura de Olinda PE vem realizando apenas processos seletivos. Estes, visando a contrataa&ccedil;&atilde;o tempor&aacute;ria de profissionais em v&aacute;rias &aacute;reas.</p>	concurso 2021, pernambuco, olinda	prefeito-tenta-garantir-novos-concursos-olinda-pe	t	2021-07-15 18:13:23-03	2021-07-15 18:15:36.75832-03	2021-09-09 15:42:24.992188-03	1	1	images/reuniao-prefeito-olinda-pe.PNG	O prefeito professor Lupércio anunciou reunião com o secretariado que pode acarretar em novos concursos Olinda PE para várias áreas. Veja!
\.


--
-- Data for Name: courses_course; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.courses_course (id, name, short_description, author, price, what_learn, requirements, description, for_what, image, teacher_id, created_at, is_active, slug, updated_at, url, platform_id, course_id) FROM stdin;
1	Curso Completo de Direito Desportivo	O curso tem por objetivo fomentar o estudo da matéria, transmitir os conhecimentos, os princípios básicos e trazer uma perspectiva do mercado de trabalho no	Ana Paula Terra	290.00	<p>Em um curso completo de 19 aulas, 100% online, voc&ecirc; vai desvendar todo o contexto jur&iacute;dico que envolve as modalidades esportivas.</p>\r\n\r\n<p>Os melhores e mais gabaritados Professores foram reunidos para te mostrar, com total exclusividade, a experi&ecirc;ncia pr&aacute;tica nos contratos utilizados no Direito Desportivo.</p>\r\n\r\n<p>Estude as cl&aacute;usulas de um contrato de trabalho de um atleta profissional e todo funcionamento da justi&ccedil;a desportiva no nosso pa&iacute;s.&nbsp;</p>	<p>Nenhum</p>	<p>poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?</p>\r\n\r\n<p>... estudar com detalhes cl&aacute;usulas espec&iacute;ficas de contratos envolvendo atletas profissionais e patroc&iacute;nio?</p>\r\n\r\n<p>... conhecer a estrutura da Justi&ccedil;a Desportiva no Brasil e o Direito Desportivo do Trabalho ao lado de quem realmente tem experi&ecirc;ncia para transmitir?</p>	<p>Concurseiros</p>	images/adv.jpeg	1	2021-08-11 19:52:01.108228-03	t	curso-completo-de-direito-desportivo	2021-08-11 19:52:01.108257-03	https://cursodireitodesportivo.com.br/?ref=O55542594S	\N	\N
2	Nova correção	E-BOOK COM MAIS DE 1200 QUESTÕES DOS PRINCIPAIS CONCURSOS	Josyeldo	323.99	<p>Aprender 1</p>\r\n\r\n<p>Aprender 2</p>\r\n\r\n<p>Aprender 3</p>	<p>Nenhum</p>	<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<p>Voc&ecirc; est&aacute; na jornada para conquistar sua vaga por meio de um CONCURSO ou outro tipo de avalia&ccedil;&atilde;o classificat&oacute;ria na &aacute;rea da Enfermagem/T&eacute;c Enfermagem?</p>\r\n\r\n<p>Criamos nossas apostilas para poder te ajudar nesta luta, reunimos as melhores quest&otilde;es de concursos e espec&iacute;ficas da &aacute;rea da Enfermagem/T&eacute;c Enfermagem e alguns materiais de b&ocirc;nus para te ajudar ainda mais e tudo isto com um pre&ccedil;o muito BAIXO!</p>\r\n\r\n<p>J&aacute; &eacute; comprovado que incluir quest&otilde;es no seu estudo aumenta e muito sua chance de sucesso, j&aacute; disponibilizamos nosso material para mais de 5mil estudantes e s&oacute; recebemos elogios e feedbacks de &oacute;timos resultados nas avalia&ccedil;&otilde;es.&nbsp;<br />\r\n<br />\r\nN&atilde;o cometa o erro de estudar em cima da hora pois devido a import&acirc;ncia que se foi dada a &aacute;rea da sa&uacute;de devido aos acontecimentos recentes j&aacute; se tramita a abertura de muitos concursos para nossa &aacute;rea al&eacute;m de outras vagas no mercado!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>	<p>Concurseiros</p>	images/curso-de-direito-saiba-tudo-sobre-direito-e-como-se-tornar-advogado-capa-principal.jpg	4	2021-08-11 20:07:02.619577-03	t	nova-correcao	2021-08-11 20:07:02.619611-03	https://superenfs.life/?mcr=ASD16723473	\N	\N
3	O ebook 500 questões de educação física para concursos	O ebook 500 questões de educação física para concursos é um material completo para todos que desejam a aprovação em concursos para professor de educação física.	Marcos Felipe	4567.00	<p>Tudo sobre educa&ccedil;&atilde;o f&iacute;sica</p>	<p>Nenhum</p>	<h3>S&atilde;o 500 quest&otilde;es gabaritadas de conhecimentos espec&iacute;ficos de provas e concursos dos &uacute;ltimos 2 anos. As quest&otilde;es abrange os conte&uacute;dos mais recorrentes de conhecimentos espec&iacute;ficos em concursos p&uacute;blicos.</h3>	<p>Concurseiros</p>	images/curso-de-matematica-basica-gratis.jpg	5	2021-08-11 20:39:22.786324-03	t	o-ebook-500-questoes-de-educacao-fisica-para-concu	2021-08-11 20:39:22.786372-03	https://paginas10.com.br/questoesparaconcursos/?mcr=AVW16723510	\N	\N
4	Curso Completo de Direito Desportivo 2	O curso tem por objetivo fomentar o estudo da matéria, transmitir os conhecimentos, os princípios básicos e trazer uma perspectiva do mercado de trabalho no	Marcos Felipe	233.99	<p>Tudo sobre direito esportivo. Tudo sobre direito esportivo. Tudo sobre direito esportivo. Tudo sobre direito esportivo. Tudo sobre direito esportivo. Tudo sobre direito esportivo. Tudo sobre direito esportivo. Tudo sobre direito esportivo. Tudo sobre direito esportivo.</p>	<p>Nenhum</p>	<div>\r\n<div>\r\n<div>\r\n<p>... poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?</p>\r\n\r\n<p>... estudar com detalhes cl&aacute;usulas espec&iacute;ficas de contratos envolvendo atletas profissionais e patroc&iacute;nio?</p>\r\n\r\n<p>... conhecer a estrutura da Justi&ccedil;a Desportiva no Brasil e o Direito Desportivo do Trabalho ao lado de quem realmente tem experi&ecirc;ncia para transmitir?</p>\r\n</div>\r\n</div>\r\n</div>	<p>Concurseiros</p>	images/direitoesportivo.jpeg	3	2021-08-11 21:04:51.455737-03	t	curso-completo-de-direito-desportivo-2	2021-08-11 21:04:51.455786-03	https://cursodireitodesportivo.com.br/?ref=O55542594S	\N	\N
5	Curso Completo de Direito Desportivo 3	O curso tem por objetivo fomentar o estudo da matéria, transmitir os conhecimentos, os princípios básicos e trazer uma perspectiva do mercado de trabalho no	Ana Paula Terra	341.99	<div>\r\n<div>\r\n<div>\r\n<p>... poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?</p>\r\n\r\n<p>... estudar com detalhes cl&aacute;usulas espec&iacute;ficas de contratos envolvendo atletas profissionais e patroc&iacute;nio?</p>\r\n\r\n<p>... conhecer a estrutura da Justi&ccedil;a Desportiva no Brasil e o Direito Desportivo do Trabalho ao lado de quem realmente tem experi&ecirc;ncia para transmitir?</p>\r\n</div>\r\n</div>\r\n</div>	<p>Nenhum</p>	<div>\r\n<div>\r\n<div>\r\n<p>... poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?</p>\r\n\r\n<p>... estudar com detalhes cl&aacute;usulas espec&iacute;ficas de contratos envolvendo atletas profissionais e patroc&iacute;nio?</p>\r\n\r\n<p>... conhecer a estrutura da Justi&ccedil;a Desportiva no Brasil e o Direito Desportivo do Trabalho ao lado de quem realmente tem experi&ecirc;ncia para transmitir?</p>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>... poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?</p>\r\n\r\n<p>... estudar com detalhes cl&aacute;usulas espec&iacute;ficas de contratos envolvendo atletas profissionais e patroc&iacute;nio?</p>\r\n\r\n<p>... conhecer a estrutura da Justi&ccedil;a Desportiva no Brasil e o Direito Desportivo do Trabalho ao lado de quem realmente tem experi&ecirc;ncia para transmitir?</p>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>... poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?</p>\r\n\r\n<p>... estudar com detalhes cl&aacute;usulas espec&iacute;ficas de contratos envolvendo atletas profissionais e patroc&iacute;nio?</p>\r\n\r\n<p>... conhecer a estrutura da Justi&ccedil;a Desportiva no Brasil e o Direito Desportivo do Trabalho ao lado de quem realmente tem experi&ecirc;ncia para transmitir?</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>	<p>Quem deseja conhecer tudo sobre o direito esportivo</p>	images/direitoesportivo_icnpGT5.jpeg	5	2021-08-11 21:06:30.015056-03	t	curso-completo-de-direito-desportivo-3	2021-08-11 21:06:30.015101-03	https://cursodireitodesportivo.com.br/?ref=O55542594S	\N	\N
6	Curso Completo de Direito Desportivo 4	Poder ter acesso a um Curso Completo, com aulas teóricas e práticas ao lado dos melhores Professores e um material completíssimo e totalmente atualizado?	Ana Paula Terra	345.00	<p>poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?</p>	<p>Nenhum</p>	<p>poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?</p>	<p>Advogados, desportistas, t&eacute;cnicos ou atletas</p>	images/direitoesportivo_fcjTMWW.jpeg	5	2021-08-11 21:14:58.283897-03	t	curso-completo-de-direito-desportivo-4	2021-08-11 21:14:58.283929-03	https://cursodireitodesportivo.com.br/?ref=O55542594S	\N	\N
7	Curso Completo de Direito Desportivo 2	E-BOOK COM MAIS DE 1200 QUESTÕES DOS PRINCIPAIS CONCURSOS	Marcos Felipe	230.97	<p>O curso é direcionado a todos os profissionais que estejam ligados à área desportiva ou que pretendam iniciar agora (estudantes, agentes, advogados, profissionais de educação física etc.)</p>	<p>Nenhum</p>	<p>O curso é direcionado a todos os profissionais que estejam ligados à área desportiva ou que pretendam iniciar agora (estudantes, agentes, advogados, profissionais de educação física etc.)O curso é direcionado a todos os profissionais que estejam ligados à área desportiva ou que pretendam iniciar agora (estudantes, agentes, advogados, profissionais de educação física etc.)O curso é direcionado a todos os profissionais que estejam ligados à área desportiva ou que pretendam iniciar agora (estudantes, agentes, advogados, profissionais de educação física etc.)O curso é direcionado a todos os profissionais que estejam ligados à área desportiva ou que pretendam iniciar agora (estudantes, agentes, advogados, profissionais de educação física etc.)O curso é direcionado a todos os profissionais que estejam ligados à área desportiva ou que pretendam iniciar agora (estudantes, agentes, advogados, profissionais de educação física etc.)</p>	<p>Advogas em geral</p>	images/direitoesportivo_wkUW0MR.jpeg	1	2021-08-11 21:16:45.182556-03	t	curso-completo-de-direito-desportivo-2-2	2021-08-11 21:16:45.182622-03	https://paginas10.com.br/questoesparaconcursos/?mcr=AVW16723510	\N	\N
8	Curso Completo de Direito Desportivo 3	O curso tem por objetivo fomentar o estudo da matéria, transmitir os conhecimentos, os princípios básicos e trazer uma perspectiva do mercado de trabalho no	Francisco André	674.97	<p>Poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?Poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?Poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?</p>	<p>Nenhum</p>	<p>Poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?Poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?Poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?Poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?Poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?Poder ter acesso a um Curso Completo, com aulas te&oacute;ricas e pr&aacute;ticas ao lado dos melhores Professores e um material complet&iacute;ssimo e totalmente atualizado?</p>	<p>Advogados e concurseiros de plant&atilde;o</p>	images/direitoesportivo_x5b8F19.jpeg	4	2021-08-11 21:18:22.829846-03	t	curso-completo-de-direito-desportivo-3-2	2021-08-11 21:18:22.829891-03	https://cursodireitodesportivo.com.br/?ref=O55542594S	\N	\N
\.


--
-- Data for Name: courses_platform; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.courses_platform (id, name, slug, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: courses_teacher; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.courses_teacher (id, name, background, bio, photo, created_at, updated_at) FROM stdin;
1	Ana Paula Terra e Outros	Advogada	<p>Atualmente &eacute; advogada do Comit&ecirc; Ol&iacute;mpico Brasileiro, mas exerceu as fun&ccedil;&otilde;es de assessora jur&iacute;dica em &oacute;rg&atilde;os p&uacute;blicos do Estado do RJ (FAETEC e DETRAN/RJ), atrav&eacute;s dos quais adquiriu experi&ecirc;ncia e pretende a conclus&atilde;o de Especializa&ccedil;&atilde;o em Direito P&uacute;blico, com &ecirc;nfase em licita&ccedil;&otilde;es e contratos administrativos.</p>	photos/ana-paula-terra2.png	2021-09-09 09:51:35.555927-03	2021-09-09 09:51:35.566353-03
3	Fábia A. e Outros	Advogada	<p>Advogada</p>		2021-09-09 09:51:35.555927-03	2021-09-09 09:51:35.566353-03
4	Cristiano Caús	Mestre em Direito	<p>Gradua&ccedil;&atilde;o Acad&ecirc;mica: Mestre em Direito Internacional do Esporte pelo Instituto Superior de Derecho y Econom&iacute;a, de Madrid, Espanha (2015); MBA em Gest&atilde;o e Marketing Esportivo pela Trevisan Escola de Neg&oacute;cios (2013); Especializa&ccedil;&atilde;o em Direito do Trabalho e Processo do Trabalho e Processo do Trabalho pela Escola Paulista de Direito (2007); Especializa&ccedil;&atilde;o em Direito Desportivo pela Faculdade de Direito de S&atilde;o Bernardo do Campo (2005); e Gradua&ccedil;&atilde;o em Direito pela Faculdade de Direito de S&atilde;o Bernardo do Campo (1999). Magist&eacute;rio: Professor titular de MBA em Gest&atilde;o e Marketing Esportivo da Trevisan Escola de Neg&oacute;cios, desde 2005; Professor de P&oacute;s-Gradua&ccedil;&atilde;o em Direito Desportivo do INEJE-RS; Coordenador e tutor dos cursos de Gest&atilde;o Executiva em Gest&atilde;o do Esporte na Trevisan Escola de Neg&oacute;cios. Publica&ccedil;&atilde;o: Autor do livro Direito Aplicado &agrave; Gest&atilde;o do Esporte, Trevisan Editora, S&atilde;o Paulo: 2013.</p>	photos/cristiano-caus.png	2021-09-09 09:51:35.555927-03	2021-09-09 09:51:35.566353-03
5	Danielle Maiolini	Advogada	<p>Mestranda em Direito do Trabalho na Faculdade de Direito da UFMG. Graduada em Direito pela Universidade Federal de Minas Gerais (2013); P&oacute;s-Graduada em Direito do Trabalho pela Universidade de Coimbra; P&oacute;s-Graduada em Direito Desportivo e Neg&oacute;cios do Esporte pelo Centro de Direito Internacional (CEDIN). Co-coordenadora do Grupo de Estudos em Direito Desportivo da UFMG; Professora no Curso de P&oacute;s-Gradua&ccedil;&atilde;o em Direito Desportivo e Neg&oacute;cios do Esporte no Centro de Direito Internacional (CEDIN); Procuradora no STJD de Futebol; Membro da Comiss&atilde;o de Direito Desportivo da OAB/MG.</p>	photos/danielle-maiolini-mendes.png	2021-09-09 09:51:35.555927-03	2021-09-09 09:51:35.566353-03
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-07-15 12:03:39.239473-03	1	Concursos	1	[{"added": {}}]	8	1
2	2021-07-15 12:03:45.836046-03	2	Disciplina	1	[{"added": {}}]	8	1
3	2021-07-15 12:03:51.029173-03	3	Planejamento	1	[{"added": {}}]	8	1
4	2021-07-15 16:03:06.560602-03	1	Concurso Banco do Brasil 2021	1	[{"added": {}}]	9	1
5	2021-07-15 16:08:13.356768-03	1	Concurso Banco do Brasil 2021	2	[{"changed": {"fields": ["Subt\\u00edtulo"]}}]	9	1
6	2021-07-15 16:10:05.009824-03	1	Conheça nossa história!	1	[{"added": {}}]	7	1
7	2021-07-15 18:06:02.804986-03	2	Como passar no seu primeiro concurso	1	[{"added": {}}]	9	1
8	2021-07-15 18:08:33.162981-03	3	Concurso da Marinha tem novas datas	1	[{"added": {}}]	9	1
9	2021-07-15 18:10:35.08349-03	4	Concurso Polícia Civil de Tocantins	1	[{"added": {}}]	9	1
10	2021-07-15 18:13:16.405387-03	5	Concurso PM PA: divulgados os resultados finais das prova objetiva	1	[{"added": {}}]	9	1
11	2021-07-15 18:15:36.761129-03	6	Prefeito tenta garantir novos concursos Olinda PE, após dez anos	1	[{"added": {}}]	9	1
12	2021-08-11 18:47:41.733111-03	1	Ana Paula Terra e Outros	1	[{"added": {}}]	10	1
13	2021-08-11 18:48:17.410318-03	2	Ana Paula Terra e Outros	1	[{"added": {}}]	10	1
14	2021-08-11 18:48:42.583398-03	2	Ana Paula Terra e Outros	3		10	1
15	2021-08-11 18:52:41.403014-03	3	Fábia A. e Outros	1	[{"added": {}}]	10	1
16	2021-08-11 19:27:48.45166-03	4	Cristiano Caús	1	[{"added": {}}]	10	1
17	2021-08-11 19:32:48.578898-03	5	Danielle Maiolini	1	[{"added": {}}]	10	1
18	2021-08-11 19:52:01.112299-03	1	Curso Completo de Direito Desportivo	1	[{"added": {}}]	11	1
19	2021-08-11 20:07:02.624299-03	2	Nova correção	1	[{"added": {}}]	11	1
20	2021-08-11 20:39:22.791852-03	3	O ebook 500 questões de educação física para concursos	1	[{"added": {}}]	11	1
21	2021-08-11 21:04:51.458644-03	4	Curso Completo de Direito Desportivo 2	1	[{"added": {}}]	11	1
22	2021-08-11 21:06:30.01801-03	5	Curso Completo de Direito Desportivo 3	1	[{"added": {}}]	11	1
23	2021-08-11 21:14:58.285761-03	6	Curso Completo de Direito Desportivo 4	1	[{"added": {}}]	11	1
24	2021-08-11 21:16:45.188408-03	7	Curso Completo de Direito Desportivo 2	1	[{"added": {}}]	11	1
25	2021-08-11 21:18:22.833412-03	8	Curso Completo de Direito Desportivo 3	1	[{"added": {}}]	11	1
26	2021-08-14 18:52:16.640446-03	1	Saiu o número de inscritos por região - BB 2021	1	[{"added": {}}]	12	1
27	2021-08-14 19:10:37.204681-03	2	Os 10 concursos mais esperados de 2021/2022	1	[{"added": {}}]	12	1
28	2021-08-14 19:12:52.361119-03	3	Mega Revisão de Véspera - Concurso Polícia Militar - AL 2021	1	[{"added": {}}]	12	1
29	2021-08-14 19:14:42.598114-03	4	Concursos abertos nesta semana	1	[{"added": {}}]	12	1
30	2021-08-14 19:17:12.773487-03	5	Os 15 melhores concursos de 2021	1	[{"added": {}}]	12	1
31	2021-08-14 19:19:37.436451-03	6	Concurso TJSP - 2021 - Saiba tudo este concurso neste vídeo	1	[{"added": {}}]	12	1
32	2021-08-14 19:30:33.714861-03	6	Concurso TJSP - 2021 - Saiba tudo este concurso neste vídeo	2	[{"changed": {"fields": ["C\\u00f3digo Incorpora\\u00e7\\u00e3o"]}}]	12	1
33	2021-08-14 21:39:30.896034-03	1	Saiu o número de inscritos por região - BB 2021	2	[{"changed": {"fields": ["C\\u00f3digo Incorpora\\u00e7\\u00e3o"]}}]	12	1
34	2021-08-14 21:41:04.460178-03	2	Os 10 concursos mais esperados de 2021/2022	2	[{"changed": {"fields": ["C\\u00f3digo Incorpora\\u00e7\\u00e3o"]}}]	12	1
35	2021-08-14 21:41:29.524053-03	5	Os 15 melhores concursos de 2021	2	[{"changed": {"fields": ["C\\u00f3digo Incorpora\\u00e7\\u00e3o"]}}]	12	1
36	2021-08-14 21:41:55.408236-03	4	Concursos abertos nesta semana	2	[{"changed": {"fields": ["C\\u00f3digo Incorpora\\u00e7\\u00e3o"]}}]	12	1
37	2021-08-14 21:42:28.538172-03	3	Mega Revisão de Véspera - Concurso Polícia Militar - AL 2021	2	[{"changed": {"fields": ["C\\u00f3digo Incorpora\\u00e7\\u00e3o"]}}]	12	1
38	2021-09-09 11:04:21.728226-03	2	https://instagram.com/martateste	1	[{"added": {}}]	14	1
39	2021-09-09 15:41:26.948237-03	6	Prefeito tenta garantir novos concursos Olinda PE, após dez anos	2	[{"changed": {"fields": ["Conte\\u00fado"]}}]	9	1
40	2021-09-09 15:42:24.993444-03	6	Prefeito tenta garantir novos concursos Olinda PE, após dez anos	2	[{"changed": {"fields": ["Conte\\u00fado"]}}]	9	1
41	2021-09-09 16:49:54.498836-03	2	admin	1	[{"added": {}}]	15	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	pages	aboutus
8	blog	category
9	blog	post
10	courses	teacher
11	courses	course
12	pages	video
13	courses	platform
14	pages	socialnetwork
15	accounts	profile
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-07-14 18:36:01.49209-03
2	auth	0001_initial	2021-07-14 18:36:01.712463-03
3	admin	0001_initial	2021-07-14 18:36:01.772985-03
4	admin	0002_logentry_remove_auto_add	2021-07-14 18:36:01.795932-03
5	admin	0003_logentry_add_action_flag_choices	2021-07-14 18:36:01.814072-03
6	contenttypes	0002_remove_content_type_name	2021-07-14 18:36:01.848816-03
7	auth	0002_alter_permission_name_max_length	2021-07-14 18:36:01.866003-03
8	auth	0003_alter_user_email_max_length	2021-07-14 18:36:01.884065-03
9	auth	0004_alter_user_username_opts	2021-07-14 18:36:01.90241-03
10	auth	0005_alter_user_last_login_null	2021-07-14 18:36:01.921866-03
11	auth	0006_require_contenttypes_0002	2021-07-14 18:36:01.928938-03
12	auth	0007_alter_validators_add_error_messages	2021-07-14 18:36:01.94765-03
13	auth	0008_alter_user_username_max_length	2021-07-14 18:36:01.976975-03
14	auth	0009_alter_user_last_name_max_length	2021-07-14 18:36:01.999465-03
15	auth	0010_alter_group_name_max_length	2021-07-14 18:36:02.022076-03
16	auth	0011_update_proxy_permissions	2021-07-14 18:36:02.041055-03
17	auth	0012_alter_user_first_name_max_length	2021-07-14 18:36:02.059532-03
18	sessions	0001_initial	2021-07-14 18:36:02.102746-03
19	pages	0001_initial	2021-07-14 22:56:14.237456-03
20	pages	0002_alter_aboutus_text_page	2021-07-15 09:33:45.631626-03
21	blog	0001_initial	2021-07-15 10:24:22.002236-03
22	blog	0002_post	2021-07-15 11:59:24.180065-03
23	blog	0003_post_image	2021-07-15 12:03:13.811647-03
24	blog	0004_post_headline	2021-07-15 16:05:34.611027-03
25	courses	0001_initial	2021-07-15 17:40:44.081299-03
26	courses	0002_course	2021-07-15 17:41:00.656584-03
27	courses	0003_auto_20210715_1746	2021-07-15 17:46:21.683762-03
28	courses	0004_course_url	2021-07-15 17:53:03.689262-03
29	pages	0003_video	2021-08-14 18:21:36.259484-03
30	pages	0004_alter_video_text	2021-08-14 18:24:02.038104-03
31	pages	0005_auto_20210814_1930	2021-08-14 19:30:10.687552-03
32	courses	0005_platform	2021-09-05 23:08:32.539697-03
33	courses	0006_course_platform	2021-09-05 23:09:59.379003-03
34	courses	0007_auto_20210906_1441	2021-09-06 14:41:33.649402-03
35	courses	0008_auto_20210909_0951	2021-09-09 09:51:35.567598-03
36	courses	0009_auto_20210909_0958	2021-09-09 09:58:27.334151-03
37	courses	0010_auto_20210909_1009	2021-09-09 10:09:39.284427-03
38	pages	0006_auto_20210909_1011	2021-09-09 10:11:02.909032-03
39	blog	0005_auto_20210909_1023	2021-09-09 10:23:37.029943-03
40	pages	0007_socialnetwork	2021-09-09 11:01:30.108448-03
41	blog	0006_alter_post_content	2021-09-09 15:40:25.053392-03
42	accounts	0001_initial	2021-09-09 16:42:13.138742-03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
twfqvwkjzu4p8cpiwimqaq3gv97l482w	.eJxVjMEOwiAQRP-FsyEsdEE8evcbyC5QqRpISnsy_rtt0oNe5jDvzbxFoHUpYe15DlMSFwHi9NsxxWeuO0gPqvcmY6vLPLHcFXnQLm8t5df1cP8OCvWyrQkHdtGbNG6B1isDSQMjDIjOqIyMTnsc81k5k1ATOGSwKgIaQG_F5wu9kzZP:1m40VU:7H8x9aZdtT65buhcgBZh1sW4pzW3Wc_zTcf0N1T8l8Q	2021-07-29 09:30:24.282923-03
vmhrka2qzvkbgwmz37tmg4fjh5u5vddl	.eJxVjMEOwiAQRP-FsyEsdEE8evcbyC5QqRpISnsy_rtt0oNe5jDvzbxFoHUpYe15DlMSFwHi9NsxxWeuO0gPqvcmY6vLPLHcFXnQLm8t5df1cP8OCvWyrQkHdtGbNG6B1isDSQMjDIjOqIyMTnsc81k5k1ATOGSwKgIaQG_F5wu9kzZP:1m4oYZ:DH0fdfi5GrSRyOBv0bVDAHcYq5N5uYXY5J5YruJBbVU	2021-07-31 14:56:55.736616-03
ass04t9znw2hnictxxds7jc9clint5wh	.eJxVjMEOwiAQRP-FsyEsdEE8evcbyC5QqRpISnsy_rtt0oNe5jDvzbxFoHUpYe15DlMSFwHi9NsxxWeuO0gPqvcmY6vLPLHcFXnQLm8t5df1cP8OCvWyrQkHdtGbNG6B1isDSQMjDIjOqIyMTnsc81k5k1ATOGSwKgIaQG_F5wu9kzZP:1mDrZ2:ktZIaC0qIe6BLTDmqJjgHqCDIlETBULSkGly9MtacPk	2021-08-25 13:58:48.259299-03
bd0u1veg5ivdqh6kt6ir50e2fk7gdtky	.eJxVjMEOwiAQRP-FsyEsdEE8evcbyC5QqRpISnsy_rtt0oNe5jDvzbxFoHUpYe15DlMSFwHi9NsxxWeuO0gPqvcmY6vLPLHcFXnQLm8t5df1cP8OCvWyrQkHdtGbNG6B1isDSQMjDIjOqIyMTnsc81k5k1ATOGSwKgIaQG_F5wu9kzZP:1mF18x:Cy8LxOpByMKP1A7CPF6KYGnS1VDpfYvwyN7NfXJXZfY	2021-08-28 18:24:39.523666-03
7j24shldkbtdtx3u9ir2ws265f47ui87	.eJxVjEEOwiAQRe_C2pACxSku3fcMZBgGqRpISrsy3l1JutDdz38v7yU87lv2e-PVL1FchBKn3y8gPbh0EO9YblVSLdu6BNkVedAm5xr5eT3cv0DGlnuWlXNunICCjmwSW2ZAhQOP3xHNOLkELlkFgHgGDaSHFImNpQSBnXh_APdZOLY:1mOJmN:CTUayQNkCG-li2Zv05vllKRUaB4E394kwfhkh3czglE	2021-09-23 10:07:47.876126-03
\.


--
-- Data for Name: pages_aboutus; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.pages_aboutus (id, title_page, text_page, created_at, updated_at) FROM stdin;
1	Conheça nossa história!	<div>\r\n<p>At Front, our mission has always been focused on bringing openness and transparency to the design process. We&#39;ve always believed that by providing a space where designers can share ongoing work not only empowers them to make better products, it also helps them grow. We&#39;re proud to be a part of creating a more open culture and to continue building a product that supports this vision.</p>\r\n\r\n<p>As we&#39;ve grown, we&#39;ve seen how Front has helped companies such as Spotify, Microsoft, Airbnb, Facebook, and Intercom bring their designers closer together to create amazing things. We&#39;ve also learned that when the culture of sharing is brought in earlier, the better teams adapt and communicate with one another.</p>\r\n\r\n<p>That&#39;s why we are excited to share that we now have a free version of Front, which will allow individual designers, startups and other small teams a chance to create a culture of openness early on.</p>\r\n\r\n<p><strong>Bringing the culture of sharing to everyone</strong></p>\r\n\r\n<p>We know the power of sharing is real, and we want to create an opportunity for everyone to try Front and explore how transformative open communication can be. Now you can have a team of one or two designers and unlimited spectators (think PMs, management, marketing, etc.) share work and explore the design process earlier.</p>\r\n\r\n<p>Small teams and individual designers need a space where they can watch the design process unfold, both for themselves and for the people they work with &ndash; no matter if it&#39;s a fellow designer, product manager, developer or client. Front allows you to invite more people into the process, creating a central place for conversation around design. As those teams grow, transparency and collaboration becomes integrated in how they communicate and work together.</p>\r\n\r\n<p>We will continue to update Front; if you have any questions or suggestions, please contact us!</p>\r\n</div>	2021-09-09 10:11:02.905937-03	2021-09-09 10:11:02.907904-03
\.


--
-- Data for Name: pages_socialnetwork; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.pages_socialnetwork (id, network, profile_url) FROM stdin;
2	1	https://instagram.com/martateste
\.


--
-- Data for Name: pages_video; Type: TABLE DATA; Schema: public; Owner: martaconcurseirauser
--

COPY public.pages_video (id, title, short_description, text, thumbnail, slug, created_at, updated_at, embed) FROM stdin;
2	Os 10 concursos mais esperados de 2021/2022	Veja os concursos mais aguardados do ano.	<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>	images/Concursos-2021_Facebook-2.jpg	os-10-concursos-mais-esperados-de-20212022	2021-08-14 19:10:37.204029-03	2021-08-14 21:41:04.459434-03	<iframe width="1280" height="720" src="https://www.youtube.com/embed/pFv2HRPEuRA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
4	Concursos abertos nesta semana	Veja a lista dos concursos abertos da semana	<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>	images/concursos-abertos-1024x576.webp	concursos-abertos-nesta-semana	2021-08-14 19:14:42.597551-03	2021-08-14 21:41:55.407423-03	<iframe width="1280" height="720" src="https://www.youtube.com/embed/UISD_rTRuCo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
3	Mega Revisão de Véspera - Concurso Polícia Militar - AL 2021	Não perca esta revisão por nada!	<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>	images/concurso-pmal.png	mega-revisao-de-vespera-concurso-policia-militar-a	2021-08-14 19:12:52.36036-03	2021-08-14 21:42:28.537447-03	<iframe width="1280" height="720" src="https://www.youtube.com/embed/CTbnaUj5TlE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
6	Concurso TJSP - 2021 - Saiba tudo este concurso neste vídeo	Dúvidas em relação o concurso do TJSP? Vem cá, vou te esclarecer todas!	<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>	images/tjsp.png	concurso-tjsp-2021-saiba-tudo-este-concurso-neste	2021-08-14 19:19:37.435727-03	2021-08-14 19:30:33.71367-03	<iframe width="1280" height="720" src="https://www.youtube.com/embed/IXlO7XC9ju0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
1	Saiu o número de inscritos por região - BB 2021	Descubra nesse vídeo com quantas pessoas você vai disputar uma vaga.	<p>Voc&ecirc; sabe com quantas pessoas vai disputar uma vaga no Concurso do Banco do Brasil 2021? Saiba agora nesse v&iacute;deos.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>	images/sddefault.jpg	saiu-o-numero-de-inscritos-por-regiao-bb-2021	2021-08-14 18:52:16.638969-03	2021-08-14 21:39:30.895252-03	<iframe width="1280" height="720" src="https://www.youtube.com/embed/5jxybdXUsa0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
5	Os 15 melhores concursos de 2021	Está indeciso qual concurso fazer? Veja nossa dica com os 15 melhores.	<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>	images/maxresdefault1.jpg	os-15-melhores-concursos-de-2021	2021-08-14 19:17:12.772953-03	2021-08-14 21:41:29.523325-03	<iframe width="1280" height="720" src="https://www.youtube.com/embed/hLpdIEIK0Zo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
\.


--
-- Name: accounts_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.accounts_profile_id_seq', 2, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: blog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.blog_category_id_seq', 3, true);


--
-- Name: blog_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.blog_post_id_seq', 6, true);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 8, true);


--
-- Name: courses_platform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.courses_platform_id_seq', 1, false);


--
-- Name: courses_teacher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.courses_teacher_id_seq', 5, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 41, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 42, true);


--
-- Name: pages_aboutus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.pages_aboutus_id_seq', 1, true);


--
-- Name: pages_socialnetwork_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.pages_socialnetwork_id_seq', 2, true);


--
-- Name: pages_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: martaconcurseirauser
--

SELECT pg_catalog.setval('public.pages_video_id_seq', 6, true);


--
-- Name: accounts_profile accounts_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.accounts_profile
    ADD CONSTRAINT accounts_profile_pkey PRIMARY KEY (id);


--
-- Name: accounts_profile accounts_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.accounts_profile
    ADD CONSTRAINT accounts_profile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_category blog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_pkey PRIMARY KEY (id);


--
-- Name: blog_category blog_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_slug_key UNIQUE (slug);


--
-- Name: blog_post blog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);


--
-- Name: blog_post blog_post_slug_key; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_slug_key UNIQUE (slug);


--
-- Name: courses_course courses_course_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_pkey PRIMARY KEY (id);


--
-- Name: courses_course courses_course_platform_id_course_id_c7bb9d6f_uniq; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_platform_id_course_id_c7bb9d6f_uniq UNIQUE (platform_id, course_id);


--
-- Name: courses_course courses_course_slug_key; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_slug_key UNIQUE (slug);


--
-- Name: courses_platform courses_platform_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.courses_platform
    ADD CONSTRAINT courses_platform_pkey PRIMARY KEY (id);


--
-- Name: courses_platform courses_platform_slug_key; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.courses_platform
    ADD CONSTRAINT courses_platform_slug_key UNIQUE (slug);


--
-- Name: courses_teacher courses_teacher_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.courses_teacher
    ADD CONSTRAINT courses_teacher_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: pages_aboutus pages_aboutus_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.pages_aboutus
    ADD CONSTRAINT pages_aboutus_pkey PRIMARY KEY (id);


--
-- Name: pages_socialnetwork pages_socialnetwork_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.pages_socialnetwork
    ADD CONSTRAINT pages_socialnetwork_pkey PRIMARY KEY (id);


--
-- Name: pages_video pages_video_pkey; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.pages_video
    ADD CONSTRAINT pages_video_pkey PRIMARY KEY (id);


--
-- Name: pages_video pages_video_slug_key; Type: CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.pages_video
    ADD CONSTRAINT pages_video_slug_key UNIQUE (slug);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_category_slug_92643dc5_like; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX blog_category_slug_92643dc5_like ON public.blog_category USING btree (slug varchar_pattern_ops);


--
-- Name: blog_post_author_id_dd7a8485; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);


--
-- Name: blog_post_category_id_c326dbf8; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX blog_post_category_id_c326dbf8 ON public.blog_post USING btree (category_id);


--
-- Name: blog_post_slug_b95473f2_like; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);


--
-- Name: courses_course_platform_id_f72126c7; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX courses_course_platform_id_f72126c7 ON public.courses_course USING btree (platform_id);


--
-- Name: courses_course_slug_9c670f14_like; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX courses_course_slug_9c670f14_like ON public.courses_course USING btree (slug varchar_pattern_ops);


--
-- Name: courses_course_teacher_id_846fa526; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX courses_course_teacher_id_846fa526 ON public.courses_course USING btree (teacher_id);


--
-- Name: courses_platform_slug_2c1a0aec_like; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX courses_platform_slug_2c1a0aec_like ON public.courses_platform USING btree (slug varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: pages_video_slug_5df431cc_like; Type: INDEX; Schema: public; Owner: martaconcurseirauser
--

CREATE INDEX pages_video_slug_5df431cc_like ON public.pages_video USING btree (slug varchar_pattern_ops);


--
-- Name: accounts_profile accounts_profile_user_id_49a85d32_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.accounts_profile
    ADD CONSTRAINT accounts_profile_user_id_49a85d32_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_author_id_dd7a8485_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_category_id_c326dbf8_fk_blog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_category_id_c326dbf8_fk_blog_category_id FOREIGN KEY (category_id) REFERENCES public.blog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course courses_course_platform_id_f72126c7_fk_courses_platform_id; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_platform_id_f72126c7_fk_courses_platform_id FOREIGN KEY (platform_id) REFERENCES public.courses_platform(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: courses_course courses_course_teacher_id_846fa526_fk_courses_teacher_id; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.courses_course
    ADD CONSTRAINT courses_course_teacher_id_846fa526_fk_courses_teacher_id FOREIGN KEY (teacher_id) REFERENCES public.courses_teacher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: martaconcurseirauser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

