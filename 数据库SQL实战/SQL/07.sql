select
    emp_no,
    count(1) as t
from salaries
group by emp_no
having t>15;