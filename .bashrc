# If not running interactively, don't do anything
[[ $- == *i* ]] || return

[ -n "$PS1" ] && source ~/.bash_profile;

# Use podman for building images with AWS CDK if docker is not installed
if ! command -v docker &> /dev/null && command -v podman &> /dev/null; then
  export CDK_DOCKER=podman
fi
