CREATE TABLE department (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Employee Table
CREATE TABLE employee (
    id INT,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);


-- Insert into Department Table
INSERT INTO department (id, dept_name) VALUES
(1, 'IT'),
(2, 'SALES');

-- Insert into Employee Table
INSERT INTO employee (id, name, salary, department_id) VALUES
(1, 'JOE', 70000, 1),
(2, 'JIM', 90000, 1),
(3, 'HENRY', 80000, 2);

SELECT * FROM employee
SELECT * FROM department

select d.dept_name ,e.name,e.salary,d.id
from employee as e
inner join 
department as d
on e.department_id = d.id
where e.salary in (
select max(e2.salary)
from employee as e2
where e2.department_id = e.department_id
)
order by d.dept_name