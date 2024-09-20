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
-- Name: colony; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.colony (
    colony_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    population integer,
    age integer
);


ALTER TABLE public.colony OWNER TO freecodecamp;

--
-- Name: colony_colony_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.colony_colony_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colony_colony_id_seq OWNER TO freecodecamp;

--
-- Name: colony_colony_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.colony_colony_id_seq OWNED BY public.colony.colony_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num_of_stars integer,
    explored boolean NOT NULL,
    big boolean
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
    name character varying(30) NOT NULL,
    diameter numeric(7,2),
    only_moon boolean NOT NULL
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
    name character varying(30),
    num_of_moons integer,
    diameter numeric(7,2),
    inhabitalbe boolean NOT NULL
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
    name character varying(30) NOT NULL,
    num_of_planets integer,
    nickname text
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
-- Name: colony colony_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.colony ALTER COLUMN colony_id SET DEFAULT nextval('public.colony_colony_id_seq'::regclass);


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
-- Data for Name: colony; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.colony VALUES (1, 3, 'New Town', 69, 420);
INSERT INTO public.colony VALUES (2, 3, 'Old Town', 23, 86);
INSERT INTO public.colony VALUES (3, 3, 'Middle Town', 543, 65);
INSERT INTO public.colony VALUES (4, 3, 'Town', 1234, 23);
INSERT INTO public.colony VALUES (5, 5, 'Town Town', 123, 784563);
INSERT INTO public.colony VALUES (6, 5, 'T Town', 95860, 90878);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 16942000, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000000, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canes Venatici 1', 1234567890, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Your Mom', 42069, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'New Galaxy 2', 12345, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'New Galaxy 69', 69, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 2, 'Old Moon', 123.00, false);
INSERT INTO public.moon VALUES (2, 2, 'New Moon', 1453.00, false);
INSERT INTO public.moon VALUES (3, 2, 'Hidden Moon', 69420.00, false);
INSERT INTO public.moon VALUES (4, 3, 'Ursa Major', 69421.00, true);
INSERT INTO public.moon VALUES (5, 5, 'Cool Guy Moon', 69420.00, false);
INSERT INTO public.moon VALUES (6, 5, 'Lame Guy Moon', 50.00, false);
INSERT INTO public.moon VALUES (7, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (8, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (9, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (10, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (11, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (12, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (13, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (14, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (15, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (16, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (17, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (18, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (19, 1, 'New Moon', 69420.00, false);
INSERT INTO public.moon VALUES (20, 1, 'New Moon', 69420.00, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 0, 6900.00, false);
INSERT INTO public.planet VALUES (2, 1, 'Venus', 3, 12345.00, false);
INSERT INTO public.planet VALUES (3, 1, 'Earth', 1, 69420.00, true);
INSERT INTO public.planet VALUES (4, 2, '2nd Venus', 67, 9876.00, true);
INSERT INTO public.planet VALUES (5, 3, 'Cool Planet', 69, 1654.00, true);
INSERT INTO public.planet VALUES (6, 6, 'Retcon 6', 2, 1244.00, true);
INSERT INTO public.planet VALUES (7, 4, 'new name', 3, 123.00, true);
INSERT INTO public.planet VALUES (8, 3, 'namename', 4, 321.00, true);
INSERT INTO public.planet VALUES (9, 1, 'asd', 123, 123.00, true);
INSERT INTO public.planet VALUES (10, 6, 'planet man', 5, 443.00, true);
INSERT INTO public.planet VALUES (11, 5, 'new planet', 0, 3.00, true);
INSERT INTO public.planet VALUES (12, 4, 'newest planet', 5, 5.00, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Helios', 9, 'The Sun');
INSERT INTO public.star VALUES (2, 2, 'Sol', 5, 'New Sun');
INSERT INTO public.star VALUES (3, 2, 'Bol', 5, 'Old Sun');
INSERT INTO public.star VALUES (4, 3, 'Androd', 3, 'Andy');
INSERT INTO public.star VALUES (5, 5, 'Cupoid', 5, 'Cupid');
INSERT INTO public.star VALUES (6, 5, 'Hades 1', 5, 'Devil');


--
-- Name: colony_colony_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.colony_colony_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: colony colony_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.colony
    ADD CONSTRAINT colony_pkey PRIMARY KEY (colony_id);


--
-- Name: colony colony_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.colony
    ADD CONSTRAINT colony_unique UNIQUE (colony_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: colony colony_fk_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.colony
    ADD CONSTRAINT colony_fk_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_fk_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

