#!/bin/bash

# Generar un numero aleatorio entre 1 y 100
numero_secreto=$(( (RANDOM % 100) + 1 ))
intentos_realizados=0
# Define el número máximo de intentos permitidos
max_intentos=10

#Se imprime un mensaje de bienvenida y se indica que se está pensando en un número entre 1 y 100.
echo "¡Bienvenido al juego de adivina el numero!"
echo "Estoy pensando en un numero entre 1 y 100."

# Se inicia un bucle while que se ejecuta mientras intentos_realizados sea menor que max_intentos.
while [ $intentos_realizados -lt $max_intentos ]; do
    echo -n "Intenta adivinar el numero: "
    read intento
    
    if ! [[ "$intento" =~ ^[0-9]+$ ]]; then
        echo "Error: Por favor ingresa un numero válido."
        continue
    fi
    
    if [ $intento -lt $numero_secreto ]; then
        echo "El numero que estoy pensando es mayor que $intento"
    elif [ $intento -gt $numero_secreto ]; then
        echo "El numero que estoy pensando es menor que $intento"
    else
        echo "¡Felicidades! ¡Adivinaste el numero $numero_secreto en $intentos_realizados intentos!"
        exit 0
    fi
    
    intentos_realizados=$((intentos_realizados + 1))
done

echo "¡Lo siento! El numero que estaba pensando era $numero_secreto. Mejor suerte la proxima vez."
