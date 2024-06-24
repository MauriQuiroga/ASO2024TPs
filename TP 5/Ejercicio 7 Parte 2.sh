#! /bin/bash

#Parte 2 Ejercicio 7

echo "Escriba un nombre del cual quiera saber su genero."
#Guardando el nombre en la variable.
read nombre_g 

#API
info=$(curl -s "https://api.genderize.io/?name=${nombre_g}") 

 #Guardando el genero del nombre.
genero=$(echo $info | jq -r '.gender')

if [ "$genero" == "null" ];
then
    #Por si es nulo.
    echo "No se ha podido encontrar el genero del nombre ingresado." 

else 
    if [ "$genero" == "male" ];
    then
        #Si es masculino.
        echo "El genero del nombre ingresado es: masculino." 

    elif [ "$genero" == "female" ];
    then
        #Si es femenino.
        echo "El genero del nombre ingresado es: femenino." 
    
    fi
fi