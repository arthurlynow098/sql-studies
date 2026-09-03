'sql
--BETWEEN
-- “BETWEEN” allows us to search between two values at once; instead of something big and confusing, we can simply use, for example, “BETWEEN 1000 AND 3000.” 
    SELECT * FROM products WHERE unit_price BETWEEN 2 AND 5;

-- NOT BETWEEN  
-- NOT BETWEEN allows us to search for values outside of a range of two values
    SELECT * FROM products WHERE unit_price NOT BETWEEN 2 AND 5;

-- An example using both
    SELECT * FROM products WHERE unit_price BETWEEN 2 AND 5 AND quantity_in_stock > 10 AND product_id NOT BETWEEN 2 AND 5;

-- THINGS I GOT WRONG
-- None
