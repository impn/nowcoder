select * 
from employees
where hire_date=(select hire_date from employees order by hire_date desc limit 1 )