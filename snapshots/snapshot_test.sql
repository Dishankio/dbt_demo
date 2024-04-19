{% snapshot snapshot_test %}

{{
    config(
      target_database='DISHANK',
      target_schema='PUBLIC',
      unique_key='INTEGER',
      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source('DISHANK_SOURCE', 'DISHANK_SOURCE') }}

{% endsnapshot %}