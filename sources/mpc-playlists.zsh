# zaw source for mpc -- all playlists

ZAW_MPC_COMMAND=${ZAW_MPC_COMMAND:-mpc}

function zaw-src-mpc-playlists() {
    local buf
    buf=$($=ZAW_MPC_COMMAND lsplaylists)
    if [[ $? != 0 ]]; then
        return 1
    fi
    : ${(A)candidates::=${(f)buf}}
    : ${(A)cand_descriptions::=${(f)buf}}
    actions=( zaw-mpc-append-playlist zaw-mpc-replace-playlist zaw-mpc-rm-playlist )
    act_descriptions=( "append playlist" "replace playlist" "remove playlist permanently" )
}

zaw-mpc-append-playlist(){
    $=ZAW_MPC_COMMAND load $1
}
zaw-mpc-replace-playlist(){
    $=ZAW_MPC_COMMAND clear
    $=ZAW_MPC_COMMAND load $1
}
zaw-mpc-rm-playlist(){
    $=ZAW_MPC_COMMAND rm $1
}

zaw-register-src -n mpc-playlists zaw-src-mpc-playlists

