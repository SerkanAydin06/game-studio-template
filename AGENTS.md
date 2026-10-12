# Core operating rules
This is the shared production CORE, not a game repository. Never put game-specific mechanics here.
Available user subscriptions: Gemini Pro web, Claude Code web, ChatGPT Pro/Codex, Meshy Pro.
No Copilot. The user tests source projects in local Godot; executable export is exceptional.
ChatGPT is the user's single coordinator; the user relays explicit task packets to other providers.
For a fresh chat or new-game request, read START_HERE.md, then docs/CHATGPT-YONETICI.md.
For core maintenance, read STATE.md and TASK.md first. Read only relevant docs/files, not the entire repository.
One primary writer per task. Use relevant available skills and bounded agents only when useful;
read docs/ARAC-SKILL-AGENT.md when routing requires it. No duplicate reviews by default.
Game-specific changes never belong here. Read docs/CEKIRDEK-SINIRI.md before general self-improvement.
General improvements use a separate core task/branch, evidence, checks and rollback; never auto-sync games.
Use local/cloud scripts for mechanical work. Existing subscription access first; no automatic paid API fallback.
New games default to public repositories, as explicitly requested by the user.
Core and game push/PR checks use standard runners with a private-repository skip guard.
Game starters include their own CI workflow. Export remains manual.
See docs/GITHUB-ACTIONS.md for current core policy; older manual-only core notes are superseded.
Do not claim token savings or balances without measurements. Quotas differ by provider.
Prefer a suitable standard model/effort; escalate only for a concrete blocker or risky architecture.
After two failed fixes of the same issue, inspect evidence and change the approach rather than loop.
Preserve task context during related work; use a concise handoff for unrelated tasks.
Do not load binaries, generated folders, secrets or whole logs unless necessary.
STATE.md <=250 words, TASK.md <=200 words; keep detailed evidence in a referenced file.
Do not generate assets while configuring the core. Reuse existing assets before new paid generation.
Run relevant checks once; repeat only after changes or a concrete risk. Never invent a pass.
Use a task branch, inspect diffs, preserve unrelated work, no force push or destructive conflict fixes.
Follow current user authorization for changes and merges. Do not repeatedly request approved routine actions.
At handoff record result, actual tests, blockers, branch/PR and next action.
Game repositories receive a versioned small starter via scripts/new-game.sh; no automatic core sync.
