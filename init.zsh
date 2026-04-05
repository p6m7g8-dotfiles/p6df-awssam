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
# Function: p6df::modules::awssam::env::init(_module, _dir)
#
#  Args:
#	_module -
#	_dir -
#
#  Environment:	 DOCKER_DEFAULT_PLATFORM DOCKER_HOST HOME
#>
######################################################################
p6df::modules::awssam::env::init() {

  local _module="$1"
  local _dir="$2"
  p6_env_export "DOCKER_HOST" "unix://$HOME/.docker/run/docker.sock"
  p6_env_export "DOCKER_DEFAULT_PLATFORM" "linux/amd64"

  p6_return_void
}
