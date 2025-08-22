text:
  .start:
	mov	rdi, rodata.hello
	call	plt.printf
	mov	rdi, 0
	call	plt.exit
