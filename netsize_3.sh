# Ejercicio 3 
# Abrimos nuevamente la direccion del archivo Saavendra2013
cd Saavedra2013
# la columna con mayor numero y la fila con mayor numero
# Asignamos variables
var=0
var1=0
# Agregamos eyendas de hecho para poder diferenciarlas mejor, y for para restriccion
for f in $(ls *.txt);
do
    echo "El numero de columna es:" ;
    PART1=$(head -n 1 $f | awk '{print NF}')
    echo $PART1;

    echo "El numero de filas es:" ;
    PART2=$(cat $f | wc -l);
    echo $PART2;

    #Mayor Columna 
    if (( PART1 > var1 )); 
    then
    columna=$f;
    export var1=$PART1;
    fi

    #Mayor Fila 
    if (( PART2 > var )); 
    then
    fila=$f;
    export var=$PART2;
    fi
    
done
echo "Fin de la ejecucion";
#Resultados: aplicamos leyenda de hecho y la variable $fila 
echo "------------------------------------------------------";
echo El documento con mayor numero de filas es:$fila ;
echo con un total de:$var;

echo El documento con mayor numero de columnas es:$columna ;
echo con un total de:$var1;
echo "------------------------------------------------------";