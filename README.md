# dotfiles

My personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## What’s included

- Zsh config (`.zshrc`)
- Aliases (`.aliases`)
- Terminator config (`~/.config/terminator/config`)

## Quick install (new machine)

```bash
export PATH="$PATH:$HOME/.local/bin"
sh -c "$(curl -fsLS get.chezmoi.io/lb)"
chezmoi init --apply thiagobraga/dotfiles.git
```