all: foo_1.go foo_2.go foo_3.go foo_4.go foo_5.go foo_6.go

foo_1.go: foo_0.go
	cp $< $@
	go-post -r "unresolved" $@
	cat $@ | sar "\n\n" "\n" | sar " [+]\n[\t]*" " + " > tmp.go && mv tmp.go $@
	goimports -w $@

foo_2.go: foo_1.go
	cp $< $@
	go-post -r "mainret" $@
	cat $@ | sar "\n\n" "\n" | sar " [+]\n[\t]*" " + " > tmp.go && mv tmp.go $@
	goimports -w $@

foo_3.go: foo_2.go
	cp $< $@
	go-post -r "localid" $@
	cat $@ | sar "\n\n" "\n" | sar " [+]\n[\t]*" " + " > tmp.go && mv tmp.go $@
	goimports -w $@

foo_4.go: foo_3.go
	cp $< $@
	go-post -r "assignbinop" $@
	cat $@ | sar "\n\n" "\n" | sar " [+]\n[\t]*" " + " > tmp.go && mv tmp.go $@
	goimports -w $@

foo_5.go: foo_4.go
	cp $< $@
	go-post -r "deadassign" $@
	cat $@ | sar "\n\n" "\n" | sar " [+]\n[\t]*" " + " > tmp.go && mv tmp.go $@
	goimports -w $@

foo_6.go: foo_5.go
	cp $< $@
	go-post -r "forloop" $@
	cat $@ | sar "\n\n" "\n" | sar " [+]\n[\t]*" " + " > tmp.go && mv tmp.go $@
	goimports -w $@
