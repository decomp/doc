% === [ Evaluation ] ===========================================================

% <mark>
% - Description of plan for evaluating outcome.
% - Convincing evidence that artefact meets requirements with explanation where
%   it doesn't.
% - Justification of evaluation method.
% - Shows awareness of limits of evaluation.
%
% - How well does the report describe and justify the means by which the outcome
%   of the project was evaluated?
% - How well is it shown whether the specification of the requirements has been
%   satisfied?
% - How well explained are areas where it hasn't?

% <howto> Relationship between sections.
%
%    Requirements -----> Evaluation
%
% <howto>
% - You should describe how you demonstrated that system works as intended (or not, as the case may be)
% - Include comprehensible summaries of the results of all critical tests that you made.
% - You should try to indicate how confident you are about whatever code you have produced, and also suggest what tests would be required to gain further confidence.
% - You must also critically evaluate your system in the light of these tests, describing its strengths and weaknesses.

\section{Evaluation}
\label{sec:evaluation}

This section evaluates the artefacts of the decompilation system against the requirements outlined in section~\ref{sec:requirements}. To assess the capabilities of the individual components, relevant decompilation scenarios have been considered. The current state of each component is summarised in the succeeding paragraphs, and future work to validate the design, improve the reliability, and extend the capabilities of the decompilation pipeline is presented in section~\ref{sec:con_future_work}.

The \texttt{ll2dot} component (see section~\ref{sec:design_control_flow_graph_generation}) is considered stable, but there are known issues which may affect the reliability and the integrity of the produced CFGs; as further described in section~\ref{sec:ver_security_assessment}. Future work which seeks to address these issues is presented in section~\ref{sec:con_reliability_improvements}.

The subgraph isomorphism search library (see section~\ref{sec:impl_subgraph_isomorphism_search_library}) is considered production quality, and the test cases of the \texttt{iso} package have a code coverage of 94.8\%; as outlined in section~\ref{sec:ver_code_coverage}. The restrictions imposed by this library on the subgraph (e.g. single-entry/single-exit invariant and fixed number of nodes) limits infinite loops and n-way conditionals from being modelled, as further discussed in section~\ref{sec:design_control_flow_analysis}. Section~\ref{sec:con_design_validation} presents a discussion of potential approaches which may relax these restrictions in the future.

The \texttt{restructure} component (see section~\ref{sec:design_control_flow_analysis}) is considered production quality, and the test cases of the \texttt{restructure} command have a code coverage of 40.0\%; as outlined in section~\ref{sec:ver_code_coverage}. The \texttt{restructure} command is believed to be capable of structuring the CFG of any source program which may be constructed from the set of supported high-level control flow primitives (which are described in figure~\ref{fig:graph_representations} of section~\ref{sec:lit_review_control_flow_analysis}), including source programs with arbitrarily nested primitives. Any future work which improves the reliability and the capabilities of the subgraph isomorphism search library will directly impact the \texttt{restructure} tool, as it relies entirely on subgraph isomorphism search to recover high-level control flow primitives.

The \texttt{ll2go} component (see section~\ref{sec:design_back-end_components}) is considered a \textit{proof of concept} implementation. It was implemented primarily to stress test the design of the decompilation pipeline, and only supports a small subset (e.g. all arithmetic instructions and some terminator instructions) of the LLVM IR language. The \texttt{ll2go} tool is affected by the same reliability issues as the \texttt{ll2dot} command, which are caused by the Go bindings for LLVM; as further described in section~\ref{sec:impl_go_bindings_for_llvm}. To address these issues a pure Go library is being developed for interacting with LLVM IR, as further described in section~\ref{sec:con_reliability_improvements}. A future version of the \texttt{ll2go} tool would discard the current implementation and start fresh, learning from the mistakes and the building upon the insights.

Lastly, the \texttt{go-post} component (see section~\ref{sec:design_post-processing}) is considered alpha quality, and the test cases of the \texttt{go-post} command have a code coverage of 38.0\%; as outlined in section~\ref{sec:ver_code_coverage}. The \texttt{go-post} tool was primarily implemented to evaluate the feasibility of applying source code transformations to make the decompiled Go code more idiomatic. Implementing these post-processing rules were surprisingly easy, and it was often possible to go from the conceptual idea of a rewrite rule to a working implementation in a matter of hours. While some rewrite rules are reliable (e.g. the \textit{``mainret''} rewrite rule, which is presented in~\ref{fig:rewrite_2} of appendix~\ref{app:post-processing_example}), most are considered experimental. For instance, the \textit{``localid''} rewrite rule (see figure~\ref{fig:rewrite_3} of appendix~\ref{app:post-processing_example}) is known to produce incorrect rewrites when applied to complex programs, but it works for simple programs and provides rudimentary support for expression propagation. A proper implementation of expression propagation would rely on the future implementation of the data flow analysis component, which is mentioned in~\ref{sec:con_design_validation}.

% === [ Subsections ] ==========================================================

\input{sections/9_evaluation/1_llvm_ir_library}
\input{sections/9_evaluation/2_control_flow_analysis_library}
\input{sections/9_evaluation/3_control_flow_recovery_tool}
