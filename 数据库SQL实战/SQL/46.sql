-- alter TABLE audit add foreign key(emp_no) references employees_test(id);
-- SQLite
drop table if exists audit;
CREATE TABLE audit(
    EMP_no INT NOT NULL,
    create_date datetime NOT NULL,
    foreign key(emp_no) references employees_test(id));