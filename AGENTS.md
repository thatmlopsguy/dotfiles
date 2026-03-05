# AGENTS.md - Agent Coding Guidelines for This Repository

This repository contains dotfiles managed by GNU Stow. It primarily consists of configuration files and shell scripts for various tools.

## Repository Structure

```sh
.dotfiles/
├── bootstrap.sh           # Main stow bootstrap script
├── scripts/               # Installation scripts
├── zsh/                   # Zsh configuration
├── bash/                  # Bash configuration
├── git/                   # Git configuration
├── tmux/                  # Tmux configuration
├── vscode/                # VS Code settings
├── shellcheck/            # ShellCheck configuration
├── opencode/              # OpenCode configuration
└── [toolname]/            # Other tool configurations
```

## Build/Lint/Test Commands

### Main Setup Command

```bash
# Bootstrap dotfiles using stow
./bootstrap.sh

# Or with specific folders
STOW_FOLDERS="git,tmux,zsh,bin" ./bootstrap.sh
```

### Shell Script Linting

```sh
# Lint a shell script
shellcheck script.sh

# Lint with the project's config (enables quote-safe-variables)
shellcheck --config .config/shellcheckrc script.sh

# Lint all scripts in a directory
shellcheck scripts/*.sh
```

### Individual Script Installation

```sh
# Each script can be run directly
./scripts/install-homebrew.sh
./scripts/install-zsh-tools.sh
./scripts/install-starship.sh
# etc.
```

## Code Style Guidelines

### Shell Scripts (bash/zsh)

**Shebang**

- Use `#!/usr/bin/env bash` for bash scripts
- Use `#!/bin/bash` is also acceptable for portability

**ShellCheck Compliance**

- All shell scripts should pass ShellCheck with `enable=quote-safe-variables`
- Always quote variables: `"$VAR"` not `$VAR`
- Use `[[ ]]` for conditionals instead of `[ ]`

**Variable Naming**

- UPPERCASE for environment variables and constants: `DOTFILES`, `STOW_FOLDERS`
- lowercase for local variables: `folder`, `install_path`
- Use descriptive names: `SCRIPT_DIR` not `SD`

**Functions**

```sh
# Define functions like this:
install_package() {
    local package="$1"
    echo "[*] Installing $package..."
    brew install "$package"
}
```

**Error Handling**

- Use `set -e` for scripts that should exit on error
- Check command existence: `if command -v foo &>/dev/null; then`
- Exit with code 1 on failure

### Configuration Files

**General**

- Follow `.editorconfig`: 2-space indentation, UTF-8, trim trailing whitespace
- Use consistent commenting style: `# Comment` for bash/zsh
- Keep files organized with clear section headers

**Zsh**

- Use zsh-specific features (arrays, `[[ ]]`, etc.)
- Plugin configuration in `~/.zshrc`
- Environment variables in `~/.zshenv`

**Git**

- Keep gitconfig organized by section
- Use `[includeIf]` for work-specific overrides

### YAML/TOML/JSON (VS Code, etc.)

- 2-space indentation
- Alphabetical ordering within sections when possible
- Comment complex configurations

## Common Tasks

### Adding a New Tool Configuration

1. Create a new directory: `mkdir -p toolname`
2. Add config files to that directory (without the leading `.`)
3. Run `stow toolname` to symlink

### Testing Changes

```sh
# Preview what stow will do (no changes)
stow -nv toolname

# Actually stow
stow toolname

# Restow (delete and re-stow)
stow -R toolname

# Delete symlinks
stow -D toolname
```

### Running ShellCheck on All Scripts

```sh
find . -name "*.sh" -exec shellcheck {} \;
```

## Notes for Agents

- This is a **dotfiles repository** - not an application
- No build steps beyond stow
- No tests in the traditional sense
- The primary "linting" is shellcheck
- Configuration files are personal but well-documented
- Ask before making significant changes to configuration files
