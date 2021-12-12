cd Saavedra2013
for f in $(ls *.txt);
do
    echo "El numero de columas es:" ;
    head -n 1 $f | awk '{print NF}'
    echo "El numero de filas es:" ;
    cat $f | wc -l
done
echo "Fin de la ejecucion"
