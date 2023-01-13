bits 16

section .jsn        ; jump short nop
start:
    jmp short bootsect
    nop

section .fat

OEM_ID:             db "MSWIN4.1"
BYTES_PER_SECT:     dw 512
SECTS_PER_CLUST:    db 2
RESERVED_SECTS:     dw 32
FAT_COUNT:          db 2
                    dw 0
                    dw 0
                    db 0xF8
                    dw 0
SECTS_PER_TRACK:    dw 32
HEAD_COUNT:         dw 64
HIDDEN_SECTORS:     dd 0
LARGE_SECTORS:      dd 0x32000
SECTORS_PER_FAT:    dd 0x628
                    dw 0
                    dw 0
ROOT_CLUST_NUM:     dd 2
FS_INFO_SECT:       dw 1
BACKUP_BOOTSECT:    dw 6

sections .boot
bootsect:
    ; set up 16 bit stack
    cli
    xor ax, ax
    mov ss, ax
    mov ds, ax
    mov sp, 0x7c00
    mov bp, sp
    sti

    ; collect info

    ; write 

    ; load kernel in

    ; load gdt and jump to kernel

section .text

section .data