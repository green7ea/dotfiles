set PATH /home/manu/.local/bin /home/manu/.cargo/bin $PATH
set PKG_CONFIG_PATH /home/manu/.local/lib/pkgconfig
set LANG en_CA.UTF-8

export EDITOR="emacs"
export LANG=en_CA.UTF-8
export COLORTERM=truecolor

function fish_user_key_bindings
    bind \en backward-char
    bind \ee history-search-forward
    bind \ei history-search-backward
    bind \eo forward-char

    bind \cn backward-word
    bind \co forward-word
end

function postexec_newline --on-event fish_postexec
  echo
end

atuin init fish | source
