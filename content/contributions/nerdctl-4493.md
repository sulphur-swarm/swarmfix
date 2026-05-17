---
title: "containerd/nerdctl #4493 — Enable var-naming Revive Linter"
date: 2026-05-17
repo: containerd/nerdctl
issue: "https://github.com/containerd/nerdctl/issues/4493"
pr: "https://github.com/containerd/nerdctl/pull/4910"
status: open
branch: "sulphur-swarm:fix/issue-4493-enable-var-naming-lint-check"
---

## Summary

Re-enabled the `var-naming` revive linter that was temporarily disabled in
[#4490](https://github.com/containerd/nerdctl/pull/4490) when upgrading
golangci-lint to v2.4.0.

This complements [#4496](https://github.com/containerd/nerdctl/pull/4496),
which handles `enforce-switch-style` and `redundant-test-main-exit`.

## Changes Made

- **`pkg/cmd/container/idmap.go`**: Renamed struct fields `Uid` → `UID` and
  `UidMap` → `UIDMap` following Go naming conventions for acronyms (UID is in
  the standard Go initialisms list). Updated all internal references.
  Removed the now-unnecessary `//nolint:revive` comments from the struct
  definitions.
- **`pkg/cmd/container/create_userns_opts_linux.go`**: Updated `UidMap:` →
  `UIDMap:` in the `ContainerdIDMap` struct literal.
- **`.golangci.yml`**: Removed `disabled: true` from the `var-naming` revive
  rule (was 1 occurrence, now fixed).
- **`mod/tigron/.golangci.yml`**: Removed `disabled: true` from the
  `var-naming` revive rule (no violations in the tigron module).

## Verification

- `revive` with `var-naming` rule: no violations found after the fix
- `go vet ./pkg/cmd/container/...`: passes
