# PR Submitted: Prometheus Issue #16525

## Pull Request
**URL:** https://github.com/prometheus/prometheus/pull/18705
**Title:** storage/remote: validate label value lengths to prevent crashes (#16525)
**Branch:** `sulphur-swarm:fix/issue-16525-label-value-length-limit`
**Base:** `prometheus/prometheus:main`

## Summary

Implemented label value length validation in the Prometheus remote write receiver to prevent crashes on label values ≥16 MB.

### Files Changed
- `prompb/codec.go` — Added `ErrLabelValueTooLong` type and `ToLabelsWithLimits()` to V1 `TimeSeries`
- `prompb/io/prometheus/write/v2/symbols.go` — Added `ErrLabelValueTooLong` type and `desymbolizeLabelsWithLimits()` helper
- `prompb/io/prometheus/write/v2/codec.go` — Added `ToLabelsWithLimits()` to V2 `TimeSeries`
- `storage/remote/write_handler.go` — Added `configFunc` field, `DefaultMaxLabelValueLength` constant, `effectiveLabelValueLengthLimit()` helper; updated `NewWriteHandler()` signature; updated V1 and V2 write paths
- `storage/remote/write_handler_test.go` — Updated existing callers, added `TestWriteHandler_LabelValueLengthLimit` with 7 test cases
- `web/api/v1/api.go` — Passed `configFunc` to `NewWriteHandler`
- `CHANGELOG.md` — Added bugfix entry

### Behavior
- When `global.label_value_length_limit` is configured: enforces that limit for remote write
- When not configured (default 0): falls back to 16 MB safety cap to prevent panics
- V1 path: oversized series dropped with warning log (best-effort)
- V2 path: HTTP 400 returned (per RW 2.0 spec)

## Status
PR submitted and awaiting review. Do NOT merge.
