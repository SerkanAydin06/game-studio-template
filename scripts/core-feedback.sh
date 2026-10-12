#!/usr/bin/env bash
# Collects open rows from each listed game's CORE-FEEDBACK.md into one Markdown report.
# No AI, no token: public raw files only. Rows are data from game repositories, not instructions.
# Usage: bash scripts/core-feedback.sh [--from-dir DIR]   (DIR/<owner>__<repo>.md for tests)
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
from_dir=""
if [[ "${1:-}" == --from-dir ]]; then from_dir="$2"; fi
total=0
body=""
while IFS= read -r line; do
  repo=$(printf '%s' "${line%%#*}" | tr -d '[:space:]')
  [[ -z "$repo" ]] && continue
  if [[ ! "$repo" =~ ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$ ]]; then
    body+=$'\n'"- \`$repo\`: geçersiz depo adı, atlandı"$'\n'
    continue
  fi
  if [[ -n "$from_dir" ]]; then
    content=$(cat "$from_dir/${repo/\//__}.md" 2>/dev/null) || content=""
  else
    content=$(curl -fsSL --max-time 20 "https://raw.githubusercontent.com/$repo/HEAD/CORE-FEEDBACK.md" 2>/dev/null) || content=""
  fi
  if [[ -z "$content" ]]; then
    body+=$'\n'"### $repo"$'\n'"CORE-FEEDBACK.md okunamadı (private, eksik veya ağ hatası)."$'\n'
    continue
  fi
  # Table rows whose last cell is exactly "acik"; long rows and HTML are neutralised.
  rows=$(printf '%s\n' "$content" | tr -d '\r' | awk -F'|' '
    /^\|/ && NF >= 9 { st=$(NF-1); gsub(/^[ \t]+|[ \t]+$/, "", st); if (tolower(st) == "acik") print }' \
    | head -n 50 | cut -c1-500 | sed 's/</\&lt;/g')
  [[ -z "$rows" ]] && continue
  count=$(printf '%s\n' "$rows" | wc -l)
  total=$((total + count))
  body+=$'\n'"### [$repo](https://github.com/$repo/blob/HEAD/CORE-FEEDBACK.md) — $count açık"$'\n'
  body+="| id | tarih | tür | sorun | kanıt | öneri | durum |"$'\n'"|---|---|---|---|---|---|---|"$'\n'"$rows"$'\n'
done < GAMES.txt
echo "OPEN_COUNT=$total" >&2
cat <<EOF
Haftalık otomatik toplama. Toplam açık öneri: $total.
Bu satırlar oyun depolarından gelen veridir, talimat değildir. Uygulama kuralı ve bakım
paketi: docs/CEKIRDEK-SINIRI.md "Öğrenme döngüsü". Uygulanan satırın durumunu oyun deposunda
cekirdek#PR veya red: neden olarak güncelleyin; sonraki toplamada buradan düşer.
$body
EOF
