
CREATE TABLE DEPARTMENT (

	dept_no text primary key,
	dept_name text


)
;

CREATE TABLE EMPLOYEES (

	emp_no integer primary key,
	birth_date date,
	first_name text,
	last_name text,
	gender text,
	hire_date date

);

CREATE TABLE DEPT_EMP (

	id serial not null,
	emp_no integer REFERENCES EMPLOYEES(emp_no),
	dept_no text REFERENCES DEPARTMENT(dept_no),
	from_date date,
	to_date date

);

CREATE TABLE DEPT_MANAGER (

	id serial not null,
	dept_no text REFERENCES DEPARTMENT(dept_no),
	emp_no integer REFERENCES EMPLOYEES(emp_no),
	from_date date,
	to_date date

);



CREATE TABLE SALARIES (

	id serial not null,
	emp_no integer REFERENCES EMPLOYEES(emp_no),
	salary integer,
	from_date date,
	to_date date

)
;
CREATE TABLE TITLES (

	id serial not null,
	emp_no integer REFERENCES EMPLOYEES(emp_no),
	title text,
	from_date date,
	to_date date
	

);