SMA3TitleInit:
; Game state 45: SMA3 title screen init
push  {r4-r7,lr}                ; 08003B18
mov   r7,r10                    ; 08003B1A
mov   r6,r9                     ; 08003B1C
mov   r5,r8                     ; 08003B1E
push  {r5-r7}                   ; 08003B20
ldr   r4,=0x03002200            ; 08003B22
ldr   r0,=0x48F6                ; 08003B24
add   r1,r4,r0                  ; 08003B26
mov   r0,0x5                    ; 08003B28
strb  r0,[r1]                   ; 08003B2A
ldr   r0,=0x04000054            ; 08003B2C
mov   r7,0xF                    ; 08003B2E
ldr   r1,=0x03006AFA            ; 08003B30
strb  r7,[r1]                   ; 08003B32
ldr   r2,=0x488C                ; 08003B34
add   r2,r2,r4                  ; 08003B36
mov   r10,r2                    ; 08003B38
strh  r7,[r2]                   ; 08003B3A
strh  r7,[r0]                   ; 08003B3C
sub   r0,0x4                    ; 08003B3E
ldr   r1,=0x4888                ; 08003B40
add   r1,r1,r4                  ; 08003B42
mov   r9,r1                     ; 08003B44
mov   r2,0xFF                   ; 08003B46
mov   r8,r2                     ; 08003B48
mov   r2,r8                     ; 08003B4A
strh  r2,[r1]                   ; 08003B4C
strh  r2,[r0]                   ; 08003B4E
ldr   r0,=0x47C4                ; 08003B50
add   r1,r4,r0                  ; 08003B52
mov   r0,0x8                    ; 08003B54
strh  r0,[r1]                   ; 08003B56
ldr   r1,=0x47C2                ; 08003B58
add   r6,r4,r1                  ; 08003B5A
ldr   r0,=0x2081                ; 08003B5C
strh  r0,[r6]                   ; 08003B5E
ldr   r2,=0x417C                ; 08003B60
add   r5,r4,r2                  ; 08003B62
ldr   r1,[r5]                   ; 08003B64
cmp   r1,0x0                    ; 08003B66
beq   @@Code08003B74            ; 08003B68
mov   r0,r4                     ; 08003B6A
bl    DynamicDeallocate         ; 08003B6C
mov   r0,0x0                    ; 08003B70
str   r0,[r5]                   ; 08003B72
@@Code08003B74:
ldr   r1,=0x4A50                ; 08003B74
add   r0,r4,r1                  ; 08003B76
ldr   r1,[r0]                   ; 08003B78
cmp   r1,0x0                    ; 08003B7A
beq   @@Code08003B84            ; 08003B7C
mov   r0,r4                     ; 08003B7E
bl    DynamicDeallocate         ; 08003B80
@@Code08003B84:
bl    Sub08003954               ; 08003B84
ldrh  r0,[r6]                   ; 08003B88
mov   r1,0x80                   ; 08003B8A
orr   r0,r1                     ; 08003B8C
strh  r0,[r6]                   ; 08003B8E
ldr   r2,=0x48FB                ; 08003B90
add   r1,r4,r2                  ; 08003B92
mov   r0,0x1                    ; 08003B94
strb  r0,[r1]                   ; 08003B96
mov   r0,0xF                    ; 08003B98
ldr   r1,=0x03006AFA            ; 08003B9A
strb  r0,[r1]                   ; 08003B9C
mov   r2,r10                    ; 08003B9E
strh  r7,[r2]                   ; 08003BA0
mov   r1,r8                     ; 08003BA2
mov   r0,r9                     ; 08003BA4
strh  r1,[r0]                   ; 08003BA6
ldr   r2,=0x4905                ; 08003BA8
add   r1,r4,r2                  ; 08003BAA
ldrb  r0,[r1]                   ; 08003BAC
add   r0,0x1                    ; 08003BAE
strb  r0,[r1]                   ; 08003BB0
pop   {r3-r5}                   ; 08003BB2
mov   r8,r3                     ; 08003BB4
mov   r9,r4                     ; 08003BB6
mov   r10,r5                    ; 08003BB8
pop   {r4-r7}                   ; 08003BBA
pop   {r0}                      ; 08003BBC
bx    r0                        ; 08003BBE
.pool                           ; 08003BC0

