Ce projet a été réalisé par le binôme : Aeneas RUS LIN et Vithiya THIRUCHELVANATHAN

Le but de ce projet est d'envoyer les données de mesures du sensehat d'une raspberry pi (RP1) sur le dashboard d'une autre raspberry pi (RP2).

Dans un premier temps, nous avons installé mosquitto avec le guide suivant : https://projetsdiy.fr/mosquitto-broker-mqtt-raspberry-pi/

Puis nous avons installé des drivers python et la librairie sensehat de node red : https://github.com/mpolinowski/PiSenseHat-Node-RED

Cependant, lorsque nous voulons obtenir les valeurs de l'accélération (motion) en même temps que les valeurs de la température, humidité et la pression (environment), le bloc sensehat de node red n'arrive pas à renvoyer ces deux groupes de données. De ce fait, nous avons décidé d'envoyer les données environments de la RP1 à la RP2 et les données motion de la RP2 à la RP1.

Pour le texte à afficher, sur la RP2, nous avons ajouté un "textbox" sur le dashboard qui envoie un string sur le mqtt out, la RP1 reçoit ce string et avec le bloc sensehat output, nous l'affichons sur la matrice à LEDs.
