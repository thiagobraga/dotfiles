<h1 align="center">
  <img src=".helpers/chezmoi.png" width="100" />
  <br>
  dotfiles
</h1>

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Install

Run this command on a new machine:

```bash
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply thiagobraga -S ~/projects/dotfiles
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
  - Essential packages
    - bat
    - build-essential
    - curl
    - eza
    - fzf
    - git
    - make
    - neovim
    - ripgrep
    - vim
    - wget
    - zsh
  - Standardized color-coded logging
- **Cross-Platform**
  - WSL detection
  - Windows Terminal settings
- **Standards**
  - EditorConfig
  - AGENTS.md
