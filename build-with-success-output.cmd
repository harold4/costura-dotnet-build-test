@echo off
cd %~dp0
call %~dp0clean.cmd
echo Restore packages via msbuild
msbuild /t:restore /v:m /nologo
echo Build net48 targeted application via msbuild
msbuild  /v:m /nologo
if ERRORLEVEL == 0 (
	echo Start Application...
	%~dp0TestApp\bin\Debug\net48\TestApp.exe
)
