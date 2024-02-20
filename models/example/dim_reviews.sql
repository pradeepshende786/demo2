with dim_reviews as (
    select *
    from {{ source('source_file', 'raw_listings') }}
)
select * from dim_reviews

