#!/usr/bin/env bash
#
# sudo apt install valgrind
# sudo snap install --classic cmake
#
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
    if [ -d llvm-build ] 
    then
        if [ -d llvm-build.old ]
        then
            # We want to preseve llvm-build in llvm-build-old but it already
            # exists. I really should clean things up
            echo \*\*\* Unable to preserve llvm-build - do some tidying up:
            ls -ltrd llvm-build*
        else 
            echo === Preserving llvm-build in llvm-build-old
            mv llvm-build llvm-build-old
        fi
    fi

    # Build llvm
    echo === Configuring  ${LLVMREL}.src/llvm
    mkdir llvm-build
    cmake -B llvm-build -G "Unix Makefiles"                  \
        -DLLVM_BUILD_TOOLS=NO                                \
        -DLLVM_ENABLE_TERMINFO=NO                            \
        -DLLVM_TARGETS_TO_BUILD=llvm                         \
        -DCMAKE_BUILD_TYPE=DEBUG                             \
        -DCMAKE_INSTALL_PREFIX=${DEVROOT}/llvm-debug-install \
        -DCMAKE_BUILD_WITH_INSTALL_RPATH=TRUE                \
        -DLLVM_TARGETS_TO_BUILD=host                         \
        -DCMAKE_C_COMPILER=clang-20                          \
        ${LLVMREL}.src/llvm

    echo === Building 
    cmake --build llvm-build -j 4
    cmake --build llvm-build --target llvm-config

    # Install
    echo === Installing 

    make -C llvm-build install
    cp llvm-build/bin/llvm-config ${DEVROOT}/llvm-debug-install/bin/

    # Clean up
    if [ "$1" = "clean" ]
    then
        echo === Cleaning up
        rm -r ${LLVMREL}.src 
        rm /tmp/${LLVMREL}.src.tar.xz
        rm -r llvm-build
    fi

    echo === Done
fi

