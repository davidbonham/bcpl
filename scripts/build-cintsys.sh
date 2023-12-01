#!/usr/bin/env bash

# Compile our local version of cintsys64 that includes our C binding
# to LLVM. We assume that the official release has been build and so
# all of the object files we need to link in already exist.

# Compile our local extfn64.c

if [[ -z "${BCPLROOT}" ]]; then
    echo BCPLROOT is unset
    exit
elif [[ -z "${BL_ROOT}" ]]; then
    echo BL_ROOT is unset
    exit
fi

OBJ=${BCPLROOT}/obj64
echo OBJ=$OBJ


# Create the LLVM C binding
gcc -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/inc -I ${BL_ROOT}/src/c-api -I `llvm-config --includedir` \
    -o ${BL_ROOT}/obj/llvm_bcpl_binding.o -c ${BL_ROOT}/src/llvm_bcpl_binding.c

# Create our bespoke cintsys dispatcher for external functions
gcc -DEXTavail -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/c-api -o ${BL_ROOT}/obj/extfn.o -c ${BL_ROOT}/src/extfn.c

gcc  -Xlinker -Map=/tmp/output.map -o ${BL_ROOT}/bin/cintsys64  ${OBJ}/cinterp.o ${OBJ}/fasterp.o \
       ${OBJ}/kblib.o ${OBJ}/cfuncs.o \
       ${OBJ}/joyfn.o ${OBJ}/sdlfn.o ${OBJ}/glfn.o ${OBJ}/alsafn.o \
       ${BL_ROOT}/obj/extfn.o \
       ${BL_ROOT}/obj/llvm_bcpl_binding.o ${OBJ}/cintmain.o \
       `llvm-config --ldflags --libs` -pthread -ltinfo  -lm -lstdc++


