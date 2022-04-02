@echo off

set "passwords="

:ask_password
	set /p STB_PASSWORD=Masukkan password untuk root STB anda:
	IF "%passwords%"=="" (
		set "passwords='%STB_PASSWORD%'"
	) ELSE (
		set "passwords=%passwords%, '%STB_PASSWORD%'"
	)
	set /p HAS_MORE=Apakah ada password lain? (y/n) 
	if /I "%HAS_MORE%"=="y" goto ask_password

echo STB_USERNAME=root > .env
echo STB_PASSWORD="[%passwords%]" >> .env

echo "Setup selesai"
pause