set fish_greeting

if status --is-login
   set -a PATH "$HOME/.cargo/bin"
   set -a PATH "$HOME/.julia/ROOT/bin"
   set -a PATH "$HOME/.cabal/bin"
   set -a PATH "$HOME/.ghcup/bin"
   set -a PATH "$HOME/.emacs.d/bin"
   set -x BROWSER "librewolf"
   startx &> /dev/null
end

alias o     sudo

alias cat   "bat --theme OneHalfDark"
alias lcat  "bat --theme OneHalfDark --plain"
alias pcat  "bat --theme OneHalfDark --paging=never"
alias hcat  "bat --theme OneHalfDark -H"
alias rcat  "bat --theme OneHalfDark -r"


alias ls    "lsd"
alias l     "ls -l"
alias ltree "ls --tree"
