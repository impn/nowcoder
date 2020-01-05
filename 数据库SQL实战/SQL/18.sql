SELECT
    t2.emp_no,
    t1.salary,
    t2.last_name,
    t2.first_name
FROM salaries AS t1
JOIN employees AS t2
ON t1.emp_no=t2.emp_no
AND t1.to_date='9999-01-01'
WHERE (
    SELECT COUNT(DISTINCT t3.salary)
    FROM salaries AS t3
    WHERE t3.to_date='9999-01-01'
    AND t3.salary>t1.salary
)=1
group by salary;