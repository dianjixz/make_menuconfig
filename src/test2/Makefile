obj =test2

# all:$(obj)
# 	$(foreach aa,$(obj),gcc $(CFLAGS) $(aa:.o=.c) -o $(aa:.o=);mv $(aa:.o=) $(SRC_ROOT)/bin/)
.PHONY: target

target:test2.o
	gcc test2.o -o test2

test2.o:test2.c
	gcc -c test2.c -o test2.o $(CFLAGS)

clean:
	-rm *.o test2
