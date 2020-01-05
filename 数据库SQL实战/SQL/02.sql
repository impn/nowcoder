select *
from employees 
where hire_date=(
    select hire_date 
    from employees
    group by hire_date 
    order by hire_date desc
    limit 2,1
);