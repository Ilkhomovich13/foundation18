--create database SQL_homework_19
--use SQL_homework_19


-- Easy Tasks
-- Write a query to assign a row number to each employee in the Employees table ordered by their Salary.
select employeeid, salary, row_number() over (order by salary) row_num from employees;

-- Create a query to rank all products based on their Price in descending order.
select productid, price, rank() over (order by price desc) price_rank from products;

-- Use the DENSE_RANK() function to rank employees by Salary in the Employees table.
select employeeid, salary, dense_rank() over (order by salary desc) salary_rank from employees;

-- Write a query to display the next (lead) salary for each employee in the same department using the LEAD() function.
select employeeid, departmentid, salary, lead(salary) over (partition by departmentid order by salary) next_salary from employees;

-- Use ROW_NUMBER() to assign a unique number to each order in the Orders table.
select orderid, customerid, row_number() over (order by orderdate) order_num from orders;

-- Create a query using RANK() to identify the highest and second-highest salaries in the Employees table.
select employeeid, salary, rank() over (order by salary desc) salary_rank from employees;

-- Write a query to show the previous (lagged) salary for each employee in the Employees table using the LAG() function.
select employeeid, salary, lag(salary) over (order by salary) prev_salary from employees;

-- Write a query to partition employees by DepartmentID and assign a row number within each department.
select employeeid, departmentid, row_number() over (partition by departmentid order by hiredate) dept_row_num from employees;

-- Use DENSE_RANK() to rank products by Price in ascending order.
select productid, price, dense_rank() over (order by price) price_rank from products;

-- Write a query to calculate the moving average of Price in the Products table using window functions.
select productid, price, avg(price) over (order by productid rows between 2 preceding and current row) moving_avg from products;

-- Use the LEAD() function to display the salary of the next employee for each row in the Employees table.
select employeeid, salary, lead(salary) over (order by salary) next_salary from employees;

-- Create a query to compute the cumulative sum of SalesAmount in the Sales table.
select salesid, salesamount, sum(salesamount) over (order by salesid) cumulative_sales from sales;

-- Use ROW_NUMBER() to identify the top 5 most expensive products in the Products table.
with RankedProducts as (
    select productid, price, row_number() over (order by price desc) price_rank
    from products
)
select productid, price, price_rank
from RankedProducts
where price_rank <= 5;

-- Write a query to partition the Orders table by CustomerID and calculate the total OrderAmount per customer.
select customerid, sum(orderamount) total_order_amount from orders group by customerid;

-- Use RANK() to rank orders in the Orders table based on their OrderAmount.
select orderid, orderamount, rank() over (order by orderamount desc) order_rank from orders;

-- Write a query to compute the percentage contribution of SalesAmount by ProductCategory in the Sales table.
select productcategory, salesamount, salesamount * 100.0 / sum(salesamount) over (partition by productcategory) percentage_contribution from sales;

-- Use the LEAD() function to retrieve the next order date for each order in the Orders table.
select orderid, orderdate, lead(orderdate) over (order by orderdate) next_order_date from orders;

---------------------------------------------------------------------------------------------------

-- Medium Tasks
-- Write a query to compute the cumulative average salary of employees, ordered by Salary.
select employeeid, salary, avg(salary) over (order by salary rows between unbounded preceding and current row) cumulative_avg_salary from employees;

-- Use RANK() to rank products by their total sales while handling ties appropriately.
select productid, sum(salesamount) total_sales, rank() over (order by sum(salesamount) desc) sales_rank from sales group by productid;

-- Create a query to retrieve the previous order's date for each order in the Orders table using the LAG() function.
select orderid, orderdate, lag(orderdate) over (order by orderdate) prev_order_date from orders;

-- Write a query to calculate the moving sum of Price for products with a window frame of 3 rows.
select productid, price, sum(price) over (order by productid rows between 2 preceding and current row) moving_sum from products;

-- Write a query to partition the Sales table by ProductID and calculate the total SalesAmount per product.
select productid, sum(salesamount) total_sales from sales group by productid;

-- Use DENSE_RANK() to rank products by StockQuantity without gaps in the ranking.
select productid, stockquantity, dense_rank() over (order by stockquantity desc) stock_rank from products;

-- Create a query using ROW_NUMBER() to identify the second highest salary in each department.
with RankedSalaries as (
    select employeeid, departmentid, salary, row_number() over (partition by departmentid order by salary desc) salary_rank
    from employees
)
select employeeid, departmentid, salary
from RankedSalaries
where salary_rank = 2;

-- Write a query to calculate the running total of sales for each product in the Sales table.
select productid, salesamount, sum(salesamount) over (partition by productid order by salesid rows between unbounded preceding and current row) running_total from sales;

