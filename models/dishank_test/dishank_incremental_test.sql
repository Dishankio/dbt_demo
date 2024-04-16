{{config(materialized = "table")}}

with source_store_sales as (
    select * from {{source('SNOWFLAKE_SAMPLE_DATA_source','store_sales')}}
),

final as (
    select TOP 6 * from source_store_sales
)

select * from final