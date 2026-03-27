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
  - zsh
  - oh-my-zsh
  - powerlevel10k
- **Plugins**
  - zsh-syntax-highlighting
  - zsh-autosuggestions
- **Automation**
  - sudoers
  - locales
  - apt update
  - apt upgrade
  - Essential packages (bat, fzf, neovim, eza, etc.)
  - Standardized color-coded logging
- **Cross-Platform**
  - WSL detection
  - Windows Terminal settings
- **Standards**
  - EditorConfig
  - AGENTS.md
