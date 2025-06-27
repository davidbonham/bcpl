#!/usr/bin/env bash
#
# sudo apt install valgrind
# sudo snap install --classic cmake

# Check that if an argument is passed, it is 'debug' or 'release'. By default,
# we assume debug.
umode=DEBUG

if [[ $# -eq 1 ]] || [[ $# -eq 2 ]]
then
    umode="${1^^}"
    if [[ "${umode}" != "DEBUG" ]] && [[ "${umode}" != "RELEASE" ]] && [[ "${umode}" != "RELWITHDEBINFO" ]]
    then
        echo error: expected optional parameter DEBUG or RELEASE
        exit 1
    fi
elif [[ $# -ne 0 ]]
then
    echo error: expected optional parameter DEBUG or RELEASE
    exit 1
fi


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
    export LLVM_VERSION=20.1.7
    export LLVMREL=llvm-project-${LLVM_VERSION}

    mode="${umode,,}"
    builddir=llvm-build-${mode}
    installdir=${DEVROOT}/llvm-${LLVM_VERSION}-${mode}-install

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

    # Preserve any existing installation directory
    if [ -d ${installdir} ]
    then
        if [ -d ${installdir}-old ]
        then
            # We want to preseve llvm-build in llvm-build-old but it already
            # exists. I really should clean things up
            echo \*\*\* Unable to preserve ${installdir} - do some tidying up:
            ls -ltrd ${installdir}*
        else
            echo === Preserving ${installdir} in ${installdir}-old
            mv ${installdir} ${installdir}-old
        fi
    fi

    # Build llvm
    PATH=/usr/lib/llvm-20/bin:${PATH}

    echo === Configuring  ${LLVMREL}.src/llvm
    mkdir ${builddir}
    cmake -B ${builddir} -G "Unix Makefiles"                    \
        -DLLVM_BUILD_TOOLS=NO                                   \
        -DLLVM_TARGETS_TO_BUILD=llvm                            \
        -DCMAKE_BUILD_TYPE=${umode}                             \
        -DCMAKE_INSTALL_PREFIX=${installdir}                    \
        -DCMAKE_BUILD_WITH_INSTALL_RPATH=TRUE                   \
        -DLLVM_TARGETS_TO_BUILD=host                            \
        -DLLVM_ABI_BREAKING_CHECKS=WITH_ASSERTS                 \
        -DLLVM_BUILD_LLVM_DYLIB=TRUE                            \
        -DCMAKE_C_COMPILER=clang-20                             \
        ${LLVMREL}.src/llvm

    echo === Building 
    cmake --build ${builddir} -j 4
    cmake --build ${builddir} --target llvm-config

    # Install
    echo === Installing 

    make -C ${builddir} install
    cp ${builddir}/bin/llvm-config ${installdir}/bin/

    # Clean up
    if [ "$2" = "clean" ]
    then
        echo === Cleaning up
        rm -r ${builddir}
    fi

    echo === Done
fi

