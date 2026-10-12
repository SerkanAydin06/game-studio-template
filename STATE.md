# Current state
Core: 3.2.0; reusable shared workflow, not a game.
Repo: SerkanAydin06/game-studio-template.
Tools: Gemini Pro web, Claude Code web, ChatGPT Pro/Codex, Meshy Pro. No Copilot.
User tests source projects in Godot on multiple PCs; no Python/AI CLI prerequisite.
Policy: one primary writer, short task context, local/cloud checks, public-only automatic core Actions,
Windows export off by default, no automatic paid API/asset generation.
Architecture: core docs/scripts + separate game starter; games have independent private repos
and versioned core snapshots, not automatic overwrites.
Historical GitHub engine/import/smoke/export and template checks passed on commit 24dd728.
Validated v3 locally: manual-only YAML, template checks, separate starter and provenance,
overwrite/nested/dirty-core refusal, real engine import/smoke in core and generated game.
Details: docs/DOGRULAMA.md. Actions not run for v3; user-PC checks still pending.
ChatGPT is the single coordinator; START_HERE.md routes fresh sessions.
User relays filled task packets; game COORDINATOR.md persists this workflow.
Repository creation/writing uses actual available permissions with explicit manual fallback.
Next: create a separate game repository only when user chooses the game; validate on user's Godot.
Actual account quotas and individual service connections are not auto-verified.

General improvement is allowed only through a separate core change with evidence and rollback.
Game-specific customization stays in game repositories. Skills/agents are selected by capability,
need and measured outcomes; no background self-update service is installed.

Core automatic checks skip private repositories; visibility change must be verified separately.
Game workflows remain opt-in. Exports remain manual.
