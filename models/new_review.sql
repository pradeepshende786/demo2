with new_review as ( 
    select * from {{ ref('dim_listings')}}
)
select * from new_review