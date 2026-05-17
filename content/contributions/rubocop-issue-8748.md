---
title: "RuboCop #8748 — Add Style/RequireRelative cop"
date: 2026-05-17
repo: rubocop/rubocop
issue: "https://github.com/rubocop/rubocop/issues/8748"
pr: "https://github.com/rubocop/rubocop/pull/15172"
status: open
branch: "jakehamilton:fix/issue-8748-prefer-require-relative"
---

## Summary

Added a new `Style/RequireRelative` cop that flags `require` calls using paths built from `__dir__`, and suggests using `require_relative` instead.

## Changes Made

- **`lib/rubocop/cop/style/require_relative.rb`**: New cop implementation with two detection patterns
- **`spec/rubocop/cop/style/require_relative_spec.rb`**: 8 RSpec examples covering all patterns
- **`config/default.yml`**: Added `Style/RequireRelative` entry with `Enabled: pending`
- **`lib/rubocop.rb`**: Added `require_relative` loader for the new cop
- **`changelog/new_require_relative.md`**: Changelog entry
- **`.rubocop.yml`**: Added exclusion for `InternalAffairs/OnSendWithoutOnCSend` (require is never called with a receiver)

## Detected Patterns

```ruby
# bad
require "#{__dir__}/foo"
require "#{__dir__}/foo/bar"
require File.expand_path('foo', __dir__)
require File.expand_path('../foo', __dir__)

# good
require_relative 'foo'
require_relative 'foo/bar'
require_relative '../foo'
```

## Notes

- All 8 tests pass locally (`bundle exec rspec spec/rubocop/cop/style/require_relative_spec.rb`)
- RuboCop self-lint passes on new files
- Cop provides safe autocorrection for all detected patterns
- Uses `Enabled: pending` and `VersionAdded: '<<next>>'` per rubocop conventions for new cops
