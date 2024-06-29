#!/usr/bin/env bash

# Compile our local version of cintsys64 that includes our C binding
# to LLVM. We assume that the official release has been built and so
# all of the object files we need to link in already exist.

# We need to use our debug build because we need the C API header files
LLVMBIN=${DEVROOT}/llvm-debug-install/bin

if [ -z "${BCPLROOT}" ] 
then
    echo BCPLROOT is unset
    return
elif [ -z "${BL_ROOT}" ]
then
    echo BL_ROOT is unset
    return
fi

# Our world is 64 bits so we need to take the appropriate objects from the
# BCPL release
OBJ=${BCPLROOT}/obj64

# Make make sure our own results can be created here...
mkdir -p ${BL_ROOT}/obj
mkdir -p ${BL_ROOT}/bin

# Create the LLVM C binding
echo "** compiling the C API binding"
gcc -g -O0 -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/inc -I ${BL_ROOT}/src/c-api -I $(${LLVMBIN}/llvm-config --includedir) \
    -o ${BL_ROOT}/obj/llvm_bcpl_binding.o -c ${BL_ROOT}/src/llvm_bcpl_binding.c

# Create our bespoke cintsys dispatcher for external functions
echo "** compiling our version of extfn"
gcc -g -O0  -DEXTavail  -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/c-api -o ${BL_ROOT}/obj/extfn.o -c ${BL_ROOT}/src/extfn.c

echo "** compiling our zlib stub for LLVM"
gcc -g -O0  -DEXTavail  -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/c-api -o ${BL_ROOT}/obj/stubzlib.o -c ${BL_ROOT}/src/stubzlib.c

# Build the cintsys64 system. -lz is needed to satisfy LLVM's libLLVMSupport
echo "** building our cintpos64 system"
gcc  -g -O0 -Xlinker -Map=/tmp/output.map -o ${BL_ROOT}/bin/cintsys64  ${OBJ}/cinterp.o ${OBJ}/fasterp.o \
       ${OBJ}/kblib.o ${OBJ}/cfuncs.o \
       ${OBJ}/joyfn.o ${OBJ}/sdlfn.o ${OBJ}/glfn.o ${OBJ}/alsafn.o \
       ${BL_ROOT}/obj/extfn.o \
       ${BL_ROOT}/obj/stubzlib.o \
       ${BL_ROOT}/obj/llvm_bcpl_binding.o ${OBJ}/cintmain.o \
       $(${LLVMBIN}/llvm-config --ldflags --libs) -pthread  -lm -lstdc++ 


