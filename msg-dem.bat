@echo off
title Messages Amusants

REM Ajout du script au dossier de démarrage
set "startup_folder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
copy "%~f0" "%startup_folder%"

REM Liste des messages
set messages[1]="Vous vous demandez pourquoi vous êtes ici? Moi aussi!"
set messages[2]="Avez-vous déjà remarqué à quel point les chaussettes disparaissent mystérieusement dans la machine à laver?"
set messages[3]="Les pingouins sont-ils juste des gothiques de la banquise?"
set messages[4]="Savez-vous comment on appelle un astronaute qui a oublié de verrouiller la porte de sa fusée? Un étourdistronaute!"
set messages[5]="Quand rien ne semble aller, prenez une pause café... puis paniquez!"
set messages[6]="Pourquoi les poules ne savent-elles jamais jouer au piano? Parce qu'elles utilisent toujours les mauvais clés!"
set messages[7]="Les végétariens mangent-ils des écureuils végétariens?"
set messages[8]="Le saviez-vous? 98% des statistiques sont inventées sur le moment."
set messages[9]="J'ai essayé de prendre une journée de repos. Maintenant, j'ai besoin de deux jours de repos pour me remettre de ma journée de repos."
set messages[10]="Pourquoi ne faut-il jamais jouer aux cache-cache avec des montres? Parce que, à un moment donné, elles vont se cacher et vous ne pourrez plus les retrouver!"

REM Fonction pour afficher un message aléatoire à un emplacement aléatoire
:showMessage
set /a "posX=%RANDOM% %% 80 + 1"
set /a "posY=%RANDOM% %% 20 + 1"
set "messageIndex=%RANDOM% %% 10 + 1"
echo %messages[%messageIndex%]%
set "msg=%messages[%messageIndex%]%"
msg * /time:3 /w /v /title "Message Amusant" "%msg%" /position:%posX%,%posY%
goto :eof

REM Boucle pour afficher les messages jusqu'à ce que l'utilisateur ferme toutes les fenêtres
:mainLoop
call :showMessage
call :showMessage
pause >nul
goto mainLoop
