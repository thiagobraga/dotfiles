#!/bin/bash
set -e

# Reset
NC='\033[0m' # No Color

# Regular Colors
BLACK='\033[0;30m'  # #000000
RED='\033[0;31m'    # #800000
GREEN='\033[0;32m'  # #008000
YELLOW='\033[0;33m' # #808000
BLUE='\033[0;34m'   # #000080
PURPLE='\033[0;35m' # #800080
CYAN='\033[0;36m'   # #008080
WHITE='\033[0;37m'  # #C0C0C0

# Bold
BBLACK='\033[1;30m'  # #808080
BRED='\033[1;31m'    # #FF0000
BGREEN='\033[1;32m'  # #00FF00
BYELLOW='\033[1;33m' # #FFFF00
BBLUE='\033[1;34m'   # #0000FF
BPURPLE='\033[1;35m' # #FF00FF
BCYAN='\033[1;36m'   # #00FFFF
BWHITE='\033[1;37m'  # #FFFFFF

# Underline
UBLACK='\033[4;30m'  # #000000
URED='\033[4;31m'    # #800000
UGREEN='\033[4;32m'  # #008000
UYELLOW='\033[4;33m' # #808000
UBLUE='\033[4;34m'   # #000080
UPURPLE='\033[4;35m' # #800080
UCYAN='\033[4;36m'   # #008080
UWHITE='\033[4;37m'  # #C0C0C0

# Background
ON_BLACK='\033[40m'  # #000000
ON_RED='\033[41m'    # #800000
ON_GREEN='\033[42m'  # #008000
ON_YELLOW='\033[43m' # #808000
ON_BLUE='\033[44m'   # #000080
ON_PURPLE='\033[45m' # #800080
ON_CYAN='\033[46m'   # #008080
ON_WHITE='\033[47m'  # #C0C0C0

# High Intensity
IBLACK='\033[0;90m'  # #808080
IRED='\033[0;91m'    # #FF0000
IGREEN='\033[0;92m'  # #00FF00
IYELLOW='\033[0;93m' # #FFFF00
IBLUE='\033[0;94m'   # #0000FF
IPURPLE='\033[0;95m' # #FF00FF
ICYAN='\033[0;96m'   # #00FFFF
IWHITE='\033[0;97m'  # #FFFFFF

# Bold High Intensity
BIBLACK='\033[1;90m'  # #808080
BIRED='\033[1;91m'    # #FF0000
BIGREEN='\033[1;92m'  # #00FF00
BIYELLOW='\033[1;93m' # #FFFF00
BIBLUE='\033[1;94m'   # #0000FF
BIPURPLE='\033[1;95m' # #FF00FF
BICYAN='\033[1;96m'   # #00FFFF
BIWHITE='\033[1;97m'  # #FFFFFF

# High Intensity backgrounds
ON_IBLACK='\033[0;100m'  # #808080
ON_IRED='\033[0;101m'    # #FF0000
ON_IGREEN='\033[0;102m'  # #00FF00
ON_IYELLOW='\033[0;103m' # #FFFF00
ON_IBLUE='\033[0;104m'   # #0000FF
ON_IPURPLE='\033[0;105m' # #FF00FF
ON_ICYAN='\033[0;106m'   # #00FFFF
ON_IWHITE='\033[0;107m'  # #FFFFFF

info()    { printf "${IBLACK}[info]${NC} %s\n" "${1:-}"; }
success() { printf "${GREEN}done${NC} %s\n\n" "${1:-}"; }
warning() { printf "${YELLOW}warning${NC} %s\n\n" "${1:-}"; }
error()   { printf "${RED}error${NC} %s\n\n" "${1:-}"; }

# Returns a colored string based on boolean input
status() {
  [[ "${1}" == "true" ]] \
    && printf "${BGREEN}true${NC}" \
    || printf "${RED}false${NC}"
}

# Run a command or heredoc script with tracing (set -x style)
run() {
  local exit_code=0
  printf "${IBLACK}"

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
