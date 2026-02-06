# YouTube Audio Downloader (ytflac)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20Windows%20%7C%20Android-blue)](https://github.com/username/ytflac)
[![Shell Script](https://img.shields.io/badge/Shell-Bash-green.svg)](https://www.gnu.org/software/bash/)
[![Python](https://img.shields.io/badge/Python-3.7%2B-blue.svg)](https://www.python.org/)

<div align="center">

![Demo](https://via.placeholder.com/800x400/1a1a1a/00ff00?text=YouTube+Audio+Downloader)

### 🎵 Download audio from YouTube in various formats
### with automatic thumbnail and lyrics embedding

[Features](#-features) • [Installation](#-quick-start) • [Documentation](#-documentation)

</div>

---

## 🌐 Choose Your Language / Pilih Bahasa

<div align="center">

### 📖 Read Documentation In:

[![English](https://img.shields.io/badge/🇺🇸_English-Documentation-red?style=for-the-badge)](README.en.md)
[![Bahasa Indonesia](https://img.shields.io/badge/🇮🇩_Bahasa_Indonesia-Dokumentasi-blue?style=for-the-badge)](README.id.md)

</div>

---

## 🛠️ Tech Stack

<div align="center">

| Technology | Purpose | Version |
|------------|---------|---------|
| ![Bash](https://img.shields.io/badge/Bash-4EAA25?style=flat&logo=gnu-bash&logoColor=white) | Main script | 4.0+ |
| ![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white) | Lyrics processing | 3.7+ |
| ![yt-dlp](https://img.shields.io/badge/yt--dlp-FF0000?style=flat&logo=youtube&logoColor=white) | YouTube downloader | Latest |
| ![FFmpeg](https://img.shields.io/badge/FFmpeg-007808?style=flat&logo=ffmpeg&logoColor=white) | Audio processing | 4.0+ |

**Code Distribution:**
```
Bash Script    ████████████████████░░░░  80%
Python         ████░░░░░░░░░░░░░░░░░░░░  20%
```

</div>

---

## ✨ Features

<div align="center">

| Feature | Description |
|---------|-------------|
| 🎵 **Multi-Format** | FLAC, MP3, WAV, M4A, Opus, and custom formats |
| 🎨 **Auto Thumbnail** | Embed YouTube cover art as album art |
| 📝 **Auto Lyrics** | Fetch and embed lyrics from Genius API |
| 🖥️ **Cross-Platform** | Linux, macOS, Windows WSL, Android Termux |
| ⚡ **User-Friendly** | Interactive CLI with menu selection |
| 🔧 **Advanced** | Playlist support, custom templates, metadata |

</div>

---

## 💻 Platform Support

<div align="center">

| Platform | Status | Installation Time |
|----------|--------|------------------|
| 🐧 **Linux** | ✅ Full Support | ~2 minutes |
| 🍎 **macOS** | ✅ Full Support | ~3 minutes |
| 🪟 **Windows WSL** | ✅ Full Support | ~5 minutes |
| 📱 **Android (Termux)** | ✅ Full Support | ~3 minutes |

</div>

---

## 🚀 Quick Start

### One-Line Install (Linux/macOS)

```bash
curl -fsSL https://raw.githubusercontent.com/username/ytflac/main/install.sh | bash
```

### Manual Install

<details>
<summary><b>🐧 Linux (Ubuntu/Debian)</b></summary>

```bash
sudo apt update && sudo apt install python3 python3-pip ffmpeg -y
pip3 install yt-dlp lyricsgenius mutagen
git clone https://github.com/username/ytflac.git
cd ytflac && chmod +x ytflac.sh
```
</details>

<details>
<summary><b>🍎 macOS</b></summary>

```bash
brew install python ffmpeg
pip3 install yt-dlp lyricsgenius mutagen
git clone https://github.com/username/ytflac.git
cd ytflac && chmod +x ytflac.sh
```
</details>

<details>
<summary><b>🪟 Windows (WSL)</b></summary>

```powershell
# In PowerShell (Admin):
wsl --install -d Ubuntu

# Then in WSL:
sudo apt update && sudo apt install python3 python3-pip ffmpeg -y
pip3 install yt-dlp lyricsgenius mutagen
git clone https://github.com/username/ytflac.git
cd ytflac && chmod +x ytflac.sh
```
</details>

<details>
<summary><b>📱 Termux (Android)</b></summary>

```bash
pkg update && pkg upgrade -y
pkg install python ffmpeg -y
pip install yt-dlp lyricsgenius mutagen
git clone https://github.com/username/ytflac.git
cd ytflac && chmod +x ytflac.sh
termux-setup-storage
```
</details>

---

## 📖 Documentation

### Full Documentation Available In:

- 🇺🇸 **[English Documentation](README.en.md)** - Complete guide in English
- 🇮🇩 **[Dokumentasi Bahasa Indonesia](README.id.md)** - Panduan lengkap dalam Bahasa Indonesia

### Quick Links:

| Topic | English | Bahasa Indonesia |
|-------|---------|------------------|
| Installation | [📖](README.en.md#-installation) | [📖](README.id.md#-instalasi-script) |
| Usage | [📖](README.en.md#-usage) | [📖](README.id.md#-cara-penggunaan) |
| Troubleshooting | [📖](README.en.md#-troubleshooting) | [📖](README.id.md#-troubleshooting) |
| Tips & Tricks | [📖](README.en.md#-tips--tricks) | [📖](README.id.md#-tips--tricks) |
| FAQ | [📖](README.en.md#-faq) | [📖](README.id.md#-faq) |

---

## 🎯 Usage Example

```bash
# Run the script
./ytflac.sh

# Enter YouTube URL
> https://www.youtube.com/watch?v=dQw4w9WgXcQ

# Select format
> 1 (FLAC)

# Embed thumbnail?
> y

# Embed lyrics?
> y

# Done! File saved to Downloads folder
✓ Download complete!
```

---

## 🎵 Supported Formats

<div align="center">

| Format | Quality | Size (4min) | Best For |
|--------|---------|-------------|----------|
| **FLAC** | Lossless | ~40 MB | Archiving, Audiophile |
| **MP3** | 320kbps | ~12 MB | Everyday, Mobile |
| **WAV** | Lossless | ~80 MB | Production, Editing |
| **M4A** | Variable | ~10 MB | Apple Ecosystem |
| **Opus** | High | ~6 MB | Space-Saving |

</div>

---

## 📊 Stats

<div align="center">

![GitHub stars](https://img.shields.io/github/stars/hmz64/YtFLAC?style=social)
![GitHub forks](https://img.shields.io/github/forks/hmz64/YtFLAC?style=social)
![GitHub issues](https://img.shields.io/github/issues/hmz64/YtFLAC)
![GitHub pull requests](https://img.shields.io/github/issues-pr/hmz64/YtFLAC)
![GitHub last commit](https://img.shields.io/github/last-commit/hmz64/YtFLAC)

</div>

---

## 🤝 Contributing

Contributions are welcome! Please read our [Contributing Guidelines](CONTRIBUTING.md) first.

<div align="center">

[![Contributors](https://img.shields.io/github/contributors/hmz64/YtFLAC?style=flat-square)](https://github.com/hmz64/YtFLAC/graphs/contributors)

</div>

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- [yt-dlp](https://github.com/yt-dlp/yt-dlp) - YouTube downloader engine
- [FFmpeg](https://ffmpeg.org/) - Audio/video processing
- [LyricsGenius](https://github.com/johnwmillr/LyricsGenius) - Genius API wrapper
- [Mutagen](https://github.com/quodlibet/mutagen) - Audio metadata handler

---

## ⚠️ Disclaimer

This script is for educational and personal use only. Users are responsible for complying with YouTube's Terms of Service and copyright laws.

---

<div align="center">

**Made with ❤️ for music lovers on all platforms**

🐧 Linux | 🍎 macOS | 🪟 Windows | 📱 Android

[⬆ Back to Top](#youtube-audio-downloader-ytflac)

</div>
