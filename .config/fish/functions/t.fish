function t
  if test (count $argv) -lt 1
   set selected (find ~/dev -mindepth 1 -maxdepth 2 -type d | fzf)
  else
    set selected $argv[1]
  end

  if test -z "$selected"
      exit 0
  end

  set selected_name (basename "$selected" | tr . _)
  set tmux_running (pgrep tmux)

  if test -z "$TMUX" -a -z "$tmux_running"
      tmux new-session -s $selected_name -c $selected
      exit 0
  end

  if not tmux has-session -t=$selected_name ^/dev/null
      tmux new-session -ds $selected_name -c $selected
  end

  tmux switch-client -t $selected_name
end

