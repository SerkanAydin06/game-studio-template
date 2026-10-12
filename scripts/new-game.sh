#!/usr/bin/env bash
# Runs in the coding agent's Linux workspace, not on the user's Windows PC.
set -euo pipefail
core=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)
[[ $# == 2 ]] || { echo "Usage: bash scripts/new-game.sh /new/absolute/path game-slug" >&2; exit 1; }
slug="$2"
[[ "$slug" =~ ^[a-z][a-z0-9-]{1,62}$ ]] || { echo "Use a 2-63 character lowercase game slug." >&2; exit 1; }
target=$(realpath -m -- "$1")
case "$target/" in "$core/"*) echo "Game must be outside the core repository." >&2; exit 1;; esac
[[ ! -e "$target" && ! -L "$target" ]] || { echo "Target already exists; nothing overwritten." >&2; exit 1; }
for path in templates/game CORE_VERSION .godot-version .gitattributes .gitignore scripts/godot-install.sh scripts/godot-check.sh; do
  [[ -e "$core/$path" ]] || { echo "Missing core file: $path" >&2; exit 1; }
done
source_commit=unversioned
if git -C "$core" rev-parse --show-toplevel >/dev/null 2>&1; then
  git_root=$(git -C "$core" rev-parse --show-toplevel)
  [[ "$(realpath "$git_root")" == "$core" ]] || { echo "Core must be its own repository." >&2; exit 1; }
  [[ -z "$(git -C "$core" status --porcelain)" ]] || { echo "Commit core changes before creating a versioned game." >&2; exit 1; }
  source_commit=$(git -C "$core" rev-parse HEAD)
fi
mkdir -p -- "$(dirname "$target")"
mkdir -- "$target"
cp -R "$core/templates/game/." "$target/"
mkdir -p "$target/.studio" "$target/scripts"
cp "$core/CORE_VERSION" "$target/.studio/CORE_VERSION"
printf '%s\n' "$source_commit" > "$target/.studio/SOURCE_COMMIT"
printf '%s\n' 'https://github.com/SerkanAydin06/game-studio-template' > "$target/.studio/SOURCE_REPOSITORY"
cp "$core/.godot-version" "$core/.gitattributes" "$core/.gitignore" "$target/"
cp "$core/scripts/godot-install.sh" "$core/scripts/godot-check.sh" "$target/scripts/"
printf '%s\n' game > "$target/.godot-project"
printf '%s\n' 'id,path_or_url,source,license_reference,approved,reuse_notes' > "$target/ASSETS.csv"
printf '%s\n' 'date,task,provider,unit,before,after,measurement_source,completed_result' > "$target/USAGE.csv"
sed -i "s/New Game/$slug/" "$target/game/project.godot"
echo "Created independent game starter at $target"
echo "Source core: $source_commit. No remote, AI call, workflow or push created."
