.RECIPEPREFIX = !

.PHONY: clean libhdr reallyclean

# The GET directive will prefer our local versions of file to those in the
# official BCPL release
export HDRPATHC64 = src:src/inc:src/cinc:builddbg
export HDRPATHDBG = src:src/inc:src/ninc:builddbg
export HDRPATHREL = src:src/inc:src/ninc:buildrel

# Whatever this is set to externally, this is whe we need here
BCPL64HDRS=/mnt/data/fs/bcpl-development/official_bcpl_release/BCPL/cintcode/g

# ----------------------------------------------------------------------
# Our version of the CINTSYS system providing access to our LLVM binding
# via the Sys() mechanism
# ----------------------------------------------------------------------

LLVMREL=/usr/lib/llvm-20
LLVMVER=20.1.6

# We need to use our debug build because we need the C API header files
LLVMDBGHDRS=$(shell ${DEVROOT}/llvm-${LLVMVER}-debug-install/bin/llvm-config --includedir)
LLVMDBGLIBS=$(shell ${DEVROOT}/llvm-${LLVMVER}-debug-install/bin/llvm-config --link-static --ldflags --libs)
LLVMRELHDRS=$(shell ${DEVROOT}/llvm-${LLVMVER}-release-install/bin/llvm-config --includedir)
LLVMRELLIBS=$(shell ${DEVROOT}/llvm-${LLVMVER}-release-install/bin/llvm-config --link-static --ldflags --libs)
DBGCFLAGS=$(shell ${DEVROOT}/llvm-${LLVMVER}-debug-install/bin/llvm-config --cflags)
RELCFLAGS=$(shell ${DEVROOT}/llvm-${LLVMVER}-release-install/bin/llvm-config --cflags)

# And we build everything witthout position independence
CLANG=${LLVMREL}/bin/clang -no-pie -target x86_64-unknown-linux-gnu -Wl,-z,noexecstack -g3
CC=${LLVMREL}/bin/clang -g3

# Object files from the official BCPL release of cintsys64
OBJ=${BCPLROOT}/obj64
CINTSYSOBJS=${OBJ}/cinterp.o ${OBJ}/fasterp.o ${OBJ}/kblib.o ${OBJ}/cfuncs.o ${OBJ}/joyfn.o ${OBJ}/sdlfn.o ${OBJ}/glfn.o ${OBJ}/alsafn.o

# THe code generator and the files it include
CGSRC=src/bcplcgllvm.b src/cg_llvmhelpers.b src/cg_errors.b src/cg_workspace.b src/cg_simstack.b src/cg_labels.b src/cg_indirect.b src/cg_handlers.b


build%/llvm_cbcpl_binding_utilities.o:  src/llvm_bcpl_binding_utilities.c src/inc/llvm_bcpl_binding_utilities.h ${LLVMDBGHDRS}/llvm-c/Core.h
!	@echo "** compiling the C API binding utilities"
!	@${CC} ${DBGCFLAGS} -O0  -I src/inc -I src/inc -o $@ -c $<


# Create our bespoke cintsys dispatcher for external functions
build%/extfn.o: src/extfn.c src/inc/llvm_bcpl_binding.h src/c-api/extfn.enums.h src/c-api/extfn.function_table.imp src/c-api/extfn.string_table.imp
!	@echo "** compiling our version of extfn"
!	@${CC}  ${DBGCFLAGS}-O0  -DEXTavail  -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/inc -I ${BL_ROOT}/src/c-api -o $@ -c $<


# Build the cintsys64 system. -lz is needed to satisfy LLVM's libLLVMSupport
bin/cintsys64 : ${CINTSYSOBJS} builddbg/extfn.o builddbg/stubzlib.o builddbg/llvm_bcpl_binding.o builddbg/llvm_cbcpl_binding_utilities.o ${OBJ}/cintmain.o
!	@echo "** building our cintpos64 system"
!	@${CC} ${DBGCFLAGS} -O0 -Xlinker -Map=/tmp/output.map -o $@ $^  ${LLVMDBGLIBS} -pthread  -lm -lstdc++

# ----------------------------------------------------------------------
# Build our BCPL compiler - debug version
# ----------------------------------------------------------------------

# We use the 64-bit CINTSYS interpreter's BCPL to run our compiler
CINTSYS = ${BL_ROOT}/bin/cintsys64

# Standard header files used as-is from the officual distribution
RELCMPLHDRS = src/inc/libhdr.h buildrel/bcplfecg.h
DBGCMPLHDRS = src/inc/libhdr.h builddbg/bcplfecg.h

