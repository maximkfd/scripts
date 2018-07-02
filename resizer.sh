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
-e) ext=$2
shift;;
esac
shift
done
echo path=$path
echo size=$size
for dir in $path*/
do
    echo $dir
    dir=${dir%*/}
    echo $dir
    echo ${dir##*/}
    for i in $dir/*.$ext; 
    do   
        echo $i
        ffmpeg -i $i -s $size -y $i
    done
done