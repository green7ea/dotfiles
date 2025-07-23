set PATH /home/manu/.local/bin /home/manu/.cargo/bin $PATH
set PKG_CONFIG_PATH /home/manu/.local/lib/pkgconfig
set LANG en_CA.UTF-8

export EDITOR="emacs"
export LANG=en_CA.UTF-8
export COLORTERM=truecolor

function fish_user_key_bindings
    bind alt-n backward-char
    bind alt-e history-search-forward
    bind alt-i history-search-backward
    bind alt-o forward-char

    bind ctrl-alt-n backward-word
    bind ctrl-alt-o forward-word
end

function postexec_newline --on-event fish_postexec
  echo
end
