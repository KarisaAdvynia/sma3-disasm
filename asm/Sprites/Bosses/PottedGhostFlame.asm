PottedGhostFlame_Main:
; sprite 038 main
push  {r4-r6,lr}                    ; 08060C10
mov   r4,r0                         ; 08060C12
bl    Sub0804C330                   ; 08060C14
cmp   r0,0x0                        ; 08060C18
beq   @@Code08060C1E                ; 08060C1A
b     @@Return                      ; 08060C1C
@@Code08060C1E:
mov   r5,r4                         ; 08060C1E
add   r5,0x40                       ; 08060C20
ldrh  r0,[r5]                       ; 08060C22
add   r0,0x1                        ; 08060C24
strh  r0,[r5]                       ; 08060C26
mov   r0,r4                         ; 08060C28
add   r0,0x42                       ; 08060C2A
ldrh  r1,[r0]                       ; 08060C2C
cmp   r1,0x0                        ; 08060C2E
bne   @@Code08060C48                ; 08060C30
mov   r0,0x8                        ; 08060C32
str   r0,[r4,0x10]                  ; 08060C34
str   r1,[r4,0x18]                  ; 08060C36
mov   r0,0x40                       ; 08060C38
str   r0,[r4,0x14]                  ; 08060C3A
ldr   r0,=0xFF80                    ; 08060C3C
str   r0,[r4,0x1C]                  ; 08060C3E
mov   r5,0x1                        ; 08060C40
b     @@Code08060CDA                ; 08060C42
.pool                               ; 08060C44

@@Code08060C48:
mov   r0,r4                         ; 08060C48
add   r0,0xA3                       ; 08060C4A
ldrb  r0,[r0]                       ; 08060C4C
lsl   r0,r0,0x18                    ; 08060C4E
asr   r0,r0,0x18                    ; 08060C50
cmp   r0,0x0                        ; 08060C52
bge   @@Code08060C5C                ; 08060C54
mov   r0,r4                         ; 08060C56
bl    Sub080DEE74                   ; 08060C58
@@Code08060C5C:
ldr   r0,[r4,0x18]                  ; 08060C5C
cmp   r0,0x0                        ; 08060C5E
bne   @@Code08060C76                ; 08060C60
ldr   r0,[r4,0x8]                   ; 08060C62
cmp   r0,0x0                        ; 08060C64
bne   @@Code08060CD8                ; 08060C66
str   r0,[r4,0x10]                  ; 08060C68
mov   r0,r4                         ; 08060C6A
add   r0,0x46                       ; 08060C6C
ldrh  r0,[r0]                       ; 08060C6E
cmp   r0,0x0                        ; 08060C70
bne   @@Code08060CD8                ; 08060C72
b     @@Code08060C88                ; 08060C74
@@Code08060C76:
ldrh  r1,[r5]                       ; 08060C76
mov   r0,0x1F                       ; 08060C78
and   r0,r1                         ; 08060C7A
cmp   r0,0x0                        ; 08060C7C
bne   @@Code08060CD8                ; 08060C7E
mov   r0,0x40                       ; 08060C80
and   r0,r1                         ; 08060C82
cmp   r0,0x0                        ; 08060C84
bne   @@Code08060CB4                ; 08060C86
@@Code08060C88:
mov   r0,r4                         ; 08060C88
add   r0,0x52                       ; 08060C8A
mov   r1,0x0                        ; 08060C8C
ldsh  r0,[r0,r1]                    ; 08060C8E
cmp   r0,0x0                        ; 08060C90
bge   @@Code08060CA0                ; 08060C92
ldr   r0,=Data08173F7C              ; 08060C94
mov   r1,0x2                        ; 08060C96
ldsh  r0,[r0,r1]                    ; 08060C98
b     @@Code08060CA6                ; 08060C9A
.pool                               ; 08060C9C