Sub08003BF4:
push  {r4-r6,lr}                ; 08003BF4
mov   r12,r0                    ; 08003BF6
add   r0,0x72                   ; 08003BF8
ldrh  r0,[r0]                   ; 08003BFA
mov   r6,r0                     ; 08003BFC
lsl   r4,r6,0x1                 ; 08003BFE
mov   r0,r12                    ; 08003C00
add   r0,0x50                   ; 08003C02
add   r5,r0,r4                  ; 08003C04
ldrh  r3,[r5]                   ; 08003C06
ldr   r0,=Data081645F6          ; 08003C08
lsl   r1,r3,0x1                 ; 08003C0A
add   r1,r1,r0                  ; 08003C0C
mov   r0,r12                    ; 08003C0E
add   r0,0x40                   ; 08003C10
add   r2,r0,r4                  ; 08003C12
ldrh  r0,[r2]                   ; 08003C14
ldrh  r1,[r1]                   ; 08003C16
cmp   r0,r1                     ; 08003C18
bhs   @@Code08003C28            ; 08003C1A
add   r0,0x1                    ; 08003C1C
strh  r0,[r2]                   ; 08003C1E
b     @@Code08003C4E            ; 08003C20
.pool                           ; 08003C22

@@Code08003C28:
mov   r0,0x0                    ; 08003C28
strh  r0,[r2]                   ; 08003C2A
add   r0,r3,0x1                 ; 08003C2C
lsl   r0,r0,0x10                ; 08003C2E
lsr   r3,r0,0x10                ; 08003C30
cmp   r3,0x2                    ; 08003C32
bls   @@Code08003C38            ; 08003C34
mov   r3,0x0                    ; 08003C36
@@Code08003C38:
strh  r3,[r5]                   ; 08003C38
mov   r1,r12                    ; 08003C3A
add   r1,0x60                   ; 08003C3C
add   r1,r1,r4                  ; 08003C3E
ldr   r2,=Data081645FC          ; 08003C40
add   r0,r4,r6                  ; 08003C42
add   r0,r0,r3                  ; 08003C44
lsl   r0,r0,0x1                 ; 08003C46
add   r0,r0,r2                  ; 08003C48
ldrh  r0,[r0]                   ; 08003C4A
strh  r0,[r1]                   ; 08003C4C
@@Code08003C4E:
pop   {r4-r6}                   ; 08003C4E
pop   {r0}                      ; 08003C50
bx    r0                        ; 08003C52
.pool                           ; 08003C54

Sub08003C58:
push  {r4,lr}                   ; 08003C58
mov   r1,r0                     ; 08003C5A
ldr   r4,=0x03002200            ; 08003C5C
mov   r0,r4                     ; 08003C5E
bl    DynamicDeallocate         ; 08003C60
ldr   r1,=0x4A50                ; 08003C64
add   r0,r4,r1                  ; 08003C66
mov   r1,0x0                    ; 08003C68
str   r1,[r0]                   ; 08003C6A
ldr   r2,=0x48FB                ; 08003C6C
add   r0,r4,r2                  ; 08003C6E
strb  r1,[r0]                   ; 08003C70
sub   r2,0x1                    ; 08003C72
add   r0,r4,r2                  ; 08003C74
strb  r1,[r0]                   ; 08003C76
sub   r2,0x6E                   ; 08003C78
add   r0,r4,r2                  ; 08003C7A
strh  r1,[r0]                   ; 08003C7C
ldr   r0,=0x4888                ; 08003C7E
add   r4,r4,r0                  ; 08003C80
mov   r0,0xFF                   ; 08003C82
strh  r0,[r4]                   ; 08003C84
mov   r0,0x10                   ; 08003C86
bl    Sub0812C458               ; 08003C88
pop   {r4}                      ; 08003C8C
pop   {r0}                      ; 08003C8E
bx    r0                        ; 08003C90
.pool                           ; 08003C92

