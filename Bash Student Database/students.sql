--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (89, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (90, 'Web Programming');
INSERT INTO public.courses VALUES (91, 'Database Systems');
INSERT INTO public.courses VALUES (92, 'Computer Networks');
INSERT INTO public.courses VALUES (93, 'SQL');
INSERT INTO public.courses VALUES (94, 'Machine Learning');
INSERT INTO public.courses VALUES (95, 'Computer Systems');
INSERT INTO public.courses VALUES (96, 'Web Applications');
INSERT INTO public.courses VALUES (97, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (98, 'Python');
INSERT INTO public.courses VALUES (99, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (100, 'Calculus');
INSERT INTO public.courses VALUES (101, 'Game Architecture');
INSERT INTO public.courses VALUES (102, 'Algorithms');
INSERT INTO public.courses VALUES (103, 'UNIX');
INSERT INTO public.courses VALUES (104, 'Server Administration');
INSERT INTO public.courses VALUES (105, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (72, 'Database Administration');
INSERT INTO public.majors VALUES (73, 'Web Development');
INSERT INTO public.majors VALUES (74, 'Data Science');
INSERT INTO public.majors VALUES (75, 'Network Engineering');
INSERT INTO public.majors VALUES (76, 'Computer Programming');
INSERT INTO public.majors VALUES (77, 'Game Design');
INSERT INTO public.majors VALUES (78, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (72, 89);
INSERT INTO public.majors_courses VALUES (73, 90);
INSERT INTO public.majors_courses VALUES (72, 91);
INSERT INTO public.majors_courses VALUES (74, 89);
INSERT INTO public.majors_courses VALUES (75, 92);
INSERT INTO public.majors_courses VALUES (72, 93);
INSERT INTO public.majors_courses VALUES (74, 94);
INSERT INTO public.majors_courses VALUES (75, 95);
INSERT INTO public.majors_courses VALUES (76, 92);
INSERT INTO public.majors_courses VALUES (72, 96);
INSERT INTO public.majors_courses VALUES (77, 97);
INSERT INTO public.majors_courses VALUES (74, 98);
INSERT INTO public.majors_courses VALUES (76, 99);
INSERT INTO public.majors_courses VALUES (78, 95);
INSERT INTO public.majors_courses VALUES (77, 100);
INSERT INTO public.majors_courses VALUES (73, 89);
INSERT INTO public.majors_courses VALUES (74, 100);
INSERT INTO public.majors_courses VALUES (73, 99);
INSERT INTO public.majors_courses VALUES (77, 101);
INSERT INTO public.majors_courses VALUES (78, 92);
INSERT INTO public.majors_courses VALUES (77, 102);
INSERT INTO public.majors_courses VALUES (78, 103);
INSERT INTO public.majors_courses VALUES (78, 104);
INSERT INTO public.majors_courses VALUES (76, 95);
INSERT INTO public.majors_courses VALUES (76, 98);
INSERT INTO public.majors_courses VALUES (75, 105);
INSERT INTO public.majors_courses VALUES (73, 96);
INSERT INTO public.majors_courses VALUES (75, 102);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (41, 'Rhea', 'Kellems', 72, 2.5);
INSERT INTO public.students VALUES (42, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (43, 'Kimberly', 'Whitley', 73, 3.8);
INSERT INTO public.students VALUES (44, 'Jimmy', 'Felipe', 72, 3.7);
INSERT INTO public.students VALUES (45, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (46, 'Casares', 'Hijo', 77, 4.0);
INSERT INTO public.students VALUES (47, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (48, 'Sterling', 'Boss', 77, 3.9);
INSERT INTO public.students VALUES (49, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (50, 'Kaija', 'Uronen', 77, 3.7);
INSERT INTO public.students VALUES (51, 'Faye', 'Conn', 77, 2.1);
INSERT INTO public.students VALUES (52, 'Efren', 'Reilly', 73, 3.9);
INSERT INTO public.students VALUES (53, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (54, 'Maxine', 'Hagenes', 72, 2.9);
INSERT INTO public.students VALUES (55, 'Larry', 'Saunders', 74, 2.2);
INSERT INTO public.students VALUES (56, 'Karl', 'Kuhar', 73, NULL);
INSERT INTO public.students VALUES (57, 'Lieke', 'Hazenveld', 77, 3.5);
INSERT INTO public.students VALUES (58, 'Obie', 'Hilpert', 73, NULL);
INSERT INTO public.students VALUES (59, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (60, 'Nathan', 'Turner', 72, 3.3);
INSERT INTO public.students VALUES (61, 'Gerald', 'Osiki', 74, 2.2);
INSERT INTO public.students VALUES (62, 'Vanya', 'Hassanah', 77, 4.0);
INSERT INTO public.students VALUES (63, 'Roxelana', 'Florescu', 72, 3.2);
INSERT INTO public.students VALUES (64, 'Helene', 'Parker', 74, 3.4);
INSERT INTO public.students VALUES (65, 'Mariana', 'Russel', 73, 1.8);
INSERT INTO public.students VALUES (66, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (67, 'Mehdi', 'Vandenberghe', 72, 1.9);
INSERT INTO public.students VALUES (68, 'Dejon', 'Howell', 73, 4.0);
INSERT INTO public.students VALUES (69, 'Aliya', 'Gulgowski', 78, 2.6);
INSERT INTO public.students VALUES (70, 'Ana', 'Tupajic', 74, 3.1);
INSERT INTO public.students VALUES (71, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 105, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 78, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 71, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

