# Generalized Source-to-Target Mapping

| External source attribute | Warehouse target | Transformation / purpose |
|---|---|---|
| source_property_id | dim_property.source_property_id | Preserve external business identifier for traceability |
| property_name | dim_property.property_name | Trim / standardize reporting label |
| address_city | dim_property.city | Standardized locality attribute |
| address_state | dim_property.state | Uppercase normalized state code |
| address_state | dim_property.market_region | Reference lookup to generalized market region |
| property_type | dim_property.property_type | Preserve generalized analytical category |
| unit_count | dim_property.unit_count | Cast to numeric measure |
| latitude / longitude | dim_property.latitude / longitude | Cast and range validate |
| status | dim_property.status | Used as publication filter |

## Portfolio note

The real enterprise mapping that inspired this example is not reproduced. This table demonstrates the pattern of external-field normalization, reference enrichment, and governed warehouse publication only.
