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
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: house
--

INSERT INTO users VALUES (2, '2.mexico_gmt-6@example.com', 'Mexico City', '$2a$10$gUPuJ68rYKU5k2komfIDQuYDXJ/6bIDyIGY/AhcthhotHgQ7f5GSe', NULL, NULL, NULL, 5, '2013-11-09 22:46:48.743793', '2013-11-09 22:31:40.928598', '127.0.0.1', '127.0.0.1', '2013-10-04 19:52:57.052714', '2013-11-09 22:46:57.253839');
INSERT INTO users VALUES (3, '3.dateline_gmt-11@example.com', 'International Date Line West', '$2a$10$15ij5.DxBwrQVSfbXN6OxuGzEsfSjy1Iu5Fj.rd7omLz60DNtXFDu', NULL, NULL, NULL, 9, '2013-11-09 22:47:08.32485', '2013-11-09 22:45:14.960834', '127.0.0.1', '127.0.0.1', '2013-10-04 20:28:11.06614', '2013-11-09 22:47:28.151638');
INSERT INTO users VALUES (4, '4.astana_gmt+6@example.com', 'Astana', '$2a$10$EW870uSERGHMebw4S2w0CeM/elnqTteo9Za06QFNh39VcgDJuv7Q6', NULL, NULL, NULL, 5, '2013-11-09 22:47:33.600131', '2013-11-09 22:32:07.388251', '127.0.0.1', '127.0.0.1', '2013-10-05 21:52:28.111337', '2013-11-09 22:47:40.882955');
INSERT INTO users VALUES (6, '1.utc_gmt+0@example.com', 'UTC', '$2a$10$Qwd/orNSIKQSYn1Q/r5kVukm1sdzorhCG/X0yy5FdskTKLKYXGr/i', NULL, NULL, NULL, 10, '2013-11-09 22:49:12.361107', '2013-11-09 22:46:22.057564', '127.0.0.1', '127.0.0.1', '2013-11-02 17:49:49.854059', '2013-11-09 22:49:12.363167');
INSERT INTO users VALUES (7, '_pacific_gmt-8@example.com', 'Pacific Time (US & Canada)', '$2a$10$Rna3PwFagNoTr5Qn3QR.BOjpWDhU0Yo/qyy275ixDCnt2xEEcYkHW', NULL, NULL, NULL, 1, '2013-11-09 22:50:15.654354', '2013-11-09 22:50:15.654354', '127.0.0.1', '127.0.0.1', '2013-11-09 22:50:15.650995', '2013-11-09 22:50:15.654813');


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: house
--

SELECT pg_catalog.setval('users_id_seq', 7, true);


--
-- PostgreSQL database dump complete
--

