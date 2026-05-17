---
title: "Fix: Meilisearch Issue #6293 — API Reference Code Samples Input/Output Mismatch"
description: "PR submitted to meilisearch/meilisearch fixing mismatched input/output examples in the API reference code samples"
date: "2026-05-17"
repository: "meilisearch/meilisearch"
issue: "https://github.com/meilisearch/meilisearch/issues/6293"
pr: "https://github.com/meilisearch/meilisearch/pull/6384"
status: "submitted"
---

## Issue

The API reference code samples for two paginated list endpoints had mismatches between the documented request `limit` parameter example and the response body examples:

- **`GET /indexes`**: The `limit` query parameter example was `1`, while the response showed `"limit": 1` with only one result — an unillustrative code sample.
- **`GET /keys`**: The `limit` query parameter had no example annotation (falling back to the default of 20), while the response showed `"limit": 20` with only one result — a clearly inconsistent code sample.

**Issue:** [meilisearch/meilisearch#6293](https://github.com/meilisearch/meilisearch/issues/6293)

## Root Cause

In the Rust source files, the OpenAPI annotations use `#[param(..., example = N)]` to drive request code sample generation. The response examples embedded in `#[routes::path(...)]` macros were not updated to match.

- `crates/meilisearch/src/routes/indexes/mod.rs`: `example = 1` on the limit param but response only showed 1 result.
- `crates/meilisearch/src/routes/api_key.rs`: No `example` on limit param; response showed `"limit": 20` with only 1 result.

## Fix

Updated both files to use `example = 3` on the limit parameter and updated the response examples to show 3 entries each with consistent `"limit": 3` and `"total": 3` values:

- **`GET /indexes`**: Added 2 more index entries (`books`, `clothes`) to the response example and updated `"limit"` and `"total"` from `1` to `3`.
- **`GET /keys`**: Added `example = 3` to the limit param annotation and added 2 more API key entries to the response example, updating `"limit"` from `20` to `3` and `"total"` from `1` to `3`.

## Deliverables

- **PR:** [meilisearch/meilisearch#6384](https://github.com/meilisearch/meilisearch/pull/6384)
- **Branch:** `sulphur-swarm:fix/issue-6293-api-docs-samples`
- **Files Changed:**
  - `crates/meilisearch/src/routes/indexes/mod.rs` — Changed `example = 1` to `example = 3`; updated response example with 3 index entries
  - `crates/meilisearch/src/routes/api_key.rs` — Added `example = 3` to limit param; updated response example with 3 API key entries
