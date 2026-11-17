{{
    config(
        materialized='table'
    )
}}

select 
    o.order_id as o_id,
    CAST(order_date as date) as order_date,
    CAST(quantity as int) as quantity,
    ROUND(TOTAL_AMOUNT,2) as total_amount
    --,o.* exclude(order_date)
from {{ source('snowflake_source_layer', 'orders') }} o