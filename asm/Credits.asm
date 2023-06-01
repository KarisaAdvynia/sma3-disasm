Sub08033A2C:
push  {r4-r7,lr}                ; 08033A2C
mov   r7,r10                    ; 08033A2E
mov   r6,r9                     ; 08033A30
mov   r5,r8                     ; 08033A32
push  {r5-r7}                   ; 08033A34
add   sp,-0x18                  ; 08033A36
str   r0,[sp]                   ; 08033A38
ldr   r0,[sp,0x38]              ; 08033A3A
lsl   r1,r1,0x10                ; 08033A3C
lsr   r1,r1,0x10                ; 08033A3E
str   r1,[sp,0x4]               ; 08033A40
lsl   r2,r2,0x10                ; 08033A42
lsr   r4,r2,0x10                ; 08033A44
lsl   r3,r3,0x10                ; 08033A46
lsr   r3,r3,0x10                ; 08033A48
mov   r8,r3                     ; 08033A4A
lsl   r0,r0,0x18                ; 08033A4C
lsr   r0,r0,0x18                ; 08033A4E
str   r0,[sp,0x8]               ; 08033A50
ldr   r0,[sp]                   ; 08033A52
ldrh  r3,[r0,0x6]               ; 08033A54
mov   r0,r8                     ; 08033A56
mul   r0,r3                     ; 08033A58
lsl   r0,r0,0x8                 ; 08033A5A
lsr   r2,r0,0x10                ; 08033A5C
sub   r0,r4,r2                  ; 08033A5E
lsl   r0,r0,0x10                ; 08033A60
lsr   r4,r0,0x10                ; 08033A62
ldr   r1,=0xFF800000            ; 08033A64
add   r0,r0,r1                  ; 08033A66
lsr   r0,r0,0x10                ; 08033A68
ldr   r6,=0xFE7F                ; 08033A6A
cmp   r0,r6                     ; 08033A6C
bhi   @@Code08033A72            ; 08033A6E
b     @@Code08033B90            ; 08033A70
@@Code08033A72:
ldr   r5,[sp]                   ; 08033A72
ldrh  r1,[r5,0x4]               ; 08033A74
mov   r0,r8                     ; 08033A76
mul   r0,r1                     ; 08033A78
lsl   r0,r0,0x8                 ; 08033A7A
lsr   r7,r0,0x10                ; 08033A7C
ldr   r5,[sp,0x4]               ; 08033A7E
sub   r0,r5,r7                  ; 08033A80
lsl   r0,r0,0x10                ; 08033A82
lsr   r5,r0,0x10                ; 08033A84
str   r5,[sp,0x4]               ; 08033A86
mov   r5,0xFF                   ; 08033A88
lsl   r5,r5,0x18                ; 08033A8A
add   r0,r0,r5                  ; 08033A8C
lsr   r0,r0,0x10                ; 08033A8E
mov   r5,r1                     ; 08033A90
cmp   r0,r6                     ; 08033A92
bls   @@Code08033B90            ; 08033A94
lsl   r0,r3,0x18                ; 08033A96
lsr   r1,r0,0x10                ; 08033A98
mov   r0,0x0                    ; 08033A9A
str   r0,[sp,0xC]               ; 08033A9C
lsl   r3,r2,0x11                ; 08033A9E
lsl   r6,r7,0x11                ; 08033AA0
cmp   r1,r2                     ; 08033AA2
blo   @@Code08033ABA            ; 08033AA4
@@Code08033AA6:
sub   r0,r1,r2                  ; 08033AA6
lsl   r0,r0,0x10                ; 08033AA8
lsr   r1,r0,0x10                ; 08033AAA
ldr   r0,[sp,0xC]               ; 08033AAC
add   r0,0x1                    ; 08033AAE
lsl   r0,r0,0x10                ; 08033AB0
lsr   r0,r0,0x10                ; 08033AB2
str   r0,[sp,0xC]               ; 08033AB4
cmp   r1,r2                     ; 08033AB6
bhs   @@Code08033AA6            ; 08033AB8
@@Code08033ABA:
lsr   r2,r3,0x10                ; 08033ABA
lsl   r0,r5,0x18                ; 08033ABC
lsr   r1,r0,0x10                ; 08033ABE
mov   r5,0x0                    ; 08033AC0
mov   r8,r5                     ; 08033AC2
cmp   r1,r7                     ; 08033AC4
blo   @@Code08033ADC            ; 08033AC6
@@Code08033AC8:
sub   r0,r1,r7                  ; 08033AC8
lsl   r0,r0,0x10                ; 08033ACA
lsr   r1,r0,0x10                ; 08033ACC
mov   r0,r8                     ; 08033ACE
add   r0,0x1                    ; 08033AD0
lsl   r0,r0,0x10                ; 08033AD2
lsr   r0,r0,0x10                ; 08033AD4
mov   r8,r0                     ; 08033AD6
cmp   r1,r7                     ; 08033AD8
bhs   @@Code08033AC8            ; 08033ADA
@@Code08033ADC:
lsr   r7,r6,0x10                ; 08033ADC
mov   r1,0x0                    ; 08033ADE
cmp   r2,0x0                    ; 08033AE0
beq   @@Code08033B90            ; 08033AE2
@@Code08033AE4:
add   r0,r4,0x1                 ; 08033AE4
mov   r10,r0                    ; 08033AE6
ldr   r5,[sp,0xC]               ; 08033AE8
add   r5,r1,r5                  ; 08033AEA
str   r5,[sp,0x10]              ; 08033AEC
sub   r2,0x1                    ; 08033AEE
str   r2,[sp,0x14]              ; 08033AF0
cmp   r4,0x7F                   ; 08033AF2
bhi   @@Code08033B7A            ; 08033AF4
mov   r0,r4                     ; 08033AF6
mov   r2,0x7                    ; 08033AF8
and   r0,r2                     ; 08033AFA
lsl   r5,r0,0x3                 ; 08033AFC
mov   r0,0x78                   ; 08033AFE
and   r4,r0                     ; 08033B00
lsl   r0,r4,0x8                 ; 08033B02
orr   r5,r0                     ; 08033B04
lsr   r2,r1,0x8                 ; 08033B06
mov   r0,r2                     ; 08033B08
mov   r1,0x7                    ; 08033B0A
and   r0,r1                     ; 08033B0C
lsl   r0,r0,0x3                 ; 08033B0E
mov   r1,0xF8                   ; 08033B10
and   r2,r1                     ; 08033B12
lsl   r1,r2,0x7                 ; 08033B14
orr   r0,r1                     ; 08033B16
ldr   r2,[sp]                   ; 08033B18
ldr   r1,[r2]                   ; 08033B1A
add   r1,r1,r0                  ; 08033B1C
mov   r9,r1                     ; 08033B1E
mov   r4,0x0                    ; 08033B20
mov   r6,0x0                    ; 08033B22
cmp   r4,r7                     ; 08033B24
bhs   @@Code08033B7A            ; 08033B26
mov   r0,0x7                    ; 08033B28
mov   r12,r0                    ; 08033B2A
@@Code08033B2C:
ldr   r1,[sp,0x4]               ; 08033B2C
add   r0,r1,r4                  ; 08033B2E
lsl   r0,r0,0x10                ; 08033B30
lsr   r1,r0,0x10                ; 08033B32
cmp   r1,0xFF                   ; 08033B34
bhi   @@Code08033B68            ; 08033B36
mov   r2,r12                    ; 08033B38
and   r1,r2                     ; 08033B3A
lsr   r0,r0,0x13                ; 08033B3C
lsl   r0,r0,0x6                 ; 08033B3E
add   r1,r1,r0                  ; 08033B40
add   r1,r5,r1                  ; 08033B42
lsl   r1,r1,0x10                ; 08033B44
lsr   r3,r1,0x10                ; 08033B46
lsr   r0,r6,0x8                 ; 08033B48
mov   r1,r0                     ; 08033B4A
and   r1,r2                     ; 08033B4C
lsr   r0,r0,0x3                 ; 08033B4E
lsl   r0,r0,0x6                 ; 08033B50
orr   r1,r0                     ; 08033B52
add   r1,r9                     ; 08033B54
ldrb  r2,[r1]                   ; 08033B56
cmp   r2,0x0                    ; 08033B58
beq   @@Code08033B68            ; 08033B5A
mov   r1,0x80                   ; 08033B5C
lsl   r1,r1,0x12                ; 08033B5E
add   r1,r3,r1                  ; 08033B60
ldr   r0,[sp,0x8]               ; 08033B62
orr   r0,r2                     ; 08033B64
strb  r0,[r1]                   ; 08033B66
@@Code08033B68:
mov   r1,r8                     ; 08033B68
add   r0,r6,r1                  ; 08033B6A
lsl   r0,r0,0x10                ; 08033B6C
lsr   r6,r0,0x10                ; 08033B6E
add   r0,r4,0x1                 ; 08033B70
lsl   r0,r0,0x10                ; 08033B72
lsr   r4,r0,0x10                ; 08033B74
cmp   r4,r7                     ; 08033B76
blo   @@Code08033B2C            ; 08033B78
@@Code08033B7A:
mov   r2,r10                    ; 08033B7A
lsl   r0,r2,0x10                ; 08033B7C
lsr   r4,r0,0x10                ; 08033B7E
ldr   r5,[sp,0x10]              ; 08033B80
lsl   r0,r5,0x10                ; 08033B82
lsr   r1,r0,0x10                ; 08033B84
ldr   r2,[sp,0x14]              ; 08033B86
lsl   r0,r2,0x10                ; 08033B88
lsr   r2,r0,0x10                ; 08033B8A
cmp   r2,0x0                    ; 08033B8C
bne   @@Code08033AE4            ; 08033B8E
@@Code08033B90:
add   sp,0x18                   ; 08033B90
pop   {r3-r5}                   ; 08033B92
mov   r8,r3                     ; 08033B94
mov   r9,r4                     ; 08033B96
mov   r10,r5                    ; 08033B98
pop   {r4-r7}                   ; 08033B9A
pop   {r0}                      ; 08033B9C
bx    r0                        ; 08033B9E
.pool                           ; 08033BA0

Sub08033BA8:
push  {r4-r7,lr}                ; 08033BA8
mov   r7,r10                    ; 08033BAA
mov   r6,r9                     ; 08033BAC
mov   r5,r8                     ; 08033BAE
push  {r5-r7}                   ; 08033BB0
add   sp,-0x8                   ; 08033BB2
mov   r7,r0                     ; 08033BB4
mov   r0,0x0                    ; 08033BB6
mov   r8,r0                     ; 08033BB8
ldr   r1,=0x0928                ; 08033BBA
add   r0,r7,r1                  ; 08033BBC
ldrh  r0,[r0]                   ; 08033BBE
str   r0,[sp,0x4]               ; 08033BC0
ldrh  r0,[r7,0x14]              ; 08033BC2
ldr   r1,=0xFFFF0000            ; 08033BC4
lsr   r2,r1,0x10                ; 08033BC6
cmp   r0,r2                     ; 08033BC8
beq   @@Code08033CA0            ; 08033BCA
mov   r10,r1                    ; 08033BCC
@@Code08033BCE:
mov   r5,r8                     ; 08033BCE
lsl   r2,r5,0x1                 ; 08033BD0
add   r0,r2,r5                  ; 08033BD2
lsl   r0,r0,0x2                 ; 08033BD4
add   r5,r7,r0                  ; 08033BD6
ldr   r0,=0x093C                ; 08033BD8
add   r1,r7,r0                  ; 08033BDA
ldrh  r0,[r5,0x14]              ; 08033BDC
ldrh  r1,[r1]                   ; 08033BDE
sub   r0,r0,r1                  ; 08033BE0
lsl   r6,r0,0x10                ; 08033BE2
lsr   r3,r6,0x10                ; 08033BE4
ldr   r0,=0x01BF                ; 08033BE6
mov   r12,r2                    ; 08033BE8
cmp   r3,r0                     ; 08033BEA
bhi   @@Code08033C86            ; 08033BEC
ldrh  r2,[r5,0x1C]              ; 08033BEE
ldrb  r4,[r5,0x1C]              ; 08033BF0
ldr   r1,=DataPtrs0816C16C      ; 08033BF2
lsl   r0,r4,0x2                 ; 08033BF4
add   r0,r0,r1                  ; 08033BF6
ldr   r0,[r0]                   ; 08033BF8
mov   r9,r0                     ; 08033BFA
lsr   r4,r2,0x4                 ; 08033BFC
mov   r0,0xF0                   ; 08033BFE
and   r4,r0                     ; 08033C00
ldr   r1,[sp,0x4]               ; 08033C02
cmp   r1,0x2                    ; 08033C04
beq   @@Code08033C10            ; 08033C06
lsr   r0,r6,0x13                ; 08033C08
mov   r1,0x30                   ; 08033C0A
and   r0,r1                     ; 08033C0C
add   r4,r4,r0                  ; 08033C0E
@@Code08033C10:
ldrh  r0,[r5,0x1A]              ; 08033C10
add   r0,r3,r0                  ; 08033C12
lsl   r0,r0,0x10                ; 08033C14
lsr   r3,r0,0x10                ; 08033C16
mov   r0,0x80                   ; 08033C18
lsl   r0,r0,0x2                 ; 08033C1A
cmp   r3,r0                     ; 08033C1C
bls   @@Code08033C22            ; 08033C1E
mov   r3,r0                     ; 08033C20
@@Code08033C22:
ldr   r0,=Data081AF2CC          ; 08033C22
lsl   r1,r3,0x1                 ; 08033C24
add   r1,r1,r0                  ; 08033C26
ldrh  r3,[r1]                   ; 08033C28
ldrh  r1,[r5,0x16]              ; 08033C2A
mov   r2,0x16                   ; 08033C2C
ldsh  r0,[r5,r2]                ; 08033C2E
cmp   r0,0x0                    ; 08033C30
bge   @@Code08033C38            ; 08033C32
mov   r5,r10                    ; 08033C34
orr   r1,r5                     ; 08033C36
@@Code08033C38:
mov   r0,r1                     ; 08033C38
mul   r0,r3                     ; 08033C3A
lsl   r0,r0,0x8                 ; 08033C3C
lsr   r1,r0,0x10                ; 08033C3E
ldr   r2,=0x0938                ; 08033C40
add   r0,r7,r2                  ; 08033C42
ldrh  r0,[r0]                   ; 08033C44
add   r0,r1,r0                  ; 08033C46
lsl   r0,r0,0x10                ; 08033C48
lsr   r1,r0,0x10                ; 08033C4A
mov   r0,r12                    ; 08033C4C
add   r0,r8                     ; 08033C4E
lsl   r0,r0,0x2                 ; 08033C50
add   r0,r7,r0                  ; 08033C52
ldrh  r2,[r0,0x18]              ; 08033C54
mov   r5,0x18                   ; 08033C56
ldsh  r0,[r0,r5]                ; 08033C58
cmp   r0,0x0                    ; 08033C5A
bge   @@Code08033C62            ; 08033C5C
mov   r0,r10                    ; 08033C5E
orr   r2,r0                     ; 08033C60
@@Code08033C62:
mov   r0,r2                     ; 08033C62
mul   r0,r3                     ; 08033C64
lsl   r0,r0,0x8                 ; 08033C66
lsr   r2,r0,0x10                ; 08033C68
ldr   r5,=0x093A                ; 08033C6A
add   r0,r7,r5                  ; 08033C6C
ldrh  r0,[r0]                   ; 08033C6E
add   r0,r2,r0                  ; 08033C70
lsl   r0,r0,0x10                ; 08033C72
lsr   r2,r0,0x10                ; 08033C74
lsl   r0,r4,0x18                ; 08033C76
lsr   r0,r0,0x18                ; 08033C78
str   r0,[sp]                   ; 08033C7A
ldr   r0,=0x03006390            ; 08033C7C
ldr   r4,[r0]                   ; 08033C7E
mov   r0,r9                     ; 08033C80
bl    Sub_bx_r4                 ; 08033C82
@@Code08033C86:
mov   r0,r8                     ; 08033C86
add   r0,0x1                    ; 08033C88
lsl   r0,r0,0x10                ; 08033C8A
lsr   r0,r0,0x10                ; 08033C8C
mov   r8,r0                     ; 08033C8E
lsl   r0,r0,0x1                 ; 08033C90
add   r0,r8                     ; 08033C92
lsl   r0,r0,0x2                 ; 08033C94
add   r0,r7,r0                  ; 08033C96
ldrh  r0,[r0,0x14]              ; 08033C98
ldr   r1,=0xFFFF                ; 08033C9A
cmp   r0,r1                     ; 08033C9C
bne   @@Code08033BCE            ; 08033C9E
@@Code08033CA0:
add   sp,0x8                    ; 08033CA0
pop   {r3-r5}                   ; 08033CA2
mov   r8,r3                     ; 08033CA4
mov   r9,r4                     ; 08033CA6
mov   r10,r5                    ; 08033CA8
pop   {r4-r7}                   ; 08033CAA
pop   {r0}                      ; 08033CAC
bx    r0                        ; 08033CAE
.pool                           ; 08033CB0

