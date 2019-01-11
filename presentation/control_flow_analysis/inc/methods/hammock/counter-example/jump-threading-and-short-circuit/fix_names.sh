#!/bin/bash
for f in jump-threading-and-short-circuit_jump_graphs/*.dot; do
	sar -i '([\t ])0([\t ;])' '${1}B1${2}' $f
	sar -i '([\t ])8([\t ;])' '${1}B2${2}' $f
	sar -i '([\t ])12([\t ;])' '${1}B3${2}' $f
	sar -i '([\t ])14([\t ;])' '${1}B4${2}' $f
	sar -i '([\t ])16([\t ;])' '${1}B5${2}' $f
	sar -i '([\t ])18([\t ;])' '${1}B6${2}' $f
	sar -i '([\t ])21([\t ;])' '${1}B12${2}' $f
	sar -i '([\t ])23([\t ;])' '${1}B13${2}' $f
	sar -i '([\t ])27([\t ;])' '${1}B15${2}' $f
	sar -i '([\t ])29([\t ;])' '${1}B7${2}' $f
	sar -i '([\t ])33([\t ;])' '${1}B8${2}' $f
	sar -i '([\t ])36([\t ;])' '${1}B9${2}' $f
	sar -i '([\t ])38([\t ;])' '${1}B10${2}' $f
done
