set fish_greeting

if status --is-login
   set -a PATH "$HOME/.cargo/bin"
   set -a PATH "$HOME/.julia/ROOT/bin"
   set -a PATH "$HOME/.cabal/bin"
   set -a PATH "$HOME/.ghcup/bin"
   set -a PATH "$HOME/.emacs.d/bin"
   set -a PATH "$HOME/.local/bin"
   set -x BROWSER "firefox"
   emacs --daemon &
   startx &> /dev/null
end

function o
   if test -f /usr/bin/doas
      doas $argv
   else if test -f /usr/bin/sudo
      sudo $argv
   else
      echo 'sudo/doas not found, cannot gain root privelidges'.
   end
end

function safeAlias
   if not type -q $argv[2]
      return
   end

   alias $argv[1] $argv[3]

end

safeAlias cat	bat	"bat --theme OneHalfDark"
safeAlias lcat	bat	"bat --theme OneHalfDark --plain"
safeAlias pcat  bat	"bat --theme OneHalfDark --paging=never"
safeAlias hcat  bat	"bat --theme OneHalfDark -H"
safeAlias rcat  bat	"bat --theme OneHalfDark -r"


alias ls    "lsd"
alias l     "ls -l"
alias ltree "ls --tree"
