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

