function t
    # if no args are supplied, use fzf to choose a directory
    if test (count $argv) -lt 1
        set selected (find ~/dev -mindepth 1 -maxdepth 2 -type d | fzf)
    else
        set selected $argv[1]
    end

    # exit if no path selected
    if test -z "$selected"
        return
    end

    set selected_name (basename "$selected" | tr . _)
    set tmux_running (pgrep tmux)

    # check if same session already exists
    if not tmux has-session -t=$selected_name 2> /dev/null
        tmux new-session -ds $selected_name -c $selected
    end

    # if this is not a tmux session, attach to the session, else switch client
    if test -z "$TMUX"
        tmux attach -dt $selected_name
        exit 0
    else
        set current_session (tmux display-message -p '#S')
        if test $selected_name != $current_session
            tmux switch-client -t $selected_name
            tmux kill-session -t $current_session
        end
    end

end

