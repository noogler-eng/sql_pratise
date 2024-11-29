-- The GROUP BY clause in SQL is used to group rows that have the same values 
-- in specified columns into summary rows. It’s often used with aggregate 
-- functions such as COUNT(), SUM(), AVG(), MAX(), and MIN() to perform 
-- calculations on each group of rows.

SELECT column1, column2, ..., aggregate_function(column_name)
FROM table_name
WHERE condition
GROUP BY column1, column2, ...;

-- column1, column2, ...: These are the columns you want to include in the result, which are used to group the data.
-- aggregate_function(column_name): This is an aggregate function that performs a calculation on each group of rows (e.g., COUNT(), SUM(), AVG(), MIN(), MAX()).
-- GROUP BY column1, column2, ...: Specifies the columns used to group the data.

SELECT customer_id, COUNT(sale_id) AS total_sales
FROM Sales
GROUP BY customer_id;

SELECT customer_id, SUM(amount) AS total_sales_amount
FROM Sales
GROUP BY customer_id;

SELECT customer_id, COUNT(sale_id) AS total_sales
FROM Sales
GROUP BY customer_id
HAVING COUNT(sale_id) > 1;

SELECT customer_id, date, SUM(amount) AS total_sales_amount
FROM Sales
GROUP BY customer_id, date;