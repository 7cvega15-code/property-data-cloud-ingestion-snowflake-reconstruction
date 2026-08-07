CREATE OR REPLACE VIEW pipeline_reconciliation_vw AS
SELECT
    (SELECT COUNT(*) FROM stg_vendor_property) AS landed_rows,
    (SELECT COUNT(*) FROM dim_property) AS conformed_rows,
    (SELECT COUNT(*) FROM property_analytics_vw) AS published_rows,
    (SELECT COUNT(*) FROM dim_property WHERE market_region IS NULL) AS unmapped_market_rows;
