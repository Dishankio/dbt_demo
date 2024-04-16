{{config(materialized = "table")}}

with source_store_sales as (
    select * from {{source('SNOWFLAKE_SAMPLE_DATA_source','store_sales')}}
),

final as (
    select * from source_store_sales
)

select * from final