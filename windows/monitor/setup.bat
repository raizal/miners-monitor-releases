@echo off
set /p STB_PASSWORD=Masukkan password untuk root STB anda: 
echo STB_USERNAME=root > .env
echo STB_PASSWORD=%STB_PASSWORD% >> .env
echo "Setup selesai"