Sub08033CD8:
push  {r4-r7,lr}                ; 08033CD8
mov   r7,r10                    ; 08033CDA
mov   r6,r9                     ; 08033CDC
mov   r5,r8                     ; 08033CDE
push  {r5-r7}                   ; 08033CE0
add   sp,-0x8                   ; 08033CE2
lsl   r0,r0,0x10                ; 08033CE4
lsr   r6,r0,0x10                ; 08033CE6
lsl   r1,r1,0x10                ; 08033CE8
lsr   r1,r1,0x10                ; 08033CEA
str   r1,[sp]                   ; 08033CEC
lsl   r2,r2,0x10                ; 08033CEE
lsr   r2,r2,0x10                ; 08033CF0
lsl   r3,r3,0x10                ; 08033CF2
lsr   r3,r3,0x10                ; 08033CF4
str   r3,[sp,0x4]               ; 08033CF6
mov   r0,0x10                   ; 08033CF8
and   r0,r2                     ; 08033CFA
lsl   r0,r0,0x10                ; 08033CFC
lsr   r0,r0,0x12                ; 08033CFE
lsl   r0,r0,0x10                ; 08033D00
lsr   r0,r0,0x10                ; 08033D02
mov   r12,r0                    ; 08033D04
mov   r0,0x7                    ; 08033D06
and   r2,r0                     ; 08033D08
mov   r3,0x0                    ; 08033D0A
@@Code08033D0C:
ldr   r0,[sp,0x4]               ; 08033D0C
cmp   r0,0x0                    ; 08033D0E
beq   @@Code08033D1C            ; 08033D10
ldr   r0,=Graphics_Font_main_1bpp; 08033D12
add   r0,r6,r0                  ; 08033D14
b     @@Code08033D24            ; 08033D16
.pool                           ; 08033D18

@@Code08033D1C:
ldr   r1,=Graphics_Font_credits_1bpp; 08033D1C
ldr   r4,=0xFFFFFA00            ; 08033D1E
add   r0,r6,r4                  ; 08033D20
add   r0,r0,r1                  ; 08033D22
@@Code08033D24:
ldrb  r4,[r0]                   ; 08033D24
mov   r1,0x7                    ; 08033D26
and   r1,r2                     ; 08033D28
lsl   r1,r1,0x2                 ; 08033D2A
mov   r0,0xF8                   ; 08033D2C
and   r0,r2                     ; 08033D2E
lsl   r0,r0,0x7                 ; 08033D30
orr   r1,r0                     ; 08033D32
ldr   r0,=0x02011000            ; 08033D34
add   r5,r1,r0                  ; 08033D36
mov   r7,0x0                    ; 08033D38
add   r6,0x1                    ; 08033D3A
mov   r8,r6                     ; 08033D3C
add   r2,0x1                    ; 08033D3E
mov   r9,r2                     ; 08033D40
add   r3,0x1                    ; 08033D42
mov   r10,r3                    ; 08033D44
cmp   r4,0x0                    ; 08033D46
beq   @@Code08033DBA            ; 08033D48
mov   r6,0x1                    ; 08033D4A
@@Code08033D4C:
mov   r0,0x80                   ; 08033D4C
and   r0,r4                     ; 08033D4E
cmp   r0,0x0                    ; 08033D50
beq   @@Code08033DAC            ; 08033D52
ldr   r1,[sp]                   ; 08033D54
add   r2,r1,r7                  ; 08033D56
asr   r0,r2,0x1                 ; 08033D58
mov   r1,0x3                    ; 08033D5A
mov   r3,r0                     ; 08033D5C
and   r3,r1                     ; 08033D5E
mov   r1,0xFC                   ; 08033D60
and   r0,r1                     ; 08033D62
lsl   r0,r0,0x3                 ; 08033D64
orr   r3,r0                     ; 08033D66
mov   r0,r3                     ; 08033D68
and   r2,r6                     ; 08033D6A
cmp   r2,0x0                    ; 08033D6C
beq   @@Code08033D94            ; 08033D6E
mov   r0,r12                    ; 08033D70
cmp   r0,0x0                    ; 08033D72
beq   @@Code08033D8C            ; 08033D74
add   r0,r5,r3                  ; 08033D76
ldrb  r1,[r0]                   ; 08033D78
mov   r2,0x20                   ; 08033D7A
b     @@Code08033DA8            ; 08033D7C
.pool                           ; 08033D7E

@@Code08033D8C:
add   r0,r5,r3                  ; 08033D8C
ldrb  r1,[r0]                   ; 08033D8E
mov   r2,0x10                   ; 08033D90
b     @@Code08033DA8            ; 08033D92
@@Code08033D94:
mov   r1,r12                    ; 08033D94
cmp   r1,0x0                    ; 08033D96
beq   @@Code08033DA2            ; 08033D98
add   r0,r5,r3                  ; 08033D9A
ldrb  r1,[r0]                   ; 08033D9C
mov   r2,0x2                    ; 08033D9E
b     @@Code08033DA8            ; 08033DA0
@@Code08033DA2:
add   r0,r5,r0                  ; 08033DA2
ldrb  r2,[r0]                   ; 08033DA4
mov   r1,r6                     ; 08033DA6
@@Code08033DA8:
orr   r1,r2                     ; 08033DA8
strb  r1,[r0]                   ; 08033DAA
@@Code08033DAC:
lsl   r0,r4,0x19                ; 08033DAC
lsr   r4,r0,0x18                ; 08033DAE
add   r0,r7,0x1                 ; 08033DB0
lsl   r0,r0,0x10                ; 08033DB2
lsr   r7,r0,0x10                ; 08033DB4
cmp   r4,0x0                    ; 08033DB6
bne   @@Code08033D4C            ; 08033DB8
@@Code08033DBA:
mov   r4,r8                     ; 08033DBA
lsl   r0,r4,0x10                ; 08033DBC
lsr   r6,r0,0x10                ; 08033DBE
mov   r1,r9                     ; 08033DC0
lsl   r0,r1,0x10                ; 08033DC2
lsr   r2,r0,0x10                ; 08033DC4
mov   r4,r10                    ; 08033DC6
lsl   r0,r4,0x10                ; 08033DC8
lsr   r3,r0,0x10                ; 08033DCA
cmp   r3,0xB                    ; 08033DCC
bls   @@Code08033D0C            ; 08033DCE
add   sp,0x8                    ; 08033DD0
pop   {r3-r5}                   ; 08033DD2
mov   r8,r3                     ; 08033DD4
mov   r9,r4                     ; 08033DD6
mov   r10,r5                    ; 08033DD8
pop   {r4-r7}                   ; 08033DDA
pop   {r0}                      ; 08033DDC
bx    r0                        ; 08033DDE

Sub08033DE0:
; Credits text command 00: Display text character
push  {r4-r6,lr}                ; 08033DE0
mov   r6,r0                     ; 08033DE2
ldr   r0,[r6]                   ; 08033DE4
ldrb  r1,[r0]                   ; 08033DE6
lsl   r0,r1,0x1                 ; 08033DE8
add   r0,r0,r1                  ; 08033DEA
lsl   r0,r0,0x2                 ; 08033DEC
mov   r1,0x94                   ; 08033DEE
lsl   r1,r1,0x4                 ; 08033DF0
add   r5,r6,r1                  ; 08033DF2
ldrh  r1,[r5]                   ; 08033DF4
ldr   r3,=0x0942                ; 08033DF6
add   r2,r6,r3                  ; 08033DF8
ldrh  r2,[r2]                   ; 08033DFA
add   r3,0xE                    ; 08033DFC
add   r4,r6,r3                  ; 08033DFE
ldrh  r3,[r4]                   ; 08033E00
bl    Sub08033CD8               ; 08033E02
ldrh  r2,[r5]                   ; 08033E06
ldrh  r0,[r4]                   ; 08033E08
cmp   r0,0x0                    ; 08033E0A
beq   @@Code08033E20            ; 08033E0C
ldr   r1,=Text_CharWidths       ; 08033E0E
ldr   r0,[r6]                   ; 08033E10
ldrb  r0,[r0]                   ; 08033E12
b     @@Code08033E28            ; 08033E14
.pool                           ; 08033E16

@@Code08033E20:
ldr   r1,=Credits_CharWidths    ; 08033E20
ldr   r0,[r6]                   ; 08033E22
ldrb  r0,[r0]                   ; 08033E24
sub   r0,0x80                   ; 08033E26
@@Code08033E28:
add   r0,r0,r1                  ; 08033E28
ldrb  r0,[r0]                   ; 08033E2A
add   r0,r2,r0                  ; 08033E2C
lsl   r0,r0,0x10                ; 08033E2E
lsr   r2,r0,0x10                ; 08033E30
cmp   r2,0xFF                   ; 08033E32
bls   @@Code08033E44            ; 08033E34
ldr   r1,=0x0942                ; 08033E36
add   r0,r6,r1                  ; 08033E38
ldrh  r1,[r0]                   ; 08033E3A
add   r1,0x20                   ; 08033E3C
strh  r1,[r0]                   ; 08033E3E
mov   r0,0xFF                   ; 08033E40
and   r2,r0                     ; 08033E42
@@Code08033E44:
mov   r3,0x94                   ; 08033E44
lsl   r3,r3,0x4                 ; 08033E46
add   r0,r6,r3                  ; 08033E48
strh  r2,[r0]                   ; 08033E4A
ldr   r0,[r6]                   ; 08033E4C
add   r0,0x1                    ; 08033E4E
str   r0,[r6]                   ; 08033E50
pop   {r4-r6}                   ; 08033E52
pop   {r0}                      ; 08033E54
bx    r0                        ; 08033E56
.pool                           ; 08033E58

Sub08033E60:
; Credits text command 01
ldr   r1,[r0]                   ; 08033E60 \
add   r1,0x1                    ; 08033E62 | increment byte to read
str   r1,[r0]                   ; 08033E64 /
bx    lr                        ; 08033E66

Sub08033E68:
; Credits text command 02: set Y
ldr   r1,[r0]                   ; 08033E68
ldrb  r1,[r1]                   ; 08033E6A  read next byte
lsl   r1,r1,0x1                 ; 08033E6C
ldr   r3,=0x0942                ; 08033E6E  [0300638C]+942
add   r2,r0,r3                  ; 08033E70
strh  r1,[r2]                   ; 08033E72  Y position = byte*2
ldr   r1,[r0]                   ; 08033E74 \
add   r1,0x1                    ; 08033E76 | increment byte to read
str   r1,[r0]                   ; 08033E78 /
bx    lr                        ; 08033E7A
.pool                           ; 08033E7C

Sub08033E80:
; Credits text command 03: set X
ldr   r1,[r0]                   ; 08033E80
ldrb  r2,[r1]                   ; 08033E82  read next byte
mov   r3,0x94                   ; 08033E84
lsl   r3,r3,0x4                 ; 08033E86  940
add   r1,r0,r3                  ; 08033E88  [0300638C]+940
strh  r2,[r1]                   ; 08033E8A  X position = byte
ldr   r1,[r0]                   ; 08033E8C \
add   r1,0x1                    ; 08033E8E | increment byte to read
str   r1,[r0]                   ; 08033E90 /
bx    lr                        ; 08033E92

Sub08033E94:
; subroutine: Process credits message
; r0: 0300220C
push  {r4-r5,lr}                ; 08033E94
mov   r4,r0                     ; 08033E96
ldr   r5,=CodePtrs0816DBA0      ; 08033E98
@@Code08033E9A:
ldr   r2,[r4]                   ; 08033E9A  pointer to current message byte
ldrb  r1,[r2]                   ; 08033E9C  load message byte
cmp   r1,0xFF                   ; 08033E9E
bne   @@Code08033EB8            ; 08033EA0
                                ;          \ runs if command
add   r0,r2,0x1                 ; 08033EA2  increment message pointer
str   r0,[r4]                   ; 08033EA4
ldrb  r1,[r2,0x1]               ; 08033EA6  r1 = command ID
cmp   r1,0xFF                   ; 08033EA8
beq   @@Code08033EC8            ; 08033EAA  if command FF, end of data
add   r0,0x1                    ; 08033EAC  increment message pointer
str   r0,[r4]                   ; 08033EAE
b     @@Code08033EBA            ; 08033EB0 /
.pool                           ; 08033EB2

@@Code08033EB8:
mov   r1,0x0                    ; 08033EB8  if not command, r1 = 0
@@Code08033EBA:
lsl   r0,r1,0x2                 ; 08033EBA
add   r0,r0,r5                  ; 08033EBC  index 0816DBA0 with command ID
ldr   r1,[r0]                   ; 08033EBE
mov   r0,r4                     ; 08033EC0  r0 = character or command index
bl    Sub_bx_r1                 ; 08033EC2
b     @@Code08033E9A            ; 08033EC6  loop
@@Code08033EC8:
pop   {r4-r5}                   ; 08033EC8
pop   {r0}                      ; 08033ECA
bx    r0                        ; 08033ECC
.pool                           ; 08033ECE

Sub08033ED0:
push  {r4-r5,lr}                ; 08033ED0
mov   r4,r0                     ; 08033ED2
lsl   r1,r1,0x10                ; 08033ED4
ldr   r0,=DataPtrs0816CAD4      ; 08033ED6
lsr   r1,r1,0xE                 ; 08033ED8
add   r1,r1,r0                  ; 08033EDA
ldr   r2,[r1]                   ; 08033EDC
mov   r3,0x0                    ; 08033EDE
ldrh  r1,[r2]                   ; 08033EE0
ldr   r0,=0xFFFF                ; 08033EE2
cmp   r1,r0                     ; 08033EE4
beq   @@Code08033F12            ; 08033EE6
mov   r5,r0                     ; 08033EE8
@@Code08033EEA:
lsl   r0,r3,0x1                 ; 08033EEA
add   r0,r0,r3                  ; 08033EEC
lsl   r0,r0,0x2                 ; 08033EEE
add   r0,r4,r0                  ; 08033EF0
strh  r1,[r0,0x14]              ; 08033EF2
ldrh  r1,[r2,0x2]               ; 08033EF4
strh  r1,[r0,0x16]              ; 08033EF6
ldrh  r1,[r2,0x4]               ; 08033EF8
strh  r1,[r0,0x18]              ; 08033EFA
ldrh  r1,[r2,0x6]               ; 08033EFC
strh  r1,[r0,0x1A]              ; 08033EFE
ldrh  r1,[r2,0x8]               ; 08033F00
strh  r1,[r0,0x1C]              ; 08033F02
add   r2,0xC                    ; 08033F04
add   r0,r3,0x1                 ; 08033F06
lsl   r0,r0,0x10                ; 08033F08
lsr   r3,r0,0x10                ; 08033F0A
ldrh  r1,[r2]                   ; 08033F0C
cmp   r1,r5                     ; 08033F0E
bne   @@Code08033EEA            ; 08033F10
@@Code08033F12:
lsl   r0,r3,0x1                 ; 08033F12
add   r0,r0,r3                  ; 08033F14
lsl   r0,r0,0x2                 ; 08033F16
add   r0,r4,r0                  ; 08033F18
ldr   r1,=0xFFFF                ; 08033F1A
strh  r1,[r0,0x14]              ; 08033F1C
pop   {r4-r5}                   ; 08033F1E
pop   {r0}                      ; 08033F20
bx    r0                        ; 08033F22
.pool                           ; 08033F24

