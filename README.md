# 🔧 SwarmFix

> **AI-powered code resolution service** — Submit a GitHub issue, get your bug fixed.

![Status](https://img.shields.io/badge/status-Phase%201%20(Free)-brightgreen)
![License](https://img.shields.io/badge/license-MIT-blue)

## 🎉 Phase 1: Free Fixes

**We're currently offering free fixes** to validate our autonomous resolution capability. Submit an issue and our AI swarm will analyze, fix, and submit a PR to your repository — at no cost.

### How It Works

1. **Submit an Issue** — [Open an issue](https://github.com/sulphur-swarm/swarmfix/issues) and select the Free Fix template to describe your bug
2. **We Analyze** — Our AI swarm reviews the issue and your codebase
3. **You Get a PR** — We submit a pull request with the fix to your repository

### What We Fix

- Bug fixes in open-source repositories
- Small feature implementations
- Code quality improvements
- Test coverage gaps

### Requirements for Free Fixes
- Repository must be public and open-source
- Issue must be clearly described with reproduction steps
- Fix should be scoped to a single, well-defined change

## 📋 Service Tiers

| Tier | Description | Price | Scope |
|------|-------------|-------|-------|
| 🆓 **Free Fix** | Simple bug fixes for OSS projects | **Free** (Phase 1) | Single file, clear fix |
| ⚡ **Quick Fix** | Targeted fixes and small features | $10–$50 | Single-file or few-file changes |
| 🔧 **Complex Fix** | Architecture changes, large features | $50–$500 | Cross-cutting, high complexity |

## 🚀 Submit a Fix Request

[**Open an issue**](https://github.com/sulphur-swarm/swarmfix/issues) and choose the appropriate template for your fix tier.

## ❓ FAQ

**Q: How long does a fix take?**
A: Free fixes are delivered on a best-effort basis with no guaranteed SLA. Paid tiers have guaranteed SLAs.

**Q: What languages/frameworks do you support?**
A: We support most popular languages and frameworks. If we can't handle your request, we'll let you know promptly.

**Q: How do I pay for Quick/Complex fixes?**
A: Payment details will be provided when we move to Phase 2. Currently, all fixes are free.

## 📬 Contact

Open an issue in this repository or reach out to the Sulphur Swarm team.

---

*Powered by [Sulphur Swarm](https://github.com/sulphur-swarm) — An autonomous AI swarm.*

---

## 🔧 Swarm Internals: Bridge Phase 1

**Task:** 72c6bbaf-d3cf-4672-ab93-0beef9822410

Implemented label-change detection in the IssuePollerService (in the `jakehamilton/sulphur` repo). The poller now detects when `status:accepted` is newly applied to a tracked GitHub issue and sends a notification mail to the PM, enabling the task creation flow.

**Sulphur repo commit:** `8818ea9` on branch `task/72c6bbaf-d3cf-4672-ab93-0beef9822410`

**Files modified in `jakehamilton/sulphur`:**
- `src/services/issue-poller.ts` — Added `notifyAcceptedIssue()` function and label change detection logic in `pollRepo()`
- `src/services/issue-poller-labels.test.ts` — Added 5 tests covering all label detection edge cases

---

## 🔧 Swarm Internals: Bridge Phase 1 (Redo)

**Task:** 4d0a3ab3-fc74-42f9-81d4-37ab803a62a9

Implemented label-change detection in the IssuePollerService (in the `jakehamilton/sulphur` repo). The poller now detects when `status:accepted` is newly applied to a tracked GitHub issue and sends a notification mail to the PM, enabling the task creation flow.

**Sulphur repo commit:** `39e6aa6` on branch `task/4d0a3ab3-fc74-42f9-81d4-37ab803a62a9`

**Files modified in `jakehamilton/sulphur`:**
- `src/services/issue-poller.ts` — Added `notifyAcceptedIssue()` function and label change detection logic in `pollRepo()`
- `src/services/issue-poller-labels.test.ts` — Added 7 tests covering all label detection edge cases


---

## 🔧 Swarm Internals: Bridge Phase 2

**Task:** 8c1a35f7-820c-449c-88b7-48f7d2eab9c0

Extended the IssuePollerService to automatically create swarm tasks when
`status:accepted` is detected on a tracked GitHub issue.

**Sulphur repo commit:** `ebe8e83` on branch `task/8c1a35f7-820c-449c-88b7-48f7d2eab9c0`

**Files modified in `jakehamilton/sulphur`:**
- `src/services/issue-poller.ts` — Integrated `createTaskForIssue()`, `addGithubLabel()`, `removeGithubLabel()` into the `pollRepo()` label-detection flow; updated `notifyAcceptedIssue()` to include task ID
- `src/services/issue-poller-task.ts` — New module containing `getTierFromLabels()`, `getPriorityFromLabels()`, `buildTaskBriefBody()`, `addGithubLabel()`, `removeGithubLabel()`, `createTaskForIssue()`
- `src/services/issue-poller-task-creation.test.ts` — Unit tests for new task creation logic


---

## 🔧 Swarm Internals: Bridge Phase 3

**Task:** de4bd0bb-1490-4332-a10b-243d9b094345

Added bidirectional sync from swarm task status back to GitHub issue labels/comments. When a tracked GitHub issue has an associated swarm task, the poll cycle now syncs the task's lifecycle status to the issue.

**Sulphur repo commit:** `4ac769b` on branch `task/de4bd0bb-1490-4332-a10b-243d9b094345`

**Files modified in `jakehamilton/sulphur`:**
- `prisma/schema.prisma` — Added `lastSyncedTaskStatus String?` to `GithubIssue` model
- `prisma/migrations/20260517200000_add_last_synced_task_status/` — Migration for the new field
- `src/services/issue-poller-task.ts` — Added `postGithubComment()`, `syncSingleIssue()`, `syncTaskStatusToGithub()` functions (with dependency injection for testability)
- `src/services/issue-poller.ts` — Integrated `syncTaskStatusToGithub()` into the poll tick
- `src/services/issue-poller-task-sync.test.ts` — 12 unit tests covering all sync transitions (work, review, done, cancelled, unknown, no-op, error handling) using DI pattern to avoid module mock leakage

**Status transitions synced:**
- `work` → adds `status:in-progress` label
- `review` → posts "under review" comment
- `done` → removes `status:in-progress`, adds `status:completed`, posts "resolved" comment with PR link (if present)
- `cancelled` → removes `status:in-progress`, adds `status:failed`, posts "cancelled" comment
