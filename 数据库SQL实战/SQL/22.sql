select
    t1.dept_no,
    t3.dept_name,
    count(t2.salary) as sum
from
    dept_emp as t1,
    salaries as t2,
    departments as t3
where t3.dept_no=t1.dept_no
and t1.emp_no=t2.emp_no
group by t1.dept_no