# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme clearance

set -x EDITOR "stty stop '' -ixoff ; vim"

# Aliases
alias e "$EDITOR"
alias x 'extract'
alias g 'git'
alias ga 'git add'
alias gaa 'git add .'
alias gc 'git commit'
alias gp 'git push'
alias gl 'git pull'

# Plugins
function Plugin -d 'Enable plugin'
    set -g fish_plugins $argv $fish_plugins
end
Plugin 'extract'
Plugin 'gitignore'
Plugin 'jump'

set fish_custom $HOME/.config/fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

function fish_user_key_bindings
    # Fix
    bind \el 'echo; ls; fish_prompt'
end
