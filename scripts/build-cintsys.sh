#!/usr/bin/env bash

# Compile our local version of cintsys64 that includes our C binding
# to LLVM. We assume that the official release has been build and so
# all of the object files we need to link in already exist.

# Compile our local extfn64.c

# Use the release or my own debug build. The debug build is built like this,
# positioned in the top directory of the cloned LLVM tree:
#
# cmake -S llvm -B build -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_INSTALL_PREFIX=/home/david/llvm-debug-install -DLLVM_TARGETS_TO_BUILD=X86 -DLLVM_PARALLEL_COMPILE_JOBS=4 -DLLVM_PARALLEL_LINK_JOBS=4 /home/david/llvm-project-17.0.6.src
# cmake --build build -j 4
# make -C build install

LLVMBIN=/usr/lib/llvm-17/bin
#LLVMBIN=/home/david/llvm-debug-install/bin

if [[ -z "${BCPLROOT}" ]]; then
    echo BCPLROOT is unset
    exit
elif [[ -z "${BL_ROOT}" ]]; then
    echo BL_ROOT is unset
    exit
fi

OBJ=${BCPLROOT}/obj64
echo OBJ=$OBJ
echo  `${LLVMBIN}/llvm-config --includedir`

# Create the LLVM C binding
gcc -g -O0 -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/inc -I ${BL_ROOT}/src/c-api -I `${LLVMBIN}/llvm-config --includedir` \
    -o ${BL_ROOT}/obj/llvm_bcpl_binding.o -c ${BL_ROOT}/src/llvm_bcpl_binding.c

# Create our bespoke cintsys dispatcher for external functions
gcc -g -O0  -DEXTavail  -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/c-api -o ${BL_ROOT}/obj/extfn.o -c ${BL_ROOT}/src/extfn.c

gcc  -g -O0 -Xlinker -Map=/tmp/output.map -o ${BL_ROOT}/bin/cintsys64  ${OBJ}/cinterp.o ${OBJ}/fasterp.o \
       ${OBJ}/kblib.o ${OBJ}/cfuncs.o \
       ${OBJ}/joyfn.o ${OBJ}/sdlfn.o ${OBJ}/glfn.o ${OBJ}/alsafn.o \
       ${BL_ROOT}/obj/extfn.o \
       ${BL_ROOT}/obj/llvm_bcpl_binding.o ${OBJ}/cintmain.o \
       `${LLVMBIN}/llvm-config --ldflags --libs` -pthread -ltinfo  -lm -lstdc++


