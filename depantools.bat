:: ---------------------------------
:: --        DEPANTOOLS.BAT       --
:: --         Version 1.0         --
:: ---------------------------------

@echo off
title DepanTools.bat
color 02
call :about
FSUTIL dirty query %SystemDrive% >nul
IF %ERRORLEVEL% EQU 0 goto :admin
goto :noadmin
:admin
echo    ----- Informations ------
echo.
@ver
echo.
echo  **********************************
echo  Attention DepanTools est un outil
echo  de maintenance, l'auteur ne pourra
echo  etre tenu responsable de l'usage
echo    que vous pourrez en faire !
echo  **********************************
echo.
pause
:: ******************** MENU PRINCIPAL *****************************
:menuprin
cls & echo. & echo. & echo.
echo    --------------------
echo    -- Menu Principal --
echo    --------------------
echo.
echo    1. Menu Information
echo    2. Menu Outils Windows
echo    3. Menu Points Restauration
echo    4. Menu Reparation Windows
echo    5. Menu Comptes utilisateurs
echo    6. Menu Securite
echo    7. Menu Reseau
echo    8. Menu Energie et Alimentation
echo    9. Menu Arret de Windows
echo   10. Menu Documentation
echo   11. Quitter
echo.
set /p reponse="Quel menu voulez-vous executer ? "
If /i "%reponse%"=="1" goto :menuinfo
If /i "%reponse%"=="2" goto :menutools
If /i "%reponse%"=="3" goto :menuresto
If /i "%reponse%"=="4" goto :menurepar
If /i "%reponse%"=="5" goto :menucompte
If /i "%reponse%"=="6" goto :menusecu
If /i "%reponse%"=="7" goto :menureseau
If /i "%reponse%"=="8" goto :menualim
If /i "%reponse%"=="9" goto :menuarret
If /i "%reponse%"=="10" goto :menudocu
If /i "%reponse%"=="11" goto :fin
goto :menuprin

:: ******************** MENU INFORMATION *****************************
:menuinfo
cls & echo. & echo. & echo.
echo    ----------------------
echo    -- Menu Information --
echo    ----------------------
echo.
echo    1. Version de Windows
echo    2. 32/64 bits
echo    3. MBR ou GPT 
echo    4. Verif. Activation Windows
echo    5. Type de licence
echo    6. Crack licence Windows
echo    7. Liste Variables d'Env.
echo    8. Liste des utilisateurs
echo    9. Verif. SSD Trim actif (AHCI)
echo   10. Retour menu principal.
echo   11. Quitter
echo.
set /p reponse="Faites votre choix ? "

If /i "%reponse%"=="1" goto :infos01
If /i "%reponse%"=="2" goto :infos02
If /i "%reponse%"=="3" goto :infos03
If /i "%reponse%"=="4" goto :infos04
If /i "%reponse%"=="5" goto :infos05
If /i "%reponse%"=="6" goto :infos06
If /i "%reponse%"=="7" goto :infos07
If /i "%reponse%"=="8" goto :infos08
If /i "%reponse%"=="9" goto :infos09
If /i "%reponse%"=="10" goto :menuprin
If /i "%reponse%"=="11" goto :fin
goto :menuinfo

:: ******************** MENU OUTILS WINDOWS *****************************
:menutools
cls & echo. & echo. & echo.
echo    -------------------------
echo    -- Menu Outils Windows --
echo    -------------------------
echo.
echo    1. Panneau de configuration
echo    2. Gestionnaire de disque
echo    3. Gestionnaire de peripheriques
echo    4. Observateur evenements
echo    5. Optimiser les lecteurs
echo    6. Ajout/supp applications
echo    7. Nettoyage (options avancees)
echo    8. Fenetre des fonctionnalites de Windows
echo    9. Retour menu principal
echo   10. Quitter
echo.
set /p reponse="Faites votre choix ? "

