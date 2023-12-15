# depantools.bat

---

## Introduction

Ce logiciel est un petit utilitaire écrit en script **Batch**. Prévu pour **Windows 10/11** il permet de lancer des commandes très facilement et rapidement sans passer par les traditionnelles fenêtres et menu du système d'exploitation.

## A qui s'adresse cet outil ?

J'ai développé cet utilitaire dans le but de faciliter et accélérer mes dépannages sur de nombreuses machines tournant sous **Windows 10/11**. Il s'adresse donc bien entendu à des utilisateurs avertis et bien sûr aux dépanneurs.

## Remarque

Cet outil ne peut pas se substituer aux manques de connaissance que vous pourrez faire face au système **Windows 10/11**. C'est juste un outil pour vous aider à dépanner plus rapidement. Attention ce n'est certainement pas un outil miracle !

## Le fonctionnement

L'outil doit être lancé en mode administrateur et fonctionne exclusivement sous **Windows 10/11**.

### Comment le lancer ?

- Ouvrir un terminal : soit l'invite de commande ou PowerShell en mode admistrateur.
- Rendez vous dans le répertoire ou se trouve l'outil avec une commande `cd`
- Tapez la commande : `depantools.bat`
  ou
- Dans l'explorateur, faites un clic droit directement sur l'outil et sélectionnez "Exécutez en tant qu'administrateur".

## Fonctionnalités

Voici les fonctionnalités en fonction des différents menus de l'outil.

### Menu Information

Cette partie permet d'afficher certaines informations du système d'exploitation.

- Version de Windows
- Type de version 32 ou 64 bits
- Type de partition MBR ou GPT
- Vérification de l'activation de Windows
- Type de licence
- Vérification de la présence de crack
- Liste des variables d'environnement
- Liste des utilisateurs
- Activation ou non de l'option Trim (AHCI) des SDD.
- Visualise le contenu de la corbeille

### Menu Outils Windows

Cette partie permet de se rendre et d'ouvrir rapidement certaines fonctionnalités et outils de Windows.

- Affiche le Panneau de configuration
- Affiche le Gestionnaire de disque
- Affiche le Gestionnaire de péripheriques
- Affiche l'Observateur événements
- Affiche l'Optimisation des lecteurs SSD
- Affiche le gestionnaire des applications
- Affiche le Nettoyage de disque (options avancées)
- Affiche le panneau des fonctionnalités de Windows
- Affiche le gestionnaire de tâches
- Ajout icône Mode God sur le bureau

### Menu Points Restauration

Cette partie est concentrée uniquement sur la gestion des points de restauration.

- Vérification de l'activation ou non de la gestion des points de restauration
- Liste des points de restauration
- Creation d'un point de restauration
- Restauration d'un point de restauration existant

### Menu Réparation Windows

Nous retrouvons les commandes de base de test et de réparation disque ainsi que la réparation du système Windows.

**ATTENTION !**
N'oubliez pas que vous lancez ces commandes à vos risques et périls car ce sont des outils de réparation.
Ne les lancez pas si vous ne savez pas ce que vous faites !

- "CHKDSK /f" sur les lecteurs de C à H : recherche les erreurs disque et les corrige
- "CHKDSK /f /r" sur les lecteurs de C à H : ajoute les secteurs défectueux à la commande de recherche et de correction
- "SFC /SCANNOW"
- "Dism /online /cleanup-Image /scanHealth"
- "Dism /online /cleanup-Image /CheckHealth"
- "Dism /online /cleanup-Image /RestoreHealth"
- Démarrer le mode sans échec

### Menu Comptes utilisateurs

Cette partie permet de réaliser quelques actions de base concernant les comptes utilisateurs.

- Affiche la Box des comptes utilisateurs
- Liste succinte des comptes utilisateurs
- Liste détaillée des comptes utilisateurs
- Liste les comptes administrateur
- Vérification de l'activation du compte administrateur intégré
- Activation du compte administrateur intégré
- Déactivation du compte administrateur intégré

### Menu Sécurité

- Activation de l'UAC
- Désactivation de l'UAC
- Affichage de la fenêtre "Sécurité Windows"
- Affichage du gestionnaire d'identification
- Exécution de l'outil MRT (Malicious Removal Tool)
- Affichage de l'activation ou non de Bitlocker sur tous les disques
- Visualise la clef Bitlocker du lecteur C:

### Menu Réseau

- Liste la configuration réseau (ipconfig)
- Liste détaillée de la configuration réseau (ipconfig /all)
- Liste la configuration Wi-Fi
- Exécution d'un ping vers www.google.com
- Affichage du fichier HOSTS
- Affichage du cache DNS
- Vidage du cache DNS
- Libération de la connexion DHCP
- Renouvellement de la connexion DHCP
- Réinitialisation du réseau (couche Winsock)
- Affichage du MTU
- Change le MTU à 1500 pour l'Ethernet
- Change le MTU à 1500 pour le WIFI

### Menu Energie et alimentation

- Liste du mode de gestion d'énergie
- Analyse la consommation d'énergie
- Affiche le rapport de la batterie
- Désactivation de la veille prolongée
- Activation de la veille prolongée

### Menu Arrêt de Windows

- Redémarre Windows 10/11 après 10 secondes
- Arrêt de Windows 10/11 après 10 secondes
- Forcer l'arrêt de Windows 10/11
- Redémarre dans le BIOS/UEFI de la machine
- Redémarre Windows 10/11 sur les options de récupération

### Menu Documentations

Nous retrouvons dans cette partie quelques informations sur **Windows 10** et l'outil **DepanTools**.

## Conclusion

Vous êtes libres d'utiliser l'outil et de le modifier.

---

## Les versions
- **1.71** : (  /12/23) Correction bugs, Ajout la boite des comptes utilisateur, affichage et modification du MTU
- **1.70** : (09/11/23)
     Mise à jour des versions de **Windows**, Ajout du Gestionnaire d'identification,  Information disque **Bitlocker**, Visualise la clef de récupération de Bitloker, Visualise le fichier **HOSTS**
     Ajout "**God Mode**" sur le bureau
- **1.62** : Ajout de la détection de crack **Windows** 
- **1.61** : Corbeille, Gestionnaire de tâches
- **1.6**  : Vérification de la présense l'outil **"mrt"**
- **1.5**  : Ajout de nombreuses fonctionnalités
- **1.00** : Première version présentable !




