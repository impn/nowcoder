SELECT
	emp_no,
	growth
FROM(SELECT
		a.emp_no,
		b.salary-a.salary AS growth
	FROM
		(SELECT
			t1.emp_no,
			salary
		FROM 
			employees AS t1,
			salaries AS t2
		WHERE t1.emp_no=t2.emp_no
		AND t1.hire_date=t2.from_date) AS a,
		(SELECT
			t1.emp_no,
			salary
		FROM 
			employees AS t1,
			salaries AS t2
		WHERE t1.emp_no=t2.emp_no
		AND t2.to_date='9999-01-01') AS b
	WHERE a.emp_no=b.emp_no)AS c
ORDER BY c.growth