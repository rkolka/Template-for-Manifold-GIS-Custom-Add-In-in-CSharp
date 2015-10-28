@echo off
echo Zipping files and putting "Template for Manifold GIS Custom Add-In in C#.zip" 
echo to %userprofile%\Documents\Visual Studio 2013\Templates\ProjectTemplates\
echo NB! Requires 7-Zip

"%programfiles%\7-Zip\7z.exe" a -tzip "%userprofile%\Documents\Visual Studio 2013\Templates\ProjectTemplates\Template for Manifold GIS Custom Add-In in C#.zip" @___filestozip.txt

pause