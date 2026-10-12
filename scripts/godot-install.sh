#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
version=$(tr -d '\r\n' < .godot-version)
[[ "$version" == "4.5.1" ]] || { echo "Update pinned hashes before changing engine version." >&2; exit 1; }
[[ "$(uname -s)" == Linux && "$(uname -m)" == x86_64 ]] || { echo "Cloud installer requires Linux x86_64." >&2; exit 1; }
mkdir -p .tools
fetch_verified() {
  local url="$1" file="$2" expected="$3"
  if [[ -f "$file" ]] && printf '%s  %s\n' "$expected" "$file" | sha256sum --check --status; then
    echo "Reusing verified archive: ${file##*/}"
    return
  fi
  curl --fail --silent --show-error --location --retry 2 --max-time 600 "$url" -o "$file.part"
  printf '%s  %s\n' "$expected" "$file.part" | sha256sum --check
  mv -- "$file.part" "$file"
}
base="https://github.com/godotengine/godot/releases/download/$version-stable"
archive="Godot_v$version-stable_linux.x86_64.zip"
fetch_verified "$base/$archive" ".tools/$archive" 02ec53d1cc7dbb9cc6355393c61b9ab43d1244751a124f10248a4802830788cd
unzip -oq ".tools/$archive" -d .tools
chmod +x ".tools/Godot_v$version-stable_linux.x86_64"
if [[ "${1:-}" == "--templates" ]]; then
  archive="Godot_v$version-stable_export_templates.tpz"
  fetch_verified "$base/$archive" ".tools/$archive" 1998af37f1387684e2c211cdb483daf492fc64dc6b12096bddcdca25b6910c86
  # Keep only the Windows release template needed by this workflow.
  mkdir -p ".tools/export_templates/$version.stable"
  unzip -p ".tools/$archive" templates/windows_release_x86_64.exe > ".tools/export_templates/$version.stable/windows_release_x86_64.exe"
  test -s ".tools/export_templates/$version.stable/windows_release_x86_64.exe"
fi
echo "Verified Godot $version files."