If /i "%reponse%"=="1" goto :outils01
If /i "%reponse%"=="2" goto :outils02
If /i "%reponse%"=="3" goto :outils03
If /i "%reponse%"=="4" goto :outils04
If /i "%reponse%"=="5" goto :outils05
If /i "%reponse%"=="6" goto :outils06
If /i "%reponse%"=="7" goto :outils07
If /i "%reponse%"=="8" goto :outils08
If /i "%reponse%"=="9" goto :menuprin
If /i "%reponse%"=="10" goto :fin
goto :menutools

:: ******************** MENU RESTAURATION WINDOWS *****************************
:menuresto
cls & echo. & echo. & echo.
echo    ------------------------------
echo    -- Menu Points Restauration --
echo    ------------------------------
echo.
echo    1. Verif Restauration activee
echo    2. Liste des points Restauration
echo    3. Creation point Restauration
echo    4. Restauration point
echo    5. Retour menu principal
echo    6. Quitter
echo.
set /p reponse="Faites votre choix ? "

If /i "%reponse%"=="1" goto :res-actif
If /i "%reponse%"=="2" goto :res-list
If /i "%reponse%"=="3" goto :res-creat
If /i "%reponse%"=="4" goto :res-resto
If /i "%reponse%"=="5" goto :menuprin
If /i "%reponse%"=="6" goto :fin
goto :menutools
goto :menuprin

:: ******************** MENU REPARATION WINDOWS *****************************
:menurepar
cls & echo. & echo. & echo.
echo    -----------------------------
echo    -- Menu Reparation Windows --
echo    -----------------------------
echo.
echo    1. Menu CHKDSK /f (court)
echo    2. Menu CHKDSK /f /r
echo    3. SFC
echo    4. DSIM Verifier Image - scanHealth - (echec SFC)
echo    5. DSIM Verif Image Reparable - CheckHealth -
echo    6. DSIM Repare Image - RestoreHealth -
echo    7. Mode sans echec
echo    8. Retour menu principal
echo    9. Quitter
echo.
set /p reponse="Faites votre choix ? "

If /i "%reponse%"=="1" goto :repar01
If /i "%reponse%"=="2" goto :repar02
If /i "%reponse%"=="3" goto :repar03
If /i "%reponse%"=="4" goto :repar04
If /i "%reponse%"=="5" goto :repar05
If /i "%reponse%"=="6" goto :repar06
If /i "%reponse%"=="7" goto :repar07
If /i "%reponse%"=="8" goto :menuprin
If /i "%reponse%"=="9" goto :fin
goto :menurepar


:: ******************** MENU COMPTE *****************************
:menucompte
cls & echo. & echo. & echo.
echo    -------------------------------
echo    -- Menu Comptes utilisateurs --
echo    -------------------------------
echo.
echo    1. Lister les differents Comptes
echo    2. Lister les differents Comptes en detail
echo    3. Verifier activation compte administrateur integre
echo    4. Activer compte administrateur integre
echo    5. Desactiver compte administrateur integre
echo    6. Retour menu principal
echo    7. Quitter
echo.
set /p reponse="Faites votre choix ? "

If /i "%reponse%"=="1" goto :user-list
If /i "%reponse%"=="2" goto :user-alist
If /i "%reponse%"=="3" goto :admin-actif
If /i "%reponse%"=="4" goto :on-admin
If /i "%reponse%"=="5" goto :off-admin
If /i "%reponse%"=="6" goto :menuprin
If /i "%reponse%"=="7" goto :fin
goto :menucompte

:: ************************** MENU SECURITE *********************************
:menusecu
cls & echo. & echo. & echo.
echo    -----------------------------
echo    --       Menu Securite     --
echo    -----------------------------
echo.
echo    1. Activer UAC
echo    2. Desactiver UAC
echo    3. Fenetre Securite Windows
echo    4. Lancer MRT (Malicious Removal Tool)
echo    5. Retour menu principal
echo    6. Quitter
echo.
set /p reponse="Faites votre choix ? "

