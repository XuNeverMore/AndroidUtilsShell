@echo off

set root="%cd%"
copy %1 1.rar

set rar="%ProgramFiles%\WinRAR\winrar.exe"


rem ��ѹapk ��1�ļ���
%rar% x -l 1.rar 1\

cd "1\META-INF"
dir

keytool -printcert -file *.RSA

cd %root%
Del /s /q 1.rar
@rem Del /s /q 1