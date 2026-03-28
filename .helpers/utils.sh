#!/bin/bash
set -e

# ANSI color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
GRAY='\033[0;90m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

info() { printf "${GRAY}[info]${NC} %s\n" "${1:-}"; }
success() { printf "${GREEN}[done]${NC} %s\n\n" "${1:-}"; }
warning() { printf "${YELLOW}[warning]${NC} %s\n\n" "${1:-}"; }
error() { printf "${RED}[error]${NC} %s\n\n" "${1:-}"; }

# Silently disable tracing if it was active, run the command, then re-enable.
silent() {
  { set +x; } 2>/dev/null
  "$@"
  set -x
}

# Run a single command with tracing (set -x) ON, then disable tracing afterward.
run() {
  set -x
  "$@"
  { set +x; } 2>/dev/null
}
