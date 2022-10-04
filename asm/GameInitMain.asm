CodeStartPart2:
push  {lr}                ; 08000A94
bl    GameInit            ; 08000A96
ldr   r0,=0x03002200      ; 08000A9A
ldr   r1,=0x4904          ; 08000A9C
add   r0,r0,r1            ; 08000A9E  r0 = 03006B04
mov   r1,0x1              ; 08000AA0
strb  r1,[r0]             ; 08000AA2
bl    MainLoopStart       ; 08000AA4
pop   {r0}                ; 08000AA8
bx    r0                  ; 08000AAA
.pool                     ; 08000AAC

Sub08000AB4:
ldr   r2,=0x04000200      ; 08000AB4
ldr   r1,=0x03002200      ; 08000AB6
ldr   r3,=0x47C2          ; 08000AB8
add   r0,r1,r3            ; 08000ABA
ldrh  r0,[r0]             ; 08000ABC
strh  r0,[r2]             ; 08000ABE
ldr   r2,=0x04000004      ; 08000AC0
add   r3,0x2              ; 08000AC2
add   r0,r1,r3            ; 08000AC4
ldrh  r0,[r0]             ; 08000AC6
strh  r0,[r2]             ; 08000AC8
sub   r2,0x4              ; 08000ACA
add   r3,0x2              ; 08000ACC
add   r0,r1,r3            ; 08000ACE
ldrh  r0,[r0]             ; 08000AD0
strh  r0,[r2]             ; 08000AD2
add   r2,0x8              ; 08000AD4
add   r3,0x2              ; 08000AD6
add   r0,r1,r3            ; 08000AD8
ldrh  r0,[r0]             ; 08000ADA
strh  r0,[r2]             ; 08000ADC
add   r2,0x2              ; 08000ADE
add   r3,0x2              ; 08000AE0
add   r0,r1,r3            ; 08000AE2
ldrh  r0,[r0]             ; 08000AE4
strh  r0,[r2]             ; 08000AE6
add   r2,0x2              ; 08000AE8
add   r3,0x2              ; 08000AEA
add   r0,r1,r3            ; 08000AEC
ldrh  r0,[r0]             ; 08000AEE
strh  r0,[r2]             ; 08000AF0
add   r2,0x2              ; 08000AF2
add   r3,0x2              ; 08000AF4
add   r0,r1,r3            ; 08000AF6
ldrh  r0,[r0]             ; 08000AF8
strh  r0,[r2]             ; 08000AFA
add   r2,0x42             ; 08000AFC
add   r3,0xBA             ; 08000AFE
add   r0,r1,r3            ; 08000B00
ldrh  r0,[r0]             ; 08000B02
strh  r0,[r2]             ; 08000B04
add   r2,0x2              ; 08000B06
add   r3,0x2              ; 08000B08
add   r0,r1,r3            ; 08000B0A
ldrh  r0,[r0]             ; 08000B0C
strh  r0,[r2]             ; 08000B0E
add   r2,0x2              ; 08000B10
add   r3,0x2              ; 08000B12
add   r0,r1,r3            ; 08000B14
ldrh  r0,[r0]             ; 08000B16
strh  r0,[r2]             ; 08000B18
sub   r2,0x14             ; 08000B1A
add   r3,0x2              ; 08000B1C
add   r0,r1,r3            ; 08000B1E
ldrh  r0,[r0]             ; 08000B20
strh  r0,[r2]             ; 08000B22
add   r2,0x4              ; 08000B24
add   r3,0x2              ; 08000B26
add   r0,r1,r3            ; 08000B28
ldrh  r0,[r0]             ; 08000B2A
strh  r0,[r2]             ; 08000B2C
sub   r2,0x2              ; 08000B2E
add   r3,0x2              ; 08000B30
add   r0,r1,r3            ; 08000B32
ldrh  r0,[r0]             ; 08000B34
strh  r0,[r2]             ; 08000B36
add   r2,0x4              ; 08000B38
add   r3,0x2              ; 08000B3A
add   r0,r1,r3            ; 08000B3C
ldrh  r0,[r0]             ; 08000B3E
strh  r0,[r2]             ; 08000B40
add   r2,0x2              ; 08000B42
ldr   r3,=0x4A03          ; 08000B44
add   r0,r1,r3            ; 08000B46
ldrb  r0,[r0]             ; 08000B48
strb  r0,[r2]             ; 08000B4A
add   r2,0x1              ; 08000B4C
add   r3,0x1              ; 08000B4E
add   r0,r1,r3            ; 08000B50
ldrb  r0,[r0]             ; 08000B52
strb  r0,[r2]             ; 08000B54
add   r2,0x1              ; 08000B56
ldr   r0,=0x48CC          ; 08000B58
add   r1,r1,r0            ; 08000B5A
ldrh  r0,[r1]             ; 08000B5C
strb  r0,[r2]             ; 08000B5E
bx    lr                  ; 08000B60
.pool                     ; 08000B62

Sub08000B7C:
ldr   r2,=0x04000010      ; 08000B7C
ldr   r1,=0x03002200      ; 08000B7E
ldr   r3,=0x47E4          ; 08000B80
add   r0,r1,r3            ; 08000B82
ldrh  r0,[r0]             ; 08000B84
strh  r0,[r2]             ; 08000B86
add   r2,0x2              ; 08000B88
add   r3,0x8              ; 08000B8A
add   r0,r1,r3            ; 08000B8C
ldrh  r0,[r0]             ; 08000B8E
strh  r0,[r2]             ; 08000B90
add   r2,0x2              ; 08000B92
sub   r3,0x6              ; 08000B94
add   r0,r1,r3            ; 08000B96
ldrh  r0,[r0]             ; 08000B98
strh  r0,[r2]             ; 08000B9A
add   r2,0x2              ; 08000B9C
add   r3,0x8              ; 08000B9E
add   r0,r1,r3            ; 08000BA0
ldrh  r0,[r0]             ; 08000BA2
strh  r0,[r2]             ; 08000BA4
add   r2,0x2              ; 08000BA6
sub   r3,0x6              ; 08000BA8
add   r0,r1,r3            ; 08000BAA
ldrh  r0,[r0]             ; 08000BAC
strh  r0,[r2]             ; 08000BAE
add   r2,0x2              ; 08000BB0
add   r3,0x8              ; 08000BB2
add   r0,r1,r3            ; 08000BB4
ldrh  r0,[r0]             ; 08000BB6
strh  r0,[r2]             ; 08000BB8
add   r2,0x2              ; 08000BBA
sub   r3,0x6              ; 08000BBC
add   r0,r1,r3            ; 08000BBE
ldrh  r0,[r0]             ; 08000BC0
strh  r0,[r2]             ; 08000BC2
add   r2,0x2              ; 08000BC4
ldr   r0,=0x47F2          ; 08000BC6
add   r1,r1,r0            ; 08000BC8
ldrh  r0,[r1]             ; 08000BCA
strh  r0,[r2]             ; 08000BCC
bx    lr                  ; 08000BCE
.pool                     ; 08000BD0

Sub08000BE0:
push  {r4-r6,lr}          ; 08000BE0
ldr   r4,=0x03002200      ; 08000BE2
mov   r1,0x92             ; 08000BE4
lsl   r1,r1,0x7           ; 08000BE6
add   r0,r4,r1            ; 08000BE8
ldrb  r0,[r0]             ; 08000BEA
cmp   r0,0x0              ; 08000BEC
beq   @Code08000BF2       ; 08000BEE
b     @Code08000F20       ; 08000BF0
@Code08000BF2:
ldr   r2,=0x4901          ; 08000BF2
add   r1,r4,r2            ; 08000BF4
ldrb  r0,[r1]             ; 08000BF6
add   r0,0x1              ; 08000BF8
strb  r0,[r1]             ; 08000BFA
mov   r1,0x80             ; 08000BFC
lsl   r1,r1,0x13          ; 08000BFE
ldr   r3,=0x47C6          ; 08000C00
add   r0,r4,r3            ; 08000C02
ldrh  r0,[r0]             ; 08000C04
strh  r0,[r1]             ; 08000C06
add   r1,0x8              ; 08000C08
ldr   r5,=0x47C8          ; 08000C0A
add   r0,r4,r5            ; 08000C0C
ldrh  r0,[r0]             ; 08000C0E
strh  r0,[r1]             ; 08000C10
add   r1,0x2              ; 08000C12
ldr   r2,=0x47CA          ; 08000C14
add   r0,r4,r2            ; 08000C16
ldrh  r0,[r0]             ; 08000C18
strh  r0,[r1]             ; 08000C1A
add   r1,0x2              ; 08000C1C
add   r3,0x6              ; 08000C1E
add   r0,r4,r3            ; 08000C20
ldrh  r0,[r0]             ; 08000C22
strh  r0,[r1]             ; 08000C24
add   r1,0x2              ; 08000C26
add   r5,0x6              ; 08000C28
add   r0,r4,r5            ; 08000C2A
ldrh  r0,[r0]             ; 08000C2C
strh  r0,[r1]             ; 08000C2E
ldr   r2,=0x04000010      ; 08000C30
ldr   r1,=0x47E4          ; 08000C32
add   r0,r4,r1            ; 08000C34
ldrh  r1,[r0]             ; 08000C36
strh  r1,[r2]             ; 08000C38
ldr   r0,=0x04000014      ; 08000C3A
strh  r1,[r0]             ; 08000C3C
ldr   r1,=0x04000018      ; 08000C3E
ldr   r2,=0x47E6          ; 08000C40
add   r0,r4,r2            ; 08000C42
ldrh  r0,[r0]             ; 08000C44
strh  r0,[r1]             ; 08000C46
add   r1,0x2              ; 08000C48
add   r3,0x22             ; 08000C4A
add   r0,r4,r3            ; 08000C4C
ldrh  r0,[r0]             ; 08000C4E
strh  r0,[r1]             ; 08000C50
add   r1,0x2              ; 08000C52
add   r5,0x1A             ; 08000C54
add   r0,r4,r5            ; 08000C56
ldrh  r0,[r0]             ; 08000C58
strh  r0,[r1]             ; 08000C5A
add   r1,0x2              ; 08000C5C
add   r2,0xA              ; 08000C5E
add   r0,r4,r2            ; 08000C60
ldrh  r0,[r0]             ; 08000C62
strh  r0,[r1]             ; 08000C64
add   r1,0x2E             ; 08000C66
add   r3,0xCA             ; 08000C68
add   r0,r4,r3            ; 08000C6A
ldrh  r0,[r0]             ; 08000C6C
strh  r0,[r1]             ; 08000C6E
ldr   r0,=0x04000020      ; 08000C70
mov   r5,0x80             ; 08000C72
lsl   r5,r5,0x7           ; 08000C74
add   r1,r4,r5            ; 08000C76
mov   r2,0x10             ; 08000C78
bl    Sub0812FD60         ; 08000C7A
ldr   r2,=0x04000012      ; 08000C7E
ldr   r0,=0x47EC          ; 08000C80
add   r1,r4,r0            ; 08000C82
ldr   r0,=0x03006D80      ; 08000C84
ldr   r3,=0x0256          ; 08000C86
add   r0,r0,r3            ; 08000C88
ldrh  r0,[r0]             ; 08000C8A
ldrh  r1,[r1]             ; 08000C8C
add   r0,r0,r1            ; 08000C8E
strh  r0,[r2]             ; 08000C90
ldr   r1,=0x04000016      ; 08000C92
strh  r0,[r1]             ; 08000C94
bl    Sub08014680         ; 08000C96
bl    Sub08014860         ; 08000C9A
bl    Sub0802EF48         ; 08000C9E
bl    Sub080E80D4         ; 08000CA2
bl    Sub0802F244         ; 08000CA6
ldr   r1,=0x03007020      ; 08000CAA
ldr   r0,=0x03007024      ; 08000CAC
ldr   r0,[r0]             ; 08000CAE
str   r0,[r1]             ; 08000CB0
ldr   r5,=0x48F7          ; 08000CB2
add   r0,r4,r5            ; 08000CB4
ldrb  r5,[r0]             ; 08000CB6
cmp   r5,0x0              ; 08000CB8
beq   @Code08000CBE       ; 08000CBA
b     @Code08000DEC       ; 08000CBC
@Code08000CBE:
ldr   r0,=0x0300702C      ; 08000CBE  Sprite RAM structs (03002460)
ldr   r0,[r0]             ; 08000CC0
ldr   r1,=0x1890          ; 08000CC2
add   r2,r0,r1            ; 08000CC4
ldrb  r0,[r2]             ; 08000CC6
cmp   r0,0x0              ; 08000CC8
beq   @Code08000DBA       ; 08000CCA
ldr   r3,=0x48E8          ; 08000CCC
add   r1,r4,r3            ; 08000CCE
ldrh  r1,[r1]             ; 08000CD0
add   r0,r0,r1            ; 08000CD2
cmp   r0,0x80             ; 08000CD4
ble   @Code08000D42       ; 08000CD6
mov   r3,r1               ; 08000CD8
cmp   r1,0x80             ; 08000CDA
bhi   @Code08000D40       ; 08000CDC
mov   r0,0x80             ; 08000CDE
sub   r0,r0,r3            ; 08000CE0
strb  r0,[r2]             ; 08000CE2
b     @Code08000D42       ; 08000CE4
.pool                     ; 08000CE6

@Code08000D40:
strb  r5,[r2]             ; 08000D40
@Code08000D42:
ldr   r0,=0x0300702C      ; 08000D42  Sprite RAM structs (03002460)
ldr   r0,[r0]             ; 08000D44
ldr   r4,=0x1890          ; 08000D46
add   r0,r0,r4            ; 08000D48
ldrb  r2,[r0]             ; 08000D4A
lsl   r2,r2,0x13          ; 08000D4C
lsr   r5,r2,0x10          ; 08000D4E
ldr   r0,=0x0202BADC      ; 08000D50
mov   r4,0xE0             ; 08000D52
lsl   r4,r4,0x13          ; 08000D54
lsr   r2,r2,0x12          ; 08000D56
mov   r6,0x80             ; 08000D58
lsl   r6,r6,0x13          ; 08000D5A
orr   r2,r6               ; 08000D5C
mov   r1,r4               ; 08000D5E
bl    swi_MemoryCopy4or2  ; 08000D60  Memory copy/fill, 4- or 2-byte blocks
add   r1,r5,r4            ; 08000D64
mov   r0,0x80             ; 08000D66
lsl   r0,r0,0x3           ; 08000D68
sub   r0,r0,r5            ; 08000D6A
cmp   r0,0x0              ; 08000D6C
bge   @Code08000D72       ; 08000D6E
add   r0,0x3              ; 08000D70
@Code08000D72:
lsl   r2,r0,0x9           ; 08000D72
lsr   r2,r2,0xB           ; 08000D74
orr   r2,r6               ; 08000D76
ldr   r0,=0x0201A800      ; 08000D78
bl    swi_MemoryCopy4or2  ; 08000D7A  Memory copy/fill, 4- or 2-byte blocks
ldr   r3,=0x0201A806      ; 08000D7E
ldr   r2,=0x07000006      ; 08000D80
ldr   r0,=0x03002200      ; 08000D82
ldr   r5,=0x47D2          ; 08000D84
add   r0,r0,r5            ; 08000D86
ldrh  r1,[r0]             ; 08000D88
cmp   r1,0x0              ; 08000D8A
beq   @Code08000DAC       ; 08000D8C
@Code08000D8E:
ldrh  r0,[r3]             ; 08000D8E
strh  r0,[r2]             ; 08000D90
ldrh  r0,[r3,0x8]         ; 08000D92
strh  r0,[r2,0x8]         ; 08000D94
ldrh  r0,[r3,0x10]        ; 08000D96
strh  r0,[r2,0x10]        ; 08000D98
ldrh  r0,[r3,0x18]        ; 08000D9A
strh  r0,[r2,0x18]        ; 08000D9C
add   r2,0x20             ; 08000D9E
add   r3,0x20             ; 08000DA0
sub   r0,r1,0x1           ; 08000DA2
lsl   r0,r0,0x10          ; 08000DA4
lsr   r1,r0,0x10          ; 08000DA6
cmp   r1,0x0              ; 08000DA8
bne   @Code08000D8E       ; 08000DAA
@Code08000DAC:
ldr   r0,=0x0300702C      ; 08000DAC  Sprite RAM structs (03002460)
ldr   r0,[r0]             ; 08000DAE
ldr   r1,=0x1890          ; 08000DB0
add   r0,r0,r1            ; 08000DB2
ldrb  r0,[r0]             ; 08000DB4
cmp   r0,0x0              ; 08000DB6
bne   @Code08000DFA       ; 08000DB8
@Code08000DBA:
ldr   r0,=0x0201A800      ; 08000DBA
mov   r1,0xE0             ; 08000DBC
lsl   r1,r1,0x13          ; 08000DBE
mov   r2,0x80             ; 08000DC0
lsl   r2,r2,0x1           ; 08000DC2
bl    swi_MemoryCopy32    ; 08000DC4  Memory copy/fill, 32-byte blocks
b     @Code08000DFA       ; 08000DC8
.pool                     ; 08000DCA

@Code08000DEC:
ldr   r0,=0x0201A800      ; 08000DEC
mov   r1,0xE0             ; 08000DEE
lsl   r1,r1,0x13          ; 08000DF0
mov   r2,0x80             ; 08000DF2
lsl   r2,r2,0x1           ; 08000DF4
bl    swi_MemoryCopy32    ; 08000DF6  Memory copy/fill, 32-byte blocks
@Code08000DFA:
ldr   r1,=0x04000050      ; 08000DFA
ldr   r4,=0x03002200      ; 08000DFC
ldr   r2,=0x4888          ; 08000DFE
add   r0,r4,r2            ; 08000E00
ldrh  r0,[r0]             ; 08000E02
strh  r0,[r1]             ; 08000E04
add   r1,0x2              ; 08000E06
ldr   r3,=0x488A          ; 08000E08
add   r0,r4,r3            ; 08000E0A
ldrh  r0,[r0]             ; 08000E0C
strh  r0,[r1]             ; 08000E0E
add   r1,0x2              ; 08000E10
ldr   r5,=0x488C          ; 08000E12
add   r0,r4,r5            ; 08000E14
ldrh  r0,[r0]             ; 08000E16
strh  r0,[r1]             ; 08000E18
sub   r1,0x14             ; 08000E1A
add   r2,0x6              ; 08000E1C
add   r0,r4,r2            ; 08000E1E
ldrh  r0,[r0]             ; 08000E20
strh  r0,[r1]             ; 08000E22
add   r1,0x4              ; 08000E24
add   r3,0x6              ; 08000E26
add   r0,r4,r3            ; 08000E28
ldrh  r0,[r0]             ; 08000E2A
strh  r0,[r1]             ; 08000E2C
sub   r1,0x2              ; 08000E2E
add   r5,0x6              ; 08000E30
add   r0,r4,r5            ; 08000E32
ldrh  r0,[r0]             ; 08000E34
strh  r0,[r1]             ; 08000E36
add   r1,0x4              ; 08000E38
add   r2,0x6              ; 08000E3A
add   r0,r4,r2            ; 08000E3C
ldrh  r0,[r0]             ; 08000E3E
strh  r0,[r1]             ; 08000E40
add   r1,0x2              ; 08000E42
ldr   r3,=0x4A03          ; 08000E44
add   r0,r4,r3            ; 08000E46
ldrb  r0,[r0]             ; 08000E48
strb  r0,[r1]             ; 08000E4A
add   r1,0x1              ; 08000E4C
ldr   r5,=0x4A04          ; 08000E4E
add   r0,r4,r5            ; 08000E50
ldrb  r0,[r0]             ; 08000E52
strb  r0,[r1]             ; 08000E54
add   r1,0x1              ; 08000E56
add   r2,0x38             ; 08000E58
add   r0,r4,r2            ; 08000E5A
ldrh  r0,[r0]             ; 08000E5C
strh  r0,[r1]             ; 08000E5E
ldr   r3,=0x4010          ; 08000E60
add   r0,r4,r3            ; 08000E62
bl    Sub0810B3C0         ; 08000E64
ldr   r5,=0x4034          ; 08000E68
add   r0,r4,r5            ; 08000E6A
bl    Sub0810B4F4         ; 08000E6C
ldr   r0,=0x02027C00      ; 08000E70
bl    Sub0810B6BC         ; 08000E72
ldr   r2,=0x03007308      ; 08000E76
ldr   r1,=0x47EC          ; 08000E78
add   r0,r4,r1            ; 08000E7A
ldrh  r0,[r0]             ; 08000E7C
ldr   r1,=0x03006D80      ; 08000E7E
ldr   r3,=0x0256          ; 08000E80
add   r1,r1,r3            ; 08000E82
ldrh  r1,[r1]             ; 08000E84
add   r0,r0,r1            ; 08000E86
ldr   r1,[r2]             ; 08000E88
bl    Sub_bx_r1           ; 08000E8A  bx r1
ldr   r5,=0x4B65          ; 08000E8E
add   r4,r4,r5            ; 08000E90
ldrb  r0,[r4]             ; 08000E92
cmp   r0,0x0              ; 08000E94
beq   @Code08000F1A       ; 08000E96
cmp   r0,0x2              ; 08000E98
bne   @Code08000F04       ; 08000E9A
ldr   r4,=0x0300724C      ; 08000E9C
ldr   r0,[r4]             ; 08000E9E
ldr   r1,=0x06004500      ; 08000EA0
mov   r2,0x30             ; 08000EA2
bl    swi_MemoryCopy32    ; 08000EA4  Memory copy/fill, 32-byte blocks
ldr   r0,[r4]             ; 08000EA8
add   r0,0xC0             ; 08000EAA
ldr   r1,=0x06004700      ; 08000EAC
mov   r2,0x30             ; 08000EAE
bl    swi_MemoryCopy32    ; 08000EB0  Memory copy/fill, 32-byte blocks
b     @Code08000F1A       ; 08000EB4
.pool                     ; 08000EB6

@Code08000F04:
cmp   r0,0x3              ; 08000F04
bne   @Code08000F1A       ; 08000F06
mov   r0,0x0              ; 08000F08
bl    Sub08055B2C         ; 08000F0A
mov   r0,0x1              ; 08000F0E
bl    Sub08055B2C         ; 08000F10
mov   r0,0x2              ; 08000F14
bl    Sub08055B2C         ; 08000F16
@Code08000F1A:
ldr   r0,=0x02011002      ; 08000F1A
bl    Sub08002684         ; 08000F1C
@Code08000F20:
bl    Sub080E5B6C         ; 08000F20
ldr   r3,=0x04000004      ; 08000F24
mov   r0,0x8              ; 08000F26
strh  r0,[r3]             ; 08000F28
ldr   r1,=0x03002200      ; 08000F2A
ldr   r0,=0x03007240      ; 08000F2C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 08000F2E
mov   r2,0x9A             ; 08000F30
lsl   r2,r2,0x6           ; 08000F32
add   r0,r0,r2            ; 08000F34
ldrh  r0,[r0]             ; 08000F36
lsr   r0,r0,0x1           ; 08000F38
ldr   r4,=0x48DA          ; 08000F3A
add   r2,r1,r4            ; 08000F3C
strh  r0,[r2]             ; 08000F3E
ldr   r5,=0x48BE          ; 08000F40
add   r0,r1,r5            ; 08000F42
ldrh  r0,[r0]             ; 08000F44
cmp   r0,0x0              ; 08000F46
beq   @Code08000F88       ; 08000F48
sub   r4,0x1E             ; 08000F4A
add   r0,r1,r4            ; 08000F4C
ldrh  r0,[r0]             ; 08000F4E
cmp   r0,0x0              ; 08000F50
bne   @Code08000F88       ; 08000F52
mov   r1,0xA0             ; 08000F54
lsl   r1,r1,0x13          ; 08000F56
ldrh  r0,[r2]             ; 08000F58
lsl   r0,r0,0x1           ; 08000F5A
ldr   r5,=0x020293D0      ; 08000F5C
add   r0,r0,r5            ; 08000F5E
ldrh  r0,[r0]             ; 08000F60
strh  r0,[r1]             ; 08000F62
mov   r0,0x18             ; 08000F64
strh  r0,[r3]             ; 08000F66
b     @Code08000F96       ; 08000F68
.pool                     ; 08000F6A

@Code08000F88:
ldr   r0,=0x03007020      ; 08000F88
ldr   r0,[r0]             ; 08000F8A
cmp   r0,0x0              ; 08000F8C
beq   @Code08000F96       ; 08000F8E
ldr   r1,=0x04000004      ; 08000F90
mov   r0,0x18             ; 08000F92
strh  r0,[r1]             ; 08000F94
@Code08000F96:
ldr   r0,=0x03007240      ; 08000F96  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]             ; 08000F98
ldr   r2,=0x299A          ; 08000F9A
add   r1,r1,r2            ; 08000F9C
ldrh  r1,[r1]             ; 08000F9E
ldr   r3,=0x03002200      ; 08000FA0
mov   r4,r0               ; 08000FA2
cmp   r1,0x22             ; 08000FA4
bne   @Code08001010       ; 08000FA6
ldr   r1,=0x04000004      ; 08000FA8
mov   r0,0x18             ; 08000FAA
strh  r0,[r1]             ; 08000FAC
ldr   r5,=0x47F0          ; 08000FAE
add   r0,r3,r5            ; 08000FB0
ldrh  r1,[r0]             ; 08000FB2
mov   r2,0xF2             ; 08000FB4
lsl   r2,r2,0x3           ; 08000FB6
mov   r0,r2               ; 08000FB8
sub   r0,r0,r1            ; 08000FBA
add   r5,0xD4             ; 08000FBC
add   r1,r3,r5            ; 08000FBE
strh  r0,[r1]             ; 08000FC0
ldr   r1,=0x0400000E      ; 08000FC2
ldr   r2,=0x47CE          ; 08000FC4
add   r0,r3,r2            ; 08000FC6
ldrh  r0,[r0]             ; 08000FC8
strh  r0,[r1]             ; 08000FCA
add   r5,0x3D             ; 08000FCC
add   r0,r3,r5            ; 08000FCE
ldrb  r1,[r0]             ; 08000FD0
mov   r0,0x1              ; 08000FD2
and   r0,r1               ; 08000FD4
cmp   r0,0x0              ; 08000FD6
beq   @Code08001008       ; 08000FD8
ldr   r0,=0x0400001C      ; 08000FDA
ldr   r1,=0x0202C1D4      ; 08000FDC
b     @Code0800100C       ; 08000FDE
.pool                     ; 08000FE0

@Code08001008:
ldr   r0,=0x0400001C      ; 08001008
ldr   r1,=0x0202C376      ; 0800100A
@Code0800100C:
ldrh  r1,[r1]             ; 0800100C
strh  r1,[r0]             ; 0800100E
@Code08001010:
ldr   r0,[r4]             ; 08001010
ldr   r1,=0x299A          ; 08001012
add   r0,r0,r1            ; 08001014
ldrh  r0,[r0]             ; 08001016
cmp   r0,0x20             ; 08001018
bne   @Code0800105C       ; 0800101A
ldr   r2,=0x48C2          ; 0800101C
add   r0,r3,r2            ; 0800101E
ldrh  r0,[r0]             ; 08001020
lsr   r0,r0,0x8           ; 08001022
mov   r1,0x1              ; 08001024
and   r0,r1               ; 08001026
cmp   r0,0x0              ; 08001028
beq   @Code08001034       ; 0800102A
ldr   r0,=0x0400001C      ; 0800102C
ldr   r1,=0x0202C1D4      ; 0800102E
ldrh  r1,[r1]             ; 08001030
strh  r1,[r0]             ; 08001032
@Code08001034:
ldr   r1,=0x0400000E      ; 08001034
ldr   r5,=0x47CE          ; 08001036
add   r0,r3,r5            ; 08001038
ldrh  r0,[r0]             ; 0800103A
strh  r0,[r1]             ; 0800103C
ldr   r1,=0x47F0          ; 0800103E
add   r0,r3,r1            ; 08001040
ldrh  r2,[r0]             ; 08001042
ldr   r5,=0x0773          ; 08001044
mov   r0,r5               ; 08001046
sub   r0,r0,r2            ; 08001048
ldr   r5,=0x48C4          ; 0800104A
add   r1,r3,r5            ; 0800104C
strh  r0,[r1]             ; 0800104E
ldr   r1,=0x07BF          ; 08001050
mov   r0,r1               ; 08001052
sub   r0,r0,r2            ; 08001054
ldr   r2,=0x48C6          ; 08001056
add   r1,r3,r2            ; 08001058
strh  r0,[r1]             ; 0800105A
@Code0800105C:
mov   r2,r3               ; 0800105C
ldr   r5,=0x48C2          ; 0800105E
add   r0,r2,r5            ; 08001060
ldrh  r0,[r0]             ; 08001062
cmp   r0,0x0              ; 08001064
beq   @Code0800110C       ; 08001066
ldr   r1,=0x04000004      ; 08001068
mov   r0,0x18             ; 0800106A
strh  r0,[r1]             ; 0800106C
ldr   r0,[r4]             ; 0800106E
ldr   r1,=0x2996          ; 08001070
add   r0,r0,r1            ; 08001072
ldrh  r0,[r0]             ; 08001074
cmp   r0,0xF              ; 08001076
bne   @Code080010E4       ; 08001078
ldr   r3,=0x4901          ; 0800107A
add   r0,r2,r3            ; 0800107C
ldrb  r1,[r0]             ; 0800107E
mov   r0,0x1              ; 08001080
and   r0,r1               ; 08001082
cmp   r0,0x0              ; 08001084
beq   @Code080010D4       ; 08001086
ldr   r0,=0x04000018      ; 08001088
ldr   r1,=0x0202C6BA      ; 0800108A
b     @Code08001108       ; 0800108C
.pool                     ; 0800108E

