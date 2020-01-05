SELECT
	t3.dept_no,
	t1.emp_no,
	t4.salary
FROM employees AS t1 -- 主表：员工表
LEFT JOIN dept_manager AS t2 -- 关联领导表
ON t1.emp_no=t2.emp_no 
AND t2.to_date='9999-01-01' -- 在职领导
LEFT JOIN dept_emp AS t3 -- 关联部门员工表
ON t1.emp_no=t3.emp_no
AND t3.to_date='9999-01-01' -- 在职的员工
JOIN salaries AS t4 -- 关联薪水表
ON t1.emp_no=t4.emp_no
AND t4.to_date='9999-01-01' -- 当前薪水
WHERE t2.emp_no IS NULL -- 从所有员工(包括已离职的人)中过滤掉当前的领导
AND t3.`emp_no` IS NOT NULL; -- 过滤掉已经离职的人