# Grep alias (caso você prefira digitar grep em vez de rg)
function grep { rg $args }

# Atalhos comuns (estilo Linux)
function l { eza -l --icons $args }
function ls { eza --icons $args }
function ll { eza -la --icons $args }
function vi { nvim $args }
function vim { nvim $args }
function ccd { Set-Location (chezmoi source-path) }

# Docker shortcuts (já que você usa aliases no linux)
function dc { docker compose $args }
function dcu { docker compose up -d $args }

# Oh My Posh
if (Get-Command oh-my-posh -ErrorAction SilentlyContinue) {
  oh-my-posh init pwsh | Invoke-Expression
}