Sub08003CA4:
push  {r4-r7,lr}                ; 08003CA4
add   sp,-0x4                   ; 08003CA6
ldr   r5,=0x02011000            ; 08003CA8
mov   r1,sp                     ; 08003CAA
ldr   r4,=0x03002200            ; 08003CAC
ldr   r0,=0x47E4                ; 08003CAE
add   r6,r4,r0                  ; 08003CB0
ldrh  r0,[r6]                   ; 08003CB2
strh  r0,[r1]                   ; 08003CB4
ldr   r2,=0x01000100            ; 08003CB6
mov   r0,sp                     ; 08003CB8
mov   r1,r5                     ; 08003CBA
bl    swi_MemoryCopy4or2        ; 08003CBC  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x48CE                ; 08003CC0
add   r4,r4,r1                  ; 08003CC2
ldrh  r1,[r4]                   ; 08003CC4
mov   r3,0x0                    ; 08003CC6
lsl   r0,r1,0x10                ; 08003CC8
mov   r7,0x2                    ; 08003CCA
add   r7,sp                     ; 08003CCC
mov   r12,r7                    ; 08003CCE
cmp   r0,0x0                    ; 08003CD0
blt   @@Code08003D06            ; 08003CD2
mov   r4,r6                     ; 08003CD4
ldr   r6,=Data081AF74E          ; 08003CD6
@@Code08003CD8:
asr   r2,r0,0x10                ; 08003CD8
cmp   r2,0xA0                   ; 08003CDA
bgt   @@Code08003CF0            ; 08003CDC
lsl   r0,r3,0x1                 ; 08003CDE
add   r0,r0,r6                  ; 08003CE0
ldrh  r0,[r0]                   ; 08003CE2
lsl   r1,r2,0x1                 ; 08003CE4
add   r1,r1,r5                  ; 08003CE6
lsr   r0,r0,0x6                 ; 08003CE8
ldrh  r7,[r4]                   ; 08003CEA
add   r0,r0,r7                  ; 08003CEC
strh  r0,[r1]                   ; 08003CEE
@@Code08003CF0:
sub   r0,r2,0x1                 ; 08003CF0
lsl   r0,r0,0x10                ; 08003CF2
lsr   r1,r0,0x10                ; 08003CF4
add   r0,r3,0x4                 ; 08003CF6
lsl   r0,r0,0x10                ; 08003CF8
lsr   r3,r0,0x10                ; 08003CFA
cmp   r3,0xFF                   ; 08003CFC
bhi   @@Code08003D06            ; 08003CFE
lsl   r0,r1,0x10                ; 08003D00
cmp   r0,0x0                    ; 08003D02
bge   @@Code08003CD8            ; 08003D04
@@Code08003D06:
ldr   r5,=0x02011400            ; 08003D06
ldr   r4,=0x03002200            ; 08003D08
ldr   r0,=0x47EC                ; 08003D0A
add   r6,r4,r0                  ; 08003D0C
ldrh  r0,[r6]                   ; 08003D0E
mov   r1,r12                    ; 08003D10
strh  r0,[r1]                   ; 08003D12
ldr   r2,=0x01000100            ; 08003D14
mov   r0,r12                    ; 08003D16
mov   r1,r5                     ; 08003D18
bl    swi_MemoryCopy4or2        ; 08003D1A  Memory copy/fill, 4- or 2-byte blocks
ldr   r7,=0x48CE                ; 08003D1E
add   r4,r4,r7                  ; 08003D20
ldrh  r1,[r4]                   ; 08003D22
mov   r3,0x0                    ; 08003D24
lsl   r0,r1,0x10                ; 08003D26
cmp   r0,0x0                    ; 08003D28
blt   @@Code08003D5E            ; 08003D2A
mov   r4,r6                     ; 08003D2C
ldr   r6,=Data081AF74E          ; 08003D2E
@@Code08003D30:
asr   r2,r0,0x10                ; 08003D30
cmp   r2,0xA0                   ; 08003D32
bgt   @@Code08003D48            ; 08003D34
lsl   r0,r3,0x1                 ; 08003D36
add   r0,r0,r6                  ; 08003D38
ldrh  r0,[r0]                   ; 08003D3A
lsl   r1,r2,0x1                 ; 08003D3C
add   r1,r1,r5                  ; 08003D3E
lsr   r0,r0,0x6                 ; 08003D40
ldrh  r7,[r4]                   ; 08003D42
add   r0,r0,r7                  ; 08003D44
strh  r0,[r1]                   ; 08003D46
@@Code08003D48:
sub   r0,r2,0x1                 ; 08003D48
lsl   r0,r0,0x10                ; 08003D4A
lsr   r1,r0,0x10                ; 08003D4C
add   r0,r3,0x4                 ; 08003D4E
lsl   r0,r0,0x10                ; 08003D50
lsr   r3,r0,0x10                ; 08003D52
cmp   r3,0xFF                   ; 08003D54
bhi   @@Code08003D5E            ; 08003D56
lsl   r0,r1,0x10                ; 08003D58
cmp   r0,0x0                    ; 08003D5A
bge   @@Code08003D30            ; 08003D5C
@@Code08003D5E:
ldr   r0,=0x03002200            ; 08003D5E
ldr   r1,=0x48CE                ; 08003D60
add   r2,r0,r1                  ; 08003D62
ldrh  r0,[r2]                   ; 08003D64
add   r0,0x1                    ; 08003D66
strh  r0,[r2]                   ; 08003D68
lsl   r0,r0,0x10                ; 08003D6A
ldr   r1,=0x01DF0000            ; 08003D6C
cmp   r0,r1                     ; 08003D6E
bls   @@Code08003D76            ; 08003D70
mov   r0,0x0                    ; 08003D72
strh  r0,[r2]                   ; 08003D74
@@Code08003D76:
add   sp,0x4                    ; 08003D76
pop   {r4-r7}                   ; 08003D78
pop   {r0}                      ; 08003D7A
bx    r0                        ; 08003D7C
.pool                           ; 08003D7E

