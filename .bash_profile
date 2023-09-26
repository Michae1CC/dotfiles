# Simplified dotfile for video recordings
# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add programs from the Applications folder to PATH
PATH=$PATH:~/Applications
# Add pycharm to PATH
PATH=$PATH:"/c/Program Files/JetBrains/PyCharm 2023.2.1/bin"
PATH=$PATH:"/c/Program Files/7-Zip"
PATH=$PATH:"/c/cygwin64/bin"

# Enable vi bindings in the terminal
set -o vi
set -o history

#Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi
