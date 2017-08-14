# this is a comment
function parse_git_branch {
  ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

PS1='\[\e]2;\u@\h\a[\[\e[37;44;1m\]\t\[\e[0m\]]\[\033[0;31m\] \[\e[32m\]\W\[\e[0m\]\n\[\e[0;31m\]\[\e[0;49;34m\]//\[\033[0;31m\] :zap: \[\e[0m\]'
export PS1