builddbg:
!   @echo "** create builddbg"
!   @mkdir builddbg

builddbg/llvm_nbcpl_binding_utilities.o:  src/llvm_bcpl_binding_utilities.c src/inc/llvm_bcpl_binding_utilities.h ${LLVMDBGHDRS}/llvm-c/Core.h | builddbg
!	@echo "** compiling the C API binding utilities"
!	@${CC} ${DBGCFLAGS} -O0  -DNATIVE -I src/inc -I src/inc -o $@ -c $<

builddbg/llvm_bcpl_binding.o: src/llvm_bcpl_binding.c src/inc/llvm_bcpl_binding.h src/inc/llvm_bcpl_binding_utilities.h | builddbg
!	@echo "** compiling the C API binding"
!	@${CC} ${DBGCFLAGS} -O0 -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/inc -I ${BL_ROOT}/src/c-api -o $@ -c $<

builddbg/stubzlib.o : src/stubzlib.c | builddbg
!	@echo "** compiling our zlib stub for LLVM"
!	@${CC} ${DBGCFLAGS} -O0  -DEXTavail  -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/c-api -o $@ -c $<

# Tailor the standard BCPL BLIB with our own code. We now consider blib.b
# to be a derived object.
builddbg/blib.b : rtl/blib.template ${BCPL64ROOT}/sysb/blib.b | builddbg
!   @echo \*\* TAILOR BLIB.B
!   @scripts/tailor-blib.py $^ >$@

builddbg/bcplfecg.h: ${BCPL64HDRS}/bcplfecg.h
!   @echo \*\* COPY BCPLFEGC.H
!   @cp ${BCPL64HDRS}/bcplfecg.h builddbg/

builddbg/bcplsyn.b : src/bcplsyn.template ${BCPL64ROOT}/com/bcplsyn.b | builddbg
!   @echo \*\* TAILOR BCPLSYN.B
!   @scripts/tailor-blib.py $^ >$@

builddbg/bcpltrn.b : src/bcpltrn.template ${BCPL64ROOT}/com/bcpltrn.b | builddbg
!   @echo \*\* TAILOR BCPLTRN.B
!   @scripts/tailor-blib.py $^ >$@

builddbg/blib.ll : builddbg/blib.b ${DBGCMPLHDRS}
!   @echo \*\* BCPL BLIB.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHDBG

builddbg/bcplcgllvm.ll : ${CGSRC} ${DBGCMPLHDRS} src/inc/llvmgvec.h src/ninc/llvmapi.h | builddbg
!   @echo \*\* BCPL BCPLCGLLVM.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHDBG

