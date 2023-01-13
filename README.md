# DemonOs-Bios-C
Demon Os Bios C implementation

# boot loader impl

roles:
    setup 16 bit stack and segments
    collect info in /boot/info
    use basic fs functions to find and load kernel.os (FAT32 tools)

TODO:
    move to 64 bit with gdt
    use basic fs functions to find and load kernel.os (FAT32 tools)
    collect info in /boot/info