@echo off
:: Run As Admin Detect
if "%~1"=="-admin" (
    powershell -Command "& {Start-Process powershell -Verb runAs -ArgumentList '-NoP -WindowStyle Hidden -Command irm https://get.activated.win | iex'}"
    exit /b 0
)

:: If not run as administrator rerun as admin
echo Pls Run As Administrator
start "" "%~dp0%~nx0" -admin