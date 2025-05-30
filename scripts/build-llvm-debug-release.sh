#!/usr/bin/env bash
#
# sudo apt install valgrind
# sudo snap install --classic cmake

# Check that if an argument is passed, it is 'debug' or 'release'. By default,
# we assume debug.
umode=DEBUG

if [[ $# -eq 1 ]]
then
    umode="${1^^}"
    if [[ "${umode}" != "DEBUG" ]] && [[ "${umode}" != "RELEASE" ]]
    then
        echo error: expected optional parameter DEBUG or RELEASE
        exit 1
    fi
elif [[ $# -ne 0 ]]
then
    echo error: expected optional parameter DEBUG or RELEASE
    exit 1
fi
mode="${umode,,}"
builddir=llvm-build-${mode}

# Download the following release of LLVM and build a debug version, installing
# it in llvm-debug-install. You should be in the development root (the parent
# of bcpl-llvm) at this point
set -e

if [ ! -d bcpl-llvm ]; 
then
  echo "bcpl-llvm does not exist - this doesn't look like the right place."
else

    # Specify the release
    export DEVROOT=$(pwd)
    export LLVM_VERSION=20.1.3
    export LLVMREL=llvm-project-${LLVM_VERSION}

    echo === Building ${mode} version of ${LLVM_VERSION}

    # Prepare the source 
    if [ ! -d ${LLVMREL}.src ]
    then
        if [ -f /tmp/$LLVMREL.src.tar.xz ]
        then
            echo === Using existing tar file in /tmp
        else
            echo === Downloading ${LLVMREL}
            wget --directory-prefix=/tmp --no-verbose https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_VERSION}/${LLVMREL}.src.tar.xz
        fi
        echo === Extracting $LLVMREL
        tar --xz -x -f /tmp/${LLVMREL}.src.tar.xz
    else
        echo === Using existing ${LLVMREL}.src
    fi

    # Preserve any existing llvm-build directory
    if [ -d ${builddir} ]
    then
        if [ -d ${builddir}.old ]
        then
            # We want to preseve llvm-build in llvm-build-old but it already
            # exists. I really should clean things up
            echo \*\*\* Unable to preserve ${builddir} - do some tidying up:
            ls -ltrd ${builddir}*
        else 
            echo === Preserving ${builddir} in ${builddir}-old
            mv ${builddir} ${builddir}-old
        fi
    fi

    # Build llvm
    echo === Configuring  ${LLVMREL}.src/llvm
    mkdir ${builddir}
    cmake -B ${builddir} -G "Unix Makefiles"                    \
        -DLLVM_BUILD_TOOLS=NO                                   \
        -DLLVM_ENABLE_TERMINFO=NO                               \
        -DLLVM_TARGETS_TO_BUILD=llvm                            \
        -DCMAKE_BUILD_TYPE=$umode                               \
        -DCMAKE_INSTALL_PREFIX=${DEVROOT}/llvm-${mode}-install  \
        -DCMAKE_BUILD_WITH_INSTALL_RPATH=TRUE                   \
        -DLLVM_TARGETS_TO_BUILD=host                            \
        -DCMAKE_C_COMPILER=clang-20                             \
        ${LLVMREL}.src/llvm

    echo === Building 
    cmake --build ${builddir} -j 4
    cmake --build ${builddir} --target llvm-config

    # Install
    echo === Installing 

    make -C ${builddir} install
    cp ${builddir}/bin/llvm-config ${DEVROOT}/llvm-${mode}-install/bin/

    # Clean up
    if [ "$2" = "clean" ]
    then
        echo === Cleaning up
        rm -r ${LLVMREL}.src 
        rm /tmp/${LLVMREL}.src.tar.xz
        rm -r ${builddir}
    fi

    echo === Done
fi

