#!/usr/bin/env bash
#
# Set things up for BCPL development

if [ -z "${DEVROOT}" ]
then
    case $(hostname) in
        copper)
            export DEVROOT=/home/david
            ;;
        nickel)
            export DEVROOT=/mnt/data/fs/bcpl-development
            ;;

        *)
            echo unknown host - set up DEVROOT manually
            return 1
            ;;
    esac
fi

export BL_ROOT=${DEVROOT}/bcpl-llvm
PATH=/usr/lib/llvm-20/bin:${PATH}

export BCPLROOT=${DEVROOT}/official_bcpl_release/BCPL/cintcode
export BCPL64ROOT=${DEVROOT}/official_bcpl_release/BCPL/cintcode
export BCPL64PATH=${BCPL64ROOT}/cin64
export BCPL64HDRS=${BCPL64ROOT}/g
export BCPL64SCRIPTS=${BCPL64ROOT}/s

alias @="${BL_ROOT}/bin/cintsys64 -c"
alias bcd="cd ${BL_ROOT}; cd "
alias mybcpl="@ ${BL_ROOT}/bin/mybcpl "

