# Architecture Rationale

## 1. External source
A synthetic vendor-style flat file represents third-party property data.

## 2. Landing / staging
The incoming shape is preserved so source counts and raw attributes can be reconciled before transformation.

## 3. Conformance
Data types are standardized, reference attributes are enriched, and warehouse keys are assigned.

## 4. Validation
Counts, duplicates, reference mappings, coordinates, and required fields are tested before publication.

## 5. Curated layer
Only validated active records are exposed to downstream analytical consumers.

This separation makes source issues observable and prevents raw third-party structures from becoming de facto reporting models.
