--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0
-- Dumped by pg_dump version 11.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: option; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.option (
    option_id integer NOT NULL,
    name character varying NOT NULL,
    "isAnswer" boolean NOT NULL,
    selected boolean NOT NULL,
    state character varying NOT NULL,
    "questionQuestionId" integer
);


ALTER TABLE public.option OWNER TO postgres;

--
-- Name: option_option_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.option_option_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.option_option_id_seq OWNER TO postgres;

--
-- Name: option_option_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.option_option_id_seq OWNED BY public.option.option_id;


--
-- Name: question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question (
    question_id integer NOT NULL,
    name character varying NOT NULL,
    "questionTypeId" integer NOT NULL,
    answered boolean NOT NULL,
    state boolean NOT NULL,
    "quizQuizId" integer
);


ALTER TABLE public.question OWNER TO postgres;

--
-- Name: question_question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.question_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_question_id_seq OWNER TO postgres;

--
-- Name: question_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.question_question_id_seq OWNED BY public.question.question_id;


--
-- Name: quiz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz (
    quiz_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    "quizConfigConfigId" integer,
    "themeThemeId" integer
);


ALTER TABLE public.quiz OWNER TO postgres;

--
-- Name: quiz_config; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz_config (
    config_id integer NOT NULL,
    "allowBack" boolean NOT NULL,
    "allowReview" boolean NOT NULL,
    "autoMove" boolean NOT NULL,
    duration boolean NOT NULL,
    "pageSize" boolean NOT NULL,
    "requiredAll" boolean NOT NULL,
    "richText" boolean NOT NULL,
    "shuffleQuestions" boolean NOT NULL,
    "shuffleOptions" boolean NOT NULL,
    "showClock" boolean NOT NULL,
    "showPager" boolean NOT NULL
);


ALTER TABLE public.quiz_config OWNER TO postgres;

--
-- Name: quiz_config_config_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quiz_config_config_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quiz_config_config_id_seq OWNER TO postgres;

--
-- Name: quiz_config_config_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quiz_config_config_id_seq OWNED BY public.quiz_config.config_id;


--
-- Name: quiz_quiz_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quiz_quiz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quiz_quiz_id_seq OWNER TO postgres;

--
-- Name: quiz_quiz_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quiz_quiz_id_seq OWNED BY public.quiz.quiz_id;


--
-- Name: theme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.theme (
    theme_id integer NOT NULL,
    slug character varying NOT NULL,
    title character varying NOT NULL,
    logo character varying,
    description text NOT NULL
);


ALTER TABLE public.theme OWNER TO postgres;

--
-- Name: theme_theme_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.theme_theme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.theme_theme_id_seq OWNER TO postgres;

--
-- Name: theme_theme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.theme_theme_id_seq OWNED BY public.theme.theme_id;


--
-- Name: option option_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.option ALTER COLUMN option_id SET DEFAULT nextval('public.option_option_id_seq'::regclass);


--
-- Name: question question_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question ALTER COLUMN question_id SET DEFAULT nextval('public.question_question_id_seq'::regclass);


--
-- Name: quiz quiz_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz ALTER COLUMN quiz_id SET DEFAULT nextval('public.quiz_quiz_id_seq'::regclass);


--
-- Name: quiz_config config_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_config ALTER COLUMN config_id SET DEFAULT nextval('public.quiz_config_config_id_seq'::regclass);


--
-- Name: theme theme_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theme ALTER COLUMN theme_id SET DEFAULT nextval('public.theme_theme_id_seq'::regclass);


--
-- Data for Name: option; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.option (option_id, name, "isAnswer", selected, state, "questionQuestionId") FROM stdin;
3	Yes	t	f	 	5
4	No	f	f	 	5
5	Yes	f	f	 	6
6	No	t	f	 	6
8	vuex	f	f	 	7
9	Rxjs	t	f	 	7
10	spring\n	f	f	 	7
11	yes	f	f	 	8
12	No	f	f	 	8
13	emit event	t	f	 	9
14	state management	t	f	 	9
15	input property	f	f	 	9
\.


