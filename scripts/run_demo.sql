.read sql/01_create_staging.sql
.read sql/02_conform_property_data.sql
.read sql/03_build_curated_view.sql
.read sql/04_reconciliation.sql
.read tests/test_expectations.sql

SELECT * FROM pipeline_reconciliation_vw;
SELECT * FROM property_analytics_vw ORDER BY state, city, source_property_id;
