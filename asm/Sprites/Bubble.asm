Sub08051C68:
push  {r4,lr}                       ; 08051C68
mov   r4,r0                         ; 08051C6A
ldr   r1,=0x03002200                ; 08051C6C
ldrh  r0,[r4,0x20]                  ; 08051C6E
ldr   r2,=0x4058                    ; 08051C70
add   r1,r1,r2                      ; 08051C72
strh  r0,[r1]                       ; 08051C74
mov   r0,0x8D                       ; 08051C76
bl    PlayYISound                   ; 08051C78
mov   r0,0xED                       ; 08051C7C
lsl   r0,r0,0x1                     ; 08051C7E
bl    SpawnSecondarySprite          ; 08051C80
lsl   r0,r0,0x18                    ; 08051C84
lsr   r0,r0,0x18                    ; 08051C86
ldr   r2,=0x03007240                ; 08051C88  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 08051C8A
mul   r0,r1                         ; 08051C8C
ldr   r1,=0x1AF4                    ; 08051C8E
add   r0,r0,r1                      ; 08051C90
ldr   r1,[r2]                       ; 08051C92
add   r1,r1,r0                      ; 08051C94
ldr   r0,[r4]                       ; 08051C96
str   r0,[r1]                       ; 08051C98
ldr   r0,[r4,0x4]                   ; 08051C9A
str   r0,[r1,0x4]                   ; 08051C9C
mov   r2,r1                         ; 08051C9E
add   r2,0x6A                       ; 08051CA0
mov   r0,0xA                        ; 08051CA2
strh  r0,[r2]                       ; 08051CA4
add   r1,0x42                       ; 08051CA6
mov   r0,0x2                        ; 08051CA8
strh  r0,[r1]                       ; 08051CAA
mov   r0,r4                         ; 08051CAC
bl    DespawnSprite                 ; 08051CAE
pop   {r4}                          ; 08051CB2
pop   {r0}                          ; 08051CB4
bx    r0                            ; 08051CB6
.pool                               ; 08051CB8

Sub08051CC8:
push  {r4-r7,lr}                    ; 08051CC8
mov   r7,r8                         ; 08051CCA
push  {r7}                          ; 08051CCC
mov   r8,r0                         ; 08051CCE
ldr   r4,=0x03002200                ; 08051CD0
ldr   r7,=0x0300702C                ; 08051CD2  Sprite RAM structs (03002460)
ldr   r0,[r7]                       ; 08051CD4
ldr   r6,=0x156E                    ; 08051CD6
add   r0,r0,r6                      ; 08051CD8
ldrb  r1,[r0]                       ; 08051CDA
ldr   r2,=0x47F6                    ; 08051CDC
add   r0,r4,r2                      ; 08051CDE
strh  r1,[r0]                       ; 08051CE0
bl    Sub0808F6D0                   ; 08051CE2
ldr   r3,=0x4810                    ; 08051CE6
add   r4,r4,r3                      ; 08051CE8
mov   r1,0x0                        ; 08051CEA
ldsh  r0,[r4,r1]                    ; 08051CEC
cmp   r0,0x0                        ; 08051CEE
blt   @@Return                      ; 08051CF0
ldr   r1,=0x03007240                ; 08051CF2  Normal gameplay IWRAM (Ptr to 0300220C)
ldrh  r2,[r4]                       ; 08051CF4
mov   r0,0xB0                       ; 08051CF6
mul   r0,r2                         ; 08051CF8
mov   r3,0x95                       ; 08051CFA
lsl   r3,r3,0x2                     ; 08051CFC
add   r0,r0,r3                      ; 08051CFE
ldr   r1,[r1]                       ; 08051D00
add   r5,r1,r0                      ; 08051D02
ldrh  r0,[r5,0x24]                  ; 08051D04
cmp   r0,0x8                        ; 08051D06
bne   @@Return                      ; 08051D08
ldrh  r1,[r5,0x2A]                  ; 08051D0A
mov   r0,0x20                       ; 08051D0C
and   r0,r1                         ; 08051D0E
cmp   r0,0x0                        ; 08051D10
beq   @@Return                      ; 08051D12
ldrh  r1,[r5,0x32]                  ; 08051D14
mov   r0,0xD2                       ; 08051D16
lsl   r0,r0,0x1                     ; 08051D18
cmp   r1,r0                         ; 08051D1A
bls   @@Code08051D38                ; 08051D1C
add   r0,0x5                        ; 08051D1E
cmp   r1,r0                         ; 08051D20
bhi   @@Code08051D38                ; 08051D22
ldr   r0,[r7]                       ; 08051D24
add   r0,r0,r6                      ; 08051D26
ldrb  r4,[r0]                       ; 08051D28
strb  r2,[r0]                       ; 08051D2A
mov   r0,r5                         ; 08051D2C
bl    Sub080B1CF4                   ; 08051D2E
ldr   r0,[r7]                       ; 08051D32
add   r0,r0,r6                      ; 08051D34
strb  r4,[r0]                       ; 08051D36
@@Code08051D38:
mov   r0,r5                         ; 08051D38
add   r0,0x52                       ; 08051D3A
ldrh  r1,[r0]                       ; 08051D3C
mov   r0,0x80                       ; 08051D3E
lsl   r0,r0,0x8                     ; 08051D40
and   r0,r1                         ; 08051D42
cmp   r0,0x0                        ; 08051D44
bne   @@Code08051D68                ; 08051D46
mov   r0,0x80                       ; 08051D48
lsl   r0,r0,0x2                     ; 08051D4A
b     @@Code08051D6A                ; 08051D4C
.pool                               ; 08051D4E

