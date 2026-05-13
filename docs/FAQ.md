# SwarmFix FAQ

## Table of Contents

- [General](#general)
- [Pricing & Payment](#pricing--payment)
- [Technical](#technical)
- [Process](#process)

---

## General

### What is SwarmFix?

SwarmFix is an AI-powered autonomous code resolution service. You submit a GitHub issue describing a bug or desired change, and an AI swarm develops a fix and delivers it as a pull request to your repository. You only pay if you accept the fix.

### How is this different from hiring a developer?

SwarmFix is faster and more affordable for well-defined issues. The AI swarm works 24/7 — no scheduling, no interviews, no onboarding. For straightforward bug fixes and small features, SwarmFix delivers results in hours to days at a fraction of the cost of traditional development.

### Is SwarmFix fully autonomous?

Yes. An AI swarm analyzes the issue, studies your codebase, develops the fix, and delivers a pull request. All code passes through a **dual verification gate** — two independent AI reviews — before delivery. No human developers are involved in the fix process.

---

## Pricing & Payment

### How much does it cost?

SwarmFix offers three pricing tiers:

| Tier | Price | Scope |
|------|-------|-------|
| Free Fix | $0 | Simple fixes (limited availability) |
| Quick Fix | $10–$50 | Straightforward bugs and small features |
| Complex Fix | $50–$500 | Multi-file refactors and complex issues |

See [Pricing](./PRICING.md) for full details.

### When do I pay?

Only after you review and accept the delivered pull request. There is no upfront payment, no deposit, and no subscription. If you reject the PR, you owe nothing.

### What payment methods are accepted?

SwarmFix accepts **USDC** and **ETH** cryptocurrency on supported networks. Payment instructions are provided after you accept a PR.

### What if I'm not satisfied with the fix?

Simply reject the pull request — no payment is required. You can provide feedback on what's missing or incorrect, and SwarmFix may reattempt the fix within the original scope at no additional cost.

---

## Technical

### What languages and frameworks are supported?

SwarmFix works with any publicly accessible codebase. Best results are achieved with popular languages and frameworks, including:

- JavaScript / TypeScript
- Python
- Rust
- Go
- Java
- C / C++
- Ruby
- PHP

Other languages are supported on a best-effort basis.

### What types of issues can SwarmFix handle?

- Bug fixes and crash resolution
- Small feature additions
- Code refactors
- Dependency updates
- Configuration changes
- Test coverage improvements

SwarmFix is **not suitable** for full application development, security audits, or issues requiring access to proprietary systems.

### Do I need to give SwarmFix access to my repository?

No special access is needed for **public repositories**. SwarmFix reads publicly available code to develop the fix and delivers the result as a pull request. For private repositories, contact us to discuss arrangements.

### How do I know the code is safe to merge?

All code passes through a **dual verification gate** before delivery — two independent AI reviews validate correctness and quality. That said, you should review the PR diff as you would any contribution. You maintain full control over whether to merge.

---

## Process

### How do I submit an issue?

Open an issue on the **SwarmFix intake repository** with your repository URL and a clear description of the bug or desired change. Use the provided issue template for best results. See [How SwarmFix Works](./PROCESS.md) for the full workflow.

### How long does it take?

| Tier | Typical Turnaround |
|------|-------------------|
| Free Fix | 2–5 days |
| Quick Fix | 24–48 hours |
| Complex Fix | 2–7 days |

Expedited turnaround is available at an additional cost.

### Can I request changes to the delivered PR?

Yes. Within the original scope of the issue, you can request adjustments at no extra cost. If the requested changes expand the scope significantly, a new quote may be provided.

### What if SwarmFix can't fix my issue?

We'll let you know during triage. Issues that are out of scope, too complex, or insufficiently described will be declined with an explanation. There is no charge for issues SwarmFix cannot resolve.

---

## See Also

- [Pricing](./PRICING.md) — Tier breakdown and payment info
- [Terms of Service](./TERMS.md) — Service terms and conditions
- [How SwarmFix Works](./PROCESS.md) — End-to-end workflow
