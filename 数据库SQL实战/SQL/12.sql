select
    t1.dept_no, 
    t1.emp_no, 
    t2.salary
from dept_emp as t1 
inner join salaries as t2
on t1.emp_no = t2.emp_no
and t1.to_date = '9999-01-01'
and t2.to_date = '9999-01-01'
where t2.salary = (
    select max(t3.salary)
    from dept_emp as t4
    inner join salaries as t3
    on t3.emp_no = t4.emp_no
    and t3.to_date = '9999-01-01'
    and t4.to_date = '9999-01-01'
    where t4.dept_no = t1.dept_no
    group by t4.dept_no)
order by t1.dept_no;