CreditsInit:
; Game state 18: Credits init
push  {r4-r7,lr}                ; 08033F2C
mov   r7,r10                    ; 08033F2E
mov   r6,r9                     ; 08033F30
mov   r5,r8                     ; 08033F32
push  {r5-r7}                   ; 08033F34
add   sp,-0x28                  ; 08033F36
ldr   r7,=0x03002200            ; 08033F38
ldr   r1,=0x4904                ; 08033F3A
add   r0,r7,r1                  ; 08033F3C
mov   r2,0x0                    ; 08033F3E
mov   r10,r2                    ; 08033F40
mov   r3,0x1                    ; 08033F42
strb  r3,[r0]                   ; 08033F44
ldr   r0,=0x48F6                ; 08033F46
add   r1,r7,r0                  ; 08033F48
mov   r0,0x5                    ; 08033F4A
strb  r0,[r1]                   ; 08033F4C
ldr   r1,=0x48FB                ; 08033F4E
add   r0,r7,r1                  ; 08033F50
strb  r3,[r0]                   ; 08033F52
ldr   r2,=0x04000054            ; 08033F54
ldr   r3,=0x48FA                ; 08033F56
add   r1,r7,r3                  ; 08033F58
mov   r0,0xF                    ; 08033F5A
strb  r0,[r1]                   ; 08033F5C
sub   r3,0x6E                   ; 08033F5E
add   r1,r7,r3                  ; 08033F60
strh  r0,[r1]                   ; 08033F62
strh  r0,[r2]                   ; 08033F64
sub   r2,0x4                    ; 08033F66
ldr   r0,=0x4888                ; 08033F68
add   r1,r7,r0                  ; 08033F6A
mov   r0,0xFF                   ; 08033F6C
strh  r0,[r1]                   ; 08033F6E
strh  r0,[r2]                   ; 08033F70
ldr   r1,=0x04000004            ; 08033F72
ldr   r2,=0x47C4                ; 08033F74
add   r0,r7,r2                  ; 08033F76
mov   r3,0x8                    ; 08033F78
mov   r9,r3                     ; 08033F7A
mov   r2,r9                     ; 08033F7C
strh  r2,[r0]                   ; 08033F7E
strh  r2,[r1]                   ; 08033F80
ldr   r2,=0x04000200            ; 08033F82
ldr   r3,=0x47C2                ; 08033F84
add   r1,r7,r3                  ; 08033F86
ldr   r0,=0x2001                ; 08033F88
strh  r0,[r1]                   ; 08033F8A
strh  r0,[r2]                   ; 08033F8C
bl    Sub0802E020               ; 08033F8E
bl    Sub08002338               ; 08033F92
mov   r0,r10                    ; 08033F96
str   r0,[sp]                   ; 08033F98
mov   r1,0xC0                   ; 08033F9A
lsl   r1,r1,0x13                ; 08033F9C
ldr   r2,=0x05001000            ; 08033F9E
mov   r0,sp                     ; 08033FA0
bl    swi_MemoryCopy4or2        ; 08033FA2  Memory copy/fill, 4- or 2-byte blocks
mov   r1,r10                    ; 08033FA6
str   r1,[sp,0x4]               ; 08033FA8
add   r0,sp,0x4                 ; 08033FAA
ldr   r1,=0x06010000            ; 08033FAC
ldr   r2,=0x05000800            ; 08033FAE
bl    swi_MemoryCopy4or2        ; 08033FB0  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x47C6                ; 08033FB4
add   r1,r7,r2                  ; 08033FB6
mov   r0,0xB8                   ; 08033FB8
lsl   r0,r0,0x5                 ; 08033FBA
strh  r0,[r1]                   ; 08033FBC
ldr   r3,=0x47C8                ; 08033FBE
add   r1,r7,r3                  ; 08033FC0
mov   r0,0xC0                   ; 08033FC2
lsl   r0,r0,0x5                 ; 08033FC4
strh  r0,[r1]                   ; 08033FC6
ldr   r0,=0x47CA                ; 08033FC8
add   r1,r7,r0                  ; 08033FCA
ldr   r0,=0x1901                ; 08033FCC
strh  r0,[r1]                   ; 08033FCE
add   r2,0x6                    ; 08033FD0
add   r1,r7,r2                  ; 08033FD2
ldr   r0,=0x1A0A                ; 08033FD4
strh  r0,[r1]                   ; 08033FD6
mov   r0,0x5                    ; 08033FD8
bl    Sub08013418               ; 08033FDA
ldr   r0,=Data082C2560          ; 08033FDE
ldr   r1,=0x02026000            ; 08033FE0
bl    swi_LZ77_VRAM             ; 08033FE2  LZ77 decompress (VRAM)
add   r0,sp,0x8                 ; 08033FE6
mov   r3,r10                    ; 08033FE8
strh  r3,[r0]                   ; 08033FEA
ldr   r4,=0x02010400            ; 08033FEC
ldr   r2,=0x01000200            ; 08033FEE
mov   r1,r4                     ; 08033FF0
bl    swi_MemoryCopy4or2        ; 08033FF2  Memory copy/fill, 4- or 2-byte blocks
ldr   r5,=Data082DE31C          ; 08033FF6
mov   r0,0x80                   ; 08033FF8
lsl   r0,r0,0x1                 ; 08033FFA
mov   r8,r0                     ; 08033FFC
mov   r0,r5                     ; 08033FFE
mov   r1,r4                     ; 08034000
mov   r2,r8                     ; 08034002
bl    swi_MemoryCopy4or2        ; 08034004  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010600            ; 08034008
mov   r0,r5                     ; 0803400A
mov   r2,r8                     ; 0803400C
bl    swi_MemoryCopy4or2        ; 0803400E  Memory copy/fill, 4- or 2-byte blocks
mov   r1,r10                    ; 08034012
strh  r1,[r4]                   ; 08034014
ldr   r3,=0x4967                ; 08034016
add   r2,r7,r3                  ; 08034018
ldrb  r1,[r2]                   ; 0803401A
mov   r0,0x3                    ; 0803401C
orr   r0,r1                     ; 0803401E
strb  r0,[r2]                   ; 08034020
ldr   r1,=0x0954                ; 08034022
mov   r0,r7                     ; 08034024
bl    DynamicAllocate           ; 08034026
mov   r6,r0                     ; 0803402A
ldr   r1,=0x418C                ; 0803402C
add   r0,r7,r1                  ; 0803402E  r0 = 0300638C
str   r6,[r0]                   ; 08034030
mov   r0,sp                     ; 08034032
add   r0,0xA                    ; 08034034
mov   r2,r10                    ; 08034036
strh  r2,[r0]                   ; 08034038
ldr   r2,=0x010004AA            ; 0803403A
mov   r1,r6                     ; 0803403C
bl    swi_MemoryCopy4or2        ; 0803403E  Memory copy/fill, 4- or 2-byte blocks
ldr   r3,=0x0938                ; 08034042
add   r1,r6,r3                  ; 08034044
mov   r0,0x80                   ; 08034046
strh  r0,[r1]                   ; 08034048
ldr   r0,=0x093A                ; 0803404A
add   r1,r6,r0                  ; 0803404C
mov   r0,0x34                   ; 0803404E
strh  r0,[r1]                   ; 08034050
ldr   r2,=0x0936                ; 08034052
add   r1,r6,r2                  ; 08034054
mov   r0,0x28                   ; 08034056
strh  r0,[r1]                   ; 08034058
sub   r3,0x1A                   ; 0803405A
add   r0,r6,r3                  ; 0803405C
mov   r1,r9                     ; 0803405E
strh  r1,[r0]                   ; 08034060
sub   r2,0x16                   ; 08034062
add   r1,r6,r2                  ; 08034064
mov   r0,0xA9                   ; 08034066
strh  r0,[r1]                   ; 08034068
ldr   r3,=0x0804                ; 0803406A
add   r0,r6,r3                  ; 0803406C
ldrh  r1,[r0]                   ; 0803406E
add   r2,0x4                    ; 08034070
add   r0,r6,r2                  ; 08034072
strh  r1,[r0]                   ; 08034074
mov   r0,0x88                   ; 08034076
lsl   r0,r0,0x2                 ; 08034078
str   r0,[r6,0x8]               ; 0803407A
ldr   r3,=0x0946                ; 0803407C
add   r0,r6,r3                  ; 0803407E
mov   r1,0x1                    ; 08034080
strh  r1,[r0]                   ; 08034082
add   r2,0x2A                   ; 08034084
add   r0,r6,r2                  ; 08034086
mov   r3,r10                    ; 08034088
strh  r3,[r0]                   ; 0803408A
mov   r0,r6                     ; 0803408C
mov   r1,0x0                    ; 0803408E
bl    Sub08033ED0               ; 08034090
ldr   r1,=0x47D4                ; 08034094
add   r0,r7,r1                  ; 08034096
mov   r2,r10                    ; 08034098
strh  r2,[r0]                   ; 0803409A
ldr   r3,=0x47E4                ; 0803409C
add   r0,r7,r3                  ; 0803409E
strh  r2,[r0]                   ; 080340A0
add   r1,0x8                    ; 080340A2
add   r0,r7,r1                  ; 080340A4
strh  r2,[r0]                   ; 080340A6
ldr   r2,=0x47EC                ; 080340A8
add   r0,r7,r2                  ; 080340AA
mov   r3,r10                    ; 080340AC
strh  r3,[r0]                   ; 080340AE
sub   r1,0x6                    ; 080340B0
add   r0,r7,r1                  ; 080340B2
mov   r2,r9                     ; 080340B4
strh  r2,[r0]                   ; 080340B6
ldr   r3,=0x47E6                ; 080340B8
add   r0,r7,r3                  ; 080340BA
strh  r2,[r0]                   ; 080340BC
add   r1,0x8                    ; 080340BE
add   r0,r7,r1                  ; 080340C0
mov   r2,r10                    ; 080340C2
strh  r2,[r0]                   ; 080340C4
add   r3,0x8                    ; 080340C6
add   r0,r7,r3                  ; 080340C8
strh  r2,[r0]                   ; 080340CA
sub   r1,0x6                    ; 080340CC
add   r0,r7,r1                  ; 080340CE
mov   r2,r9                     ; 080340D0
strh  r2,[r0]                   ; 080340D2
sub   r3,0x6                    ; 080340D4
add   r0,r7,r3                  ; 080340D6
strh  r2,[r0]                   ; 080340D8
add   r1,0x8                    ; 080340DA
add   r0,r7,r1                  ; 080340DC
mov   r2,r10                    ; 080340DE
strh  r2,[r0]                   ; 080340E0
add   r3,0x8                    ; 080340E2
add   r0,r7,r3                  ; 080340E4
strh  r2,[r0]                   ; 080340E6
ldrh  r0,[r0]                   ; 080340E8
lsl   r0,r0,0xC                 ; 080340EA
str   r0,[r6,0x4]               ; 080340EC
sub   r1,0x6                    ; 080340EE
add   r0,r7,r1                  ; 080340F0
mov   r2,r9                     ; 080340F2
strh  r2,[r0]                   ; 080340F4
sub   r3,0x6                    ; 080340F6
add   r0,r7,r3                  ; 080340F8
strh  r2,[r0]                   ; 080340FA
add   r1,0x8                    ; 080340FC
add   r0,r7,r1                  ; 080340FE
mov   r2,r10                    ; 08034100
strh  r2,[r0]                   ; 08034102
add   r3,0x8                    ; 08034104
add   r0,r7,r3                  ; 08034106
strh  r2,[r0]                   ; 08034108
mov   r0,0xE0                   ; 0803410A
lsl   r0,r0,0x6                 ; 0803410C
add   r4,r7,r0                  ; 0803410E
ldr   r5,=Data0816CAE0          ; 08034110
ldrh  r0,[r5,0x6]               ; 08034112
mov   r1,sp                     ; 08034114
add   r1,0xC                    ; 08034116
str   r1,[sp,0x1C]              ; 08034118
mov   r2,sp                     ; 0803411A
add   r2,0x10                   ; 0803411C
str   r2,[sp,0x20]              ; 0803411E
mov   r3,sp                     ; 08034120
add   r3,0x18                   ; 08034122
str   r3,[sp,0x24]              ; 08034124
ldr   r1,=0xFFFF                ; 08034126
cmp   r0,r1                     ; 08034128
bne   @@Code0803412E            ; 0803412A
b     @@Code08034260            ; 0803412C
@@Code0803412E:
mov   r2,0x3                    ; 0803412E
mov   r8,r2                     ; 08034130
mov   r7,0x1                    ; 08034132
mov   r3,0x11                   ; 08034134
neg   r3,r3                     ; 08034136
mov   r12,r3                    ; 08034138
mov   r0,0x21                   ; 0803413A
neg   r0,r0                     ; 0803413C
mov   r10,r0                    ; 0803413E
mov   r1,0x3F                   ; 08034140
mov   r9,r1                     ; 08034142
@@Code08034144:
ldrb  r0,[r5]                   ; 08034144
ldr   r2,=0x03002200            ; 08034146
ldr   r3,=0x47DE                ; 08034148
add   r1,r2,r3                  ; 0803414A
add   r0,0x30                   ; 0803414C
ldrb  r1,[r1]                   ; 0803414E
add   r0,r0,r1                  ; 08034150
strb  r0,[r4]                   ; 08034152
ldrb  r0,[r5,0x1]               ; 08034154
lsl   r0,r0,0x1E                ; 08034156
lsr   r0,r0,0x1E                ; 08034158
mov   r1,r8                     ; 0803415A
and   r0,r1                     ; 0803415C
ldrb  r2,[r4,0x1]               ; 0803415E
mov   r1,0x4                    ; 08034160
neg   r1,r1                     ; 08034162
and   r1,r2                     ; 08034164
orr   r1,r0                     ; 08034166
strb  r1,[r4,0x1]               ; 08034168
ldrb  r0,[r5,0x1]               ; 0803416A
lsl   r0,r0,0x1C                ; 0803416C
lsr   r0,r0,0x1E                ; 0803416E
mov   r2,r8                     ; 08034170
and   r0,r2                     ; 08034172
lsl   r0,r0,0x2                 ; 08034174
mov   r2,0xD                    ; 08034176
neg   r2,r2                     ; 08034178
and   r2,r1                     ; 0803417A
orr   r2,r0                     ; 0803417C
strb  r2,[r4,0x1]               ; 0803417E
ldrb  r0,[r5,0x1]               ; 08034180
lsl   r0,r0,0x1B                ; 08034182
lsr   r0,r0,0x1F                ; 08034184
and   r0,r7                     ; 08034186
lsl   r0,r0,0x4                 ; 08034188
mov   r3,r12                    ; 0803418A
and   r3,r2                     ; 0803418C
orr   r3,r0                     ; 0803418E
strb  r3,[r4,0x1]               ; 08034190
ldrb  r0,[r5,0x1]               ; 08034192
lsl   r0,r0,0x1A                ; 08034194
lsr   r0,r0,0x1F                ; 08034196
and   r0,r7                     ; 08034198
lsl   r0,r0,0x5                 ; 0803419A
mov   r1,r10                    ; 0803419C
and   r1,r3                     ; 0803419E
orr   r1,r0                     ; 080341A0
strb  r1,[r4,0x1]               ; 080341A2
ldrb  r0,[r5,0x1]               ; 080341A4
lsr   r0,r0,0x6                 ; 080341A6
lsl   r0,r0,0x6                 ; 080341A8
mov   r3,r9                     ; 080341AA
and   r1,r3                     ; 080341AC
orr   r1,r0                     ; 080341AE
strb  r1,[r4,0x1]               ; 080341B0
ldrh  r1,[r5,0x2]               ; 080341B2
lsl   r1,r1,0x17                ; 080341B4
lsr   r1,r1,0x17                ; 080341B6
ldr   r2,=0x03002200            ; 080341B8
ldr   r3,=0x47D6                ; 080341BA
add   r0,r2,r3                  ; 080341BC
add   r1,0x70                   ; 080341BE
ldrh  r0,[r0]                   ; 080341C0
add   r1,r1,r0                  ; 080341C2
ldr   r2,=0x01FF                ; 080341C4
mov   r0,r2                     ; 080341C6
and   r1,r0                     ; 080341C8
ldrh  r2,[r4,0x2]               ; 080341CA
ldr   r0,=0xFFFFFE00            ; 080341CC
and   r0,r2                     ; 080341CE
orr   r0,r1                     ; 080341D0
strh  r0,[r4,0x2]               ; 080341D2
ldrb  r1,[r5,0x3]               ; 080341D4
mov   r0,0xE                    ; 080341D6
and   r0,r1                     ; 080341D8
ldrb  r2,[r4,0x3]               ; 080341DA
mov   r1,0xF                    ; 080341DC
neg   r1,r1                     ; 080341DE
and   r1,r2                     ; 080341E0
orr   r1,r0                     ; 080341E2
strb  r1,[r4,0x3]               ; 080341E4
ldrb  r0,[r5,0x3]               ; 080341E6
lsl   r0,r0,0x1B                ; 080341E8
lsr   r0,r0,0x1F                ; 080341EA
and   r0,r7                     ; 080341EC
lsl   r0,r0,0x4                 ; 080341EE
mov   r2,r12                    ; 080341F0
and   r2,r1                     ; 080341F2
orr   r2,r0                     ; 080341F4
strb  r2,[r4,0x3]               ; 080341F6
ldrb  r0,[r5,0x3]               ; 080341F8
lsl   r0,r0,0x1A                ; 080341FA
lsr   r0,r0,0x1F                ; 080341FC
and   r0,r7                     ; 080341FE
lsl   r0,r0,0x5                 ; 08034200
mov   r1,r10                    ; 08034202
and   r1,r2                     ; 08034204
orr   r1,r0                     ; 08034206
strb  r1,[r4,0x3]               ; 08034208
ldrb  r0,[r5,0x3]               ; 0803420A
lsr   r0,r0,0x6                 ; 0803420C
lsl   r0,r0,0x6                 ; 0803420E
mov   r3,r9                     ; 08034210
and   r1,r3                     ; 08034212
orr   r1,r0                     ; 08034214
strb  r1,[r4,0x3]               ; 08034216
ldrh  r1,[r5,0x4]               ; 08034218
lsl   r1,r1,0x16                ; 0803421A
lsr   r1,r1,0x16                ; 0803421C
ldrh  r2,[r4,0x4]               ; 0803421E
ldr   r0,=0xFFFFFC00            ; 08034220
and   r0,r2                     ; 08034222
orr   r0,r1                     ; 08034224
strh  r0,[r4,0x4]               ; 08034226
ldrb  r0,[r5,0x5]               ; 08034228
lsr   r0,r0,0x4                 ; 0803422A
lsl   r0,r0,0x4                 ; 0803422C
ldrb  r2,[r4,0x5]               ; 0803422E
mov   r1,0xF                    ; 08034230
and   r1,r2                     ; 08034232
orr   r1,r0                     ; 08034234
strb  r1,[r4,0x5]               ; 08034236
ldrh  r0,[r5,0x6]               ; 08034238
strh  r0,[r4,0x6]               ; 0803423A
ldrb  r0,[r5,0x5]               ; 0803423C
lsl   r0,r0,0x1C                ; 0803423E
lsr   r0,r0,0x1E                ; 08034240
mov   r2,r8                     ; 08034242
and   r0,r2                     ; 08034244
lsl   r0,r0,0x2                 ; 08034246
mov   r3,0xD                    ; 08034248
neg   r3,r3                     ; 0803424A
and   r1,r3                     ; 0803424C
orr   r1,r0                     ; 0803424E
strb  r1,[r4,0x5]               ; 08034250
add   r4,0x8                    ; 08034252
add   r5,0x8                    ; 08034254
ldrh  r0,[r5,0x6]               ; 08034256
ldr   r1,=0xFFFF                ; 08034258
cmp   r0,r1                     ; 0803425A
beq   @@Code08034260            ; 0803425C
b     @@Code08034144            ; 0803425E
@@Code08034260:
mov   r7,0x0                    ; 08034260
ldr   r4,=0x44444444            ; 08034262
str   r4,[sp,0xC]               ; 08034264
ldr   r5,=0x02012000            ; 08034266
ldr   r2,=0x01005000            ; 08034268
ldr   r0,[sp,0x1C]              ; 0803426A
mov   r1,r5                     ; 0803426C
bl    swi_MemoryCopy32          ; 0803426E  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x10]              ; 08034272
ldr   r0,=0x03002200            ; 08034274
ldr   r2,=0x47CC                ; 08034276
add   r0,r0,r2                  ; 08034278
ldrh  r0,[r0]                   ; 0803427A
mov   r1,0xC                    ; 0803427C
and   r1,r0                     ; 0803427E
lsl   r1,r1,0xC                 ; 08034280
mov   r0,0xC0                   ; 08034282
lsl   r0,r0,0x13                ; 08034284
add   r1,r1,r0                  ; 08034286
ldr   r2,=0x01001000            ; 08034288
ldr   r0,[sp,0x20]              ; 0803428A
bl    swi_MemoryCopy32          ; 0803428C  Memory copy/fill, 32-byte blocks
mov   r3,0x95                   ; 08034290
lsl   r3,r3,0x4                 ; 08034292
add   r0,r6,r3                  ; 08034294
strh  r7,[r0]                   ; 08034296
ldr   r1,=DataPtrs0816DB0C      ; 08034298
ldr   r0,[r1]                   ; 0803429A
str   r0,[r6]                   ; 0803429C
cmp   r0,0x0                    ; 0803429E
beq   @@Code080342DE            ; 080342A0
ldr   r4,=0x02011000            ; 080342A2
mov   r8,r1                     ; 080342A4
@@Code080342A6:
ldr   r0,=0x44444444            ; 080342A6
str   r0,[sp,0x14]              ; 080342A8
add   r0,sp,0x14                ; 080342AA
mov   r1,r4                     ; 080342AC
ldr   r2,=0x05000200            ; 080342AE
bl    swi_MemoryCopy4or2        ; 080342B0  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r6                     ; 080342B4
bl    Sub08033E94               ; 080342B6
mov   r0,r4                     ; 080342BA
mov   r1,r5                     ; 080342BC
mov   r2,0x80                   ; 080342BE
lsl   r2,r2,0x2                 ; 080342C0
bl    swi_MemoryCopy32          ; 080342C2  Memory copy/fill, 32-byte blocks
mov   r0,0x80                   ; 080342C6
lsl   r0,r0,0x4                 ; 080342C8
add   r5,r5,r0                  ; 080342CA
add   r0,r7,0x1                 ; 080342CC
lsl   r0,r0,0x10                ; 080342CE
lsr   r7,r0,0x10                ; 080342D0
lsl   r0,r7,0x2                 ; 080342D2
add   r0,r8                     ; 080342D4
ldr   r0,[r0]                   ; 080342D6
str   r0,[r6]                   ; 080342D8
cmp   r0,0x0                    ; 080342DA
bne   @@Code080342A6            ; 080342DC
@@Code080342DE:
ldr   r0,=0x02012000            ; 080342DE
ldr   r5,=0x03002200            ; 080342E0
ldr   r1,=0x47CC                ; 080342E2
add   r7,r5,r1                  ; 080342E4
ldrh  r2,[r7]                   ; 080342E6
mov   r1,0xC                    ; 080342E8
and   r1,r2                     ; 080342EA
lsl   r1,r1,0xC                 ; 080342EC
mov   r4,0xC0                   ; 080342EE
lsl   r4,r4,0x13                ; 080342F0
add   r1,r1,r4                  ; 080342F2
mov   r2,0x80                   ; 080342F4
lsl   r2,r2,0x3                 ; 080342F6
bl    swi_MemoryCopy32          ; 080342F8  Memory copy/fill, 32-byte blocks
ldr   r0,=Data082DDA18          ; 080342FC
ldrh  r2,[r7]                   ; 080342FE
mov   r1,0xF8                   ; 08034300
lsl   r1,r1,0x5                 ; 08034302
and   r1,r2                     ; 08034304
lsl   r1,r1,0x3                 ; 08034306
add   r1,r1,r4                  ; 08034308
bl    swi_LZ77_VRAM             ; 0803430A  LZ77 decompress (VRAM)
ldr   r2,=Sub08033BA8+1         ; 0803430E
mov   r8,r2                     ; 08034310
ldr   r3,=Sub08033A2C+1         ; 08034312
b     @@Code080343FC            ; 08034314
.pool                           ; 08034316

