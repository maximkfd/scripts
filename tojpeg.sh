path=$(pwd)/
size=640x360
ext=png
while [ -n "$1" ]
do
case "$1" in
-p) path=$2
shift ;;
-s) size="$2"
shift ;;
-c) path=$(pwd);;
esac
shift
done
echo path=$path
echo size=$size
for dir in $path*/
do
    dir=${dir%*/}
    #echo ${dir##*/}
    for i in $dir/*.$ext; 
    do 
        filename=${i/.png/.jpg}
        groundless=${filename//_}
        echo ${groundless//charCard}
        ffmpeg -i $i -y ${groundless//charCard}
    done
done