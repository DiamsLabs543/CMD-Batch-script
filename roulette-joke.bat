@echo off
setlocal enabledelayedexpansion

REM Effacer l'écran
cls

REM Configuration
set "chances=6"

:game_loop
REM Affichage de l'interface
echo.
echo ####################################
echo #                                  #
echo #            BIENVENUE             #
echo #                                  #
echo #   Voici le jeu de la roulette    #
echo #                                  #
echo #          1 chance sur 6          #
echo #            de mourir !           #
echo #                                  #
echo ####################################
echo.

REM Attendre l'appui sur une touche
pause >nul

REM Tirage au sort
set /a "bullet=!random! %% chances"

REM Affichage du résultat
echo.
set "result=Tu as survecu ! (O_o)"
if %bullet% equ 0 set "result=Tu es mort ! (X_x)"
echo %result%

REM Rejouer
cls
goto :game_loop

REM Fin du jeu
echo Merci d'avoir joue !
pause >nul
