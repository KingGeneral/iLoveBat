@ECHO off
cls
rem Hello Developer, Welcome to iLoveBat files
rem .
rem Really thanks if you can develop this more
rem and add more feature to it.
rem .
rem - iLoveBat Team

:start
ECHO.
ECHO =============================
ECHO iLoveBat Server Script
ECHO =============================
ECHO.
ECHO [ssfweb]  Start laravelproject
ECHO -----------------------------
ECHO [xampp]   Start XAMPP
ECHO [putty]   Start putty
ECHO [wfc]     Start WFC Firewall
ECHO [sqlyog]  Start sqlyog
ECHO [navicat] Start navicat
ECHO [sctree]  Start source tree
ECHO -----------------------------
ECHO [host]    host folder
ECHO [htdocs]  htdocs folder
ECHO -----------------------------
ECHO [log]     Log
ECHO [exit]    Exit
ECHO.
set /p choice=Choose and type the box:
ECHO.
rem if not '%choice%'=='' set choice=%choice:~0;1% ( don`t use this command, because it takes only first digit in the case you type more digits. After that for example choice 23455666 is choice 2 and you get "bye"
if '%choice%'=='' ECHO "%choice%" is not valid please try again
if '%choice%'=='laravelproject' goto laravelproject
if '%choice%'=='putty' goto putty
if '%choice%'=='xampp' goto xampp
if '%choice%'=='wfc' goto wfc
if '%choice%'=='sqlyog' goto sqlyog
if '%choice%'=='navicat' goto navicat
if '%choice%'=='sctree' goto sctree
if '%choice%'=='host' goto host
if '%choice%'=='htdocs' goto htdocs
if '%choice%'=='log' goto log
if '%choice%'=='exit' goto end
ECHO.
goto start

:putty
ECHO Start Putty
start "" "%PROGRAMFILES%\PuTTY\putty.exe"
ECHO.
pause
goto start

:xampp
ECHO Start XAMPP
start "" "%HomeDrive%\xampp\xampp-control.exe"
ECHO.
pause
goto start

:wfc
ECHO Start Windows Firewall Control
start "" "%PROGRAMFILES%\Windows Firewall Control\wfc.exe"
ECHO.
pause
goto start

:sqlyog
ECHO Start SQLyog
start "" "%PROGRAMFILES%\SQLyog\SQLyog.exe"
ECHO.
pause
goto start

:navicat
ECHO Start Navicat
start "" "%PROGRAMFILES%\PremiumSoft\Navicat Premium 12\"
ECHO.
pause
goto start

:sctree
ECHO Start Source Tree
start "" "%LocalAppData%\SourceTree\SourceTree.exe"
ECHO.
pause
goto start

:laravelproject
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
set ip=%ip:~1%
set port=8000
start "" "http://%ip%:%port%"
rem your ip %ip%
cd "%HomeDrive%\xampp\htdocs\laravelproject"
rem start cmd.exe /c "php artisan serve --host=%ip% --port=%port%"
start "" "%PROGRAMFILES%\Git\bin\sh.exe" --login -c "php artisan serve --host=%ip% --port=%port%"
ECHO Start laravelproject
ECHO.
goto start

:host
start "" "%SystemRoot%\System32\drivers\etc"
ECHO Open Host Folder
ECHO.
pause
goto start

:htdocs
start "" "%HomeDrive%\xampp\htdocs"
ECHO Open Htdocs Folder
ECHO.
pause
goto start

:log
ECHO iLoveBat Server Script Logs : 
ECHO.
ECHO [2018/04/12] Make All windows path to Dynamic Links
ECHO [2018/04/09] Fix Git problem when artisan start
ECHO [2018/03/20] First Build
ECHO.
pause
goto Start

:end
exit