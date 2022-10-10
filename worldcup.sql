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
    round character varying(50) NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL
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
    name character varying(50) NOT NULL,
    team_id integer NOT NULL
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

INSERT INTO public.games VALUES ('Final', 2018, 1, 2, 4, 2, 1);
INSERT INTO public.games VALUES ('Third Place', 2018, 3, 4, 2, 0, 2);
INSERT INTO public.games VALUES ('Semi-Final', 2018, 2, 4, 2, 1, 3);
INSERT INTO public.games VALUES ('Semi-Final', 2018, 1, 3, 1, 0, 4);
INSERT INTO public.games VALUES ('Quarter-Final', 2018, 2, 5, 3, 2, 5);
INSERT INTO public.games VALUES ('Quarter-Final', 2018, 4, 6, 2, 0, 6);
INSERT INTO public.games VALUES ('Quarter-Final', 2018, 3, 7, 2, 1, 7);
INSERT INTO public.games VALUES ('Quarter-Final', 2018, 1, 8, 2, 0, 8);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 4, 9, 2, 1, 9);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 6, 10, 1, 0, 10);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 3, 11, 3, 2, 11);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 7, 12, 2, 0, 12);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 2, 13, 2, 1, 13);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 5, 14, 2, 1, 14);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 8, 15, 2, 1, 15);
INSERT INTO public.games VALUES ('Eighth-Final', 2018, 1, 16, 4, 3, 16);
INSERT INTO public.games VALUES ('Final', 2014, 17, 16, 1, 0, 17);
INSERT INTO public.games VALUES ('Third Place', 2014, 18, 7, 3, 0, 18);
INSERT INTO public.games VALUES ('Semi-Final', 2014, 16, 18, 1, 0, 19);
INSERT INTO public.games VALUES ('Semi-Final', 2014, 17, 7, 7, 1, 20);
INSERT INTO public.games VALUES ('Quarter-Final', 2014, 18, 19, 1, 0, 21);
INSERT INTO public.games VALUES ('Quarter-Final', 2014, 16, 3, 1, 0, 22);
INSERT INTO public.games VALUES ('Quarter-Final', 2014, 7, 9, 2, 1, 23);
INSERT INTO public.games VALUES ('Quarter-Final', 2014, 17, 1, 1, 0, 24);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 7, 20, 2, 1, 25);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 9, 8, 2, 0, 26);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 1, 21, 2, 0, 27);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 17, 22, 2, 1, 28);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 18, 12, 2, 1, 29);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 19, 23, 2, 1, 30);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 16, 10, 1, 0, 31);
INSERT INTO public.games VALUES ('Eighth-Final', 2014, 3, 24, 2, 1, 32);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 1);
INSERT INTO public.teams VALUES ('Croatia', 2);
INSERT INTO public.teams VALUES ('Belgium', 3);
INSERT INTO public.teams VALUES ('England', 4);
INSERT INTO public.teams VALUES ('Russia', 5);
INSERT INTO public.teams VALUES ('Sweden', 6);
INSERT INTO public.teams VALUES ('Brazil', 7);
INSERT INTO public.teams VALUES ('Uruguay', 8);
INSERT INTO public.teams VALUES ('Colombia', 9);
INSERT INTO public.teams VALUES ('Switzerland', 10);
INSERT INTO public.teams VALUES ('Japan', 11);
INSERT INTO public.teams VALUES ('Mexico', 12);
INSERT INTO public.teams VALUES ('Denmark', 13);
INSERT INTO public.teams VALUES ('Spain', 14);
INSERT INTO public.teams VALUES ('Portugal', 15);
INSERT INTO public.teams VALUES ('Argentina', 16);
INSERT INTO public.teams VALUES ('Germany', 17);
INSERT INTO public.teams VALUES ('Netherlands', 18);
INSERT INTO public.teams VALUES ('Costa Rica', 19);
INSERT INTO public.teams VALUES ('Chile', 20);
INSERT INTO public.teams VALUES ('Nigeria', 21);
INSERT INTO public.teams VALUES ('Algeria', 22);
INSERT INTO public.teams VALUES ('Greece', 23);
INSERT INTO public.teams VALUES ('United States', 24);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


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

