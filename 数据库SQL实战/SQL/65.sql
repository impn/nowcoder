select
    `date`
    ,round((sum(case when type = "no_completed" then 1 else 0 end)*1.0)/count(1),3) as p
from(
    select
        *
    from email 
    where send_id    not in (select id from user where is_blacklist = 1)
      and receive_id not in (select id from user where is_blacklist = 1)
)
group by `date`
;