myputs: main.c myputs.c
	gcc -c -O3 main.c myputs.c
	gcc -O3 main.o myputs.o -o myputs
	@objdump -wd main.o | sed '/mov.*\$$0x4.*eax/s/$$/\t\t\t\t\t\t<===== 4 float arg/;/mov.*\$$0x2.*eax/s/$$/\t\t\t\t\t\t<===== 2 float arg/;/xor.*eax,.*eax/s/$$/\t\t\t\t\t\t<===== 0 float arg/;/call/s/$$/\t\t\t\t\t\t<===== call/'

.PHONY: clean
clean:
	rm -f *.o myputs
