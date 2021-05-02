-- DROP TABLE departments CASCADE; 
-- DROP TABLE dept_emp;
-- DROP TABLE dept_manager;
-- DROP TABLE employees CASCADE;
-- DROP TABLE salaries;
-- DROP TABLE titles; 

--employees and departments have primary keys/are connectors

CREATE TABLE employees(
	emp_no INT PRIMARY KEY ,
	emp_title_id VARCHAR(255),
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(255) NOT NULL,
	hire_date DATE NOT NULL);
	
CREATE TABLE departments(
	dept_no VARCHAR(255) PRIMARY KEY, 
	dept_name VARCHAR(255) NOT NULL);
	
CREATE TABLE dept_emp(
		emp_no INT NOT NULL,
		dep_no VARCHAR(255) NOT NULL,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dep_no) references departments (dept_no));

CREATE TABLE dept_manager(
		dept_no VARCHAR(255) NOT NULL,
		emp_no INT NOT NULL,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)); 

CREATE TABLE salaries(
		emp_no INT NOT NULL, 
		salary INT NOT NULL,
	foreign key (emp_no) references employees (emp_no));

CREATE TABLE titles(
	tile_id VARCHAR(255) NOT NULL,
	title VARCHAR(255) NOT NULL);
