#if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
#  exec sway
#fi
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(archlinux zsh-syntax-highlighting) # git

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias aliaslist="grep --only-matching '^alias\s\w*' .zshrc" 
alias c="clear"
alias home="cd ~"
alias btop="btop --utf-force"
alias shizuku="adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh"
alias sucode="sudo code --user-data-dir=~/root"

alias confsway="sudo nano /home/joey/.config/sway/config"
alias confdwm="sudo nano /home/joey/dwm-6.3/config.def.h"
alias makedwm="sudo cp /home/joey/dwm-6.3/config.def.h /home/joey/dwm-6.3/config.h && cd dwm-6.3 && sudo make clean install && cd /home/joey/"

alias confbar="sudo nano .config/waybar/config"
alias confbars="sudo nano .config/waybar/style.css"

alias confalacritty="sudo nano .config/alacritty/alacritty.yml"
alias confst="sudo nano st-0.8.5/config.def.h"
alias makest="sudo cp st-0.8.5/config.def.h st-0.8.5/config.h && cd st-0.8.5 && sudo make clean install"

alias confmako="sudo nano .config/mako/config"

alias confx="sudo nano /home/joey/.xinitrc"

alias confzsh="sudo nano /home/joey/.zshrc"
alias makezsh="source /home/joey/.zshrc"

alias confgrub="sudo nano /etc/default/grub"
alias makegrub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

alias pushdots="sudo /home/joey/coalemus/Linux-Dotfiles/updaterepo.sh"
alias pullwl="sudo /home/joey/coalemus/Linux-Dotfiles/updateconfigs.sh"
alias pullx=""
alias wipewofi="sudo /home/joey/coalemus/Linux-Dotfiles/wofifilter.sh"

alias pyserver="/bin/python /home/joey/coalemus/Python-Projects/server/server.py"
alias pipinstaller="/home/joey/coalemus/Terminal-Projects/linuxsh/pippackages.sh"
alias barupdate="sudo /bin/python /home/joey/coalemus/Python-Projects/shellupdate/updatebartui.py"
alias calctui="/bin/python /home/joey/coalemus/Python-Projects/calculator/calctui.py"
alias calcgui="/bin/python /home/joey/coalemus/Python-Projects/calculator/calcgui.py"
alias autoclick="/bin/python /home/joey/coalemus/Python-Projects/cursor/autoclick.py"
alias afkpress="/bin/python /home/joey/coalemus/Python-Projects/cursor/afkpress.py"
alias afkmove="/bin/python /home/joey/coalemus/Python-Projects/cursor/afkmove.py"
alias idlescroll="/bin/python /home/joey/coalemus/Python-Projects/cursor/afkscroll.py"
alias typespam="/bin/python /home/joey/coalemus/Python-Projects/spambot/typespam.py"
alias filespam="/bin/python /home/joey/coalemus/Python-Projects/spambot/filespam.py"
alias keylogger="/bin/python /home/joey/coalemus/Python-Projects/keylogger/keylogger.py"
alias birthday="/bin/python /home/joey/coalemus/Python-Projects/birthdaywisher/happybirthday.py"
alias meditate="/bin/python /home/joey/coalemus/Python-Projects/meditation/meditate.py"
alias netspeed="/bin/python /home/joey/coalemus/Python-Projects/internetspeed/speedprinter.py"
alias wolfram="/bin/python /home/joey/coalemus/Python-Projects/wolramalpha/apicaller.py"
alias voassist="/bin/python /home/joey/coalemus/Python-Projects/voiceassistant/voasst.py"
alias votyper="/bin/python /home/joey/coalemus/Python-Projects/voiceassistant/voicetyper.py"
alias tts="/bin/python /home/joey/coalemus/Python-Projects/voiceassistant/TTS.py"

alias meetcli="/home/joey/coalemus/Python-Projects/selenium/meetcli.sh"
alias meetgui="/home/joey/coalemus/Python-Projects/selenium/meetgui.sh"
alias twitterbot="/home/joey/coalemus/Python-Twitter-Bot/twitterbot.sh"
alias redditbot="/home/joey/coalemus/Python-Reddit-Bot/redditbot.sh"
alias discordbot="/home/joey/coalemus/Python-Discord-bot/discordbot.sh"

alias adbcheck="/home/joey/coalemus/Android-Projects/adbcheck.sh"
alias adbrestart="/home/joey/coalemus/Android-Projects/adbrestart.sh"
alias scrcpystart="/home/joey/coalemus/Android-Projects/scrcpystart.sh"
alias scrcpyrec="/home/joey/coalemus/Android-Projects/scrcpyrec.sh"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