@Code080010D4:
ldr   r0,=0x04000018      ; 080010D4
ldr   r1,=0x0202C518      ; 080010D6
b     @Code08001108       ; 080010D8
.pool                     ; 080010DA

@Code080010E4:
ldr   r4,=0x4901          ; 080010E4
add   r0,r3,r4            ; 080010E6
ldrb  r1,[r0]             ; 080010E8
mov   r0,0x1              ; 080010EA
and   r0,r1               ; 080010EC
cmp   r0,0x0              ; 080010EE
beq   @Code08001104       ; 080010F0
ldr   r0,=0x0400001C      ; 080010F2
ldr   r1,=0x0202C1D4      ; 080010F4
b     @Code08001108       ; 080010F6
.pool                     ; 080010F8

@Code08001104:
ldr   r0,=0x0400001C      ; 08001104
ldr   r1,=0x0202C376      ; 08001106
@Code08001108:
ldrh  r1,[r1]             ; 08001108
strh  r1,[r0]             ; 0800110A
@Code0800110C:
ldr   r4,=0x03006210      ; 0800110C
mov   r0,r4               ; 0800110E
bl    Sub0810B310         ; 08001110
mov   r0,r4               ; 08001114
add   r0,0x24             ; 08001116
bl    Sub0810B444         ; 08001118
ldr   r5,=0x09FB          ; 0800111C
add   r4,r4,r5            ; 0800111E
ldrb  r0,[r4]             ; 08001120
add   r0,0x1              ; 08001122
ldrb  r1,[r4]             ; 08001124
strb  r0,[r4]             ; 08001126
pop   {r4-r6}             ; 08001128
pop   {r0}                ; 0800112A
bx    r0                  ; 0800112C
.pool                     ; 0800112E

Sub08001140:
push  {r4,lr}             ; 08001140
ldr   r4,=0x03002200      ; 08001142
ldr   r0,=0x4901          ; 08001144
add   r1,r4,r0            ; 08001146
ldrb  r0,[r1]             ; 08001148
add   r0,0x1              ; 0800114A
strb  r0,[r1]             ; 0800114C
mov   r1,0x80             ; 0800114E
lsl   r1,r1,0x13          ; 08001150
ldr   r2,=0x47C6          ; 08001152
add   r0,r4,r2            ; 08001154
ldrh  r0,[r0]             ; 08001156
strh  r0,[r1]             ; 08001158
add   r1,0x8              ; 0800115A
add   r2,0x2              ; 0800115C
add   r0,r4,r2            ; 0800115E
ldrh  r0,[r0]             ; 08001160
strh  r0,[r1]             ; 08001162
add   r1,0x2              ; 08001164
add   r2,0x2              ; 08001166
add   r0,r4,r2            ; 08001168
ldrh  r0,[r0]             ; 0800116A
strh  r0,[r1]             ; 0800116C
add   r1,0x2              ; 0800116E
add   r2,0x2              ; 08001170
add   r0,r4,r2            ; 08001172
ldrh  r0,[r0]             ; 08001174
strh  r0,[r1]             ; 08001176
add   r1,0x2              ; 08001178
add   r2,0x2              ; 0800117A
add   r0,r4,r2            ; 0800117C
ldrh  r0,[r0]             ; 0800117E
strh  r0,[r1]             ; 08001180
ldr   r2,=0x04000010      ; 08001182
ldr   r1,=0x47E4          ; 08001184
add   r0,r4,r1            ; 08001186
ldrh  r1,[r0]             ; 08001188
strh  r1,[r2]             ; 0800118A
ldr   r0,=0x04000014      ; 0800118C
strh  r1,[r0]             ; 0800118E
ldr   r1,=0x04000018      ; 08001190
ldr   r2,=0x47E6          ; 08001192
add   r0,r4,r2            ; 08001194
ldrh  r0,[r0]             ; 08001196
strh  r0,[r1]             ; 08001198
add   r1,0x2              ; 0800119A
add   r2,0x8              ; 0800119C
add   r0,r4,r2            ; 0800119E
ldrh  r0,[r0]             ; 080011A0
strh  r0,[r1]             ; 080011A2
add   r1,0x2              ; 080011A4
sub   r2,0x6              ; 080011A6
add   r0,r4,r2            ; 080011A8
ldrh  r0,[r0]             ; 080011AA
strh  r0,[r1]             ; 080011AC
add   r1,0x2              ; 080011AE
add   r2,0x8              ; 080011B0
add   r0,r4,r2            ; 080011B2
ldrh  r0,[r0]             ; 080011B4
strh  r0,[r1]             ; 080011B6
add   r1,0x2E             ; 080011B8
add   r2,0xC8             ; 080011BA
add   r0,r4,r2            ; 080011BC
ldrh  r0,[r0]             ; 080011BE
strh  r0,[r1]             ; 080011C0
add   r1,0x4              ; 080011C2
sub   r2,0x30             ; 080011C4
add   r0,r4,r2            ; 080011C6
ldrh  r0,[r0]             ; 080011C8
strh  r0,[r1]             ; 080011CA
add   r1,0x2              ; 080011CC
add   r2,0x2              ; 080011CE
add   r0,r4,r2            ; 080011D0
ldrh  r0,[r0]             ; 080011D2
strh  r0,[r1]             ; 080011D4
add   r1,0x2              ; 080011D6
add   r2,0x2              ; 080011D8
add   r0,r4,r2            ; 080011DA
ldrh  r0,[r0]             ; 080011DC
strh  r0,[r1]             ; 080011DE
sub   r1,0x14             ; 080011E0
add   r2,0x2              ; 080011E2
add   r0,r4,r2            ; 080011E4
ldrh  r0,[r0]             ; 080011E6
strh  r0,[r1]             ; 080011E8
add   r1,0x4              ; 080011EA
add   r2,0x2              ; 080011EC
add   r0,r4,r2            ; 080011EE
ldrh  r0,[r0]             ; 080011F0
strh  r0,[r1]             ; 080011F2
sub   r1,0x2              ; 080011F4
add   r2,0x2              ; 080011F6
add   r0,r4,r2            ; 080011F8
ldrh  r0,[r0]             ; 080011FA
strh  r0,[r1]             ; 080011FC
add   r1,0x4              ; 080011FE
add   r2,0x2              ; 08001200
add   r0,r4,r2            ; 08001202
ldrh  r0,[r0]             ; 08001204
strh  r0,[r1]             ; 08001206
add   r1,0x2              ; 08001208
ldr   r2,=0x4A03          ; 0800120A
add   r0,r4,r2            ; 0800120C
ldrb  r0,[r0]             ; 0800120E
strb  r0,[r1]             ; 08001210
add   r1,0x1              ; 08001212
add   r2,0x1              ; 08001214
add   r0,r4,r2            ; 08001216
ldrb  r0,[r0]             ; 08001218
strb  r0,[r1]             ; 0800121A
add   r1,0x1              ; 0800121C
ldr   r2,=0x48CC          ; 0800121E
add   r0,r4,r2            ; 08001220
ldrh  r0,[r0]             ; 08001222
strh  r0,[r1]             ; 08001224
ldr   r0,=0x0201A800      ; 08001226
mov   r1,0xE0             ; 08001228
lsl   r1,r1,0x13          ; 0800122A
mov   r2,0x80             ; 0800122C
lsl   r2,r2,0x1           ; 0800122E
bl    swi_MemoryCopy32    ; 08001230  Memory copy/fill, 32-byte blocks
ldr   r0,=0x04000012      ; 08001234
ldr   r1,=0x47EC          ; 08001236
add   r4,r4,r1            ; 08001238
ldrh  r1,[r4]             ; 0800123A
strh  r1,[r0]             ; 0800123C
add   r0,0x4              ; 0800123E
strh  r1,[r0]             ; 08001240
pop   {r4}                ; 08001242
pop   {r0}                ; 08001244
bx    r0                  ; 08001246
.pool                     ; 08001248

Sub0800127C:
push  {r4,lr}             ; 0800127C
ldr   r4,=0x03002200      ; 0800127E
mov   r1,0x92             ; 08001280
lsl   r1,r1,0x7           ; 08001282
add   r0,r4,r1            ; 08001284
ldrb  r0,[r0]             ; 08001286
cmp   r0,0x0              ; 08001288
bne   @Code0800137C       ; 0800128A
ldr   r2,=0x4901          ; 0800128C
add   r1,r4,r2            ; 0800128E
ldrb  r0,[r1]             ; 08001290
add   r0,0x1              ; 08001292
strb  r0,[r1]             ; 08001294
mov   r1,0x80             ; 08001296
lsl   r1,r1,0x13          ; 08001298
ldr   r2,=0x47C6          ; 0800129A
add   r0,r4,r2            ; 0800129C
ldrh  r0,[r0]             ; 0800129E
strh  r0,[r1]             ; 080012A0
add   r1,0x8              ; 080012A2
add   r2,0x2              ; 080012A4
add   r0,r4,r2            ; 080012A6
ldrh  r0,[r0]             ; 080012A8
strh  r0,[r1]             ; 080012AA
add   r1,0x2              ; 080012AC
add   r2,0x2              ; 080012AE
add   r0,r4,r2            ; 080012B0
ldrh  r0,[r0]             ; 080012B2
strh  r0,[r1]             ; 080012B4
add   r1,0x2              ; 080012B6
add   r2,0x2              ; 080012B8
add   r0,r4,r2            ; 080012BA
ldrh  r0,[r0]             ; 080012BC
strh  r0,[r1]             ; 080012BE
add   r1,0x2              ; 080012C0
add   r2,0x2              ; 080012C2
add   r0,r4,r2            ; 080012C4
ldrh  r0,[r0]             ; 080012C6
strh  r0,[r1]             ; 080012C8
bl    Sub08000B7C         ; 080012CA
ldr   r1,=0x0400004C      ; 080012CE
ldr   r2,=0x48B8          ; 080012D0
add   r0,r4,r2            ; 080012D2
ldrh  r0,[r0]             ; 080012D4
strh  r0,[r1]             ; 080012D6
mov   r1,0xE0             ; 080012D8
lsl   r1,r1,0x6           ; 080012DA
add   r0,r4,r1            ; 080012DC
mov   r1,0xE0             ; 080012DE
lsl   r1,r1,0x13          ; 080012E0
mov   r2,0x80             ; 080012E2
lsl   r2,r2,0x1           ; 080012E4
bl    swi_MemoryCopy32    ; 080012E6  Memory copy/fill, 32-byte blocks
ldr   r2,=0x4168          ; 080012EA
add   r1,r4,r2            ; 080012EC
add   r2,0x4              ; 080012EE
add   r0,r4,r2            ; 080012F0
ldr   r0,[r0]             ; 080012F2
str   r0,[r1]             ; 080012F4
ldr   r0,=0x4174          ; 080012F6
add   r1,r4,r0            ; 080012F8
add   r2,0x4              ; 080012FA
add   r0,r4,r2            ; 080012FC
ldr   r0,[r0]             ; 080012FE
str   r0,[r1]             ; 08001300
ldr   r1,=0x04000050      ; 08001302
ldr   r2,=0x4888          ; 08001304
add   r0,r4,r2            ; 08001306
ldrh  r0,[r0]             ; 08001308
strh  r0,[r1]             ; 0800130A
add   r1,0x2              ; 0800130C
add   r2,0x2              ; 0800130E
add   r0,r4,r2            ; 08001310
ldrh  r0,[r0]             ; 08001312
strh  r0,[r1]             ; 08001314
add   r1,0x2              ; 08001316
add   r2,0x2              ; 08001318
add   r0,r4,r2            ; 0800131A
ldrh  r0,[r0]             ; 0800131C
strh  r0,[r1]             ; 0800131E
sub   r1,0x14             ; 08001320
add   r2,0x2              ; 08001322
add   r0,r4,r2            ; 08001324
ldrh  r0,[r0]             ; 08001326
strh  r0,[r1]             ; 08001328
add   r1,0x4              ; 0800132A
add   r2,0x2              ; 0800132C
add   r0,r4,r2            ; 0800132E
ldrh  r0,[r0]             ; 08001330
strh  r0,[r1]             ; 08001332
sub   r1,0x2              ; 08001334
add   r2,0x2              ; 08001336
add   r0,r4,r2            ; 08001338
ldrh  r0,[r0]             ; 0800133A
strh  r0,[r1]             ; 0800133C
add   r1,0x4              ; 0800133E
add   r2,0x2              ; 08001340
add   r0,r4,r2            ; 08001342
ldrh  r0,[r0]             ; 08001344
strh  r0,[r1]             ; 08001346
add   r1,0x2              ; 08001348
ldr   r2,=0x4A03          ; 0800134A
add   r0,r4,r2            ; 0800134C
ldrb  r0,[r0]             ; 0800134E
strb  r0,[r1]             ; 08001350
add   r1,0x1              ; 08001352
add   r2,0x1              ; 08001354
add   r0,r4,r2            ; 08001356
ldrb  r0,[r0]             ; 08001358
strb  r0,[r1]             ; 0800135A
add   r1,0x1              ; 0800135C
ldr   r2,=0x48CC          ; 0800135E
add   r0,r4,r2            ; 08001360
ldrh  r0,[r0]             ; 08001362
strh  r0,[r1]             ; 08001364
ldr   r1,=0x4010          ; 08001366
add   r0,r4,r1            ; 08001368
bl    Sub0810B3C0         ; 0800136A
ldr   r2,=0x4034          ; 0800136E
add   r0,r4,r2            ; 08001370
bl    Sub0810B4F4         ; 08001372
ldr   r0,=0x02027C00      ; 08001376
bl    Sub0810B6BC         ; 08001378
@Code0800137C:
ldr   r1,=0x4A0F          ; 0800137C
add   r0,r4,r1            ; 0800137E
ldrb  r0,[r0]             ; 08001380
cmp   r0,0x0              ; 08001382
bne   @Code08001414       ; 08001384
mov   r1,0x80             ; 08001386
lsl   r1,r1,0x13          ; 08001388
mov   r2,0xEC             ; 0800138A
lsl   r2,r2,0x6           ; 0800138C
mov   r0,r2               ; 0800138E
strh  r0,[r1]             ; 08001390
ldr   r1,=0x4A0E          ; 08001392
add   r0,r4,r1            ; 08001394
ldrb  r0,[r0]             ; 08001396
cmp   r0,0x0              ; 08001398
beq   @Code080013FC       ; 0800139A
ldr   r2,=0x48F9          ; 0800139C
add   r1,r4,r2            ; 0800139E
mov   r0,0x2              ; 080013A0
strb  r0,[r1]             ; 080013A2
ldr   r1,=0x04000004      ; 080013A4
ldr   r2,=0x0F28          ; 080013A6
mov   r0,r2               ; 080013A8
strh  r0,[r1]             ; 080013AA
b     @Code08001414       ; 080013AC
.pool                     ; 080013AE

@Code080013FC:
ldr   r0,=0x48F9          ; 080013FC
add   r1,r4,r0            ; 080013FE
mov   r0,0x1              ; 08001400
strb  r0,[r1]             ; 08001402
ldr   r2,=0x04000004      ; 08001404
ldr   r1,=0x4A10          ; 08001406
add   r0,r4,r1            ; 08001408
ldrb  r0,[r0]             ; 0800140A
lsl   r0,r0,0x8           ; 0800140C
mov   r1,0x28             ; 0800140E
orr   r0,r1               ; 08001410
strh  r0,[r2]             ; 08001412
@Code08001414:
ldr   r4,=0x03006210      ; 08001414
mov   r0,r4               ; 08001416
bl    Sub0810B310         ; 08001418
mov   r0,r4               ; 0800141C
add   r0,0x24             ; 0800141E
bl    Sub0810B444         ; 08001420
ldr   r2,=0x09FB          ; 08001424
add   r4,r4,r2            ; 08001426
ldrb  r0,[r4]             ; 08001428
add   r0,0x1              ; 0800142A
ldrb  r1,[r4]             ; 0800142C
strb  r0,[r4]             ; 0800142E
pop   {r4}                ; 08001430
pop   {r0}                ; 08001432
bx    r0                  ; 08001434
.pool                     ; 08001436

Sub0800144C:
push  {r4,lr}             ; 0800144C
ldr   r4,=0x03002200      ; 0800144E
mov   r1,0x92             ; 08001450
lsl   r1,r1,0x7           ; 08001452
add   r0,r4,r1            ; 08001454
ldrb  r0,[r0]             ; 08001456
cmp   r0,0x0              ; 08001458
bne   @Code08001524       ; 0800145A
ldr   r2,=0x4901          ; 0800145C
add   r1,r4,r2            ; 0800145E
ldrb  r0,[r1]             ; 08001460
add   r0,0x1              ; 08001462
strb  r0,[r1]             ; 08001464
mov   r1,0x80             ; 08001466
lsl   r1,r1,0x13          ; 08001468
ldr   r2,=0x47C6          ; 0800146A
add   r0,r4,r2            ; 0800146C
ldrh  r0,[r0]             ; 0800146E
strh  r0,[r1]             ; 08001470
add   r1,0x8              ; 08001472
add   r2,0x2              ; 08001474
add   r0,r4,r2            ; 08001476
ldrh  r0,[r0]             ; 08001478
strh  r0,[r1]             ; 0800147A
add   r1,0x2              ; 0800147C
add   r2,0x2              ; 0800147E
add   r0,r4,r2            ; 08001480
ldrh  r0,[r0]             ; 08001482
strh  r0,[r1]             ; 08001484
add   r1,0x2              ; 08001486
add   r2,0x2              ; 08001488
add   r0,r4,r2            ; 0800148A
ldrh  r0,[r0]             ; 0800148C
strh  r0,[r1]             ; 0800148E
add   r1,0x2              ; 08001490
add   r2,0x2              ; 08001492
add   r0,r4,r2            ; 08001494
ldrh  r0,[r0]             ; 08001496
strh  r0,[r1]             ; 08001498
bl    Sub08000B7C         ; 0800149A
ldr   r1,=0x0400004C      ; 0800149E
ldr   r2,=0x48B8          ; 080014A0
add   r0,r4,r2            ; 080014A2
ldrh  r0,[r0]             ; 080014A4
strh  r0,[r1]             ; 080014A6
mov   r1,0xE0             ; 080014A8
lsl   r1,r1,0x6           ; 080014AA
add   r0,r4,r1            ; 080014AC
mov   r1,0xE0             ; 080014AE
lsl   r1,r1,0x13          ; 080014B0
mov   r2,0x80             ; 080014B2
lsl   r2,r2,0x1           ; 080014B4
bl    swi_MemoryCopy32    ; 080014B6  Memory copy/fill, 32-byte blocks
ldr   r1,=0x04000050      ; 080014BA
ldr   r2,=0x4888          ; 080014BC
add   r0,r4,r2            ; 080014BE
ldrh  r0,[r0]             ; 080014C0
strh  r0,[r1]             ; 080014C2
add   r1,0x2              ; 080014C4
add   r2,0x2              ; 080014C6
add   r0,r4,r2            ; 080014C8
ldrh  r0,[r0]             ; 080014CA
strh  r0,[r1]             ; 080014CC
add   r1,0x2              ; 080014CE
add   r2,0x2              ; 080014D0
add   r0,r4,r2            ; 080014D2
ldrh  r0,[r0]             ; 080014D4
strh  r0,[r1]             ; 080014D6
sub   r1,0x14             ; 080014D8
add   r2,0x2              ; 080014DA
add   r0,r4,r2            ; 080014DC
ldrh  r0,[r0]             ; 080014DE
strh  r0,[r1]             ; 080014E0
add   r1,0x4              ; 080014E2
add   r2,0x2              ; 080014E4
add   r0,r4,r2            ; 080014E6
ldrh  r0,[r0]             ; 080014E8
strh  r0,[r1]             ; 080014EA
sub   r1,0x2              ; 080014EC
add   r2,0x2              ; 080014EE
add   r0,r4,r2            ; 080014F0
ldrh  r0,[r0]             ; 080014F2
strh  r0,[r1]             ; 080014F4
add   r1,0x4              ; 080014F6
add   r2,0x2              ; 080014F8
add   r0,r4,r2            ; 080014FA
ldrh  r0,[r0]             ; 080014FC
strh  r0,[r1]             ; 080014FE
add   r1,0x2              ; 08001500
ldr   r2,=0x4A03          ; 08001502
add   r0,r4,r2            ; 08001504
ldrb  r0,[r0]             ; 08001506
strb  r0,[r1]             ; 08001508
add   r1,0x1              ; 0800150A
add   r2,0x1              ; 0800150C
add   r0,r4,r2            ; 0800150E
ldrb  r0,[r0]             ; 08001510
strb  r0,[r1]             ; 08001512
add   r1,0x1              ; 08001514
ldr   r2,=0x48CC          ; 08001516
add   r0,r4,r2            ; 08001518
ldrh  r0,[r0]             ; 0800151A
strh  r0,[r1]             ; 0800151C
ldr   r0,=0x02027C00      ; 0800151E
bl    Sub0810B6BC         ; 08001520
@Code08001524:
mov   r1,0x80             ; 08001524
lsl   r1,r1,0x13          ; 08001526
mov   r2,0xCC             ; 08001528
lsl   r2,r2,0x6           ; 0800152A
mov   r0,r2               ; 0800152C
strh  r0,[r1]             ; 0800152E
ldr   r0,=0x4A0B          ; 08001530
add   r1,r4,r0            ; 08001532
ldrb  r0,[r1]             ; 08001534
add   r0,0x1              ; 08001536
ldrb  r2,[r1]             ; 08001538
strb  r0,[r1]             ; 0800153A
pop   {r4}                ; 0800153C
pop   {r0}                ; 0800153E
bx    r0                  ; 08001540
.pool                     ; 08001542

Sub08001570:
push  {lr}                ; 08001570
ldr   r0,=0x03002200      ; 08001572
mov   r2,0x92             ; 08001574
lsl   r2,r2,0x7           ; 08001576
add   r1,r0,r2            ; 08001578
ldrb  r1,[r1]             ; 0800157A
mov   r2,r0               ; 0800157C
cmp   r1,0x0              ; 0800157E
beq   @Code08001584       ; 08001580
b     @Code080016AE       ; 08001582
@Code08001584:
ldr   r1,=0x04000010      ; 08001584
ldr   r3,=0x47E4          ; 08001586
add   r0,r2,r3            ; 08001588
ldrh  r0,[r0]             ; 0800158A
strh  r0,[r1]             ; 0800158C
add   r1,0x2              ; 0800158E
add   r3,0x8              ; 08001590
add   r0,r2,r3            ; 08001592
ldrh  r0,[r0]             ; 08001594
strh  r0,[r1]             ; 08001596
add   r1,0x2              ; 08001598
sub   r3,0x6              ; 0800159A
add   r0,r2,r3            ; 0800159C
ldrh  r0,[r0]             ; 0800159E
strh  r0,[r1]             ; 080015A0
add   r1,0x2              ; 080015A2
add   r3,0x8              ; 080015A4
add   r0,r2,r3            ; 080015A6
ldrh  r0,[r0]             ; 080015A8
strh  r0,[r1]             ; 080015AA
add   r1,0x2              ; 080015AC
sub   r3,0x6              ; 080015AE
add   r0,r2,r3            ; 080015B0
ldrh  r0,[r0]             ; 080015B2
strh  r0,[r1]             ; 080015B4
add   r1,0x2              ; 080015B6
add   r3,0x8              ; 080015B8
add   r0,r2,r3            ; 080015BA
ldrh  r0,[r0]             ; 080015BC
strh  r0,[r1]             ; 080015BE
add   r1,0x2              ; 080015C0
sub   r3,0x6              ; 080015C2
add   r0,r2,r3            ; 080015C4
ldrh  r0,[r0]             ; 080015C6
strh  r0,[r1]             ; 080015C8
add   r1,0x2              ; 080015CA
add   r3,0x8              ; 080015CC
add   r0,r2,r3            ; 080015CE
ldrh  r0,[r0]             ; 080015D0
strh  r0,[r1]             ; 080015D2
ldr   r1,=0x04000200      ; 080015D4
sub   r3,0x30             ; 080015D6
add   r0,r2,r3            ; 080015D8
ldrh  r0,[r0]             ; 080015DA
strh  r0,[r1]             ; 080015DC
ldr   r1,=0x04000004      ; 080015DE
add   r3,0x2              ; 080015E0
add   r0,r2,r3            ; 080015E2
ldrh  r0,[r0]             ; 080015E4
strh  r0,[r1]             ; 080015E6
sub   r1,0x4              ; 080015E8
add   r3,0x2              ; 080015EA
add   r0,r2,r3            ; 080015EC
ldrh  r0,[r0]             ; 080015EE
strh  r0,[r1]             ; 080015F0
add   r1,0x8              ; 080015F2
add   r3,0x2              ; 080015F4
add   r0,r2,r3            ; 080015F6
ldrh  r0,[r0]             ; 080015F8
strh  r0,[r1]             ; 080015FA
add   r1,0x2              ; 080015FC
add   r3,0x2              ; 080015FE
add   r0,r2,r3            ; 08001600
ldrh  r0,[r0]             ; 08001602
strh  r0,[r1]             ; 08001604
add   r1,0x2              ; 08001606
add   r3,0x2              ; 08001608
add   r0,r2,r3            ; 0800160A
ldrh  r0,[r0]             ; 0800160C
strh  r0,[r1]             ; 0800160E
add   r1,0x2              ; 08001610
add   r3,0x2              ; 08001612
add   r0,r2,r3            ; 08001614
ldrh  r0,[r0]             ; 08001616
strh  r0,[r1]             ; 08001618
add   r1,0x42             ; 0800161A
add   r3,0xBA             ; 0800161C
add   r0,r2,r3            ; 0800161E
ldrh  r0,[r0]             ; 08001620
strh  r0,[r1]             ; 08001622
add   r1,0x2              ; 08001624
add   r3,0x2              ; 08001626
add   r0,r2,r3            ; 08001628
ldrh  r0,[r0]             ; 0800162A
strh  r0,[r1]             ; 0800162C
add   r1,0x2              ; 0800162E
add   r3,0x2              ; 08001630
add   r0,r2,r3            ; 08001632
ldrh  r0,[r0]             ; 08001634
strh  r0,[r1]             ; 08001636
ldr   r1,=0x48B0          ; 08001638
add   r0,r2,r1            ; 0800163A
ldrh  r0,[r0]             ; 0800163C
cmp   r0,0x2              ; 0800163E
bne   @Code0800164C       ; 08001640
add   r3,0x26             ; 08001642
add   r0,r2,r3            ; 08001644
ldrh  r0,[r0]             ; 08001646
cmp   r0,0x0              ; 08001648
bne   @Code08001656       ; 0800164A
@Code0800164C:
ldr   r0,=0x04000040      ; 0800164C
ldr   r3,=0x488E          ; 0800164E
add   r1,r2,r3            ; 08001650
ldrh  r1,[r1]             ; 08001652
strh  r1,[r0]             ; 08001654
@Code08001656:
ldr   r1,=0x04000044      ; 08001656
ldr   r3,=0x4890          ; 08001658
add   r0,r2,r3            ; 0800165A
ldrh  r0,[r0]             ; 0800165C
strh  r0,[r1]             ; 0800165E
sub   r1,0x2              ; 08001660
add   r3,0x2              ; 08001662
add   r0,r2,r3            ; 08001664
ldrh  r0,[r0]             ; 08001666
strh  r0,[r1]             ; 08001668
add   r1,0x4              ; 0800166A
add   r3,0x2              ; 0800166C
add   r0,r2,r3            ; 0800166E
ldrh  r0,[r0]             ; 08001670
strh  r0,[r1]             ; 08001672
add   r1,0x2              ; 08001674
ldr   r3,=0x4A03          ; 08001676
add   r0,r2,r3            ; 08001678
ldrb  r0,[r0]             ; 0800167A
strb  r0,[r1]             ; 0800167C
add   r1,0x1              ; 0800167E
add   r3,0x1              ; 08001680
add   r0,r2,r3            ; 08001682
ldrb  r0,[r0]             ; 08001684
strb  r0,[r1]             ; 08001686
add   r1,0x1              ; 08001688
ldr   r3,=0x48CC          ; 0800168A
add   r0,r2,r3            ; 0800168C
ldrh  r0,[r0]             ; 0800168E
strb  r0,[r1]             ; 08001690
ldr   r0,=0x4901          ; 08001692
add   r1,r2,r0            ; 08001694
ldrb  r0,[r1]             ; 08001696
add   r0,0x1              ; 08001698
strb  r0,[r1]             ; 0800169A
mov   r1,0xE0             ; 0800169C
lsl   r1,r1,0x6           ; 0800169E
add   r0,r2,r1            ; 080016A0
mov   r1,0xE0             ; 080016A2
lsl   r1,r1,0x13          ; 080016A4
mov   r2,0x80             ; 080016A6
lsl   r2,r2,0x1           ; 080016A8
bl    swi_MemoryCopy32    ; 080016AA  Memory copy/fill, 32-byte blocks
@Code080016AE:
pop   {r0}                ; 080016AE
bx    r0                  ; 080016B0
.pool                     ; 080016B2

