select
    t1.emp_no
from employees as t1
left join dept_manager as t2
on t1.emp_no=t2.emp_no
where t2.dept_no is null;