#!/usr/bin/env bash
set -euo pipefail

if [[ ! -x "$HOME/.elan/bin/elan" ]]; then
  installer=$(mktemp)
  trap 'rm -f "$installer"' EXIT
  curl -fsSL https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -o "$installer"
  bash "$installer" -y --default-toolchain none
fi

export PATH="$HOME/.elan/bin:$PATH"
lean --version
lake build
lake env lean InductionStarter.lean
