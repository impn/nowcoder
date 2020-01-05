select 
    t2.*,
    t1.dept_no
from salaries as t2
join dept_manager as t1
on t1.emp_no=t2.emp_no
where t1.to_date='9999-01-01'
and t2.to_date='9999-01-01';