If /i "%reponse%"=="1" goto :on-uac
If /i "%reponse%"=="2" goto :off-uac
If /i "%reponse%"=="3" goto :win-secu
If /i "%reponse%"=="4" goto :lancer-mrt
If /i "%reponse%"=="5" goto :menuprin
If /i "%reponse%"=="6" goto :fin
goto :menusecu

:: ******************** MENU RESEAU *****************************
:menureseau
cls & echo. & echo. & echo.
echo    -----------------------------
echo    --       Menu Reseau       --
echo    -----------------------------
echo.
echo    1. list config IP actuelle
echo    2. Config complete du reseau (/all)
echo    3. Ping Google
echo    4. Affiche le cache DNS (/displaydns)
echo    5. Vide le cache DNS (/flushdns)
echo    6. Libere config DHCP (/release) 
echo    7. Renouvelle le DHCP (/renew)
echo    8. Reinitialise le reseau (Winsock)
echo    9. Retour menu principal
echo   10. Quitter
echo.
set /p reponse="Faites votre choix ? "

If /i "%reponse%"=="1" goto :res-ip
If /i "%reponse%"=="2" goto :res-all
If /i "%reponse%"=="3" goto :res-ping
If /i "%reponse%"=="4" goto :res-dns
If /i "%reponse%"=="5" goto :res-dnsraz
If /i "%reponse%"=="6" goto :res-razdhcp
If /i "%reponse%"=="7" goto :res-newdhcp
If /i "%reponse%"=="8" goto :res-init
If /i "%reponse%"=="9" goto :menuprin
If /i "%reponse%"=="10" goto :fin
goto :menureseau

:: ******************** MENU ENERGIE & ALIMENTATION *****************************
:menualim
cls & echo. & echo. & echo.
echo    ---------------------------------------------
echo    -------- Menu Energie et Alimentation -------
echo    ---------------------------------------------
echo.
echo    1. Liste mode de gestion d'energie 
echo    2. Analyse consommation energie
echo    3. Rapport de la batterie
echo    4. Desactiver la veille prolongee
echo    5. Activer la veille prolongee
echo    6. Retour menu principal
echo    7. Quitter
echo.
set /p reponse="Faites votre choix ? "

If /i "%reponse%"=="1" goto :mode-energie
If /i "%reponse%"=="2" goto :conso-energie
If /i "%reponse%"=="3" goto :batterie
If /i "%reponse%"=="4" goto :veille-off
If /i "%reponse%"=="5" goto :veille-on
If /i "%reponse%"=="6" goto :menuprin
If /i "%reponse%"=="7" goto :fin
goto :menualim

:: ******************** MENU ARRET DE WINDOWS *****************************
:menuarret
cls & echo. & echo. & echo.
echo    ---------------------------------------
echo    -------- Menu Arret de Windows --------
echo    ---------------------------------------
echo.
echo    1. Redemarrer Windows (10s)
echo    2. Arret de Windows (10s)
echo    3. Forcer l'arret de Windows
echo    4. Redemarrer sur les options de recuperation
echo    5. Retour menu principal
echo    6. Quitter
echo.
set /p reponse="Faites votre choix ? "

If /i "%reponse%"=="1" goto :reboot
If /i "%reponse%"=="2" goto :stop30
If /i "%reponse%"=="3" goto :stop
If /i "%reponse%"=="4" goto :reboot-rec
If /i "%reponse%"=="5" goto :menuprin
If /i "%reponse%"=="6" goto :fin
goto :menuarret
:: ******************** MENU DOCUMENTATION *****************************
:menudocu
cls & echo. & echo. & echo.
echo    ------------------------
echo    -- Menu Documentation --
echo    ------------------------
echo.
echo    1. Acceder BIOS et Boot Menu
echo    2. Activer/desactiver SmartScreen
echo    3. Telechargement ISO Windows - Office
echo    4. Informations sur DepanTools.bat
echo    5. Retour menu principal
echo    6. Quitter
echo.
set /p reponse="Faites votre choix ? "

