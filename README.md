<h1 align="center">
  <img src="chezmoi.png" width="100" />
  <br>
  dotfiles
</h1>

My personal dotfiles for Ubuntu/Debian, managed with [chezmoi](https://www.chezmoi.io/).

## Install

Run this command on a new machine:

```bash
sh -c "$(curl -fsLS get.chezmoi.io/lb)"
chezmoi init --apply thiagobraga/dotfiles.git
```

## What's included

- **Shell**: Zsh with Oh My Zsh and Powerlevel10k.
- **Plugins**: zsh-syntax-highlighting, zsh-autosuggestions.
- **Automation**: Automated `apt` provisioning (sudoers, locale, update, install).
- **WSL Aware**: Specific configurations for Windows Subsystem for Linux.
- **EditorConfig**: Consistent 2-space indentation.