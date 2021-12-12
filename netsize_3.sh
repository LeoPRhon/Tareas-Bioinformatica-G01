cd Saavedra2013
var=0
var1=0
for f in $(ls *.txt);
do
    echo "El numero de columna es:" ;
    PART1=$(head -n 1 $f | awk '{print NF}')
    echo $PART1;

    echo "El numero de filas es:" ;
    PART2=$(cat $f | wc -l);
    echo $PART2;

    #Columna mayor 
    if (( PART1 > var1 )); 
    then
    columna=$f;
    export var1=$PART1;
    fi

    #Fila mayor
    if (( PART2 > var )); 
    then
    fila=$f;
    export var=$PART2;
    fi
    
done
echo "Fin de la ejecucion";
echo "------------------------------------------------------";
echo El documento con mayor numero de filas es:$fila ;
echo con un total de:$var;

echo El documento con mayor numero de columnas es:$columna ;
echo con un total de:$var1;
echo "------------------------------------------------------";