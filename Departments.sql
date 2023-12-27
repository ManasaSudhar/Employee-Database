-- Table: employee_details.departments

-- DROP TABLE IF EXISTS employee_details.departments;

CREATE TABLE IF NOT EXISTS employee_details.departments
(
    dept_no character(4) COLLATE pg_catalog."default" NOT NULL,
    dept_name character varying(40) COLLATE pg_catalog."default",
    CONSTRAINT departments_pkey PRIMARY KEY (dept_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS employee_details.departments
    OWNER to postgres;