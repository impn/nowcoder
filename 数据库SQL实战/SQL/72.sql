select
     job
    ,round(avg(score)*1.0,3) as avg
from grade
group by job
order by avg desc
;