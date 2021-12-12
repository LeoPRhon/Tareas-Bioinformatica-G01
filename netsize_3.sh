# Ejercicio 3 

# Se abre la dirección del archivo Saavedra2013
cd Saavedra2013

# Se busca la columna con mayor cantidad y la fila con mayor cantidad

# Se asigna variables
var=0
var1=0

# Se incluye leyendas de "hecho" para poder diferenciar de mejor manera, y for para restricciones
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
#Resultados: 
echo "________________________________________________________";
echo El documento con la mayor cantidad de filas es:$fila ;
echo con un total de:$var;
echo "________________________________________________________";

echo El documento con mayor cantidad de columnas es:$columna ;
echo con un total de:$var1;
echo "________________________________________________________";