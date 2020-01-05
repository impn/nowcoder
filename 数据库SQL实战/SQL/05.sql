select
    t2.last_name,
    t2.first_name,
    t1.dept_no
from employees as t2
left join dept_emp as t1
on t1.emp_no=t2.emp_no;