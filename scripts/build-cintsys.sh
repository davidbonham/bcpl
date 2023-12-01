#!/usr/bin/env bash

# Compile our local version of cintsys64 that includes our C binding
# to LLVM. We assume that the official release has been build and so
# all of the object files we need to link in already exist.

# Compile our local extfn64.c

OBJ=${BCPLROOT}/obj64
echo OBJ=$OBJ

gcc -o ${BL_ROOT}/bin/cintsys64 ${OBJ}/cintmain.o ${OBJ}/cinterp.o ${OBJ}/fasterp.o \
       ${OBJ}/kblib.o ${OBJ}/cfuncs.o ${OBJ}/joyfn.o ${OBJ}/sdlfn.o ${OBJ}/glfn.o ${OBJ}/extfn.o \
       ${OBJ}/llvm_bcpl_binding64.o \
       `llvm-config --ldflags --libs` -pthread -ltinfo -lz -lm -lstdc++


