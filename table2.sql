-- Table: public.work_schedules

-- DROP TABLE IF EXISTS public.work_schedules;

CREATE TABLE IF NOT EXISTS public.work_schedules
(
    post_office_cod integer NOT NULL,
    day_of_week character varying(20) COLLATE pg_catalog."default" NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL,
    break_start_time time without time zone,
    break_end_time time without time zone,
    department_id integer,
    CONSTRAINT work_schedules_pkey PRIMARY KEY (post_office_cod),
    CONSTRAINT work_schedules FOREIGN KEY (department_id)
        REFERENCES public.departments (department_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.work_schedules
    OWNER to postgres;