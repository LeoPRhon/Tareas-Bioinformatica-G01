# Ejercicio 2
# Abrimos nuevamente la direccion del archivo Saavendra2013
cd Saavendra2013
# En este caso aplicamos leyendas para diferenciar columnas de filas y cat para mejor visualizacion
# Corremos el código:
for f in $(ls *.txt);
do
    echo "El numero de columas es:" ;
    head -n 1 $f | awk '{print NF}'
    echo "El numero de filas es:" ;
    cat $f | wc -l
done
echo "Fin de la ejecucion"
# Se obtienen todos los valores de fila y columna para los 59 archivos .txt