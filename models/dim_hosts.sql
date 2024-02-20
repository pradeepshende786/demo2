with dim_hosts as (
    select * from {{ source('source_file', 'raw_hosts') }}
)
select * from dim_hosts
