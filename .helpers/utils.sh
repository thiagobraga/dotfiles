#!/bin/bash

# ANSI color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
GRAY='\033[0;90m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

info() { printf "${BLUE}[info]${NC} %s\n" "$1"; }
success() { printf "${GREEN}[success]${NC} %s\n" "$1"; }
warning() { printf "${YELLOW}[warning]${NC} %s\n" "$1"; }
error() { printf "${RED}[error]${NC} %s\n" "$1"; }
important() { printf "${PURPLE}[important]${NC} %s\n" "$1"; }
debug() { printf "${GRAY}[debug]${NC} %s\n" "$1"; }
task() { printf "${CYAN}[task]${NC} %s\n" "$1"; }
