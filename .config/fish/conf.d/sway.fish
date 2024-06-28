# If running from tty1 start sway
set TTY1 (tty)
if [ "$TTY1" = "/dev/tty1" ]
    set -Ux COLORSCHEME "sonokai"
    exportcolors
    ln -sf "/home/james/.config/sway/$COLORSCHEME.conf" "/home/james/.config/sway/colorscheme.conf"
    ln -sf "/home/james/.config/foot/$COLORSCHEME.ini" "/home/james/.config/foot/colorscheme.ini" 
    ln -sf "/home/james/Pictures/Wallpapers/$COLORSCHEME.png" "/home/james/Pictures/Wallpapers/wallpaper.png" 
    exec sway
end
