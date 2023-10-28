# Simplified dotfile for video recordings
# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Only the owner of the file will be able to write to files
# created by them
umask 0022

# Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# Use podman for building images with AWS CDK if docker is not installed
if ! command -v docker &> /dev/null && command -v podman &> /dev/null; then
  export CDK_DOCKER=podman
fi

# Ignore commands that have been entered twice in a row
export HISTCONTROL=ignoreboth

# Commands listed here won't be listed in command history
export HISTIGNORE="exit:pwd:ls"

# Add programs from the Applications folder to PATH
PATH=$PATH:~/Applications
# Add pycharm to PATH
PATH="/c/Program Files/JetBrains/PyCharm 2023.2.1/bin":$PATH
PATH=$PATH:"/c/Program Files/7-Zip"
PATH=$PATH:"/c/cygwin64/bin"

# Enable vi bindings in the terminal
set -o vi
set -o history

