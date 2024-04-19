{% snapshot snapshot_test %}

{{
    config(
      target_database='DISHANK',
      target_schema='PUBLIC',
      unique_key='ID',
      strategy='TIMESTAMP',
      updated_at='ID',
    )
}}

select * from {{ source('DISHANK_SOURCE', 'DISHANK_SOURCE') }}

{% endsnapshot %}