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
    asteroid_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric,
    area integer,
    volume integer,
    description text
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric,
    area integer,
    volume integer,
    description text
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
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric,
    area integer,
    volume integer,
    description text,
    has_water boolean,
    has_life boolean
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
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric,
    area integer,
    volume integer,
    description text,
    has_water boolean,
    has_life boolean
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
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric,
    area integer,
    volume integer,
    description text
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

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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

INSERT INTO public.asteroid VALUES (1, 1, 'A01', 10, NULL, NULL, 'Asteroid 01');
INSERT INTO public.asteroid VALUES (2, 1, 'A02', 10, NULL, NULL, 'Asteroid 02');
INSERT INTO public.asteroid VALUES (3, 1, 'A03', 10, NULL, NULL, 'Asteroid 03');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G01', 13.5, 1000, 1500, 'Galaxy 01');
INSERT INTO public.galaxy VALUES (2, 'G02', 13.5, 1000, 1500, 'Galaxy 02');
INSERT INTO public.galaxy VALUES (3, 'G03', 13.5, 1000, 1500, 'Galaxy 03');
INSERT INTO public.galaxy VALUES (4, 'G04', 13.5, 1000, 1500, 'Galaxy 04');
INSERT INTO public.galaxy VALUES (5, 'G05', 13.5, 1000, 1500, 'Galaxy 05');
INSERT INTO public.galaxy VALUES (6, 'G06', 13.5, 1000, 1500, 'Galaxy 06');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'M01', 3, 1, 2, 'Moon 01', true, true);
INSERT INTO public.moon VALUES (2, 1, 'M02', 3, 1, 2, 'Moon 02', true, false);
INSERT INTO public.moon VALUES (3, 2, 'M03', 3, 1, 2, 'Moon 03', true, true);
INSERT INTO public.moon VALUES (4, 2, 'M04', 3, 1, 2, 'Moon 04', true, false);
INSERT INTO public.moon VALUES (5, 3, 'M05', 3, 1, 2, 'Moon 05', true, true);
INSERT INTO public.moon VALUES (6, 3, 'M06', 3, 1, 2, 'Moon 06', true, false);
INSERT INTO public.moon VALUES (7, 4, 'M07', 3, 1, 2, 'Moon 07', true, true);
INSERT INTO public.moon VALUES (8, 4, 'M08', 3, 1, 2, 'Moon 08', true, false);
INSERT INTO public.moon VALUES (9, 5, 'M09', 3, 1, 2, 'Moon 09', true, true);
INSERT INTO public.moon VALUES (10, 5, 'M10', 3, 1, 2, 'Moon 10', true, false);
INSERT INTO public.moon VALUES (11, 6, 'M11', 3, 1, 2, 'Moon 11', true, true);
INSERT INTO public.moon VALUES (12, 6, 'M12', 3, 1, 2, 'Moon 12', true, false);
INSERT INTO public.moon VALUES (13, 7, 'M13', 3, 1, 2, 'Moon 13', true, true);
INSERT INTO public.moon VALUES (14, 7, 'M14', 3, 1, 2, 'Moon 14', true, false);
INSERT INTO public.moon VALUES (15, 8, 'M15', 3, 1, 2, 'Moon 15', true, true);
INSERT INTO public.moon VALUES (16, 8, 'M16', 3, 1, 2, 'Moon 16', true, false);
INSERT INTO public.moon VALUES (17, 9, 'M17', 3, 1, 2, 'Moon 17', true, true);
INSERT INTO public.moon VALUES (18, 9, 'M18', 3, 1, 2, 'Moon 18', true, false);
INSERT INTO public.moon VALUES (19, 10, 'M19', 3, 1, 2, 'Moon 19', true, true);
INSERT INTO public.moon VALUES (20, 10, 'M20', 3, 1, 2, 'Moon 20', true, false);
INSERT INTO public.moon VALUES (21, 11, 'M21', 3, 1, 2, 'Moon 21', true, true);
INSERT INTO public.moon VALUES (22, 11, 'M22', 3, 1, 2, 'Moon 22', true, false);
INSERT INTO public.moon VALUES (23, 12, 'M23', 3, 1, 2, 'Moon 23', true, true);
INSERT INTO public.moon VALUES (24, 12, 'M24', 3, 1, 2, 'Moon 24', true, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'P01', 4, 10, 15, 'Planet 01', true, true);
INSERT INTO public.planet VALUES (2, 1, 'P02', 4, 10, 15, 'Planet 02', true, false);
INSERT INTO public.planet VALUES (3, 2, 'P03', 4, 10, 15, 'Planet 03', true, true);
INSERT INTO public.planet VALUES (4, 2, 'P04', 4, 10, 15, 'Planet 04', true, false);
INSERT INTO public.planet VALUES (5, 3, 'P05', 4, 10, 15, 'Planet 05', true, true);
INSERT INTO public.planet VALUES (6, 3, 'P06', 4, 10, 15, 'Planet 06', true, false);
INSERT INTO public.planet VALUES (7, 4, 'P07', 4, 10, 15, 'Planet 07', true, true);
INSERT INTO public.planet VALUES (8, 4, 'P08', 4, 10, 15, 'Planet 08', true, false);
INSERT INTO public.planet VALUES (9, 5, 'P09', 4, 10, 15, 'Planet 09', true, true);
INSERT INTO public.planet VALUES (10, 5, 'P10', 4, 10, 15, 'Planeet 10', true, false);
INSERT INTO public.planet VALUES (11, 6, 'P11', 4, 10, 15, 'Planet 11', true, true);
INSERT INTO public.planet VALUES (12, 6, 'P12', 4, 10, 15, 'Planet 12', true, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'S01', 7, 100, 150, 'Star 01');
INSERT INTO public.star VALUES (2, 2, 'S02', 7, 100, 150, 'Star 02');
INSERT INTO public.star VALUES (3, 3, 'S03', 7, 100, 150, 'Star 03');
INSERT INTO public.star VALUES (4, 4, 'S04', 7, 100, 150, 'Star 04');
INSERT INTO public.star VALUES (5, 5, 'S05', 7, 100, 150, 'Star 05');
INSERT INTO public.star VALUES (6, 6, 'S06', 7, 100, 150, 'Star 06');


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: asteroid asteroid_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

