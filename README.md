# Property Data Cloud Ingestion & Validation Pipeline

A sanitized, synthetic portfolio reconstruction of a third-party commercial/property data ingestion workflow: land external records, normalize them through an integration layer, validate the dataset, and publish analytics-ready structures for reuse across multiple business use cases.

> **Portfolio reconstruction:** Vendor names, internal platform names, schemas, mappings, field names, infrastructure details, and data have been generalized or replaced with synthetic equivalents.

## What this demonstrates

- External/vendor data ingestion design
- Landing → staging → conformed → curated layering
- Source-to-target mapping
- Record-count reconciliation and quality gates
- Duplicate and orphan detection
- Cloud-warehouse publication patterns
- Reusable governed datasets for multiple analytical consumers

## Historical context

The enterprise initiative that inspired this reconstruction moved a property-data feed through an integration/data-routing layer into cloud storage and a Snowflake analytical environment, with source-to-target validation and reconciliation controls. This repository recreates the architecture pattern with synthetic data only.

## Architecture

```text
External property feed
        ↓
Integration / routing layer
        ↓
Cloud landing zone
        ↓
Snowflake-style staging
        ↓
Validation + conformance
        ↓
Curated property dimension / analytics view
        ↓
Multiple downstream analytics use cases
```

## Repository structure

- `data/` — synthetic vendor and reference fixtures
- `sql/01_create_staging.sql` — landing/staging
- `sql/02_conform_property_data.sql` — normalized entities and keys
- `sql/03_build_curated_view.sql` — analytics-ready output
- `sql/04_reconciliation.sql` — source-to-target checks
- `tests/test_expectations.sql` — quality assertions
- `docs/source_to_target.md` — generalized mapping
- `docs/architecture.md` — design rationale
- `docs/privacy.md` — publication guardrails
- `scripts/run_demo.sql` — execution order

## Business value

A governed external-data pipeline lets multiple teams reuse one validated property dataset instead of building isolated extracts. Centralized reconciliation and mapping reduce duplicated transformation work and make downstream analytics more consistent.

## Provenance

Independently created synthetic reconstruction inspired by prior enterprise data-platform and analytics work. No production implementation is reproduced.
