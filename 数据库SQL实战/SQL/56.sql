-- 获取所有员工的emp_no、部门编号dept_no以及对应的bonus类型btype和received ，没有分配具体的员工不显示

select
    t2.emp_no,
    t2.dept_no,
    t3.btype,
    t3.recevied
from dept_emp as t2
left join emp_bonus as t3
on t2.emp_no=t3.emp_no
and t2.to_date='9999-01-01'