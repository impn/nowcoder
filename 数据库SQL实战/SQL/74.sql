select
     t1.id
    ,t2.name
    ,t1.score
from (
    select
         id
        ,language_id
        ,score
        ,dense_rank() over (partition by language_id order by score desc) as rk
    from grade
) as t1
left join language as t2
on t1.language_id = t2.id
where t1.rk <=2
order by t2.name asc,t1.score desc,t1.id asc
;