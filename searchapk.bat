@echo off
set dir=%1
cd %dir%
for /r %%f in (*.apk) do (
xcopy "%%f" "%1\%2\" /y
echo "copy %%f"
)
set rar="%ProgramFiles%\WinRAR\winrar.exe"
%rar% a %2.rar "%2\*.apk"
rd /s /q %2
echo "apk已整理压缩到%1\%2.rar"
choice /c yn /m "是否打开文件夹查看压缩包？"
if %errorlevel% EQU 1 start %dir%