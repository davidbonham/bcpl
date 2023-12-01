void LLVMShutdown(void);


LLVMContextRef LLVMContextCreate(void);

LLVMContextRef LLVMGetGlobalContext(void);


void LLVMContextDispose(LLVMContextRef C);

LLVMModuleRef LLVMModuleCreateWithName(const char *ModuleID);

LLVMModuleRef LLVMModuleCreateWithNameInContext(const char *ModuleID,
                                                LLVMContextRef C);
void LLVMDisposeModule(LLVMModuleRef M);

void LLVMDumpModule(LLVMModuleRef M);

LLVMBool LLVMPrintModuleToFile(LLVMModuleRef M, const char *Filename,
                               char **ErrorMessage);

LLVMValueRef LLVMAddFunction(LLVMModuleRef M, const char *Name,
                             LLVMTypeRef FunctionTy);

LLVMTypeRef LLVMInt64TypeInContext(LLVMContextRef C);

LLVMTypeRef LLVMFunctionType(LLVMTypeRef ReturnType,
                             LLVMTypeRef *ParamTypes, unsigned ParamCount,
                             LLVMBool IsVarArg);

LLVMTypeRef LLVMArrayType(LLVMTypeRef ElementType, unsigned ElementCount);

LLVMTypeRef LLVMPointerType(LLVMTypeRef ElementType, unsigned AddressSpace);

LLVMTypeRef LLVMVoidTypeInContext(LLVMContextRef C);

void LLVMPrintValueToString(LLVMValueRef Val);

LLVMValueRef LLVMConstPtrToInt(LLVMValueRef ConstantVal, LLVMTypeRef ToType);
LLVMValueRef LLVMConstIntToPtr(LLVMValueRef ConstantVal, LLVMTypeRef ToType);

LLVMValueRef LLVMConstInt(LLVMTypeRef IntTy, unsigned long long N,
                          LLVMBool SignExtend);

void LLVMSetLinkage(LLVMValueRef Global, LLVMLinkage Linkage);
void LLVMSetSection(LLVMValueRef Global, const char *Section);
void LLVMSetVisibility(LLVMValueRef Global, LLVMVisibility Viz);

LLVMValueRef LLVMAddGlobal(LLVMModuleRef M, LLVMTypeRef Ty, const char *Name);
void LLVMSetInitializer(LLVMValueRef GlobalVar, LLVMValueRef ConstantVal);
void LLVMSetExternallyInitialized(LLVMValueRef GlobalVar, LLVMBool IsExtInit);

void LLVMDeleteFunction(LLVMValueRef Fn);

void LLVMInsertExistingBasicBlockAfterInsertBlock(LLVMBuilderRef Builder,
                                                  LLVMBasicBlockRef BB);

void LLVMAppendExistingBasicBlock(LLVMValueRef Fn,
                                  LLVMBasicBlockRef BB);

LLVMBasicBlockRef LLVMCreateBasicBlockInContext(LLVMContextRef C,
                                                const char *Name);

LLVMBasicBlockRef LLVMAppendBasicBlockInContext(LLVMContextRef C,
                                                LLVMValueRef Fn,
                                                const char *Name);

LLVMBasicBlockRef LLVMAppendBasicBlock(LLVMValueRef Fn, const char *Name);

LLVMBasicBlockRef LLVMInsertBasicBlockInContext(LLVMContextRef C,
                                                LLVMBasicBlockRef BB,
                                                const char *Name);

LLVMBasicBlockRef LLVMInsertBasicBlock(LLVMBasicBlockRef InsertBeforeBB,
                                       const char *Name);

LLVMBuilderRef LLVMCreateBuilderInContext(LLVMContextRef C);
void LLVMPositionBuilder(LLVMBuilderRef Builder, LLVMBasicBlockRef Block,
                         LLVMValueRef Instr);
void LLVMPositionBuilderBefore(LLVMBuilderRef Builder, LLVMValueRef Instr);
void LLVMPositionBuilderAtEnd(LLVMBuilderRef Builder, LLVMBasicBlockRef Block);
LLVMBasicBlockRef LLVMGetInsertBlock(LLVMBuilderRef Builder);
void LLVMClearInsertionPosition(LLVMBuilderRef Builder);
void LLVMInsertIntoBuilder(LLVMBuilderRef Builder, LLVMValueRef Instr);
void LLVMInsertIntoBuilderWithName(LLVMBuilderRef Builder, LLVMValueRef Instr,
                                   const char *Name);
void LLVMDisposeBuilder(LLVMBuilderRef Builder);

LLVMValueRef LLVMBuildRetVoid(LLVMBuilderRef Builder);
LLVMValueRef LLVMBuildRet(LLVMBuilderRef Builder, LLVMValueRef V);
                                   unsigned N);
LLVMValueRef LLVMBuildBr(LLVMBuilderRef Builder, LLVMBasicBlockRef Dest);
LLVMValueRef LLVMBuildCondBr(LLVMBuilderRef Builder, LLVMValueRef If,
                             LLVMBasicBlockRef Then, LLVMBasicBlockRef Else);
