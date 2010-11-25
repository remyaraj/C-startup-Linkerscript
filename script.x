MEMORY {
  data   (xrw)     : ORIGIN = 0x0200,     LENGTH = 128
  text (rx)        : ORIGIN = 0xF800,     LENGTH = 0x7E0
  vectors (rw)     : ORIGIN = 0xFFE0,     LENGTH = 32
}
SECTIONS {
	
        .text : {
                . = ALIGN(2);
                *(.text)
                . = ALIGN(2);
                _etext = .;
        } >text
        .vectors : {
                . = ALIGN(2);
                *(.vectors)
                . = ALIGN(2);
        } >vectors
        .data : AT ( _etext ) {
                . = ALIGN(2);
                _sdata = .;
                *(.data)
                . = ALIGN(2);
                _edata = .;
                
        } >data
        .bss : {
                . = ALIGN(2);
                _sbss = .;
                *(.bss)
                *(COMMON)
                . = ALIGN(2);
                _ebss = .;
        } >data
        PROVIDE (__stack = 0x280) ;
}