@@Code080343FC:
mov   r9,r3                     ; 080343FC
sub   r4,r2,r3                  ; 080343FE
lsl   r4,r4,0x10                ; 08034400
lsr   r7,r4,0x10                ; 08034402
mov   r0,r5                     ; 08034404
mov   r1,r7                     ; 08034406
bl    DynamicAllocate           ; 08034408
ldr   r1,=0x4190                ; 0803440C
add   r3,r5,r1                  ; 0803440E
ldr   r2,=0x040000D4            ; 08034410
mov   r1,r9                     ; 08034412
str   r1,[r2]                   ; 08034414
str   r0,[r2,0x4]               ; 08034416
lsr   r4,r4,0x11                ; 08034418
mov   r1,0x80                   ; 0803441A
lsl   r1,r1,0x18                ; 0803441C
orr   r4,r1                     ; 0803441E
str   r4,[r2,0x8]               ; 08034420
ldr   r1,[r2,0x8]               ; 08034422
add   r0,0x1                    ; 08034424
str   r0,[r3]                   ; 08034426
mov   r0,0x0                    ; 08034428
str   r0,[sp,0x18]              ; 0803442A
mov   r1,0x80                   ; 0803442C
lsl   r1,r1,0x12                ; 0803442E
ldr   r2,=0x05002000            ; 08034430
ldr   r0,[sp,0x24]              ; 08034432
bl    swi_MemoryCopy4or2        ; 08034434  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r6                     ; 08034438
bl    Sub_bx_r8                 ; 0803443A
ldr   r2,=0x093E                ; 0803443E
add   r1,r6,r2                  ; 08034440
mov   r0,0x1                    ; 08034442
strh  r0,[r1]                   ; 08034444
ldr   r3,=0x4071                ; 08034446
add   r2,r5,r3                  ; 08034448
ldrb  r1,[r2]                   ; 0803444A
mov   r0,0xFD                   ; 0803444C
and   r0,r1                     ; 0803444E
strb  r0,[r2]                   ; 08034450
mov   r0,0x1D                   ; 08034452  1D: Credits
bl    PlayYIMusic               ; 08034454
ldr   r0,=0x4905                ; 08034458
add   r5,r5,r0                  ; 0803445A
ldrb  r0,[r5]                   ; 0803445C
add   r0,0x1                    ; 0803445E
strb  r0,[r5]                   ; 08034460
add   sp,0x28                   ; 08034462
pop   {r3-r5}                   ; 08034464
mov   r8,r3                     ; 08034466
mov   r9,r4                     ; 08034468
mov   r10,r5                    ; 0803446A
pop   {r4-r7}                   ; 0803446C
pop   {r0}                      ; 0803446E
bx    r0                        ; 08034470
.pool                           ; 08034472

Sub0803448C:
push  {r4-r5,lr}                ; 0803448C
mov   r4,r0                     ; 0803448E
ldr   r1,=0x0918                ; 08034490
add   r0,r4,r1                  ; 08034492
ldrh  r0,[r0]                   ; 08034494
sub   r0,0x4                    ; 08034496
lsl   r0,r0,0x10                ; 08034498
lsr   r0,r0,0x10                ; 0803449A
cmp   r0,0x3                    ; 0803449C
bhi   @@Code080344C0            ; 0803449E
ldr   r3,=0x0926                ; 080344A0
add   r2,r4,r3                  ; 080344A2
ldrh  r0,[r2]                   ; 080344A4
add   r3,r0,0x1                 ; 080344A6
strh  r3,[r2]                   ; 080344A8
ldrh  r1,[r4,0x12]              ; 080344AA
cmp   r1,0x7F                   ; 080344AC
bls   @@Code080344B2            ; 080344AE
mov   r1,0x0                    ; 080344B0
@@Code080344B2:
add   r0,r1,0x3                 ; 080344B2
lsl   r0,r0,0x10                ; 080344B4
lsl   r1,r3,0x10                ; 080344B6
cmp   r1,r0                     ; 080344B8
blo   @@Code080345B0            ; 080344BA
mov   r0,0x0                    ; 080344BC
strh  r0,[r2]                   ; 080344BE
@@Code080344C0:
mov   r5,0x92                   ; 080344C0
lsl   r5,r5,0x4                 ; 080344C2
add   r0,r4,r5                  ; 080344C4
ldrh  r3,[r0]                   ; 080344C6
ldr   r2,[r4,0x10]              ; 080344C8
cmp   r2,0x0                    ; 080344CA
beq   @@Code080344E8            ; 080344CC
lsl   r0,r3,0x1                 ; 080344CE
add   r1,r0,r3                  ; 080344D0
lsl   r1,r1,0x2                 ; 080344D2
add   r1,r4,r1                  ; 080344D4
lsr   r2,r2,0x8                 ; 080344D6
strh  r2,[r1,0x14]              ; 080344D8
mov   r5,r0                     ; 080344DA
b     @@Code080344FA            ; 080344DC
.pool                           ; 080344DE

@@Code080344E8:
lsl   r2,r3,0x1                 ; 080344E8
add   r0,r2,r3                  ; 080344EA
lsl   r0,r0,0x2                 ; 080344EC
add   r0,r4,r0                  ; 080344EE
ldr   r5,=0x093C                ; 080344F0
add   r1,r4,r5                  ; 080344F2
ldrh  r1,[r1]                   ; 080344F4
strh  r1,[r0,0x14]              ; 080344F6
mov   r5,r2                     ; 080344F8
@@Code080344FA:
ldr   r1,=0x0916                ; 080344FA
add   r0,r4,r1                  ; 080344FC
ldrh  r0,[r0]                   ; 080344FE
cmp   r0,0x0                    ; 08034500
beq   @@Code0803451C            ; 08034502
ldr   r2,=0x093A                ; 08034504
add   r1,r4,r2                  ; 08034506
ldrh  r0,[r1]                   ; 08034508
cmp   r0,0x0                    ; 0803450A
beq   @@Code0803451C            ; 0803450C
sub   r0,0x1                    ; 0803450E
strh  r0,[r1]                   ; 08034510
ldr   r0,=0x0924                ; 08034512
add   r1,r4,r0                  ; 08034514
ldrh  r0,[r1]                   ; 08034516
add   r0,0x1                    ; 08034518
strh  r0,[r1]                   ; 0803451A
@@Code0803451C:
ldr   r1,=0x0914                ; 0803451C
add   r2,r4,r1                  ; 0803451E
ldrh  r1,[r2]                   ; 08034520
add   r0,r1,0x1                 ; 08034522
lsl   r0,r0,0x10                ; 08034524
lsr   r1,r0,0x10                ; 08034526
cmp   r1,0xC                    ; 08034528
bls   @@Code0803452E            ; 0803452A
mov   r1,0x0                    ; 0803452C
@@Code0803452E:
strh  r1,[r2]                   ; 0803452E
add   r3,r5,r3                  ; 08034530
lsl   r3,r3,0x2                 ; 08034532
add   r3,r4,r3                  ; 08034534
ldr   r5,=0x0924                ; 08034536
add   r2,r4,r5                  ; 08034538
ldr   r0,=Data0816DBCA          ; 0803453A
lsl   r1,r1,0x1                 ; 0803453C
add   r0,r1,r0                  ; 0803453E
ldrh  r0,[r0]                   ; 08034540
ldrh  r2,[r2]                   ; 08034542
add   r0,r0,r2                  ; 08034544
strh  r0,[r3,0x18]              ; 08034546
ldr   r0,=Data0816DBB0          ; 08034548
add   r1,r1,r0                  ; 0803454A
ldr   r0,=0x0922                ; 0803454C
add   r2,r4,r0                  ; 0803454E
ldrh  r0,[r1]                   ; 08034550
ldrh  r1,[r2]                   ; 08034552
orr   r0,r1                     ; 08034554
strh  r0,[r3,0x1C]              ; 08034556
ldr   r1,=0x0928                ; 08034558
add   r0,r4,r1                  ; 0803455A
ldrh  r0,[r0]                   ; 0803455C
cmp   r0,0x0                    ; 0803455E
bne   @@Code080345B0            ; 08034560
ldr   r2,=0x093C                ; 08034562
add   r0,r4,r2                  ; 08034564
ldrh  r0,[r0]                   ; 08034566
cmp   r0,0x0                    ; 08034568
bne   @@Code080345B0            ; 0803456A
ldr   r3,=0x092C                ; 0803456C
add   r1,r4,r3                  ; 0803456E
ldrh  r3,[r1]                   ; 08034570
add   r3,0x1                    ; 08034572
mov   r0,0x3                    ; 08034574
and   r3,r0                     ; 08034576
strh  r3,[r1]                   ; 08034578
ldr   r0,=Data0816DBE4          ; 0803457A
lsl   r2,r3,0x1                 ; 0803457C
add   r0,r2,r0                  ; 0803457E
ldrh  r1,[r0]                   ; 08034580
ldr   r5,=0x0484                ; 08034582
add   r0,r4,r5                  ; 08034584
strh  r1,[r0]                   ; 08034586
ldr   r0,=Data0816DBEC          ; 08034588
add   r0,r2,r0                  ; 0803458A
ldrh  r1,[r0]                   ; 0803458C
mov   r3,0xDF                   ; 0803458E
lsl   r3,r3,0x2                 ; 08034590
add   r0,r4,r3                  ; 08034592
strh  r1,[r0]                   ; 08034594
ldr   r0,=Data0816DBF4          ; 08034596
add   r0,r2,r0                  ; 08034598
ldrh  r1,[r0]                   ; 0803459A
sub   r5,0xB4                   ; 0803459C
add   r0,r4,r5                  ; 0803459E
strh  r1,[r0]                   ; 080345A0
ldr   r0,=Data0816DBFC          ; 080345A2
add   r2,r2,r0                  ; 080345A4
ldrh  r1,[r2]                   ; 080345A6
mov   r2,0xC4                   ; 080345A8
lsl   r2,r2,0x2                 ; 080345AA
add   r0,r4,r2                  ; 080345AC
strh  r1,[r0]                   ; 080345AE
@@Code080345B0:
pop   {r4-r5}                   ; 080345B0
pop   {r0}                      ; 080345B2
bx    r0                        ; 080345B4
.pool                           ; 080345B6

