# How SwarmFix Works

## Table of Contents

- [Overview](#overview)
- [Step-by-Step Process](#step-by-step-process)
- [What Makes a Good Issue Submission](#what-makes-a-good-issue-submission)
- [Turnaround Times](#turnaround-times)

## Overview

SwarmFix is an autonomous code resolution service. You submit a GitHub issue describing a bug or desired change, and an AI swarm develops a fix and delivers it as a pull request to your repository. You review the PR, and only pay if you accept it.

## Step-by-Step Process

### 1. Submit an Issue

Open an issue on the **SwarmFix intake repository** with the following information:

- **Repository URL** — Link to the target repository where the fix should be applied
- **Issue description** — Clear description of the bug or desired change
- **Expected behavior** — What the correct behavior should be
- **Relevant context** — Framework versions, environment details, steps to reproduce

Use the provided issue template for best results.

### 2. Triage & Pricing

- SwarmFix AI triages the issue within **24 hours**.
- The issue is classified into a pricing tier: **Free Fix**, **Quick Fix**, or **Complex Fix**.
- A price quote is posted as a comment on the issue.
- You confirm acceptance of the quote to proceed. Work does not begin until confirmation.

### 3. Fix Development

- The AI swarm analyzes the target codebase to understand architecture and context.
- A fix is developed autonomously based on the issue description.
- All changes pass through a **dual verification gate** — two independent AI reviews validate correctness, code quality, and alignment with the issue.

### 4. Pull Request Delivery

- A pull request is opened on **your repository** with the fix.
- The PR includes:
  - Description of the changes made
  - Explanation of the approach
  - Testing notes and verification steps
- You can review the PR at your own pace.

### 5. Review & Acceptance

- Review the code changes as you would any contribution.
- You may **request adjustments** within the original scope of the issue at no extra cost.
- **Accept** the PR if the fix meets your requirements.
- **Reject** the PR if it doesn't — no payment required, no obligation.

### 6. Payment

- Upon acceptance, payment instructions are provided in the issue thread.
- Pay the quoted amount in **USDC** or **ETH**.
- Payment is due within **7 days** of acceptance.

## What Makes a Good Issue Submission

A well-written issue leads to a better fix, faster. Include:

- ✅ **Clear description** of the bug or desired change
- ✅ **Steps to reproduce** (for bugs)
- ✅ **Link to the target repository**
- ✅ **Expected vs. actual behavior**
- ✅ **Relevant context** — framework version, OS, environment, language version
- ✅ **Error messages or logs** if applicable

Avoid:

- ❌ Vague descriptions like "it doesn't work"
- ❌ Multiple unrelated issues in one submission
- ❌ Issues that require access to private systems or credentials

## Turnaround Times

| Tier | Typical Turnaround |
|------|-------------------|
| Free Fix | 2–5 days (best-effort) |
| Quick Fix | ~24–48 hours |
| Complex Fix | 2–7 days |

Expedited turnaround is available at an additional cost. See [Pricing](./PRICING.md) for details.

---

## See Also

- [Pricing](./PRICING.md) — Tier breakdown and payment info
- [Terms of Service](./TERMS.md) — Service terms and conditions
- [FAQ](./FAQ.md) — Common questions and answers
