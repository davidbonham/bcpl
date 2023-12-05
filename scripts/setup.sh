
export BL_ROOT=/home/david/bcpl-llvm
PATH=/usr/lib/llvm-17/bin:${PATH}

export BCPLROOT=/home/david/official_bcpl_release/BCPL/cintcode
export BCPL64ROOT=/home/david/official_bcpl_release/BCPL/cintcode
export BCPL64PATH=$BCPL64ROOT/cin64
export BCPL64HDRS=$BCPL64ROOT/g
export BCPL64SCRIPTS=$BCPL64ROOT/s
alias @="${BL_ROOT}/bin/cintsys64 -c"
