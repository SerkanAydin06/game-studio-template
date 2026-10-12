# Current state
Core: 3.5.0; reusable shared workflow, not a game.
Repo: SerkanAydin06/pardex-uretici; public verified 2026-10-12.
ChatGPT coordinates; user relays ready task packets to Claude/Gemini/Meshy when useful.
Routing: docs/GOREV-DAGILIMI.md (single source). One writer, targeted context.
Games have separate public repositories by default and independent versioned snapshots.
No local Python/AI CLI prerequisite; user tests source in Godot across PCs.
Control panel (control-panel/, GitHub Pages) builds task/bug/core-maintenance packets and keeps
local records with a single-file backup; it never calls AI or writes to GitHub.
Game starter quality gate: main scene run, every script/scene compiles, game/tests/test_*.gd.
Learning loop: games log core gaps in CORE-FEEDBACK.md; weekly core-feedback.yml (no AI)
aggregates open rows from GAMES.txt into one issue; qualifying items ship as one core PR per
milestone; game CI notices newer core versions. GAMES.txt is empty until the first game.
Core public CI: template/starter checks on main push/PR; Godot on relevant changes.
Private automatic jobs skip. Export is manual. Evidence: docs/DOGRULAMA.md.
Game-specific mechanics, assets and settings never customize the core.
No AI runs on its own: a session starts only when the user relays a packet.
Remaining real-world validation: one game through user-relayed tools, and user's visual/F5 test.
Next: START_HERE.md when the user chooses a game; add it to GAMES.txt.
