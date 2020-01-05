select
    title,
    count(distinct emp_no) as t
from titles
group by title;