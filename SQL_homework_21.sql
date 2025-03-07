--create database SQL_homework_21
--use SQL_homework_21


-- MERGE Practice
-- Task 1: Basic MERGE Operation
merge into employees as target using newemployees as source
on target.employeeid = source.employeeid

when matched then

    update set target.name = source.name, target.salary = source.salary

when not matched then

    insert (employeeid, name, salary) values (source.employeeid, source.name, source.salary);

-- Task 2: Delete Records with MERGE
merge into oldproducts as target using currentproducts as source
on target.productid = source.productid

when not matched by source then delete;

-------------------------------------------------------------------------------------------------------

-- View and Function Practice

-- Task 1: Aggregated Sales Summary
create view salessummary as
select customerid, sum(salesamount) as total_sales, count(orderid) as order_count
from sales
group by customerid;

-- Task 2: Employee Department Details
create view employeedepartmentdetails as
select e.employeeid, e.name, d.departmentname
from employees e
join departments d on e.departmentid = d.departmentid;

-- Task 3: Product Inventory Status
create view inventorystatus as
select productid, productname, stockquantity
from products;


-- Task 5: Inline Table-Valued Function
create function fn_gethighsales(@threshold money)
returns table
as
return (select * from sales where salesamount > @threshold);

-- Window Functions in SQL

-- Task 2: Syntax of Window Functions
-- Calculate cumulative sales using SUM() window function
select customerid, orderid, amount, sum(amount) over (partition by customerid order by orderid) as cumulative_sales from orders;

-- Calculate the average salary for each department using window functions
select employeeid, departmentid, salary, avg(salary) over (partition by departmentid) as avg_salary from employees;

-- Compare with GROUP BY
select departmentid, avg(salary) as avg_salary from employees group by departmentid;

-- Task 3: Partition By vs Group By
-- Calculate cumulative revenue for each product category using PARTITION BY
select productcategory, salesid, salesamount, sum(salesamount) over (partition by productcategory order by salesid) as cumulati
