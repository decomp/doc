% ~~~ [ Essential Requirements ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

\subsubsection{Essential Requirements}
\label{sec:eval_control_flow_analysis_library_essential_requirements}

% * R9 - Support analysis of reducible graphs

The current implementation of the subgraph isomorphism search library supports analysis of reducible graphs (\textbf{R9}), as demonstrated by the step-by-step analysis of a reducible CFG in appendix~\ref{app:control_flow_analysis_example}.

% * R10 - Recover pre-test loops
% * R12 - Recover 1-way conditionals

The successful recovery of pre-test loops (\textbf{R10}) and 1-way conditionals (\textbf{R12}) is demonstrated in four steps, through the use of components which depend on the subgraph isomorphism search library. Firstly, the \texttt{ll2dot} tool (see section~\ref{sec:design_control_flow_graph_generation}) is used to generate an unstructured CFG for each function of an LLVM IR assembly file; as demonstrated in appendix~\ref{app:control_flow_graph_generation_example}. Secondly, the \texttt{restructure} tool (see section~\ref{sec:design_control_flow_analysis}) analyses the unstructured CFG of an LLVM IR assembly function to produce a structured CFG; as demonstrated in appendix~\ref{app:restructure_example}. Thirdly, the \texttt{ll2go} tool (see section~\ref{sec:design_back-end_components}) uses the high-level control flow information of the structured CFG to decompile the LLVM IR function into unpolished Go code; as demonstrated in appendix~\ref{app:code_generation_example}. Lastly, the \texttt{go-post} tool improves the quality of the unpolished Go code, by applying a set of source code transformations; as demonstrated in appendix~\ref{app:post-processing_example}. The final Go output, which is presented on the right side of figure~\ref{fig:example1_comparison} in appendix~\ref{app:post-processing_example}, contains both a \texttt{for}-loop and an \texttt{if}-statement, thus proving that pre-test loops and 1-way conditionals may be recovered.

% * R13 - Recover 2-way conditionals

The successful decompilation of 2-way conditionals (\textbf{R13}) is demonstrated in appendix~\ref{app:decompilation_of_nested_primitives}, which provides a contrived example that implicitly uses the same decompilation steps as described above. The final Go output, which is presented on the right side of figure~\ref{fig:nested_comparison} in appendix~\ref{app:decompilation_of_nested_primitives}, contains an \texttt{if-else} statement, thus proving that 2-way conditionals may be recovered.

% * R11 - Recover infinite loops

The current design of the control flow analysis stage enforces a single-entry/single-exit invariant on the graph representation of high-level control flow primitives. In other words, high-level control flow primitives must be modelled as directed graphs with a single entry and a single exit node. This invariant simplifies the control flow analysis, as it allows identified subgraphs to be merged into single nodes, which inherit the predecessors of the entry node and the successors of the exit node; as demonstrated by the step-by-step simplification of the CFG in appendix~\ref{app:control_flow_analysis_example}. This restriction prevents infinite loops (\textbf{R11}) from being modelled however, as they have no exit node. Future work will try to determine if this invariant may be relaxed to include single-entry/no-exit graphs, as further described in section~\ref{sec:con_design_validation}.
