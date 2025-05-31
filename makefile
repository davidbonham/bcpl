.RECIPEPREFIX = !

# The GET directive will prefer our local versions of file to those in the
# official BCPL release
export HDRPATHC64 = src:src/inc:src/cinc:builddbg:${BCPL64HDRS}
export HDRPATHDBG = src:src/inc:src/ninc:builddbg:${BCPL64HDRS}
export HDRPATHREL = src:src/inc:src/ninc:builddbg:${BCPL64HDRS}

# ----------------------------------------------------------------------
# Our version of the CINTSYS system providing access to our LLVM binding
# via the Sys() mechanism
# ----------------------------------------------------------------------

LLVMREL=/usr/lib/llvm-20

MODE ?= dbg

ifeq "${MODE}" "dbg"
	LLVMBIN=${DEVROOT}/llvm-debug-install/bin
	EXT=dbg
else
	LLVMBIN=${DEVROOT}/llvm-release-install/bin
	#LLVMBIN=${LLVMREL}/bin
	EXT=rel
endif

# We need to use our debug build because we need the C API header files
LLVMDBGHDRS=$(shell ${DEVROOT}/llvm-debug-install/bin/llvm-config --includedir)
LLVMDBGLIBS=$(shell ${DEVROOT}/llvm-debug-install/bin/llvm-config --ldflags --libs)
LLVMRELHDRS=$(shell ${DEVROOT}/llvm-release-install/bin/llvm-config --includedir)
LLVMRELLIBS=$(shell ${DEVROOT}/llvm-release-install/bin/llvm-config --ldflags --libs)

CC=${LLVMREL}/bin/clang

# Object files from the official BCPL release of cintsys64
OBJ=${BCPLROOT}/obj64
CINTSYSOBJS=${OBJ}/cinterp.o ${OBJ}/fasterp.o ${OBJ}/kblib.o ${OBJ}/cfuncs.o ${OBJ}/joyfn.o ${OBJ}/sdlfn.o ${OBJ}/glfn.o ${OBJ}/alsafn.o

# THe code generator and the files it include
CGSRC=src/bcplcgllvm.b src/cg_llvmhelpers.b src/cg_errors.b src/cg_workspace.b src/cg_simstack.b src/cg_labels.b src/cg_indirect.b src/cg_handlers.b

build%/llvm_cbcpl_binding_utilities.o:  src/llvm_bcpl_binding_utilities.c src/inc/llvm_bcpl_binding_utilities.h ${LLVMDBGHDRS}/llvm-c/Core.h
!	@echo "** compiling the C API binding utilities"
!	@${CC} -g -O0  -I src/inc  -I ${LLVMHDRS} -I src/inc -o $@ -c $<


# Create our bespoke cintsys dispatcher for external functions
build%/extfn.o: src/extfn.c src/inc/llvm_bcpl_binding.h src/c-api/extfn.enums.h src/c-api/extfn.function_table.imp src/c-api/extfn.string_table.imp
!	@echo "** compiling our version of extfn"
!	@${CC} -g -O0  -DEXTavail  -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/inc -I ${BL_ROOT}/src/c-api -o $@ -c $<

build%/stubzlib.o : src/stubzlib.c
!	@echo "** compiling our zlib stub for LLVM"
!	@${CC} -g -O0  -DEXTavail  -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/c-api -o $@ -c $<


# Build the cintsys64 system. -lz is needed to satisfy LLVM's libLLVMSupport
bin/cintsys64 : ${CINTSYSOBJS} build${EXT}/extfn.o build${EXT}/stubzlib.o build${EXT}/llvm_bcpl_binding.o build${EXT}/llvm_cbcpl_binding_utilities.o ${OBJ}/cintmain.o
!	@echo "** building our cintpos64 system"
!	@${CC}  -g -O0 -Xlinker -Map=/tmp/output${EXT}.map -o $@ $^  ${LLVMDBGLIBS} -pthread  -lm -lstdc++

# ----------------------------------------------------------------------
# Build our BCPL compiler - debug version
# ----------------------------------------------------------------------

# We use the 64-bit CINTSYS interpreter's BCPL to run our compiler
CINTSYS = ${BL_ROOT}/bin/cintsys64

# And we build everything witthout position independence
CLANG = ${LLVMREL}/bin/clang -no-pie -target x86_64-unknown-linux-gnu -Wl,-z,noexecstack -O2 -g3

# Standard header files used as-is from the officual distribution
CMPLHDRS = ${BCPL64HDRS}/libhdr.h ${BCPL64HDRS}/bcplfecg.h

builddbg/llvm_nbcpl_binding_utilities.o:  src/llvm_bcpl_binding_utilities.c src/inc/llvm_bcpl_binding_utilities.h ${LLVMDBGHDRS}/llvm-c/Core.h
!	@echo "** compiling the C API binding utilities"
!	@${CC} -g -O0  -DNATIVE -I src/inc  -I ${LLVMDBGHDRS} -I src/inc -o $@ -c $<

builddbg/llvm_bcpl_binding.o: src/llvm_bcpl_binding.c src/inc/llvm_bcpl_binding.h src/inc/llvm_bcpl_binding_utilities.h
!	@echo "** compiling the C API binding"
!	@${CC} -g -O0 -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/inc -I ${BL_ROOT}/src/c-api -I ${LLVMDBGHDRS} -o $@ -c $<

# Tailor the standard BCPL BLIB with our own code. We now consider blib.b
# to be a derived object.
builddbg/blib.b : rtl/blib.template ${BCPL64ROOT}/sysb/blib.b
!   @echo \*\* TAILOR BLIB.B
!   @scripts/tailor-blib.py $^ >$@


