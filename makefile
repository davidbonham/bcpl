.RECIPEPREFIX = !

# The GET directive will prefer our local versions of file to those in the
# official BCPL release
export CHDRPATH = src:src/inc:src/cinc:build:${BCPL64HDRS}
export NHDRPATH = src:src/inc:src/ninc:build:${BCPL64HDRS}

# ----------------------------------------------------------------------
# Our version of the CINTSYS system providing access to our LLVM binding
# via the Sys() mechanism
# ----------------------------------------------------------------------

# We need to use our debug build because we need the C API header files
LLVMBIN=${DEVROOT}/llvm-debug-install/bin
LLVMHDRS=$(shell ${LLVMBIN}/llvm-config --includedir)
LLVMLIBS=$(shell ${LLVMBIN}/llvm-config --ldflags --libs)
CC=clang
# Object files from the official BCPL release of cintsys64
OBJ=${BCPLROOT}/obj64
CINTSYSOBJS=${OBJ}/cinterp.o ${OBJ}/fasterp.o ${OBJ}/kblib.o ${OBJ}/cfuncs.o ${OBJ}/joyfn.o ${OBJ}/sdlfn.o ${OBJ}/glfn.o ${OBJ}/alsafn.o


build/llvm_cbcpl_binding_utilities.o:  src/llvm_bcpl_binding_utilities.c src/inc/llvm_bcpl_binding_utilities.h ${LLVMHDRS}/llvm-c/Core.h
!	@echo "** compiling the C API binding utilities"
!	@${CC} -g -O0  -I src/inc  -I ${LLVMHDRS} -I src/inc -o $@ -c $<

build/llvm_bcpl_binding.o: src/llvm_bcpl_binding.c src/inc/llvm_bcpl_binding.h src/inc/llvm_bcpl_binding_utilities.h
!	@echo "** compiling the C API binding"
!	@${CC} -g -O0 -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/inc -I ${BL_ROOT}/src/c-api -I ${LLVMHDRS} -o $@ -c $<

# Create our bespoke cintsys dispatcher for external functions
build/extfn.o: src/extfn.c src/inc/llvm_bcpl_binding.h src/c-api/extfn.enums.h src/c-api/extfn.function_table.imp src/c-api/extfn.string_table.imp
!	@echo "** compiling our version of extfn"
!	@${CC} -g -O0  -DEXTavail  -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/inc -I ${BL_ROOT}/src/c-api -o $@ -c $<

build/stubzlib.o : src/stubzlib.c
!	@echo "** compiling our zlib stub for LLVM"
!	@${CC} -g -O0  -DEXTavail  -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/c-api -o $@ -c $<


# Build the cintsys64 system. -lz is needed to satisfy LLVM's libLLVMSupport
bin/cintsys64 : ${CINTSYSOBJS} build/extfn.o build/stubzlib.o build/llvm_bcpl_binding.o build/llvm_cbcpl_binding_utilities.o ${OBJ}/cintmain.o
!	@echo "** building our cintpos64 system"
!	@${CC}  -g -O0 -Xlinker -Map=/tmp/output.map -o $@ $^  ${LLVMLIBS} -pthread  -lm -lstdc++

# ----------------------------------------------------------------------
# Build our BCPL compiler
# ----------------------------------------------------------------------

# We use the 64-bit CINTSYS interpreter's BCPL to run our compiler
CINTSYS = ${BL_ROOT}/bin/cintsys64

# And we build everything witthout position independence
CLANG = clang -no-pie -target x86_64-unknown-linux-gnu -Wl,-z,noexecstack -O2 -g3

# Standard header files used as-is from the officual distribution
CMPLHDRS = ${BCPL64HDRS}/libhdr.h ${BCPL64HDRS}/bcplfecg.h

build/llvm_nbcpl_binding_utilities.o:  src/llvm_bcpl_binding_utilities.c src/inc/llvm_bcpl_binding_utilities.h ${LLVMHDRS}/llvm-c/Core.h
!	@echo "** compiling the C API binding utilities"
!	@${CC} -g -O0  -DNATIVE -I src/inc  -I ${LLVMHDRS} -I src/inc -o $@ -c $<

# Tailor the standard BCPL BLIB with our own code. We now consider blib.b
# to be a derived object.
build/blib.b : rtl/blib.template ${BCPL64ROOT}/sysb/blib.b
!   @echo TAILOR BLIB
!   @scripts/tailor-blib.py $^ >$@


build/bcplsyn.b : src/bcplsyn.template ${BCPL64ROOT}/com/bcplsyn.b
!   @echo TAILOR BCPLSYN
!   @scripts/tailor-blib.py $^ >$@

build/bcpltrn.b : src/bcpltrn.template ${BCPL64ROOT}/com/bcpltrn.b
!   @echo TAILOR BCPLTRN
!   @scripts/tailor-blib.py $^ >$@

# ------------------------ CINTSYS -------------------------------------

# To build the compiler to run as OCODE under CINTSYS64,
# 1. we must compile everything in a single source file - src/cbcpl.b does this
# 2. We must inlude the LETs for the LLVM API that use the sys() mechanism
#    and the llvmapi header included comes from src/cinc not src/ninc
# 3. The native binding is held in extfn.c linked into CINTSYS64
cbcpl : src/bcpl.b build/bcplsyn.b build/bcpltrn.b src/bcplcgllvm.b ${CMPLHDRS} src/cinc/llvmapi.h
!    @echo CINTSYS BCPL
!    bin/cintsys64 -c bcpl t64 src/bcpl.b to cbcpl hdrs CHDRPATH

# ------------------------ NATIVE- -------------------------------------

build/blib.ll : build/blib.b ${CMPLHDRS}
!   @echo BCPL BLIB
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs NHDRPATH

build/%.ll : src/%.b
!   @echo BCPL $<
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs NHDRPATH

build/%.ll : build/%.b
!   @echo BCPL $<
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs NHDRPATH

build/%.s : build/%.ll
!   @echo LLC %
!	@llc $< -o $@

build/bcplsyn.ll    : build/bcplsyn.b ${CMPLHDRS}
build/bcpltrn.ll    : build/bcpltrn.b ${CMPLHDRS}
build/bcplcgllvm.ll : src/bcplcgllvm.b ${CMPLHDRS} src/inc/llvmgvec.h src/ninc/llvmapi.h src/cg_llvmhelpers.b src/cg_errors.b src/cg_workspace.b src/cg_simstack.b src/cg_labels.b src/cg_indirect.b src/cg_handlers.b
build/llvmcintsysapi.ll	 : src/llvmcintsysapi.b src/inc/llvmhdr.h src/inc/llvmenums.h

#
nbcpl : rtl/bcplinit.s build/bcplsyn.ll build/bcpltrn.ll build/bcplcgllvm.ll build/blib.ll rtl/bcplmain.c build/llvm_bcpl_binding.o build/llvm_nbcpl_binding_utilities.o build/stubzlib.o
!    @echo LINK $^
!    @${CLANG} $^ ${LLVMLIBS} -pthread  -lm -lstdc++ -o $@

clean :
!    rm build/*.ll

reallyclean:
!    rm build/*