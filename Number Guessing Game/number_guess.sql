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

DROP DATABASE points;
--
-- Name: points; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE points WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE points OWNER TO freecodecamp;

\connect points

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
-- Name: points; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.points (
    username character varying(22) NOT NULL,
    games_played integer NOT NULL,
    best_game integer NOT NULL
);


ALTER TABLE public.points OWNER TO freecodecamp;

--
-- Data for Name: points; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.points VALUES ('bob', 1, 5);


--
-- Name: points points_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.points
    ADD CONSTRAINT points_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

