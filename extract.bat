@echo off
setlocal enabledelayedexpansion

:: Dossier courant (le dossier où se trouve le script)
set "current_folder=%~dp0"

:: Dossier de destination dans le dossier courant
set "destination_folder=%current_folder%\destination"

:: Vérifie si le dossier de destination existe, sinon le crée
if not exist "%destination_folder%" (
    echo Creation du dossier de destination : "%destination_folder%"
    mkdir "%destination_folder%"
)

:: Copie récursive des fichiers depuis les sous-dossiers du dossier courant
echo Copie des fichiers depuis les sous-dossiers de : "%current_folder%"
call :CopyFiles "%current_folder%"

echo Les fichiers ont ete copies avec succes.
pause
exit /b

:CopyFiles
:: Fonction pour copier récursivement les fichiers depuis les sous-dossiers
setlocal
set "source_folder=%~1"

:: Copie les fichiers du dossier actuel
for %%f in ("%source_folder%\*") do (
    if not "%%~nf%%~xf"=="%~nx0" (
        if not exist "%%f\" (
            echo Fichier trouve : "%%f"
            copy "%%f" "%destination_folder%\"
        )
    )
)

:: Copie des fichiers des sous-dossiers
for /d %%d in ("%source_folder%\*") do (
    call :CopyFiles "%%d"
)
exit /b
