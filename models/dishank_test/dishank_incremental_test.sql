{{config(materialized = "table")}}

with source_store_sales as (
    select * from {{source('DISHANK_SOURCE','DISHANK_SOURCE')}}
),

final as (
    select TOP 6 * from source_store_sales
)

select * from final