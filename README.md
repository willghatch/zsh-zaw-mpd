Install
-------

Use [zgen](https://github.com/tarjoilija/zgen) or antigen.  Here is how to do it with zgen:

    zgen load zsh-users/zaw
    zgen load willghatch/zsh-zaw-mpd

Be sure to load [zaw](https://github.com/zsh-users/zaw) before this plugin, or it will scream at you.

Depends
-------

Requires the `mpc` command -- the command line mpd client.

Configure
---------

If you have any mpd configuration such that just running `mpc` will not work
(IE different port, host, or password), then you need to configure `ZAW_MPC_COMMAND`.
If you run mpd on port 1234, set it like this: `ZAW_MPC_COMMAND="mpc --port 1234"`.
You get the idea.

Sources
-------

This adds zaw sources `mpd-songs` to list all songs in the mpd database, `mpd-playlists`
to list available playlists, and `mpd-current-playlist` for the current play queue.

There are only basic actions -- add a song to the current playlist, append/replace/remove
playlists, play a song in your current list...

License
-------

BSD-3 (same as zaw)

