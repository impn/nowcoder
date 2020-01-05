SELECT
    last_name,
    first_name,
    dept_name
FROM employees AS t1
LEFT JOIN dept_emp AS t2
ON t1.emp_no=t2.emp_no
LEFT JOIN departments AS t3
ON t2.dept_no=t3.dept_no;