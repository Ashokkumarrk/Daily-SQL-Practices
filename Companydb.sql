create database companydb
use companydb

1. Employees Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    manager_id INT
);

INSERT INTO Employees VALUES
(1, 'John', 'Doe', 1, 60000, '2015-03-15', NULL),
(2, 'Jane', 'Smith', 2, 75000, '2016-07-23', 1),
(3, 'Mike', 'Johnson', 1, 50000, '2018-01-10', 1),
(4, 'Emily', 'Davis', 3, 80000, '2017-05-30', 2),
(5, 'David', 'Wilson', 2, 55000, '2019-11-12', 2),
(6, 'Sophia', 'Brown', 3, 90000, '2020-06-20', 4);

2. Departments Table

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    location VARCHAR(50)
);

INSERT INTO Departments VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'Chicago');

3. Projects Table

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(12,2)
);

INSERT INTO Projects VALUES
(101, 'Website Redesign', '2021-01-01', '2021-06-30', 150000),
(102, 'Cloud Migration', '2020-03-01', '2020-12-31', 300000),
(103, 'ERP Implementation', '2019-07-15', '2021-01-15', 500000);

4. Employee_Project Table (Many-to-Many)

CREATE TABLE Employee_Project (
    emp_id INT,
    project_id INT,
    role VARCHAR(50),
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

INSERT INTO Employee_Project VALUES
(1, 101, 'Manager'),
(2, 101, 'Developer'),
(3, 102, 'Tester'),
(4, 102, 'Developer'),
(5, 103, 'Support'),
(6, 103, 'Lead');

5. Salaries History (for Updates, Aggregates, Window Functions)

CREATE TABLE Salary_History (
    history_id INT PRIMARY KEY,
    emp_id INT,
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    change_date DATE
);

INSERT INTO Salary_History VALUES
(1, 1, 55000, 60000, '2019-03-01'),
(2, 2, 70000, 75000, '2020-05-15'),
(3, 4, 75000, 80000, '2021-01-01'),
(4, 6, 85000, 90000, '2022-07-01');

SELECT * from employees
SELECT first_name,last_name from employees
select *,emp_id from employees where emp_id=5;
SELECT * from employees
select * from employees where salary >= 50000.00 and salary <= 60000.00;
SELECT * from employees;
select * from employees where first_name = 'john';
select * from employees where last_name like 'd%';
SELECT * FROM employees where last_name like 'j%son';
select * from employees where first_name like 'j__n';
SELECT * from employees where hire_date >= '2018-01-10';
SELECT * from employees where MONTH(hire_date) >= '7';
SELECT hire_date,day(hire_date),month(hire_date),year(hire_date) from employees;
SELECT * from employees where dayname(hire_date) ='tuesday';