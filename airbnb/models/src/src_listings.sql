
--view/table to be created on this query.
-- by default a view will be created.

WITH raw_listings AS (
    SELECT
        *
    FROM
        {{ source('airbnb', 'listings')}}
)
SELECT
    id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
    raw_listings