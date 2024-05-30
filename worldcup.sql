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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
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
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (33, 394, 395, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (34, 396, 397, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (35, 395, 397, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (36, 394, 396, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (37, 395, 398, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (38, 397, 399, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (39, 396, 400, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (40, 394, 401, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (41, 397, 402, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (42, 399, 403, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (43, 396, 404, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (44, 400, 405, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (45, 395, 406, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (46, 398, 407, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (47, 401, 408, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (48, 394, 409, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (49, 410, 409, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (50, 411, 400, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (51, 409, 411, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (52, 410, 400, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (53, 411, 412, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (54, 409, 396, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (55, 400, 402, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (56, 410, 394, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (57, 400, 413, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (58, 402, 401, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (59, 394, 414, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (60, 410, 415, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (61, 411, 405, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (62, 412, 416, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (63, 409, 403, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (64, 396, 417, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (394, 'France');
INSERT INTO public.teams VALUES (395, 'Croatia');
INSERT INTO public.teams VALUES (396, 'Belgium');
INSERT INTO public.teams VALUES (397, 'England');
INSERT INTO public.teams VALUES (398, 'Russia');
INSERT INTO public.teams VALUES (399, 'Sweden');
INSERT INTO public.teams VALUES (400, 'Brazil');
INSERT INTO public.teams VALUES (401, 'Uruguay');
INSERT INTO public.teams VALUES (402, 'Colombia');
INSERT INTO public.teams VALUES (403, 'Switzerland');
INSERT INTO public.teams VALUES (404, 'Japan');
INSERT INTO public.teams VALUES (405, 'Mexico');
INSERT INTO public.teams VALUES (406, 'Denmark');
INSERT INTO public.teams VALUES (407, 'Spain');
INSERT INTO public.teams VALUES (408, 'Portugal');
INSERT INTO public.teams VALUES (409, 'Argentina');
INSERT INTO public.teams VALUES (410, 'Germany');
INSERT INTO public.teams VALUES (411, 'Netherlands');
INSERT INTO public.teams VALUES (412, 'Costa Rica');
INSERT INTO public.teams VALUES (413, 'Chile');
INSERT INTO public.teams VALUES (414, 'Nigeria');
INSERT INTO public.teams VALUES (415, 'Algeria');
INSERT INTO public.teams VALUES (416, 'Greece');
INSERT INTO public.teams VALUES (417, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 417, true);


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
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

