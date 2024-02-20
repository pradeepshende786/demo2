{{
 config(
 materialized = 'incremental'
 )
}}
WITH incremental_reviews AS (
 SELECT * FROM {{ ref('dim_reviews') }}
)
SELECT * FROM incremental_reviews

{% if is_incremental() %}
 AND price > (select max(price) from {{ this }})
{% endif %}