Sub08003DA4:
push  {r4-r6,lr}                ; 08003DA4
mov   r5,r0                     ; 08003DA6
ldr   r6,=0x03002200            ; 08003DA8
ldr   r1,=0x47C0                ; 08003DAA
add   r0,r6,r1                  ; 08003DAC
ldrh  r4,[r0]                   ; 08003DAE
ldr   r0,=0x03FF                ; 08003DB0
and   r0,r4                     ; 08003DB2
cmp   r0,0x0                    ; 08003DB4
beq   @@Code08003E04            ; 08003DB6
ldr   r1,=Data081645C8          ; 08003DB8
mov   r3,r5                     ; 08003DBA
add   r3,0x76                   ; 08003DBC
ldrh  r2,[r3]                   ; 08003DBE
lsl   r0,r2,0x1                 ; 08003DC0
add   r0,r0,r1                  ; 08003DC2
ldrh  r0,[r0]                   ; 08003DC4
and   r0,r4                     ; 08003DC6
cmp   r0,0x0                    ; 08003DC8
bne   @@Code08003DE0            ; 08003DCA
strh  r0,[r3]                   ; 08003DCC
b     @@Code08003E04            ; 08003DCE
.pool                           ; 08003DD0

@@Code08003DE0:
add   r0,r2,0x1                 ; 08003DE0
strh  r0,[r3]                   ; 08003DE2
lsl   r0,r0,0x10                ; 08003DE4
lsr   r0,r0,0x10                ; 08003DE6
cmp   r0,0x8                    ; 08003DE8
bls   @@Code08003E04            ; 08003DEA
ldr   r3,=0x47C6                ; 08003DEC
add   r2,r6,r3                  ; 08003DEE
ldrh  r0,[r2]                   ; 08003DF0
mov   r3,0x80                   ; 08003DF2
lsl   r3,r3,0x3                 ; 08003DF4
mov   r1,r3                     ; 08003DF6
orr   r0,r1                     ; 08003DF8
strh  r0,[r2]                   ; 08003DFA
mov   r1,r5                     ; 08003DFC
add   r1,0x74                   ; 08003DFE
mov   r0,0xB4                   ; 08003E00
strh  r0,[r1]                   ; 08003E02
@@Code08003E04:
pop   {r4-r6}                   ; 08003E04
pop   {r0}                      ; 08003E06
bx    r0                        ; 08003E08
.pool                           ; 08003E0A

