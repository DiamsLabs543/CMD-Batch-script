@echo off
setlocal enabledelayedexpansion

:: Dossier courant (le dossier ou se trouve le script)
set "current_folder=%~dp0"

:: Dossier de destination dans le dossier courant
set "destination_folder=%current_folder%\destination"

:: Cree le dossier de destination s'il n'existe pas
if not exist "%destination_folder%" (
    echo Creation du dossier de destination : "%destination_folder%"
    mkdir "%destination_folder%"
)

:: Boucle sur chaque sous-dossier dans le dossier courant
for /d %%d in ("%current_folder%\*") do (
    if /i "%%~nxd" neq "destination" (
        set "folder_name=%%~nxd"
        echo Traitement du dossier : "%%d"

        :: Boucle sur chaque fichier dans le sous-dossier courant
        for %%f in ("%%d\*.*") do (
            echo Fichier trouve : "%%f"
            set "file_name=%%~nf"
            set "file_extension=%%~xf"
            set "new_file_name=!folder_name!_!file_name!!file_extension!"
            echo Copie et renommage de "%%f" en "%destination_folder%\!new_file_name!"
            copy "%%f" "%destination_folder%\!new_file_name!"
        )
    )
)

echo Les fichiers ont ete copies et renommes avec succes.
pause
