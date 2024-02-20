with dim_hosts as (
    select 
        id,
        name as host_name 
    from dbt_database.public.raw_hosts
)
select * from dim_hosts