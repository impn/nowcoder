SELECT
	t1.emp_no,
	t2.emp_no AS manager_no,
	t3.salary AS emp_salary,
	t4.salary AS manager_salary
FROM dept_emp AS t1 -- 主表为部门员工表
JOIN salaries AS t3 -- 连接员工薪资表
ON t1.emp_no=t3.emp_no
AND t3.to_date='9999-01-01' -- 员工当前薪资
AND t1.to_date='9999-01-01' -- 选出在职人员
JOIN dept_manager AS t2 -- 连接部门manager表
ON t1.dept_no=t2.dept_no
AND t2.to_date='9999-01-01' -- 部门当前领导
JOIN salaries AS t4 -- 连接manager薪资表
ON t2.emp_no=t4.emp_no
AND t4.to_date='9999-01-01' -- manager当前薪资
WHERE t1.emp_no<>t2.emp_no -- 去重，去掉manager本身的行
GROUP BY t1.emp_no -- 为下一步having创造条件
HAVING emp_salary>manager_salary; -- 过滤出员工比manager工资高的人