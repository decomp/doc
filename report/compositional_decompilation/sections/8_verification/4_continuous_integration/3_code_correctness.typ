% ~~~ [ Code Correctness ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

\subsubsection{Code Correctness}

Source code analysis tools may be used to identify common coding mistakes, such as \texttt{printf} calls with conflicting arguments and format specifiers. A CI test has been integrated which utilises \texttt{go vet}\footnote{Vet reports suspicious constructs in Go source code: \url{https://golang.org/x/tools/cmd/vet}} to examine the source code and report suspicious constructs (e.g. unreachable code, invalid \texttt{printf} calls).
