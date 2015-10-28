@echo off
setlocal
if exist "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\" GOTO PROMPT
GOTO NOTHINGTOUNINSTALL

:PROMPT
SET /P AREYOUSURE=Are you sure you want to delete $safeprojectname$ (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO DONOTWANT
GOTO DOUNINST


:DOUNINST
cd..
rmdir /S /Q "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\"
if exist "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\" GOTO NOLUCK
echo $safeprojectname$ successfully uninstalled
goto END

:NOLUCK
echo Error: Addin directory still exists. Perhaps you have Manifold running.
echo %programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\
GOTO END


:DONOTWANT
echo Uninstall skipped.
GOTO END

:NOTHINGTOUNINSTALL
echo Nothing to uninstall
echo $safeprojectname$ directory does not exist
GOTO END

:END
endlocal
pause