builddbg/bcplsyn.ll : builddbg/bcplsyn.b builddbg/bcplfecg.h
!   @echo \*\* BCPL BCPLSYN.LL
!   ${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHDBG

builddbg/bcpltrn.ll : builddbg/bcpltrn.b
!   @echo \*\* BCPL BCPLTRN.LL
!   ${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHDBG

bcpld : rtl/bcplinit.s builddbg/bcplsyn.ll builddbg/bcpltrn.ll builddbg/bcplcgllvm.ll builddbg/blib.ll rtl/bcplmain.c builddbg/llvm_bcpl_binding.o builddbg/llvm_nbcpl_binding_utilities.o builddbg/stubzlib.o
!    @echo \*\* LINK BCPLD
!    @${CLANG}  ${DBGCFLAGS} -O0 $^ ${LLVMDBGLIBS} -pthread  -lm -lstdc++ -o $@

# ----------------------------------------------------------------------
# Build our BCPL compiler - release version
# ----------------------------------------------------------------------

buildrel:
!   @echo "** create buildrel"
!   @mkdir buildrel

buildrel/llvm_bcpl_binding.o: src/llvm_bcpl_binding.c src/inc/llvm_bcpl_binding.h src/inc/llvm_bcpl_binding_utilities.h | buildrel
!	@echo "** compiling the C API binding"
!	@${CC} ${RELCFLAGS} -O2 -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/inc -I ${BL_ROOT}/src/c-api -o $@ -c $<

buildrel/llvm_nbcpl_binding_utilities.o:  src/llvm_bcpl_binding_utilities.c src/inc/llvm_bcpl_binding_utilities.h ${LLVMRELHDRS}/llvm-c/Core.h | buildrel
!	@echo "** compiling the C API binding utilities"
!	@${CC} ${RELCFLAGS} -O2  -DNATIVE -I src/inc -I src/inc -o $@ -c $<

buildrel/stubzlib.o : src/stubzlib.c | buildrel
!	@echo "** compiling our zlib stub for LLVM"
!	@${CC} ${RELCFLAGS} -O2  -DEXTavail  -DforLinux64 -I ${BCPLROOT}/sysc -I ${BL_ROOT}/src/c-api -o $@ -c $<

# Tailor the standard BCPL BLIB with our own code. We now consider blib.b
# to be a derived object.
buildrel/blib.b : rtl/blib.template ${BCPL64ROOT}/sysb/blib.b | buildrel
!   @echo \*\* TAILOR BLIB.B
!   @scripts/tailor-blib.py $^ >$@

buildrel/bcplfecg.h: ${BCPL64HDRS}/bcplfecg.h
!   @echo \*\* COPY BCPLFEGC.H
!   @cp ${BCPL64HDRS}/bcplfecg.h buildrel/

buildrel/bcplsyn.b : src/bcplsyn.template ${BCPL64ROOT}/com/bcplsyn.b | buildrel
!   @echo \*\* TAILOR BCPLSYN.B
!   @scripts/tailor-blib.py $^ >$@

buildrel/bcpltrn.b : src/bcpltrn.template ${BCPL64ROOT}/com/bcpltrn.b | buildrel
!   @echo \*\* TAILOR BCPLTRN.B
!   @scripts/tailor-blib.py $^ >$@

buildrel/blib.ll : buildrel/blib.b ${RELCMPLHDRS}
!   @echo \*\* BCPL BLIB.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHREL

buildrel/bcplcgllvm.ll : ${CGSRC} ${RELCMPLHDRS} src/inc/llvmgvec.h src/ninc/llvmapi.h | buildrel
!   @echo \*\* BCPL BCPLCGLLVM.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHREL

buildrel/bcplsyn.ll : buildrel/bcplsyn.b buildrel/bcplfecg.h
!   @echo \*\* BCPL BCPLSYN.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHREL

buildrel/bcpltrn.ll : buildrel/bcpltrn.b
!   @echo \*\* BCPL BCPLTRN.LL
!   @${CINTSYS} -c bin/mybcpl t64 noselst $< to $@ hdrs HDRPATHREL

bcplr : rtl/bcplinit.s buildrel/bcplsyn.ll buildrel/bcpltrn.ll buildrel/bcplcgllvm.ll buildrel/blib.ll rtl/bcplmain.c buildrel/llvm_bcpl_binding.o buildrel/llvm_nbcpl_binding_utilities.o buildrel/stubzlib.o
!    @echo \*\* LINK BCPLR
!    ${CLANG} ${RELCFLAGS} -O2 $^ ${LLVMRELLIBS} -pthread  -lm -lstdc++ -o $@


# ------------------------ CINTSYS -------------------------------------

# To build the compiler to run as OCODE under CINTSYS64,
# 1. we must compile everything in a single source file - src/cbcpl.b does this
# 2. We must inlude the LETs for the LLVM API that use the sys() mechanism
#    and the llvmapi header included comes from src/cinc not src/ninc
# 3. The native binding is held in extfn.c linked into CINTSYS64
cbcpl : src/bcpl.b builddbg/bcplsyn.b builddbg/bcpltrn.b ${CGSRC} ${DBGCMPLHDRS} src/cinc/llvmapi.h
!    @echo \*\*  CINTSYS BCPL
!    bin/cintsys64 -c bcpl t64 src/bcpl.b to cbcpl hdrs HDRPATHC64

# ------------------------ NATIVE- -------------------------------------


%/llvmcintsysapi.ll	 : src/llvmcintsysapi.b src/inc/llvmhdr.h src/inc/llvmenums.h


clean:
!    rm builddbg/*.ll buildrel/*.ll

reallyclean:
!    rm builddbg/* buildrel/*

libhdr:
!    @ bin/cintsys64 -c bcpl t64 xref ${BCPL64HDRS}/libhdr.h >/tmp/cintsys64_libhdr.xref
!    @ scripts/genlibhdr.py /tmp/cintsys64_libhdr.xref                                <src/inc/libhdr.template >src/inc/libhdr.h
!    @ scripts/genlibhdr.py /tmp/cintsys64_libhdr.xref --vector rtl/bcplinit.template <src/inc/libhdr.template >rtl/bcplinit.s
!    @ scripts/genlibhdr.py /tmp/cintsys64_libhdr.xref --enum                         <src/inc/libhdr.template >rtl/global_enums.h
!    @ ls -ltr src/inc/libhdr.h rtl/global_enums.h rtl/bcplinit.s