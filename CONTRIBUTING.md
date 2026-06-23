# Contributing to Antigravity IDE Installer

First off, thank you for considering contributing to the Antigravity IDE Installer! It's people like you who make this project robust and useful for the community.

Here are the guidelines and workflows to help you contribute effectively.

---

## Code of Conduct

By participating in this project, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md). Please report any unacceptable behavior to the project maintainers.

---

## How Can I Contribute?

### Reporting Bugs
* **Check existing issues:** Make sure the bug hasn't already been reported.
* **Open a new issue:** If you find a new bug, open an issue using the Bug Report template. Include details like your Linux distribution, architecture, shell version, and steps to reproduce.

### Suggesting Enhancements
* Open an issue using the Feature Request template, explaining the utility of the enhancement, how it should work, and the problem it solves.

### Submitting Pull Requests
1. Fork the repository and create your branch from `main`.
2. Make your changes in a clean, readable style.
3. Verify your shell scripts locally using `shellcheck`.
4. Ensure your changes do not break legacy migrations, backups, or standard Chromium sandbox setups.
5. Create a Pull Request (PR) with a clear title and description explaining the changes.

---

## Local Development and Testing

Since this script manipulates system-wide paths (e.g., `/opt/`, `/usr/share/`), you should test it in a containerized environment (like Docker or a virtual machine) to prevent modifying your host system.

### Safe Testing with Docker (Ubuntu Container)

1. **Start an interactive Ubuntu container:**
   ```bash
   docker run --rm -it -v "$(pwd)":/repo ubuntu:latest bash
   ```

2. **Install minimal dependencies inside the container:**
   ```bash
   apt-get update && apt-get install -y curl tar python3 sudo desktop-file-utils
   ```

3. **Run your modified installer script:**
   ```bash
   cd /repo
   # Simulate execution with mock variables if needed, or run locally:
   SUDO_USER=root bash update-antigravity-ide
   ```

### Linting Script Code

We enforce script linting using `shellcheck`. Please run it on your local changes before submitting a PR:

```bash
shellcheck update-antigravity-ide install.sh
```

---

## Pull Request Guidelines

* Keep your PRs focused and single-purpose.
* Do not introduce third-party binary dependencies.
* Document any changes to CLI arguments or backup paths.
* A maintainer will review your contribution as soon as possible.
