select
    t2.dept_no,
    t2.emp_no,
    t1.salary
from salaries as t1
join dept_manager as t2
on t1.emp_no=t2.emp_no
where t1.to_date='9999-01-01'
and t2.to_date='9999-01-01'