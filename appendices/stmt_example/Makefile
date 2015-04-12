stmt_example: stmt_1.png stmt_2.png stmt_3.png stmt_4.png stmt_5.png

stmt_1.png: stmt_0.dot
	merge -img -o stmt_1.dot pre_loop.dot $<

stmt_2.png: stmt_1.dot
	merge -img -o stmt_2.dot list.dot $<

stmt_3.png: stmt_2.dot
	merge -img -o stmt_3.dot if.dot $<

stmt_4.png: stmt_3.dot
	merge -img -o stmt_4.dot if_return.dot $<

stmt_5.png: stmt_4.dot
	merge -img -o stmt_5.dot if_else.dot $<
