SELECT * FROM sql_store.products;

SELECT * FROM products WHERE unit_price > 2 AND quantity_in_stock > 50;
SELECT * FROM products WHERE unit_price < 1 OR unit_price > 4;
SELECT * FROM products WHERE quantity_in_stock > 50 AND unit_price < 2 OR unit_price > 4;

SELECT * FROM products WHERE (quantity_in_stock < 30 OR quantity_in_stock > 70) AND unit_price > 1.50 AND NOT unit_price > 4;

SELECT * FROM products WHERE ((quantity_in_stock > 80 AND unit_price < 2) OR quantity_in_stock < 20) AND NOT unit_price > 4;

SELECT * FROM products WHERE ((unit_price < 2 AND quantity_in_stock > 50) 
OR (unit_price > 4 AND quantity_in_stock < 30)) AND NOT quantity_in_stock = 0;

SELECT * FROM products 
WHERE ((quantity_in_stock > 70 AND unit_price < 3) 
OR quantity_in_stock < 30 AND unit_price > 2) AND NOT unit_price > 5;


SELECT * FROM products
WHERE ((quantity_in_stock > 70 AND unit_price < 3)
OR
(quantity_in_stock < 30 AND unit_price > 2))
AND NOT unit_price > 5;