LLVMValueRef LLVMBuildSwitch(LLVMBuilderRef Builder, LLVMValueRef V,
                             LLVMBasicBlockRef Else, unsigned NumCases);
LLVMValueRef LLVMBuildIndirectBr(LLVMBuilderRef B, LLVMValueRef Addr,
                                 unsigned NumDests);
void LLVMAddCase(LLVMValueRef Switch, LLVMValueRef OnVal,
                 LLVMBasicBlockRef Dest);

void LLVMAddDestination(LLVMValueRef IndirectBr, LLVMBasicBlockRef Dest);

LLVMValueRef LLVMBuildAdd(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                          const char *Name);
LLVMValueRef LLVMBuildNSWAdd(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                             const char *Name);
LLVMValueRef LLVMBuildNUWAdd(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                             const char *Name);
LLVMValueRef LLVMBuildFAdd(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildSub(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                          const char *Name);
LLVMValueRef LLVMBuildNSWSub(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                             const char *Name);
LLVMValueRef LLVMBuildNUWSub(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                             const char *Name);
LLVMValueRef LLVMBuildFSub(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildMul(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                          const char *Name);
LLVMValueRef LLVMBuildNSWMul(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                             const char *Name);
LLVMValueRef LLVMBuildNUWMul(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                             const char *Name);
LLVMValueRef LLVMBuildFMul(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildUDiv(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildExactUDiv(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                                const char *Name);
LLVMValueRef LLVMBuildSDiv(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildExactSDiv(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                                const char *Name);
LLVMValueRef LLVMBuildFDiv(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildURem(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildSRem(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildFRem(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildShl(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildLShr(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildAShr(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBuildAnd(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                          const char *Name);
LLVMValueRef LLVMBuildOr(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                          const char *Name);
LLVMValueRef LLVMBuildXor(LLVMBuilderRef, LLVMValueRef LHS, LLVMValueRef RHS,
                          const char *Name);
LLVMValueRef LLVMBuildBinOp(LLVMBuilderRef B, LLVMOpcode Op,
                            LLVMValueRef LHS, LLVMValueRef RHS,
                            const char *Name);
LLVMValueRef LLVMBuildNeg(LLVMBuilderRef, LLVMValueRef V, const char *Name);
LLVMValueRef LLVMBuildNSWNeg(LLVMBuilderRef B, LLVMValueRef V,
                             const char *Name);
LLVMValueRef LLVMBuildNUWNeg(LLVMBuilderRef B, LLVMValueRef V,
                             const char *Name);
LLVMValueRef LLVMBuildFNeg(LLVMBuilderRef, LLVMValueRef V, const char *Name);
LLVMValueRef LLVMBuildNot(LLVMBuilderRef, LLVMValueRef V, const char *Name);


LLVMValueRef LLVMBuildAlloca(LLVMBuilderRef, LLVMTypeRef Ty, const char *Name);
LLVMValueRef LLVMBuildArrayAlloca(LLVMBuilderRef, LLVMTypeRef Ty,
                                  LLVMValueRef Val, const char *Name);
LLVMValueRef LLVMBuildLoad(LLVMBuilderRef, LLVMValueRef PointerVal,
                           const char *Name);

LLVMValueRef LLVMBuildLoad2(LLVMBuilderRef, LLVMTypeRef Ty,
                            LLVMValueRef PointerVal, const char *Name);
LLVMValueRef LLVMBuildStore(LLVMBuilderRef, LLVMValueRef Val, LLVMValueRef Ptr);

LLVMValueRef LLVMBuildGEP2(LLVMBuilderRef B, LLVMTypeRef Ty,
                           LLVMValueRef Pointer, LLVMValueRef *Indices,
                           unsigned NumIndices, const char *Name);
LLVMValueRef LLVMBuildCall2(LLVMBuilderRef, LLVMTypeRef Ty, LLVMValueRef Fn,
                            LLVMValueRef *Args, unsigned NumArgs,
                            const char *Name);

LLVMValueRef LLVMBuildPtrToInt(LLVMBuilderRef, LLVMValueRef Val,
                               LLVMTypeRef DestTy, const char *Name);
LLVMValueRef LLVMBuildIntToPtr(LLVMBuilderRef, LLVMValueRef Val,
                               LLVMTypeRef DestTy, const char *Name);

LLVMBool LLVMVerifyModule(LLVMModuleRef M, LLVMVerifierFailureAction Action,
                          char **OutMessage);

LLVMValueRef LLVMGetInitializer(LLVMValueRef GlobalVar);

LLVMValueRef LLVMGetParam(LLVMValueRef Fn, unsigned Index);

LLVMValueRef LLVMBuildICmp(LLVMBuilderRef, LLVMIntPredicate Op,
                           LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);

LLVMTypeRef LLVMInt1TypeInContext(LLVMContextRef C);

void LLVMGetBasicBlockName(LLVMBasicBlockRef BB, char *vector);

LLVMValueRef LLVMGetBasicBlockParent(LLVMBasicBlockRef BB);

LLVMValueRef LLVMGetBasicBlockTerminator(LLVMBasicBlockRef BB);

unsigned LLVMCountBasicBlocks(LLVMValueRef Fn);

LLVMBasicBlockRef LLVMGetFirstBasicBlock(LLVMValueRef Fn);

LLVMBasicBlockRef LLVMGetLastBasicBlock(LLVMValueRef Fn);

LLVMBasicBlockRef LLVMGetNextBasicBlock(LLVMBasicBlockRef BB);

LLVMBasicBlockRef LLVMGetPreviousBasicBlock(LLVMBasicBlockRef BB);

LLVMBasicBlockRef LLVMGetEntryBasicBlock(LLVMValueRef Fn);

LLVMValueRef LLVMBuildIntCast2(LLVMBuilderRef, LLVMValueRef Val,
                               LLVMTypeRef DestTy, LLVMBool IsSigned,
                               const char *Name);

LLVMBool LLVMVerifyFunction(LLVMValueRef Fn, LLVMVerifierFailureAction Action);

LLVMStr LLVMPrintModuleToString(LLVMModuleRef M); 

void LLVMDisposeMessage(char* message);

void LLVMTracing(unsigned flag);

LLVMValueRef LLVMConstStringInContext(LLVMContextRef C, const char *Str,
                                      unsigned Length, LLVMBool DontNullTerminate);

LLVMTypeRef LLVMInt8TypeInContext(LLVMContextRef C);

LLVMValueRef LLVMBuildExtractElement(LLVMBuilderRef, LLVMValueRef VecVal,
                                     LLVMValueRef Index, const char *Name);

LLVMValueRef LLVMBuildZExt(LLVMBuilderRef, LLVMValueRef Val,
                           LLVMTypeRef DestTy, const char *Name);

LLVMValueRef LLVMBuildPointerCast(LLVMBuilderRef, LLVMValueRef Val,
                                  LLVMTypeRef DestTy, const char *Name);

LLVMValueRef LLVMBuildGlobalString(LLVMBuilderRef B, const char *Str,
                                   const char *Name);
LLVMValueRef LLVMBuildGlobalStringPtr(LLVMBuilderRef B, const char *Str,
                                      const char *Name);

LLVMValueRef LLVMConstArray(LLVMTypeRef ElementTy,
                            LLVMValueRef *ConstantVals, unsigned Length);

LLVMValueRef LLVMGetNextInstruction(LLVMValueRef Inst);
LLVMValueRef LLVMGetFirstInstruction(LLVMBasicBlockRef BB);
LLVMValueRef LLVMIsATerminatorInst(LLVMValueRef Inst);

void LLVMSetAlignment(LLVMValueRef V, unsigned Bytes);
void LLVMDeleteBasicBlock(LLVMBasicBlockRef BB);

LLVMValueRef LLVMBuildFree(LLVMBuilderRef, LLVMValueRef PointerVal);
LLVMValueRef LLVMGetLastInstruction(LLVMBasicBlockRef BB);
void LLVMInstructionEraseFromParent(LLVMValueRef Inst);
LLVMBasicBlockRef LLVMGetInstructionParent(LLVMValueRef Inst);
LLVMValueRef LLVMGetPreviousInstruction(LLVMValueRef Inst);


LLVMTypeRef LLVMInt128TypeInContext(LLVMContextRef C);

/**
 * Obtain a 64-bit floating point type from a context.
 */
LLVMTypeRef LLVMDoubleTypeInContext(LLVMContextRef C);
LLVMValueRef LLVMBuildFPToSI(LLVMBuilderRef, LLVMValueRef Val,
                             LLVMTypeRef DestTy, const char *Name);
LLVMValueRef LLVMBuildSIToFP(LLVMBuilderRef, LLVMValueRef Val,
                             LLVMTypeRef DestTy, const char *Name);
LLVMValueRef LLVMBuildBitCast(LLVMBuilderRef, LLVMValueRef Val,
                              LLVMTypeRef DestTy, const char *Name);

unsigned LLVMLookupIntrinsicID(const char *Name, size_t NameLen);


LLVMValueRef LLVMGetIntrinsicDeclaration(LLVMModuleRef Mod,
                                         unsigned ID,
                                         LLVMTypeRef *ParamTypes,
                                         size_t ParamCount);

LLVMValueRef LLVMBuildFCmp(LLVMBuilderRef, LLVMRealPredicate Op,
                           LLVMValueRef LHS, LLVMValueRef RHS,
                           const char *Name);
LLVMValueRef LLVMBlockAddress(LLVMValueRef F, LLVMBasicBlockRef BB);

LLVMTypeRef LLVMTypeOf(LLVMValueRef Val);

LLVMValueRef LLVMBuildPhi(LLVMBuilderRef, LLVMTypeRef Ty, const char *Name);

void LLVMAddIncoming(LLVMValueRef PhiNode, LLVMValueRef *IncomingValues,
                     LLVMBasicBlockRef *IncomingBlocks, unsigned Count);

unsigned LLVMCountIncoming(LLVMValueRef PhiNode);


