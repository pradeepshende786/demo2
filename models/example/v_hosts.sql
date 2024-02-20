{{ config(materialized = 'view') }}
with v_hosts as (
    select 
        id,
        name as host_name 
    from testdb.dbt_pshende.raw_hosts
)
select * from v_hosts