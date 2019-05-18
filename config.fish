# rbenv
set -x PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)

set fish_plugins theme peco

# encoding
set -x LANG ja_JP.UTF-8

# cd したら  ls
function cd
  builtin cd $argv
  ls -a
end

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cx\ck peco_kill
end

eval (hub alias -s)