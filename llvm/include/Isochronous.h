//===-- Isochronous.h -------------------------------------------*- C++ -*-===//
// Copyright (C) 2020  Luigi D. C. Soares
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.
//===----------------------------------------------------------------------===//
///
/// \file
/// This file contains the declaration of the Isochronous Pass, which
/// transforms some LLVM IR into a version that executes the same set
/// of instructions regardless of the inputs.
///
//===----------------------------------------------------------------------===//
#ifndef LLVM_LIF_INVARIANT_H
#define LLVM_LIF_INVARIANT_H

#include "Cond.h"

#include <llvm/ADT/DenseMap.h>
#include <llvm/ADT/DenseSet.h>
#include <llvm/ADT/SmallPtrSet.h>
#include <llvm/ADT/SmallVector.h>
#include <llvm/ADT/StringRef.h>
#include <llvm/Analysis/TargetLibraryInfo.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/PassManager.h>
#include <llvm/IR/Value.h>
#include <set>
#include <variant>

namespace isochronous {
/// A pass that transforms a function into an isochronous version.
///
/// An isochronous function executes the same set of instructions regardless of
/// its inputs. Hence, this property can be used, e.g., for the mitigation of
/// side channel leaks on a cryptography library.
///
/// Currently, this pass cannot handle functions contanining loops.
class Pass : public llvm::PassInfoMixin<Pass> {
  public:
    /// A constructor that takes the name of functions to be transformed and a
    /// boolean indicating if this pass should insert the length of pointer
    /// arguments.
    Pass(std::set<llvm::StringRef> Names = {}) : Names(Names){};

    /// Traverses the module \p M transforming functions into isochronous
    /// versions. If FNames is not empty, then we transform only the functions
    /// in there and skip the others.
    ///
    /// \returns the set of analyses preserved after running this pass.
    llvm::PreservedAnalyses run(llvm::Module &M,
                                llvm::ModuleAnalysisManager &MAM);

