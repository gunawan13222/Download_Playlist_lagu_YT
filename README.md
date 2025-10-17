1. Install Python - Download dari https://www.python.org/downloads/ - Saat install centang 'Add
Python to PATH'.
 2. Install yt-dlp - Buka CMD (Admin) - Jalankan: python -m pip install -U yt-dlp - Cek: yt-dlp
--version
3. Install FFmpeg - Cara A (kalau ada winget): winget install ffmpeg - Cara B (manual): •
Download dari https://www.gyan.dev/ffmpeg/builds/ • Pilih Release full build (ZIP) • Extract ke
C:\ffmpeg • Tambahkan C:\ffmpeg\bin ke PATH
4. Uji coba download - Playlist ke MP3: yt-dlp --ignore-errors --format bestaudio --extract-audio
--audio-format mp3 --audio-quality 160K --output
"%USERPROFILE%\Downloads\%(playlist_title)s/%(title)s.mp3" --yes-playlist
"URL_PLAYLIST" - Video tunggal ke MP3: yt-dlp --extract-audio --audio-format mp3
--audio-quality 160K -o "%USERPROFILE%\Downloads\%(title)s.mp3" "URL_VIDEO"
5. Update rutin yt-dlp - Kalau error: yt-dlp -U
