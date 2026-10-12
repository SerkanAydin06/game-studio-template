#!/usr/bin/env bash
set -euo pipefail
[[ $# == 0 || ( $# == 1 && "$1" == --godot ) ]] || { echo "Usage: bash scripts/test-starter.sh [--godot]" >&2; exit 1; }
core=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)
tmp=$(mktemp -d)
trap 'rm -rf -- "$tmp"' EXIT
bash "$core/scripts/new-game.sh" "$tmp/game" test-game
test -f "$tmp/game/game/project.godot"
for path in CORE-FEEDBACK.md COORDINATOR.md ROUTING.md STATE.md TASK.md PROJECT.md BUDGET.md TESTS.md; do
  cmp "$core/templates/game/$path" "$tmp/game/$path"
done
test -f "$tmp/game/.studio/SOURCE_COMMIT"
cmp "$core/scripts/core-update-check.sh" "$tmp/game/scripts/core-update-check.sh"
for path in smoke_test.gd tests/test_case.gd tests/test_starter.gd; do
  cmp "$core/templates/game/game/$path" "$tmp/game/game/$path"
done
grep -q '^exclude_filter=".*tests/\*' "$tmp/game/game/export_presets.cfg"
cmp "$core/templates/game/.github/workflows/game-validation.yml" "$tmp/game/.github/workflows/game-validation.yml"
test ! -e "$tmp/game/.github/workflows/studio-checks.yml"
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
if [[ "${1:-}" == --godot ]]; then
  # Reuse the core's verified engine; no second download or export.
  version=$(tr -d '\r\n' < "$core/.godot-version")
  test -x "$core/.tools/Godot_v$version-stable_linux.x86_64"
  ln -s "$core/.tools" "$tmp/game/.tools"
  bash "$tmp/game/scripts/godot-check.sh"
fi
echo "PASS: isolated starter, provenance, game CI, no overwrites or nested games."
