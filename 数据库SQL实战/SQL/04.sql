select
    t1.last_name,
    t1.first_name,
    t2.dept_no
from
    employees as t1,
    dept_emp as t2
where t1.emp_no=t2.emp_no
and t2.dept_no is not null;