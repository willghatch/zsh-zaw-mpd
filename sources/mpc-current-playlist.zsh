# zaw source for mpc -- current playlist

ZAW_MPC_COMMAND=${ZAW_MPC_COMMAND:-mpc}

function zaw-src-mpc-current-playlist() {
    local buf
    buf=$($=ZAW_MPC_COMMAND playlist)
    if [[ $? != 0 ]]; then
        return 1
    fi
    : ${(A)candidates::=$(seq 1 $#buf)}
    : ${(A)cand_descriptions::=${(f)buf}}
    actions=( zaw-mpc-play-song zaw-mpc-del-song-from-playlist )
    act_descriptions=( "play" "remove from playlist" )
}

zaw-mpc-play-song(){
    $=ZAW_MPC_COMMAND play $1
}
zaw-mpc-del-song-from-playlist(){
    $=ZAW_MPC_COMMAND del $1
}

zaw-register-src -n mpc-current-playlist zaw-src-mpc-current-playlist

