SELECT * fROM {{ ref('dim_listings_cleansed') }}
Where minimum_nights < 1
limit 5