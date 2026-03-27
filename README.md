<h1 align="center">
  <img src="chezmoi.png" width="100" />
  <br>
  dotfiles
</h1>

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Install

Run this command on a new machine:

```bash
sh -c "$(curl -fsLS get.chezmoi.io/lb)"
chezmoi init --apply thiagobraga/dotfiles
```

## What's included

- **Shell**
  - Zsh with Oh My Zsh framework
  - Powerlevel10k theme with gitstatusd prefetching
- **Plugins**
  - zsh-syntax-highlighting
  - zsh-autosuggestions
- **Automation**
  - Automated `apt` provisioning (sudoers, locales, update, upgrade)
  - Essential package installation (bat, fzf, neovim, eza, etc.)
  - Standardized color-coded logging via `utils.sh`
- **Cross-Platform**
  - WSL detection and conditional logic
  - Managed Windows Terminal `settings.json` (Windows only)
- **Standards**
  - EditorConfig for consistent 2-space indentation
  - AGENTS.md for global AI instruction consistency