Sub080016E8:
push  {r4,lr}             ; 080016E8
bl    Sub08000AB4         ; 080016EA
ldr   r1,=0x04000010      ; 080016EE
ldr   r4,=0x03002200      ; 080016F0
ldr   r2,=0x47E4          ; 080016F2
add   r0,r4,r2            ; 080016F4
ldrh  r3,[r0]             ; 080016F6
strh  r3,[r1]             ; 080016F8
add   r1,0x2              ; 080016FA
add   r2,0x8              ; 080016FC
add   r0,r4,r2            ; 080016FE
ldrh  r2,[r0]             ; 08001700
strh  r2,[r1]             ; 08001702
ldr   r0,=0x04000014      ; 08001704
strh  r3,[r0]             ; 08001706
add   r0,0x2              ; 08001708
strh  r2,[r0]             ; 0800170A
add   r1,0x6              ; 0800170C
ldr   r2,=0x47E6          ; 0800170E
add   r0,r4,r2            ; 08001710
ldrh  r3,[r0]             ; 08001712
strh  r3,[r1]             ; 08001714
add   r1,0x2              ; 08001716
add   r2,0x8              ; 08001718
add   r0,r4,r2            ; 0800171A
ldrh  r2,[r0]             ; 0800171C
strh  r2,[r1]             ; 0800171E
ldr   r0,=0x0400001C      ; 08001720
strh  r3,[r0]             ; 08001722
add   r0,0x2              ; 08001724
strh  r2,[r0]             ; 08001726
mov   r1,0x92             ; 08001728
lsl   r1,r1,0x7           ; 0800172A
add   r0,r4,r1            ; 0800172C
ldrb  r0,[r0]             ; 0800172E
cmp   r0,0x0              ; 08001730
bne   @Code08001758       ; 08001732
ldr   r2,=0x4901          ; 08001734
add   r1,r4,r2            ; 08001736
ldrb  r0,[r1]             ; 08001738
add   r0,0x1              ; 0800173A
strb  r0,[r1]             ; 0800173C
ldr   r1,=0x040000D4      ; 0800173E
mov   r2,0xE0             ; 08001740
lsl   r2,r2,0x6           ; 08001742
add   r0,r4,r2            ; 08001744
str   r0,[r1]             ; 08001746
mov   r0,0xE0             ; 08001748
lsl   r0,r0,0x13          ; 0800174A
str   r0,[r1,0x4]         ; 0800174C
ldr   r0,=0x84000100      ; 0800174E
str   r0,[r1,0x8]         ; 08001750
ldr   r0,[r1,0x8]         ; 08001752
bl    Sub0802EF48         ; 08001754
@Code08001758:
pop   {r4}                ; 08001758
pop   {r0}                ; 0800175A
bx    r0                  ; 0800175C
.pool                     ; 0800175E

Sub08001784:
push  {r4-r5,lr}          ; 08001784
bl    Sub08000AB4         ; 08001786
ldr   r1,=0x04000010      ; 0800178A
ldr   r5,=0x03002200      ; 0800178C
ldr   r2,=0x47E4          ; 0800178E
add   r0,r5,r2            ; 08001790
ldrh  r3,[r0]             ; 08001792
strh  r3,[r1]             ; 08001794
add   r1,0x2              ; 08001796
add   r2,0x8              ; 08001798
add   r0,r5,r2            ; 0800179A
ldrh  r2,[r0]             ; 0800179C
strh  r2,[r1]             ; 0800179E
ldr   r0,=0x04000014      ; 080017A0
strh  r3,[r0]             ; 080017A2
add   r0,0x2              ; 080017A4
strh  r2,[r0]             ; 080017A6
ldr   r4,=0x04000018      ; 080017A8
ldr   r1,=0x47E6          ; 080017AA
add   r0,r5,r1            ; 080017AC
ldrh  r2,[r0]             ; 080017AE
strh  r2,[r4]             ; 080017B0
ldr   r3,=0x0400001A      ; 080017B2
add   r1,0x8              ; 080017B4
add   r0,r5,r1            ; 080017B6
ldrh  r1,[r0]             ; 080017B8
strh  r1,[r3]             ; 080017BA
ldr   r0,=0x0400001C      ; 080017BC
strh  r2,[r0]             ; 080017BE
add   r0,0x2              ; 080017C0
strh  r1,[r0]             ; 080017C2
mov   r0,0x4              ; 080017C4
strh  r0,[r4]             ; 080017C6
sub   r1,0x4              ; 080017C8
strh  r1,[r3]             ; 080017CA
mov   r2,0x92             ; 080017CC
lsl   r2,r2,0x7           ; 080017CE
add   r0,r5,r2            ; 080017D0
ldrb  r0,[r0]             ; 080017D2
cmp   r0,0x0              ; 080017D4
bne   @Code080017FC       ; 080017D6
ldr   r0,=0x4901          ; 080017D8
add   r1,r5,r0            ; 080017DA
ldrb  r0,[r1]             ; 080017DC
add   r0,0x1              ; 080017DE
strb  r0,[r1]             ; 080017E0
ldr   r1,=0x040000D4      ; 080017E2
mov   r2,0xE0             ; 080017E4
lsl   r2,r2,0x6           ; 080017E6
add   r0,r5,r2            ; 080017E8
str   r0,[r1]             ; 080017EA
mov   r0,0xE0             ; 080017EC
lsl   r0,r0,0x13          ; 080017EE
str   r0,[r1,0x4]         ; 080017F0
ldr   r0,=0x84000100      ; 080017F2
str   r0,[r1,0x8]         ; 080017F4
ldr   r0,[r1,0x8]         ; 080017F6
bl    Sub0802EF48         ; 080017F8
@Code080017FC:
pop   {r4-r5}             ; 080017FC
pop   {r0}                ; 080017FE
bx    r0                  ; 08001800
.pool                     ; 08001802

Sub08001830:
push  {r4,lr}             ; 08001830
ldr   r3,=0x03002200      ; 08001832
mov   r1,0x92             ; 08001834
lsl   r1,r1,0x7           ; 08001836
add   r0,r3,r1            ; 08001838
ldrb  r0,[r0]             ; 0800183A
cmp   r0,0x0              ; 0800183C
beq   @Code08001842       ; 0800183E
b     @Code080019A4       ; 08001840
@Code08001842:
ldr   r2,=0x4901          ; 08001842
add   r0,r3,r2            ; 08001844
ldrb  r2,[r0]             ; 08001846
add   r2,0x1              ; 08001848
strb  r2,[r0]             ; 0800184A
ldr   r1,=0x04000200      ; 0800184C
ldr   r4,=0x47C2          ; 0800184E
add   r0,r3,r4            ; 08001850
ldrh  r0,[r0]             ; 08001852
strh  r0,[r1]             ; 08001854
ldr   r1,=0x04000004      ; 08001856
add   r4,0x2              ; 08001858
add   r0,r3,r4            ; 0800185A
ldrh  r0,[r0]             ; 0800185C
strh  r0,[r1]             ; 0800185E
sub   r1,0x4              ; 08001860
add   r4,0x2              ; 08001862
add   r0,r3,r4            ; 08001864
ldrh  r0,[r0]             ; 08001866
strh  r0,[r1]             ; 08001868
add   r1,0x8              ; 0800186A
add   r4,0x2              ; 0800186C
add   r0,r3,r4            ; 0800186E
ldrh  r0,[r0]             ; 08001870
strh  r0,[r1]             ; 08001872
add   r1,0x2              ; 08001874
add   r4,0x2              ; 08001876
add   r0,r3,r4            ; 08001878
ldrh  r0,[r0]             ; 0800187A
strh  r0,[r1]             ; 0800187C
add   r1,0x2              ; 0800187E
add   r4,0x2              ; 08001880
add   r0,r3,r4            ; 08001882
ldrh  r0,[r0]             ; 08001884
strh  r0,[r1]             ; 08001886
add   r1,0x2              ; 08001888
add   r4,0x2              ; 0800188A
add   r0,r3,r4            ; 0800188C
ldrh  r0,[r0]             ; 0800188E
strh  r0,[r1]             ; 08001890
add   r1,0xC              ; 08001892
add   r4,0x20             ; 08001894
add   r0,r3,r4            ; 08001896
ldrh  r0,[r0]             ; 08001898
strh  r0,[r1]             ; 0800189A
add   r1,0x2              ; 0800189C
sub   r4,0x6              ; 0800189E
add   r0,r3,r4            ; 080018A0
ldrh  r0,[r0]             ; 080018A2
strh  r0,[r1]             ; 080018A4
add   r1,0x2              ; 080018A6
add   r4,0x8              ; 080018A8
add   r0,r3,r4            ; 080018AA
ldrh  r0,[r0]             ; 080018AC
strh  r0,[r1]             ; 080018AE
add   r1,0x2E             ; 080018B0
add   r4,0xC8             ; 080018B2
add   r0,r3,r4            ; 080018B4
ldrh  r0,[r0]             ; 080018B6
strh  r0,[r1]             ; 080018B8
mov   r0,0x1              ; 080018BA
and   r2,r0               ; 080018BC
cmp   r2,0x0              ; 080018BE
beq   @Code080018F8       ; 080018C0
sub   r1,0x3C             ; 080018C2
ldr   r0,=0x02012000      ; 080018C4
ldrh  r0,[r0]             ; 080018C6
strh  r0,[r1]             ; 080018C8
add   r1,0x4              ; 080018CA
ldr   r0,=0x02012400      ; 080018CC
ldrh  r0,[r0]             ; 080018CE
strh  r0,[r1]             ; 080018D0
add   r1,0x4              ; 080018D2
ldr   r0,=0x02012800      ; 080018D4
b     @Code0800190C       ; 080018D6
.pool                     ; 080018D8

@Code080018F8:
ldr   r1,=0x04000010      ; 080018F8
ldr   r0,=0x02012200      ; 080018FA
ldrh  r0,[r0]             ; 080018FC
strh  r0,[r1]             ; 080018FE
add   r1,0x4              ; 08001900
ldr   r0,=0x02012600      ; 08001902
ldrh  r0,[r0]             ; 08001904
strh  r0,[r1]             ; 08001906
add   r1,0x4              ; 08001908
ldr   r0,=0x02012A00      ; 0800190A
@Code0800190C:
ldrh  r0,[r0]             ; 0800190C
strh  r0,[r1]             ; 0800190E
ldr   r0,=0x0201A800      ; 08001910
mov   r1,0xE0             ; 08001912
lsl   r1,r1,0x13          ; 08001914
mov   r2,0x80             ; 08001916
lsl   r2,r2,0x1           ; 08001918
bl    swi_MemoryCopy32    ; 0800191A  Memory copy/fill, 32-byte blocks
ldr   r2,=0x04000012      ; 0800191E
ldr   r4,=0x03002200      ; 08001920
ldr   r0,=0x47EC          ; 08001922
add   r1,r4,r0            ; 08001924
ldr   r0,=0x03006D80      ; 08001926
ldr   r3,=0x0256          ; 08001928
add   r0,r0,r3            ; 0800192A
ldrh  r0,[r0]             ; 0800192C
ldrh  r1,[r1]             ; 0800192E
add   r0,r0,r1            ; 08001930
strh  r0,[r2]             ; 08001932
ldr   r1,=0x04000016      ; 08001934
strh  r0,[r1]             ; 08001936
bl    Sub08014680         ; 08001938
bl    Sub0802EF48         ; 0800193C
ldr   r1,=0x04000050      ; 08001940
ldr   r2,=0x4888          ; 08001942
add   r0,r4,r2            ; 08001944
ldrh  r0,[r0]             ; 08001946
strh  r0,[r1]             ; 08001948
add   r1,0x2              ; 0800194A
ldr   r3,=0x488A          ; 0800194C
add   r0,r4,r3            ; 0800194E
ldrh  r0,[r0]             ; 08001950
strh  r0,[r1]             ; 08001952
add   r1,0x2              ; 08001954
add   r2,0x4              ; 08001956
add   r0,r4,r2            ; 08001958
ldrh  r0,[r0]             ; 0800195A
strh  r0,[r1]             ; 0800195C
sub   r1,0x14             ; 0800195E
add   r3,0x4              ; 08001960
add   r0,r4,r3            ; 08001962
ldrh  r0,[r0]             ; 08001964
strh  r0,[r1]             ; 08001966
add   r1,0x4              ; 08001968
add   r2,0x4              ; 0800196A
add   r0,r4,r2            ; 0800196C
ldrh  r0,[r0]             ; 0800196E
strh  r0,[r1]             ; 08001970
sub   r1,0x2              ; 08001972
add   r3,0x4              ; 08001974
add   r0,r4,r3            ; 08001976
ldrh  r0,[r0]             ; 08001978
strh  r0,[r1]             ; 0800197A
add   r1,0x4              ; 0800197C
add   r2,0x4              ; 0800197E
add   r0,r4,r2            ; 08001980
ldrh  r0,[r0]             ; 08001982
strh  r0,[r1]             ; 08001984
add   r1,0x2              ; 08001986
ldr   r3,=0x4A03          ; 08001988
add   r0,r4,r3            ; 0800198A
ldrb  r0,[r0]             ; 0800198C
strb  r0,[r1]             ; 0800198E
add   r1,0x1              ; 08001990
ldr   r2,=0x4A04          ; 08001992
add   r0,r4,r2            ; 08001994
ldrb  r0,[r0]             ; 08001996
strb  r0,[r1]             ; 08001998
add   r1,0x1              ; 0800199A
ldr   r3,=0x48CC          ; 0800199C
add   r4,r4,r3            ; 0800199E
ldrh  r0,[r4]             ; 080019A0
strh  r0,[r1]             ; 080019A2
@Code080019A4:
pop   {r4}                ; 080019A4
pop   {r0}                ; 080019A6
bx    r0                  ; 080019A8
.pool                     ; 080019AA

Sub080019F0:
push  {r4-r6,lr}          ; 080019F0
bl    Sub08000AB4         ; 080019F2
bl    Sub08000B7C         ; 080019F6
ldr   r5,=0x03002200      ; 080019FA
ldr   r0,=0x418C          ; 080019FC
add   r4,r5,r0            ; 080019FE
ldr   r0,[r4]             ; 08001A00
cmp   r0,0x0              ; 08001A02
beq   @Code08001A10       ; 08001A04
bl    Sub080352BC         ; 08001A06
ldr   r0,[r4]             ; 08001A0A
bl    Sub0803535C         ; 08001A0C
@Code08001A10:
mov   r1,0x92             ; 08001A10
lsl   r1,r1,0x7           ; 08001A12
add   r0,r5,r1            ; 08001A14
ldrb  r4,[r0]             ; 08001A16
cmp   r4,0x0              ; 08001A18
bne   @Code08001AF8       ; 08001A1A
ldr   r0,=0x4901          ; 08001A1C
add   r1,r5,r0            ; 08001A1E
ldrb  r0,[r1]             ; 08001A20
add   r0,0x1              ; 08001A22
strb  r0,[r1]             ; 08001A24
ldr   r2,=0x040000D4      ; 08001A26
mov   r1,0xE0             ; 08001A28
lsl   r1,r1,0x6           ; 08001A2A
add   r0,r5,r1            ; 08001A2C
str   r0,[r2]             ; 08001A2E
mov   r0,0xE0             ; 08001A30
lsl   r0,r0,0x13          ; 08001A32
str   r0,[r2,0x4]         ; 08001A34
ldr   r0,=0x84000100      ; 08001A36
str   r0,[r2,0x8]         ; 08001A38
ldr   r0,[r2,0x8]         ; 08001A3A
ldr   r0,=0x4967          ; 08001A3C
add   r3,r5,r0            ; 08001A3E
ldrb  r1,[r3]             ; 08001A40
cmp   r1,0x0              ; 08001A42
beq   @Code08001A78       ; 08001A44
mov   r0,0x1              ; 08001A46
and   r0,r1               ; 08001A48
cmp   r0,0x0              ; 08001A4A
beq   @Code08001A5E       ; 08001A4C
ldr   r0,=0x02010400      ; 08001A4E
str   r0,[r2]             ; 08001A50
mov   r0,0xA0             ; 08001A52
lsl   r0,r0,0x13          ; 08001A54
str   r0,[r2,0x4]         ; 08001A56
ldr   r0,=0x80000100      ; 08001A58
str   r0,[r2,0x8]         ; 08001A5A
ldr   r0,[r2,0x8]         ; 08001A5C
@Code08001A5E:
ldrb  r1,[r3]             ; 08001A5E
mov   r0,0x2              ; 08001A60
and   r0,r1               ; 08001A62
cmp   r0,0x0              ; 08001A64
beq   @Code08001A76       ; 08001A66
ldr   r0,=0x02010600      ; 08001A68
str   r0,[r2]             ; 08001A6A
ldr   r0,=0x05000200      ; 08001A6C
str   r0,[r2,0x4]         ; 08001A6E
ldr   r0,=0x80000100      ; 08001A70
str   r0,[r2,0x8]         ; 08001A72
ldr   r0,[r2,0x8]         ; 08001A74
@Code08001A76:
strb  r4,[r3]             ; 08001A76
@Code08001A78:
ldr   r0,=0x03002200      ; 08001A78
ldr   r1,=0x417C          ; 08001A7A
add   r5,r0,r1            ; 08001A7C
ldr   r1,[r5]             ; 08001A7E
mov   r6,r0               ; 08001A80
cmp   r1,0x0              ; 08001A82
beq   @Code08001ACE       ; 08001A84
ldr   r0,[r1,0x4]         ; 08001A86
cmp   r0,0x0              ; 08001A88
beq   @Code08001AAA       ; 08001A8A
ldr   r4,=0x0600E000      ; 08001A8C
ldr   r1,=0x0600D000      ; 08001A8E
mov   r2,0x80             ; 08001A90
lsl   r2,r2,0x3           ; 08001A92
mov   r0,r4               ; 08001A94
bl    swi_MemoryCopy32    ; 08001A96  Memory copy/fill, 32-byte blocks
ldr   r0,[r5]             ; 08001A9A
ldr   r0,[r0,0x4]         ; 08001A9C
mov   r1,r4               ; 08001A9E
bl    swi_LZ77_VRAM       ; 08001AA0  LZ77 decompress (VRAM)
ldr   r1,[r5]             ; 08001AA4
mov   r0,0x0              ; 08001AA6
str   r0,[r1,0x4]         ; 08001AA8
@Code08001AAA:
ldr   r2,[r5]             ; 08001AAA
ldr   r1,=0x1BE4          ; 08001AAC
add   r0,r2,r1            ; 08001AAE
ldrb  r0,[r0]             ; 08001AB0
cmp   r0,0x0              ; 08001AB2
beq   @Code08001ACE       ; 08001AB4
ldr   r1,=0x040000D4      ; 08001AB6
ldr   r0,=0x0201FC00      ; 08001AB8  decompressed graphics buffer
str   r0,[r1]             ; 08001ABA
ldr   r0,=0x06009000      ; 08001ABC
str   r0,[r1,0x4]         ; 08001ABE
ldr   r0,=0x84000800      ; 08001AC0
str   r0,[r1,0x8]         ; 08001AC2
ldr   r0,[r1,0x8]         ; 08001AC4
ldr   r0,=0x1BE4          ; 08001AC6
add   r1,r2,r0            ; 08001AC8
mov   r0,0x0              ; 08001ACA
strb  r0,[r1]             ; 08001ACC
@Code08001ACE:
ldr   r1,=0x418C          ; 08001ACE
add   r0,r6,r1            ; 08001AD0
ldr   r0,[r0]             ; 08001AD2
cmp   r0,0x0              ; 08001AD4
beq   @Code08001AF8       ; 08001AD6
ldr   r1,=0x093E          ; 08001AD8
add   r2,r0,r1            ; 08001ADA
ldrh  r0,[r2]             ; 08001ADC
cmp   r0,0x0              ; 08001ADE
beq   @Code08001AF8       ; 08001AE0
ldr   r1,=0x040000D4      ; 08001AE2
mov   r0,0x80             ; 08001AE4
lsl   r0,r0,0x12          ; 08001AE6
str   r0,[r1]             ; 08001AE8
ldr   r0,=0x06010000      ; 08001AEA
str   r0,[r1,0x4]         ; 08001AEC
ldr   r0,=0x84002000      ; 08001AEE
str   r0,[r1,0x8]         ; 08001AF0
ldr   r0,[r1,0x8]         ; 08001AF2
mov   r0,0x0              ; 08001AF4
strh  r0,[r2]             ; 08001AF6
@Code08001AF8:
pop   {r4-r6}             ; 08001AF8
pop   {r0}                ; 08001AFA
bx    r0                  ; 08001AFC
.pool                     ; 08001AFE

Sub08001B50:
push  {r4-r5,lr}          ; 08001B50
ldr   r3,=0x03002200      ; 08001B52
mov   r1,0x92             ; 08001B54
lsl   r1,r1,0x7           ; 08001B56
add   r0,r3,r1            ; 08001B58
ldrb  r5,[r0]             ; 08001B5A
cmp   r5,0x0              ; 08001B5C
bne   @Code08001C54       ; 08001B5E
ldr   r0,=0x4901          ; 08001B60
add   r1,r3,r0            ; 08001B62
ldrb  r0,[r1]             ; 08001B64
add   r0,0x1              ; 08001B66
strb  r0,[r1]             ; 08001B68
ldr   r2,=0x040000D4      ; 08001B6A
mov   r1,0xE0             ; 08001B6C
lsl   r1,r1,0x6           ; 08001B6E
add   r0,r3,r1            ; 08001B70
str   r0,[r2]             ; 08001B72
mov   r0,0xE0             ; 08001B74
lsl   r0,r0,0x13          ; 08001B76
str   r0,[r2,0x4]         ; 08001B78
ldr   r0,=0x84000100      ; 08001B7A
str   r0,[r2,0x8]         ; 08001B7C
ldr   r0,[r2,0x8]         ; 08001B7E
ldr   r0,=0x4967          ; 08001B80
add   r4,r3,r0            ; 08001B82
ldrb  r1,[r4]             ; 08001B84
cmp   r1,0x0              ; 08001B86
beq   @Code08001BCC       ; 08001B88
mov   r0,0x1              ; 08001B8A
and   r0,r1               ; 08001B8C
cmp   r0,0x0              ; 08001B8E
beq   @Code08001BA8       ; 08001B90
ldr   r1,=0x4A4C          ; 08001B92
add   r0,r3,r1            ; 08001B94
ldr   r0,[r0]             ; 08001B96
add   r0,0x24             ; 08001B98
str   r0,[r2]             ; 08001B9A
mov   r0,0xA0             ; 08001B9C
lsl   r0,r0,0x13          ; 08001B9E
str   r0,[r2,0x4]         ; 08001BA0
ldr   r0,=0x80000100      ; 08001BA2
str   r0,[r2,0x8]         ; 08001BA4
ldr   r0,[r2,0x8]         ; 08001BA6
@Code08001BA8:
ldrb  r1,[r4]             ; 08001BA8
mov   r0,0x2              ; 08001BAA
and   r0,r1               ; 08001BAC
cmp   r0,0x0              ; 08001BAE
beq   @Code08001BCA       ; 08001BB0
ldr   r1,=0x4A4C          ; 08001BB2
add   r0,r3,r1            ; 08001BB4
ldr   r0,[r0]             ; 08001BB6
mov   r3,0x89             ; 08001BB8
lsl   r3,r3,0x2           ; 08001BBA
add   r0,r0,r3            ; 08001BBC
str   r0,[r2]             ; 08001BBE
ldr   r0,=0x05000200      ; 08001BC0
str   r0,[r2,0x4]         ; 08001BC2
ldr   r0,=0x80000100      ; 08001BC4
str   r0,[r2,0x8]         ; 08001BC6
ldr   r0,[r2,0x8]         ; 08001BC8
@Code08001BCA:
strb  r5,[r4]             ; 08001BCA
@Code08001BCC:
bl    Sub08000B7C         ; 08001BCC
ldr   r2,=0x04000200      ; 08001BD0
ldr   r1,=0x03002200      ; 08001BD2
ldr   r3,=0x47C2          ; 08001BD4
add   r0,r1,r3            ; 08001BD6
ldrh  r0,[r0]             ; 08001BD8
strh  r0,[r2]             ; 08001BDA
ldr   r2,=0x04000004      ; 08001BDC
add   r3,0x2              ; 08001BDE
add   r0,r1,r3            ; 08001BE0
ldrh  r0,[r0]             ; 08001BE2
strh  r0,[r2]             ; 08001BE4
sub   r2,0x4              ; 08001BE6
add   r3,0x2              ; 08001BE8
add   r0,r1,r3            ; 08001BEA
ldrh  r0,[r0]             ; 08001BEC
strh  r0,[r2]             ; 08001BEE
add   r2,0x50             ; 08001BF0
add   r3,0xC2             ; 08001BF2
add   r0,r1,r3            ; 08001BF4
ldrh  r0,[r0]             ; 08001BF6
strh  r0,[r2]             ; 08001BF8
add   r2,0x2              ; 08001BFA
add   r3,0x2              ; 08001BFC
add   r0,r1,r3            ; 08001BFE
ldrh  r0,[r0]             ; 08001C00
strh  r0,[r2]             ; 08001C02
add   r2,0x2              ; 08001C04
add   r3,0x2              ; 08001C06
add   r0,r1,r3            ; 08001C08
ldrh  r0,[r0]             ; 08001C0A
strh  r0,[r2]             ; 08001C0C
sub   r2,0x14             ; 08001C0E
add   r3,0x2              ; 08001C10
add   r0,r1,r3            ; 08001C12
ldrh  r0,[r0]             ; 08001C14
strh  r0,[r2]             ; 08001C16
add   r2,0x4              ; 08001C18
add   r3,0x2              ; 08001C1A
add   r0,r1,r3            ; 08001C1C
ldrh  r0,[r0]             ; 08001C1E
strh  r0,[r2]             ; 08001C20
sub   r2,0x2              ; 08001C22
add   r3,0x2              ; 08001C24
add   r0,r1,r3            ; 08001C26
ldrh  r0,[r0]             ; 08001C28
strh  r0,[r2]             ; 08001C2A
add   r2,0x4              ; 08001C2C
add   r3,0x2              ; 08001C2E
add   r0,r1,r3            ; 08001C30
ldrh  r0,[r0]             ; 08001C32
strh  r0,[r2]             ; 08001C34
add   r2,0x2              ; 08001C36
ldr   r3,=0x4A03          ; 08001C38
add   r0,r1,r3            ; 08001C3A
ldrb  r0,[r0]             ; 08001C3C
strb  r0,[r2]             ; 08001C3E
add   r2,0x1              ; 08001C40
add   r3,0x1              ; 08001C42
add   r0,r1,r3            ; 08001C44
ldrb  r0,[r0]             ; 08001C46
strb  r0,[r2]             ; 08001C48
add   r2,0x1              ; 08001C4A
ldr   r0,=0x48CC          ; 08001C4C
add   r1,r1,r0            ; 08001C4E
ldrh  r0,[r1]             ; 08001C50
strb  r0,[r2]             ; 08001C52
@Code08001C54:
pop   {r4-r5}             ; 08001C54
pop   {r0}                ; 08001C56
bx    r0                  ; 08001C58
.pool                     ; 08001C5A

Sub08001C90:
push  {r4-r5,lr}          ; 08001C90
ldr   r4,=0x03002200      ; 08001C92
mov   r1,0x92             ; 08001C94
lsl   r1,r1,0x7           ; 08001C96
add   r0,r4,r1            ; 08001C98
ldrb  r5,[r0]             ; 08001C9A
cmp   r5,0x0              ; 08001C9C
beq   @Code08001CB4       ; 08001C9E
ldr   r2,=0x4010          ; 08001CA0
add   r0,r4,r2            ; 08001CA2
bl    Sub0810B310         ; 08001CA4
b     @Code08001D86       ; 08001CA8
.pool                     ; 08001CAA

