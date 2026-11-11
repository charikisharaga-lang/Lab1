CREATE TABLE IF NOT EXISTS public.departments
(
    department_code integer NOT NULL,
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    serves_individuals boolean NOT NULL,
    serves_legal_entities boolean NOT NULL,
    department_functions text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT departments_pkey PRIMARY KEY (department_code)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.departments
    OWNER to postgres;
