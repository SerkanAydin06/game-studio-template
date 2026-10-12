#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
for path in templates/game/.github/workflows/game-validation.yml START_HERE.md docs/INDEX.md docs/CHATGPT-YONETICI.md docs/ARAC-SKILL-AGENT.md docs/CEKIRDEK-SINIRI.md docs/KALITE-KAPILARI.md templates/game/COORDINATOR.md templates/game/ROUTING.md templates/game/STATE.md templates/game/TASK.md templates/game/PROJECT.md templates/game/BUDGET.md templates/game/TESTS.md CORE_VERSION .godot-project .godot-version README.md CLAUDE.md AGENTS.md STATE.md TASK.md ASSETS.csv USAGE.csv docs/KURULUM.md docs/CLAUDE-WEB.md docs/CHATGPT-CODEX.md docs/GEMINI-WEB.md docs/MESHY-WEB.md docs/GITHUB-ACTIONS.md docs/YENI-OYUN.md docs/GODOT-YEREL.md docs/VERIMLILIK.md docs/GOREV-AKISI.md docs/URETIM-KALITESI.md templates/game/AGENTS.md templates/game/game/project.godot scripts/new-game.sh control-panel/index.html docs/CONTROL-PANEL.md; do
  if [[ ! -s "$path" ]]; then
    echo "FAIL: missing or empty file: $path" >&2
    exit 1
  fi
done
for spec in STATE.md:250 TASK.md:200 templates/game/STATE.md:250 templates/game/TASK.md:200; do
  path="${spec%:*}"
  limit="${spec#*:}"
  count=$(wc -w < "$path")
  if (( count > limit )); then
    echo "FAIL: $path has $count words (limit $limit)" >&2
    exit 1
  fi
done
[[ "$(head -n 1 ASSETS.csv | tr -d '\r')" == "id,path_or_url,source,license_reference,approved,reuse_notes" ]] || { echo "FAIL: ASSETS.csv header" >&2; exit 1; }
[[ "$(head -n 1 USAGE.csv | tr -d '\r')" == "date,task,provider,unit,before,after,measurement_source,completed_result" ]] || { echo "FAIL: USAGE.csv header" >&2; exit 1; }
grep -q 'id="make-brief"' control-panel/index.html || { echo "FAIL: control panel new game UI missing" >&2; exit 1; }
grep -q 'id="projects-list"' control-panel/index.html || { echo "FAIL: project tracking UI missing" >&2; exit 1; }
grep -q "pardex.projectTracker.v1" control-panel/index.html || { echo "FAIL: project storage missing" >&2; exit 1; }
grep -q 'id="make-task"' control-panel/index.html || { echo "FAIL: control panel task UI missing" >&2; exit 1; }
grep -q 'id="run-list"' control-panel/index.html || { echo "FAIL: control panel CI UI missing" >&2; exit 1; }
echo "PASS: template documents, panel structure and headers only. Browser interaction and Godot/runtime tests NOT performed."