@Code08001CB4:
ldr   r0,=0x4901          ; 08001CB4
add   r1,r4,r0            ; 08001CB6
ldrb  r0,[r1]             ; 08001CB8
add   r0,0x1              ; 08001CBA
strb  r0,[r1]             ; 08001CBC
ldr   r0,=0x0201A800      ; 08001CBE
mov   r1,0xE0             ; 08001CC0
lsl   r1,r1,0x13          ; 08001CC2
mov   r2,0x80             ; 08001CC4
lsl   r2,r2,0x1           ; 08001CC6
bl    swi_MemoryCopy32    ; 08001CC8  Memory copy/fill, 32-byte blocks
bl    Sub08014680         ; 08001CCC
bl    Sub08014860         ; 08001CD0
ldr   r1,=0x4967          ; 08001CD4
add   r2,r4,r1            ; 08001CD6
ldrb  r1,[r2]             ; 08001CD8
cmp   r1,0x0              ; 08001CDA
beq   @Code08001D14       ; 08001CDC
mov   r0,0x1              ; 08001CDE
and   r0,r1               ; 08001CE0
cmp   r0,0x0              ; 08001CE2
beq   @Code08001CF8       ; 08001CE4
ldr   r1,=0x040000D4      ; 08001CE6
ldr   r0,=0x02010400      ; 08001CE8
str   r0,[r1]             ; 08001CEA
mov   r0,0xA0             ; 08001CEC
lsl   r0,r0,0x13          ; 08001CEE
str   r0,[r1,0x4]         ; 08001CF0
ldr   r0,=0x80000100      ; 08001CF2
str   r0,[r1,0x8]         ; 08001CF4
ldr   r0,[r1,0x8]         ; 08001CF6
@Code08001CF8:
ldrb  r1,[r2]             ; 08001CF8
mov   r0,0x2              ; 08001CFA
and   r0,r1               ; 08001CFC
cmp   r0,0x0              ; 08001CFE
beq   @Code08001D12       ; 08001D00
ldr   r1,=0x040000D4      ; 08001D02
ldr   r0,=0x02010600      ; 08001D04
str   r0,[r1]             ; 08001D06
ldr   r0,=0x05000200      ; 08001D08
str   r0,[r1,0x4]         ; 08001D0A
ldr   r0,=0x80000100      ; 08001D0C
str   r0,[r1,0x8]         ; 08001D0E
ldr   r0,[r1,0x8]         ; 08001D10
@Code08001D12:
strb  r5,[r2]             ; 08001D12
@Code08001D14:
ldr   r0,=0x02011002      ; 08001D14
bl    Sub08002684         ; 08001D16
ldr   r1,=0x04000010      ; 08001D1A
ldr   r4,=0x03002200      ; 08001D1C
ldr   r2,=0x47E4          ; 08001D1E
add   r0,r4,r2            ; 08001D20
ldrh  r3,[r0]             ; 08001D22
strh  r3,[r1]             ; 08001D24
add   r1,0x2              ; 08001D26
add   r2,0x8              ; 08001D28
add   r0,r4,r2            ; 08001D2A
ldrh  r2,[r0]             ; 08001D2C
strh  r2,[r1]             ; 08001D2E
ldr   r0,=0x04000014      ; 08001D30
strh  r3,[r0]             ; 08001D32
add   r0,0x2              ; 08001D34
strh  r2,[r0]             ; 08001D36
add   r1,0x6              ; 08001D38
ldr   r2,=0x47E6          ; 08001D3A
add   r0,r4,r2            ; 08001D3C
ldrh  r0,[r0]             ; 08001D3E
strh  r0,[r1]             ; 08001D40
add   r1,0x2              ; 08001D42
add   r2,0x8              ; 08001D44
add   r0,r4,r2            ; 08001D46
ldrh  r0,[r0]             ; 08001D48
strh  r0,[r1]             ; 08001D4A
add   r1,0x2              ; 08001D4C
sub   r2,0x6              ; 08001D4E
add   r0,r4,r2            ; 08001D50
ldrh  r0,[r0]             ; 08001D52
strh  r0,[r1]             ; 08001D54
add   r1,0x2              ; 08001D56
add   r2,0x8              ; 08001D58
add   r0,r4,r2            ; 08001D5A
ldrh  r0,[r0]             ; 08001D5C
strh  r0,[r1]             ; 08001D5E
ldr   r0,=0x04000020      ; 08001D60
mov   r2,0x80             ; 08001D62
lsl   r2,r2,0x7           ; 08001D64
add   r1,r4,r2            ; 08001D66
mov   r2,0x10             ; 08001D68
bl    Sub0812FD60         ; 08001D6A
bl    Sub0802EF48         ; 08001D6E
bl    Sub08000AB4         ; 08001D72
ldr   r0,=0x4010          ; 08001D76
add   r4,r4,r0            ; 08001D78
mov   r0,r4               ; 08001D7A
bl    Sub0810B3C0         ; 08001D7C
mov   r0,r4               ; 08001D80
bl    Sub0810B310         ; 08001D82
@Code08001D86:
pop   {r4-r5}             ; 08001D86
pop   {r0}                ; 08001D88
bx    r0                  ; 08001D8A
.pool                     ; 08001D8C

Sub08001DCC:
push  {r4,lr}             ; 08001DCC
ldr   r4,=0x03002200      ; 08001DCE
mov   r1,0x92             ; 08001DD0
lsl   r1,r1,0x7           ; 08001DD2
add   r0,r4,r1            ; 08001DD4
ldrb  r0,[r0]             ; 08001DD6
cmp   r0,0x0              ; 08001DD8
bne   @Code08001E16       ; 08001DDA
ldr   r2,=0x4901          ; 08001DDC
add   r1,r4,r2            ; 08001DDE
ldrb  r0,[r1]             ; 08001DE0
add   r0,0x1              ; 08001DE2
strb  r0,[r1]             ; 08001DE4
bl    Sub08000AB4         ; 08001DE6
ldr   r1,=0x0400001C      ; 08001DEA
ldr   r2,=0x47E8          ; 08001DEC
add   r0,r4,r2            ; 08001DEE
ldrh  r0,[r0]             ; 08001DF0
strh  r0,[r1]             ; 08001DF2
add   r1,0x2              ; 08001DF4
add   r2,0x8              ; 08001DF6
add   r0,r4,r2            ; 08001DF8
ldrh  r0,[r0]             ; 08001DFA
strh  r0,[r1]             ; 08001DFC
mov   r1,0xE0             ; 08001DFE
lsl   r1,r1,0x6           ; 08001E00
add   r0,r4,r1            ; 08001E02
mov   r1,0xE0             ; 08001E04
lsl   r1,r1,0x13          ; 08001E06
mov   r2,0x80             ; 08001E08
lsl   r2,r2,0x1           ; 08001E0A
bl    swi_MemoryCopy32    ; 08001E0C  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02027C00      ; 08001E10
bl    Sub0810B6BC         ; 08001E12
@Code08001E16:
ldr   r1,=0x04000004      ; 08001E16
mov   r0,0x8              ; 08001E18
strh  r0,[r1]             ; 08001E1A
ldr   r2,=0x4A0B          ; 08001E1C
add   r1,r4,r2            ; 08001E1E
ldrb  r0,[r1]             ; 08001E20
add   r0,0x1              ; 08001E22
ldrb  r2,[r1]             ; 08001E24
strb  r0,[r1]             ; 08001E26
pop   {r4}                ; 08001E28
pop   {r0}                ; 08001E2A
bx    r0                  ; 08001E2C
.pool                     ; 08001E2E

Sub08001E4C:
push  {r4-r6,lr}          ; 08001E4C
ldr   r5,=0x03002200      ; 08001E4E
ldr   r0,=0x4A47          ; 08001E50
add   r6,r5,r0            ; 08001E52
ldrb  r0,[r6]             ; 08001E54
cmp   r0,0x0              ; 08001E56
bne   @Code08001E5E       ; 08001E58
bl    Sub0812CF50         ; 08001E5A
@Code08001E5E:
ldr   r1,=0x4902          ; 08001E5E
add   r4,r5,r1            ; 08001E60
ldrb  r0,[r4]             ; 08001E62
cmp   r0,0x0              ; 08001E64
beq   @Code08001E70       ; 08001E66
bl    Sub0812D0B4         ; 08001E68
mov   r0,0x0              ; 08001E6C
strb  r0,[r4]             ; 08001E6E
@Code08001E70:
ldr   r1,=0x040000B0      ; 08001E70
ldrh  r2,[r1,0xA]         ; 08001E72
ldr   r3,=0xC5FF          ; 08001E74
mov   r0,r3               ; 08001E76
and   r0,r2               ; 08001E78
strh  r0,[r1,0xA]         ; 08001E7A
ldrh  r4,[r1,0xA]         ; 08001E7C
ldr   r2,=0x7FFF          ; 08001E7E
mov   r0,r2               ; 08001E80
and   r0,r4               ; 08001E82
strh  r0,[r1,0xA]         ; 08001E84
ldrh  r0,[r1,0xA]         ; 08001E86
ldr   r0,=0x040000D4      ; 08001E88
ldrh  r1,[r0,0xA]         ; 08001E8A
and   r3,r1               ; 08001E8C
strh  r3,[r0,0xA]         ; 08001E8E
ldrh  r1,[r0,0xA]         ; 08001E90
and   r2,r1               ; 08001E92
strh  r2,[r0,0xA]         ; 08001E94
ldrh  r0,[r0,0xA]         ; 08001E96
ldr   r1,=CodePtrs08163FC8; 08001E98
ldr   r2,=0x48F6          ; 08001E9A
add   r0,r5,r2            ; 08001E9C
ldrb  r0,[r0]             ; 08001E9E
lsl   r0,r0,0x2           ; 08001EA0
add   r0,r0,r1            ; 08001EA2
ldr   r0,[r0]             ; 08001EA4
bl    Sub_bx_r0           ; 08001EA6  bx r0
mov   r1,0x92             ; 08001EAA
lsl   r1,r1,0x7           ; 08001EAC
add   r0,r5,r1            ; 08001EAE
mov   r1,0x1              ; 08001EB0
strb  r1,[r0]             ; 08001EB2
ldr   r0,=0x04000202      ; 08001EB4
strh  r1,[r0]             ; 08001EB6
ldr   r2,=0x47BC          ; 08001EB8
add   r0,r5,r2            ; 08001EBA
ldrh  r2,[r0]             ; 08001EBC
strh  r1,[r0]             ; 08001EBE
ldrb  r0,[r6]             ; 08001EC0
cmp   r0,0x0              ; 08001EC2
bne   @Code08001ECA       ; 08001EC4
bl    Sub0812CF5C         ; 08001EC6
@Code08001ECA:
pop   {r4-r6}             ; 08001ECA
pop   {r0}                ; 08001ECC
bx    r0                  ; 08001ECE
.pool                     ; 08001ED0

Sub08001EFC:
; subroutine: ?
; r0: code pointer offset +4?
push  {r4,lr}             ; 08001EFC
mov   r4,r0               ; 08001EFE
sub   r0,r4,0x4           ; 08001F00
cmp   r0,0x9              ; 08001F02
bls   @Code08001F08       ; 08001F04
b     @Code0800201C       ; 08001F06  code pointer for r0 > 9
@Code08001F08:
lsl   r0,r0,0x2           ; 08001F08
ldr   r1,=CodePtrs08001F18; 08001F0A
add   r0,r0,r1            ; 08001F0C
ldr   r0,[r0]             ; 08001F0E
mov   pc,r0               ; 08001F10
.pool                     ; 08001F12
CodePtrs08001F18:
; code pointers for r0: 0-9
.word @Code08001F40       ; 08001F18
.word @Code08001F58       ; 08001F1C
.word @Code08001F70       ; 08001F20
.word @Code08001F88       ; 08001F24
.word @Code08001FA0       ; 08001F28
.word @Code08001FB8       ; 08001F2C
.word @Code08001FD0       ; 08001F30
.word @Code08001FE8       ; 08001F34
.word @Code0800201C       ; 08001F38
.word @Code0800200C       ; 08001F3C

@Code08001F40:
ldr   r1,=0x030021C0      ; 08001F40
ldr   r0,=Sub0810C054+1   ; 08001F42
str   r0,[r1,0x10]        ; 08001F44
ldr   r0,=Sub0810C10C+1   ; 08001F46
b     @Code08001FF0       ; 08001F48
.pool                     ; 08001F4A

@Code08001F58:
ldr   r1,=0x030021C0      ; 08001F58
ldr   r0,=Sub0810C054+1   ; 08001F5A
str   r0,[r1,0x10]        ; 08001F5C
ldr   r0,=Sub0810C178+1   ; 08001F5E
b     @Code08001FF0       ; 08001F60
.pool                     ; 08001F62

@Code08001F70:
ldr   r1,=0x030021C0      ; 08001F70
ldr   r0,=Sub0810C054+1   ; 08001F72
str   r0,[r1,0x10]        ; 08001F74
ldr   r0,=Sub0810C264+1   ; 08001F76
b     @Code08001FF0       ; 08001F78
.pool                     ; 08001F7A

@Code08001F88:
ldr   r1,=0x030021C0      ; 08001F88
ldr   r0,=Sub0810C054+1   ; 08001F8A
str   r0,[r1,0x10]        ; 08001F8C
ldr   r0,=Sub0810C2F0+1   ; 08001F8E
b     @Code08001FF0       ; 08001F90
.pool                     ; 08001F92

@Code08001FA0:
ldr   r1,=0x030021C0      ; 08001FA0
ldr   r0,=Sub0810C054+1   ; 08001FA2
str   r0,[r1,0x10]        ; 08001FA4
ldr   r0,=Sub0810C37C+1   ; 08001FA6
b     @Code08001FF0       ; 08001FA8
.pool                     ; 08001FAA

@Code08001FB8:
ldr   r1,=0x030021C0      ; 08001FB8
ldr   r0,=Sub0810C054+1   ; 08001FBA
str   r0,[r1,0x10]        ; 08001FBC
ldr   r0,=Sub0810C408+1   ; 08001FBE
b     @Code08001FF0       ; 08001FC0
.pool                     ; 08001FC2

@Code08001FD0:
ldr   r1,=0x030021C0      ; 08001FD0
ldr   r0,=Sub0810C054+1   ; 08001FD2
str   r0,[r1,0x10]        ; 08001FD4
ldr   r0,=Sub0810C494+1   ; 08001FD6
b     @Code08001FF0       ; 08001FD8
.pool                     ; 08001FDA

@Code08001FE8:
ldr   r1,=0x030021C0      ; 08001FE8
ldr   r0,=Sub0810C054+1   ; 08001FEA
str   r0,[r1,0x10]        ; 08001FEC
ldr   r0,=Sub0810C520+1   ; 08001FEE
@Code08001FF0:
ldr   r1,=0x03007040      ; 08001FF0
mov   r2,0x80             ; 08001FF2
bl    swi_MemoryCopy32    ; 08001FF4  Memory copy/fill, 32-byte blocks
b     @Code0800201C       ; 08001FF8
.pool                     ; 08001FFA

@Code0800200C:
ldr   r1,=0x030021C0      ; 0800200C
ldr   r0,=Sub0810C054+1   ; 0800200E
str   r0,[r1,0x10]        ; 08002010
ldr   r0,=Sub0810D264+1   ; 08002012
ldr   r1,=0x03007040      ; 08002014
mov   r2,0x80             ; 08002016
bl    swi_MemoryCopy32    ; 08002018  Memory copy/fill, 32-byte blocks
@Code0800201C:
ldr   r0,=0x03002200      ; 0800201C
ldr   r1,=0x48F8          ; 0800201E
add   r0,r0,r1            ; 08002020  r0 = 03006AF8
strb  r4,[r0]             ; 08002022
ldr   r2,=0x030021C0      ; 08002024
ldr   r1,=CodePtrs08163FF8; 08002026  code pointer table
lsl   r0,r4,0x2           ; 08002028
add   r0,r0,r1            ; 0800202A  index with input r4
ldr   r0,[r0]             ; 0800202C
str   r0,[r2,0x10]        ; 0800202E
pop   {r4}                ; 08002030
pop   {r0}                ; 08002032
bx    r0                  ; 08002034
.pool                     ; 08002036

Sub08002054:
push  {r4-r5,lr}          ; 08002054
ldr   r1,=0x03002200      ; 08002056
ldr   r2,=0x48F9          ; 08002058
add   r0,r1,r2            ; 0800205A
ldrb  r0,[r0]             ; 0800205C
mov   r4,r1               ; 0800205E
cmp   r0,0x5              ; 08002060
bls   @Code08002066       ; 08002062
b     @Code080022DA       ; 08002064
@Code08002066:
lsl   r0,r0,0x2           ; 08002066
ldr   r1,=CodePtrs0800207C; 08002068
add   r0,r0,r1            ; 0800206A
ldr   r0,[r0]             ; 0800206C
mov   pc,r0               ; 0800206E
.pool                     ; 08002070
CodePtrs0800207C:
.word @Code080021A4       ; 0800207C
.word @Code08002094       ; 08002080
.word @Code080020E0       ; 08002084
.word @Code08002148       ; 08002088
.word @Code0800222C       ; 0800208C
.word @Code08002240       ; 08002090

@Code08002094:
ldr   r2,=0x040000B0      ; 08002094
ldr   r3,=0x4168          ; 08002096
add   r0,r4,r3            ; 08002098
ldr   r0,[r0]             ; 0800209A
str   r0,[r2]             ; 0800209C
ldr   r0,=0x04000020      ; 0800209E
str   r0,[r2,0x4]         ; 080020A0
ldr   r5,=0x4A11          ; 080020A2
add   r0,r4,r5            ; 080020A4
ldrb  r0,[r0]             ; 080020A6
lsr   r0,r0,0x2           ; 080020A8
ldr   r1,=0xA6600000      ; 080020AA
orr   r0,r1               ; 080020AC
str   r0,[r2,0x8]         ; 080020AE
ldr   r0,[r2,0x8]         ; 080020B0
mov   r0,0x1              ; 080020B2
bl    Sub08001EFC         ; 080020B4
ldr   r1,=0x04000004      ; 080020B8
mov   r0,0x18             ; 080020BA
strh  r0,[r1]             ; 080020BC
ldr   r1,=0x04000202      ; 080020BE
mov   r0,0x4              ; 080020C0
b     @Code080022D8       ; 080020C2
.pool                     ; 080020C4

@Code080020E0:
ldr   r1,=0x040000B0      ; 080020E0
ldr   r2,=0x48AC          ; 080020E2
add   r0,r4,r2            ; 080020E4
ldr   r0,[r0]             ; 080020E6
str   r0,[r1]             ; 080020E8
ldr   r0,=0x04000014      ; 080020EA
str   r0,[r1,0x4]         ; 080020EC
ldr   r0,=0xA2600002      ; 080020EE
str   r0,[r1,0x8]         ; 080020F0
ldr   r0,[r1,0x8]         ; 080020F2
ldr   r3,=0x4178          ; 080020F4
add   r1,r4,r3            ; 080020F6
ldr   r5,=0x4174          ; 080020F8
add   r0,r4,r5            ; 080020FA
ldr   r0,[r0]             ; 080020FC
asr   r0,r0,0x2           ; 080020FE
str   r0,[r1]             ; 08002100
mov   r0,0x2              ; 08002102
bl    Sub08001EFC         ; 08002104
ldr   r0,=0x48F9          ; 08002108
add   r1,r4,r0            ; 0800210A
mov   r0,0x3              ; 0800210C
strb  r0,[r1]             ; 0800210E
ldr   r1,=0x04000004      ; 08002110
ldr   r2,=0x4038          ; 08002112
mov   r0,r2               ; 08002114
strh  r0,[r1]             ; 08002116
ldr   r1,=0x04000202      ; 08002118
mov   r0,0x4              ; 0800211A
b     @Code080022D8       ; 0800211C
.pool                     ; 0800211E

@Code08002148:
ldr   r1,=0x040000B0      ; 08002148
ldrh  r2,[r1,0xA]         ; 0800214A
ldr   r0,=0xC5FF          ; 0800214C
and   r0,r2               ; 0800214E
strh  r0,[r1,0xA]         ; 08002150
ldrh  r2,[r1,0xA]         ; 08002152
ldr   r0,=0x7FFF          ; 08002154
and   r0,r2               ; 08002156
strh  r0,[r1,0xA]         ; 08002158
ldrh  r0,[r1,0xA]         ; 0800215A
mov   r0,0x3              ; 0800215C
bl    Sub08001EFC         ; 0800215E
ldr   r1,=0x03002200      ; 08002162
ldr   r3,=0x48F9          ; 08002164
add   r2,r1,r3            ; 08002166
mov   r0,0x1              ; 08002168
strb  r0,[r2]             ; 0800216A
ldr   r2,=0x04000004      ; 0800216C
ldr   r5,=0x4A10          ; 0800216E
add   r1,r1,r5            ; 08002170
ldrb  r0,[r1]             ; 08002172
lsl   r0,r0,0x8           ; 08002174
mov   r1,0x38             ; 08002176
orr   r0,r1               ; 08002178
strh  r0,[r2]             ; 0800217A
ldr   r1,=0x04000202      ; 0800217C
mov   r0,0x4              ; 0800217E
b     @Code080022D8       ; 08002180
.pool                     ; 08002182

@Code080021A4:
ldr   r2,=0x04000004      ; 080021A4
ldrh  r0,[r2]             ; 080021A6
mov   r1,0x8              ; 080021A8
orr   r0,r1               ; 080021AA
strh  r0,[r2]             ; 080021AC
ldr   r3,=0x04000014      ; 080021AE
ldr   r0,=0x03007018      ; 080021B0
ldr   r2,[r0]             ; 080021B2
mov   r0,0x82             ; 080021B4
lsl   r0,r0,0x5           ; 080021B6
add   r1,r2,r0            ; 080021B8
ldr   r5,=0x47E4          ; 080021BA
add   r0,r4,r5            ; 080021BC
ldrh  r0,[r0]             ; 080021BE
ldrh  r1,[r1]             ; 080021C0
add   r0,r0,r1            ; 080021C2
strh  r0,[r3]             ; 080021C4
add   r3,0x4              ; 080021C6
ldr   r0,=0x1044          ; 080021C8
add   r1,r2,r0            ; 080021CA
add   r5,0x2              ; 080021CC
add   r0,r4,r5            ; 080021CE
ldrh  r0,[r0]             ; 080021D0
ldrh  r1,[r1]             ; 080021D2
add   r0,r0,r1            ; 080021D4
strh  r0,[r3]             ; 080021D6
add   r3,0x2              ; 080021D8
ldr   r0,=0x1046          ; 080021DA
add   r1,r2,r0            ; 080021DC
add   r5,0x8              ; 080021DE
add   r0,r4,r5            ; 080021E0
ldrh  r0,[r0]             ; 080021E2
ldrh  r1,[r1]             ; 080021E4
add   r0,r0,r1            ; 080021E6
strh  r0,[r3]             ; 080021E8
ldr   r1,=0x0400001C      ; 080021EA
ldr   r0,=0x1048          ; 080021EC
add   r2,r2,r0            ; 080021EE
ldr   r3,=0x47E8          ; 080021F0
add   r0,r4,r3            ; 080021F2
ldrh  r0,[r0]             ; 080021F4
ldrh  r2,[r2]             ; 080021F6
add   r0,r0,r2            ; 080021F8
strh  r0,[r1]             ; 080021FA
ldr   r1,=0x04000202      ; 080021FC
mov   r0,0x4              ; 080021FE
b     @Code080022D8       ; 08002200
.pool                     ; 08002202

@Code0800222C:
ldr   r1,=0x04000004      ; 0800222C
mov   r0,0x18             ; 0800222E
strh  r0,[r1]             ; 08002230
ldr   r1,=0x04000202      ; 08002232
mov   r0,0x4              ; 08002234
b     @Code080022D8       ; 08002236
.pool                     ; 08002238

@Code08002240:
ldr   r5,=0x03007244      ; 08002240
ldr   r2,=0x04000004      ; 08002242
mov   r3,0x2              ; 08002244
@Code08002246:
ldrh  r1,[r2]             ; 08002246
mov   r0,r3               ; 08002248
and   r0,r1               ; 0800224A
cmp   r0,0x0              ; 0800224C
beq   @Code08002246       ; 0800224E
ldr   r1,=0x04000006      ; 08002250
ldrh  r0,[r1]             ; 08002252
cmp   r0,0xF              ; 08002254
bne   @Code08002280       ; 08002256
add   r1,0xE              ; 08002258
ldr   r0,[r5]             ; 0800225A
mov   r5,0x88             ; 0800225C
lsl   r5,r5,0x2           ; 0800225E
add   r0,r0,r5            ; 08002260
ldr   r0,[r0]             ; 08002262
asr   r0,r0,0x8           ; 08002264
strh  r0,[r1]             ; 08002266
sub   r1,0x10             ; 08002268
ldr   r2,=0x2F28          ; 0800226A
mov   r0,r2               ; 0800226C
b     @Code080022D8       ; 0800226E
.pool                     ; 08002270

@Code08002280:
ldrh  r0,[r1]             ; 08002280
cmp   r0,0x2F             ; 08002282
bne   @Code080022A8       ; 08002284
ldr   r1,=0x04000018      ; 08002286
ldr   r0,[r5]             ; 08002288
mov   r3,0x8A             ; 0800228A
lsl   r3,r3,0x2           ; 0800228C
add   r0,r0,r3            ; 0800228E
ldr   r0,[r0]             ; 08002290
asr   r0,r0,0x8           ; 08002292
strh  r0,[r1]             ; 08002294
sub   r1,0x14             ; 08002296
ldr   r5,=0x6F28          ; 08002298
mov   r0,r5               ; 0800229A
b     @Code080022D8       ; 0800229C
.pool                     ; 0800229E

@Code080022A8:
ldr   r1,=0x04000014      ; 080022A8
ldr   r0,[r5]             ; 080022AA
mov   r2,0x89             ; 080022AC
lsl   r2,r2,0x2           ; 080022AE
add   r0,r0,r2            ; 080022B0
ldr   r0,[r0]             ; 080022B2
asr   r0,r0,0x8           ; 080022B4
strh  r0,[r1]             ; 080022B6
ldr   r2,=0x0400000A      ; 080022B8
ldr   r3,=0x47CA          ; 080022BA
add   r0,r4,r3            ; 080022BC
ldrh  r1,[r0]             ; 080022BE
ldr   r0,=0xFFFC          ; 080022C0
and   r0,r1               ; 080022C2
mov   r1,0x1              ; 080022C4
orr   r0,r1               ; 080022C6
strh  r0,[r2]             ; 080022C8
ldr   r1,=0x04000202      ; 080022CA
mov   r0,0x4              ; 080022CC
strh  r0,[r1]             ; 080022CE
ldr   r1,=0x04000004      ; 080022D0
ldr   r5,=0x47C4          ; 080022D2
add   r0,r4,r5            ; 080022D4
ldrh  r0,[r0]             ; 080022D6
@Code080022D8:
strh  r0,[r1]             ; 080022D8
@Code080022DA:
pop   {r4-r5}             ; 080022DA
pop   {r0}                ; 080022DC
bx    r0                  ; 080022DE
.pool                     ; 080022E0

Sub080022FC:
bx    lr                  ; 080022FC
.pool                     ; 080022FE

Sub08002300:
; subroutine: Process buttons pressed
push  {r4,lr}             ; 08002300
ldr   r0,=0x04000130      ; 08002302  button flags (released)
ldrh  r1,[r0]             ; 08002304
mvn   r1,r1               ; 08002306  invert all flags, to become pressed flags
lsl   r1,r1,0x10          ; 08002308
lsr   r1,r1,0x10          ; 0800230A
ldr   r2,=0x03002200      ; 0800230C
ldr   r0,=0x47BE          ; 0800230E
add   r4,r2,r0            ; 08002310  r4 = 030069BE
ldrh  r3,[r4]             ; 08002312  previous frame's button flags
mov   r0,r1               ; 08002314
bic   r0,r3               ; 08002316  filter out previous frame's button flags, to retain newly pressed buttons
ldr   r3,=0x47C0          ; 08002318
add   r2,r2,r3            ; 0800231A  r0 = 030069C0
strh  r0,[r2]             ; 0800231C  store newly pressed buttons
strh  r1,[r4]             ; 0800231E  store all button flags
pop   {r4}                ; 08002320
pop   {r0}                ; 08002322
bx    r0                  ; 08002324
.pool                     ; 08002326

Sub08002338:
; subroutine: init OAM buffer at 03005A00-61FF to repeating [A0 00 00 00 00 00 00 00] (all 0 bits, except Y position A0 is below the screen)
push  {r4,lr}             ; 08002338
ldr   r4,=0x03005A00      ; 0800233A
ldr   r0,=Data08164034    ; 0800233C
ldr   r1,[r0,0x4]         ; 0800233E  00000000
ldr   r0,[r0]             ; 08002340  000000A0
mov   r3,r4               ; 08002342
stmia r3!,{r0-r1}         ; 08002344
ldr   r2,=0x04000006      ; 08002346
mov   r0,r4               ; 08002348
mov   r1,r3               ; 0800234A
bl    swi_MemoryCopy4or2  ; 0800234C  Memory copy/fill, 4- or 2-byte blocks
mov   r3,r4               ; 08002350
add   r3,0x20             ; 08002352
mov   r2,0xFC             ; 08002354
lsl   r2,r2,0x1           ; 08002356  r2 = 1F8
mov   r0,r4               ; 08002358
mov   r1,r3               ; 0800235A
bl    swi_MemoryCopy32    ; 0800235C  Memory copy/fill, 32-byte blocks
pop   {r4}                ; 08002360
pop   {r0}                ; 08002362
bx    r0                  ; 08002364
.pool                     ; 08002366

