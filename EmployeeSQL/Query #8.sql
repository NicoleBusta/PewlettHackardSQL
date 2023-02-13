SELECT 
	last_name, COUNT(last_name) AS "Frequency of Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Frequency of Last Name" DESC;

