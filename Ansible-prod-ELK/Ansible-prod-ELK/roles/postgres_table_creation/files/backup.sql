--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: check_no; Type: TABLE; Schema: public; Owner: ibm
--

CREATE TABLE public.check_no (
    id integer NOT NULL,
    "CHECK NO." character varying(50),
    "CATEGORY" character varying(500),
    "Control Name" character varying(500),
    "Control Description" character varying(1000),
    "Control Impact" character varying(1000),
    "Version Name" character varying(50),
    "Version-Date" character varying(50),
    "ANSIBLE" character varying(100)
);


ALTER TABLE public.check_no OWNER TO ibm;

--
-- Name: check_no_id_seq; Type: SEQUENCE; Schema: public; Owner: ibm
--

CREATE SEQUENCE public.check_no_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.check_no_id_seq OWNER TO ibm;

--
-- Name: check_no_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ibm
--

ALTER SEQUENCE public.check_no_id_seq OWNED BY public.check_no.id;


--
-- Name: host_inventory; Type: TABLE; Schema: public; Owner: ibm
--

CREATE TABLE public.host_inventory (
    id integer NOT NULL,
    "HOSTNAME" character varying(100),
    "IP Address" character varying(100),
    "OS Platform" character varying(50),
    "OS Version" integer,
    "Application" character varying(50),
    "Host Status" character varying(10),
    "Type" character varying(10)
);


ALTER TABLE public.host_inventory OWNER TO ibm;

--
-- Name: host_inventory_id_seq; Type: SEQUENCE; Schema: public; Owner: ibm
--

CREATE SEQUENCE public.host_inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.host_inventory_id_seq OWNER TO ibm;

--
-- Name: host_inventory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ibm
--

ALTER SEQUENCE public.host_inventory_id_seq OWNED BY public.host_inventory.id;


--
-- Name: inventory_status; Type: TABLE; Schema: public; Owner: ibm
--

CREATE TABLE public.inventory_status (
    id integer NOT NULL,
    "HOSTNAME" character varying(100),
    "IP Address" character varying(100),
    "Server Status" character varying(10)
);


ALTER TABLE public.inventory_status OWNER TO ibm;

--
-- Name: inventory_status_id_seq; Type: SEQUENCE; Schema: public; Owner: ibm
--

CREATE SEQUENCE public.inventory_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventory_status_id_seq OWNER TO ibm;

--
-- Name: inventory_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ibm
--

ALTER SEQUENCE public.inventory_status_id_seq OWNED BY public.inventory_status.id;


--
-- Name: mbss_output; Type: TABLE; Schema: public; Owner: ibm
--

CREATE TABLE public.mbss_output (
    id integer NOT NULL,
    "HOSTNAME" character varying(50) NOT NULL,
    "CHECK NO." character varying(50),
    "STATUS" character varying(50),
    "SCAN_DATE" character varying(50) NOT NULL,
    "SCAN_COMMAND" character varying(2000),
    "REMEDIATE_COMMAND" character varying(2000)
);


ALTER TABLE public.mbss_output OWNER TO ibm;

--
-- Name: mbss_output_id_seq; Type: SEQUENCE; Schema: public; Owner: ibm
--

CREATE SEQUENCE public.mbss_output_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mbss_output_id_seq OWNER TO ibm;

--
-- Name: mbss_output_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ibm
--

ALTER SEQUENCE public.mbss_output_id_seq OWNED BY public.mbss_output.id;


--
-- Name: check_no id; Type: DEFAULT; Schema: public; Owner: ibm
--

ALTER TABLE ONLY public.check_no ALTER COLUMN id SET DEFAULT nextval('public.check_no_id_seq'::regclass);


--
-- Name: host_inventory id; Type: DEFAULT; Schema: public; Owner: ibm
--

ALTER TABLE ONLY public.host_inventory ALTER COLUMN id SET DEFAULT nextval('public.host_inventory_id_seq'::regclass);


--
-- Name: inventory_status id; Type: DEFAULT; Schema: public; Owner: ibm
--

ALTER TABLE ONLY public.inventory_status ALTER COLUMN id SET DEFAULT nextval('public.inventory_status_id_seq'::regclass);


--
-- Name: mbss_output id; Type: DEFAULT; Schema: public; Owner: ibm
--

ALTER TABLE ONLY public.mbss_output ALTER COLUMN id SET DEFAULT nextval('public.mbss_output_id_seq'::regclass);


--
-- Data for Name: check_no; Type: TABLE DATA; Schema: public; Owner: ibm
--

COPY public.check_no (id, "CHECK NO.", "CATEGORY", "Control Name", "Control Description", "Control Impact", "Version Name", "Version-Date", "ANSIBLE") FROM stdin;
\.


--
-- Data for Name: host_inventory; Type: TABLE DATA; Schema: public; Owner: ibm
--

COPY public.host_inventory (id, "HOSTNAME", "IP Address", "OS Platform", "OS Version", "Application", "Host Status", "Type") FROM stdin;
\.


--
-- Data for Name: inventory_status; Type: TABLE DATA; Schema: public; Owner: ibm
--

COPY public.inventory_status (id, "HOSTNAME", "IP Address", "Server Status") FROM stdin;
\.


--
-- Data for Name: mbss_output; Type: TABLE DATA; Schema: public; Owner: ibm
--

COPY public.mbss_output (id, "HOSTNAME", "CHECK NO.", "STATUS", "SCAN_DATE", "SCAN_COMMAND", "REMEDIATE_COMMAND") FROM stdin;
\.


--
-- Name: check_no_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ibm
--

SELECT pg_catalog.setval('public.check_no_id_seq', 1, false);


--
-- Name: host_inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ibm
--

SELECT pg_catalog.setval('public.host_inventory_id_seq', 1, false);


--
-- Name: inventory_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ibm
--

SELECT pg_catalog.setval('public.inventory_status_id_seq', 1, false);


--
-- Name: mbss_output_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ibm
--

SELECT pg_catalog.setval('public.mbss_output_id_seq', 1, false);


--
-- Name: check_no check_no_pkey; Type: CONSTRAINT; Schema: public; Owner: ibm
--

ALTER TABLE ONLY public.check_no
    ADD CONSTRAINT check_no_pkey PRIMARY KEY (id);


--
-- Name: host_inventory host_inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: ibm
--

ALTER TABLE ONLY public.host_inventory
    ADD CONSTRAINT host_inventory_pkey PRIMARY KEY (id);


--
-- Name: inventory_status inventory_status_pkey; Type: CONSTRAINT; Schema: public; Owner: ibm
--

ALTER TABLE ONLY public.inventory_status
    ADD CONSTRAINT inventory_status_pkey PRIMARY KEY (id);


--
-- Name: mbss_output mbss_output_pkey; Type: CONSTRAINT; Schema: public; Owner: ibm
--

ALTER TABLE ONLY public.mbss_output
    ADD CONSTRAINT mbss_output_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--