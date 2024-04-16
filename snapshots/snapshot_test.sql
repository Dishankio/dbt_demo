{% snapshot snapshot_test %}

{{
    config(
      target_database='DISHANK_SOURCE',
      target_schema='PUBLIC',
      unique_key='ID',
      strategy='TIMESTAMP',
      updated_at='TIMESTAMP',
    )
}}

select * from {{ source('DISHANK_SOURCE', 'DISHANK_SOURCE') }}

{% endsnapshot %}