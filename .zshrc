# Create a symlink from the config folder to home, so i can have .zshrc here
# ln -s ~/.config/.zshrc ~/.zshrc

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="darkblood"

CASE_SENSITIVE="false"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup. (so real)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting archlinux)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch $(uname -m)"

# TODO: Probably put aliases into a .zsh like its said here
# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

zstyle ':completion:*:sudo:*' environ PATH="$SUDO_PATH:$PATH"

# fix ssh with kitty
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

### Aliases for commands ###
alias ls='exa --icons'
alias la='exa --icons -a'
alias ll='exa --icons -l'

alias cat='bat'

alias sniper='hyprprop' # i am autistic

alias cls='clear'
alias clr='clear'

alias p='doas pacman'
alias pi='doas pacman -S'
alias pu='doas pacman -Syyu'
alias pr='doas pacman -R'
alias yi='yay -S'

alias update='~/.scripts/update.sh'

alias grep='grep --color=auto'
