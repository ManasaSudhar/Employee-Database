-- Table: employee_details.salaries

-- DROP TABLE IF EXISTS employee_details.salaries;

CREATE TABLE IF NOT EXISTS employee_details.salaries
(
    emp_no integer,
    salary bigint,
    from_date date,
    to_date date,
    CONSTRAINT salaries_emp_no_fkey FOREIGN KEY (emp_no)
        REFERENCES employee_details.employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS employee_details.salaries
    OWNER to postgres;

--Insert Statement

INSERT INTO employee_details.salaries(
	emp_no, salary, from_date, to_date)
	VALUES (?, ?, ?, ?);