-- test_changes.sql
INSERT INTO source_customers (customer_id, customer_name, email, city) 
VALUES (4, 'Michael Brown', 'michael.b@example.com', 'Boston');

UPDATE source_customers 
SET city = 'San Francisco' 
WHERE customer_id = 1;

DELETE FROM source_customers 
WHERE customer_id = 2;
