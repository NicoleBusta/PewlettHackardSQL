# Pewlett Hackard SQL Analysis

## Overview of Project
<hr>
The purpose of this project was to analyze Company employees during the 1980s and 1990s. All that remains of the employee database from that time period were six CSV files.

Data modeling, data engineering, and data analysis were completed for the analysis.  Specifically, the following steps were completed:
<ul> •	Designed an SQL database (schema/ERD attached below) </ul>
<ul> •	Created six tables to correspond to the six CSV files </ul>
<ul> •	Imported data from the CSV files </ul>
<ul> •	Completed queries to answer key HR questions </ul>
<hr>
### Data Modeling
QuickDBD and pgAdmin were used to created the below ERDs.
<img src = "images/PewlettHackard_db_ERD_QuickDBD.png">
<img src = "images/PewlettHackard_db_ERD.png">

### Data Engineering
Below is the table schema developed for the database. The corresponding CSV files were then imported to each table.
```CREATE TABLE titles(
	title_id VARCHAR(5) NOT NULL PRIMARY KEY, 
	title VARCHAR (30)
);

CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title VARCHAR (5),
	birth_date VARCHAR (10),
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	sex VARCHAR (1),
	hire_date VARCHAR (10),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE departments(
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY, 
	dept_name VARCHAR (20)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL, 
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);```

### Data Analysis
Eight queries were run to generate the following reports:
<ol> 1.	List of each employees’ number, last name, first name, sex, and salary </ol>
<ol> 2.	List of the first name, last name, and hire date for employees hired in 1986 </ol>
<ol> 3.	List of department managers – including their department number, department name, employee number, last name, and first name </ol>
<ol> 4.	List of employees’ department numbers – including their employee number, last name, first name, and department name </ol>
<ol> 5.	List of the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B </ol>
<ol> 6.	List of each employee in the Sales department – including their employee number, last name, and first name </ol>
<ol> 7.	List of each employee in the Sales and Development departments – including their employee number, last name, first name, and department name </ol>
<ol> 8.	List of the frequency counts, in descending order, of all the employee last names </ol>

## Results - Queries and Outputs
<li><a href = "EmployeeSQL/Query #1.sql"> </a></li>
<li><a href = "EmployeeSQL/Query #2.sql"> </a></li>
<li><a href = "EmployeeSQL/Query #3.sql"> </a></li>
<li><a href = "EmployeeSQL/Query #4.sql"> </a></li>
<li><a href = "EmployeeSQL/Query #5.sql"> </a></li>
<li><a href = "EmployeeSQL/Query #6.sql"> </a></li>
<li><a href = "EmployeeSQL/Query #7.sql"> </a></li>
<li><a href = "EmployeeSQL/Query #8.sql"> </a></li>
<li><a href = "Query Results/Query 1_data-1676224140167.csv"> </a></li>
<li><a href = "Query Results/Query 2_data-1676227624276.csv"> </a></li>
<li><a href = "Query Results/Query 3_data-1676229890024.csv"> </a></li>
<li><a href = "Query Results/Query 4_data-1676231835786.csv"> </a></li>
<li><a href = "Query Results/Query 5_data-1676232646666.csv"> </a></li>
<li><a href = "Query Results/Query 6_data-1676232994548.csv"> </a></li>
<li><a href = "Query Results/Query 7_data-1676233191647.csv"> </a></li>
<li><a href = "Query Results/Query 8_data-1676234311246.csv"> </a></li>

## Resources
Data Sources: departments.csv, dept_emp.csvdept_manager.csv, employees.csv, salaries.csv, titles.csv
Software: SQL, PostgresSQL, pgAdmin, QuickDBD, VSCode