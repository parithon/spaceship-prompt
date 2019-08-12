#
# PoshGit
#

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_POSHGIT_SHOW="${SPACESHIP_POSHGIT_SHOW=true}"
SPACESHIP_POSHGIT_PREFIX="${SPACESHIP_POSHGIT_PREFIX="on "}"
SPACESHIP_POSHGIT_SUFFIX="${SPACESHIP_POSHGIT_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_POSHGIT_SYMBOL="${SPACESHIP_POSHGIT_SYMBOL=" "}"

# ------------------------------------------------------------------------------
# Dependencies
# ------------------------------------------------------------------------------

source "$SPACESHIP_ROOT/sections/git_branch.zsh"
source "$SPACESHIP_ROOT/sections/git_status.zsh"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show both git branch and git status:
#   spaceship_git_branch
#   spaceship_git_status
spaceship_poshgit() {
  [[ $SPACESHIP_POSHGIT_SHOW == false ]] && return

  local git_branch="$(spaceship_git_branch)" git_status="$(spaceship_git_status)"

  [[ -z $git_branch ]] && return

  spaceship::section \
    'white' \
    "$SPACESHIP_POSHGIT_PREFIX" \
    "${git_branch}${git_status}" \
    "$SPACESHIP_POSHGIT_SUFFIX"
}
