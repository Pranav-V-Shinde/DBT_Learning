{{
    config(
        materialized='table'
    )
}}


select t.PRODUCT_ID as p_id,t.*  from {{source('snowflake_source_layer','products')}} t