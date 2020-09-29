select
     t2.id
    ,t2.job
    ,t2.score
from grade as t2
left join (
    select
         job
        ,avg(score) as avg
    from grade
    group by job
) as t1
on t1.job = t2.job
where t2.score > t1.avg
;