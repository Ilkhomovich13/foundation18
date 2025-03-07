--create database SQL_homework_20
--use SQL_homework_20


-- Easy Tasks
-- Write a query to calculate the running total of SalesAmount for each product in the Sales table, ordered by SaleDate.
select productid, saledate, salesamount, sum(salesamount) over (partition by productid order by saledate) as running_total from sales;

-- Use the SUM() aggregate window function to calculate the cumulative sum of Amount for each customer in the Orders table.
select customerid, orderid, amount, sum(amount) over (partition by customerid order by orderid) as cumulative_sum from orders;

-- Write a query to find the running total of OrderAmount in the Orders table, partitioned by CustomerID.
select customerid, orderid, orderamount, sum(orderamount) over (partition by customerid order by orderid) as running_total from orders;

-- Use the AVG() window function to calculate the average sales amount up to the current row for each product in the Sales table.
select productid, salesid, salesamount, avg(salesamount) over (partition by productid order by salesid) as avg_sales from sales;

-- Write a query to rank each order’s OrderAmount using the RANK() window function.
select orderid, orderamount, rank() over (order by orderamount desc) as order_rank from orders;

-- Use the LEAD() function to retrieve the next row's Amount for each product in the Sales table.
select productid, salesid, salesamount, lead(salesamount) over (partition by productid order by salesid) as next_amount from sales;

-- Write a query to calculate the total sales for each customer in the Orders table using the SUM() function as a window function.
select customerid, orderid, orderamount, sum(orderamount) over (partition by customerid) as total_sales from orders;

-- Use the COUNT() function to determine the number of orders placed up to the current row in the Orders table.
select customerid, orderid, count(orderid) over (partition by customerid order by orderid) as order_count from orders;

-- Write a query to partition the Sales table by ProductCategory and calculate the running total of SalesAmount for each category.
select productcategory, salesid, salesamount, sum(salesamount) over (partition by productcategory order by salesid) as running_total from sales;

-- Use ROW_NUMBER() to assign a unique rank to each order in the Orders table, ordered by OrderDate.
select orderid, orderdate, row_number() over (order by orderdate) as order_rank from orders;

-- Write a query using LAG() to find the OrderAmount from the previous row for each order in the Orders table.
select orderid, orderamount, lag(orderamount) over (order by orderid) as prev_orderamount from orders;

-- Use SUM() to calculate the cumulative total of sales for each salesperson in the Sales table.
select salespersonid, salesid, salesamount, sum(salesamount) over (partition by salespersonid order by salesid) as cumulative_sales from sales;

-- Use DENSE_RANK() to rank the products in the Products table based on StockQuantity.
select productid, stockquantity, dense_rank() over (order by stockquantity desc) as stock_rank from products;

-- Write a query to compute the difference between the current and next OrderAmount in the Orders table using LEAD().
select orderid, orderamount, lead(orderamount) over (order by orderid) - orderamount as order_diff from orders;

-- Use RANK() to assign a rank to products in the Products table, ordered by Price.
select productid, price, rank() over (order by price desc) as price_rank from products;

-- Write a query using AVG() to calculate the average order amount for each customer in the Orders table.
select customerid, orderid, orderamount, avg(orderamount) over (partition by customerid) as avg_orderamount from orders;

-- Use ROW_NUMBER() to assign a unique row number to each employee in the Employees table, ordered by Salary.
select employeeid, salary, row_number() over (order by salary) as salary_rank from employees;

-- Write a query to partition the Sales table by StoreID and calculate the cumulative sum of SalesAmount for each store.
select storeid, salesid, salesamount, sum(salesamount) over (partition by storeid order by salesid) as cumulative_sales from sales;

-- Use LAG() to find the previous order's OrderAmount in the Orders table.
select orderid, orderamount, lag(orderamount) over (order by orderid) as prev_orderamount from orders;

-- Difficult Tasks
-- Write a query using SUM() to calculate the running total of SalesAmount for each product and store in the Sales table.
select productid, storeid, salesid, salesamount, sum(salesamount) over (partition by productid, storeid order by salesid) as running_total from sales;

-- Use LEAD() to calculate the percentage change in OrderAmount between the current and next row in the Orders table.
select orderid, orderamount, lead(orderamount) over (order by orderid) as next_amount, 
       (lead(orderamount) over (order by orderid) - orderamount) * 100.0 / orderamount as percentage_change 
from orders;

-- Write a query using ROW_NUMBER() to return the top 3 products by SalesAmount, ensuring ties are handled appropriately.
select productid, salesamount, row_number() over (order by salesamount desc) as sales_rank from sales where sales_rank <= 3;

-- Use RANK() to assign a rank to each employee in the Employees table based on Salary, partitioned by DepartmentID.
select employeeid, departmentid, salary, rank() over (partition by departmentid order by salary desc) as salary_rank from employees;

-- Use LAG() to calculate the change in SalesAmount between the previous and current sale for each product in the Sales table.
select productid, salesid, salesamount, salesamount - lag(salesamount) over (partition by productid order by salesid) as sales_change from sales;

-- Write a query to compute the cumulative average of SalesAmount for each product, ordered by SaleDate.
select productid, saledate, salesamount, avg(salesamount) over (partition by productid order by saledate) as cumulative_avg from sales;

-- Use DENSE_RANK() to identify the products with the top 5 highest SalesAmount in the Products table, ignoring ties.
select productid, salesamount, dense_rank() over (order by salesamount desc) as sales_rank from products where sales_rank <= 5;