@@Code08051D68:
ldr   r0,=0xFFFFFE00                ; 08051D68
@@Code08051D6A:
str   r0,[r5,0x8]                   ; 08051D6A
ldr   r0,=0xFFFFFC00                ; 08051D6C
str   r0,[r5,0xC]                   ; 08051D6E
mov   r2,r5                         ; 08051D70
add   r2,0x5E                       ; 08051D72
mov   r1,0x0                        ; 08051D74
mov   r0,0x20                       ; 08051D76
strh  r0,[r2]                       ; 08051D78
mov   r0,r5                         ; 08051D7A
add   r0,0x6A                       ; 08051D7C
strh  r1,[r0]                       ; 08051D7E
mov   r0,r8                         ; 08051D80
bl    Sub08051C68                   ; 08051D82
@@Return:
pop   {r3}                          ; 08051D86
mov   r8,r3                         ; 08051D88
pop   {r4-r7}                       ; 08051D8A
pop   {r0}                          ; 08051D8C
bx    r0                            ; 08051D8E
.pool                               ; 08051D90

Sub08051D98:
push  {lr}                          ; 08051D98
mov   r3,r0                         ; 08051D9A
add   r0,0xA3                       ; 08051D9C
ldrb  r1,[r0]                       ; 08051D9E
mov   r0,0x80                       ; 08051DA0
and   r0,r1                         ; 08051DA2
cmp   r0,0x0                        ; 08051DA4
beq   @@Code08051DD8                ; 08051DA6
mov   r0,r3                         ; 08051DA8
add   r0,0x9F                       ; 08051DAA
ldrb  r0,[r0]                       ; 08051DAC
ldr   r1,=0x03006D80                ; 08051DAE
ldr   r2,=Data08172254              ; 08051DB0
lsr   r0,r0,0x1                     ; 08051DB2
lsl   r0,r0,0x2                     ; 08051DB4
add   r0,r0,r2                      ; 08051DB6
ldr   r0,[r0]                       ; 08051DB8
str   r0,[r1,0x28]                  ; 08051DBA
ldr   r0,=0xFFFFFA00                ; 08051DBC
str   r0,[r1,0xC]                   ; 08051DBE
mov   r0,0x8                        ; 08051DC0
strh  r0,[r1,0x3E]                  ; 08051DC2
mov   r0,r3                         ; 08051DC4
bl    Sub08051C68                   ; 08051DC6
b     @@Return                      ; 08051DCA
.pool                               ; 08051DCC

