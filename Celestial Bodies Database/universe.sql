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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    name character varying(30) NOT NULL,
    asteroids integer,
    spherical boolean,
    asteroid_id integer NOT NULL,
    description text,
    light_years numeric(4,1)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_astroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_astroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_astroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_astroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_astroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    description text,
    light_years numeric(4,1),
    id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    planets integer,
    spherical boolean,
    description text,
    light_years numeric(4,1),
    id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    moon integer,
    spherical boolean,
    description text,
    light_years numeric(4,1),
    id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    description text,
    light_years numeric(4,1),
    id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_astroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES ('cwcv', 1, NULL, 1, NULL, NULL);
INSERT INTO public.asteroid VALUES ('cwgf', 2, NULL, 2, NULL, NULL);
INSERT INTO public.asteroid VALUES ('cwqw', 3, NULL, 3, NULL, NULL);
INSERT INTO public.asteroid VALUES ('cwer', 4, NULL, 4, NULL, NULL);
INSERT INTO public.asteroid VALUES ('cwrt', 5, NULL, 5, NULL, NULL);
INSERT INTO public.asteroid VALUES ('cwcrt', 6, NULL, 6, NULL, NULL);
INSERT INTO public.asteroid VALUES ('cwas', 7, NULL, 7, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('ghe', NULL, NULL, 1, 1);
INSERT INTO public.galaxy VALUES ('fr', NULL, NULL, 2, 2);
INSERT INTO public.galaxy VALUES ('for', NULL, NULL, 3, 3);
INSERT INTO public.galaxy VALUES ('ghet', NULL, NULL, 4, 4);
INSERT INTO public.galaxy VALUES ('gre', NULL, NULL, 5, 5);
INSERT INTO public.galaxy VALUES ('ceq', NULL, NULL, 6, 6);
INSERT INTO public.galaxy VALUES ('rqw', NULL, NULL, 7, 7);
INSERT INTO public.galaxy VALUES ('qfor', NULL, NULL, 8, 8);
INSERT INTO public.galaxy VALUES ('qghet', NULL, NULL, 9, 9);
INSERT INTO public.galaxy VALUES ('qgre', NULL, NULL, 10, 10);
INSERT INTO public.galaxy VALUES ('qceq', NULL, NULL, 11, 11);
INSERT INTO public.galaxy VALUES ('qqrqw', NULL, NULL, 12, 12);
INSERT INTO public.galaxy VALUES ('dhj', NULL, NULL, 13, 13);
INSERT INTO public.galaxy VALUES ('ret', NULL, NULL, 14, 14);
INSERT INTO public.galaxy VALUES ('qc', NULL, NULL, 15, 15);
INSERT INTO public.galaxy VALUES ('eire', NULL, NULL, 16, 16);
INSERT INTO public.galaxy VALUES ('out', NULL, NULL, 17, 17);
INSERT INTO public.galaxy VALUES ('tor', NULL, NULL, 18, 18);
INSERT INTO public.galaxy VALUES ('you', NULL, NULL, 19, 19);
INSERT INTO public.galaxy VALUES ('liu', NULL, NULL, 20, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('cwcv', NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.moon VALUES ('cwgf', NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.moon VALUES ('cwqw', NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.moon VALUES ('cwer', NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO public.moon VALUES ('cwrt', NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.moon VALUES ('cwcrt', NULL, NULL, NULL, NULL, 6, 6);
INSERT INTO public.moon VALUES ('cwas', NULL, NULL, NULL, NULL, 7, 7);
INSERT INTO public.moon VALUES ('cwqqfor', NULL, NULL, NULL, NULL, 8, 8);
INSERT INTO public.moon VALUES ('cwqqghet', NULL, NULL, NULL, NULL, 9, 9);
INSERT INTO public.moon VALUES ('cwqqgre', NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.moon VALUES ('cwqqceq', NULL, NULL, NULL, NULL, 11, 11);
INSERT INTO public.moon VALUES ('cqqqrqw', NULL, NULL, NULL, NULL, 12, 12);
INSERT INTO public.moon VALUES ('cwqdhj', NULL, NULL, NULL, NULL, 13, 13);
INSERT INTO public.moon VALUES ('cwqret', NULL, NULL, NULL, NULL, 14, 14);
INSERT INTO public.moon VALUES ('cwqqc', NULL, NULL, NULL, NULL, 15, 15);
INSERT INTO public.moon VALUES ('cwqeire', NULL, NULL, NULL, NULL, 16, 16);
INSERT INTO public.moon VALUES ('cwqout', NULL, NULL, NULL, NULL, 17, 17);
INSERT INTO public.moon VALUES ('cwqtor', NULL, NULL, NULL, NULL, 18, 18);
INSERT INTO public.moon VALUES ('cqyou', NULL, NULL, NULL, NULL, 19, 19);
INSERT INTO public.moon VALUES ('cwqliu', NULL, NULL, NULL, NULL, 20, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('wcv', NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES ('wgf', NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.planet VALUES ('wqw', NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.planet VALUES ('wer', NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO public.planet VALUES ('wrt', NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.planet VALUES ('wcrt', NULL, NULL, NULL, NULL, 6, 6);
INSERT INTO public.planet VALUES ('was', NULL, NULL, NULL, NULL, 7, 7);
INSERT INTO public.planet VALUES ('wqqfor', NULL, NULL, NULL, NULL, 8, 8);
INSERT INTO public.planet VALUES ('wqqghet', NULL, NULL, NULL, NULL, 9, 9);
INSERT INTO public.planet VALUES ('wqqgre', NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.planet VALUES ('wqqceq', NULL, NULL, NULL, NULL, 11, 11);
INSERT INTO public.planet VALUES ('wqqqrqw', NULL, NULL, NULL, NULL, 12, 12);
INSERT INTO public.planet VALUES ('wqdhj', NULL, NULL, NULL, NULL, 13, 13);
INSERT INTO public.planet VALUES ('wqret', NULL, NULL, NULL, NULL, 14, 14);
INSERT INTO public.planet VALUES ('wqqc', NULL, NULL, NULL, NULL, 15, 15);
INSERT INTO public.planet VALUES ('wqeire', NULL, NULL, NULL, NULL, 16, 16);
INSERT INTO public.planet VALUES ('wqout', NULL, NULL, NULL, NULL, 17, 17);
INSERT INTO public.planet VALUES ('wqtor', NULL, NULL, NULL, NULL, 18, 18);
INSERT INTO public.planet VALUES ('wqyou', NULL, NULL, NULL, NULL, 19, 19);
INSERT INTO public.planet VALUES ('wqliu', NULL, NULL, NULL, NULL, 20, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('cv', NULL, NULL, 1, 1);
INSERT INTO public.star VALUES ('gf', NULL, NULL, 2, 2);
INSERT INTO public.star VALUES ('qw', NULL, NULL, 3, 3);
INSERT INTO public.star VALUES ('er', NULL, NULL, 4, 4);
INSERT INTO public.star VALUES ('rt', NULL, NULL, 5, 5);
INSERT INTO public.star VALUES ('crt', NULL, NULL, 6, 6);
INSERT INTO public.star VALUES ('as', NULL, NULL, 7, 7);
INSERT INTO public.star VALUES ('qqfor', NULL, NULL, 8, 9);
INSERT INTO public.star VALUES ('qqghet', NULL, NULL, 9, 10);
INSERT INTO public.star VALUES ('qqgre', NULL, NULL, 10, 11);
INSERT INTO public.star VALUES ('qqceq', NULL, NULL, 11, 12);
INSERT INTO public.star VALUES ('qqqrqw', NULL, NULL, 12, 13);
INSERT INTO public.star VALUES ('qdhj', NULL, NULL, 13, 14);
INSERT INTO public.star VALUES ('qret', NULL, NULL, 14, 15);
INSERT INTO public.star VALUES ('qqc', NULL, NULL, 15, 16);
INSERT INTO public.star VALUES ('qeire', NULL, NULL, 16, 17);
INSERT INTO public.star VALUES ('qout', NULL, NULL, 17, 18);
INSERT INTO public.star VALUES ('qtor', NULL, NULL, 18, 19);
INSERT INTO public.star VALUES ('qyou', NULL, NULL, 19, 20);
INSERT INTO public.star VALUES ('qliu', NULL, NULL, 20, 21);


--
-- Name: asteroid_astroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_astroid_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 23, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_fkey FOREIGN KEY (id) REFERENCES public.planet(id);


--
-- Name: planet planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_fkey FOREIGN KEY (id) REFERENCES public.star(id);


--
-- Name: star star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_fkey FOREIGN KEY (id) REFERENCES public.galaxy(id);


--
-- PostgreSQL database dump complete
--


