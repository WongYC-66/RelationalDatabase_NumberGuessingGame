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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guess_number integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 177);
INSERT INTO public.games VALUES (2, 1, 621);
INSERT INTO public.games VALUES (3, 2, 311);
INSERT INTO public.games VALUES (4, 2, 702);
INSERT INTO public.games VALUES (5, 1, 204);
INSERT INTO public.games VALUES (6, 1, 250);
INSERT INTO public.games VALUES (7, 1, 337);
INSERT INTO public.games VALUES (8, 3, 884);
INSERT INTO public.games VALUES (9, 3, 702);
INSERT INTO public.games VALUES (10, 4, 961);
INSERT INTO public.games VALUES (11, 4, 541);
INSERT INTO public.games VALUES (12, 3, 425);
INSERT INTO public.games VALUES (13, 3, 149);
INSERT INTO public.games VALUES (14, 3, 336);
INSERT INTO public.games VALUES (15, 5, 757);
INSERT INTO public.games VALUES (16, 5, 606);
INSERT INTO public.games VALUES (17, 6, 639);
INSERT INTO public.games VALUES (18, 6, 105);
INSERT INTO public.games VALUES (19, 5, 243);
INSERT INTO public.games VALUES (20, 5, 373);
INSERT INTO public.games VALUES (21, 5, 549);
INSERT INTO public.games VALUES (22, 7, 687);
INSERT INTO public.games VALUES (23, 7, 502);
INSERT INTO public.games VALUES (24, 8, 748);
INSERT INTO public.games VALUES (25, 8, 251);
INSERT INTO public.games VALUES (26, 7, 692);
INSERT INTO public.games VALUES (27, 7, 973);
INSERT INTO public.games VALUES (28, 7, 164);
INSERT INTO public.games VALUES (29, 9, 770);
INSERT INTO public.games VALUES (30, 9, 636);
INSERT INTO public.games VALUES (31, 10, 152);
INSERT INTO public.games VALUES (32, 10, 92);
INSERT INTO public.games VALUES (33, 9, 362);
INSERT INTO public.games VALUES (34, 9, 404);
INSERT INTO public.games VALUES (35, 9, 594);
INSERT INTO public.games VALUES (36, 11, 857);
INSERT INTO public.games VALUES (37, 11, 353);
INSERT INTO public.games VALUES (38, 12, 555);
INSERT INTO public.games VALUES (39, 12, 590);
INSERT INTO public.games VALUES (40, 11, 612);
INSERT INTO public.games VALUES (41, 11, 923);
INSERT INTO public.games VALUES (42, 11, 33);
INSERT INTO public.games VALUES (43, 13, 420);
INSERT INTO public.games VALUES (44, 13, 871);
INSERT INTO public.games VALUES (45, 14, 741);
INSERT INTO public.games VALUES (46, 14, 656);
INSERT INTO public.games VALUES (47, 13, 333);
INSERT INTO public.games VALUES (48, 13, 462);
INSERT INTO public.games VALUES (49, 13, 582);
INSERT INTO public.games VALUES (50, 15, 627);
INSERT INTO public.games VALUES (51, 15, 994);
INSERT INTO public.games VALUES (52, 16, 521);
INSERT INTO public.games VALUES (53, 16, 721);
INSERT INTO public.games VALUES (54, 15, 497);
INSERT INTO public.games VALUES (55, 15, 449);
INSERT INTO public.games VALUES (56, 15, 186);
INSERT INTO public.games VALUES (57, 17, 68);
INSERT INTO public.games VALUES (58, 17, 153);
INSERT INTO public.games VALUES (59, 18, 518);
INSERT INTO public.games VALUES (60, 18, 602);
INSERT INTO public.games VALUES (61, 17, 755);
INSERT INTO public.games VALUES (62, 17, 290);
INSERT INTO public.games VALUES (63, 17, 225);
INSERT INTO public.games VALUES (64, 19, 910);
INSERT INTO public.games VALUES (65, 19, 231);
INSERT INTO public.games VALUES (66, 20, 629);
INSERT INTO public.games VALUES (67, 20, 790);
INSERT INTO public.games VALUES (68, 19, 225);
INSERT INTO public.games VALUES (69, 19, 630);
INSERT INTO public.games VALUES (70, 19, 958);
INSERT INTO public.games VALUES (71, 21, 490);
INSERT INTO public.games VALUES (72, 21, 19);
INSERT INTO public.games VALUES (73, 21, 567);
INSERT INTO public.games VALUES (74, 21, 384);
INSERT INTO public.games VALUES (75, 22, 594);
INSERT INTO public.games VALUES (76, 23, 11);
INSERT INTO public.games VALUES (77, 21, 973);
INSERT INTO public.games VALUES (78, 21, 800);
INSERT INTO public.games VALUES (79, 21, 767);
INSERT INTO public.games VALUES (80, 21, 723);
INSERT INTO public.games VALUES (81, 21, 719);
INSERT INTO public.games VALUES (82, 22, 108);
INSERT INTO public.games VALUES (83, 23, 486);
INSERT INTO public.games VALUES (84, 21, 258);
INSERT INTO public.games VALUES (85, 21, 234);
INSERT INTO public.games VALUES (86, 21, 839);
INSERT INTO public.games VALUES (87, 21, 757);
INSERT INTO public.games VALUES (88, 21, 299);
INSERT INTO public.games VALUES (89, 22, 367);
INSERT INTO public.games VALUES (90, 23, 629);
INSERT INTO public.games VALUES (91, 21, 684);
INSERT INTO public.games VALUES (92, 21, 909);
INSERT INTO public.games VALUES (93, 21, 751);
INSERT INTO public.games VALUES (94, 21, 47);
INSERT INTO public.games VALUES (95, 21, 958);
INSERT INTO public.games VALUES (96, 22, 982);
INSERT INTO public.games VALUES (97, 23, 505);
INSERT INTO public.games VALUES (98, 21, 428);
INSERT INTO public.games VALUES (99, 24, 720);
INSERT INTO public.games VALUES (100, 24, 888);
INSERT INTO public.games VALUES (101, 25, 647);
INSERT INTO public.games VALUES (102, 25, 193);
INSERT INTO public.games VALUES (103, 24, 302);
INSERT INTO public.games VALUES (104, 24, 451);
INSERT INTO public.games VALUES (105, 24, 111);
INSERT INTO public.games VALUES (106, 26, 66);
INSERT INTO public.games VALUES (107, 26, 785);
INSERT INTO public.games VALUES (108, 27, 704);
INSERT INTO public.games VALUES (109, 27, 354);
INSERT INTO public.games VALUES (110, 26, 410);
INSERT INTO public.games VALUES (111, 26, 956);
INSERT INTO public.games VALUES (112, 26, 972);
INSERT INTO public.games VALUES (113, 28, 475);
INSERT INTO public.games VALUES (114, 28, 213);
INSERT INTO public.games VALUES (115, 29, 313);
INSERT INTO public.games VALUES (116, 29, 261);
INSERT INTO public.games VALUES (117, 28, 144);
INSERT INTO public.games VALUES (118, 28, 460);
INSERT INTO public.games VALUES (119, 28, 205);
INSERT INTO public.games VALUES (120, 30, 148);
INSERT INTO public.games VALUES (121, 30, 15);
INSERT INTO public.games VALUES (122, 31, 394);
INSERT INTO public.games VALUES (123, 31, 672);
INSERT INTO public.games VALUES (124, 30, 642);
INSERT INTO public.games VALUES (125, 30, 404);
INSERT INTO public.games VALUES (126, 30, 400);
INSERT INTO public.games VALUES (127, 32, 19);
INSERT INTO public.games VALUES (128, 33, 143);
INSERT INTO public.games VALUES (129, 33, 998);
INSERT INTO public.games VALUES (130, 34, 111);
INSERT INTO public.games VALUES (131, 34, 994);
INSERT INTO public.games VALUES (132, 33, 821);
INSERT INTO public.games VALUES (133, 33, 235);
INSERT INTO public.games VALUES (134, 33, 474);
INSERT INTO public.games VALUES (135, 35, 52);
INSERT INTO public.games VALUES (136, 35, 195);
INSERT INTO public.games VALUES (137, 36, 503);
INSERT INTO public.games VALUES (138, 36, 97);
INSERT INTO public.games VALUES (139, 35, 844);
INSERT INTO public.games VALUES (140, 35, 562);
INSERT INTO public.games VALUES (141, 35, 522);
INSERT INTO public.games VALUES (142, 37, 160);
INSERT INTO public.games VALUES (143, 37, 616);
INSERT INTO public.games VALUES (144, 38, 469);
INSERT INTO public.games VALUES (145, 38, 227);
INSERT INTO public.games VALUES (146, 37, 531);
INSERT INTO public.games VALUES (147, 37, 644);
INSERT INTO public.games VALUES (148, 37, 703);
INSERT INTO public.games VALUES (149, 39, 592);
INSERT INTO public.games VALUES (150, 39, 340);
INSERT INTO public.games VALUES (151, 40, 568);
INSERT INTO public.games VALUES (152, 40, 780);
INSERT INTO public.games VALUES (153, 39, 715);
INSERT INTO public.games VALUES (154, 39, 536);
INSERT INTO public.games VALUES (155, 39, 210);
INSERT INTO public.games VALUES (156, 41, 759);
INSERT INTO public.games VALUES (157, 41, 638);
INSERT INTO public.games VALUES (158, 42, 335);
INSERT INTO public.games VALUES (159, 42, 951);
INSERT INTO public.games VALUES (160, 41, 348);
INSERT INTO public.games VALUES (161, 41, 148);
INSERT INTO public.games VALUES (162, 41, 645);
INSERT INTO public.games VALUES (163, 43, 555);
INSERT INTO public.games VALUES (164, 43, 459);
INSERT INTO public.games VALUES (165, 44, 86);
INSERT INTO public.games VALUES (166, 44, 443);
INSERT INTO public.games VALUES (167, 43, 737);
INSERT INTO public.games VALUES (168, 43, 757);
INSERT INTO public.games VALUES (169, 43, 41);
INSERT INTO public.games VALUES (170, 45, 996);
INSERT INTO public.games VALUES (171, 45, 754);
INSERT INTO public.games VALUES (172, 46, 406);
INSERT INTO public.games VALUES (173, 46, 912);
INSERT INTO public.games VALUES (174, 45, 263);
INSERT INTO public.games VALUES (175, 45, 874);
INSERT INTO public.games VALUES (176, 45, 889);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1684977339861');
INSERT INTO public.users VALUES (2, 'user_1684977339860');
INSERT INTO public.users VALUES (3, 'user_1684977350954');
INSERT INTO public.users VALUES (4, 'user_1684977350953');
INSERT INTO public.users VALUES (5, 'user_1684977425119');
INSERT INTO public.users VALUES (6, 'user_1684977425118');
INSERT INTO public.users VALUES (7, 'user_1684977435510');
INSERT INTO public.users VALUES (8, 'user_1684977435509');
INSERT INTO public.users VALUES (9, 'user_1684977448852');
INSERT INTO public.users VALUES (10, 'user_1684977448851');
INSERT INTO public.users VALUES (11, 'user_1684977558730');
INSERT INTO public.users VALUES (12, 'user_1684977558729');
INSERT INTO public.users VALUES (13, 'user_1684977583989');
INSERT INTO public.users VALUES (14, 'user_1684977583988');
INSERT INTO public.users VALUES (15, 'user_1684977600208');
INSERT INTO public.users VALUES (16, 'user_1684977600207');
INSERT INTO public.users VALUES (17, 'user_1684977848789');
INSERT INTO public.users VALUES (18, 'user_1684977848788');
INSERT INTO public.users VALUES (19, 'user_1684977857228');
INSERT INTO public.users VALUES (20, 'user_1684977857227');
INSERT INTO public.users VALUES (21, '0');
INSERT INTO public.users VALUES (22, '1');
INSERT INTO public.users VALUES (23, 'a');
INSERT INTO public.users VALUES (24, 'user_1684978764796');
INSERT INTO public.users VALUES (25, 'user_1684978764795');
INSERT INTO public.users VALUES (26, 'user_1684978775525');
INSERT INTO public.users VALUES (27, 'user_1684978775524');
INSERT INTO public.users VALUES (28, 'user_1684978832357');
INSERT INTO public.users VALUES (29, 'user_1684978832356');
INSERT INTO public.users VALUES (30, 'user_1684978877687');
INSERT INTO public.users VALUES (31, 'user_1684978877686');
INSERT INTO public.users VALUES (32, 'abc');
INSERT INTO public.users VALUES (33, 'user_1684978973491');
INSERT INTO public.users VALUES (34, 'user_1684978973490');
INSERT INTO public.users VALUES (35, 'user_1684979032852');
INSERT INTO public.users VALUES (36, 'user_1684979032851');
INSERT INTO public.users VALUES (37, 'user_1684979040970');
INSERT INTO public.users VALUES (38, 'user_1684979040969');
INSERT INTO public.users VALUES (39, 'user_1684979048257');
INSERT INTO public.users VALUES (40, 'user_1684979048256');
INSERT INTO public.users VALUES (41, 'user_1684979057859');
INSERT INTO public.users VALUES (42, 'user_1684979057858');
INSERT INTO public.users VALUES (43, 'user_1684979120211');
INSERT INTO public.users VALUES (44, 'user_1684979120210');
INSERT INTO public.users VALUES (45, 'user_1684979134281');
INSERT INTO public.users VALUES (46, 'user_1684979134280');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 176, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 46, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

