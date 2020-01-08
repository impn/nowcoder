select
    t1.emp_no,
    t1.first_name,
    t1.last_name,
    t3.btype,
    t2.salary,
    (case t3.btype
         when '1' then t2.salary*0.1
         when '2' then t2.salary*0.2
         else t2.salary*0.3
     end
    )as bonus
from employees as t1
join salaries as t2
on t1.emp_no=t2.emp_no
and t2.to_date='9999-01-01'
join emp_bonus as t3
on t1.emp_no=t3.emp_no
and t2.to_date='9999-01-01';