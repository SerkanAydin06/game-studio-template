# Current state
Core: 3.4.0; reusable shared workflow, not a game.
Repo: SerkanAydin06/pardex-uretici; public verified 2026-10-12.
ChatGPT coordinates; user relays ready task packets to Claude/Gemini/Meshy when useful.
One writer, targeted context, measured routing, relevant available skills/bounded agents.
Games have separate public repositories by default and independent versioned snapshots.
No local Python/AI CLI prerequisite; user tests source in Godot across PCs.
Control panel (control-panel/, GitHub Pages) builds task/bug packets and keeps local
project/evidence/usage records with a single-file backup; it never calls AI or writes to GitHub.
Game starter quality gate: main scene run, every script/scene compiles, game/tests/test_*.gd.
Core public CI: template/starter checks on main push/PR; Godot on relevant changes.
Private automatic jobs skip; games receive their own standard-runner CI. Export is manual.
Evidence: docs/DOGRULAMA.md; inspect CI for the current commit.
General self-improvement uses a separate core task/branch with evidence and rollback.
Game-specific mechanics, assets and settings never customize the core.
No background autonomous service, cross-provider API bridge or automatic quota reading.
Remaining real-world validation: one game through user-relayed tools, and user's visual/F5 test.
Next: START_HERE.md when the user chooses a game. Do not add speculative infrastructure.