builddbg/bcplsyn.b : src/bcplsyn.template ${BCPL64ROOT}/com/bcplsyn.b
!   @echo \*\* TAILOR BCPLSYN.B
!   @scripts/tailor-blib.py $^ >$@

builddbg/bcpltrn.b : src/bcpltrn.template ${BCPL64ROOT}/com/bcpltrn.b
!   @echo \*\* TAILOR BCPLTRN.B
!   @scripts/tailor-blib.py $^ >$@

builddbg/blib.ll : builddbg/blib.b ${CMPLHDRS}
!   @echo \*\* BCPL BLIB.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHDBG

builddbg/bcplcgllvm.ll : ${CGSRC} ${CMPLHDRS} src/inc/llvmgvec.h src/ninc/llvmapi.h
!   @echo \*\* BCPL BCPLCGLLVM.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHDBG

builddbg/bcplsyn.ll : builddbg/bcplsyn.b
!   @echo \*\* BCPL BCPLSYN.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHDBG

builddbg/bcpltrn.ll : builddbg/bcpltrn.b
!   @echo \*\* BCPL BCPLTRN.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHDBG

bcpld : rtl/bcplinit.s builddbg/bcplsyn.ll builddbg/bcpltrn.ll builddbg/bcplcgllvm.ll builddbg/blib.ll rtl/bcplmain.c builddbg/llvm_bcpl_binding.o builddbg/llvm_nbcpl_binding_utilities.o builddbg/stubzlib.o
!    @echo \*\* LINK BCPLD
!    @${CLANG} $^ ${LLVMDBGLIBS} -pthread  -lm -lstdc++ -o $@

# ----------------------------------------------------------------------
# Build our BCPL compiler - release version
# ----------------------------------------------------------------------


buildrel/llvm_bcpl_binding.o: src/llvm_bcpl_binding.c src/inc/llvm_bcpl_binding.h src/inc/llvm_bcpl_binding_utilities.h
!	@echo "** compiling the C API binding"
!	@${CC} -g -O0 -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/inc -I ${BL_ROOT}/src/c-api -I ${LLVMRELHDRS} -o $@ -c $<

buildrel/llvm_nbcpl_binding_utilities.o:  src/llvm_bcpl_binding_utilities.c src/inc/llvm_bcpl_binding_utilities.h ${LLVMRELHDRS}/llvm-c/Core.h
!	@echo "** compiling the C API binding utilities"
!	@${CC} -g -O0  -DNATIVE -I src/inc  -I ${LLVMRELHDRS} -I src/inc -o $@ -c $<

# Tailor the standard BCPL BLIB with our own code. We now consider blib.b
# to be a derived object.
buildrel/blib.b : rtl/blib.template ${BCPL64ROOT}/sysb/blib.b
!   @echo \*\* TAILOR BLIB.B
!   @scripts/tailor-blib.py $^ >$@


buildrel/bcplsyn.b : src/bcplsyn.template ${BCPL64ROOT}/com/bcplsyn.b
!   @echo \*\* TAILOR BCPLSYN.B
!   @scripts/tailor-blib.py $^ >$@

buildrel/bcpltrn.b : src/bcpltrn.template ${BCPL64ROOT}/com/bcpltrn.b
!   @echo \*\* TAILOR BCPLTRN.B
!   @scripts/tailor-blib.py $^ >$@

buildrel/blib.ll : buildrel/blib.b ${CMPLHDRS}
!   @echo \*\* BCPL BLIB.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHREL

buildrel/bcplcgllvm.ll : ${CGSRC} ${CMPLHDRS} src/inc/llvmgvec.h src/ninc/llvmapi.h
!   @echo \*\* BCPL BCPLCGLLVM.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHREL

buildrel/bcplsyn.ll : buildrel/bcplsyn.b
!   @echo \*\* BCPL BCPLSYN.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHREL

buildrel/bcpltrn.ll : buildrel/bcpltrn.b
!   @echo \*\* BCPL BCPLTRN.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHREL

bcplr : rtl/bcplinit.s buildrel/bcplsyn.ll buildrel/bcpltrn.ll buildrel/bcplcgllvm.ll buildrel/blib.ll rtl/bcplmain.c buildrel/llvm_bcpl_binding.o buildrel/llvm_nbcpl_binding_utilities.o buildrel/stubzlib.o
!    @echo \*\* LINK BCPLR
!    ${CLANG} $^ ${LLVMRELLIBS} -pthread  -lm -lstdc++ -o $@


# ------------------------ CINTSYS -------------------------------------

# To build the compiler to run as OCODE under CINTSYS64,
# 1. we must compile everything in a single source file - src/cbcpl.b does this
# 2. We must inlude the LETs for the LLVM API that use the sys() mechanism
#    and the llvmapi header included comes from src/cinc not src/ninc
# 3. The native binding is held in extfn.c linked into CINTSYS64
cbcpl : src/bcpl.b builddbg/bcplsyn.b builddbg/bcpltrn.b ${CGSRC} ${CMPLHDRS} src/cinc/llvmapi.h
!    @echo \*\*  CINTSYS BCPL
!    bin/cintsys64 -c bcpl t64 src/bcpl.b to cbcpl hdrs HDRPATHC64

# ------------------------ NATIVE- -------------------------------------


%/llvmcintsysapi.ll	 : src/llvmcintsysapi.b src/inc/llvmhdr.h src/inc/llvmenums.h


clean :
!    rm builddbg/*.ll buildrel/*.ll

reallyclean:
!    rm builddbg/* buildrel/*