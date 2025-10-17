@echo off
title YT Playlist to MP3 Downloader
echo =======================================
echo   YouTube Playlist to MP3 Downloader
echo =======================================
echo.

:: Minta input link playlist
set /p url=Masukkan link playlist YouTube: 

:: Cek kalau kosong
if "%url%"=="" (
    echo Error: Tidak ada link yang dimasukkan.
    pause
    exit /b
)

:: Jalankan yt-dlp dengan link yang dimasukkan
yt-dlp --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --output "%USERPROFILE%\Downloads\%%(playlist_title)s/%%(title)s.%%(ext)s" --yes-playlist "%url%"

echo.
echo =======================================
echo Selesai! File MP3 tersimpan di folder Downloads.
echo =======================================
pause