If /i "%reponse%"=="1" goto :doc-bios
If /i "%reponse%"=="2" goto :doc-smart
If /i "%reponse%"=="3" goto :doc-isowin
If /i "%reponse%"=="4" goto :doc-tools
If /i "%reponse%"=="5" goto :menuprin
If /i "%reponse%"=="6" goto :fin
goto :menudocu

:: ********************************************************************
::                   Programmes & sous-programmes
:: ********************************************************************

:: quitte le programme
:fin
cls & echo. & echo. & echo.
echo Merci d'avoir utiliser DepanTools...
echo. & echo. & echo.
pause
exit

:: ************************ INFORMATIONS *******************************

:: Version de Windows
:infos01
cls & echo. & echo. & echo.
echo Version Build       Nom de code           Date
echo  1507   10240   Threshold 1   W10        07/2015
echo  1511   10586   Threshold 2   W10-1511   10/2015
echo  1607   14393    Redstone 1   W10-1607   08/2016
echo  1703   15063    Redstone 2   W10-1703   04/2017
echo  1709   16299    Redstone 3   W10-1709   10/2017
echo  1803   17134    Redstone 4   W10-1803   04/2018
echo  1809   17763    Redstone 5   W10-1809   10/2018
echo  1903   18362       19H1      W10-1903   05/2019
echo  1909   18363       19H2      W10-1909   11/2019
echo  2004   19041       20H1      W10-2004   05/2020
echo  20H2   19042       20H2      W10-20H2   10/2020
echo  21H1   19043       21H1      W10-21H1   05/2021
start winver
echo. & echo. & echo.
pause
goto :menuinfo

:: verification 32/64 bits
:infos02
cls & echo. & echo. & echo.
IF "%PROCESSOR_ARCHITECTURE%"=="x86" (set bit=x86) else (set bit=x64)
if "%bit%"=="x86" echo Architecture 32 bits
if "%bit%"=="x64" echo Architecture 64 bits
echo. & echo. & echo.
pause
goto :menuinfo

:: disque mbr ou gpt ?
:infos03
cls & echo. & echo. & echo. & echo Patientez...
powershell -command "get-disk"
echo. & echo. & echo.
pause
goto :menuinfo

:: vérification activation licence de Windows
:infos04
cls & echo. & echo. & echo.
start slmgr.vbs /xpr
echo. & echo. & echo.
echo Dans la boite de dialogue Windows "Windows Script Host", si vous voyez :
echo.
echo    "L'ordinateur est definitivement active" : Windows est active
echo.
echo    "Status de la licence : notification" : Windows n'est pas active
echo.
echo    "L'activation en volume expirera le XX/XX/XX...." : Windows est active de type Volume KMS
echo.
pause
goto :menuinfo

:: Type de licence
:infos05
cls & echo. & echo. & echo.
start slmgr.vbs /dli
echo. & echo.
echo                              Rappel
echo.
echo "Etat de la licence" indique si Windows est active ou non 
echo.
echo.
pause
goto :menuinfo

:: Crack licence Windows
:infos06
cls & echo. & echo. & echo.
echo Recherche de crack Windows
echo.
echo   -- liste des fichiers et repertoires trouves --
echo.
if exist "%ProgramFiles%\KMSpico" echo C:\Program Files\KMSpico : TROUVE
if exist "%ProgramFiles%\KMSauto" echo C:\Program Files\KMSauto : TROUVE
if exist "%windir%\AutoKMS" echo C:\Windows\AutoKMS : TROUVE
if exist "%ProgramData%\Microsoft Toolkit" echo c:\ProgramData\Microsoft Toolkit : TROUVE
if exist "%windir%\SECOH-QAD.dll" echo C:\Windows\SECOH-QAD.dll : TROUVE
if exist "%windir%\SECOH-QAD.exe" echo C:\Windows\SECOH-QAD.exe : TROUVE
echo.
echo   Si rien n'a ete trouve, cela ne veut rien dire !
echo. & echo.
pause
goto :menuinfo

