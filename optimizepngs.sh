if [ -z "$1" ]; 
then
    path=$(pwd)/
else 
    path=$1
fi
for dir in $path*/
do
    dir=${dir%*/}
    echo ${dir##*/}
    for i in $dir/*.png; 
    do   
        echo $i
        pngquant $i -f -o $i
    done
done