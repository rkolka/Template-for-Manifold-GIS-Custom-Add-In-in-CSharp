
@echo off
echo ------- This creates a directory $safeprojectname$ 
echo ------- under %programfiles%\Manifold System\Config\Add-Ins\ 
echo ------- and copies some files there.
echo ------- You must have permission to write to %programfiles%\Manifold System\Config

mkdir "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$"
copy $safeprojectname$.dll "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\"
copy $safeprojectname$.xml "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\"
copy $safeprojectname$.png "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\"
copy uninstall_$safeprojectname$.bat "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\"
copy readme.txt "%programfiles%\Manifold System\Config\Add-Ins\$safeprojectname$\"
pause