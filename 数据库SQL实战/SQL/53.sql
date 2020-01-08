-- 按照dept_no进行汇总，属于同一个部门的emp_no按照逗号进行连接，结果给出dept_no以及连接出的结果employees
SELECT dept_no, GROUP_CONCAT(emp_no) AS employees
FROM dept_emp GROUP BY dept_no;