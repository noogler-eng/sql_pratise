-- What is a LEFT JOIN?
-- A LEFT JOIN (also called LEFT OUTER JOIN) is used to combine rows from two tables based on a 
-- related column, but it guarantees that all rows from the left table will be included in the 
-- result, even if there is no matching row in the right table. If there is no match, the result 
-- will contain NULL for all columns from the right table.

SELECT columns
FROM table1 t1
LEFT JOIN table2 t2
ON t1.common_column = t2.common_column;


-- What is a RIGHT JOIN?
-- A RIGHT JOIN combines rows from two tables based on a common column, but unlike a LEFT JOIN, 
-- it ensures that all rows from the right table (the second table in the join) are included in the 
-- result set, regardless of whether or not there's a matching row in the left table (the first table 
-- in the join). If there’s no match in the left table, the result will include NULL values for the 
-- columns from the left table.

SELECT column1, column2
FROM table1
RIGHT JOIN table2
ON table1.column = table2.column;

-- What is a CROSS JOIN?
-- A CROSS JOIN in SQL is a type of join that produces the Cartesian product of two tables. 
-- It returns all possible combinations of rows between the two tables being joined. Unlike 
-- other types of joins (like INNER JOIN, LEFT JOIN, etc.), a CROSS JOIN does not require a 
-- condition for the join (e.g., no ON clause). This means every row from the first table is 
-- combined with every row from the second table.

SELECT columns
FROM table1
CROSS JOIN table2;