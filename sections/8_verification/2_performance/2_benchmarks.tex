% ~~~ [ Benchmarks ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

\subsubsection{Benchmarks}
\label{sec:ver_benchmarks}

Benchmark tests were implemented to reliably measure any performance changes before trying to resolve performance issues. An updated version of the LLVM IR library used arrays instead of hash maps to identify keywords when scanning letters, which resolved the performance issue identified in section~\ref{sec:ver_profiling}. The updated version of the LLVM IR lexer is roughly 3.6 times faster than the original version, as illustrated in figure~\ref{fig:benchmark_delta}.

\begin{figure}[htbp]
	\begin{center}
		\begin{BVerbatim}
$ git checkout old; go test -bench=ParseString > old.txt
$ git checkout new; go test -bench=ParseString > new.txt
$ benchcmp old.txt new.txt
benchmark                old ns/op     new ns/op     delta
BenchmarkParseString     737625        204010        -72.34%
		\end{BVerbatim}
		\caption{Benchmark run time delta between the original and the optimised version of the LLVM IR lexer, as visualised by \texttt{benchcmp}\protect\footnotemark. The optimised version is roughly 3.6 times faster than the original version of the lexer.}
		\label{fig:benchmark_delta}
	\end{center}
\end{figure}
\footnotetext{Display performance changes between benchmarks: \url{https://golang.org/x/tools/cmd/benchcmp}}
