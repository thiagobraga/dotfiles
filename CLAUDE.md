# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a [chezmoi](https://www.chezmoi.io/)-managed dotfiles repository for Ubuntu (Noble 24.04), supporting both native Linux and WSL environments. It automates the setup of a full development workstation including shell configuration, runtime management, Docker containers, and self-hosted services.

## Common Commands

### Chezmoi Operations

```bash
# Apply dotfiles to the current machine (run from anywhere)
chezmoi apply

# Apply a specific file
chezmoi apply ~/.zshrc

# Edit a source file (automatically applies after edit)
chezmoi edit ~/.zshrc

# View diff between source and target
chezmoi diff

# Re-initialize from remote (destructive - applies fresh)
chezmoi init --apply thiagobraga
```

### Template Testing

```bash
# Test template rendering without applying
chezmoi execute-template < dot_zshrc.tmpl

# Execute a specific script in dry-run mode (review the script first)
bash -x .chezmoiscripts/run_before_20-apt-install.sh.tmpl
```

## Architecture

### Chezmoi Configuration Model

The repository uses `.chezmoi.toml.tmpl` to define environment detection variables:

- `isLinux` / `isWindows` - OS detection
- `isUbuntu` - Distribution detection
- `isWsl` - WSL detection via kernel osrelease
- `isDesktop` / `isServer` - Environment type (detected via display server presence)
- `hasAVX` - CPU feature detection for runtime compatibility
- `isFull` - Toggle for full development environment (set via `CHEZMOI_FULL=true` or prompt)

Scripts and config files use these variables via Go templates (`{{ if .isWsl }}...{{ end }}`).

### File Naming Conventions

Chezmoi translates filenames to actual paths:

- `dot_*` → `.*` (hidden files in home directory)
  - `dot_zshrc.tmpl` → `~/.zshrc`
  - `dot_p10k.zsh` → `~/.p10k.zsh`
- `private_*` → sets 0600 permissions
  - `private_dot_config/` → `~/.config/` (private)
- `run_before_*` - Executed before file updates (setup scripts)
- `run_after_*` - Executed after file updates
- `run_onchange_*` - Executed only when template content changes
- `*.tmpl` - Processed as Go templates

### Script Organization

Scripts in `.chezmoiscripts/` execute in alphabetical order by phase:

| Phase | Scripts | Purpose |
|-------|---------|---------|
| `run_before_*` | `00-chezmoi-env.sh.tmpl` through `60-self-hosting.sh.tmpl` | System setup: APT packages, shells, runtimes, Docker |
| `run_after_*` | `99-start-zsh.sh` | Post-apply actions |
| `run_onchange_*` | `70-windows.ps1.tmpl` | Windows-side configuration (WSL only) |

### Helper Utilities

All setup scripts source `.helpers/utils.sh` for consistent logging:

```bash
source "{{ .chezmoi.sourceDir }}/.helpers/utils.sh"

info "Message"      # Gray [info] prefix
success "Message"  # Green "done" prefix
warning "Message"  # Yellow warning
error "Message"    # Red error

# Execute with tracing
run command arg1 arg2    # Prints command and executes, shows "done" on success
run -n1 command          # Same but only shows first line of output

# Execute heredoc
run <<EOF
  cd /some/path
  some command
EOF
```

### Environment Detection Pattern

Template files should use the configured variables:

```bash
{{ if and .isLinux .isFull }}
# Full install logic for Linux
{{ end }}

{{ if .isWsl }}
# WSL-specific logic
{{ end }}
```

### Key Configuration Files

- `dot_zshrc.tmpl` - Shell config with conditional loading (NVM, Bun, Pyenv only if `isFull`)
- `dot_aliases` - Shell aliases (batcat for cat, eza for ls, apt shortcuts)
- `dot_AGENTS.md.tmpl` - Instructions for AI agents working in this repo
- `private_dot_config/` - Application configs (bat, nvim, terminator)

### Git Configuration

`.chezmoi.toml.tmpl` has `autoCommit = true` and `autoPush = true`. Changes are automatically committed when applying.

## Modifying Scripts

When adding new setup steps:

1. Use appropriate phase prefix (`run_before_`, `run_after_`)
2. Use numeric prefix for ordering (e.g., `25-script.sh.tmpl` runs before `30-script.sh.tmpl`)
3. Always source the utils helper: `source "{{ .chezmoi.sourceDir }}/.helpers/utils.sh"`
4. Use the `run` function for command execution
5. Wrap OS-specific logic in template conditionals: `{{ if .isUbuntu }}...{{ end }}`
6. For commands needing `isFull` context, check: `{{ if and .isLinux .isFull }}`
