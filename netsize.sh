# Tarea n1
#Leonardo Francisco Proano Rhon
#Ejercicio 1 
#primero elegimos la ubicacion de la carpeta "Saavedra2013" en nuestro computador
#segundo, dentro de la carpeta creamos un documento en txt.
cd Saavedra2013
# Tercero, Finalmente aplicamos el codigo, y en lo personal agrege una leyenda para diferencias el numero de columnas de las filas 
echo "El ńumero de columnas es:" ;
head -n1 n1.txt | grep -o " " | wc -l ;
echo "El numero de filas es:" ;
wc -l n1.txt; 
echo "Fin de la ejecucion"
# Resultados: 
# El numero de columnas es:80
# El numero de filas es: 97