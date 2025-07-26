# Set locale
export LANG="en_US.UTF-8"
#
# Preferred editor for local and remote sessions
 #if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 #else
 # export EDITOR='vim'
 #fi

#Load theme
source ~/.zshtheme

# Make tab completion case-insensitive 
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

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

# go binaries
export PATH="$HOME/go/bin:$PATH"

# Devkitpro path exports
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=${DEVKITPRO}/devkitARM
export DEVKITPPC=${DEVKITPRO}/devkitPPC
export PATH=${DEVKITPRO}/tools/bin:$PATH

export PKG_CONFIG_PATH=/usr/local/Cellar/raylib/4.0.0/lib/pkgconfig # raylib

# Node.js Version Manager environment variables and tools
export NVM_DIR="/usr/local/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Android platform tools
export PATH=$PATH:~/.android-sdk/platform-tools/

#macOS-only toolpaths:
if [ $(uname) = Darwin ]
then
	# The next line updates PATH for the Google Cloud SDK.
	if [ -f '/Users/pakou/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/pakou/google-cloud-sdk/path.zsh.inc'; fi
	# The next line enables shell command completion for gcloud.
	if [ -f '/Users/pakou/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/pakou/google-cloud-sdk/completion.zsh.inc'; fi
fi

#Raspberry Pi Pico SDK
export PICO_SDK_PATH=~/Documents/CS_Projects/Pico/pico-sdk

export OPENSSL_ROOT_DIR="/usr/local/Cellar/openssl@1.1/1.1.1l/"
export OPENSSL_LIBRARIES="/usr/local/Cellar/openssl@1.1/1.1.1l/lib"

#ZSH syntax highlighting
#if [ $(uname) = Darwin ] 
#then
#	source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#elif [ $(uname) = Linux ] 
#then
#	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#fi
	
# --------------------------- PERSONAL ALIASES -----------------------------------
alias ls='ls -GF1hla'
#alias ls='natls -ln'
alias projects='cd ~/Documents/CS_Projects'
alias locip='ifconfig | grep 192.'
alias pubip='curl checkip.amazonaws.com'
alias top='btop'
alias nkit2iso='mono /Users/pakou/Documents/Games/NKit_v1.4/RecoverToISO.exe'
eval $(thefuck --alias) #thefuck include
# macOS-only aliases:
if [ $(uname) = Darwin ]
then
	alias rm='trash -vF'
	alias picosend='cp ./build/*.uf2 /Volumes/RPI-RP2/' #send binary to connected rpi pico
fi

# Created by `pipx` on 2024-05-27 19:49:20
export PATH="$PATH:/Users/pakou/.local/bin"
