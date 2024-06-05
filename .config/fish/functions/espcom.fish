function espcom
  set tty (setserial -g /dev/ttyUSB* | tail -1 | sed "s/,.*//g")
  
  if test -z $argv
    set argv 115200
  end

  screen $tty $argv
end

