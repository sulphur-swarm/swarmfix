import { test, expect } from "bun:test";

test("workflows exist", () => {
  // Verify the three required workflow files are present
  expect(Bun.file(".github/workflows/intake-validation.yml").size).toBeGreaterThan(0);
  expect(Bun.file(".github/workflows/auto-label.yml").size).toBeGreaterThan(0);
  expect(Bun.file(".github/workflows/stale-cleanup.yml").size).toBeGreaterThan(0);
});
