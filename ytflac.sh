#!/data/data/com.termux/files/usr/bin/bash

echo ""
echo "  ╔════════════════════════════╗"
echo "  ║     YTFLAC DOWNLOADER      ║"
echo "  ║   FLAC + Synced Lyrics     ║"
echo "  ╚════════════════════════════╝"
echo ""

echo "Masukkan link YouTube:"
read url

[ -z "$url" ] && { echo "Link kosong."; exit 1; }

echo ""
echo "Pilih format:"
echo "1) FLAC"
echo "2) MP3 (320k)"
echo "3) WAV"
echo "4) M4A"
echo "5) Opus"
echo "Lain: ketik format langsung"
read -p "Pilihan: " choice

case $choice in
  1) fmt="flac" q="0" ;;
  2) fmt="mp3"  q="0" ;;
  3) fmt="wav"  q="0" ;;
  4) fmt="m4a"  q="0" ;;
  5) fmt="opus" q="0" ;;
  *) fmt="$choice"; q="0" ;;
esac

read -p "Embed thumbnail? (y/n): " thumb
[ "$thumb" = "y" ] && thumb_opt="--embed-thumbnail" || thumb_opt=""

read -p "Cari & embed lirik dari lrclib.net? (y/n): " lyrics_choice

echo "Download..."
yt-dlp -x --audio-format "$fmt" --audio-quality "$q" $thumb_opt --embed-metadata --js-runtimes deno --remote-components ejs:github -o "/storage/emulated/0/Download/%(title)s.%(ext)s" "$url"

latest_file=$(ls -t /storage/emulated/0/Download/*."$fmt" | head -n1)
[ ! -f "$latest_file" ] && { echo "File tidak ditemukan"; exit 0; }

if [ "$lyrics_choice" != "y" ]; then
  echo "Selesai. File tersimpan di /storage/emulated/0/Download"
  exit 0
fi

pip install requests --quiet 2>/dev/null || true

# Step 1: Search and display results (Python outputs structured list)
echo "Mencari lirik di lrclib.net..."
search_output=$(python3 - <<'EOF'
import requests, os, re, json, sys

path = r'''$latest_file'''
filename = os.path.basename(path)
title = re.sub(r'\s*\[.*?\]\s*$', '', filename.rsplit('.', 1)[0]).strip()
title_clean = re.sub(r"['’]", '', title)
title_clean = re.sub(r'[-–_]+', ' ', title_clean)

search_url = f"https://lrclib.net/api/search?q={requests.utils.quote(title_clean)}"

try:
    resp = requests.get(search_url, timeout=10)
    resp.raise_for_status()
    results = resp.json()
    
    if not results:
        print("JSON:[]")
        sys.exit(0)
    
    # Output as JSON for Bash parsing
    print("JSON:" + json.dumps(results))
except Exception as e:
    print(f"Error lrclib search: {str(e)}")
    sys.exit(1)
EOF
)

if [[ $search_output == Error* ]]; then
  echo "$search_output"
  echo "Selesai."
  exit 0
fi

if [[ $search_output == "JSON:[]" ]]; then
  echo "Tidak ada lirik ditemukan di lrclib.net"
  echo "Selesai."
  exit 0
fi

# Extract JSON part
results_json=${search_output#JSON:}

# Step 2: Display choices in Bash
echo "Lirik ditemukan!"
echo "Ditemukan $(echo "$results_json" | python3 -c "import sys, json; print(len(json.load(sys.stdin)))") hasil potensial:"

i=1
echo "$results_json" | python3 -c "
import sys, json
data = json.load(sys.stdin)
for res in data:
    artist = res.get('artistName', 'Unknown')
    track = res.get('trackName', 'Unknown')
    has_synced = 'synced' if res.get('syncedLyrics') else 'plain only'
    print(f'Lirik {i} ({has_synced}) - {artist} - {track}')
    global i; i += 1
" 

read -p "Masukkan nomor lirik yang ingin di-embed (1-$(echo "$results_json" | python3 -c "import sys, json; print(len(json.load(sys.stdin)))")), atau 0 untuk skip: " choice_num

if ! [[ "\( choice_num" =~ ^[0-9]+ \) ]] || [ "$choice_num" -lt 0 ] || [ "$choice_num" -gt $(echo "$results_json" | python3 -c "import sys, json; print(len(json.load(sys.stdin)))") ]; then
  echo "Pilihan tidak valid, skip embed lirik."
  echo "Selesai."
  exit 0
fi

if [ "$choice_num" -eq 0 ]; then
  echo "Skip embed lirik."
  echo "Selesai."
  exit 0
fi

# Step 3: Embed selected lyrics (Python)
python3 - <<EOF
import json, sys
from mutagen.flac import FLAC

path = r'$latest_file'
results = json.loads(r'''$results_json''')
idx = $choice_num - 1
res = results[idx]

if res.get('syncedLyrics'):
    lyrics = res['syncedLyrics']
    tag = 'SYLT'
    ltype = 'synced'
else:
    lyrics = res.get('plainLyrics')
    tag = 'LYRICS'
    ltype = 'unsynced (plain)'

if lyrics:
    audio = FLAC(path)
    audio[tag] = lyrics
    audio.save()
    artist = res.get('artistName', 'Unknown')
    track = res.get('trackName', 'Unknown')
    print(f"Berhasil embed {ltype} lyrics: Lirik {choice_num} - {artist} - {track}")
else:
    print("Lirik tidak tersedia pada pilihan ini.")
EOF

echo "Selesai. File tersimpan di /storage/emulated/0/Download"
