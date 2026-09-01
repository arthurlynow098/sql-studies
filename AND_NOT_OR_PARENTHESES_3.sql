SELECT * FROM orders WHERE order_date >= '2019-01-01';

SELECT * FROM customers WHERE birth_date > '1990-01-01' AND points > 500;
SELECT * FROM customers WHERE birth_date > '1990-01-01' OR (points > 1000 AND state = 'FL'); 
SELECT * FROM customers WHERE NOT (birth_date > '1990-01-01' OR points > 1000);
