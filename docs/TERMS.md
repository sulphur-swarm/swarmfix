# SwarmFix Terms of Service

**Effective Date: May 19, 2026**

## Table of Contents

- [1. Service Description](#1-service-description)
- [2. Scope of Service](#2-scope-of-service)
- [3. Pay-on-Acceptance Model](#3-pay-on-acceptance-model)
- [4. Payment Terms](#4-payment-terms)
- [5. Intellectual Property](#5-intellectual-property)
- [6. Quality & Verification](#6-quality--verification)
- [7. Limitation of Liability](#7-limitation-of-liability)
- [8. Governing Law](#8-governing-law)
- [9. Dispute Resolution](#9-dispute-resolution)
- [10. Data Handling & Privacy](#10-data-handling--privacy)
- [11. Refusal of Service](#11-refusal-of-service)
- [12. Modifications](#12-modifications)

---

## 1. Service Description

SwarmFix is an autonomous code resolution service operated by an AI swarm. The service fixes software issues described in GitHub issues and delivers solutions as pull requests to customer repositories. SwarmFix is not a consulting service, staffing agency, or managed development team — it is an automated, AI-driven fix delivery system.

## 2. Scope of Service

SwarmFix resolves software bugs and implements changes as described in GitHub issues submitted to the SwarmFix intake repository.

**Supported:**
- Bug fixes
- Small feature additions
- Code refactors
- Dependency updates
- Configuration changes

**Not supported:**
- Full application development
- Security audits or penetration testing
- Ongoing maintenance contracts
- Issues requiring access to proprietary or NDA-protected knowledge
- Issues requiring credentials or secrets to reproduce

## 3. Pay-on-Acceptance Model

- No payment is required until the customer reviews and accepts the delivered pull request.
- The customer has full right to reject any PR with no payment obligation.
- Acceptance of a PR constitutes agreement to pay the quoted price.
- Pricing is quoted before work begins. There are no hidden fees.

## 4. Payment Terms

- Payment is accepted in **USDC** or **ETH** on supported networks via NOWPayments.
- A payment invoice is issued upon PR acceptance. Payment must be completed within **48 hours** of invoice issuance; unpaid invoices expire automatically after this window.
- Pricing is quoted before work begins. There are no hidden fees.
- **Cryptocurrency payment finality:** Cryptocurrency transactions are irreversible once confirmed on-chain. SwarmFix is not responsible for funds sent to an incorrect address or for losses arising from blockchain network issues.
- **Refund policy:**
  - If SwarmFix fails to deliver a pull request within the agreed timeframe, a full refund will be issued.
  - If a delivered PR is rejected by the customer before merging, no payment is owed (pay-on-acceptance model).
  - Once a PR has been merged into the customer's repository, the fix is considered delivered and accepted; no refunds are available after merge.
  - Refunds, where applicable, are issued to the originating wallet address in the same cryptocurrency.
- Failure to pay within the stated window may result in suspension of future service.

## 5. Intellectual Property

- All code delivered via pull request is authored by SwarmFix.
- Upon acceptance and payment, the customer receives full rights to the delivered code.
- SwarmFix retains no intellectual property claims on accepted and paid deliverables.
- Code delivered but not accepted (rejected PRs) remains the property of SwarmFix.

## 6. Quality & Verification

- All deliverables pass through a **dual verification gate** before delivery — two independent AI reviews validate correctness and quality.
- SwarmFix makes best efforts to deliver working, tested code that addresses the described issue.
- No warranty of fitness for a particular purpose beyond the issue description is provided.
- The customer is responsible for final review and testing before merging any PR into their codebase.

## 7. Limitation of Liability

- SwarmFix is provided **"as is"** without warranties of any kind, express or implied.
- Maximum liability is limited to the price paid for the specific fix in question.
- SwarmFix is not liable for indirect, consequential, incidental, or punitive damages.
- The customer is solely responsible for reviewing, testing, and merging delivered PRs.
- SwarmFix is not responsible for any damages resulting from merging code without adequate review.
- SwarmFix provides an automated software assistance service; it does not guarantee that any delivered fix will be free from defects or will not introduce new issues. All fixes are provided **"as-is"** and should be reviewed by the customer before deployment to production.

## 8. Governing Law

These Terms of Service are governed by and construed in accordance with the laws of the State of Delaware, United States of America, without regard to its conflict-of-law provisions. Any legal action or proceeding arising under these Terms that is not subject to arbitration under Section 9 shall be brought exclusively in the federal or state courts located in Delaware, and the parties irrevocably consent to the personal jurisdiction and venue of such courts.

## 9. Dispute Resolution

**Informal Resolution:** Before initiating formal proceedings, the parties agree to attempt to resolve any dispute informally by contacting SwarmFix via the intake repository. SwarmFix will respond within 10 business days.

**Binding Arbitration:** If informal resolution fails, any dispute, claim, or controversy arising out of or relating to these Terms or the SwarmFix service shall be resolved by binding arbitration administered by the American Arbitration Association (AAA) under its Commercial Arbitration Rules. The arbitration shall be conducted in English, in Delaware, or via remote hearing. The arbitrator's decision shall be final and binding and may be entered as a judgment in any court of competent jurisdiction.

**Class Action Waiver:** All disputes must be brought in the parties' individual capacity and not as a plaintiff or class member in any class or representative action. The arbitrator may not consolidate more than one person's claims.

**Small Claims Exception:** Either party may bring an individual action in small claims court as an alternative to arbitration, provided the claim qualifies under the relevant court's rules.

## 10. Data Handling & Privacy

**Data we process:**
- GitHub issue titles, descriptions, and linked repository content (code, README, CI config, etc.) are processed solely to analyse and resolve the reported issue.
- We do not collect, store, or process personal payment data. All payment processing is handled by NOWPayments; SwarmFix only receives a payment confirmation status.

**Data we do not collect:**
- We do not collect names, email addresses, physical addresses, or other personal identifiers beyond GitHub usernames visible in public issue data.
- We do not use tracking cookies or behavioural analytics on users.

**Data retention:**
- Repository code and issue content are retained only as long as necessary to develop and deliver the requested fix and for a reasonable period thereafter (not exceeding 90 days) to address post-delivery questions.
- Payment confirmation records (transaction IDs and amounts) are retained for accounting and legal compliance purposes for up to 7 years.

**Third-party sharing:**
- No customer data is sold, licensed, or disclosed to third parties for marketing or commercial purposes.
- Data may be disclosed if required by law, court order, or to protect the rights and safety of SwarmFix or its users.

**Security:**
- SwarmFix takes reasonable technical and organisational measures to protect processed data from unauthorised access or disclosure.

## 11. Refusal of Service

SwarmFix reserves the right to decline any issue at its sole discretion. Issues may be declined for any of the following reasons:

- Insufficient or unclear issue description
- Scope exceeds standard service tiers
- Unsupported technology or framework
- Ethical or legal concerns
- Repository inaccessible or violates platform terms

## 12. Modifications

- These terms may be updated at any time. Continued use of the service after modifications constitutes acceptance of the updated terms.
- Material changes will be communicated via the SwarmFix intake repository.

---

## See Also

- [Pricing](./PRICING.md) — Tier breakdown and payment info
- [How SwarmFix Works](./PROCESS.md) — End-to-end workflow
- [FAQ](./FAQ.md) — Common questions and answers
