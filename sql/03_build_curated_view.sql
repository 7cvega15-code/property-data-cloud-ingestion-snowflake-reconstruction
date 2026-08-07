CREATE OR REPLACE VIEW property_analytics_vw AS
SELECT
    property_key,
    source_property_id,
    property_name,
    city,
    state,
    market_region,
    property_type,
    unit_count,
    latitude,
    longitude
FROM dim_property
WHERE status = 'ACTIVE';