@@Code08051DD8:
mov   r0,r3                         ; 08051DD8
bl    Sub08051CC8                   ; 08051DDA
@@Return:
pop   {r0}                          ; 08051DDE
bx    r0                            ; 08051DE0
.pool                               ; 08051DE2

Bubble_Main:
; sprite 019 main
push  {r4-r7,lr}                    ; 08051DE4
mov   r7,r8                         ; 08051DE6
push  {r7}                          ; 08051DE8
mov   r4,r0                         ; 08051DEA
bl    Sub0804C330                   ; 08051DEC
mov   r2,r0                         ; 08051DF0
cmp   r2,0x0                        ; 08051DF2
beq   @@Code08051DF8                ; 08051DF4
b     @@Return                      ; 08051DF6
@@Code08051DF8:
mov   r1,r4                         ; 08051DF8
add   r1,0x42                       ; 08051DFA
ldrh  r0,[r1]                       ; 08051DFC
mov   r8,r1                         ; 08051DFE
cmp   r0,0x0                        ; 08051E00
bne   @@Code08051E8C                ; 08051E02
mov   r0,r4                         ; 08051E04
add   r0,0x44                       ; 08051E06
ldrh  r2,[r0]                       ; 08051E08
cmp   r2,0x0                        ; 08051E0A
beq   @@Code08051E20                ; 08051E0C
lsr   r2,r2,0x1                     ; 08051E0E
cmp   r2,0x0                        ; 08051E10
beq   @@Code08051E1C                ; 08051E12
mov   r0,r4                         ; 08051E14
bl    Sub08051CC8                   ; 08051E16
b     @@Code08051E26                ; 08051E1A
@@Code08051E1C:
mov   r0,0x1                        ; 08051E1C
strh  r0,[r4,0x38]                  ; 08051E1E
@@Code08051E20:
mov   r0,r4                         ; 08051E20
bl    Sub08051D98                   ; 08051E22
@@Code08051E26:
ldr   r0,=0x03007240                ; 08051E26  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08051E28
ldr   r1,=0x29CC                    ; 08051E2A
add   r0,r0,r1                      ; 08051E2C
ldrh  r3,[r0]                       ; 08051E2E
mov   r0,0x3                        ; 08051E30
and   r0,r3                         ; 08051E32
lsl   r2,r0,0x1                     ; 08051E34
mov   r6,r2                         ; 08051E36
ldr   r5,[r4,0x8]                   ; 08051E38
cmp   r5,0x0                        ; 08051E3A
bge   @@Code08051E42                ; 08051E3C
add   r0,r2,0x1                     ; 08051E3E
mov   r2,r0                         ; 08051E40
@@Code08051E42:
ldr   r7,=Data08172288              ; 08051E42
lsl   r0,r2,0x2                     ; 08051E44
add   r0,r0,r7                      ; 08051E46
ldr   r1,[r0]                       ; 08051E48
add   r0,r5,r1                      ; 08051E4A
str   r0,[r4,0x8]                   ; 08051E4C
eor   r0,r1                         ; 08051E4E
cmp   r0,0x0                        ; 08051E50
blt   @@Code08051E66                ; 08051E52
mov   r0,0x6                        ; 08051E54
and   r3,r0                         ; 08051E56
add   r1,r3,0x4                     ; 08051E58
mov   r0,r4                         ; 08051E5A
add   r0,0x40                       ; 08051E5C
strh  r1,[r0]                       ; 08051E5E
mov   r0,0x30                       ; 08051E60
mov   r5,r8                         ; 08051E62
strh  r0,[r5]                       ; 08051E64
@@Code08051E66:
ldr   r3,[r4,0xC]                   ; 08051E66
mov   r1,r3                         ; 08051E68
add   r1,0x80                       ; 08051E6A
cmp   r1,0x0                        ; 08051E6C
bge   @@Return                      ; 08051E6E
mov   r2,r6                         ; 08051E70
add   r0,r2,0x1                     ; 08051E72
lsl   r0,r0,0x2                     ; 08051E74
add   r0,r0,r7                      ; 08051E76
ldr   r0,[r0]                       ; 08051E78
add   r0,r3,r0                      ; 08051E7A
str   r0,[r4,0xC]                   ; 08051E7C
b     @@Return                      ; 08051E7E
.pool                               ; 08051E80

