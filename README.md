The following employee database consist of details of all the employees working in an organisation. 
The database consist of 6 tables and they are,

employees: This table consist of 6 columns and they are emp_no, birth_date, first_name, last_name, 
hire_date and gender. The emp_no is the primary key and all the columns are not nullable.

departments:This table consist of 2 columns and they are dept_no and dept_name. dept_no is primary key and all the 
columns are not nullable.

dept_manager: this table consist of 4 columns they are dept_no , emp_no, from_date and to_date.
the dept_no and emp_no are foreign keys from departments and employee table. dept_manager is a staging table which consist 
of the details of the managers in a department .

salaries: this table consist of 4 columns they are emp_no as foreign key from employees table , salary , start_date, end_date.

titles: this table consist of 4 columns they are emp_no as foreign key from employees table , title , from_date, to_date.

dept_emp: this table consist of 4 columns they are emp_no, dept_no, from_date and to_date.
emp_no and dept_no are foreign keys from employees and departments table. this table consist of information of the employees in 
each department for a particular period of time.
