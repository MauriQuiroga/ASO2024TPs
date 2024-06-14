1.a) Cuando ejecute el sinhilos.py empieza una tarea y la finaliza antes de iniciar la otra, con un tiempo de:
5.29827 con la primera ejecucion.
5.29465 en la segunda ejecucion.
5.29384 en la tercera ejecucion.
A diferencia de conhilos.py que ejecuta las tareas una a contuniacon de la otra y la finaliza todas juntas. Y el tiempo de ejecucion de cada una es de:
4.04832 en la priemra ejecucion
4.03500 en la segunda ejecucion.
4.01112 en la tercera ejecucion.

1.b) Comprando el tiempo de ejecucion con unos de mis compañeros no son iguales. Algunos tardaron microsegundos menos y otros mas.

1.c) Al ejecutarlo las primeras 10 veces el valor final era 0, al sacarle los comentarios paso a darme otros numeros. 
Ademas al borrarle los comentarios lo que hace el programa cuando entra un hilo es que entra a ciclar unas 1000 veces, y entra el otro haciendo lo mismo en un lapso de tiempo en el cual se provoca el error.
En este contexto, el error es conocido como race condition, ocurre cuando dos procesos intentan acceder al mismo dato al mismo tiempo.
El acumulador pasa de ser 0 a ser otro numero mucho mas grande, esto ocurre (la race condition) cuando se resta y se suma la variable acumulador.