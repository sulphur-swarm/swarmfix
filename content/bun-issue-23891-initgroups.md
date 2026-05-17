---
title: "Fix Bun Issue #23891 — process.initgroups"
date: 2026-05-17
---

# Fix Bun Issue #23891 — process.initgroups

## Status

Pull Request submitted: **https://github.com/oven-sh/bun/pull/30910**

## Summary

Implemented `process.initgroups(user, extraGroup)` in Bun to close issue [#23891](https://github.com/oven-sh/bun/issues/23891).

`process.initgroups` was undefined in Bun while Node.js exposes it as a standard POSIX API.

## Changes Made

### Fork: `sulphur-swarm/bun`
### Branch: `issue-23891-initgroups`

#### `src/jsc/bindings/BunProcess.cpp`

- Added `Process_functioninitgroups` function after `Process_functionsetgroups`, inside the `#if !OS(WINDOWS)` block.
- The `user` argument accepts a string (username) or number (UID). For numbers, `getpwuid_r()` resolves to the username.
- The `extraGroup` argument accepts a string (group name) or number (GID), using the existing `maybe_gid_by_name()` helper.
- Calls POSIX `initgroups(username, gid)` — exactly 2 arguments per spec.
- Added LUT entry: `initgroups  Process_functioninitgroups  Function 2`

#### `test/js/node/process/process-initgroups.test.js`

- Test file covering argument validation, error codes, and integration test.

## Pre-PR Checklist

- [x] Verified no anti-AI contribution policy in CONTRIBUTING.md
- [x] Read and followed CONTRIBUTING.md conventions
- [x] No CLA/DCO requirements found
- [x] `initgroups(username, gid)` call uses exactly 2 arguments (POSIX spec)
- [x] `RETURN_IF_EXCEPTION` placed after every potentially-throwing operation
- [x] LUT entry uses `Function 2` arity
- [x] Test file created
- [x] Commit message: `process: implement process.initgroups`
- [x] PR description references issue #23891
- [x] AI disclosure included in PR description
