--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-11-16 01:19:13

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 17243)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17242)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 219
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 227 (class 1259 OID 17273)
-- Name: course_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_category (
    id integer NOT NULL,
    id_course integer,
    id_category integer
);


ALTER TABLE public.course_category OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17272)
-- Name: course_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_category_id_seq OWNER TO postgres;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 226
-- Name: course_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.course_category_id_seq OWNED BY public.course_category.id;


--
-- TOC entry 225 (class 1259 OID 17266)
-- Name: course_video; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_video (
    id integer NOT NULL,
    id_course integer,
    id_video integer,
    view boolean
);


ALTER TABLE public.course_video OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17265)
-- Name: course_video_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.course_video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_video_id_seq OWNER TO postgres;

--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 224
-- Name: course_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.course_video_id_seq OWNED BY public.course_video.id;


--
-- TOC entry 216 (class 1259 OID 17225)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    id integer NOT NULL,
    title character varying,
    description text,
    level character varying,
    id_teacher uuid
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17224)
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO postgres;

--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 215
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- TOC entry 223 (class 1259 OID 17260)
-- Name: courses_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_users (
    id uuid NOT NULL,
    id_student uuid,
    id_course integer,
    progress integer
);


ALTER TABLE public.courses_users OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17234)
-- Name: courses_videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses_videos (
    id integer NOT NULL,
    title character varying,
    url character varying
);


ALTER TABLE public.courses_videos OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17233)
-- Name: courses_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_videos_id_seq OWNER TO postgres;

--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 217
-- Name: courses_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_videos_id_seq OWNED BY public.courses_videos.id;


--
-- TOC entry 222 (class 1259 OID 17252)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17251)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 221
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 214 (class 1259 OID 17217)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id uuid NOT NULL,
    name character varying,
    email character varying,
    password character varying,
    age integer,
    id_role integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 3208 (class 2604 OID 17246)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 17276)
-- Name: course_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_category ALTER COLUMN id SET DEFAULT nextval('public.course_category_id_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 17269)
-- Name: course_video id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_video ALTER COLUMN id SET DEFAULT nextval('public.course_video_id_seq'::regclass);


--
-- TOC entry 3206 (class 2604 OID 17228)
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- TOC entry 3207 (class 2604 OID 17237)
-- Name: courses_videos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_videos ALTER COLUMN id SET DEFAULT nextval('public.courses_videos_id_seq'::regclass);


--
-- TOC entry 3209 (class 2604 OID 17255)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 3382 (class 0 OID 17243)
-- Dependencies: 220
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories VALUES (1, 'Marketing');
INSERT INTO public.categories VALUES (2, 'Computación');


--
-- TOC entry 3389 (class 0 OID 17273)
-- Dependencies: 227
-- Data for Name: course_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.course_category VALUES (1, 1, 2);
INSERT INTO public.course_category VALUES (2, 2, 2);
INSERT INTO public.course_category VALUES (3, 1, 2);
INSERT INTO public.course_category VALUES (4, 2, 2);


--
-- TOC entry 3387 (class 0 OID 17266)
-- Dependencies: 225
-- Data for Name: course_video; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.course_video VALUES (1, 1, 1, false);
INSERT INTO public.course_video VALUES (2, 1, 2, false);


--
-- TOC entry 3378 (class 0 OID 17225)
-- Dependencies: 216
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.courses VALUES (1, 'SQL Basico', 'Curso sobre bases de datos', 'Principiante', '7ece0094-0a8f-47f5-8686-18e11acf0a3a');
INSERT INTO public.courses VALUES (2, 'Node.JS Intermedio', 'Curso sobre Back-End con Node.JS', 'Intermedio', '7ece0094-0a8f-47f5-8686-18e11acf0a3a');


--
-- TOC entry 3385 (class 0 OID 17260)
-- Dependencies: 223
-- Data for Name: courses_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.courses_users VALUES ('7d9d579d-99c8-4e49-b8f3-b6ebea6e4d65', 'aa5b7888-7c73-41ac-87bb-1f0be76ddf5d', 1, 20);
INSERT INTO public.courses_users VALUES ('dc8ff849-3956-4470-9d31-c7a0bf7802ca', 'aa5b7888-7c73-41ac-87bb-1f0be76ddf5d', 2, 0);


--
-- TOC entry 3380 (class 0 OID 17234)
-- Dependencies: 218
-- Data for Name: courses_videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.courses_videos VALUES (1, '¿Qué es una base de datos?', 'url');
INSERT INTO public.courses_videos VALUES (2, 'Creación de tablas', 'url');


--
-- TOC entry 3384 (class 0 OID 17252)
-- Dependencies: 222
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles VALUES (1, 'Estudiante');
INSERT INTO public.roles VALUES (2, 'Profesor');


--
-- TOC entry 3376 (class 0 OID 17217)
-- Dependencies: 214
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES ('aa5b7888-7c73-41ac-87bb-1f0be76ddf5d', 'Eduardo Pérez Quintana', 'nivel.17@hotmail.com', 'pass1234', 23, 1);
INSERT INTO public.users VALUES ('7ece0094-0a8f-47f5-8686-18e11acf0a3a', 'Sahid Kick', 'sahid.kick@academlo.com', 'pass1234', 22, 2);


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 219
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 2, true);


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 226
-- Name: course_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.course_category_id_seq', 4, true);


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 224
-- Name: course_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.course_video_id_seq', 2, true);


