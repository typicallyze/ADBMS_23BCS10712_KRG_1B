/*
experiment - 02: Joins
min table for joins as well as fk -> 1 { self join }
1 commmon col { name can be different / atleast 1 value should be same
space in alias -> e.salary as [employee salary]
types :
1. inner join - common data
2. left outer join 
3. right outer join 
4. full outer join
5. self join (1 table)
6. left exclusive
7. right exclusive




*/

CREATE TABLE emp1 (
    empid INT NOT NULL PRIMARY KEY,
    empname varchar(50) NOT NULL,
    DeptName VARCHAR(50) NOT NULL,
    m_id INT,
    FOREIGN KEY(m_id) REFERENCES emp1(empid)
);
insert into emp1 values(1,'A','HR',NULL);
insert into emp1 values(2,'B','finance',1);
insert into emp1 values(3,'C','it',1);
insert into emp1 values(4,'D','finance',2);
 
 select E.empname as [Employee name], m.empname as [manager Name], m.DeptName as[m_dept], e.DeptName as [emp dept], m.m_id as [manager id] from emp1 as E   join emp1 as m on e.empid=m.m_id;
