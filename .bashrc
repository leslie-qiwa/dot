# refer https://carlosroso.com/the-right-way-to-migrate-your-bash-profile-to-zsh/
alias ls='ls -G'
alias grep='grep --color=always'
alias curl_github='curl -s -H "Authorization: token $GITHUB_TOKEN"' 


alias sshwo='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

alias ffprobe-wh='ffprobe -v error -select_streams v:0 -show_entries stream=width,height:stream_tags=rotate -of json'
alias ffmpeg-w='ffmpeg -y -r 24 -vf scale=480:-1'
alias ffmpeg-h='ffmpeg -y -r 24 -vf scale=-1:480'

alias gitrm='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d' 

export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTTIMEFORMAT="[%F %T] "

export GOBIN=/usr/local/go/bin
export GOPATH=~/go
export PATH=$PATH:$GOBIN:$GOPATH/bin

export HOMEBREW_NO_INSTALL_FROM_API=1