--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question (question_id, name, "questionTypeId", answered, state, "quizQuizId") FROM stdin;
5	is Php a web language?	0	f	f	1
6	is Angular a web Language?	0	f	f	2
8	is Vuetuify used in Angular?	0	f	f	2
9	To make a connection between Child and his parent's component we can use:	0	f	f	2
7	Which State management used in Agnular ?	0	f	f	2
\.


--
-- Data for Name: quiz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quiz (quiz_id, name, description, "quizConfigConfigId", "themeThemeId") FROM stdin;
2	Angular 8 (Begginer)	Bla Bla Bla	\N	3
1	PHP (begginer)	Bla bla bla\n	\N	2
\.


--
-- Data for Name: quiz_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quiz_config (config_id, "allowBack", "allowReview", "autoMove", duration, "pageSize", "requiredAll", "richText", "shuffleQuestions", "shuffleOptions", "showClock", "showPager") FROM stdin;
2	f	t	t	t	t	f	t	t	t	t	f
\.


--
-- Data for Name: theme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.theme (theme_id, slug, title, logo, description) FROM stdin;
2	web-dev	web development	#	web develoment quizes\n
3	front-end	front end	#	front end quizes\n
\.


--
-- Name: option_option_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.option_option_id_seq', 15, true);


--
-- Name: question_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.question_question_id_seq', 9, true);


--
-- Name: quiz_config_config_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_config_config_id_seq', 2, true);


--
-- Name: quiz_quiz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_quiz_id_seq', 2, true);


--
-- Name: theme_theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.theme_theme_id_seq', 3, true);


--
-- Name: quiz PK_27fd71399af3cba58196be3f507; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT "PK_27fd71399af3cba58196be3f507" PRIMARY KEY (quiz_id);


--
-- Name: quiz_config PK_37f89a0ada35ef5aaaf0adc132a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz_config
    ADD CONSTRAINT "PK_37f89a0ada35ef5aaaf0adc132a" PRIMARY KEY (config_id);


--
-- Name: question PK_7c755ccdc03ae2b6206ff00363a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT "PK_7c755ccdc03ae2b6206ff00363a" PRIMARY KEY (question_id);


--
-- Name: option PK_acabe8c34c5ba6da6b8bd6ea76f; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.option
    ADD CONSTRAINT "PK_acabe8c34c5ba6da6b8bd6ea76f" PRIMARY KEY (option_id);


--
-- Name: theme PK_e9014ea839acbe648f7f850fc9f; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theme
    ADD CONSTRAINT "PK_e9014ea839acbe648f7f850fc9f" PRIMARY KEY (theme_id);


--
-- Name: quiz REL_ece8b04d2151b24365fb1a5d3e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT "REL_ece8b04d2151b24365fb1a5d3e" UNIQUE ("quizConfigConfigId");


--
-- Name: theme UQ_36551e08e2fc4b5b68b48b4ef97; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.theme
    ADD CONSTRAINT "UQ_36551e08e2fc4b5b68b48b4ef97" UNIQUE (slug);


--
-- Name: option FK_2d4e6126f45821a7d1bdc405e3d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.option
    ADD CONSTRAINT "FK_2d4e6126f45821a7d1bdc405e3d" FOREIGN KEY ("questionQuestionId") REFERENCES public.question(question_id);


--
-- Name: question FK_4766c8843ab702b5f56a504c5c6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT "FK_4766c8843ab702b5f56a504c5c6" FOREIGN KEY ("quizQuizId") REFERENCES public.quiz(quiz_id);


--
-- Name: quiz FK_bd5108deffbb446b2f343421a10; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT "FK_bd5108deffbb446b2f343421a10" FOREIGN KEY ("themeThemeId") REFERENCES public.theme(theme_id);


--
-- Name: quiz FK_ece8b04d2151b24365fb1a5d3e2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT "FK_ece8b04d2151b24365fb1a5d3e2" FOREIGN KEY ("quizConfigConfigId") REFERENCES public.quiz_config(config_id);


--
-- PostgreSQL database dump complete
--
