export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export VOLTA_HOME="$XDG_DATA_HOME"/volta
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export WINEPREFIX="$XDG_DATA_HOME"/wine
export ANDROID_HOME="$XDG_DATA_HOME"/android

export HISTFILE="$XDG_STATE_HOME"/bash/history
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc

export JAVA_HOME="$XDG_CONFIG_HOME"/java

export PYTHONPATH="$PYTHONPATH:$HOME/.local/lib/python3.10/site-packages"

# GPG stuff
export GPG_TTY=$(tty)

export LD_LIBRARY_PATH=/usr/local/lib:"$LD_LIBRARY_PATH"
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:"$PKG_CONFIG_PATH"

export THEOS="$XDG_DATA_HOME"/theos
export THEOS_MAKE_PATH="$THEOS"/makefiles

alias wget=wget --hsts-file="$XDG_DATA_HOME"/wget-hsts
alias restart_usbmuxd="sudo systemctl restart usbmuxd; systemctl --user restart netmuxd"

export PATH="$VOLTA_HOME/bin:$PATH"

#Firefox profile sync script to run on log in
bash -c "~/.local/bin/firefox-sync.sh 6cb1v2yd.default-release > /dev/null &"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$XDG_DATA_HOME"/sdkman

[[ -s "$XDG_DATA_HOME"/sdkman/bin/sdkman-init.sh ]] && source "$XDG_DATA_HOME"/sdkman/bin/sdkman-init.sh
