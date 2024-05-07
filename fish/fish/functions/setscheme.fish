function setscheme
    if test -z "$argv"
        return 1
    end

    if test -f .config/fish/colors/$argv[1].fish
        fish .config/fish/colors/$argv[1].fish
    end
end
