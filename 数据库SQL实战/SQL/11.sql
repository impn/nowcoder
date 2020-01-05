select
    t1.emp_no,
    t2.emp_no as manager_no
from dept_emp as t1
left join dept_manager as t2
on t1.dept_no=t2.dept_no
where t1.to_date='9999-01-01'
and t2.to_date='9999-01-01'
and t1.emp_no<>t2.emp_no;