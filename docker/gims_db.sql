--
-- PostgreSQL database dump
--

-- Dumped from database version 10.11
-- Dumped by pg_dump version 10.11

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: tests_app_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tests_app_question (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    text text NOT NULL,
    image character varying(100) NOT NULL,
    answers text NOT NULL,
    correct_answer text NOT NULL
);


ALTER TABLE public.tests_app_question OWNER TO postgres;

--
-- Name: tests_app_question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tests_app_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tests_app_question_id_seq OWNER TO postgres;

--
-- Name: tests_app_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tests_app_question_id_seq OWNED BY public.tests_app_question.id;


--
-- Name: tests_app_question_ticket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tests_app_question_ticket (
    id integer NOT NULL,
    question_id integer NOT NULL,
    ticket_id integer NOT NULL
);


ALTER TABLE public.tests_app_question_ticket OWNER TO postgres;

--
-- Name: tests_app_question_ticket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tests_app_question_ticket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tests_app_question_ticket_id_seq OWNER TO postgres;

--
-- Name: tests_app_question_ticket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tests_app_question_ticket_id_seq OWNED BY public.tests_app_question_ticket.id;


--
-- Name: tests_app_testcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tests_app_testcategory (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    slug character varying(200) NOT NULL
);


ALTER TABLE public.tests_app_testcategory OWNER TO postgres;

--
-- Name: tests_app_testcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tests_app_testcategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tests_app_testcategory_id_seq OWNER TO postgres;

--
-- Name: tests_app_testcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tests_app_testcategory_id_seq OWNED BY public.tests_app_testcategory.id;