:infos07
cls
set
pause
goto :menuinfo

:infos08
cls & echo. & echo. & echo.
net user
echo. & echo. & echo.
pause
goto :menuinfo

:infos09
cls & echo. & echo. & echo.
fsutil behavior query disabledeletenotify
echo. & echo.
echo  Si DisableDeleteNotify = 0 alors OK (TRIM actif)
echo.
echo  Si DisableDeleteNotify = 1 alors TRIM non actif
echo.
echo  Verifier l'option AHCI qui doit etre actif dans le BIOS/UEFI
echo.
echo  Si actif dans le BIOS/UEFI, alors tapez la commande 
echo     "fsutil behavior set disabledeletenotify 0"
echo.
pause
goto :menuinfo

:: ************************ OUTILS *******************************

:: Panneau de configuration
:outils01
cls
start control
pause
goto :menutools

:: Gestionnaire de disque
:outils02
cls
start diskmgmt.msc
pause
goto :menutools

:: Gestionnaire de peripherique
:outils03
cls
start hdwwiz.cpl
pause
goto :menutools

:: Observateur evenements
:outils04
cls
start eventvwr
pause
goto :menutools

:: Optimiser les lecteurs
:outils05
cls
start dfrgui
pause
goto :menutools

:: Ajout / Suppression des applications
:outils06
cls
start appwiz.cpl
pause
goto :menutools

:: Nettoyage
:outils07
cls
start %SystemRoot%\System32\Cmd.exe /c Cleanmgr /sageset:65535 /sagerun:65535
pause
goto :menutools

:: Fenêtre des fonctionnalités de Windows
:outils08
cls
start optionalfeatures
pause
goto :menutools


:: *********************** RESTAURATIONS ******************************

:: Restauration actif ?
:res-actif
cls
start SystemPropertiesProtection.exe
echo.
echo Verifier le disque local (Systeme)
echo.
pause
goto :menuresto

:: liste des points de restauration
:res-list
cls
vssadmin List Shadows
pause
goto :menuresto

:: Création d'un point de restauration
:res-creat
cls
start SystemPropertiesProtection.exe
echo.
echo cliquez sur le bouton "Creer..." et suivre les instructions.
echo.
pause
goto :menuresto

:: Restaurer un point de restauration
:res-resto
cls
start rstrui.exe
echo.
echo cliquez sur le bouton "Suivant >" pour commencer a restaurer un point.
echo.
pause
goto :menuresto

:: ************************ REPARATIONS *******************************

:: CHKDSK /f /r
:repar01
cls & echo.
echo Patientez...
echo. 
powershell -command "get-disk"
echo.
powershell -command "fsutil fsinfo drives"
echo. & echo.
echo 1. CHKDSK C (court)
echo 2. CHKDSK D (court)
echo 3. CHKDSK E (court)
echo 4. CHKDSK F (court)
echo 5. CHKDSK G (court)
echo 6. CHKDSK H (court)
echo 7. Retour menu principal
echo 8. Quitter
echo.
call :inf-chkdsk
set /p reponse="Faites votre choix ? "
If /i "%reponse%"=="1" goto :chk-c
If /i "%reponse%"=="2" goto :chk-d
If /i "%reponse%"=="3" goto :chk-e
If /i "%reponse%"=="4" goto :chk-f
If /i "%reponse%"=="5" goto :chk-g
If /i "%reponse%"=="6" goto :chk-h
If /i "%reponse%"=="7" goto :menuprin
If /i "%reponse%"=="8" goto :fin
goto :repar01

:chk-c
echo lecteur C
CHKDSK c: /F
goto :chk-end
:chk-d
echo lecteur D
CHKDSK d: /F
goto :chk-end
:chk-e
echo lecteur E
CHKDSK e: /F
goto :chk-end
:chk-f
echo lecteur F
CHKDSK f: /F
goto :chk-end
:chk-g
echo lecteur G
CHKDSK g: /F
goto :chk-end
:chk-h
echo lecteur H
CHKDSK h: /F
:chk-end
pause
goto :menurepar

