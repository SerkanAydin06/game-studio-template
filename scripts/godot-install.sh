#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
version=$(tr -d '\r\n' < .godot-version)
[[ "$version" == "4.5.1" ]] || { echo "Update pinned hashes before changing engine version." >&2; exit 1; }
[[ "$(uname -s)" == Linux && "$(uname -m)" == x86_64 ]] || { echo "Cloud installer requires Linux x86_64." >&2; exit 1; }
mkdir -p .tools
base="https://github.com/godotengine/godot/releases/download/$version-stable"
archive="Godot_v$version-stable_linux.x86_64.zip"
curl --fail --location --retry 2 --max-time 300 "$base/$archive" -o ".tools/$archive"
printf '%s  %s\n' '02ec53d1cc7dbb9cc6355393c61b9ab43d1244751a124f10248a4802830788cd' ".tools/$archive" | sha256sum --check
unzip -oq ".tools/$archive" -d .tools
chmod +x ".tools/Godot_v$version-stable_linux.x86_64"
if [[ "${1:-}" == "--templates" ]]; then
  archive="Godot_v$version-stable_export_templates.tpz"
  curl --fail --location --retry 2 --max-time 600 "$base/$archive" -o ".tools/$archive"
  printf '%s  %s\n' '1998af37f1387684e2c211cdb483daf492fc64dc6b12096bddcdca25b6910c86' ".tools/$archive" | sha256sum --check
  # Keep only the Windows release template needed by this workflow.
  mkdir -p ".tools/export_templates/$version.stable"
  unzip -p ".tools/$archive" templates/windows_release_x86_64.exe > ".tools/export_templates/$version.stable/windows_release_x86_64.exe"
  test -s ".tools/export_templates/$version.stable/windows_release_x86_64.exe"
fi
echo "Verified Godot $version files."
