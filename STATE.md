# Current state
Core: 3.3.0; reusable shared workflow, not a game.
Repo: SerkanAydin06/pardex-uretici; public verified 2026-10-12.
ChatGPT coordinates; user relays ready task packets to Claude/Gemini/Meshy when useful.
One writer, targeted context, measured routing, relevant available skills/bounded agents.
Games have separate public repositories by default and independent versioned snapshots.
No local Python/AI CLI prerequisite; user tests source in Godot across PCs.
Core public CI: template/starter checks on main push/PR; Godot on relevant changes.
Private automatic jobs skip; games receive their own standard-runner CI. Export is manual.
Latest verified pre-audit public CI: commit 6ca3724; template and Godot succeeded.
3.2.1 audit adds generated-game engine testing and mandatory coordinator/routing files.
See docs/DOGRULAMA.md for evidence and limits; inspect CI for the current commit.
General self-improvement uses a separate core task/branch with evidence and rollback.
Game-specific mechanics, assets and settings never customize the core.
No background autonomous service, cross-provider API bridge or automatic quota reading.
Remaining real-world validation: one game through user-relayed tools, and user's visual/F5 test.
Next: START_HERE.md when the user chooses a game. Do not add speculative infrastructure.
