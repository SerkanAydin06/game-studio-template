#!/usr/bin/env bash
# Compares this game's core snapshot with the latest core and prints newer CHANGELOG
# sections. Read-only, no token, no AI; never fails the build.
set -uo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
local_version=$(tr -d '\r\n' < .studio/CORE_VERSION 2>/dev/null) || { echo "No .studio/CORE_VERSION; skipping."; exit 0; }
source_url=$(tr -d '\r\n' < .studio/SOURCE_REPOSITORY 2>/dev/null)
repo=${source_url#https://github.com/}
[[ "$repo" =~ ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$ ]] || { echo "Unknown core repository; skipping."; exit 0; }
raw="https://raw.githubusercontent.com/$repo/HEAD"
latest=$(curl -fsSL --max-time 20 "$raw/CORE_VERSION" | tr -d '\r\n') || { echo "Core version not reachable; skipping."; exit 0; }
[[ "$latest" =~ ^[0-9]+(\.[0-9]+)*$ ]] || { echo "Unexpected core version; skipping."; exit 0; }
if [[ "$latest" == "$local_version" || "$(printf '%s\n%s\n' "$latest" "$local_version" | sort -V | tail -n1)" == "$local_version" ]]; then
  echo "Core snapshot $local_version is current."
  exit 0
fi
echo "::notice title=Pardex core update::Game uses core $local_version; core $latest is available. Apply only relevant parts on a separate branch (see AGENTS.md)."
echo "Core $latest is newer than this game's snapshot $local_version. Newer changes:"
curl -fsSL --max-time 20 "$raw/CHANGELOG.md" | awk -v cur="$local_version" '
  /^## / { ver=$2; show = (ver != cur); if (ver == cur) exit }
  show { print }' || true
exit 0
