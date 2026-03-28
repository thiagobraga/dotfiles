#!/bin/bash
set -e

# ANSI color codes
GREEN='\033[0;32m'
BOLD_GREEN='\033[1;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
GRAY='\033[0;90m'
DARK_GRAY='\033[1;30m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

info()    { printf "${GRAY}[info]${NC} %s\n" "${1:-}"; }
success() { printf "${GREEN}[done]${NC} %s\n\n" "${1:-}"; }
warning() { printf "${YELLOW}[warning]${NC} %s\n\n" "${1:-}"; }
error()   { printf "${RED}[error]${NC} %s\n\n" "${1:-}"; }

# Returns a colored string based on boolean input
status() {
  if [ "${1}" == "true" ]; then
    printf "${BOLD_GREEN}true${NC}"
  else
    printf "${RED}false${NC}"
  fi
}

# Run a command or heredoc script with tracing (set -x style)
run() {
  local exit_code=0
  printf "${GRAY}"

  if [ $# -eq 0 ]; then
    local script
    script="$(cat)"
    printf '%s\n' "$script"
    bash -c "$script" || exit_code=$?
  else
    printf '%q ' "$@"
    printf '\n'
    "$@" || exit_code=$?
  fi

  printf "${NC}"
  return $exit_code
}
