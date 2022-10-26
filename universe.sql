--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying,
    hero boolean NOT NULL,
    human integer,
    entry integer,
    username text,
    year numeric
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
-- Name: hogwarts; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.hogwarts (
    hogwarts_id integer NOT NULL,
    name character varying,
    hero boolean NOT NULL,
    human integer,
    entry integer,
    username text,
    year numeric
);


ALTER TABLE public.hogwarts OWNER TO freecodecamp;

--
-- Name: hogwarts_wizard_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.hogwarts_wizard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hogwarts_wizard_id_seq OWNER TO freecodecamp;

--
-- Name: hogwarts_wizard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.hogwarts_wizard_id_seq OWNED BY public.hogwarts.hogwarts_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    hero boolean NOT NULL,
    human integer,
    entry integer,
    username text,
    year numeric
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
    name character varying,
    hero boolean NOT NULL,
    human integer,
    entry integer,
    username text,
    year numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_moon_id_seq OWNER TO freecodecamp;

--
-- Name: planet_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_moon_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    hero boolean NOT NULL,
    human integer,
    entry integer,
    username text,
    year numeric
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
-- Name: hogwarts hogwarts_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hogwarts ALTER COLUMN hogwarts_id SET DEFAULT nextval('public.hogwarts_wizard_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_moon_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ironman', true, 100, 1, 'iron', 2001);
INSERT INTO public.galaxy VALUES (2, 'capamerica', true, 100, 1, 'cap', 2002);
INSERT INTO public.galaxy VALUES (3, 'hulk', true, 100, 1, 'bruce', 2005);
INSERT INTO public.galaxy VALUES (4, 'natasha', true, 100, 1, 'black', 2009);
INSERT INTO public.galaxy VALUES (5, 'wanda', true, 100, 1, 'red', 2019);
INSERT INTO public.galaxy VALUES (6, 'nick', false, 200, 2, 'fury', 2020);


