#!/usr/bin/env bash
# Simple helper script for this repo
set -euo pipefail

EX_DIR="$(dirname "$0")/../examples"

print_help() {
  cat <<EOF
Usage: $0 [--list|--run <example>|--help]

--list         List available examples
--run <name>   Run an example (filename without extension)
--help         Show this help
EOF
}

list_examples() {
  ls -1 "$EX_DIR"/*.js | xargs -n1 basename
}

run_example() {
  local name="$1"
  node "$EX_DIR/${name}.js"
}

if [ $# -eq 0 ]; then
  print_help
  exit 0
fi

case "$1" in
  --list)
    list_examples
    ;;
  --run)
    shift
    run_example "$1"
    ;;
  --help|-h)
    print_help
    ;;
  *)
    echo "Unknown option: $1" >&2
    print_help
    exit 2
    ;;
esac
