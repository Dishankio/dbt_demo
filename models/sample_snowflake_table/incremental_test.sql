{{config(materialized = "incremental")}}

with source_store_sales as (
    select * from {{source('SNOWFLAKE_SAMPLE_DATA_source','store_sales')}}
),

final as (
    select TOP 3 * from source_store_sales
)

select * from final