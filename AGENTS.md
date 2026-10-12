# Shared working rules
Use this repository as the source of truth. Start with STATE.md and TASK.md.
One main coding agent per task; do not start agent teams by default.
Search for relevant files first; avoid reading the whole repository and full logs.
Use scripts and existing tests for mechanical work. Do not ask another model to repeat it.
Do not start paid API automation, background polling or asset generation without user authorization.
Use subscription-based web sessions. These rules do not enforce provider spending limits.
Keep STATE.md under 250 words and TASK.md under 200 words. Update them at meaningful handoffs.
Do not hide blockers to meet length limits; put detailed evidence in a referenced task-specific file.
Do not load binary assets or generated folders unless the task requires inspection.
For a routine task, use the default appropriate model/effort. Escalate only for a concrete problem.
After two failed attempts at the same error, stop blind retries, inspect evidence and revise the approach.
Use a separate task branch; preserve other changes and inspect the diff before committing.
Never force-push or merge conflicting edits automatically. Observe existing repository rules.
Do not enable automatic repeated AI review/fix loops by default.
For material changes, run relevant available checks; record exact outcomes and omissions.
A successful import is not proof of gameplay, visuals, performance or a Windows build.
Do not claim tests passed if the cloud environment lacks Godot or other required dependencies.
At handoff, record branch, work done, actual tests, blockers and one next action in STATE.md.
Commit the task files and provide a PR/branch reference when supported. Never claim an unmerged
branch is in main. Follow the user's authorization and repository policy for merging.
Keep responses concise. Report result, validation and the next necessary step.
