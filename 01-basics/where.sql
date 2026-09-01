`sql
-- WHERE
-- Used to filter rows based on a condition.

USE sql_store;

-- Customers with more than 1000 points
SELECT *
FROM customers
WHERE points > 1000;

-- Customers from Virginia
SELECT *
FROM customers
WHERE state = 'VA';

-- Customers born after 1985
SELECT *
FROM customers
WHERE birth_date > '1985-01-01';


-- Comparison operators:
-- =   equal
-- >   greater than
-- <   less than
-- >=  greater than or equal
-- <=  less than or equal
-- <>  not equal
-- !=  not equal

SELECT *
FROM products
WHERE unit_price >= 3;

SELECT *
FROM customers
WHERE state <> 'FL';
`
