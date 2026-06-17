# epic_data

A dbt project that models imaging order data sourced from Epic.

## Project structure

- `models/staging` — staging models that clean and rename raw source columns.
  - `stg_epic_data__imaging_fact` — staged imaging order data from the `epic_data.imaging_fact` source table.
- `models/marts` — business-facing marts built on top of staging models.
  - `imaging_fact` — imaging fact table.

Sources and data tests are defined alongside the staging models in `_src_epic_data.yml` and `_stg_epic_data.yml`.

## Usage

Run the project with:

```
dbt build
```

This compiles and runs all models, then executes the configured data tests (e.g. `not_null` and `unique` on `order_id`, `accepted_values` on `status`).
