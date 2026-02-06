# YouTube Audio Downloader (ytflac)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20Windows%20%7C%20Android-blue)](https://github.com/username/ytflac)
[![Shell Script](https://img.shields.io/badge/Shell-Bash-green.svg)](https://www.gnu.org/software/bash/)
[![Python](https://img.shields.io/badge/Python-3.7%2B-blue.svg)](https://www.python.org/)

> 🎵 Download audio dari YouTube dalam berbagai format dengan embed thumbnail dan lyrics otomatis

---

## 🌐 Language / Bahasa

[![en](https://img.shields.io/badge/lang-English-red.svg)](README.en.md)
[![id](https://img.shields.io/badge/lang-Bahasa%20Indonesia-blue.svg)](README.id.md)

**[English](README.en.md)** | **[Bahasa Indonesia](README.id.md)**

---

## 🛠️ Tech Stack

| Technology | Purpose | Version |
|------------|---------|---------|
| ![Bash](https://img.shields.io/badge/Bash-4EAA25?style=flat&logo=gnu-bash&logoColor=white) | Main script | 4.0+ |
| ![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white) | Lyrics processing | 3.7+ |
| ![yt-dlp](https://img.shields.io/badge/yt--dlp-FF0000?style=flat&logo=youtube&logoColor=white) | YouTube downloader | Latest |
| ![FFmpeg](https://img.shields.io/badge/FFmpeg-007808?style=flat&logo=ffmpeg&logoColor=white) | Audio processing | 4.0+ |
| ![Deno](https://img.shields.io/badge/Deno-000000?style=flat&logo=deno&logoColor=white) | JavaScript runtime | Optional |

**Python Libraries:**
- `yt-dlp` - YouTube video/audio downloader
- `lyricsgenius` - Genius API wrapper untuk lyrics
- `mutagen` - Audio metadata editor

**Dependencies:**
- `ffmpeg` - Audio/video converter dan processor
- `deno` - Modern JavaScript runtime (optional)

**Bahasa Pemrograman yang Digunakan:**
```
Bash Script    ████████████████████░░░░  80%
Python         ████░░░░░░░░░░░░░░░░░░░░  20%
```

---

## 📑 Table of Contents

- [Features](#-fitur)
- [Platform Support](#-platform-support)
- [Prerequisites](#-prasyarat)
- [Installation](#-instalasi-script)
- [Configuration](#-konfigurasi-output-path)
- [Genius API Setup](#-setup-genius-api-opsional---untuk-lyrics)
- [Usage](#-cara-penggunaan)
- [Troubleshooting](#-troubleshooting)
- [Tips & Tricks](#-tips--tricks)
- [Format Comparison](#-format-audio-yang-didukung)
- [Advanced Usage](#-advanced-usage)
- [FAQ](#-faq)
- [Contributing](#-kontribusi)
- [License](#-license)

---

## ✨ Fitur

- 🎵 **Multi-format Audio Support**
  - FLAC (lossless quality)
  - MP3 (320kbps high quality)
  - WAV (uncompressed)
  - M4A (AAC codec)
  - Opus (modern codec)
  - Custom format (any format supported by FFmpeg)

- 🎨 **Auto Embed Thumbnail**
  - Download cover art dari YouTube
  - Embed sebagai album art di file audio
  - Support semua format yang compatible

- 📝 **Auto Lyrics Integration**
  - Fetch lyrics dari Genius API
  - Auto-embed ke metadata file
  - Smart title matching

- 🖥️ **Cross-Platform**
  - Linux (All major distros)
  - macOS (Intel & Apple Silicon)
  - Windows via WSL2
  - Android via Termux

- ⚡ **User-Friendly**
  - Interactive CLI interface
  - Pilihan format via menu
  - Customizable output path
  - Batch download support

- 🔧 **Advanced Features**
  - Playlist download support
  - Custom output templates
  - Metadata preservation
  - Quality control

## Platform Support

| Platform | Status | Notes |
|----------|--------|-------|
| 🐧 Linux | ✅ Full | Native support |
| 🍎 macOS | ✅ Full | Native support |
| 🪟 Windows WSL | ✅ Full | Requires WSL2 |
| 📱 Termux (Android) | ✅ Full | Optimized for mobile |

## Prasyarat

### 🐧 Linux (Ubuntu/Debian)

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install python3 python3-pip ffmpeg -y

# Install Deno (optional, untuk js-runtimes)
curl -fsSL https://deno.land/install.sh | sh

# Install Python packages
pip3 install yt-dlp lyricsgenius mutagen
```

### 🐧 Linux (Fedora/RHEL)

```bash
# Update system
sudo dnf update -y

# Install dependencies
sudo dnf install python3 python3-pip ffmpeg -y

# Install Deno
curl -fsSL https://deno.land/install.sh | sh

# Install Python packages
pip3 install yt-dlp lyricsgenius mutagen
```

### 🐧 Linux (Arch)

```bash
# Update system
sudo pacman -Syu

# Install dependencies
sudo pacman -S python python-pip ffmpeg deno

# Install Python packages
pip install yt-dlp lyricsgenius mutagen
```

### 🍎 macOS

```bash
# Install Homebrew jika belum ada
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dependencies
brew install python ffmpeg deno

# Install Python packages
pip3 install yt-dlp lyricsgenius mutagen
```

### 🪟 Windows (WSL)

1. **Install WSL2**
   ```powershell
   # Di PowerShell (Admin)
   wsl --install
   # Restart komputer
   ```

2. **Install Ubuntu di WSL**
   ```powershell
   wsl --install -d Ubuntu
   ```

3. **Di dalam WSL, ikuti instruksi Linux Ubuntu** di atas

### 📱 Termux (Android)

```bash
# Update Termux
pkg update && pkg upgrade -y

# Install dependencies
pkg install python python-pip ffmpeg deno -y

# Install Python packages
pip install yt-dlp lyricsgenius mutagen

# Setup storage permission
termux-setup-storage
```
Izinkan akses storage saat diminta.

## Instalasi Script

### Method 1: Clone dari GitHub (Recommended)
```bash
git clone https://github.com/username/ytflac.git
cd ytflac
chmod +x ytflac.sh
```

### Method 2: Download Manual

**Linux / macOS / WSL:**
```bash
# Download script
curl -O https://raw.githubusercontent.com/username/ytflac/main/ytflac.sh
# atau gunakan wget:
wget https://raw.githubusercontent.com/username/ytflac/main/ytflac.sh

# Buat executable
chmod +x ytflac.sh
```

**Termux:**
```bash
# Download script
curl -O https://raw.githubusercontent.com/username/ytflac/main/ytflac.sh

# Buat executable
chmod +x ytflac.sh
```

### Method 3: Buat Manual
```bash
# Buat file script
nano ytflac.sh
# atau gunakan editor favorit: vim, code, dll

# Paste kode script, lalu save

# Buat executable
chmod +x ytflac.sh
```

### Method 4: Install Global (Recommended)

**Linux / macOS:**
```bash
# Copy ke /usr/local/bin
sudo cp ytflac.sh /usr/local/bin/ytflac
sudo chmod +x /usr/local/bin/ytflac

# Sekarang bisa dijalankan dari mana saja:
ytflac
```

**WSL:**
```bash
# Copy ke /usr/local/bin
sudo cp ytflac.sh /usr/local/bin/ytflac
sudo chmod +x /usr/local/bin/ytflac

# Bisa dijalankan dari mana saja:
ytflac
```

**Termux:**
```bash
# Copy ke folder bin
cp ytflac.sh $PREFIX/bin/ytflac
chmod +x $PREFIX/bin/ytflac

# Bisa dijalankan dari mana saja:
ytflac
```

## Konfigurasi Output Path

Script ini perlu disesuaikan untuk menyimpan file di lokasi yang sesuai dengan platform Anda.

### Edit Path Output

Buka script dan edit baris output (`-o` flag):

**Termux (Android):**
```bash
-o "/storage/emulated/0/Download/%(title)s.%(ext)s"
```

**Linux:**
```bash
-o "$HOME/Downloads/%(title)s.%(ext)s"
# atau
-o "$HOME/Music/%(title)s.%(ext)s"
```

**macOS:**
```bash
-o "$HOME/Downloads/%(title)s.%(ext)s"
# atau
-o "$HOME/Music/%(title)s.%(ext)s"
```

**WSL:**
```bash
# Akses folder Windows Downloads
-o "/mnt/c/Users/YOUR_USERNAME/Downloads/%(title)s.%(ext)s"
# atau tetap di Linux home
-o "$HOME/Downloads/%(title)s.%(ext)s"
```

### Quick Fix: Edit Output Path

```bash
# Linux/macOS/WSL - ganti path Termux dengan Linux path
sed -i 's|/storage/emulated/0/Download|$HOME/Downloads|g' ytflac.sh

# Atau edit manual
nano ytflac.sh
# Cari: /storage/emulated/0/Download
# Ganti dengan: $HOME/Downloads (atau path favorit)
```

## Setup Genius API (Opsional - untuk Lyrics)

1. **Buat Akun Genius**
   - Kunjungi [Genius.com](https://genius.com)
   - Sign up / Login

2. **Generate API Token**
   - Kunjungi [Genius API Clients](https://genius.com/api-clients)
   - Klik "New API Client"
   - Isi form (App Name bisa apa saja, misal "My Downloader")
   - Generate Access Token

3. **Simpan Token di Termux**
   ```bash
   echo "YOUR_GENIUS_TOKEN_HERE" > ~/.genius_token
   ```
   Ganti `YOUR_GENIUS_TOKEN_HERE` dengan token yang didapat.

## Cara Penggunaan

### Basic Usage

1. **Jalankan script**
   ```bash
   ./ytflac.sh
   # atau jika sudah di PATH:
   ytflac
   ```

2. **Masukkan URL YouTube**
   ```
   Masukkan link YouTube:
   https://www.youtube.com/watch?v=dQw4w9WgXcQ
   ```

3. **Pilih format audio**
   ```
   Pilih format:
   1) FLAC
   2) MP3 (320k)
   3) WAV
   4) M4A
   5) Opus
   Lain: ketik format langsung
   Pilihan: 1
   ```

4. **Pilih opsi thumbnail**
   ```
   Embed thumbnail? (y/n): y
   ```

5. **Pilih opsi lyrics** (jika sudah setup Genius API)
   ```
   Cari & embed lyrics? (y/n): y
   ```

6. **Tunggu download selesai**
   
   **File akan tersimpan di:**
   - **Termux:** `/storage/emulated/0/Download/` (folder Download Android)
   - **Linux:** `$HOME/Downloads/` atau sesuai konfigurasi
   - **macOS:** `$HOME/Downloads/` atau sesuai konfigurasi  
   - **WSL:** Path yang dikonfigurasi (bisa Windows atau Linux)

### Contoh Workflow

#### Download FLAC dengan Thumbnail dan Lyrics
```bash
./ytflac.sh
# Masukkan: https://youtu.be/example
# Pilih: 1 (FLAC)
# Thumbnail: y
# Lyrics: y
```

#### Download MP3 Tanpa Extras
```bash
./ytflac.sh
# Masukkan: https://youtu.be/example
# Pilih: 2 (MP3)
# Thumbnail: n
# Lyrics: n
```

#### Download dengan Custom Format
```bash
./ytflac.sh
# Masukkan: https://youtu.be/example
# Pilih: aac (ketik langsung)
# Thumbnail: y
# Lyrics: n
```

### Download Playlist
```bash
# Masukkan URL playlist saat diminta
# Script akan download semua video dalam playlist
./ytflac.sh
# Masukkan: https://www.youtube.com/playlist?list=...
```

## Troubleshooting

### Error: "yt-dlp: command not found"

**Semua Platform:**
```bash
pip3 install --upgrade yt-dlp
# atau
python3 -m pip install --upgrade yt-dlp
```

**Jika masih error, cek PATH:**
```bash
# Linux/macOS
echo $PATH
export PATH="$HOME/.local/bin:$PATH"

# Tambahkan ke ~/.bashrc atau ~/.zshrc agar permanen
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### Error: "python3: can't open file"

```bash
# Reinstall Python packages
pip3 install --upgrade lyricsgenius mutagen

# Cek instalasi Python
python3 --version
which python3
```

### Error: "Token Genius tidak ada"

```bash
# Cek apakah token sudah tersimpan
cat ~/.genius_token

# Jika kosong atau error, buat lagi:
echo "YOUR_GENIUS_TOKEN_HERE" > ~/.genius_token

# Verifikasi
cat ~/.genius_token
```

### Error: "Permission denied"

**Linux/macOS:**
```bash
# Buat executable
chmod +x ytflac.sh

# Jika install ke /usr/local/bin
sudo chmod +x /usr/local/bin/ytflac
```

**Termux:**
```bash
# Setup storage permission
termux-setup-storage

# Buat executable
chmod +x ytflac.sh
```

**WSL:**
```bash
chmod +x ytflac.sh

# Jika akses Windows folder, pastikan permission:
# Buka WSL config
sudo nano /etc/wsl.conf

# Tambahkan:
# [automount]
# options = "metadata"

# Restart WSL di PowerShell:
# wsl --shutdown
```

### Error: "File tidak ditemukan" setelah download

**Cek path output di script:**
```bash
# Edit script
nano ytflac.sh

# Cari baris yang ada -o "/path/to/download/..."
# Pastikan path sesuai platform Anda

# Termux: /storage/emulated/0/Download
# Linux: $HOME/Downloads atau /home/username/Downloads
# macOS: $HOME/Downloads atau /Users/username/Downloads
# WSL: /mnt/c/Users/USERNAME/Downloads (untuk Windows) atau $HOME/Downloads
```

### Lyrics tidak ditemukan

- Pastikan judul lagu sudah benar di metadata YouTube
- Coba cari manual di Genius.com apakah lagu tersedia
- Beberapa lagu memang tidak ada di database Genius
- Coba search dengan format berbeda (tanpa featured artist, dll)

### Download gagal / Error SSL

```bash
# Update yt-dlp ke versi terbaru
pip3 install --upgrade yt-dlp

# Update certificate (Linux)
sudo apt install ca-certificates
sudo update-ca-certificates

# macOS
brew install openssl

# Termux
pkg install ca-certificates openssl
```

### FFmpeg error atau audio tidak ter-convert

**Cek instalasi FFmpeg:**
```bash
ffmpeg -version
```

**Jika belum terinstall:**
```bash
# Linux (Ubuntu/Debian)
sudo apt install ffmpeg

# Linux (Fedora)
sudo dnf install ffmpeg

# Linux (Arch)
sudo pacman -S ffmpeg

# macOS
brew install ffmpeg

# Termux
pkg install ffmpeg
```

### WSL: Cannot access Windows files

```bash
# Format path Windows di WSL:
# C:\Users\Username\Downloads
# Menjadi:
# /mnt/c/Users/Username/Downloads

# Contoh edit di script:
-o "/mnt/c/Users/YourUsername/Downloads/%(title)s.%(ext)s"
```

### macOS: "command not found" setelah install

```bash
# Tambahkan pip bin ke PATH
echo 'export PATH="$HOME/Library/Python/3.x/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Atau gunakan pip3 install dengan --user
pip3 install --user yt-dlp lyricsgenius mutagen
```

## Tips & Tricks

### Batch Download

**Semua Platform:**
```bash
# Buat file urls.txt berisi list URL (satu per baris)
nano urls.txt

# Download semua URL
while IFS= read -r url; do
  echo "$url" | ./ytflac.sh
done < urls.txt
```

### Default Settings

Edit script untuk mengatur default format/opsi favorit Anda:
```bash
nano ytflac.sh

# Contoh: Set default ke FLAC tanpa perlu input
# Ubah baris: read -p "Pilihan: " choice
# Menjadi: choice=1  # default FLAC
```

### Playlist Download

yt-dlp mendukung playlist YouTube:
```bash
./ytflac.sh
# Masukkan URL playlist:
# https://www.youtube.com/playlist?list=...
```

### Download dari Platform Lain

yt-dlp mendukung 1000+ situs. Coba:
- SoundCloud
- Bandcamp
- Spotify (dengan plugin)
- Dan banyak lagi

### Custom Output Filename

Edit script, cari baris `-o` dan ubah template:
```bash
# Original:
-o "/path/%(title)s.%(ext)s"

# Dengan artist dan album:
-o "/path/%(artist)s - %(title)s.%(ext)s"

# Dengan tahun:
-o "/path/%(upload_date)s - %(title)s.%(ext)s"

# Organized by artist:
-o "/path/%(artist)s/%(album)s/%(title)s.%(ext)s"
```

### Quality Settings

Untuk best quality, pastikan audio-quality = 0:
```bash
--audio-quality 0  # best quality
--audio-quality 5  # medium
--audio-quality 9  # low
```

### Platform-Specific Tips

**Linux:**
- Gunakan alias untuk shortcut: `alias ytflac='~/scripts/ytflac.sh'`
- Tambahkan ke `~/.bashrc` untuk permanent

**macOS:**
- Gunakan Spotlight untuk cepat run: tambahkan script ke PATH
- Integrate dengan Automator untuk GUI experience

**WSL:**
- File Windows accessible via `/mnt/c/`
- Gunakan Windows Media Player untuk play hasil download
- Bisa symlink ke OneDrive: `ln -s /mnt/c/Users/USER/OneDrive ~/OneDrive`

**Termux:**
- Install Termux:Widget untuk quick run dari home screen
- Gunakan Termux:API untuk notifikasi saat selesai download
- Share URL langsung dari YouTube app ke Termux via share sheet

## File Output

**Lokasi default berdasarkan platform:**

| Platform | Path Default | Akses |
|----------|-------------|-------|
| **Linux** | `$HOME/Downloads/` | File manager atau terminal |
| **macOS** | `$HOME/Downloads/` | Finder atau terminal |
| **WSL** | `$HOME/Downloads/` atau `/mnt/c/Users/USER/Downloads/` | Explorer atau terminal |
| **Termux** | `/storage/emulated/0/Download/` | File manager Android |

**Format nama file:** `[Judul Video].[ext]`

**Metadata yang di-embed:**
- Title
- Artist (jika ada)
- Album (jika ada)
- Thumbnail/Cover art (jika dipilih)
- Lyrics (jika dipilih)
- Year
- Comment

## Format Audio yang Didukung

| Format | Kualitas | Ukuran | Kompatibilitas | Use Case |
|--------|----------|--------|----------------|----------|
| FLAC   | Lossless | Besar (30-50MB) | Sedang | Archiving, audiophile |
| MP3    | 320kbps | Sedang (10-15MB) | Universal | Everyday use, mobile |
| WAV    | Lossless | Sangat Besar (50-100MB) | Universal | Production, editing |
| M4A    | Variable | Sedang (8-12MB) | Tinggi | Apple ecosystem |
| Opus   | High | Kecil (5-8MB) | Sedang | Space-saving, streaming |

**Rekomendasi:**
- **Archiving/Collection:** FLAC
- **Portabel/Mobile:** MP3 320k
- **Apple Users:** M4A
- **Limited Storage:** Opus
- **Audio Production:** WAV

## Performance & Storage

**Estimasi ukuran untuk lagu 4 menit:**

| Format | Size | Quality | Time to Download (10 Mbps) |
|--------|------|---------|----------------------------|
| FLAC   | ~40 MB | Lossless | ~32 sec |
| MP3 320k | ~12 MB | High | ~10 sec |
| WAV    | ~80 MB | Lossless | ~64 sec |
| M4A    | ~10 MB | Variable | ~8 sec |
| Opus   | ~6 MB | High | ~5 sec |

## Advanced Usage

### Custom Script Arguments

Untuk user advanced, bisa modifikasi script untuk terima argumen:
```bash
# Contoh usage:
./ytflac.sh <url> <format> <thumbnail:y/n> <lyrics:y/n>

# Example:
./ytflac.sh "https://youtu.be/..." flac y y
```

### Integration dengan Music Players

**Linux (Rhythmbox, Clementine):**
```bash
# Auto import ke library
cp ~/Downloads/*.flac ~/Music/
```

**macOS (Music.app):**
```bash
# Auto add ke Music
cp ~/Downloads/*.m4a ~/Music/iTunes/iTunes\ Media/Automatically\ Add\ to\ Music.localized/
```

**Termux:**
```bash
# File otomatis muncul di music player Android
# Scan media database:
termux-media-scan ~/storage/downloads/
```

## Security & Privacy

⚠️ **Penting:**
- Genius API token adalah **pribadi**, jangan share ke orang lain
- Simpan token di file yang aman: `~/.genius_token` dengan permission 600
  ```bash
  chmod 600 ~/.genius_token
  ```
- Jangan commit token ke Git repository
- Script ini hanya download audio, tidak modifikasi sistem

## FAQ

**Q: Apakah legal download dari YouTube?**  
A: Tergantung jurisdiksi dan ToS YouTube. Gunakan hanya untuk keperluan personal dan fair use.

**Q: Kenapa butuh FFmpeg?**  
A: FFmpeg digunakan untuk convert format audio dan embed metadata/thumbnail.

**Q: Apakah bisa download video juga?**  
A: Script ini khusus audio. Untuk video, gunakan yt-dlp tanpa flag `-x`.

**Q: Bisa download dari Spotify?**  
A: Tidak langsung. Spotify memerlukan plugin tambahan dan mungkin melanggar ToS.

**Q: Apakah gratis?**  
A: Ya, 100% gratis dan open source.

**Q: Playlist berapa lagu maksimal?**  
A: Tidak ada limit, tapi perhatikan waktu download dan storage space.

## Kontribusi

Kontribusi sangat diterima! Berikut cara berkontribusi:

1. Fork repository
2. Buat branch baru (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Buka Pull Request

**Area yang butuh kontribusi:**
- GUI wrapper untuk non-terminal users
- Windows native support (tanpa WSL)
- Playlist management features
- Better error handling
- Multi-language support

## License

MIT License - bebas digunakan dan dimodifikasi.

See `LICENSE` file for details.

## Credits & Acknowledgments

**Tools & Libraries:**
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) - YouTube downloader engine
- [FFmpeg](https://ffmpeg.org/) - Audio/video processing
- [LyricsGenius](https://github.com/johnwmillr/LyricsGenius) - Genius API wrapper
- [Mutagen](https://github.com/quodlibet/mutagen) - Audio metadata handler
- [Deno](https://deno.land/) - JavaScript runtime

**Community:**
- Terima kasih untuk semua contributors
- Special thanks ke yt-dlp team
- Inspired by various YouTube download scripts

## Support & Contact

- **Issues:** [GitHub Issues](https://github.com/username/ytflac/issues)
- **Discussions:** [GitHub Discussions](https://github.com/username/ytflac/discussions)
- **Email:** your-email@example.com

## Disclaimer

Script ini dibuat untuk keperluan educational dan personal use. Users bertanggung jawab untuk comply dengan:
- YouTube Terms of Service
- Copyright laws di negara masing-masing
- Fair use guidelines
- Genius API Terms of Service

Author tidak bertanggung jawab atas penyalahgunaan script ini.

---

**Dibuat dengan ❤️ untuk music lovers di semua platform**

Jika berguna, jangan lupa ⭐ star repository ini!

**Platform Support:** 🐧 Linux | 🍎 macOS | 🪟 Windows WSL | 📱 Termux

**Last Updated:** February 2026
