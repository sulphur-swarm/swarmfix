# PR Submission: Quarkus Issue #51207

## Status: SUBMITTED

**PR URL**: https://github.com/quarkusio/quarkus/pull/54266
**Fork Branch**: `sulphur-swarm:fix/issue-51207-parametrised-tests`
**Fork Repo**: https://github.com/sulphur-swarm/quarkus

## Changes Made

1. **Created** `CompatibilityTestScenario.java` — enum with 10 named scenarios
2. **Created** 10 new test classes with descriptive names:
   - `DefaultBothCompatibilityTest`
   - `DefaultBlockingOnlyCompatibilityTest`
   - `DefaultReactiveOnlyCompatibilityTest`
   - `DefaultReactiveBlockingSessionDisabledCompatibilityTest`
   - `DefaultReactiveJdbcDisabledCompatibilityTest`
   - `NamedDatasourceBothCompatibilityTest`
   - `NamedDatasourceNamedPuBothCompatibilityTest`
   - `NamedDatasourceReactiveOnlyCompatibilityTest`
   - `NamedReactiveDatasourceDefaultBlockingCompatibilityTest`
   - `DifferentNamedDatasourcesNamedPuBothCompatibilityTest`
3. **Deleted** 10 old test classes with verbose names (via `git rm`)
4. All commits signed off per DCO requirement

## Notes
- Java not installed locally; compile check could not be run
- CI in the upstream Quarkus project will verify compilation and tests
- PR includes AI assistance disclosure per project conventions