GameInit:
; - clear EWRAM and most of IWRAM (except stack)
; - copy the interrupt handler into IWRAM (copy 400 bytes from 080000FC to 030065AC)
; - initialize dynamic RAM regions
push  {r4-r6,lr}          ; 08002374
add   sp,-0x4             ; 08002376
mov   r6,0x0              ; 08002378
str   r6,[sp]             ; 0800237A
ldr   r0,=0x040000D4      ; 0800237C
mov   r1,sp               ; 0800237E
str   r1,[r0]             ; 08002380  copy a zero word
mov   r5,0x80             ; 08002382
lsl   r5,r5,0x12          ; 08002384  r5 = 02000000
str   r5,[r0,0x4]         ; 08002386
ldr   r1,=0x85010000      ; 08002388  copy 32-bit word, 10000 times
str   r1,[r0,0x8]         ; 0800238A  DMA: clear entire EWRAM
ldr   r1,[r0,0x8]         ; 0800238C  waste cycles for DMA
str   r6,[sp]             ; 0800238E
mov   r2,sp               ; 08002390
str   r2,[r0]             ; 08002392  copy the same zero word
mov   r1,0xC0             ; 08002394
lsl   r1,r1,0x12          ; 08002396  r1 = 03000000
str   r1,[r0,0x4]         ; 08002398
ldr   r1,=0x85001F00      ; 0800239A  copy 32-bit word, 1F00 times
str   r1,[r0,0x8]         ; 0800239C  clear first 7C00 of IWRAM (leaving stacks untouched)
ldr   r1,[r0,0x8]         ; 0800239E  waste cycles for DMA
ldr   r2,=0x04000204      ; 080023A0
ldr   r3,=0x4014          ; 080023A2
mov   r1,r3               ; 080023A4
strh  r1,[r2]             ; 080023A6
ldr   r1,=InterruptHandler; 080023A8  Interrupt handler, ROM
str   r1,[r0]             ; 080023AA
ldr   r4,=0x030065AC      ; 080023AC  Interrupt handler, RAM
str   r4,[r0,0x4]         ; 080023AE
ldr   r1,=0x80000200      ; 080023B0  copy 200 halfwords (400 bytes)
str   r1,[r0,0x8]         ; 080023B2
ldr   r1,[r0,0x8]         ; 080023B4  waste cycles for DMA
ldr   r1,=CodePtrs08163F90; 080023B6  Initial interrupt pointers?
str   r1,[r0]             ; 080023B8
ldr   r1,=0x030021C0      ; 080023BA
str   r1,[r0,0x4]         ; 080023BC
ldr   r1,=0x8000001C      ; 080023BE  copy 1C halfwords (38 bytes)
str   r1,[r0,0x8]         ; 080023C0
ldr   r0,[r0,0x8]         ; 080023C2  waste cycles for DMA
ldr   r0,=0x03007FFC      ; 080023C4
str   r4,[r0]             ; 080023C6  update interrupt handler address
ldr   r1,=0xFFFFBC54      ; 080023C8
add   r0,r4,r1            ; 080023CA  r0 = 03002200
mov   r1,0xE0             ; 080023CC
lsl   r1,r1,0x6           ; 080023CE  r1 = 3800
bl    DynamicRAMInit      ; 080023D0
mov   r1,0x80             ; 080023D4
lsl   r1,r1,0x9           ; 080023D6  r1 = 10000
mov   r0,r5               ; 080023D8  r0 = 02000000
bl    DynamicRAMInit      ; 080023DA
ldr   r2,=0x054A          ; 080023DE
add   r1,r4,r2            ; 080023E0  r1 = 03006AF6
mov   r0,0x9              ; 080023E2
strb  r0,[r1]             ; 080023E4  set 03006AF6 to 9
ldr   r3,=0x0554          ; 080023E6
add   r0,r4,r3            ; 080023E8  r0 = 03006B00
strb  r6,[r0]             ; 080023EA  clear 03006B00
ldr   r0,=0xFFFFFC64      ; 080023EC
add   r5,r4,r0            ; 080023EE  r5 = 03006210
mov   r0,r5               ; 080023F0
bl    Sub0810B2B0         ; 080023F2
ldr   r1,=0x02027D10      ; 080023F6
ldr   r2,=0x02027F94      ; 080023F8
mov   r0,r5               ; 080023FA
mov   r3,0x2              ; 080023FC
bl    Sub0810B2C0         ; 080023FE
ldr   r1,=0xFFFFFC88      ; 08002402
add   r5,r4,r1            ; 08002404  r5 = 03006234
mov   r0,r5               ; 08002406
bl    Sub0810B3E4         ; 08002408
ldr   r1,=0x02028218      ; 0800240C
ldr   r2,=0x0202849C      ; 0800240E
mov   r0,r5               ; 08002410
mov   r3,0x2              ; 08002412
bl    Sub0810B3F4         ; 08002414
ldr   r0,=0x02027C00      ; 08002418
bl    Sub0810B698         ; 0800241A
mov   r2,0xF7             ; 0800241E
lsl   r2,r2,0x3           ; 08002420  r2 = 7B8
add   r1,r4,r2            ; 08002422  03006D64
mov   r0,0x3              ; 08002424
strb  r0,[r1]             ; 08002426  set game mode to 3 (game init/soft reset)
ldr   r0,=0x02011000      ; 08002428
mov   r5,0x0              ; 0800242A
strh  r6,[r0]             ; 0800242C
ldr   r1,=0x02011002      ; 0800242E
ldr   r3,=0xFFFF          ; 08002430
mov   r0,r3               ; 08002432
strh  r0,[r1]             ; 08002434
ldr   r0,=Sub08043298+1   ; 08002436
ldr   r2,=0xFFFFFDF0      ; 08002438
add   r1,r4,r2            ; 0800243A  r1 = 0300639C
ldr   r2,=0x04000084      ; 0800243C  84 words (210 bytes)
bl    swi_MemoryCopy4or2  ; 0800243E  Memory copy/fill, 4- or 2-byte blocks
ldr   r3,=0xFFFFFDEC      ; 08002442
add   r1,r4,r3            ; 08002444  r1 = 03006398
ldr   r2,=0xFFFFFDF1      ; 08002446
add   r0,r4,r2            ; 08002448  r1 = 0300639D
str   r0,[r1]             ; 0800244A  set 03006398 to code pointer
bl    Sub080FA1F0         ; 0800244C
bl    Sub0810A4AC         ; 08002450
ldr   r3,=0x0661          ; 08002454
add   r0,r4,r3            ; 08002456
strb  r5,[r0]             ; 08002458
mov   r1,0x94             ; 0800245A
lsl   r1,r1,0x3           ; 0800245C
add   r0,r4,r1            ; 0800245E
strh  r6,[r0]             ; 08002460
ldr   r0,=0x03007024      ; 08002462
str   r6,[r0]             ; 08002464
ldr   r0,=0x03007020      ; 08002466
str   r6,[r0]             ; 08002468
bl    Sub080FCBB0         ; 0800246A
ldr   r2,=0x0534          ; 0800246E
add   r0,r4,r2            ; 08002470
strh  r6,[r0]             ; 08002472
ldr   r3,=0x069B          ; 08002474
add   r4,r4,r3            ; 08002476
mov   r2,0x1              ; 08002478
strb  r2,[r4]             ; 0800247A
ldr   r1,=0x04000200      ; 0800247C
ldr   r3,=0x2001          ; 0800247E
mov   r0,r3               ; 08002480
strh  r0,[r1]             ; 08002482
ldr   r1,=0x04000004      ; 08002484
mov   r0,0x8              ; 08002486
strh  r0,[r1]             ; 08002488
ldr   r0,=0x04000208      ; 0800248A
strh  r2,[r0]             ; 0800248C
add   sp,0x4              ; 0800248E
pop   {r4-r6}             ; 08002490
pop   {r0}                ; 08002492
bx    r0                  ; 08002494
.pool                     ; 08002496

Sub08002534:
ldr   r1,=0x04000050      ; 08002534
mov   r0,0xFF             ; 08002536
strh  r0,[r1]             ; 08002538
add   r1,0x4              ; 0800253A
mov   r0,0xF              ; 0800253C
strh  r0,[r1]             ; 0800253E
bx    lr                  ; 08002540
.pool                     ; 08002542

ldr   r1,=0x04000050      ; 08002548
mov   r0,0xFF             ; 0800254A
strh  r0,[r1]             ; 0800254C
add   r1,0x4              ; 0800254E
mov   r0,0x4              ; 08002550
strh  r0,[r1]             ; 08002552
bx    lr                  ; 08002554
.pool                     ; 08002556

ldr   r1,=0x04000050      ; 0800255C
mov   r0,0x3F             ; 0800255E
strh  r0,[r1]             ; 08002560
add   r1,0x4              ; 08002562
mov   r0,0x1F             ; 08002564
strh  r0,[r1]             ; 08002566
bx    lr                  ; 08002568
.pool                     ; 0800256A

ldr   r2,=0x03007028      ; 08002570
ldr   r0,=0x04000006      ; 08002572
ldrh  r1,[r0]             ; 08002574
mov   r0,0xFF             ; 08002576
and   r0,r1               ; 08002578
strh  r0,[r2]             ; 0800257A
bx    lr                  ; 0800257C
.pool                     ; 0800257E

push  {r4-r7,lr}          ; 08002588
mov   r7,r8               ; 0800258A
push  {r7}                ; 0800258C
ldr   r0,=0x04000006      ; 0800258E
ldrh  r0,[r0]             ; 08002590
mov   r1,0xFF             ; 08002592
and   r1,r0               ; 08002594
ldr   r0,=0x03007028      ; 08002596
ldrh  r2,[r0]             ; 08002598
cmp   r1,r2               ; 0800259A
bhs   @Code080025A0       ; 0800259C
add   r1,0xE4             ; 0800259E
@Code080025A0:
ldr   r0,=0x030021B8      ; 080025A0
sub   r1,r1,r2            ; 080025A2
strh  r1,[r0]             ; 080025A4
ldr   r0,=0x030021A4      ; 080025A6
mov   r8,r0               ; 080025A8
ldr   r2,=0x030061E0      ; 080025AA
mov   r4,0x90             ; 080025AC
strh  r4,[r2]             ; 080025AE
mov   r0,0x20             ; 080025B0
strh  r0,[r2,0x2]         ; 080025B2
mov   r6,0xF              ; 080025B4
mov   r0,0xF              ; 080025B6
and   r0,r1               ; 080025B8
mov   r3,0xE0             ; 080025BA
lsl   r3,r3,0x2           ; 080025BC
mov   r5,r3               ; 080025BE
add   r0,r0,r5            ; 080025C0
mov   r7,0xE0             ; 080025C2
lsl   r7,r7,0x7           ; 080025C4
mov   r3,r7               ; 080025C6
orr   r0,r3               ; 080025C8
strh  r0,[r2,0x4]         ; 080025CA
strh  r4,[r2,0x8]         ; 080025CC
mov   r0,0x18             ; 080025CE
strh  r0,[r2,0xA]         ; 080025D0
lsl   r1,r1,0x10          ; 080025D2
lsr   r0,r1,0x14          ; 080025D4
and   r0,r6               ; 080025D6
add   r0,r0,r5            ; 080025D8
orr   r0,r3               ; 080025DA
strh  r0,[r2,0xC]         ; 080025DC
strh  r4,[r2,0x10]        ; 080025DE
mov   r0,0x10             ; 080025E0
strh  r0,[r2,0x12]        ; 080025E2
lsr   r0,r1,0x18          ; 080025E4
and   r0,r6               ; 080025E6
add   r0,r0,r5            ; 080025E8
orr   r0,r3               ; 080025EA
strh  r0,[r2,0x14]        ; 080025EC
strh  r4,[r2,0x18]        ; 080025EE
mov   r0,0x8              ; 080025F0
strh  r0,[r2,0x1A]        ; 080025F2
mov   r0,r2               ; 080025F4
add   r0,0x1C             ; 080025F6
mov   r4,r8               ; 080025F8
str   r0,[r4]             ; 080025FA
lsr   r1,r1,0x1C          ; 080025FC
and   r1,r6               ; 080025FE
add   r1,r1,r5            ; 08002600
orr   r1,r3               ; 08002602
strh  r1,[r2,0x1C]        ; 08002604
pop   {r3}                ; 08002606
mov   r8,r3               ; 08002608
pop   {r4-r7}             ; 0800260A
pop   {r0}                ; 0800260C
bx    r0                  ; 0800260E
.pool                     ; 08002610

Sub08002624:
push  {r4,lr}             ; 08002624
ldr   r4,=0x0201A800      ; 08002626
ldr   r0,=Data0816403C    ; 08002628
ldr   r1,[r0,0x4]         ; 0800262A
ldr   r0,[r0]             ; 0800262C
mov   r3,r4               ; 0800262E
stmia r3!,{r0-r1}         ; 08002630
ldr   r2,=0x04000006      ; 08002632
mov   r0,r4               ; 08002634
mov   r1,r3               ; 08002636
bl    swi_MemoryCopy4or2  ; 08002638  Memory copy/fill, 4- or 2-byte blocks
mov   r3,r4               ; 0800263C
add   r3,0x20             ; 0800263E
mov   r0,r4               ; 08002640
mov   r1,r3               ; 08002642
mov   r2,0xF8             ; 08002644
bl    swi_MemoryCopy32    ; 08002646  Memory copy/fill, 32-byte blocks
pop   {r4}                ; 0800264A
pop   {r0}                ; 0800264C
bx    r0                  ; 0800264E
.pool                     ; 08002650

Sub0800265C:
push  {r4,lr}             ; 0800265C
bl    Sub08002624         ; 0800265E
ldr   r4,=0x03005A00      ; 08002662
ldr   r1,=0x0201A800      ; 08002664
mov   r0,r4               ; 08002666
bl    Sub080004A0         ; 08002668
ldr   r1,=0x10E8          ; 0800266C
add   r4,r4,r1            ; 0800266E
strh  r0,[r4]             ; 08002670
pop   {r4}                ; 08002672
pop   {r0}                ; 08002674
bx    r0                  ; 08002676
.pool                     ; 08002678

Sub08002684:
push  {r4-r7,lr}          ; 08002684
mov   r4,r0               ; 08002686
ldrh  r0,[r4]             ; 08002688
ldr   r1,=0xFFFF          ; 0800268A
cmp   r0,r1               ; 0800268C
beq   @Code08002732       ; 0800268E
ldr   r0,=0x3FFF          ; 08002690
mov   r12,r0              ; 08002692
mov   r6,r1               ; 08002694
mov   r7,0xC0             ; 08002696
lsl   r7,r7,0x8           ; 08002698
@Code0800269A:
ldrh  r3,[r4]             ; 0800269A
mov   r0,0xC0             ; 0800269C
lsl   r0,r0,0x13          ; 0800269E
add   r2,r3,r0            ; 080026A0
add   r4,0x2              ; 080026A2
ldrh  r0,[r4]             ; 080026A4
mov   r3,r12              ; 080026A6
and   r3,r0               ; 080026A8
mov   r1,r7               ; 080026AA
and   r1,r0               ; 080026AC
add   r4,0x2              ; 080026AE
mov   r0,0x80             ; 080026B0
lsl   r0,r0,0x8           ; 080026B2
and   r0,r1               ; 080026B4
add   r5,r4,0x2           ; 080026B6
cmp   r0,0x0              ; 080026B8
bne   @Code080026F8       ; 080026BA
mov   r0,0x80             ; 080026BC
lsl   r0,r0,0x7           ; 080026BE
and   r1,r0               ; 080026C0
cmp   r1,0x0              ; 080026C2
bne   @Code080026E4       ; 080026C4
cmp   r3,0x0              ; 080026C6
beq   @Code0800272C       ; 080026C8
mov   r1,r3               ; 080026CA
@Code080026CC:
ldrh  r0,[r4]             ; 080026CC
strh  r0,[r2]             ; 080026CE
add   r4,0x2              ; 080026D0
add   r2,0x2              ; 080026D2
sub   r1,0x1              ; 080026D4
cmp   r1,0x0              ; 080026D6
bne   @Code080026CC       ; 080026D8
b     @Code0800272C       ; 080026DA
.pool                     ; 080026DC

@Code080026E4:
cmp   r3,0x0              ; 080026E4
beq   @Code0800272A       ; 080026E6
mov   r1,r3               ; 080026E8
@Code080026EA:
ldrh  r0,[r4]             ; 080026EA
strh  r0,[r2]             ; 080026EC
add   r2,0x2              ; 080026EE
sub   r1,0x1              ; 080026F0
cmp   r1,0x0              ; 080026F2
bne   @Code080026EA       ; 080026F4
b     @Code0800272A       ; 080026F6
@Code080026F8:
mov   r0,0x80             ; 080026F8
lsl   r0,r0,0x7           ; 080026FA
and   r1,r0               ; 080026FC
cmp   r1,0x0              ; 080026FE
bne   @Code08002718       ; 08002700
cmp   r3,0x0              ; 08002702
beq   @Code0800272C       ; 08002704
mov   r1,r3               ; 08002706
@Code08002708:
ldrh  r0,[r4]             ; 08002708
strh  r0,[r2]             ; 0800270A
add   r4,0x2              ; 0800270C
add   r2,0x40             ; 0800270E
sub   r1,0x1              ; 08002710
cmp   r1,0x0              ; 08002712
bne   @Code08002708       ; 08002714
b     @Code0800272C       ; 08002716
@Code08002718:
cmp   r3,0x0              ; 08002718
beq   @Code0800272A       ; 0800271A
mov   r1,r3               ; 0800271C
@Code0800271E:
ldrh  r0,[r4]             ; 0800271E
strh  r0,[r2]             ; 08002720
add   r2,0x40             ; 08002722
sub   r1,0x1              ; 08002724
cmp   r1,0x0              ; 08002726
bne   @Code0800271E       ; 08002728
@Code0800272A:
mov   r4,r5               ; 0800272A
@Code0800272C:
ldrh  r0,[r4]             ; 0800272C
cmp   r0,r6               ; 0800272E
bne   @Code0800269A       ; 08002730
@Code08002732:
ldr   r1,=0x02011000      ; 08002732
mov   r0,0x0              ; 08002734
strh  r0,[r1]             ; 08002736
add   r1,0x2              ; 08002738
ldr   r2,=0xFFFF          ; 0800273A
mov   r0,r2               ; 0800273C
strh  r0,[r1]             ; 0800273E
pop   {r4-r7}             ; 08002740
pop   {r0}                ; 08002742
bx    r0                  ; 08002744
.pool                     ; 08002746

Sub08002750:
push  {r4-r7,lr}          ; 08002750
ldr   r6,=0x03002200      ; 08002752
ldr   r1,=0x47C0          ; 08002754
add   r0,r6,r1            ; 08002756
ldrh  r4,[r0]             ; 08002758
mov   r5,r4               ; 0800275A
bl    Sub08002338         ; 0800275C
ldr   r0,=0x47D0          ; 08002760
add   r1,r6,r0            ; 08002762
mov   r0,0x0              ; 08002764
strh  r0,[r1]             ; 08002766
ldr   r0,=0x4B61          ; 08002768
add   r1,r6,r0            ; 0800276A
mov   r0,0x6F             ; 0800276C
strb  r0,[r1]             ; 0800276E
ldr   r1,=0x496C          ; 08002770
add   r7,r6,r1            ; 08002772
ldrb  r0,[r7]             ; 08002774
cmp   r0,0x0              ; 08002776
beq   @Code08002840       ; 08002778
mov   r0,r4               ; 0800277A
bl    Sub081140F8         ; 0800277C
cmp   r4,0x1              ; 08002780
beq   @Code0800278A       ; 08002782
cmp   r4,0x8              ; 08002784
beq   @Code0800278A       ; 08002786
b     @Code080028BA       ; 08002788
@Code0800278A:
ldrb  r0,[r7]             ; 0800278A
cmp   r0,0x2              ; 0800278C
bne   @Code080027F0       ; 0800278E
bl    Sub08128E90         ; 08002790
ldr   r1,=0x4A4C          ; 08002794
add   r0,r6,r1            ; 08002796
ldr   r2,[r0]             ; 08002798
ldr   r1,=0x043F          ; 0800279A
add   r0,r2,r1            ; 0800279C
ldrb  r1,[r0]             ; 0800279E
mov   r0,0x3              ; 080027A0
and   r0,r1               ; 080027A2
cmp   r0,0x0              ; 080027A4
beq   @Code080027D8       ; 080027A6
ldr   r0,=0x0443          ; 080027A8
add   r2,r2,r0            ; 080027AA
ldrb  r1,[r2]             ; 080027AC
mov   r0,0x10             ; 080027AE
neg   r0,r0               ; 080027B0
and   r0,r1               ; 080027B2
strb  r0,[r2]             ; 080027B4
b     @Code080027F0       ; 080027B6
.pool                     ; 080027B8

@Code080027D8:
ldr   r1,=0x406C          ; 080027D8
add   r0,r6,r1            ; 080027DA
ldr   r1,[r0]             ; 080027DC
ldr   r0,[r2,0x20]        ; 080027DE
cmp   r1,r0               ; 080027E0
beq   @Code080027F0       ; 080027E2
ldr   r3,[r2]             ; 080027E4
cmp   r0,r3               ; 080027E6
beq   @Code080027F0       ; 080027E8
cmp   r1,r3               ; 080027EA
bhs   @Code080027F0       ; 080027EC
str   r3,[r2,0x20]        ; 080027EE
@Code080027F0:
ldr   r2,=0x03002200      ; 080027F0
ldr   r0,=0x496C          ; 080027F2
add   r1,r2,r0            ; 080027F4
mov   r0,0x0              ; 080027F6
strb  r0,[r1]             ; 080027F8
ldr   r1,=0x4A4C          ; 080027FA
add   r2,r2,r1            ; 080027FC
ldr   r1,[r2]             ; 080027FE
ldr   r4,=0x042E          ; 08002800
add   r1,r1,r4            ; 08002802
ldrb  r3,[r1]             ; 08002804
sub   r0,0x11             ; 08002806
and   r0,r3               ; 08002808
strb  r0,[r1]             ; 0800280A
ldr   r1,[r2]             ; 0800280C
add   r1,r1,r4            ; 0800280E
ldrb  r0,[r1]             ; 08002810
mov   r2,0x20             ; 08002812
orr   r0,r2               ; 08002814
strb  r0,[r1]             ; 08002816
bl    Sub081103B4         ; 08002818
mov   r0,0x14             ; 0800281C
bl    PlayMBMusicOrSound  ; 0800281E
mov   r0,0x80             ; 08002822
bl    Sub0812CE70         ; 08002824
b     @Code080028BA       ; 08002828
.pool                     ; 0800282A

@Code08002840:
ldr   r1,=0x4904          ; 08002840
add   r0,r6,r1            ; 08002842
ldr   r0,[r0]             ; 08002844
ldr   r1,=0x00FFFF00      ; 08002846
and   r0,r1               ; 08002848
ldr   r1,=0x00020100      ; 0800284A
cmp   r0,r1               ; 0800284C
bne   @Code0800288A       ; 0800284E
mov   r0,0x8              ; 08002850
and   r5,r0               ; 08002852
cmp   r5,0x0              ; 08002854
beq   @Code0800288A       ; 08002856
mov   r0,0x1              ; 08002858
strb  r0,[r7]             ; 0800285A
ldr   r0,=0x4A4C          ; 0800285C
add   r4,r6,r0            ; 0800285E
ldr   r2,[r4]             ; 08002860
ldr   r3,=0x042E          ; 08002862
add   r2,r2,r3            ; 08002864
ldrb  r0,[r2]             ; 08002866
mov   r1,0x10             ; 08002868
orr   r0,r1               ; 0800286A
strb  r0,[r2]             ; 0800286C
ldr   r1,[r4]             ; 0800286E
add   r1,r1,r3            ; 08002870
ldrb  r0,[r1]             ; 08002872
mov   r2,0x20             ; 08002874
orr   r0,r2               ; 08002876
strb  r0,[r1]             ; 08002878
bl    Sub081103B4         ; 0800287A
mov   r0,0x14             ; 0800287E
bl    PlayMBMusicOrSound  ; 08002880
mov   r0,0x32             ; 08002884
bl    Sub0812CE70         ; 08002886
@Code0800288A:
ldr   r1,=MBGameStatePtrs ; 0800288A
ldr   r5,=0x03002200      ; 0800288C
ldr   r0,=0x4905          ; 0800288E
add   r4,r5,r0            ; 08002890  r4 = 03006B05
ldrb  r0,[r4]             ; 08002892  r0 = game state
lsl   r0,r0,0x2           ; 08002894
add   r0,r0,r1            ; 08002896
ldr   r0,[r0]             ; 08002898
bl    Sub_bx_r0           ; 0800289A  bx r0
ldrb  r0,[r4]             ; 0800289E
cmp   r0,0x1              ; 080028A0
bne   @Code080028BA       ; 080028A2
ldr   r1,=0x4B64          ; 080028A4
add   r0,r5,r1            ; 080028A6
ldrb  r0,[r0]             ; 080028A8
cmp   r0,0x1              ; 080028AA
bne   @Code080028BA       ; 080028AC
bl    Sub081173AC         ; 080028AE
bl    Sub08113448         ; 080028B2
bl    Sub08117434         ; 080028B6
@Code080028BA:
pop   {r4-r7}             ; 080028BA
pop   {r0}                ; 080028BC
bx    r0                  ; 080028BE
.pool                     ; 080028C0

Sub080028E4:
push  {r4-r7,lr}          ; 080028E4
mov   r7,r9               ; 080028E6
mov   r6,r8               ; 080028E8
push  {r6-r7}             ; 080028EA
add   sp,-0x4             ; 080028EC
ldr   r0,=0x03002200      ; 080028EE
mov   r8,r0               ; 080028F0
ldr   r0,=0x4904          ; 080028F2
add   r0,r8               ; 080028F4
ldrb  r7,[r0]             ; 080028F6
cmp   r7,0x0              ; 080028F8
beq   @Code08002910       ; 080028FA
ldr   r1,=0x48C8          ; 080028FC
add   r1,r8               ; 080028FE
b     @Code08002A50       ; 08002900
.pool                     ; 08002902

@Code08002910:
ldr   r1,=0x48C8          ; 08002910
add   r1,r8               ; 08002912
mov   r9,r1               ; 08002914
ldrh  r0,[r1]             ; 08002916
mov   r2,0x0              ; 08002918
ldsh  r1,[r1,r2]          ; 0800291A
cmp   r1,0x0              ; 0800291C
bge   @Code0800292C       ; 0800291E
add   r0,0x1              ; 08002920
mov   r3,r9               ; 08002922
strh  r0,[r3]             ; 08002924
b     @Code08002A84       ; 08002926
.pool                     ; 08002928

