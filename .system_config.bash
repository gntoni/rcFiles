## Settings ##
# make vim the default editor
export EDITOR=vim

# Terminal Colors
# svn and git info
scm_ps1() {
    local s=
    if [[ -d ".svn" ]] ; then
        s=\(svn:$(svn info | sed -n -e '/^Revision: \([0-9]*\).*$/s//\1/p' )\)
    else
        s=$(__git_ps1 "(git:%s)")
    fi
    echo -n "$s"
}
PS1="\[\033[1;30m\]\u\[\033[1;36m\]@\[\033[1;36m\]\h:\[\033[01;36m\]\w\[\033[1;30m\] \$(scm_ps1)\n\$\[\033[00m\] " 
LS_COLORS="tw=94:ow=94"; export LS_COLORS


# SSH auth sock handling so that new SSH agents created by subsequent logons are still usable
# https://gist.github.com/admackin/4507371
_ssh_auth_save() {
    ln -sf "$SSH_AUTH_SOCK" "$HOME/.ssh/ssh-auth-sock.$HOSTNAME"
}
alias tmux='_ssh_auth_save ; export HOSTNAME=$(hostname) ; tmux'
