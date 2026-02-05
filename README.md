# YouTube Audio Downloader (ytflac)

Script bash untuk mendownload audio dari YouTube dalam berbagai format dengan dukungan embed thumbnail dan lyrics otomatis menggunakan Genius API.

## Fitur

✨ **Multi-format Audio**
- FLAC (lossless)
- MP3 (320kbps)
- WAV
- M4A
- Opus
- Custom format sesuai kebutuhan

🎨 **Embed Thumbnail** - Menambahkan cover art dari YouTube video

🎵 **Auto Lyrics** - Mencari dan embed lyrics dari Genius API secara otomatis

📱 **Termux Optimized** - Didesain khusus untuk Termux di Android

## Prasyarat

### 1. Install Termux
Download dari [F-Droid](https://f-droid.org/en/packages/com.termux/) (recommended) atau GitHub Releases.

### 2. Update Termux
```bash
pkg update && pkg upgrade -y
```

### 3. Install Dependencies
```bash
# Install package yang dibutuhkan
pkg install python python-pip ffmpeg deno -y

# Install yt-dlp
pip install yt-dlp

# Install library Python untuk lyrics
pip install lyricsgenius mutagen
```

### 4. Setup Storage Permission
```bash
termux-setup-storage
```
Izinkan akses storage saat diminta.

## Instalasi Script

### Opsi 1: Clone Repository (jika di GitHub)
```bash
git clone https://github.com/username/ytflac.git
cd ytflac
chmod +x ytflac.sh
```

### Opsi 2: Download Manual
```bash
# Buat file script
nano ytflac.sh

# Paste kode script, lalu:
# Ctrl+O (save)
# Enter (konfirmasi)
# Ctrl+X (exit)

# Buat executable
chmod +x ytflac.sh
```

### Opsi 3: Install ke PATH (Recommended)
```bash
# Copy ke folder bin
cp ytflac.sh $PREFIX/bin/ytflac

# Buat executable
chmod +x $PREFIX/bin/ytflac

# Sekarang bisa dijalankan dari mana saja dengan:
ytflac
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
   File akan tersimpan di `/storage/emulated/0/Download/`

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

## Troubleshooting

### Error: "yt-dlp: command not found"
```bash
pip install --upgrade yt-dlp
```

### Error: "python3: can't open file"
```bash
# Install ulang dependencies Python
pip install --upgrade lyricsgenius mutagen
```

### Error: "Token Genius tidak ada"
```bash
# Pastikan token sudah disimpan
cat ~/.genius_token
# Jika kosong, buat lagi:
echo "YOUR_TOKEN" > ~/.genius_token
```

### Error: "Permission denied"
```bash
# Berikan permission storage
termux-setup-storage

# Buat executable
chmod +x ytflac.sh
```

### Lyrics tidak ditemukan
- Pastikan judul lagu sudah benar di metadata YouTube
- Coba cari manual di Genius.com apakah lagu tersebut ada
- Beberapa lagu memang tidak tersedia di Genius

### Download gagal / error SSL
```bash
# Update yt-dlp
pip install --upgrade yt-dlp

# Atau tambahkan --no-check-certificate (tidak recommended)
```

## Tips & Tricks

### Batch Download
Buat file `urls.txt` berisi list URL, lalu:
```bash
while IFS= read -r url; do
  echo "$url" | ./ytflac.sh
done < urls.txt
```

### Default Settings
Edit script untuk mengatur default format/opsi yang sering digunakan.

### Playlist Download
yt-dlp support playlist, masukkan URL playlist saat diminta.

### Quality Terbaik
- FLAC: Kualitas lossless (ukuran besar)
- MP3 320k: Balance antara kualitas dan ukuran
- Opus: Kualitas bagus dengan ukuran kecil

## Format Audio yang Didukung

| Format | Kualitas | Ukuran | Kompatibilitas |
|--------|----------|--------|----------------|
| FLAC   | Lossless | Besar  | Sedang         |
| MP3    | 320kbps  | Sedang | Tinggi         |
| WAV    | Lossless | Sangat Besar | Tinggi |
| M4A    | Variable | Sedang | Tinggi         |
| Opus   | High     | Kecil  | Sedang         |

## File Output

Lokasi: `/storage/emulated/0/Download/` (folder Download Android)

Nama file: Sesuai judul video YouTube dengan format yang dipilih

Metadata otomatis: Title, Artist, Album (jika tersedia dari YouTube)

## Kontribusi

Pull requests welcome! Untuk perubahan besar, silakan buka issue terlebih dahulu.

## License

MIT License - bebas digunakan dan dimodifikasi

## Credits

- [yt-dlp](https://github.com/yt-dlp/yt-dlp) - YouTube downloader
- [LyricsGenius](https://github.com/johnwmillr/LyricsGenius) - Genius API wrapper
- [Mutagen](https://github.com/quodlibet/mutagen) - Audio metadata handler

## Changelog

### v1.0
- Initial release
- Support multi-format audio
- Embed thumbnail
- Auto lyrics dari Genius API
- Termux optimization

---

**Dibuat dengan ❤️ untuk Termux users**

Jika berguna, jangan lupa ⭐ star repo ini!
