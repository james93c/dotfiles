if status is-interactive
  # Commands to run in interactive sessions can go here
end

#starship init fish | source

fzf --fish | source

export ANDROID_SDK_ROOT=/home/james/Android/Sdk

set GOPATH /home/james/go
pyenv init - | source
zoxide init fish | source

# pnpm
set -gx PNPM_HOME "/home/james/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end


export LIBCLANG_PATH="/home/james/.rustup/toolchains/esp/xtensa-esp32-elf-clang/esp-16.0.4-20231113/esp-clang/lib"
export PATH="/home/james/.rustup/toolchains/esp/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin:$PATH"

# opam configuration
source /home/james/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
