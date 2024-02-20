{{ config(materialized = 'view') }}
with ref_listings as (
    select * from {{ ref('v_listings') }}
)
select my_id from ref_listings