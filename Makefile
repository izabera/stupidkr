myputs: main.c myputs.c
	gcc -ansi -pedantic -c -O3 main.c myputs.c
	gcc -ansi -pedantic -O3 main.o myputs.o -o myputs
	@objdump -wd main.o | sed '/mov.*\$$0x4.*eax/{h;s/$$/\t\t\t\t\t\t<===== 4 float args/};/mov.*\$$0x2.*eax/{h;s/$$/\t\t\t\t\t\t<===== 2 float args/};/xor.*eax,.*eax/{h;s/$$/\t\t\t\t\t\t<===== 0 float args/};/call/{s/$$/\t\t\t\t\t\t<===== call/;x;/^$$/{x;s/$$/ <========= correct/;x};s/.*//;x}'

.PHONY: clean
clean:
	rm -f *.o myputs
