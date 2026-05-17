# Slither Issue #1780 — PR Tracking

## Issue
https://github.com/crytic/slither/issues/1780

**Summary:** `register_printer` does not handle multiple compilation units, unlike `register_detector` which already iterates over `self.compilation_units`.

## Pull Request
https://github.com/crytic/slither/pull/3025

**Branch:** `sulphur-swarm:fix/issue-1780-register-printer-multi-cu`  
**Base:** `crytic/slither:master`  
**Status:** Open (awaiting review)

## Changes Made
- `slither/slither.py`: Wrapped printer instantiation in `register_printer` in a `for compilation_unit in self.compilation_units:` loop, mirroring `register_detector`.
- `slither/printers/abstract_printer.py`: Updated `AbstractPrinter.__init__` to accept `compilation_unit` as first arg (mirroring `AbstractDetector`).
- `slither/printers/inheritance/inheritance_graph.py`: Updated `PrinterInheritanceGraph.__init__` to pass compilation unit.
- `tests/e2e/printers/test_printers.py`: Updated tests to use `register_printer` instead of direct instantiation.
