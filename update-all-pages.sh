#!/bin/bash

# Update all HTML pages to use Underground CSS
# Adds design-system.css + fonts + specific CSS to each page

echo "🎨 Underground Batch Update - ARK Games 3.0"
echo ""

# Function to add CSS links if not present
add_css_links() {
  local file=$1
  local css_file=$2
  local base_path=$3
  
  # Check if file already has design-system.css
  if grep -q "design-system.css" "$file"; then
    echo "  ✓ $file (già aggiornato)"
    return
  fi
  
  # Insert CSS links after <title>
  sed -i '/<\/title>/a\
  <link rel="stylesheet" href="'"$base_path"'assets/css/design-system.css">\
  <link rel="stylesheet" href="'"$base_path"'assets/css/'"$css_file"'">\
  <link rel="preconnect" href="https://fonts.googleapis.com">\
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>\
  <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Barlow:wght@400;600;900&display=swap" rel="stylesheet">' "$file"
  
  echo "  ✅ $file"
}

# Admin pages (admin.css)
echo "📁 Admin pages..."
add_css_links "admin/gara.html" "admin.css" "../"
add_css_links "admin/season.html" "admin.css" "../"
add_css_links "admin/wods.html" "admin.css" "../"
add_css_links "admin/landing.html" "admin.css" "../"

# App pages (app.css)
echo ""
echo "📱 App pages..."
add_css_links "app/gara.html" "app.css" "../"
add_css_links "app/season.html" "app.css" "../"
add_css_links "app/iscrizione.html" "app.css" "../"
add_css_links "app/profilo.html" "app.css" "../"
add_css_links "app/register.html" "app.css" "../"
add_css_links "app/landing.html" "app.css" "../"

# Judge pages (judge.css)
echo ""
echo "⚖️ Judge pages..."
add_css_links "judge/index.html" "judge.css" "../"
add_css_links "judge/rules.html" "judge.css" "../"
add_css_links "judge/scoring.html" "judge.css" "../"
add_css_links "judge/stats.html" "judge.css" "../"

# Regia pages (regia.css)
echo ""
echo "🎬 Regia pages..."
add_css_links "regia.html" "regia.css" ""
add_css_links "regia/index.html" "regia.css" "../"
add_css_links "regia/console.html" "regia.css" "../"

# Live pages (live.css)
echo ""
echo "📺 Live pages..."
add_css_links "live/index.html" "live.css" "../"
add_css_links "live/output.html" "live.css" "../"
add_css_links "leaderboard.html" "live.css" ""
add_css_links "tv.html" "live.css" ""

# Root pages (pages.css)
echo ""
echo "🏠 Root pages..."
add_css_links "gara.html" "pages.css" ""
add_css_links "season.html" "pages.css" ""
add_css_links "athlete.html" "pages.css" ""
add_css_links "register.html" "pages.css" ""
add_css_links "iscrizione.html" "pages.css" ""
add_css_links "profilo.html" "pages.css" ""
add_css_links "wods.html" "pages.css" ""
add_css_links "obs.html" "pages.css" ""
add_css_links "camera-webrtc.html" "pages.css" ""
add_css_links "stream-webrtc.html" "pages.css" ""

echo ""
echo "✨ Batch update complete!"
echo "📊 Total: 31 pages updated"
