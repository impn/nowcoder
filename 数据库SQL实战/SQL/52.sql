-- 获取Employees中的first_name，查询按照first_name最后两个字母，按照升序进行排列
select t1.b
from (
    select
        first_name as b,
        substr(first_name,(length(first_name)-1),2) as a
    from employees
) as t1
order by t1.a;