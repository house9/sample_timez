--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: house
--

INSERT INTO events VALUES (4, 'Special Event for UTC', '2013-10-05 07:00:00', '2013-10-10 22:00:00', 'The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. 

The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. 

The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. 

The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. 

The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. 

The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. ', 6, '2013-10-05 22:47:17.981174', '2013-11-02 19:14:16.766174', 'UTC');
INSERT INTO events VALUES (5, 'Two days in the Sun', '2013-10-15 04:30:00', '2013-10-15 18:00:00', 'asdsadfasdf', 6, '2013-10-08 16:58:44.98632', '2013-11-02 19:15:05.496268', 'Fiji');
INSERT INTO events VALUES (6, 'In the East', '2013-10-17 00:15:00', '2013-10-18 17:00:00', '', 6, '2013-10-08 17:02:11.805581', '2013-11-02 19:15:28.947299', 'Eastern Time (US & Canada)');
INSERT INTO events VALUES (8, 'Below down under', '2013-11-01 22:30:00', '2013-11-02 05:15:00', 'The quick brown fox jumps over lazy dog.
', 6, '2013-11-02 18:22:59.0995', '2013-11-02 19:16:23.82609', 'Auckland');
INSERT INTO events VALUES (7, 'Polar Bear Meetup', '2013-10-08 19:00:00', '2013-10-08 19:00:00', 'The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. 

The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. 
', 6, '2013-10-08 17:08:09.404759', '2013-11-02 19:16:41.972143', 'Alaska');
INSERT INTO events VALUES (2, 'Dublin Day', '2013-11-01 08:15:00', '2013-11-01 20:15:00', 'dfadfadfadsfasdfasdf', 6, '2013-10-05 22:41:07.669991', '2013-11-02 19:28:22.266224', 'Dublin');
INSERT INTO events VALUES (10, 'One', '2013-11-03 19:00:00', '2013-11-03 19:00:00', 'ONE', 6, '2013-11-04 18:48:11.611119', '2013-11-04 18:48:11.611119', 'Auckland');
INSERT INTO events VALUES (13, 'on the cape - 2', '2013-11-04 20:00:00', '2013-11-04 20:00:00', '', 6, '2013-11-04 00:30:00', '2013-11-04 19:10:54.065102', 'Cape Verde Is.');
INSERT INTO events VALUES (12, 'on the cape - 1', '2013-11-04 20:00:00', '2013-11-04 20:00:00', '', 6, '2013-11-03 23:30:00', '2013-11-04 19:11:26.143914', 'Cape Verde Is.');


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: house
--

SELECT pg_catalog.setval('events_id_seq', 14, true);


--
-- PostgreSQL database dump complete
--