SMA3TitleMain:
; Game state 47: SMA3 title screen
push  {r4-r7,lr}                ; 08003E10
mov   r7,r10                    ; 08003E12
mov   r6,r9                     ; 08003E14
mov   r5,r8                     ; 08003E16
push  {r5-r7}                   ; 08003E18
ldr   r4,=0x03002200            ; 08003E1A
ldr   r1,=0x4A50                ; 08003E1C
add   r0,r4,r1                  ; 08003E1E
ldr   r7,[r0]                   ; 08003E20
bl    Sub08003CA4               ; 08003E22
bl    Sub08002338               ; 08003E26
ldr   r2,=0x47D0                ; 08003E2A
add   r4,r4,r2                  ; 08003E2C
mov   r0,0x0                    ; 08003E2E
strh  r0,[r4]                   ; 08003E30
mov   r6,0x0                    ; 08003E32
@@Code08003E34:
mov   r0,r7                     ; 08003E34
mov   r1,r6                     ; 08003E36
bl    Sub080037A8               ; 08003E38
add   r0,r6,0x1                 ; 08003E3C
lsl   r0,r0,0x10                ; 08003E3E
lsr   r6,r0,0x10                ; 08003E40
cmp   r6,0x3                    ; 08003E42
bls   @@Code08003E34            ; 08003E44
ldr   r4,=DataPtrs08164608      ; 08003E46
ldr   r1,[r4,0xC]               ; 08003E48
mov   r0,r7                     ; 08003E4A
mov   r2,0x0                    ; 08003E4C
bl    Sub08003634               ; 08003E4E
ldr   r1,[r4,0x1C]              ; 08003E52
mov   r0,r7                     ; 08003E54
mov   r2,0x1                    ; 08003E56
bl    Sub08003634               ; 08003E58
ldr   r5,[r4,0x2C]              ; 08003E5C
mov   r0,r7                     ; 08003E5E
mov   r1,r5                     ; 08003E60
mov   r2,0x4                    ; 08003E62
bl    Sub08003634               ; 08003E64
mov   r0,r7                     ; 08003E68
mov   r1,r5                     ; 08003E6A
mov   r2,0x5                    ; 08003E6C
bl    Sub08003634               ; 08003E6E
ldr   r4,[r4,0x30]              ; 08003E72
mov   r0,r7                     ; 08003E74
mov   r1,r4                     ; 08003E76
mov   r2,0x6                    ; 08003E78
bl    Sub08003634               ; 08003E7A
mov   r0,r7                     ; 08003E7E
mov   r1,r4                     ; 08003E80
mov   r2,0x7                    ; 08003E82
bl    Sub08003634               ; 08003E84
ldr   r0,[r7,0x10]              ; 08003E88
sub   r0,0x60                   ; 08003E8A
str   r0,[r7,0x10]              ; 08003E8C
ldr   r0,[r7,0x14]              ; 08003E8E
sub   r0,0x60                   ; 08003E90
str   r0,[r7,0x14]              ; 08003E92
ldr   r0,[r7,0x18]              ; 08003E94
sub   r0,0x20                   ; 08003E96
str   r0,[r7,0x18]              ; 08003E98
ldr   r0,[r7,0x1C]              ; 08003E9A
sub   r0,0x20                   ; 08003E9C
str   r0,[r7,0x1C]              ; 08003E9E
ldr   r3,=0x03002200            ; 08003EA0
mov   r8,r3                     ; 08003EA2
ldr   r0,=0x47C0                ; 08003EA4
add   r0,r8                     ; 08003EA6
mov   r9,r0                     ; 08003EA8
ldrh  r1,[r0]                   ; 08003EAA
mov   r0,0xC4                   ; 08003EAC
and   r0,r1                     ; 08003EAE
cmp   r0,0x0                    ; 08003EB0
beq   @@Code08003F18            ; 08003EB2
ldr   r1,=0x4058                ; 08003EB4
add   r1,r8                     ; 08003EB6
mov   r4,0x0                    ; 08003EB8
mov   r0,0x78                   ; 08003EBA
strh  r0,[r1]                   ; 08003EBC
ldr   r0,=0x405A                ; 08003EBE
add   r0,r8                     ; 08003EC0
strh  r4,[r0]                   ; 08003EC2
mov   r0,0x22                   ; 08003EC4
bl    PlayYISound               ; 08003EC6
mov   r1,0x72                   ; 08003ECA
add   r1,r1,r7                  ; 08003ECC
mov   r12,r1                    ; 08003ECE
ldrh  r0,[r1]                   ; 08003ED0
mov   r5,0x1                    ; 08003ED2
mov   r6,0x1                    ; 08003ED4
and   r6,r0                     ; 08003ED6
lsl   r0,r6,0x1                 ; 08003ED8
mov   r3,r7                     ; 08003EDA
add   r3,0x60                   ; 08003EDC
add   r2,r3,r0                  ; 08003EDE
ldr   r1,=Data081645EA          ; 08003EE0
add   r0,r0,r1                  ; 08003EE2
ldrh  r0,[r0]                   ; 08003EE4
strh  r0,[r2]                   ; 08003EE6
eor   r6,r5                     ; 08003EE8
lsl   r0,r6,0x10                ; 08003EEA
lsr   r6,r0,0x10                ; 08003EEC
lsl   r2,r6,0x1                 ; 08003EEE
add   r3,r3,r2                  ; 08003EF0
ldr   r0,=Data081645EE          ; 08003EF2
add   r0,r2,r0                  ; 08003EF4
ldrh  r0,[r0]                   ; 08003EF6
strh  r0,[r3]                   ; 08003EF8
mov   r3,r12                    ; 08003EFA
strh  r6,[r3]                   ; 08003EFC
ldr   r0,=Data081645F2          ; 08003EFE
add   r0,r2,r0                  ; 08003F00
ldrh  r1,[r0]                   ; 08003F02
mov   r0,r7                     ; 08003F04
add   r0,0x64                   ; 08003F06
strh  r1,[r0]                   ; 08003F08
sub   r0,0x24                   ; 08003F0A
add   r0,r0,r2                  ; 08003F0C
strh  r4,[r0]                   ; 08003F0E
mov   r0,r7                     ; 08003F10
add   r0,0x50                   ; 08003F12
add   r0,r0,r2                  ; 08003F14
strh  r4,[r0]                   ; 08003F16
@@Code08003F18:
mov   r0,r7                     ; 08003F18
bl    Sub08003BF4               ; 08003F1A
mov   r0,r9                     ; 08003F1E
ldrh  r1,[r0]                   ; 08003F20
mov   r0,0x2                    ; 08003F22
and   r0,r1                     ; 08003F24
cmp   r0,0x0                    ; 08003F26
beq   @@Code08003F8C            ; 08003F28
ldr   r1,=0x4905                ; 08003F2A
add   r1,r8                     ; 08003F2C
mov   r4,0x0                    ; 08003F2E
mov   r0,0x2                    ; 08003F30
strb  r0,[r1]                   ; 08003F32
mov   r0,r7                     ; 08003F34
bl    Sub08003C58               ; 08003F36
ldr   r0,=0x4904                ; 08003F3A
add   r0,r8                     ; 08003F3C
strb  r4,[r0]                   ; 08003F3E
ldr   r0,=0x4A48                ; 08003F40
add   r0,r8                     ; 08003F42
ldrb  r0,[r0]                   ; 08003F44
lsl   r0,r0,0x1B                ; 08003F46
lsr   r0,r0,0x1E                ; 08003F48
ldr   r1,=0x4071                ; 08003F4A
add   r1,r8                     ; 08003F4C
strb  r0,[r1]                   ; 08003F4E
b     @@Code08004102            ; 08003F50
.pool                           ; 08003F52

