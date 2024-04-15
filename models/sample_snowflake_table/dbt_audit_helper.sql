{# in dbt Develop #}


{% set old_fct_orders_query %}
select
    SS_ADDR_SK,
    SS_CDEMO_SK,
    SS_COUPON_AMT
from SNOWFLAKE_SAMPLE_DATA_source.store_sales
{% endset %}


{% set new_fct_orders_query %}
select
    SS_ADDR_SK,
    SS_CDEMO_SK,
    SS_COUPON_AMT
from {{ ref('sample_snowflake_table__sample') }}
{% endset %}


{{ audit_helper.compare_queries(
    a_query=old_fct_orders_query,
    b_query=new_fct_orders_query,
    primary_key="SS_ADDR_SK"
) }}