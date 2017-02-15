@echo off
setlocal
if exist "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\" GOTO ALREADYINSTALLED
GOTO DOINST


:DOINST
echo ------- Creating directory $safeprojectname$ 
echo ------- under %programfiles%\Manifold System\Config\Add-Ins\ 
mkdir "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$"
if exist "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\" GOTO COPYFILES 
GOTO CANNOTCREATEDIR

:COPYFILES
echo ------- Copying add-in files
copy $safeprojectname$.dll "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\"
copy $safeprojectname$.xml "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\"
copy $safeprojectname$.png "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\"
copy uninstall_$safeprojectname$.bat "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\"
copy readme.txt "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\"
goto END

:CANNOTCREATEDIR
echo Error: Cannot create Addin directory.
echo You must have write permission for %programfiles%\Manifold System\Config
goto END

:ALREADYINSTALLED
echo Error: Cannot install
echo $safeprojectname$ directory already exists
echo Try running %programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\uninstall_$safeprojectname$.bat first
GOTO END

:END
endlocal
pause
