-- Table: employee_details.dept_manager

-- DROP TABLE IF EXISTS employee_details.dept_manager;

CREATE TABLE IF NOT EXISTS employee_details.dept_manager
(
    emp_no integer,
    dept_no character(1) COLLATE pg_catalog."default",
    from_date date,
    to_date date,
    CONSTRAINT dept_manager_dept_no_fkey FOREIGN KEY (dept_no)
        REFERENCES employee_details.departments (dept_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT dept_manager_emp_no_fkey FOREIGN KEY (emp_no)
        REFERENCES employee_details.employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS employee_details.dept_manager
    OWNER to postgres;

--Insert Statement

INSERT INTO employee_details.dept_manager(
	emp_no, dept_no, from_date, to_date)
	VALUES (?, ?, ?, ?);
