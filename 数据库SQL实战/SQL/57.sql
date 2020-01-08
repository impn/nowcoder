select *
from employees
where not exists(
    select emp_no
    from dept_emp
    where emp_no=employees.emp_no
);
-- 通过外面的员工表，遍历所有员工，如果在员工部门表中没有找到对应的记录，则说明此员工没有分配部门