-- Each query should return 0 rows.

SELECT 'duplicate_source_property_id' AS test_name
WHERE EXISTS (
  SELECT source_property_id FROM stg_vendor_property GROUP BY 1 HAVING COUNT(*) > 1
);

SELECT 'null_property_key' AS test_name
WHERE EXISTS (SELECT 1 FROM dim_property WHERE property_key IS NULL);

SELECT 'unmapped_state' AS test_name
WHERE EXISTS (SELECT 1 FROM dim_property WHERE market_region IS NULL);

SELECT 'invalid_unit_count' AS test_name
WHERE EXISTS (SELECT 1 FROM dim_property WHERE unit_count < 0 OR unit_count IS NULL);

SELECT 'invalid_latitude' AS test_name
WHERE EXISTS (SELECT 1 FROM dim_property WHERE latitude NOT BETWEEN -90 AND 90 OR latitude IS NULL);

SELECT 'invalid_longitude' AS test_name
WHERE EXISTS (SELECT 1 FROM dim_property WHERE longitude NOT BETWEEN -180 AND 180 OR longitude IS NULL);

SELECT 'landing_to_conformed_count_mismatch' AS test_name
WHERE (SELECT landed_rows FROM pipeline_reconciliation_vw) <> (SELECT conformed_rows FROM pipeline_reconciliation_vw);

SELECT 'expected_published_count' AS test_name
WHERE (SELECT published_rows FROM pipeline_reconciliation_vw) <> 5;
