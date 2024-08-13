SELECT
    *
FROM
    {{ ref('fct_reviews') }} AS r
LEFT JOIN
    {{ ref('dim_listings_cleansed') }} AS l
ON
    r.listing_id = l.listing_id
WHERE
    r.review_date < l.created_at