Sub080345F4:
push  {lr}                      ; 080345F4
mov   r2,r0                     ; 080345F6
ldr   r0,=0x0936                ; 080345F8
add   r1,r2,r0                  ; 080345FA
ldrh  r0,[r1]                   ; 080345FC
sub   r0,0x1                    ; 080345FE
strh  r0,[r1]                   ; 08034600
lsl   r0,r0,0x10                ; 08034602
cmp   r0,0x0                    ; 08034604
bne   @@Code0803461A            ; 08034606
ldr   r0,=0x0918                ; 08034608
add   r1,r2,r0                  ; 0803460A
ldrh  r0,[r1]                   ; 0803460C
add   r0,0x1                    ; 0803460E
strh  r0,[r1]                   ; 08034610
ldr   r0,=0x0944                ; 08034612
add   r1,r2,r0                  ; 08034614
mov   r0,0x2                    ; 08034616
strh  r0,[r1]                   ; 08034618
@@Code0803461A:
pop   {r0}                      ; 0803461A
bx    r0                        ; 0803461C
.pool                           ; 0803461E

Sub0803462C:
push  {lr}                      ; 0803462C
mov   r1,r0                     ; 0803462E
ldr   r2,=0x0946                ; 08034630
add   r0,r1,r2                  ; 08034632
ldrh  r0,[r0]                   ; 08034634
cmp   r0,0x23                   ; 08034636
bls   @@Code08034644            ; 08034638
ldr   r0,=0x0918                ; 0803463A
add   r1,r1,r0                  ; 0803463C
ldrh  r0,[r1]                   ; 0803463E
add   r0,0x1                    ; 08034640
strh  r0,[r1]                   ; 08034642
@@Code08034644:
pop   {r0}                      ; 08034644
bx    r0                        ; 08034646
.pool                           ; 08034648

Sub08034650:
push  {r4,lr}                   ; 08034650
mov   r3,r0                     ; 08034652
ldr   r1,=0x03002200            ; 08034654
ldr   r2,=0x48FB                ; 08034656
add   r0,r1,r2                  ; 08034658
mov   r2,0x0                    ; 0803465A
strb  r2,[r0]                   ; 0803465C
ldr   r4,=0x48FA                ; 0803465E
add   r0,r1,r4                  ; 08034660
strb  r2,[r0]                   ; 08034662
sub   r4,0x6E                   ; 08034664
add   r0,r1,r4                  ; 08034666
strh  r2,[r0]                   ; 08034668
ldr   r0,=0x4888                ; 0803466A
add   r1,r1,r0                  ; 0803466C
mov   r0,0xF2                   ; 0803466E
strh  r0,[r1]                   ; 08034670
ldr   r0,=0x020105C2            ; 08034672
ldrh  r0,[r0]                   ; 08034674
cmp   r0,0x0                    ; 08034676
beq   @@Code08034688            ; 08034678
ldr   r1,=0x0944                ; 0803467A
add   r0,r3,r1                  ; 0803467C
mov   r1,0x3                    ; 0803467E
strh  r1,[r0]                   ; 08034680
ldr   r4,=0x0948                ; 08034682
add   r0,r3,r4                  ; 08034684
strh  r2,[r0]                   ; 08034686
@@Code08034688:
pop   {r4}                      ; 08034688
pop   {r0}                      ; 0803468A
bx    r0                        ; 0803468C
.pool                           ; 0803468E

Sub080346AC:
push  {r4,lr}                   ; 080346AC
mov   r2,r0                     ; 080346AE
ldr   r1,=0x0946                ; 080346B0
add   r0,r2,r1                  ; 080346B2
ldrh  r0,[r0]                   ; 080346B4
cmp   r0,0x23                   ; 080346B6
bls   @@Code080346F4            ; 080346B8
ldr   r3,=0x093C                ; 080346BA
add   r0,r2,r3                  ; 080346BC
ldrh  r3,[r0]                   ; 080346BE
cmp   r3,0x0                    ; 080346C0
bne   @@Code080346F4            ; 080346C2
ldr   r0,=0x0918                ; 080346C4
add   r1,r2,r0                  ; 080346C6
ldrh  r0,[r1]                   ; 080346C8
add   r0,0x1                    ; 080346CA
mov   r4,0x0                    ; 080346CC
strh  r0,[r1]                   ; 080346CE
ldr   r1,=0x0944                ; 080346D0
add   r0,r2,r1                  ; 080346D2
strh  r3,[r0]                   ; 080346D4
ldr   r3,=0x0916                ; 080346D6
add   r1,r2,r3                  ; 080346D8
mov   r3,0x80                   ; 080346DA
lsl   r3,r3,0x1                 ; 080346DC
mov   r0,r3                     ; 080346DE
ldrh  r3,[r1]                   ; 080346E0
add   r0,r0,r3                  ; 080346E2
strh  r0,[r1]                   ; 080346E4
mov   r0,r2                     ; 080346E6
bl    Sub08034650               ; 080346E8
ldr   r0,=0x03002200            ; 080346EC
ldr   r1,=0x48FA                ; 080346EE
add   r0,r0,r1                  ; 080346F0
strb  r4,[r0]                   ; 080346F2
@@Code080346F4:
pop   {r4}                      ; 080346F4
pop   {r0}                      ; 080346F6
bx    r0                        ; 080346F8
.pool                           ; 080346FA

Sub08034718:
ldr   r1,=0x094A                ; 08034718
add   r0,r0,r1                  ; 0803471A
mov   r1,0x1                    ; 0803471C
strh  r1,[r0]                   ; 0803471E
bx    lr                        ; 08034720
.pool                           ; 08034722

Sub08034728:
push  {lr}                      ; 08034728
mov   r1,r0                     ; 0803472A
ldr   r2,=0x093A                ; 0803472C
add   r0,r1,r2                  ; 0803472E
ldrh  r0,[r0]                   ; 08034730
cmp   r0,0x16                   ; 08034732
bhi   @@Code0803473C            ; 08034734
mov   r0,r1                     ; 08034736
bl    Sub08034718               ; 08034738
@@Code0803473C:
pop   {r0}                      ; 0803473C
bx    r0                        ; 0803473E
.pool                           ; 08034740

Sub08034744:
push  {lr}                      ; 08034744
mov   r2,r0                     ; 08034746
ldr   r1,=0x092E                ; 08034748
add   r0,r2,r1                  ; 0803474A
ldrh  r1,[r0]                   ; 0803474C
mov   r0,0x1                    ; 0803474E
and   r0,r1                     ; 08034750
cmp   r0,0x0                    ; 08034752
beq   @@Code0803475C            ; 08034754
mov   r0,r2                     ; 08034756
bl    Sub08034718               ; 08034758
@@Code0803475C:
pop   {r0}                      ; 0803475C
bx    r0                        ; 0803475E
.pool                           ; 08034760

Sub08034764:
push  {r4-r5,lr}                ; 08034764
mov   r5,r0                     ; 08034766
ldr   r1,=DataPtrs0816DC04      ; 08034768
ldr   r0,=0x0928                ; 0803476A
add   r4,r5,r0                  ; 0803476C
ldrh  r0,[r4]                   ; 0803476E
lsl   r0,r0,0x2                 ; 08034770
add   r0,r0,r1                  ; 08034772
ldr   r0,[r0]                   ; 08034774
ldr   r1,=0x0600C800            ; 08034776
bl    swi_LZ77_VRAM             ; 08034778  LZ77 decompress (VRAM)
ldrh  r0,[r4]                   ; 0803477C
add   r0,0x1                    ; 0803477E
mov   r1,0x0                    ; 08034780
strh  r0,[r4]                   ; 08034782
ldr   r0,=0x093E                ; 08034784
add   r5,r5,r0                  ; 08034786
strh  r1,[r5]                   ; 08034788
pop   {r4-r5}                   ; 0803478A
pop   {r0}                      ; 0803478C
bx    r0                        ; 0803478E
.pool                           ; 08034790

Sub080347A0:
push  {r4-r7,lr}                ; 080347A0
mov   r7,r10                    ; 080347A2
mov   r6,r9                     ; 080347A4
mov   r5,r8                     ; 080347A6
push  {r5-r7}                   ; 080347A8
add   sp,-0x10                  ; 080347AA
mov   r5,r0                     ; 080347AC
mov   r1,sp                     ; 080347AE
mov   r0,0x0                    ; 080347B0
strh  r0,[r1]                   ; 080347B2
ldr   r0,=0x02010400            ; 080347B4
mov   r8,r0                     ; 080347B6
ldr   r2,=0x01000200            ; 080347B8
mov   r0,sp                     ; 080347BA
mov   r1,r8                     ; 080347BC
bl    swi_MemoryCopy4or2        ; 080347BE  Memory copy/fill, 4- or 2-byte blocks
ldr   r4,=Data082DE51C          ; 080347C2
mov   r6,0x80                   ; 080347C4
lsl   r6,r6,0x1                 ; 080347C6
mov   r0,r4                     ; 080347C8
mov   r1,r8                     ; 080347CA
mov   r2,r6                     ; 080347CC
bl    swi_MemoryCopy4or2        ; 080347CE  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010600            ; 080347D2
mov   r0,r4                     ; 080347D4
mov   r2,r6                     ; 080347D6
bl    swi_MemoryCopy4or2        ; 080347D8  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200            ; 080347DC
mov   r8,r1                     ; 080347DE
ldr   r2,=0x4967                ; 080347E0
add   r2,r8                     ; 080347E2
ldrb  r1,[r2]                   ; 080347E4
mov   r0,0x3                    ; 080347E6
mov   r6,0x0                    ; 080347E8
orr   r0,r1                     ; 080347EA
strb  r0,[r2]                   ; 080347EC
mov   r0,r5                     ; 080347EE
mov   r1,0x1                    ; 080347F0
bl    Sub08033ED0               ; 080347F2
ldrh  r1,[r5,0x18]              ; 080347F6
ldr   r2,=0x0924                ; 080347F8
add   r0,r5,r2                  ; 080347FA
strh  r1,[r0]                   ; 080347FC
mov   r0,r5                     ; 080347FE
bl    Sub08034764               ; 08034800
str   r6,[sp,0x4]               ; 08034804
add   r0,sp,0x4                 ; 08034806
ldr   r1,=0x47CC                ; 08034808
add   r1,r8                     ; 0803480A
mov   r10,r1                    ; 0803480C
ldrh  r2,[r1]                   ; 0803480E
mov   r4,0xC                    ; 08034810
mov   r1,r4                     ; 08034812
and   r1,r2                     ; 08034814
lsl   r1,r1,0xC                 ; 08034816
mov   r7,0xC0                   ; 08034818
lsl   r7,r7,0x13                ; 0803481A
add   r1,r1,r7                  ; 0803481C
ldr   r2,=0x05001000            ; 0803481E
bl    swi_MemoryCopy4or2        ; 08034820  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=CreditsText24         ; 08034824
str   r0,[r5]                   ; 08034826
mov   r2,0x95                   ; 08034828
lsl   r2,r2,0x4                 ; 0803482A
add   r0,r5,r2                  ; 0803482C
mov   r1,0x1                    ; 0803482E
strh  r1,[r0]                   ; 08034830
ldr   r0,=0x44444444            ; 08034832
str   r0,[sp,0x8]               ; 08034834
add   r0,sp,0x8                 ; 08034836
ldr   r2,=0x02011000            ; 08034838
mov   r9,r2                     ; 0803483A
ldr   r2,=0x05000200            ; 0803483C
mov   r1,r9                     ; 0803483E
bl    swi_MemoryCopy4or2        ; 08034840  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r5                     ; 08034844
bl    Sub08033E94               ; 08034846
mov   r1,r10                    ; 0803484A
ldrh  r0,[r1]                   ; 0803484C
and   r4,r0                     ; 0803484E
lsl   r4,r4,0xC                 ; 08034850
add   r4,r4,r7                  ; 08034852
mov   r2,0x80                   ; 08034854
lsl   r2,r2,0x2                 ; 08034856
mov   r0,r9                     ; 08034858
mov   r1,r4                     ; 0803485A
bl    swi_MemoryCopy32          ; 0803485C  Memory copy/fill, 32-byte blocks
str   r6,[r5,0x8]               ; 08034860
ldr   r0,=0x47E0                ; 08034862
add   r0,r8                     ; 08034864
strh  r6,[r0]                   ; 08034866
ldr   r2,=0x47F0                ; 08034868
add   r8,r2                     ; 0803486A
mov   r0,r8                     ; 0803486C
strh  r6,[r0]                   ; 0803486E
ldrh  r0,[r0]                   ; 08034870
lsl   r0,r0,0xC                 ; 08034872
str   r0,[r5,0x4]               ; 08034874
ldr   r1,=0x0944                ; 08034876
add   r0,r5,r1                  ; 08034878
mov   r2,0x1                    ; 0803487A
strh  r2,[r0]                   ; 0803487C
add   r1,0x4                    ; 0803487E
add   r0,r5,r1                  ; 08034880
strh  r6,[r0]                   ; 08034882
str   r6,[sp,0xC]               ; 08034884
add   r0,sp,0xC                 ; 08034886
mov   r1,0x80                   ; 08034888
lsl   r1,r1,0x12                ; 0803488A
ldr   r2,=0x05002000            ; 0803488C
bl    swi_MemoryCopy4or2        ; 0803488E  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x093E                ; 08034892
add   r0,r5,r2                  ; 08034894
mov   r1,0x1                    ; 08034896
strh  r1,[r0]                   ; 08034898
sub   r2,0x1C                   ; 0803489A
add   r0,r5,r2                  ; 0803489C
strh  r6,[r0]                   ; 0803489E
mov   r1,0x92                   ; 080348A0
lsl   r1,r1,0x4                 ; 080348A2
add   r0,r5,r1                  ; 080348A4
strh  r6,[r0]                   ; 080348A6
add   r2,0x18                   ; 080348A8
add   r0,r5,r2                  ; 080348AA
strh  r6,[r0]                   ; 080348AC
add   r1,0x1C                   ; 080348AE
add   r0,r5,r1                  ; 080348B0
strh  r6,[r0]                   ; 080348B2
sub   r2,0x24                   ; 080348B4
add   r0,r5,r2                  ; 080348B6
strh  r6,[r0]                   ; 080348B8
sub   r1,0x1E                   ; 080348BA
add   r0,r5,r1                  ; 080348BC
strh  r6,[r0]                   ; 080348BE
sub   r2,0x2                    ; 080348C0
add   r1,r5,r2                  ; 080348C2
mov   r0,0x60                   ; 080348C4
strh  r0,[r1]                   ; 080348C6
ldr   r0,=0x0918                ; 080348C8
add   r1,r5,r0                  ; 080348CA
ldrh  r0,[r1]                   ; 080348CC
add   r0,0x1                    ; 080348CE
strh  r0,[r1]                   ; 080348D0
ldr   r0,=0x00FE3000            ; 080348D2
str   r0,[r5,0x10]              ; 080348D4
ldr   r1,=0x094E                ; 080348D6
add   r5,r5,r1                  ; 080348D8
strh  r6,[r5]                   ; 080348DA
add   sp,0x10                   ; 080348DC
pop   {r3-r5}                   ; 080348DE
mov   r8,r3                     ; 080348E0
mov   r9,r4                     ; 080348E2
mov   r10,r5                    ; 080348E4
pop   {r4-r7}                   ; 080348E6
pop   {r0}                      ; 080348E8
bx    r0                        ; 080348EA
.pool                           ; 080348EC

