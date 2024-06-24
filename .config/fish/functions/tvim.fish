function tvim
  set i 0
  while tmux list-sessions 2> /dev/null | grep "vim_$i" > /dev/null
    set i (math $i + 1)
  end

  set SESSIONNAME "vim_$i"

  if count $argv > /dev/null
    zi $argv
  end

  tmux new-session -s $SESSIONNAME -d
  tmux split-window -t $SESSIONNAME -h -l 80
  tmux select-pane -t $SESSIONNAME:0.0
  tmux send-keys -t $SESSIONNAME "vim ." C-m 

  tmux new-window -t $SESSIONNAME
  tmux select-window -t 0

  tmux attach -t $SESSIONNAME

  if count $argv > /dev/null
    z -
  end
  
end