--
-- Data for Name: hogwarts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.hogwarts VALUES (1, 'bro', true, 1, 11, 'babe', 111);
INSERT INTO public.hogwarts VALUES (2, 'dude', false, 2, 22, 'dddue', 222);
INSERT INTO public.hogwarts VALUES (3, 'crow', true, 3, 33, 'craw', 333);
INSERT INTO public.hogwarts VALUES (4, 'slak', true, 4, 44, 'duma', 444);
INSERT INTO public.hogwarts VALUES (5, 'fred', false, 5, 55, 'rick', 555);
INSERT INTO public.hogwarts VALUES (6, 'bri', true, 6, 66, 'lars', 666);
INSERT INTO public.hogwarts VALUES (7, 'groot', true, 7, 77, 'Iam', 777);
INSERT INTO public.hogwarts VALUES (8, 'billa', true, 8, 88, 'david', 888);
INSERT INTO public.hogwarts VALUES (9, 'fil', false, 9, 99, 'lif', 999);
INSERT INTO public.hogwarts VALUES (10, 'brut', true, 10, 1010, 'trub', 101010);
INSERT INTO public.hogwarts VALUES (11, 'kozhi', true, 11, 1111, 'kokarako', 111111);
INSERT INTO public.hogwarts VALUES (12, 'dora', false, 12, 1212, 'ddora', 121212);
INSERT INTO public.hogwarts VALUES (13, 'gora', true, 1313, 131313, 'orag', 13131313);
INSERT INTO public.hogwarts VALUES (14, 'srgfsdf', true, 1414, 141414, 'sdgfdg', 14141414);
INSERT INTO public.hogwarts VALUES (15, 'kjnkvjef', false, 15, 1515, 'njlkn', 151515);
INSERT INTO public.hogwarts VALUES (16, 'ghghf', true, 16, 1616, 'kvgmkgf', 161616);
INSERT INTO public.hogwarts VALUES (17, 'llfimg', true, 17, 1717, 'jjgovm', 171717);
INSERT INTO public.hogwarts VALUES (18, 'nngovmnrk', true, 18, 1818, 'llvodndm', 181818);
INSERT INTO public.hogwarts VALUES (19, 'hhgkviddnsdknsdlj', false, 19, 1919, 'llsmsjfndnd', 191919);
INSERT INTO public.hogwarts VALUES (20, 'love', true, 20, 2020, 'guru', 202020);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'bro', true, 1, 11, 'babe', 111);
INSERT INTO public.moon VALUES (2, 'dude', false, 2, 22, 'dddue', 222);
INSERT INTO public.moon VALUES (3, 'crow', true, 3, 33, 'craw', 333);
INSERT INTO public.moon VALUES (4, 'slak', true, 4, 44, 'duma', 444);
INSERT INTO public.moon VALUES (5, 'fred', false, 5, 55, 'rick', 555);
INSERT INTO public.moon VALUES (6, 'bri', true, 6, 66, 'lars', 666);
INSERT INTO public.moon VALUES (7, 'groot', true, 7, 77, 'Iam', 777);
INSERT INTO public.moon VALUES (8, 'billa', true, 8, 88, 'david', 888);
INSERT INTO public.moon VALUES (9, 'fil', false, 9, 99, 'lif', 999);
INSERT INTO public.moon VALUES (10, 'brut', true, 10, 1010, 'trub', 101010);
INSERT INTO public.moon VALUES (11, 'kozhi', true, 11, 1111, 'kokarako', 111111);
INSERT INTO public.moon VALUES (12, 'dora', false, 12, 1212, 'ddora', 121212);
INSERT INTO public.moon VALUES (13, 'gora', true, 1313, 131313, 'orag', 13131313);
INSERT INTO public.moon VALUES (14, 'srgfsdf', true, 1414, 141414, 'sdgfdg', 14141414);
INSERT INTO public.moon VALUES (15, 'kjnkvjef', false, 15, 1515, 'njlkn', 151515);
INSERT INTO public.moon VALUES (16, 'ghghf', true, 16, 1616, 'kvgmkgf', 161616);
INSERT INTO public.moon VALUES (17, 'llfimg', true, 17, 1717, 'jjgovm', 171717);
INSERT INTO public.moon VALUES (18, 'nngovmnrk', true, 18, 1818, 'llvodndm', 181818);
INSERT INTO public.moon VALUES (19, 'hhgkviddnsdknsdlj', false, 19, 1919, 'llsmsjfndnd', 191919);
INSERT INTO public.moon VALUES (20, 'love', true, 20, 2020, 'guru', 202020);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'bro', true, 1, 11, 'babe', 111);
INSERT INTO public.planet VALUES (2, 'dude', false, 2, 22, 'dddue', 222);
INSERT INTO public.planet VALUES (3, 'crow', true, 3, 33, 'craw', 333);
INSERT INTO public.planet VALUES (4, 'slak', true, 4, 44, 'duma', 444);
INSERT INTO public.planet VALUES (5, 'fred', false, 5, 55, 'rick', 555);
INSERT INTO public.planet VALUES (6, 'bri', true, 6, 66, 'lars', 666);
INSERT INTO public.planet VALUES (7, 'groot', true, 7, 77, 'Iam', 777);
INSERT INTO public.planet VALUES (8, 'billa', true, 8, 88, 'david', 888);
INSERT INTO public.planet VALUES (9, 'fil', false, 9, 99, 'lif', 999);
INSERT INTO public.planet VALUES (10, 'brut', true, 10, 1010, 'trub', 101010);
INSERT INTO public.planet VALUES (11, 'kozhi', true, 11, 1111, 'kokarako', 111111);
INSERT INTO public.planet VALUES (12, 'dora', false, 12, 1212, 'ddora', 121212);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'harry', true, 10, 1, 'potter', 1000);
INSERT INTO public.star VALUES (2, 'ron', true, 20, 2, 'weasley', 2000);
INSERT INTO public.star VALUES (3, 'hermione', true, 30, 3, 'Granger', 3000);
INSERT INTO public.star VALUES (4, 'tom', false, 40, 4, 'riddle', 4000);
INSERT INTO public.star VALUES (5, 'lucius', false, 50, 5, 'malfoy', 5000);
INSERT INTO public.star VALUES (6, 'severus', true, 60, 6, 'Snape', 6000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: hogwarts_wizard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.hogwarts_wizard_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_moon_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uniq UNIQUE (name);


--
-- Name: hogwarts hogwarts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hogwarts
    ADD CONSTRAINT hogwarts_pkey PRIMARY KEY (hogwarts_id);


--
-- Name: hogwarts hogwarts_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hogwarts
    ADD CONSTRAINT hogwarts_uniq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uniq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uniq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uniq UNIQUE (name);


--
-- Name: hogwarts hogwarts_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hogwarts
    ADD CONSTRAINT hogwarts_fkey FOREIGN KEY (name) REFERENCES public.moon(name);


--
-- PostgreSQL database dump complete
--