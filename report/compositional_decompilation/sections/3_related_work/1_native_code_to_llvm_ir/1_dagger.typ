% ~~~ [ Dagger ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

\subsubsection{Dagger}
\label{sec:rel_work_dagger}

The Dagger project is a fork of the LLVM compiler framework, which extends its capabilities by implementing a set of tools and libraries for translating native code into LLVM IR. To facilitate the analysis of native code, the disassembly library of LLVM was extended to include support for recursive descent parsing (see section~\ref{sec:lit_review_disassembly}). Some of these changes have already been submitted upstream and merged back into the LLVM project. Once mature, the Dagger project aims to become a full part of the LLVM project.

The LLVM compiler framework defines a platform-independent representation of low-level machine instructions called MC-instructions (or \texttt{MCInst}), which may be used to describe the semantics of native instructions. For each supported architecture (e.g. x86-64) there exists a table (in the TableGen format) which maps the semantics of native machine instructions to MC-instructions. Similar to other project (e.g. Fracture and MC-Semantics), the Dagger project uses these tables to disassemble native code into MC-instructions as part of the decompilation process. The MC-instructions are then lazily (i.e. without optimisation) translated into LLVM IR instructions~\cite{dagger}. Appendix~\ref{app:dagger_example} demonstrates the decompilation of a simple Mach-o execute to LLVM IR, using using the Dagger project.
