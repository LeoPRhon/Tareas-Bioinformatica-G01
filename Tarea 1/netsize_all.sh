# Ejercicio 2

# Se selecciona nuevamente la direccion del archivo Saavedra2013

cd Saavedra2013

# Se aplica leyendas para diferenciar columnas de filas y cat para mejorar visualización
# Y finalmente, se corre el código:

for f in $(ls *.txt);
do
    echo "El numero de columas es:" ;
    head -n 1 $f | awk '{print NF}'
    echo "El numero de filas es:" ;
    cat $f | wc -l
done
echo "Fin de la ejecucion"

# Se obtienen todos los valores de fila y columna para los 59 archivos