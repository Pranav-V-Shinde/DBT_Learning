
-- Simple Renaming transformations

with all_customers as(
    select 
        customer_id as cid,
        first_name as fname,
        last_name as lname,
        email,
        phone as phoneno,
        city,
        state,
        country
    from {{ source('snowflake_source_layer', 'customers') }}
)
select * from all_customers