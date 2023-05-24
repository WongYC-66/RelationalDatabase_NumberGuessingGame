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

DROP DATABASE guess_number;
--
-- Name: guess_number; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE guess_number WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE guess_number OWNER TO freecodecamp;

\connect guess_number

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

INSERT INTO public.games VALUES (1, 1, 4);
INSERT INTO public.games VALUES (2, 1, 2);
INSERT INTO public.games VALUES (3, 2, 4);
INSERT INTO public.games VALUES (4, 3, 3);
INSERT INTO public.games VALUES (5, 3, 3);
INSERT INTO public.games VALUES (6, 4, 5);
INSERT INTO public.games VALUES (7, 4, 6);
INSERT INTO public.games VALUES (8, 3, 6);
INSERT INTO public.games VALUES (9, 3, 6);
INSERT INTO public.games VALUES (10, 3, 5);
INSERT INTO public.games VALUES (11, 5, 460);
INSERT INTO public.games VALUES (12, 5, 336);
INSERT INTO public.games VALUES (13, 6, 752);
INSERT INTO public.games VALUES (14, 6, 810);
INSERT INTO public.games VALUES (15, 5, 731);
INSERT INTO public.games VALUES (16, 5, 263);
INSERT INTO public.games VALUES (17, 5, 643);
INSERT INTO public.games VALUES (18, 7, 587);
INSERT INTO public.games VALUES (19, 7, 751);
INSERT INTO public.games VALUES (20, 8, 704);
INSERT INTO public.games VALUES (21, 8, 780);
INSERT INTO public.games VALUES (22, 7, 962);
INSERT INTO public.games VALUES (23, 7, 748);
INSERT INTO public.games VALUES (24, 7, 542);
INSERT INTO public.games VALUES (25, 1, 14);
INSERT INTO public.games VALUES (26, 1, 9);
INSERT INTO public.games VALUES (27, 9, 340);
INSERT INTO public.games VALUES (28, 9, 962);
INSERT INTO public.games VALUES (29, 10, 804);
INSERT INTO public.games VALUES (30, 10, 220);
INSERT INTO public.games VALUES (31, 9, 616);
INSERT INTO public.games VALUES (32, 9, 514);
INSERT INTO public.games VALUES (33, 9, 933);
INSERT INTO public.games VALUES (34, 11, 248);
INSERT INTO public.games VALUES (35, 11, 532);
INSERT INTO public.games VALUES (36, 12, 773);
INSERT INTO public.games VALUES (37, 12, 53);
INSERT INTO public.games VALUES (38, 11, 187);
INSERT INTO public.games VALUES (39, 11, 495);
INSERT INTO public.games VALUES (40, 11, 986);
INSERT INTO public.games VALUES (41, 13, 143);
INSERT INTO public.games VALUES (42, 13, 198);
INSERT INTO public.games VALUES (43, 14, 812);
INSERT INTO public.games VALUES (44, 14, 727);
INSERT INTO public.games VALUES (45, 13, 332);
INSERT INTO public.games VALUES (46, 13, 672);
INSERT INTO public.games VALUES (47, 13, 649);
INSERT INTO public.games VALUES (48, 15, 907);
INSERT INTO public.games VALUES (49, 15, 246);
INSERT INTO public.games VALUES (50, 16, 128);
INSERT INTO public.games VALUES (51, 16, 329);
INSERT INTO public.games VALUES (52, 15, 870);
INSERT INTO public.games VALUES (53, 15, 732);
INSERT INTO public.games VALUES (54, 15, 315);
INSERT INTO public.games VALUES (55, 17, 17);
INSERT INTO public.games VALUES (56, 18, 622);
INSERT INTO public.games VALUES (57, 18, 710);
INSERT INTO public.games VALUES (58, 19, 240);
INSERT INTO public.games VALUES (59, 19, 444);
INSERT INTO public.games VALUES (60, 18, 318);
INSERT INTO public.games VALUES (61, 18, 301);
INSERT INTO public.games VALUES (62, 18, 316);
INSERT INTO public.games VALUES (63, 20, 830);
INSERT INTO public.games VALUES (64, 20, 733);
INSERT INTO public.games VALUES (65, 21, 767);
INSERT INTO public.games VALUES (66, 21, 69);
INSERT INTO public.games VALUES (67, 20, 197);
INSERT INTO public.games VALUES (68, 20, 264);
INSERT INTO public.games VALUES (69, 20, 617);
INSERT INTO public.games VALUES (70, 22, 244);
INSERT INTO public.games VALUES (71, 22, 814);
INSERT INTO public.games VALUES (72, 23, 422);
INSERT INTO public.games VALUES (73, 23, 301);
INSERT INTO public.games VALUES (74, 22, 876);
INSERT INTO public.games VALUES (75, 22, 299);
INSERT INTO public.games VALUES (76, 22, 314);
INSERT INTO public.games VALUES (77, 24, 48);
INSERT INTO public.games VALUES (78, 24, 1001);
INSERT INTO public.games VALUES (79, 25, 812);
INSERT INTO public.games VALUES (80, 25, 598);
INSERT INTO public.games VALUES (81, 24, 932);
INSERT INTO public.games VALUES (82, 24, 932);
INSERT INTO public.games VALUES (83, 24, 879);
INSERT INTO public.games VALUES (84, 26, 175);
INSERT INTO public.games VALUES (85, 26, 947);
INSERT INTO public.games VALUES (86, 27, 977);
INSERT INTO public.games VALUES (87, 27, 221);
INSERT INTO public.games VALUES (88, 26, 516);
INSERT INTO public.games VALUES (89, 26, 972);
INSERT INTO public.games VALUES (90, 26, 336);
INSERT INTO public.games VALUES (91, 28, 892);
INSERT INTO public.games VALUES (92, 28, 703);
INSERT INTO public.games VALUES (93, 29, 427);
INSERT INTO public.games VALUES (94, 29, 645);
INSERT INTO public.games VALUES (95, 28, 369);
INSERT INTO public.games VALUES (96, 28, 95);
INSERT INTO public.games VALUES (97, 28, 977);
INSERT INTO public.games VALUES (98, 1, 10);
INSERT INTO public.games VALUES (99, 30, 579);
INSERT INTO public.games VALUES (100, 30, 243);
INSERT INTO public.games VALUES (101, 31, 941);
INSERT INTO public.games VALUES (102, 31, 463);
INSERT INTO public.games VALUES (103, 30, 157);
INSERT INTO public.games VALUES (104, 30, 240);
INSERT INTO public.games VALUES (105, 30, 22);
INSERT INTO public.games VALUES (106, 32, 23);
INSERT INTO public.games VALUES (107, 33, 349);
INSERT INTO public.games VALUES (108, 35, 76);
INSERT INTO public.games VALUES (109, 35, 132);
INSERT INTO public.games VALUES (110, 36, 229);
INSERT INTO public.games VALUES (111, 36, 819);
INSERT INTO public.games VALUES (112, 37, 592);
INSERT INTO public.games VALUES (113, 37, 648);
INSERT INTO public.games VALUES (114, 36, 950);
INSERT INTO public.games VALUES (115, 36, 966);
INSERT INTO public.games VALUES (116, 36, 786);
INSERT INTO public.games VALUES (117, 38, 681);
INSERT INTO public.games VALUES (118, 38, 284);
INSERT INTO public.games VALUES (119, 39, 531);
INSERT INTO public.games VALUES (120, 39, 816);
INSERT INTO public.games VALUES (121, 38, 466);
INSERT INTO public.games VALUES (122, 38, 845);
INSERT INTO public.games VALUES (123, 38, 791);
INSERT INTO public.games VALUES (124, 40, 857);
INSERT INTO public.games VALUES (125, 41, 589);
INSERT INTO public.games VALUES (126, 41, 214);
INSERT INTO public.games VALUES (127, 40, 8);
INSERT INTO public.games VALUES (128, 40, 297);
INSERT INTO public.games VALUES (129, 40, 97);
INSERT INTO public.games VALUES (130, 42, 321);
INSERT INTO public.games VALUES (131, 42, 609);
INSERT INTO public.games VALUES (132, 43, 636);
INSERT INTO public.games VALUES (133, 43, 198);
INSERT INTO public.games VALUES (134, 42, 822);
INSERT INTO public.games VALUES (135, 42, 67);
INSERT INTO public.games VALUES (136, 42, 277);
INSERT INTO public.games VALUES (137, 44, 210);
INSERT INTO public.games VALUES (138, 44, 442);
INSERT INTO public.games VALUES (139, 45, 251);
INSERT INTO public.games VALUES (140, 45, 52);
INSERT INTO public.games VALUES (141, 44, 806);
INSERT INTO public.games VALUES (142, 44, 699);
INSERT INTO public.games VALUES (143, 44, 485);
INSERT INTO public.games VALUES (144, 46, 463);
INSERT INTO public.games VALUES (145, 46, 291);
INSERT INTO public.games VALUES (146, 47, 927);
INSERT INTO public.games VALUES (147, 47, 315);
INSERT INTO public.games VALUES (148, 46, 371);
INSERT INTO public.games VALUES (149, 46, 307);
INSERT INTO public.games VALUES (150, 46, 34);
INSERT INTO public.games VALUES (151, 48, 989);
INSERT INTO public.games VALUES (152, 48, 629);
INSERT INTO public.games VALUES (153, 49, 99);
INSERT INTO public.games VALUES (154, 49, 210);
INSERT INTO public.games VALUES (155, 48, 505);
INSERT INTO public.games VALUES (156, 48, 170);
INSERT INTO public.games VALUES (157, 48, 799);
INSERT INTO public.games VALUES (158, 50, 216);
INSERT INTO public.games VALUES (159, 50, 679);
INSERT INTO public.games VALUES (160, 51, 401);
INSERT INTO public.games VALUES (161, 51, 138);
INSERT INTO public.games VALUES (162, 50, 385);
INSERT INTO public.games VALUES (163, 50, 335);
INSERT INTO public.games VALUES (164, 50, 710);
INSERT INTO public.games VALUES (165, 52, 27);
INSERT INTO public.games VALUES (166, 52, 378);
INSERT INTO public.games VALUES (167, 53, 584);
INSERT INTO public.games VALUES (168, 53, 527);
INSERT INTO public.games VALUES (169, 52, 316);
INSERT INTO public.games VALUES (170, 52, 596);
INSERT INTO public.games VALUES (171, 52, 640);
INSERT INTO public.games VALUES (172, 54, 431);
INSERT INTO public.games VALUES (173, 54, 882);
INSERT INTO public.games VALUES (174, 55, 693);
INSERT INTO public.games VALUES (175, 55, 68);
INSERT INTO public.games VALUES (176, 54, 475);
INSERT INTO public.games VALUES (177, 54, 211);
INSERT INTO public.games VALUES (178, 54, 176);
INSERT INTO public.games VALUES (179, 56, 229);
INSERT INTO public.games VALUES (180, 56, 258);
INSERT INTO public.games VALUES (181, 57, 43);
INSERT INTO public.games VALUES (182, 57, 361);
INSERT INTO public.games VALUES (183, 56, 994);
INSERT INTO public.games VALUES (184, 56, 214);
INSERT INTO public.games VALUES (185, 56, 363);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'abc');
INSERT INTO public.users VALUES (2, 'ABC');
INSERT INTO public.users VALUES (3, 'user_1684952312876');
INSERT INTO public.users VALUES (4, 'user_1684952312875');
INSERT INTO public.users VALUES (5, 'user_1684952401109');
INSERT INTO public.users VALUES (6, 'user_1684952401108');
INSERT INTO public.users VALUES (7, 'user_1684952476756');
INSERT INTO public.users VALUES (8, 'user_1684952476755');
INSERT INTO public.users VALUES (9, 'user_1684952985584');
INSERT INTO public.users VALUES (10, 'user_1684952985583');
INSERT INTO public.users VALUES (11, 'user_1684953064789');
INSERT INTO public.users VALUES (12, 'user_1684953064788');
INSERT INTO public.users VALUES (13, 'user_1684953215714');
INSERT INTO public.users VALUES (14, 'user_1684953215713');
INSERT INTO public.users VALUES (15, 'user_1684953253326');
INSERT INTO public.users VALUES (16, 'user_1684953253325');
INSERT INTO public.users VALUES (17, 'asd1kd9102id9012kd1');
INSERT INTO public.users VALUES (18, 'user_1684953393061');
INSERT INTO public.users VALUES (19, 'user_1684953393060');
INSERT INTO public.users VALUES (20, 'user_1684953437893');
INSERT INTO public.users VALUES (21, 'user_1684953437891');
INSERT INTO public.users VALUES (22, 'user_1684953496193');
INSERT INTO public.users VALUES (23, 'user_1684953496192');
INSERT INTO public.users VALUES (24, 'user_1684953561578');
INSERT INTO public.users VALUES (25, 'user_1684953561577');
INSERT INTO public.users VALUES (26, 'user_1684953577211');
INSERT INTO public.users VALUES (27, 'user_1684953577210');
INSERT INTO public.users VALUES (28, 'user_1684953659230');
INSERT INTO public.users VALUES (29, 'user_1684953659229');
INSERT INTO public.users VALUES (30, 'user_1684953802720');
INSERT INTO public.users VALUES (31, 'user_1684953802719');
INSERT INTO public.users VALUES (32, 'aaaaaaaaaaaaaaaaaaaaaa');
INSERT INTO public.users VALUES (33, 'user_1684954136632');
INSERT INTO public.users VALUES (34, 'user_1684954136632');
INSERT INTO public.users VALUES (35, 'user_1684954136631');
INSERT INTO public.users VALUES (36, 'user_1684954203283');
INSERT INTO public.users VALUES (37, 'user_1684954203282');
INSERT INTO public.users VALUES (38, 'user_1684954217382');
INSERT INTO public.users VALUES (39, 'user_1684954217381');
INSERT INTO public.users VALUES (40, 'user_1684954319317');
INSERT INTO public.users VALUES (41, 'user_1684954319316');
INSERT INTO public.users VALUES (42, 'user_1684954353435');
INSERT INTO public.users VALUES (43, 'user_1684954353434');
INSERT INTO public.users VALUES (44, 'user_1684954433454');
INSERT INTO public.users VALUES (45, 'user_1684954433453');
INSERT INTO public.users VALUES (46, 'user_1684954441182');
INSERT INTO public.users VALUES (47, 'user_1684954441181');
INSERT INTO public.users VALUES (48, 'user_1684954500788');
INSERT INTO public.users VALUES (49, 'user_1684954500787');
INSERT INTO public.users VALUES (50, 'user_1684954510240');
INSERT INTO public.users VALUES (51, 'user_1684954510239');
INSERT INTO public.users VALUES (52, 'user_1684954519916');
INSERT INTO public.users VALUES (53, 'user_1684954519915');
INSERT INTO public.users VALUES (54, 'user_1684954539821');
INSERT INTO public.users VALUES (55, 'user_1684954539820');
INSERT INTO public.users VALUES (56, 'user_1684954550354');
INSERT INTO public.users VALUES (57, 'user_1684954550353');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 185, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 57, true);


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

