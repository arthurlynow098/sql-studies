'Sql

--Logical Operators

-- AND

-- Both conditions need to be true
SELECT *
FROM customers
WHERE state = 'FL'
  AND points > 1000;


-- OR 

-- At least one condition needs to be true
SELECT *
FROM customers
WHERE state = 'FL'
   OR state = 'TX';

-- Wrong:
-- WHERE state = 'FL' OR 'TX';

-- OR connects two complete conditions:
-- state = 'FL' OR state = 'TX'


-- NOT

-- NOT reverses a condition
SELECT *
FROM customers
WHERE NOT state = 'FL';

SELECT *
FROM products
WHERE NOT unit_price > 4;


-- AND + OR + NOT 

-- Parentheses help group conditions that belong together
SELECT *
FROM customers
WHERE (state = 'FL' OR state = 'TX')
  AND points > 1000
  AND NOT customer_id = 2;


-- A more complex example
SELECT *
FROM customers
WHERE (
        (state = 'VA' AND points > 1000)
        OR
        (state = 'TX' AND birth_date > '1985-01-01')
      )
  AND NOT customer_id = 2
  AND NOT points < 500;


-- Parentheses 

-- Think of parentheses as groups of conditions:

-- A AND (B OR C)

-- is different from:

-- (A AND B) OR C

SELECT *
FROM products
WHERE (
        (quantity_in_stock > 70 AND unit_price < 3)
        OR
        (quantity_in_stock < 30 AND unit_price > 2)
      )
  AND NOT unit_price > 5;


-- Things I got wrong 

-- 1. OR needs another complete condition
-- Wrong: state = 'FL' OR 'TX'
-- Correct: state = 'FL' OR state = 'TX'

-- 2. I need to be careful with NOT
-- "Price cannot be greater than 4":
-- NOT unit_price > 4

-- 3. When AND and OR are mixed, check which conditions should belong to the same group.

-- AND is evaluated before OR, so parentheses make the intended logic clearer.

'