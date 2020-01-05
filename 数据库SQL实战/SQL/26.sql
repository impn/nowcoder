SELECT
	t2.dept_no,
	t2.dept_name,
	t3.title,
	COUNT(1)AS COUNT
FROM
	dept_emp AS t1,
	departments AS t2,
	titles AS t3
WHERE t1.emp_no=t3.emp_no
AND t1.to_date='9999-01-01'
AND t3.to_date='9999-01-01'
AND t1.dept_no=t2.dept_no
GROUP BY t2.dept_no,t3.title;