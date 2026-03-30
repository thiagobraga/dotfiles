<div align="center">
  <img src=".helpers/chezmoi.png" width="120" />
  <h1>🚀 dotfiles</h1>
  <p><b>A performance-tuned, AI-first development environment automation.</b></p>
  
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
  [![Managed by chezmoi](https://img.shields.io/badge/managed%20by-chezmoi-blue.svg)](https://www.chezmoi.io/)
  [![Built for Ubuntu](https://img.shields.io/badge/OS-Ubuntu-orange.svg)](https://ubuntu.com/)
</div>

---

## ⚡ Overview

My personal configuration for **Ubuntu/WSL**, meticulously automated with [chezmoi](https://www.chezmoi.io/). This project transforms a fresh Linux installation into a fully-equipped development workstation in minutes, featuring:

- **AI-Powered Workflows**: Integrated with `claude-code`, `ollama`, and custom `antigravity` skills.
- **Modern Runtimes**: Seamless management of **Node.js**, **Bun**, and **Python**.
- **Self-Hosted Infrastructure**: One-command deployment of `llama.cpp`, `paperless-ngx`, and `glance`.
- **Turbo-charged Shell**: Zsh + Powerlevel10k + fine-tuned history and completion.

## 🛠️ Installation

Run the following command on a new machine:

```bash
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply thiagobraga -S ~/projects/dotfiles
```

---

## 🏗️ The Stack

### 🐚 Shell & Terminal
- **Framework**: Oh My Zsh with a robust plugin set (`git`, `nvm`, `syntax-highlighting`, `autosuggestions`).
- **Theme**: [Powerlevel10k](https://github.com/romkatv/powerlevel10k) (fully customized).
- **Essentials**: `eza` (LS++), `bat` (CAT++), `fzf` (Fuzzy Finder), `zstd`, `ripgrep`, `neovim`.

### 💻 Development Runtimes
- **JavaScript/TypeScript**: 
  - **Node.js** via `NVM` (managed as a chezmoi script).
  - **Bun** for high-speed execution (on systems with AVX support).
  - Global Tools: `vercel`, `n8n`, `browser-sync`, `yarn`.
- **Python**:
  - `pyenv` for version management.
  - `pipx` for isolated tool installs.
  - `uv` for lightning-fast package management.

### 🤖 AI Ecosystem
- **Local LLMs**: [Ollama](https://ollama.com/) & [llama.cpp](https://github.com/ggerganov/llama.cpp) server.
- **Agents**: Official integration for `claude-code`, `openclaw`, and `opencode-ai`.
- **Skills**: [Antigravity Awesome Skills](https://github.com/antigravity-ai/awesome-skills) pre-installed for agentic productivity.

### 🐳 Containers & Self-Hosting
Managed via **Docker** and **Docker Compose**:
- **llama.cpp**: High-performance LLM inference server.
- **paperless-ngx**: Advanced document management system.
- **glance**: A beautiful self-hosted dashboard.

---

## ⚙️ Project Structure

- `.chezmoiscripts/`: Discrete setup scripts for each layer of the environment (APT, NVM, Docker, etc.).
- `.helpers/`: Utility functions and color-coded logging for the bootstrap process.
- `dot_zshrc.tmpl`: Template-based shell configuration with environment-aware variables.
- `dot_aliases`: Productivity-focused shortcuts (e.g., `aptu` for system updates, `kiro` for AI chat, `l` for enhanced listing).

---

## 🎨 System Highlights
- **Optimized APT**: Automatic mirror selection and system-wide locale configuration.
- **WSL Native**: Integrated detection for WSL features and Windows Terminal settings synchronization.
- **Color-Coded Feedback**: Every install step is traced with professional progress indicators via a custom `run` helper.

---

<p align="center">
  Generated with ❤️ by <b>Thiago Braga</b>
</p>
