% --- [ Project Aim and Objectives ] -------------------------------------------

\subsection{Project Aim and Objectives}
\label{sec:intro_project_aim_and_objectives}

The aim of this project is to facilitate decompilation workflows using composition of language-agnostic decompilation passes; specifically the reconstruction of high-level control structures and, as a future ambition, expressions.

To achieve this aim, the following objectives have been identified:

\begin{enumerate}
	\item \label{itm:obj_review_decomp_techniques} Review traditional decompilation techniques, including control flow analysis and data flow analysis.
	\item \label{itm:obj_review_suitable_ir} Critically evaluate a set of Intermediate Representations (IRs), which describes low-, medium- and high-level language semantics, to identify one or more suitable for the decompilation pipeline.
	\item \label{itm:obj_formal_ir} Analyse the formal grammar (language specification) of the IR to verify that it is unambiguous. If the grammar is ambiguous or if no formal grammar exists, produce a formal grammar. This objective is critical for language-independence, as the IR works as a bridge between different programming languages.
	\item \label{itm:obj_ir_library} Determine if any existing library for the IR satisfies the project requirements; and if not develop one. These requirements would include a suitable in-memory representation, and support for on-disk file storage and arbitrary manipulations (e.g. inject, delete) of the IR.
	\item \label{itm:obj_control_flow_analysis_component} Design and develop components which identify the control flow patterns of high-level control structures using control flow analysis of the IR.
	\item \label{itm:obj_decomp_pass_tool} Develop tools which perform one or more decompilation passes on a given IR. The tools will be reusable by other programming language environments as their input and output is specified by a formally defined IR.
	\item \label{itm:obj_data_analysis_library} As a future ambition, design and develop components which perform expression propagation using data flow analysis of the IR.
\end{enumerate}