@@Code08003F8C:
mov   r1,r7                     ; 08003F8C
add   r1,0x74                   ; 08003F8E
ldrh  r0,[r1]                   ; 08003F90
cmp   r0,0x0                    ; 08003F92
beq   @@Code08003FB0            ; 08003F94
sub   r0,0x1                    ; 08003F96
strh  r0,[r1]                   ; 08003F98
lsl   r0,r0,0x10                ; 08003F9A
cmp   r0,0x0                    ; 08003F9C
bne   @@Code08003FB0            ; 08003F9E
ldr   r0,=0x47C6                ; 08003FA0
add   r0,r8                     ; 08003FA2
ldrh  r1,[r0]                   ; 08003FA4
mov   r3,0x80                   ; 08003FA6
lsl   r3,r3,0x3                 ; 08003FA8
mov   r2,r3                     ; 08003FAA
eor   r1,r2                     ; 08003FAC
strh  r1,[r0]                   ; 08003FAE
@@Code08003FB0:
ldr   r4,=0x03002200            ; 08003FB0
ldr   r1,=0x47C0                ; 08003FB2
add   r0,r4,r1                  ; 08003FB4
ldrh  r1,[r0]                   ; 08003FB6
mov   r0,0x9                    ; 08003FB8
and   r0,r1                     ; 08003FBA
cmp   r0,0x0                    ; 08003FBC
bne   @@Code08004044            ; 08003FBE
mov   r0,r7                     ; 08003FC0
bl    Sub08003DA4               ; 08003FC2
ldr   r2,=0x47BE                ; 08003FC6
add   r0,r4,r2                  ; 08003FC8
ldrh  r1,[r0]                   ; 08003FCA
ldr   r0,=0x03FF                ; 08003FCC
and   r0,r1                     ; 08003FCE
cmp   r0,0x0                    ; 08003FD0
beq   @@Code08003FF8            ; 08003FD2
mov   r1,r7                     ; 08003FD4
add   r1,0x70                   ; 08003FD6
ldr   r0,=0x0A8C                ; 08003FD8
strh  r0,[r1]                   ; 08003FDA
b     @@Code08004102            ; 08003FDC
.pool                           ; 08003FDE

