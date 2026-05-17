---
title: "Fix: Astro Issue #14013 — Styles Missing When Path Case Differs"
description: "PR submitted to withastro/astro fixing styles being stripped on case-insensitive filesystems"
date: "2026-05-17"
repository: "withastro/astro"
issue: "https://github.com/withastro/astro/issues/14013"
pr: "https://github.com/withastro/astro/pull/16764"
status: "submitted"
---

## Issue

On case-insensitive filesystems (Windows, macOS), starting `astro dev` from a directory whose path case differs from the actual filesystem case (e.g. `d:\dev\app` vs `D:\dev\app`) causes styles to be stripped from compiled Astro components.

**Issue:** [withastro/astro#14013](https://github.com/withastro/astro/issues/14013)

## Root Cause

In `packages/astro/src/vite-plugin-utils/index.ts`, the `normalizeFilename` function uses `commonAncestorPath` for a case-sensitive string comparison. When the CWD (`root`) and the Vite-resolved module path (`filename`) disagree on case, the check fails and the path is incorrectly rewritten — producing a path that misses the compile-metadata cache and causes the virtual style module to be generated with no styles.

## Fix

Added a helper function `isPathInRoot` that first attempts an exact match via `commonAncestorPath`, then falls back to a case-insensitive comparison by lower-casing both paths. This correctly handles case-insensitive filesystems while maintaining performance on exact-match paths.

```ts
function isPathInRoot(filename: string, rootPath: string) {
  return (
    commonAncestorPath(filename, rootPath) ||
    commonAncestorPath(filename.toLowerCase(), rootPath.toLowerCase())
  );
}
```

## Deliverables

- **PR:** [withastro/astro#16764](https://github.com/withastro/astro/pull/16764)
- **Branch:** `sulphur-swarm:fix/issue-14013-style-path-case`
- **Files Changed:**
  - `packages/astro/src/vite-plugin-utils/index.ts` — Added `isPathInRoot` helper
  - `packages/astro/test/units/vite-plugin-utils/normalize-filename.test.ts` — New unit tests (4 tests, all passing)
  - `.changeset/fix-issue-14013-style-path-case.md` — Patch changeset for `astro`

## Tests

All 4 unit tests pass:
- ✅ strips the `/@fs` prefix from filesystem paths
- ✅ resolves relative paths against root
- ✅ preserves absolute paths that live inside root
- ✅ preserves absolute paths when their case differs from root (issue #14013)
