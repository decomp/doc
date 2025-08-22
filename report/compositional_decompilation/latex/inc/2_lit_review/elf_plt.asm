plt:
  .resolve:
	push	[got_plt.link_map]
	jmp	[got_plt.dl_runtime_resolve]
  .printf:
	jmp	[got_plt.printf]
  .resolve_printf:
	push	dynsym.printf_idx
	jmp	.resolve
  .exit:
	jmp	[got_plt.exit]
  .resolve_exit:
	push	dynsym.exit_idx
	jmp	.resolve
