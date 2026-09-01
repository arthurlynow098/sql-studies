'sql
-- SELECT
-- Used to choose which columns will be returned.

USE sql_store;

-- Returns all columns
SELECT *
FROM customers;

-- Returns specific columns
SELECT first_name, last_name
FROM customers;

-- The columns can also be returned in a different order
SELECT points, first_name, last_name
FROM customers;
'