#!/bin/bash

# We don't need return codes for "$(command)", only stdout is needed.
# Allow `[[ -n "$(command)" ]]`, `func "$(command)"`, pipes, etc.
# shellcheck disable=SC2312

set -e
set -u

export NONINTERACTIVE=1
export HOMEBREW_PREFIX="/opt/linuxbrew"
export HOMEBREW_CACHE="${XDG_CACHE_HOME:-$HOME/.cache}/homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"