/******************************************************************************

                        Online SQLite Query Runner.
                Code, Compile, Run and Debug SQLite query online.
Write your query in this editor and press "Run" button to execute it.

*******************************************************************************/


/* Enter your sql queries here */
-- Expt8::Implementation of various aggregate functions in SQL
-- Questions:

-- 1. Create a table Employee with following specifications.
--    Code, name, DOB, designation, salary
-- 2. Insert values into the table
-- 3. Display sum of salaries from the table employee where designation is clerk.
-- 4. Describe the maximum salary value from the table employee.
-- 5. Display average salary of employees
-- 6. Describe the minimum salary value from the table
-- 7. Display the total number of employees.


#1 
CREATE TABLE Employee(
    code CHAR(6) PRIMARY KEY,
    name VARCHAR(80),
    dob date,
    designation VARCHAR(100),
    salary FLOAT
);

#2
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('gm0121','anoop','2000-11-05','General Manager',50000.25),
('pm2918','midhun pramod','1999-01-25','Product Manager',50000.50),
('cl0123','shabari','1992-12-06','Clerk',25000),
('cl1234','manju','2001-04-15','Clerk',15000.75);

#3
SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

#4
SELECT MAX(salary) FROM Employee;

#5
SELECT AVG(salary) FROM Employee;

#6
SELECT MIN(salary) FROM Employee;

#7
SELECT COUNT(*) FROM Employee;