@Code0800292C:
cmp   r1,0x3              ; 0800292C
bne   @Code08002956       ; 0800292E
ldr   r5,=0x47BE          ; 08002930
add   r5,r8               ; 08002932
ldrh  r4,[r5]             ; 08002934
ldr   r0,=0x03FF          ; 08002936
and   r0,r4               ; 08002938
cmp   r0,0x0              ; 0800293A
beq   @Code08002940       ; 0800293C
b     @Code08002A84       ; 0800293E
@Code08002940:
ldr   r3,=0x47C0          ; 08002940
add   r3,r8               ; 08002942
ldrh  r2,[r3]             ; 08002944
ldr   r1,=0xFFF3          ; 08002946
mov   r0,r1               ; 08002948
and   r0,r2               ; 0800294A
strh  r0,[r3]             ; 0800294C
and   r1,r4               ; 0800294E
strh  r1,[r5]             ; 08002950
mov   r0,r9               ; 08002952
strh  r7,[r0]             ; 08002954
@Code08002956:
mov   r1,r9               ; 08002956
mov   r2,0x0              ; 08002958
ldsh  r0,[r1,r2]          ; 0800295A
cmp   r0,0x2              ; 0800295C
bne   @Code080029B2       ; 0800295E
mov   r1,sp               ; 08002960
ldr   r4,=0x04000200      ; 08002962
ldrh  r0,[r4]             ; 08002964
strh  r0,[r1]             ; 08002966
mov   r6,0x80             ; 08002968
lsl   r6,r6,0x13          ; 0800296A
mov   r0,0x80             ; 0800296C
strh  r0,[r6]             ; 0800296E
ldr   r5,=0x04000132      ; 08002970
ldr   r3,=0x8304          ; 08002972
mov   r0,r3               ; 08002974
strh  r0,[r5]             ; 08002976
mov   r1,0xC0             ; 08002978
lsl   r1,r1,0x6           ; 0800297A
mov   r0,r1               ; 0800297C
strh  r0,[r4]             ; 0800297E
bl    swi_SoundBias_0     ; 08002980
swi   0x3                 ; 08002984 Stop/Sleep
bl    swi_SoundBias_1     ; 08002986
ldr   r0,=0x47BE          ; 0800298A
add   r0,r8               ; 0800298C
strh  r7,[r0]             ; 0800298E
ldr   r0,=0x47C0          ; 08002990
add   r0,r8               ; 08002992
strh  r7,[r0]             ; 08002994
mov   r0,sp               ; 08002996
ldrh  r0,[r0]             ; 08002998
strh  r0,[r4]             ; 0800299A
strh  r7,[r5]             ; 0800299C
ldr   r0,=0x47C6          ; 0800299E
add   r0,r8               ; 080029A0
ldrh  r0,[r0]             ; 080029A2
strh  r0,[r6]             ; 080029A4
mov   r0,0x3              ; 080029A6
mov   r2,r9               ; 080029A8
strh  r0,[r2]             ; 080029AA
ldr   r0,=0x48CA          ; 080029AC
add   r0,r8               ; 080029AE
strh  r7,[r0]             ; 080029B0
@Code080029B2:
mov   r3,r9               ; 080029B2
mov   r1,0x0              ; 080029B4
ldsh  r0,[r3,r1]          ; 080029B6
cmp   r0,0x1              ; 080029B8
bne   @Code080029CE       ; 080029BA
ldr   r0,=0x47BE          ; 080029BC
add   r0,r8               ; 080029BE
ldrh  r1,[r0]             ; 080029C0
ldr   r0,=0x03FF          ; 080029C2
and   r0,r1               ; 080029C4
cmp   r0,0x0              ; 080029C6
bne   @Code08002A84       ; 080029C8
mov   r0,0x2              ; 080029CA
strh  r0,[r3]             ; 080029CC
@Code080029CE:
ldr   r0,=0x4071          ; 080029CE
add   r0,r8               ; 080029D0
ldrb  r1,[r0]             ; 080029D2
mov   r3,0x1              ; 080029D4
mov   r0,r3               ; 080029D6
and   r0,r1               ; 080029D8
cmp   r0,0x0              ; 080029DA
beq   @Code08002A2C       ; 080029DC
mov   r0,r9               ; 080029DE
mov   r1,0x0              ; 080029E0
ldsh  r2,[r0,r1]          ; 080029E2
cmp   r2,0x0              ; 080029E4
bne   @Code08002A2C       ; 080029E6
ldr   r0,=0x47BE          ; 080029E8
add   r0,r8               ; 080029EA
ldrh  r1,[r0]             ; 080029EC
ldr   r0,=0x03FF          ; 080029EE
and   r0,r1               ; 080029F0
mov   r1,0xC1             ; 080029F2
lsl   r1,r1,0x2           ; 080029F4
cmp   r0,r1               ; 080029F6
bne   @Code08002A28       ; 080029F8
mov   r2,r9               ; 080029FA
strh  r3,[r2]             ; 080029FC
b     @Code08002A84       ; 080029FE
.pool                     ; 08002A00

@Code08002A28:
mov   r3,r9               ; 08002A28
strh  r2,[r3]             ; 08002A2A
@Code08002A2C:
ldr   r2,=0x03002200      ; 08002A2C
ldr   r1,=0x4071          ; 08002A2E
add   r0,r2,r1            ; 08002A30
ldrb  r1,[r0]             ; 08002A32
mov   r3,0x2              ; 08002A34
mov   r0,r3               ; 08002A36
and   r0,r1               ; 08002A38
cmp   r0,0x0              ; 08002A3A
beq   @Code08002A84       ; 08002A3C
ldr   r1,=0x47BE          ; 08002A3E
add   r0,r2,r1            ; 08002A40
ldrh  r1,[r0]             ; 08002A42
ldr   r0,=0x03FF          ; 08002A44
and   r0,r1               ; 08002A46
cmp   r0,0x0              ; 08002A48
beq   @Code08002A6C       ; 08002A4A
ldr   r3,=0x48CA          ; 08002A4C
add   r1,r2,r3            ; 08002A4E
@Code08002A50:
mov   r0,0x0              ; 08002A50
strh  r0,[r1]             ; 08002A52
b     @Code08002A84       ; 08002A54
.pool                     ; 08002A56

@Code08002A6C:
ldr   r1,=0x48CA          ; 08002A6C
add   r0,r2,r1            ; 08002A6E
ldrh  r1,[r0]             ; 08002A70
add   r1,0x1              ; 08002A72
strh  r1,[r0]             ; 08002A74
lsl   r1,r1,0x10          ; 08002A76
ldr   r0,=0x0E0F0000      ; 08002A78
cmp   r1,r0               ; 08002A7A
bls   @Code08002A84       ; 08002A7C
ldr   r1,=0x48C8          ; 08002A7E
add   r0,r2,r1            ; 08002A80
strh  r3,[r0]             ; 08002A82
@Code08002A84:
add   sp,0x4              ; 08002A84
pop   {r3-r4}             ; 08002A86
mov   r8,r3               ; 08002A88
mov   r9,r4               ; 08002A8A
pop   {r4-r7}             ; 08002A8C
pop   {r0}                ; 08002A8E
bx    r0                  ; 08002A90
.pool                     ; 08002A92

MainLoopStart:
; "subroutine": Called to start main loop
push  {r4-r7,lr}          ; 08002AA0
mov   r7,r9               ; 08002AA2
mov   r6,r8               ; 08002AA4
push  {r6-r7}             ; 08002AA6
ldr   r6,=0x03002200      ; 08002AA8
ldr   r0,=0x47BE          ; 08002AAA
add   r0,r0,r6            ; 08002AAC
mov   r9,r0               ; 08002AAE  r9 = 030069BE
ldr   r1,=0x47BC          ; 08002AB0
add   r5,r6,r1            ; 08002AB2  r5 = 030069BC
ldr   r2,=0x4A47          ; 08002AB4
add   r2,r2,r6            ; 08002AB6
mov   r8,r2               ; 08002AB8  r8 = 03006C47
ldr   r0,=0xFFFE          ; 08002ABA
mov   r7,r0               ; 08002ABC
@MainLoop:
bl    Sub08002300         ; 08002ABE  process buttons pressed
ldr   r1,=0x4903          ; 08002AC2
add   r0,r6,r1            ; 08002AC4  r0 = 03006B03
ldrb  r0,[r0]             ; 08002AC6
cmp   r0,0x0              ; 08002AC8
bne   @Code08002ADA       ; 08002ACA
mov   r2,r9               ; 08002ACC
ldrh  r1,[r2]             ; 08002ACE  button flags, currently pressed
ldr   r2,=0x03FF          ; 08002AD0
mov   r0,r2               ; 08002AD2
and   r0,r1               ; 08002AD4
cmp   r0,0xF              ; 08002AD6  000F: A+B+Start+Select
beq   @Code08002BCC       ; 08002AD8  soft reset
@Code08002ADA:
mov   r4,r6               ; 08002ADA  r4 = 03002200
ldr   r1,=0x4B64          ; 08002ADC
add   r0,r4,r1            ; 08002ADE  r0 = 03006D64
ldrb  r0,[r0]             ; 08002AE0  game mode: YI/Mario Bros./GBA link/game init
cmp   r0,0x3              ; 08002AE2
bne   @Code08002B0C       ; 08002AE4
                          ;           runs if game mode 03: game init
bl    Sub080FA9D8         ; 08002AE6
b     @Code08002B74       ; 08002AEA
.pool                     ; 08002AEC

@Code08002B0C:
cmp   r0,0x0              ; 08002B0C
bne   @Code08002B4C       ; 08002B0E
                          ;          \ runs if game mode 00: Yoshi's Island or main menu
bl    Sub080028E4         ; 08002B10
ldr   r2,=0x48C8          ; 08002B14
add   r0,r4,r2            ; 08002B16  r0 = 03006AC8
mov   r1,0x0              ; 08002B18
ldsh  r0,[r0,r1]          ; 08002B1A
cmp   r0,0x0              ; 08002B1C
bne   @Code08002B32       ; 08002B1E
ldr   r1,=YIGameStatePtrs ; 08002B20
add   r2,0x3D             ; 08002B22
add   r0,r4,r2            ; 08002B24  r0 = 03006B05 (game state)
ldrb  r0,[r0]             ; 08002B26
lsl   r0,r0,0x2           ; 08002B28
add   r0,r0,r1            ; 08002B2A
ldr   r0,[r0]             ; 08002B2C  load game state code pointer from table at 08164044
bl    Sub_bx_r0           ; 08002B2E  bx r0
@Code08002B32:
ldr   r0,=0x03007270      ; 08002B32
ldr   r0,[r0,0x24]        ; 08002B34
cmp   r0,0x0              ; 08002B36
beq   @Code08002B74       ; 08002B38
bl    Sub0810A528         ; 08002B3A
b     @Code08002B74       ; 08002B3E /
.pool                     ; 08002B40

@Code08002B4C:
cmp   r0,0x1              ; 08002B4C
bne   @Code08002B6C       ; 08002B4E
                          ;          \ runs if game mode 01: Mario Bros.
bl    Sub080028E4         ; 08002B50
ldr   r1,=0x48C8          ; 08002B54
add   r0,r6,r1            ; 08002B56  r0 = 03006AC8
mov   r2,0x0              ; 08002B58
ldsh  r0,[r0,r2]          ; 08002B5A
cmp   r0,0x0              ; 08002B5C
bne   @Code08002B74       ; 08002B5E
bl    Sub08002750         ; 08002B60
b     @Code08002B74       ; 08002B64 /
.pool                     ; 08002B66

@Code08002B6C:
cmp   r0,0x2              ; 08002B6C
bne   @Code08002B74       ; 08002B6E
                          ;           runs if game mode 02: GBA link
bl    Sub08119F94         ; 08002B70
@Code08002B74:
ldr   r4,=0x03002200      ; 08002B74
ldr   r1,=0x48F6          ; 08002B76
add   r0,r4,r1            ; 08002B78  r0 = 03006AF6
ldrb  r0,[r0]             ; 08002B7A
cmp   r0,0x2              ; 08002B7C
bhi   @Code08002B84       ; 08002B7E
bl    Sub0800265C         ; 08002B80
@Code08002B84:
mov   r2,0x92             ; 08002B84
lsl   r2,r2,0x7           ; 08002B86
add   r1,r4,r2            ; 08002B88
mov   r0,0x0              ; 08002B8A
strb  r0,[r1]             ; 08002B8C
ldrh  r0,[r5]             ; 08002B8E
and   r0,r7               ; 08002B90
ldrh  r1,[r5]             ; 08002B92
strh  r0,[r5]             ; 08002B94
ldr   r0,=0x47BC          ; 08002B96
add   r2,r4,r0            ; 08002B98
mov   r3,0x1              ; 08002B9A
@Code08002B9C:
ldrh  r1,[r2]             ; 08002B9C
mov   r0,r3               ; 08002B9E
and   r0,r1               ; 08002BA0
cmp   r0,0x0              ; 08002BA2
beq   @Code08002B9C       ; 08002BA4
ldrh  r0,[r5]             ; 08002BA6
and   r0,r7               ; 08002BA8
ldrh  r1,[r5]             ; 08002BAA
strh  r0,[r5]             ; 08002BAC
mov   r1,r8               ; 08002BAE
ldrb  r0,[r1]             ; 08002BB0
cmp   r0,0x0              ; 08002BB2
beq   @Code08002BB8       ; 08002BB4
b     @MainLoop           ; 08002BB6  loop, don't return
@Code08002BB8:
bl    Sub0812C230         ; 08002BB8
b     @MainLoop           ; 08002BBC  loop, don't return
.pool                     ; 08002BBE

@Code08002BCC:
mov   r0,0xFF             ; 08002BCC
bl    SoftReset1Player    ; 08002BCE  soft reset

; unused return code, never executed
pop   {r3-r4}             ; 08002BD2
mov   r8,r3               ; 08002BD4
mov   r9,r4               ; 08002BD6
pop   {r4-r7}             ; 08002BD8
pop   {r0}                ; 08002BDA
bx    r0                  ; 08002BDC
.pool                     ; 08002BDE

Sub08002BE0:
; subroutine: Shared code between game states 24/28 (death-restart menu inits)
push  {r4-r7,lr}          ; 08002BE0
mov   r7,r9               ; 08002BE2
mov   r6,r8               ; 08002BE4
push  {r6-r7}             ; 08002BE6
add   sp,-0x10            ; 08002BE8
ldr   r7,=0x03007240      ; 08002BEA  Normal gameplay IWRAM (0300220C)
ldr   r4,=0x03002200      ; 08002BEC
ldr   r0,=0x48F6          ; 08002BEE
add   r1,r4,r0            ; 08002BF0
mov   r5,0x0              ; 08002BF2
mov   r0,0x5              ; 08002BF4
strb  r0,[r1]             ; 08002BF6
ldr   r1,=0x04000004      ; 08002BF8
ldr   r2,=0x47C4          ; 08002BFA
add   r0,r4,r2            ; 08002BFC
mov   r6,0x8              ; 08002BFE
strh  r6,[r0]             ; 08002C00
strh  r6,[r1]             ; 08002C02
ldr   r2,=0x04000200      ; 08002C04
ldr   r3,=0x47C2          ; 08002C06
add   r1,r4,r3            ; 08002C08
ldr   r0,=0x2001          ; 08002C0A
strh  r0,[r1]             ; 08002C0C
strh  r0,[r2]             ; 08002C0E
ldr   r0,=0x48FB          ; 08002C10
add   r1,r4,r0            ; 08002C12
mov   r0,0x1              ; 08002C14
strb  r0,[r1]             ; 08002C16
ldr   r2,=0x04000054      ; 08002C18
ldr   r3,=0x48FA          ; 08002C1A
add   r1,r4,r3            ; 08002C1C
mov   r0,0xF              ; 08002C1E
strb  r0,[r1]             ; 08002C20
sub   r3,0x6E             ; 08002C22
add   r1,r4,r3            ; 08002C24
strh  r0,[r1]             ; 08002C26
strh  r0,[r2]             ; 08002C28
sub   r2,0x4              ; 08002C2A
ldr   r0,=0x4888          ; 08002C2C
add   r1,r4,r0            ; 08002C2E
mov   r0,0xFF             ; 08002C30
strh  r0,[r1]             ; 08002C32
strh  r0,[r2]             ; 08002C34
ldr   r0,[r7]             ; 08002C36
cmp   r0,0x0              ; 08002C38
bne   @Code08002C58       ; 08002C3A
mov   r1,0xAD             ; 08002C3C
lsl   r1,r1,0x6           ; 08002C3E
mov   r0,r4               ; 08002C40
bl    DynamicAllocate     ; 08002C42
mov   r1,r0               ; 08002C46
str   r1,[r7]             ; 08002C48
str   r5,[sp]             ; 08002C4A
ldr   r2,=0x05000AD0      ; 08002C4C
mov   r0,sp               ; 08002C4E
bl    swi_MemoryCopy4or2  ; 08002C50  Memory copy/fill, 4- or 2-byte blocks
bl    Sub080FCBC4         ; 08002C54 for text
@Code08002C58:
bl    Sub08002338         ; 08002C58
ldr   r2,=0x47C6          ; 08002C5C
add   r1,r4,r2            ; 08002C5E
mov   r0,0x80             ; 08002C60
lsl   r0,r0,0x1           ; 08002C62
strh  r0,[r1]             ; 08002C64
ldr   r3,=0x47C8          ; 08002C66
add   r0,r4,r3            ; 08002C68
strh  r6,[r0]             ; 08002C6A
ldr   r1,=0x47D4          ; 08002C6C
add   r0,r4,r1            ; 08002C6E
strh  r5,[r0]             ; 08002C70
add   r2,0x1E             ; 08002C72
add   r0,r4,r2            ; 08002C74
strh  r5,[r0]             ; 08002C76
add   r3,0x14             ; 08002C78
add   r0,r4,r3            ; 08002C7A
strh  r5,[r0]             ; 08002C7C
add   r1,0x18             ; 08002C7E
add   r0,r4,r1            ; 08002C80
strh  r5,[r0]             ; 08002C82
str   r5,[sp,0x4]         ; 08002C84
add   r0,sp,0x4           ; 08002C86
ldr   r1,=0x06008000      ; 08002C88
ldr   r2,=0x05000800      ; 08002C8A
bl    swi_MemoryCopy4or2  ; 08002C8C  Memory copy/fill, 4- or 2-byte blocks
add   r0,sp,0x8           ; 08002C90
strh  r5,[r0]             ; 08002C92
mov   r4,0xC0             ; 08002C94
lsl   r4,r4,0x13          ; 08002C96
ldr   r2,=0x01000400      ; 08002C98
mov   r1,r4               ; 08002C9A
bl    swi_MemoryCopy4or2  ; 08002C9C  Memory copy/fill, 4- or 2-byte blocks
mov   r3,0x0              ; 08002CA0
mov   r7,sp               ; 08002CA2
add   r7,0xA              ; 08002CA4
add   r2,sp,0xC           ; 08002CA6
mov   r8,r2               ; 08002CA8
mov   r0,0xE              ; 08002CAA
add   r0,sp               ; 08002CAC
mov   r9,r0               ; 08002CAE
@Code08002CB0:
lsl   r1,r3,0x1           ; 08002CB0
add   r1,r1,r4            ; 08002CB2
mov   r0,0xC9             ; 08002CB4
lsl   r0,r0,0x1           ; 08002CB6
add   r2,r1,r0            ; 08002CB8
mov   r0,r3               ; 08002CBA
add   r0,0x80             ; 08002CBC
strh  r0,[r2]             ; 08002CBE
mov   r0,0xE9             ; 08002CC0
lsl   r0,r0,0x1           ; 08002CC2
add   r2,r1,r0            ; 08002CC4
mov   r0,r3               ; 08002CC6
add   r0,0x90             ; 08002CC8
strh  r0,[r2]             ; 08002CCA
ldr   r0,=0x0212          ; 08002CCC
add   r2,r1,r0            ; 08002CCE
mov   r0,r3               ; 08002CD0
add   r0,0xA0             ; 08002CD2
strh  r0,[r2]             ; 08002CD4
ldr   r0,=0x0252          ; 08002CD6
add   r2,r1,r0            ; 08002CD8
mov   r0,r3               ; 08002CDA
add   r0,0xB0             ; 08002CDC
strh  r0,[r2]             ; 08002CDE
ldr   r0,=0x0292          ; 08002CE0
add   r2,r1,r0            ; 08002CE2
mov   r0,r3               ; 08002CE4
add   r0,0xC0             ; 08002CE6
strh  r0,[r2]             ; 08002CE8
ldr   r0,=0x02D2          ; 08002CEA
add   r2,r1,r0            ; 08002CEC
mov   r0,r3               ; 08002CEE
add   r0,0xD0             ; 08002CF0
strh  r0,[r2]             ; 08002CF2
ldr   r0,=0x0312          ; 08002CF4
add   r2,r1,r0            ; 08002CF6
mov   r0,r3               ; 08002CF8
add   r0,0xE0             ; 08002CFA
strh  r0,[r2]             ; 08002CFC
ldr   r2,=0x0352          ; 08002CFE
add   r1,r1,r2            ; 08002D00
add   r0,0x10             ; 08002D02
strh  r0,[r1]             ; 08002D04
add   r0,r3,0x1           ; 08002D06
lsl   r0,r0,0x10          ; 08002D08
lsr   r3,r0,0x10          ; 08002D0A
cmp   r3,0xF              ; 08002D0C
bls   @Code08002CB0       ; 08002D0E
mov   r4,0x0              ; 08002D10
strh  r4,[r7]             ; 08002D12
ldr   r6,=0x02010400      ; 08002D14
ldr   r5,=0x01000100      ; 08002D16
mov   r0,r7               ; 08002D18
mov   r1,r6               ; 08002D1A
mov   r2,r5               ; 08002D1C
bl    swi_MemoryCopy4or2  ; 08002D1E  Memory copy/fill, 4- or 2-byte blocks
mov   r3,r8               ; 08002D22
strh  r4,[r3]             ; 08002D24
ldr   r1,=0x02010800      ; 08002D26
mov   r0,r8               ; 08002D28
mov   r2,r5               ; 08002D2A
bl    swi_MemoryCopy4or2  ; 08002D2C  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r9               ; 08002D30
strh  r4,[r0]             ; 08002D32
ldr   r1,=0x02010C00      ; 08002D34
mov   r2,r5               ; 08002D36
bl    swi_MemoryCopy4or2  ; 08002D38  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010416      ; 08002D3C
ldr   r2,=0x7FFF          ; 08002D3E
mov   r0,r2               ; 08002D40
strh  r0,[r1]             ; 08002D42
mov   r1,0xA0             ; 08002D44
lsl   r1,r1,0x13          ; 08002D46
mov   r2,0x80             ; 08002D48
lsl   r2,r2,0x2           ; 08002D4A
mov   r0,r6               ; 08002D4C
bl    swi_MemoryCopy4or2  ; 08002D4E  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x03002200      ; 08002D52
ldr   r3,=0x4967          ; 08002D54
add   r0,r0,r3            ; 08002D56
mov   r1,0x3              ; 08002D58
strb  r1,[r0]             ; 08002D5A
mov   r0,0x0              ; 08002D5C
bl    Sub0812C248         ; 08002D5E
add   sp,0x10             ; 08002D62
pop   {r3-r4}             ; 08002D64
mov   r8,r3               ; 08002D66
mov   r9,r4               ; 08002D68
pop   {r4-r7}             ; 08002D6A
pop   {r0}                ; 08002D6C
bx    r0                  ; 08002D6E
.pool                     ; 08002D70

MidwayRestartInit:
; Game state 24: "Restart from the Middle Ring?" init
push  {r4-r6,lr}          ; 08002DF0
mov   r6,r9               ; 08002DF2
mov   r5,r8               ; 08002DF4
push  {r5-r6}             ; 08002DF6
ldr   r4,=0x03002200      ; 08002DF8
ldr   r0,=0x47BE          ; 08002DFA
add   r6,r4,r0            ; 08002DFC
ldrh  r1,[r6]             ; 08002DFE
mov   r9,r1               ; 08002E00
add   r0,0x2              ; 08002E02
add   r5,r4,r0            ; 08002E04
ldrh  r1,[r5]             ; 08002E06
mov   r8,r1               ; 08002E08
bl    Sub08002BE0         ; 08002E0A
ldr   r0,=0x03007240      ; 08002E0E  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 08002E10
mov   r1,0xE0             ; 08002E12
lsl   r1,r1,0x1           ; 08002E14  1C0
add   r0,r0,r1            ; 08002E16  [03007240]+1C0 (030023CC)
mov   r2,0x0              ; 08002E18
mov   r1,0x2E             ; 08002E1A  2E: "Restart from the Middle Ring?"
strh  r1,[r0,0xC]         ; 08002E1C  set message ID
strh  r2,[r6]             ; 08002E1E
strh  r2,[r5]             ; 08002E20
bl    Sub080E92E4         ; 08002E22
mov   r0,r9               ; 08002E26
strh  r0,[r6]             ; 08002E28
mov   r1,r8               ; 08002E2A
strh  r1,[r5]             ; 08002E2C
ldr   r0,=0x4905          ; 08002E2E
add   r4,r4,r0            ; 08002E30
ldrb  r0,[r4]             ; 08002E32
add   r0,0x1              ; 08002E34
strb  r0,[r4]             ; 08002E36
pop   {r3-r4}             ; 08002E38
mov   r8,r3               ; 08002E3A
mov   r9,r4               ; 08002E3C
pop   {r4-r6}             ; 08002E3E
pop   {r0}                ; 08002E40
bx    r0                  ; 08002E42
.pool                     ; 08002E44

TryAgainInit:
; Game state 28: "Try this stage again?" init
push  {r4-r6,lr}          ; 08002E54
mov   r6,r9               ; 08002E56
mov   r5,r8               ; 08002E58
push  {r5-r6}             ; 08002E5A
ldr   r4,=0x03002200      ; 08002E5C
ldr   r0,=0x47BE          ; 08002E5E
add   r6,r4,r0            ; 08002E60
ldrh  r1,[r6]             ; 08002E62
mov   r9,r1               ; 08002E64
add   r0,0x2              ; 08002E66
add   r5,r4,r0            ; 08002E68
ldrh  r1,[r5]             ; 08002E6A
mov   r8,r1               ; 08002E6C
bl    Sub08002BE0         ; 08002E6E
ldr   r0,=0x03007240      ; 08002E72  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 08002E74
mov   r1,0xE0             ; 08002E76
lsl   r1,r1,0x1           ; 08002E78  1C0
add   r0,r0,r1            ; 08002E7A  [03007240]+1C0 (030023CC)
mov   r2,0x0              ; 08002E7C
mov   r1,0x21             ; 08002E7E  21: "Try this stage again?"
strh  r1,[r0,0xC]         ; 08002E80  set message ID
strh  r2,[r6]             ; 08002E82
strh  r2,[r5]             ; 08002E84
bl    Sub080E92E4         ; 08002E86
mov   r0,r9               ; 08002E8A
strh  r0,[r6]             ; 08002E8C
mov   r1,r8               ; 08002E8E
strh  r1,[r5]             ; 08002E90
ldr   r0,=0x4905          ; 08002E92
add   r4,r4,r0            ; 08002E94
ldrb  r0,[r4]             ; 08002E96
add   r0,0x1              ; 08002E98
strb  r0,[r4]             ; 08002E9A
pop   {r3-r4}             ; 08002E9C
mov   r8,r3               ; 08002E9E
mov   r9,r4               ; 08002EA0
pop   {r4-r6}             ; 08002EA2
pop   {r0}                ; 08002EA4
bx    r0                  ; 08002EA6
.pool                     ; 08002EA8

