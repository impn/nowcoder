select *
from employees
where emp_no&1=1
and last_name<>"Mary"
order by hire_date desc;