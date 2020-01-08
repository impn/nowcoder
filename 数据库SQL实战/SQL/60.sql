SELECT
	t1.emp_no,
	t1.salary,
	SUM(t2.salary)
FROM salaries AS t1,salaries AS t2
WHERE t2.emp_no<=t1.emp_no
AND t1.to_date='9999-01-01'
AND t2.to_date='9999-01-01'
GROUP BY t1.emp_no