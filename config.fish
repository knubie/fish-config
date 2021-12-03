set -x PATH /Applications/Postgres.app/Contents/Versions/latest/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/.bin $PATH
set -x PATH $HOME/.rbenv/shims $PATH
set -x PATH $HOME/.nodenv/shims $PATH
set -x PATH /usr/local/sbin $PATH


set -x EDITOR 'nvim'
#set -x JAVA_HOME (/usr/libexec/java_home)
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

#set -x FZF_DEFAULT_COMMAND 'rg --files --hidden'
set -x FZF_DEFAULT_COMMAND 'fd --type f'
set -x FZF_DEFAULT_OPTS '--color 16,fg:-1,bg:-1,hl:12,fg+:-1,bg+:13,hl+:12,info:7,prompt:-1,pointer:7,marker:7,spinner:7'

set -x RIPGREP_CONFIG_PATH '/Users/matt/.config/ripgrep/ripgrep.conf'

#set -x RUBY_CONFIGURE_OPTS '--with-openssl-dir='(brew --prefix openssl@1.1)
set -x RUBY_CONFIGURE_OPTS '--with-openssl-dir=/usr/local/opt/openssl@1.1'

set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x HOMEBREW_NO_INSTALL_UPGRADE 1

# FIXME: Next two lines adds to shell startup time
#status --is-interactive; and source (rbenv init -|psub)
#status --is-interactive; and source (nodenv init -|psub)

alias pip "python3 -m pip"

# Nuvocargo packages token
set -x GH_ACCESS_TOKEN f757d72cfc886ed77579c3128e7140f096148575

# Copies XTERM_KITTY
alias ssh="kitty +kitten ssh"
alias icat="kitty +kitten icat"
alias preview="open -a Preview.app -f"

set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -x ANDROID_AVD_HOME $HOME/.android/avd
set -x PATH $PATH $ANDROID_SDK_ROOT/emulator
set -x PATH $PATH $ANDROID_SDK_ROOT/platform-tools
set -x PATH $PATH $ANDROID_SDK_ROOT/build-tools/29.0.3
set -x PATH $PATH $ANDROID_SDK_ROOT/cmdline-tools/latest/bin
set -x CORDOVA_ANDROID_GRADLE_DISTRIBUTION_URL 'https://services.gradle.org/distributions/gradle-6.7.1-all.zip'
# set -x PATH $PATH $ANDROID_HOME/tools
# set -x PATH $PATH $ANDROID_HOME/tools/bin

set -x BW_SESSION PsxJgw/DJGq1Me/mv17VcN9GHAgEJTakoXDMc8TcwRoEnGDo4KdAHyv9+Socbf/Mw9I0zUkTRZdbDKNavaIFeA==

# FIXME: Adds to shell startup time
# Completion
#if [ $TERM = "xterm-kitty" ]
#  kitty + complete setup fish | source
#end

alias vim="nvim"
alias v.="nvim ."
alias tmux="tmux -f ~/.config/tmux/tmux.conf"

alias ts="tig status"
alias t="tig"

set fish_color_autosuggestion white

# Pretty ls colors
# 1. directory
# 2. symbolic link
# 3. socket
# 4. pipe
# 5. executable
# 6. block special
# 7. character special
# 8. executable with setuid bit set
# 9. executable with setgid bit set
# 10. directory writable to others, with sticky bit
# 11. directory writable to others, without sticky
# a black
# b red
# c green
# d brown
# e blue
# f magenta
# g cyan
# h light grey
# A bold black, usually shows up as dark grey
# B bold red
# C bold green
# D bold brown, usually shows up as yellow
# E bold blue
# F bold magenta
# G bold cyan
# H bold light grey; looks like bright white
# x default foreground or background
set -x LSCOLORS Axhxaxaxaxaxaxaxaxaxax
#set -x LSCOLORS ExGxBxDxCxEgEdxbxgxcxd

# -F show special character like '/' and '@'
# -G use colors
# 1 show one column
# a show invisibles
alias ls 'ls -FG1a'
