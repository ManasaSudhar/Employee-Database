-- Table: employee_details.titles

-- DROP TABLE IF EXISTS employee_details.titles;

CREATE TABLE IF NOT EXISTS employee_details.titles
(
    emp_no integer,
    title character varying(50) COLLATE pg_catalog."default",
    start_date date,
    end_date date,
    CONSTRAINT titles_emp_no_fkey FOREIGN KEY (emp_no)
        REFERENCES employee_details.employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS employee_details.titles
    OWNER to postgres;

--Insert Statement

INSERT INTO employee_details.titles(
	emp_no, title, start_date, end_date)
	VALUES (?, ?, ?, ?);