Sub08034940:
push  {lr}                      ; 08034940
bl    Sub08034744               ; 08034942
pop   {r0}                      ; 08034946
bx    r0                        ; 08034948
.pool                           ; 0803494A

Sub0803494C:
push  {lr}                      ; 0803494C
mov   r2,r0                     ; 0803494E
ldr   r3,[r2,0x10]              ; 08034950
mov   r0,0x80                   ; 08034952
lsl   r0,r0,0x10                ; 08034954
and   r3,r0                     ; 08034956
cmp   r3,0x0                    ; 08034958
beq   @@Code08034962            ; 0803495A
mov   r0,0x0                    ; 0803495C
str   r0,[r2,0x10]              ; 0803495E
b     @@Code080349AC            ; 08034960
@@Code08034962:
ldr   r0,=0x094E                ; 08034962
add   r1,r2,r0                  ; 08034964
ldrh  r0,[r1]                   ; 08034966
add   r0,0x1                    ; 08034968
strh  r0,[r1]                   ; 0803496A
lsl   r0,r0,0x10                ; 0803496C
lsr   r0,r0,0x10                ; 0803496E
cmp   r0,0x5                    ; 08034970
bls   @@Code08034980            ; 08034972
strh  r3,[r1]                   ; 08034974
ldr   r0,=0x0924                ; 08034976
add   r1,r2,r0                  ; 08034978
ldrh  r0,[r1]                   ; 0803497A
add   r0,0x1                    ; 0803497C
strh  r0,[r1]                   ; 0803497E
@@Code08034980:
ldr   r0,[r2,0x10]              ; 08034980
add   r0,0x78                   ; 08034982
str   r0,[r2,0x10]              ; 08034984
ldr   r1,=0x0001BEFF            ; 08034986
cmp   r0,r1                     ; 08034988
bls   @@Code080349AC            ; 0803498A
ldr   r0,=0x0918                ; 0803498C
add   r1,r2,r0                  ; 0803498E
ldrh  r0,[r1]                   ; 08034990
add   r0,0x1                    ; 08034992
strh  r0,[r1]                   ; 08034994
mov   r0,r2                     ; 08034996
bl    Sub08034650               ; 08034998
ldr   r0,=0x03002200            ; 0803499C
ldr   r1,=0x48FA                ; 0803499E
add   r0,r0,r1                  ; 080349A0
mov   r1,0x0                    ; 080349A2
strb  r1,[r0]                   ; 080349A4
mov   r0,0x20                   ; 080349A6
bl    Sub0812C458               ; 080349A8
@@Code080349AC:
pop   {r0}                      ; 080349AC
bx    r0                        ; 080349AE
.pool                           ; 080349B0

Sub080349C8:
push  {r4-r7,lr}                ; 080349C8
mov   r7,r8                     ; 080349CA
push  {r7}                      ; 080349CC
mov   r12,r0                    ; 080349CE
ldr   r1,=0x093C                ; 080349D0
add   r1,r12                    ; 080349D2
ldrh  r0,[r1]                   ; 080349D4
cmp   r0,0x50                   ; 080349D6
bhi   @@Code08034AC4            ; 080349D8
mov   r5,r0                     ; 080349DA
add   r0,r5,0x2                 ; 080349DC
lsl   r0,r0,0x10                ; 080349DE
lsr   r5,r0,0x10                ; 080349E0
strh  r5,[r1]                   ; 080349E2
mov   r0,0x2                    ; 080349E4
and   r0,r5                     ; 080349E6
cmp   r0,0x0                    ; 080349E8
beq   @@Code08034A0E            ; 080349EA
mov   r1,r12                    ; 080349EC
add   r1,0x46                   ; 080349EE
ldrh  r0,[r1]                   ; 080349F0
add   r0,0x1                    ; 080349F2
strh  r0,[r1]                   ; 080349F4
add   r1,0x18                   ; 080349F6
ldrh  r0,[r1]                   ; 080349F8
sub   r0,0x1                    ; 080349FA
strh  r0,[r1]                   ; 080349FC
add   r1,0x18                   ; 080349FE
ldrh  r0,[r1]                   ; 08034A00
add   r0,0x1                    ; 08034A02
strh  r0,[r1]                   ; 08034A04
add   r1,0x18                   ; 08034A06
ldrh  r0,[r1]                   ; 08034A08
sub   r0,0x1                    ; 08034A0A
strh  r0,[r1]                   ; 08034A0C
@@Code08034A0E:
mov   r0,0x8                    ; 08034A0E
and   r0,r5                     ; 08034A10
cmp   r0,0x0                    ; 08034A12
beq   @@Code08034A28            ; 08034A14
mov   r1,r12                    ; 08034A16
add   r1,0x48                   ; 08034A18
ldrh  r0,[r1]                   ; 08034A1A
add   r0,0x1                    ; 08034A1C
strh  r0,[r1]                   ; 08034A1E
add   r1,0x18                   ; 08034A20
ldrh  r0,[r1]                   ; 08034A22
add   r0,0x1                    ; 08034A24
strh  r0,[r1]                   ; 08034A26
@@Code08034A28:
mov   r1,r12                    ; 08034A28
add   r1,0x52                   ; 08034A2A
ldrh  r0,[r1]                   ; 08034A2C
add   r0,0x1                    ; 08034A2E
strh  r0,[r1]                   ; 08034A30
add   r1,0x18                   ; 08034A32
ldrh  r0,[r1]                   ; 08034A34
sub   r0,0x1                    ; 08034A36
strh  r0,[r1]                   ; 08034A38
add   r1,0x18                   ; 08034A3A
ldrh  r0,[r1]                   ; 08034A3C
add   r0,0x1                    ; 08034A3E
strh  r0,[r1]                   ; 08034A40
add   r1,0x18                   ; 08034A42
ldrh  r0,[r1]                   ; 08034A44
sub   r0,0x1                    ; 08034A46
strh  r0,[r1]                   ; 08034A48
sub   r1,0x46                   ; 08034A4A
ldrh  r0,[r1]                   ; 08034A4C
sub   r0,0x1                    ; 08034A4E
strh  r0,[r1]                   ; 08034A50
add   r1,0x18                   ; 08034A52
ldrh  r0,[r1]                   ; 08034A54
sub   r0,0x1                    ; 08034A56
strh  r0,[r1]                   ; 08034A58
add   r1,0x18                   ; 08034A5A
ldrh  r0,[r1]                   ; 08034A5C
sub   r0,0x1                    ; 08034A5E
strh  r0,[r1]                   ; 08034A60
add   r1,0x18                   ; 08034A62
ldrh  r0,[r1]                   ; 08034A64
sub   r0,0x1                    ; 08034A66
strh  r0,[r1]                   ; 08034A68
mov   r0,0x70                   ; 08034A6A
and   r0,r5                     ; 08034A6C
lsr   r5,r0,0x4                 ; 08034A6E
mov   r4,0x0                    ; 08034A70
mov   r1,r12                    ; 08034A72
ldrh  r0,[r1,0x14]              ; 08034A74
ldr   r1,=0xFFFF                ; 08034A76
cmp   r0,r1                     ; 08034A78
beq   @@Code08034AD6            ; 08034A7A
ldr   r0,=Data0816DC14          ; 08034A7C
mov   r8,r0                     ; 08034A7E
mov   r6,r1                     ; 08034A80
mov   r7,0xFF                   ; 08034A82
@@Code08034A84:
lsl   r1,r4,0x1                 ; 08034A84
add   r1,r1,r4                  ; 08034A86
lsl   r1,r1,0x2                 ; 08034A88
mov   r0,r12                    ; 08034A8A
add   r3,r0,r1                  ; 08034A8C
ldrh  r0,[r3,0x1C]              ; 08034A8E
mov   r2,r7                     ; 08034A90
and   r2,r0                     ; 08034A92
lsl   r0,r5,0x1                 ; 08034A94
add   r0,r0,r1                  ; 08034A96
add   r0,r8                     ; 08034A98
ldrh  r0,[r0]                   ; 08034A9A
orr   r2,r0                     ; 08034A9C
strh  r2,[r3,0x1C]              ; 08034A9E
add   r0,r4,0x1                 ; 08034AA0
lsl   r0,r0,0x10                ; 08034AA2
lsr   r4,r0,0x10                ; 08034AA4
lsl   r0,r4,0x1                 ; 08034AA6
add   r0,r0,r4                  ; 08034AA8
lsl   r0,r0,0x2                 ; 08034AAA
add   r0,r12                    ; 08034AAC
ldrh  r0,[r0,0x14]              ; 08034AAE
cmp   r0,r6                     ; 08034AB0
bne   @@Code08034A84            ; 08034AB2
b     @@Code08034AD6            ; 08034AB4
.pool                           ; 08034AB6

@@Code08034AC4:
ldr   r1,=0x0918                ; 08034AC4
add   r1,r12                    ; 08034AC6
ldrh  r0,[r1]                   ; 08034AC8
add   r0,0x1                    ; 08034ACA
mov   r2,0x0                    ; 08034ACC
strh  r0,[r1]                   ; 08034ACE
ldr   r0,=0x091E                ; 08034AD0
add   r0,r12                    ; 08034AD2
strh  r2,[r0]                   ; 08034AD4
@@Code08034AD6:
pop   {r3}                      ; 08034AD6
mov   r8,r3                     ; 08034AD8
pop   {r4-r7}                   ; 08034ADA
pop   {r0}                      ; 08034ADC
bx    r0                        ; 08034ADE
.pool                           ; 08034AE0

Sub08034AE8:
push  {r4-r6,lr}                ; 08034AE8
mov   r6,r10                    ; 08034AEA
mov   r5,r9                     ; 08034AEC
mov   r4,r8                     ; 08034AEE
push  {r4-r6}                   ; 08034AF0
add   sp,-0x10                  ; 08034AF2
mov   r5,r0                     ; 08034AF4
mov   r1,sp                     ; 08034AF6
mov   r0,0x0                    ; 08034AF8
strh  r0,[r1]                   ; 08034AFA
ldr   r6,=0x02010400            ; 08034AFC
ldr   r2,=0x01000200            ; 08034AFE
mov   r0,sp                     ; 08034B00
mov   r1,r6                     ; 08034B02
bl    swi_MemoryCopy4or2        ; 08034B04  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data082DE71C          ; 08034B08
mov   r8,r0                     ; 08034B0A
mov   r4,0x80                   ; 08034B0C
lsl   r4,r4,0x1                 ; 08034B0E
mov   r1,r6                     ; 08034B10
mov   r2,r4                     ; 08034B12
bl    swi_MemoryCopy4or2        ; 08034B14  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010600            ; 08034B18
mov   r0,r8                     ; 08034B1A
mov   r2,r4                     ; 08034B1C
bl    swi_MemoryCopy4or2        ; 08034B1E  Memory copy/fill, 4- or 2-byte blocks
mov   r1,0xA0                   ; 08034B22
lsl   r1,r1,0x13                ; 08034B24
mov   r0,r6                     ; 08034B26
mov   r2,r4                     ; 08034B28
bl    swi_MemoryCopy32          ; 08034B2A  Memory copy/fill, 32-byte blocks
ldr   r1,=0x03002200            ; 08034B2E
mov   r8,r1                     ; 08034B30
ldr   r2,=0x4967                ; 08034B32
add   r2,r8                     ; 08034B34
ldrb  r1,[r2]                   ; 08034B36
mov   r0,0x3                    ; 08034B38
mov   r6,0x0                    ; 08034B3A
orr   r0,r1                     ; 08034B3C
strb  r0,[r2]                   ; 08034B3E
mov   r0,r5                     ; 08034B40
mov   r1,0x2                    ; 08034B42
bl    Sub08033ED0               ; 08034B44
ldrh  r1,[r5,0x18]              ; 08034B48
ldr   r2,=0x0924                ; 08034B4A
add   r0,r5,r2                  ; 08034B4C
strh  r1,[r0]                   ; 08034B4E
mov   r0,r5                     ; 08034B50
bl    Sub08034764               ; 08034B52
str   r6,[sp,0x4]               ; 08034B56
add   r0,sp,0x4                 ; 08034B58
ldr   r1,=0x47CC                ; 08034B5A
add   r1,r8                     ; 08034B5C
mov   r10,r1                    ; 08034B5E
ldrh  r2,[r1]                   ; 08034B60
mov   r4,0xC                    ; 08034B62
mov   r1,r4                     ; 08034B64
and   r1,r2                     ; 08034B66
lsl   r1,r1,0xC                 ; 08034B68
mov   r2,0xC0                   ; 08034B6A
lsl   r2,r2,0x13                ; 08034B6C
mov   r9,r2                     ; 08034B6E
add   r1,r9                     ; 08034B70
ldr   r2,=0x01001000            ; 08034B72
bl    swi_MemoryCopy32          ; 08034B74  Memory copy/fill, 32-byte blocks
ldr   r0,=0x44444444            ; 08034B78
str   r0,[sp,0x8]               ; 08034B7A
add   r0,sp,0x8                 ; 08034B7C
mov   r1,r10                    ; 08034B7E
ldrh  r2,[r1]                   ; 08034B80
mov   r1,r4                     ; 08034B82
and   r1,r2                     ; 08034B84
lsl   r1,r1,0xC                 ; 08034B86
add   r1,r9                     ; 08034B88
ldr   r2,=0x01000400            ; 08034B8A
bl    swi_MemoryCopy32          ; 08034B8C  Memory copy/fill, 32-byte blocks
ldr   r0,=0x47E0                ; 08034B90
add   r0,r8                     ; 08034B92
strh  r4,[r0]                   ; 08034B94
ldr   r2,=0x47F0                ; 08034B96
add   r8,r2                     ; 08034B98
mov   r0,r8                     ; 08034B9A
strh  r4,[r0]                   ; 08034B9C
lsl   r4,r4,0xC                 ; 08034B9E
str   r4,[r5,0x4]               ; 08034BA0
str   r6,[sp,0xC]               ; 08034BA2
add   r0,sp,0xC                 ; 08034BA4
mov   r1,0x80                   ; 08034BA6
lsl   r1,r1,0x12                ; 08034BA8
ldr   r2,=0x05002000            ; 08034BAA
bl    swi_MemoryCopy4or2        ; 08034BAC  Memory copy/fill, 4- or 2-byte blocks
ldr   r2,=0x093E                ; 08034BB0
add   r1,r5,r2                  ; 08034BB2
mov   r0,0x1                    ; 08034BB4
strh  r0,[r1]                   ; 08034BB6
ldr   r0,=0x093A                ; 08034BB8
add   r1,r5,r0                  ; 08034BBA
mov   r0,0x48                   ; 08034BBC
strh  r0,[r1]                   ; 08034BBE
ldr   r1,=0x093C                ; 08034BC0
add   r0,r5,r1                  ; 08034BC2
strh  r6,[r0]                   ; 08034BC4
sub   r2,0x28                   ; 08034BC6
add   r0,r5,r2                  ; 08034BC8
strh  r6,[r0]                   ; 08034BCA
sub   r1,0x1E                   ; 08034BCC
add   r0,r5,r1                  ; 08034BCE
strh  r6,[r0]                   ; 08034BD0
add   r2,0xA                    ; 08034BD2
add   r1,r5,r2                  ; 08034BD4
mov   r0,0x3                    ; 08034BD6
strh  r0,[r1]                   ; 08034BD8
ldr   r0,=0x0918                ; 08034BDA
add   r1,r5,r0                  ; 08034BDC
ldrh  r0,[r1]                   ; 08034BDE
add   r0,0x1                    ; 08034BE0
strh  r0,[r1]                   ; 08034BE2
ldr   r1,=0x0914                ; 08034BE4
add   r0,r5,r1                  ; 08034BE6
strh  r6,[r0]                   ; 08034BE8
add   r2,0x6                    ; 08034BEA
add   r0,r5,r2                  ; 08034BEC
strh  r6,[r0]                   ; 08034BEE
mov   r0,r5                     ; 08034BF0
bl    Sub080349C8               ; 08034BF2
mov   r0,0x1E                   ; 08034BF6  1E: Credits end (Our heroes are born!)
bl    PlayYIMusic               ; 08034BF8
add   sp,0x10                   ; 08034BFC
pop   {r3-r5}                   ; 08034BFE
mov   r8,r3                     ; 08034C00
mov   r9,r4                     ; 08034C02
mov   r10,r5                    ; 08034C04
pop   {r4-r6}                   ; 08034C06
pop   {r0}                      ; 08034C08
bx    r0                        ; 08034C0A
.pool                           ; 08034C0C

