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

INSERT INTO users VALUES (3, 'alaska@example.com', 'Alaska', '$2a$10$15ij5.DxBwrQVSfbXN6OxuGzEsfSjy1Iu5Fj.rd7omLz60DNtXFDu', NULL, NULL, NULL, 3, '2013-10-04 20:29:56.94098', '2013-10-04 20:29:32.238814', '127.0.0.1', '127.0.0.1', '2013-10-04 20:28:11.06614', '2013-10-04 20:29:56.941892');
INSERT INTO users VALUES (4, 'arizona@example.com', 'Arizona', '$2a$10$EW870uSERGHMebw4S2w0CeM/elnqTteo9Za06QFNh39VcgDJuv7Q6', NULL, NULL, NULL, 1, '2013-10-05 21:52:28.138108', '2013-10-05 21:52:28.138108', '127.0.0.1', '127.0.0.1', '2013-10-05 21:52:28.111337', '2013-10-05 21:52:28.140596');
INSERT INTO users VALUES (1, 'indiana@example.com', 'Indiana (East)', '$2a$10$22G1IPiKjPHPR0s6A8eZMeUcU0B2OeIqf80Lcfr0YBCUkVj7AFFc.', NULL, NULL, NULL, 2, '2013-10-05 22:22:29.75258', '2013-10-04 19:37:06.311561', '127.0.0.1', '127.0.0.1', '2013-10-04 19:37:06.304602', '2013-10-05 22:23:09.61319');
INSERT INTO users VALUES (6, 'utc@example.com', 'UTC', '$2a$10$Qwd/orNSIKQSYn1Q/r5kVukm1sdzorhCG/X0yy5FdskTKLKYXGr/i', NULL, NULL, NULL, 2, '2013-11-02 18:17:56.934013', '2013-11-02 17:49:49.932636', '127.0.0.1', '127.0.0.1', '2013-11-02 17:49:49.854059', '2013-11-04 20:31:10.861553');
INSERT INTO users VALUES (5, 'mountain@example.com', 'Mountain Time (US & Canada)', '$2a$10$kBt7xAOoOMlASKfUewmcOOyVsM4CespY0uq2YTivxooJV42F.9p7.', NULL, NULL, NULL, 2, '2013-11-08 16:58:46.058356', '2013-10-06 15:58:04.538328', '127.0.0.1', '127.0.0.1', '2013-10-06 15:58:04.481475', '2013-11-08 16:58:46.059833');
INSERT INTO users VALUES (2, 'fiji@example.com', 'Fiji', '$2a$10$gUPuJ68rYKU5k2komfIDQuYDXJ/6bIDyIGY/AhcthhotHgQ7f5GSe', NULL, NULL, NULL, 2, '2013-11-08 16:59:38.09401', '2013-10-04 19:52:57.056379', '127.0.0.1', '127.0.0.1', '2013-10-04 19:52:57.052714', '2013-11-08 16:59:38.094653');


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: house
--

SELECT pg_catalog.setval('users_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

