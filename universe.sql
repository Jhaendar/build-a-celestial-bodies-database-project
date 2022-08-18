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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    diameter integer,
    star_id integer
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
    name character varying(50) NOT NULL,
    description text,
    age integer,
    type character varying(50)
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
    name character varying(50) NOT NULL,
    description text,
    orbital_speed numeric(5,1),
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
    name character varying(50) NOT NULL,
    age numeric(4,1),
    description text,
    star_id integer,
    has_life boolean,
    is_exoplanet boolean
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
    name character varying(50) NOT NULL,
    age integer,
    type character varying(50),
    galaxy_id integer,
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

INSERT INTO public.asteroid VALUES (1, 'Ceres', 'First asteroid discovered', 939, 1);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 'Discovered in 1807', 525, 1);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 'Discovered in 1802', 511, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Galaxy cointaining Earth!', 14, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Galaxy nearest milky way', 10, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 'Looks like a giant eye due to the bright center and dark surroundings', 13, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Condor', 'Largest known spiral galaxy', 5, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Eye of Sauron', 'Looks like the eye of sauron', 13, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Needle', 'Looks like a needle', 13, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth I', 'Earth only natural satellite', 1.0, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Also knowm as Mars I, innermost natural satellite of Mars', 2.1, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Also known as Mars II, the outer satellite of Mars', 1.4, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Also known as Jupiter III, the largest moon in the solar system', 10.9, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Also known as Jupiter IV, the second largest moon of the Galilean moons', 8.2, 5);
INSERT INTO public.moon VALUES (6, 'Io', 'Also known as Jupiter I, the innermost moon of Jupiter', 17.3, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 'Also known as Jupiter II, the smallest of the four Galilean moons', 13.7, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Also known as Jupiter V, the fifth largest moon and the fifth to be discovered.', 26.6, 5);
INSERT INTO public.moon VALUES (9, 'Titan', 'The Largest moon of saturn', 5.6, 6);
INSERT INTO public.moon VALUES (10, 'Rhea', 'The second-largest moon of Saturn', 8.5, 6);
INSERT INTO public.moon VALUES (11, 'Iapetus', 'Third largest moon of Saturn', 3.3, 6);
INSERT INTO public.moon VALUES (12, 'Dion', 'Also known as Saturn IV, discovered by cassini in 1684', 10.0, 6);
INSERT INTO public.moon VALUES (13, 'Thethys', 'Also known as Saturn III, discovered by Cassini in 1684', 11.4, 6);
INSERT INTO public.moon VALUES (14, 'Titania', 'Also known as Uranus III, the largest moon of Uranus, 3.64', NULL, 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 'Also known as Uranus IV, the outermost major moon of Uranus', 3.2, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 'Also known as Uranus II, composed mainly of ice and rock', 4.7, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 'Also known as Uranus I, fourth largest of Uranus', 5.5, 7);
INSERT INTO public.moon VALUES (18, 'Triton', 'Also known as Neptune I, the largest natural satellite of Neptune', 4.4, 8);
INSERT INTO public.moon VALUES (19, 'Proteus', 'Also known as Neptune VIII, the second largest moon of Neptune', 7.6, 8);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Also known as Neptune II, the third largest moon of Neptune', NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercuy', 4.5, 'smallest planet in our solar system', 1, false, false);
INSERT INTO public.planet VALUES (2, 'Venus', 4.5, 'brightest natural object in Earths night sky after the moon', 1, false, false);
INSERT INTO public.planet VALUES (3, 'Earth', 4.5, 'the third planet and has life!', 1, true, false);
INSERT INTO public.planet VALUES (4, 'Mars', 4.6, 'Fourth planet and second smallest in the solar sysetm', 1, false, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4.6, 'Fifth planet and is the largest planet in our solar system', 1, false, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 4.5, 'Sixth Planet on the solar system', 1, false, false);
INSERT INTO public.planet VALUES (7, 'Neptune', 4.5, 'Seventh Planet on the solar system', 1, false, false);
INSERT INTO public.planet VALUES (8, 'Uranus', 4.5, 'Eighth planet on the solar system', 1, false, true);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', 6.0, '2nd planet from its star and have the neareast characteristic to the Earth', 8, false, true);
INSERT INTO public.planet VALUES (10, 'Kepler-11f', 3.2, 'Fifth planet from the star Kepler', 9, false, true);
INSERT INTO public.planet VALUES (11, 'PSR B1620-26b', 12.7, '12.7, an exoplanet located 12400 light years away', 10, false, true);
INSERT INTO public.planet VALUES (12, '51 Pegasi b', 6.1, 'officially named Dimidium, approximately 50 light years away', 11, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 4603, 'yellow dwarf', 1, 'our sun!');
INSERT INTO public.star VALUES (2, 'Polaris', 70, 'Cepheid Variable', 1, 'also known as pulsing star');
INSERT INTO public.star VALUES (3, 'Sirius A', 242, 'white main-sequence', 1, 'the brightest star in Canis Major');
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 4850, 'main sequence white dwarf', 1, 'brightest star in the southern constellation of Centaurus');
INSERT INTO public.star VALUES (5, 'Betelgeuse', 10, 'red supergiant', 1, 'one of the largest and most luminous stars in the night sky');
INSERT INTO public.star VALUES (6, 'Rigel A', 8, 'blue-white supergiant', 1, 'brightest star in the constellation Orion');
INSERT INTO public.star VALUES (7, 'Vega', 455, 'white dwarf', 1, 'bright blue star that anchors the otherwise faint Lyra constellation');
INSERT INTO public.star VALUES (8, 'Kepler 452', 6000, 'yellow dwarf', 1, 'about 1800 light years from earth, located in the Cygnus constellation');
INSERT INTO public.star VALUES (9, 'Kepler 11', 3200, 'yellow dwarf', 1, 'located in the Cygnus constellation, about 2150 light years from earth');
INSERT INTO public.star VALUES (10, 'PSR B1620−26', 12200, 'pulsar', 1, 'located in the Scorpius constellation, about 12400 light years from earth');
INSERT INTO public.star VALUES (11, '51 Pegasi', 6100, 'yellow dwarf', 1, 'Sun-like star located 50.4 light years away in the constellation Pegasus');


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


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