Sub08034C58:
push  {r4,lr}                   ; 08034C58
mov   r4,r0                     ; 08034C5A
bl    Sub08034718               ; 08034C5C
ldr   r0,=0x03002200            ; 08034C60
ldr   r1,=0x48FA                ; 08034C62
add   r0,r0,r1                  ; 08034C64
ldrb  r0,[r0]                   ; 08034C66
cmp   r0,0x7                    ; 08034C68
bls   @@Code08034C72            ; 08034C6A
mov   r0,r4                     ; 08034C6C
bl    Sub080349C8               ; 08034C6E
@@Code08034C72:
pop   {r4}                      ; 08034C72
pop   {r0}                      ; 08034C74
bx    r0                        ; 08034C76
.pool                           ; 08034C78

Sub08034C80:
push  {r4-r5,lr}                ; 08034C80
mov   r4,r0                     ; 08034C82
ldr   r0,=0x0914                ; 08034C84
add   r5,r4,r0                  ; 08034C86
ldrh  r2,[r5]                   ; 08034C88
add   r0,r2,0x1                 ; 08034C8A
lsl   r0,r0,0x10                ; 08034C8C
lsr   r2,r0,0x10                ; 08034C8E
cmp   r2,0x7                    ; 08034C90
bls   @@Code08034C96            ; 08034C92
mov   r2,0x4                    ; 08034C94
@@Code08034C96:
strh  r2,[r5]                   ; 08034C96
mov   r1,0x92                   ; 08034C98
lsl   r1,r1,0x4                 ; 08034C9A
add   r0,r4,r1                  ; 08034C9C
ldrh  r1,[r0]                   ; 08034C9E
lsl   r0,r1,0x1                 ; 08034CA0
add   r0,r0,r1                  ; 08034CA2
lsl   r0,r0,0x2                 ; 08034CA4
add   r3,r4,r0                  ; 08034CA6
ldr   r1,=Data0816DCA4          ; 08034CA8
lsl   r0,r2,0x1                 ; 08034CAA
add   r0,r0,r1                  ; 08034CAC
ldrh  r0,[r0]                   ; 08034CAE
strh  r0,[r3,0x1C]              ; 08034CB0
cmp   r2,0x3                    ; 08034CB2
bls   @@Code08034CDE            ; 08034CB4
ldrh  r0,[r3,0x18]              ; 08034CB6
sub   r0,0x3                    ; 08034CB8
strh  r0,[r3,0x18]              ; 08034CBA
ldrh  r0,[r3,0x16]              ; 08034CBC
add   r0,0x3                    ; 08034CBE
strh  r0,[r3,0x16]              ; 08034CC0
lsl   r0,r0,0x10                ; 08034CC2
lsr   r0,r0,0x10                ; 08034CC4
cmp   r0,0x4F                   ; 08034CC6
bls   @@Code08034CDE            ; 08034CC8
mov   r0,0x80                   ; 08034CCA
lsl   r0,r0,0x5                 ; 08034CCC
strh  r0,[r3,0x14]              ; 08034CCE
mov   r0,0x20                   ; 08034CD0
strh  r0,[r5]                   ; 08034CD2
ldr   r0,=0x0918                ; 08034CD4
add   r1,r4,r0                  ; 08034CD6
ldrh  r0,[r1]                   ; 08034CD8
add   r0,0x1                    ; 08034CDA
strh  r0,[r1]                   ; 08034CDC
@@Code08034CDE:
pop   {r4-r5}                   ; 08034CDE
pop   {r0}                      ; 08034CE0
bx    r0                        ; 08034CE2
.pool                           ; 08034CE4

Sub08034CF0:
push  {lr}                      ; 08034CF0
mov   r2,r0                     ; 08034CF2
ldr   r0,=0x0914                ; 08034CF4
add   r1,r2,r0                  ; 08034CF6
ldrh  r0,[r1]                   ; 08034CF8
sub   r0,0x1                    ; 08034CFA
strh  r0,[r1]                   ; 08034CFC
lsl   r0,r0,0x10                ; 08034CFE
cmp   r0,0x0                    ; 08034D00
bne   @@Code08034D1E            ; 08034D02
ldr   r3,=0x0918                ; 08034D04
add   r1,r2,r3                  ; 08034D06
ldrh  r0,[r1]                   ; 08034D08
add   r0,0x1                    ; 08034D0A
strh  r0,[r1]                   ; 08034D0C
ldr   r0,=0x093C                ; 08034D0E
add   r1,r2,r0                  ; 08034D10
mov   r3,0x80                   ; 08034D12
lsl   r3,r3,0x1                 ; 08034D14
mov   r0,r3                     ; 08034D16
ldrh  r1,[r1]                   ; 08034D18
add   r0,r0,r1                  ; 08034D1A
strh  r0,[r2,0x20]              ; 08034D1C
@@Code08034D1E:
pop   {r0}                      ; 08034D1E
bx    r0                        ; 08034D20
.pool                           ; 08034D22

Sub08034D30:
push  {lr}                      ; 08034D30
mov   r2,r0                     ; 08034D32
ldr   r0,=0x0914                ; 08034D34
add   r3,r2,r0                  ; 08034D36
ldrh  r0,[r3]                   ; 08034D38
add   r0,0x1                    ; 08034D3A
lsl   r0,r0,0x10                ; 08034D3C
lsr   r0,r0,0x10                ; 08034D3E
cmp   r0,0xA                    ; 08034D40
bls   @@Code08034D46            ; 08034D42
mov   r0,0x0                    ; 08034D44
@@Code08034D46:
strh  r0,[r3]                   ; 08034D46
ldr   r1,=Data0816DCB4          ; 08034D48
lsl   r0,r0,0x1                 ; 08034D4A
add   r0,r0,r1                  ; 08034D4C
ldrh  r0,[r0]                   ; 08034D4E
strh  r0,[r2,0x28]              ; 08034D50
ldrh  r0,[r2,0x22]              ; 08034D52
sub   r0,0x2                    ; 08034D54
strh  r0,[r2,0x22]              ; 08034D56
mov   r1,0x2                    ; 08034D58
and   r0,r1                     ; 08034D5A
cmp   r0,0x0                    ; 08034D5C
bne   @@Code08034D66            ; 08034D5E
ldrh  r0,[r2,0x24]              ; 08034D60
sub   r0,0x1                    ; 08034D62
strh  r0,[r2,0x24]              ; 08034D64
@@Code08034D66:
ldrh  r1,[r2,0x24]              ; 08034D66
mov   r0,0x80                   ; 08034D68
lsl   r0,r0,0x8                 ; 08034D6A
and   r0,r1                     ; 08034D6C
cmp   r0,0x0                    ; 08034D6E
beq   @@Code08034D8C            ; 08034D70
ldr   r0,=0xFFCB                ; 08034D72
cmp   r1,r0                     ; 08034D74
bhi   @@Code08034D8C            ; 08034D76
ldr   r0,=0x0918                ; 08034D78
add   r1,r2,r0                  ; 08034D7A
ldrh  r0,[r1]                   ; 08034D7C
add   r0,0x1                    ; 08034D7E
strh  r0,[r1]                   ; 08034D80
mov   r0,0x0                    ; 08034D82
strh  r0,[r3]                   ; 08034D84
mov   r0,0x80                   ; 08034D86
lsl   r0,r0,0x5                 ; 08034D88
strh  r0,[r2,0x20]              ; 08034D8A
@@Code08034D8C:
pop   {r0}                      ; 08034D8C
bx    r0                        ; 08034D8E
.pool                           ; 08034D90

Sub08034DA0:
push  {r4-r5,lr}                ; 08034DA0
mov   r5,r0                     ; 08034DA2
ldr   r0,=0x0914                ; 08034DA4
add   r4,r5,r0                  ; 08034DA6
ldrh  r2,[r4]                   ; 08034DA8
ldr   r3,=0x02010610            ; 08034DAA
ldr   r1,=Data0816DCCA          ; 08034DAC
lsr   r0,r2,0x1                 ; 08034DAE
lsl   r0,r0,0x1                 ; 08034DB0
add   r0,r0,r1                  ; 08034DB2
ldrh  r0,[r0]                   ; 08034DB4
strh  r0,[r3]                   ; 08034DB6
ldr   r1,=0x03002200            ; 08034DB8
ldr   r0,=0x4967                ; 08034DBA
add   r1,r1,r0                  ; 08034DBC
ldrb  r3,[r1]                   ; 08034DBE
mov   r0,0x2                    ; 08034DC0
orr   r0,r3                     ; 08034DC2
strb  r0,[r1]                   ; 08034DC4
add   r2,0x1                    ; 08034DC6
lsl   r2,r2,0x10                ; 08034DC8
lsr   r2,r2,0x10                ; 08034DCA
strh  r2,[r4]                   ; 08034DCC
cmp   r2,0xC                    ; 08034DCE
bls   @@Code08034DE6            ; 08034DD0
ldr   r1,=0x0918                ; 08034DD2
add   r0,r5,r1                  ; 08034DD4
ldrh  r1,[r0]                   ; 08034DD6
add   r1,0x1                    ; 08034DD8
strh  r1,[r0]                   ; 08034DDA
mov   r0,0x10                   ; 08034DDC
strh  r0,[r4]                   ; 08034DDE
mov   r0,r5                     ; 08034DE0
bl    Sub08034650               ; 08034DE2
@@Code08034DE6:
pop   {r4-r5}                   ; 08034DE6
pop   {r0}                      ; 08034DE8
bx    r0                        ; 08034DEA
.pool                           ; 08034DEC

Sub08034E04:
push  {r4-r6,lr}                ; 08034E04
mov   r6,r8                     ; 08034E06
push  {r6}                      ; 08034E08
add   sp,-0x8                   ; 08034E0A
mov   r4,r0                     ; 08034E0C
mov   r1,sp                     ; 08034E0E
mov   r0,0x0                    ; 08034E10
strh  r0,[r1]                   ; 08034E12
ldr   r0,=0x02010400            ; 08034E14
mov   r8,r0                     ; 08034E16
ldr   r2,=0x01000200            ; 08034E18
mov   r0,sp                     ; 08034E1A
mov   r1,r8                     ; 08034E1C
bl    swi_MemoryCopy4or2        ; 08034E1E  Memory copy/fill, 4- or 2-byte blocks
ldr   r5,=Data082DE91C          ; 08034E22
mov   r6,0x80                   ; 08034E24
lsl   r6,r6,0x1                 ; 08034E26
mov   r0,r5                     ; 08034E28
mov   r1,r8                     ; 08034E2A
mov   r2,r6                     ; 08034E2C
bl    swi_MemoryCopy4or2        ; 08034E2E  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010600            ; 08034E32
mov   r0,r5                     ; 08034E34
mov   r2,r6                     ; 08034E36
bl    swi_MemoryCopy4or2        ; 08034E38  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200            ; 08034E3C
ldr   r0,=0x4967                ; 08034E3E
add   r1,r1,r0                  ; 08034E40
ldrb  r2,[r1]                   ; 08034E42
mov   r0,0x3                    ; 08034E44
mov   r5,0x0                    ; 08034E46
orr   r0,r2                     ; 08034E48
strb  r0,[r1]                   ; 08034E4A
mov   r0,r4                     ; 08034E4C
bl    Sub08034764               ; 08034E4E
ldr   r0,=DataPtrs08245CB0      ; 08034E52
ldr   r0,[r0,0x18]              ; 08034E54
ldr   r1,=0x06002000            ; 08034E56
bl    swi_LZ77_VRAM             ; 08034E58  LZ77 decompress (VRAM)
str   r5,[sp,0x4]               ; 08034E5C
add   r0,sp,0x4                 ; 08034E5E
mov   r1,0x80                   ; 08034E60
lsl   r1,r1,0x12                ; 08034E62
ldr   r2,=0x05002000            ; 08034E64
bl    swi_MemoryCopy4or2        ; 08034E66  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x093E                ; 08034E6A
add   r1,r4,r0                  ; 08034E6C
mov   r0,0x1                    ; 08034E6E
strh  r0,[r1]                   ; 08034E70
ldr   r0,=0x0914                ; 08034E72
add   r1,r4,r0                  ; 08034E74
mov   r0,0x70                   ; 08034E76
strh  r0,[r1]                   ; 08034E78
ldr   r0,=0x0918                ; 08034E7A
add   r4,r4,r0                  ; 08034E7C
ldrh  r0,[r4]                   ; 08034E7E
add   r0,0x1                    ; 08034E80
strh  r0,[r4]                   ; 08034E82
add   sp,0x8                    ; 08034E84
pop   {r3}                      ; 08034E86
mov   r8,r3                     ; 08034E88
pop   {r4-r6}                   ; 08034E8A
pop   {r0}                      ; 08034E8C
bx    r0                        ; 08034E8E
.pool                           ; 08034E90

Sub08034EC0:
push  {r4-r5,lr}                ; 08034EC0
mov   r4,r0                     ; 08034EC2
ldr   r0,=0x0914                ; 08034EC4
add   r1,r4,r0                  ; 08034EC6
ldrh  r0,[r1]                   ; 08034EC8
sub   r0,0x1                    ; 08034ECA
strh  r0,[r1]                   ; 08034ECC
lsl   r0,r0,0x10                ; 08034ECE
lsr   r5,r0,0x10                ; 08034ED0
cmp   r5,0x0                    ; 08034ED2
bne   @@Code08034EEC            ; 08034ED4
mov   r0,r4                     ; 08034ED6
bl    Sub08034650               ; 08034ED8
ldr   r1,=0x0944                ; 08034EDC
add   r0,r4,r1                  ; 08034EDE
strh  r5,[r0]                   ; 08034EE0
ldr   r0,=0x0918                ; 08034EE2
add   r1,r4,r0                  ; 08034EE4
ldrh  r0,[r1]                   ; 08034EE6
add   r0,0x1                    ; 08034EE8
strh  r0,[r1]                   ; 08034EEA
@@Code08034EEC:
pop   {r4-r5}                   ; 08034EEC
pop   {r0}                      ; 08034EEE
bx    r0                        ; 08034EF0
.pool                           ; 08034EF2

