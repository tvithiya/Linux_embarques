Vithiya
THIRUCHELVANATHAN
--------------------------------------- Projet_1 ----------------------------------------

- coder en bash, il suffit d'exécuter le script et écrire un calcul de la forme 'a + b' 

--------------------------------------- Projet_2 ----------------------------------------
- coder en html un cv --> tuto sur internet / comprehnesion 
- besoin d'apache pour avoir un serveur web sur la raspberry
	installation d'apache2 : sudo apt install apache2
Le serveur web conserve tout ces fichiers dans le repertoire /var/www/html

Pour utiliser la raspberry comme serveur dns local : (lien envoyé par le prof)
- utilisation de DNSMasq qui est un serveur dns pour repondre aux requetes du reseau local
- on installe dnsmasq : sudo apt install dnsmasq
- configuration du fichier dnsmasq : sudo nano /etc/dnsmasq.conf afin de decommenter 3 lignes
	domain-needed ; bogus-priv ; expand- hosts
et on a rajouté : domain=melocal
- on redemarre dnsmasq
- on ajoute un hote : 172.20.10.4 vithi ( raspberry peut atteindre 172.20.10.4 avec vithi)
vithi est un nom d hote
- en ouvrant nslookup sur l'invite de commande du pc, on remarque qu'en faisant : vithi.melocal
on retrouve l'adresse 172.20.10.4

--------------------------------------- Projet_3 ----------------------------------------

- utilisation de l'interface NODE RED en s'aidant d'internet (lien envoyé par le prof)
- installation du dashboard et du package pour la météo afin de faire le projet demandé