  private:
    /// A set storing the name of the functions that should be transformed.
    std::set<llvm::StringRef> Names;
};

/// The length of a value is represented as a sequence of either llvm::Values,
/// in case we're dealing with types such as pointers or arrays, or ValueLens
/// for types such as structs, in which we need to track the length of each
/// field.
struct ValueLen {
    /// For types like a pointer or an array, we define its length as a
    /// sequence of values. The length of a pointer, for example, shall be
    /// implemented as a unit vector (size 1), while the length of a
    /// multidimensional array of N dimensions shall be implemented as a vector
    /// of size N llvm::Values, one for each dimension.
    using DirectLen = llvm::SmallVector<llvm::Value *, 4>;
    /// For types like structs, we need to keep track of the length of each
    /// field, for it may store, e.g. multiple arrays or pointers. In this
    /// case, it is represented as a vector of ValueLen, i.e. kind of a
    /// recursive type. In other words, for each field there will be an
    /// instance of ValueLen to represent its length. This allow us to deal with
    /// nested structs.
    using IndirectLen = llvm::SmallVector<std::shared_ptr<ValueLen>, 4>;
    /// The length of a type is represented as either a DirectLen, for types
    /// such as pointers and arrays, or an IndirectLen, for structs.
    using ArrayLen = std::variant<DirectLen, IndirectLen>;
    /// This is the underlying value that carries the representation of a
    /// value's length.
    ArrayLen Len;
    /// The representation of a value's length relies on std::variant (something
    /// like a union), so it needs to know how to destroy instances of ValueLen.
    /// We leave this to the compiler, it will know what to do.
    ~ValueLen() = default;
};

/// A map between an llvm::Value and a pointer to its length representation.
using ValueLenMap =
    llvm::DenseMap<const llvm::Value *, std::shared_ptr<ValueLen>>;

/// A wrapper for a function F to indicate whether it is derived or not. By
/// derived we mean that F is called directly or indirectly by another
/// function G. We also store both the map of incoming and outgoing
/// conditions, as well as instructions that we should skip.
struct FuncWrapper {
    /// Function to be transformed.
    llvm::Function *F;
    /// A boolean value indicating whether this function was indicated to be
    /// transformed by someone or it is derived from another function G that is
    /// also being transformed.
    bool IsDerived;
    /// A map between basic blocks and their outgoing conditions.
    cond::OutMap OutM;
    /// A map betwen basic blocks and their incoming conditions.
    cond::InMap InM;
    /// A set of instructions that we don't want/need to transform (the ones
    /// generated by the cond::bind step).
    std::set<llvm::Value *> Skip;
    /// A map storing a representation of values' lengths.
    ValueLenMap LenM;
};

/// Searches for the derived functions from \p Fns, i.e. each function called
/// by F as well as the ones called by F's callees and so on.
///
/// \returns a set of the functions collected.
std::set<llvm::Function *> findDerived(llvm::Module &M,
                                       const std::set<llvm::Function *> Fns);

/// Traverses the list of arguments of F to match each pointer with its
/// length. Also infers the length of local pointers.
///
/// \returns a map between values and its length.
ValueLenMap computeLen(llvm::Function &F, const llvm::TargetLibraryInfo *TLI);

/// For each funtion F in \p M, transforms F's signature by inserting  an
/// argument for the length of each pointer. If F is marked as a function
/// derived from another function, we also add a boolean argument indicating
/// the incoming condition of the entry block of F.
void prepareModule(llvm::Module &M, llvm::SmallVectorImpl<FuncWrapper *> &Fns,
                   llvm::FunctionAnalysisManager &FAM);

/// We cannot transform properly functions that have multiple return points, so
/// we replace multiple returns by a combination of phis + uncond. jmps.
void prepareFunc(llvm::Function &F);

/// Transform \p F into isochronous by applying the proper rules to each
/// instruction.
void transformFunc(const FuncWrapper &W, llvm::FunctionAnalysisManager &FAM);

/// Transforms \p Phi into a set of instructions according to the incoming
/// conditions of the basic block that contains \Phi.
///
/// Note: If the transformation occurs, \p Phi is removed from the basic
/// block.
void transformPhi(llvm::PHINode &Phi,
                  const llvm::SmallVectorImpl<cond::Incoming> &InV);

/// Transforms \p Load into a set of instructions according to the outgoing
/// condition of the basic block (i.e. the fold of the incoming conds.) that
/// contains \p Load.
void transformLoad(llvm::LoadInst &Load, llvm::AllocaInst *Shadow,
                   const ValueLen &PtrLen, llvm::Value *Cond);

/// Transforms \p Store into a set of instructions according to the incoming
/// conditions of the basic block that contains \p Store.
void transformStore(llvm::StoreInst &Store, llvm::AllocaInst *Shadow,
                    const ValueLen &PtrLen, llvm::Value *Cond);

/// Transforms \p GEP into a set of instructions according to \p Cond and
/// \p PtrLen.
///
/// \returns The llvm value representing the select between GEP and Shadow.
llvm::Value *transformGEP(llvm::GetElementPtrInst *GEP,
                          llvm::AllocaInst *Shadow, const ValueLen &PtrLen,
                          llvm::Value *Cond, llvm::Instruction *Before);

/// Given two values, \p VTrue and \p VFalse, and a condition \p Cond,
/// generate instructions for selecting between \p VTrue and \p VFalse.
///
/// We use LLVM select inst. assuming that it is going to be lowered to a
/// constant-time inst. (e.g. cmov on x86). However, it can be manually
/// implemented as ctsel(cond, vtrue, vfalse) = { c = cond - 1; c' = ~c; v
/// = (c & vfalse) | (c' & vtrue) }
///
/// \returns a value representing the selected one.
llvm::Value *ctsel(llvm::Value *Cond, llvm::Value *VTrue, llvm::Value *VFalse,
                   llvm::Instruction *Before);
} // namespace isochronous

#endif
