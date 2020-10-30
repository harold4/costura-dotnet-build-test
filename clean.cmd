@echo off
echo Remove obj and bin folders
rd %~dp0TestLib\bin /q /s
rd %~dp0TestLib\obj /q /s
rd %~dp0TestApp\bin /q /s
rd %~dp0TestApp\obj /q /s