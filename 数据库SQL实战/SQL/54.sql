-- 查找排除当前最大、最小salary之后的员工的平均工资avg_salary。
SELECT AVG(salary) as avg_salary
FROM salaries
WHERE to_date='9999-01-01'
AND salary<>(SELECT MAX(salary)FROM salaries)
AND salary<>(SELECT MIN(salary)FROM salaries)