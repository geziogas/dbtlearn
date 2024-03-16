SELECT
    d.created_at,
    f.*
FROM {{ ref("fct_reviews") }} f 
JOIN {{ ref("dim_listings_cleansed") }} d
ON f.listing_id = d.listing_id
WHERE 1=1
AND f.review_date < d.created_at 
LIMIT 10