
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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (129, 2018, 'Final', 4, 2, 26, 27);
INSERT INTO public.games VALUES (130, 2018, 'Third Place', 2, 0, 28, 29);
INSERT INTO public.games VALUES (131, 2018, 'Semi-Final', 2, 1, 27, 29);
INSERT INTO public.games VALUES (132, 2018, 'Semi-Final', 1, 0, 26, 28);
INSERT INTO public.games VALUES (133, 2018, 'Quarter-Final', 3, 2, 27, 30);
INSERT INTO public.games VALUES (134, 2018, 'Quarter-Final', 2, 0, 29, 31);
INSERT INTO public.games VALUES (135, 2018, 'Quarter-Final', 2, 1, 28, 32);
INSERT INTO public.games VALUES (136, 2018, 'Quarter-Final', 2, 0, 26, 33);
INSERT INTO public.games VALUES (137, 2018, 'Eighth-Final', 2, 1, 29, 34);
INSERT INTO public.games VALUES (138, 2018, 'Eighth-Final', 1, 0, 31, 35);
INSERT INTO public.games VALUES (139, 2018, 'Eighth-Final', 3, 2, 28, 36);
INSERT INTO public.games VALUES (140, 2018, 'Eighth-Final', 2, 0, 32, 37);
INSERT INTO public.games VALUES (141, 2018, 'Eighth-Final', 2, 1, 27, 38);
INSERT INTO public.games VALUES (142, 2018, 'Eighth-Final', 2, 1, 30, 39);
INSERT INTO public.games VALUES (143, 2018, 'Eighth-Final', 2, 1, 33, 40);
INSERT INTO public.games VALUES (144, 2018, 'Eighth-Final', 4, 3, 26, 41);
INSERT INTO public.games VALUES (145, 2014, 'Final', 1, 0, 42, 41);
INSERT INTO public.games VALUES (146, 2014, 'Third Place', 3, 0, 43, 32);
INSERT INTO public.games VALUES (147, 2014, 'Semi-Final', 1, 0, 41, 43);
INSERT INTO public.games VALUES (148, 2014, 'Semi-Final', 7, 1, 42, 32);
INSERT INTO public.games VALUES (149, 2014, 'Quarter-Final', 1, 0, 43, 44);
INSERT INTO public.games VALUES (150, 2014, 'Quarter-Final', 1, 0, 41, 28);
INSERT INTO public.games VALUES (151, 2014, 'Quarter-Final', 2, 1, 32, 34);
INSERT INTO public.games VALUES (152, 2014, 'Quarter-Final', 1, 0, 42, 26);
INSERT INTO public.games VALUES (153, 2014, 'Eighth-Final', 2, 1, 32, 45);
INSERT INTO public.games VALUES (154, 2014, 'Eighth-Final', 2, 0, 34, 33);
INSERT INTO public.games VALUES (155, 2014, 'Eighth-Final', 2, 0, 26, 46);
INSERT INTO public.games VALUES (156, 2014, 'Eighth-Final', 2, 1, 42, 47);
INSERT INTO public.games VALUES (157, 2014, 'Eighth-Final', 2, 1, 43, 37);
INSERT INTO public.games VALUES (158, 2014, 'Eighth-Final', 2, 1, 44, 48);
INSERT INTO public.games VALUES (159, 2014, 'Eighth-Final', 1, 0, 41, 35);
INSERT INTO public.games VALUES (160, 2014, 'Eighth-Final', 2, 1, 28, 49);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (26, 'France');
INSERT INTO public.teams VALUES (27, 'Croatia');
INSERT INTO public.teams VALUES (28, 'Belgium');
INSERT INTO public.teams VALUES (29, 'England');
INSERT INTO public.teams VALUES (30, 'Russia');
INSERT INTO public.teams VALUES (31, 'Sweden');
INSERT INTO public.teams VALUES (32, 'Brazil');
INSERT INTO public.teams VALUES (33, 'Uruguay');
INSERT INTO public.teams VALUES (34, 'Colombia');
INSERT INTO public.teams VALUES (35, 'Switzerland');
INSERT INTO public.teams VALUES (36, 'Japan');
INSERT INTO public.teams VALUES (37, 'Mexico');
INSERT INTO public.teams VALUES (38, 'Denmark');
INSERT INTO public.teams VALUES (39, 'Spain');
INSERT INTO public.teams VALUES (40, 'Portugal');
INSERT INTO public.teams VALUES (41, 'Argentina');
INSERT INTO public.teams VALUES (42, 'Germany');
INSERT INTO public.teams VALUES (43, 'Netherlands');
INSERT INTO public.teams VALUES (44, 'Costa Rica');
INSERT INTO public.teams VALUES (45, 'Chile');
INSERT INTO public.teams VALUES (46, 'Nigeria');
INSERT INTO public.teams VALUES (47, 'Algeria');
INSERT INTO public.teams VALUES (48, 'Greece');
INSERT INTO public.teams VALUES (49, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 160, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 49, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games opponent_team_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_team_fk FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games winner_team_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT winner_team_fk FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


