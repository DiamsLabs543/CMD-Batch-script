@echo off
echo ^<html^>^<head^>^<title^>BSOD^</title^> > bsod.hta
echo. >> bsod.hta
echo ^<hta:application >> bsod.hta
echo applicationname="BSOD"  >> bsod.hta
echo version="1.0" >> bsod.hta
echo maximizebutton="no" >> bsod.hta
echo minimizebutton="no" >> bsod.hta
echo sysmenu="no" >> bsod.hta
echo Caption="no" >> bsod.hta
echo windowstate="maximize"/^> >> bsod.hta
echo. >> bsod.hta
echo ^</head^>^<body bgcolor="#000088" scroll="no"^> >> bsod.hta
echo ^<font face="Lucida Console" size="4" color="#FFFFFF"^> >> bsod.hta
echo ^<p^>Un praublaime a aitez deteqtez sur vautre aurdinateur^</p^> >> bsod.hta
echo. >> bsod.hta
echo ^<p^>CHALEUR_HERROR^</p^> >> bsod.hta
echo. >> bsod.hta
echo ^<p^>Si ses la preumiere fois que vou recevez cet ereur suivez les aitapes ci-dessous :^</p^> >> bsod.hta
echo. >> bsod.hta
echo ^<p^>1. Vairifier que l'ordinateur sois impermaiable et vairifiez la tanpaiatur extairieur.^</p^> >> bsod.hta
echo. >> bsod.hta
echo ^<p^>2. Placer une bouteille d'au devant l'aurdinateur et ouvrir les feunaitre.^</p^> >> bsod.hta
echo. >> bsod.hta
echo ^<p^>3. Placer des serviaites humide su l'audrdi^</p^> >> bsod.hta
echo. >> bsod.hta
echo ^<p^>Information teqnike :^</p^> >> bsod.hta
echo. >> bsod.hta
echo ^<p^>*** STOP: 0x000000D1 (0x0000000C,0x00000002,0x00000000,0xF86B5A89)^</p^> >> bsod.hta
echo. >> bsod.hta
echo. >> bsod.hta
echo ^<p^>***       gv3.sys - CPU a 50^°C..., UCU a 68^°C^</p^> >> bsod.hta
echo. >> bsod.hta
echo ^<p^>Ouch je meur de chau^</p^> >> bsod.hta
echo ^<p^>Donne de l'au stp...^</p^> >> bsod.hta
echo ^<p^>Si le praublaime y persist contact ton administrateur reso frer !^</p^> >> bsod.hta
echo. >> bsod.hta
echo. >> bsod.hta
echo ^</font^> >> bsod.hta
echo ^</body^>^</html^> >> bsod.hta
start "" /wait "bsod.hta"