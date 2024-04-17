{{ config(
    materialized="dynamic_table",
    on_configuration_change="apply",
    target_lag="100 seconds",
    snowflake_warehouse="COMPUTE_WH",
) }}

with source_store_sales as (
    select * from {{source('DISHANK_SOURCE','DISHANK_SOURCE')}}
),

final as (
    select TOP 6 * from source_store_sales
)

select * from final
