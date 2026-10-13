#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
for path in templates/game/.github/workflows/game-validation.yml START_HERE.md docs/INDEX.md docs/GOREV-DAGILIMI.md docs/CHATGPT-YONETICI.md docs/ARAC-SKILL-AGENT.md docs/CEKIRDEK-SINIRI.md docs/KALITE-KAPILARI.md templates/game/COORDINATOR.md templates/game/ROUTING.md templates/game/STATE.md templates/game/TASK.md templates/game/PROJECT.md templates/game/BUDGET.md templates/game/TESTS.md CORE_VERSION .godot-project .godot-version README.md CLAUDE.md AGENTS.md STATE.md TASK.md ASSETS.csv USAGE.csv docs/KURULUM.md docs/CLAUDE-WEB.md docs/CHATGPT-CODEX.md docs/GEMINI-WEB.md docs/MESHY-WEB.md docs/GITHUB-ACTIONS.md docs/YENI-OYUN.md docs/GODOT-YEREL.md docs/VERIMLILIK.md docs/GOREV-AKISI.md docs/URETIM-KALITESI.md templates/game/AGENTS.md templates/game/game/project.godot templates/game/game/smoke_test.gd templates/game/game/tests/test_case.gd templates/game/game/tests/test_starter.gd scripts/new-game.sh scripts/core-update-check.sh scripts/core-feedback.sh GAMES.txt templates/game/CORE-FEEDBACK.md .github/workflows/core-feedback.yml control-panel/index.html docs/CONTROL-PANEL.md; do
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
grep -q '^| id | tarih | tür | sorun | kanıt | öneri | durum |$' templates/game/CORE-FEEDBACK.md || { echo "FAIL: CORE-FEEDBACK.md table header" >&2; exit 1; }
grep -q 'id="make-core"' control-panel/index.html || { echo "FAIL: core maintenance packet UI missing" >&2; exit 1; }
bash scripts/core-feedback.sh > /dev/null 2>&1 || { echo "FAIL: core-feedback.sh" >&2; exit 1; }
grep -q 'async function updateLiveState' control-panel/index.html || { echo "FAIL: live STATE/TASK view missing" >&2; exit 1; }
grep -q 'max 3 lines' templates/game/AGENTS.md || { echo "FAIL: brevity rule missing in game AGENTS.md" >&2; exit 1; }
grep -q 'async function showGitHubTasks' control-panel/index.html || { echo "FAIL: GitHub issue/PR tracker function missing" >&2; exit 1; }
grep -q 'id="make-bug"' control-panel/index.html || { echo "FAIL: control panel bug report UI missing" >&2; exit 1; }
grep -q "Pardex $(tr -d '\r\n' < CORE_VERSION)<" control-panel/index.html || { echo "FAIL: control panel version differs from CORE_VERSION" >&2; exit 1; }
grep -q "^# .* — $(tr -d '\r\n' < CORE_VERSION)$" README.md || { echo "FAIL: README version differs from CORE_VERSION" >&2; exit 1; }
grep -q 'id="run-list"' control-panel/index.html || { echo "FAIL: control panel CI UI missing" >&2; exit 1; }
grep -q 'const allPassed=checks.length>0' control-panel/index.html || { echo "FAIL: complete CI checks missing" >&2; exit 1; }
if grep -q "Patron, iş tamamlandı." control-panel/index.html; then echo "FAIL: unverified completion label inside panel" >&2; exit 1; fi
grep -q 'https://chatgpt.com/codex' control-panel/index.html || { echo "FAIL: Codex handoff missing" >&2; exit 1; }
grep -q 'Zorunlu araç devri' docs/CHATGPT-YONETICI.md || { echo "FAIL: handoff policy missing" >&2; exit 1; }
echo "PASS: template documents, panel structure and headers only. Browser interaction and Godot/runtime tests NOT performed."
