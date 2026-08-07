CREATE OR REPLACE TABLE stg_vendor_property AS
SELECT * FROM read_csv_auto('data/vendor_property_feed.csv', header=true);

CREATE OR REPLACE TABLE stg_market_reference AS
SELECT * FROM read_csv_auto('data/market_reference.csv', header=true);
