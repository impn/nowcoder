select
     t1.id
    ,t1.name
    ,t2.content
from person as t1
left join task as t2
on t1.id = t2.person_id
order by t1.id asc
;
