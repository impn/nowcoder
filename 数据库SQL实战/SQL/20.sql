select max(salary)-min(salary) as growth
from salaries
where emp_no=10001;