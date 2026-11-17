{{
    config(
        materialized='table'
    )
}}

select 
    u.customer_id as c_id , 
    trim(UPPER(first_name)) as first_name , 
    (LOWER(email)) as email,
    CONACT(first_name,' ',last_name) as full_name
    -- , u.* exclude(first_name,email) 
from {{ source('snowflake_source_layer', 'customers') }} u
where email is not null and phone is not null