:: CHKDSK /f /r
:repar02
cls & echo.
echo Patientez...
echo. 
powershell -command "get-disk"
echo.
powershell -command "fsutil fsinfo drives"
echo. & echo.
echo 1. CHKDSK C (long)
echo 2. CHKDSK D (long)
echo 3. CHKDSK E (long)
echo 4. CHKDSK F (long)
echo 5. CHKDSK G (long)
echo 6. CHKDSK H (long)
echo 7. Retour menu principal
echo 8. Quitter
echo.
call :inf-chkdsk
set /p reponse="Faites votre choix ? "
If /i "%reponse%"=="1" goto :chkdsk-c
If /i "%reponse%"=="2" goto :chkdsk-d
If /i "%reponse%"=="3" goto :chkdsk-e
If /i "%reponse%"=="4" goto :chkdsk-f
If /i "%reponse%"=="5" goto :chkdsk-g
If /i "%reponse%"=="6" goto :chkdsk-h
If /i "%reponse%"=="7" goto :menuprin
If /i "%reponse%"=="8" goto :fin
goto :repar02

:chkdsk-c
echo lecteur C
CHKDSK c: /F /R
goto :chk-end
:chkdsk-d
echo lecteur D
CHKDSK d: /F /R
goto :chk-end
:chkdsk-e
echo lecteur E
CHKDSK e: /F /R
goto :chk-end
:chkdsk-f
echo lecteur F
CHKDSK f: /F /R
goto :chk-end
:chkdsk-g
echo lecteur G
CHKDSK g: /F /R
goto :chk-end
:chkdsk-h
echo lecteur H
CHKDSK h: /F /R
:chk-end
pause
goto :menurepar

:: SFC
:repar03
cls
sfc.exe /scannow
:: Recherche toutes les entrées commencant par [SR] et 
:: enregistre celle-ci dans le fichier SFC-details.txt
findstr /c:"[SR]" %windir%\logs\cbs\cbs.log >"%userprofile%\desktop\SFC-Details.txt"
:: Affiche le fichier SFC-details.txt si existe
if exist "%userprofile%\desktop\SFC-Details.txt" start notepad.exe "%userprofile%\desktop\SFC-Details.txt"
pause
goto :menurepar

:: DISM : vérification image
:repar04
cls
if exist "%windir%\logs\cbs\cbs.log" (del /f /q "%windir%\logs\cbs\cbs.log" >nul 2>&1)
Dism /online /cleanup-Image /scanHealth
pause
goto :menurepar

:: DISM : vérification si image réparable
:repar05
cls
Dism /online /cleanup-Image /CheckHealth
pause
goto :menurepar

:: DISM : réparer l'image
:repar06
cls
Dism /online /cleanup-Image /RestoreHealth
pause
goto :menurepar

:: Démarrer en Mode Sans Echec
:repar07
pause
goto :menurepar

:: ************************** COMPTES UTILISATEURS *********************************

:user-list
cls
echo. & echo.
net user
echo.
pause
goto :menucompte

:user-alist
cls
echo. & echo.
powershell -command "wmic useraccount list full"
echo.
echo  ---- Informations ----
echo  name : nom du compte
echo  Status : OK (actif), Degraded (non actif)
echo  Le compte "name = Administrateur" est un compte admin desactive par defaut
echo.
pause
goto :menucompte

:admin-actif

pause
goto :menucompte

:on-admin

pause
goto :menucompte

:off-admin

pause
goto :menucompte

:: ************************** SECURITE *********************************

:on-uac
cls
echo.
echo     Attention !!! Modification de la base de registres
echo.
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f
echo.
echo  **** ACTIVATION DE L'UAC ****
echo.
pause
goto :menusecu

