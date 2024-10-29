-- create_tables.sql
CREATE OR REPLACE TABLE source_customers (
    customer_id INT,
    customer_name STRING,
    email STRING,
    city STRING
);

CREATE OR REPLACE TABLE target_customers (
    customer_id INT,
    customer_name STRING,
    email STRING,
    city STRING
);
