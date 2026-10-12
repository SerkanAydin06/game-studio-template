#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
root="$PWD"
version=$(tr -d '\r\n' < .godot-version)
godot="$root/.tools/Godot_v$version-stable_linux.x86_64"
[[ -x "$godot" ]] || { echo "Run bash scripts/godot-install.sh first." >&2; exit 1; }
actual=$("$godot" --version)
[[ "$actual" == "$version.stable."* ]] || { echo "Unexpected engine: $actual" >&2; exit 1; }
mkdir -p .local/logs
check_run() {
  local name="$1"
  shift
  timeout 180 "$godot" --headless --path "$root/validation" "$@" 2>&1 | tee ".local/logs/$name.log"
  if grep -Eq '(^|[[:space:]])(SCRIPT ERROR:|ERROR:)' ".local/logs/$name.log"; then
    echo "FAIL: engine error in $name" >&2
    return 1
  fi
}
check_run import --editor --import
check_run smoke --script res://smoke_test.gd
grep -q '^SMOKE_PASS$' .local/logs/smoke.log
if [[ "${1:-}" == "--export" ]]; then
  mkdir -p builds/windows
  # export_presets.cfg uses this verified, repository-local template.
  check_run export --export-release "Windows Desktop" "$root/builds/windows/StudioCheck.exe"
  test -s builds/windows/StudioCheck.exe
  signature=$(head -c 2 builds/windows/StudioCheck.exe)
  [[ "$signature" == MZ ]] || { echo "Not a Windows executable" >&2; exit 1; }
  printf '%s\n' 'Pipeline fixture only; no game content. Run StudioCheck.exe on Windows.' > builds/windows/README.txt
  echo "PASS: Windows executable exported. Windows runtime/visual test still required."
fi
echo "PASS: Godot import and smoke test."
