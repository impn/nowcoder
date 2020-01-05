select
    title,
    avg(salary) as avg
from salaries as t1
join titles as t2
on t1.emp_no=t2.emp_no
and t1.to_date='9999-01-01'
and t2.to_date='9999-01-01'
group by t2.title;