--
-- Name: tests_app_ticket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tests_app_ticket (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    slug character varying(200) NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.tests_app_ticket OWNER TO postgres;

--
-- Name: tests_app_ticket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tests_app_ticket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tests_app_ticket_id_seq OWNER TO postgres;

--
-- Name: tests_app_ticket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tests_app_ticket_id_seq OWNED BY public.tests_app_ticket.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: tests_app_question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_question ALTER COLUMN id SET DEFAULT nextval('public.tests_app_question_id_seq'::regclass);


--
-- Name: tests_app_question_ticket id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_question_ticket ALTER COLUMN id SET DEFAULT nextval('public.tests_app_question_ticket_id_seq'::regclass);


--
-- Name: tests_app_testcategory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_testcategory ALTER COLUMN id SET DEFAULT nextval('public.tests_app_testcategory_id_seq'::regclass);


--
-- Name: tests_app_ticket id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_ticket ALTER COLUMN id SET DEFAULT nextval('public.tests_app_ticket_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
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
25	Can add test_category	7	add_testcategory
26	Can change test_category	7	change_testcategory
27	Can delete test_category	7	delete_testcategory
28	Can view test_category	7	view_testcategory
29	Can add ticket	8	add_ticket
30	Can change ticket	8	change_ticket
31	Can delete ticket	8	delete_ticket
32	Can view ticket	8	view_ticket
33	Can add question	9	add_question
34	Can change question	9	change_question
35	Can delete question	9	delete_question
36	Can view question	9	view_question
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$GMJUR42VbQH3$GtCyPipe49IGI0OGB7DBgrTYSeWNbazfZcuGWVJLgm0=	2020-09-29 10:53:54.570412+03	t	admin				t	t	2020-09-28 13:57:45.708895+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-09-28 13:58:15.965895+03	1	Билеты ГИМС ВВП	1	[{"added": {}}]	7	1
2	2020-09-28 13:58:23.408895+03	2	Билеты ГИМС МП	1	[{"added": {}}]	7	1
3	2020-09-28 13:58:33.952895+03	3	Билеты ГИМС ВП	1	[{"added": {}}]	7	1
4	2020-09-28 13:58:53.265895+03	1	Билет 1  ГИМС ВВП	1	[{"added": {}}]	8	1
5	2020-09-28 13:59:23.489895+03	2	Билет 2  ГИМС ВВП	1	[{"added": {}}]	8	1
6	2020-09-28 13:59:34.620895+03	3	Билет 1  ГИМС МП	1	[{"added": {}}]	8	1
7	2020-09-29 10:33:54.707562+03	1	Вопрос 1	1	[{"added": {}}]	9	1
8	2020-09-29 10:36:16.99742+03	2	Вопрос 2	1	[{"added": {}}]	9	1
9	2020-09-29 10:37:12.819923+03	2	Вопрос 2	2	[{"changed": {"fields": ["Ticket"]}}]	9	1
10	2020-09-29 10:56:23.651412+03	3	Вопрос 3	1	[{"added": {}}]	9	1
11	2020-09-29 14:08:33.125837+03	4	Вопрос 2	1	[{"added": {}}]	9	1
12	2020-09-30 10:30:15.097735+03	4	Билет 1  ГИМС ВП	1	[{"added": {}}]	8	1
13	2020-09-30 10:31:35.959372+03	5	Билет 2  ГИМС ВП	1	[{"added": {}}]	8	1
14	2020-09-30 10:31:39.516581+03	5	Билет 2  ГИМС МП	2	[{"changed": {"fields": ["Category"]}}]	8	1
15	2020-09-30 10:32:03.195181+03	5	Билет 3  ГИМС МП	2	[{"changed": {"fields": ["Title", "Slug"]}}]	8	1
16	2020-09-30 10:32:07.289264+03	5	Билет 3  ГИМС ВП	2	[{"changed": {"fields": ["Category"]}}]	8	1
17	2020-09-30 10:32:09.886684+03	5	Билет 3  ГИМС ВВП	2	[{"changed": {"fields": ["Category"]}}]	8	1
18	2020-09-30 10:32:47.465149+03	6	Билет 2  ГИМС ВП	1	[{"added": {}}]	8	1
19	2020-09-30 10:32:56.36713+03	7	Билет 2  ГИМС МП	1	[{"added": {}}]	8	1
20	2020-09-30 10:33:14.082139+03	8	Билет 3  ГИМС ВП	1	[{"added": {}}]	8	1
21	2020-09-30 10:33:19.099006+03	9	Билет 3  ГИМС МП	1	[{"added": {}}]	8	1
22	2020-09-30 10:33:23.539481+03	10	Билет 4  ГИМС ВВП	1	[{"added": {}}]	8	1
23	2020-09-30 10:33:28.005199+03	11	Билет 4  ГИМС ВП	1	[{"added": {}}]	8	1
24	2020-09-30 10:33:32.534905+03	12	Билет 4  ГИМС МП	1	[{"added": {}}]	8	1
25	2020-09-30 10:33:38.819472+03	13	Билет 5  ГИМС ВВП	1	[{"added": {}}]	8	1
26	2020-09-30 10:33:44.129464+03	14	Билет 5  ГИМС ВП	1	[{"added": {}}]	8	1
27	2020-09-30 10:33:52.735861+03	15	Билет 5  ГИМС МП	1	[{"added": {}}]	8	1
28	2020-09-30 10:34:02.355194+03	16	Билет 6  ГИМС ВВП	1	[{"added": {}}]	8	1
29	2020-09-30 10:34:09.176726+03	17	Билет 6  ГИМС ВП	1	[{"added": {}}]	8	1
30	2020-09-30 10:34:12.980484+03	18	Билет 6  ГИМС МП	1	[{"added": {}}]	8	1
31	2020-09-30 10:34:19.56201+03	19	Билет 7  ГИМС ВВП	1	[{"added": {}}]	8	1
32	2020-09-30 10:34:26.025575+03	20	Билет 7  ГИМС ВП	1	[{"added": {}}]	8	1
33	2020-09-30 10:34:30.599273+03	21	Билет 7  ГИМС МП	1	[{"added": {}}]	8	1
34	2020-09-30 10:34:50.72994+03	22	Билет 8  ГИМС ВВП	1	[{"added": {}}]	8	1
35	2020-09-30 10:34:57.717437+03	23	Билет 8  ГИМС ВП	1	[{"added": {}}]	8	1
36	2020-09-30 10:35:01.875173+03	24	Билет 8  ГИМС МП	1	[{"added": {}}]	8	1
37	2020-09-30 10:35:08.19173+03	25	Билет 9  ГИМС ВВП	1	[{"added": {}}]	8	1
38	2020-09-30 10:35:13.460373+03	26	Билет 9  ГИМС ВП	1	[{"added": {}}]	8	1
39	2020-09-30 10:35:17.74411+03	27	Билет 9  ГИМС МП	1	[{"added": {}}]	8	1
40	2020-09-30 10:35:26.659471+03	28	Билет 10  ГИМС ВВП	1	[{"added": {}}]	8	1
41	2020-09-30 10:35:35.963807+03	29	Билет 10  ГИМС ВП	1	[{"added": {}}]	8	1
42	2020-09-30 10:35:40.415539+03	30	Билет 10  ГИМС МП	1	[{"added": {}}]	8	1
43	2020-09-30 10:35:56.456424+03	31	Билет 11  ГИМС ВВП	1	[{"added": {}}]	8	1
44	2020-09-30 10:36:02.415008+03	32	Билет 11  ГИМС МП	1	[{"added": {}}]	8	1
45	2020-09-30 10:36:08.650572+03	33	Билет 12  ГИМС ВВП	1	[{"added": {}}]	8	1
46	2020-09-30 10:36:15.538098+03	34	Билет 12  ГИМС МП	1	[{"added": {}}]	8	1
47	2020-09-30 10:36:22.144631+03	35	Билет 13  ГИМС ВВП	1	[{"added": {}}]	8	1
48	2020-09-30 10:36:27.533267+03	36	Билет 13  ГИМС МП	1	[{"added": {}}]	8	1
49	2020-09-30 10:36:36.043653+03	37	Билет 14  ГИМС ВВП	1	[{"added": {}}]	8	1
50	2020-09-30 10:36:41.309308+03	38	Билет 14  ГИМС МП	1	[{"added": {}}]	8	1
51	2020-09-30 10:36:46.95291+03	39	Билет 15  ГИМС ВВП	1	[{"added": {}}]	8	1
52	2020-09-30 10:36:55.550299+03	40	Билет 15  ГИМС МП	1	[{"added": {}}]	8	1
53	2020-09-30 10:37:02.563801+03	41	Билет 16  ГИМС ВВП	1	[{"added": {}}]	8	1
54	2020-09-30 10:37:06.636538+03	42	Билет 16  ГИМС МП	1	[{"added": {}}]	8	1
55	2020-09-30 10:37:13.067106+03	43	Билет 17  ГИМС ВВП	1	[{"added": {}}]	8	1
56	2020-09-30 10:37:18.593724+03	44	Билет 17  ГИМС МП	1	[{"added": {}}]	8	1
57	2020-09-30 10:37:24.345342+03	45	Билет 18  ГИМС ВВП	1	[{"added": {}}]	8	1
58	2020-09-30 10:37:28.939049+03	46	Билет 18  ГИМС МП	1	[{"added": {}}]	8	1
59	2020-09-30 10:37:34.329673+03	47	Билет 19  ГИМС ВВП	1	[{"added": {}}]	8	1
60	2020-09-30 10:37:40.052279+03	48	Билет 19  ГИМС МП	1	[{"added": {}}]	8	1
61	2020-09-30 10:37:46.139845+03	49	Билет 20  ГИМС ВВП	1	[{"added": {}}]	8	1
62	2020-09-30 10:37:51.70353+03	50	Билет 20  ГИМС МП	1	[{"added": {}}]	8	1
63	2020-09-30 14:38:15.667138+03	5	Вопрос 4	1	[{"added": {}}]	9	1
64	2020-09-30 14:39:45.791138+03	6	Вопрос 5	1	[{"added": {}}]	9	1
65	2020-09-30 14:40:37.974138+03	7	Вопрос 6	1	[{"added": {}}]	9	1
66	2020-09-30 14:41:30.940138+03	8	Вопрос 7	1	[{"added": {}}]	9	1
67	2020-09-30 14:42:28.171138+03	9	Вопрос 8	1	[{"added": {}}]	9	1
68	2020-09-30 14:43:42.366138+03	10	Вопрос 9	1	[{"added": {}}]	9	1
69	2020-09-30 14:44:22.562138+03	11	Вопрос 10	1	[{"added": {}}]	9	1
70	2020-09-30 14:48:59.655138+03	12	Вопрос 1	1	[{"added": {}}]	9	1
71	2020-09-30 14:49:48.999138+03	13	Вопрос 2	1	[{"added": {}}]	9	1
72	2020-09-30 14:50:22.864138+03	14	Вопрос 3	1	[{"added": {}}]	9	1
73	2020-09-30 14:51:26.624138+03	15	Вопрос 4	1	[{"added": {}}]	9	1
74	2020-09-30 15:10:29.855938+03	16	Вопрос 5	1	[{"added": {}}]	9	1
75	2020-09-30 15:11:20.166938+03	17	Вопрос 6	1	[{"added": {}}]	9	1
76	2020-09-30 15:11:53.971938+03	18	Вопрос 7	1	[{"added": {}}]	9	1
77	2020-09-30 15:12:22.249938+03	19	Вопрос 8	1	[{"added": {}}]	9	1
78	2020-09-30 15:13:00.479938+03	20	Вопрос 9	1	[{"added": {}}]	9	1
79	2020-09-30 15:13:28.143938+03	21	Вопрос 10	1	[{"added": {}}]	9	1
80	2020-09-30 15:15:25.537938+03	22	Вопрос 1	1	[{"added": {}}]	9	1
81	2020-09-30 15:16:04.231938+03	23	Вопрос 2	1	[{"added": {}}]	9	1
82	2020-09-30 15:16:45.797938+03	24	Вопрос 3	1	[{"added": {}}]	9	1
83	2020-09-30 15:17:15.111938+03	25	Вопрос 4	1	[{"added": {}}]	9	1
84	2020-09-30 15:17:50.697938+03	26	Вопрос 5	1	[{"added": {}}]	9	1
85	2020-09-30 15:18:25.332938+03	27	Вопрос 6	1	[{"added": {}}]	9	1
86	2020-09-30 15:18:55.299938+03	28	Вопрос 7	1	[{"added": {}}]	9	1
87	2020-09-30 15:19:25.789938+03	29	Вопрос 8	1	[{"added": {}}]	9	1
88	2020-09-30 15:19:56.279938+03	30	Вопрос 9	1	[{"added": {}}]	9	1
89	2020-09-30 15:20:24.909938+03	31	Вопрос 10	1	[{"added": {}}]	9	1
90	2020-09-30 16:33:29.858282+03	32	Вопрос 1	1	[{"added": {}}]	9	1
91	2020-09-30 16:34:31.186282+03	33	Вопрос 2	1	[{"added": {}}]	9	1
92	2020-09-30 16:34:46.062282+03	32	Вопрос 1	2	[{"changed": {"fields": ["Image"]}}]	9	1
93	2020-09-30 16:35:35.980282+03	34	Вопрос 3	1	[{"added": {}}]	9	1
94	2020-09-30 16:36:07.849282+03	35	Вопрос 4	1	[{"added": {}}]	9	1
95	2020-09-30 16:36:38.668282+03	36	Вопрос 5	1	[{"added": {}}]	9	1
96	2020-09-30 16:37:17.687282+03	37	Вопрос 6	1	[{"added": {}}]	9	1
97	2020-09-30 16:37:51.822282+03	38	Вопрос 7	1	[{"added": {}}]	9	1
98	2020-09-30 16:38:20.412282+03	39	Вопрос 8	1	[{"added": {}}]	9	1
99	2020-09-30 16:38:56.330282+03	40	Вопрос 9	1	[{"added": {}}]	9	1
100	2020-09-30 16:39:32.112282+03	41	Вопрос 10	1	[{"added": {}}]	9	1
101	2020-09-30 16:41:18.002282+03	42	Вопрос 1	1	[{"added": {}}]	9	1
102	2020-09-30 16:41:50.531282+03	43	Вопрос 2	1	[{"added": {}}]	9	1
103	2020-09-30 16:42:27.868282+03	44	Вопрос 3	1	[{"added": {}}]	9	1
104	2020-09-30 16:43:09.059282+03	45	Вопрос 4	1	[{"added": {}}]	9	1
105	2020-09-30 16:43:46.657282+03	46	Вопрос 5	1	[{"added": {}}]	9	1
106	2020-09-30 16:44:21.132282+03	47	Вопрос 6	1	[{"added": {}}]	9	1
107	2020-09-30 16:44:52.006282+03	48	Вопрос 7	1	[{"added": {}}]	9	1
108	2020-09-30 16:45:22.046282+03	49	Вопрос 8	1	[{"added": {}}]	9	1
109	2020-09-30 16:46:06.359282+03	50	Вопрос 9	1	[{"added": {}}]	9	1
110	2020-09-30 16:46:36.573282+03	51	Вопрос 10	1	[{"added": {}}]	9	1
111	2020-09-30 16:48:19.299282+03	52	Вопрос 1	1	[{"added": {}}]	9	1
112	2020-09-30 16:48:46.997282+03	53	Вопрос 2	1	[{"added": {}}]	9	1
113	2020-09-30 16:49:21.163282+03	54	Вопрос 3	1	[{"added": {}}]	9	1
114	2020-09-30 16:50:25.717282+03	55	Вопрос 4	1	[{"added": {}}]	9	1
115	2020-09-30 16:51:17.151282+03	56	Вопрос 5	1	[{"added": {}}]	9	1
116	2020-09-30 16:51:47.613282+03	57	Вопрос 6	1	[{"added": {}}]	9	1
117	2020-09-30 16:52:26.705282+03	58	Вопрос 7	1	[{"added": {}}]	9	1
118	2020-09-30 16:52:54.827282+03	59	Вопрос 8	1	[{"added": {}}]	9	1
119	2020-09-30 16:53:22.764282+03	60	Вопрос 9	1	[{"added": {}}]	9	1
120	2020-09-30 16:53:52.362282+03	61	Вопрос 10	1	[{"added": {}}]	9	1
121	2020-10-01 08:33:49.654309+03	62	Вопрос 1	1	[{"added": {}}]	9	1
122	2020-10-01 08:34:22.251695+03	63	Вопрос 2	1	[{"added": {}}]	9	1
123	2020-10-01 08:34:55.387327+03	64	Вопрос 3	1	[{"added": {}}]	9	1
124	2020-10-01 08:35:27.009031+03	65	Вопрос 4	1	[{"added": {}}]	9	1
125	2020-10-01 08:35:56.560755+03	66	Вопрос 5	1	[{"added": {}}]	9	1
126	2020-10-01 08:36:24.836489+03	67	Вопрос 6	1	[{"added": {}}]	9	1
127	2020-10-01 08:36:59.406169+03	68	Вопрос 7	1	[{"added": {}}]	9	1
128	2020-10-01 08:37:36.017824+03	69	Вопрос 8	1	[{"added": {}}]	9	1
129	2020-10-01 08:38:07.338535+03	70	Вопрос 9	1	[{"added": {}}]	9	1
130	2020-10-01 08:38:38.413256+03	71	Вопрос 10	1	[{"added": {}}]	9	1
131	2020-10-01 08:40:14.9804+03	72	Вопрос 1	1	[{"added": {}}]	9	1
132	2020-10-01 08:40:48.02409+03	73	Вопрос 2	1	[{"added": {}}]	9	1
133	2020-10-01 08:41:25.401782+03	74	Вопрос 3	1	[{"added": {}}]	9	1
134	2020-10-01 08:42:20.668259+03	75	Вопрос 4	1	[{"added": {}}]	9	1
135	2020-10-01 08:42:55.253936+03	76	Вопрос 5	1	[{"added": {}}]	9	1
136	2020-10-01 08:43:27.245635+03	77	Вопрос 6	1	[{"added": {}}]	9	1
137	2020-10-01 08:43:55.651369+03	78	Вопрос 7	1	[{"added": {}}]	9	1
138	2020-10-01 08:44:26.69708+03	79	Вопрос 8	1	[{"added": {}}]	9	1
139	2020-10-01 08:44:58.834776+03	80	Вопрос 9	1	[{"added": {}}]	9	1
140	2020-10-01 08:45:29.380497+03	81	Вопрос 10	1	[{"added": {}}]	9	1
141	2020-10-01 08:47:07.593621+03	82	Вопрос 1	1	[{"added": {}}]	9	1
142	2020-10-01 08:47:36.197353+03	83	Вопрос 2	1	[{"added": {}}]	9	1
143	2020-10-01 08:48:02.915104+03	84	Вопрос 3	1	[{"added": {}}]	9	1
144	2020-10-01 08:48:45.778699+03	85	Вопрос 4	1	[{"added": {}}]	9	1
145	2020-10-01 08:49:15.978414+03	86	Вопрос 5	1	[{"added": {}}]	9	1
146	2020-10-01 08:49:55.634296+03	87	Вопрос 6	1	[{"added": {}}]	9	1
147	2020-10-01 08:50:24.778296+03	88	Вопрос 7	1	[{"added": {}}]	9	1
148	2020-10-01 08:50:56.651296+03	89	Вопрос 8	1	[{"added": {}}]	9	1
149	2020-10-01 08:51:25.905296+03	90	Вопрос 9	1	[{"added": {}}]	9	1
150	2020-10-01 08:51:52.841296+03	91	Вопрос 10	1	[{"added": {}}]	9	1
151	2020-10-01 08:53:43.181296+03	92	Вопрос 1	1	[{"added": {}}]	9	1
152	2020-10-01 08:54:19.937296+03	93	Вопрос 2	1	[{"added": {}}]	9	1
153	2020-10-01 08:54:51.433296+03	94	Вопрос 3	1	[{"added": {}}]	9	1
154	2020-10-01 08:55:24.627296+03	95	Вопрос 4	1	[{"added": {}}]	9	1
155	2020-10-01 08:55:58.781296+03	96	Вопрос 5	1	[{"added": {}}]	9	1
156	2020-10-01 08:56:38.739296+03	97	Вопрос 6	1	[{"added": {}}]	9	1
157	2020-10-01 08:57:09.251296+03	98	Вопрос 7	1	[{"added": {}}]	9	1
158	2020-10-01 08:57:38.709296+03	99	Вопрос 8	1	[{"added": {}}]	9	1
159	2020-10-01 08:58:05.640296+03	100	Вопрос 9	1	[{"added": {}}]	9	1
160	2020-10-01 08:58:33.905296+03	101	Вопрос 10	1	[{"added": {}}]	9	1
161	2020-10-01 09:00:22.945296+03	102	Вопрос 1	1	[{"added": {}}]	9	1
162	2020-10-01 09:00:57.211296+03	103	Вопрос 2	1	[{"added": {}}]	9	1
163	2020-10-01 09:01:43.238296+03	104	Вопрос 3	1	[{"added": {}}]	9	1
164	2020-10-01 09:02:13.290296+03	105	Вопрос 4	1	[{"added": {}}]	9	1
165	2020-10-01 09:02:40.450296+03	106	Вопрос 5	1	[{"added": {}}]	9	1
166	2020-10-01 09:03:15.337296+03	107	Вопрос 6	1	[{"added": {}}]	9	1
167	2020-10-01 09:03:46.308296+03	108	Вопрос 7	1	[{"added": {}}]	9	1
168	2020-10-01 09:04:24.155296+03	109	Вопрос 8	1	[{"added": {}}]	9	1
169	2020-10-01 09:04:58.397296+03	110	Вопрос 9	1	[{"added": {}}]	9	1
170	2020-10-01 09:05:39.720296+03	111	Вопрос 10	1	[{"added": {}}]	9	1
171	2020-10-01 09:57:18.042551+03	112	Вопрос 1	1	[{"added": {}}]	9	1
172	2020-10-01 09:57:49.150551+03	113	Вопрос 2	1	[{"added": {}}]	9	1
173	2020-10-01 09:58:20.452551+03	114	Вопрос 3	1	[{"added": {}}]	9	1
174	2020-10-01 09:59:00.494551+03	115	Вопрос 4	1	[{"added": {}}]	9	1
175	2020-10-01 09:59:30.084551+03	116	Вопрос 5	1	[{"added": {}}]	9	1
176	2020-10-01 10:00:04.740551+03	117	Вопрос 6	1	[{"added": {}}]	9	1
177	2020-10-01 10:00:31.534551+03	118	Вопрос 7	1	[{"added": {}}]	9	1
178	2020-10-01 10:01:05.279551+03	119	Вопрос 8	1	[{"added": {}}]	9	1
179	2020-10-01 10:01:42.938551+03	120	Вопрос 9	1	[{"added": {}}]	9	1
180	2020-10-01 10:02:13.556551+03	121	Вопрос 10	1	[{"added": {}}]	9	1
181	2020-10-01 10:03:49.730551+03	122	Вопрос 1	1	[{"added": {}}]	9	1
182	2020-10-01 10:04:15.937551+03	123	Вопрос 2	1	[{"added": {}}]	9	1
183	2020-10-01 10:04:43.576551+03	124	Вопрос 3	1	[{"added": {}}]	9	1
184	2020-10-01 10:05:13.046551+03	125	Вопрос 4	1	[{"added": {}}]	9	1
185	2020-10-01 10:05:53.234551+03	126	Вопрос 5	1	[{"added": {}}]	9	1
186	2020-10-01 10:06:25.588551+03	127	Вопрос 6	1	[{"added": {}}]	9	1
187	2020-10-01 10:07:01.622551+03	128	Вопрос 7	1	[{"added": {}}]	9	1
188	2020-10-01 10:07:32.223551+03	129	Вопрос 8	1	[{"added": {}}]	9	1
189	2020-10-01 10:08:05.903551+03	130	Вопрос 9	1	[{"added": {}}]	9	1
190	2020-10-01 10:08:33.538551+03	131	Вопрос 10	1	[{"added": {}}]	9	1
191	2020-10-01 10:10:12.262551+03	132	Вопрос 1	1	[{"added": {}}]	9	1
192	2020-10-01 10:10:47.832551+03	133	Вопрос 2	1	[{"added": {}}]	9	1
193	2020-10-01 10:11:14.048551+03	134	Вопрос 3	1	[{"added": {}}]	9	1
194	2020-10-01 10:11:49.462551+03	135	Вопрос 4	1	[{"added": {}}]	9	1
195	2020-10-01 10:12:18.711551+03	136	Вопрос 5	1	[{"added": {}}]	9	1
196	2020-10-01 10:12:42.845551+03	137	Вопрос 6	1	[{"added": {}}]	9	1
197	2020-10-01 10:13:08.210551+03	138	Вопрос 7	1	[{"added": {}}]	9	1
198	2020-10-01 10:13:34.354551+03	139	Вопрос 8	1	[{"added": {}}]	9	1
199	2020-10-01 10:14:00.371551+03	140	Вопрос 9	1	[{"added": {}}]	9	1
200	2020-10-01 10:14:38.859551+03	141	Вопрос 10	1	[{"added": {}}]	9	1
201	2020-10-01 10:58:25.346807+03	142	Вопрос 1	1	[{"added": {}}]	9	1
202	2020-10-01 10:58:57.474807+03	143	Вопрос 2	1	[{"added": {}}]	9	1
203	2020-10-01 10:59:23.894807+03	144	Вопрос 3	1	[{"added": {}}]	9	1
204	2020-10-01 10:59:55.280807+03	145	Вопрос 4	1	[{"added": {}}]	9	1
205	2020-10-01 11:00:31.592807+03	146	Вопрос 5	1	[{"added": {}}]	9	1
206	2020-10-01 11:01:12.670807+03	147	Вопрос 6	1	[{"added": {}}]	9	1
207	2020-10-01 11:01:41.134807+03	148	Вопрос 7	1	[{"added": {}}]	9	1
208	2020-10-01 11:02:08.278807+03	149	Вопрос 8	1	[{"added": {}}]	9	1
209	2020-10-01 11:02:45.404807+03	150	Вопрос 9	1	[{"added": {}}]	9	1
210	2020-10-01 11:03:12.206807+03	151	Вопрос 10	1	[{"added": {}}]	9	1
211	2020-10-01 11:04:58.850807+03	152	Вопрос 1	1	[{"added": {}}]	9	1
212	2020-10-01 11:05:30.264807+03	153	Вопрос 2	1	[{"added": {}}]	9	1
213	2020-10-01 11:05:55.074807+03	154	Вопрос 3	1	[{"added": {}}]	9	1
214	2020-10-01 11:06:23.740807+03	155	Вопрос 4	1	[{"added": {}}]	9	1
215	2020-10-01 11:06:55.120807+03	156	Вопрос 5	1	[{"added": {}}]	9	1
216	2020-10-01 11:10:12.247807+03	157	Вопрос 6	1	[{"added": {}}]	9	1
217	2020-10-01 11:10:37.463807+03	158	Вопрос 7	1	[{"added": {}}]	9	1
218	2020-10-01 11:11:06.179807+03	159	Вопрос 8	1	[{"added": {}}]	9	1
219	2020-10-01 11:11:44.350807+03	160	Вопрос 9	1	[{"added": {}}]	9	1
220	2020-10-01 11:12:07.359807+03	161	Вопрос 10	1	[{"added": {}}]	9	1
221	2020-10-01 11:13:37.725807+03	162	Вопрос 1	1	[{"added": {}}]	9	1
222	2020-10-01 11:14:10.661807+03	163	Вопрос 2	1	[{"added": {}}]	9	1
223	2020-10-01 11:14:33.229807+03	164	Вопрос 3	1	[{"added": {}}]	9	1
224	2020-10-01 11:15:02.867807+03	165	Вопрос 4	1	[{"added": {}}]	9	1
225	2020-10-01 11:15:28.049807+03	166	Вопрос 5	1	[{"added": {}}]	9	1
226	2020-10-01 11:16:03.419807+03	167	Вопрос 6	1	[{"added": {}}]	9	1
227	2020-10-01 11:16:30.550807+03	168	Вопрос 7	1	[{"added": {}}]	9	1
228	2020-10-01 11:16:57.341807+03	169	Вопрос 8	1	[{"added": {}}]	9	1
229	2020-10-01 11:17:21.537807+03	170	Вопрос 9	1	[{"added": {}}]	9	1
230	2020-10-01 11:21:27.627807+03	171	Вопрос 10	1	[{"added": {}}]	9	1
231	2020-10-01 11:23:05.989807+03	172	Вопрос 1	1	[{"added": {}}]	9	1
232	2020-10-01 11:23:32.433807+03	173	Вопрос 2	1	[{"added": {}}]	9	1
233	2020-10-01 11:24:09.913807+03	174	Вопрос 3	1	[{"added": {}}]	9	1
234	2020-10-01 11:24:41.266807+03	175	Вопрос 4	1	[{"added": {}}]	9	1
235	2020-10-01 11:25:12.037807+03	176	Вопрос 5	1	[{"added": {}}]	9	1
236	2020-10-01 11:25:46.952807+03	177	Вопрос 6	1	[{"added": {}}]	9	1
237	2020-10-01 11:26:18.777807+03	178	Вопрос 7	1	[{"added": {}}]	9	1
238	2020-10-01 11:26:39.270807+03	178	Вопрос 7	2	[{"changed": {"fields": ["Correct answer"]}}]	9	1
239	2020-10-01 11:27:17.133807+03	179	Вопрос 8	1	[{"added": {}}]	9	1
240	2020-10-01 11:27:46.499807+03	180	Вопрос 9	1	[{"added": {}}]	9	1
241	2020-10-01 11:28:14.085807+03	181	Вопрос 10	1	[{"added": {}}]	9	1
242	2020-10-01 11:30:30.437807+03	182	Вопрос 1	1	[{"added": {}}]	9	1
243	2020-10-01 11:30:59.993807+03	183	Вопрос 2	1	[{"added": {}}]	9	1
244	2020-10-01 11:31:25.849807+03	184	Вопрос 3	1	[{"added": {}}]	9	1
245	2020-10-01 11:31:55.933807+03	185	Вопрос 4	1	[{"added": {}}]	9	1
246	2020-10-01 11:32:24.887807+03	186	Вопрос 5	1	[{"added": {}}]	9	1
247	2020-10-01 11:33:03.233807+03	187	Вопрос 6	1	[{"added": {}}]	9	1
248	2020-10-01 11:33:43.368807+03	188	Вопрос 7	1	[{"added": {}}]	9	1
249	2020-10-01 11:34:20.696807+03	189	Вопрос 8	1	[{"added": {}}]	9	1
250	2020-10-01 11:34:45.411807+03	190	Вопрос 9	1	[{"added": {}}]	9	1
251	2020-10-01 11:35:15.592807+03	191	Вопрос 10	1	[{"added": {}}]	9	1
252	2020-10-01 11:37:08.239807+03	192	Вопрос 1	1	[{"added": {}}]	9	1
253	2020-10-01 11:37:22.016807+03	192	Вопрос 1	2	[{"changed": {"fields": ["Correct answer"]}}]	9	1
254	2020-10-01 11:37:50.638807+03	193	Вопрос 2	1	[{"added": {}}]	9	1
255	2020-10-01 11:38:16.661807+03	194	Вопрос 3	1	[{"added": {}}]	9	1
256	2020-10-01 11:38:42.674807+03	195	Вопрос 4	1	[{"added": {}}]	9	1
257	2020-10-01 11:38:54.039807+03	195	Вопрос 4	2	[{"changed": {"fields": ["Correct answer"]}}]	9	1
258	2020-10-01 11:39:23.329807+03	196	Вопрос 5	1	[{"added": {}}]	9	1
259	2020-10-01 11:39:59.045807+03	197	Вопрос 6	1	[{"added": {}}]	9	1
260	2020-10-01 11:40:25.443807+03	198	Вопрос 7	1	[{"added": {}}]	9	1
261	2020-10-01 11:40:52.901807+03	199	Вопрос 8	1	[{"added": {}}]	9	1
262	2020-10-01 11:41:16.317807+03	200	Вопрос 9	1	[{"added": {}}]	9	1
263	2020-10-01 11:41:51.910807+03	201	Вопрос 10	1	[{"added": {}}]	9	1
264	2020-10-01 11:46:57.437807+03	202	Вопрос 1	1	[{"added": {}}]	9	1
265	2020-10-01 11:47:26.521807+03	203	Вопрос 2	1	[{"added": {}}]	9	1
266	2020-10-01 11:47:52.320807+03	204	Вопрос 3	1	[{"added": {}}]	9	1
267	2020-10-01 11:48:17.223807+03	205	Вопрос 4	1	[{"added": {}}]	9	1
268	2020-10-01 11:48:54.639807+03	206	Вопрос 5	1	[{"added": {}}]	9	1
269	2020-10-01 11:49:35.457807+03	207	Вопрос 6	1	[{"added": {}}]	9	1
270	2020-10-01 11:50:09.793807+03	208	Вопрос 7	1	[{"added": {}}]	9	1
271	2020-10-01 11:50:36.979807+03	209	Вопрос 8	1	[{"added": {}}]	9	1
272	2020-10-01 11:51:08.867807+03	210	Вопрос 9	1	[{"added": {}}]	9	1
273	2020-10-01 11:51:41.125807+03	211	Вопрос 10	1	[{"added": {}}]	9	1
274	2020-10-01 13:12:51.765053+03	212	Вопрос 1	1	[{"added": {}}]	9	1
275	2020-10-01 13:13:24.335053+03	213	Вопрос 2	1	[{"added": {}}]	9	1
276	2020-10-01 13:13:49.117053+03	214	Вопрос 3	1	[{"added": {}}]	9	1
277	2020-10-01 13:14:14.863053+03	215	Вопрос 4	1	[{"added": {}}]	9	1
278	2020-10-01 13:14:40.632053+03	216	Вопрос 5	1	[{"added": {}}]	9	1
279	2020-10-01 13:15:18.466053+03	217	Вопрос 6	1	[{"added": {}}]	9	1
280	2020-10-01 13:15:50.899053+03	218	Вопрос 7	1	[{"added": {}}]	9	1
281	2020-10-01 13:19:31.661053+03	219	Вопрос 8	1	[{"added": {}}]	9	1
282	2020-10-01 13:19:57.451053+03	220	Вопрос 9	1	[{"added": {}}]	9	1
283	2020-10-01 13:20:24.147053+03	221	Вопрос 10	1	[{"added": {}}]	9	1
284	2020-10-01 13:21:58.567053+03	222	Вопрос 1	1	[{"added": {}}]	9	1
285	2020-10-01 13:22:28.488053+03	223	Вопрос 2	1	[{"added": {}}]	9	1
286	2020-10-01 13:23:04.352053+03	224	Вопрос 3	1	[{"added": {}}]	9	1
287	2020-10-01 13:23:32.248053+03	225	Вопрос 4	1	[{"added": {}}]	9	1
288	2020-10-01 13:24:33.001053+03	226	Вопрос 5	1	[{"added": {}}]	9	1
289	2020-10-01 13:24:59.105053+03	227	Вопрос 6	1	[{"added": {}}]	9	1
290	2020-10-01 13:25:22.608053+03	228	Вопрос 7	1	[{"added": {}}]	9	1
291	2020-10-01 13:25:47.169053+03	229	Вопрос 8	1	[{"added": {}}]	9	1
292	2020-10-01 13:26:18.205053+03	230	Вопрос 9	1	[{"added": {}}]	9	1
293	2020-10-01 13:26:45.722053+03	231	Вопрос 10	1	[{"added": {}}]	9	1
294	2020-10-01 13:28:09.850053+03	232	Вопрос 1	1	[{"added": {}}]	9	1
295	2020-10-01 13:28:46.449662+03	233	Вопрос 2	1	[{"added": {}}]	9	1
296	2020-10-01 13:29:13.579379+03	234	Вопрос 3	1	[{"added": {}}]	9	1
297	2020-10-01 13:29:39.601017+03	235	Вопрос 4	1	[{"added": {}}]	9	1
298	2020-10-01 13:30:09.700914+03	236	Вопрос 5	1	[{"added": {}}]	9	1
299	2020-10-01 13:30:34.723509+03	237	Вопрос 6	1	[{"added": {}}]	9	1
300	2020-10-01 13:31:04.009414+03	238	Вопрос 7	1	[{"added": {}}]	9	1
301	2020-10-01 13:31:29.457013+03	239	Вопрос 8	1	[{"added": {}}]	9	1
302	2020-10-01 13:31:52.379457+03	240	Вопрос 9	1	[{"added": {}}]	9	1
303	2020-10-01 13:32:14.608876+03	241	Вопрос 10	1	[{"added": {}}]	9	1
304	2020-10-01 13:33:34.473603+03	242	Вопрос 1	1	[{"added": {}}]	9	1
305	2020-10-01 13:34:01.272306+03	243	Вопрос 2	1	[{"added": {}}]	9	1
306	2020-10-01 13:34:29.125055+03	244	Вопрос 3	1	[{"added": {}}]	9	1
307	2020-10-01 13:34:55.55577+03	245	Вопрос 4	1	[{"added": {}}]	9	1
308	2020-10-01 13:35:23.062463+03	246	Вопрос 5	1	[{"added": {}}]	9	1
309	2020-10-01 13:35:46.221106+03	247	Вопрос 6	1	[{"added": {}}]	9	1
310	2020-10-01 13:36:09.56176+03	248	Вопрос 7	1	[{"added": {}}]	9	1
311	2020-10-01 13:36:33.015429+03	249	Вопрос 8	1	[{"added": {}}]	9	1
312	2020-10-01 13:37:09.175386+03	250	Вопрос 9	1	[{"added": {}}]	9	1
313	2020-10-01 13:37:31.608002+03	251	Вопрос 10	1	[{"added": {}}]	9	1
314	2020-10-01 13:39:04.258732+03	252	Вопрос 1	1	[{"added": {}}]	9	1
315	2020-10-01 13:39:32.186732+03	253	Вопрос 2	1	[{"added": {}}]	9	1
316	2020-10-01 13:40:00.240732+03	254	Вопрос 3	1	[{"added": {}}]	9	1
317	2020-10-01 13:40:26.943732+03	255	Вопрос 4	1	[{"added": {}}]	9	1
318	2020-10-01 13:40:50.867732+03	256	Вопрос 5	1	[{"added": {}}]	9	1
319	2020-10-01 13:41:20.169732+03	257	Вопрос 6	1	[{"added": {}}]	9	1
320	2020-10-01 13:41:47.954732+03	258	Вопрос 7	1	[{"added": {}}]	9	1
321	2020-10-01 13:42:12.714732+03	259	Вопрос 8	1	[{"added": {}}]	9	1
322	2020-10-01 13:42:46.984732+03	260	Вопрос 9	1	[{"added": {}}]	9	1
323	2020-10-01 13:43:09.542732+03	261	Вопрос 10	1	[{"added": {}}]	9	1
324	2020-10-01 13:44:49.045732+03	262	Вопрос 1	1	[{"added": {}}]	9	1
325	2020-10-01 13:45:14.325732+03	263	Вопрос 2	1	[{"added": {}}]	9	1
326	2020-10-01 13:45:39.515732+03	264	Вопрос 3	1	[{"added": {}}]	9	1
327	2020-10-01 13:46:04.138732+03	265	Вопрос 4	1	[{"added": {}}]	9	1
328	2020-10-01 13:46:27.459732+03	266	Вопрос 5	1	[{"added": {}}]	9	1
329	2020-10-01 13:46:53.704732+03	267	Вопрос 6	1	[{"added": {}}]	9	1
330	2020-10-01 13:47:17.308732+03	268	Вопрос 7	1	[{"added": {}}]	9	1
331	2020-10-01 13:47:40.953732+03	269	Вопрос 8	1	[{"added": {}}]	9	1
332	2020-10-01 13:48:07.919732+03	270	Вопрос 9	1	[{"added": {}}]	9	1
333	2020-10-01 13:48:34.470732+03	271	Вопрос 10	1	[{"added": {}}]	9	1
334	2020-10-01 13:50:03.922732+03	272	Вопрос 1	1	[{"added": {}}]	9	1
335	2020-10-01 13:50:31.594732+03	273	Вопрос 2	1	[{"added": {}}]	9	1
336	2020-10-01 13:51:03.092732+03	274	Вопрос 3	1	[{"added": {}}]	9	1
337	2020-10-01 13:51:30.029732+03	275	Вопрос 4	1	[{"added": {}}]	9	1
338	2020-10-01 13:51:54.852732+03	276	Вопрос 5	1	[{"added": {}}]	9	1
339	2020-10-01 13:52:20.257732+03	277	Вопрос 6	1	[{"added": {}}]	9	1
340	2020-10-01 13:52:44.110732+03	278	Вопрос 7	1	[{"added": {}}]	9	1
341	2020-10-01 13:53:12.186732+03	279	Вопрос 8	1	[{"added": {}}]	9	1
342	2020-10-01 13:53:36.859732+03	280	Вопрос 9	1	[{"added": {}}]	9	1
343	2020-10-01 13:54:01.771732+03	281	Вопрос 10	1	[{"added": {}}]	9	1
344	2020-10-01 13:55:31.398732+03	282	Вопрос 1	1	[{"added": {}}]	9	1
345	2020-10-01 13:56:00.311732+03	283	Вопрос 2	1	[{"added": {}}]	9	1
346	2020-10-01 13:56:31.389732+03	284	Вопрос 3	1	[{"added": {}}]	9	1
347	2020-10-01 13:56:57.283732+03	285	Вопрос 4	1	[{"added": {}}]	9	1
348	2020-10-01 13:57:22.221732+03	286	Вопрос 5	1	[{"added": {}}]	9	1
349	2020-10-01 13:57:52.099732+03	287	Вопрос 6	1	[{"added": {}}]	9	1
350	2020-10-01 13:58:18.896732+03	288	Вопрос 7	1	[{"added": {}}]	9	1
351	2020-10-01 13:58:41.341732+03	289	Вопрос 8	1	[{"added": {}}]	9	1
352	2020-10-01 13:59:05.886732+03	290	Вопрос 9	1	[{"added": {}}]	9	1
353	2020-10-01 13:59:32.444732+03	291	Вопрос 10	1	[{"added": {}}]	9	1
354	2020-10-01 14:00:53.690732+03	292	Вопрос 1	1	[{"added": {}}]	9	1
355	2020-10-01 14:01:19.706732+03	293	Вопрос 2	1	[{"added": {}}]	9	1
356	2020-10-01 14:01:47.151732+03	294	Вопрос 3	1	[{"added": {}}]	9	1
357	2020-10-01 14:02:19.088732+03	295	Вопрос 4	1	[{"added": {}}]	9	1
358	2020-10-01 14:02:41.299732+03	296	Вопрос 5	1	[{"added": {}}]	9	1
359	2020-10-01 14:03:20.109732+03	297	Вопрос 6	1	[{"added": {}}]	9	1
360	2020-10-01 14:03:44.919732+03	298	Вопрос 7	1	[{"added": {}}]	9	1
361	2020-10-01 14:04:20.889732+03	299	Вопрос 8	1	[{"added": {}}]	9	1
362	2020-10-01 14:04:45.404732+03	300	Вопрос 9	1	[{"added": {}}]	9	1
363	2020-10-01 14:05:12.831732+03	301	Вопрос 10	1	[{"added": {}}]	9	1
364	2020-10-01 14:07:50.599732+03	302	Вопрос 1	1	[{"added": {}}]	9	1
365	2020-10-01 14:08:20.030732+03	303	Вопрос 2	1	[{"added": {}}]	9	1
366	2020-10-01 14:08:54.813732+03	304	Вопрос 3	1	[{"added": {}}]	9	1
367	2020-10-01 14:09:21.588732+03	305	Вопрос 4	1	[{"added": {}}]	9	1
368	2020-10-01 14:09:51.611732+03	306	Вопрос 5	1	[{"added": {}}]	9	1
369	2020-10-01 14:10:22.221732+03	307	Вопрос 6	1	[{"added": {}}]	9	1
370	2020-10-01 14:10:45.299732+03	308	Вопрос 7	1	[{"added": {}}]	9	1
371	2020-10-01 14:11:11.242732+03	309	Вопрос 8	1	[{"added": {}}]	9	1
372	2020-10-01 14:11:35.587732+03	310	Вопрос 9	1	[{"added": {}}]	9	1
373	2020-10-01 14:12:00.129732+03	311	Вопрос 10	1	[{"added": {}}]	9	1
374	2020-10-01 14:13:39.199732+03	312	Вопрос 1	1	[{"added": {}}]	9	1
375	2020-10-01 14:14:07.197732+03	313	Вопрос 2	1	[{"added": {}}]	9	1
376	2020-10-01 14:14:31.415732+03	314	Вопрос 3	1	[{"added": {}}]	9	1
377	2020-10-01 14:14:58.523732+03	315	Вопрос 4	1	[{"added": {}}]	9	1
378	2020-10-01 14:15:22.861732+03	316	Вопрос 5	1	[{"added": {}}]	9	1
379	2020-10-01 14:15:48.513732+03	317	Вопрос 6	1	[{"added": {}}]	9	1
380	2020-10-01 14:16:15.070732+03	318	Вопрос 7	1	[{"added": {}}]	9	1
381	2020-10-01 14:16:50.722732+03	319	Вопрос 8	1	[{"added": {}}]	9	1
382	2020-10-01 14:17:19.676732+03	320	Вопрос 9	1	[{"added": {}}]	9	1
383	2020-10-01 14:17:48.130732+03	321	Вопрос 10	1	[{"added": {}}]	9	1
384	2020-10-01 14:19:22.982732+03	322	Вопрос 1	1	[{"added": {}}]	9	1
385	2020-10-01 14:19:59.039732+03	323	Вопрос 2	1	[{"added": {}}]	9	1
386	2020-10-01 14:20:35.388732+03	324	Вопрос 3	1	[{"added": {}}]	9	1
387	2020-10-01 14:21:30.015732+03	325	Вопрос 4	1	[{"added": {}}]	9	1
388	2020-10-01 14:21:54.096732+03	326	Вопрос 5	1	[{"added": {}}]	9	1
389	2020-10-01 14:22:20.461732+03	327	Вопрос 6	1	[{"added": {}}]	9	1
390	2020-10-01 14:22:56.077732+03	328	Вопрос 7	1	[{"added": {}}]	9	1
391	2020-10-01 14:23:24.660732+03	329	Вопрос 8	1	[{"added": {}}]	9	1
392	2020-10-01 14:23:49.054732+03	330	Вопрос 9	1	[{"added": {}}]	9	1
393	2020-10-01 14:24:11.146732+03	331	Вопрос 10	1	[{"added": {}}]	9	1
394	2020-10-01 14:27:39.779732+03	332	Вопрос 1	1	[{"added": {}}]	9	1
395	2020-10-01 14:28:06.661732+03	333	Вопрос 2	1	[{"added": {}}]	9	1
396	2020-10-01 14:28:32.233619+03	334	Вопрос 3	1	[{"added": {}}]	9	1
397	2020-10-01 14:29:01.561345+03	335	Вопрос 4	1	[{"added": {}}]	9	1
398	2020-10-01 14:29:29.837088+03	336	Вопрос 5	1	[{"added": {}}]	9	1
399	2020-10-01 14:29:53.751867+03	337	Вопрос 6	1	[{"added": {}}]	9	1
400	2020-10-01 14:31:47.062766+03	338	Вопрос 7	1	[{"added": {}}]	9	1
401	2020-10-01 14:36:51.587775+03	339	Вопрос 8	1	[{"added": {}}]	9	1
402	2020-10-01 14:37:17.791534+03	340	Вопрос 9	1	[{"added": {}}]	9	1
403	2020-10-01 14:37:50.149232+03	341	Вопрос 10	1	[{"added": {}}]	9	1
404	2020-10-01 14:42:52.123943+03	342	Вопрос 1	1	[{"added": {}}]	9	1
405	2020-10-01 14:43:25.929943+03	343	Вопрос 2	1	[{"added": {}}]	9	1
406	2020-10-01 14:43:56.749943+03	344	Вопрос 3	1	[{"added": {}}]	9	1
407	2020-10-01 14:44:23.635943+03	345	Вопрос 4	1	[{"added": {}}]	9	1
408	2020-10-01 14:44:50.833943+03	346	Вопрос 5	1	[{"added": {}}]	9	1
409	2020-10-01 14:45:17.531943+03	347	Вопрос 6	1	[{"added": {}}]	9	1
410	2020-10-01 14:45:45.779943+03	348	Вопрос 7	1	[{"added": {}}]	9	1
411	2020-10-01 14:46:16.014943+03	349	Вопрос 8	1	[{"added": {}}]	9	1
412	2020-10-01 14:46:44.211943+03	350	Вопрос 9	1	[{"added": {}}]	9	1
413	2020-10-01 14:47:19.595943+03	351	Вопрос 10	1	[{"added": {}}]	9	1
414	2020-10-01 14:48:45.953943+03	352	Вопрос 1	1	[{"added": {}}]	9	1
415	2020-10-01 14:49:15.067943+03	353	Вопрос 2	1	[{"added": {}}]	9	1
416	2020-10-01 14:49:42.329943+03	354	Вопрос 3	1	[{"added": {}}]	9	1
417	2020-10-01 14:50:08.580943+03	355	Вопрос 4	1	[{"added": {}}]	9	1
418	2020-10-01 14:50:35.159943+03	356	Вопрос 5	1	[{"added": {}}]	9	1
419	2020-10-01 14:50:58.595943+03	357	Вопрос 6	1	[{"added": {}}]	9	1
420	2020-10-01 14:51:22.117943+03	358	Вопрос 7	1	[{"added": {}}]	9	1
421	2020-10-01 14:51:47.786943+03	359	Вопрос 8	1	[{"added": {}}]	9	1
422	2020-10-01 14:52:22.918943+03	360	Вопрос 9	1	[{"added": {}}]	9	1
423	2020-10-01 14:52:50.171943+03	361	Вопрос 10	1	[{"added": {}}]	9	1
424	2020-10-01 15:31:53.779701+03	362	Вопрос 1	1	[{"added": {}}]	9	1
425	2020-10-01 15:32:24.0959+03	363	Вопрос 2	1	[{"added": {}}]	9	1
426	2020-10-01 15:32:49.566753+03	364	Вопрос 3	1	[{"added": {}}]	9	1
427	2020-10-01 15:33:20.356987+03	365	Вопрос 4	1	[{"added": {}}]	9	1
428	2020-10-01 15:33:45.501672+03	366	Вопрос 5	1	[{"added": {}}]	9	1
429	2020-10-01 15:34:15.216461+03	367	Вопрос 6	1	[{"added": {}}]	9	1
430	2020-10-01 15:34:45.55324+03	368	Вопрос 7	1	[{"added": {}}]	9	1
431	2020-10-01 15:35:24.428354+03	369	Вопрос 8	1	[{"added": {}}]	9	1
432	2020-10-01 15:36:06.522554+03	370	Вопрос 9	1	[{"added": {}}]	9	1
433	2020-10-01 15:36:37.697377+03	371	Вопрос 10	1	[{"added": {}}]	9	1
434	2020-10-01 15:38:21.853812+03	372	Вопрос 1	1	[{"added": {}}]	9	1
435	2020-10-01 15:39:02.311812+03	373	Вопрос 2	1	[{"added": {}}]	9	1
436	2020-10-01 15:39:37.753812+03	374	Вопрос 3	1	[{"added": {}}]	9	1
437	2020-10-01 15:40:12.876812+03	375	Вопрос 4	1	[{"added": {}}]	9	1
438	2020-10-01 15:40:40.824812+03	376	Вопрос 5	1	[{"added": {}}]	9	1
439	2020-10-01 15:41:02.576812+03	377	Вопрос 6	1	[{"added": {}}]	9	1
440	2020-10-01 15:41:28.042812+03	378	Вопрос 7	1	[{"added": {}}]	9	1
441	2020-10-01 15:41:56.359812+03	379	Вопрос 8	1	[{"added": {}}]	9	1
442	2020-10-01 15:42:12.289812+03	379	Вопрос 8	2	[{"changed": {"fields": ["Correct answer"]}}]	9	1
443	2020-10-01 15:42:43.687812+03	380	Вопрос 9	1	[{"added": {}}]	9	1
444	2020-10-01 15:43:06.706812+03	381	Вопрос 10	1	[{"added": {}}]	9	1
445	2020-10-01 15:44:38.731812+03	382	Вопрос 1	1	[{"added": {}}]	9	1
446	2020-10-01 15:45:02.140812+03	383	Вопрос 2	1	[{"added": {}}]	9	1
447	2020-10-01 15:45:32.362812+03	384	Вопрос 3	1	[{"added": {}}]	9	1
448	2020-10-01 15:45:56.724812+03	385	Вопрос 4	1	[{"added": {}}]	9	1
449	2020-10-01 15:46:24.792812+03	386	Вопрос 5	1	[{"added": {}}]	9	1
450	2020-10-01 15:46:49.343812+03	387	Вопрос 6	1	[{"added": {}}]	9	1
451	2020-10-01 15:47:15.301812+03	388	Вопрос 7	1	[{"added": {}}]	9	1
452	2020-10-01 15:47:36.593812+03	389	Вопрос 8	1	[{"added": {}}]	9	1
453	2020-10-01 15:48:04.557812+03	390	Вопрос 9	1	[{"added": {}}]	9	1
454	2020-10-01 15:48:36.335812+03	391	Вопрос 10	1	[{"added": {}}]	9	1
455	2020-10-01 15:57:14.088812+03	392	Вопрос 1	1	[{"added": {}}]	9	1
456	2020-10-01 15:57:43.337812+03	393	Вопрос 2	1	[{"added": {}}]	9	1
457	2020-10-01 15:58:11.783812+03	394	Вопрос 3	1	[{"added": {}}]	9	1
458	2020-10-01 15:58:52.929812+03	395	Вопрос 4	1	[{"added": {}}]	9	1
459	2020-10-01 15:59:19.314812+03	396	Вопрос 5	1	[{"added": {}}]	9	1
460	2020-10-01 15:59:45.412812+03	397	Вопрос 6	1	[{"added": {}}]	9	1
461	2020-10-01 16:00:20.330812+03	398	Вопрос 7	1	[{"added": {}}]	9	1
462	2020-10-01 16:00:50.328812+03	399	Вопрос 8	1	[{"added": {}}]	9	1
463	2020-10-01 16:01:13.488812+03	400	Вопрос 9	1	[{"added": {}}]	9	1
464	2020-10-01 16:01:44.424812+03	401	Вопрос 10	1	[{"added": {}}]	9	1
465	2020-10-01 16:03:10.103812+03	402	Вопрос 1	1	[{"added": {}}]	9	1
466	2020-10-01 16:03:33.569812+03	403	Вопрос 2	1	[{"added": {}}]	9	1
467	2020-10-01 16:04:05.815812+03	404	Вопрос 3	1	[{"added": {}}]	9	1
468	2020-10-01 16:04:37.647812+03	405	Вопрос 4	1	[{"added": {}}]	9	1
469	2020-10-01 16:05:16.805812+03	406	Вопрос 5	1	[{"added": {}}]	9	1
470	2020-10-01 16:05:42.103812+03	407	Вопрос 6	1	[{"added": {}}]	9	1
471	2020-10-01 16:06:09.376812+03	408	Вопрос 7	1	[{"added": {}}]	9	1
472	2020-10-01 16:06:33.475812+03	409	Вопрос 8	1	[{"added": {}}]	9	1
473	2020-10-01 16:07:04.956812+03	410	Вопрос 9	1	[{"added": {}}]	9	1
474	2020-10-01 16:07:31.429812+03	411	Вопрос 10	1	[{"added": {}}]	9	1
475	2020-10-01 16:08:45.398812+03	412	Вопрос 1	1	[{"added": {}}]	9	1
476	2020-10-01 16:09:16.042812+03	413	Вопрос 2	1	[{"added": {}}]	9	1
477	2020-10-01 16:09:42.682812+03	414	Вопрос 3	1	[{"added": {}}]	9	1
478	2020-10-01 16:10:15.173812+03	415	Вопрос 4	1	[{"added": {}}]	9	1
479	2020-10-01 16:10:38.619812+03	416	Вопрос 5	1	[{"added": {}}]	9	1
480	2020-10-01 16:11:22.788812+03	417	Вопрос 6	1	[{"added": {}}]	9	1
481	2020-10-01 16:11:55.392812+03	418	Вопрос 7	1	[{"added": {}}]	9	1
482	2020-10-01 16:12:19.124812+03	419	Вопрос 8	1	[{"added": {}}]	9	1
483	2020-10-01 16:12:57.182812+03	420	Вопрос 9	1	[{"added": {}}]	9	1
484	2020-10-01 16:13:25.686812+03	421	Вопрос 10	1	[{"added": {}}]	9	1
485	2020-10-01 16:15:23.125812+03	422	Вопрос 1	1	[{"added": {}}]	9	1
486	2020-10-01 16:15:47.950812+03	423	Вопрос 2	1	[{"added": {}}]	9	1
487	2020-10-01 16:16:14.486812+03	424	Вопрос 3	1	[{"added": {}}]	9	1
488	2020-10-01 16:16:42.420812+03	425	Вопрос 4	1	[{"added": {}}]	9	1
489	2020-10-01 16:17:06.459812+03	426	Вопрос 5	1	[{"added": {}}]	9	1
490	2020-10-01 16:17:37.263812+03	427	Вопрос 6	1	[{"added": {}}]	9	1
491	2020-10-01 16:18:00.173812+03	428	Вопрос 7	1	[{"added": {}}]	9	1
492	2020-10-01 16:18:23.451812+03	429	Вопрос 8	1	[{"added": {}}]	9	1
493	2020-10-01 16:18:52.313812+03	430	Вопрос 9	1	[{"added": {}}]	9	1
494	2020-10-01 16:19:13.527812+03	431	Вопрос 10	1	[{"added": {}}]	9	1
495	2020-10-01 16:20:32.820812+03	432	Вопрос 1	1	[{"added": {}}]	9	1
496	2020-10-01 16:20:59.116812+03	433	Вопрос 2	1	[{"added": {}}]	9	1
497	2020-10-01 16:21:25.438812+03	434	Вопрос 3	1	[{"added": {}}]	9	1
498	2020-10-01 16:21:50.459812+03	435	Вопрос 4	1	[{"added": {}}]	9	1
499	2020-10-01 16:22:12.242812+03	436	Вопрос 5	1	[{"added": {}}]	9	1
500	2020-10-01 16:22:39.870812+03	437	Вопрос 6	1	[{"added": {}}]	9	1
501	2020-10-01 16:23:06.359812+03	438	Вопрос 7	1	[{"added": {}}]	9	1
502	2020-10-01 16:23:31.955812+03	439	Вопрос 8	1	[{"added": {}}]	9	1
503	2020-10-01 16:24:00.751812+03	440	Вопрос 9	1	[{"added": {}}]	9	1
504	2020-10-01 16:24:31.309812+03	441	Вопрос 10	1	[{"added": {}}]	9	1
505	2020-10-01 16:25:54.956812+03	442	Вопрос 1	1	[{"added": {}}]	9	1
506	2020-10-01 16:26:24.858812+03	443	Вопрос 2	1	[{"added": {}}]	9	1
507	2020-10-01 16:26:51.338812+03	444	Вопрос 3	1	[{"added": {}}]	9	1
508	2020-10-01 16:27:25.898812+03	445	Вопрос 4	1	[{"added": {}}]	9	1
509	2020-10-01 16:27:57.556812+03	446	Вопрос 5	1	[{"added": {}}]	9	1
510	2020-10-01 16:28:20.467812+03	447	Вопрос 6	1	[{"added": {}}]	9	1
511	2020-10-01 16:28:45.630114+03	448	Вопрос 7	1	[{"added": {}}]	9	1
512	2020-10-01 16:29:08.657484+03	449	Вопрос 8	1	[{"added": {}}]	9	1
513	2020-10-01 16:29:37.786675+03	450	Вопрос 9	1	[{"added": {}}]	9	1
514	2020-10-01 16:29:59.587083+03	451	Вопрос 10	1	[{"added": {}}]	9	1
515	2020-10-02 08:38:21.876448+03	452	Вопрос 1	1	[{"added": {}}]	9	1
516	2020-10-02 08:38:53.207155+03	453	Вопрос 2	1	[{"added": {}}]	9	1
517	2020-10-02 08:39:32.284806+03	454	Вопрос 3	1	[{"added": {}}]	9	1
518	2020-10-02 08:40:04.394505+03	455	Вопрос 4	1	[{"added": {}}]	9	1
519	2020-10-02 08:40:32.312245+03	456	Вопрос 5	1	[{"added": {}}]	9	1
520	2020-10-02 08:41:01.737969+03	457	Вопрос 6	1	[{"added": {}}]	9	1
521	2020-10-02 08:41:27.97573+03	458	Вопрос 7	1	[{"added": {}}]	9	1
522	2020-10-02 08:41:53.247498+03	459	Вопрос 8	1	[{"added": {}}]	9	1
523	2020-10-02 08:42:26.611196+03	460	Вопрос 9	1	[{"added": {}}]	9	1
524	2020-10-02 08:42:50.036979+03	461	Вопрос 10	1	[{"added": {}}]	9	1
525	2020-10-02 08:44:07.219715+03	462	Вопрос 1	1	[{"added": {}}]	9	1
526	2020-10-02 08:44:36.898715+03	463	Вопрос 2	1	[{"added": {}}]	9	1
527	2020-10-02 08:45:06.891715+03	464	Вопрос 3	1	[{"added": {}}]	9	1
528	2020-10-02 08:45:32.016715+03	465	Вопрос 4	1	[{"added": {}}]	9	1
529	2020-10-02 08:45:56.496715+03	466	Вопрос 5	1	[{"added": {}}]	9	1
530	2020-10-02 08:46:24.512715+03	467	Вопрос 6	1	[{"added": {}}]	9	1
531	2020-10-02 08:46:52.130715+03	468	Вопрос 7	1	[{"added": {}}]	9	1
532	2020-10-02 08:47:26.245715+03	469	Вопрос 8	1	[{"added": {}}]	9	1
533	2020-10-02 08:48:02.922715+03	470	Вопрос 9	1	[{"added": {}}]	9	1
534	2020-10-02 08:48:26.979715+03	471	Вопрос 10	1	[{"added": {}}]	9	1
535	2020-10-02 08:49:48.963715+03	472	Вопрос 1	1	[{"added": {}}]	9	1
536	2020-10-02 08:50:23.602715+03	473	Вопрос 2	1	[{"added": {}}]	9	1
537	2020-10-02 08:50:49.089715+03	474	Вопрос 3	1	[{"added": {}}]	9	1
538	2020-10-02 08:51:16.643715+03	475	Вопрос 4	1	[{"added": {}}]	9	1
539	2020-10-02 08:51:41.846715+03	476	Вопрос 5	1	[{"added": {}}]	9	1
540	2020-10-02 08:52:08.340715+03	477	Вопрос 6	1	[{"added": {}}]	9	1
541	2020-10-02 08:52:54.002715+03	478	Вопрос 7	1	[{"added": {}}]	9	1
542	2020-10-02 08:53:37.691715+03	479	Вопрос 8	1	[{"added": {}}]	9	1
543	2020-10-02 08:54:02.727715+03	480	Вопрос 9	1	[{"added": {}}]	9	1
544	2020-10-02 08:54:27.353715+03	481	Вопрос 10	1	[{"added": {}}]	9	1
545	2020-10-02 10:05:44.314963+03	482	Вопрос 1	1	[{"added": {}}]	9	1
546	2020-10-02 10:06:14.193963+03	483	Вопрос 2	1	[{"added": {}}]	9	1
547	2020-10-02 10:06:47.565963+03	484	Вопрос 3	1	[{"added": {}}]	9	1
548	2020-10-02 10:07:12.091963+03	485	Вопрос 4	1	[{"added": {}}]	9	1
549	2020-10-02 10:07:37.162963+03	486	Вопрос 5	1	[{"added": {}}]	9	1
550	2020-10-02 10:08:04.690963+03	487	Вопрос 6	1	[{"added": {}}]	9	1
551	2020-10-02 10:08:41.144963+03	488	Вопрос 7	1	[{"added": {}}]	9	1
552	2020-10-02 10:09:03.682963+03	489	Вопрос 8	1	[{"added": {}}]	9	1
553	2020-10-02 10:09:43.124963+03	490	Вопрос 9	1	[{"added": {}}]	9	1
554	2020-10-02 10:10:12.201963+03	491	Вопрос 10	1	[{"added": {}}]	9	1
555	2020-10-02 10:11:37.590963+03	492	Вопрос 1	1	[{"added": {}}]	9	1
556	2020-10-02 10:12:01.696963+03	493	Вопрос 2	1	[{"added": {}}]	9	1
557	2020-10-02 10:13:01.248963+03	494	Вопрос 3	1	[{"added": {}}]	9	1
558	2020-10-02 10:13:34.716963+03	495	Вопрос 4	1	[{"added": {}}]	9	1
559	2020-10-02 10:13:56.624963+03	496	Вопрос 5	1	[{"added": {}}]	9	1
560	2020-10-02 10:14:21.667963+03	497	Вопрос 6	1	[{"added": {}}]	9	1
561	2020-10-02 10:14:50.482963+03	498	Вопрос 7	1	[{"added": {}}]	9	1
562	2020-10-02 10:15:23.168963+03	499	Вопрос 8	1	[{"added": {}}]	9	1
563	2020-10-02 10:15:53.604963+03	500	Вопрос 9	1	[{"added": {}}]	9	1
564	2020-10-02 10:16:17.228963+03	501	Вопрос 10	1	[{"added": {}}]	9	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	tests_app	testcategory
8	tests_app	ticket
9	tests_app	question
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-09-28 13:40:50.082895+03
2	auth	0001_initial	2020-09-28 13:40:50.142895+03
3	admin	0001_initial	2020-09-28 13:40:50.232895+03
4	admin	0002_logentry_remove_auto_add	2020-09-28 13:40:50.262895+03
5	admin	0003_logentry_add_action_flag_choices	2020-09-28 13:40:50.272895+03
6	contenttypes	0002_remove_content_type_name	2020-09-28 13:40:50.292895+03
7	auth	0002_alter_permission_name_max_length	2020-09-28 13:40:50.302895+03
8	auth	0003_alter_user_email_max_length	2020-09-28 13:40:50.312895+03
9	auth	0004_alter_user_username_opts	2020-09-28 13:40:50.322895+03
10	auth	0005_alter_user_last_login_null	2020-09-28 13:40:50.332895+03
11	auth	0006_require_contenttypes_0002	2020-09-28 13:40:50.332895+03
12	auth	0007_alter_validators_add_error_messages	2020-09-28 13:40:50.342895+03
13	auth	0008_alter_user_username_max_length	2020-09-28 13:40:50.362895+03
14	auth	0009_alter_user_last_name_max_length	2020-09-28 13:40:50.372895+03
15	auth	0010_alter_group_name_max_length	2020-09-28 13:40:50.382895+03
16	auth	0011_update_proxy_permissions	2020-09-28 13:40:50.392895+03
17	auth	0012_alter_user_first_name_max_length	2020-09-28 13:40:50.402895+03
18	sessions	0001_initial	2020-09-28 13:40:50.412895+03
19	tests_app	0001_initial	2020-09-28 13:56:59.806895+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
6oj5zopexyyjq7rl3r1xbbke091v6ke3	.eJxVjEEOwiAQRe_C2hAYoYBL9z0DGZipVA0kpV0Z765NutDtf-_9l4i4rSVunZc4k7gILU6_W8L84LoDumO9NZlbXZc5yV2RB-1ybMTP6-H-HRTs5Vs7VAxEnE1Og3H-rIeQmVjpKREpNQUAdJ68DcEysLMEBjFRBqu1A_H-AANyOF0:1kNASQ:m6dfD5mo5gfNZ5IamC_gReTUfftgaJ0H51UAzkbWA-w	2020-10-13 10:53:54.572412+03
\.


--
-- Data for Name: tests_app_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tests_app_question (id, title, text, image, answers, correct_answer) FROM stdin;
1	Вопрос 1	Что означает сигнал - горизонтальное движение флагом - отмашкой, подаваемый с патрульного судна ГИМС?	images/2020/09/29/2_b1v1.jpg	Прошу остановить судно\r\nПодойдите к моему борту\r\nПрошу лечь на обратный курс\r\nПроходите по борту со стороны отмашки	Прошу остановить судно
2	Вопрос 2	На какой срок задерживается маломерное судно при совершении административного правонарушения?	images/2020/09/29/2_b1v2.jpg	На срок до рассмотрения дела об административном правонарушении\r\nНа срок до составления протокола об административном правонарушении\r\nНа срок до вступления постановления по делу об административном правонарушении в законную силу\r\nНа срок до устранения причины задержания	На срок до устранения причины задержания
3	Вопрос 3	Какой из маневров на моторной лодке "А" является наиболее эффективным, чтобы уступить дорогу катеру "Б"?	images/2020/09/29/2_b1v3.jpg	Сделать оборот через левый борт\r\nУменьшить скорость и повернуть под корму катера "Б"\r\nПовернуть влево на 10°\r\nПовернуть вправо на 10°	Уменьшить скорость и повернуть под корму катера "Б"
4	Вопрос 2	Что означает флаг, изображенный на иллюстрации?	images/2020/09/29/3_b1v2.jpg	Вы идете к опасности\r\nЯ хочу установить с Вами связь\r\nОстановите немедленно свое судно\r\nЧеловек за бортом	Человек за бортом
5	Вопрос 4	В каких из перечисленных случаев маломерным судам разрешен обгон судов в подходных каналах и камере шлюза?	images/2020/09/30/2_b1v4.jpg	При шлюзовании вниз\r\nПри шлюзовании вверх\r\nЕсли при входе подходного канала горит зеленый огонь светофора\r\nТаких случаев не предусмотрено	Таких случаев не предусмотрено
6	Вопрос 5	При подходе к работающему на судовом ходу дноуглубительному или дноочистительному снаряду судно должно.	images/2020/09/30/2_b1v5.jpg	На расстоянии не менее 1 км должно подать звуковой сигнал "Внимание" и согласовать по УКВ радиосвязи сторону прохода\r\nНа расстоянии не менее 500 м должно подать звуковой сигнал "Внимание" и согласовать по УКВ радиосвязи сторону прохода\r\nНа расстоянии не менее 1 км, при движении сверху, и не менее 500 м, при движении снизу, должно подать звуковой сигнал "Внимание" и согласовать по УКВ радиосвязи сторону прохода\r\nЗаблаговременно убавить скорость хода и запросить разрешение на проход	Заблаговременно убавить скорость хода и запросить разрешение на проход
7	Вопрос 6	На каком из указанных УКВ каналов должно вестись постоянное наблюдение?	images/2020/09/30/2_b1v6.jpg	На 2 канале\r\nНа 3 канале\r\nНа 4 канале\r\nНа 5 канале	На 5 канале
8	Вопрос 7	Пеленг на какой из объектов необходимо взять в последнюю очередь при определении места судна?	images/2020/09/30/2_b1v7.jpg	на объект, находящийся по носу\r\nна объект, находящийся по корме\r\nна объект, находящийся на траверзе\r\nна любой из перечисленных	на объект, находящийся на траверзе
9	Вопрос 8	Что измеряет барометр-анероид?	images/2020/09/30/2_b1v8.jpg	Температуру воды\r\nСилу ветра\r\nВлажность воздуха\r\nАтмосферное давление	Атмосферное давление
10	Вопрос 9	Какие правила плавания действуют на реке Преголя к востоку от двухъярусного моста?	images/2020/09/30/2_b1v9.jpg	Правила плавания по ВВП Российской Федерации.\r\nМППСС-72.\r\nМестные правила плавания судов в Калининградском заливе.\r\nОбязательные постановления Администрации морского порта Калининград.	Правила плавания по ВВП Российской Федерации.
11	Вопрос 10	Какие из указанных огней принадлежат судну, лишенному возможности управляться и не имеющему хода относительно воды?	images/2020/09/30/2_b1v10.jpg	а.\r\nб.\r\nв.\r\nг.	г.
12	Вопрос 1	Какое движение флага-отмашки днем означает сигнал "Прошу остановиться"?	images/2020/09/30/2_b2v1.jpg	Вертикальное.\r\nВращательное.\r\nЛюбое.\r\nГоризонтальное.	Горизонтальное.
13	Вопрос 2	Что обозначает изображенный на иллюстрации береговой навигационный информационный знак?	images/2020/09/30/2_b2v2.jpg	Место пересечения судового хода.\r\nУчасток, где запрещено создавать волнение.\r\nУчасток, где на судовом ходу запрещено движение маломерных судов.\r\nУчасток, где необходимо соблюдать особую осторожность.	Участок, где на судовом ходу запрещено движение маломерных судов.
25	Вопрос 4	За какой промежуток времени суда, идущие на шлюзование, обязаны сообщать по радиотелефонной связи диспетчеру шлюза о расчетном времени подхода к границам шлюза?	images/2020/09/30/2_b3v4.jpg	За 1,5 часа.\r\nЗа 1 час.\r\nЗа 0,5 часа.\r\nСразу при подходе к границам шлюза.	За 1,5 часа.
14	Вопрос 3	Какое административное наказание предусматривается за нарушение лицом, управляющим маломерным судном, правил маневрирования?	images/2020/09/30/2_b2v3.jpg	Административный штраф.\r\nПредупреждение.\r\nПредупреждение либо административный штраф.\r\nПредупреждение, либо административный штраф, либо лишение права управления маломерным судном на срок до шести месяцев.	Предупреждение, либо административный штраф, либо лишение права управления маломерным судном на срок до шести месяцев.
15	Вопрос 4	В каком порядке осуществляется вход маломерных судов в шлюз?	images/2020/09/30/2_b2v4.jpg	После немаломерных судов.\r\nВ произвольном порядке.\r\nОдновременно с немаломерными судами.\r\nПеред немаломерными судами.	После немаломерных судов.
16	Вопрос 5	При движении по затруднительному и не просматриваемому участку судно должно:	images/2020/09/30/2_b2v5.jpg	Информировать по радиотелефонной связи о своем местонахождении и через 2-3 минуты подавать звуковой сигнал: два продолжительных звука.\r\nИнформировать по радиотелефонной связи о своем местонахождении и через 2-3 минуты подавать звуковой сигнал: один продолжительный звук.\r\nИнформировать по радиотелефонной связи о своем местонахождении.\r\nИнформировать по радиотелефонной связи о своем местонахождении и через 2-3 минуты подавать звуковой сигнал: один продолжительный, один короткий и один продолжительный звуки.	Информировать по радиотелефонной связи о своем местонахождении и через 2-3 минуты подавать звуковой сигнал: два продолжительных звука.
17	Вопрос 6	В каком случае необходимо передать сигнал бедствия?	images/2020/09/30/2_b2v6.jpg	При наличии очень срочного сообщения, касающегося безопасности судна или какого- либо лица, находящегося на нем или видимого с него.\r\nЕсли судно находится под угрозой серьезной и неминуемой опасности и ему требуется немедленная помощь.\r\nПри наличии сообщения, касающегося обеспечения безопасности плавания.\r\nНа основании получения штормового предупреждения.	Если судно находится под угрозой серьезной и неминуемой опасности и ему требуется немедленная помощь.
18	Вопрос 7	Как часто необходимо сверять показания часов с сигналами точного времени?	images/2020/09/30/2_b2v7.jpg	Один раз в сутки.\r\nОдин раз в течение ходовой вахты.\r\nПо мере необходимости с учетом точности хода часов.\r\nНе реже двух раз в сутки.	Не реже двух раз в сутки.
19	Вопрос 8	Что измеряется ручным анемометром?	images/2020/09/30/2_b2v8.jpg	Скорость ветра.\r\nНаправление ветра.\r\nСкорость течения.\r\nАтмосферное давление.	Атмосферное давление.
20	Вопрос 9	В какое время суток разрешается пребывание судов и других плавсредств на воде в российской части вод пограничных рек, озер и иных водоемов?	images/2020/09/30/2_b2v9.jpg	Круглосуточно.\r\nВ светлое время суток.\r\nКруглосуточно на удалении не менее 2 км. от пограничной зоны.\r\nС 09.00 до 21.00 местного времени.	В светлое время суток.
21	Вопрос 10	Какие из изображенных на иллюстрации огней принадлежат судну, лишенному возможности управляться?	images/2020/09/30/2_b2v10.jpg	а.\r\nб.\r\nв.\r\nг.	г.
22	Вопрос 1	В каком случае требуется заключение договора водопользования для плавания на маломерном судне?	images/2020/09/30/2_b3v1.jpg	Таких случаев законодательством не предусмотрено.\r\nЕсли мощность двигателя маломерного судна более 55 кВт (75л.с.).\r\nЕсли на одного владельца зарегистрировано два и более маломерных судов.\r\nЕсли судовладелец использует судно для рыболовства, рыбоводства или охоты.	Таких случаев законодательством не предусмотрено.
23	Вопрос 2	На что указывает изображенный на иллюстрации береговой навигационный знак?	images/2020/09/30/2_b3v2.jpg	На направление судового хода.\r\nНа положение судового хода и его кромок.\r\nНа фарватер для прохода крупных судов.\r\nНа ось судового хода.	На положение судового хода и его кромок.
24	Вопрос 3	Какое административное наказание предусмотрено за управление маломерным судном, не зарегистрированным в установленном порядке?	images/2020/09/30/2_b3v3.jpg	Предупреждение.\r\nПредупреждение либо административный штраф.\r\nПредупреждение, либо административный штраф, либо лишение права управления маломерным судном.\r\nАдминистративный штраф.	Административный штраф.
39	Вопрос 8	Как называется расстояние (h) от подошвы до гребня волны?	images/2020/09/30/2_b4v8.jpg	Период волны.\r\nДиаметр волны.\r\nДлина волны.\r\nВысота волны.	Высота волны.
26	Вопрос 5	Какие действия необходимо предпринять судоводителю маломерного судна при выходе на судоходный участок реки из протоки?	images/2020/09/30/2_b3v5.jpg	Запустить вверх ракету, если судно не оборудовано звуковой сигнализацией.\r\nПодать звуковой сигнал из 5 коротких звуков.\r\nОстановить судно у правого берега и при помощи бинокля ознакомиться с обстановкой.\r\nУменьшить ход и быть готовым к маневрированию.	Уменьшить ход и быть готовым к маневрированию.
27	Вопрос 6	На каком из указанных каналов осуществляется радиотелефонная связь с диспетчером шлюза?	images/2020/09/30/2_b3v6.jpg	На 2 канале.\r\nНа 3 канале.\r\nНа 4 канале.\r\nНа 25 канале.	На 3 канале.
28	Вопрос 7	Пеленг на какой из объектов необходимо взять в последнюю очередь при определении места судна?	images/2020/09/30/2_b3v7.jpg	На объект, находящийся по носу.\r\nНа объект, находящийся по корме.\r\nНа объект, находящийся на траверзе.\r\nНа любой из перечисленных.	На объект, находящийся на траверзе.
29	Вопрос 8	Как называется наивысшая точка волнового профиля?	images/2020/09/30/2_b3v8.jpg	Взброс.\r\nПодошва.\r\nВысота.\r\nГребень.	Гребень.
30	Вопрос 9	Как осуществляется выход судов и плавсредств из пунктов базирования в российскую часть вод пограничных рек, озер и иных водоемов, во внутренние морские воды и в территориальное море Российской Федерации и их возвращение в пункты базирования?	images/2020/09/30/2_b3v9.jpg	После получения разрешения от ближайшего подразделения пограничного управления ФСБ России.\r\nПосле представления письменной заявки и получения разрешения.\r\nС оповещением ближайшего подразделения пограничного управления ФСБ России не позднее, чем за 4 часа.\r\nОповещения подразделения пограничного управления ФСБ России не требуется.	С оповещением ближайшего подразделения пограничного управления ФСБ России не позднее, чем за 4 часа.
31	Вопрос 10	Укажите огни одиночного самоходного судна, которое следует на нас?	images/2020/09/30/2_b3v10.jpg	а\r\nб\r\nв\r\nг	б
33	Вопрос 2	Что обозначает изображенный на иллюстрации береговой навигационный информационный знак?	images/2020/09/30/2_b4v2.jpg	Перекресток судовых ходов.\r\nМесто приближении к перекату.\r\nОсь судового хода.\r\nМесто пересечения судового хода судами и паромными переправами.	Место пересечения судового хода судами и паромными переправами.
32	Вопрос 1	При какой мощности подвесного лодочного мотора (двигателя) маломерное судно массой более 200 кг подлежит государственной регистрации?	images/2020/09/30/2_b4v1.jpg	Более 3,68 кВт.\r\nБолее 5 кВт.\r\nБолее 8 кВт.\r\nБолее 10 кВт.	Более 8 кВт.
34	Вопрос 3	Какое административное наказание предусматривается за несоблюдение лицом, управляющим маломерным судном, установленной скорости?	images/2020/09/30/2_b4v3.jpg	Предупреждение, либо административный штраф, либо лишение права управления маломерным судном на срок до шести месяцев.\r\nАдминистративный штраф.\r\nПредупреждение.\r\nПредупреждение либо административный штраф.	Предупреждение, либо административный штраф, либо лишение права управления маломерным судном на срок до шести месяцев.
35	Вопрос 4	На каком расстоянии от границ шлюза судоводитель должен запросить по радиотелефонной связи у диспетчера шлюза уточненные данные о порядке судопропуска и доложить о готовности к шлюзованию?	images/2020/09/30/2_b4v4.jpg	Не менее чем за 1 км.\r\nНе менее чем за 3 км.\r\nНе менее чем за 100 м.\r\nСразу по прибытии к границам шлюза.	Не менее чем за 1 км.
36	Вопрос 5	Пеленг на какой из объектов необходимо взять в последнюю очередь при определении места судна?	images/2020/09/30/2_b4v5.jpg	На объект, находящийся по носу.\r\nНа объект, находящийся по корме.\r\nНа объект, находящийся на траверзе.\r\nНа любой из перечисленных.	На объект, находящийся на траверзе.
37	Вопрос 6	В каком случае категорически запрещается передача сигналов бедствия, срочности и безопасности?	images/2020/09/30/2_b4v6.jpg	В случае стоянки вне пределов судового хода.\r\nВ случае отсутствия разрешения на право пользования судовой радиостанцией.\r\nБез действительной необходимости.\r\nБез получения разрешения судовладельца.	Без действительной необходимости.
38	Вопрос 7	Как называется местоположение судна, полученное путем обработки результатов визуальных наблюдений различных ориентиров, положение которых известно?	images/2020/09/30/2_b4v7.jpg	Обсервованное.\r\nСчислимое.\r\nИстинное.\r\nРасчетное.	Обсервованное.
40	Вопрос 9	Кем принимаются заявки на пропуск судов в и разводку мостов на ВВП, находящихся в Калининградской области?	images/2020/09/30/2_b4v9.jpg	Диспетчером Гвардейского района водных путей и судоходства.\r\nКалининградским линейным отделом Федеральной службы в сфере надзора на внутреннем водном транспорте.\r\nДиспетчером Калининградской железной дороги для разводки мостов с железнодорожными путями.\r\nДиспетчерская служба предприятия, ответственного за содержание и эксплуатацию надводного перехода (моста).	Диспетчером Гвардейского района водных путей и судоходства.
41	Вопрос 10	Укажите огни пассажирского судна, работающего на переправе?	images/2020/09/30/2_b4v10.jpg	а.\r\nб.\r\nв.\r\nг.	б.
42	Вопрос 1	Сколько метров составляет ширина береговой полосы водных объектов общего использования?	images/2020/09/30/2_b5v1.jpg	10 м.\r\n30 м.\r\n50 м.\r\n20 м.	20 м.
43	Вопрос 2	Что обозначает изображенный на иллюстрации береговой навигационный информационный знак?	images/2020/09/30/2_b5v2.jpg	Участок судоходного пути, на котором максимальная допустимая ширина судов 15 м.\r\nУчасток судоходного пути, на котором максимальная допустимая высота надводного габарита судна 15 м.\r\nУчасток судоходного пути, на котором глубина судового хода 15 м.\r\nУчасток судоходного пути, где скорость движения водоизмещающих судов ограничена 15 км/ч.	Участок судоходного пути, где скорость движения водоизмещающих судов ограничена 15 км/ч.
44	Вопрос 3	Какое административное наказание предусматривается за управление маломерным судном, судоводителем, не имеющем при себе судового билета?	images/2020/09/30/2_b5v3.jpg	Предупреждение.\r\nПредупреждение либо административный штраф.\r\nПредупреждение, либо административный штраф, либо лишение права управления маломерным судном на срок до шести месяцев.\r\nАдминистративный штраф.	Предупреждение либо административный штраф.
45	Вопрос 4	К месту отстоя рядом со шлюзом подошли суда в следующем хронологическом порядке: нефтяной танкер, маломерное судно, сухогруз. Каким по порядку будет пропущено в шлюз маломерное судно?	images/2020/09/30/2_b5v4.jpg	Первым.\r\nВторым.\r\nТретьим.\r\nНе будет пропущено.	Третьим.
46	Вопрос 5	Какое время принято на внутренних водных путях Российской Федерации?	images/2020/09/30/2_b5v5.jpg	Поясное время.\r\nСреднеевропейское время.\r\nВсемирное универсальное время.\r\nЕдиное московское время.	Единое московское время.
47	Вопрос 6	Выберите правильный формат вызова при бедствии, передаваемого по радиотелефону.	images/2020/09/30/2_b5v6.jpg	Слово "БЕДСТВИЕ", передаваемое три раза; слово "ГОВОРИТ", передаваемое один раз; название судна, передаваемое три раза.\r\nСлово "ТРЕВОГА", передаваемое три раза; слово "ПЕРЕДАЕТ", один раз; название судна, передаваемое три раза.\r\nСлово "ВСЕМ", передаваемое три раза; слово "Я", передаваемое один раз; название судна, передаваемое три раза.\r\nСлово "АВАРИЯ", передаваемое три раза; слово "ГОВОРИТ", передаваемое один раз; название судна, передаваемое три раза.	Слово "БЕДСТВИЕ", передаваемое три раза; слово "ГОВОРИТ", передаваемое один раз; название судна, передаваемое три раза.
48	Вопрос 7	Как называется отклонение движущегося судна от курса под влиянием течения?	images/2020/09/30/2_b5v7.jpg	Дрейф.\r\nДифферент.\r\nСнос.\r\nСлеминг.	Снос.
49	Вопрос 8	Как называется ветер, дующий в сторону берега?	images/2020/09/30/2_b5v8.jpg	Прижимной.\r\nНавальный.\r\nПрибрежный.\r\nПривальный.	Навальный.
50	Вопрос 9	К какой категории водных объектов относится Куршский залив?	images/2020/09/30/2_b5v9.jpg	Район с морским режимом плавания.\r\nВнутренний водоём.\r\nКатегория не определена.\r\nВнутренний водный путь.	Внутренний водный путь.
51	Вопрос 10	Укажите огни судна, занятого водолазными работами.	images/2020/09/30/2_b5v10.jpg	а.\r\nб.\r\nв.\r\n г.	б.
52	Вопрос 1	На какие органы (организации) Водным кодексом РФ возложены обязанности об информировании жителей в случае введения запрета (ограничения) на использование маломерных судов на водных объектах общего пользования?	images/2020/09/30/2_b6v1.jpg	На ВОСВОД.\r\nНа органы местного самоуправления.\r\nНа инспекторские подразделения ГИМС.\r\nНа территориальные органы МЧС России.	На органы местного самоуправления.
53	Вопрос 2	Что означают изображенные на иллюстрации сигнальные фигуры и огни на семафорной мачте?	images/2020/09/30/2_b6v2.jpg	Ход закрыт в оба направления.\r\nХод закрыт для движения снизу.\r\nХод закрыт для движения сверху.\r\nХод закрыт в оба направления для маломерных судов.	Ход закрыт в оба направления.
54	Вопрос 3	Какое административное наказание предусмотрено за управление маломерным судном судоводителем или иным лицом, находящимся в состоянии опьянения?	images/2020/09/30/2_b6v3.jpg	Лишение прав управления маломерным судном.\r\nПредупреждение.\r\nШтраф.\r\nШтраф или лишение прав управления маломерным судном.	Штраф или лишение прав управления маломерным судном.
55	Вопрос 4	Могут ли маломерные суда, находящиеся в очереди, потребовать пройти шлюзование, отдельное от других судов?	images/2020/09/30/2_b6v4.jpg	Не могут ни при каких обстоятельствах.\r\nМогут, при наличии заключенного договора на шлюзование.\r\nМогут, если они будут находиться в шлюзе в начале.\r\nМогут.	Не могут ни при каких обстоятельствах.
56	Вопрос 5	При расхождении судно, идущее вверх, первым заблаговременно должно:	images/2020/09/30/2_b6v5.jpg	Согласовать свои действия по радиотелефонной связи и подать отмашку с левого борта.\r\nПодать маневроуказующий звуковой сигнал и отмашку с левого борта.\r\nПодать отмашку с левого борта.\r\nПодать маневроуказующий звуковой сигнал и отмашку на расхождение с соответствующего борта.	Подать маневроуказующий звуковой сигнал и отмашку с левого борта.
57	Вопрос 6	Что следует предпринять, если радиостанция судна, терпящего бедствие, не получит ответ на вызов и сообщение о бедствии на 5 канале УКВ?	images/2020/09/30/2_b6v6.jpg	Громче говорить в микрофон.\r\nПрекратить передачу сообщения о бедствии.\r\nИспользовать сотовый телефон.\r\nПовторить сообщение на любом другом канале, на котором можно привлечь внимание.	Повторить сообщение на любом другом канале, на котором можно привлечь внимание.
58	Вопрос 7	Как называется отклонение движущегося судна от курса под влиянием ветра?	images/2020/09/30/2_b6v7.jpg	Дрейф.\r\nДифферент.\r\nКрен.\r\nСлеминг.	Дрейф.
59	Вопрос 8	Как называется разновидность тумана при видимости от 1 до 10 км?	images/2020/09/30/2_b6v8.jpg	Мгла.\r\nРефракция.\r\nМорось.\r\nДымка.	Дымка.
60	Вопрос 9	Максимально допустимая скорость движения судов при следовании по рекам Преголя и Старая Преголя от двухъярусного моста до Октябрьского шоссейного (Берлинского) моста?	images/2020/09/30/2_b6v9.jpg	6 км/час\r\n10 км/час\r\n15 км/час\r\n12 км/час	12 км/час
61	Вопрос 10	Какое из перечисленных судов несет изображенные на иллюстрации огни?	images/2020/09/30/2_b6v10.jpg	Парусное судно под мотором.\r\nПарусное судно длиной менее 20 м.\r\nРыболовное судно.\r\nПарусное судно длиной 20 м и более.	Парусное судно длиной 20 м и более.
62	Вопрос 1	Выберите правильное определение понятия «район плавания маломерного судна»	images/2020/10/01/2_b7v1.jpg	Район, по которому произведена предварительная прокладка перехода.\r\nРайон, в котором фактически находится маломерное судно.\r\nАкватория, на которой допускается использование маломерного судна в соответствии с его техническими и конструктивными характеристиками.\r\nАкватория, в которой осуществляют плавание маломерные суда.	Акватория, на которой допускается использование маломерного судна в соответствии с его техническими и конструктивными характеристиками.
63	Вопрос 2	Что означает изображенное на иллюстрации сочетание сигнальных фигур на семафорной мачте?	images/2020/10/01/2_b7v2.jpg	Ход закрыт в оба направления.\r\nХод закрыт для движения сверху.\r\nХод закрыт в оба направления для маломерных судов.\r\nХод закрыт для движения снизу.	Ход закрыт для движения снизу.
64	Вопрос 3	Какое административное наказание предусматривается за несоблюдение лицом, управляющим маломерным судном, требований навигационных знаков?	images/2020/10/01/2_b7v3.jpg	Административный штраф.\r\nОдно из перечисленных.\r\nЛишение права управления маломерным судном на срок до шести месяцев.\r\nПредупреждение.	Одно из перечисленных.
65	Вопрос 4	С какой скоростью маломерное судно должно заходить в шлюз?	images/2020/10/01/2_b7v4.jpg	10 км/ч.\r\n3 км/ч.\r\n1 км/ч.\r\nС безопасной скоростью, чтобы избежать повреждения шлюза и судов.	С безопасной скоростью, чтобы избежать повреждения шлюза и судов.
66	Вопрос 5	Укажите звуковой сигнал, который необходимо подать, если необходимо вызвать на радиосвязь другое судно.	images/2020/10/01/2_b7v5.jpg	Один продолжительный, один короткий и один продолжительный звуки.\r\nОдин продолжительный звук.\r\nОдин продолжительный и один короткий звуки.\r\nОдин продолжительный, один короткий, один продолжительный и один короткий звуки.	Один продолжительный, один короткий и один продолжительный звуки.
67	Вопрос 6	До каких пор следует повторять вызов и сообщение о бедствии?	images/2020/10/01/2_b7v6.jpg	До тех пор, пока не прибудет помощь.\r\nДо тех пор, пока в зоне видимости не появится судно.\r\nДо тех пор, пока не будет установлена связь по мобильному телефону.\r\nДо тех пор, пока не будет получено подтверждение о приеме.	До тех пор, пока не будет получено подтверждение о приеме.
68	Вопрос 7	Как называется угол между диаметральной плоскостью судна и направлением на магнитный север?	images/2020/10/01/2_b7v7.jpg	Курс.\r\nМагнитный курс.\r\nКомпасный курс.\r\nИстинный курс.	Магнитный курс.
69	Вопрос 8	Как называется расстояние между гребнями или подошвами двух смежных волн?	images/2020/10/01/2_b7v8.jpg	Длина волны.\r\nБег волны.\r\nПериод волны.\r\nВысота волны.	Длина волны.
70	Вопрос 9	Максимально допустимая скорость движения судов при следовании по Приморскому и Озерковскому каналам, реке Шешупе?	images/2020/10/01/2_b7v9.jpg	10 км/час\r\n6 км/час\r\n12 км/час\r\n15 км/час	10 км/час
71	Вопрос 10	Укажите огни судна, занятого ловом рыбы.	images/2020/10/01/2_b7v10.jpg	а.\r\nб.\r\nв.\r\nг.	г.
72	Вопрос 1	Какими нормативными документами регулируется безопасность судоходства маломерных судов на внутренних водных путях Российской Федерации?	images/2020/10/01/2_b8v1.jpg	Правилами плавания по внутренним водным путям Российской Федерации.\r\nПравилами пользования маломерными судами на водных объектах Российской Федерации.\r\nКодексом внутреннего водного транспорта Российской Федерации.\r\nВсеми перечисленными.	Всеми перечисленными.
73	Вопрос 2	Что означает изображенное на иллюстрации сочетание сигнальных фигур на семафорной мачте?	images/2020/10/01/2_b8v2.jpg	Ход закрыт для движения сверху.\r\nХод закрыт в оба направления.\r\nХод закрыт для движения снизу.\r\nХод закрыт в оба направления для маломерных судов.	Ход закрыт для движения сверху.
74	Вопрос 3	Какое административное наказание лица, управляющего маломерным судном, предусматривается за преднамеренную остановку или стоянку судна в запрещенных местах?	images/2020/10/01/2_b8v3.jpg	Административный штраф.\r\nПредупреждение.\r\nПредупреждение, либо административный штраф, либо лишение права управления маломерным судном на срок до шести месяцев.\r\nПредупреждение либо административный штраф.	Предупреждение, либо административный штраф, либо лишение права управления маломерным судном на срок до шести месяцев.
75	Вопрос 4	Каким образом судоводитель маломерного судна может подтвердить получение распоряжений от диспетчера шлюза, касающиеся расстановки судов у причальных стенок шлюзов, порядка судопропуска и расстановки в камере шлюза, в случае неисправности радиотелефонной связи?	images/2020/10/01/2_b8v4.jpg	С помощью подачи звукового сигнала «Я Вас понял».\r\nС помощи подачи светового сигнала «Я Вас понял».\r\nС помощью подачи сигнала – отмашки.\r\nС помощью языка жестов.	С помощью подачи звукового сигнала «Я Вас понял».
76	Вопрос 5	При движении по затруднительному и не просматриваемому участку судно должно:	images/2020/10/01/2_b8v5.jpg	Информировать по радиотелефонной связи о своем местонахождении и через 2-3 минуты подавать звуковой сигнал: два продолжительных звука.\r\nИнформировать по радиотелефонной связи о своем местонахождении и через 2-3 минуты подавать звуковой сигнал: один продолжительный звук.\r\nИнформировать по радиотелефонной связи о своем местонахождении.\r\nИнформировать по радиотелефонной связи о своем местонахождении и через 2-3 минуты подавать звуковой сигнал: один продолжительный, один короткий и один продолжительный звуки.	Информировать по радиотелефонной связи о своем местонахождении и через 2-3 минуты подавать звуковой сигнал: два продолжительных звука.
77	Вопрос 6	Какая команда применяется для прекращения передач, мешающих аварийному радиотелефонному обмену?	images/2020/10/01/2_b8v6.jpg	"ВСЕМ СУДАМ СОБЛЮДАТЬ МОЛЧАНИЕ".\r\n"ВНИМАНИЕ! ВЕДЕТСЯ СПАСАТЕЛЬНАЯ ОПЕРАЦИЯ".\r\n"КАНАЛ ЗАНЯТ АВАРИЙНЫМ ОБМЕНОМ".\r\n"ПРЕКРАТИТЕ ПЕРЕДАЧУ", "БЕДСТВИЕ".	"ПРЕКРАТИТЕ ПЕРЕДАЧУ", "БЕДСТВИЕ".
78	Вопрос 7	Как называется угол между диаметральной плоскостью судна и направлением на истинный север?	images/2020/10/01/2_b8v7.jpg	Курс.\r\nКомпасный курс.\r\nИстинный курс.\r\nМагнитный курс.	Истинный курс.
79	Вопрос 8	Признаком какого изменения погоды является резкое падение атмосферного давления?	images/2020/10/01/2_b8v8.jpg	Изменения направления ветра.\r\nУлучшения погоды.\r\nУстойчивой хорошей погоды.\r\nПриближения шторма.	Приближения шторма.
80	Вопрос 9	Движение судов габаритной длиной менее 20 метров вблизи пляжей, районов массового отдыха населения на воде разрешается со скоростью не более?	images/2020/10/01/2_b8v9.jpg	6 км/час\r\n12 км/час\r\n10 км/час\r\n15 км/час	12 км/час
81	Вопрос 10	Укажите огни судна, занятого ловом рыбы	images/2020/10/01/2_b8v10.jpg	а.\r\nб.\r\nв.\r\nг.	б.
82	Вопрос 1	Каким нормативным документом регулируется безопасность судоходства маломерных судов на внутренних водах, не включенных в Перечень внутренних водных путей Российской Федерации?	images/2020/10/01/2_b9v1.jpg	Правилами плавания по внутренним водным путям Российской Федерации.\r\nПравилами пользования маломерными судами на водных объектах Российской Федерации.\r\nКодексом внутреннего водного транспорта Российской Федерации.\r\nВодным кодексом Российской Федерации.	Правилами пользования маломерными судами на водных объектах Российской Федерации.
83	Вопрос 2	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/2_b9v2.jpg	Правую кромку судового хода.\r\nПоворот судового хода и стоит у левого берега.\r\nПоворот судового хода и стоит у правого берега.\r\nЛевую кромку судового хода.	Левую кромку судового хода.
84	Вопрос 3	В течение какого срока гражданин, в отношении которого вынесено административное наказание, имеет право обжаловать постановление по делу об административном правонарушении?	images/2020/10/01/2_b9v3.jpg	5 суток.\r\n10 суток.\r\n15 суток.\r\n20 суток.	10 суток.
85	Вопрос 4	При каком условии разрешается вход маломерных судов в камеру шлюза?	images/2020/10/01/2_b9v4.jpg	Только при зеленом сигнале входного семафора.\r\nПо команде диспетчера шлюза, поданной через громкоговорящее устройство.\r\nЧерез одну минуту после начала движения впередистоящего немаломерного судна.\r\nПри зеленом сигнале входного семафора, или при отсутствии на нем сигнала.	Только при зеленом сигнале входного семафора.
86	Вопрос 5	Какая зависимость между продольным уклоном поверхности воды и скоростью течения воды в реке?	images/2020/10/01/2_b9v5.jpg	Скорость течения возрастает с уменьшением продольного уклона.\r\nСкорость течения уменьшается с увеличением продольного уклона.\r\nСкорость течения не зависит от продольного уклона поверхности воды в реке.\r\nСкорость течения возрастает с увеличением продольного уклона.	Скорость течения возрастает с увеличением продольного уклона.
87	Вопрос 6	Какая фраза передается в сообщении, передаваемом по окончании радиообмена в случае бедствия?	images/2020/10/01/2_b9v6.jpg	" ВНИМАНИЕ! КАНАЛ СВОБОДЕН".\r\n"ВОЗОБНОВЛЕНИЕ НОРМАЛЬНОЙ РАБОТЫ".\r\n"АВАРИЙНЫЙ ОБМЕН ЗАВЕРШЕН".\r\n"ОБМЕН О БЕДСТВИИ ОКОНЧЕН".	"ОБМЕН О БЕДСТВИИ ОКОНЧЕН".
88	Вопрос 7	Как называется направление на географический северный полюс?	images/2020/10/01/2_b9v7.jpg	Магнитный север.\r\nИстинный север.\r\nСевер по компасу.\r\nПолюсный север.	Истинный север.
89	Вопрос 8	Как называется явление скопления микроскопических капелек воды в нижних слоях атмосферы?	images/2020/10/01/2_b9v8.jpg	Туман.\r\nМгла.\r\nМорось.\r\nДымка.	Туман.
90	Вопрос 9	Движение судов габаритной длиной менее 20 метров в акваториях речных портов, на искусственных каналах, в пределах границ населенных пунктов, рейдов, в районах стоянок судов со скоростью не более?	images/2020/10/01/2_b9v9.jpg	6 км/час.\r\n10 км/час.\r\n15 км/час.\r\n12 км/час.	15 км/час.
91	Вопрос 10	Какую длину имеет изображенное на иллюстрации парусное судно?	images/2020/10/01/2_b9v10.jpg	Более 7 м.\r\nДо 7 м.\r\nОт 7 м до 20 м.\r\n20 м и более.	20 м и более.
92	Вопрос 1	Что должен выполнить судоводитель для предотвращения непосредственно угрожающей опасности или ее возможных последствий?	images/2020/10/01/2_b10v1.jpg	Следовать безопасной скоростью.\r\nУменьшить скорость до минимальной.\r\nУвеличить скорость до максимальной.\r\nОстановиться.	Уменьшить скорость до минимальной.
93	Вопрос 2	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/2_b10v2.jpg	Ось судового хода.\r\nПоворот судового хода.\r\nОсобо опасное место у левой кромки судового хода.\r\nОсобо опасное место у правой кромки судового хода.	Особо опасное место у левой кромки судового хода.
94	Вопрос 3	В течение какого срока собственник маломерного судна обязан сообщить в орган государственной регистрации судна о любом изменении сведений, внесенных в реестр маломерных судов?	images/2020/10/01/2_b10v3.jpg	В течение недели.\r\nВ течение двух недель.\r\nВ течение месяца.\r\nВ течение трех недель.	В течение двух недель.
95	Вопрос 4	Что должны иметь суда, следующие на шлюзование?	images/2020/10/01/2_b10v4.jpg	Втянутые в клюзы и закрепленные якоря.\r\nПоднятый флаг Российской Федерации.\r\nПосторонние предметы на якорях.\r\nУтечки нефтепродуктов.	Втянутые в клюзы и закрепленные якоря.
96	Вопрос 5	Выберите правильное определение термина «пеленг».	images/2020/10/01/2_b10v5.jpg	Угол между направлением на север и направлением на объект.\r\nУгол между направлением на север и диаметральной плоскостью судна.\r\nУгол между диаметральной плоскостью судна и направлением на объект.\r\nУгол между курсом судна и направлением на объект.	Угол между направлением на север и направлением на объект.
97	Вопрос 6	В течение какого времени радиостанции, принявшие сигнал срочности, должны продолжать наблюдение за этой передачей?	images/2020/10/01/2_b10v6.jpg	Не менее 5-ти минут.\r\nНе менее 15-ти минут.\r\nДо окончания ходовой вахты.\r\nНе менее 3-х минут.	Не менее 3-х минут.
98	Вопрос 7	Какие действия необходимо предпринять судоводителю маломерного судна при выходе на судоходный участок реки из протоки?	images/2020/10/01/2_b10v7.jpg	Запустить вверх ракету, если судно не оборудовано звуковой сигнализацией.\r\nПодать звуковой сигнал из 5 коротких звуков.\r\nОстановить судно у правого берега и при помощи бинокля ознакомиться с обстановкой.\r\nУменьшить ход и быть готовым к маневрированию.	Уменьшить ход и быть готовым к маневрированию.
99	Вопрос 8	Как называется интенсивное (при забрызгивании) нарастание слоя льда на палубе, фальшборте, надстройках, рангоуте и палубных судовых устройствах?	images/2020/10/01/2_b10v8.jpg	Обледенение.\r\nЗамораживание.\r\nНаледь.\r\nОбмораживание.	Обледенение.
100	Вопрос 9	Максимально допустимая скорость движения судов при следовании по Полесскому и Черняховскому каналам?	images/2020/10/01/2_b10v9.jpg	10 км/час.\r\n12 км/час.\r\n15 км/час.\r\n6 км/час.	6 км/час.
101	Вопрос 10	Что изображено на рисунке?	images/2020/10/01/2_b10v10.jpg	Парусное судно длиной менее 7 м или гребное судно на ходу.\r\nПарусно-моторное судно, идущее под мотором или парусом и мотором, следует курсом от нас.\r\nПарусное судно длиной от 7 до 20 м, следует курсом на нас.\r\nПарусное судно длиной 20 м и более, следует курсом от нас.	Парусное судно длиной менее 7 м или гребное судно на ходу.
102	Вопрос 1	Отметьте правильный ответ на вопрос: «Что должен выполнить судоводитель для предотвращения непосредственно угрожающей опасности или ее возможных последствий»?	images/2020/10/01/2_b11v1.jpg	Принять все меры, которые диктуются практикой судовождения.\r\nПринять все меры, которые диктуются практикой судовождения или особыми обстоятельствами.\r\nПринять все меры, которые диктуются практикой судовождения или особыми обстоятельствами, даже если вынужден отступать от Правил плавания по ВВП РФ.\r\nПринять все меры, которые диктуются практикой судовождения или особыми обстоятельствами, не отступая от Правил плавания по ВВП РФ.	Принять все меры, которые диктуются практикой судовождения или особыми обстоятельствами, даже если вынужден отступать от Правил плавания по ВВП РФ.
103	Вопрос 2	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/2_b11v2.jpg	Левую кромку судового хода.\r\nПоворот судового хода и стоит на его левой кромке.\r\nПоворот судового хода и стоит на его правой кромке.\r\nПравую кромку судового хода.	Правую кромку судового хода.
104	Вопрос 3	Кем выносится постановление о лишении права управления маломерным судном?	images/2020/10/01/2_b11v3.jpg	Главным государственным инспектором по маломерным судам.\r\nСудьей.\r\nГосударственным инспектором по маломерным судам.\r\nПрокурором.	Судьей.
105	Вопрос 4	В каком документе, применительно к отдельным шлюзам, могут быть применены нормы, иные чем в Правилах пропуска судов через шлюзы внутренних водных путей?	images/2020/10/01/2_b11v4.jpg	Правила движения и стоянки судов в бассейнах внутренних водных путей.\r\nПравила движения и стоянки судов в Российской Федерации.\r\nИнструкция по шлюзованию.\r\nКодекс торгового судоходства.	Правила движения и стоянки судов в бассейнах внутренних водных путей.
106	Вопрос 5	Как называется угол между северным направлением меридиана и диаметральной плоскостью судна по направлению его движения?	images/2020/10/01/2_b11v5.jpg	Пеленг.\r\nКурсовой угол.\r\nКурс.\r\nМагнитный курс.	Курс.
211	Вопрос 10	Как называется водный поток, вливающийся в реку?	images/2020/10/01/1_b1v10.jpg	Приток\r\nРукав\r\nРучей\r\nПобочень	Приток
107	Вопрос 6	Что необходимо сделать судоводителю перед радиотелефонным вызовом?	images/2020/10/01/2_b11v6.jpg	Регулятор громкости радиостанции установить на максимальный уровень.\r\nОтрегулировать шумоподавитель приемника радиостанции.\r\nОтключить все электронные устройства вблизи радиостанции.\r\nПроверить, не занята ли вызываемая станция обменом.	Проверить, не занята ли вызываемая станция обменом.
108	Вопрос 7	При расхождении судно, идущее вверх, первым заблаговременно должно	images/2020/10/01/2_b11v7.jpg	Согласовать свои действия по радиотелефонной связи и подать отмашку с левого борта.\r\nПодать маневроуказующий звуковой сигнал и отмашку с левого борта.\r\nПодать отмашку с левого борта.\r\nПодать маневроуказующий звуковой сигнал и отмашку на расхождение с соответствующего борта.	Подать маневроуказующий звуковой сигнал и отмашку с левого борта.
109	Вопрос 8	Как называется ветер, дующий против течения реки?	images/2020/10/01/2_b11v8.jpg	Верховой.\r\nБриз.\r\nВстречный.\r\nНизовой.	Низовой.
110	Вопрос 9	Судно, следующее в населенный пункт Озерки по реке Преголя, должно	images/2020/10/01/2_b11v9.jpg	Остановиться у входа в Озерковский канал или в озере Пустое и пропустить суда, идущие на выход по Озерковскому каналу.\r\nПродолжить движение, не превышая установленную скорость.\r\nПродолжить движение, имея преимущество в проходе, соблюдая осторожность.\r\nПродолжить движение, придерживаясь правой стороны судового хода	Остановиться у входа в Озерковский канал или в озере Пустое и пропустить суда, идущие на выход по Озерковскому каналу.
111	Вопрос 10	Вы наблюдаете навигационные огни следующего курсом от нас судна	images/2020/10/01/2_b11v10.jpg	Занятого буксировкой.\r\nЗанятого буксировкой, шириной 5 м и менее.\r\nЗанятого буксировкой, шириной более 5 м.\r\nЗанятого буксировкой, при работе на переправе.	Занятого буксировкой.
112	Вопрос 1	Что должен выполнить судоводитель в случае неуверенности в оценке ситуации (неясность в действиях других судов, неподача или неправильное подтверждение сигналов, потеря ориентировки, отсутствие или неисправность знаков навигационного оборудования и т.п.)?	images/2020/10/01/2_b12v1.jpg	Уменьшить ход или прекратить движение до выяснения ситуации.\r\nПродолжать движение, не меняя курса и скорости.\r\nМаксимально быстро покинуть место развития ситуации.\r\nИзменить курс и двигаться к ближайшему берегу.	Уменьшить ход или прекратить движение до выяснения ситуации.
113	Вопрос 2	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/2_b12v2.jpg	Левую кромку судового хода.\r\nПравую кромку судового хода.\r\nПоворот судового хода и стоит на его правой кромке.\r\nПоворот судового хода и стоит на его левой кромке.	Поворот судового хода и стоит на его левой кромке.
114	Вопрос 3	Какое административное наказание предусматривается за нарушение правил маневрирования?	images/2020/10/01/2_b12v3.jpg	Административный штраф.\r\nЛишение прав управления маломерным судном.\r\nПредупреждение.\r\nОдно из перечисленных.	Одно из перечисленных.
115	Вопрос 4	Кто осуществляет руководство пропуском судов через шлюз?	images/2020/10/01/2_b12v4.jpg	Диспетчер шлюза.\r\nКапитан бассейна.\r\nДиректор шлюза.\r\nДежурный по шлюзу.	Диспетчер шлюза.
116	Вопрос 5	Выберите правильное определение термина «курсовой угол».	images/2020/10/01/2_b12v5.jpg	Угол между направлением на север и направлением на объект.\r\nУгол между направлением на север и диаметральной плоскостью судна.\r\nУгол между диаметральной плоскостью судна и направлением на объект.\r\nУгол между курсом судна и направлением на объект.	Угол между диаметральной плоскостью судна и направлением на объект.
117	Вопрос 6	Что необходимо предпринять судоводителю при осуществлении вызова в случае плохого прохождения связи или неразборчивости?	images/2020/10/01/2_b12v6.jpg	Повторить вызов 2-3 раза.\r\nОбратиться ко всем с просьбой прекратить передачу на выбранном канале.\r\nПовторить вызов более громко.\r\nПовторить вызов значительно медленнее.	Повторить вызов 2-3 раза.
118	Вопрос 7	Как называется неправильное течение, которое представляет собой слив воды, направленный под углом к судовому ходу, и возникающее из-за разности в уровнях воды по ширине реки?	images/2020/10/01/2_b12v7.jpg	Затяжное.\r\nСпорное.\r\nПрижимное.\r\nСвальное.	Свальное.
226	Вопрос 5	Как называется ветер, дующий против течения реки?	images/2020/10/01/1_b3v5.jpg	Верховой\r\nБриз\r\nВстречный\r\nНизовой	Низовой
119	Вопрос 8	Как называется прибор для наблюдения за изменениями атмосферного давления и графической записи показаний?	images/2020/10/01/2_b12v8.jpg	Барометр.\r\nБарограф.\r\nГидролокатор.\r\nАнемометр.	Барограф.
120	Вопрос 9	Обгон судов на внутренних водных путях, находящихся Калининградской области, запрещен?	images/2020/10/01/2_b12v9.jpg	На реках Преголя и Дейма от Гвардейского шоссейного моста до нижней границы городского пляжа.\r\nВо всех указанных случаях.\r\nНа каналах Приморский, Полесский, Черняховский и Озерковский.\r\nВ обоих направлениях, а также движение вниз в темное время суток, за исключением судов специального назначения, на реке Матросовка от истока до поселка Мостовое.	На каналах Приморский, Полесский, Черняховский и Озерковский.
121	Вопрос 10	Что изображено а рисунке?	images/2020/10/01/2_b12v10.jpg	Судно, занятое протаскиванием траловых сетей или другого орудия лова рыбы, идет курсом на нас.\r\nСамоходный дноуглубительный снаряд на ходу при заборе грунта, следует курсом на нас.\r\nСудно, занятое водолазными работами.\r\nСудно, занятое устранением девиации.	Судно, занятое протаскиванием траловых сетей или другого орудия лова рыбы, идет курсом на нас.
122	Вопрос 1	Что обязан выполнить судоводитель, находящийся поблизости от аварийного судна, если имеется опасность для находящихся на нем людей?	images/2020/10/01/2_b13v1.jpg	Оказать немедленную помощь.\r\nНасколько это совместимо с безопасностью его судна, оказать немедленную помощь.\r\nНе оказывать помощь.\r\nПривлечь внимание других судов.	Насколько это совместимо с безопасностью его судна, оказать немедленную помощь.
123	Вопрос 2	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/2_b13v2.jpg	Поворот судового хода.\r\nОсобо опасное место у левой кромки судового хода.\r\nОсобо опасное место у правой кромки судового хода.\r\nОсь судового хода.	Ось судового хода.
124	Вопрос 3	Какое административное наказание предусмотрено за управление маломерным судном, не несущим идентификационных номеров?	images/2020/10/01/2_b13v3.jpg	Лишение права управления.\r\nПредупреждение или штраф.\r\nПредупреждение или штраф, или лишение права управления.\r\nШтраф.	Штраф.
125	Вопрос 4	На какой канал должны быть переключены судовые УКВ радиостанции в границах шлюза?	images/2020/10/01/2_b13v4.jpg	На 70 канал.\r\nНа 16 канал.\r\nНа канал диспетчера шлюза.\r\nНа 5 канал.	На канал диспетчера шлюза.
126	Вопрос 5	Как называется угловая разница между направлением на истинный север и направлением на магнитный север?	images/2020/10/01/2_b13v5.jpg	Магнитное склонение.\r\nДевиация.\r\nУгловое склонение.\r\nДемаркация.	Магнитное склонение.
127	Вопрос 6	Через какое время может быть повторен вызов после безрезультатной попытки установления связи?	images/2020/10/01/2_b13v6.jpg	Через 1 мин.\r\nЧерез 3 мин.\r\nЧерез 5 мин.\r\nЧерез 2 мин.	Через 2 мин.
128	Вопрос 7	Как называется неправильное (беспорядочное) вращательное течение в реке, вызываемое либо столкновением струй двух водных потоков (спорными водами), либо наличием на дне реки крупных предметов?	images/2020/10/01/2_b13v7.jpg	Майдан.\r\nВзбросы.\r\nТолчея.\r\nСуводь.	Майдан.
129	Вопрос 8	Какую погоду следует ожидать при резком падении атмосферного давления и появлении перисто-кучевых облаков?	images/2020/10/01/2_b13v8.jpg	Изменение направления ветра.\r\nУсиления дождя.\r\nУхудшение погоды через 6- 10 часов.\r\nГрозу и шторм через 1-2 часа.	Грозу и шторм через 1-2 часа.
130	Вопрос 9	На участках внутренних водных путей, находящихся в Калининградской области, стоянка судов в границах судового хода осуществляется только?	images/2020/10/01/2_b13v9.jpg	В несколько корпусов.\r\nНосом к берегу.\r\nВ один корпус.\r\nКормой к берегу с отдачей якоря.	В один корпус.
131	Вопрос 10	На рисунке изображено	images/2020/10/01/2_b13v10.jpg	Одиночное самоходное судно с опасным грузом, длиной 50 м и более.\r\nОдиночное самоходное судно, ограниченное в возможности маневрировать, длиной 50 м и более.\r\nОдиночное самоходное судно с опасным грузом, длиной менее 50 м.\r\nОдиночное самоходное судно, лишенное возможности управляться.	Одиночное самоходное судно с опасным грузом, длиной 50 м и более.
144	Вопрос 3	Какое административное наказание предусмотрено за передачу управления маломерным судном лицу, не имеющему на это права?	images/2020/10/01/2_b15v3.jpg	Лишение права управления.\r\nПредупреждение.\r\nШтраф.\r\nПредупреждение или штраф.	Штраф.
132	Вопрос 1	Что необходимо выполнить судоводителю маломерного судна при встрече немаломерного судна на судовом ходу?	images/2020/10/01/2_b14v1.jpg	Заблаговременно уйти с его пути без обмена звуковыми и зрительными сигналами.\r\nУступить дорогу после обмена звуковыми сигналами.\r\nУступить дорогу после обмена зрительными сигналами.\r\nПотребовать, чтобы ему уступили дорогу.	Заблаговременно уйти с его пути без обмена звуковыми и зрительными сигналами.
133	Вопрос 2	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/2_b14v2.jpg	Ось судового хода.\r\nПоворот судового хода.\r\nОсобо опасное место у левой кромки судового хода.\r\nОсобо опасное место у правой кромки судового хода.	Особо опасное место у правой кромки судового хода.
134	Вопрос 3	Какое административное наказание предусмотрено за преднамеренную остановку маломерного судна в запрещенном месте?	images/2020/10/01/2_b14v3.jpg	Лишение права управления.\r\nПредупреждение.\r\nШтраф.\r\nПредупреждение или штраф, или лишение права управления.	Предупреждение или штраф, или лишение права управления.
135	Вопрос 4	Что должен предпринять судоводитель маломерного судна, находясь в границах шлюза, в случае, если из- за маневренных характеристик судна не удается следовать полученным указаниям диспетчера шлюза?	images/2020/10/01/2_b14v4.jpg	Об этом обстоятельстве необходимо незамедлительно сообщить диспетчеру шлюза, не предпринимать никаких действий до принятия решения, согласованного с диспетчером шлюза.\r\nНе предпринимать никаких действий.\r\nОб этом обстоятельстве необходимо незамедлительно сообщить диспетчеру шлюза, и все-таки попытаться выполнить указание диспетчера шлюза.\r\nПопросить помощи у других судов выполнить необходимый маневр.	Об этом обстоятельстве необходимо незамедлительно сообщить диспетчеру шлюза, не предпринимать никаких действий до принятия решения, согласованного с диспетчером шлюза.
136	Вопрос 5	Как называется отклонение стрелки компаса от магнитного севера под влиянием внешних магнитных полей?	images/2020/10/01/2_b14v5.jpg	Магнитное склонение.\r\nДевиация.\r\nУгловое склонение.\r\nДемаркация.	Девиация.
137	Вопрос 6	Что следует предпринять судоводителю, если был принят вызов, но нет уверенности, что этот вызов предназначен радиостанции его судна?	images/2020/10/01/2_b14v6.jpg	Ответить на вызов сразу же и переспросить название вызывающего судна.\r\nОбратиться ко всем судам, с просьбой уточнить название вызывающего судна.\r\nЗапросить береговую радиостанцию с просьбой уточнить название вызывающего судна.\r\nНе отвечать до тех, пока вызов не будет повторен и понят.	Не отвечать до тех, пока вызов не будет повторен и понят.
138	Вопрос 7	Как называется вращательное движение воды за подводным или надводным выступом?	images/2020/10/01/2_b14v7.jpg	Майдан.\r\nВодоворот.\r\nСулои.\r\nСуводь.	Суводь.
139	Вопрос 8	Укажите единицу измерения силы ветра.	images/2020/10/01/2_b14v8.jpg	М/сек.\r\nКм/час.\r\nБалл.\r\nГрадус.	Балл.
140	Вопрос 9	На реке Преголя от Нижней Развилки (20 км реки Преголя) до Верхней Развилки (32,6 км реки Преголя) установлен следующий порядок движения:	images/2020/10/01/2_b14v9.jpg	По реке Старая Преголя - движение только вверх, по реке Преголя - движение только вниз.\r\nПо реке Старая Преголя - движение только вниз, по реке Преголя - движение только вверх.\r\nПо обеим руслам движение двустороннее.\r\nОграничения не установлены.	По реке Старая Преголя - движение только вверх, по реке Преголя - движение только вниз.
141	Вопрос 10	Укажите тип судна	images/2020/10/01/2_b14v10.jpg	Дноуглубительный снаряд, работает на правой кромке судового хода.\r\nРефулерный снаряд, работает на левой кромке судового хода.\r\nДноуглубительный снаряд, работает на левой кромке судового хода.\r\nРефулерный снаряд, работает на правой кромке судового хода.	Дноуглубительный снаряд, работает на левой кромке судового хода.
142	Вопрос 1	Отметьте правильное определение понятия «полоса движения»:	images/2020/10/01/2_b15v1.jpg	Судовой ход.\r\nЧасть судового хода между его осью и правой или левой кромкой.\r\nОсь судового хода.\r\nПравая сторона судового хода.	Часть судового хода между его осью и правой или левой кромкой.
143	Вопрос 2	Что обозначает изображенный на иллюстрации знак?	images/2020/10/01/2_b15v2.jpg	Судно на ходу.\r\nСудно, осуществляющее перевозку радиоактивных грузов.\r\nСудно, стоящее на якоре.\r\nСудно, идущее под парусом и одновременно использующее силовую установку.	Судно, стоящее на якоре.
145	Вопрос 4	Что запрещается делать в границах шлюза?	images/2020/10/01/2_b15v4.jpg	Выход на территорию шлюза и посадка с территории шлюза пассажиров и членов экипажей судов без разрешения диспетчера шлюза.\r\nРабота на судах радиовещательных установок.\r\nНанесение надписей и иных меток на поверхности камер и голов шлюза, на причальные палы, причальные стенки и другие конструкции шлюза.\r\nВсе перечисленное.	Все перечисленное.
146	Вопрос 5	Как называется направление на географический северный полюс?	images/2020/10/01/2_b15v5.jpg	Магнитный север.\r\nИстинный север.\r\nСевер по компасу.\r\nПолюсный север.	Истинный север.
147	Вопрос 6	Какой служебной фразой при ведении радиотелефонного обмена оценивается качество радиосвязи?	images/2020/10/01/2_b15v6.jpg	Сигнал слабый (сильный).\r\nСлышимость 1 (2,3,4,5) балл.\r\nСлышимость разборчивая (неразборчивая).\r\nСлышу хорошо (удовлетворительно, плохо).	Слышу хорошо (удовлетворительно, плохо).
148	Вопрос 7	Какие действия необходимо предпринять судоводителю маломерного судна при выходе на судоходный участок реки из протоки?	images/2020/10/01/2_b15v7.jpg	Уменьшить ход и быть готовым к маневрированию.\r\nЗапустить вверх ракету, если судно не оборудовано звуковой сигнализацией.\r\nПодать звуковой сигнал из 5 коротких звуков.\r\nОстановить судно у правого берега и при помощи бинокля ознакомиться с обстановкой.	Уменьшить ход и быть готовым к маневрированию.
149	Вопрос 8	Что означает выражение «Шторм 9 баллов»?	images/2020/10/01/2_b15v8.jpg	Волна высотой 9 метров.\r\nВетер скоростью 9 м/сек.\r\nВетер скоростью 9 км/час.\r\nВетер силой 9 баллов.	Ветер силой 9 баллов.
150	Вопрос 9	Судно, выходящее из Озерковского канала?	images/2020/10/01/2_b15v9.jpg	Пропускает суда, следующие по реке Преголя.\r\nИмеет преимущества для выхода.\r\nПропускает суда, идущие вниз по течению.\r\nПропускает суда, идущие вверх по течению.	Пропускает суда, следующие по реке Преголя.
151	Вопрос 10	На рисунке изображено одиночное самоходное судно с опасным грузом	images/2020/10/01/2_b15v10.jpg	Длиной 50 м и более, следует курсом на нас.\r\nСледует курсом на нас.\r\nДлиной до 50 м, следует курсом на нас.\r\nШириной более 5 м, следует курсом на нас.	Длиной 50 м и более, следует курсом на нас.
152	Вопрос 1	Какому из перечисленных судов НЕ должно уступать дорогу парусное судно на ходу?	images/2020/10/01/2_b16v1.jpg	Одиночное самоходное судно, толкающее или буксирующее состав (кроме плота).\r\nСудно, занятое ловом рыбы.\r\nСудно, буксирующее плот.\r\nСудно, лишенное возможности управляться, занятое подводными или водолазными работами.	Одиночное самоходное судно, толкающее или буксирующее состав (кроме плота).
153	Вопрос 2	Что обозначает изображенный на иллюстрации знак?	images/2020/10/01/2_b16v2.jpg	Судно, осуществляющее перевозку опасных грузов.\r\nСудно, стоящее на мели.\r\nСудно, стоящее на якоре.\r\nСудно, идущее под парусом и одновременно использующее силовую установку.	Судно, осуществляющее перевозку опасных грузов.
154	Вопрос 3	Какое административное наказание предусмотрено за управление маломерным судном с нарушением ограничений по району плавания?	images/2020/10/01/2_b16v3.jpg	Предупреждение.\r\nПредупреждение или штраф, или лишение права управления.\r\nШтраф или лишение права управления.\r\nШтраф.	Штраф.
155	Вопрос 4	Что должен предпринять судоводитель маломерного судна в случае утери в границах шлюза крупногабаритных судовых принадлежностей?	images/2020/10/01/2_b16v4.jpg	Обязан незамедлительно сообщить об этом диспетчеру шлюза.\r\nПопытаться незамедлительно принять меры по подъему этого предмета.\r\nОбязан сделать запрос о помощи в подъеме этого предмета у другого судна.\r\nНичего предпринимать не должен.	Обязан незамедлительно сообщить об этом диспетчеру шлюза.
156	Вопрос 5	Как называется местоположение судна, полученное путем обработки результатов визуальных наблюдений различных ориентиров, положение которых известно?	images/2020/10/01/2_b16v5.jpg	Обсервованное.\r\nСчислимое.\r\nИстинное.\r\nРасчетное.	Обсервованное.
157	Вопрос 6	На каком из указанных УКВ каналов ведется радиообмен при бедствии?	images/2020/10/01/2_b16v6.jpg	На 2 канале.\r\nНа 3 канале.\r\nНа 4 канале.\r\nНа 5 канале.	На 5 канале.
158	Вопрос 7	Как называется водный поток, вливающийся в реку?	images/2020/10/01/2_b16v7.jpg	Побочень.\r\nРукав.\r\nРучей.\r\nПриток.	Приток.
227	Вопрос 6	Как называется ветер, при котором воздух перемещается с запада на восток?	images/2020/10/01/1_b3v6.jpg	Западный\r\nВосточный\r\nСеверный\r\nЮжный	Западный
159	Вопрос 8	Какое название носят приливы, имеющие две полные и две малые воды в течение лунных суток?	images/2020/10/01/2_b16v8.jpg	Полусуточные.\r\nСуточные.\r\nСизигийные.\r\nКвадратурные.	Полусуточные.
160	Вопрос 9	Швартовка и стоянка судов у набережных реки Преголя в г. Калининграде, не оборудованных причальными сооружениями?	images/2020/10/01/2_b16v9.jpg	Разрешается без ограничений.\r\nРазрешается с соблюдением осторожности.\r\nПо разрешению БОГУ на ВВП.\r\nЗапрещается.	Запрещается.
161	Вопрос 10	На рисунке изображено следующее курсом на нас самоходное судно, занятое буксировкой	images/2020/10/01/2_b16v10.jpg	Плотового состава на тросе.\r\nСухогрузного состава на тросе.\r\nСостава с опасным грузом на тросе.\r\nСмешанного состава на тросе.	Плотового состава на тросе.
162	Вопрос 1	Отметьте правильное определение понятия «маломерное судно»	images/2020/10/01/2_b17v1.jpg	Судно, длина которого не должна превышать 18 метров и общее количество людей на котором не должно превышать 10.\r\nСудно, длина которого не должна превышать 20 метров и общее количество людей на котором не должно превышать 12.\r\nСудно, длина которого не должна превышать 24 метра и общее количество людей на котором не должно превышать 12.\r\nСудно, длина которого не должна превышать 24 метра и общее количество людей на котором не должно превышать 14.	Судно, длина которого не должна превышать 20 метров и общее количество людей на котором не должно превышать 12.
163	Вопрос 2	Что обозначают изображенные на иллюстрации знаки?	images/2020/10/01/2_b17v2.jpg	Лоцманское судно при исполнении своих обязанностей.\r\nСудно, занятое буксировкой с длиной буксира более 200 м.\r\nСудно, ограниченное в возможности маневрировать, на ходу.\r\nСудно, лишенное возможности управляться.	Судно, лишенное возможности управляться.
164	Вопрос 3	Какой срок отводится Кодексом Российской Федерации об административных правонарушениях для уплаты административного штрафа?	images/2020/10/01/2_b17v3.jpg	10 суток.\r\n20 суток.\r\n40 суток.\r\n60 суток.	60 суток.
165	Вопрос 4	Что должны иметь суда, следующие на шлюзование?	images/2020/10/01/2_b17v4.jpg	Втянутые в клюзы и закрепленные якоря.\r\nПоднятый флаг Российской Федерации.\r\nПосторонние предметы на якорях.\r\nУтечки нефтепродуктов.	Втянутые в клюзы и закрепленные якоря.
166	Вопрос 5	Пеленг на какой из объектов необходимо взять в последнюю очередь при определении места судна?	images/2020/10/01/2_b17v5.jpg	На объект, находящийся по носу.\r\nНа объект, находящийся по корме.\r\nНа объект, находящийся на траверзе.\r\nНа любой из перечисленных.	На объект, находящийся на траверзе.
167	Вопрос 6	Выберите правильный формат вызова при бедствии, передаваемого по радиотелефону.	images/2020/10/01/2_b17v6.jpg	Слово "ТРЕВОГА", передаваемое три раза; слово "ПЕРЕДАЕТ", один раз; название судна, передаваемое три раза.\r\nСлово "ВСЕМ", передаваемое три раза; слово "Я", передаваемое один раз; название судна, передаваемое три раза.\r\nСлово "БЕДСТВИЕ", передаваемое три раза; слово "ГОВОРИТ", передаваемое один раз; название судна, передаваемое три раза.\r\nСлово "АВАРИЯ", передаваемое три раза; слово "ГОВОРИТ", передаваемое один раз; название судна, передаваемое три раза.	Слово "БЕДСТВИЕ", передаваемое три раза; слово "ГОВОРИТ", передаваемое один раз; название судна, передаваемое три раза.
168	Вопрос 7	Как называется условная линия, соединяющая на водной поверхности реки точки с наибольшей глубиной русла и максимальными скоростями течения?	images/2020/10/01/2_b17v7.jpg	Перевал.\r\nХод.\r\nОсь.\r\nСтрежень.	Стрежень.
169	Вопрос 8	Какое название носят приливы, имеющие одну полную и одну малую воду в течение суток?	images/2020/10/01/2_b17v8.jpg	Полусуточные.\r\nСуточные.\r\nСизигийные.\r\nКвадратурные.	Суточные.
170	Вопрос 9	Стоянка судов на якоре в Озерковском, Приморском, Полесском, Черняховском каналах и в акватории карьера Лесное (5,9 км реки Шешупе)?	images/2020/10/01/2_b17v9.jpg	Запрещается.\r\nРазрешается за пределами судового хода.\r\nРазрешается только моторным судам.\r\nРазрешается судам, не подлежащим гос. регистрации в ГИМС.	Запрещается.
183	Вопрос 2	Что обозначает изображенный на иллюстрации знак?	images/2020/10/01/2_b19v2.jpg	Судно, стоящее на мели.\r\nСудно, стоящее на якоре.\r\nСудно, осуществляющее перевозку радиоактивных грузов.\r\nСудно, идущее под парусом и одновременно использующее силовую установку.	Судно, идущее под парусом и одновременно использующее силовую установку.
171	Вопрос 10	На рисунке изображена	images/2020/10/01/2_b17v10.jpg	Буксировка плотового состава двумя самоходными судами, соединенными в кильватер.\r\nБуксировка сухогрузного состава двумя самоходными судами, соединенными в кильватер.\r\nБуксировка состава из двух самоходных судов с опасным грузом, соединенными в кильватер.\r\nБуксировка самоходного судна другим самоходным судном.	Буксировка сухогрузного состава двумя самоходными судами, соединенными в кильватер.
172	Вопрос 1	Отметьте правильное определения понятия «судоходство маломерных судов»	images/2020/10/01/2_b18v1.jpg	Движение маломерных судов по водной акватории.\r\nДвижение маломерных судов по водной акватории, на которой разрешено использование маломерного судна.\r\nДеятельность, связанная с использованием маломерных судов исключительно для производственных целей.\r\nДеятельность, связанная с использованием маломерных судов для отдыха, туризма, а также культурных, спортивных, производственных, развлекательных и иных целей.	Деятельность, связанная с использованием маломерных судов для отдыха, туризма, а также культурных, спортивных, производственных, развлекательных и иных целей.
173	Вопрос 2	Что обозначает плавучий навигационный знак на ВВП, имеющий изображенную на иллюстрации раскраску?	images/2020/10/01/2_b18v2.jpg	Обозначает левую кромку судового хода.\r\nОбозначает правую кромку судового хода.\r\nОбозначает поворот судового хода и стоит на его левой кромке.\r\nОбозначает поворот судового хода и стоит на его правой кромке.	Обозначает поворот судового хода и стоит на его правой кромке.
174	Вопрос 3	Какое административное наказание предусмотрено за управление маломерным судном, не прошедшим освидетельствования?	images/2020/10/01/2_b18v3.jpg	Лишение права управления.\r\nПредупреждение.\r\nШтраф.\r\nПредупреждение или штраф, или лишение права управления.	Штраф.
175	Вопрос 4	В каких из перечисленных случаев маломерным судам разрешен обгон судов в подходных каналах и камере шлюза?	images/2020/10/01/2_b18v4.jpg	При шлюзовании вниз.\r\nПри шлюзовании вверх.\r\nЕсли при входе подходного канала горит зеленый огонь светофора.\r\nТаких случаев не предусмотрено.	Таких случаев не предусмотрено.
176	Вопрос 5	Как называется часть реки, которая образовалась при разделении русла островом?	images/2020/10/01/2_b18v5.jpg	Рукав.\r\nПойма.\r\nПротока.\r\nСтарица.	Рукав.
177	Вопрос 6	Какая команда применяется для прекращения передач, мешающих аварийному радиотелефонному обмену?	images/2020/10/01/2_b18v6.jpg	"ВСЕМ СУДАМ СОБЛЮДАТЬ МОЛЧАНИЕ".\r\n"ВНИМАНИЕ! ВЕДЕТСЯ СПАСАТЕЛЬНАЯ ОПЕРАЦИЯ".\r\n"КАНАЛ ЗАНЯТ АВАРИЙНЫМ ОБМЕНОМ".\r\n"ПРЕКРАТИТЕ ПЕРЕДАЧУ", "БЕДСТВИЕ".	"ПРЕКРАТИТЕ ПЕРЕДАЧУ", "БЕДСТВИЕ".
178	Вопрос 7	Выберите правильное определение термина «пеленг».	images/2020/10/01/2_b18v7.jpg	Угол между направлением на север и направлением на объект.\r\nУгол между направлением на север и диаметральной плоскостью судна.\r\nУгол между диаметральной плоскостью судна и направлением на объект.\r\nУгол между курсом судна и направлением на объект.	Угол между направлением на север и направлением на объект.
179	Вопрос 8	Какое название носят приливы, которые наблюдаются в дни новолуния и полнолуния?	images/2020/10/01/2_b18v8.jpg	Полусуточные.\r\nСуточные.\r\nСизигийные.\r\nКвадратурные.	Сизигийные.
180	Вопрос 9	Обгон в обоих направлениях, а также движение вниз в темное время суток, за исключением судов специального назначения запрещается?	images/2020/10/01/2_b18v9.jpg	На реке Матросовка на участке от истока до поселка Мостовое.\r\nНа реке Шешупе на участке излучин "Восьмерки".\r\nНа реке Матросовка от истока до поселка Мостовое.\r\nВо всех указанных случаях.	Во всех указанных случаях.
181	Вопрос 10	На рисунке вы наблюдаете навигационные огни следующего курсом на нас	images/2020/10/01/2_b18v10.jpg	Толкаемого сухогрузного состава с несамоходными судами, соединенными в кильватер.\r\nТолкаемого сухогрузного состава с одним несамоходным судном.\r\nТолкаемого сухогрузного состава.\r\nТолкаемого сухогрузного состава с толкачом шириной 5 м и менее.	Толкаемого сухогрузного состава с одним несамоходным судном.
182	Вопрос 1	Отметьте правильное определение состояния защищённости маломерных судов, находящихся на водных объектах, от аварий и происшествий.	images/2020/10/01/2_b19v1.jpg	Безопасность судоходства маломерных судов.\r\nБезопасность маломерных судов.\r\nБезопасность на водных объектах.\r\nБезаварийное судоходство.	Безопасность судоходства маломерных судов.
184	Вопрос 3	Какое административное наказание предусмотрено за преднамеренную остановку или стоянку маломерного судна под судоходным пролетом моста?	images/2020/10/01/2_b19v3.jpg	Наказание не предусмотрено.\r\nПредупреждение или штраф.\r\nШтраф.\r\nПредупреждение или штраф, или лишение права управления.	Предупреждение или штраф, или лишение права управления.
185	Вопрос 4	В каком порядке осуществляется вход маломерных судов в шлюз?	images/2020/10/01/2_b19v4.jpg	В произвольном порядке.\r\nОдновременно с немаломерными судами.\r\nПеред немаломерными судами.\r\nПосле немаломерных судов.	После немаломерных судов.
186	Вопрос 5	Как называется неправильное течение, которое представляет собой слив воды, направленный под углом к судовому ходу, и возникающее из-за разности в уровнях воды по ширине реки?	images/2020/10/01/2_b19v5.jpg	Свальное.\r\nЗатяжное.\r\nСпорное.\r\nПрижимное.	Свальное.
187	Вопрос 6	Что необходимо предпринять судоводителю при осуществлении вызова в случае плохого прохождения связи или неразборчивости?	images/2020/10/01/2_b19v6.jpg	Обратиться ко всем с просьбой прекратить передачу на выбранном канале.\r\nПовторить вызов более громко.\r\nПовторить вызов 2-3 раза.\r\nПовторить вызов значительно медленнее.	Повторить вызов 2-3 раза.
188	Вопрос 7	Для чего из перечисленного ниже используется магнитный компас?	images/2020/10/01/2_b19v7.jpg	Измерение скорости и расстояния до пункта назначения.\r\nСнятие пеленга на объект.\r\nОпределение расстояния от объекта.\r\nДля всего вышеперечисленного.	Снятие пеленга на объект.
189	Вопрос 8	Какое название носят приливы, которые наблюдаются в дни первой и последней четвертей луны?	images/2020/10/01/2_b19v8.jpg	Полусуточные.\r\nСуточные.\r\nСизигийные.\r\nКвадратурные.	Квадратурные.
190	Вопрос 9	Плавание на гидроциклах по реке Преголя от двухъярусного железнодорожного моста до моста, расположенного на 16,4 км, в Калининградском морском канале, Морском канале и обводненном карьере в п. Березовка?	images/2020/10/01/2_b19v9.jpg	Разрешается за пределами судового хода.\r\nРазрешается.\r\nРазрешается судам, не подлежащим гос. регистрации в ГИМС.\r\nЗапрещается.	Запрещается.
191	Вопрос 10	На рисунке изображен следующий вправо от нас буксирный состав	images/2020/10/01/2_b19v10.jpg	С несамоходными судами, длиной более 50 м.\r\nС двумя несамоходными судами.\r\nС несамоходными судами, длиной менее 50 м.\r\nС одним несамоходным судном.	С несамоходными судами, длиной более 50 м.
192	Вопрос 1	В каком случае необходимо оформление судовой роли на маломерном судне, не укомплектованном штатным экипажем?	images/2020/10/01/2_b20v1.jpg	Перед освидетельствованием судна.\r\nПеред каждым выходом с базы стоянки.\r\nПеред выходом в заграничное плавание.\r\nВо всех перечисленных случаях.	Перед выходом в заграничное плавание.
193	Вопрос 2	На каком судне выставляется изображенный на иллюстрации сигнал?	images/2020/10/01/2_b20v2.jpg	Судно на мели.\r\nСудно терпит бедствие и нуждается в помощи.\r\nСудно, занятое дноуглубительными работами.\r\nСудно, лишенное возможности управляться, на якоре.	Судно терпит бедствие и нуждается в помощи.
194	Вопрос 3	Какое административное наказание предусматривается за несоблюдение лицом, управляющим маломерным судном, требований навигационных знаков?	images/2020/10/01/2_b20v3.jpg	Административный штраф.\r\nЛишение права управления маломерным судном.\r\nПредупреждение.\r\nОдно из вышеперечисленных.	Одно из вышеперечисленных.
195	Вопрос 4	На каком расстоянии от границ шлюза судоводитель должен запросить по радиотелефонной связи у диспетчера шлюза уточненные данные о порядке судопропуска и доложить о готовности к шлюзованию?	images/2020/10/01/2_b20v4.jpg	Не менее чем за 1 км.\r\nНе менее чем за 3 км.\r\nНе менее чем за 100 м.\r\nСразу по прибытии к границам шлюза.	Не менее чем за 1 км.
196	Вопрос 5	Как называется движение двух судов, двигающихся навстречу друг другу?	images/2020/10/01/2_b20v5.jpg	Контрплавание.\r\nОсевое плавание.\r\nКурсовое плавание.\r\nВстречное плавание.	Встречное плавание.
209	Вопрос 8	Какую погоду следует ожидать при резком падении атмосферного давления и появлении перисто-кучевых облаков?	images/2020/10/01/1_b1v8.jpg	Изменение направления ветра\r\nГрозу и шторм через 1-2 часа\r\nУхудшение погоды через 6-10 часов\r\nУсиления дождя	Грозу и шторм через 1-2 часа
210	Вопрос 9	Как называется место начала реки?	images/2020/10/01/1_b1v9.jpg	Воложка\r\nИсток\r\nСтрежень\r\nПротока	Исток
197	Вопрос 6	Что следует предпринять судоводителю, если был принят вызов, но нет уверенности, что этот вызов предназначен радиостанции его судна?	images/2020/10/01/2_b20v6.jpg	Не отвечать до тех, пока вызов не будет повторен и понят.\r\nОтветить на вызов сразу же и переспросить название вызывающего судна.\r\nОбратиться ко всем судам, с просьбой уточнить название вызывающего судна.\r\nЗапросить береговую радиостанцию с просьбой уточнить название вызывающего судна.	Не отвечать до тех, пока вызов не будет повторен и понят.
198	Вопрос 7	Как часто необходимо сверять показания часов с сигналами точного времени?	images/2020/10/01/2_b20v7.jpg	Один раз в сутки.\r\nОдин раз в течение ходовой вахты.\r\nПо мере необходимости с учетом точности хода часов.\r\nНе реже двух раз в сутки.	Не реже двух раз в сутки.
199	Вопрос 8	Где будет находиться область высокого давления по отношению к человеку, стоящему спиной к ветру в северном полушарии?	images/2020/10/01/2_b20v8.jpg	Впереди.\r\nСправа.\r\nСлева.\r\nСо стороны спины.	Справа.
200	Вопрос 9	Плавание на маломерных моторных судах на озерах Голубых (дальнем и ближнем), Шенфлиз, Пелавское, Карповское, Лесное, пруду Мельничном?	images/2020/10/01/2_b20v9.jpg	Разрешается за пределами судового хода.\r\nЗапрещается.\r\nРазрешается.\r\nРазрешается судам, не подлежащим гос. регистрации в ГИМС.	Запрещается.
201	Вопрос 10	Вы наблюдаете навигационные огни	images/2020/10/01/2_b20v10.jpg	Одиночного самоходного судна (шириной более 5 м) лишенного возможности управляться, и имеет ход относительно воды, следует курсом от нас.\r\nОдиночного самоходного судна, лишенного возможности управляться, имеет ход относительно воды, следует курсом от нас.\r\nСудна (состава), лишенного возможности управляться, не имеет хода относительно воды.\r\nБуксирного состава, лишенного возможности управляться, имеет ход относительно воды, следует курсом от нас.	Одиночного самоходного судна (шириной более 5 м) лишенного возможности управляться, и имеет ход относительно воды, следует курсом от нас.
202	Вопрос 1	В присутствии какого лица осуществляется доступ судоводителя (судовладельца) к маломерному судну, задержанному и находящемуся на специализированной стоянке?	images/2020/10/01/1_b1v1.jpg	Лица, ответственного за хранение судна\r\nСотрудники полиции\r\nСотрудники прокуратуры\r\nГосударственного инспектора по маломерным судам	Лица, ответственного за хранение судна
203	Вопрос 2	На какие органы (организации) Водным кодексом РФ возложены обязанности об информировании жителей в случае введения запрета (ограничения) на использование маломерных судов на водных объектах общего пользования?	images/2020/10/01/1_b1v2.jpg	На ВОСВОД\r\nНа инспекторские подразделения ГИМС\r\nНа органы местного самоуправления\r\nНа территориальные органы МЧС России	На органы местного самоуправления
204	Вопрос 3	Что должен выполнить судоводитель в случае неуверенности в оценке ситуации (неясность в действиях других судов, неподача или неправильное подтверждение сигналов, и т.п.)?	images/2020/10/01/1_b1v3.jpg	Максимально быстро покинуть место развития ситуации\r\nПродолжать движение, не меняя курса и скорости\r\nУменьшить ход или прекратить движение до выяснения ситуации\r\nИзменить курс и двигаться к ближайшему берегу	Уменьшить ход или прекратить движение до выяснения ситуации
205	Вопрос 4	Как называется наивысшая точка волнового профиля?	images/2020/10/01/1_b1v4.jpg	Взброс\r\nГребень\r\nВысота\r\nПодошва	Гребень
206	Вопрос 5	Укажите единицу измерения силы ветра.	images/2020/10/01/1_b1v5.jpg	м/сек\r\nкм/час\r\nБалл\r\nГрадус	Балл
207	Вопрос 6	Отметьте правильное определение понятия «маломерное судно»	images/2020/10/01/1_b1v6.jpg	Судно, длина которого не должна превышать 18 метров и общее количество людей, на котором не должно превышать 10\r\nСудно, длина которого не должна превышать 20 метров и общее количество людей, на котором не должно превышать 12\r\nСудно, длина которого не должна превышать 24 метра и общее количество людей, на котором не должно превышать 12\r\nСудно, длина которого не должна превышать 24 метра и общее количество людей, на котором не должно превышать 14	Судно, длина которого не должна превышать 20 метров и общее количество людей, на котором не должно превышать 12
208	Вопрос 7	Как называется явление скопления микроскопических капелек воды в нижних слоях атмосферы?	images/2020/10/01/1_b1v7.jpg	Мгла\r\nМорось\r\nДымка\r\nТуман	Туман
212	Вопрос 1	Что означает сигнал - горизонтальное движение флагом - отмашкой, подаваемый с патрульного судна ГИМС?	images/2020/10/01/1_b2v1.jpg	"Подойдите к моему борту"\r\n"Прошу остановить судно"\r\n"Проходите по борту со стороны отмашки"\r\n"Прошу лечь на обратный курс"	"Прошу остановить судно"
213	Вопрос 2	В каком из перечисленных случаев государственный инспектор по маломерным судам имеет право использовать суда, принадлежащие гражданам?	images/2020/10/01/1_b2v2.jpg	Для следования к месту работы\r\nДля транспортировки судна нарушителя\r\nДля доставки нарушителей на медицинское обследование\r\nДля доставки в лечебные учреждения пострадавших людей	Для доставки в лечебные учреждения пострадавших людей
214	Вопрос 3	Через сколько дней заявитель, показавший неудовлетворительный результат при проверке теоретических знаний при аттестации на право управления маломерным судном, может быть повторно допущен к проверке теоретических знаний?	images/2020/10/01/1_b2v3.jpg	Через 3 дня\r\nЧерез 5 дней\r\nЧерез 7 дней\r\nТакой срок не установлен	Через 7 дней
215	Вопрос 4	Как называется маневр, связанный с прохождением одного судна относительно другого при встречном плавании?	images/2020/10/01/1_b2v4.jpg	Уклонение\r\nПропуск\r\nРасхождение\r\nОтворот	Расхождение
216	Вопрос 5	Как называется вращательное движение воды в реке, возникающее, как правило, за выступами берегов, мысами, выпуклыми берегами, мостовыми опорами, дамбами?	images/2020/10/01/1_b2v5.jpg	Суводь\r\nВодоворот\r\nБурун\r\nМайдан	Суводь
217	Вопрос 6	Как называется одиночный камень больших размеров в русле реки?	images/2020/10/01/1_b2v6.jpg	Шалыга\r\nОдинец\r\nПерекат\r\nОсередок	Одинец
218	Вопрос 7	Как называется условная линия, соединяющая на водной поверхности реки точки с наибольшей глубиной русла и максимальными скоростями течения?	images/2020/10/01/1_b2v7.jpg	Перевал\r\nСтрежень\r\nОсь\r\nХод	Стрежень
219	Вопрос 8	Что измеряет барометр-анероид?	images/2020/10/01/1_b2v8.jpg	Температуру воды\r\nСилу ветра\r\nВлажность воздуха\r\nАтмосферное давление	Атмосферное давление
220	Вопрос 9	Как называется интенсивное (при забрызгивании) нарастание слоя льда на палубе, фальшборте, надстройках, рангоуте и палубных судовых устройствах?	images/2020/10/01/1_b2v9.jpg	Замораживание\r\nНаледь\r\nОбледенение\r\nОбмораживание	Обледенение
221	Вопрос 10	На какой срок задерживается маломерное судно при совершении административного правонарушения?	images/2020/10/01/1_b2v10.jpg	На срок до рассмотрения дела об административном правонарушении\r\nНа срок до составления протокола об административном правонарушении\r\nНа срок до вступления постановления по делу об административном. правонарушении в законную силу\r\nНа срок до устранения причины задержания	На срок до устранения причины задержания
222	Вопрос 1	При какой мощности подвесного лодочного мотора (двигателя) маломерное судно массой более 200 кг подлежит государственной регистрации?	images/2020/10/01/1_b3v1.jpg	Более 3,68 кВт\r\nБолее 5 кВт\r\nБолее 8 кВт\r\nБолее 10 кВт	Более 8 кВт
223	Вопрос 2	Какой документ, выдаваемый собственнику маломерного судна, подтверждает право плавания под Государственным флагом Российской Федерации?	images/2020/10/01/1_b3v2.jpg	Удостоверение на право управления маломерными судами\r\nСудовой билет\r\nАкт технического освидетельствования\r\nТехнический талон	Судовой билет
224	Вопрос 3	Каким нормативным документом регулируется безопасность судоходства маломерных судов на внутренних водах, не включенных в Перечень внутренних водных путей Российской Федерации?	images/2020/10/01/1_b3v3.jpg	Правилами плавания по внутренним водным путям Российской Федерации\r\nПравилами пользования маломерными судами на водных объектах Российской Федерации\r\nКодексом внутреннего водного транспорта Российской Федерации\r\nВодным кодексом Российской Федерации	Правилами пользования маломерными судами на водных объектах Российской Федерации
225	Вопрос 4	Что должен выполнить судоводитель в случае неуверенности в оценке ситуации (неясность в действиях других судов, неподача или неправильное подтверждение сигналов, и т.п. )?	images/2020/10/01/1_b3v4.jpg	Уменьшить ход или прекратить движение до выяснения ситуации\r\nПродолжать движение, не меняя курса и скорости\r\nМаксимально быстро покинуть место развития ситуации\r\nИзменить курс и двигаться к ближайшему берегу	Уменьшить ход или прекратить движение до выяснения ситуации
228	Вопрос 7	По какой шкале производится визуальная оценка силы ветра?	images/2020/10/01/1_b3v7.jpg	Саффира – Симпсона\r\nБофорта\r\nЦельсия\r\nКельвина	Бофорта
229	Вопрос 8	Как называется место начала реки?	images/2020/10/01/1_b3v8.jpg	Исток\r\nПротока\r\nСтрежень\r\nВоложка	Исток
230	Вопрос 9	Как называется столкновение струй двух водных потоков (слияние рукавов)?	images/2020/10/01/1_b3v9.jpg	Взброс\r\nСпорные воды\r\nПрибой\r\nТолчея	Спорные воды
231	Вопрос 10	Как называется скопление наносов, отложенных в виде подводной гряды по ширине русла?	images/2020/10/01/1_b3v10.jpg	Коса\r\nПорог\r\nОтмель\r\nПерекат	Перекат
232	Вопрос 1	В течение какого срока гражданин, в отношении которого вынесено административное наказание, имеет право обжаловать постановление по делу об административном правонарушении?	images/2020/10/01/1_b4v1.jpg	5 суток\r\n10 суток\r\n15 суток\r\n20 суток	10 суток
233	Вопрос 2	Кем выносится постановление о лишении права управления маломерным судном?	images/2020/10/01/1_b4v2.jpg	Главным государственным инспектором по маломерным судам\r\nГосударственным инспектором по маломерным судам\r\nСудьей\r\nПрокурором	Судьей
234	Вопрос 3	При каком условии можно перевозить на маломерном судне детей дошкольного возраста?	images/2020/10/01/1_b4v3.jpg	В сопровождении взрослого, не связанного с управлением гидроцикла\r\nПри наличии одетого на ребенка спасательного жилета\r\nЕсли ребенок умеет плавать\r\nНельзя ни при каких условиях	В сопровождении взрослого, не связанного с управлением гидроцикла
235	Вопрос 4	В каких случаях моторное маломерное судно должно уступить дорогу гребной лодке?	images/2020/10/01/1_b4v4.jpg	Если гребная лодка находится слева\r\nЕсли гребная лодка находится справа\r\nЕсли гребная лодка находится по курсу\r\nВо всех случаях	Во всех случаях
236	Вопрос 5	Какое административное наказание предусмотрено за управление маломерным судном, не зарегистрированным в установленном порядке?	images/2020/10/01/1_b4v5.jpg	Предупреждение\r\nАдминистративный штраф\r\nПредупреждение, либо административный штраф, либо лишение права управления маломерным судном\r\nПредупреждение либо административный штраф	Административный штраф
237	Вопрос 6	Как называется расстояние между гребнями или подошвами двух смежных волн?	images/2020/10/01/1_b4v6.jpg	Бег волны\r\nДлина волны\r\nВысота волны\r\nПериод волны	Длина волны
238	Вопрос 7	Как называется ветер, дующий против течения реки?	images/2020/10/01/1_b4v7.jpg	Верховой\r\nБриз\r\nВстречный\r\nНизовой	Низовой
239	Вопрос 8	Как называется вращательное движение воды за подводным или надводным выступом?	images/2020/10/01/1_b4v8.jpg	Майдан\r\nВодоворот\r\nСулои\r\nСуводь	Суводь
240	Вопрос 9	Как называется песчаная отмель – бугор в русле реки?	images/2020/10/01/1_b4v9.jpg	Огрудок\r\nЛещадь\r\nШалыга\r\nПечина	Шалыга
241	Вопрос 10	Как называется отклонение движущегося судна от курса под влиянием течения?	images/2020/10/01/1_b4v10.jpg	Дрейф\r\nДифферент\r\nСнос\r\nСлеминг	Снос
242	Вопрос 1	Какова периодичность проведения очередного освидетельствования маломерного судна?	images/2020/10/01/1_b5v1.jpg	Ежегодно\r\nОдин раз в 2 года\r\nОдин раз в 3 года\r\nОдин раз в 5 лет	Один раз в 5 лет
243	Вопрос 2	В присутствии какого лица осуществляется доступ судоводителя (судовладельца) к маломерному судну, задержанному и находящемуся на специализированной стоянке?	images/2020/10/01/1_b5v2.jpg	Государственного инспектора по маломерным судам\r\nСотрудника полиции\r\nЛица, ответственного за хранение судна\r\nСотрудника прокуратуры	Лица, ответственного за хранение судна
244	Вопрос 3	Какие действия должно предпринять судно, которому уступают дорогу?	images/2020/10/01/1_b5v3.jpg	Увеличить свою скорость\r\nУвеличить свою скорость и изменить курс на 10 градусов вправо\r\nСохранить свои курс и скорость\r\nИзменить свой курс на 10 градусов вправо	Сохранить свои курс и скорость
245	Вопрос 4	Какому из маломерных судов "А" и "В" должно уступить дорогу парусное судно "Б"?	images/2020/10/01/1_b5v4.jpg	"А"\r\n"А" и "В"\r\n"В"\r\nНи одному из судов	Ни одному из судов
246	Вопрос 5	Как называется область с повышенным давлением, которое понижается от центра к периферии?	images/2020/10/01/1_b5v5.jpg	Циклон\r\nШторм\r\nАнтициклон\r\nШтиль	Антициклон
247	Вопрос 6	Как называется расстояние (h) от подошвы до гребня волны?	images/2020/10/01/1_b5v6.jpg	Высота волны\r\nДиаметр волны\r\nДлина волны\r\nПериод волны	Высота волны
300	Вопрос 9	Под каким номером на рисунке обозначен урез воды?	images/2020/10/01/1_b10v9.jpg	1\r\n2\r\n3\r\n4	1
248	Вопрос 7	При наличии какой из перечисленных неисправностей пользование маломерным судном запрещается?	images/2020/10/01/1_b5v7.jpg	Неисправность блокировки запуска двигателя (мотора) при включении реверса\r\nНесоответствие отличительных (бортовых) огней установленным требованиям\r\nНаличие сквозных пробоин корпуса судна выше ватерлинии\r\nПри любой из перечисленных	При любой из перечисленных
249	Вопрос 8	Как называется часть реки, образованная при разделении русла островом?	images/2020/10/01/1_b5v8.jpg	Прорва\r\nЗатон\r\nСтарица\r\nРукав	Рукав
250	Вопрос 9	Как называется участок земной поверхности, ограничивающий долину реки с боков?	images/2020/10/01/1_b5v9.jpg	Левая пойма\r\nПриток\r\nКоренной берег\r\nЗатон	Коренной берег
251	Вопрос 10	Как называется выработанное речным потоком ложе, по которому осуществляется сток воды при самых низких уровнях?	images/2020/10/01/1_b5v10.jpg	Русло\r\nПойма\r\nСтарица\r\nПлес	Русло
252	Вопрос 1	Сколько метров составляет ширина береговой полосы водных объектов общего использования?	images/2020/10/01/1_b6v1.jpg	10 м.\r\n20 м.\r\n30 м.\r\n50 м.	20 м.
253	Вопрос 2	Как должен производиться обгон маломерным судном другого маломерного судна?	images/2020/10/01/1_b6v2.jpg	По правому борту обгоняемого судна\r\nПо правому борту при следовании вниз\r\nПо правому борту при следовании вверх\r\nПо левому борту обгоняемого судна	По левому борту обгоняемого судна
254	Вопрос 3	Какое административное наказание предусматривается за управление маломерным судном, судоводителем, не имеющем при себе судового билета?	images/2020/10/01/1_b6v3.jpg	Предупреждение\r\nПредупреждение либо административный штраф\r\nПредупреждение, либо административный штраф, либо лишение права управления маломерным судном на срок до шести месяцев\r\nАдминистративный штраф	Предупреждение либо административный штраф
255	Вопрос 4	Какое административное наказание предусмотрено за управление маломерным судном с нарушением ограничений по району плавания?	images/2020/10/01/1_b6v4.jpg	Штраф\r\nПредупреждение или штраф, или лишение права управления\r\nШтраф или лишение права управления\r\nПредупреждение	Штраф
256	Вопрос 5	Как называется ветер, дующий в сторону берега?	images/2020/10/01/1_b6v5.jpg	Прижимной\r\nНавальный\r\nПривальный\r\nПрибрежный	Навальный
257	Вопрос 6	Как называется разновидность тумана при видимости от 1 до 10 км?	images/2020/10/01/1_b6v6.jpg	Мгла\r\nРефракция\r\nМорось\r\nДымка	Дымка
258	Вопрос 7	Как называется ветер, который дует днем с моря на сушу, а ночью с суши на море?	images/2020/10/01/1_b6v7.jpg	Пассат\r\nБора\r\nБриз\r\nМуссон	Бриз
259	Вопрос 8	Как называется старое русло, спрямленное новым руслом и изолированное от него?	images/2020/10/01/1_b6v8.jpg	Воложка\r\nПойма\r\nСтарица\r\nРукав	Старица
260	Вопрос 9	Как называется часть реки, которая образовалась при разделении русла островом?	images/2020/10/01/1_b6v9.jpg	Пойма\r\nПротока\r\nСтарица\r\nРукав	Рукав
261	Вопрос 10	Как называется движение двух судов, двигающихся навстречу друг другу?	images/2020/10/01/1_b6v10.jpg	Контрплавание\r\nВстречное плавание\r\nКурсовое плавание\r\nОсевое плавание	Встречное плавание
262	Вопрос 1	Какое административное наказание предусматривается за управление маломерным судном, судоводителем, не имеющем при себе судового билета?	images/2020/10/01/1_b7v1.jpg	Предупреждение\r\nПредупреждение либо административный штраф\r\nПредупреждение, либо административный штраф, либо лишение права управления маломерным судном на срок до шести месяцев\r\nАдминистративный штраф	Предупреждение либо административный штраф
263	Вопрос 2	Какие действия должен предпринять судоводитель маломерного судна "А" для безопасного расхождения?	images/2020/10/01/1_b7v2.jpg	Застопорить ход и остановиться\r\nИзменить курс влево\r\nСледовать прежним курсом\r\nИзменить курс вправо	Изменить курс вправо
264	Вопрос 3	В чьи обязанности входит проведение инструктажа пассажиров по правилам поведения на маломерном судне во время плавания?	images/2020/10/01/1_b7v3.jpg	Государственного инспектора по маломерным судам\r\nДолжностного лица базы (сооружения) для стоянки маломерных судов\r\nСудоводителя\r\nСудовладельца	Судоводителя
282	Вопрос 1	Какое административное наказание предусмотрено за утерю или утрату удостоверения на право управления маломерным судном?	images/2020/10/01/1_b9v1.jpg	Предупреждение\r\nПредупреждение или штраф\r\nШтраф\r\nНаказание не предусмотрено	Наказание не предусмотрено
265	Вопрос 4	Какое административное наказание предусмотрено за управление маломерным судном судоводителю, не имеющему при себе судового билета маломерного судна или его копии, заверенной в установленном порядке?	images/2020/10/01/1_b7v4.jpg	Предупреждение или штраф\r\nПредупреждение\r\nШтраф\r\nНаказание не предусмотрено	Предупреждение или штраф
266	Вопрос 5	Что измеряется ручным анемометром?	images/2020/10/01/1_b7v5.jpg	Направление ветра\r\nСкорость течения\r\nСкорость ветра\r\nАтмосферное давление	Атмосферное давление
267	Вопрос 6	Как называется расстояние (h) от подошвы до гребня волны?	images/2020/10/01/1_b7v6.jpg	Период волны\r\nДиаметр волны\r\nДлина волны\r\nВысота волны	Высота волны
268	Вопрос 7	Как называется ветер, дующий против течения реки?	images/2020/10/01/1_b7v7.jpg	Верховой\r\nНизовой\r\nВстречный\r\nБриз	Низовой
269	Вопрос 8	Как называется отклонение движущегося судна от курса под влиянием ветра?	images/2020/10/01/1_b7v8.jpg	Дрейф\r\nДифферент\r\nКрен\r\nСлеминг	Дрейф
270	Вопрос 9	Как называется часть старого русла, соединенное с действующим?	images/2020/10/01/1_b7v9.jpg	Левая пойма\r\nПриток\r\nПравая пойма\r\nЗатон	Затон
271	Вопрос 10	Как называется условная линия, соединяющая на водной поверхности реки точки с наибольшей глубиной русла и максимальными скоростями течения?	images/2020/10/01/1_b7v10.jpg	Перевал\r\nХод\r\nСтрежень\r\nОсь	Стрежень
272	Вопрос 1	Что обязан выполнить судоводитель, находящийся поблизости от аварийного судна, если имеется опасность для находящихся на нем людей?	images/2020/10/01/1_b8v1.jpg	Оказать немедленную помощь\r\nОказать немедленную помощь, если это совместимо с безопасностью судна\r\nНе оказывать помощь\r\nПривлечь внимание других судов	Оказать немедленную помощь, если это совместимо с безопасностью судна
273	Вопрос 2	В каком из следующих случаев не разрешается пользоваться маломерным судном?	images/2020/10/01/1_b8v2.jpg	У судоводителя нет при себе удостоверения на право управления судном\r\nМаломерное судно не зарегистрировано в установленном порядке\r\nНа маломерном судне отсутствует судовой билет\r\nВо всех перечисленных случаях	Во всех перечисленных случаях
274	Вопрос 3	Какое административное наказание предусмотрено за управление маломерным судном судоводителем или иным лицом, находящимся в состоянии опьянения?	images/2020/10/01/1_b8v3.jpg	Лишение прав управления маломерным судном\r\nШтраф или лишение прав управления маломерным судном\r\nШтраф\r\nПредупреждение	Штраф или лишение прав управления маломерным судном
275	Вопрос 4	Какое административное наказание предусматривается за несоблюдение лицом, управляющим маломерным судном, требований навигационных знаков?	images/2020/10/01/1_b8v4.jpg	Административный штраф\r\nЛишение права управления маломерным судном на срок до шести месяцев\r\nПредупреждение\r\nОдно из перечисленных	Одно из перечисленных
276	Вопрос 5	Как называется область с повышенным давлением, которое понижается от центра к периферии?	images/2020/10/01/1_b8v5.jpg	Циклон\r\nШторм\r\nАнтициклон\r\nШтиль	Антициклон
277	Вопрос 6	Признаком какого изменения погоды является резкое падение атмосферного давления?	images/2020/10/01/1_b8v6.jpg	Приближения шторма\r\nУлучшения погоды\r\nУстойчивой хорошей погоды\r\nИзменения направления ветра	Приближения шторма
278	Вопрос 7	Как называется прибор для наблюдения за изменениями атмосферного давления и графической записи показаний?	images/2020/10/01/1_b8v7.jpg	Барометр\r\nГидролокатор\r\nБарограф\r\nАнемометр	Барограф
279	Вопрос 8	Как называется вращательное движение воды в реке, возникающее, как правило, за выступами берегов, мысами, выпуклыми берегами, мостовыми опорами, дамбами?	images/2020/10/01/1_b8v8.jpg	Майдан\r\nСуводь\r\nБурун\r\nВодоворот	Суводь
280	Вопрос 9	Как называется неправильное течение, которое представляет собой слив воды, направленный под углом к судовому ходу, и возникающее из-за разности в уровнях воды по ширине реки?	images/2020/10/01/1_b8v9.jpg	Затяжное\r\nСпорное\r\nСвальное\r\nПрижимное	Свальное
281	Вопрос 10	Как называется неправильное (беспорядочное) вращательное течение в реке, вызываемое либо столкновением струй двух водных потоков (спорными водами), либо наличием на дне реки крупных предметов?	images/2020/10/01/1_b8v10.jpg	Майдан\r\nВзбросы\r\nТолчея\r\nСуводь	Майдан
299	Вопрос 8	Как называется место начала реки?	images/2020/10/01/1_b10v8.jpg	Исток\r\nПротока\r\nСтрежень\r\nВоложка	Исток
283	Вопрос 2	Какие действия должны предпринять судоводители маломерных моторных судов "А" и "Б" для безопасного расхождения при встречном движении (плавании)?	images/2020/10/01/1_b9v2.jpg	Должны изменить курс вправо\r\n"А" должен повернуть вправо, а "Б" – влево\r\n"А" должен повернуть влево, а "Б" – вправо\r\nДолжны изменить курс влево	Должны изменить курс вправо
284	Вопрос 3	При каких условиях разрешается пересадка людей с одного судна на другое во время движения?	images/2020/10/01/1_b9v3.jpg	При отсутствии ветра и волнения\r\nПри отсутствии ветра и волнения с обязательно надетым на пересаживаемого человека спасательным жилетом\r\nЕсли по условиям плавания нет возможности остановить суда\r\nПересадка во время движения запрещена во всех случаях	Пересадка во время движения запрещена во всех случаях
285	Вопрос 4	При наличии какой из перечисленных неисправностей пользование маломерным судном запрещается?	images/2020/10/01/1_b9v4.jpg	Несоответствие отличительных (бортовых) огней установленным требованиям\r\nНаличие сквозных пробоин корпуса судна выше ватерлинии\r\nНеисправность блокировки запуска двигателя (мотора) при включении реверса\r\nПри любой из перечисленных	При любой из перечисленных
286	Вопрос 5	Где будет находиться область высокого давления по отношению к человеку, стоящему спиной к ветру в северном полушарии?	images/2020/10/01/1_b9v5.jpg	Впереди\r\nСправа\r\nСлева\r\nСо стороны спины	Справа
287	Вопрос 6	Как называется ветер, который дует днем с моря на сушу, а ночью с суши на море?	images/2020/10/01/1_b9v6.jpg	Пассат\r\nБора\r\nБриз\r\nМуссон	Бриз
288	Вопрос 7	Какую погоду следует ожидать при резком падении атмосферного давления и появлении перисто-кучевых облаков?	images/2020/10/01/1_b9v7.jpg	Изменение направления ветра\r\nУсиления дождя\r\nУхудшение погоды через 6-10 часов\r\nГрозу и шторм через 1-2 часа	Грозу и шторм через 1-2 часа
289	Вопрос 8	Как называется подводный глинистый выступ?	images/2020/10/01/1_b9v8.jpg	Шалыга\r\nОпечка\r\nПечина\r\nОсередок	Печина
290	Вопрос 9	Как называется скопление наносов, отложенных в виде подводной гряды по ширине русла?	images/2020/10/01/1_b9v9.jpg	Коса\r\nПорог\r\nПерекат\r\nОтмель	Перекат
291	Вопрос 10	Как называется вращательное движение воды за подводным или надводным выступом?	images/2020/10/01/1_b9v10.jpg	Суводь\r\nВодоворот\r\nСулои\r\nМайдан	Суводь
292	Вопрос 1	Какое административное наказание лица, управляющего маломерным судном, предусматривается за преднамеренную остановку или стоянку судна в запрещенных местах?	images/2020/10/01/1_b10v1.jpg	Административный штраф\r\nПредупреждение\r\nПредупреждение либо административный штраф\r\nПредупреждение, либо административный штраф, либо лишение права управления маломерным судном на срок до шести месяцев	Предупреждение, либо административный штраф, либо лишение права управления маломерным судном на срок до шести месяцев
293	Вопрос 2	Как должен производиться обгон маломерным судном другого маломерного судна?	images/2020/10/01/1_b10v2.jpg	По правому борту обгоняемого судна\r\nПо левому борту обгоняемого судна\r\nПо правому борту при следовании вверх\r\nПо правому борту при следовании вниз	По левому борту обгоняемого судна
294	Вопрос 3	Какое административное наказание предусмотрено за преднамеренную остановку маломерного судна в запрещенном месте?	images/2020/10/01/1_b10v3.jpg	Лишение права управления\r\nПредупреждение\r\nШтраф\r\nПредупреждение или штраф, или лишение права управления	Предупреждение или штраф, или лишение права управления
295	Вопрос 4	При совершении административного правонарушения, влекущего задержание маломерного судна, оно задерживается на время:	images/2020/10/01/1_b10v4.jpg	До составления протокола об административном правонарушении\r\nДо вынесения постановления по делу об административном правонарушении\r\nДо устранения причины задержания\r\nДо исполнения постановления по делу об административном правонарушении	До устранения причины задержания
296	Вопрос 5	Как называется расстояние (h) от подошвы до гребня волны?	images/2020/10/01/1_b10v5.jpg	Период волны\r\nДиаметр волны\r\nВысота волны\r\nДлина волны	Высота волны
297	Вопрос 6	Как называется ветер, дующий в сторону берега?	images/2020/10/01/1_b10v6.jpg	Прижимной\r\nПрибрежный\r\nНавальный\r\nПривальный	Навальный
298	Вопрос 7	Как называется разновидность тумана при видимости от 1 до 10 км?	images/2020/10/01/1_b10v7.jpg	Мгла\r\nРефракция\r\nДымка\r\nМорось	Дымка
301	Вопрос 10	Как называется невысокий обрывистый, как правило, вогнутый берег?	images/2020/10/01/1_b10v10.jpg	Обрыв\r\nОвраг\r\nПески\r\nЯр	Яр
302	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b1v1.jpg	Ограждающий отдельную опасность.\r\nСпециального назначения.\r\nЧистой воды.\r\nОсевой.	Специального назначения.
303	Вопрос 2	Что означает флаг, изображенный на иллюстрации?	images/2020/10/01/3_b1v2.jpg	«Вы идете к опасности».\r\n«Я хочу установить с Вами связь».\r\n«Остановите немедленно свое судно».\r\n«Человек за бортом»	«Человек за бортом»
304	Вопрос 3	На какой срок задерживается маломерное судно при совершении административного правонарушения?	images/2020/10/01/3_b1v3.jpg	На срок до рассмотрения дела об адм. правонарушении.\r\nНа срок до составления протокола об адм. правонарушении.\r\nНа срок до устранения причины задержания.\r\nНа срок до вступления постановления по делу об адм. правонарушении в законную силу.	На срок до устранения причины задержания.
305	Вопрос 4	При каком условии можно перевозить на маломерном судне детей дошкольного возраста?	images/2020/10/01/3_b1v4.jpg	В сопровождении взрослого, не связанного с управлением гидроцикла.\r\nПри наличии одетого на ребенка спасательного жилета.\r\nЕсли ребенок умеет плавать.\r\nНельзя ни при каких условиях.	В сопровождении взрослого, не связанного с управлением гидроцикла.
306	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b1v5.jpg	205°,0\r\n15°,0\r\n195°,0\r\n25°,0	25°,0
307	Вопрос 6	Какое градусное значение имеет Гринвичский меридиан?	images/2020/10/01/3_b1v6.jpg	90°,0\r\n270°,0\r\n0°,0\r\n180°,0	0°,0
308	Вопрос 7	Отметьте правильную расшифровку аббревиатуры ЦИВ.	images/2020/10/01/3_b1v7.jpg	Цифровой индивидуальный вызов.\r\nЦифровой исполнительный вызов.\r\nЦелевой индивидуальный вызов.\r\nЦифровой избирательный вызов.	Цифровой избирательный вызов.
309	Вопрос 8	Как называется ветер, дующий в сторону берега?	images/2020/10/01/3_b1v8.jpg	Навальный.\r\nПрижимной.\r\nПрибрежный.\r\nПривальный.	Навальный.
310	Вопрос 9	Какие правила плавания действуют на устьевом участке реки Преголя к западу от двухъярусного моста?	images/2020/10/01/3_b1v9.jpg	Правила плавания по ВВП Российской Федерации.\r\nМестные правила плавания судов в Калининградском заливе.\r\nМППСС-72.\r\nПравила, утвержденные Правительством Калининградской области.	МППСС-72.
311	Вопрос 10	Как называется элемент барического рельефа, обозначенный на рисунке цифрой «2»?	images/2020/10/01/3_b1v10.jpg	Гребень.\r\nЛожбина.\r\nСедловина.\r\nЦиклон.	Циклон.
312	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b2v1.jpg	Правой стороны.\r\nОсевой.\r\nОсновной фарватер слева.\r\nОсновной фарватер справа.	Основной фарватер справа.
313	Вопрос 2	Что означает флаг, изображенный на иллюстрации?	images/2020/10/01/3_b2v2.jpg	«Человек за бортом».\r\n«Я хочу установить с Вами связь».\r\n«Вы идете к опасности».\r\n«Остановите немедленно свое судно».	«Вы идете к опасности».
314	Вопрос 3	Какой срок отводится Кодексом Российской Федерации об административных правонарушениях для уплаты адм. штрафа?	images/2020/10/01/3_b2v3.jpg	10 суток.\r\n20 суток.\r\n60 суток.\r\n30 суток.	60 суток.
315	Вопрос 4	При каком условии маломерному судну можно заходить и маневрировать на акватории пляжей?	images/2020/10/01/3_b2v4.jpg	Только на самом малом ходу.\r\nТолько для высадки на берег пассажиров.\r\nЕсли в непосредственной близости от судна нет купающихся людей.\r\nНи при каких условиях.	Ни при каких условиях.
316	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b2v5.jpg	100°,0\r\n20°,0\r\n280°,0\r\n200°,0	200°,0
317	Вопрос 6	Как называется угол между Гринвичским меридианом и меридианом, на котором находится наблюдатель?	images/2020/10/01/3_b2v6.jpg	Магнитное склонение.\r\nДевиация.\r\nШирота.\r\nДолгота.	Долгота.
318	Вопрос 7	Выберите правильный вариант определения ГМССБ.	images/2020/10/01/3_b2v7.jpg	Глобальная морская система связи при бедствии и для обеспечения безопасности.\r\nГеостационарная морская спутниковая система безопасности.\r\nГлобальная морская система спутникового мониторинга.\r\nГлобальная мобильная система связи для целей безопасности.	Глобальная морская система связи при бедствии и для обеспечения безопасности.
319	Вопрос 8	Как называется область с повышенным давлением, которое понижается от центра к периферии?	images/2020/10/01/3_b2v8.jpg	Циклон.\r\nШторм.\r\nШтиль.\r\nАнтициклон.	Антициклон.
320	Вопрос 9	Ограничения при плавании маломерных судов по Калининградскому морскому каналу?	images/2020/10/01/3_b2v9.jpg	Должны держаться в стороне от фарватера, запрещается подходить к ограждающим дамбам, навигационным знакам, буям, заходить в гавани, примыкающие территории, которые имеют режимный характер.\r\nДолжны держаться в стороне от фарватера.\r\nЗапрещается подходить к ограждающим дамбам, навигационным знакам, буям, заходить в гавани, примыкающие территории, которые имеют режимный характер.\r\nОграничений нет.	Должны держаться в стороне от фарватера.
321	Вопрос 10	Как называется тип атмосферного фронта, обозначенный на рисунке цифрой «4»?	images/2020/10/01/3_b2v10.jpg	Арктический.\r\nОкклюзии.\r\nТеплый.\r\nТропический.	Теплый.
322	Вопрос 1	Что обозначает изображённый на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b3v1.jpg	Левой стороны.\r\nСпециального назначения.\r\nПравой стороны.\r\nОсевой.	Осевой.
323	Вопрос 2	Что означает флаг, изображенный на иллюстрации?	images/2020/10/01/3_b3v2.jpg	«Я хочу установить с Вами связь».\r\n«Вы идете к опасности».\r\n«Человек за бортом».\r\n«Остановите немедленно свое судно».	«Я хочу установить с Вами связь».
324	Вопрос 3	Какое административное наказание предусматривается за нарушение лицом, управляющим маломерным судном, правил маневрирования?	images/2020/10/01/3_b3v3.jpg	Административный штраф.\r\nПредупреждение.\r\nПредупреждение либо административный штраф.\r\nПредупреждение, либо адм. штраф, либо лишение права управления маломерным судном на срок до шести месяцев.	Предупреждение, либо адм. штраф, либо лишение права управления маломерным судном на срок до шести месяцев.
325	Вопрос 4	Какой из маневров на моторной лодке "А" является наиболее эффективным, чтобы уступить дорогу катеру "Б"?	images/2020/10/01/3_b3v4.jpg	Сделать оборот через левый борт.\r\nПовернуть влево на 10°.\r\nУменьшить скорость и повернуть под корму катера "Б".\r\nПовернуть вправо на 10°.	Уменьшить скорость и повернуть под корму катера "Б".
326	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b3v5.jpg	11°,0\r\n+5°,0\r\n-5°,0\r\n-11°,0	-11°,0
327	Вопрос 6	Как называется расхождение между обсервованным и счислимым местом нахождения судна?	images/2020/10/01/3_b3v6.jpg	Невязка.\r\nСнос.\r\nДрейф.\r\nПромах.	Невязка.
328	Вопрос 7	Отметьте правильную расшифровку аббревиатуры СКЦ.	images/2020/10/01/3_b3v7.jpg	Спасательный капитанский центр.\r\nСпасательно-координационный центр.\r\nСтроительный капитальный цех.\r\nСрочный координационный циркуляр.	Спасательно-координационный центр.
329	Вопрос 8	Какую погоду следует ожидать при резком падении атмосферного давления и появлении перисто-кучевых облаков?	images/2020/10/01/3_b3v8.jpg	Изменение направления ветра.\r\nУсиления дождя.\r\nУхудшение погоды через 6-10 часов.\r\nГрозу и шторм через 1-2 часа.	Грозу и шторм через 1-2 часа
330	Вопрос 9	На кого возложены обязанности по обеспечению безопасности плавания в портовых водах Калининградского порта?	images/2020/10/01/3_b3v9.jpg	МЧС России.\r\nАдминистрация морского порта Калининград.\r\nБалтийский флот.\r\nАдминистрация Калининградской области.	Администрация морского порта Калининград.
331	Вопрос 10	Как называется атмосферное явление, обозначаемое на картах погоды условным обозначением, показанным на рисунке?	images/2020/10/01/3_b3v10.jpg	Теплый фронт.\r\nХолодный фронт.\r\nТропический фронт.\r\nФронт окклюзии.	Холодный фронт.
332	Вопрос 1	Что обозначает изображённый на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b4v1.jpg	Чистой воды.\r\nПравой стороны.\r\nОсновной фарватер справа.\r\nЛевой стороны.	Левой стороны.
333	Вопрос 2	Какой знак в дневное время выставляет судно, идущее под парусом, и, в то же время, приводимое в движение механической установкой?	images/2020/10/01/3_b4v2.jpg	А.\r\nБ\r\nВ.\r\nГ.	Б
334	Вопрос 3	Какое адм. наказание предусмотрено за управление маломерным судном, не зарегистрированным в установленном порядке?	images/2020/10/01/3_b4v3.jpg	Административный штраф.\r\nПредупреждение.\r\nПредупреждение либо административный штраф.\r\nПредупреждение, либо адм. штраф, либо лишение права управления маломерным судном.	Административный штраф.
335	Вопрос 4	Какому из маломерных судов должно уступить дорогу маломерное судно "А"?	images/2020/10/01/3_b4v4.jpg	В.\r\nБ.\r\nОбоим судам.\r\nНи одному из судов.	Б.
336	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b4v5.jpg	00°,0\r\n60°,0\r\n240°,0\r\n120°,0	120°,0
337	Вопрос 6	Как называется угол между диаметральной плоскостью судна и направлением на наблюдаемый предмет?	images/2020/10/01/3_b4v6.jpg	Угол сноса.\r\nИстинный курс.\r\nКурсовой угол.\r\nИстинный пеленг.	Курсовой угол.
338	Вопрос 7	За что несет ответственность спасательно- координационный центр (СКЦ)?	images/2020/10/01/3_b4v7.jpg	За координацию проведения поисково- спасательных операций.\r\nЗа передачу информации по безопасности мореплавания.\r\nЗа мониторинг местоположения судов.\r\nЗа предоставление судам телефонных линий для радиотелефонных переговоров с береговыми абонентами.	За координацию проведения поисково- спасательных операций.
339	Вопрос 8	Что называется «Шкалой Бофорта» у мореплавателей?	images/2020/10/01/3_b4v8.jpg	Система оценки видимости в баллах.\r\nСистема оценки облачности в баллах.\r\nСистема оценки проходимости радиоволн в баллах.\r\nСистема оценки силы ветра в баллах.	Система оценки силы ветра в баллах.
340	Вопрос 9	В какое время суток разрешается пребывание судов и других плавсредств на воде в российской части вод пограничных рек, озер и иных водоемов?	images/2020/10/01/3_b4v9.jpg	Круглосуточно.\r\nВ светлое время суток.\r\nКруглосуточно на удалении не менее 2 км. от пограничной зоны.\r\nС 09.00 до 21.00 местного времени.	В светлое время суток.
341	Вопрос 10	Что изображено на рисунке?	images/2020/10/01/3_b4v10.jpg	Запись глубин, полученная эхолотом.\r\nГрафик курса валют.\r\nБарограмма.\r\nСуточный ход температуры.	Барограмма.
342	Вопрос 1	Что обозначает изображённый на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b5v1.jpg	Опасности.\r\nОсевой.\r\nОсновной фарватер слева.\r\nОсновной фарватер справа.	Основной фарватер слева.
343	Вопрос 2	Какой из изображенных на иллюстрации сигналов не является сигналом бедствия?	images/2020/10/01/3_b5v2.jpg	а.\r\nб.\r\nв.\r\nг.	в.
344	Вопрос 3	Какое адм. наказание предусматривается за несоблюдение лицом, управляющим маломерным судном, установленной скорости?	images/2020/10/01/3_b5v3.jpg	Предупреждение, либо адм. штраф, либо лишение права управления маломерным судном на срок до шести месяцев.\r\nАдминистративный штраф.\r\nПредупреждение.\r\nПредупреждение либо адм. штраф.	Предупреждение, либо адм. штраф, либо лишение права управления маломерным судном на срок до шести месяцев.
345	Вопрос 4	Какому из маломерных судов должно уступить дорогу маломерное судно "Б"?	images/2020/10/01/3_b5v4.jpg	Б.\r\nА и В.\r\nНикакому.\r\nВ.	В.
346	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b5v5.jpg	+ 8°,0\r\n+ 12°,0\r\n- 8°,0\r\n- 12°,0	+ 12°,0
347	Вопрос 6	Как называется угол между нордовой частью истинного меридиана и диаметральной плоскостью судна?	images/2020/10/01/3_b5v6.jpg	Компасный курс.\r\nКомпасный пеленг.\r\nИстинный курс.\r\nИстинный пеленг.	Истинный курс.
348	Вопрос 7	Какие из перечисленных данных включаются в формат сигнала бедствия УКВ ЦИВ?	images/2020/10/01/3_b5v7.jpg	Координаты судна.\r\nЗвуковой сигнал SOS.\r\nТелеграфный позывной судна.\r\nТелеграфный позывной вызываемой станции.	Координаты судна.
349	Вопрос 8	В каком из вариантов ответа правильно названы формы барического рельефа на карте погоды?	images/2020/10/01/3_b5v8.jpg	а - циклон, б - антициклон, в - холодный фронт.\r\nа - циклон, б - холодный фронт, в – антициклон.\r\nа - антициклон, б - циклон, в - малоподвижный фронт.\r\nа - циклон, б - антициклон, в - малоподвижный фронт.	а - циклон, б - антициклон, в - холодный фронт.
350	Вопрос 9	Кто осуществляет контроль за безопасностью плавания всех судов и плавучих средств в портовых водах?	images/2020/10/01/3_b5v9.jpg	Капитан морского торгового порта.\r\nОперативный дежурный Балтийского флота.\r\nГосударственная инспекция портового надзора.\r\nФедеральная служба по надзору в сфере морского и речного транспорта.	Капитан морского торгового порта.
351	Вопрос 10	Отметьте утверждение, которое относится к изображению на рисунке	images/2020/10/01/3_b5v10.jpg	Это теплый фронт.\r\nЭто холодный фронт.\r\nЭто фронт окклюзии.\r\nВоздушные массы движутся справа налево.	Это теплый фронт.
352	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b6v1.jpg	Левой стороны.\r\nСпециального назначения.\r\nПравой стороны.\r\nОсевой.	Осевой.
353	Вопрос 2	Что означает флаг, изображенный на иллюстрации?	images/2020/10/01/3_b6v2.jpg	«Вы идете к опасности».\r\n«Человек за бортом».\r\n«Остановите немедленно свое судно».\r\n«Я хочу установить с Вами связь».	«Остановите немедленно свое судно».
354	Вопрос 3	Какое адм. наказание предусматривается за управление маломерным судном, судоводителем, не имеющем при себе судового билета?	images/2020/10/01/3_b6v3.jpg	Предупреждение.\r\nПредупреждение либо административный штраф.\r\nПредупреждение, либо адм. штраф, либо лишение права управления маломерным судном на срок до шести месяцев.\r\nАдминистративный штраф.	Предупреждение либо административный штраф.
355	Вопрос 4	В каких случаях моторное маломерное судно должно уступить дорогу гребной лодке?	images/2020/10/01/3_b6v4.jpg	Если гребная лодка находится слева.\r\nЕсли гребная лодка находится справа.\r\nЕсли гребная лодка находится по курсу.\r\nВо всех случаях.	Во всех случаях.
356	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b6v5.jpg	91°,0\r\n89°,0\r\n85°,0\r\n95°,0	89°,0
357	Вопрос 6	Как называется угол отклонения стрелки компаса от магнитного меридиана под воздействием судового железа?	images/2020/10/01/3_b6v6.jpg	Магнитное склонение.\r\nПоправка компаса.\r\nДрейф.\r\nДевиация.	Девиация.
358	Вопрос 7	Что из перечисленного невозможно выполнить с использованием ЦИВ?	images/2020/10/01/3_b6v7.jpg	Передать голосовое сообщение.\r\nПередать сообщение о бедствии.\r\nПередать информацию о рабочем канале радиосвязи.\r\nПередать оповещение о передаче сообщений с категориями Срочность и Безопасность.	Передать голосовое сообщение.
359	Вопрос 8	В каком из вариантов ответа правильно перечислены наименования форм барического рельефа, изображаемых на синоптических картах?	images/2020/10/01/3_b6v8.jpg	а - антициклон, б - циклон, в - гребень, г – ложбина.\r\nа - ложбина, б - гребень, в - циклон, г – антициклон.\r\nа - гребень, б - циклон, в - ложбина, г – антициклон.\r\nа - циклон, б - антициклон, в - ложбина, г – гребень.	а - циклон, б - антициклон, в - ложбина, г – гребень.
360	Вопрос 9	Как осуществляется выход судов и плавсредств из пунктов базирования в российскую часть вод пограничных рек, озер и иных водоемов, во внутренние морские воды и в территориальное море Российской Федерации и их возвращение в пункты базирования?	images/2020/10/01/3_b6v9.jpg	С оповещением ближайшего подразделения пограничного управления ФСБ России не позднее чем за 4 часа.\r\nПосле получения разрешения от ближайшего подразделения пограничного управления ФСБ России.\r\nПосле представления письменной заявки и получения разрешения.\r\nОповещения подразделения пограничного управления ФСБ России не требуется.	С оповещением ближайшего подразделения пограничного управления ФСБ России не позднее чем за 4 часа.
361	Вопрос 10	Отметьте утверждение, которое относится к изображению на рисунке	images/2020/10/01/3_b6v10.jpg	Это холодный фронт.\r\nЭто фронт окклюзии.\r\nВоздушные массы движутся слева направо.\r\nВоздушные массы движутся справа налево.	Воздушные массы движутся слева направо.
362	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b7v1.jpg	Левую сторону фарватера.\r\nОсь фарватера.\r\nОсновной фарватер справа.\r\nПравую сторону фарватера.	Правую сторону фарватера.
363	Вопрос 2	Какое судно несет изображенные на иллюстрации знаки?	images/2020/10/01/3_b7v2.jpg	Судно, занятое ловом рыбы тралением.\r\nСудно, лишенное возможности управляться.\r\nСудно, занятое дноуглубительными работами.\r\nСудно, занятое работой по устранению минной опасности.	Судно, занятое работой по устранению минной опасности.
364	Вопрос 3	Какое адм. наказание предусмотрено за управление маломерным судном судоводителем или иным лицом, находящимся в состоянии опьянения?	images/2020/10/01/3_b7v3.jpg	Лишение прав управления маломерным судном.\r\nШтраф или лишение прав управления маломерным судном.\r\nПредупреждение.\r\nШтраф.	Штраф или лишение прав управления маломерным судном.
365	Вопрос 4	Какие действия должен предпринять судоводитель маломерного судна "А" для безопасного расхождения?	images/2020/10/01/3_b7v4.jpg	Застопорить ход и остановиться.\r\nИзменить курс вправо.\r\nИзменить курс влево.\r\nСледовать прежним курсом.	Изменить курс вправо.
366	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b7v5.jpg	-10°,0\r\n+2°,0\r\n-2°,0\r\n+10°,0	+10°,0
367	Вопрос 6	Как называется метод определения места судна по двум пеленгам одного ориентира с учетом курса и пройденного расстояния?	images/2020/10/01/3_b7v6.jpg	По двум пеленгам.\r\nПо курсу и пеленгу.\r\nПо крюйс-пеленгу.\r\nПо расстоянию и пеленгу.	По курсу и пеленгу.
368	Вопрос 7	На каких каналах в УКВ диапазоне должна осуществляться связь "судно-судно"?	images/2020/10/01/3_b7v7.jpg	На рекомендованных симплексных каналах.\r\nТолько на 75 и 76 каналах.\r\nНа любом из дуплексных каналов.\r\nТолько на 15 и 17 каналах.	На рекомендованных симплексных каналах.
369	Вопрос 8	Что измеряет барометр- анероид?	images/2020/10/01/3_b7v8.jpg	Температуру воды.\r\nСилу ветра.\r\nВлажность воздуха.\r\nАтмосферное давление.	Атмосферное давление.
370	Вопрос 9	Какую скорость хода не должны превышать суда с осадкой до 4 м. в портовых водах?	images/2020/10/01/3_b7v9.jpg	10 узлов.\r\n12 узлов.\r\n9 узлов.\r\n13,5 узлов.	9 узлов.
371	Вопрос 10	Как называется элемент барического рельефа, обозначенный на рисунке цифрой «3»?	images/2020/10/01/3_b7v10.jpg	Антициклон.\r\nГребень.\r\nЛожбина.\r\nСедловина.	Ложбина.
372	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b8v1.jpg	Ограждающий отдельную опасность малых размеров.\r\nЧистой воды.\r\nСпециального назначения.\r\nОсевой.	Ограждающий отдельную опасность малых размеров.
373	Вопрос 2	При какой длине буксира выставляется изображенное на иллюстрации знак на судне с механическим двигателем, занятом буксировкой?	images/2020/10/01/3_b8v2.jpg	Более 200 м.\r\nМенее 100 м.\r\nМенее 200 м.\r\nБолее 100 м.	Более 200 м.
374	Вопрос 3	Какое адм. наказание предусматривается за несоблюдение лицом, управляющим маломерным судном, требований навигационных знаков?	images/2020/10/01/3_b8v3.jpg	Административный штраф.\r\nОдно из перечисленных.\r\nЛишение права управления маломерным судном на срок до шести месяцев.\r\nПредупреждение.	Одно из перечисленных.
375	Вопрос 4	Какие действия должны предпринять судоводители маломерных моторных судов "А" и "Б" для безопасного расхождения при встречном движении (плавании)?	images/2020/10/01/3_b8v4.jpg	Должны изменить курс влево.\r\n"А" должен повернуть вправо, а "Б" – влево.\r\n"А" должен повернуть влево, а "Б" – вправо.\r\nДолжны изменить курс вправо.	Должны изменить курс вправо.
376	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b8v5.jpg	260°,0\r\n266°,0\r\n280°,0\r\n274°,0	280°,0
377	Вопрос 6	Как называется угол между плоскостью экватора и радиусом, проведенным из центра Земли в заданную точку на земной поверхности?	images/2020/10/01/3_b8v6.jpg	Магнитное склонение.\r\nДолгота.\r\nКурсовой угол.\r\nШирота.	Широта.
378	Вопрос 7	Вызываемая в радиотелефонии радиостанция не отвечает на вызов, повторенный трижды с интервалом в 2 минуты. Через какой интервал времени следует повторить вызов?	images/2020/10/01/3_b8v7.jpg	3 мин.\r\n1 мин.\r\n5 мин.\r\n10 мин.	3 мин.
379	Вопрос 8	Что измеряется ручным анемометром?	images/2020/10/01/3_b8v8.jpg	Направление ветра.\r\nСкорость ветра.\r\nСкорость течения.\r\nАтмосферное давление.	Скорость ветра.
380	Вопрос 9	Как ограничена скорость движения маломерных судов на участке от 2-х ярусного моста до устья реки Преголя?	images/2020/10/01/3_b8v9.jpg	9 узлов.\r\n10 узлов.\r\n13,5 узлов.\r\n12 узлов.	13,5 узлов.
381	Вопрос 10	Как называется атмосферное явление, обозначаемое на картах погоды условным обозначением, показанным на рисунке?	images/2020/10/01/3_b8v10.jpg	Фронт окклюзии.\r\nСтационарный фронт.\r\nПолярный фронт.\r\nФронт двойной окклюзии.	Стационарный фронт.
382	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b9v1.jpg	Ограждающий отдельную опасность.\r\nСпециального назначения.\r\nЧистой воды.\r\nОсевой.	Специального назначения.
383	Вопрос 2	В каком генеральном направлении следует указанное маломерное судно?	images/2020/10/01/3_b9v2.jpg	С моря.\r\nВ море.\r\nИз порта.\r\nИз устья реки.	С моря.
384	Вопрос 3	Какое административное наказание лица, управляющего маломерным судном, предусматривается за преднамеренную остановку или стоянку судна в запрещенных местах?	images/2020/10/01/3_b9v3.jpg	Административный штраф.\r\nПредупреждение.\r\nПредупреждение либо административный штраф.\r\nПредупреждение, либо адм. штраф, либо лишение права управления маломерным судном на срок до шести месяцев.	Предупреждение, либо адм. штраф, либо лишение права управления маломерным судном на срок до шести месяцев.
385	Вопрос 4	Как должны расходиться изображенные на иллюстрации суда?	images/2020/10/01/3_b9v4.jpg	Катер "А" должен уступить дорогу "Б".\r\nПарусно-моторное судно "Б" должно уступить дорогу "А".\r\nПравыми бортами.\r\nЛевыми бортами.	Левыми бортами.
386	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b9v5.jpg	+2°,0\r\n-2°,0\r\n+8°,0\r\n-8°,0	+8°,0
387	Вопрос 6	Определите расстояние до судна длиной (Lс) 20 м, если число делений по шкале сетки призматического бинокля, перекрывающих Lc, составляет 5 ед.?	images/2020/10/01/3_b9v6.jpg	2 км.\r\n6 км.\r\n10 км.\r\n4 км.	4 км.
388	Вопрос 7	Какое действие следует произвести оператору судовой радиостанции, если им был принят вызов, но нет уверенности, кому он адресован?	images/2020/10/01/3_b9v7.jpg	Дождаться повторного вызова.\r\nОтветить на вызов и уточнить, кому он адресован.\r\nЗапросить информацию о вызове у береговой радиостанции.\r\nДать запрос в адрес всех судов с просьбой повторить вызов.	Дождаться повторного вызова.
389	Вопрос 8	Как называется разновидность тумана при видимости от 1 до 10 км?	images/2020/10/01/3_b9v8.jpg	Мгла.\r\nРефракция.\r\nМорось.\r\nДымка.	Дымка.
390	Вопрос 9	Как должен проходить маршрут движения маломерных судов на участке от 2-х ярусного моста до устья реки Преголя?	images/2020/10/01/3_b9v9.jpg	Вдоль правого берега реки Преголя на расстоянии 50 метров от береговой черты, оставляя остров Косе к югу.\r\nВдоль правого берега реки Преголя на расстоянии 20 метров от береговой черты, оставляя остров Косе к югу.\r\nВдоль левого берега реки Преголя на расстоянии 20 метров от береговой черты, оставляя остров Косе к северу.\r\nВдоль левого берега реки Преголя на расстоянии 50 метров от береговой черты, оставляя остров Косе к северу.	Вдоль правого берега реки Преголя на расстоянии 20 метров от береговой черты, оставляя остров Косе к югу.
391	Вопрос 10	Как называется тип атмосферного фронта, обозначенный на рисунке цифрой «6»?	images/2020/10/01/3_b9v10.jpg	Арктический.\r\nОкклюзии.\r\nТеплый.\r\nТропический.	Окклюзии.
392	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b10v1.jpg	Правой стороны.\r\nОсевой.\r\nОсновной фарватер слева.\r\nОсновной фарватер справа.	Основной фарватер справа.
393	Вопрос 2	В каком генеральном направлении следует изображенное на иллюстрации маломерное судно?	images/2020/10/01/3_b10v2.jpg	В порт.\r\nВ сторону моря.\r\nВ устье реки.\r\nИз порта.	В сторону моря.
394	Вопрос 3	В течение какого срока гражданин, в отношении которого вынесено адм. наказание, имеет право обжаловать постановление по делу об административном правонарушении?	images/2020/10/01/3_b10v3.jpg	5 суток.\r\n10 суток.\r\n20 суток.\r\n15 суток.	10 суток.
395	Вопрос 4	В каком из перечисленных случаев маломерному судну разрешается маневрировать на акватории пляжа?	images/2020/10/01/3_b10v4.jpg	Только на самом малом ходу.\r\nТолько с принятием всех необходимых мер предосторожности.\r\nЕсли в непосредственной близости от судна нет купающихся людей.\r\nНи в одном из перечисленных случаев не разрешается.	Ни в одном из перечисленных случаев не разрешается.
396	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b10v5.jpg	80°,0\r\n100°,0\r\n260°,0\r\n280°,0	80°,0
397	Вопрос 6	Как называется угловая разница между направлением на истинный север и направлением на магнитный север?	images/2020/10/01/3_b10v6.jpg	Магнитное склонение.\r\nДевиация.\r\nУгловое склонение.\r\nДемаркация.	Магнитное склонение.
398	Вопрос 7	Какое действие следует произвести оператору судовой радиостанции, если был принят адресованный ей вызов, но позывной вызывающей станции неясен?	images/2020/10/01/3_b10v7.jpg	Ответить на вызов, переспросив позывной вызывающей радиостанции.\r\nДождаться повторного вызова.\r\nЗапросить информацию о вызове у береговой радиостанции.\r\nДать запрос в адрес всех судов с просьбой повторить вызов.	Ответить на вызов, переспросив позывной вызывающей радиостанции.
399	Вопрос 8	Как называется наивысшая точка волнового профиля?	images/2020/10/01/3_b10v8.jpg	Взброс.\r\nПодошва.\r\nВысота.\r\nГребень.	Гребень.
400	Вопрос 9	Условия разрешения двухстороннего движения и расхождения в Калининградском морском канале при благоприятных метеорологических условиях судам длиной до 20 метров?	images/2020/10/01/3_b10v9.jpg	Только в светлое время суток.\r\nВ местах расхождений – пикеты № 10, 40.\r\nНа рейде Комсомольский, в районе п. Ижевское и завода «Янтарь».\r\nКруглосуточно по всему каналу.	Круглосуточно по всему каналу.
401	Вопрос 10	Какой тип волнения показан на рисунке?	images/2020/10/01/3_b10v10.jpg	Прибойные волны.\r\nЗыбь.\r\nВетровое волнение.\r\nСтоячие волны.	Ветровое волнение.
402	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b11v1.jpg	Левой стороны.\r\nСпециального назначения.\r\nПравой стороны.\r\nОсевой.	Осевой.
403	Вопрос 2	Какой из указанных знаков поднимается, когда судно становится на якорь?	images/2020/10/01/3_b11v2.jpg	А.\r\nБ.\r\nВ.\r\nГ.	Г.
404	Вопрос 3	Кем выносится постановление о лишении права управления маломерным судном?	images/2020/10/01/3_b11v3.jpg	Главным государственным инспектором по маломерным судам.\r\nГосударственным инспектором по маломерным судам.\r\nСудьей.\r\nПрокурором.	Судьей.
405	Вопрос 4	При каких условиях разрешается пересадка людей с одного судна на другое во время движения?	images/2020/10/01/3_b11v4.jpg	При отсутствии ветра и волнения.\r\nПри отсутствии ветра и волнения с обязательно надетым на человека спасательным жилетом.\r\nЕсли по условиям плавания нет возможности остановить суда.\r\nПересадка во время движения запрещена во всех случаях.	Пересадка во время движения запрещена во всех случаях.
406	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b11v5.jpg	160°,0\r\n170°,0\r\n175°,0\r\n180°,0	170°,0
407	Вопрос 6	Система МАМС. С какой стороны от этого буя находится навигационная опасность?	images/2020/10/01/3_b11v6.jpg	С южной.\r\nС северной.\r\nС восточной.\r\nС западной.	С восточной.
408	Вопрос 7	Каким словом следует указывать завершение сеанса связи между двумя радиостанциями?	images/2020/10/01/3_b11v7.jpg	OUT.\r\nFINISH.\r\nEND.\r\nSTOP.	OUT.
409	Вопрос 8	Как называется расстояние (h) от подошвы до гребня волны?	images/2020/10/01/3_b11v8.jpg	Период волны.\r\nДиаметр волны.\r\nДлина волны.\r\nВысота волны.	Высота волны.
410	Вопрос 9	К какой категории водных объектов относится Калининградский залив?	images/2020/10/01/3_b11v9.jpg	Внутренний водный путь.\r\nВнутренний водоём.\r\nРайон с морским режимом плавания.\r\nКатегория не определена.	Район с морским режимом плавания.
411	Вопрос 10	Какой тип волнения показан на рисунке?	images/2020/10/01/3_b11v10.jpg	Прибойные волны.\r\nЗыбь.\r\nВетровое волнение.\r\nСтоячие волны.	Зыбь.
412	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b12v1.jpg	Чистой воды.\r\nПравой стороны.\r\nОсновной фарватер справа.\r\nЛевой стороны.	Левой стороны.
413	Вопрос 2	Какое судно несет изображенные на иллюстрации знаки?	images/2020/10/01/3_b12v2.jpg	Лишенное возможности маневрировать.\r\nЛишенное возможности управляться.\r\nСтоящее на мели.\r\nСтоящее на якоре.	Лишенное возможности управляться.
414	Вопрос 3	Какое адм. наказание предусмотрено за превышение установленной скорости?	images/2020/10/01/3_b12v3.jpg	Предупреждение или штраф, или лишение права управления.\r\nЛишение права управления.\r\nПредупреждение.\r\nШтраф.	Предупреждение или штраф, или лишение права управления.
415	Вопрос 4	При наличии какой из перечисленных неисправностей пользование маломерным судном запрещается?	images/2020/10/01/3_b12v4.jpg	Наличие вибрации.\r\nНаличие утечек топлива.\r\nПовреждение системы дистанционного управления двигателем.\r\nПри любой из перечисленных.	При любой из перечисленных.
416	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b12v5.jpg	310°,0\r\n314°,0\r\n316°,0\r\n320°,0	310°,0
417	Вопрос 6	Система МАМС. Регион А. Этот буй должен оставаться	images/2020/10/01/3_b12v6.jpg	С левого борта.\r\nС правого борта.\r\nС любого борта.\r\nС кормы.	С левого борта.
418	Вопрос 7	На каком канале УКВ осуществляется передача сигнала бедствия ЦИВ?	images/2020/10/01/3_b12v7.jpg	70.\r\n16.\r\n13.\r\n06.	70.
419	Вопрос 8	Как называется расстояние между гребнями или подошвами двух смежных волн?	images/2020/10/01/3_b12v8.jpg	Бег волны.\r\nПериод волны.\r\nВысота волны.\r\nДлина волны.	Длина волны.
420	Вопрос 9	Какие условия считаются благоприятными метеорологическими условиями в Калининградском морском канале для расхождения судов длиной до 20 метров?	images/2020/10/01/3_b12v9.jpg	Ветер до 10 м/сек, и видимость более 1 мили.\r\nВетер до 10 м/сек и видимость более 2 миль.\r\nВетер до 15 м/сек и видимость более 1 мили.\r\nВетер до 15 м/сек и видимость более 2 миль.	Ветер до 10 м/сек и видимость более 2 миль.
421	Вопрос 10	Как называется элемент волнения, обозначенный на рисунке цифрой «3»?	images/2020/10/01/3_b12v10.jpg	Гребень.\r\nСклон.\r\nПодошва.\r\nПодметка.	Подошва.
422	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b13v1.jpg	Опасности.\r\nОсевой.\r\nОсновной фарватер слева.\r\nОсновной фарватер справа.	Основной фарватер слева.
423	Вопрос 2	Какое судно несет изображенные на иллюстрации знаки?	images/2020/10/01/3_b13v2.jpg	Судно на якоре.\r\nСудно на мели.\r\nСудно, занятое ловом рыбы.\r\nСудно, лишенное возможности управляться.	Судно на мели.
424	Вопрос 3	Какое адм. наказание предусматривается за нарушение правил маневрирования?	images/2020/10/01/3_b13v3.jpg	Административный штраф.\r\nЛишение прав управления маломерным судном.\r\nПредупреждение.\r\nОдно из перечисленных.	Одно из перечисленных.
425	Вопрос 4	Какие из перечисленных документов судоводители маломерных судов обязаны предъявлять для проверки государственному инспектору по маломерным судам?	images/2020/10/01/3_b13v4.jpg	Удостоверение на право управления\r\nДокумент на право пользования судном при отсутствии на борту собственника или владельца судна.\r\nСудовой билет или его заверенную копию.\r\nВсе перечисленные.	Все перечисленные.
426	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b13v5.jpg	315°,0\r\n225°,0\r\n135°,0\r\n45°,0	315°,0
427	Вопрос 6	Ваше судно идёт курсом 355°, когда Вы впереди замечаете видите буй. Ваши действия?	images/2020/10/01/3_b13v6.jpg	Судно должно изменить курс вправо и оставить буй по левому борту.\r\nСудно должно изменить курс влево и оставить буй по правому борту.\r\nСудно должно идти прежним курсом.\r\nСудно должно развернуться на обратный курс.	Судно должно изменить курс влево и оставить буй по правому борту.
428	Вопрос 7	На каком канале осуществляется передача сигнала бедствия в радиотелефонном режиме?	images/2020/10/01/3_b13v7.jpg	16.\r\n72.\r\n13.\r\n06.	16.
429	Вопрос 8	Как называется явление скопления микроскопических капелек воды в нижних слоях атмосферы?	images/2020/10/01/3_b13v8.jpg	Мгла.\r\nМорось.\r\nДымка.\r\nТуман.	Туман.
430	Вопрос 9	На каком участке Морского канала суда длиной менее 20 м могут плавать без разрешения Поста регулирования и контроля за движением судов?	images/2020/10/01/3_b13v9.jpg	От пикета №1 до пикета №77 и от пикета № 330 до двухъярусного моста.\r\nПо всему каналу.\r\nОт пикета № 1 до пикета № 330.\r\nРазрешения требуется в любом случае.	От пикета №1 до пикета №77 и от пикета № 330 до двухъярусного моста.
431	Вопрос 10	Как называется элемент волнения, обозначенный на рисунке цифрой «5»?	images/2020/10/01/3_b13v10.jpg	Гребень.\r\nСклон.\r\nПодошва.\r\nПодметка.	Склон.
432	Вопрос 1	В какой стороне необходимо оставить изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b14v1.jpg	к E.\r\nк S.\r\nк N.\r\nк W.	к E.
433	Вопрос 2	Знаки какого судна указаны на иллюстрации?	images/2020/10/01/3_b14v2.jpg	Судно, занятое такой буксировкой, которая значительно ограничивает возможности судов, участвующих в такой буксировочной операции, отклониться от своего курса.\r\nСудно, стоящее на мели.\r\nСудно, оказавшееся в особых обстоятельствах, которые не упоминаются в Правилах.\r\nСудно, занятое подводными операциями и ограниченное в возможности маневрировать.	Судно, занятое подводными операциями и ограниченное в возможности маневрировать.
434	Вопрос 3	Какое адм. наказание предусмотрено за управление маломерным судном, не несущим идентификационных номеров?	images/2020/10/01/3_b14v3.jpg	Лишение права управления.\r\nШтраф.\r\nПредупреждение или штраф.\r\nПредупреждение или штраф, или лишение права управления.	Штраф.
435	Вопрос 4	Как должно осуществляться маневрирование маломерных судов при расхождении на водных объектах, не имеющих навигационной обстановки?	images/2020/10/01/3_b14v4.jpg	С учетом направления течения.\r\nС учетом левостороннего движения.\r\nПорядок расхождения не установлен.\r\nС учетом правостороннего движения.	С учетом правостороннего движения.
436	Вопрос 5	Условия задачи приведены.	images/2020/10/01/3_b14v5.jpg	215° ,0\r\n220° ,0\r\n230° ,0\r\n235° ,0	215° ,0
437	Вопрос 6	Система ограждения МАМС, Регион «А» (европейские воды). На рисунке показан	images/2020/10/01/3_b14v6.jpg	Буй, ограждающий отдельные опасности малых размеров.\r\nБуй, обозначающий ось фарватера.\r\nБуй, ограждающий специальный район.\r\nБуй, ограждающий левую сторону фарватера (Регион А).	Буй, ограждающий отдельные опасности малых размеров.
438	Вопрос 7	На каком канале ведется радиотелефонный обмен по бедствию в морском районе А1 ГМССБ?	images/2020/10/01/3_b14v7.jpg	На 70 канале УКВ.\r\nНа 13 канале УКВ.\r\nНа 06 канале УКВ.\r\nНа 16 канале УКВ.	На 16 канале УКВ.
439	Вопрос 8	Как называется интенсивное (при забрызгивании) нарастание слоя льда на палубе, фальшборте, надстройках, рангоуте и палубных судовых устройствах?	images/2020/10/01/3_b14v8.jpg	Замораживание.\r\nНаледь.\r\nОбмораживание.\r\nОбледенение.	Обледенение.
440	Вопрос 9	На каком канале суда должны поддерживать связь с СУДС на рекомендованных путях Калининградского залива?	images/2020/10/01/3_b14v9.jpg	На 9 канале.\r\nНа 74 канале.\r\nНа 16 канале.\r\nНа 67 канале.	На 74 канале.
441	Вопрос 10	Какой тип волнения показан на рисунке?	images/2020/10/01/3_b14v10.jpg	Прибойные волны.\r\nЗыбь.\r\nВетровое волнение.\r\nСтоячие волны.	Прибойные волны.
442	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/01/3_b15v1.jpg	к E.\r\nк N.\r\nк W.\r\nк S.	к S.
443	Вопрос 2	Какой из приведенных знаков несет судно, занятое тралением?	images/2020/10/01/3_b15v2.jpg	Б.\r\nА.\r\nВ.\r\nГ.	Б.
444	Вопрос 3	Какое адм. наказание предусмотрено за преднамеренную остановку маломерного судна в запрещенном месте?	images/2020/10/01/3_b15v3.jpg	Лишение права управления.\r\nПредупреждение.\r\nШтраф.\r\nПредупреждение или штраф, или лишение права управления.	Предупреждение или штраф, или лишение права управления.
445	Вопрос 4	В чьи обязанности входит проведение инструктажа пассажиров по правилам поведения на маломерном судне во время плавания?	images/2020/10/01/3_b15v4.jpg	Государственного инспектора по маломерным судам.\r\nСудоводителя.\r\nДолжностного лица базы (сооружения) для стоянки маломерных судов.\r\nСудовладельца.	Судоводителя.
446	Вопрос 5	Условия задачи приведены	images/2020/10/01/3_b15v5.jpg	240°,0 л/б\r\n240°,0 п/б\r\n160°,0 п/б\r\n160°,0 л/б	160°,0 п/б
447	Вопрос 6	Как называется угол между диаметральной плоскостью судна и направлением на наблюдаемый предмет?	images/2020/10/01/3_b15v6.jpg	Курсовой угол.\r\nУгол сноса.\r\nИстинный курс.\r\nИстинный пеленг.	Курсовой угол.
448	Вопрос 7	Каким сигналом особой важности предваряется вызов бедствия в радиотелефонии?	images/2020/10/01/3_b15v7.jpg	MAYDAY.\r\nPAN PAN.\r\nSECURITE.\r\nURGENCY.	MAYDAY.
449	Вопрос 8	Признаком какого изменения погоды является резкое падение атмосферного давления?	images/2020/10/01/3_b15v8.jpg	Изменения направления ветра.\r\nУлучшения погоды.\r\nУстойчивой хорошей погоды.\r\nПриближения шторма.	Приближения шторма.
450	Вопрос 9	На каком канале суда должны поддерживать связь с СУДС на участке Калининградского морского канала от пикета №246 до границы рейда морского порта Калининград?	images/2020/10/01/3_b15v9.jpg	На 74 канале.\r\nНа 9 канале.\r\nНа 16 канале.\r\nНа 67 канале.	На 74 канале.
451	Вопрос 10	Как называется элемент волнения, обозначенный на рисунке цифрой «4»?	images/2020/10/01/3_b15v10.jpg	Длина волны.\r\nПолупериод.\r\nВысота волны.\r\nГребень.	Высота волны.
452	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/02/3_b16v1.jpg	к E\r\nк N\r\nк S\r\nк W	к E
453	Вопрос 2	Какое судно несет изображенный на иллюстрации знак?	images/2020/10/02/3_b16v2.jpg	Буксирное, при длине менее 200 м.\r\nБуксирное, при длине буксира более 200 м.\r\nРыболовное, длиной менее 20 м.\r\nРыболовное, занятое ловом рыбы.	Рыболовное, занятое ловом рыбы.
454	Вопрос 3	Какое адм. наказание предусмотрено за передачу управления маломерным судном лицу, не имеющему на это права?	images/2020/10/02/3_b16v3.jpg	Штраф.\r\nЛишение права управления.\r\nПредупреждение.\r\nПредупреждение или штраф.	Штраф.
455	Вопрос 4	Кто допускается к управлению маломерным судом?	images/2020/10/02/3_b16v4.jpg	Лицо, имеющее действительный диплом на право занятия судоводительской должности.\r\nЛицо, имеющее справку об окончании курсов подготовки судоводителей маломерных судов.\r\nЛюбой совершеннолетний гражданин Российской Федерации.\r\nЛицо, имеющее действующее удостоверение на право управления маломерным судном.	Лицо, имеющее действующее удостоверение на право управления маломерным судном.
456	Вопрос 5	Условия задачи приведены.	images/2020/10/02/3_b16v5.jpg	301°,0\r\n295°,0\r\n299°,0\r\n305°,0	305°,0
457	Вопрос 6	Как называется угол отклонения пути судна от курса под действием ветра?	images/2020/10/02/3_b16v6.jpg	Склонение.\r\nДрейф.\r\nУклон.\r\nСнос.	Дрейф.
458	Вопрос 7	В каком из перечисленных случаев подается сигнал бедствия?	images/2020/10/02/3_b16v7.jpg	В случае угрозы серьезной и неизбежной опасности судну или людям.\r\nВ случае ухудшения погодных условий.\r\nВ случае выхода из строя аварийного источника электроэнергии.\r\nВ случае обнаружения мели, не нанесенной на навигационные карты.	В случае угрозы серьезной и неизбежной опасности судну или людям.
459	Вопрос 8	Как называется прибор для наблюдения за изменениями атмосферного давления и графической записи показаний?	images/2020/10/02/3_b16v8.jpg	Барометр.\r\nГидролокатор.\r\nАнемометр.\r\nБарограф.	Барограф.
460	Вопрос 9	На каком канале суда должны поддерживать связь с капитаном морского порта на участке Калининградского морского канала от пикета №246 до двухъярусного моста г. Калининграда?	images/2020/10/02/3_b16v9.jpg	На 67 канале.\r\nНа 9 канале.\r\nНа 16 канале.\r\nНа 74 канале.	На 67 канале.
461	Вопрос 10	Какова физическая причина возникновения приливо-отливных колебаний уровня моря?	images/2020/10/02/3_b16v10.jpg	Из-за влияния сил притяжения Солнца.\r\nИз-за влияния сил притяжения Солнца и Луны.\r\nИз-за влияния сил притяжения планет Солнечной системы.\r\nИз-за влияния набегания волн зыби на береговую черту.	Из-за влияния сил притяжения Солнца и Луны.
462	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/02/3_b17v1.jpg	к N\r\nк S\r\nк W\r\nс любой	с любой
463	Вопрос 2	Какое судно несет изображенный на иллюстрации знак?	images/2020/10/02/3_b17v2.jpg	Судно, идущее под парусом и одновременно приводимое в движение механической установкой.\r\nПарусное судно.\r\nБуксир.\r\nРыболовное.	Судно, идущее под парусом и одновременно приводимое в движение механической установкой.
464	Вопрос 3	Какое адм. наказание предусмотрено за управление судном с нарушением ограничений по району плавания?	images/2020/10/02/3_b17v3.jpg	Предупреждение.\r\nПредупреждение или штраф, или лишение права управления.\r\nШтраф.\r\nШтраф или лишение права управления.	Штраф.
465	Вопрос 4	При наличии какой из перечисленных неисправностей пользование маломерным судном запрещается?	images/2020/10/02/3_b17v4.jpg	Наличие вибрации.\r\nРазгерметизация воздушных ящиков.\r\nНесоответствие нормам комплектации и оборудования судна, указанным в судовом билете.\r\nПри любой из перечисленных.	При любой из перечисленных.
466	Вопрос 5	Условия задачи приведены.	images/2020/10/02/3_b17v5.jpg	Δφ=00°20′,0S; Δλ=05°20′,0E\r\nΔφ=00°20′,0N; Δλ=04°40′,0W\r\nΔφ=00°20′,0N; Δλ=04°40′,0E\r\nΔφ=00°20′,0S; Δλ=04°40′,0W	Δφ=00°20′,0N; Δλ=04°40′,0W
467	Вопрос 6	Как называется угол между нордовой частью истинного меридиана и диаметральной плоскостью судна?	images/2020/10/02/3_b17v6.jpg	Истинный курс.\r\nКомпасный курс.\r\nКомпасный пеленг.\r\nИстинный пеленг.	Истинный курс.
468	Вопрос 7	Какое действие необходимо предпринять в случае приема сигнала бедствия от другого судна в ЦИВ?	images/2020/10/02/3_b17v7.jpg	Прекратить все передачи, которые могут создать помехи радиообмену и установить наблюдение на 16 канале УКВ.\r\nСвязаться с береговой радиостанцией для получения инструкций.\r\nРетранслировать сигнал бедствия.\r\nДать подтверждение приема сигнала бедствия судну, терпящему бедствие.	Прекратить все передачи, которые могут создать помехи радиообмену и установить наблюдение на 16 канале УКВ.
469	Вопрос 8	Какое название носят приливы, имеющие две полные и две малые воды в течение лунных суток?	images/2020/10/02/3_b17v8.jpg	Полусуточные.\r\nСуточные.\r\nСизигийные.\r\nКвадратурные.	Полусуточные.
470	Вопрос 9	Каким судам разрешена швартовка к берегоукрепительным сооружениям дамб и порта?	images/2020/10/02/3_b17v9.jpg	Если на судне получено разрешение от АМП Калининград.\r\nВ случае потери хода в КМК.\r\nВыполняющим ремонтные работы и обслуживающие СНО.\r\nШвартовка запрещена всем судам.	Выполняющим ремонтные работы и обслуживающие СНО.
471	Вопрос 10	Как называется элемент волнения, обозначенный на рисунке цифрой «1»?	images/2020/10/02/3_b17v10.jpg	Длина волны.\r\nПолупериод.\r\nВысота волны.\r\nГребень.	Длина волны.
472	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/02/3_b18v1.jpg	На рыболовном.\r\nНа терпящем бедствие.\r\nНа стоящем на якоре.\r\nНа лишенном возможности управляться.	На терпящем бедствие.
473	Вопрос 2	Какое значение имеют три шара, расположенные по вертикальной линии?	images/2020/10/02/3_b18v2.jpg	Судно, стесненное своей осадкой.\r\nСудно, занятое дноуглубительными работами.\r\nСудно занятое работами по устранению минной опасности.\r\nСудно, стоящее на мели.	Судно, стоящее на мели.
474	Вопрос 3	Какое адм. наказание предусмотрено за преднамеренную остановку или стоянку судна под судоходным пролетом моста?	images/2020/10/02/3_b18v3.jpg	Наказание не предусмотрено.\r\nПредупреждение или штраф, или лишение права управления.\r\nПредупреждение или штраф.\r\nШтраф.	Предупреждение или штраф, или лишение права управления.
475	Вопрос 4	При наличии какой из перечисленных неисправностей пользование маломерным судном запрещается?	images/2020/10/02/3_b18v4.jpg	Повреждение леерного ограждения.\r\nПри любой из перечисленных.\r\nОтсутствие или неисправность ленточного, или винтового стопора для удержания якорной цепи.\r\nНеисправность отличительных (бортовых) огней.	Неисправность отличительных (бортовых) огней.
476	Вопрос 5	Условия задачи приведены.	images/2020/10/02/3_b18v5.jpg	107°,0\r\n103°,0\r\n93°,0\r\n97°,0	103°,0
477	Вопрос 6	Как называется угол, заключенный между истинным и компасным меридианами, равный алгебраической сумме магнитного склонения и девиации?	images/2020/10/02/3_b18v6.jpg	Поправка курса.\r\nПоправка румба.\r\nПоправка меридиана.\r\nПоправка компаса.	Поправка компаса.
478	Вопрос 7	В каком случае передается сигнал бедствия в ЦИВ без предварительного редактирования?	images/2020/10/02/3_b18v7.jpg	В экстренных ситуациях, когда нет времени для ввода данных в формат вызова бедствия в ЦИВ.\r\nКогда в контроллер ЦИВ радиоустановки не введено текущее время.\r\nКогда в контроллер ЦИВ радиоустановки не введены текущие координаты.\r\nЕсли на судне имеется АРБ.	В экстренных ситуациях, когда нет времени для ввода данных в формат вызова бедствия в ЦИВ.
479	Вопрос 8	Какое название носят приливы, имеющие одну полную и одну малую воду в течение суток?	images/2020/10/02/3_b18v8.jpg	Полусуточные.\r\nСуточные.\r\nСизигийные.\r\nКвадратурные.	Суточные.
480	Вопрос 9	Кому разрешено находиться на оградительных дамбах Калининградского морского канала?	images/2020/10/02/3_b18v9.jpg	Занятым ловом рыбы.\r\nЗанятым специальными работами.\r\nПолучившим разрешение от подразделения пограничного управления ФСБ России.\r\nПолучившим разрешение от АМП Калининград.	Занятым специальными работами.
481	Вопрос 10	Укажите единицу измерения силы ветра.	images/2020/10/02/3_b18v10.jpg	м/сек.\r\nкм/час.\r\nБалл.\r\nГрадус.	Балл.
482	Вопрос 1	Какое движение флага- отмашки днем означает сигнал "Прошу остановиться"?	images/2020/10/02/3_b19v1.jpg	Вертикальное.\r\nГоризонтальное.\r\nВращательное.\r\nЛюбое.	Горизонтальное.
483	Вопрос 2	На каком судне выставляются изображенные на иллюстрации знаки?	images/2020/10/02/3_b19v2.jpg	На судне, ограниченном в возможности маневрировать.\r\nНа рыболовном судне.\r\nНа судне, стоящем на якоре.\r\nНа судне, лишенном возможности управляться.	На судне, ограниченном в возможности маневрировать.
484	Вопрос 3	Какое адм. наказание предусматривается за несоблюдение лицом, управляющим судном, требований навигац. знаков?	images/2020/10/02/3_b19v3.jpg	Административный штраф.\r\nЛишение права управления маломерным судном.\r\nПредупреждение.\r\nОдно из вышеперечисленных.	Одно из вышеперечисленных.
485	Вопрос 4	В течение какого срока действует удостоверение на право управления маломерным судном с момента его выдачи?	images/2020/10/02/3_b19v4.jpg	5 лет.\r\n15 лет.\r\nБессрочно.\r\n10 лет.	10 лет.
486	Вопрос 5	Снимите с карты координаты обсервованного места.	images/2020/10/02/3_b19v5.jpg	φ=46°03′,0N; λ=37°11′,0E\r\nφ=45°57′,0N; λ=37°09′,0E\r\nφ=45°57′,0N; λ=04°40′,0E\r\nφ=46°03′,0N; λ=37°09′,0E	φ=45°57′,0N; λ=37°09′,0E
487	Вопрос 6	Система ограждения МАМС, Регион «А» (европейские воды). На рисунке показан	images/2020/10/02/3_b19v6.jpg	Буй, ограждающий отдельные опасности малых размеров.\r\nБуй, обозначающий ось фарватера.\r\nБуй, ограждающий специальный район.\r\nБуй, ограждающий левую сторону фарватера (Регион А).	Буй, ограждающий отдельные опасности малых размеров.
488	Вопрос 7	Какой УКВ канал используется в ГМССБ для связи «мостик- мостик» в целях обеспечения навигационной безопасности?	images/2020/10/02/3_b19v7.jpg	15.\r\n70.\r\n6.\r\n13.	13.
489	Вопрос 8	Как называется ветер, при котором воздух перемещается с запада на восток?	images/2020/10/02/3_b19v8.jpg	Западный.\r\nВосточный.\r\nСеверный.\r\nЮжный.	Западный.
490	Вопрос 9	Каким документом должны руководствоваться судоводители при плавании от приемного буя № 1 порта Балтийск до двухъярусного железнодорожного моста в г. Калининграде?	images/2020/10/02/3_b19v9.jpg	Обязательными постановлениями в морском порту Калининград.\r\nКодексом торгового мореплавания.\r\nПравилами пользования водными объектами Калининградской области для плавания маломерных судов.\r\nКодексом внутреннего водного транспорта.	Обязательными постановлениями в морском порту Калининград.
491	Вопрос 10	Что означает выражение «Шторм 9 баллов»?	images/2020/10/02/3_b19v10.jpg	Волна высотой 9 метров.\r\nВетер скоростью 9 м/сек.\r\nВетер скоростью 9 км/час.\r\nВетер силой 9 баллов.	Ветер силой 9 баллов.
492	Вопрос 1	Что обозначает изображенный на иллюстрации плавучий навигационный знак?	images/2020/10/02/3_b20v1.jpg	Левую сторону фарватера.\r\nОсь фарватера.\r\nПравую сторону фарватера.\r\nОсновной фарватер справа.	Правую сторону фарватера.
493	Вопрос 2	Какое судно несет изображенный на иллюстрации знак?	images/2020/10/02/3_b20v2.jpg	Судно на мели.\r\nСудно, лишенное возможности маневрировать.\r\nРыболовное судно.\r\nСудно на якоре.	Судно на якоре.
494	Вопрос 3	Какое адм. наказание предусмотрено за эксплуатацию судна, у которого содержание загрязняющих веществ в выбросах превышает установленные государственными стандартами нормативы?	images/2020/10/02/3_b20v3.jpg	Наказания не предусмотрено.\r\nЛишение права управления.\r\nПредупреждение или штраф.\r\nШтраф.	Штраф.
495	Вопрос 4	Какому из маломерных судов должно уступить дорогу маломерное судно "А"?	images/2020/10/02/3_b20v4.jpg	В.\r\nОбоим судам.\r\nНи одному из судов.\r\nБ.	Б.
496	Вопрос 5	Условия задачи: Судно прошло мерную линию (3 секущих створа с расстояниями между ними по 1,0 мили) на малом ходу за 20 мин., а на полном ходу - за 5 мин. Рассчитать скорость судна на малом и полном ходах?	images/2020/10/02/3_b20v5.jpg	На малом ходу - 4 узл, на полном ходу - 20 узл.\r\nНа малом ходу - 8 узл, на полном ходу - 28 узл.\r\nНа малом ходу - 10 узл, на полном ходу - 32 узл.\r\nНа малом ходу - 6 узл, на полном ходу - 24 узл.	На малом ходу - 6 узл, на полном ходу - 24 узл.
497	Вопрос 6	Как называется угол между линией истинного курса и путевым углом (линией пути) на течении?	images/2020/10/02/3_b20v6.jpg	Угол отклонения.\r\nУгол сноса.\r\nПоправка лага.\r\nДрейф.	Угол сноса.
498	Вопрос 7	В каком из перечисленных случаев не следует передавать сигнал бедствия?	images/2020/10/02/3_b20v7.jpg	Ночью, в штормовую погоду человек выпал за борт.\r\nМоторное маломерное судно с неработающим двигателем несет на скалистый берег в штормовую погоду.\r\nЧлен экипажа сломал ногу, испытывает сильные болевые ощущения.\r\nНа маломерном судне пробоина, капитаном принято решение покинуть судно.	Член экипажа сломал ногу, испытывает сильные болевые ощущения.
499	Вопрос 8	Какое название носят приливы, которые наблюдаются в дни новолуния и полнолуния?	images/2020/10/02/3_b20v8.jpg	Полусуточные.\r\nСуточные.\r\nСизигийные.\r\nКвадратурные.	Сизигийные.
500	Вопрос 9	В какое время года осуществляется судоходство в районах с морским режимом плавания Калининградской области?	images/2020/10/02/3_b20v9.jpg	Круглый год в морском порту Калининград.\r\nЗимой в Калининградском заливе в период ледостава.\r\nВ морских прибрежных водах Балтийского моря.\r\nВо всех указанных случаях.	Во всех указанных случаях.
501	Вопрос 10	Как называется атмосферное явление, изображенное на рисунке?	images/2020/10/02/3_b20v10.jpg	Смерч.\r\nГало.\r\nТорнадо.\r\nРадуга.	Гало.
\.


--
-- Data for Name: tests_app_question_ticket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tests_app_question_ticket (id, question_id, ticket_id) FROM stdin;
1	1	1
3	2	1
4	3	1
5	4	3
6	5	1
7	6	1
8	7	1
9	8	1
10	9	1
11	10	1
12	11	1
13	12	2
14	13	2
15	14	2
16	15	2
17	16	2
18	17	2
19	18	2
20	19	2
21	20	2
22	21	2
23	22	5
24	23	5
25	24	5
26	25	5
27	26	5
28	27	5
29	28	5
30	29	5
31	30	5
32	31	5
33	32	10
34	33	10
35	34	10
36	35	10
37	36	10
38	37	10
39	38	10
40	39	10
41	40	10
42	41	10
43	42	13
44	43	13
45	44	13
46	45	13
47	46	13
48	47	13
49	48	13
50	49	13
51	50	13
52	51	13
53	52	16
54	53	16
55	54	16
56	55	16
57	56	16
58	57	16
59	58	16
60	59	16
61	60	16
62	61	16
63	62	19
64	63	19
65	64	19
66	65	19
67	66	19
68	67	19
69	68	19
70	69	19
71	70	19
72	71	19
73	72	22
74	73	22
75	74	22
76	75	22
77	76	22
78	77	22
79	78	22
80	79	22
81	80	22
82	81	22
83	82	25
84	83	25
85	84	25
86	85	25
87	86	25
88	87	25
89	88	25
90	89	25
91	90	25
92	91	25
93	92	28
94	93	28
95	94	28
96	95	28
97	96	28
98	97	28
99	98	28
100	99	28
101	100	28
102	101	28
103	102	31
104	103	31
105	104	31
106	105	31
107	106	31
108	107	31
109	108	31
110	109	31
111	110	31
112	111	31
113	112	33
114	113	33
115	114	33
116	115	33
117	116	33
118	117	33
119	118	33
120	119	33
121	120	33
122	121	33
123	122	35
124	123	35
125	124	35
126	125	35
127	126	35
128	127	35
129	128	35
130	129	35
131	130	35
132	131	35
133	132	37
134	133	37
135	134	37
136	135	37
137	136	37
138	137	37
139	138	37
140	139	37
141	140	37
142	141	37
143	142	39
144	143	39
145	144	39
146	145	39
147	146	39
148	147	39
149	148	39
150	149	39
151	150	39
152	151	39
153	152	41
154	153	41
155	154	41
156	155	41
157	156	41
158	157	41
159	158	41
160	159	41
161	160	41
162	161	41
163	162	43
164	163	43
165	164	43
166	165	43
167	166	43
168	167	43
169	168	43
170	169	43
171	170	43
172	171	43
173	172	45
174	173	45
175	174	45
176	175	45
177	176	45
178	177	45
179	178	45
180	179	45
181	180	45
182	181	45
183	182	47
184	183	47
185	184	47
186	185	47
187	186	47
188	187	47
189	188	47
190	189	47
191	190	47
192	191	47
193	192	49
194	193	49
195	194	49
196	195	49
197	196	49
198	197	49
199	198	49
200	199	49
201	200	49
202	201	49
203	202	4
204	203	4
205	204	4
206	205	4
207	206	4
208	207	4
209	208	4
210	209	4
211	210	4
212	211	4
213	212	6
214	213	6
215	214	6
216	215	6
217	216	6
218	217	6
219	218	6
220	219	6
221	220	6
222	221	6
223	222	8
224	223	8
225	224	8
226	225	8
227	226	8
228	227	8
229	228	8
230	229	8
231	230	8
232	231	8
233	232	11
234	233	11
235	234	11
236	235	11
237	236	11
238	237	11
239	238	11
240	239	11
241	240	11
242	241	11
243	242	14
244	243	14
245	244	14
246	245	14
247	246	14
248	247	14
249	248	14
250	249	14
251	250	14
252	251	14
253	252	17
254	253	17
255	254	17
256	255	17
257	256	17
258	257	17
259	258	17
260	259	17
261	260	17
262	261	17
263	262	20
264	263	20
265	264	20
266	265	20
267	266	20
268	267	20
269	268	20
270	269	20
271	270	20
272	271	20
273	272	23
274	273	23
275	274	23
276	275	23
277	276	23
278	277	23
279	278	23
280	279	23
281	280	23
282	281	23
283	282	26
284	283	26
285	284	26
286	285	26
287	286	26
288	287	26
289	288	26
290	289	26
291	290	26
292	291	26
293	292	29
294	293	29
295	294	29
296	295	29
297	296	29
298	297	29
299	298	29
300	299	29
301	300	29
302	301	29
303	302	3
304	303	3
305	304	3
306	305	3
307	306	3
308	307	3
309	308	3
310	309	3
311	310	3
312	311	3
313	312	7
314	313	7
315	314	7
316	315	7
317	316	7
318	317	7
319	318	7
320	319	7
321	320	7
322	321	7
323	322	9
324	323	9
325	324	9
326	325	9
327	326	9
328	327	9
329	328	9
330	329	9
331	330	9
332	331	9
333	332	12
334	333	12
335	334	12
336	335	12
337	336	12
338	337	12
339	338	21
340	339	12
341	340	12
342	341	12
343	342	15
344	343	15
345	344	15
346	345	15
347	346	15
348	347	15
349	348	15
350	349	15
351	350	15
352	351	15
353	352	18
354	353	18
355	354	18
356	355	18
357	356	18
358	357	18
359	358	18
360	359	18
361	360	18
362	361	18
363	362	21
364	363	21
365	364	21
366	365	21
367	366	21
368	367	21
369	368	21
370	369	21
371	370	21
372	371	21
373	372	24
374	373	24
375	374	24
376	375	24
377	376	24
378	377	24
379	378	24
380	379	24
381	380	24
382	381	24
383	382	27
384	383	27
385	384	27
386	385	27
387	386	27
388	387	27
389	388	27
390	389	27
391	390	27
392	391	27
393	392	30
394	393	30
395	394	30
396	395	30
397	396	30
398	397	30
399	398	30
400	399	30
401	400	30
402	401	30
403	402	32
404	403	32
405	404	32
406	405	32
407	406	32
408	407	32
409	408	32
410	409	32
411	410	32
412	411	32
413	412	34
414	413	34
415	414	34
416	415	34
417	416	34
418	417	34
419	418	34
420	419	33
421	420	34
422	421	34
423	422	36
424	423	36
425	424	36
426	425	36
427	426	36
428	427	36
429	428	36
430	429	36
431	430	36
432	431	36
433	432	38
434	433	38
435	434	38
436	435	38
437	436	38
438	437	38
439	438	38
440	439	38
441	440	38
442	441	38
443	442	40
444	443	40
445	444	40
446	445	40
447	446	40
448	447	40
449	448	40
450	449	40
451	450	40
452	451	40
453	452	42
454	453	42
455	454	42
456	455	42
457	456	42
458	457	42
459	458	42
460	459	42
461	460	42
462	461	42
463	462	44
464	463	44
465	464	44
466	465	44
467	466	44
468	467	44
469	468	44
470	469	44
471	470	44
472	471	44
473	472	46
474	473	46
475	474	46
476	475	46
477	476	46
478	477	46
479	478	46
480	479	46
481	480	46
482	481	46
483	482	48
484	483	48
485	484	48
486	485	48
487	486	48
488	487	48
489	488	48
490	489	48
491	490	48
492	491	48
493	492	50
494	493	50
495	494	50
496	495	50
497	496	50
498	497	50
499	498	50
500	499	50
501	500	50
502	501	50
\.


--
-- Data for Name: tests_app_testcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tests_app_testcategory (id, name, slug) FROM stdin;
1	Билеты ГИМС ВВП	bilety-gims-vvp
2	Билеты ГИМС МП	bilety-gims-mp
3	Билеты ГИМС ВП	bilety-gims-vp
\.


--
-- Data for Name: tests_app_ticket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tests_app_ticket (id, title, slug, category_id) FROM stdin;
1	Билет 1	bilet-1	1
2	Билет 2	bilet-2	1
3	Билет 1	bilet-1	2
4	Билет 1	bilet-1	3
5	Билет 3	bilet-3	1
6	Билет 2	bilet-2	3
7	Билет 2	bilet-2	2
8	Билет 3	bilet-3	3
9	Билет 3	bilet-3	2
10	Билет 4	bilet-4	1
11	Билет 4	bilet-4	3
12	Билет 4	bilet-4	2
13	Билет 5	bilet-5	1
14	Билет 5	bilet-5	3
15	Билет 5	bilet-5	2
16	Билет 6	bilet-6	1
17	Билет 6	bilet-6	3
18	Билет 6	bilet-6	2
19	Билет 7	bilet-7	1
20	Билет 7	bilet-7	3
21	Билет 7	bilet-7	2
22	Билет 8	bilet-8	1
23	Билет 8	bilet-8	3
24	Билет 8	bilet-8	2
25	Билет 9	bilet-9	1
26	Билет 9	bilet-9	3
27	Билет 9	bilet-9	2
28	Билет 10	bilet-10	1
29	Билет 10	bilet-10	3
30	Билет 10	bilet-10	2
31	Билет 11	bilet-11	1
32	Билет 11	bilet-11	2
33	Билет 12	bilet-12	1
34	Билет 12	bilet-12	2
35	Билет 13	bilet-13	1
36	Билет 13	bilet-13	2
37	Билет 14	bilet-14	1
38	Билет 14	bilet-14	2
39	Билет 15	bilet-15	1
40	Билет 15	bilet-15	2
41	Билет 16	bilet-16	1
42	Билет 16	bilet-16	2
43	Билет 17	bilet-17	1
44	Билет 17	bilet-17	2
45	Билет 18	bilet-18	1
46	Билет 18	bilet-18	2
47	Билет 19	bilet-19	1
48	Билет 19	bilet-19	2
49	Билет 20	bilet-20	1
50	Билет 20	bilet-20	2
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 564, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: tests_app_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tests_app_question_id_seq', 501, true);


--
-- Name: tests_app_question_ticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tests_app_question_ticket_id_seq', 502, true);


--
-- Name: tests_app_testcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tests_app_testcategory_id_seq', 3, true);


--
-- Name: tests_app_ticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tests_app_ticket_id_seq', 50, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: tests_app_question tests_app_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_question
    ADD CONSTRAINT tests_app_question_pkey PRIMARY KEY (id);


--
-- Name: tests_app_question_ticket tests_app_question_ticket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_question_ticket
    ADD CONSTRAINT tests_app_question_ticket_pkey PRIMARY KEY (id);


--
-- Name: tests_app_question_ticket tests_app_question_ticket_question_id_ticket_id_d81f8a8a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_question_ticket
    ADD CONSTRAINT tests_app_question_ticket_question_id_ticket_id_d81f8a8a_uniq UNIQUE (question_id, ticket_id);


--
-- Name: tests_app_testcategory tests_app_testcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_testcategory
    ADD CONSTRAINT tests_app_testcategory_pkey PRIMARY KEY (id);


--
-- Name: tests_app_testcategory tests_app_testcategory_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_testcategory
    ADD CONSTRAINT tests_app_testcategory_slug_key UNIQUE (slug);


--
-- Name: tests_app_ticket tests_app_ticket_category_id_slug_852cb416_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_ticket
    ADD CONSTRAINT tests_app_ticket_category_id_slug_852cb416_uniq UNIQUE (category_id, slug);


--
-- Name: tests_app_ticket tests_app_ticket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_ticket
    ADD CONSTRAINT tests_app_ticket_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: tests_app_question_ticket_question_id_eb000538; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tests_app_question_ticket_question_id_eb000538 ON public.tests_app_question_ticket USING btree (question_id);


--
-- Name: tests_app_question_ticket_ticket_id_103504c4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tests_app_question_ticket_ticket_id_103504c4 ON public.tests_app_question_ticket USING btree (ticket_id);


--
-- Name: tests_app_testcategory_name_a56da114; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tests_app_testcategory_name_a56da114 ON public.tests_app_testcategory USING btree (name);


--
-- Name: tests_app_testcategory_name_a56da114_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tests_app_testcategory_name_a56da114_like ON public.tests_app_testcategory USING btree (name varchar_pattern_ops);


--
-- Name: tests_app_testcategory_slug_c00921b5_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tests_app_testcategory_slug_c00921b5_like ON public.tests_app_testcategory USING btree (slug varchar_pattern_ops);


--
-- Name: tests_app_ticket_category_id_5b4c29ad; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tests_app_ticket_category_id_5b4c29ad ON public.tests_app_ticket USING btree (category_id);


--
-- Name: tests_app_ticket_slug_61d92e82; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tests_app_ticket_slug_61d92e82 ON public.tests_app_ticket USING btree (slug);


--
-- Name: tests_app_ticket_slug_61d92e82_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tests_app_ticket_slug_61d92e82_like ON public.tests_app_ticket USING btree (slug varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tests_app_question_ticket tests_app_question_t_question_id_eb000538_fk_tests_app; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_question_ticket
    ADD CONSTRAINT tests_app_question_t_question_id_eb000538_fk_tests_app FOREIGN KEY (question_id) REFERENCES public.tests_app_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tests_app_question_ticket tests_app_question_t_ticket_id_103504c4_fk_tests_app; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_question_ticket
    ADD CONSTRAINT tests_app_question_t_ticket_id_103504c4_fk_tests_app FOREIGN KEY (ticket_id) REFERENCES public.tests_app_ticket(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tests_app_ticket tests_app_ticket_category_id_5b4c29ad_fk_tests_app; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests_app_ticket
    ADD CONSTRAINT tests_app_ticket_category_id_5b4c29ad_fk_tests_app FOREIGN KEY (category_id) REFERENCES public.tests_app_testcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

