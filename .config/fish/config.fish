set PATH /home/manu/.local/bin /home/manu/.cargo/bin $PATH
set PKG_CONFIG_PATH /home/manu/.local/lib/pkgconfig

export EDITOR="emacs -nw"
export COLORTERM=truecolor

function fish_user_key_bindings
    bind alt-n backward-char
    bind alt-e history-search-forward
    bind alt-i history-search-backward
    bind alt-o forward-char

    bind ctrl-alt-n backward-word
    bind ctrl-alt-o forward-word

    bind ctrl-space begin-selection
    bind ctrl-g     end-selection
    bind ctrl-w     kill-selection
    bind ctrl-y     yank
end

function postexec_newline --on-event fish_postexec
  echo
end