@@Code08003FF8:
mov   r1,r7                     ; 08003FF8
add   r1,0x70                   ; 08003FFA
ldrh  r0,[r1]                   ; 08003FFC
sub   r0,0x1                    ; 08003FFE
strh  r0,[r1]                   ; 08004000
lsl   r0,r0,0x10                ; 08004002
cmp   r0,0x0                    ; 08004004
beq   @@Code0800400A            ; 08004006
b     @@Code08004102            ; 08004008
@@Code0800400A:
ldr   r3,=0x4905                ; 0800400A
add   r1,r4,r3                  ; 0800400C
mov   r0,0x2                    ; 0800400E
strb  r0,[r1]                   ; 08004010
mov   r0,r7                     ; 08004012
bl    Sub08003C58               ; 08004014
ldr   r0,=0x4904                ; 08004018
add   r1,r4,r0                  ; 0800401A
mov   r0,0x0                    ; 0800401C
strb  r0,[r1]                   ; 0800401E
ldr   r1,=0x4A48                ; 08004020
add   r0,r4,r1                  ; 08004022
ldrb  r0,[r0]                   ; 08004024
lsl   r0,r0,0x1B                ; 08004026
lsr   r0,r0,0x1E                ; 08004028
ldr   r2,=0x4071                ; 0800402A
add   r1,r4,r2                  ; 0800402C
strb  r0,[r1]                   ; 0800402E
b     @@Code08004102            ; 08004030
.pool                           ; 08004032

@@Code08004044:
ldr   r3,=0x4058                ; 08004044
add   r5,r4,r3                  ; 08004046
mov   r0,0x0                    ; 08004048
mov   r8,r0                     ; 0800404A
mov   r1,0x0                    ; 0800404C
mov   r0,0x78                   ; 0800404E
strh  r0,[r5]                   ; 08004050
ldr   r2,=0x405A                ; 08004052
add   r0,r4,r2                  ; 08004054
strh  r1,[r0]                   ; 08004056
ldr   r3,=0x4904                ; 08004058
add   r3,r3,r4                  ; 0800405A
mov   r9,r3                     ; 0800405C
mov   r0,r8                     ; 0800405E
strb  r0,[r3]                   ; 08004060
ldr   r1,=0x4A48                ; 08004062
add   r6,r4,r1                  ; 08004064
ldrb  r0,[r6]                   ; 08004066
lsl   r0,r0,0x1B                ; 08004068
lsr   r0,r0,0x1E                ; 0800406A
add   r2,0x17                   ; 0800406C
add   r2,r2,r4                  ; 0800406E
mov   r10,r2                    ; 08004070
strb  r0,[r2]                   ; 08004072
mov   r0,r7                     ; 08004074
add   r0,0x72                   ; 08004076
ldrh  r0,[r0]                   ; 08004078
cmp   r0,0x0                    ; 0800407A
beq   @@Code08004094            ; 0800407C
cmp   r0,0x1                    ; 0800407E
beq   @@Code080040B4            ; 08004080
b     @@Code08004102            ; 08004082
.pool                           ; 08004084

@@Code08004094:
mov   r0,0x6B                   ; 08004094
mov   r1,r5                     ; 08004096
bl    PlayYISound               ; 08004098
ldrb  r1,[r6]                   ; 0800409C
mov   r0,0x2                    ; 0800409E
neg   r0,r0                     ; 080040A0
and   r0,r1                     ; 080040A2
strb  r0,[r6]                   ; 080040A4
ldr   r3,=0x4905                ; 080040A6
add   r1,r4,r3                  ; 080040A8
mov   r0,0x2E                   ; 080040AA
strb  r0,[r1]                   ; 080040AC
b     @@Code080040EC            ; 080040AE
.pool                           ; 080040B0

@@Code080040B4:
bl    Sub0810F7E0               ; 080040B4
lsl   r0,r0,0x18                ; 080040B8
lsr   r0,r0,0x18                ; 080040BA
cmp   r0,0x1                    ; 080040BC
beq   @@Code080040CA            ; 080040BE
mov   r0,0x5D                   ; 080040C0
mov   r1,0x0                    ; 080040C2
bl    PlayYISound               ; 080040C4
b     @@Code08004102            ; 080040C8
@@Code080040CA:
mov   r0,0x6B                   ; 080040CA
mov   r1,r5                     ; 080040CC
bl    PlayYISound               ; 080040CE
ldr   r3,=0x4B64                ; 080040D2
add   r1,r4,r3                  ; 080040D4
mov   r0,0x2                    ; 080040D6
strb  r0,[r1]                   ; 080040D8
ldr   r1,=0x4906                ; 080040DA
add   r0,r4,r1                  ; 080040DC
mov   r2,r8                     ; 080040DE
strb  r2,[r0]                   ; 080040E0
ldr   r3,=0x4905                ; 080040E2
add   r0,r4,r3                  ; 080040E4
strb  r2,[r0]                   ; 080040E6
bl    Sub0812D0B4               ; 080040E8
@@Code080040EC:
mov   r0,r7                     ; 080040EC
bl    Sub08003C58               ; 080040EE
mov   r1,r8                     ; 080040F2
mov   r0,r9                     ; 080040F4
strb  r1,[r0]                   ; 080040F6
ldrb  r0,[r6]                   ; 080040F8
lsl   r0,r0,0x1B                ; 080040FA
lsr   r0,r0,0x1E                ; 080040FC
mov   r2,r10                    ; 080040FE
strb  r0,[r2]                   ; 08004100
@@Code08004102:
pop   {r3-r5}                   ; 08004102
mov   r8,r3                     ; 08004104
mov   r9,r4                     ; 08004106
mov   r10,r5                    ; 08004108
pop   {r4-r7}                   ; 0800410A
pop   {r0}                      ; 0800410C
bx    r0                        ; 0800410E
.pool                           ; 08004110

