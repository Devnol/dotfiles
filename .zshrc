# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Preferred editor for local and remote sessions
 #if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 #else
 # export EDITOR='vim'
 #fi

#Load theme
source ~/.zshtheme

# ------------------- ENVIRONMENT VARIABLES AND TOOLS ----------------------
export PATH

# rustup shell setup
# affix colons on either side of $PATH to simplify matching
case ":${PATH}:" in
    *:"$HOME/.cargo/bin":*)
        ;;
    *)
        # Prepending path in case a system-installed rustc needs to be overridden
        export PATH="$HOME/.cargo/bin:$PATH"
       ;;
esac


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Devkitpro path exports
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=${DEVKITPRO}/devkitARM
export DEVKITPPC=${DEVKITPRO}/devkitPPC
export PATH=${DEVKITPRO}/tools/bin:$PATH

# Node.js Version Manager environment variables and tools
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Android platform tools
export Path=$PATH:~/.android-sdk/platform-tools/

#macOS-only toolpaths:
if [ $(uname) = Darwin ]
then
	# Setting PATH for Python 3.9 in macOS
	# The original version is saved in .bash_profile.pysave
	PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
	
	# The next line updates PATH for the Google Cloud SDK.
	if [ -f '/Users/pakou/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/pakou/google-cloud-sdk/path.zsh.inc'; fi
	# The next line enables shell command completion for gcloud.
	if [ -f '/Users/pakou/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/pakou/google-cloud-sdk/completion.zsh.inc'; fi
fi

#Raspberry Pi Pico SDK
export PICO_SDK_PATH=~/Documents/CS_Projects/Pico/pico-sdk

#ZSH syntax highlighting
if [ $(uname) = Darwin ] 
then
	source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [ $(uname) = Linux ] 
then
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
	
# --------------------------- PERSONAL ALIASES -----------------------------------
#alias ls='ls -GFha'
alias ls='natls -ln'
alias projects='cd ~/Documents/CS_Projects'
alias locip='ifconfig | grep 192.168.1'
alias pubip='curl checkip.amazonaws.com'
alias top='bpytop'
alias fucking='sudo '
alias fuck='sudo $(fc -ln -1)'
# macOS-only aliases:
if [ $(uname) = Darwin ]
then
	alias rm='trash -vF'
	alias odir='open -a Finder.app ./'
	alias music='launchctl load ~/Library/LaunchAgents/moe.yuru.music-rpc.plist'
	alias umusic='launchctl unload ~/Library/LaunchAgents/moe.yuru.music-rpc.plist'
fi
