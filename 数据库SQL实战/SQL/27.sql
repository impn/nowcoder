select
    t2.emp_no,
    t2.from_date,
    (t2.salary-t1.salary) as salary_growth
from
    salaries as t1,
    salaries as t2
where t1.emp_no = t2.emp_no
and (t2.salary-t1.salary)>5000
and strftime('%Y',t2.to_date)-strftime('%Y',t1.to_date)=1
order by salary_growth desc;
-- 题目说的每年的含义：同一个人在同一年内薪资涨幅超过5000的人，薪水变更日期和这一年的涨幅