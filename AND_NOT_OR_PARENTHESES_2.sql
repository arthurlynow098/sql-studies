SELECT * FROM sql_store.customers;

SELECT * FROM customers WHERE state = 'FL' AND points >= 100;
SELECT * FROM customers WHERE state = 'FL' OR 'TX';
SELECT * FROM customers WHERE NOT state = 'FL';
SELECT * FROM customers WHERE (points > 100 AND state = 'FL' OR 'CA');
SELECT * FROM customers WHERE birth_date > '1980-01-01' AND points > 500 AND state <> 'MA';

SELECT * FROM customers WHERE (state = 'FL' OR points > 3000) AND NOT customer_id = 3;

SELECT * FROM customers WHERE (state = 'VA' OR state = 'TX') AND points > 500 AND NOT customer_id = 5;

SELECT * FROM customers WHERE (points > 2000 AND (state = 'VA') OR state = 'TX') AND NOT customer_id = 4;

SELECT * FROM customers WHERE
((state = 'VA' AND points > 1000) OR (state = 'TX' and points > 2000))
AND NOT birth_date > '1980-01-01';

SELECT * FROM customers WHERE 
((state = 'FL' OR state = 'TX') 
AND points > 1000) 
AND NOT birth_date < '1990-01-01';


SELECT * FROM customers WHERE 
((state = 'VA' AND points > 1000) OR state = 'TX' AND birth_date > '1985-01-01') 
AND NOT customer_id = 2 AND NOT points < 500;