Sub08002EB8:
push  {r4-r5,lr}          ; 08002EB8
ldr   r3,=0x03002200      ; 08002EBA
ldr   r0,=0x4852          ; 08002EBC
add   r1,r3,r0            ; 08002EBE  03006A52
mov   r0,0x2              ; 08002EC0
strh  r0,[r1]             ; 08002EC2  set sublevel load entrance type to midway entrance
ldr   r2,=MidwayEntrPtrs  ; 08002EC4  pointers to midway entrances
ldr   r1,=0x4088          ; 08002EC6
add   r0,r3,r1            ; 08002EC8  03006288
ldrh  r1,[r0]             ; 08002ECA  level ID
lsl   r1,r1,0x2           ; 08002ECC
add   r1,r1,r2            ; 08002ECE  index table with level ID
ldr   r0,=0x0202BC70      ; 08002ED0
ldrh  r0,[r0]             ; 08002ED2  checkpoint ID
lsl   r0,r0,0x2           ; 08002ED4  checkpoint ID *4
ldr   r1,[r1]             ; 08002ED6  pointer to midway entrances
add   r1,r1,r0            ; 08002ED8  offset with checkpoint ID *4
ldrb  r2,[r1]             ; 08002EDA \
add   r1,0x1              ; 08002EDC | load bytes 0-1 separately
ldrb  r0,[r1]             ; 08002EDE |  and merge into halfword
lsl   r0,r0,0x8           ; 08002EE0 |  for some reason
orr   r2,r0               ; 08002EE2 /
add   r1,0x1              ; 08002EE4
ldr   r0,=0x0201B000      ; 08002EE6  screen exit for screen 00
strh  r2,[r0]             ; 08002EE8  store bytes 0-1
ldrb  r2,[r1]             ; 08002EEA \
ldrb  r0,[r1,0x1]         ; 08002EEC | load bytes 2-3 separately
lsl   r0,r0,0x8           ; 08002EEE |  and merge into halfword
orr   r2,r0               ; 08002EF0 /
ldr   r0,=0x0201B002      ; 08002EF2
strh  r2,[r0]             ; 08002EF4  store bytes 2-3
ldr   r0,=0x0202BE88      ; 08002EF6
ldrh  r0,[r0]             ; 08002EF8  checkpoint's entrance byte 5
lsl   r0,r0,0x8           ; 08002EFA
ldr   r1,=0x0202BE84      ; 08002EFC
ldrb  r1,[r1]             ; 08002EFE  checkpoint's entrance byte 4
add   r0,r0,r1            ; 08002F00  merge into halfword
ldr   r1,=0x0201B004      ; 08002F02
strh  r0,[r1]             ; 08002F04  store bytes 4-5
ldr   r4,=0x02017300      ; 08002F06
ldr   r1,=0x0202BC74      ; 08002F08
mov   r2,0x0              ; 08002F0A
mov   r5,r3               ; 08002F0C
@Code08002F0E:
ldrh  r0,[r1]             ; 08002F0E
strh  r0,[r4]             ; 08002F10
add   r1,0x2              ; 08002F12
add   r4,0x2              ; 08002F14
ldrh  r0,[r1]             ; 08002F16
strh  r0,[r4]             ; 08002F18
add   r1,0x2              ; 08002F1A
add   r4,0x2              ; 08002F1C
ldrh  r0,[r1]             ; 08002F1E
strh  r0,[r4]             ; 08002F20
add   r1,0x2              ; 08002F22
add   r4,0x2              ; 08002F24
ldrh  r0,[r1]             ; 08002F26
strh  r0,[r4]             ; 08002F28
add   r1,0x2              ; 08002F2A
add   r4,0x2              ; 08002F2C
add   r0,r2,0x1           ; 08002F2E
lsl   r0,r0,0x10          ; 08002F30
lsr   r2,r0,0x10          ; 08002F32
cmp   r2,0x3F             ; 08002F34
bls   @Code08002F0E       ; 08002F36
ldr   r0,=0x0202BE74      ; 08002F38
ldrh  r1,[r0]             ; 08002F3A
ldr   r2,=0x4086          ; 08002F3C
add   r0,r5,r2            ; 08002F3E
strh  r1,[r0]             ; 08002F40
ldr   r4,=0x0202BE78      ; 08002F42
mov   r2,0x0              ; 08002F44
ldr   r0,=0x4140          ; 08002F46
add   r3,r5,r0            ; 08002F48
@Code08002F4A:
lsl   r0,r2,0x1           ; 08002F4A
add   r0,r0,r3            ; 08002F4C
ldrh  r1,[r4]             ; 08002F4E
strh  r1,[r0]             ; 08002F50
add   r4,0x2              ; 08002F52
add   r0,r2,0x1           ; 08002F54
lsl   r0,r0,0x10          ; 08002F56
lsr   r2,r0,0x10          ; 08002F58
cmp   r2,0x5              ; 08002F5A
bls   @Code08002F4A       ; 08002F5C
ldr   r0,=0x0202BC64      ; 08002F5E
ldrh  r1,[r0]             ; 08002F60
ldr   r2,=0x48D6          ; 08002F62
add   r0,r5,r2            ; 08002F64
mov   r3,0x0              ; 08002F66
strh  r1,[r0]             ; 08002F68
ldr   r0,=0x0202BC60      ; 08002F6A
ldrh  r1,[r0]             ; 08002F6C
ldr   r4,=0x489A          ; 08002F6E
add   r0,r5,r4            ; 08002F70
strh  r1,[r0]             ; 08002F72
ldr   r0,=0x0202BC68      ; 08002F74
ldrh  r1,[r0]             ; 08002F76
sub   r2,0x3A             ; 08002F78
add   r0,r5,r2            ; 08002F7A
strh  r1,[r0]             ; 08002F7C
ldr   r0,=0x0202BC6C      ; 08002F7E
ldrh  r1,[r0]             ; 08002F80
ldr   r4,=0x4B67          ; 08002F82
add   r0,r5,r4            ; 08002F84
strb  r1,[r0]             ; 08002F86
ldr   r2,=0x0202BC5C      ; 08002F88
ldrh  r1,[r2]             ; 08002F8A
ldr   r4,=0x48CE          ; 08002F8C
add   r0,r5,r4            ; 08002F8E
strh  r1,[r0]             ; 08002F90
ldrh  r2,[r2]             ; 08002F92
ldr   r1,=0x48D0          ; 08002F94
add   r0,r5,r1            ; 08002F96
strh  r3,[r0]             ; 08002F98
cmp   r2,0x63             ; 08002F9A
bls   @Code08002FB2       ; 08002F9C
mov   r4,r0               ; 08002F9E
@Code08002FA0:
add   r1,r3,0x1           ; 08002FA0
mov   r3,r1               ; 08002FA2
mov   r0,r2               ; 08002FA4
sub   r0,0x64             ; 08002FA6
lsl   r0,r0,0x10          ; 08002FA8
lsr   r2,r0,0x10          ; 08002FAA
cmp   r2,0x63             ; 08002FAC
bhi   @Code08002FA0       ; 08002FAE
strh  r1,[r4]             ; 08002FB0
@Code08002FB2:
ldr   r4,=0x48D2          ; 08002FB2
add   r1,r5,r4            ; 08002FB4
mov   r0,0x0              ; 08002FB6
strh  r0,[r1]             ; 08002FB8
cmp   r2,0x9              ; 08002FBA
bls   @Code08002FD4       ; 08002FBC
mov   r4,r1               ; 08002FBE
mov   r3,0x0              ; 08002FC0
@Code08002FC2:
add   r1,r3,0x1           ; 08002FC2
mov   r3,r1               ; 08002FC4
mov   r0,r2               ; 08002FC6
sub   r0,0xA              ; 08002FC8
lsl   r0,r0,0x10          ; 08002FCA
lsr   r2,r0,0x10          ; 08002FCC
cmp   r2,0x9              ; 08002FCE
bhi   @Code08002FC2       ; 08002FD0
strh  r1,[r4]             ; 08002FD2
@Code08002FD4:
ldr   r1,=0x48D4          ; 08002FD4
add   r0,r5,r1            ; 08002FD6
strh  r2,[r0]             ; 08002FD8
pop   {r4-r5}             ; 08002FDA
pop   {r0}                ; 08002FDC
bx    r0                  ; 08002FDE
.pool                     ; 08002FE0

MidwayRestartMain:
; Game state 26: "Restart from the Middle Ring?" menu
push  {r4-r5,lr}          ; 08003050
ldr   r5,=0x03007240      ; 08003052  Normal gameplay IWRAM (0300220C)
ldr   r0,[r5]             ; 08003054
mov   r1,0xE0             ; 08003056
lsl   r1,r1,0x1           ; 08003058
add   r0,r0,r1            ; 0800305A
bl    Sub080E92E4         ; 0800305C
ldr   r3,=0x03002200      ; 08003060
ldr   r1,=0x47C0          ; 08003062
add   r0,r3,r1            ; 08003064
ldrh  r1,[r0]             ; 08003066
mov   r0,0x9              ; 08003068
and   r0,r1               ; 0800306A
cmp   r0,0x0              ; 0800306C
beq   @Code080030D8       ; 0800306E
ldr   r0,=0x4905          ; 08003070
add   r1,r3,r0            ; 08003072
ldrb  r0,[r1]             ; 08003074
add   r0,0x1              ; 08003076
mov   r2,0x0              ; 08003078
strb  r0,[r1]             ; 0800307A
ldr   r1,=0x48C0          ; 0800307C
add   r4,r3,r1            ; 0800307E
mov   r0,0x10             ; 08003080
strh  r0,[r4]             ; 08003082
sub   r1,0x6E             ; 08003084
add   r0,r3,r1            ; 08003086
strh  r2,[r0]             ; 08003088
ldr   r0,[r5]             ; 0800308A
ldr   r1,=0x0216          ; 0800308C
add   r0,r0,r1            ; 0800308E
ldrh  r0,[r0]             ; 08003090
cmp   r0,0x0              ; 08003092
beq   @Code080030C8       ; 08003094
ldr   r0,=0x4058          ; 08003096
add   r1,r3,r0            ; 08003098
mov   r0,0x78             ; 0800309A
strh  r0,[r1]             ; 0800309C
mov   r0,0x75             ; 0800309E
bl    PlayYISound         ; 080030A0
mov   r0,0x75             ; 080030A4
strh  r0,[r4]             ; 080030A6
b     @Code080030D8       ; 080030A8
.pool                     ; 080030AA

@Code080030C8:
mov   r0,0x29             ; 080030C8
mov   r1,0x0              ; 080030CA
bl    PlayYISound         ; 080030CC
mov   r0,0x29             ; 080030D0
strh  r0,[r4]             ; 080030D2
bl    Sub08002EB8         ; 080030D4
@Code080030D8:
pop   {r4-r5}             ; 080030D8
pop   {r0}                ; 080030DA
bx    r0                  ; 080030DC
.pool                     ; 080030DE

TryAgainMain:
; Game state 2A: "Try this stage again?" menu
push  {r4-r5,lr}          ; 080030E0
ldr   r5,=0x03007240      ; 080030E2  Normal gameplay IWRAM (0300220C)
ldr   r0,[r5]             ; 080030E4
mov   r1,0xE0             ; 080030E6
lsl   r1,r1,0x1           ; 080030E8
add   r0,r0,r1            ; 080030EA
bl    Sub080E92E4         ; 080030EC
ldr   r2,=0x03002200      ; 080030F0
ldr   r1,=0x47C0          ; 080030F2
add   r0,r2,r1            ; 080030F4
ldrh  r1,[r0]             ; 080030F6
mov   r0,0x9              ; 080030F8
and   r0,r1               ; 080030FA
cmp   r0,0x0              ; 080030FC
beq   @Code0800316C       ; 080030FE
ldr   r0,=0x4905          ; 08003100
add   r1,r2,r0            ; 08003102
ldrb  r0,[r1]             ; 08003104
add   r0,0x1              ; 08003106
mov   r3,0x0              ; 08003108
strb  r0,[r1]             ; 0800310A
ldr   r1,=0x48C0          ; 0800310C
add   r4,r2,r1            ; 0800310E
mov   r0,0x10             ; 08003110
strh  r0,[r4]             ; 08003112
sub   r1,0x6E             ; 08003114
add   r0,r2,r1            ; 08003116
strh  r3,[r0]             ; 08003118
ldr   r0,[r5]             ; 0800311A
ldr   r5,=0x0216          ; 0800311C
add   r0,r0,r5            ; 0800311E
ldrh  r0,[r0]             ; 08003120
cmp   r0,0x0              ; 08003122
beq   @Code08003160       ; 08003124
ldr   r0,=0x4058          ; 08003126
add   r1,r2,r0            ; 08003128
mov   r0,0x78             ; 0800312A
strh  r0,[r1]             ; 0800312C
ldr   r5,=0x405A          ; 0800312E
add   r0,r2,r5            ; 08003130
strh  r3,[r0]             ; 08003132
mov   r0,0x75             ; 08003134
bl    PlayYISound         ; 08003136
mov   r0,0x75             ; 0800313A
b     @Code0800316A       ; 0800313C
.pool                     ; 0800313E

@Code08003160:
mov   r0,0x29             ; 08003160
mov   r1,0x0              ; 08003162
bl    PlayYISound         ; 08003164
mov   r0,0x29             ; 08003168
@Code0800316A:
strh  r0,[r4]             ; 0800316A
@Code0800316C:
pop   {r4-r5}             ; 0800316C
pop   {r0}                ; 0800316E
bx    r0                  ; 08003170
.pool                     ; 08003172

DeathRestartConfirm:
; Game state 27/2B: "Restart from the Middle Ring?"/"Try this stage again?", after confirming
push  {r4-r6,lr}          ; 08003174
bl    Sub0812C470         ; 08003176
lsl   r0,r0,0x10          ; 0800317A
cmp   r0,0x0              ; 0800317C
bge   @Code0800321C       ; 0800317E
ldr   r6,=0x03002200      ; 08003180
ldr   r1,=0x48C0          ; 08003182
add   r0,r6,r1            ; 08003184
ldrh  r0,[r0]             ; 08003186
bl    Sub0812CA94         ; 08003188
lsl   r0,r0,0x18          ; 0800318C
lsr   r0,r0,0x18          ; 0800318E
cmp   r0,0x1              ; 08003190
beq   @Code0800321C       ; 08003192
ldr   r0,=0x4905          ; 08003194
add   r4,r6,r0            ; 08003196
ldrb  r0,[r4]             ; 08003198
mov   r5,r0               ; 0800319A
bl    FadeToNextState         ; 0800319C
ldrb  r1,[r4]             ; 080031A0
cmp   r5,r1               ; 080031A2
beq   @Code0800321C       ; 080031A4
ldr   r0,=0x03007240      ; 080031A6  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]             ; 080031A8
ldr   r1,=0x0216          ; 080031AA
add   r0,r0,r1            ; 080031AC
ldrh  r0,[r0]             ; 080031AE
cmp   r0,0x0              ; 080031B0
beq   @Code080031F0       ; 080031B2
mov   r0,0x33             ; 080031B4
strb  r0,[r4]             ; 080031B6
ldr   r1,=0x4088          ; 080031B8
add   r0,r6,r1            ; 080031BA
ldrh  r0,[r0]             ; 080031BC
cmp   r0,0xB              ; 080031BE
bne   @Code080031CE       ; 080031C0
mov   r0,0x3E             ; 080031C2
strb  r0,[r4]             ; 080031C4
ldr   r0,=0x4978          ; 080031C6
add   r1,r6,r0            ; 080031C8
mov   r0,0x1              ; 080031CA
strb  r0,[r1]             ; 080031CC
@Code080031CE:
bl    Sub08041460         ; 080031CE
b     @Code08003200       ; 080031D2
.pool                     ; 080031D4

@Code080031F0:
mov   r0,0xA              ; 080031F0
strb  r0,[r4]             ; 080031F2
cmp   r5,0x2B             ; 080031F4
bne   @Code08003200       ; 080031F6
bl    Sub080413C4         ; 080031F8
bl    Sub08041460         ; 080031FC
@Code08003200:
bl    Sub080FAA64         ; 08003200
ldr   r4,=0x03002200      ; 08003204
ldr   r1,=0x4B64          ; 08003206
add   r0,r4,r1            ; 08003208
ldrb  r0,[r0]             ; 0800320A
cmp   r0,0x3              ; 0800320C
beq   @Code0800321C       ; 0800320E
bl    Sub0802E020         ; 08003210
ldr   r0,=0x48F6          ; 08003214
add   r1,r4,r0            ; 08003216
mov   r0,0x0              ; 08003218
strb  r0,[r1]             ; 0800321A
@Code0800321C:
pop   {r4-r6}             ; 0800321C
pop   {r0}                ; 0800321E
bx    r0                  ; 08003220
.pool                     ; 08003222

DynamicRAMInit:
; initialize dynamic RAM region
push  {r4-r6,lr}          ; 08003230
mov   r5,r0               ; 08003232
add   r5,0x8              ; 08003234
mov   r4,r1               ; 08003236
sub   r4,0xA              ; 08003238
add   r4,r5,r4            ; 0800323A
mov   r2,r1               ; 0800323C
sub   r2,0xC              ; 0800323E
ldr   r6,=0xFFFE          ; 08003240
mov   r3,r6               ; 08003242
and   r2,r3               ; 08003244
strh  r2,[r0,0x8]         ; 08003246
ldr   r3,=0xFFFF          ; 08003248
mov   r2,r3               ; 0800324A
strh  r2,[r4]             ; 0800324C
str   r5,[r0]             ; 0800324E
sub   r1,0x8              ; 08003250
mov   r2,0x0              ; 08003252
strh  r1,[r0,0x4]         ; 08003254
strb  r2,[r0,0x6]         ; 08003256
strb  r2,[r0,0x7]         ; 08003258
pop   {r4-r6}             ; 0800325A
pop   {r0}                ; 0800325C
bx    r0                  ; 0800325E
.pool                     ; 08003260

DynamicAllocate:
; Allocate dynamic memory
; r0: start of dynamic region, r1: bytes to allocate
push  {r4-r7,lr}          ; 08003268
mov   r7,r10              ; 0800326A
mov   r6,r9               ; 0800326C
mov   r5,r8               ; 0800326E
push  {r5-r7}             ; 08003270
add   sp,-0x8             ; 08003272
mov   r8,r0               ; 08003274
mov   r0,0x0              ; 08003276
str   r0,[sp]             ; 08003278
mov   r0,0x3              ; 0800327A
and   r0,r1               ; 0800327C
cmp   r0,0x0              ; 0800327E
bne   @Code08003286       ; 08003280
mov   r2,0x1              ; 08003282
str   r2,[sp]             ; 08003284
@Code08003286:
add   r1,0x1              ; 08003286
mov   r0,0x2              ; 08003288
neg   r0,r0               ; 0800328A
and   r1,r0               ; 0800328C
add   r7,r1,0x2           ; 0800328E
mov   r3,r8               ; 08003290
ldrh  r3,[r3,0x4]         ; 08003292
cmp   r7,r3               ; 08003294
bhi   @Code0800338A       ; 08003296
mov   r5,r8               ; 08003298
add   r5,0x8              ; 0800329A
mov   r0,r8               ; 0800329C
ldr   r0,[r0]             ; 0800329E
mov   r9,r0               ; 080032A0
cmp   r0,0x0              ; 080032A2
beq   @Code080032A8       ; 080032A4
mov   r5,r9               ; 080032A6
@Code080032A8:
ldrh  r0,[r5]             ; 080032A8
ldr   r2,=0xFFFF          ; 080032AA
cmp   r0,r2               ; 080032AC
beq   @Code0800338A       ; 080032AE
ldr   r3,=0xFFFE          ; 080032B0
mov   r10,r3              ; 080032B2
mov   r0,0x1              ; 080032B4
orr   r1,r0               ; 080032B6
str   r1,[sp,0x4]         ; 080032B8
@Code080032BA:
ldrh  r1,[r5]             ; 080032BA
mov   r0,0x2              ; 080032BC
neg   r0,r0               ; 080032BE
and   r1,r0               ; 080032C0
add   r3,r1,0x2           ; 080032C2
ldr   r0,[sp]             ; 080032C4
cmp   r0,0x0              ; 080032C6
beq   @Code080032E4       ; 080032C8
mov   r4,r3               ; 080032CA
mov   r0,r5               ; 080032CC
mov   r2,0x3              ; 080032CE
and   r0,r2               ; 080032D0
cmp   r0,0x0              ; 080032D2
bne   @Code080032E6       ; 080032D4
mov   r4,r1               ; 080032D6
b     @Code080032E6       ; 080032D8
.pool                     ; 080032DA

@Code080032E4:
mov   r4,r3               ; 080032E4
@Code080032E6:
add   r6,r5,r3            ; 080032E6
ldrh  r1,[r5]             ; 080032E8
mov   r2,0x1              ; 080032EA
mov   r0,r2               ; 080032EC
and   r0,r1               ; 080032EE
cmp   r0,0x0              ; 080032F0
bne   @Code08003380       ; 080032F2
cmp   r7,r4               ; 080032F4
bls   @Code0800332E       ; 080032F6
ldrh  r1,[r6]             ; 080032F8
mov   r0,r2               ; 080032FA
and   r0,r1               ; 080032FC
cmp   r0,0x0              ; 080032FE
bne   @Code0800332A       ; 08003300
sub   r2,0x3              ; 08003302
mov   r0,0x1              ; 08003304
mov   r12,r0              ; 08003306
@Code08003308:
ldrh  r0,[r6]             ; 08003308
and   r0,r2               ; 0800330A
add   r0,0x2              ; 0800330C
add   r3,r3,r0            ; 0800330E
add   r4,r4,r0            ; 08003310
add   r6,r5,r3            ; 08003312
cmp   r7,r4               ; 08003314
bls   @Code08003322       ; 08003316
ldrh  r1,[r6]             ; 08003318
mov   r0,r12              ; 0800331A
and   r0,r1               ; 0800331C
cmp   r0,0x0              ; 0800331E
beq   @Code08003308       ; 08003320
@Code08003322:
sub   r0,r3,0x2           ; 08003322
mov   r1,r10              ; 08003324
and   r0,r1               ; 08003326
strh  r0,[r5]             ; 08003328
@Code0800332A:
cmp   r7,r4               ; 0800332A
bhi   @Code08003380       ; 0800332C
@Code0800332E:
ldr   r2,[sp]             ; 0800332E
cmp   r2,0x0              ; 08003330
beq   @Code0800335A       ; 08003332
add   r1,r5,0x2           ; 08003334
mov   r0,r1               ; 08003336
mov   r2,0x3              ; 08003338
and   r0,r2               ; 0800333A
cmp   r0,0x0              ; 0800333C
beq   @Code0800335A       ; 0800333E
mov   r2,r1               ; 08003340
sub   r1,r3,0x2           ; 08003342
cmp   r7,r1               ; 08003344
bhi   @Code0800335A       ; 08003346
mov   r0,0x0              ; 08003348
strh  r0,[r5]             ; 0800334A
sub   r0,r3,0x4           ; 0800334C
mov   r3,r10              ; 0800334E
and   r0,r3               ; 08003350
strh  r0,[r5,0x2]         ; 08003352
mov   r5,r2               ; 08003354
mov   r3,r1               ; 08003356
mov   r4,r3               ; 08003358
@Code0800335A:
cmp   r7,r4               ; 0800335A
bhi   @Code08003380       ; 0800335C
cmp   r7,r3               ; 0800335E
bhs   @Code08003376       ; 08003360
add   r2,r5,r7            ; 08003362
sub   r1,r3,r7            ; 08003364
sub   r0,r1,0x2           ; 08003366
mov   r1,r10              ; 08003368
and   r0,r1               ; 0800336A
strh  r0,[r2]             ; 0800336C
cmp   r9,r2               ; 0800336E
bls   @Code08003376       ; 08003370
mov   r3,r8               ; 08003372
str   r2,[r3]             ; 08003374
@Code08003376:
mov   r0,sp               ; 08003376
ldrh  r0,[r0,0x4]         ; 08003378
strh  r0,[r5]             ; 0800337A
add   r0,r5,0x2           ; 0800337C
b     @Code0800338C       ; 0800337E
@Code08003380:
mov   r5,r6               ; 08003380
ldrh  r0,[r5]             ; 08003382
ldr   r1,=0xFFFF          ; 08003384
cmp   r0,r1               ; 08003386
bne   @Code080032BA       ; 08003388
@Code0800338A:
mov   r0,0x0              ; 0800338A
@Code0800338C:
add   sp,0x8              ; 0800338C
pop   {r3-r5}             ; 0800338E
mov   r8,r3               ; 08003390
mov   r9,r4               ; 08003392
mov   r10,r5              ; 08003394
pop   {r4-r7}             ; 08003396
pop   {r1}                ; 08003398
bx    r1                  ; 0800339A
.pool                     ; 0800339C

DynamicDeallocate:
; Deallocate dynamic memory
; r0: start of dynamic region, r1: pointer to region to deallocate
push  {lr}                ; 080033A0
mov   r3,r0               ; 080033A2
cmp   r1,0x0              ; 080033A4
beq   @Code080033CE       ; 080033A6
sub   r2,r1,0x2           ; 080033A8
ldrh  r1,[r2]             ; 080033AA
mov   r0,0x1              ; 080033AC
and   r0,r1               ; 080033AE
cmp   r0,0x0              ; 080033B0
beq   @Code080033CE       ; 080033B2
ldrh  r0,[r2]             ; 080033B4
mov   r1,0x2              ; 080033B6
neg   r1,r1               ; 080033B8
and   r0,r1               ; 080033BA
strh  r0,[r2]             ; 080033BC
cmp   r3,0x0              ; 080033BE
beq   @Code080033CE       ; 080033C0
ldr   r0,[r3]             ; 080033C2
cmp   r0,r2               ; 080033C4
bhi   @Code080033CC       ; 080033C6
cmp   r0,0x0              ; 080033C8
bne   @Code080033CE       ; 080033CA
@Code080033CC:
str   r2,[r3]             ; 080033CC
@Code080033CE:
pop   {r0}                ; 080033CE
bx    r0                  ; 080033D0
.pool                     ; 080033D2

Sub080033D4:
push  {r4-r7,lr}          ; 080033D4
mov   r7,r9               ; 080033D6
mov   r6,r8               ; 080033D8
push  {r6-r7}             ; 080033DA
mov   r7,r0               ; 080033DC
mov   r0,0x0              ; 080033DE
mov   r8,r0               ; 080033E0
mov   r4,r7               ; 080033E2
add   r4,0x8              ; 080033E4
ldrh  r0,[r7,0x8]         ; 080033E6
ldr   r1,=0xFFFF          ; 080033E8
cmp   r0,r1               ; 080033EA
beq   @Code08003442       ; 080033EC
mov   r2,0x1              ; 080033EE
mov   r12,r2              ; 080033F0
mov   r9,r1               ; 080033F2
@Code080033F4:
ldrh  r1,[r4]             ; 080033F4
mov   r5,0x2              ; 080033F6
neg   r5,r5               ; 080033F8
mov   r0,r1               ; 080033FA
and   r0,r5               ; 080033FC
add   r2,r0,0x2           ; 080033FE
add   r3,r4,r2            ; 08003400
mov   r0,r12              ; 08003402
and   r1,r0               ; 08003404
cmp   r1,0x0              ; 08003406
bne   @Code0800343A       ; 08003408
ldrh  r1,[r3]             ; 0800340A
and   r0,r1               ; 0800340C
cmp   r0,0x0              ; 0800340E
bne   @Code08003432       ; 08003410
mov   r6,0x1              ; 08003412
@Code08003414:
add   r1,r2,0x2           ; 08003414
ldrh  r0,[r3]             ; 08003416
and   r0,r5               ; 08003418
add   r2,r1,r0            ; 0800341A
add   r3,r4,r2            ; 0800341C
ldrh  r1,[r3]             ; 0800341E
mov   r0,r6               ; 08003420
and   r0,r1               ; 08003422
cmp   r0,0x0              ; 08003424
beq   @Code08003414       ; 08003426
sub   r0,r2,0x2           ; 08003428
ldr   r2,=0xFFFE          ; 0800342A
mov   r1,r2               ; 0800342C
and   r0,r1               ; 0800342E
strh  r0,[r4]             ; 08003430
@Code08003432:
mov   r0,r8               ; 08003432
cmp   r0,0x0              ; 08003434
bne   @Code0800343A       ; 08003436
mov   r8,r4               ; 08003438
@Code0800343A:
mov   r4,r3               ; 0800343A
ldrh  r0,[r4]             ; 0800343C
cmp   r0,r9               ; 0800343E
bne   @Code080033F4       ; 08003440
@Code08003442:
mov   r2,r8               ; 08003442
str   r2,[r7]             ; 08003444
pop   {r3-r4}             ; 08003446
mov   r8,r3               ; 08003448
mov   r9,r4               ; 0800344A
pop   {r4-r7}             ; 0800344C
pop   {r0}                ; 0800344E
bx    r0                  ; 08003450
.pool                     ; 08003452

