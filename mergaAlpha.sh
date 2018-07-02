pos=0
for i in *.jpg; do
    if [[ $i = *"alpha"* ]]; then 
        break
    fi
    alphaFile=$(sed -e 's\[0-9].*\alpha_&\' <<< $i)
    eval convert $i $alphaFile -depth 8 -compose copy-opacity -composite frame_$pos.png
    pos=$((10#$pos+1))
done