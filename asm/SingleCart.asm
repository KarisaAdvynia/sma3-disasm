; Single-cart pseudo-ROM

.arm

SingleCart_0812FDC0:
; Japanese version's internal header
b      Code0812FE80             ; 0812FDC0/02000000
.incbin "../data/InternalHeader_NintendoLogo.bin"
.byte "SUPER MARIOCA3AJ"        ; 0812FE60/020000A0
.byte "01"                      ; 0812FE70/020000B0
.byte 0x96,0x00,0x00,0x00,0x00,0x00
.byte 0x00,0x00,0x00,0x00,0x00,0x87,0x00,0x00

Code0812FE80:

.thumb

; 08133824 CpuFastSet
; 08133828 CpuSet
; 0813382C HuffUnCompReadNormal
; 08133830 RegisterRamReset

; 081338EC-08142543: first psuedo-ROM data sector

.org 0x08138A44
SingleCart_08138A44:            ; 08138A44
.org 0x0813B244
SingleCart_0813B244:            ; 0813B244

.org 0x08142544
SingleCart_08142544:            ; 08142544

; 0815B32C CpuFastSet
; 0815B330 CpuSet
; 0815B334 RegisterRamReset
; 0815B348 RegisterRamReset
; 0815B34A SoftReset

.org 0x08163290
SingleCart_08163290:            ; 08163290

.org 0x08163F90
