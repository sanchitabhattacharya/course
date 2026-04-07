-- ; is not allowed is the sql files in models, so we need to use CTE to select from 
--the raw table and then select the columns we want to keep in the final table
WITH raw_reviews AS (
    SELECT
        *
    FROM
         {{ source('airbnb', 'reviews')}} 
)
SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS review_sentiment
FROM
    raw_reviews