--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 215
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_id_seq', 2, true);


--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 217
-- Name: courses_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_videos_id_seq', 2, true);


--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 221
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- TOC entry 3219 (class 2606 OID 17250)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 17271)
-- Name: course_video course_video_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_video
    ADD CONSTRAINT course_video_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 17232)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 17264)
-- Name: courses_users courses_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_users
    ADD CONSTRAINT courses_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 17241)
-- Name: courses_videos courses_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_videos
    ADD CONSTRAINT courses_videos_pkey PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 17259)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 17223)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 17307)
-- Name: course_category course_category_id_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_category
    ADD CONSTRAINT course_category_id_category_fkey FOREIGN KEY (id_category) REFERENCES public.categories(id);


--
-- TOC entry 3233 (class 2606 OID 17302)
-- Name: course_category course_category_id_couse_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_category
    ADD CONSTRAINT course_category_id_couse_fkey FOREIGN KEY (id_course) REFERENCES public.courses(id);


--
-- TOC entry 3230 (class 2606 OID 17297)
-- Name: course_video course_video_id_course_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_video
    ADD CONSTRAINT course_video_id_course_fkey FOREIGN KEY (id_course) REFERENCES public.courses(id);


--
-- TOC entry 3231 (class 2606 OID 17292)
-- Name: course_video course_video_id_video_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_video
    ADD CONSTRAINT course_video_id_video_fkey FOREIGN KEY (id_video) REFERENCES public.courses_videos(id);


--
-- TOC entry 3227 (class 2606 OID 17287)
-- Name: courses courses_id_teacher_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_id_teacher_fkey FOREIGN KEY (id_teacher) REFERENCES public.users(id);


--
-- TOC entry 3228 (class 2606 OID 17282)
-- Name: courses_users courses_users_id_course_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_users
    ADD CONSTRAINT courses_users_id_course_fkey FOREIGN KEY (id_course) REFERENCES public.courses(id);


--
-- TOC entry 3229 (class 2606 OID 17277)
-- Name: courses_users courses_users_id_student_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses_users
    ADD CONSTRAINT courses_users_id_student_fkey FOREIGN KEY (id_student) REFERENCES public.users(id);


--
-- TOC entry 3226 (class 2606 OID 17312)
-- Name: users users_id_role_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_role_fkey FOREIGN KEY (id_role) REFERENCES public.roles(id);


-- Completed on 2022-11-16 01:19:13

--
-- PostgreSQL database dump complete
--

