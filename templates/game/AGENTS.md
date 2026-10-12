# Game working rules
This is an independent game repository. Shared core provenance is in .studio/.
Read STATE.md and TASK.md first; read PROJECT.md/BUDGET.md only when relevant.
The user develops with web AI tools and tests sources in local Godot (F5).
ChatGPT is the single coordinator; read COORDINATOR.md for routing and handoff.
One writer per task: finish small work here; route substantial coding to Claude when useful.
The user relays ready prompts/results; do not assume cross-provider automation.
Do not repeat the same work across models. Read targeted files; avoid whole-repo/context dumps.
Use a suitable standard model/effort; escalate for concrete risk or blockers.
After two failed fixes of the same error, inspect evidence and change the method.
No automatic paid API calls, Actions runs, executable exports or asset generation.
Use existing subscription access. Follow explicit task/asset budgets without repeated routine approvals.
Reuse assets; record source/license and production decisions in ASSETS.csv.
Keep editable scenes/UI in Godot resources. Preserve editor/runtime consistency.
Use bash scripts/godot-install.sh and bash scripts/godot-check.sh in cloud when needed.
Pin the game's engine version; never claim a test passed if tools are unavailable.
Test changes meaningfully; headless tests do not prove graphics, performance or gameplay quality.
Keep STATE <=250 and TASK <=200 words; detailed test records go in TESTS.md.
Use a task branch; preserve unrelated work; no force push or destructive automatic merges.
Record commit/PR, actual test outcome, blockers and next step at handoff.
Core updates are selective; never overwrite game files from a new template.