:off-uac
echo.
echo     Attention !!! Modification de la base de registres
echo.
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
echo.
echo  **** DESACTIVATION DE L'UAC ****
echo.
pause
goto :menusecu

:win-secu
cls 
start ms-settings:windowsdefender
echo.
echo   Ouverture de la fenetre "Securite Windows"
echo.
pause
goto :menusecu

:: MRT Malicious Removal Tool
:lancer-mrt
cls
start mrt
echo. & echo.
echo Le rapport de MRT se trouve dans le dossier
echo         C:\Windows\debug\mrt.log
echo. & echo.
pause
goto :menusecu

:: ************************** RESEAU *********************************

:: Affiche la config IP actuelle
:res-ip
cls
ipconfig
pause
goto :menureseau

:: Affiche toute la configuration réseau
:res-all
cls
ipconfig /all
pause
goto :menureseau

:: Lance un ping www.google.com
:res-ping
cls
pause 
echo.
echo   Touche Ctrl + C pour stopper
echo.
pause
ping www.google.com
pause
goto :menureseau

:: Affiche le cache DNS
:res-dns
cls
ipconfig /displaydns
pause
goto :menureseau

:: Vide le cache DNS
:res-dnsraz
cls
ipconfig /flushdns
pause
goto :menureseau

:: Libère la config DHCP
:res-razdhcp
cls
ipconfig /release
echo.
echo   ATTENTION, il sera necessaire de rebooter la machine
echo   ou
echo   denouveler le DHCP
echo.
pause
goto :menureseau

:: Renouvelle le DHCP
:res-newdhcp
cls
ipconfig /renew
pause
goto :menureseau

:: Réinitialise le reseau (couche Winsock)
:res-init
cls
echo.
echo    ATTENTION a la fin du script la machine
echo    va redémarrer automatiquement dans 30s
echo.
echo    Touche Ctrl + C pour annuler le script
echo.
netsh winsock reset 
netsh winhttp reset proxy 
netsh winhttp reset tracing 
netsh winsock reset catalog 
netsh int ip reset all 
netsh int ipv4 reset catalog 
netsh int ipv6 reset catalog
ipconfig /flushdns
shutdown /r /t 30 /c "Redemarrage de l'ordinateur dans 30 secondes"
goto :menureseau

:: ************************ Energie & Consommation *******************************

:: liste des différents mode d'énergie
:mode-energie
cls & echo. & echo. & echo.
powercfg /l
echo. & echo. & echo.
pause
goto :menualim

:: Analyse les problèmes consommation et d'autonomie
:conso-energie
cls & echo. & echo. & echo. & echo Patinetez...
echo.
powercfg /energy
echo. & echo. & echo.
pause
goto :menualim

:: Génère un rapport d'utilisation de batterie
:batterie
cls & echo. & echo. & echo.
powercfg /batteryreport
echo. & echo. & echo.
echo   A la section "Installed batteries"
echo   L'opération :  ("Full Charge Capacity" / "Design Capacity") * 100
echo   donne le % de capacité restante de la batterie par rapport à une batterie neuve
echo. & echo.
echo   A la section "Battery capacity history" vous montre
echo           la capacite reelle de la batterie
echo. & echo.
echo   Comment estimer l'autonomie de la batterie
echo   A la section "Battery life estimates"
echo   On peut voir une estimation de la duree 
echo   d'utilisation de la batterie actuelle en 
echo       fonction d'une batterie neuve.
echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
echo   ATTENTION ce n'est qu'une estimation et cela
echo      peut fortement varier en fonction de
echo          l'utilisation de l'ordinateur
pause
goto :menualim

:: Désactive la veille prolongée
:veille-off
cls & echo. & echo. & echo.
powercfg -h off
echo. & echo. & echo.
pause
goto :menualim

:: Active la veille prolongée
:veille-on
cls & echo. & echo. & echo.
powercfg -h on
echo. & echo. & echo.
pause
goto :menualim

:: ************************ Arret de Windows *******************************

