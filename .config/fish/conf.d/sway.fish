# If running from tty1 start sway
set TTY1 (tty)
if [ "$TTY1" = "/dev/tty1" ]
    set -Ux COLORSCHEME "sonokai"
    ln -sf "/home/james/.config/sway/$COLORSCHEME.conf" "/home/james/.config/sway/colorscheme.conf"
    ln -sf "/home/james/.config/foot/$COLORSCHEME.ini" "/home/james/.config/foot/colorscheme.ini" 
    exec sway
end
