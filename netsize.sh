# Tarea nº1

#Leonardo Francisco Proano Rhon

#Ejercicio 1 

#En primer lugar, se selecciona la ubicacion de la carpeta "Saavedra2013" en el dispositivo

cd Saavedra2013

#En segundo lugar, en el interior de la carpeta se crea un documento en txt.

cat n1.txt

# En tercer lugar, se aplica el codigo, además se agregó una leyenda para diferencias el numero de columnas de las filas 

echo "El ńumero de columnas es:" ;
head -n1 n1.txt | grep -o " " | wc -l ;
echo "El numero de filas es:" ;
wc -l n1.txt; 
echo "Fin de la ejecucion"

# Resultados: 

# El numero de columnas es:80

# El numero de filas es: 97
