'sql
--LIKE
-- LIKE allows us to search for values that match a specific pattern
    SELECT * FROM products WHERE product_name LIKE 'B%';

-- NOT LIKE
-- NOT LIKE allows us to search for values that do not match a specific pattern
    SELECT * FROM products WHERE product_name NOT LIKE 'B%';

-- An example using both
    SELECT * FROM products WHERE product_name LIKE 'B%' AND quantity_in_stock > 10 AND product_id NOT LIKE 2 AND 5; 

-- THINGS I GOT WRONG
--None