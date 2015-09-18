for mpdfile in $(ls "${${0:A}:h}"/sources); do
    source "${${0:A}:h}/sources/$mpdfile"
done
