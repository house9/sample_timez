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
-- Data for Name: work_schedules; Type: TABLE DATA; Schema: public; Owner: house
--

INSERT INTO work_schedules VALUES (3, 4, '2013-11-04 19:00:00', '2013-11-04 19:00:00', 'UTC', '2013-11-04 19:59:07.786599', '2013-11-04 19:59:07.786599');
INSERT INTO work_schedules VALUES (4, 6, '2013-11-05 22:15:00', '2013-11-06 04:45:00', 'Pacific Time (US & Canada)', '2013-11-04 20:05:03.993825', '2013-11-04 20:05:03.993825');
INSERT INTO work_schedules VALUES (5, 6, '2013-11-05 13:30:00', '2013-11-05 19:30:00', 'UTC', '2013-11-04 20:08:18.683947', '2013-11-04 20:08:18.683947');
INSERT INTO work_schedules VALUES (6, 7, '2013-11-06 01:15:00', '2013-11-05 05:45:00', 'Pacific Time (US & Canada)', '2013-11-04 20:08:56.674512', '2013-11-04 20:08:56.674512');


--
-- Name: work_schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: house
--

SELECT pg_catalog.setval('work_schedules_id_seq', 7, true);


--
-- PostgreSQL database dump complete
--