NintendoPresentsInit:
; Game state 00
push  {r4-r6,lr}          ; 0800345C
add   sp,-0x4             ; 0800345E
ldr   r5,=0x03002200      ; 08003460
ldr   r0,=0x4904          ; 08003462
add   r1,r5,r0            ; 08003464
mov   r6,0x0              ; 08003466
mov   r0,0x1              ; 08003468
strb  r0,[r1]             ; 0800346A
ldr   r2,=0x48F6          ; 0800346C
add   r1,r5,r2            ; 0800346E
mov   r0,0x5              ; 08003470
strb  r0,[r1]             ; 08003472
ldr   r1,=0x47C6          ; 08003474
add   r0,r5,r1            ; 08003476
mov   r1,0xC0             ; 08003478
lsl   r1,r1,0x1           ; 0800347A
strh  r1,[r0]             ; 0800347C
mov   r0,0x80             ; 0800347E
lsl   r0,r0,0x13          ; 08003480
strh  r1,[r0]             ; 08003482
ldr   r2,=0x04000008      ; 08003484
ldr   r0,=0x47C8          ; 08003486
add   r1,r5,r0            ; 08003488
mov   r0,0x80             ; 0800348A
lsl   r0,r0,0x4           ; 0800348C
strh  r0,[r1]             ; 0800348E
strh  r0,[r2]             ; 08003490
mov   r0,sp               ; 08003492
strh  r6,[r0]             ; 08003494
ldr   r4,=0x040000D4      ; 08003496
str   r0,[r4]             ; 08003498
mov   r0,0xC0             ; 0800349A
lsl   r0,r0,0x13          ; 0800349C
str   r0,[r4,0x4]         ; 0800349E
ldr   r0,=0x8100C000      ; 080034A0
str   r0,[r4,0x8]         ; 080034A2
ldr   r0,[r4,0x8]         ; 080034A4
mov   r0,0x2              ; 080034A6
bl    Sub08013418         ; 080034A8
mov   r1,sp               ; 080034AC
mov   r0,0xFF             ; 080034AE
strh  r0,[r1]             ; 080034B0
str   r1,[r4]             ; 080034B2
ldr   r0,=0x06004000      ; 080034B4
str   r0,[r4,0x4]         ; 080034B6
ldr   r0,=0x81000400      ; 080034B8
str   r0,[r4,0x8]         ; 080034BA
ldr   r0,[r4,0x8]         ; 080034BC
bl    Sub08002338         ; 080034BE
mov   r0,sp               ; 080034C2
strh  r6,[r0]             ; 080034C4
str   r0,[r4]             ; 080034C6
mov   r0,0xA0             ; 080034C8
lsl   r0,r0,0x13          ; 080034CA
str   r0,[r4,0x4]         ; 080034CC
ldr   r1,=0x81000200      ; 080034CE
str   r1,[r4,0x8]         ; 080034D0
ldr   r0,[r4,0x8]         ; 080034D2
mov   r0,sp               ; 080034D4
strh  r6,[r0]             ; 080034D6
str   r0,[r4]             ; 080034D8
ldr   r0,=0x02010400      ; 080034DA
str   r0,[r4,0x4]         ; 080034DC
str   r1,[r4,0x8]         ; 080034DE
ldr   r0,[r4,0x8]         ; 080034E0
ldr   r1,=0x02010404      ; 080034E2
ldr   r2,=0x7FFF          ; 080034E4
mov   r0,r2               ; 080034E6
strh  r0,[r1]             ; 080034E8
ldr   r0,=0x4967          ; 080034EA
add   r1,r5,r0            ; 080034EC
mov   r0,0x3              ; 080034EE
strb  r0,[r1]             ; 080034F0
ldr   r1,=0x47E4          ; 080034F2
add   r0,r5,r1            ; 080034F4
ldr   r2,=0x47EC          ; 080034F6
add   r1,r5,r2            ; 080034F8
strh  r6,[r0]             ; 080034FA
strh  r6,[r1]             ; 080034FC
ldr   r1,=0x47E6          ; 080034FE
add   r0,r5,r1            ; 08003500
strh  r6,[r0]             ; 08003502
add   r2,0x2              ; 08003504
add   r0,r5,r2            ; 08003506
strh  r6,[r0]             ; 08003508
add   r1,0x2              ; 0800350A
add   r0,r5,r1            ; 0800350C
strh  r6,[r0]             ; 0800350E
add   r2,0x2              ; 08003510
add   r5,r5,r2            ; 08003512
strh  r6,[r5]             ; 08003514
ldr   r1,=0x06004256      ; 08003516
mov   r0,0x0              ; 08003518
@Code0800351A:
strh  r0,[r1]             ; 0800351A
add   r1,0x2              ; 0800351C
add   r0,0x1              ; 0800351E
lsl   r0,r0,0x10          ; 08003520
lsr   r0,r0,0x10          ; 08003522
cmp   r0,0x7              ; 08003524
bls   @Code0800351A       ; 08003526
ldr   r1,=0x06004296      ; 08003528
mov   r0,0x10             ; 0800352A
ldr   r5,=0x03002200      ; 0800352C
@Code0800352E:
strh  r0,[r1]             ; 0800352E
add   r1,0x2              ; 08003530
add   r0,0x1              ; 08003532
lsl   r0,r0,0x10          ; 08003534
lsr   r0,r0,0x10          ; 08003536
cmp   r0,0x17             ; 08003538
bls   @Code0800352E       ; 0800353A
ldr   r2,=0x04000004      ; 0800353C
ldr   r0,=0x47C4          ; 0800353E
add   r1,r5,r0            ; 08003540
mov   r4,0x0              ; 08003542
mov   r0,0x8              ; 08003544
strh  r0,[r1]             ; 08003546
strh  r0,[r2]             ; 08003548
ldr   r2,=0x04000200      ; 0800354A
ldr   r0,=0x47C2          ; 0800354C
add   r1,r5,r0            ; 0800354E
ldr   r0,=0x2081          ; 08003550
strh  r0,[r1]             ; 08003552
strh  r0,[r2]             ; 08003554
ldr   r1,=0x47C6          ; 08003556
add   r2,r5,r1            ; 08003558
ldrh  r0,[r2]             ; 0800355A
mov   r1,0x80             ; 0800355C
eor   r0,r1               ; 0800355E
strh  r0,[r2]             ; 08003560
mov   r0,0x24             ; 08003562  24: Yoshi voice: "Nintendo"
mov   r1,0x0              ; 08003564
bl    PlayYISound         ; 08003566
ldr   r2,=0x4905          ; 0800356A
add   r1,r5,r2            ; 0800356C
mov   r0,0x1              ; 0800356E
strb  r0,[r1]             ; 08003570
ldr   r1,=0x4901          ; 08003572
add   r0,r5,r1            ; 08003574
strb  r4,[r0]             ; 08003576
add   sp,0x4              ; 08003578
pop   {r4-r6}             ; 0800357A
pop   {r0}                ; 0800357C
bx    r0                  ; 0800357E
.pool                     ; 08003580

NintendoPresents:
; Game state 01: Nintendo presents
push  {r4,lr}             ; 080035EC
ldr   r4,=0x03002200      ; 080035EE
ldr   r1,=0x4901          ; 080035F0
add   r0,r4,r1            ; 080035F2
ldrb  r0,[r0]             ; 080035F4
cmp   r0,0x3B             ; 080035F6
bls   @Code0800361C       ; 080035F8
mov   r0,0x24             ; 080035FA
bl    Sub0812CA94         ; 080035FC
lsl   r0,r0,0x18          ; 08003600
lsr   r2,r0,0x18          ; 08003602
cmp   r2,0x0              ; 08003604
bne   @Code0800361C       ; 08003606
ldr   r0,=0x4905          ; 08003608
add   r1,r4,r0            ; 0800360A
mov   r0,0x2              ; 0800360C
strb  r0,[r1]             ; 0800360E
ldr   r1,=0x48FA          ; 08003610
add   r0,r4,r1            ; 08003612
strb  r2,[r0]             ; 08003614
add   r1,0x1              ; 08003616
add   r0,r4,r1            ; 08003618
strb  r2,[r0]             ; 0800361A
@Code0800361C:
pop   {r4}                ; 0800361C
pop   {r0}                ; 0800361E
bx    r0                  ; 08003620
.pool                     ; 08003622

Sub08003634:
push  {r4-r7,lr}          ; 08003634
mov   r7,r10              ; 08003636
mov   r6,r9               ; 08003638
mov   r5,r8               ; 0800363A
push  {r5-r7}             ; 0800363C
add   sp,-0x8             ; 0800363E
mov   r4,r1               ; 08003640
lsl   r2,r2,0x10          ; 08003642
ldr   r3,=0x03002200      ; 08003644
ldr   r1,=0x47D0          ; 08003646
add   r6,r3,r1            ; 08003648
ldrh  r1,[r6]             ; 0800364A
lsl   r1,r1,0x3           ; 0800364C
mov   r5,0xE0             ; 0800364E
lsl   r5,r5,0x6           ; 08003650
add   r3,r3,r5            ; 08003652
add   r3,r1,r3            ; 08003654
lsr   r2,r2,0xE           ; 08003656
mov   r1,r0               ; 08003658
add   r1,0x20             ; 0800365A
add   r1,r1,r2            ; 0800365C
ldr   r1,[r1]             ; 0800365E
lsl   r1,r1,0x8           ; 08003660
lsr   r1,r1,0x10          ; 08003662
str   r1,[sp]             ; 08003664
add   r0,r0,r2            ; 08003666
ldr   r0,[r0]             ; 08003668
lsl   r0,r0,0x8           ; 0800366A
lsr   r0,r0,0x10          ; 0800366C
str   r0,[sp,0x4]         ; 0800366E
ldrh  r0,[r4,0x6]         ; 08003670
ldr   r1,=0xFFFF          ; 08003672
cmp   r0,r1               ; 08003674
bne   @Code0800367A       ; 08003676
b     @Code08003780       ; 08003678
@Code0800367A:
mov   r2,0x3              ; 0800367A
mov   r9,r2               ; 0800367C
mov   r5,0xD              ; 0800367E
neg   r5,r5               ; 08003680
mov   r10,r5              ; 08003682
mov   r0,0x11             ; 08003684
neg   r0,r0               ; 08003686
mov   r8,r0               ; 08003688
mov   r5,0x1              ; 0800368A
mov   r1,0x21             ; 0800368C
neg   r1,r1               ; 0800368E
mov   r12,r1              ; 08003690
mov   r7,0x3F             ; 08003692
@Code08003694:
ldrb  r0,[r4]             ; 08003694
ldr   r2,[sp]             ; 08003696
add   r0,r0,r2            ; 08003698
strb  r0,[r3]             ; 0800369A
ldrb  r0,[r4,0x1]         ; 0800369C
lsl   r0,r0,0x1E          ; 0800369E
lsr   r0,r0,0x1E          ; 080036A0
mov   r1,r9               ; 080036A2
and   r0,r1               ; 080036A4
ldrb  r1,[r3,0x1]         ; 080036A6
mov   r2,0x4              ; 080036A8
neg   r2,r2               ; 080036AA
and   r2,r1               ; 080036AC
orr   r2,r0               ; 080036AE
strb  r2,[r3,0x1]         ; 080036B0
ldrb  r0,[r4,0x1]         ; 080036B2
lsl   r0,r0,0x1C          ; 080036B4
lsr   r0,r0,0x1E          ; 080036B6
mov   r1,r9               ; 080036B8
and   r0,r1               ; 080036BA
lsl   r0,r0,0x2           ; 080036BC
mov   r1,r10              ; 080036BE
and   r1,r2               ; 080036C0
orr   r1,r0               ; 080036C2
mov   r2,r8               ; 080036C4
and   r1,r2               ; 080036C6
strb  r1,[r3,0x1]         ; 080036C8
ldrb  r0,[r4,0x1]         ; 080036CA
lsl   r0,r0,0x1A          ; 080036CC
lsr   r0,r0,0x1F          ; 080036CE
and   r0,r5               ; 080036D0
lsl   r0,r0,0x5           ; 080036D2
mov   r2,r12              ; 080036D4
and   r1,r2               ; 080036D6
orr   r1,r0               ; 080036D8
strb  r1,[r3,0x1]         ; 080036DA
ldrb  r0,[r4,0x1]         ; 080036DC
lsr   r0,r0,0x6           ; 080036DE
lsl   r0,r0,0x6           ; 080036E0
and   r1,r7               ; 080036E2
orr   r1,r0               ; 080036E4
strb  r1,[r3,0x1]         ; 080036E6
ldrh  r1,[r4,0x2]         ; 080036E8
lsl   r1,r1,0x17          ; 080036EA
lsr   r1,r1,0x17          ; 080036EC
ldr   r2,[sp,0x4]         ; 080036EE
lsl   r0,r2,0x10          ; 080036F0
asr   r0,r0,0x10          ; 080036F2
add   r1,r1,r0            ; 080036F4
ldr   r2,=0x01FF          ; 080036F6
mov   r0,r2               ; 080036F8
and   r1,r0               ; 080036FA
ldrh  r2,[r3,0x2]         ; 080036FC
ldr   r0,=0xFFFFFE00      ; 080036FE
and   r0,r2               ; 08003700
orr   r0,r1               ; 08003702
strh  r0,[r3,0x2]         ; 08003704
ldrb  r0,[r3,0x3]         ; 08003706
mov   r2,0xF              ; 08003708
neg   r2,r2               ; 0800370A
and   r2,r0               ; 0800370C
strb  r2,[r3,0x3]         ; 0800370E
ldrb  r0,[r4,0x3]         ; 08003710
lsl   r0,r0,0x1B          ; 08003712
lsr   r0,r0,0x1F          ; 08003714
and   r0,r5               ; 08003716
lsl   r0,r0,0x4           ; 08003718
mov   r1,r8               ; 0800371A
and   r2,r1               ; 0800371C
orr   r2,r0               ; 0800371E
strb  r2,[r3,0x3]         ; 08003720
ldrb  r0,[r4,0x3]         ; 08003722
lsl   r0,r0,0x1A          ; 08003724
lsr   r0,r0,0x1F          ; 08003726
and   r0,r5               ; 08003728
lsl   r0,r0,0x5           ; 0800372A
mov   r1,r12              ; 0800372C
and   r1,r2               ; 0800372E
orr   r1,r0               ; 08003730
strb  r1,[r3,0x3]         ; 08003732
ldrb  r0,[r4,0x3]         ; 08003734
lsr   r0,r0,0x6           ; 08003736
lsl   r0,r0,0x6           ; 08003738
and   r1,r7               ; 0800373A
orr   r1,r0               ; 0800373C
strb  r1,[r3,0x3]         ; 0800373E
ldrh  r1,[r4,0x4]         ; 08003740
lsl   r1,r1,0x16          ; 08003742
lsr   r1,r1,0x16          ; 08003744
ldrh  r2,[r3,0x4]         ; 08003746
ldr   r0,=0xFFFFFC00      ; 08003748
and   r0,r2               ; 0800374A
orr   r0,r1               ; 0800374C
strh  r0,[r3,0x4]         ; 0800374E
ldrb  r1,[r4,0x5]         ; 08003750
lsr   r1,r1,0x4           ; 08003752
lsl   r1,r1,0x4           ; 08003754
ldrb  r2,[r3,0x5]         ; 08003756
mov   r0,0xF              ; 08003758
and   r0,r2               ; 0800375A
orr   r0,r1               ; 0800375C
strb  r0,[r3,0x5]         ; 0800375E
ldrh  r1,[r4,0x6]         ; 08003760
strh  r1,[r3,0x6]         ; 08003762
mov   r2,r10              ; 08003764
and   r0,r2               ; 08003766
mov   r1,0x8              ; 08003768
orr   r0,r1               ; 0800376A
strb  r0,[r3,0x5]         ; 0800376C
add   r3,0x8              ; 0800376E
ldrh  r0,[r6]             ; 08003770
add   r0,0x1              ; 08003772
strh  r0,[r6]             ; 08003774
add   r4,0x8              ; 08003776
ldrh  r0,[r4,0x6]         ; 08003778
ldr   r1,=0xFFFF          ; 0800377A
cmp   r0,r1               ; 0800377C
bne   @Code08003694       ; 0800377E
@Code08003780:
add   sp,0x8              ; 08003780
pop   {r3-r5}             ; 08003782
mov   r8,r3               ; 08003784
mov   r9,r4               ; 08003786
mov   r10,r5              ; 08003788
pop   {r4-r7}             ; 0800378A
pop   {r0}                ; 0800378C
bx    r0                  ; 0800378E
.pool                     ; 08003790

Sub080037A8:
push  {r4,lr}             ; 080037A8
lsl   r2,r1,0x10          ; 080037AA
lsr   r2,r2,0x10          ; 080037AC
ldr   r4,=DataPtrs08164608; 080037AE
lsl   r3,r2,0x1           ; 080037B0
mov   r1,r0               ; 080037B2
add   r1,0x60             ; 080037B4
add   r1,r1,r3            ; 080037B6
ldrh  r1,[r1]             ; 080037B8
lsl   r1,r1,0x2           ; 080037BA
add   r1,r1,r4            ; 080037BC
ldr   r1,[r1]             ; 080037BE
bl    Sub08003634         ; 080037C0
pop   {r4}                ; 080037C4
pop   {r0}                ; 080037C6
bx    r0                  ; 080037C8
.pool                     ; 080037CA

push  {lr}                ; 080037D0
ldr   r0,=0x04000006      ; 080037D2
ldrh  r0,[r0]             ; 080037D4
cmp   r0,0x9F             ; 080037D6
bhi   @Code080037F0       ; 080037D8
ldr   r2,=0x04000010      ; 080037DA
lsl   r1,r0,0x1           ; 080037DC
ldr   r3,=0x02011000      ; 080037DE
add   r0,r1,r3            ; 080037E0
ldrh  r0,[r0]             ; 080037E2
strh  r0,[r2]             ; 080037E4
add   r2,0x2              ; 080037E6
ldr   r0,=0x02011400      ; 080037E8
add   r1,r1,r0            ; 080037EA
ldrh  r0,[r1]             ; 080037EC
strh  r0,[r2]             ; 080037EE
@Code080037F0:
ldr   r1,=0x04000202      ; 080037F0
mov   r0,0x2              ; 080037F2
strh  r0,[r1]             ; 080037F4
pop   {r0}                ; 080037F6
bx    r0                  ; 080037F8
.pool                     ; 080037FA

Sub08003810:
push  {r4-r6,lr}          ; 08003810
add   sp,-0x8             ; 08003812
ldr   r5,=0x03002200      ; 08003814
ldr   r0,=0x47C6          ; 08003816
add   r1,r5,r0            ; 08003818
mov   r0,0x98             ; 0800381A
lsl   r0,r0,0x5           ; 0800381C
strh  r0,[r1]             ; 0800381E
ldr   r2,=0x47C8          ; 08003820
add   r1,r5,r2            ; 08003822
ldr   r0,=0x1E81          ; 08003824
strh  r0,[r1]             ; 08003826
ldr   r0,=0x47CA          ; 08003828
add   r1,r5,r0            ; 0800382A
ldr   r0,=0x1F0A          ; 0800382C
strh  r0,[r1]             ; 0800382E
ldr   r1,=0x47CC          ; 08003830
add   r5,r5,r1            ; 08003832
ldr   r0,=0x1D09          ; 08003834
strh  r0,[r5]             ; 08003836
mov   r0,0x6              ; 08003838
bl    Sub08013418         ; 0800383A
mov   r1,sp               ; 0800383E
mov   r2,0xA8             ; 08003840
lsl   r2,r2,0x2           ; 08003842
mov   r0,r2               ; 08003844
strh  r0,[r1]             ; 08003846
ldrh  r0,[r5]             ; 08003848
mov   r4,0xF8             ; 0800384A
lsl   r4,r4,0x5           ; 0800384C
mov   r1,r4               ; 0800384E
and   r1,r0               ; 08003850
lsl   r1,r1,0x3           ; 08003852
mov   r0,0xC0             ; 08003854
lsl   r0,r0,0x13          ; 08003856
add   r1,r1,r0            ; 08003858
ldr   r2,=0x01000400      ; 0800385A
mov   r0,sp               ; 0800385C
bl    swi_MemoryCopy4or2  ; 0800385E  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data081644D4    ; 08003862  build-date graphics
ldrh  r2,[r5]             ; 08003864
mov   r1,0xC              ; 08003866
and   r1,r2               ; 08003868
lsl   r1,r1,0xC           ; 0800386A
ldr   r2,=0x06005400      ; 0800386C
add   r1,r1,r2            ; 0800386E
bl    swi_LZ77_VRAM       ; 08003870  LZ77 decompress (VRAM)
ldrh  r0,[r5]             ; 08003874
and   r4,r0               ; 08003876
lsl   r4,r4,0x3           ; 08003878
ldr   r0,=0x0600009E      ; 0800387A
add   r4,r4,r0            ; 0800387C
mov   r1,0x0              ; 0800387E
add   r6,sp,0x4           ; 08003880
ldr   r3,=Data083077B0    ; 08003882
ldr   r0,=0xF280          ; 08003884
mov   r2,r0               ; 08003886
@Code08003888:
add   r0,r1,r3            ; 08003888
ldrb  r0,[r0]             ; 0800388A
add   r0,r2,r0            ; 0800388C
strh  r0,[r4]             ; 0800388E
add   r4,0x2              ; 08003890
add   r0,r1,0x1           ; 08003892
lsl   r0,r0,0x10          ; 08003894
lsr   r1,r0,0x10          ; 08003896
cmp   r1,0xD              ; 08003898
bls   @Code08003888       ; 0800389A
mov   r0,0x0              ; 0800389C
str   r0,[sp,0x4]         ; 0800389E
ldr   r5,=0x02010400      ; 080038A0
ldr   r2,=0x05000100      ; 080038A2
mov   r0,r6               ; 080038A4
mov   r1,r5               ; 080038A6
bl    swi_MemoryCopy4or2  ; 080038A8  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data082E6E00    ; 080038AC
mov   r1,r5               ; 080038AE
mov   r2,0xA0             ; 080038B0
bl    swi_MemoryCopy4or2  ; 080038B2  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data082E6F40    ; 080038B6
ldr   r1,=0x02010600      ; 080038B8
mov   r2,0x50             ; 080038BA
bl    swi_MemoryCopy4or2  ; 080038BC  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020105FE      ; 080038C0
ldr   r2,=0x7FFF          ; 080038C2
mov   r0,r2               ; 080038C4
strh  r0,[r1]             ; 080038C6
ldr   r1,=0x02010800      ; 080038C8
mov   r4,0x80             ; 080038CA
lsl   r4,r4,0x2           ; 080038CC
mov   r0,r5               ; 080038CE
mov   r2,r4               ; 080038D0
bl    swi_MemoryCopy4or2  ; 080038D2  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010C00      ; 080038D6
mov   r0,r5               ; 080038D8
mov   r2,r4               ; 080038DA
bl    swi_MemoryCopy4or2  ; 080038DC  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x03002200      ; 080038E0
ldr   r1,=0x4967          ; 080038E2
add   r0,r0,r1            ; 080038E4
mov   r1,0x3              ; 080038E6
strb  r1,[r0]             ; 080038E8
add   sp,0x8              ; 080038EA
pop   {r4-r6}             ; 080038EC
pop   {r0}                ; 080038EE
bx    r0                  ; 080038F0
.pool                     ; 080038F2

Sub08003954:
push  {r4-r7,lr}          ; 08003954
mov   r7,r8               ; 08003956
push  {r7}                ; 08003958
add   sp,-0x8             ; 0800395A
ldr   r4,=0x03002200      ; 0800395C
ldr   r1,=0x4904          ; 0800395E
add   r0,r4,r1            ; 08003960
mov   r6,0x0              ; 08003962
strb  r6,[r0]             ; 08003964
ldr   r0,=0x4071          ; 08003966
add   r0,r0,r4            ; 08003968
mov   r8,r0               ; 0800396A
ldrb  r5,[r0]             ; 0800396C
ldr   r1,=0x4A48          ; 0800396E
add   r3,r4,r1            ; 08003970
mov   r1,0x3              ; 08003972
and   r1,r5               ; 08003974
lsl   r1,r1,0x3           ; 08003976
ldrb  r2,[r3]             ; 08003978
mov   r0,0x19             ; 0800397A
neg   r0,r0               ; 0800397C
and   r0,r2               ; 0800397E
orr   r0,r1               ; 08003980
strb  r0,[r3]             ; 08003982
mov   r0,0xFD             ; 08003984
and   r0,r5               ; 08003986
mov   r1,r8               ; 08003988
strb  r0,[r1]             ; 0800398A
bl    Sub08002338         ; 0800398C
str   r6,[sp]             ; 08003990
mov   r1,0xC0             ; 08003992
lsl   r1,r1,0x13          ; 08003994
ldr   r2,=0x05006000      ; 08003996
mov   r0,sp               ; 08003998
bl    swi_MemoryCopy4or2  ; 0800399A  Memory copy/fill, 4- or 2-byte blocks
bl    Sub08003810         ; 0800399E
mov   r0,r4               ; 080039A2
mov   r1,0x78             ; 080039A4
bl    DynamicAllocate     ; 080039A6
mov   r7,r0               ; 080039AA
ldr   r0,=0x4A50          ; 080039AC
add   r4,r4,r0            ; 080039AE  03006C50
str   r7,[r4]             ; 080039B0
str   r6,[sp,0x4]         ; 080039B2
add   r0,sp,0x4           ; 080039B4
ldr   r2,=0x0500001E      ; 080039B6
mov   r1,r7               ; 080039B8
bl    swi_MemoryCopy4or2  ; 080039BA  Memory copy/fill, 4- or 2-byte blocks
mov   r4,0x0              ; 080039BE
mov   r1,0xF0             ; 080039C0
lsl   r1,r1,0x7           ; 080039C2
mov   r8,r1               ; 080039C4
mov   r3,r7               ; 080039C6
add   r3,0x20             ; 080039C8
mov   r6,0xC0             ; 080039CA
lsl   r6,r6,0x6           ; 080039CC
mov   r12,r6              ; 080039CE
mov   r2,r7               ; 080039D0
add   r2,0x60             ; 080039D2
ldr   r5,=Data081645DA    ; 080039D4
@Code080039D6:
lsl   r1,r4,0x2           ; 080039D6
add   r0,r7,r1            ; 080039D8
mov   r6,r8               ; 080039DA
str   r6,[r0]             ; 080039DC
add   r1,r3,r1            ; 080039DE
mov   r0,r12              ; 080039E0
str   r0,[r1]             ; 080039E2
lsl   r0,r4,0x1           ; 080039E4
add   r1,r2,r0            ; 080039E6
add   r0,r0,r5            ; 080039E8
ldrh  r0,[r0]             ; 080039EA
strh  r0,[r1]             ; 080039EC
add   r0,r4,0x1           ; 080039EE
lsl   r0,r0,0x10          ; 080039F0
lsr   r4,r0,0x10          ; 080039F2
cmp   r4,0x7              ; 080039F4
bls   @Code080039D6       ; 080039F6
ldr   r0,[r7,0x14]        ; 080039F8
mov   r1,0x80             ; 080039FA
lsl   r1,r1,0x9           ; 080039FC
add   r0,r0,r1            ; 080039FE
str   r0,[r7,0x14]        ; 08003A00
ldr   r0,[r7,0x1C]        ; 08003A02
add   r0,r0,r1            ; 08003A04
str   r0,[r7,0x1C]        ; 08003A06
mov   r1,r7               ; 08003A08
add   r1,0x70             ; 08003A0A
mov   r2,0x0              ; 08003A0C
ldr   r0,=0x0A8C          ; 08003A0E
strh  r0,[r1]             ; 08003A10
mov   r0,r7               ; 08003A12
add   r0,0x74             ; 08003A14
strh  r2,[r0]             ; 08003A16
add   r0,0x2              ; 08003A18
strh  r2,[r0]             ; 08003A1A
mov   r4,0x0              ; 08003A1C
@Code08003A1E:
mov   r0,r7               ; 08003A1E
mov   r1,r4               ; 08003A20
bl    Sub080037A8         ; 08003A22
add   r0,r4,0x1           ; 08003A26
lsl   r0,r0,0x10          ; 08003A28
lsr   r4,r0,0x10          ; 08003A2A
cmp   r4,0x3              ; 08003A2C
bls   @Code08003A1E       ; 08003A2E
ldr   r4,=DataPtrs08164608; 08003A30
ldr   r1,[r4,0xC]         ; 08003A32
mov   r0,r7               ; 08003A34
mov   r2,0x0              ; 08003A36
bl    Sub08003634         ; 08003A38
ldr   r1,[r4,0x1C]        ; 08003A3C
mov   r0,r7               ; 08003A3E
mov   r2,0x1              ; 08003A40
bl    Sub08003634         ; 08003A42
ldr   r5,[r4,0x2C]        ; 08003A46
mov   r0,r7               ; 08003A48
mov   r1,r5               ; 08003A4A
mov   r2,0x4              ; 08003A4C
bl    Sub08003634         ; 08003A4E
mov   r0,r7               ; 08003A52
mov   r1,r5               ; 08003A54
mov   r2,0x5              ; 08003A56
bl    Sub08003634         ; 08003A58
ldr   r4,[r4,0x30]        ; 08003A5C
mov   r0,r7               ; 08003A5E
mov   r1,r4               ; 08003A60
mov   r2,0x6              ; 08003A62
bl    Sub08003634         ; 08003A64
mov   r0,r7               ; 08003A68
mov   r1,r4               ; 08003A6A
mov   r2,0x7              ; 08003A6C
bl    Sub08003634         ; 08003A6E
ldr   r1,=0x03002200      ; 08003A72
ldr   r4,=0x47E4          ; 08003A74
add   r3,r1,r4            ; 08003A76
mov   r2,0x0              ; 08003A78
ldr   r6,=0x47EC          ; 08003A7A
add   r0,r1,r6            ; 08003A7C
strh  r2,[r3]             ; 08003A7E
strh  r2,[r0]             ; 08003A80
add   r4,0x2              ; 08003A82
add   r0,r1,r4            ; 08003A84
strh  r2,[r0]             ; 08003A86
add   r6,0x2              ; 08003A88
add   r0,r1,r6            ; 08003A8A
strh  r2,[r0]             ; 08003A8C
add   r4,0x2              ; 08003A8E
add   r0,r1,r4            ; 08003A90
strh  r2,[r0]             ; 08003A92
add   r6,0x2              ; 08003A94
add   r0,r1,r6            ; 08003A96
strh  r2,[r0]             ; 08003A98
add   r4,0x2              ; 08003A9A
add   r0,r1,r4            ; 08003A9C
strh  r2,[r0]             ; 08003A9E
add   r6,0x2              ; 08003AA0
add   r0,r1,r6            ; 08003AA2
strh  r2,[r0]             ; 08003AA4
ldr   r0,=0x48CE          ; 08003AA6
add   r1,r1,r0            ; 08003AA8
strh  r2,[r1]             ; 08003AAA
mov   r4,0x0              ; 08003AAC
ldr   r6,=0x02011000      ; 08003AAE
ldr   r5,=0x02011400      ; 08003AB0
@Code08003AB2:
lsl   r1,r4,0x1           ; 08003AB2
add   r2,r1,r6            ; 08003AB4
ldrh  r0,[r3]             ; 08003AB6
strh  r0,[r2]             ; 08003AB8
add   r1,r1,r5            ; 08003ABA
ldrh  r0,[r3]             ; 08003ABC
strh  r0,[r1]             ; 08003ABE
add   r0,r4,0x1           ; 08003AC0
lsl   r0,r0,0x10          ; 08003AC2
lsr   r4,r0,0x10          ; 08003AC4
cmp   r4,0xFF             ; 08003AC6
bls   @Code08003AB2       ; 08003AC8
mov   r0,0x1              ; 08003ACA  01: SMA3 title screen
bl    Sub0812C3B4         ; 08003ACC  Change music (YI)
add   sp,0x8              ; 08003AD0
pop   {r3}                ; 08003AD2
mov   r8,r3               ; 08003AD4
pop   {r4-r7}             ; 08003AD6
pop   {r0}                ; 08003AD8
bx    r0                  ; 08003ADA
.pool                     ; 08003ADC