Sub08034F00:
push  {r4-r7,lr}                ; 08034F00
add   sp,-0x8                   ; 08034F02
mov   r7,r0                     ; 08034F04
mov   r1,sp                     ; 08034F06
mov   r0,0x0                    ; 08034F08
strh  r0,[r1]                   ; 08034F0A
ldr   r5,=0x02010400            ; 08034F0C
ldr   r2,=0x01000200            ; 08034F0E
mov   r0,sp                     ; 08034F10
mov   r1,r5                     ; 08034F12
bl    swi_MemoryCopy4or2        ; 08034F14  Memory copy/fill, 4- or 2-byte blocks
ldr   r4,=Data082DEB1C          ; 08034F18
mov   r6,0x80                   ; 08034F1A
lsl   r6,r6,0x1                 ; 08034F1C
mov   r0,r4                     ; 08034F1E
mov   r1,r5                     ; 08034F20
mov   r2,r6                     ; 08034F22
bl    swi_MemoryCopy4or2        ; 08034F24  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010600            ; 08034F28
mov   r0,r4                     ; 08034F2A
mov   r2,r6                     ; 08034F2C
bl    swi_MemoryCopy4or2        ; 08034F2E  Memory copy/fill, 4- or 2-byte blocks
mov   r1,0xA0                   ; 08034F32
lsl   r1,r1,0x13                ; 08034F34
mov   r6,0x80                   ; 08034F36
lsl   r6,r6,0x2                 ; 08034F38
mov   r0,r5                     ; 08034F3A
mov   r2,r6                     ; 08034F3C
bl    swi_MemoryCopy4or2        ; 08034F3E  Memory copy/fill, 4- or 2-byte blocks
ldr   r4,=0x03002200            ; 08034F42
ldr   r0,=0x4967                ; 08034F44
add   r3,r4,r0                  ; 08034F46
ldrb  r2,[r3]                   ; 08034F48
mov   r0,0x3                    ; 08034F4A
mov   r1,0x0                    ; 08034F4C
orr   r0,r2                     ; 08034F4E
strb  r0,[r3]                   ; 08034F50
ldr   r2,=0x0944                ; 08034F52
add   r0,r7,r2                  ; 08034F54
strh  r1,[r0]                   ; 08034F56
ldr   r3,=0x0948                ; 08034F58
add   r0,r7,r3                  ; 08034F5A
strh  r1,[r0]                   ; 08034F5C
ldr   r2,=0x47E0                ; 08034F5E
add   r0,r4,r2                  ; 08034F60
strh  r1,[r0]                   ; 08034F62
ldr   r3,=0x47F0                ; 08034F64
add   r0,r4,r3                  ; 08034F66
strh  r1,[r0]                   ; 08034F68
ldrh  r0,[r0]                   ; 08034F6A
lsl   r0,r0,0xC                 ; 08034F6C
str   r0,[r7,0x4]               ; 08034F6E
mov   r0,r7                     ; 08034F70
bl    Sub08034764               ; 08034F72
ldr   r0,=Data0827E87C          ; 08034F76
ldr   r1,=0x06003000            ; 08034F78
mov   r2,0x80                   ; 08034F7A
lsl   r2,r2,0x3                 ; 08034F7C
bl    swi_MemoryCopy32          ; 08034F7E  Memory copy/fill, 32-byte blocks
ldr   r0,=CreditsText25         ; 08034F82
str   r0,[r7]                   ; 08034F84
mov   r0,0x95                   ; 08034F86
lsl   r0,r0,0x4                 ; 08034F88
add   r1,r7,r0                  ; 08034F8A
mov   r0,0x1                    ; 08034F8C
strh  r0,[r1]                   ; 08034F8E
ldr   r0,=0x44444444            ; 08034F90
str   r0,[sp,0x4]               ; 08034F92
add   r0,sp,0x4                 ; 08034F94
ldr   r5,=0x02011000            ; 08034F96
ldr   r2,=0x05000200            ; 08034F98
mov   r1,r5                     ; 08034F9A
bl    swi_MemoryCopy4or2        ; 08034F9C  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r7                     ; 08034FA0
bl    Sub08033E94               ; 08034FA2
ldr   r2,=0x47CC                ; 08034FA6
add   r4,r4,r2                  ; 08034FA8
ldrh  r0,[r4]                   ; 08034FAA
mov   r1,0xC                    ; 08034FAC
and   r1,r0                     ; 08034FAE
lsl   r1,r1,0xC                 ; 08034FB0
mov   r0,0xC0                   ; 08034FB2
lsl   r0,r0,0x13                ; 08034FB4
add   r1,r1,r0                  ; 08034FB6
mov   r0,r5                     ; 08034FB8
mov   r2,r6                     ; 08034FBA
bl    swi_MemoryCopy32          ; 08034FBC  Memory copy/fill, 32-byte blocks
ldrh  r1,[r4]                   ; 08034FC0
mov   r0,0xF8                   ; 08034FC2
lsl   r0,r0,0x5                 ; 08034FC4
and   r0,r1                     ; 08034FC6
lsl   r0,r0,0x3                 ; 08034FC8
ldr   r3,=0x060003C0            ; 08034FCA
add   r1,r0,r3                  ; 08034FCC
mov   r0,0x0                    ; 08034FCE
ldr   r3,=0xE01F                ; 08034FD0
mov   r2,r3                     ; 08034FD2
@@Code08034FD4:
strh  r2,[r1]                   ; 08034FD4
add   r1,0x2                    ; 08034FD6
add   r0,0x1                    ; 08034FD8
lsl   r0,r0,0x10                ; 08034FDA
lsr   r0,r0,0x10                ; 08034FDC
cmp   r0,0x1F                   ; 08034FDE
bls   @@Code08034FD4            ; 08034FE0
ldr   r0,=0x0914                ; 08034FE2
add   r1,r7,r0                  ; 08034FE4
mov   r0,0x30                   ; 08034FE6
strh  r0,[r1]                   ; 08034FE8
ldr   r2,=0x0918                ; 08034FEA
add   r1,r7,r2                  ; 08034FEC
ldrh  r0,[r1]                   ; 08034FEE
add   r0,0x1                    ; 08034FF0
strh  r0,[r1]                   ; 08034FF2
add   sp,0x8                    ; 08034FF4
pop   {r4-r7}                   ; 08034FF6
pop   {r0}                      ; 08034FF8
bx    r0                        ; 08034FFA
.pool                           ; 08034FFC

Sub08035050:
push  {r4,lr}                   ; 08035050
mov   r3,r0                     ; 08035052
ldr   r0,=0x0914                ; 08035054
add   r2,r3,r0                  ; 08035056
ldrh  r0,[r2]                   ; 08035058
sub   r0,0x1                    ; 0803505A
strh  r0,[r2]                   ; 0803505C
lsl   r0,r0,0x10                ; 0803505E
lsr   r4,r0,0x10                ; 08035060
cmp   r4,0x0                    ; 08035062
bne   @@Code08035084            ; 08035064
ldr   r0,=0x0918                ; 08035066
add   r1,r3,r0                  ; 08035068
ldrh  r0,[r1]                   ; 0803506A
add   r0,0x1                    ; 0803506C
strh  r0,[r1]                   ; 0803506E
mov   r0,0xB8                   ; 08035070
lsl   r0,r0,0x1                 ; 08035072
strh  r0,[r2]                   ; 08035074
ldr   r0,=0x0944                ; 08035076
add   r1,r3,r0                  ; 08035078
mov   r0,0x1                    ; 0803507A
strh  r0,[r1]                   ; 0803507C
ldr   r1,=0x0948                ; 0803507E
add   r0,r3,r1                  ; 08035080
strh  r4,[r0]                   ; 08035082
@@Code08035084:
pop   {r4}                      ; 08035084
pop   {r0}                      ; 08035086
bx    r0                        ; 08035088
.pool                           ; 0803508A

Sub0803509C:
push  {lr}                      ; 0803509C
mov   r2,r0                     ; 0803509E
ldr   r0,=0x0914                ; 080350A0
add   r1,r2,r0                  ; 080350A2
ldrh  r0,[r1]                   ; 080350A4
sub   r0,0x1                    ; 080350A6
strh  r0,[r1]                   ; 080350A8
lsl   r0,r0,0x10                ; 080350AA
lsr   r3,r0,0x10                ; 080350AC
cmp   r3,0x0                    ; 080350AE
bne   @@Code080350CA            ; 080350B0
ldr   r0,=0x0918                ; 080350B2
add   r1,r2,r0                  ; 080350B4
ldrh  r0,[r1]                   ; 080350B6
add   r0,0x1                    ; 080350B8
strh  r0,[r1]                   ; 080350BA
ldr   r0,=0x0944                ; 080350BC
add   r1,r2,r0                  ; 080350BE
mov   r0,0x3                    ; 080350C0
strh  r0,[r1]                   ; 080350C2
ldr   r1,=0x0948                ; 080350C4
add   r0,r2,r1                  ; 080350C6
strh  r3,[r0]                   ; 080350C8
@@Code080350CA:
pop   {r0}                      ; 080350CA
bx    r0                        ; 080350CC
.pool                           ; 080350CE

Sub080350E0:
push  {r4-r7,lr}                ; 080350E0
mov   r7,r8                     ; 080350E2
push  {r7}                      ; 080350E4
add   sp,-0x4                   ; 080350E6
mov   r6,r0                     ; 080350E8
ldr   r0,=0x0944                ; 080350EA
add   r7,r6,r0                  ; 080350EC
ldrh  r5,[r7]                   ; 080350EE
cmp   r5,0x0                    ; 080350F0
bne   @@Code0803514E            ; 080350F2
sub   r0,0x2C                   ; 080350F4
add   r1,r6,r0                  ; 080350F6
ldrh  r0,[r1]                   ; 080350F8
add   r0,0x1                    ; 080350FA
strh  r0,[r1]                   ; 080350FC
ldr   r0,=CreditsText26         ; 080350FE
str   r0,[r6]                   ; 08035100
mov   r1,0x95                   ; 08035102
lsl   r1,r1,0x4                 ; 08035104
add   r0,r6,r1                  ; 08035106
mov   r1,0x1                    ; 08035108
mov   r8,r1                     ; 0803510A
mov   r1,r8                     ; 0803510C
strh  r1,[r0]                   ; 0803510E
ldr   r0,=0x44444444            ; 08035110
str   r0,[sp]                   ; 08035112
ldr   r4,=0x02011000            ; 08035114
ldr   r2,=0x05000200            ; 08035116
mov   r0,sp                     ; 08035118
mov   r1,r4                     ; 0803511A
bl    swi_MemoryCopy4or2        ; 0803511C  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r6                     ; 08035120
bl    Sub08033E94               ; 08035122
ldr   r0,=0x03002200            ; 08035126
ldr   r1,=0x47CC                ; 08035128
add   r0,r0,r1                  ; 0803512A
ldrh  r0,[r0]                   ; 0803512C
mov   r1,0xC                    ; 0803512E
and   r1,r0                     ; 08035130
lsl   r1,r1,0xC                 ; 08035132
mov   r0,0xC0                   ; 08035134
lsl   r0,r0,0x13                ; 08035136
add   r1,r1,r0                  ; 08035138
mov   r2,0x80                   ; 0803513A
lsl   r2,r2,0x2                 ; 0803513C
mov   r0,r4                     ; 0803513E
bl    swi_MemoryCopy32          ; 08035140  Memory copy/fill, 32-byte blocks
mov   r0,r8                     ; 08035144
strh  r0,[r7]                   ; 08035146
ldr   r1,=0x0948                ; 08035148
add   r0,r6,r1                  ; 0803514A
strh  r5,[r0]                   ; 0803514C
@@Code0803514E:
add   sp,0x4                    ; 0803514E
pop   {r3}                      ; 08035150
mov   r8,r3                     ; 08035152
pop   {r4-r7}                   ; 08035154
pop   {r0}                      ; 08035156
bx    r0                        ; 08035158
.pool                           ; 0803515A

Return0803517C:
bx    lr                        ; 0803517C
.pool                           ; 0803517E

Sub08035180:
push  {r4-r6,lr}                ; 08035180
add   sp,-0x4                   ; 08035182
mov   r4,r0                     ; 08035184
mov   r1,0x93                   ; 08035186
lsl   r1,r1,0x4                 ; 08035188
add   r0,r4,r1                  ; 0803518A
ldrh  r6,[r0]                   ; 0803518C
cmp   r6,0x0                    ; 0803518E
bne   @@Code080351E8            ; 08035190
ldr   r1,=CodePtrs0816DCD8      ; 08035192
ldr   r2,=0x0918                ; 08035194
add   r5,r4,r2                  ; 08035196
ldrh  r0,[r5]                   ; 08035198
lsl   r0,r0,0x2                 ; 0803519A
add   r0,r0,r1                  ; 0803519C
ldr   r1,[r0]                   ; 0803519E
mov   r0,r4                     ; 080351A0
bl    Sub_bx_r1                 ; 080351A2
ldrh  r0,[r5]                   ; 080351A6
cmp   r0,0x10                   ; 080351A8
bhi   @@Code080351E8            ; 080351AA
ldr   r0,=0x093C                ; 080351AC
add   r1,r4,r0                  ; 080351AE
ldr   r2,=0x091E                ; 080351B0
add   r0,r4,r2                  ; 080351B2
ldrh  r0,[r0]                   ; 080351B4
ldrh  r2,[r1]                   ; 080351B6
add   r0,r0,r2                  ; 080351B8
lsl   r0,r0,0x16                ; 080351BA
lsr   r0,r0,0x16                ; 080351BC
strh  r0,[r1]                   ; 080351BE
str   r6,[sp]                   ; 080351C0
mov   r1,0x80                   ; 080351C2
lsl   r1,r1,0x12                ; 080351C4
ldr   r2,=0x05002000            ; 080351C6
mov   r0,sp                     ; 080351C8
bl    swi_MemoryCopy4or2        ; 080351CA  Memory copy/fill, 4- or 2-byte blocks
ldrh  r0,[r5]                   ; 080351CE
cmp   r0,0x7                    ; 080351D0
bhi   @@Code080351DA            ; 080351D2
mov   r0,r4                     ; 080351D4
bl    Sub0803448C               ; 080351D6
@@Code080351DA:
mov   r0,r4                     ; 080351DA
bl    Sub08033BA8               ; 080351DC
ldr   r0,=0x093E                ; 080351E0
add   r1,r4,r0                  ; 080351E2
mov   r0,0x1                    ; 080351E4
strh  r0,[r1]                   ; 080351E6
@@Code080351E8:
add   sp,0x4                    ; 080351E8
pop   {r4-r6}                   ; 080351EA
pop   {r0}                      ; 080351EC
bx    r0                        ; 080351EE
.pool                           ; 080351F0

Sub08035208:
; Game state 19: Credits: ?
push  {lr}                      ; 08035208
ldr   r1,=0x03002200            ; 0803520A
ldr   r2,=0x418C                ; 0803520C
add   r0,r1,r2                  ; 0803520E
ldr   r0,[r0]                   ; 08035210
ldr   r3,=0x094E                ; 08035212
add   r2,r0,r3                  ; 08035214
ldrh  r0,[r2]                   ; 08035216
add   r0,0x1                    ; 08035218
strh  r0,[r2]                   ; 0803521A
lsl   r0,r0,0x10                ; 0803521C
lsr   r0,r0,0x10                ; 0803521E
cmp   r0,0x3B                   ; 08035220
bls   @@Code08035232            ; 08035222
mov   r0,0x0                    ; 08035224
strh  r0,[r2]                   ; 08035226
ldr   r0,=0x4905                ; 08035228
add   r1,r1,r0                  ; 0803522A
ldrb  r0,[r1]                   ; 0803522C
add   r0,0x1                    ; 0803522E
strb  r0,[r1]                   ; 08035230
@@Code08035232:
pop   {r0}                      ; 08035232
bx    r0                        ; 08035234
.pool                           ; 08035236

Sub08035248:
; Game state 1A: Credits: ?
push  {r4-r6,lr}                ; 08035248
ldr   r0,=0x03002200            ; 0803524A
ldr   r1,=0x4905                ; 0803524C
add   r4,r0,r1                  ; 0803524E
ldrb  r5,[r4]                   ; 08035250
ldr   r1,=0x418C                ; 08035252
add   r0,r0,r1                  ; 08035254
ldr   r6,[r0]                   ; 08035256
mov   r0,r6                     ; 08035258
bl    Sub08035180               ; 0803525A
bl    FadeToNextState           ; 0803525E
ldrb  r0,[r4]                   ; 08035262
cmp   r0,r5                     ; 08035264
beq   @@Code08035278            ; 08035266
ldr   r0,=0x092E                ; 08035268
add   r1,r6,r0                  ; 0803526A
mov   r0,0x0                    ; 0803526C
strh  r0,[r1]                   ; 0803526E
ldr   r0,=0x0944                ; 08035270
add   r1,r6,r0                  ; 08035272
mov   r0,0x1                    ; 08035274
strh  r0,[r1]                   ; 08035276
@@Code08035278:
pop   {r4-r6}                   ; 08035278
pop   {r0}                      ; 0803527A
bx    r0                        ; 0803527C
.pool                           ; 0803527E

Sub08035294:
; Game state 1B: Credits: ?
push  {lr}                      ; 08035294
ldr   r0,=0x03002200            ; 08035296
ldr   r1,=0x418C                ; 08035298
add   r0,r0,r1                  ; 0803529A
ldr   r0,[r0]                   ; 0803529C
ldr   r1,=0x092E                ; 0803529E
add   r2,r0,r1                  ; 080352A0
ldrh  r1,[r2]                   ; 080352A2
add   r1,0x1                    ; 080352A4
strh  r1,[r2]                   ; 080352A6
bl    Sub08035180               ; 080352A8
pop   {r0}                      ; 080352AC
bx    r0                        ; 080352AE
.pool                           ; 080352B0
