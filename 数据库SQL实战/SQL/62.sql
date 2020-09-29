select
number
from grade
group by number
having count(1)>=3
;