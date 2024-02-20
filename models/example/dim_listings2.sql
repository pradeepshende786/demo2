with dim_listings2 as (
    select 
        host_id as my_id,
        created_at as created_now
    from {{ source('source_file', 'raw_listings') }}
)
select * from dim_listings2

