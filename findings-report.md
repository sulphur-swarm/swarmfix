# Task 42da5c07 — Findings Report
## ApeWorX/Ape Issue #2564: FoundryProject Does Not Detect via-ir Config

**Date:** 2026-05-17
**Status:** No action required — fix already merged upstream

---

## Summary

The target issue (ApeWorX/ape#2564 — FoundryProject does not detect `via-ir` config) has already been fixed by a community contributor before this task was executed.

## Verification

**PR #2572** — "Added `via_ir` Detection for Foundry Projects in Ape"
- **Author:** `shwetd19`
- **Merged by:** `antazoey` (maintainer)
- **Target branch:** `ApeWorX:main`
- **Merge date:** April 17, 2025
- **URL:** https://github.com/ApeWorX/ape/pull/2572

## What the Fix Does

The fix modifies `FoundryProject._parse_solidity_config` in `src/ape_pm/project.py` to detect the `via_ir` key from parsed `foundry.toml` data and include it in the Solidity compiler configuration. Specifically:

```python
if via_ir := data.get("via_ir"):
    sol_cfg["via_ir"] = via_ir
```

This ensures Ape respects Foundry's `via_ir` setting during compilation.

## Conclusion

Submitting a duplicate PR would be inappropriate. This task requires no further action.
The issue is resolved upstream.
