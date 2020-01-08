select
    t1.first_name
from employees as t1
where (select count(1) from employees as t2 where t1.first_name>=t2.first_name)%2=1