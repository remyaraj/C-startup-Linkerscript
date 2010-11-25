//#define __stack 0x280
extern unsigned long _etext,_sdata,_edata,_ebss,_sbss;

__attribute__((naked))
void __stop_progExec__(void)
{
	while(1);
}


__attribute__((naked))
void dummy_fn(void)
{
	while(1);
}


__attribute__((naked))
void c_startup(void)
{
	unsigned long *src,*dst;
	
	src=&_etext;
	dst=&_sdata;
	while(dst<&_edata)
		*(dst++)=*(src++);
	src=&_sbss;
	while(src<&_ebss)
		*(src++)=0;
	main();
}

__attribute__((section(".vectors")))
void (*InterruptVectors[])(void) = {
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        dummy_fn,
        c_startup
};


