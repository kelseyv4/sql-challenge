-- DROP TABLE departments CASCADE; 
-- DROP TABLE dept_emp;
-- DROP TABLE dept_manager;
-- DROP TABLE employees CASCADE;
-- DROP TABLE salaries;
-- DROP TABLE titles; 

--employees and departments have primary keys/are connectors

CREATE TABLE employees(
	emp_no VARCHAR NULL,
	emp_title_id VARCHAR(255) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(255) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no));
	
CREATE TABLE departments(
	dept_no VARCHAR(255) ,
	dept_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (dept_no));
	
CREATE TABLE dept_emp(
	emp_no VARCHAR NULL,
	dept_no VARCHAR(255),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

CREATE TABLE dept_manager(
	dept_no VARCHAR(255),
	emp_no VARCHAR NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)); 

CREATE TABLE salaries(
	emp_no VARCHAR NULL, 
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE titles(
	tile_id VARCHAR(255) NOT NULL,
	title VARCHAR(255) NOT NULL);
