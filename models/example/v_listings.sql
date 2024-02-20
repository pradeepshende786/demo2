{{ config(materialized = 'view') }}

with v_listings as (
    select * from {{ source('source_file', 'raw_listings') }}
    
)
select 
    host_id as my_id,
    created_at as created_now
from v_listings

