# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::awssam::deps()
#
#>
######################################################################
p6df::modules::awssam::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-aws
    p6m7g8/p6-zsh-sam-plugin
    aws/aws-sam-cli
  )
}

######################################################################
#<
#
# Function: p6df::modules::awssam::init()
#
#  Environment:	 DOCKER_DEFAULT_PLATFORM DOCKER_HOST
#>
######################################################################
p6df::modules::awssam::init() {

  p6_env_export "DOCKER_HOST" "unix://$HOME/.docker/run/docker.sock"
  p6_env_export " DOCKER_DEFAULT_PLATFORM" "linux/amd64"

  p6_return_void
}
