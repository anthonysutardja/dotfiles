# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Amazon EC2 stuff
export EC2_HOME=~/.ec2
export EC2_PRIVATE_KEY=`ls $EC2_HOME/pk-*.pem`
export EC2_CERT=`ls $EC2_HOME/cert-*.pem`
export EC2_URL="https://ec2.us-west-1.amazonaws.com"
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

# ls with color
alias ls="ls -G"
# Get current IP
alias ip="curl http://ifconfig.me/ip"
# Suspend session
alias poopin='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# Vim Aliases
alias vil="vim \`ls -t | head -n 1\`" # Open last modified file
alias vi="/usr/local/Cellar/vim/7.3.548/bin/vim" # Use latest version of VIM

# Promptline
export PS1='\[\e[0;30m\]\t\[\e[m\] \[\e[0;34m\]\u\[\e[m\] \[\e[0;33m\]\w\[\e[m\] \[\e[0;30m\]❯\[\e[m\] '

# Other env variables
export EDITOR='vi'
export GNUTERM='x11'

# Get a word definition
getdef(){
    if [[ $# -ge 2 ]] ; then
        echo "getdef: too many arguments" >&2
        return 1
    else
        curl "dict://dict.org/d:$1"
    fi
}