Sub0800411C:
; Game state 48
push  {lr}                      ; 0800411C
ldr   r2,=0x03002200            ; 0800411E
ldr   r0,=0x488C                ; 08004120
add   r1,r2,r0                  ; 08004122
ldrh  r0,[r1]                   ; 08004124
sub   r0,0x1                    ; 08004126
strh  r0,[r1]                   ; 08004128
lsl   r0,r0,0x10                ; 0800412A
cmp   r0,0x0                    ; 0800412C
bne   @@Code08004138            ; 0800412E
ldr   r0,=0x4905                ; 08004130
add   r1,r2,r0                  ; 08004132
mov   r0,0x47                   ; 08004134
strb  r0,[r1]                   ; 08004136
@@Code08004138:
pop   {r0}                      ; 08004138
bx    r0                        ; 0800413A
.pool                           ; 0800413C

Sub08004148:
; Game state 14
push  {lr}                      ; 08004148
bl    Sub0802E020               ; 0800414A
ldr   r1,=0x03002200            ; 0800414E
ldr   r0,=0x4A0D                ; 08004150
add   r2,r1,r0                  ; 08004152
mov   r0,0xFF                   ; 08004154
strb  r0,[r2]                   ; 08004156
ldr   r0,=0x413C                ; 08004158
add   r2,r1,r0                  ; 0800415A
mov   r0,0xC                    ; 0800415C
strh  r0,[r2]                   ; 0800415E
ldr   r0,=0x484C                ; 08004160
add   r2,r1,r0                  ; 08004162
ldrh  r0,[r2]                   ; 08004164
add   r0,0x1                    ; 08004166
strh  r0,[r2]                   ; 08004168
ldr   r0,=0x4905                ; 0800416A
add   r1,r1,r0                  ; 0800416C
ldrb  r0,[r1]                   ; 0800416E
add   r0,0x1                    ; 08004170
strb  r0,[r1]                   ; 08004172
pop   {r0}                      ; 08004174
bx    r0                        ; 08004176
.pool                           ; 08004178

YITitleInit:
; Game state 07/15
push  {r4,lr}                   ; 0800418C
ldr   r4,=0x03002200            ; 0800418E
ldr   r0,=0x4905                ; 08004190
add   r1,r4,r0                  ; 08004192  r0 = 03006B05
ldrb  r0,[r1]                   ; 08004194 \
add   r0,0x1                    ; 08004196 | increment game state
mov   r2,0x0                    ; 08004198 |
strb  r0,[r1]                   ; 0800419A /
ldr   r1,=0x4906                ; 0800419C
add   r0,r4,r1                  ; 0800419E
strb  r2,[r0]                   ; 080041A0
ldr   r0,=0x02027C00            ; 080041A2
mov   r1,0xA0                   ; 080041A4
lsl   r1,r1,0x13                ; 080041A6
mov   r3,0x80                   ; 080041A8
lsl   r3,r3,0x3                 ; 080041AA
bl    Sub0810B7AC               ; 080041AC
ldr   r0,=0x48F6                ; 080041B0
add   r4,r4,r0                  ; 080041B2
mov   r0,0x4                    ; 080041B4
strb  r0,[r4]                   ; 080041B6
pop   {r4}                      ; 080041B8
pop   {r0}                      ; 080041BA
bx    r0                        ; 080041BC
.pool                           ; 080041BE

YITitleMainWrapper:
; Game state 08/16: YI title screen/Castle destruction cutscene... just a wrapper for a jump elsewhere
push  {lr}                      ; 080041D4
bl    YITitleMain               ; 080041D6
pop   {r0}                      ; 080041DA
bx    r0                        ; 080041DC
.pool                           ; 080041DE
