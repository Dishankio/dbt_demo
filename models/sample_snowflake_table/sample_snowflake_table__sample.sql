{{config(materialized = "view")}}

with source_store_sales as (
    select * from {{source('SNOWFLAKE_SAMPLE_DATA_source','store_sales')}}
),

final as (
    select TOP 3 * from source_store_sales
)

select *,CURRENT_TIMESTAMP() as "DISHAnK_TIMESTAMP" from final