# YouTube Audio Downloader (ytflac)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20Windows%20%7C%20Android-blue)](https://github.com/username/ytflac)
[![Shell Script](https://img.shields.io/badge/Shell-Bash-green.svg)](https://www.gnu.org/software/bash/)
[![Python](https://img.shields.io/badge/Python-3.7%2B-blue.svg)](https://www.python.org/)

> 🎵 Download audio from YouTube in various formats with automatic thumbnail and lyrics embedding

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
- `lyricsgenius` - Genius API wrapper for lyrics
- `mutagen` - Audio metadata editor

**Dependencies:**
- `ffmpeg` - Audio/video converter and processor
- `deno` - Modern JavaScript runtime (optional)

**Programming Languages Used:**
```
Bash Script    ████████████████████░░░░  80%
Python         ████░░░░░░░░░░░░░░░░░░░░  20%
```

---

## 📑 Table of Contents

- [Features](#-features)
- [Platform Support](#-platform-support)
- [Prerequisites](#-prerequisites)
- [Installation](#-installation)
- [Configuration](#-output-path-configuration)
- [Genius API Setup](#-genius-api-setup-optional---for-lyrics)
- [Usage](#-usage)
- [Troubleshooting](#-troubleshooting)
- [Tips & Tricks](#-tips--tricks)
- [Format Comparison](#-supported-audio-formats)
- [Advanced Usage](#-advanced-usage)
- [FAQ](#-faq)
- [Contributing](#-contributing)
- [License](#-license)

---

## ✨ Features

- 🎵 **Multi-format Audio Support**
  - FLAC (lossless quality)
  - MP3 (320kbps high quality)
  - WAV (uncompressed)
  - M4A (AAC codec)
  - Opus (modern codec)
  - Custom format (any FFmpeg-supported format)

- 🎨 **Auto Embed Thumbnail**
  - Download cover art from YouTube
  - Embed as album art in audio file
  - Support for all compatible formats

- 📝 **Auto Lyrics Integration**
  - Fetch lyrics from Genius API
  - Auto-embed into file metadata
  - Smart title matching

- 🖥️ **Cross-Platform**
  - Linux (All major distros)
  - macOS (Intel & Apple Silicon)
  - Windows via WSL2
  - Android via Termux

- ⚡ **User-Friendly**
  - Interactive CLI interface
  - Format selection via menu
  - Customizable output path
  - Batch download support

- 🔧 **Advanced Features**
  - Playlist download support
  - Custom output templates
  - Metadata preservation
  - Quality control

## 💻 Platform Support

| Platform | Status | Notes |
|----------|--------|-------|
| 🐧 Linux | ✅ Full | Native support |
| 🍎 macOS | ✅ Full | Native support |
| 🪟 Windows WSL | ✅ Full | Requires WSL2 |
| 📱 Termux (Android) | ✅ Full | Optimized for mobile |

## 📋 Prerequisites

### 🐧 Linux (Ubuntu/Debian)

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install python3 python3-pip ffmpeg -y

# Install Deno (optional, for js-runtimes)
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
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dependencies
brew install python ffmpeg deno

# Install Python packages
pip3 install yt-dlp lyricsgenius mutagen
```

### 🪟 Windows (WSL)

1. **Install WSL2**
   ```powershell
   # In PowerShell (Admin)
   wsl --install
   # Restart computer
   ```

2. **Install Ubuntu in WSL**
   ```powershell
   wsl --install -d Ubuntu
   ```

3. **Inside WSL, follow Linux Ubuntu instructions** above

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
Allow storage access when prompted.

## 📥 Installation

### Method 1: Clone from GitHub (Recommended)
```bash
git clone https://github.com/username/ytflac.git
cd ytflac
chmod +x ytflac.sh
```

### Method 2: Manual Download

**Linux / macOS / WSL:**
```bash
# Download script
curl -O https://raw.githubusercontent.com/username/ytflac/main/ytflac.sh
# or use wget:
wget https://raw.githubusercontent.com/username/ytflac/main/ytflac.sh

# Make executable
chmod +x ytflac.sh
```

**Termux:**
```bash
# Download script
curl -O https://raw.githubusercontent.com/username/ytflac/main/ytflac.sh

# Make executable
chmod +x ytflac.sh
```

### Method 3: Create Manually
```bash
# Create script file
nano ytflac.sh
# or use your favorite editor: vim, code, etc.

# Paste script code, then save

# Make executable
chmod +x ytflac.sh
```

### Method 4: Global Installation (Recommended)

**Linux / macOS:**
```bash
# Copy to /usr/local/bin
sudo cp ytflac.sh /usr/local/bin/ytflac
sudo chmod +x /usr/local/bin/ytflac

# Now can be run from anywhere:
ytflac
```

**WSL:**
```bash
# Copy to /usr/local/bin
sudo cp ytflac.sh /usr/local/bin/ytflac
sudo chmod +x /usr/local/bin/ytflac

# Can be run from anywhere:
ytflac
```

**Termux:**
```bash
# Copy to bin folder
cp ytflac.sh $PREFIX/bin/ytflac
chmod +x $PREFIX/bin/ytflac

# Can be run from anywhere:
ytflac
```

## 🔧 Output Path Configuration

This script needs to be adjusted to save files in the appropriate location for your platform.

### Edit Output Path

Open the script and edit the output line (`-o` flag):

**Termux (Android):**
```bash
-o "/storage/emulated/0/Download/%(title)s.%(ext)s"
```

**Linux:**
```bash
-o "$HOME/Downloads/%(title)s.%(ext)s"
# or
-o "$HOME/Music/%(title)s.%(ext)s"
```

**macOS:**
```bash
-o "$HOME/Downloads/%(title)s.%(ext)s"
# or
-o "$HOME/Music/%(title)s.%(ext)s"
```

**WSL:**
```bash
# Access Windows Downloads folder
-o "/mnt/c/Users/YOUR_USERNAME/Downloads/%(title)s.%(ext)s"
# or stay in Linux home
-o "$HOME/Downloads/%(title)s.%(ext)s"
```

### Quick Fix: Edit Output Path

```bash
# Linux/macOS/WSL - replace Termux path with Linux path
sed -i 's|/storage/emulated/0/Download|$HOME/Downloads|g' ytflac.sh

# Or edit manually
nano ytflac.sh
# Find: /storage/emulated/0/Download
# Replace with: $HOME/Downloads (or your preferred path)
```

## 🔑 Genius API Setup (Optional - for Lyrics)

1. **Create Genius Account**
   - Visit [Genius.com](https://genius.com)
   - Sign up / Login

2. **Generate API Token**
   - Visit [Genius API Clients](https://genius.com/api-clients)
   - Click "New API Client"
   - Fill form (App Name can be anything, e.g. "My Downloader")
   - Generate Access Token

3. **Save Token in Terminal**
   ```bash
   echo "YOUR_GENIUS_TOKEN_HERE" > ~/.genius_token
   ```
   Replace `YOUR_GENIUS_TOKEN_HERE` with your token.

## 🚀 Usage

### Basic Usage

1. **Run the script**
   ```bash
   ./ytflac.sh
   # or if installed globally:
   ytflac
   ```

2. **Enter YouTube URL**
   ```
   Enter YouTube link:
   https://www.youtube.com/watch?v=dQw4w9WgXcQ
   ```

3. **Select audio format**
   ```
   Select format:
   1) FLAC
   2) MP3 (320k)
   3) WAV
   4) M4A
   5) Opus
   Other: type format directly
   Choice: 1
   ```

4. **Choose thumbnail option**
   ```
   Embed thumbnail? (y/n): y
   ```

5. **Choose lyrics option** (if Genius API is set up)
   ```
   Search & embed lyrics? (y/n): y
   ```

6. **Wait for download to complete**
   
   **Files will be saved to:**
   - **Termux:** `/storage/emulated/0/Download/` (Android Download folder)
   - **Linux:** `$HOME/Downloads/` or as configured
   - **macOS:** `$HOME/Downloads/` or as configured
   - **WSL:** Configured path (can be Windows or Linux)

### Example Workflows

#### Download FLAC with Thumbnail and Lyrics
```bash
./ytflac.sh
# Enter: https://youtu.be/example
# Select: 1 (FLAC)
# Thumbnail: y
# Lyrics: y
```

#### Download MP3 Without Extras
```bash
./ytflac.sh
# Enter: https://youtu.be/example
# Select: 2 (MP3)
# Thumbnail: n
# Lyrics: n
```

#### Download with Custom Format
```bash
./ytflac.sh
# Enter: https://youtu.be/example
# Select: aac (type directly)
# Thumbnail: y
# Lyrics: n
```

### Download Playlist
```bash
# Enter playlist URL when prompted
# Script will download all videos in playlist
./ytflac.sh
# Enter: https://www.youtube.com/playlist?list=...
```

## 🔧 Troubleshooting

### Error: "yt-dlp: command not found"

**All Platforms:**
```bash
pip3 install --upgrade yt-dlp
# or
python3 -m pip install --upgrade yt-dlp
```

**If still error, check PATH:**
```bash
# Linux/macOS
echo $PATH
export PATH="$HOME/.local/bin:$PATH"

# Add to ~/.bashrc or ~/.zshrc for permanent
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### Error: "python3: can't open file"

```bash
# Reinstall Python packages
pip3 install --upgrade lyricsgenius mutagen

# Check Python installation
python3 --version
which python3
```

### Error: "Token Genius not found"

```bash
# Check if token is saved
cat ~/.genius_token

# If empty or error, create again:
echo "YOUR_GENIUS_TOKEN_HERE" > ~/.genius_token

# Verify
cat ~/.genius_token
```

### Error: "Permission denied"

**Linux/macOS:**
```bash
# Make executable
chmod +x ytflac.sh

# If installing to /usr/local/bin
sudo chmod +x /usr/local/bin/ytflac
```

**Termux:**
```bash
# Setup storage permission
termux-setup-storage

# Make executable
chmod +x ytflac.sh
```

**WSL:**
```bash
chmod +x ytflac.sh

# If accessing Windows folder, ensure permission:
# Open WSL config
sudo nano /etc/wsl.conf

# Add:
# [automount]
# options = "metadata"

# Restart WSL in PowerShell:
# wsl --shutdown
```

### Error: "File not found" after download

**Check output path in script:**
```bash
# Edit script
nano ytflac.sh

# Find line with -o "/path/to/download/..."
# Ensure path matches your platform

# Termux: /storage/emulated/0/Download
# Linux: $HOME/Downloads or /home/username/Downloads
# macOS: $HOME/Downloads or /Users/username/Downloads
# WSL: /mnt/c/Users/USERNAME/Downloads (for Windows) or $HOME/Downloads
```

### Lyrics not found

- Ensure song title is correct in YouTube metadata
- Try manual search on Genius.com to see if song exists
- Some songs are not available in Genius database
- Try different search format (without featured artist, etc.)

### Download failed / SSL Error

```bash
# Update yt-dlp to latest version
pip3 install --upgrade yt-dlp

# Update certificates (Linux)
sudo apt install ca-certificates
sudo update-ca-certificates

# macOS
brew install openssl

# Termux
pkg install ca-certificates openssl
```

### FFmpeg error or audio not converting

**Check FFmpeg installation:**
```bash
ffmpeg -version
```

**If not installed:**
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
# Windows path format in WSL:
# C:\Users\Username\Downloads
# Becomes:
# /mnt/c/Users/Username/Downloads

# Example edit in script:
-o "/mnt/c/Users/YourUsername/Downloads/%(title)s.%(ext)s"
```

### macOS: "command not found" after install

```bash
# Add pip bin to PATH
echo 'export PATH="$HOME/Library/Python/3.x/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Or use pip3 install with --user
pip3 install --user yt-dlp lyricsgenius mutagen
```

## 💡 Tips & Tricks

### Batch Download

**All Platforms:**
```bash
# Create urls.txt file with list of URLs (one per line)
nano urls.txt

# Download all URLs
while IFS= read -r url; do
  echo "$url" | ./ytflac.sh
done < urls.txt
```

### Default Settings

Edit script to set your favorite default format/options:
```bash
nano ytflac.sh

# Example: Set default to FLAC without input
# Change line: read -p "Choice: " choice
# To: choice=1  # default FLAC
```

### Playlist Download

yt-dlp supports YouTube playlists:
```bash
./ytflac.sh
# Enter playlist URL:
# https://www.youtube.com/playlist?list=...
```

### Download from Other Platforms

yt-dlp supports 1000+ sites. Try:
- SoundCloud
- Bandcamp
- Spotify (with plugin)
- And many more

### Custom Output Filename

Edit script, find `-o` line and change template:
```bash
# Original:
-o "/path/%(title)s.%(ext)s"

# With artist and album:
-o "/path/%(artist)s - %(title)s.%(ext)s"

# With year:
-o "/path/%(upload_date)s - %(title)s.%(ext)s"

# Organized by artist:
-o "/path/%(artist)s/%(album)s/%(title)s.%(ext)s"
```

### Quality Settings

For best quality, ensure audio-quality = 0:
```bash
--audio-quality 0  # best quality
--audio-quality 5  # medium
--audio-quality 9  # low
```

### Platform-Specific Tips

**Linux:**
- Use alias for shortcut: `alias ytflac='~/scripts/ytflac.sh'`
- Add to `~/.bashrc` for permanent

**macOS:**
- Use Spotlight to quickly run: add script to PATH
- Integrate with Automator for GUI experience

**WSL:**
- Windows files accessible via `/mnt/c/`
- Use Windows Media Player to play downloaded files
- Can symlink to OneDrive: `ln -s /mnt/c/Users/USER/OneDrive ~/OneDrive`

**Termux:**
- Install Termux:Widget for quick run from home screen
- Use Termux:API for notifications when download completes
- Share URL directly from YouTube app to Termux via share sheet

## 📊 File Output

**Default location by platform:**

| Platform | Default Path | Access |
|----------|-------------|-------|
| **Linux** | `$HOME/Downloads/` | File manager or terminal |
| **macOS** | `$HOME/Downloads/` | Finder or terminal |
| **WSL** | `$HOME/Downloads/` or `/mnt/c/Users/USER/Downloads/` | Explorer or terminal |
| **Termux** | `/storage/emulated/0/Download/` | Android file manager |

**Filename format:** `[Video Title].[ext]`

**Embedded metadata:**
- Title
- Artist (if available)
- Album (if available)
- Thumbnail/Cover art (if selected)
- Lyrics (if selected)
- Year
- Comment

## 🎵 Supported Audio Formats

| Format | Quality | Size | Compatibility | Use Case |
|--------|---------|------|---------------|----------|
| FLAC   | Lossless | Large (30-50MB) | Medium | Archiving, audiophile |
| MP3    | 320kbps | Medium (10-15MB) | Universal | Everyday use, mobile |
| WAV    | Lossless | Very Large (50-100MB) | Universal | Production, editing |
| M4A    | Variable | Medium (8-12MB) | High | Apple ecosystem |
| Opus   | High | Small (5-8MB) | Medium | Space-saving, streaming |

**Recommendations:**
- **Archiving/Collection:** FLAC
- **Portable/Mobile:** MP3 320k
- **Apple Users:** M4A
- **Limited Storage:** Opus
- **Audio Production:** WAV

## 📈 Performance & Storage

**Estimated size for 4-minute song:**

| Format | Size | Quality | Download Time (10 Mbps) |
|--------|------|---------|------------------------|
| FLAC   | ~40 MB | Lossless | ~32 sec |
| MP3 320k | ~12 MB | High | ~10 sec |
| WAV    | ~80 MB | Lossless | ~64 sec |
| M4A    | ~10 MB | Variable | ~8 sec |
| Opus   | ~6 MB | High | ~5 sec |

## 🔬 Advanced Usage

### Custom Script Arguments

For advanced users, modify script to accept arguments:
```bash
# Example usage:
./ytflac.sh <url> <format> <thumbnail:y/n> <lyrics:y/n>

# Example:
./ytflac.sh "https://youtu.be/..." flac y y
```

### Integration with Music Players

**Linux (Rhythmbox, Clementine):**
```bash
# Auto import to library
cp ~/Downloads/*.flac ~/Music/
```

**macOS (Music.app):**
```bash
# Auto add to Music
cp ~/Downloads/*.m4a ~/Music/iTunes/iTunes\ Media/Automatically\ Add\ to\ Music.localized/
```

**Termux:**
```bash
# Files automatically appear in Android music player
# Scan media database:
termux-media-scan ~/storage/downloads/
```

## 🔒 Security & Privacy

⚠️ **Important:**
- Genius API token is **private**, do not share with others
- Save token in secure file: `~/.genius_token` with permission 600
  ```bash
  chmod 600 ~/.genius_token
  ```
- Do not commit token to Git repository
- This script only downloads audio, does not modify system

## ❓ FAQ

**Q: Is it legal to download from YouTube?**  
A: Depends on jurisdiction and YouTube ToS. Use only for personal and fair use purposes.

**Q: Why do I need FFmpeg?**  
A: FFmpeg is used to convert audio formats and embed metadata/thumbnails.

**Q: Can I download videos too?**  
A: This script is audio-only. For videos, use yt-dlp without `-x` flag.

**Q: Can I download from Spotify?**  
A: Not directly. Spotify requires additional plugins and may violate ToS.

**Q: Is it free?**  
A: Yes, 100% free and open source.

**Q: What's the maximum playlist size?**  
A: No limit, but consider download time and storage space.

## 🤝 Contributing

Contributions are welcome! Here's how to contribute:

1. Fork the repository
2. Create new branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request

**Areas that need contribution:**
- GUI wrapper for non-terminal users
- Windows native support (without WSL)
- Playlist management features
- Better error handling
- Multi-language support
- Documentation improvements

## 📄 License

MIT License - free to use and modify.

See `LICENSE` file for details.

## 🙏 Credits & Acknowledgments

**Tools & Libraries:**
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) - YouTube downloader engine
- [FFmpeg](https://ffmpeg.org/) - Audio/video processing
- [LyricsGenius](https://github.com/johnwmillr/LyricsGenius) - Genius API wrapper
- [Mutagen](https://github.com/quodlibet/mutagen) - Audio metadata handler
- [Deno](https://deno.land/) - JavaScript runtime

**Community:**
- Thanks to all contributors
- Special thanks to yt-dlp team
- Inspired by various YouTube download scripts

## 📧 Support & Contact

- **Issues:** [GitHub Issues](https://github.com/username/ytflac/issues)
- **Discussions:** [GitHub Discussions](https://github.com/username/ytflac/discussions)
- **Email:** your-email@example.com

## ⚠️ Disclaimer

This script is created for educational and personal use. Users are responsible for complying with:
- YouTube Terms of Service
- Copyright laws in their respective countries
- Fair use guidelines
- Genius API Terms of Service

Author is not responsible for misuse of this script.

---

**Made with ❤️ for music lovers on all platforms**

If you find this useful, please ⭐ star this repository!

**Platform Support:** 🐧 Linux | 🍎 macOS | 🪟 Windows WSL | 📱 Termux

**Last Updated:** February 2026