@@Code08051E8C:
str   r2,[r4,0x8]                   ; 08051E8C
ldrh  r2,[r1]                       ; 08051E8E
cmp   r2,0x1                        ; 08051E90
bne   @@Code08051E9C                ; 08051E92
mov   r0,r4                         ; 08051E94
bl    DespawnSprite                 ; 08051E96
b     @@Return                      ; 08051E9A
@@Code08051E9C:
mov   r3,0x3                        ; 08051E9C
mov   r0,r2                         ; 08051E9E
and   r0,r3                         ; 08051EA0
cmp   r0,0x0                        ; 08051EA2
beq   @@Code08051EAE                ; 08051EA4
mov   r0,r4                         ; 08051EA6
bl    Sub08051D98                   ; 08051EA8
b     @@Return                      ; 08051EAC
@@Code08051EAE:
lsr   r2,r2,0x2                     ; 08051EAE
ldr   r1,=Data0817225C              ; 08051EB0
lsl   r0,r2,0x1                     ; 08051EB2
add   r0,r0,r1                      ; 08051EB4
ldrh  r2,[r0]                       ; 08051EB6
strh  r2,[r4,0x38]                  ; 08051EB8
cmp   r2,0x1                        ; 08051EBA
bne   @@Code08051ED0                ; 08051EBC
ldr   r0,[r4,0x4]                   ; 08051EBE
ldr   r1,=0xFFFFFE00                ; 08051EC0
add   r0,r0,r1                      ; 08051EC2
str   r0,[r4,0x4]                   ; 08051EC4
b     @@Code08051EFA                ; 08051EC6
.pool                               ; 08051EC8

@@Code08051ED0:
cmp   r2,0x2                        ; 08051ED0
bne   @@Code08051EFA                ; 08051ED2
mov   r1,r4                         ; 08051ED4
add   r1,0x40                       ; 08051ED6
ldrh  r2,[r1]                       ; 08051ED8
mov   r5,0x0                        ; 08051EDA
ldsh  r0,[r1,r5]                    ; 08051EDC
cmp   r0,0x0                        ; 08051EDE
blt   @@Code08051EFA                ; 08051EE0
sub   r0,r2,0x1                     ; 08051EE2
strh  r0,[r1]                       ; 08051EE4
add   r1,0x2A                       ; 08051EE6
ldrh  r0,[r1]                       ; 08051EE8
add   r0,0x1                        ; 08051EEA
strh  r0,[r1]                       ; 08051EEC
ldr   r1,=Data081722A8              ; 08051EEE
and   r0,r3                         ; 08051EF0
lsl   r0,r0,0x1                     ; 08051EF2
add   r0,r0,r1                      ; 08051EF4
ldrh  r0,[r0]                       ; 08051EF6
strh  r0,[r4,0x38]                  ; 08051EF8
@@Code08051EFA:
ldr   r0,=0x03007240                ; 08051EFA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08051EFC
ldr   r1,=0x29CC                    ; 08051EFE
add   r0,r0,r1                      ; 08051F00
ldrh  r1,[r0]                       ; 08051F02
mov   r0,0x1                        ; 08051F04
and   r0,r1                         ; 08051F06
ldr   r1,=0xFFFFFF00                ; 08051F08
cmp   r0,0x0                        ; 08051F0A
beq   @@Code08051F12                ; 08051F0C
mov   r1,0x80                       ; 08051F0E
lsl   r1,r1,0x1                     ; 08051F10
@@Code08051F12:
ldr   r0,[r4]                       ; 08051F12
add   r0,r0,r1                      ; 08051F14
str   r0,[r4]                       ; 08051F16
mov   r0,r4                         ; 08051F18
bl    Sub08051D98                   ; 08051F1A
@@Return:
pop   {r3}                          ; 08051F1E
mov   r8,r3                         ; 08051F20
pop   {r4-r7}                       ; 08051F22
pop   {r0}                          ; 08051F24
bx    r0                            ; 08051F26
.pool                               ; 08051F28