@@Code08060CA0:
ldr   r0,=Data08173F7C              ; 08060CA0
mov   r1,0x0                        ; 08060CA2
ldsh  r0,[r0,r1]                    ; 08060CA4
@@Code08060CA6:
str   r0,[r4,0x18]                  ; 08060CA6
mov   r0,0x2                        ; 08060CA8
str   r0,[r4,0x10]                  ; 08060CAA
b     @@Code08060CD8                ; 08060CAC
.pool                               ; 08060CAE

@@Code08060CB4:
mov   r0,r4                         ; 08060CB4
add   r0,0x54                       ; 08060CB6
mov   r1,0x0                        ; 08060CB8
ldsh  r0,[r0,r1]                    ; 08060CBA
cmp   r0,0x0                        ; 08060CBC
bge   @@Code08060CCC                ; 08060CBE
ldr   r0,=Data08173F7C              ; 08060CC0
mov   r1,0x2                        ; 08060CC2
ldsh  r0,[r0,r1]                    ; 08060CC4
b     @@Code08060CD2                ; 08060CC6
.pool                               ; 08060CC8

@@Code08060CCC:
ldr   r0,=Data08173F7C              ; 08060CCC
mov   r1,0x0                        ; 08060CCE
ldsh  r0,[r0,r1]                    ; 08060CD0
@@Code08060CD2:
str   r0,[r4,0x1C]                  ; 08060CD2
mov   r0,0x2                        ; 08060CD4
str   r0,[r4,0x14]                  ; 08060CD6
@@Code08060CD8:
mov   r5,0x0                        ; 08060CD8
@@Code08060CDA:
mov   r0,r4                         ; 08060CDA
add   r0,0x44                       ; 08060CDC
ldrh  r1,[r0]                       ; 08060CDE
mov   r6,r0                         ; 08060CE0
cmp   r1,0x0                        ; 08060CE2
bne   @@Return                      ; 08060CE4
add   r0,0x26                       ; 08060CE6
ldrh  r1,[r0]                       ; 08060CE8
add   r1,0x2                        ; 08060CEA
lsl   r1,r1,0x10                    ; 08060CEC
lsr   r2,r1,0x10                    ; 08060CEE
ldr   r1,=Data08173F54              ; 08060CF0
add   r1,r5,r1                      ; 08060CF2
mov   r3,r0                         ; 08060CF4
ldrb  r1,[r1]                       ; 08060CF6
cmp   r2,r1                         ; 08060CF8
bne   @@Code08060D14                ; 08060CFA
cmp   r5,0x0                        ; 08060CFC
beq   @@Code08060D10                ; 08060CFE
mov   r0,r4                         ; 08060D00
bl    DespawnSprite                 ; 08060D02
b     @@Return                      ; 08060D06
.pool                               ; 08060D08

@@Code08060D10:
ldr   r0,=Data08173F56              ; 08060D10
ldrb  r2,[r0]                       ; 08060D12
@@Code08060D14:
strh  r2,[r3]                       ; 08060D14
lsr   r2,r2,0x1                     ; 08060D16
ldr   r0,=Data08173F58              ; 08060D18
add   r0,r2,r0                      ; 08060D1A
ldrb  r0,[r0]                       ; 08060D1C
strh  r0,[r4,0x38]                  ; 08060D1E
ldrh  r0,[r4,0x2C]                  ; 08060D20
ldr   r1,=0xFFBF                    ; 08060D22
and   r1,r0                         ; 08060D24
ldr   r0,=Data08173F64              ; 08060D26
add   r0,r2,r0                      ; 08060D28
ldrb  r0,[r0]                       ; 08060D2A
orr   r0,r1                         ; 08060D2C
strh  r0,[r4,0x2C]                  ; 08060D2E
ldr   r0,=Data08173F70              ; 08060D30
add   r0,r2,r0                      ; 08060D32
ldrb  r0,[r0]                       ; 08060D34
strh  r0,[r6]                       ; 08060D36
@@Return:
pop   {r4-r6}                       ; 08060D38
pop   {r0}                          ; 08060D3A
bx    r0                            ; 08060D3C
.pool                               ; 08060D3E
