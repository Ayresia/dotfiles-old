# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ayresia/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell_amora"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
)

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

# Zsh aliases
alias dotfiles="cd ~/dotfiles"
alias projects="cd ~/Documents/Projects"

# Zsh Highlight styles
ZSH_HIGHLIGHT_STYLES[arg0]=fg=#fb5c8e
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=#fb5c8e,bold
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=#fff0b8
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=#9fd3b3
ZSH_HIGHLIGHT_STYLES[global-alias]=fg=#93c5e6
ZSH_HIGHLIGHT_STYLES[precommand]=fg=#94fd3b3
ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=#94fd3b3
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=
# ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue
# ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=blue
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=#b2aeff
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=#b2aeff
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=#b2aeff
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=#fff0b8
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=#fff0b8
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=#fff0b8
ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=#93c5e6
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=#93c5e6
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=#93c5e6
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=#93c5e6
ZSH_HIGHLIGHT_STYLES[redirection]=fg=#fff0b8

# Auto-launch a x session, if not launched already (this might be the case whenever you login it will need to auto-launch.). 
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
	exec startx; 
fi
export PATH="$PATH:$HOME/.spicetify"
