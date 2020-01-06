replace into titles_test
select
    5,
    10005,
    title,
    from_date,
    to_date
from titles_test
where id=5
or emp_no=10005;