all: example1_1.go example1_2.go example1_3.go example1_4.go example1_5.go example1_6.go

example1_1.go: example1_0.go
	cp $< $@
	go-post -r "unresolved" $@
	sar -i "\n\n" "\n" $@
	sar -i " [+]\n[\t]*" " + " $@
	goimports -w $@

example1_2.go: example1_1.go
	cp $< $@
	go-post -r "mainret" $@
	sar -i "\n\n" "\n" $@
	sar -i " [+]\n[\t]*" " + " $@
	goimports -w $@

example1_3.go: example1_2.go
	cp $< $@
	go-post -r "localid" $@
	sar -i "\n\n" "\n" $@
	sar -i " [+]\n[\t]*" " + " $@
	goimports -w $@

example1_4.go: example1_3.go
	cp $< $@
	go-post -r "assignbinop" $@
	sar -i "\n\n" "\n" $@
	sar -i " [+]\n[\t]*" " + " $@
	goimports -w $@

example1_5.go: example1_4.go
	cp $< $@
	go-post -r "deadassign" $@
	sar -i "\n\n" "\n" $@
	sar -i " [+]\n[\t]*" " + " $@
	goimports -w $@

example1_6.go: example1_5.go
	cp $< $@
	go-post -r "forloop" $@
	sar -i "\n\n" "\n" $@
	sar -i " [+]\n[\t]*" " + " $@
	goimports -w $@
