'sql
-- IN
-- IN allows us to retrieve specific values in a more elegant and concise way
   SELECT * FROM customers WHERE state IN ('VA', 'FL', 'TX');

-- NOT IN
-- NOT IN allows us to retrieve values that are not in the specified list
   SELECT * FROM customers WHERE state NOT IN ('VA', 'FL', 'TX');


-- An example using both
   SELECT * FROM customers WHERE state IN ('VA', 'FL', 'TX') AND points > 1000 AND customer_id NOT IN (2, 5, 8);

-- THINGS I GOT WRONG
-- 1. I wrote "IN = ('VA','FL','TX')" instead of "IN ('VA','FL','TX')" - there needs to be a space after IN and before the opening parenthesis, and it's not necessary to include an =