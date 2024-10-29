create or replace database mahe_db;
create or REPLACE schema mahe_schema;


CREATE OR REPLACE TABLE mahe_db.mahe_schema.source_customers (
    customer_id INT,
    customer_name STRING,
    email STRING,
    city STRING
);

CREATE OR REPLACE TABLE mahe_db.mahe_schema.target_customers (
    customer_id INT,
    customer_name STRING,
    email STRING,
    city STRING
);

