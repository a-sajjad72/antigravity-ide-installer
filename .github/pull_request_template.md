## Summary of Changes

Describe the changes introduced by this PR, the motivation behind them, and what problems they resolve.

## Type of Change
- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to change)
- [ ] Documentation update (non-functional changes)

## Verification and Testing

Describe how these changes were tested (e.g., inside a Docker container, manual testing on Ubuntu/Debian, testing rollback commands, version checks).

- [ ] Script successfully runs `shellcheck` with zero errors or warnings.
- [ ] Tested on target Linux version: `Ubuntu 22.04` / `Ubuntu 24.04` / `Debian` (please specify).
- [ ] Verified profile backup functionality before running upgrade code.
- [ ] Tested `--rollback` command to verify clean restoration.
- [ ] Verified `--check` mode compares versions correctly.

## Checklist
- [ ] My code follows the code style guidelines of this project.
- [ ] I have updated the documentation (`README.md` or landing page) if required.
- [ ] I have commented my code, particularly in hard-to-understand areas.
- [ ] My changes generate no new warnings or errors during script execution.
