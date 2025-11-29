@echo off
echo setting up system to build the MS-DOS 4.01 SOURCE BAK...
echo do not set cl link masm and only set bakroot since path is set
set CL=
set LINK=
set MASM=
set COUNTRY=usa-ms
set BAKROOT=C:\Working\MS-DOS\v4.0
rem BAKROOT points to the home drive/directory of the sources.
set LIB=%BAKROOT%\SRC\TOOLS\LIB
set INIT=%BAKROOT%\SRC\TOOLS
set INCLUDE=%BAKROOT%\SRC\TOOLS\INC
set PATH=%BAKROOT%\SRC\TOOLS;%PATH%
