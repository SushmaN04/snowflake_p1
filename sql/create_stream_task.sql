-- create_stream_task.sql
CREATE OR REPLACE STREAM customer_stream 
ON TABLE source_customers;

CREATE OR REPLACE TASK apply_cdc_task
WAREHOUSE = 'COMPUTE_WH'
SCHEDULE = '5 MINUTE'
AS
MERGE INTO target_customers AS tgt
USING customer_stream AS src
ON tgt.customer_id = src.customer_id
WHEN MATCHED AND src.metadata$action = 'DELETE' THEN DELETE
WHEN MATCHED THEN UPDATE SET
    tgt.customer_name = src.customer_name,
    tgt.email = src.email,
    tgt.city = src.city
WHEN NOT MATCHED THEN INSERT (customer_id, customer_name, email, city)
    VALUES (src.customer_id, src.customer_name, src.email, src.city);

ALTER TASK apply_cdc_task RESUME;
