--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric(100,2),
    is_spherical boolean,
    description text,
    age_in_million_of_years integer
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
-- Name: is_real; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.is_real (
    is_real_id integer NOT NULL,
    is_real_id2 integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.is_real OWNER TO freecodecamp;

--
-- Name: is_real_is_real_id2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.is_real_is_real_id2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.is_real_is_real_id2_seq OWNER TO freecodecamp;

--
-- Name: is_real_is_real_id2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.is_real_is_real_id2_seq OWNED BY public.is_real.is_real_id2;


--
-- Name: is_real_is_real_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.is_real_is_real_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.is_real_is_real_id_seq OWNER TO freecodecamp;

--
-- Name: is_real_is_real_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.is_real_is_real_id_seq OWNED BY public.is_real.is_real_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric(100,2),
    is_spherical boolean,
    description text,
    age_in_million_of_years integer,
    planet_id integer
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric(100,2),
    is_spherical boolean,
    description text,
    age_in_million_of_years integer,
    star_id integer
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric(100,2),
    is_spherical boolean,
    description text,
    age_in_million_of_years integer,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: is_real is_real_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.is_real ALTER COLUMN is_real_id SET DEFAULT nextval('public.is_real_is_real_id_seq'::regclass);


--
-- Name: is_real is_real_id2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.is_real ALTER COLUMN is_real_id2 SET DEFAULT nextval('public.is_real_is_real_id2_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 2.54, false, NULL, 10);
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 0.00, false, NULL, 13);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', 23.00, false, NULL, 10);
INSERT INTO public.galaxy VALUES (4, 'Triangulum Galaxy', 3.00, false, NULL, 10);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 28.00, false, NULL, 13);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', 21.00, false, NULL, 10);


--
-- Data for Name: is_real; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.is_real VALUES (1, 1, 'YES');
INSERT INTO public.is_real VALUES (2, 2, 'YES2');
INSERT INTO public.is_real VALUES (3, 3, 'YES3');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Charon', 2300.00, true, NULL, 1100, 4);
INSERT INTO public.moon VALUES (2, 'Phobos', 225.00, true, NULL, 400, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 225.00, true, NULL, 450, 4);
INSERT INTO public.moon VALUES (4, 'Ganymedes', 628.30, true, NULL, 500, 4);
INSERT INTO public.moon VALUES (5, 'Phoebe', 1350.00, true, NULL, 1400, 4);
INSERT INTO public.moon VALUES (6, 'Oberon', 1350.00, true, NULL, 1300, 4);
INSERT INTO public.moon VALUES (7, 'Titania', 1350.00, true, NULL, 1200, 4);
INSERT INTO public.moon VALUES (8, 'Umbriel', 1350.00, true, NULL, 1100, 4);
INSERT INTO public.moon VALUES (9, 'Ariel', 1350.00, true, NULL, 1000, 4);
INSERT INTO public.moon VALUES (10, 'Miranda', 1350.00, true, NULL, 600, 4);
INSERT INTO public.moon VALUES (11, 'Triton', 1350.00, true, NULL, 700, 4);
INSERT INTO public.moon VALUES (12, 'Mimas', 1200.00, true, NULL, 1200, 4);
INSERT INTO public.moon VALUES (13, 'Enceladus', 1200.00, true, NULL, 800, 4);
INSERT INTO public.moon VALUES (14, 'Iapetus', 1200.00, true, NULL, 800, 4);
INSERT INTO public.moon VALUES (15, 'Rhea', 1200.00, true, NULL, 1000, 4);
INSERT INTO public.moon VALUES (16, 'Titan', 1200.00, true, NULL, 400, 4);
INSERT INTO public.moon VALUES (17, 'Callisto', 628.30, true, NULL, 600, 4);
INSERT INTO public.moon VALUES (18, 'Ganymede', 628.30, true, NULL, 500, 4);
INSERT INTO public.moon VALUES (19, 'Europa', 628.30, true, NULL, 450, 4);
INSERT INTO public.moon VALUES (20, 'Moon', 10.30, true, NULL, 2, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Mars', 55.00, true, NULL, 4500, 5);
INSERT INTO public.planet VALUES (5, 'Jupiter', 628.30, true, NULL, 4600, 5);
INSERT INTO public.planet VALUES (7, 'Uranus', 2700.00, true, NULL, 4600, 5);
INSERT INTO public.planet VALUES (8, 'Neptune', 4300.00, true, NULL, 4600, 5);
INSERT INTO public.planet VALUES (9, 'Pluto', 5900.00, true, NULL, 4600, 5);
INSERT INTO public.planet VALUES (3, 'Earth', 0.00, true, NULL, 4500, 5);
INSERT INTO public.planet VALUES (11, 'Haumea', 6200.00, true, NULL, 4600, 5);
INSERT INTO public.planet VALUES (10, 'Ceres', 418.00, true, NULL, 4600, 5);
INSERT INTO public.planet VALUES (12, 'Makemake', 6300.00, true, NULL, 4600, 5);
INSERT INTO public.planet VALUES (2, 'Venus', 42.00, true, NULL, 4600, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 1200.00, true, NULL, 4600, 5);
INSERT INTO public.planet VALUES (1, 'Mercury', 77.00, true, NULL, 4600, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'Rigel', 860.00, true, NULL, 8, 1);
INSERT INTO public.star VALUES (1, 'Sirius', 8.60, true, NULL, 120, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 642.50, true, NULL, 10, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centuari A', 4.37, true, NULL, 5, 2);
INSERT INTO public.star VALUES (6, 'Antares', 550.00, true, NULL, 12, 4);
INSERT INTO public.star VALUES (5, 'Proxima Centuari', 4.24, true, NULL, 5, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: is_real_is_real_id2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.is_real_is_real_id2_seq', 3, true);


--
-- Name: is_real_is_real_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.is_real_is_real_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: is_real is_real_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.is_real
    ADD CONSTRAINT is_real_name_key UNIQUE (name);


--
-- Name: is_real is_real_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.is_real
    ADD CONSTRAINT is_real_pkey PRIMARY KEY (is_real_id);


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

