#!/usr/bin/env bash
set -euo pipefail
core=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)
tmp=$(mktemp -d)
trap 'rm -rf -- "$tmp"' EXIT
bash "$core/scripts/new-game.sh" "$tmp/game" test-game
test -f "$tmp/game/game/project.godot"
test -f "$tmp/game/.studio/SOURCE_COMMIT"
test ! -e "$tmp/game/.github"
test ! -e "$tmp/game/validation"
[[ "$(cat "$tmp/game/.godot-project")" == game ]]
[[ "$(cat "$tmp/game/.studio/CORE_VERSION")" == "$(cat "$core/CORE_VERSION")" ]]
if bash "$core/scripts/new-game.sh" "$tmp/game" test-game > "$tmp/reject.log" 2>&1; then
  echo "FAIL: existing target accepted" >&2
  exit 1
fi
grep -q 'already exists' "$tmp/reject.log"
if bash "$core/scripts/new-game.sh" "$core/.local/rejected-game" test-game > "$tmp/nested.log" 2>&1; then
  echo "FAIL: nested game accepted" >&2
  exit 1
fi
grep -q 'outside the core' "$tmp/nested.log"
echo "PASS: isolated starter, provenance, no workflows, no overwrites or nested games."
