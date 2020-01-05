SELECT
	t1.emp_no,
	t1.salary,
	COUNT(DISTINCT t2.salary) rank
FROM
	salaries t1, 
	salaries t2
WHERE t1.salary <= t2.salary
AND t1.to_date = '9999-01-01' 
AND t2.to_date = '9999-01-01'
GROUP BY t1.emp_no
ORDER BY rank;