:: Reboot de Windows
:reboot
cls & echo. & echo. & echo.
shutdown /r /t 10 /c "Redemarrage de Windows dans 10 secondes"
exit

:: Arret de Windows
:stop30
cls & echo. & echo. & echo.
shutdown /s /t 10 /c "Arret de Windows dans 10 secondes"
exit

:: Forcer l'arret de Windows
:stop
cls & echo. & echo. & echo.
shutdown /s /f /t 0
exit

:: Reboot sur les options de recupération
:reboot-rec
cls & echo. & echo. & echo.
shutdown /o /r /c "Redemarrage sur les options de recuperation"
exit

:: ************************ Documentation *******************************

:: Documentation pour accéder au BIOS et Boot Menu
:doc-bios
cls & echo. & echo. & echo.
echo              -- Comment acceder au BIOS --
echo.
echo   Touches standards : Del, Supp, Tab, F1, F2, F3, F9, F10, F12
echo.
echo   Acer, Asus, Dell       : F2
echo   Fujitsu, Packard Bell  : F2
echo   Sony, Samsung, Toshiba : F2
echo   Lenovo                 : F1, bouton Novo
echo   HP, Compaq             : F10
echo   Sony                   : F1, F2, F3, Bouton assistance
echo   Microsoft              : Vol Bas, Vol Haut
echo. & echo. & echo.
echo            -- Comment acceder au Boot Menu --
echo.
echo            Attention pour cetains ordinateurs,
echo        il faut activer le Boot Menu dans le BIOS !
echo.
echo   Touches standards : ESC, F2, F8, F10, F9, F12, ESC + F9
echo.
echo   Acer, Dell, Fujitsu    : F12    
echo   Packard Bell           : F12
echo   Lenovo                 : F12, Fn + F11, Bouton Novo
echo   Asus, HP               : Echap
echo   Toshiba, Compaq        : Echap
echo   Sony                   : F11, Bouton assistance
echo   Samsung                : F10
echo.
pause
goto :menudocu

:: Activer ou Déactiver SmartScreen
:doc-smart
cls & echo. & echo. & echo.
echo              -- Comment desactiver SmartScreen --
echo.
start ms-settings:windowsdefender
echo  Cliquez sur "Controle des applications et du navigateur"
echo.
echo  Desacter "Verifier les applications et les fichiers"
echo  Desacter "SmartScreen pour Microsoft Edge"
echo  Desacter "SmartScreen pour les applications du Microsoft Store"
echo. & echo.
pause
goto :menudocu

:: Téléchargement des ISO de Windows et Office
:doc-isowin
start http://tb.rg-adguard.net/public.php
cls & echo. & echo. & echo.
echo          -- Telechargement des ISO de Windows et Office --
echo.
echo                https://tb.rg-adguard.net/public.php
echo. & echo.
pause
goto :menudocu

:: Informations sur l'outils DepanTools.bat
:doc-tools
call :about
pause
goto :menudocu

:: Mode non administrateur
:noadmin
echo.
echo   *************************************************
echo   ** VOUS N'ETES PAS EN MODE ADMINISTRATEUR !!!! **
echo   **                     --                      **
echo   **     Veuillez lancer le logiciel dans un     **
echo   **      terminal en mode administrateur !      **
echo   **                                             **
echo   **                   merci !                   **
echo   **                                             **
echo   *************************************************
echo.
pause
exit

:: ************************ LES SOUS-PROGRAMMES *******************************

:inf-chkdsk
echo.
echo #########################################################
echo     Pour recuperer les fichiers CHK d'un scan CHKDSK
echo                utiliser l'outil CHK-BACK
echo.
echo     https://trcdatarecovery.com/software-apps/chk-back
echo ##########################################################
echo.
goto :eof

:about
cls & echo. & echo.
echo  +--------------------------------------+
echo  !     DepanTools       version 1.0     !
echo  !                                      !
echo  !    par chris.vasseur.dev@gmail.com   !
echo  +--------------------------------------+
echo. & echo.
goto :eof