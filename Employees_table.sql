-- Table: employee_details.employees

-- DROP TABLE IF EXISTS employee_details.employees;

CREATE TABLE IF NOT EXISTS employee_details.employees
(
    emp_no integer NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(14) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(16) COLLATE pg_catalog."default" NOT NULL,
    hire_date date NOT NULL,
    gender mood NOT NULL,
    CONSTRAINT employees_pkey PRIMARY KEY (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS employee_details.employees
    OWNER to postgres;

--Insert Statement

INSERT INTO employee_details.employees(
	emp_no, birth_date, first_name, last_name, hire_date, gender)
	VALUES (?, ?, ?, ?, ?, ?);