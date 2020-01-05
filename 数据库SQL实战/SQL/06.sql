select
    t1.emp_no,
    t2.salary
from employees as t1
join salaries as t2
on t1.emp_no=t2.emp_no
where t1.hire_date=t2.from_date
order by t1.emp_no desc;