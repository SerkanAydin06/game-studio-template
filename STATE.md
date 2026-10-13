# Current state
Core: 3.6.0; reusable shared workflow, not a game.
Repo: SerkanAydin06/pardex-uretici; public. First game: SerkanAydin06/DenemeMario (in GAMES.txt).
User is starter and controller: panel ▶ start, ✔ F5 approval and ✖ bug issues.
All AIs reply in max 3 lines; questions once (max 3), then start.
Routing: docs/GOREV-DAGILIMI.md — ChatGPT/Codex first, Claude Code only for hard work.
Panel (GitHub Pages) auto-adds games from GAMES.txt, reads each game's STATE/TASK, Issues, PRs
and CI; it never calls AI or writes to GitHub. Local records keep a single-file backup.
Game starter quality gate: main scene run, every script/scene compiles, game/tests/test_*.gd.
Learning loop: CORE-FEEDBACK.md rows, weekly no-AI collector issue, milestone-gated core PR,
game CI notices newer core versions.
Core CI: template/starter checks on main push/PR; Godot on relevant changes. Export is manual.
Game-specific mechanics, assets and settings never customize the core.
No AI runs on its own: each task starts when the user presses start and pastes the packet.
Evidence: docs/DOGRULAMA.md. Next: DenemeMario adopts 3.6.0 rules via core-update-check.
