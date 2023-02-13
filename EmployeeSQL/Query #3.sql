SELECT titles.title, departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM titles
JOIN employees
ON titles.title_id = employees.emp_title
JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
JOIN departments
ON dept_manager.dept_no = departments.dept_no