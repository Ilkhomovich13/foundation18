--create Database lesson_18homework
--use lesson_18homework

--CREATE TABLE employees ( id INT PRIMARY KEY, name VARCHAR(100), salary DECIMAL(10, 2) );

--INSERT INTO employees (id, name, salary) VALUES (1, 'Alice', 50000), (2, 'Bob', 60000), (3, 'Charlie', 50000);

-- Find Employees with Minimum Salary

--select * 
--from employees 
--where salary = (select MIN(salary) from employees);
--drop table employees
--------------------------------------------------------------------

--CREATE TABLE products ( id INT PRIMARY KEY, product_name VARCHAR(100), price DECIMAL(10, 2) );

--INSERT INTO products (id, product_name, price) VALUES (1, 'Laptop', 1200), (2, 'Tablet', 400), (3, 'Smartphone', 800), (4, 'Monitor', 300);

-- Find Products Above Average Price

--select * 
--from products 
--where price > (select AVG(price) from products);
--drop table products
----------------------------------------------------------------------

--CREATE TABLE departments ( id INT PRIMARY KEY, department_name VARCHAR(100) );

--CREATE TABLE employees ( id INT PRIMARY KEY, name VARCHAR(100), department_id INT, FOREIGN KEY (department_id) REFERENCES departments(id) );

--INSERT INTO departments (id, department_name) VALUES (1, 'Sales'), (2, 'HR');

--INSERT INTO employees (id, name, department_id) VALUES (1, 'David', 1), (2, 'Eve', 2), (3, 'Frank', 1);

-- Find Employees in Sales Department

--select * 
--from employees 
--where department_id = (select id from departments where department_name = 'Sales');
--drop table employees
--drop table departments
--------------------------------------------------------------------------------------

--CREATE TABLE customers ( customer_id INT PRIMARY KEY, name VARCHAR(100) );

--CREATE TABLE orders ( order_id INT PRIMARY KEY, customer_id INT, FOREIGN KEY (customer_id) REFERENCES customers(customer_id) );

--INSERT INTO customers (customer_id, name) VALUES (1, 'Grace'), (2, 'Heidi'), (3, 'Ivan');

--INSERT INTO orders (order_id, customer_id) VALUES (1, 1), (2, 1);

-- Find Customers with No Orders

--select * 
--from customers 
--where customer_id not in (select customer_id from orders);
-----------------------------------------------------------------

--CREATE TABLE products ( id INT PRIMARY KEY, product_name VARCHAR(100), price DECIMAL(10, 2), category_id INT );

--INSERT INTO products (id, product_name, price, category_id) VALUES (1, 'Tablet', 400, 1), (2, 'Laptop', 1500, 1), (3, 'Headphones', 200, 2), (4, 'Speakers', 300, 2);

-- Find Products with Max Price in Each Category

--select * 
--from products p 
--where price = (select MAX(price) 
--    from products 
--    where category_id = p.category_id);
--drop table products
-------------------------------------------------

--CREATE TABLE departments ( id INT PRIMARY KEY, department_name VARCHAR(100) );

--CREATE TABLE employees ( id INT PRIMARY KEY, name VARCHAR(100), salary DECIMAL(10, 2), department_id INT, FOREIGN KEY (department_id) REFERENCES departments(id) );

--INSERT INTO departments (id, department_name) VALUES (1, 'IT'), (2, 'Sales');

--INSERT INTO employees (id, name, salary, department_id) VALUES (1, 'Jack', 80000, 1), (2, 'Karen', 70000, 1), (3, 'Leo', 60000, 2);

-- Find Employees in Department with Highest Average Salary

--select * 
--from employees 
--where department_id = (select top 1 department_id 
--    from employees 
--    group by department_id 
--    order by avg(salary) desc);
--drop table employees
----------------------------------------------------------

--CREATE TABLE employees ( id INT PRIMARY KEY, name VARCHAR(100), salary DECIMAL(10, 2), department_id INT );

--INSERT INTO employees (id, name, salary, department_id) VALUES (1, 'Mike', 50000, 1), (2, 'Nina', 75000, 1), (3, 'Olivia', 40000, 2), (4, 'Paul', 55000, 2);

-- Find Employees Earning Above Department Average

--select * 
--from employees e 
--where salary > (select avg(salary) 
--    from employees 
--    where department_id = e.department_id);
--drop table employees
---------------------------------------------------------

--CREATE TABLE students ( student_id INT PRIMARY KEY, name VARCHAR(100) );

--CREATE TABLE grades ( student_id INT, course_id INT, grade DECIMAL(4, 2), FOREIGN KEY (student_id) REFERENCES students(student_id) );

--INSERT INTO students (student_id, name) VALUES (1, 'Sarah'), (2, 'Tom'), (3, 'Uma');

--INSERT INTO grades (student_id, course_id, grade) VALUES (1, 101, 95), (2, 101, 85), (3, 102, 90), (1, 102, 80);

-- Find Students with Highest Grade per Course

--select * 
--from students s 
--where exists (select 1 
--    from grades g 
--    where g.student_id = s.student_id 
--    and g.grade = (select max(grade) 
--        from grades 
--        where course_id = g.course_id));
-------------------------------------------------

--CREATE TABLE products ( id INT PRIMARY KEY, product_name VARCHAR(100), price DECIMAL(10, 2), category_id INT );

--INSERT INTO products (id, product_name, price, category_id) VALUES (1, 'Phone', 800, 1), (2, 'Laptop', 1500, 1), (3, 'Tablet', 600, 1), (4, 'Smartwatch', 300, 1), (5, 'Headphones', 200, 2), (6, 'Speakers', 300, 2), (7, 'Earbuds', 100, 2);

-- Find Third-Highest Price per Category

--select *
--from products p 
--where 2 = (select count(distinct price)
--    from products 
--    where category_id = p.category_id 
--    and price > p.price);
--------------------------------------------------

--CREATE TABLE employees ( id INT PRIMARY KEY, name VARCHAR(100), salary DECIMAL(10, 2), department_id INT );

--INSERT INTO employees (id, name, salary, department_id) VALUES (1, 'Alex', 70000, 1), (2, 'Blake', 90000, 1), (3, 'Casey', 50000, 2), (4, 'Dana', 60000, 2), (5, 'Evan', 75000, 1);

-- Find Employees Between Company Average and Department Max Salary

--select *
--from employees e
--where salary > (select avg(salary) from employees)
--and salary < (select max(salary) 
--    from employees 
--    where department_id = e.department_id);

