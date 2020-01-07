UPDATE salaries
SET salary = salary * 1.1
WHERE emp_no IN(
    SELECT s.emp_no
    FROM salaries AS s
    JOIN emp_bonus AS eb 
    ON s.emp_no = eb.emp_no
    AND s.to_date = '9999-01-01'
)

/*
理论上来说应该这样写，先更新当前日期，再插入一条新的薪资数据
UPDATE salaries
SET to_date=DATE_FORMAT(NOW(),'%Y-%m-%d')
WHERE emp_no IN(
    SELECT s.emp_no
    FROM salaries AS s
    JOIN emp_bonus AS eb 
    ON s.emp_no = eb.emp_no
    AND s.to_date = '9999-01-01'
)
AND to_date='9999-01-01';

INSERT INTO salaries
SELECT
	emp_no,
	salary*1.1,
	DATE_FORMAT(NOW(),'%Y-%m-%d'),
	'9999-01-01'
FROM salaries
WHERE emp_no IN(
    SELECT s.emp_no
    FROM salaries AS s
    JOIN emp_bonus AS eb 
    ON s.emp_no = eb.emp_no
    AND s.to_date = '9999-01-01'
)
AND to_date=DATE_FORMAT(NOW(),'%Y-%m-%d');
*/