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
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (102, 2018, 'Final', 510, 511, 4, 2);
INSERT INTO public.games VALUES (103, 2018, 'Third Place', 512, 513, 2, 0);
INSERT INTO public.games VALUES (104, 2018, 'Semi-Final', 511, 513, 2, 1);
INSERT INTO public.games VALUES (105, 2018, 'Semi-Final', 510, 512, 1, 0);
INSERT INTO public.games VALUES (106, 2018, 'Quarter-Final', 511, 514, 3, 2);
INSERT INTO public.games VALUES (107, 2018, 'Quarter-Final', 513, 515, 2, 0);
INSERT INTO public.games VALUES (108, 2018, 'Quarter-Final', 512, 516, 2, 1);
INSERT INTO public.games VALUES (109, 2018, 'Quarter-Final', 510, 517, 2, 0);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 513, 518, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 515, 519, 1, 0);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 512, 520, 3, 2);
INSERT INTO public.games VALUES (113, 2018, 'Eighth-Final', 516, 521, 2, 0);
INSERT INTO public.games VALUES (114, 2018, 'Eighth-Final', 511, 522, 2, 1);
INSERT INTO public.games VALUES (115, 2018, 'Eighth-Final', 514, 523, 2, 1);
INSERT INTO public.games VALUES (116, 2018, 'Eighth-Final', 517, 524, 2, 1);
INSERT INTO public.games VALUES (117, 2018, 'Eighth-Final', 510, 525, 4, 3);
INSERT INTO public.games VALUES (118, 2014, 'Final', 526, 525, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Third Place', 527, 516, 3, 0);
INSERT INTO public.games VALUES (120, 2014, 'Semi-Final', 525, 527, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Semi-Final', 526, 516, 7, 1);
INSERT INTO public.games VALUES (122, 2014, 'Quarter-Final', 527, 528, 1, 0);
INSERT INTO public.games VALUES (123, 2014, 'Quarter-Final', 525, 512, 1, 0);
INSERT INTO public.games VALUES (124, 2014, 'Quarter-Final', 516, 518, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Quarter-Final', 526, 510, 1, 0);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 516, 529, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 518, 517, 2, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 510, 530, 2, 0);
INSERT INTO public.games VALUES (129, 2014, 'Eighth-Final', 526, 531, 2, 1);
INSERT INTO public.games VALUES (130, 2014, 'Eighth-Final', 527, 521, 2, 1);
INSERT INTO public.games VALUES (131, 2014, 'Eighth-Final', 528, 532, 2, 1);
INSERT INTO public.games VALUES (132, 2014, 'Eighth-Final', 525, 519, 1, 0);
INSERT INTO public.games VALUES (133, 2014, 'Eighth-Final', 512, 533, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (510, 'France');
INSERT INTO public.teams VALUES (511, 'Croatia');
INSERT INTO public.teams VALUES (512, 'Belgium');
INSERT INTO public.teams VALUES (513, 'England');
INSERT INTO public.teams VALUES (514, 'Russia');
INSERT INTO public.teams VALUES (515, 'Sweden');
INSERT INTO public.teams VALUES (516, 'Brazil');
INSERT INTO public.teams VALUES (517, 'Uruguay');
INSERT INTO public.teams VALUES (518, 'Colombia');
INSERT INTO public.teams VALUES (519, 'Switzerland');
INSERT INTO public.teams VALUES (520, 'Japan');
INSERT INTO public.teams VALUES (521, 'Mexico');
INSERT INTO public.teams VALUES (522, 'Denmark');
INSERT INTO public.teams VALUES (523, 'Spain');
INSERT INTO public.teams VALUES (524, 'Portugal');
INSERT INTO public.teams VALUES (525, 'Argentina');
INSERT INTO public.teams VALUES (526, 'Germany');
INSERT INTO public.teams VALUES (527, 'Netherlands');
INSERT INTO public.teams VALUES (528, 'Costa Rica');
INSERT INTO public.teams VALUES (529, 'Chile');
INSERT INTO public.teams VALUES (530, 'Nigeria');
INSERT INTO public.teams VALUES (531, 'Algeria');
INSERT INTO public.teams VALUES (532, 'Greece');
INSERT INTO public.teams VALUES (533, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 133, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 533, true);


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
-- Name: teams teams_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key1 UNIQUE (name);


--
-- Name: teams teams_name_key2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key2 UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

