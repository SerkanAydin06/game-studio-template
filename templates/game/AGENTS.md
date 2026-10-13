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
Default repository visibility: public, per user preference. Standard-runner game CI is enabled.
No automatic paid API calls, executable exports or asset generation.
Use existing subscription access. Follow explicit task/asset budgets without repeated routine approvals.
Reuse assets; record source/license and production decisions in ASSETS.csv.
Keep editable scenes/UI in Godot resources. Preserve editor/runtime consistency.
Use bash scripts/godot-install.sh and bash scripts/godot-check.sh in cloud when needed.
Pin the game's engine version; never claim a test passed if tools are unavailable.
Test changes meaningfully; headless tests do not prove graphics, performance or gameplay quality.
Add or update game/tests/test_*.gd for each behaviour change; for bugs write the failing test first.
Layout: game/scenes, game/scripts, game/assets, game/data, game/tests. Prefer typed GDScript,
small scene-independent logic classes and data in Resources; keep files focused.
Keep STATE <=250 and TASK <=200 words; detailed test records go in TESTS.md.
Use a task branch; preserve unrelated work; no force push or destructive automatic merges.
Record commit/PR, actual test outcome, blockers and next step at handoff.
Read ROUTING.md when choosing tools/skills/agents; use only actual available capabilities.
Never customize the shared core for this game. General improvement proposals are separate core tasks.
Learning loop: when a core rule, packet, template, test or routing gap costs an extra round or misses
a bug, append one row to CORE-FEEDBACK.md at the end of the current task (no game data, real evidence;
bump evidence instead of duplicating). Do not open a separate AI turn for it.
At a milestone start run bash scripts/core-update-check.sh; apply only relevant newer core changes
on a separate branch and update .studio/CORE_VERSION and SOURCE_COMMIT.
Core updates are selective; never overwrite game files from a new template.
Response style for every AI: max 3 lines (status · link · one next step). No explanations, summaries or option lists unless the user asks. Ask only blocking questions, all in one message (max 3), then start without waiting for "go".
User control is via issues: an open "Hata:" issue is a bug report (fix test-first, PR body "Fixes #N"); a "F5 onayı:" issue is the user's acceptance (record in TESTS.md, close it). Read open issues at task start.
When a task finishes, write the next concrete task into TASK.md so the panel's start button can launch it.

When delegating to another AI, provide its direct link, the repository, a fully copyable task prompt and the user's next step. Brevity rules do not truncate the task prompt.
