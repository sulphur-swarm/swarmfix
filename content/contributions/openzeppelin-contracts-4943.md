---
title: "OpenZeppelin Contracts #4943 — Add ESLint Rule for No Async in Describe"
date: 2026-05-16
repo: OpenZeppelin/openzeppelin-contracts
issue: "https://github.com/OpenZeppelin/openzeppelin-contracts/issues/4943"
pr: "https://github.com/OpenZeppelin/openzeppelin-contracts/pull/6528"
status: open
branch: "sulphur-swarm:fix/issue-4943-eslint-no-async-describe"
---

## Summary

Added `eslint-plugin-mocha` with the `mocha/no-async-suite` rule set to `error` severity to prevent async functions in Mocha `describe` blocks, which cause silent test failures.

## Changes Made

- **`eslint.config.mjs`**: Import `eslint-plugin-mocha` and configure `mocha/no-async-suite: error`
- **`package.json`**: Add `eslint-plugin-mocha` as a dev dependency
- **`test/access/manager/AccessManager.test.js`**: Remove `async` from describe callback (line 1111)
- **`test/crosschain/BridgeERC1155.behavior.js`**: Remove `async` from describe callback (line 30)
- **`test/token/ERC6909/ERC6909.behavior.js`**: Remove `async` from describe callback (line 145)

## Notes

- There is an existing open PR (#6438) by gonzaotc for the same issue; this was submitted independently.
- Linter passes: `npm run lint:js` exits with code 0.
- Full Hardhat test suite could not be run in the contribution environment (requires Solidity compiler).
