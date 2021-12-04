#!/bin/bash
 
echo "Entrez votre calcul de la forme 'a + b'(operateur valable '+,-,x,/'):"
echo "Surtout n'oubliez pas les espaces entre chaque valeur"
read arg1 ope arg2  #lit les arguments que nous avons entree

if [ $ope = "+" ]
	then echo  "scale=2; var1=$arg1+$arg2; var1" | bc
	elif [ $ope = "-" ]
		then echo "scale=2; var1=$arg1-$arg2; var1" | bc
		elif [ $ope = "x" ]
			then echo "scale=2; var1=$arg1*$arg2; var1" | bc
			elif [ $ope = "/" ] && [ $arg1 != $0 ] && [ $arg2 != $0 ]
				then echo "scale=2; var1=$arg1/$arg2; var1" | bc
				else echo "l'operateur entre n'est pas correcte"
fi
