#!/bin/bash

# Batch update HTML headers to use new CSS system
# This script adds the design-system.css and appropriate CSS files to pages

DESIGN_SYSTEM='  <link rel="stylesheet" href="../assets/css/design-system.css">'
FONTS='  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Barlow:wght@400;600;900&display=swap" rel="stylesheet">'

# Pages that need admin.css
ADMIN_PAGES=(
  "admin/gara.html"
  "admin/season.html"
  "admin/wods.html"
  "admin/landing.html"
)

# Pages that need app.css
APP_PAGES=(
  "app/gara.html"
  "app/season.html"
  "app/iscrizione.html"
  "app/profilo.html"
  "app/register.html"
  "app/landing.html"
)

# Pages that need judge.css
JUDGE_PAGES=(
  "judge/index.html"
  "judge/rules.html"
  "judge/scoring.html"
  "judge/stats.html"
)

# Pages that need regia.css
REGIA_PAGES=(
  "regia.html"
  "regia/index.html"
  "regia/console.html"
)

# Pages that need live.css
LIVE_PAGES=(
  "live/index.html"
  "live/output.html"
  "leaderboard.html"
  "tv.html"
)

# Root pages that need pages.css
ROOT_PAGES=(
  "gara.html"
  "season.html"
  "athlete.html"
  "register.html"
  "iscrizione.html"
  "profilo.html"
  "wods.html"
  "obs.html"
  "camera-webrtc.html"
  "stream-webrtc.html"
)

echo "📝 Inventario pagine da aggiornare..."
echo ""
echo "✅ GIÀ FATTO:"
echo "- index.html (homepage)"
echo "- admin/index.html"
echo "- app/index.html"
echo "- judge.html"
echo "- live/leaderboard.html"
echo "- live/tv.html"
echo ""
echo "📊 DA AGGIORNARE:"
echo "- Admin: ${#ADMIN_PAGES[@]} pagine"
echo "- App: ${#APP_PAGES[@]} pagine"
echo "- Judge: ${#JUDGE_PAGES[@]} pagine"
echo "- Regia: ${#REGIA_PAGES[@]} pagine"
echo "- Live: ${#LIVE_PAGES[@]} pagine"
echo "- Root: ${#ROOT_PAGES[@]} pagine"
echo ""
TOTAL=$((${#ADMIN_PAGES[@]} + ${#APP_PAGES[@]} + ${#JUDGE_PAGES[@]} + ${#REGIA_PAGES[@]} + ${#LIVE_PAGES[@]} + ${#ROOT_PAGES[@]}))
echo "TOTALE: $TOTAL pagine da aggiornare"
