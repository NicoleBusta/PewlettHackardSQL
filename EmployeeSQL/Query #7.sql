SELECT departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
JOIN employees
ON dept_emp.emp_no = employees.emp_no
WHERE dept_name IN ('Sales', 'Development');