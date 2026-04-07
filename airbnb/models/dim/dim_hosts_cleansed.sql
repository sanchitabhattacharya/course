{{
    config(
        materialized='view'
    )
}}
WITH src_hosts AS (
  SELECT
    *
  FROM
    {{ ref('src_hosts') }}
)
select 
    host_id,
    nvl(host_name, 'Anonymous') AS host_name,
    --IFF(is_superhost='t', TRUE , FALSE) as is_superhost,
    is_superhost,
    created_at,
    updated_at
from src_hosts