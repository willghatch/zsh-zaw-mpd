for file in $(ls ${${0:A}:h}/sources); do
    source ${${0:A}:h}/sources/$file
done
