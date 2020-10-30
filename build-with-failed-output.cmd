@echo off
cd %~dp0
call %~dp0clean.cmd
echo Restore packages via dotnet.exe
rem optional
dotnet restore
echo Build net48 targeted application via dotnet.exe
dotnet build /nologo
if ERRORLEVEL == 0 (
	echo Start Application...
	%~dp0TestApp\bin\Debug\net48\TestApp.exe
)
