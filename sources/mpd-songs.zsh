# zaw source for mpd -- songs

ZAW_MPC_COMMAND=${ZAW_MPC_COMMAND:-mpc}

function zaw-src-mpd-songs() {
    local buf
    buf=$($=ZAW_MPC_COMMAND listall)
    if [[ $? != 0 ]]; then
        return 1
    fi
    : ${(A)candidates::=${(f)buf}}
    : ${(A)cand_descriptions::=${(f)buf}}
    actions=( zaw-mpc-add-to-playlist )
    act_descriptions=( "add to playlist" )
}

zaw-mpc-add-to-playlist(){
    $=ZAW_MPC_COMMAND add "$1"
}

zaw-register-src -n mpd-songs zaw-src-mpd-songs

