CREATE OR REPLACE TABLE dim_property AS
SELECT
    row_number() OVER (ORDER BY v.source_property_id) AS property_key,
    v.source_property_id,
    trim(v.property_name) AS property_name,
    trim(v.address_city) AS city,
    upper(v.address_state) AS state,
    r.market_region,
    v.property_type,
    CAST(v.unit_count AS INTEGER) AS unit_count,
    CAST(v.latitude AS DOUBLE) AS latitude,
    CAST(v.longitude AS DOUBLE) AS longitude,
    v.status
FROM stg_vendor_property v
LEFT JOIN stg_market_reference r
  ON upper(v.address_state) = r.state;
