Sub0804792C:
push  {r4-r7,lr}                ; 0804792C
mov   r7,r10                    ; 0804792E
mov   r6,r9                     ; 08047930
mov   r5,r8                     ; 08047932
push  {r5-r7}                   ; 08047934
add   sp,-0x8                   ; 08047936
mov   r12,r0                    ; 08047938
ldr   r5,=0x030021B0            ; 0804793A
ldrh  r0,[r0,0x34]              ; 0804793C
lsr   r0,r0,0x2                 ; 0804793E
lsl   r0,r0,0x3                 ; 08047940
ldr   r2,=0x03005A00            ; 08047942
add   r0,r0,r2                  ; 08047944
str   r0,[r5]                   ; 08047946
mov   r0,r12                    ; 08047948
add   r0,0x72                   ; 0804794A
ldrh  r4,[r0]                   ; 0804794C
mov   r1,r12                    ; 0804794E
ldr   r0,[r1]                   ; 08047950
asr   r0,r0,0x8                 ; 08047952
ldr   r1,=0x0FD4                ; 08047954
add   r3,r2,r1                  ; 08047956
ldrh  r1,[r3]                   ; 08047958
sub   r0,r0,r1                  ; 0804795A
lsl   r0,r0,0x10                ; 0804795C
lsr   r0,r0,0x10                ; 0804795E
str   r0,[sp]                   ; 08047960
mov   r1,r12                    ; 08047962
ldr   r0,[r1,0x4]               ; 08047964
asr   r0,r0,0x8                 ; 08047966
ldr   r1,=0x0FDC                ; 08047968
add   r2,r2,r1                  ; 0804796A
ldrh  r1,[r2]                   ; 0804796C
sub   r0,r0,r1                  ; 0804796E
lsl   r0,r0,0x10                ; 08047970
lsr   r0,r0,0x10                ; 08047972
str   r0,[sp,0x4]               ; 08047974
mov   r2,0x0                    ; 08047976
mov   r9,r2                     ; 08047978
mov   r10,r2                    ; 0804797A
ldr   r1,=Data081AF94E          ; 0804797C
add   r0,r4,r1                  ; 0804797E
mov   r7,0x0                    ; 08047980
ldsb  r7,[r0,r7]                ; 08047982
ldr   r2,=Data081AF98E          ; 08047984
add   r6,r4,r2                  ; 08047986
mov   r8,r5                     ; 08047988
@@Code0804798A:
mov   r0,r9                     ; 0804798A
lsr   r5,r0,0x8                 ; 0804798C
ldr   r1,=Data081AF94E          ; 0804798E
add   r0,r5,r1                  ; 08047990
mov   r1,0x0                    ; 08047992
ldsb  r1,[r0,r1]                ; 08047994
mov   r0,r12                    ; 08047996
add   r0,0x62                   ; 08047998
ldrh  r0,[r0]                   ; 0804799A
mov   r4,r1                     ; 0804799C
mul   r4,r0                     ; 0804799E
ldr   r2,=Data081AF98E          ; 080479A0
add   r0,r5,r2                  ; 080479A2
mov   r1,0x0                    ; 080479A4
ldsb  r1,[r0,r1]                ; 080479A6
mov   r0,r12                    ; 080479A8
add   r0,0x66                   ; 080479AA
ldrh  r0,[r0]                   ; 080479AC
mov   r3,r1                     ; 080479AE
mul   r3,r0                     ; 080479B0
asr   r4,r4,0x8                 ; 080479B2
mov   r0,r7                     ; 080479B4
mul   r0,r4                     ; 080479B6
asr   r5,r0,0x8                 ; 080479B8
mov   r0,0x0                    ; 080479BA
ldsb  r0,[r6,r0]                ; 080479BC
asr   r3,r3,0x8                 ; 080479BE
mul   r0,r3                     ; 080479C0
asr   r0,r0,0x8                 ; 080479C2
add   r5,r5,r0                  ; 080479C4
neg   r1,r5                     ; 080479C6
ldr   r2,=0x030069D4            ; 080479C8
ldrh  r0,[r2]                   ; 080479CA
sub   r1,r1,r0                  ; 080479CC
ldr   r2,[sp]                   ; 080479CE
lsl   r0,r2,0x10                ; 080479D0
asr   r0,r0,0x10                ; 080479D2
add   r5,r1,r0                  ; 080479D4
mov   r0,r8                     ; 080479D6
ldr   r2,[r0]                   ; 080479D8
ldr   r1,=0x01FF                ; 080479DA
mov   r0,r1                     ; 080479DC
and   r5,r0                     ; 080479DE
ldrh  r1,[r2,0x2]               ; 080479E0
ldr   r0,=0xFFFFFE00            ; 080479E2
and   r0,r1                     ; 080479E4
orr   r0,r5                     ; 080479E6
strh  r0,[r2,0x2]               ; 080479E8
mov   r0,0x0                    ; 080479EA
ldsb  r0,[r6,r0]                ; 080479EC
mul   r0,r4                     ; 080479EE
neg   r0,r0                     ; 080479F0
asr   r5,r0,0x8                 ; 080479F2
mov   r0,r7                     ; 080479F4
mul   r0,r3                     ; 080479F6
asr   r0,r0,0x8                 ; 080479F8
add   r5,r5,r0                  ; 080479FA
ldr   r1,[sp,0x4]               ; 080479FC
lsl   r0,r1,0x10                ; 080479FE
asr   r0,r0,0x10                ; 08047A00
add   r5,r5,r0                  ; 08047A02
strb  r5,[r2]                   ; 08047A04
ldr   r0,=0x1999                ; 08047A06
add   r0,r9                     ; 08047A08
lsl   r0,r0,0x10                ; 08047A0A
lsr   r0,r0,0x10                ; 08047A0C
mov   r9,r0                     ; 08047A0E
mov   r2,r8                     ; 08047A10
ldr   r0,[r2]                   ; 08047A12
add   r0,0x8                    ; 08047A14
str   r0,[r2]                   ; 08047A16
mov   r0,0x1                    ; 08047A18
add   r10,r0                    ; 08047A1A
mov   r1,r10                    ; 08047A1C
cmp   r1,0x9                    ; 08047A1E
bls   @@Code0804798A            ; 08047A20
add   sp,0x8                    ; 08047A22
pop   {r3-r5}                   ; 08047A24
mov   r8,r3                     ; 08047A26
mov   r9,r4                     ; 08047A28
mov   r10,r5                    ; 08047A2A
pop   {r4-r7}                   ; 08047A2C
pop   {r0}                      ; 08047A2E
bx    r0                        ; 08047A30
.pool                           ; 08047A32

Return08047A5C:
; secondary sprite 209 main
bx    lr                        ; 08047A5C
.pool                           ; 08047A5E

Sub08047A60:
mov   r1,0x0                    ; 08047A60
strh  r1,[r0,0x24]              ; 08047A62
add   r0,0x94                   ; 08047A64
mov   r1,0xFF                   ; 08047A66
strb  r1,[r0]                   ; 08047A68
bx    lr                        ; 08047A6A

Sub08047A6C:
push  {lr}                      ; 08047A6C
mov   r2,r0                     ; 08047A6E
mov   r1,r2                     ; 08047A70
add   r1,0x42                   ; 08047A72
ldrh  r0,[r1]                   ; 08047A74
cmp   r0,0x0                    ; 08047A76
beq   @@Code08047A9C            ; 08047A78
sub   r0,0x1                    ; 08047A7A
strh  r0,[r1]                   ; 08047A7C
add   r1,0x2                    ; 08047A7E
ldrh  r0,[r1]                   ; 08047A80
cmp   r0,0x0                    ; 08047A82
beq   @@Code08047A8A            ; 08047A84
sub   r0,0x1                    ; 08047A86
strh  r0,[r1]                   ; 08047A88
@@Code08047A8A:
mov   r1,r2                     ; 08047A8A
add   r1,0x9E                   ; 08047A8C
ldrb  r0,[r1]                   ; 08047A8E
cmp   r0,0x0                    ; 08047A90
beq   @@Code08047A98            ; 08047A92
sub   r0,0x1                    ; 08047A94
strb  r0,[r1]                   ; 08047A96
@@Code08047A98:
mov   r0,0x0                    ; 08047A98
b     @@Code08047AA4            ; 08047A9A
@@Code08047A9C:
mov   r0,r2                     ; 08047A9C
bl    Sub08047A60               ; 08047A9E
mov   r0,0x1                    ; 08047AA2
@@Code08047AA4:
pop   {r1}                      ; 08047AA4
bx    r1                        ; 08047AA6

Sub08047AA8:
push  {lr}                      ; 08047AA8
mov   r1,r0                     ; 08047AAA
ldr   r0,=0x03007240            ; 08047AAC  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08047AAE
ldr   r2,=0x29C8                ; 08047AB0
add   r0,r0,r2                  ; 08047AB2
ldrh  r0,[r0]                   ; 08047AB4
cmp   r0,0x0                    ; 08047AB6
bne   @@Code08047AD0            ; 08047AB8
mov   r0,r1                     ; 08047ABA
bl    Sub08047A6C               ; 08047ABC
lsl   r0,r0,0x18                ; 08047AC0
lsr   r0,r0,0x18                ; 08047AC2
b     @@Code08047AD2            ; 08047AC4
.pool                           ; 08047AC6

@@Code08047AD0:
mov   r0,0x1                    ; 08047AD0
@@Code08047AD2:
pop   {r1}                      ; 08047AD2
bx    r1                        ; 08047AD4
.pool                           ; 08047AD6

Sub08047AD8:
push  {lr}                      ; 08047AD8
mov   r1,r0                     ; 08047ADA
mov   r2,0x0                    ; 08047ADC
ldr   r0,=0x03007240            ; 08047ADE  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08047AE0
ldr   r3,=0x29C8                ; 08047AE2
add   r0,r0,r3                  ; 08047AE4
ldrh  r0,[r0]                   ; 08047AE6
cmp   r0,0x0                    ; 08047AE8
bne   @@Code08047AF6            ; 08047AEA
mov   r0,r1                     ; 08047AEC
bl    Sub08047A6C               ; 08047AEE
lsl   r0,r0,0x18                ; 08047AF2
lsr   r2,r0,0x18                ; 08047AF4
@@Code08047AF6:
mov   r0,r2                     ; 08047AF6
pop   {r1}                      ; 08047AF8
bx    r1                        ; 08047AFA
.pool                           ; 08047AFC

SpawnSecondarySprite:
push  {r4-r7,lr}                ; 08047B04
mov   r7,r10                    ; 08047B06
mov   r6,r9                     ; 08047B08
mov   r5,r8                     ; 08047B0A
push  {r5-r7}                   ; 08047B0C
add   sp,-0x4                   ; 08047B0E
lsl   r0,r0,0x10                ; 08047B10
lsr   r6,r0,0x10                ; 08047B12
ldr   r1,=0x03007240            ; 08047B14  Normal gameplay IWRAM (0300220C)
ldr   r0,[r1]                   ; 08047B16
ldr   r3,=0x1AF4                ; 08047B18
add   r2,r0,r3                  ; 08047B1A
ldr   r4,=0x2544                ; 08047B1C
add   r3,r0,r4                  ; 08047B1E
mov   r4,r2                     ; 08047B20
mov   r5,0xF                    ; 08047B22
mov   r10,r1                    ; 08047B24
ldr   r7,=Data0819271C          ; 08047B26
@@Code08047B28:
ldrh  r0,[r3,0x24]              ; 08047B28
cmp   r0,0x0                    ; 08047B2A
beq   @@Code08047B64            ; 08047B2C
sub   r3,0xB0                   ; 08047B2E
sub   r5,0x1                    ; 08047B30
cmp   r3,r2                     ; 08047B32
bhs   @@Code08047B28            ; 08047B34
@@Code08047B36:
mov   r0,0xB0                   ; 08047B36
lsl   r0,r0,0x4                 ; 08047B38
add   r1,r4,r0                  ; 08047B3A
ldrh  r0,[r1]                   ; 08047B3C
sub   r0,0x1                    ; 08047B3E
strh  r0,[r1]                   ; 08047B40
lsl   r0,r0,0x10                ; 08047B42
cmp   r0,0x0                    ; 08047B44
bge   @@Code08047B4C            ; 08047B46
mov   r0,0xF                    ; 08047B48
strh  r0,[r1]                   ; 08047B4A
@@Code08047B4C:
ldrh  r5,[r1]                   ; 08047B4C
mov   r0,0xB0                   ; 08047B4E
mul   r0,r5                     ; 08047B50
ldr   r1,=0x1AF4                ; 08047B52
add   r0,r0,r1                  ; 08047B54
mov   r2,r10                    ; 08047B56
ldr   r1,[r2]                   ; 08047B58
add   r3,r1,r0                  ; 08047B5A
ldrh  r1,[r3,0x32]              ; 08047B5C
ldr   r0,=0x0237                ; 08047B5E
cmp   r1,r0                     ; 08047B60
beq   @@Code08047B36            ; 08047B62
@@Code08047B64:
mov   r0,0x0                    ; 08047B64
str   r0,[r3,0x8]               ; 08047B66
str   r0,[r3,0xC]               ; 08047B68
str   r0,[r3,0x10]              ; 08047B6A
str   r0,[r3,0x18]              ; 08047B6C
mov   r2,0x0                    ; 08047B6E
strh  r0,[r3,0x20]              ; 08047B70
strh  r0,[r3,0x22]              ; 08047B72
strh  r0,[r3,0x36]              ; 08047B74
strh  r0,[r3,0x38]              ; 08047B76
strh  r0,[r3,0x3A]              ; 08047B78
strh  r0,[r3,0x3E]              ; 08047B7A
mov   r1,r3                     ; 08047B7C
add   r1,0x42                   ; 08047B7E
strh  r0,[r1]                   ; 08047B80
add   r1,0x2                    ; 08047B82
strh  r0,[r1]                   ; 08047B84
add   r1,0x26                   ; 08047B86
strh  r0,[r1]                   ; 08047B88
add   r1,0x2                    ; 08047B8A
strh  r0,[r1]                   ; 08047B8C
add   r1,0x2                    ; 08047B8E
strh  r0,[r1]                   ; 08047B90
add   r1,0x2                    ; 08047B92
strh  r0,[r1]                   ; 08047B94
add   r1,0x2                    ; 08047B96
strh  r0,[r1]                   ; 08047B98
add   r1,0x2                    ; 08047B9A
strh  r0,[r1]                   ; 08047B9C
mov   r0,r3                     ; 08047B9E
add   r0,0x95                   ; 08047BA0
strb  r2,[r0]                   ; 08047BA2
add   r0,0x2                    ; 08047BA4
strb  r2,[r0]                   ; 08047BA6
add   r1,0x24                   ; 08047BA8
strb  r2,[r1]                   ; 08047BAA
add   r0,0x6                    ; 08047BAC
strb  r2,[r0]                   ; 08047BAE
ldr   r0,=0xFFFF                ; 08047BB0
strh  r0,[r3,0x34]              ; 08047BB2
mov   r0,0x1                    ; 08047BB4
neg   r0,r0                     ; 08047BB6
strh  r0,[r3,0x3C]              ; 08047BB8
mov   r2,r3                     ; 08047BBA
add   r2,0xA1                   ; 08047BBC
mov   r0,0xFF                   ; 08047BBE
strb  r0,[r2]                   ; 08047BC0
strh  r6,[r3,0x32]              ; 08047BC2
ldr   r4,=0xFFFFFE3C            ; 08047BC4  -1C4
add   r0,r6,r4                  ; 08047BC6  sprite ID -1C4
lsl   r0,r0,0x10                ; 08047BC8
lsr   r6,r0,0x10                ; 08047BCA
lsl   r0,r6,0x1                 ; 08047BCC
add   r0,r0,r7                  ; 08047BCE
ldrh  r4,[r0]                   ; 08047BD0
mov   r2,0x0                    ; 08047BD2
mov   r7,r3                     ; 08047BD4
add   r7,0x94                   ; 08047BD6
str   r7,[sp]                   ; 08047BD8
mov   r0,0x9C                   ; 08047BDA
add   r0,r0,r3                  ; 08047BDC
mov   r12,r0                    ; 08047BDE
mov   r7,0x9B                   ; 08047BE0
add   r7,r7,r3                  ; 08047BE2
mov   r8,r7                     ; 08047BE4
mov   r0,0xAC                   ; 08047BE6
add   r0,r0,r3                  ; 08047BE8
mov   r9,r0                     ; 08047BEA
lsl   r5,r5,0x18                ; 08047BEC
ldr   r0,=0x03007240            ; 08047BEE  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08047BF0
mov   r7,0xA6                   ; 08047BF2
lsl   r7,r7,0x6                 ; 08047BF4
add   r0,r0,r7                  ; 08047BF6
@@Code08047BF8:
ldrh  r7,[r0]                   ; 08047BF8
cmp   r4,r7                     ; 08047BFA
beq   @@Code08047C28            ; 08047BFC
add   r0,0x2                    ; 08047BFE
add   r2,0x1                    ; 08047C00
cmp   r2,0x5                    ; 08047C02
ble   @@Code08047BF8            ; 08047C04
mov   r4,0x0                    ; 08047C06
b     @@Code08047C30            ; 08047C08
.pool                           ; 08047C0A

@@Code08047C28:
mov   r0,r2                     ; 08047C28
add   r0,0x8                    ; 08047C2A
lsl   r0,r0,0x12                ; 08047C2C
lsr   r4,r0,0x10                ; 08047C2E
@@Code08047C30:
strb  r4,[r1]                   ; 08047C30
lsl   r2,r6,0x1                 ; 08047C32
add   r0,r2,0x1                 ; 08047C34
ldr   r1,=Data08193010          ; 08047C36
add   r0,r0,r1                  ; 08047C38
ldrb  r1,[r0]                   ; 08047C3A
mov   r0,0x30                   ; 08047C3C
mov   r4,r0                     ; 08047C3E
eor   r4,r1                     ; 08047C40
strh  r4,[r3,0x2C]              ; 08047C42
mov   r7,r10                    ; 08047C44
ldr   r0,[r7]                   ; 08047C46
ldr   r1,=0x299A                ; 08047C48
add   r0,r0,r1                  ; 08047C4A
ldrh  r0,[r0]                   ; 08047C4C
cmp   r0,0x1C                   ; 08047C4E
bne   @@Code08047C60            ; 08047C50
ldrh  r1,[r3,0x32]              ; 08047C52
ldr   r0,=0x0201                ; 08047C54
cmp   r1,r0                     ; 08047C56
beq   @@Code08047C60            ; 08047C58
mov   r0,0xCF                   ; 08047C5A
and   r4,r0                     ; 08047C5C
strh  r4,[r3,0x2C]              ; 08047C5E
@@Code08047C60:
ldr   r4,=Data08193010          ; 08047C60
add   r0,r2,r4                  ; 08047C62
ldrb  r0,[r0]                   ; 08047C64
ldr   r7,[sp]                   ; 08047C66
strb  r0,[r7]                   ; 08047C68
ldr   r1,=Data081930FA          ; 08047C6A
add   r0,r2,r1                  ; 08047C6C
ldrb  r0,[r0]                   ; 08047C6E
lsl   r0,r0,0x18                ; 08047C70
asr   r0,r0,0x18                ; 08047C72
str   r0,[r3,0x14]              ; 08047C74
add   r0,r2,0x1                 ; 08047C76
add   r0,r0,r1                  ; 08047C78
ldrb  r0,[r0]                   ; 08047C7A
lsl   r0,r0,0x18                ; 08047C7C
asr   r0,r0,0x18                ; 08047C7E
lsl   r0,r0,0x4                 ; 08047C80
str   r0,[r3,0x1C]              ; 08047C82
ldr   r4,=Data08192D52          ; 08047C84
add   r0,r2,r4                  ; 08047C86
ldrh  r0,[r0]                   ; 08047C88
mov   r1,0x0                    ; 08047C8A
strh  r0,[r3,0x26]              ; 08047C8C
ldr   r7,=Data08192E3C          ; 08047C8E
add   r0,r2,r7                  ; 08047C90
ldrh  r0,[r0]                   ; 08047C92
strh  r0,[r3,0x28]              ; 08047C94
ldr   r4,=Data08192F26          ; 08047C96
add   r0,r2,r4                  ; 08047C98
ldrh  r0,[r0]                   ; 08047C9A
strh  r0,[r3,0x2A]              ; 08047C9C
mov   r0,0x7                    ; 08047C9E
strh  r0,[r3,0x24]              ; 08047CA0
mov   r7,r12                    ; 08047CA2
strb  r1,[r7]                   ; 08047CA4
mov   r0,0xFF                   ; 08047CA6
mov   r2,r8                     ; 08047CA8
strb  r0,[r2]                   ; 08047CAA
mov   r3,r9                     ; 08047CAC
strb  r1,[r3]                   ; 08047CAE
lsr   r0,r5,0x18                ; 08047CB0
add   sp,0x4                    ; 08047CB2
pop   {r3-r5}                   ; 08047CB4
mov   r8,r3                     ; 08047CB6
mov   r9,r4                     ; 08047CB8
mov   r10,r5                    ; 08047CBA
pop   {r4-r7}                   ; 08047CBC
pop   {r1}                      ; 08047CBE
bx    r1                        ; 08047CC0
.pool                           ; 08047CC2

Sub08047CE0:
push  {r4,lr}                   ; 08047CE0
mov   r2,r0                     ; 08047CE2
ldr   r1,[r2,0x10]              ; 08047CE4
ldr   r4,[r2,0x1C]              ; 08047CE6
ldr   r3,[r2,0x8]               ; 08047CE8
sub   r0,r4,r3                  ; 08047CEA
lsl   r0,r0,0x10                ; 08047CEC
cmp   r0,0x0                    ; 08047CEE
bge   @@Code08047CF4            ; 08047CF0
neg   r1,r1                     ; 08047CF2
@@Code08047CF4:
add   r0,r3,r1                  ; 08047CF4
str   r0,[r2,0x8]               ; 08047CF6
ldr   r1,[r2]                   ; 08047CF8
add   r1,r1,r0                  ; 08047CFA
str   r1,[r2]                   ; 08047CFC
asr   r0,r0,0x8                 ; 08047CFE
strh  r0,[r2,0x2E]              ; 08047D00
ldr   r1,[r2,0x10]              ; 08047D02
ldr   r3,[r2,0xC]               ; 08047D04
sub   r0,r4,r3                  ; 08047D06
lsl   r0,r0,0x10                ; 08047D08
cmp   r0,0x0                    ; 08047D0A
bge   @@Code08047D10            ; 08047D0C
neg   r1,r1                     ; 08047D0E
@@Code08047D10:
add   r1,r3,r1                  ; 08047D10
str   r1,[r2,0xC]               ; 08047D12
ldr   r0,[r2,0x4]               ; 08047D14
add   r0,r0,r1                  ; 08047D16
str   r0,[r2,0x4]               ; 08047D18
asr   r1,r1,0x8                 ; 08047D1A
strh  r1,[r2,0x30]              ; 08047D1C
pop   {r4}                      ; 08047D1E
pop   {r0}                      ; 08047D20
bx    r0                        ; 08047D22

push  {r4-r7,lr}                ; 08047D24
mov   r7,r10                    ; 08047D26
mov   r6,r9                     ; 08047D28
mov   r5,r8                     ; 08047D2A
push  {r5-r7}                   ; 08047D2C
add   sp,-0x8                   ; 08047D2E
ldr   r7,=0x03002200            ; 08047D30
ldr   r0,=0x030069F6            ; 08047D32
ldrh  r1,[r0]                   ; 08047D34
ldr   r2,=0x030069FA            ; 08047D36
ldrh  r0,[r2]                   ; 08047D38
sub   r2,r1,r0                  ; 08047D3A
mov   r3,0x80                   ; 08047D3C
lsl   r3,r3,0x1                 ; 08047D3E
add   r0,r2,r3                  ; 08047D40
ldr   r4,=0x4806                ; 08047D42
add   r1,r7,r4                  ; 08047D44
strh  r0,[r1]                   ; 08047D46
lsl   r0,r0,0x10                ; 08047D48
cmp   r0,0x0                    ; 08047D4A
bne   @@Code08047D54            ; 08047D4C
add   r3,0x1                    ; 08047D4E
add   r0,r2,r3                  ; 08047D50
strh  r0,[r1]                   ; 08047D52
@@Code08047D54:
mov   r0,0x80                   ; 08047D54
lsl   r0,r0,0x9                 ; 08047D56
ldrh  r1,[r1]                   ; 08047D58
bl    swi_Divide                ; 08047D5A
mov   r4,0x90                   ; 08047D5E
lsl   r4,r4,0x7                 ; 08047D60
add   r4,r4,r7                  ; 08047D62
mov   r8,r4                     ; 08047D64
strh  r0,[r4]                   ; 08047D66
ldr   r1,=0x47D4                ; 08047D68
add   r0,r7,r1                  ; 08047D6A
ldr   r2,=0x030069F6            ; 08047D6C
ldrh  r2,[r2]                   ; 08047D6E
mov   r9,r2                     ; 08047D70
ldrh  r5,[r0]                   ; 08047D72
mov   r4,r9                     ; 08047D74
sub   r3,r4,r5                  ; 08047D76
lsl   r3,r3,0x10                ; 08047D78
lsr   r3,r3,0x10                ; 08047D7A
str   r3,[sp]                   ; 08047D7C
ldr   r0,=0x47F8                ; 08047D7E
add   r0,r0,r7                  ; 08047D80
mov   r12,r0                    ; 08047D82
add   r1,0x8                    ; 08047D84
add   r0,r7,r1                  ; 08047D86
mov   r2,r12                    ; 08047D88
ldrh  r2,[r2]                   ; 08047D8A
mov   r10,r2                    ; 08047D8C
ldrh  r6,[r0]                   ; 08047D8E
mov   r3,r10                    ; 08047D90
sub   r2,r3,r6                  ; 08047D92
lsl   r4,r2,0x10                ; 08047D94
lsr   r4,r4,0x10                ; 08047D96
str   r4,[sp,0x4]               ; 08047D98
ldr   r4,=0x030069FA            ; 08047D9A
ldrh  r0,[r4]                   ; 08047D9C
sub   r0,r0,r5                  ; 08047D9E
sub   r0,0x78                   ; 08047DA0
mov   r3,r8                     ; 08047DA2
mov   r4,0x0                    ; 08047DA4
ldsh  r1,[r3,r4]                ; 08047DA6
lsl   r0,r0,0x10                ; 08047DA8
asr   r0,r0,0x10                ; 08047DAA
mul   r1,r0                     ; 08047DAC
lsl   r1,r1,0x8                 ; 08047DAE
lsr   r1,r1,0x10                ; 08047DB0
add   r5,0x78                   ; 08047DB2
add   r1,r1,r5                  ; 08047DB4
lsl   r1,r1,0x10                ; 08047DB6
lsr   r1,r1,0x10                ; 08047DB8
mov   r0,r9                     ; 08047DBA
sub   r1,r1,r0                  ; 08047DBC
ldr   r3,=0x030069F6            ; 08047DBE
strh  r1,[r3]                   ; 08047DC0
sub   r2,0x88                   ; 08047DC2
mov   r4,r8                     ; 08047DC4
mov   r3,0x0                    ; 08047DC6
ldsh  r0,[r4,r3]                ; 08047DC8
lsl   r2,r2,0x10                ; 08047DCA
asr   r2,r2,0x10                ; 08047DCC
mul   r0,r2                     ; 08047DCE
lsl   r0,r0,0x8                 ; 08047DD0
lsr   r0,r0,0x10                ; 08047DD2
add   r6,0x88                   ; 08047DD4
add   r0,r0,r6                  ; 08047DD6
lsl   r0,r0,0x10                ; 08047DD8
lsr   r0,r0,0x10                ; 08047DDA
mov   r4,r10                    ; 08047DDC
sub   r0,r0,r4                  ; 08047DDE
mov   r2,r12                    ; 08047DE0
strh  r0,[r2]                   ; 08047DE2
ldr   r4,[sp]                   ; 08047DE4
add   r3,r4,r1                  ; 08047DE6
lsl   r3,r3,0x10                ; 08047DE8
ldr   r1,[sp,0x4]               ; 08047DEA
add   r4,r1,r0                  ; 08047DEC
lsl   r4,r4,0x10                ; 08047DEE
lsr   r0,r4,0x10                ; 08047DF0
mov   r2,0x80                   ; 08047DF2
lsl   r2,r2,0xD                 ; 08047DF4
add   r3,r3,r2                  ; 08047DF6
lsr   r3,r3,0x10                ; 08047DF8
cmp   r3,0xFF                   ; 08047DFA
bhi   @@Code08047E72            ; 08047DFC
add   r0,0x10                   ; 08047DFE
lsl   r0,r0,0x10                ; 08047E00
lsr   r0,r0,0x10                ; 08047E02
cmp   r0,0xAF                   ; 08047E04
bhi   @@Code08047E72            ; 08047E06
ldr   r3,=0x47FE                ; 08047E08
add   r0,r7,r3                  ; 08047E0A
ldrh  r0,[r0]                   ; 08047E0C
lsr   r4,r0,0x2                 ; 08047E0E
mov   r5,0x0                    ; 08047E10
ldr   r1,=0x4802                ; 08047E12
add   r0,r7,r1                  ; 08047E14
ldrh  r0,[r0]                   ; 08047E16
cmp   r5,r0                     ; 08047E18
bhs   @@Code08047E72            ; 08047E1A
ldr   r2,=0x030021B0            ; 08047E1C
mov   r9,r2                     ; 08047E1E
mov   r3,0xE0                   ; 08047E20
lsl   r3,r3,0x6                 ; 08047E22
add   r6,r7,r3                  ; 08047E24
ldr   r0,=0xFFFFFE00            ; 08047E26
mov   r8,r0                     ; 08047E28
add   r1,r1,r7                  ; 08047E2A
mov   r10,r1                    ; 08047E2C
@@Code08047E2E:
lsl   r2,r4,0x3                 ; 08047E2E
add   r2,r2,r6                  ; 08047E30
mov   r3,r9                     ; 08047E32
str   r2,[r3]                   ; 08047E34
ldrh  r3,[r2,0x2]               ; 08047E36
lsl   r1,r3,0x17                ; 08047E38
ldr   r7,=0x0FF6                ; 08047E3A
add   r0,r6,r7                  ; 08047E3C
lsr   r1,r1,0x17                ; 08047E3E
ldrh  r0,[r0]                   ; 08047E40
add   r1,r1,r0                  ; 08047E42
ldr   r7,=0x01FF                ; 08047E44
mov   r0,r7                     ; 08047E46
and   r1,r0                     ; 08047E48
mov   r0,r8                     ; 08047E4A
and   r0,r3                     ; 08047E4C
orr   r0,r1                     ; 08047E4E
strh  r0,[r2,0x2]               ; 08047E50
ldr   r1,=0x0FF8                ; 08047E52
add   r0,r6,r1                  ; 08047E54
ldrb  r0,[r0]                   ; 08047E56
ldrb  r3,[r2]                   ; 08047E58
add   r0,r0,r3                  ; 08047E5A
strb  r0,[r2]                   ; 08047E5C
add   r0,r4,0x1                 ; 08047E5E
lsl   r0,r0,0x10                ; 08047E60
lsr   r4,r0,0x10                ; 08047E62
add   r0,r5,0x1                 ; 08047E64
lsl   r0,r0,0x10                ; 08047E66
lsr   r5,r0,0x10                ; 08047E68
mov   r7,r10                    ; 08047E6A
ldrh  r7,[r7]                   ; 08047E6C
cmp   r5,r7                     ; 08047E6E
blo   @@Code08047E2E            ; 08047E70
@@Code08047E72:
add   sp,0x8                    ; 08047E72
pop   {r3-r5}                   ; 08047E74
mov   r8,r3                     ; 08047E76
mov   r9,r4                     ; 08047E78
mov   r10,r5                    ; 08047E7A
pop   {r4-r7}                   ; 08047E7C
pop   {r0}                      ; 08047E7E
bx    r0                        ; 08047E80
.pool                           ; 08047E82

Sub08047EB8:
; secondary sprite 222 main
push  {r4-r6,lr}                ; 08047EB8
mov   r5,r0                     ; 08047EBA
ldr   r1,=Data0816EF6C          ; 08047EBC
mov   r6,r5                     ; 08047EBE
add   r6,0x6A                   ; 08047EC0
ldrh  r0,[r6]                   ; 08047EC2
add   r0,r0,r1                  ; 08047EC4
ldrb  r1,[r0]                   ; 08047EC6
cmp   r1,0x7F                   ; 08047EC8
bhi   @@Code08047F28            ; 08047ECA
mov   r0,r5                     ; 08047ECC
add   r0,0x6E                   ; 08047ECE
ldrh  r0,[r0]                   ; 08047ED0
orr   r1,r0                     ; 08047ED2
mov   r0,0xFF                   ; 08047ED4
and   r1,r0                     ; 08047ED6
mov   r4,0x0                    ; 08047ED8
strh  r1,[r5,0x38]              ; 08047EDA
ldr   r1,=DataPtrs0816EEAC      ; 08047EDC
ldrh  r0,[r5,0x38]              ; 08047EDE
lsl   r0,r0,0x2                 ; 08047EE0
add   r0,r0,r1                  ; 08047EE2
ldr   r1,[r0]                   ; 08047EE4
mov   r0,r5                     ; 08047EE6
bl    Sub0804CC9C               ; 08047EE8
ldr   r2,=0x03002200            ; 08047EEC
ldr   r0,[r5]                   ; 08047EEE
asr   r0,r0,0x8                 ; 08047EF0
ldr   r3,=0x47F6                ; 08047EF2
add   r1,r2,r3                  ; 08047EF4
strh  r0,[r1]                   ; 08047EF6
ldr   r0,[r5,0x4]               ; 08047EF8
asr   r0,r0,0x8                 ; 08047EFA
ldrh  r1,[r5,0x30]              ; 08047EFC
sub   r0,r0,r1                  ; 08047EFE
add   r3,0x2                    ; 08047F00
add   r1,r2,r3                  ; 08047F02
strh  r0,[r1]                   ; 08047F04
mov   r0,r5                     ; 08047F06
add   r0,0x66                   ; 08047F08
ldrh  r1,[r0]                   ; 08047F0A
add   r3,0x2                    ; 08047F0C
add   r0,r2,r3                  ; 08047F0E
strh  r1,[r0]                   ; 08047F10
ldrh  r1,[r5,0x34]              ; 08047F12
add   r3,0x4                    ; 08047F14
add   r0,r2,r3                  ; 08047F16
strh  r1,[r0]                   ; 08047F18
ldr   r0,=0x4802                ; 08047F1A
add   r2,r2,r0                  ; 08047F1C
mov   r0,0x4                    ; 08047F1E
strh  r0,[r2]                   ; 08047F20
bl    Sub08107118               ; 08047F22
strh  r4,[r5,0x30]              ; 08047F26
@@Code08047F28:
mov   r0,r5                     ; 08047F28
bl    Sub08047AA8               ; 08047F2A
lsl   r0,r0,0x18                ; 08047F2E
cmp   r0,0x0                    ; 08047F30
bne   @@Code08047F72            ; 08047F32
mov   r2,r5                     ; 08047F34
add   r2,0x42                   ; 08047F36
ldrh  r0,[r2]                   ; 08047F38
cmp   r0,0x0                    ; 08047F3A
bne   @@Code08047F72            ; 08047F3C
ldrh  r0,[r6]                   ; 08047F3E
sub   r0,0x1                    ; 08047F40
strh  r0,[r6]                   ; 08047F42
lsl   r0,r0,0x10                ; 08047F44
cmp   r0,0x0                    ; 08047F46
bge   @@Code08047F68            ; 08047F48
mov   r0,r5                     ; 08047F4A
bl    Sub08047A60               ; 08047F4C
b     @@Code08047F72            ; 08047F50
.pool                           ; 08047F52

@@Code08047F68:
ldr   r0,=Data0816EF7E          ; 08047F68
ldrh  r1,[r6]                   ; 08047F6A
add   r1,r1,r0                  ; 08047F6C
ldrb  r0,[r1]                   ; 08047F6E
strh  r0,[r2]                   ; 08047F70
@@Code08047F72:
pop   {r4-r6}                   ; 08047F72
pop   {r0}                      ; 08047F74
bx    r0                        ; 08047F76
.pool                           ; 08047F78

Sub08047F7C:
; secondary sprite 1EC main
push  {r4-r7,lr}                ; 08047F7C
mov   r7,r8                     ; 08047F7E
push  {r7}                      ; 08047F80
mov   r7,r0                     ; 08047F82
ldrh  r3,[r7,0x34]              ; 08047F84
mov   r1,0x34                   ; 08047F86
ldsh  r0,[r7,r1]                ; 08047F88
cmp   r0,0x0                    ; 08047F8A
bge   @@Code08047FAC            ; 08047F8C
ldr   r0,=0x03006D80            ; 08047F8E
mov   r3,0xE4                   ; 08047F90
lsl   r3,r3,0x1                 ; 08047F92
add   r0,r0,r3                  ; 08047F94
ldrh  r0,[r0]                   ; 08047F96
cmp   r0,0x0                    ; 08047F98
bne   @@Code08047F9E            ; 08047F9A
b     @@Code080480C0            ; 08047F9C
@@Code08047F9E:
mov   r1,r7                     ; 08047F9E
add   r1,0x94                   ; 08047FA0
mov   r0,0x6                    ; 08047FA2
strb  r0,[r1]                   ; 08047FA4
b     @@Code080480C0            ; 08047FA6
.pool                           ; 08047FA8

@@Code08047FAC:
ldr   r0,=0x03006D80            ; 08047FAC
mov   r4,0xE4                   ; 08047FAE
lsl   r4,r4,0x1                 ; 08047FB0
add   r0,r0,r4                  ; 08047FB2
ldrh  r0,[r0]                   ; 08047FB4
cmp   r0,0x0                    ; 08047FB6
beq   @@Code08047FF6            ; 08047FB8
ldr   r2,=0x03002200            ; 08047FBA
ldr   r0,[r7]                   ; 08047FBC
asr   r0,r0,0x8                 ; 08047FBE
ldr   r5,=0x47F6                ; 08047FC0
add   r1,r2,r5                  ; 08047FC2
mov   r4,0x0                    ; 08047FC4
strh  r0,[r1]                   ; 08047FC6
ldr   r0,[r7,0x4]               ; 08047FC8
asr   r0,r0,0x8                 ; 08047FCA
ldrh  r1,[r7,0x30]              ; 08047FCC
sub   r0,r0,r1                  ; 08047FCE
add   r5,0x2                    ; 08047FD0
add   r1,r2,r5                  ; 08047FD2
strh  r0,[r1]                   ; 08047FD4
mov   r0,r7                     ; 08047FD6
add   r0,0x72                   ; 08047FD8
ldrh  r1,[r0]                   ; 08047FDA
add   r5,0x2                    ; 08047FDC
add   r0,r2,r5                  ; 08047FDE
strh  r1,[r0]                   ; 08047FE0
ldr   r1,=0x47FE                ; 08047FE2
add   r0,r2,r1                  ; 08047FE4
strh  r3,[r0]                   ; 08047FE6
ldr   r3,=0x4802                ; 08047FE8
add   r2,r2,r3                  ; 08047FEA
mov   r0,0x4                    ; 08047FEC
strh  r0,[r2]                   ; 08047FEE
bl    Sub08107118               ; 08047FF0
strh  r4,[r7,0x30]              ; 08047FF4
@@Code08047FF6:
mov   r0,r7                     ; 08047FF6
add   r0,0x6E                   ; 08047FF8
ldrh  r0,[r0]                   ; 08047FFA
cmp   r0,0x0                    ; 08047FFC
bne   @@Code08048012            ; 08047FFE
mov   r0,r7                     ; 08048000
add   r0,0x6A                   ; 08048002
ldrh  r1,[r0]                   ; 08048004
mov   r0,0x10                   ; 08048006
sub   r0,r0,r1                  ; 08048008
lsl   r0,r0,0x10                ; 0804800A
lsr   r6,r0,0x10                ; 0804800C
cmp   r0,0x0                    ; 0804800E
bge   @@Code08048014            ; 08048010
@@Code08048012:
mov   r6,0x0                    ; 08048012
@@Code08048014:
ldrh  r0,[r7,0x20]              ; 08048014
add   r0,0x30                   ; 08048016
lsl   r0,r0,0x10                ; 08048018
ldr   r1,=0x012F0000            ; 0804801A
cmp   r0,r1                     ; 0804801C
bhi   @@Code080480C0            ; 0804801E
ldrh  r0,[r7,0x22]              ; 08048020
add   r0,0x30                   ; 08048022
lsl   r0,r0,0x10                ; 08048024
lsr   r0,r0,0x10                ; 08048026
cmp   r0,0xCF                   ; 08048028
bhi   @@Code080480C0            ; 0804802A
ldrh  r2,[r7,0x34]              ; 0804802C
lsr   r2,r2,0x2                 ; 0804802E
lsl   r2,r2,0x3                 ; 08048030
ldr   r0,=0x03005A00            ; 08048032
add   r2,r2,r0                  ; 08048034
ldrh  r0,[r2]                   ; 08048036
mov   r4,0xFF                   ; 08048038
lsl   r4,r4,0x8                 ; 0804803A
mov   r1,r4                     ; 0804803C
and   r1,r0                     ; 0804803E
sub   r0,r0,r6                  ; 08048040
mov   r5,0xFF                   ; 08048042
mov   r12,r5                    ; 08048044
mov   r3,r12                    ; 08048046
and   r0,r3                     ; 08048048
orr   r1,r0                     ; 0804804A
strh  r1,[r2]                   ; 0804804C
ldrh  r0,[r2,0x2]               ; 0804804E
mov   r3,0xFE                   ; 08048050
lsl   r3,r3,0x8                 ; 08048052
mov   r1,r3                     ; 08048054
and   r1,r0                     ; 08048056
sub   r0,r0,r6                  ; 08048058
ldr   r5,=0x01FF                ; 0804805A
mov   r8,r5                     ; 0804805C
mov   r5,r8                     ; 0804805E
and   r0,r5                     ; 08048060
orr   r1,r0                     ; 08048062
strh  r1,[r2,0x2]               ; 08048064
ldrh  r0,[r2,0x8]               ; 08048066
mov   r1,r4                     ; 08048068
and   r1,r0                     ; 0804806A
add   r0,r6,r0                  ; 0804806C
mov   r5,r12                    ; 0804806E
and   r0,r5                     ; 08048070
orr   r1,r0                     ; 08048072
strh  r1,[r2,0x8]               ; 08048074
ldrh  r0,[r2,0xA]               ; 08048076
mov   r1,r3                     ; 08048078
and   r1,r0                     ; 0804807A
sub   r0,r0,r6                  ; 0804807C
mov   r5,r8                     ; 0804807E
and   r0,r5                     ; 08048080
orr   r1,r0                     ; 08048082
strh  r1,[r2,0xA]               ; 08048084
ldrh  r0,[r2,0x10]              ; 08048086
mov   r1,r4                     ; 08048088
and   r1,r0                     ; 0804808A
sub   r0,r0,r6                  ; 0804808C
mov   r5,r12                    ; 0804808E
and   r0,r5                     ; 08048090
orr   r1,r0                     ; 08048092
strh  r1,[r2,0x10]              ; 08048094
ldrh  r0,[r2,0x12]              ; 08048096
mov   r1,r3                     ; 08048098
and   r1,r0                     ; 0804809A
add   r0,r6,r0                  ; 0804809C
mov   r5,r8                     ; 0804809E
and   r0,r5                     ; 080480A0
orr   r1,r0                     ; 080480A2
strh  r1,[r2,0x12]              ; 080480A4
ldrh  r0,[r2,0x18]              ; 080480A6
and   r4,r0                     ; 080480A8
add   r0,r6,r0                  ; 080480AA
mov   r1,r12                    ; 080480AC
and   r0,r1                     ; 080480AE
orr   r4,r0                     ; 080480B0
strh  r4,[r2,0x18]              ; 080480B2
ldrh  r0,[r2,0x1A]              ; 080480B4
and   r3,r0                     ; 080480B6
add   r0,r6,r0                  ; 080480B8
and   r0,r5                     ; 080480BA
orr   r3,r0                     ; 080480BC
strh  r3,[r2,0x1A]              ; 080480BE
@@Code080480C0:
mov   r0,r7                     ; 080480C0
bl    Sub08047A6C               ; 080480C2
lsl   r0,r0,0x18                ; 080480C6
cmp   r0,0x0                    ; 080480C8
bne   @@Code080480E0            ; 080480CA
mov   r1,r7                     ; 080480CC
add   r1,0x6A                   ; 080480CE
ldrh  r0,[r1]                   ; 080480D0
add   r0,0x4                    ; 080480D2
lsl   r0,r0,0x10                ; 080480D4
lsr   r6,r0,0x10                ; 080480D6
cmp   r6,0x20                   ; 080480D8
bls   @@Code080480DE            ; 080480DA
mov   r6,0x20                   ; 080480DC
@@Code080480DE:
strh  r6,[r1]                   ; 080480DE
@@Code080480E0:
pop   {r3}                      ; 080480E0
mov   r8,r3                     ; 080480E2
pop   {r4-r7}                   ; 080480E4
pop   {r0}                      ; 080480E6
bx    r0                        ; 080480E8
.pool                           ; 080480EA

Sub0804810C:
; secondary sprite 1DD main
push  {r4-r7,lr}                ; 0804810C
mov   r7,r10                    ; 0804810E
mov   r6,r9                     ; 08048110
mov   r5,r8                     ; 08048112
push  {r5-r7}                   ; 08048114
mov   r7,r0                     ; 08048116
ldrh  r0,[r7,0x34]              ; 08048118
lsl   r0,r0,0x10                ; 0804811A
cmp   r0,0x0                    ; 0804811C
blt   @@Code080481C2            ; 0804811E
mov   r1,r7                     ; 08048120
add   r1,0x6A                   ; 08048122
ldrh  r6,[r1]                   ; 08048124
lsr   r3,r0,0x12                ; 08048126
ldr   r0,=0x030021B0            ; 08048128
mov   r10,r0                    ; 0804812A
lsl   r2,r3,0x3                 ; 0804812C
ldr   r1,=0x03005A00            ; 0804812E
mov   r9,r1                     ; 08048130
add   r2,r9                     ; 08048132
str   r2,[r0]                   ; 08048134
ldrh  r5,[r2,0x2]               ; 08048136
lsl   r1,r5,0x17                ; 08048138
lsr   r1,r1,0x17                ; 0804813A
sub   r1,r1,r6                  ; 0804813C
ldr   r0,=0x01FF                ; 0804813E
mov   r8,r0                     ; 08048140
mov   r0,r8                     ; 08048142
and   r1,r0                     ; 08048144
ldr   r4,=0xFFFFFE00            ; 08048146
mov   r0,r4                     ; 08048148
and   r0,r5                     ; 0804814A
orr   r0,r1                     ; 0804814C
strh  r0,[r2,0x2]               ; 0804814E
ldrb  r0,[r2]                   ; 08048150
sub   r0,r0,r6                  ; 08048152
strb  r0,[r2]                   ; 08048154
add   r3,0x1                    ; 08048156
lsl   r2,r3,0x3                 ; 08048158
add   r2,r9                     ; 0804815A
mov   r1,r10                    ; 0804815C
str   r2,[r1]                   ; 0804815E
ldrh  r5,[r2,0x2]               ; 08048160
lsl   r0,r5,0x17                ; 08048162
lsr   r0,r0,0x17                ; 08048164
add   r0,r0,r6                  ; 08048166
mov   r1,r8                     ; 08048168
and   r0,r1                     ; 0804816A
mov   r1,r4                     ; 0804816C
and   r1,r5                     ; 0804816E
orr   r1,r0                     ; 08048170
strh  r1,[r2,0x2]               ; 08048172
ldrb  r0,[r2]                   ; 08048174
sub   r0,r0,r6                  ; 08048176
strb  r0,[r2]                   ; 08048178
add   r3,0x1                    ; 0804817A
lsl   r2,r3,0x3                 ; 0804817C
add   r2,r9                     ; 0804817E
mov   r0,r10                    ; 08048180
str   r2,[r0]                   ; 08048182
ldrh  r5,[r2,0x2]               ; 08048184
lsl   r0,r5,0x17                ; 08048186
lsr   r0,r0,0x17                ; 08048188
sub   r0,r0,r6                  ; 0804818A
mov   r1,r8                     ; 0804818C
and   r0,r1                     ; 0804818E
mov   r1,r4                     ; 08048190
and   r1,r5                     ; 08048192
orr   r1,r0                     ; 08048194
strh  r1,[r2,0x2]               ; 08048196
ldrb  r0,[r2]                   ; 08048198
add   r0,r0,r6                  ; 0804819A
strb  r0,[r2]                   ; 0804819C
add   r3,0x1                    ; 0804819E
lsl   r3,r3,0x10                ; 080481A0
lsr   r3,r3,0xD                 ; 080481A2
add   r3,r9                     ; 080481A4
mov   r2,r10                    ; 080481A6
str   r3,[r2]                   ; 080481A8
ldrh  r1,[r3,0x2]               ; 080481AA
lsl   r0,r1,0x17                ; 080481AC
lsr   r0,r0,0x17                ; 080481AE
add   r0,r0,r6                  ; 080481B0
mov   r2,r8                     ; 080481B2
and   r0,r2                     ; 080481B4
and   r4,r1                     ; 080481B6
orr   r4,r0                     ; 080481B8
strh  r4,[r3,0x2]               ; 080481BA
ldrb  r0,[r3]                   ; 080481BC
add   r0,r0,r6                  ; 080481BE
strb  r0,[r3]                   ; 080481C0
@@Code080481C2:
mov   r0,r7                     ; 080481C2
bl    Sub08047AA8               ; 080481C4
lsl   r0,r0,0x18                ; 080481C8
cmp   r0,0x0                    ; 080481CA
bne   @@Code080481DE            ; 080481CC
mov   r0,r7                     ; 080481CE
add   r0,0x42                   ; 080481D0
ldrh  r0,[r0]                   ; 080481D2
cmp   r0,0x0                    ; 080481D4
bne   @@Code080481DE            ; 080481D6
mov   r0,r7                     ; 080481D8
bl    Sub08047A60               ; 080481DA
@@Code080481DE:
pop   {r3-r5}                   ; 080481DE
mov   r8,r3                     ; 080481E0
mov   r9,r4                     ; 080481E2
mov   r10,r5                    ; 080481E4
pop   {r4-r7}                   ; 080481E6
pop   {r0}                      ; 080481E8
bx    r0                        ; 080481EA
.pool                           ; 080481EC

Sub080481FC:
; secondary sprite 1FD main
push  {r4-r6,lr}                ; 080481FC
mov   r6,r0                     ; 080481FE
ldrh  r0,[r6,0x34]              ; 08048200
lsl   r0,r0,0x10                ; 08048202
cmp   r0,0x0                    ; 08048204
blt   @@Code0804825C            ; 08048206
lsr   r3,r0,0x12                ; 08048208
lsl   r3,r3,0x3                 ; 0804820A
ldr   r0,=0x03005A00            ; 0804820C
add   r3,r3,r0                  ; 0804820E
ldrh  r4,[r3,0x2]               ; 08048210
mov   r5,0xC0                   ; 08048212
lsl   r5,r5,0x6                 ; 08048214
mov   r0,r5                     ; 08048216
and   r0,r4                     ; 08048218
lsl   r2,r0,0x2                 ; 0804821A
ldr   r1,=Data0816EF90          ; 0804821C
mov   r0,r6                     ; 0804821E
add   r0,0x6E                   ; 08048220
ldrh  r0,[r0]                   ; 08048222
lsr   r0,r0,0x1                 ; 08048224
lsl   r0,r0,0x1                 ; 08048226
add   r1,r0,r1                  ; 08048228
ldrh  r1,[r1]                   ; 0804822A
orr   r2,r1                     ; 0804822C
ldr   r1,=Data0816EFA4          ; 0804822E
add   r0,r0,r1                  ; 08048230
ldrh  r0,[r0]                   ; 08048232
mov   r1,r6                     ; 08048234
add   r1,0x72                   ; 08048236
eor   r2,r0                     ; 08048238
ldrh  r1,[r1]                   ; 0804823A
add   r2,r2,r1                  ; 0804823C
lsl   r2,r2,0x10                ; 0804823E
ldr   r1,=0xCFFF                ; 08048240
and   r1,r4                     ; 08048242
lsr   r0,r2,0x12                ; 08048244
and   r0,r5                     ; 08048246
orr   r1,r0                     ; 08048248
strh  r1,[r3,0x2]               ; 0804824A
ldrh  r1,[r3,0x4]               ; 0804824C
mov   r0,0xFC                   ; 0804824E
lsl   r0,r0,0x8                 ; 08048250
and   r0,r1                     ; 08048252
lsl   r2,r2,0x6                 ; 08048254
lsr   r2,r2,0x16                ; 08048256
orr   r0,r2                     ; 08048258
strh  r0,[r3,0x4]               ; 0804825A
@@Code0804825C:
mov   r0,r6                     ; 0804825C
bl    Sub08047AA8               ; 0804825E
lsl   r0,r0,0x18                ; 08048262
cmp   r0,0x0                    ; 08048264
bne   @@Code0804828E            ; 08048266
mov   r1,r6                     ; 08048268
add   r1,0x44                   ; 0804826A
ldrh  r3,[r1]                   ; 0804826C
cmp   r3,0x0                    ; 0804826E
bne   @@Code0804828E            ; 08048270
mov   r0,r6                     ; 08048272
add   r0,0x62                   ; 08048274
ldrh  r0,[r0]                   ; 08048276
strh  r0,[r1]                   ; 08048278
mov   r2,r6                     ; 0804827A
add   r2,0x6E                   ; 0804827C
ldrh  r0,[r2]                   ; 0804827E
add   r1,r0,0x2                 ; 08048280
strh  r1,[r2]                   ; 08048282
sub   r0,0x12                   ; 08048284
lsl   r0,r0,0x10                ; 08048286
cmp   r0,0x0                    ; 08048288
blt   @@Code0804828E            ; 0804828A
strh  r3,[r2]                   ; 0804828C
@@Code0804828E:
pop   {r4-r6}                   ; 0804828E
pop   {r0}                      ; 08048290
bx    r0                        ; 08048292
.pool                           ; 08048294

Sub080482A4:
; secondary sprite 1FC main
push  {r4,lr}                   ; 080482A4
mov   r4,r0                     ; 080482A6
ldr   r1,=DataPtrs0816F17C      ; 080482A8
ldrh  r0,[r4,0x38]              ; 080482AA
lsl   r0,r0,0x2                 ; 080482AC
add   r0,r0,r1                  ; 080482AE
ldr   r1,[r0]                   ; 080482B0
mov   r0,r4                     ; 080482B2
bl    Sub0804CC9C               ; 080482B4
mov   r0,r4                     ; 080482B8
bl    Sub08047AA8               ; 080482BA
lsl   r0,r0,0x18                ; 080482BE
cmp   r0,0x0                    ; 080482C0
bne   @@Code08048306            ; 080482C2
mov   r3,r4                     ; 080482C4
add   r3,0x42                   ; 080482C6
ldrh  r0,[r3]                   ; 080482C8
cmp   r0,0x0                    ; 080482CA
bne   @@Code08048306            ; 080482CC
ldrh  r0,[r4,0x38]              ; 080482CE
sub   r0,0x1                    ; 080482D0
strh  r0,[r4,0x38]              ; 080482D2
lsl   r0,r0,0x10                ; 080482D4
cmp   r0,0x0                    ; 080482D6
bge   @@Code080482E8            ; 080482D8
mov   r0,r4                     ; 080482DA
bl    Sub08047A60               ; 080482DC
b     @@Code08048306            ; 080482E0
.pool                           ; 080482E2

@@Code080482E8:
ldr   r0,=Data0816F1AC          ; 080482E8
ldrh  r1,[r4,0x38]              ; 080482EA
lsl   r1,r1,0x1                 ; 080482EC
add   r1,r1,r0                  ; 080482EE
ldrh  r2,[r4,0x2A]              ; 080482F0
ldr   r0,=0x07FF                ; 080482F2
and   r0,r2                     ; 080482F4
ldrh  r1,[r1]                   ; 080482F6
orr   r0,r1                     ; 080482F8
strh  r0,[r4,0x2A]              ; 080482FA
ldr   r1,=Data0816F1C2          ; 080482FC
ldrh  r0,[r4,0x38]              ; 080482FE
add   r0,r0,r1                  ; 08048300
ldrb  r0,[r0]                   ; 08048302
strh  r0,[r3]                   ; 08048304
@@Code08048306:
pop   {r4}                      ; 08048306
pop   {r0}                      ; 08048308
bx    r0                        ; 0804830A
.pool                           ; 0804830C

Sub08048318:
; secondary sprite 216 main
push  {r4,lr}                   ; 08048318
mov   r4,r0                     ; 0804831A
ldr   r1,=DataPtrs0816F450      ; 0804831C
ldrh  r0,[r4,0x38]              ; 0804831E
lsl   r0,r0,0x2                 ; 08048320
add   r0,r0,r1                  ; 08048322
ldr   r1,[r0]                   ; 08048324
mov   r0,r4                     ; 08048326
bl    Sub0804CC9C               ; 08048328
mov   r0,r4                     ; 0804832C
bl    Sub08047AA8               ; 0804832E
lsl   r0,r0,0x18                ; 08048332
cmp   r0,0x0                    ; 08048334
bne   @@Code08048374            ; 08048336
mov   r3,r4                     ; 08048338
add   r3,0x42                   ; 0804833A
ldrh  r0,[r3]                   ; 0804833C
cmp   r0,0x0                    ; 0804833E
bne   @@Code08048374            ; 08048340
ldrh  r0,[r4,0x38]              ; 08048342
sub   r0,0x1                    ; 08048344
strh  r0,[r4,0x38]              ; 08048346
lsl   r0,r0,0x10                ; 08048348
cmp   r0,0x0                    ; 0804834A
bge   @@Code0804835C            ; 0804834C
mov   r0,r4                     ; 0804834E
bl    Sub08047A60               ; 08048350
b     @@Code08048374            ; 08048354
.pool                           ; 08048356

@@Code0804835C:
ldr   r0,=Data0816F488          ; 0804835C
ldrh  r1,[r4,0x38]              ; 0804835E
lsl   r1,r1,0x1                 ; 08048360
add   r1,r1,r0                  ; 08048362
ldrh  r2,[r4,0x2A]              ; 08048364
ldr   r0,=0x07FF                ; 08048366
and   r0,r2                     ; 08048368
ldrh  r1,[r1]                   ; 0804836A
orr   r0,r1                     ; 0804836C
strh  r0,[r4,0x2A]              ; 0804836E
mov   r0,0x2                    ; 08048370
strh  r0,[r3]                   ; 08048372
@@Code08048374:
pop   {r4}                      ; 08048374
pop   {r0}                      ; 08048376
bx    r0                        ; 08048378
.pool                           ; 0804837A

Sub08048384:
; secondary sprite 215 main
push  {r4,lr}                   ; 08048384
mov   r4,r0                     ; 08048386
ldr   r1,=DataPtrs0816F6B0      ; 08048388
ldrh  r0,[r4,0x38]              ; 0804838A
lsl   r0,r0,0x2                 ; 0804838C
add   r0,r0,r1                  ; 0804838E
ldr   r1,[r0]                   ; 08048390
mov   r0,r4                     ; 08048392
bl    Sub0804CC9C               ; 08048394
mov   r0,r4                     ; 08048398
bl    Sub08047AA8               ; 0804839A
lsl   r0,r0,0x18                ; 0804839E
cmp   r0,0x0                    ; 080483A0
bne   @@Code080483E6            ; 080483A2
mov   r3,r4                     ; 080483A4
add   r3,0x42                   ; 080483A6
ldrh  r0,[r3]                   ; 080483A8
cmp   r0,0x0                    ; 080483AA
bne   @@Code080483E6            ; 080483AC
ldrh  r0,[r4,0x38]              ; 080483AE
sub   r0,0x1                    ; 080483B0
strh  r0,[r4,0x38]              ; 080483B2
lsl   r0,r0,0x10                ; 080483B4
cmp   r0,0x0                    ; 080483B6
bge   @@Code080483C8            ; 080483B8
mov   r0,r4                     ; 080483BA
bl    Sub08047A60               ; 080483BC
b     @@Code080483E6            ; 080483C0
.pool                           ; 080483C2

@@Code080483C8:
ldr   r0,=Data0816F6E4          ; 080483C8
ldrh  r1,[r4,0x38]              ; 080483CA
lsl   r1,r1,0x1                 ; 080483CC
add   r1,r1,r0                  ; 080483CE
ldrh  r2,[r4,0x2A]              ; 080483D0
ldr   r0,=0x07FF                ; 080483D2
and   r0,r2                     ; 080483D4
ldrh  r1,[r1]                   ; 080483D6
orr   r0,r1                     ; 080483D8
strh  r0,[r4,0x2A]              ; 080483DA
ldr   r1,=Data0816F6FC          ; 080483DC
ldrh  r0,[r4,0x38]              ; 080483DE
add   r0,r0,r1                  ; 080483E0
ldrb  r0,[r0]                   ; 080483E2
strh  r0,[r3]                   ; 080483E4
@@Code080483E6:
pop   {r4}                      ; 080483E6
pop   {r0}                      ; 080483E8
bx    r0                        ; 080483EA
.pool                           ; 080483EC

Sub080483F8:
; secondary sprite 21A-21B main
push  {r4,lr}                   ; 080483F8
mov   r4,r0                     ; 080483FA
ldr   r1,=DataPtrs0816FA3C      ; 080483FC
ldrh  r0,[r4,0x38]              ; 080483FE
lsl   r0,r0,0x2                 ; 08048400
add   r0,r0,r1                  ; 08048402
ldr   r1,[r0]                   ; 08048404
mov   r0,r4                     ; 08048406
bl    Sub0804CC9C               ; 08048408
mov   r0,r4                     ; 0804840C
bl    Sub08047AA8               ; 0804840E
lsl   r0,r0,0x18                ; 08048412
cmp   r0,0x0                    ; 08048414
bne   @@Code0804845A            ; 08048416
mov   r3,r4                     ; 08048418
add   r3,0x42                   ; 0804841A
ldrh  r0,[r3]                   ; 0804841C
cmp   r0,0x0                    ; 0804841E
bne   @@Code0804845A            ; 08048420
ldrh  r0,[r4,0x38]              ; 08048422
sub   r0,0x1                    ; 08048424
strh  r0,[r4,0x38]              ; 08048426
lsl   r0,r0,0x10                ; 08048428
cmp   r0,0x0                    ; 0804842A
bge   @@Code0804843C            ; 0804842C
mov   r0,r4                     ; 0804842E
bl    Sub08047A60               ; 08048430
b     @@Code0804845A            ; 08048434
.pool                           ; 08048436

@@Code0804843C:
ldr   r0,=Data0816FA9C          ; 0804843C
ldrh  r1,[r4,0x38]              ; 0804843E
lsl   r1,r1,0x1                 ; 08048440
add   r1,r1,r0                  ; 08048442
ldrh  r2,[r4,0x2A]              ; 08048444
ldr   r0,=0x07FF                ; 08048446
and   r0,r2                     ; 08048448
ldrh  r1,[r1]                   ; 0804844A
orr   r0,r1                     ; 0804844C
strh  r0,[r4,0x2A]              ; 0804844E
ldr   r1,=Data0816FACA          ; 08048450
ldrh  r0,[r4,0x38]              ; 08048452
add   r0,r0,r1                  ; 08048454
ldrb  r0,[r0]                   ; 08048456
strh  r0,[r3]                   ; 08048458
@@Code0804845A:
pop   {r4}                      ; 0804845A
pop   {r0}                      ; 0804845C
bx    r0                        ; 0804845E
.pool                           ; 08048460

Sub0804846C:
; secondary sprite 21E main
push  {r4,lr}                   ; 0804846C
mov   r4,r0                     ; 0804846E
ldr   r1,=DataPtrs0816FBA0      ; 08048470
ldrh  r0,[r4,0x38]              ; 08048472
lsl   r0,r0,0x2                 ; 08048474
add   r0,r0,r1                  ; 08048476
ldr   r1,[r0]                   ; 08048478
mov   r0,r4                     ; 0804847A
bl    Sub0804CC9C               ; 0804847C
mov   r0,r4                     ; 08048480
bl    Sub08047AA8               ; 08048482
lsl   r0,r0,0x18                ; 08048486
cmp   r0,0x0                    ; 08048488
bne   @@Code080484CE            ; 0804848A
mov   r3,r4                     ; 0804848C
add   r3,0x42                   ; 0804848E
ldrh  r0,[r3]                   ; 08048490
cmp   r0,0x0                    ; 08048492
bne   @@Code080484CE            ; 08048494
ldrh  r0,[r4,0x38]              ; 08048496
sub   r0,0x1                    ; 08048498
strh  r0,[r4,0x38]              ; 0804849A
lsl   r0,r0,0x10                ; 0804849C
cmp   r0,0x0                    ; 0804849E
bge   @@Code080484B0            ; 080484A0
mov   r0,r4                     ; 080484A2
bl    Sub08047A60               ; 080484A4
b     @@Code080484CE            ; 080484A8
.pool                           ; 080484AA

@@Code080484B0:
ldr   r0,=Data0816FAE2          ; 080484B0
ldrh  r1,[r4,0x38]              ; 080484B2
lsl   r1,r1,0x1                 ; 080484B4
add   r1,r1,r0                  ; 080484B6
ldrh  r2,[r4,0x2A]              ; 080484B8
ldr   r0,=0x07FF                ; 080484BA
and   r0,r2                     ; 080484BC
ldrh  r1,[r1]                   ; 080484BE
orr   r0,r1                     ; 080484C0
strh  r0,[r4,0x2A]              ; 080484C2
ldr   r1,=Data0816FBDC          ; 080484C4
ldrh  r0,[r4,0x38]              ; 080484C6
add   r0,r0,r1                  ; 080484C8
ldrb  r0,[r0]                   ; 080484CA
strh  r0,[r3]                   ; 080484CC
@@Code080484CE:
pop   {r4}                      ; 080484CE
pop   {r0}                      ; 080484D0
bx    r0                        ; 080484D2
.pool                           ; 080484D4

Sub080484E0:
; secondary sprite 1C4 main
push  {r4,lr}                   ; 080484E0
mov   r4,r0                     ; 080484E2
bl    Sub08047AA8               ; 080484E4
lsl   r0,r0,0x18                ; 080484E8
cmp   r0,0x0                    ; 080484EA
bne   @@Code0804852A            ; 080484EC
mov   r0,0x42                   ; 080484EE
add   r0,r0,r4                  ; 080484F0
mov   r12,r0                    ; 080484F2
ldrh  r0,[r0]                   ; 080484F4
cmp   r0,0x0                    ; 080484F6
bne   @@Code0804852A            ; 080484F8
mov   r3,r4                     ; 080484FA
add   r3,0x6A                   ; 080484FC
ldrh  r0,[r3]                   ; 080484FE
sub   r0,0x2                    ; 08048500
lsl   r0,r0,0x10                ; 08048502
lsr   r0,r0,0x10                ; 08048504
lsl   r2,r0,0x10                ; 08048506
cmp   r2,0x0                    ; 08048508
blt   @@Code0804852A            ; 0804850A
strh  r0,[r3]                   ; 0804850C
ldr   r1,=Data0816FBEA          ; 0804850E
lsr   r0,r2,0x11                ; 08048510
lsl   r0,r0,0x1                 ; 08048512
add   r0,r0,r1                  ; 08048514
ldrh  r0,[r0]                   ; 08048516
strh  r0,[r4,0x38]              ; 08048518
ldr   r1,=Data0816FC04          ; 0804851A
ldrh  r0,[r3]                   ; 0804851C
lsr   r0,r0,0x1                 ; 0804851E
lsl   r0,r0,0x1                 ; 08048520
add   r0,r0,r1                  ; 08048522
ldrh  r0,[r0]                   ; 08048524
mov   r1,r12                    ; 08048526
strh  r0,[r1]                   ; 08048528
@@Code0804852A:
pop   {r4}                      ; 0804852A
pop   {r0}                      ; 0804852C
bx    r0                        ; 0804852E
.pool                           ; 08048530

Sub08048538:
; secondary sprite 1C5 main
push  {r4,lr}                   ; 08048538
mov   r4,r0                     ; 0804853A
bl    Sub08047AA8               ; 0804853C
lsl   r0,r0,0x18                ; 08048540
cmp   r0,0x0                    ; 08048542
bne   @@Code08048562            ; 08048544
mov   r0,r4                     ; 08048546
add   r0,0x42                   ; 08048548
ldrh  r0,[r0]                   ; 0804854A
sub   r0,0x1                    ; 0804854C
lsl   r0,r0,0x10                ; 0804854E
ldr   r1,=Data0816FC1E          ; 08048550
lsr   r0,r0,0xF                 ; 08048552
add   r0,r0,r1                  ; 08048554
mov   r2,0x0                    ; 08048556
ldsh  r1,[r0,r2]                ; 08048558
lsl   r1,r1,0x8                 ; 0804855A
ldr   r0,[r4,0x4]               ; 0804855C
add   r0,r0,r1                  ; 0804855E
str   r0,[r4,0x4]               ; 08048560
@@Code08048562:
pop   {r4}                      ; 08048562
pop   {r0}                      ; 08048564
bx    r0                        ; 08048566
.pool                           ; 08048568

Sub0804856C:
; secondary sprite 1C6 main
push  {r4,lr}                   ; 0804856C
mov   r4,r0                     ; 0804856E
bl    Sub08047AA8               ; 08048570
lsl   r0,r0,0x18                ; 08048574
cmp   r0,0x0                    ; 08048576
bne   @@Code080485CC            ; 08048578
mov   r2,r4                     ; 0804857A
add   r2,0xA1                   ; 0804857C
ldrb  r0,[r2]                   ; 0804857E
mov   r1,r4                     ; 08048580
add   r1,0x42                   ; 08048582
strh  r0,[r1]                   ; 08048584
cmp   r0,0x0                    ; 08048586
bne   @@Code08048592            ; 08048588
mov   r0,r4                     ; 0804858A
bl    Sub08047A60               ; 0804858C
b     @@Code080485CC            ; 08048590
@@Code08048592:
mov   r0,0xFF                   ; 08048592
strb  r0,[r2]                   ; 08048594
mov   r1,r4                     ; 08048596
add   r1,0x94                   ; 08048598
mov   r0,0x2                    ; 0804859A
strb  r0,[r1]                   ; 0804859C
mov   r2,r4                     ; 0804859E
add   r2,0x6A                   ; 080485A0
ldrh  r0,[r2]                   ; 080485A2
add   r0,0x1                    ; 080485A4
strh  r0,[r2]                   ; 080485A6
mov   r1,0x18                   ; 080485A8
and   r0,r1                     ; 080485AA
cmp   r0,0x0                    ; 080485AC
beq   @@Code080485B8            ; 080485AE
ldr   r0,[r4,0x4]               ; 080485B0
ldr   r1,=0xFFFFFF00            ; 080485B2
add   r0,r0,r1                  ; 080485B4
str   r0,[r4,0x4]               ; 080485B6
@@Code080485B8:
ldrh  r1,[r2]                   ; 080485B8
mov   r0,0xF                    ; 080485BA
and   r0,r1                     ; 080485BC
ldr   r1,=Data0816FC44          ; 080485BE
lsl   r0,r0,0x2                 ; 080485C0
add   r0,r0,r1                  ; 080485C2
ldr   r1,[r4]                   ; 080485C4
ldr   r0,[r0]                   ; 080485C6
add   r1,r1,r0                  ; 080485C8
str   r1,[r4]                   ; 080485CA
@@Code080485CC:
pop   {r4}                      ; 080485CC
pop   {r0}                      ; 080485CE
bx    r0                        ; 080485D0
.pool                           ; 080485D2

Sub080485DC:
; secondary sprite 1C7 main
push  {r4,lr}                   ; 080485DC
mov   r4,r0                     ; 080485DE
bl    Sub08047AA8               ; 080485E0
lsl   r0,r0,0x18                ; 080485E4
cmp   r0,0x0                    ; 080485E6
bne   @@Code08048600            ; 080485E8
mov   r1,r4                     ; 080485EA
add   r1,0x42                   ; 080485EC
ldrh  r0,[r1]                   ; 080485EE
cmp   r0,0x0                    ; 080485F0
bne   @@Code08048600            ; 080485F2
add   r0,0x1                    ; 080485F4
strh  r0,[r1]                   ; 080485F6
ldrh  r1,[r4,0x2C]              ; 080485F8
mov   r0,0x80                   ; 080485FA
orr   r0,r1                     ; 080485FC
strh  r0,[r4,0x2C]              ; 080485FE
@@Code08048600:
pop   {r4}                      ; 08048600
pop   {r0}                      ; 08048602
bx    r0                        ; 08048604
.pool                           ; 08048606

Sub08048608:
; secondary sprite 1C8 main
push  {r4,lr}                   ; 08048608
mov   r4,r0                     ; 0804860A
bl    Sub08047AA8               ; 0804860C
lsl   r0,r0,0x18                ; 08048610
cmp   r0,0x0                    ; 08048612
bne   @@Code0804861C            ; 08048614
ldrh  r0,[r4,0x38]              ; 08048616
add   r0,0x1                    ; 08048618
strh  r0,[r4,0x38]              ; 0804861A
@@Code0804861C:
pop   {r4}                      ; 0804861C
pop   {r0}                      ; 0804861E
bx    r0                        ; 08048620
.pool                           ; 08048622

Sub08048624:
; secondary sprite 230 main
push  {r4-r5,lr}                ; 08048624
mov   r4,r0                     ; 08048626
ldr   r5,=0x03007240            ; 08048628  Normal gameplay IWRAM (0300220C)
ldr   r0,[r5]                   ; 0804862A
ldr   r1,=0x2618                ; 0804862C
add   r0,r0,r1                  ; 0804862E
ldrh  r0,[r0,0x4]               ; 08048630
cmp   r0,0x0                    ; 08048632
beq   @@Code0804866A            ; 08048634
mov   r0,r4                     ; 08048636
add   r0,0x42                   ; 08048638
ldrh  r0,[r0]                   ; 0804863A
cmp   r0,0x1                    ; 0804863C
bne   @@Code0804866A            ; 0804863E
mov   r0,0xF7                   ; 08048640
lsl   r0,r0,0x1                 ; 08048642
bl    SpawnSecondarySprite      ; 08048644
lsl   r0,r0,0x18                ; 08048648
lsr   r0,r0,0x18                ; 0804864A
mov   r1,0xB0                   ; 0804864C
mul   r1,r0                     ; 0804864E
ldr   r0,=0x1AF4                ; 08048650
add   r1,r1,r0                  ; 08048652
ldr   r0,[r5]                   ; 08048654
add   r0,r0,r1                  ; 08048656
ldr   r1,[r4]                   ; 08048658
str   r1,[r0]                   ; 0804865A
ldr   r1,[r4,0x4]               ; 0804865C
str   r1,[r0,0x4]               ; 0804865E
mov   r1,0xC                    ; 08048660
strh  r1,[r0,0x38]              ; 08048662
add   r0,0x42                   ; 08048664
mov   r1,0x8                    ; 08048666
strh  r1,[r0]                   ; 08048668
@@Code0804866A:
mov   r0,r4                     ; 0804866A
bl    Sub08047AD8               ; 0804866C
lsl   r0,r0,0x18                ; 08048670
cmp   r0,0x0                    ; 08048672
bne   @@Code08048686            ; 08048674
ldr   r0,=0x03002200            ; 08048676
ldr   r1,=0x48A2                ; 08048678
add   r0,r0,r1                  ; 0804867A
ldrh  r0,[r0]                   ; 0804867C
lsr   r0,r0,0x3                 ; 0804867E
mov   r1,0x3                    ; 08048680
and   r0,r1                     ; 08048682
strh  r0,[r4,0x38]              ; 08048684
@@Code08048686:
pop   {r4-r5}                   ; 08048686
pop   {r0}                      ; 08048688
bx    r0                        ; 0804868A
.pool                           ; 0804868C

Sub080486A0:
push  {r4-r7,lr}                ; 080486A0
mov   r7,r8                     ; 080486A2
push  {r7}                      ; 080486A4
mov   r4,r0                     ; 080486A6
add   r0,0x94                   ; 080486A8
ldrb  r0,[r0]                   ; 080486AA
lsl   r0,r0,0x18                ; 080486AC
asr   r0,r0,0x18                ; 080486AE
cmp   r0,0x0                    ; 080486B0
blt   @@Code0804877C            ; 080486B2
ldrh  r0,[r4,0x34]              ; 080486B4
lsl   r5,r0,0x10                ; 080486B6
cmp   r5,0x0                    ; 080486B8
blt   @@Code0804877C            ; 080486BA
ldrh  r0,[r4,0x38]              ; 080486BC
cmp   r0,0x1                    ; 080486BE
bhi   @@Code0804877C            ; 080486C0
lsr   r5,r5,0x12                ; 080486C2
lsl   r5,r5,0x3                 ; 080486C4
ldr   r6,=0x03005A00            ; 080486C6
add   r7,r5,r6                  ; 080486C8
ldrh  r0,[r7]                   ; 080486CA
mov   r2,0x80                   ; 080486CC
lsl   r2,r2,0x1                 ; 080486CE
mov   r1,r2                     ; 080486D0
orr   r0,r1                     ; 080486D2
strh  r0,[r7]                   ; 080486D4
ldrh  r0,[r7,0x2]               ; 080486D6
ldr   r1,=0x01FF                ; 080486D8
and   r1,r0                     ; 080486DA
mov   r2,0x80                   ; 080486DC
lsl   r2,r2,0x8                 ; 080486DE
mov   r0,r2                     ; 080486E0
orr   r1,r0                     ; 080486E2
ldr   r0,=0x0FD2                ; 080486E4
add   r0,r0,r6                  ; 080486E6
mov   r8,r0                     ; 080486E8
ldrh  r2,[r0]                   ; 080486EA
mov   r0,0x1F                   ; 080486EC
and   r0,r2                     ; 080486EE
lsl   r0,r0,0x9                 ; 080486F0
orr   r1,r0                     ; 080486F2
strh  r1,[r7,0x2]               ; 080486F4
ldrh  r0,[r7,0x4]               ; 080486F6
mov   r2,0xC0                   ; 080486F8
lsl   r2,r2,0x4                 ; 080486FA
and   r2,r0                     ; 080486FC
ldr   r3,=Data0816FC84          ; 080486FE
ldrh  r1,[r4,0x38]              ; 08048700
lsl   r0,r1,0x1                 ; 08048702
add   r0,r0,r3                  ; 08048704
ldrh  r0,[r0]                   ; 08048706
orr   r2,r0                     ; 08048708
ldr   r3,=Data0816FC88          ; 0804870A
mov   r0,r4                     ; 0804870C
add   r0,0x40                   ; 0804870E
lsl   r1,r1,0x2                 ; 08048710
ldrh  r0,[r0]                   ; 08048712
add   r1,r1,r0                  ; 08048714
lsl   r1,r1,0x1                 ; 08048716
add   r1,r1,r3                  ; 08048718
ldrh  r0,[r1]                   ; 0804871A
orr   r2,r0                     ; 0804871C
strh  r2,[r7,0x4]               ; 0804871E
mov   r1,r8                     ; 08048720
ldrh  r0,[r1]                   ; 08048722
lsl   r0,r0,0x5                 ; 08048724
add   r7,r0,r6                  ; 08048726
ldr   r0,=0x030021A8            ; 08048728
ldr   r2,=Data081AF2CC          ; 0804872A
mov   r1,r4                     ; 0804872C
add   r1,0x76                   ; 0804872E
ldrh  r1,[r1]                   ; 08048730
lsl   r1,r1,0x1                 ; 08048732
add   r1,r1,r2                  ; 08048734
ldrh  r1,[r1]                   ; 08048736
mov   r2,0x0                    ; 08048738
strh  r1,[r0,0x2]               ; 0804873A
strh  r1,[r0]                   ; 0804873C
strh  r2,[r0,0x4]               ; 0804873E
ldr   r4,=0x03007030            ; 08048740
mov   r1,r4                     ; 08048742
mov   r2,0x1                    ; 08048744
mov   r3,0x2                    ; 08048746
bl    swi_0F                    ; 08048748
ldrh  r0,[r4]                   ; 0804874C
strh  r0,[r7,0x6]               ; 0804874E
add   r7,0x8                    ; 08048750
ldrh  r0,[r4,0x2]               ; 08048752
strh  r0,[r7,0x6]               ; 08048754
add   r7,0x8                    ; 08048756
ldrh  r0,[r4,0x4]               ; 08048758
strh  r0,[r7,0x6]               ; 0804875A
ldrh  r0,[r4,0x6]               ; 0804875C
strh  r0,[r7,0xE]               ; 0804875E
mov   r2,r8                     ; 08048760
ldrh  r0,[r2]                   ; 08048762
add   r0,0x1                    ; 08048764
strh  r0,[r2]                   ; 08048766
ldr   r2,=0x030021A4            ; 08048768
mov   r0,r6                     ; 0804876A
add   r0,0x8                    ; 0804876C
add   r0,r5,r0                  ; 0804876E
mov   r1,0xA0                   ; 08048770
strh  r1,[r0]                   ; 08048772
add   r6,0x10                   ; 08048774
add   r5,r5,r6                  ; 08048776
str   r5,[r2]                   ; 08048778
strh  r1,[r5]                   ; 0804877A
@@Code0804877C:
pop   {r3}                      ; 0804877C
mov   r8,r3                     ; 0804877E
pop   {r4-r7}                   ; 08048780
pop   {r0}                      ; 08048782
bx    r0                        ; 08048784
.pool                           ; 08048786

Sub080487AC:
; secondary sprite 1C9 main
push  {r4,lr}                   ; 080487AC
mov   r4,r0                     ; 080487AE
bl    Sub080486A0               ; 080487B0
mov   r0,r4                     ; 080487B4
bl    Sub08047AD8               ; 080487B6
lsl   r0,r0,0x18                ; 080487BA
cmp   r0,0x0                    ; 080487BC
bne   @@Code0804885E            ; 080487BE
ldr   r0,=0x03007240            ; 080487C0  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080487C2
ldr   r1,=0x2B3A                ; 080487C4
add   r0,r0,r1                  ; 080487C6
ldrb  r1,[r0]                   ; 080487C8
mov   r0,0xF                    ; 080487CA
and   r0,r1                     ; 080487CC
cmp   r0,0x0                    ; 080487CE
bne   @@Code0804885E            ; 080487D0
ldrh  r0,[r4,0x38]              ; 080487D2
cmp   r0,0x1                    ; 080487D4
bhi   @@Code0804885E            ; 080487D6
mov   r2,r4                     ; 080487D8
add   r2,0x76                   ; 080487DA
ldrh  r0,[r2]                   ; 080487DC
add   r0,0x4                    ; 080487DE
strh  r0,[r2]                   ; 080487E0
lsl   r0,r0,0x10                ; 080487E2
ldr   r1,=0x011F0000            ; 080487E4
cmp   r0,r1                     ; 080487E6
bls   @@Code080487FE            ; 080487E8
mov   r0,0x90                   ; 080487EA
lsl   r0,r0,0x1                 ; 080487EC
strh  r0,[r2]                   ; 080487EE
ldr   r0,[r4,0xC]               ; 080487F0
sub   r0,0x30                   ; 080487F2
str   r0,[r4,0xC]               ; 080487F4
ldr   r1,=0xFFFFFF00            ; 080487F6
cmp   r0,r1                     ; 080487F8
bge   @@Code080487FE            ; 080487FA
str   r1,[r4,0xC]               ; 080487FC
@@Code080487FE:
mov   r1,r4                     ; 080487FE
add   r1,0x44                   ; 08048800
ldrh  r2,[r1]                   ; 08048802
cmp   r2,0x0                    ; 08048804
bne   @@Code0804881E            ; 08048806
mov   r0,0x6                    ; 08048808
strh  r0,[r1]                   ; 0804880A
sub   r1,0x4                    ; 0804880C
ldrh  r0,[r1]                   ; 0804880E
add   r0,0x1                    ; 08048810
strh  r0,[r1]                   ; 08048812
lsl   r0,r0,0x10                ; 08048814
lsr   r0,r0,0x10                ; 08048816
cmp   r0,0x2                    ; 08048818
bls   @@Code0804881E            ; 0804881A
strh  r2,[r1]                   ; 0804881C
@@Code0804881E:
mov   r0,r4                     ; 0804881E
add   r0,0x42                   ; 08048820
ldrh  r0,[r0]                   ; 08048822
cmp   r0,0x1                    ; 08048824
bne   @@Code0804885E            ; 08048826
ldr   r0,=0x01D7                ; 08048828
bl    SpawnSecondarySprite      ; 0804882A
ldr   r2,=0x03007240            ; 0804882E  Normal gameplay IWRAM (0300220C)
lsl   r0,r0,0x18                ; 08048830
lsr   r0,r0,0x18                ; 08048832
mov   r1,0xB0                   ; 08048834
mul   r0,r1                     ; 08048836
ldr   r1,=0x1AF4                ; 08048838
add   r0,r0,r1                  ; 0804883A
ldr   r1,[r2]                   ; 0804883C
add   r2,r1,r0                  ; 0804883E
ldr   r0,[r4]                   ; 08048840
ldr   r1,=0xFFFFFE00            ; 08048842
add   r0,r0,r1                  ; 08048844
str   r0,[r2]                   ; 08048846
ldr   r0,[r4,0x4]               ; 08048848
str   r0,[r2,0x4]               ; 0804884A
mov   r1,r2                     ; 0804884C
add   r1,0x6E                   ; 0804884E
mov   r0,0xB                    ; 08048850
strh  r0,[r1]                   ; 08048852
sub   r1,0x4                    ; 08048854
strh  r0,[r1]                   ; 08048856
sub   r1,0x28                   ; 08048858
mov   r0,0x4                    ; 0804885A
strh  r0,[r1]                   ; 0804885C
@@Code0804885E:
pop   {r4}                      ; 0804885E
pop   {r0}                      ; 08048860
bx    r0                        ; 08048862
.pool                           ; 08048864

Sub08048880:
; secondary sprite 1CA main
push  {r4,lr}                   ; 08048880
mov   r4,r0                     ; 08048882
bl    Sub08047AA8               ; 08048884
lsl   r0,r0,0x18                ; 08048888
cmp   r0,0x0                    ; 0804888A
bne   @@Code080488EE            ; 0804888C
mov   r3,r4                     ; 0804888E
add   r3,0x42                   ; 08048890
ldrh  r0,[r3]                   ; 08048892
mov   r2,r4                     ; 08048894
add   r2,0x6A                   ; 08048896
cmp   r0,0x0                    ; 08048898
bne   @@Code080488C0            ; 0804889A
ldrh  r0,[r2]                   ; 0804889C
cmp   r0,0x0                    ; 0804889E
beq   @@Code080488EE            ; 080488A0
sub   r0,0x1                    ; 080488A2
strh  r0,[r2]                   ; 080488A4
lsl   r0,r0,0x10                ; 080488A6
lsr   r0,r0,0x10                ; 080488A8
cmp   r0,0x3                    ; 080488AA
bne   @@Code080488B6            ; 080488AC
ldrh  r1,[r4,0x2A]              ; 080488AE
mov   r0,0xFC                   ; 080488B0
and   r0,r1                     ; 080488B2
strh  r0,[r4,0x2A]              ; 080488B4
@@Code080488B6:
ldr   r0,=Data0816FC9D          ; 080488B6
ldrh  r1,[r2]                   ; 080488B8
add   r1,r1,r0                  ; 080488BA
ldrb  r0,[r1]                   ; 080488BC
strh  r0,[r3]                   ; 080488BE
@@Code080488C0:
ldr   r1,=Data0816FC98          ; 080488C0
ldrh  r0,[r2]                   ; 080488C2
add   r0,r0,r1                  ; 080488C4
ldrb  r0,[r0]                   ; 080488C6
mov   r2,r0                     ; 080488C8
strh  r0,[r4,0x38]              ; 080488CA
mov   r1,0x80                   ; 080488CC
and   r0,r1                     ; 080488CE
cmp   r0,0x0                    ; 080488D0
bne   @@Code080488E8            ; 080488D2
mov   r1,r4                     ; 080488D4
add   r1,0x94                   ; 080488D6
mov   r0,0x6                    ; 080488D8
strb  r0,[r1]                   ; 080488DA
b     @@Code080488EE            ; 080488DC
.pool                           ; 080488DE

@@Code080488E8:
mov   r0,r4                     ; 080488E8
add   r0,0x94                   ; 080488EA
strb  r2,[r0]                   ; 080488EC
@@Code080488EE:
pop   {r4}                      ; 080488EE
pop   {r0}                      ; 080488F0
bx    r0                        ; 080488F2

Sub080488F4:
; secondary sprite 1CB main
push  {r4,lr}                   ; 080488F4
mov   r4,r0                     ; 080488F6
bl    Sub08047AA8               ; 080488F8
lsl   r0,r0,0x18                ; 080488FC
cmp   r0,0x0                    ; 080488FE
bne   @@Code0804890C            ; 08048900
mov   r0,r4                     ; 08048902
add   r0,0x42                   ; 08048904
ldrh  r0,[r0]                   ; 08048906
lsr   r0,r0,0x3                 ; 08048908
strh  r0,[r4,0x38]              ; 0804890A
@@Code0804890C:
pop   {r4}                      ; 0804890C
pop   {r0}                      ; 0804890E
bx    r0                        ; 08048910
.pool                           ; 08048912

Sub08048914:
; secondary sprite 1CC main
push  {r4,lr}                   ; 08048914
mov   r3,r0                     ; 08048916
mov   r2,r3                     ; 08048918
add   r2,0x42                   ; 0804891A
ldrh  r0,[r2]                   ; 0804891C
sub   r0,0x1                    ; 0804891E
strh  r0,[r2]                   ; 08048920
ldrh  r0,[r2]                   ; 08048922
mov   r4,r0                     ; 08048924
mov   r1,r0                     ; 08048926
cmp   r1,0x0                    ; 08048928
bne   @@Code08048934            ; 0804892A
mov   r0,r3                     ; 0804892C
bl    Sub08047A60               ; 0804892E
b     @@Code08048944            ; 08048932
@@Code08048934:
cmp   r1,0x3E                   ; 08048934
bhi   @@Code0804893C            ; 08048936
sub   r0,0x1                    ; 08048938
strh  r0,[r2]                   ; 0804893A
@@Code0804893C:
lsr   r0,r4,0x1                 ; 0804893C
mov   r1,0x7                    ; 0804893E
and   r0,r1                     ; 08048940
strh  r0,[r3,0x38]              ; 08048942
@@Code08048944:
pop   {r4}                      ; 08048944
pop   {r0}                      ; 08048946
bx    r0                        ; 08048948
.pool                           ; 0804894A

Sub0804894C:
; secondary sprite 1CD main
push  {r4,lr}                   ; 0804894C
mov   r4,r0                     ; 0804894E
bl    Sub08047AA8               ; 08048950
lsl   r0,r0,0x18                ; 08048954
cmp   r0,0x0                    ; 08048956
bne   @@Code0804897C            ; 08048958
mov   r1,r4                     ; 0804895A
add   r1,0x42                   ; 0804895C
ldrh  r0,[r1]                   ; 0804895E
cmp   r0,0x0                    ; 08048960
bne   @@Code0804897C            ; 08048962
ldrh  r0,[r4,0x38]              ; 08048964
sub   r0,0x1                    ; 08048966
strh  r0,[r4,0x38]              ; 08048968
lsl   r0,r0,0x10                ; 0804896A
cmp   r0,0x0                    ; 0804896C
bge   @@Code08048978            ; 0804896E
mov   r0,r4                     ; 08048970
bl    Sub08047A60               ; 08048972
b     @@Code0804897C            ; 08048976
@@Code08048978:
mov   r0,0x2                    ; 08048978
strh  r0,[r1]                   ; 0804897A
@@Code0804897C:
pop   {r4}                      ; 0804897C
pop   {r0}                      ; 0804897E
bx    r0                        ; 08048980
.pool                           ; 08048982

Sub08048984:
; secondary sprite 1CE main
push  {r4-r5,lr}                ; 08048984
mov   r4,r0                     ; 08048986
bl    Sub08047AA8               ; 08048988
lsl   r0,r0,0x18                ; 0804898C
cmp   r0,0x0                    ; 0804898E
bne   @@Code080489C2            ; 08048990
mov   r2,r4                     ; 08048992
add   r2,0x6A                   ; 08048994
ldrh  r1,[r2]                   ; 08048996
ldrb  r5,[r2]                   ; 08048998
mov   r3,r4                     ; 0804899A
add   r3,0x42                   ; 0804899C
ldrh  r0,[r3]                   ; 0804899E
cmp   r0,0x0                    ; 080489A0
bne   @@Code080489BA            ; 080489A2
sub   r0,r1,0x1                 ; 080489A4
strh  r0,[r2]                   ; 080489A6
mov   r1,0x80                   ; 080489A8
and   r0,r1                     ; 080489AA
cmp   r0,0x0                    ; 080489AC
bne   @@Code080489C2            ; 080489AE
ldr   r0,=Data0816FCA1          ; 080489B0
ldrh  r1,[r2]                   ; 080489B2
add   r1,r1,r0                  ; 080489B4
ldrb  r0,[r1]                   ; 080489B6
strh  r0,[r3]                   ; 080489B8
@@Code080489BA:
ldr   r0,=Data0816FCA4          ; 080489BA
add   r0,r5,r0                  ; 080489BC
ldrb  r0,[r0]                   ; 080489BE
strh  r0,[r4,0x38]              ; 080489C0
@@Code080489C2:
pop   {r4-r5}                   ; 080489C2
pop   {r0}                      ; 080489C4
bx    r0                        ; 080489C6
.pool                           ; 080489C8

Sub080489D0:
; secondary sprite 1CF main
push  {r4,lr}                   ; 080489D0
mov   r4,r0                     ; 080489D2
bl    Sub08047AA8               ; 080489D4
lsl   r0,r0,0x18                ; 080489D8
cmp   r0,0x0                    ; 080489DA
bne   @@Code08048A08            ; 080489DC
ldrh  r2,[r4,0x38]              ; 080489DE
lsl   r0,r2,0x18                ; 080489E0
lsr   r1,r0,0x18                ; 080489E2
mov   r3,r4                     ; 080489E4
add   r3,0x42                   ; 080489E6
ldrh  r0,[r3]                   ; 080489E8
cmp   r0,0x0                    ; 080489EA
bne   @@Code08048A08            ; 080489EC
sub   r0,r1,0x1                 ; 080489EE
lsl   r0,r0,0x18                ; 080489F0
lsr   r1,r0,0x18                ; 080489F2
mov   r0,0x80                   ; 080489F4
and   r0,r1                     ; 080489F6
cmp   r0,0x0                    ; 080489F8
bne   @@Code08048A08            ; 080489FA
sub   r0,r2,0x1                 ; 080489FC
strh  r0,[r4,0x38]              ; 080489FE
ldr   r0,=Data0816FCA8          ; 08048A00
add   r0,r1,r0                  ; 08048A02
ldrb  r0,[r0]                   ; 08048A04
strh  r0,[r3]                   ; 08048A06
@@Code08048A08:
pop   {r4}                      ; 08048A08
pop   {r0}                      ; 08048A0A
bx    r0                        ; 08048A0C
.pool                           ; 08048A0E

Sub08048A14:
; secondary sprite 1D0 main
push  {r4-r5,lr}                ; 08048A14
mov   r4,r0                     ; 08048A16
bl    Sub08047AA8               ; 08048A18
lsl   r0,r0,0x18                ; 08048A1C
cmp   r0,0x0                    ; 08048A1E
bne   @@Code08048AA6            ; 08048A20
ldrh  r0,[r4,0x38]              ; 08048A22
lsl   r0,r0,0x18                ; 08048A24
lsr   r2,r0,0x18                ; 08048A26
mov   r1,r4                     ; 08048A28
add   r1,0x42                   ; 08048A2A
ldrh  r0,[r1]                   ; 08048A2C
lsr   r0,r0,0x1                 ; 08048A2E
cmp   r0,0x0                    ; 08048A30
bne   @@Code08048A4C            ; 08048A32
sub   r0,r2,0x2                 ; 08048A34
lsl   r0,r0,0x18                ; 08048A36
lsr   r2,r0,0x18                ; 08048A38
mov   r0,0x80                   ; 08048A3A
and   r0,r2                     ; 08048A3C
cmp   r0,0x0                    ; 08048A3E
bne   @@Code08048A4C            ; 08048A40
strh  r2,[r4,0x38]              ; 08048A42
ldr   r0,=Data0816FCAE          ; 08048A44
add   r0,r2,r0                  ; 08048A46
ldrb  r0,[r0]                   ; 08048A48
strh  r0,[r1]                   ; 08048A4A
@@Code08048A4C:
mov   r2,0xFC                   ; 08048A4C
ldrh  r1,[r4,0x38]              ; 08048A4E
mov   r0,0x1                    ; 08048A50
and   r0,r1                     ; 08048A52
cmp   r0,0x0                    ; 08048A54
beq   @@Code08048A5A            ; 08048A56
mov   r2,0xFE                   ; 08048A58
@@Code08048A5A:
mov   r3,r4                     ; 08048A5A
add   r3,0x6E                   ; 08048A5C
ldrh  r1,[r3]                   ; 08048A5E
add   r1,r1,r2                  ; 08048A60
strh  r1,[r3]                   ; 08048A62
ldr   r2,=Data081AF6CE          ; 08048A64
mov   r0,0x6A                   ; 08048A66
add   r0,r0,r4                  ; 08048A68
mov   r12,r0                    ; 08048A6A
ldrh  r0,[r0]                   ; 08048A6C
lsl   r0,r0,0x1                 ; 08048A6E
add   r0,r0,r2                  ; 08048A70
ldrb  r0,[r0]                   ; 08048A72
lsl   r0,r0,0x18                ; 08048A74
asr   r0,r0,0x18                ; 08048A76
lsl   r1,r1,0x18                ; 08048A78
asr   r1,r1,0x18                ; 08048A7A
mul   r0,r1                     ; 08048A7C
lsl   r0,r0,0x8                 ; 08048A7E
lsr   r0,r0,0x10                ; 08048A80
lsl   r0,r0,0x13                ; 08048A82
asr   r0,r0,0x10                ; 08048A84
str   r0,[r4,0x8]               ; 08048A86
mov   r1,r12                    ; 08048A88
ldrh  r0,[r1]                   ; 08048A8A
lsl   r0,r0,0x1                 ; 08048A8C
add   r2,0x80                   ; 08048A8E
add   r0,r0,r2                  ; 08048A90
mov   r1,0x0                    ; 08048A92
ldsb  r1,[r0,r1]                ; 08048A94
mov   r0,0x0                    ; 08048A96
ldsb  r0,[r3,r0]                ; 08048A98
mul   r0,r1                     ; 08048A9A
lsl   r0,r0,0x8                 ; 08048A9C
lsr   r0,r0,0x10                ; 08048A9E
lsl   r0,r0,0x13                ; 08048AA0
asr   r0,r0,0x10                ; 08048AA2
str   r0,[r4,0xC]               ; 08048AA4
@@Code08048AA6:
pop   {r4-r5}                   ; 08048AA6
pop   {r0}                      ; 08048AA8
bx    r0                        ; 08048AAA
.pool                           ; 08048AAC

Sub08048AB4:
; secondary sprite 1D1 main
push  {r4,lr}                   ; 08048AB4
mov   r4,r0                     ; 08048AB6
bl    Sub08047AA8               ; 08048AB8
lsl   r0,r0,0x18                ; 08048ABC
cmp   r0,0x0                    ; 08048ABE
bne   @@Code08048ACC            ; 08048AC0
ldr   r0,[r4,0xC]               ; 08048AC2
cmp   r0,0x0                    ; 08048AC4
blt   @@Code08048ACC            ; 08048AC6
mov   r0,0x1                    ; 08048AC8
strh  r0,[r4,0x38]              ; 08048ACA
@@Code08048ACC:
pop   {r4}                      ; 08048ACC
pop   {r0}                      ; 08048ACE
bx    r0                        ; 08048AD0
.pool                           ; 08048AD2

Sub08048AD4:
; secondary sprite 1D2 main
push  {r4,lr}                   ; 08048AD4
mov   r4,r0                     ; 08048AD6
bl    Sub08047AA8               ; 08048AD8
lsl   r0,r0,0x18                ; 08048ADC
cmp   r0,0x0                    ; 08048ADE
bne   @@Code08048AEC            ; 08048AE0
mov   r0,r4                     ; 08048AE2
add   r0,0x42                   ; 08048AE4
ldrh  r0,[r0]                   ; 08048AE6
lsr   r0,r0,0x3                 ; 08048AE8
strh  r0,[r4,0x38]              ; 08048AEA
@@Code08048AEC:
pop   {r4}                      ; 08048AEC
pop   {r0}                      ; 08048AEE
bx    r0                        ; 08048AF0
.pool                           ; 08048AF2

Sub08048AF4:
; secondary sprite 1D3 main
push  {r4,lr}                   ; 08048AF4
mov   r4,r0                     ; 08048AF6
bl    Sub08047AA8               ; 08048AF8
lsl   r0,r0,0x18                ; 08048AFC
cmp   r0,0x0                    ; 08048AFE
bne   @@Code08048B3A            ; 08048B00
mov   r1,r4                     ; 08048B02
add   r1,0x42                   ; 08048B04
ldrh  r0,[r1]                   ; 08048B06
cmp   r0,0x8                    ; 08048B08
bne   @@Code08048B12            ; 08048B0A
ldrh  r0,[r4,0x38]              ; 08048B0C
add   r0,0x1                    ; 08048B0E
strh  r0,[r4,0x38]              ; 08048B10
@@Code08048B12:
ldrh  r1,[r1]                   ; 08048B12
mov   r0,0x7                    ; 08048B14
and   r0,r1                     ; 08048B16
cmp   r0,0x0                    ; 08048B18
bne   @@Code08048B3A            ; 08048B1A
ldr   r0,=0x03007240            ; 08048B1C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08048B1E
ldr   r1,=0x29CC                ; 08048B20
add   r0,r0,r1                  ; 08048B22
ldrh  r0,[r0]                   ; 08048B24
mov   r1,0x1                    ; 08048B26
and   r1,r0                     ; 08048B28
cmp   r1,0x0                    ; 08048B2A
bne   @@Code08048B32            ; 08048B2C
mov   r1,0x1                    ; 08048B2E
neg   r1,r1                     ; 08048B30
@@Code08048B32:
lsl   r1,r1,0x8                 ; 08048B32
ldr   r0,[r4]                   ; 08048B34
add   r0,r0,r1                  ; 08048B36
str   r0,[r4]                   ; 08048B38
@@Code08048B3A:
pop   {r4}                      ; 08048B3A
pop   {r0}                      ; 08048B3C
bx    r0                        ; 08048B3E
.pool                           ; 08048B40

Sub08048B48:
; secondary sprite 1D4 main
push  {r4,lr}                   ; 08048B48
mov   r4,r0                     ; 08048B4A
bl    Sub08047AA8               ; 08048B4C
lsl   r0,r0,0x18                ; 08048B50
cmp   r0,0x0                    ; 08048B52
bne   @@Code08048B88            ; 08048B54
mov   r3,r4                     ; 08048B56
add   r3,0x42                   ; 08048B58
ldrh  r0,[r3]                   ; 08048B5A
cmp   r0,0x0                    ; 08048B5C
bne   @@Code08048B88            ; 08048B5E
mov   r2,r4                     ; 08048B60
add   r2,0x6A                   ; 08048B62
ldrh  r0,[r2]                   ; 08048B64
sub   r0,0x1                    ; 08048B66
strh  r0,[r2]                   ; 08048B68
lsl   r0,r0,0x10                ; 08048B6A
cmp   r0,0x0                    ; 08048B6C
beq   @@Code08048B88            ; 08048B6E
ldr   r1,=Data0816FCB8          ; 08048B70
ldrh  r0,[r2]                   ; 08048B72
sub   r0,0x1                    ; 08048B74
add   r0,r0,r1                  ; 08048B76
ldrb  r0,[r0]                   ; 08048B78
strh  r0,[r3]                   ; 08048B7A
ldr   r1,=Data0816FCB2          ; 08048B7C
ldrh  r0,[r2]                   ; 08048B7E
sub   r0,0x1                    ; 08048B80
add   r0,r0,r1                  ; 08048B82
ldrb  r0,[r0]                   ; 08048B84
strh  r0,[r4,0x38]              ; 08048B86
@@Code08048B88:
pop   {r4}                      ; 08048B88
pop   {r0}                      ; 08048B8A
bx    r0                        ; 08048B8C
.pool                           ; 08048B8E

Sub08048B98:
; secondary sprite 1D5 main
push  {r4,lr}                   ; 08048B98
mov   r4,r0                     ; 08048B9A
bl    Sub08047AA8               ; 08048B9C
lsl   r0,r0,0x18                ; 08048BA0
cmp   r0,0x0                    ; 08048BA2
bne   @@Code08048BD4            ; 08048BA4
mov   r3,r4                     ; 08048BA6
add   r3,0x42                   ; 08048BA8
ldrh  r0,[r3]                   ; 08048BAA
cmp   r0,0x0                    ; 08048BAC
bne   @@Code08048BD4            ; 08048BAE
mov   r2,r4                     ; 08048BB0
add   r2,0x6A                   ; 08048BB2
ldrh  r0,[r2]                   ; 08048BB4
sub   r0,0x1                    ; 08048BB6
strh  r0,[r2]                   ; 08048BB8
lsl   r0,r0,0x10                ; 08048BBA
cmp   r0,0x0                    ; 08048BBC
blt   @@Code08048BD4            ; 08048BBE
ldr   r1,=Data0816FCBE          ; 08048BC0
ldrh  r0,[r2]                   ; 08048BC2
add   r0,r0,r1                  ; 08048BC4
ldrb  r0,[r0]                   ; 08048BC6
strh  r0,[r4,0x38]              ; 08048BC8
ldr   r1,=Data0816FCC5          ; 08048BCA
ldrh  r0,[r2]                   ; 08048BCC
add   r0,r0,r1                  ; 08048BCE
ldrb  r0,[r0]                   ; 08048BD0
strh  r0,[r3]                   ; 08048BD2
@@Code08048BD4:
pop   {r4}                      ; 08048BD4
pop   {r0}                      ; 08048BD6
bx    r0                        ; 08048BD8
.pool                           ; 08048BDA

Sub08048BE4:
; secondary sprite 1D6  main
push  {r4,lr}                   ; 08048BE4
mov   r4,r0                     ; 08048BE6
bl    Sub08047AA8               ; 08048BE8
lsl   r0,r0,0x18                ; 08048BEC
cmp   r0,0x0                    ; 08048BEE
bne   @@Code08048C20            ; 08048BF0
mov   r3,r4                     ; 08048BF2
add   r3,0x42                   ; 08048BF4
ldrh  r0,[r3]                   ; 08048BF6
cmp   r0,0x0                    ; 08048BF8
bne   @@Code08048C20            ; 08048BFA
mov   r2,r4                     ; 08048BFC
add   r2,0x6A                   ; 08048BFE
ldrh  r0,[r2]                   ; 08048C00
sub   r0,0x1                    ; 08048C02
strh  r0,[r2]                   ; 08048C04
lsl   r0,r0,0x10                ; 08048C06
cmp   r0,0x0                    ; 08048C08
blt   @@Code08048C20            ; 08048C0A
ldr   r1,=Data0816FCCC          ; 08048C0C
ldrh  r0,[r2]                   ; 08048C0E
add   r0,r0,r1                  ; 08048C10
ldrb  r0,[r0]                   ; 08048C12
strh  r0,[r4,0x38]              ; 08048C14
ldr   r1,=Data0816FCD4          ; 08048C16
ldrh  r0,[r2]                   ; 08048C18
add   r0,r0,r1                  ; 08048C1A
ldrb  r0,[r0]                   ; 08048C1C
strh  r0,[r3]                   ; 08048C1E
@@Code08048C20:
pop   {r4}                      ; 08048C20
pop   {r0}                      ; 08048C22
bx    r0                        ; 08048C24
.pool                           ; 08048C26

Sub08048C30:
; secondary sprite 1D7 main
push  {r4,lr}                   ; 08048C30
mov   r4,r0                     ; 08048C32
mov   r3,0x0                    ; 08048C34
ldr   r0,=0x03007240            ; 08048C36  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 08048C38
ldr   r1,=0x2B3A                ; 08048C3A
add   r0,r2,r1                  ; 08048C3C
ldrb  r1,[r0]                   ; 08048C3E
mov   r0,0xF                    ; 08048C40
and   r0,r1                     ; 08048C42
cmp   r0,0x0                    ; 08048C44
bne   @@Code08048C82            ; 08048C46
mov   r0,r4                     ; 08048C48
add   r0,0x6E                   ; 08048C4A
ldrh  r0,[r0]                   ; 08048C4C
cmp   r0,0x0                    ; 08048C4E
beq   @@Code08048C82            ; 08048C50
ldr   r1,=0x29C8                ; 08048C52
add   r0,r2,r1                  ; 08048C54
ldrh  r0,[r0]                   ; 08048C56
cmp   r0,0x0                    ; 08048C58
beq   @@Code08048C82            ; 08048C5A
mov   r1,r4                     ; 08048C5C
add   r1,0x42                   ; 08048C5E
ldrh  r0,[r1]                   ; 08048C60
sub   r0,0x1                    ; 08048C62
strh  r0,[r1]                   ; 08048C64
lsl   r0,r0,0x10                ; 08048C66
cmp   r0,0x0                    ; 08048C68
bge   @@Code08048C80            ; 08048C6A
mov   r0,r4                     ; 08048C6C
bl    Sub08047A60               ; 08048C6E
b     @@Code08048CC0            ; 08048C72
.pool                           ; 08048C74

@@Code08048C80:
mov   r3,0x1                    ; 08048C80
@@Code08048C82:
cmp   r3,0x0                    ; 08048C82
bne   @@Code08048C92            ; 08048C84
mov   r0,r4                     ; 08048C86
bl    Sub08047AA8               ; 08048C88
lsl   r0,r0,0x18                ; 08048C8C
cmp   r0,0x0                    ; 08048C8E
bne   @@Code08048CC0            ; 08048C90
@@Code08048C92:
mov   r3,r4                     ; 08048C92
add   r3,0x42                   ; 08048C94
ldrh  r0,[r3]                   ; 08048C96
cmp   r0,0x0                    ; 08048C98
bne   @@Code08048CC0            ; 08048C9A
mov   r2,r4                     ; 08048C9C
add   r2,0x6A                   ; 08048C9E
ldrh  r0,[r2]                   ; 08048CA0
sub   r0,0x1                    ; 08048CA2
strh  r0,[r2]                   ; 08048CA4
lsl   r0,r0,0x10                ; 08048CA6
cmp   r0,0x0                    ; 08048CA8
blt   @@Code08048CC0            ; 08048CAA
ldr   r1,=Data0816FCDC          ; 08048CAC
ldrh  r0,[r2]                   ; 08048CAE
add   r0,r0,r1                  ; 08048CB0
ldrb  r0,[r0]                   ; 08048CB2
strh  r0,[r4,0x38]              ; 08048CB4
ldr   r1,=Data0816FCE7          ; 08048CB6
ldrh  r0,[r2]                   ; 08048CB8
add   r0,r0,r1                  ; 08048CBA
ldrb  r0,[r0]                   ; 08048CBC
strh  r0,[r3]                   ; 08048CBE
@@Code08048CC0:
pop   {r4}                      ; 08048CC0
pop   {r0}                      ; 08048CC2
bx    r0                        ; 08048CC4
.pool                           ; 08048CC6

Sub08048CD0:
; secondary sprite 1D8 main
push  {r4,lr}                   ; 08048CD0
mov   r4,r0                     ; 08048CD2
bl    Sub08047AA8               ; 08048CD4
lsl   r0,r0,0x18                ; 08048CD8
cmp   r0,0x0                    ; 08048CDA
bne   @@Code08048D0C            ; 08048CDC
mov   r3,r4                     ; 08048CDE
add   r3,0x42                   ; 08048CE0
ldrh  r0,[r3]                   ; 08048CE2
cmp   r0,0x0                    ; 08048CE4
bne   @@Code08048D0C            ; 08048CE6
mov   r2,r4                     ; 08048CE8
add   r2,0x6A                   ; 08048CEA
ldrh  r0,[r2]                   ; 08048CEC
sub   r0,0x1                    ; 08048CEE
strh  r0,[r2]                   ; 08048CF0
lsl   r0,r0,0x10                ; 08048CF2
cmp   r0,0x0                    ; 08048CF4
blt   @@Code08048D0C            ; 08048CF6
ldr   r1,=Data0816FCF2          ; 08048CF8
ldrh  r0,[r2]                   ; 08048CFA
add   r0,r0,r1                  ; 08048CFC
ldrb  r0,[r0]                   ; 08048CFE
strh  r0,[r4,0x38]              ; 08048D00
ldr   r1,=Data0816FCF3          ; 08048D02
ldrh  r0,[r2]                   ; 08048D04
add   r0,r0,r1                  ; 08048D06
ldrb  r0,[r0]                   ; 08048D08
strh  r0,[r3]                   ; 08048D0A
@@Code08048D0C:
pop   {r4}                      ; 08048D0C
pop   {r0}                      ; 08048D0E
bx    r0                        ; 08048D10
.pool                           ; 08048D12

Sub08048D1C:
; secondary sprite 1D9 main
push  {r4-r7,lr}                ; 08048D1C
mov   r5,r0                     ; 08048D1E
ldr   r6,=0x03007240            ; 08048D20  Normal gameplay IWRAM (0300220C)
ldr   r0,[r6]                   ; 08048D22
ldr   r1,=0x2A12                ; 08048D24
add   r4,r0,r1                  ; 08048D26
mov   r0,r5                     ; 08048D28
bl    Sub08047AA8               ; 08048D2A
lsl   r0,r0,0x18                ; 08048D2E
cmp   r0,0x0                    ; 08048D30
bne   @@Code08048DB8            ; 08048D32
mov   r0,r5                     ; 08048D34
add   r0,0x6A                   ; 08048D36
ldrh  r1,[r0]                   ; 08048D38
mov   r0,0xB0                   ; 08048D3A
mul   r0,r1                     ; 08048D3C
mov   r1,0x95                   ; 08048D3E
lsl   r1,r1,0x2                 ; 08048D40
add   r0,r0,r1                  ; 08048D42
ldr   r1,[r6]                   ; 08048D44
add   r1,r1,r0                  ; 08048D46
ldr   r0,[r1]                   ; 08048D48
asr   r0,r0,0x8                 ; 08048D4A
strh  r0,[r4]                   ; 08048D4C
ldr   r0,[r1,0x4]               ; 08048D4E
asr   r0,r0,0x8                 ; 08048D50
add   r0,0x8                    ; 08048D52
strh  r0,[r4,0x4]               ; 08048D54
mov   r7,r5                     ; 08048D56
add   r7,0x6E                   ; 08048D58
ldrh  r0,[r7]                   ; 08048D5A
strh  r0,[r4,0xC]               ; 08048D5C
mov   r6,r5                     ; 08048D5E
add   r6,0x72                   ; 08048D60
ldrh  r0,[r6]                   ; 08048D62
strh  r0,[r4,0x8]               ; 08048D64
ldr   r0,[r5]                   ; 08048D66
asr   r0,r0,0x8                 ; 08048D68
strh  r0,[r4,0x10]              ; 08048D6A
ldr   r0,[r5,0x4]               ; 08048D6C
asr   r0,r0,0x8                 ; 08048D6E
strh  r0,[r4,0x14]              ; 08048D70
bl    Sub0805D244               ; 08048D72
ldrh  r0,[r4,0x8]               ; 08048D76
strh  r0,[r6]                   ; 08048D78
lsl   r0,r0,0x10                ; 08048D7A
cmp   r0,0x0                    ; 08048D7C
bge   @@Code08048D86            ; 08048D7E
ldrh  r0,[r4,0x8]               ; 08048D80
neg   r0,r0                     ; 08048D82
strh  r0,[r4,0x8]               ; 08048D84
@@Code08048D86:
ldrh  r0,[r4,0xC]               ; 08048D86
strh  r0,[r7]                   ; 08048D88
lsl   r0,r0,0x10                ; 08048D8A
cmp   r0,0x0                    ; 08048D8C
bge   @@Code08048D96            ; 08048D8E
ldrh  r0,[r4,0xC]               ; 08048D90
neg   r0,r0                     ; 08048D92
strh  r0,[r4,0xC]               ; 08048D94
@@Code08048D96:
ldrh  r0,[r4,0xC]               ; 08048D96
ldrh  r1,[r4,0x8]               ; 08048D98
add   r0,r0,r1                  ; 08048D9A
lsl   r0,r0,0x10                ; 08048D9C
lsr   r0,r0,0x10                ; 08048D9E
cmp   r0,0x30                   ; 08048DA0
bhi   @@Code08048DA8            ; 08048DA2
mov   r0,0x1                    ; 08048DA4
strh  r0,[r5,0x38]              ; 08048DA6
@@Code08048DA8:
mov   r1,0x10                   ; 08048DA8
ldsh  r0,[r4,r1]                ; 08048DAA
lsl   r0,r0,0x8                 ; 08048DAC
str   r0,[r5]                   ; 08048DAE
mov   r1,0x14                   ; 08048DB0
ldsh  r0,[r4,r1]                ; 08048DB2
lsl   r0,r0,0x8                 ; 08048DB4
str   r0,[r5,0x4]               ; 08048DB6
@@Code08048DB8:
pop   {r4-r7}                   ; 08048DB8
pop   {r0}                      ; 08048DBA
bx    r0                        ; 08048DBC
.pool                           ; 08048DBE

Sub08048DC8:
; secondary sprite 1DA main
push  {r4,lr}                   ; 08048DC8
mov   r4,r0                     ; 08048DCA
bl    Sub08047AA8               ; 08048DCC
lsl   r0,r0,0x18                ; 08048DD0
cmp   r0,0x0                    ; 08048DD2
bne   @@Code08048E04            ; 08048DD4
mov   r3,r4                     ; 08048DD6
add   r3,0x42                   ; 08048DD8
ldrh  r0,[r3]                   ; 08048DDA
cmp   r0,0x0                    ; 08048DDC
bne   @@Code08048E04            ; 08048DDE
mov   r2,r4                     ; 08048DE0
add   r2,0x6A                   ; 08048DE2
ldrh  r0,[r2]                   ; 08048DE4
sub   r0,0x1                    ; 08048DE6
strh  r0,[r2]                   ; 08048DE8
lsl   r0,r0,0x10                ; 08048DEA
cmp   r0,0x0                    ; 08048DEC
blt   @@Code08048E04            ; 08048DEE
ldr   r1,=Data0816FCF4          ; 08048DF0
ldrh  r0,[r2]                   ; 08048DF2
add   r0,r0,r1                  ; 08048DF4
ldrb  r0,[r0]                   ; 08048DF6
strh  r0,[r4,0x38]              ; 08048DF8
ldr   r1,=Data0816FCFE          ; 08048DFA
ldrh  r0,[r2]                   ; 08048DFC
add   r0,r0,r1                  ; 08048DFE
ldrb  r0,[r0]                   ; 08048E00
strh  r0,[r3]                   ; 08048E02
@@Code08048E04:
pop   {r4}                      ; 08048E04
pop   {r0}                      ; 08048E06
bx    r0                        ; 08048E08
.pool                           ; 08048E0A

Sub08048E14:
; secondary sprite 1DB main
push  {lr}                      ; 08048E14
bl    Sub08047AD8               ; 08048E16
pop   {r0}                      ; 08048E1A
bx    r0                        ; 08048E1C
.pool                           ; 08048E1E

Sub08048E20:
; secondary sprite 1DC main
push  {r4,lr}                   ; 08048E20
mov   r4,r0                     ; 08048E22
bl    Sub08047AA8               ; 08048E24
lsl   r0,r0,0x18                ; 08048E28
cmp   r0,0x0                    ; 08048E2A
bne   @@Code08048E56            ; 08048E2C
mov   r2,r4                     ; 08048E2E
add   r2,0x42                   ; 08048E30
ldrh  r0,[r2]                   ; 08048E32
cmp   r0,0x0                    ; 08048E34
bne   @@Code08048E56            ; 08048E36
ldrh  r0,[r4,0x38]              ; 08048E38
sub   r0,0x1                    ; 08048E3A
strh  r0,[r4,0x38]              ; 08048E3C
lsl   r0,r0,0x10                ; 08048E3E
cmp   r0,0x0                    ; 08048E40
bge   @@Code08048E4C            ; 08048E42
mov   r0,r4                     ; 08048E44
bl    Sub08047A60               ; 08048E46
b     @@Code08048E56            ; 08048E4A
@@Code08048E4C:
ldr   r0,=Data0816FD08          ; 08048E4C
ldrh  r1,[r4,0x38]              ; 08048E4E
add   r1,r1,r0                  ; 08048E50
ldrb  r0,[r1]                   ; 08048E52
strh  r0,[r2]                   ; 08048E54
@@Code08048E56:
pop   {r4}                      ; 08048E56
pop   {r0}                      ; 08048E58
bx    r0                        ; 08048E5A
.pool                           ; 08048E5C

Sub08048E60:
; secondary sprite 1DE main
push  {r4,lr}                   ; 08048E60
mov   r4,r0                     ; 08048E62
add   r0,0x6E                   ; 08048E64
ldrh  r0,[r0]                   ; 08048E66
cmp   r0,0x0                    ; 08048E68
beq   @@Code08048E74            ; 08048E6A
mov   r0,r4                     ; 08048E6C
bl    Sub08047A6C               ; 08048E6E
b     @@Code08048E7A            ; 08048E72
@@Code08048E74:
mov   r0,r4                     ; 08048E74
bl    Sub08047AA8               ; 08048E76
@@Code08048E7A:
lsl   r0,r0,0x18                ; 08048E7A
cmp   r0,0x0                    ; 08048E7C
bne   @@Code08048EAE            ; 08048E7E
mov   r3,r4                     ; 08048E80
add   r3,0x42                   ; 08048E82
ldrh  r0,[r3]                   ; 08048E84
cmp   r0,0x0                    ; 08048E86
bne   @@Code08048EAE            ; 08048E88
mov   r2,r4                     ; 08048E8A
add   r2,0x6A                   ; 08048E8C
ldrh  r0,[r2]                   ; 08048E8E
sub   r0,0x1                    ; 08048E90
strh  r0,[r2]                   ; 08048E92
lsl   r0,r0,0x10                ; 08048E94
cmp   r0,0x0                    ; 08048E96
blt   @@Code08048EAE            ; 08048E98
ldr   r1,=Data0816FD0D          ; 08048E9A
ldrh  r0,[r2]                   ; 08048E9C
add   r0,r0,r1                  ; 08048E9E
ldrb  r0,[r0]                   ; 08048EA0
strh  r0,[r4,0x38]              ; 08048EA2
ldr   r1,=Data0816FD18          ; 08048EA4
ldrh  r0,[r2]                   ; 08048EA6
add   r0,r0,r1                  ; 08048EA8
ldrb  r0,[r0]                   ; 08048EAA
strh  r0,[r3]                   ; 08048EAC
@@Code08048EAE:
pop   {r4}                      ; 08048EAE
pop   {r0}                      ; 08048EB0
bx    r0                        ; 08048EB2
.pool                           ; 08048EB4

Sub08048EBC:
; secondary sprite 1DF main
push  {r4,lr}                   ; 08048EBC
mov   r4,r0                     ; 08048EBE
bl    Sub08047AA8               ; 08048EC0
lsl   r0,r0,0x18                ; 08048EC4
cmp   r0,0x0                    ; 08048EC6
bne   @@Code08048EF8            ; 08048EC8
mov   r3,r4                     ; 08048ECA
add   r3,0x42                   ; 08048ECC
ldrh  r0,[r3]                   ; 08048ECE
cmp   r0,0x0                    ; 08048ED0
bne   @@Code08048EF8            ; 08048ED2
mov   r2,r4                     ; 08048ED4
add   r2,0x6A                   ; 08048ED6
ldrh  r0,[r2]                   ; 08048ED8
sub   r0,0x1                    ; 08048EDA
strh  r0,[r2]                   ; 08048EDC
lsl   r0,r0,0x10                ; 08048EDE
cmp   r0,0x0                    ; 08048EE0
blt   @@Code08048EF8            ; 08048EE2
ldr   r1,=Data0816FD23          ; 08048EE4
ldrh  r0,[r2]                   ; 08048EE6
add   r0,r0,r1                  ; 08048EE8
ldrb  r0,[r0]                   ; 08048EEA
strh  r0,[r4,0x38]              ; 08048EEC
ldr   r1,=Data0816FD29          ; 08048EEE
ldrh  r0,[r2]                   ; 08048EF0
add   r0,r0,r1                  ; 08048EF2
ldrb  r0,[r0]                   ; 08048EF4
strh  r0,[r3]                   ; 08048EF6
@@Code08048EF8:
pop   {r4}                      ; 08048EF8
pop   {r0}                      ; 08048EFA
bx    r0                        ; 08048EFC
.pool                           ; 08048EFE

Sub08048F08:
; secondary sprite 1E0 main
push  {r4,lr}                   ; 08048F08
mov   r4,r0                     ; 08048F0A
bl    Sub08047AA8               ; 08048F0C
lsl   r0,r0,0x18                ; 08048F10
cmp   r0,0x0                    ; 08048F12
bne   @@Code08048F44            ; 08048F14
mov   r3,r4                     ; 08048F16
add   r3,0x42                   ; 08048F18
ldrh  r0,[r3]                   ; 08048F1A
cmp   r0,0x0                    ; 08048F1C
bne   @@Code08048F44            ; 08048F1E
mov   r2,r4                     ; 08048F20
add   r2,0x6A                   ; 08048F22
ldrh  r0,[r2]                   ; 08048F24
sub   r0,0x1                    ; 08048F26
strh  r0,[r2]                   ; 08048F28
lsl   r0,r0,0x10                ; 08048F2A
cmp   r0,0x0                    ; 08048F2C
blt   @@Code08048F44            ; 08048F2E
ldr   r1,=Data0816FD2F          ; 08048F30
ldrh  r0,[r2]                   ; 08048F32
add   r0,r0,r1                  ; 08048F34
ldrb  r0,[r0]                   ; 08048F36
strh  r0,[r4,0x38]              ; 08048F38
ldr   r1,=Data0816FD32          ; 08048F3A
ldrh  r0,[r2]                   ; 08048F3C
add   r0,r0,r1                  ; 08048F3E
ldrb  r0,[r0]                   ; 08048F40
strh  r0,[r3]                   ; 08048F42
@@Code08048F44:
pop   {r4}                      ; 08048F44
pop   {r0}                      ; 08048F46
bx    r0                        ; 08048F48
.pool                           ; 08048F4A

Sub08048F54:
; secondary sprite 1E2 main
push  {r4,lr}                   ; 08048F54
mov   r4,r0                     ; 08048F56
bl    Sub08047AA8               ; 08048F58
lsl   r0,r0,0x18                ; 08048F5C
cmp   r0,0x0                    ; 08048F5E
bne   @@Code08048F90            ; 08048F60
mov   r3,r4                     ; 08048F62
add   r3,0x42                   ; 08048F64
ldrh  r0,[r3]                   ; 08048F66
cmp   r0,0x0                    ; 08048F68
bne   @@Code08048F90            ; 08048F6A
mov   r2,r4                     ; 08048F6C
add   r2,0x6A                   ; 08048F6E
ldrh  r0,[r2]                   ; 08048F70
sub   r0,0x1                    ; 08048F72
strh  r0,[r2]                   ; 08048F74
lsl   r0,r0,0x10                ; 08048F76
cmp   r0,0x0                    ; 08048F78
blt   @@Code08048F90            ; 08048F7A
ldr   r1,=Data0816FD35          ; 08048F7C
ldrh  r0,[r2]                   ; 08048F7E
add   r0,r0,r1                  ; 08048F80
ldrb  r0,[r0]                   ; 08048F82
strh  r0,[r4,0x38]              ; 08048F84
ldr   r1,=Data0816FD38          ; 08048F86
ldrh  r0,[r2]                   ; 08048F88
add   r0,r0,r1                  ; 08048F8A
ldrb  r0,[r0]                   ; 08048F8C
strh  r0,[r3]                   ; 08048F8E
@@Code08048F90:
pop   {r4}                      ; 08048F90
pop   {r0}                      ; 08048F92
bx    r0                        ; 08048F94
.pool                           ; 08048F96

Sub08048FA0:
; secondary sprite 1E3 main
push  {r4,lr}                   ; 08048FA0
mov   r4,r0                     ; 08048FA2
bl    Sub08047AA8               ; 08048FA4
lsl   r0,r0,0x18                ; 08048FA8
cmp   r0,0x0                    ; 08048FAA
bne   @@Code08048FDC            ; 08048FAC
mov   r3,r4                     ; 08048FAE
add   r3,0x42                   ; 08048FB0
ldrh  r0,[r3]                   ; 08048FB2
cmp   r0,0x0                    ; 08048FB4
bne   @@Code08048FDC            ; 08048FB6
mov   r2,r4                     ; 08048FB8
add   r2,0x6A                   ; 08048FBA
ldrh  r0,[r2]                   ; 08048FBC
sub   r0,0x1                    ; 08048FBE
strh  r0,[r2]                   ; 08048FC0
lsl   r0,r0,0x10                ; 08048FC2
cmp   r0,0x0                    ; 08048FC4
blt   @@Code08048FDC            ; 08048FC6
ldr   r1,=Data0816FD3B          ; 08048FC8
ldrh  r0,[r2]                   ; 08048FCA
add   r0,r0,r1                  ; 08048FCC
ldrb  r0,[r0]                   ; 08048FCE
strh  r0,[r4,0x38]              ; 08048FD0
ldr   r1,=Data0816FD3D          ; 08048FD2
ldrh  r0,[r2]                   ; 08048FD4
add   r0,r0,r1                  ; 08048FD6
ldrb  r0,[r0]                   ; 08048FD8
strh  r0,[r3]                   ; 08048FDA
@@Code08048FDC:
pop   {r4}                      ; 08048FDC
pop   {r0}                      ; 08048FDE
bx    r0                        ; 08048FE0
.pool                           ; 08048FE2

Sub08048FEC:
; secondary sprite 1E4 main
push  {r4,lr}                   ; 08048FEC
mov   r4,r0                     ; 08048FEE
bl    Sub08047CE0               ; 08048FF0
ldr   r0,[r4,0x8]               ; 08048FF4
lsl   r0,r0,0x8                 ; 08048FF6
lsr   r1,r0,0x10                ; 08048FF8
ldr   r0,[r4,0x18]              ; 08048FFA
cmp   r0,r1                     ; 08048FFC
bne   @@Code08049004            ; 08048FFE
neg   r0,r1                     ; 08049000
str   r0,[r4,0x18]              ; 08049002
@@Code08049004:
ldr   r0,[r4,0xC]               ; 08049004
lsl   r0,r0,0x8                 ; 08049006
lsr   r1,r0,0x10                ; 08049008
ldr   r0,[r4,0x1C]              ; 0804900A
cmp   r0,r1                     ; 0804900C
bne   @@Code08049014            ; 0804900E
neg   r0,r0                     ; 08049010
str   r0,[r4,0x1C]              ; 08049012
@@Code08049014:
mov   r3,r4                     ; 08049014
add   r3,0x42                   ; 08049016
ldrh  r0,[r3]                   ; 08049018
sub   r0,0x1                    ; 0804901A
strh  r0,[r3]                   ; 0804901C
lsl   r0,r0,0x10                ; 0804901E
cmp   r0,0x0                    ; 08049020
bne   @@Code08049066            ; 08049022
mov   r2,r4                     ; 08049024
add   r2,0x6A                   ; 08049026
ldrh  r0,[r2]                   ; 08049028
sub   r0,0x1                    ; 0804902A
strh  r0,[r2]                   ; 0804902C
lsl   r0,r0,0x10                ; 0804902E
cmp   r0,0x0                    ; 08049030
bge   @@Code0804903C            ; 08049032
mov   r0,r4                     ; 08049034
bl    Sub08047A60               ; 08049036
b     @@Code08049066            ; 0804903A
@@Code0804903C:
ldr   r1,=Data0816FD3F          ; 0804903C
ldrh  r0,[r2]                   ; 0804903E
add   r0,r0,r1                  ; 08049040
ldrb  r0,[r0]                   ; 08049042
strh  r0,[r4,0x38]              ; 08049044
ldr   r1,=Data0816FD42          ; 08049046
ldrh  r0,[r2]                   ; 08049048
add   r0,r0,r1                  ; 0804904A
ldrb  r0,[r0]                   ; 0804904C
strh  r0,[r3]                   ; 0804904E
ldrb  r0,[r2]                   ; 08049050
sub   r0,0x2                    ; 08049052
lsl   r0,r0,0x18                ; 08049054
lsr   r0,r0,0x18                ; 08049056
mov   r1,0x80                   ; 08049058
and   r0,r1                     ; 0804905A
cmp   r0,0x0                    ; 0804905C
bne   @@Code08049066            ; 0804905E
mov   r0,0x80                   ; 08049060
lsl   r0,r0,0x8                 ; 08049062
str   r0,[r4,0xC]               ; 08049064
@@Code08049066:
pop   {r4}                      ; 08049066
pop   {r0}                      ; 08049068
bx    r0                        ; 0804906A
.pool                           ; 0804906C

Sub08049074:
; secondary sprite 1E5,231 main
push  {r4,lr}                   ; 08049074
mov   r4,r0                     ; 08049076
bl    Sub08047CE0               ; 08049078
mov   r0,r4                     ; 0804907C
bl    Sub08047A6C               ; 0804907E
lsl   r0,r0,0x18                ; 08049082
cmp   r0,0x0                    ; 08049084
bne   @@Code080490B6            ; 08049086
mov   r3,r4                     ; 08049088
add   r3,0x42                   ; 0804908A
ldrh  r0,[r3]                   ; 0804908C
cmp   r0,0x0                    ; 0804908E
bne   @@Code080490B6            ; 08049090
mov   r2,r4                     ; 08049092
add   r2,0x6A                   ; 08049094
ldrh  r0,[r2]                   ; 08049096
sub   r0,0x1                    ; 08049098
strh  r0,[r2]                   ; 0804909A
lsl   r0,r0,0x10                ; 0804909C
cmp   r0,0x0                    ; 0804909E
blt   @@Code080490B6            ; 080490A0
ldr   r1,=Data0816FD45          ; 080490A2
ldrh  r0,[r2]                   ; 080490A4
add   r0,r0,r1                  ; 080490A6
ldrb  r0,[r0]                   ; 080490A8
strh  r0,[r4,0x38]              ; 080490AA
ldr   r1,=Data0816FD48          ; 080490AC
ldrh  r0,[r2]                   ; 080490AE
add   r0,r0,r1                  ; 080490B0
ldrb  r0,[r0]                   ; 080490B2
strh  r0,[r3]                   ; 080490B4
@@Code080490B6:
pop   {r4}                      ; 080490B6
pop   {r0}                      ; 080490B8
bx    r0                        ; 080490BA
.pool                           ; 080490BC

Sub080490C4:
; secondary sprite 1E6 main
push  {r4,lr}                   ; 080490C4
mov   r4,r0                     ; 080490C6
bl    Sub08047AA8               ; 080490C8
lsl   r0,r0,0x18                ; 080490CC
cmp   r0,0x0                    ; 080490CE
bne   @@Code08049100            ; 080490D0
mov   r3,r4                     ; 080490D2
add   r3,0x42                   ; 080490D4
ldrh  r0,[r3]                   ; 080490D6
cmp   r0,0x0                    ; 080490D8
bne   @@Code08049100            ; 080490DA
mov   r2,r4                     ; 080490DC
add   r2,0x6A                   ; 080490DE
ldrh  r0,[r2]                   ; 080490E0
sub   r0,0x1                    ; 080490E2
strh  r0,[r2]                   ; 080490E4
lsl   r0,r0,0x10                ; 080490E6
cmp   r0,0x0                    ; 080490E8
blt   @@Code08049100            ; 080490EA
ldr   r1,=Data0816FD4B          ; 080490EC
ldrh  r0,[r2]                   ; 080490EE
add   r0,r0,r1                  ; 080490F0
ldrb  r0,[r0]                   ; 080490F2
strh  r0,[r4,0x38]              ; 080490F4
ldr   r1,=Data0816FD56          ; 080490F6
ldrh  r0,[r2]                   ; 080490F8
add   r0,r0,r1                  ; 080490FA
ldrb  r0,[r0]                   ; 080490FC
strh  r0,[r3]                   ; 080490FE
@@Code08049100:
pop   {r4}                      ; 08049100
pop   {r0}                      ; 08049102
bx    r0                        ; 08049104
.pool                           ; 08049106

Sub08049110:
; secondary sprite 1E7 main
push  {r4,lr}                   ; 08049110
mov   r4,r0                     ; 08049112
bl    Sub08047AA8               ; 08049114
lsl   r0,r0,0x18                ; 08049118
cmp   r0,0x0                    ; 0804911A
bne   @@Code0804914C            ; 0804911C
mov   r3,r4                     ; 0804911E
add   r3,0x42                   ; 08049120
ldrh  r0,[r3]                   ; 08049122
cmp   r0,0x0                    ; 08049124
bne   @@Code0804914C            ; 08049126
mov   r2,r4                     ; 08049128
add   r2,0x6A                   ; 0804912A
ldrh  r0,[r2]                   ; 0804912C
sub   r0,0x1                    ; 0804912E
strh  r0,[r2]                   ; 08049130
lsl   r0,r0,0x10                ; 08049132
cmp   r0,0x0                    ; 08049134
blt   @@Code0804914C            ; 08049136
ldr   r1,=Data0816FD61          ; 08049138
ldrh  r0,[r2]                   ; 0804913A
add   r0,r0,r1                  ; 0804913C
ldrb  r0,[r0]                   ; 0804913E
strh  r0,[r4,0x38]              ; 08049140
ldr   r1,=Data0816FD65          ; 08049142
ldrh  r0,[r2]                   ; 08049144
add   r0,r0,r1                  ; 08049146
ldrb  r0,[r0]                   ; 08049148
strh  r0,[r3]                   ; 0804914A
@@Code0804914C:
pop   {r4}                      ; 0804914C
pop   {r0}                      ; 0804914E
bx    r0                        ; 08049150
.pool                           ; 08049152

Sub0804915C:
; secondary sprite 1F0 main
push  {r4,lr}                   ; 0804915C
mov   r4,r0                     ; 0804915E
bl    Sub08047A6C               ; 08049160
lsl   r0,r0,0x18                ; 08049164
cmp   r0,0x0                    ; 08049166
bne   @@Code08049190            ; 08049168
mov   r3,r4                     ; 0804916A
add   r3,0x42                   ; 0804916C
ldrh  r0,[r3]                   ; 0804916E
cmp   r0,0x0                    ; 08049170
bne   @@Code08049190            ; 08049172
mov   r2,r4                     ; 08049174
add   r2,0x6A                   ; 08049176
ldrh  r0,[r2]                   ; 08049178
sub   r1,r0,0x1                 ; 0804917A
strh  r1,[r2]                   ; 0804917C
lsl   r0,r1,0x10                ; 0804917E
cmp   r0,0x0                    ; 08049180
blt   @@Code08049190            ; 08049182
strh  r1,[r4,0x38]              ; 08049184
ldr   r0,=Data0816FD69          ; 08049186
ldrh  r1,[r2]                   ; 08049188
add   r1,r1,r0                  ; 0804918A
ldrb  r0,[r1]                   ; 0804918C
strh  r0,[r3]                   ; 0804918E
@@Code08049190:
pop   {r4}                      ; 08049190
pop   {r0}                      ; 08049192
bx    r0                        ; 08049194
.pool                           ; 08049196

Sub0804919C:
; secondary sprite 1F1 main
push  {r4,lr}                   ; 0804919C
mov   r4,r0                     ; 0804919E
ldr   r0,=0x03007240            ; 080491A0  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080491A2
ldr   r1,=0x29C8                ; 080491A4
add   r0,r0,r1                  ; 080491A6
ldrh  r0,[r0]                   ; 080491A8
cmp   r0,0x0                    ; 080491AA
beq   @@Code080491B4            ; 080491AC
mov   r0,r4                     ; 080491AE
bl    Sub08047CE0               ; 080491B0
@@Code080491B4:
mov   r0,r4                     ; 080491B4
bl    Sub0804915C               ; 080491B6
pop   {r4}                      ; 080491BA
pop   {r0}                      ; 080491BC
bx    r0                        ; 080491BE
.pool                           ; 080491C0

Sub080491C8:
; secondary sprite 1E8 main
push  {r4-r5,lr}                ; 080491C8
mov   r12,r0                    ; 080491CA
ldr   r2,=0x03007240            ; 080491CC  Normal gameplay IWRAM (0300220C)
add   r0,0x6E                   ; 080491CE
ldrh  r1,[r0]                   ; 080491D0
mov   r0,0xB0                   ; 080491D2
mul   r0,r1                     ; 080491D4
mov   r1,0x95                   ; 080491D6
lsl   r1,r1,0x2                 ; 080491D8
add   r0,r0,r1                  ; 080491DA
ldr   r1,[r2]                   ; 080491DC
add   r4,r1,r0                  ; 080491DE
ldrh  r3,[r4,0x36]              ; 080491E0
ldrh  r0,[r4,0x38]              ; 080491E2
sub   r0,0x1B                   ; 080491E4
lsl   r0,r0,0x19                ; 080491E6
lsr   r2,r0,0x18                ; 080491E8
cmp   r3,0x0                    ; 080491EA
beq   @@Code08049204            ; 080491EC
ldr   r1,=Data0816FD74          ; 080491EE
add   r0,r2,0x5                 ; 080491F0
lsl   r0,r0,0x1                 ; 080491F2
add   r0,r0,r1                  ; 080491F4
ldrh  r3,[r0]                   ; 080491F6
lsl   r1,r2,0x1                 ; 080491F8
b     @@Code0804920C            ; 080491FA
.pool                           ; 080491FC

@@Code08049204:
ldr   r0,=Data0816FD74          ; 08049204
lsl   r1,r2,0x1                 ; 08049206
add   r0,r1,r0                  ; 08049208
ldrh  r3,[r0]                   ; 0804920A
@@Code0804920C:
ldr   r0,=Data0816FD88          ; 0804920C
add   r0,r1,r0                  ; 0804920E
ldrh  r5,[r0]                   ; 08049210
ldr   r0,[r4]                   ; 08049212
mov   r1,r12                    ; 08049214
add   r1,0x62                   ; 08049216
add   r0,r3,r0                  ; 08049218
ldrh  r1,[r1]                   ; 0804921A
add   r0,r0,r1                  ; 0804921C
lsl   r0,r0,0x10                ; 0804921E
lsr   r0,r0,0x10                ; 08049220
mov   r1,r12                    ; 08049222
ldr   r2,[r1]                   ; 08049224
cmp   r0,r2                     ; 08049226
beq   @@Code0804924A            ; 08049228
sub   r1,r0,r2                  ; 0804922A
ldr   r0,=0x7FFF                ; 0804922C
cmp   r1,r0                     ; 0804922E
ble   @@Code08049244            ; 08049230
sub   r0,r2,0x1                 ; 08049232
b     @@Code08049246            ; 08049234
.pool                           ; 08049236

@@Code08049244:
add   r0,r2,0x1                 ; 08049244
@@Code08049246:
mov   r1,r12                    ; 08049246
str   r0,[r1]                   ; 08049248
@@Code0804924A:
ldr   r0,[r4,0x4]               ; 0804924A
mov   r2,r12                    ; 0804924C
add   r2,0x66                   ; 0804924E
add   r0,r5,r0                  ; 08049250
ldrh  r2,[r2]                   ; 08049252
add   r0,r0,r2                  ; 08049254
lsl   r0,r0,0x10                ; 08049256
lsr   r0,r0,0x10                ; 08049258
mov   r1,r12                    ; 0804925A
ldr   r2,[r1,0x4]               ; 0804925C
cmp   r0,r2                     ; 0804925E
beq   @@Code0804927A            ; 08049260
sub   r1,r0,r2                  ; 08049262
ldr   r0,=0x7FFF                ; 08049264
cmp   r1,r0                     ; 08049266
ble   @@Code08049274            ; 08049268
sub   r0,r2,0x1                 ; 0804926A
b     @@Code08049276            ; 0804926C
.pool                           ; 0804926E

@@Code08049274:
add   r0,r2,0x1                 ; 08049274
@@Code08049276:
mov   r1,r12                    ; 08049276
str   r0,[r1,0x4]               ; 08049278
@@Code0804927A:
mov   r3,r12                    ; 0804927A
add   r3,0x42                   ; 0804927C
ldrh  r0,[r3]                   ; 0804927E
sub   r0,0x1                    ; 08049280
strh  r0,[r3]                   ; 08049282
lsl   r0,r0,0x10                ; 08049284
cmp   r0,0x0                    ; 08049286
bne   @@Code080492C0            ; 08049288
mov   r2,r12                    ; 0804928A
add   r2,0x6A                   ; 0804928C
ldrh  r0,[r2]                   ; 0804928E
sub   r0,0x1                    ; 08049290
strh  r0,[r2]                   ; 08049292
mov   r4,0x80                   ; 08049294
and   r0,r4                     ; 08049296
cmp   r0,0x0                    ; 08049298
beq   @@Code080492A4            ; 0804929A
mov   r0,r12                    ; 0804929C
bl    Sub08047A60               ; 0804929E
b     @@Code080492C0            ; 080492A2
@@Code080492A4:
ldr   r1,=Data0816FD70          ; 080492A4
ldrh  r0,[r2]                   ; 080492A6
add   r0,r0,r1                  ; 080492A8
ldrb  r0,[r0]                   ; 080492AA
mov   r1,r12                    ; 080492AC
strh  r0,[r1,0x38]              ; 080492AE
mov   r0,0x4                    ; 080492B0
strh  r0,[r3]                   ; 080492B2
ldrb  r0,[r2]                   ; 080492B4
sub   r0,0x2                    ; 080492B6
and   r0,r4                     ; 080492B8
cmp   r0,0x0                    ; 080492BA
bne   @@Code080492C0            ; 080492BC
str   r4,[r1,0xC]               ; 080492BE
@@Code080492C0:
pop   {r4-r5}                   ; 080492C0
pop   {r0}                      ; 080492C2
bx    r0                        ; 080492C4
.pool                           ; 080492C6

Sub080492CC:
; secondary sprite 1E9 main
push  {r4,lr}                   ; 080492CC
mov   r4,r0                     ; 080492CE
add   r0,0x6E                   ; 080492D0
ldrh  r0,[r0]                   ; 080492D2
cmp   r0,0x0                    ; 080492D4
beq   @@Code080492E0            ; 080492D6
mov   r0,r4                     ; 080492D8
bl    Sub08047A6C               ; 080492DA
b     @@Code080492E6            ; 080492DE
@@Code080492E0:
mov   r0,r4                     ; 080492E0
bl    Sub08047AA8               ; 080492E2
@@Code080492E6:
lsl   r0,r0,0x18                ; 080492E6
cmp   r0,0x0                    ; 080492E8
bne   @@Code0804931A            ; 080492EA
mov   r3,r4                     ; 080492EC
add   r3,0x42                   ; 080492EE
ldrh  r0,[r3]                   ; 080492F0
cmp   r0,0x0                    ; 080492F2
bne   @@Code0804931A            ; 080492F4
mov   r2,r4                     ; 080492F6
add   r2,0x6A                   ; 080492F8
ldrh  r0,[r2]                   ; 080492FA
sub   r0,0x1                    ; 080492FC
strh  r0,[r2]                   ; 080492FE
mov   r1,0x80                   ; 08049300
and   r0,r1                     ; 08049302
cmp   r0,0x0                    ; 08049304
bne   @@Code0804931A            ; 08049306
ldr   r1,=Data0816FD92          ; 08049308
ldrh  r0,[r2]                   ; 0804930A
add   r0,r0,r1                  ; 0804930C
ldrb  r0,[r0]                   ; 0804930E
strh  r0,[r4,0x38]              ; 08049310
mov   r0,r4                     ; 08049312
add   r0,0x6C                   ; 08049314
ldrh  r0,[r0]                   ; 08049316
strh  r0,[r3]                   ; 08049318
@@Code0804931A:
pop   {r4}                      ; 0804931A
pop   {r0}                      ; 0804931C
bx    r0                        ; 0804931E
.pool                           ; 08049320

Sub08049324:
; secondary sprite 1EA main
push  {r4,lr}                   ; 08049324
mov   r4,r0                     ; 08049326
bl    Sub08047AA8               ; 08049328
lsl   r0,r0,0x18                ; 0804932C
cmp   r0,0x0                    ; 0804932E
bne   @@Code0804935C            ; 08049330
mov   r3,r4                     ; 08049332
add   r3,0x42                   ; 08049334
ldrh  r0,[r3]                   ; 08049336
cmp   r0,0x0                    ; 08049338
bne   @@Code0804935C            ; 0804933A
mov   r2,r4                     ; 0804933C
add   r2,0x6A                   ; 0804933E
ldrh  r0,[r2]                   ; 08049340
sub   r0,0x1                    ; 08049342
strh  r0,[r2]                   ; 08049344
mov   r1,0x80                   ; 08049346
and   r0,r1                     ; 08049348
cmp   r0,0x0                    ; 0804934A
bne   @@Code0804935C            ; 0804934C
ldr   r1,=Data0816FD97          ; 0804934E
ldrh  r0,[r2]                   ; 08049350
add   r0,r0,r1                  ; 08049352
ldrb  r0,[r0]                   ; 08049354
strh  r0,[r4,0x38]              ; 08049356
mov   r0,0x4                    ; 08049358
strh  r0,[r3]                   ; 0804935A
@@Code0804935C:
pop   {r4}                      ; 0804935C
pop   {r0}                      ; 0804935E
bx    r0                        ; 08049360
.pool                           ; 08049362

Sub08049368:
; secondary sprite 1EB main
push  {r4-r6,lr}                ; 08049368
mov   r4,r0                     ; 0804936A
bl    Sub08047A6C               ; 0804936C
lsl   r0,r0,0x18                ; 08049370
cmp   r0,0x0                    ; 08049372
bne   @@Code080493D8            ; 08049374
mov   r0,r4                     ; 08049376
add   r0,0x42                   ; 08049378
ldrh  r1,[r0]                   ; 0804937A
mov   r6,r0                     ; 0804937C
cmp   r1,0x0                    ; 0804937E
bne   @@Code080493D8            ; 08049380
mov   r1,r4                     ; 08049382
add   r1,0x6A                   ; 08049384
ldrh  r0,[r1]                   ; 08049386
sub   r0,0x1                    ; 08049388
strh  r0,[r1]                   ; 0804938A
mov   r2,0x80                   ; 0804938C
and   r0,r2                     ; 0804938E
mov   r5,r1                     ; 08049390
cmp   r0,0x0                    ; 08049392
bne   @@Code080493D8            ; 08049394
ldr   r0,=Data0816FD9B          ; 08049396
ldrh  r1,[r5]                   ; 08049398
add   r1,r1,r0                  ; 0804939A
ldrb  r1,[r1]                   ; 0804939C
mov   r0,r1                     ; 0804939E
and   r0,r2                     ; 080493A0
cmp   r0,0x0                    ; 080493A2
beq   @@Code080493C4            ; 080493A4
mov   r0,r4                     ; 080493A6
add   r0,0x6E                   ; 080493A8
ldrh  r3,[r0]                   ; 080493AA
ldrb  r1,[r0]                   ; 080493AC
mov   r0,r1                     ; 080493AE
and   r0,r2                     ; 080493B0
cmp   r0,0x0                    ; 080493B2
beq   @@Code080493C4            ; 080493B4
mov   r0,r4                     ; 080493B6
add   r0,0x94                   ; 080493B8
strb  r3,[r0]                   ; 080493BA
b     @@Code080493CE            ; 080493BC
.pool                           ; 080493BE

@@Code080493C4:
strh  r1,[r4,0x38]              ; 080493C4
mov   r1,r4                     ; 080493C6
add   r1,0x94                   ; 080493C8
mov   r0,0x2                    ; 080493CA
strb  r0,[r1]                   ; 080493CC
@@Code080493CE:
ldr   r0,=Data0816FDA8          ; 080493CE
ldrh  r1,[r5]                   ; 080493D0
add   r1,r1,r0                  ; 080493D2
ldrb  r0,[r1]                   ; 080493D4
strh  r0,[r6]                   ; 080493D6
@@Code080493D8:
pop   {r4-r6}                   ; 080493D8
pop   {r0}                      ; 080493DA
bx    r0                        ; 080493DC
.pool                           ; 080493DE

Sub080493E4:
; secondary sprite 208 main
push  {r4,lr}                   ; 080493E4
mov   r4,r0                     ; 080493E6
bl    Sub08047AA8               ; 080493E8
lsl   r0,r0,0x18                ; 080493EC
cmp   r0,0x0                    ; 080493EE
bne   @@Code0804941C            ; 080493F0
mov   r2,r4                     ; 080493F2
add   r2,0x42                   ; 080493F4
ldrh  r0,[r2]                   ; 080493F6
cmp   r0,0x0                    ; 080493F8
bne   @@Code0804941C            ; 080493FA
ldrh  r0,[r4,0x38]              ; 080493FC
sub   r0,0x1                    ; 080493FE
strh  r0,[r4,0x38]              ; 08049400
mov   r1,0x80                   ; 08049402
and   r0,r1                     ; 08049404
cmp   r0,0x0                    ; 08049406
beq   @@Code08049412            ; 08049408
mov   r0,r4                     ; 0804940A
bl    Sub08047A60               ; 0804940C
b     @@Code0804941C            ; 08049410
@@Code08049412:
ldr   r0,=Data0816FDB5          ; 08049412
ldrh  r1,[r4,0x38]              ; 08049414
add   r1,r1,r0                  ; 08049416
ldrb  r0,[r1]                   ; 08049418
strh  r0,[r2]                   ; 0804941A
@@Code0804941C:
pop   {r4}                      ; 0804941C
pop   {r0}                      ; 0804941E
bx    r0                        ; 08049420
.pool                           ; 08049422

Sub08049428:
; secondary sprite 206,20C,211,228,22F,232-233 main
push  {lr}                      ; 08049428
bl    Sub08047AD8               ; 0804942A
pop   {r0}                      ; 0804942E
bx    r0                        ; 08049430
.pool                           ; 08049432

Sub08049434:
; secondary sprite 1E1,1ED,1F3-1F6,201,217-218,22D main
push  {lr}                      ; 08049434
bl    Sub08047AD8               ; 08049436
pop   {r0}                      ; 0804943A
bx    r0                        ; 0804943C
.pool                           ; 0804943E

Sub08049440:
; secondary sprite 219 main
push  {r4,lr}                   ; 08049440
mov   r4,r0                     ; 08049442
bl    Sub08047AA8               ; 08049444
lsl   r0,r0,0x18                ; 08049448
cmp   r0,0x0                    ; 0804944A
bne   @@Code0804946E            ; 0804944C
mov   r1,r4                     ; 0804944E
add   r1,0x42                   ; 08049450
ldrh  r0,[r1]                   ; 08049452
cmp   r0,0x0                    ; 08049454
bne   @@Code0804946E            ; 08049456
add   r0,0x1                    ; 08049458
strh  r0,[r1]                   ; 0804945A
ldrh  r0,[r4,0x38]              ; 0804945C
sub   r0,0x1                    ; 0804945E
strh  r0,[r4,0x38]              ; 08049460
lsl   r0,r0,0x10                ; 08049462
cmp   r0,0x0                    ; 08049464
bge   @@Code0804946E            ; 08049466
mov   r0,r4                     ; 08049468
bl    Sub08047A60               ; 0804946A
@@Code0804946E:
pop   {r4}                      ; 0804946E
pop   {r0}                      ; 08049470
bx    r0                        ; 08049472

Sub08049474:
; secondary sprite 1F9,1FB,1FE,20B,20D-20E,22C main
push  {r4,lr}                   ; 08049474
mov   r4,r0                     ; 08049476
bl    Sub08047AA8               ; 08049478
lsl   r0,r0,0x18                ; 0804947C
cmp   r0,0x0                    ; 0804947E
bne   @@Code080494A2            ; 08049480
mov   r1,r4                     ; 08049482
add   r1,0x42                   ; 08049484
ldrh  r0,[r1]                   ; 08049486
cmp   r0,0x0                    ; 08049488
bne   @@Code080494A2            ; 0804948A
mov   r0,0x2                    ; 0804948C
strh  r0,[r1]                   ; 0804948E
ldrh  r0,[r4,0x38]              ; 08049490
sub   r0,0x1                    ; 08049492
strh  r0,[r4,0x38]              ; 08049494
lsl   r0,r0,0x10                ; 08049496
cmp   r0,0x0                    ; 08049498
bge   @@Code080494A2            ; 0804949A
mov   r0,r4                     ; 0804949C
bl    Sub08047A60               ; 0804949E
@@Code080494A2:
pop   {r4}                      ; 080494A2
pop   {r0}                      ; 080494A4
bx    r0                        ; 080494A6

Sub080494A8:
; secondary sprite 1EE,1F7,207 main
push  {r4,lr}                   ; 080494A8
mov   r4,r0                     ; 080494AA
bl    Sub08047AA8               ; 080494AC
lsl   r0,r0,0x18                ; 080494B0
cmp   r0,0x0                    ; 080494B2
bne   @@Code080494D6            ; 080494B4
mov   r1,r4                     ; 080494B6
add   r1,0x42                   ; 080494B8
ldrh  r0,[r1]                   ; 080494BA
cmp   r0,0x0                    ; 080494BC
bne   @@Code080494D6            ; 080494BE
mov   r0,0x3                    ; 080494C0
strh  r0,[r1]                   ; 080494C2
ldrh  r0,[r4,0x38]              ; 080494C4
sub   r0,0x1                    ; 080494C6
strh  r0,[r4,0x38]              ; 080494C8
lsl   r0,r0,0x10                ; 080494CA
cmp   r0,0x0                    ; 080494CC
bge   @@Code080494D6            ; 080494CE
mov   r0,r4                     ; 080494D0
bl    Sub08047A60               ; 080494D2
@@Code080494D6:
pop   {r4}                      ; 080494D6
pop   {r0}                      ; 080494D8
bx    r0                        ; 080494DA

Sub080494DC:
; secondary sprite 1EF,1F2,20F main
push  {r4,lr}                   ; 080494DC
mov   r4,r0                     ; 080494DE
bl    Sub08047AA8               ; 080494E0
lsl   r0,r0,0x18                ; 080494E4
cmp   r0,0x0                    ; 080494E6
bne   @@Code0804950A            ; 080494E8
mov   r1,r4                     ; 080494EA
add   r1,0x42                   ; 080494EC
ldrh  r0,[r1]                   ; 080494EE
cmp   r0,0x0                    ; 080494F0
bne   @@Code0804950A            ; 080494F2
mov   r0,0x4                    ; 080494F4
strh  r0,[r1]                   ; 080494F6
ldrh  r0,[r4,0x38]              ; 080494F8
sub   r0,0x1                    ; 080494FA
strh  r0,[r4,0x38]              ; 080494FC
lsl   r0,r0,0x10                ; 080494FE
cmp   r0,0x0                    ; 08049500
bge   @@Code0804950A            ; 08049502
mov   r0,r4                     ; 08049504
bl    Sub08047A60               ; 08049506
@@Code0804950A:
pop   {r4}                      ; 0804950A
pop   {r0}                      ; 0804950C
bx    r0                        ; 0804950E

Sub08049510:
; secondary sprite 204-205 main
push  {r4,lr}                   ; 08049510
mov   r4,r0                     ; 08049512
bl    Sub08047AA8               ; 08049514
lsl   r0,r0,0x18                ; 08049518
cmp   r0,0x0                    ; 0804951A
bne   @@Code0804953E            ; 0804951C
mov   r1,r4                     ; 0804951E
add   r1,0x42                   ; 08049520
ldrh  r0,[r1]                   ; 08049522
cmp   r0,0x0                    ; 08049524
bne   @@Code0804953E            ; 08049526
mov   r0,0x6                    ; 08049528
strh  r0,[r1]                   ; 0804952A
ldrh  r0,[r4,0x38]              ; 0804952C
sub   r0,0x1                    ; 0804952E
strh  r0,[r4,0x38]              ; 08049530
lsl   r0,r0,0x10                ; 08049532
cmp   r0,0x0                    ; 08049534
bge   @@Code0804953E            ; 08049536
mov   r0,r4                     ; 08049538
bl    Sub08047A60               ; 0804953A
@@Code0804953E:
pop   {r4}                      ; 0804953E
pop   {r0}                      ; 08049540
bx    r0                        ; 08049542

Sub08049544:
; secondary sprite 202 main
push  {r4,lr}                   ; 08049544
mov   r4,r0                     ; 08049546
bl    Sub08047AA8               ; 08049548
lsl   r0,r0,0x18                ; 0804954C
cmp   r0,0x0                    ; 0804954E
bne   @@Code08049572            ; 08049550
mov   r1,r4                     ; 08049552
add   r1,0x42                   ; 08049554
ldrh  r0,[r1]                   ; 08049556
cmp   r0,0x0                    ; 08049558
bne   @@Code08049572            ; 0804955A
mov   r0,0x8                    ; 0804955C
strh  r0,[r1]                   ; 0804955E
ldrh  r0,[r4,0x38]              ; 08049560
sub   r0,0x1                    ; 08049562
strh  r0,[r4,0x38]              ; 08049564
lsl   r0,r0,0x10                ; 08049566
cmp   r0,0x0                    ; 08049568
bge   @@Code08049572            ; 0804956A
mov   r0,r4                     ; 0804956C
bl    Sub08047A60               ; 0804956E
@@Code08049572:
pop   {r4}                      ; 08049572
pop   {r0}                      ; 08049574
bx    r0                        ; 08049576

Sub08049578:
; secondary sprite 1FA main
push  {r4,lr}                   ; 08049578
mov   r4,r0                     ; 0804957A
bl    Sub08047AA8               ; 0804957C
lsl   r0,r0,0x18                ; 08049580
cmp   r0,0x0                    ; 08049582
bne   @@Code080495B0            ; 08049584
mov   r3,r4                     ; 08049586
add   r3,0x42                   ; 08049588
ldrh  r0,[r3]                   ; 0804958A
cmp   r0,0x0                    ; 0804958C
bne   @@Code080495B0            ; 0804958E
mov   r2,r4                     ; 08049590
add   r2,0x6A                   ; 08049592
ldrh  r0,[r2]                   ; 08049594
sub   r0,0x1                    ; 08049596
strh  r0,[r2]                   ; 08049598
mov   r1,0x80                   ; 0804959A
and   r0,r1                     ; 0804959C
cmp   r0,0x0                    ; 0804959E
bne   @@Code080495B0            ; 080495A0
ldr   r1,=Data0816FDBB          ; 080495A2
ldrh  r0,[r2]                   ; 080495A4
add   r0,r0,r1                  ; 080495A6
ldrb  r0,[r0]                   ; 080495A8
strh  r0,[r4,0x38]              ; 080495AA
mov   r0,0x4                    ; 080495AC
strh  r0,[r3]                   ; 080495AE
@@Code080495B0:
pop   {r4}                      ; 080495B0
pop   {r0}                      ; 080495B2
bx    r0                        ; 080495B4
.pool                           ; 080495B6

Sub080495BC:
; secondary sprite 1FF-200,203 main
push  {r4,lr}                   ; 080495BC
mov   r4,r0                     ; 080495BE
bl    Sub08047AA8               ; 080495C0
lsl   r0,r0,0x18                ; 080495C4
cmp   r0,0x0                    ; 080495C6
bne   @@Code080495F4            ; 080495C8
mov   r2,r4                     ; 080495CA
add   r2,0x42                   ; 080495CC
ldrh  r0,[r2]                   ; 080495CE
cmp   r0,0x0                    ; 080495D0
bne   @@Code080495F4            ; 080495D2
mov   r1,r4                     ; 080495D4
add   r1,0x6E                   ; 080495D6
ldrh  r0,[r1]                   ; 080495D8
sub   r0,0x1                    ; 080495DA
strh  r0,[r1]                   ; 080495DC
mov   r1,0x80                   ; 080495DE
and   r0,r1                     ; 080495E0
cmp   r0,0x0                    ; 080495E2
bne   @@Code080495F4            ; 080495E4
ldrh  r0,[r4,0x38]              ; 080495E6
add   r0,0x1                    ; 080495E8
strh  r0,[r4,0x38]              ; 080495EA
mov   r0,r4                     ; 080495EC
add   r0,0x6A                   ; 080495EE
ldrh  r0,[r0]                   ; 080495F0
strh  r0,[r2]                   ; 080495F2
@@Code080495F4:
pop   {r4}                      ; 080495F4
pop   {r0}                      ; 080495F6
bx    r0                        ; 080495F8
.pool                           ; 080495FA

Sub080495FC:
; secondary sprite 234 main
push  {r4,lr}                   ; 080495FC
mov   r4,r0                     ; 080495FE
bl    Sub0804792C               ; 08049600
mov   r0,r4                     ; 08049604
bl    Sub08047AA8               ; 08049606
lsl   r0,r0,0x18                ; 0804960A
cmp   r0,0x0                    ; 0804960C
bne   @@Code0804966C            ; 0804960E
mov   r3,r4                     ; 08049610
add   r3,0x44                   ; 08049612
ldrh  r1,[r3]                   ; 08049614
cmp   r1,0x0                    ; 08049616
bne   @@Code08049666            ; 08049618
mov   r2,r4                     ; 0804961A
add   r2,0x6A                   ; 0804961C
ldrh  r0,[r2]                   ; 0804961E
add   r0,0x1                    ; 08049620
strh  r0,[r2]                   ; 08049622
lsl   r0,r0,0x10                ; 08049624
lsr   r0,r0,0x10                ; 08049626
cmp   r0,0x5                    ; 08049628
beq   @@Code08049666            ; 0804962A
ldr   r1,=Data0816FDC2          ; 0804962C
ldrh  r0,[r2]                   ; 0804962E
lsl   r0,r0,0x1                 ; 08049630
add   r0,r0,r1                  ; 08049632
ldrh  r0,[r0]                   ; 08049634
mov   r1,r4                     ; 08049636
add   r1,0x62                   ; 08049638
strh  r0,[r1]                   ; 0804963A
ldr   r1,=Data0816FDCC          ; 0804963C
ldrh  r0,[r2]                   ; 0804963E
lsl   r0,r0,0x1                 ; 08049640
add   r0,r0,r1                  ; 08049642
ldrh  r0,[r0]                   ; 08049644
mov   r1,r4                     ; 08049646
add   r1,0x66                   ; 08049648
strh  r0,[r1]                   ; 0804964A
ldr   r1,=Data0816FDD6          ; 0804964C
ldrh  r0,[r2]                   ; 0804964E
lsl   r0,r0,0x1                 ; 08049650
add   r0,r0,r1                  ; 08049652
ldrh  r0,[r0]                   ; 08049654
strh  r0,[r3]                   ; 08049656
ldr   r1,=Data0816FDE0          ; 08049658
ldrh  r0,[r2]                   ; 0804965A
lsl   r0,r0,0x1                 ; 0804965C
add   r0,r0,r1                  ; 0804965E
ldrh  r0,[r0]                   ; 08049660
strh  r0,[r4,0x38]              ; 08049662
mov   r1,0x3                    ; 08049664
@@Code08049666:
mov   r0,r4                     ; 08049666
add   r0,0x42                   ; 08049668
strh  r1,[r0]                   ; 0804966A
@@Code0804966C:
pop   {r4}                      ; 0804966C
pop   {r0}                      ; 0804966E
bx    r0                        ; 08049670
.pool                           ; 08049672

Sub08049684:
push  {r4,lr}                   ; 08049684
mov   r3,r0                     ; 08049686
mov   r0,0x42                   ; 08049688
add   r0,r0,r3                  ; 0804968A
mov   r12,r0                    ; 0804968C
mov   r2,0x0                    ; 0804968E
mov   r1,0x0                    ; 08049690
mov   r0,0x2                    ; 08049692
mov   r4,r12                    ; 08049694
strh  r0,[r4]                   ; 08049696
mov   r0,0x6A                   ; 08049698
add   r0,r0,r3                  ; 0804969A
mov   r12,r0                    ; 0804969C
mov   r0,0x3                    ; 0804969E
mov   r4,r12                    ; 080496A0
strh  r0,[r4]                   ; 080496A2
mov   r0,r3                     ; 080496A4
add   r0,0x94                   ; 080496A6
strb  r2,[r0]                   ; 080496A8
str   r1,[r3,0x14]              ; 080496AA
sub   r0,0x26                   ; 080496AC
strh  r1,[r0]                   ; 080496AE
mov   r1,r3                     ; 080496B0
add   r1,0x44                   ; 080496B2
mov   r0,0x40                   ; 080496B4
strh  r0,[r1]                   ; 080496B6
ldr   r1,=0x03006258            ; 080496B8
mov   r0,0x6E                   ; 080496BA
bl    PlayYISound               ; 080496BC
pop   {r4}                      ; 080496C0
pop   {r0}                      ; 080496C2
bx    r0                        ; 080496C4
.pool                           ; 080496C6

Sub080496CC:
push  {r4,lr}                   ; 080496CC
mov   r4,r0                     ; 080496CE
ldr   r0,=0x0237                ; 080496D0
bl    SpawnSecondarySprite      ; 080496D2
lsl   r0,r0,0x18                ; 080496D6
lsr   r0,r0,0x18                ; 080496D8
ldr   r2,=0x03007240            ; 080496DA  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 080496DC
mul   r1,r0                     ; 080496DE
ldr   r0,=0x1AF4                ; 080496E0
add   r1,r1,r0                  ; 080496E2
ldr   r0,[r2]                   ; 080496E4
add   r0,r0,r1                  ; 080496E6
ldr   r1,[r4]                   ; 080496E8
str   r1,[r0]                   ; 080496EA
ldr   r1,[r4,0x4]               ; 080496EC
str   r1,[r0,0x4]               ; 080496EE
bl    Sub08049684               ; 080496F0
pop   {r4}                      ; 080496F4
pop   {r0}                      ; 080496F6
bx    r0                        ; 080496F8
.pool                           ; 080496FA

Sub08049708:
; secondary sprite 235 main
push  {r4-r6,lr}                ; 08049708
mov   r4,r0                     ; 0804970A
bl    Sub08047AA8               ; 0804970C
lsl   r0,r0,0x18                ; 08049710
cmp   r0,0x0                    ; 08049712
bne   @@Code08049766            ; 08049714
mov   r0,r4                     ; 08049716
add   r0,0x42                   ; 08049718
mov   r2,0x1                    ; 0804971A
strh  r2,[r0]                   ; 0804971C
mov   r1,r4                     ; 0804971E
add   r1,0x6A                   ; 08049720
ldrh  r0,[r1]                   ; 08049722
sub   r0,0x1                    ; 08049724
strh  r0,[r1]                   ; 08049726
lsl   r0,r0,0x10                ; 08049728
mov   r5,r4                     ; 0804972A
add   r5,0x6E                   ; 0804972C
cmp   r0,0x0                    ; 0804972E
bge   @@Code0804975A            ; 08049730
strh  r2,[r1]                   ; 08049732
ldrh  r0,[r5]                   ; 08049734
add   r0,0x1                    ; 08049736
strh  r0,[r5]                   ; 08049738
lsl   r0,r0,0x10                ; 0804973A
lsr   r0,r0,0x10                ; 0804973C
cmp   r0,0xE                    ; 0804973E
bls   @@Code0804975A            ; 08049740
mov   r0,0xE                    ; 08049742
strh  r0,[r5]                   ; 08049744
mov   r6,r4                     ; 08049746
add   r6,0x94                   ; 08049748
ldrb  r0,[r6]                   ; 0804974A
cmp   r0,0xFF                   ; 0804974C
beq   @@Code0804975A            ; 0804974E
mov   r0,r4                     ; 08049750
bl    Sub080496CC               ; 08049752
mov   r0,0xFF                   ; 08049756
strb  r0,[r6]                   ; 08049758
@@Code0804975A:
ldr   r0,=Data0816FDEA          ; 0804975A
ldrh  r1,[r5]                   ; 0804975C
lsl   r1,r1,0x1                 ; 0804975E
add   r1,r1,r0                  ; 08049760
ldrh  r0,[r1]                   ; 08049762
strh  r0,[r4,0x38]              ; 08049764
@@Code08049766:
pop   {r4-r6}                   ; 08049766
pop   {r0}                      ; 08049768
bx    r0                        ; 0804976A
.pool                           ; 0804976C

Sub08049770:
push  {r4,lr}                   ; 08049770
mov   r3,r0                     ; 08049772
mov   r0,0x42                   ; 08049774
add   r0,r0,r3                  ; 08049776
mov   r12,r0                    ; 08049778
mov   r2,0x0                    ; 0804977A
mov   r1,0x0                    ; 0804977C
mov   r0,0x3                    ; 0804977E
mov   r4,r12                    ; 08049780
strh  r0,[r4]                   ; 08049782
mov   r0,r3                     ; 08049784
add   r0,0x94                   ; 08049786
strb  r2,[r0]                   ; 08049788
str   r1,[r3,0x14]              ; 0804978A
sub   r0,0x26                   ; 0804978C
strh  r1,[r0]                   ; 0804978E
mov   r1,r3                     ; 08049790
add   r1,0x44                   ; 08049792
mov   r0,0x40                   ; 08049794
strh  r0,[r1]                   ; 08049796
ldr   r1,=0x03002200            ; 08049798
ldrh  r0,[r3,0x20]              ; 0804979A
ldr   r2,=0x4058                ; 0804979C
add   r1,r1,r2                  ; 0804979E
strh  r0,[r1]                   ; 080497A0
mov   r0,0xAA                   ; 080497A2
bl    PlayYISound               ; 080497A4
pop   {r4}                      ; 080497A8
pop   {r0}                      ; 080497AA
bx    r0                        ; 080497AC
.pool                           ; 080497AE

Sub080497B8:
; secondary sprite 236 main
push  {r4-r6,lr}                ; 080497B8
mov   r4,r0                     ; 080497BA
bl    Sub08047AA8               ; 080497BC
lsl   r0,r0,0x18                ; 080497C0
lsr   r5,r0,0x18                ; 080497C2
cmp   r5,0x0                    ; 080497C4
bne   @@Code08049866            ; 080497C6
mov   r0,0x42                   ; 080497C8
add   r0,r0,r4                  ; 080497CA
mov   r12,r0                    ; 080497CC
mov   r0,0x2                    ; 080497CE
mov   r1,r12                    ; 080497D0
strh  r0,[r1]                   ; 080497D2
mov   r2,r4                     ; 080497D4
add   r2,0x6A                   ; 080497D6
ldrh  r0,[r2]                   ; 080497D8
sub   r0,0x1                    ; 080497DA
strh  r0,[r2]                   ; 080497DC
lsl   r0,r0,0x10                ; 080497DE
mov   r3,r4                     ; 080497E0
add   r3,0x6E                   ; 080497E2
cmp   r0,0x0                    ; 080497E4
bge   @@Code080497F8            ; 080497E6
ldr   r1,=Data0816FE10          ; 080497E8
ldrh  r0,[r3]                   ; 080497EA
add   r0,r0,r1                  ; 080497EC
ldrb  r0,[r0]                   ; 080497EE
strh  r0,[r2]                   ; 080497F0
ldrh  r0,[r3]                   ; 080497F2
add   r0,0x1                    ; 080497F4
strh  r0,[r3]                   ; 080497F6
@@Code080497F8:
ldr   r2,=Data0816FE08          ; 080497F8
ldrh  r1,[r3]                   ; 080497FA
mov   r6,0x3                    ; 080497FC
mov   r0,r6                     ; 080497FE
and   r0,r1                     ; 08049800
lsl   r0,r0,0x1                 ; 08049802
add   r0,r0,r2                  ; 08049804
ldrh  r0,[r0]                   ; 08049806
strh  r0,[r4,0x38]              ; 08049808
ldr   r1,[r4,0xC]               ; 0804980A
cmp   r1,0x0                    ; 0804980C
blt   @@Code08049866            ; 0804980E
ldr   r0,=0x027F                ; 08049810
cmp   r1,r0                     ; 08049812
ble   @@Code08049828            ; 08049814
mov   r2,r12                    ; 08049816
strh  r5,[r2]                   ; 08049818
b     @@Code08049866            ; 0804981A
.pool                           ; 0804981C

@@Code08049828:
mov   r1,r4                     ; 08049828
add   r1,0x72                   ; 0804982A
ldrh  r0,[r1]                   ; 0804982C
cmp   r0,0x0                    ; 0804982E
bne   @@Code08049866            ; 08049830
add   r0,0x1                    ; 08049832
strh  r0,[r1]                   ; 08049834
mov   r0,0x8E                   ; 08049836
lsl   r0,r0,0x2                 ; 08049838
bl    SpawnSecondarySprite      ; 0804983A
lsl   r0,r0,0x18                ; 0804983E
lsr   r0,r0,0x18                ; 08049840
ldr   r2,=0x03007240            ; 08049842  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 08049844
mul   r1,r0                     ; 08049846
ldr   r0,=0x1AF4                ; 08049848
add   r1,r1,r0                  ; 0804984A
ldr   r0,[r2]                   ; 0804984C
add   r0,r0,r1                  ; 0804984E
ldr   r1,[r4]                   ; 08049850
ldr   r2,=0xFFFFD800            ; 08049852
add   r1,r1,r2                  ; 08049854
str   r1,[r0]                   ; 08049856
ldr   r1,[r4,0x4]               ; 08049858
str   r1,[r0,0x4]               ; 0804985A
mov   r1,r0                     ; 0804985C
add   r1,0x42                   ; 0804985E
strh  r6,[r1]                   ; 08049860
bl    Sub08049770               ; 08049862
@@Code08049866:
pop   {r4-r6}                   ; 08049866
pop   {r0}                      ; 08049868
bx    r0                        ; 0804986A
.pool                           ; 0804986C

Sub08049878:
; secondary sprite 237 main
push  {r4,lr}                   ; 08049878
mov   r4,r0                     ; 0804987A
bl    Sub08047AA8               ; 0804987C
lsl   r0,r0,0x18                ; 08049880
cmp   r0,0x0                    ; 08049882
bne   @@Code080498D6            ; 08049884
mov   r1,r4                     ; 08049886
add   r1,0x42                   ; 08049888
mov   r0,0x2                    ; 0804988A
strh  r0,[r1]                   ; 0804988C
mov   r3,r4                     ; 0804988E
add   r3,0x6A                   ; 08049890
ldrh  r0,[r3]                   ; 08049892
sub   r0,0x1                    ; 08049894
strh  r0,[r3]                   ; 08049896
lsl   r0,r0,0x10                ; 08049898
mov   r2,r4                     ; 0804989A
add   r2,0x6E                   ; 0804989C
cmp   r0,0x0                    ; 0804989E
bge   @@Code080498BC            ; 080498A0
ldrh  r1,[r2]                   ; 080498A2
mov   r0,0x1                    ; 080498A4
and   r0,r1                     ; 080498A6
strh  r0,[r3]                   ; 080498A8
ldrh  r0,[r2]                   ; 080498AA
add   r0,0x1                    ; 080498AC
strh  r0,[r2]                   ; 080498AE
lsl   r0,r0,0x10                ; 080498B0
lsr   r0,r0,0x10                ; 080498B2
cmp   r0,0xB                    ; 080498B4
bls   @@Code080498BC            ; 080498B6
mov   r0,0x4                    ; 080498B8
strh  r0,[r2]                   ; 080498BA
@@Code080498BC:
ldrh  r0,[r2]                   ; 080498BC
strh  r0,[r4,0x38]              ; 080498BE
mov   r0,r4                     ; 080498C0
add   r0,0x44                   ; 080498C2
ldrh  r0,[r0]                   ; 080498C4
cmp   r0,0x0                    ; 080498C6
bne   @@Code080498D6            ; 080498C8
ldr   r0,=0x03007240            ; 080498CA  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080498CC
ldr   r1,=0x2708                ; 080498CE
add   r0,r0,r1                  ; 080498D0
bl    Sub080EA534               ; 080498D2
@@Code080498D6:
pop   {r4}                      ; 080498D6
pop   {r0}                      ; 080498D8
bx    r0                        ; 080498DA
.pool                           ; 080498DC

Sub080498E4:
; secondary sprite 238 main
push  {r4-r5,lr}                ; 080498E4
mov   r4,r0                     ; 080498E6
bl    Sub08047AA8               ; 080498E8
lsl   r0,r0,0x18                ; 080498EC
lsr   r5,r0,0x18                ; 080498EE
cmp   r5,0x0                    ; 080498F0
bne   @@Code0804992A            ; 080498F2
mov   r3,r4                     ; 080498F4
add   r3,0x42                   ; 080498F6
mov   r0,0x2                    ; 080498F8
strh  r0,[r3]                   ; 080498FA
mov   r1,r4                     ; 080498FC
add   r1,0x6A                   ; 080498FE
ldrh  r0,[r1]                   ; 08049900
sub   r0,0x1                    ; 08049902
strh  r0,[r1]                   ; 08049904
lsl   r0,r0,0x10                ; 08049906
mov   r2,r4                     ; 08049908
add   r2,0x6E                   ; 0804990A
cmp   r0,0x0                    ; 0804990C
bge   @@Code08049926            ; 0804990E
mov   r0,0x3                    ; 08049910
strh  r0,[r1]                   ; 08049912
ldrh  r0,[r2]                   ; 08049914
add   r0,0x1                    ; 08049916
strh  r0,[r2]                   ; 08049918
lsl   r0,r0,0x10                ; 0804991A
lsr   r0,r0,0x10                ; 0804991C
cmp   r0,0x7                    ; 0804991E
bls   @@Code08049926            ; 08049920
strh  r5,[r3]                   ; 08049922
b     @@Code0804992A            ; 08049924
@@Code08049926:
ldrh  r0,[r2]                   ; 08049926
strh  r0,[r4,0x38]              ; 08049928
@@Code0804992A:
pop   {r4-r5}                   ; 0804992A
pop   {r0}                      ; 0804992C
bx    r0                        ; 0804992E

Sub08049930:
; secondary sprite 21F main
push  {r4,lr}                   ; 08049930
mov   r4,r0                     ; 08049932
bl    Sub08047A6C               ; 08049934
lsl   r0,r0,0x18                ; 08049938
cmp   r0,0x0                    ; 0804993A
bne   @@Code08049992            ; 0804993C
mov   r0,r4                     ; 0804993E
add   r0,0x44                   ; 08049940
ldrh  r1,[r0]                   ; 08049942
mov   r2,r0                     ; 08049944
cmp   r1,0x0                    ; 08049946
bne   @@Code08049952            ; 08049948
mov   r0,r4                     ; 0804994A
bl    Sub08047A60               ; 0804994C
b     @@Code08049992            ; 08049950
@@Code08049952:
mov   r0,r1                     ; 08049952
sub   r0,0x40                   ; 08049954
lsl   r0,r0,0x10                ; 08049956
lsr   r1,r0,0x10                ; 08049958
cmp   r0,0x0                    ; 0804995A
bge   @@Code08049974            ; 0804995C
mov   r0,0x1                    ; 0804995E
and   r1,r0                     ; 08049960
cmp   r1,0x0                    ; 08049962
beq   @@Code0804996C            ; 08049964
mov   r1,r4                     ; 08049966
add   r1,0x94                   ; 08049968
b     @@Code08049972            ; 0804996A
@@Code0804996C:
mov   r1,r4                     ; 0804996C
add   r1,0x94                   ; 0804996E
mov   r0,0xFF                   ; 08049970
@@Code08049972:
strb  r0,[r1]                   ; 08049972
@@Code08049974:
ldrh  r1,[r2]                   ; 08049974
mov   r0,0x3F                   ; 08049976
and   r0,r1                     ; 08049978
cmp   r0,0x0                    ; 0804997A
bne   @@Code08049992            ; 0804997C
ldrh  r0,[r4,0x36]              ; 0804997E
mov   r1,0x2                    ; 08049980
eor   r0,r1                     ; 08049982
strh  r0,[r4,0x36]              ; 08049984
ldr   r1,=Data0816FE1C          ; 08049986
lsr   r0,r0,0x1                 ; 08049988
lsl   r0,r0,0x2                 ; 0804998A
add   r0,r0,r1                  ; 0804998C
ldr   r0,[r0]                   ; 0804998E
str   r0,[r4,0x8]               ; 08049990
@@Code08049992:
pop   {r4}                      ; 08049992
pop   {r0}                      ; 08049994
bx    r0                        ; 08049996
.pool                           ; 08049998

Sub0804999C:
; secondary sprite 20A main
push  {r4-r5,lr}                ; 0804999C
mov   r4,r0                     ; 0804999E
bl    Sub08047AA8               ; 080499A0
lsl   r0,r0,0x18                ; 080499A4
cmp   r0,0x0                    ; 080499A6
bne   @@Code080499F2            ; 080499A8
mov   r3,r4                     ; 080499AA
add   r3,0x94                   ; 080499AC
ldrb  r0,[r3]                   ; 080499AE
cmp   r0,0xFF                   ; 080499B0
bne   @@Code080499BA            ; 080499B2
mov   r0,0x1                    ; 080499B4
strb  r0,[r3]                   ; 080499B6
b     @@Code080499F2            ; 080499B8
@@Code080499BA:
mov   r2,r4                     ; 080499BA
add   r2,0x72                   ; 080499BC
add   r4,0x6E                   ; 080499BE
ldrh  r0,[r4]                   ; 080499C0
ldrh  r5,[r2]                   ; 080499C2
add   r1,r0,r5                  ; 080499C4
strh  r1,[r2]                   ; 080499C6
mov   r0,0xFF                   ; 080499C8
lsl   r0,r0,0x8                 ; 080499CA
and   r0,r1                     ; 080499CC
cmp   r0,0x0                    ; 080499CE
beq   @@Code080499DA            ; 080499D0
mov   r0,0xFF                   ; 080499D2
and   r1,r0                     ; 080499D4
strh  r1,[r2]                   ; 080499D6
strb  r0,[r3]                   ; 080499D8
@@Code080499DA:
ldrh  r0,[r4]                   ; 080499DA
add   r0,0x4                    ; 080499DC
lsl   r0,r0,0x10                ; 080499DE
lsr   r1,r0,0x10                ; 080499E0
mov   r2,0xFF                   ; 080499E2
lsl   r2,r2,0x18                ; 080499E4
add   r0,r0,r2                  ; 080499E6
cmp   r0,0x0                    ; 080499E8
blt   @@Code080499F0            ; 080499EA
mov   r1,0x80                   ; 080499EC
lsl   r1,r1,0x1                 ; 080499EE
@@Code080499F0:
strh  r1,[r4]                   ; 080499F0
@@Code080499F2:
pop   {r4-r5}                   ; 080499F2
pop   {r0}                      ; 080499F4
bx    r0                        ; 080499F6

Sub080499F8:
; secondary sprite 210,225 main
push  {r4,lr}                   ; 080499F8
mov   r4,r0                     ; 080499FA
bl    Sub08047AA8               ; 080499FC
lsl   r0,r0,0x18                ; 08049A00
cmp   r0,0x0                    ; 08049A02
bne   @@Code08049A2E            ; 08049A04
mov   r2,r4                     ; 08049A06
add   r2,0x42                   ; 08049A08
ldrh  r0,[r2]                   ; 08049A0A
cmp   r0,0x0                    ; 08049A0C
bne   @@Code08049A2E            ; 08049A0E
ldrh  r0,[r4,0x38]              ; 08049A10
sub   r0,0x1                    ; 08049A12
strh  r0,[r4,0x38]              ; 08049A14
lsl   r0,r0,0x10                ; 08049A16
cmp   r0,0x0                    ; 08049A18
bge   @@Code08049A24            ; 08049A1A
mov   r0,r4                     ; 08049A1C
bl    Sub08047A60               ; 08049A1E
b     @@Code08049A2E            ; 08049A22
@@Code08049A24:
ldr   r0,=Data0816FE24          ; 08049A24
ldrh  r1,[r4,0x38]              ; 08049A26
add   r1,r1,r0                  ; 08049A28
ldrb  r0,[r1]                   ; 08049A2A
strh  r0,[r2]                   ; 08049A2C
@@Code08049A2E:
pop   {r4}                      ; 08049A2E
pop   {r0}                      ; 08049A30
bx    r0                        ; 08049A32
.pool                           ; 08049A34

Sub08049A38:
; secondary sprite 212 main
push  {r4,lr}                   ; 08049A38
mov   r4,r0                     ; 08049A3A
bl    Sub08047AA8               ; 08049A3C
lsl   r0,r0,0x18                ; 08049A40
cmp   r0,0x0                    ; 08049A42
bne   @@Code08049A88            ; 08049A44
mov   r2,r4                     ; 08049A46
add   r2,0x42                   ; 08049A48
ldrh  r1,[r2]                   ; 08049A4A
cmp   r1,0x0                    ; 08049A4C
beq   @@Code08049A62            ; 08049A4E
ldrh  r0,[r4,0x38]              ; 08049A50
cmp   r0,0x16                   ; 08049A52
bne   @@Code08049A80            ; 08049A54
cmp   r1,0x2                    ; 08049A56
bhi   @@Code08049A80            ; 08049A58
mov   r1,r4                     ; 08049A5A
add   r1,0x94                   ; 08049A5C
mov   r0,0xFF                   ; 08049A5E
b     @@Code08049A86            ; 08049A60
@@Code08049A62:
ldrh  r0,[r4,0x38]              ; 08049A62
sub   r0,0x1                    ; 08049A64
strh  r0,[r4,0x38]              ; 08049A66
lsl   r0,r0,0x10                ; 08049A68
cmp   r0,0x0                    ; 08049A6A
bge   @@Code08049A76            ; 08049A6C
mov   r0,r4                     ; 08049A6E
bl    Sub08047A60               ; 08049A70
b     @@Code08049A88            ; 08049A74
@@Code08049A76:
ldr   r1,=Data0816FE26          ; 08049A76
ldrh  r0,[r4,0x38]              ; 08049A78
add   r0,r0,r1                  ; 08049A7A
ldrb  r0,[r0]                   ; 08049A7C
strh  r0,[r2]                   ; 08049A7E
@@Code08049A80:
mov   r1,r4                     ; 08049A80
add   r1,0x94                   ; 08049A82
mov   r0,0x5                    ; 08049A84
@@Code08049A86:
strb  r0,[r1]                   ; 08049A86
@@Code08049A88:
pop   {r4}                      ; 08049A88
pop   {r0}                      ; 08049A8A
bx    r0                        ; 08049A8C
.pool                           ; 08049A8E

Sub08049A94:
; secondary sprite 213 main
push  {r4,lr}                   ; 08049A94
mov   r4,r0                     ; 08049A96
bl    Sub08047AA8               ; 08049A98
lsl   r0,r0,0x18                ; 08049A9C
cmp   r0,0x0                    ; 08049A9E
bne   @@Code08049AD2            ; 08049AA0
mov   r0,r4                     ; 08049AA2
add   r0,0x42                   ; 08049AA4
ldrh  r0,[r0]                   ; 08049AA6
cmp   r0,0x0                    ; 08049AA8
bne   @@Code08049AB4            ; 08049AAA
mov   r0,r4                     ; 08049AAC
bl    Sub08047A60               ; 08049AAE
b     @@Code08049AD2            ; 08049AB2
@@Code08049AB4:
mov   r1,r4                     ; 08049AB4
add   r1,0x44                   ; 08049AB6
ldrh  r0,[r1]                   ; 08049AB8
cmp   r0,0x0                    ; 08049ABA
bne   @@Code08049AD2            ; 08049ABC
mov   r0,0x4                    ; 08049ABE
strh  r0,[r1]                   ; 08049AC0
ldrh  r0,[r4,0x38]              ; 08049AC2
sub   r0,0x1                    ; 08049AC4
strh  r0,[r4,0x38]              ; 08049AC6
lsl   r0,r0,0x10                ; 08049AC8
cmp   r0,0x0                    ; 08049ACA
bge   @@Code08049AD2            ; 08049ACC
mov   r0,0x5                    ; 08049ACE
strh  r0,[r4,0x38]              ; 08049AD0
@@Code08049AD2:
pop   {r4}                      ; 08049AD2
pop   {r0}                      ; 08049AD4
bx    r0                        ; 08049AD6

Sub08049AD8:
; secondary sprite 214 main
push  {r4,lr}                   ; 08049AD8
mov   r4,r0                     ; 08049ADA
bl    Sub08047AA8               ; 08049ADC
lsl   r0,r0,0x18                ; 08049AE0
cmp   r0,0x0                    ; 08049AE2
bne   @@Code08049B1A            ; 08049AE4
mov   r3,r4                     ; 08049AE6
add   r3,0x42                   ; 08049AE8
ldrh  r0,[r3]                   ; 08049AEA
cmp   r0,0x0                    ; 08049AEC
bne   @@Code08049B1A            ; 08049AEE
mov   r2,r4                     ; 08049AF0
add   r2,0x6A                   ; 08049AF2
ldrh  r0,[r2]                   ; 08049AF4
sub   r0,0x1                    ; 08049AF6
strh  r0,[r2]                   ; 08049AF8
mov   r1,0x80                   ; 08049AFA
and   r0,r1                     ; 08049AFC
cmp   r0,0x0                    ; 08049AFE
beq   @@Code08049B0A            ; 08049B00
mov   r0,r4                     ; 08049B02
bl    Sub08047A60               ; 08049B04
b     @@Code08049B1A            ; 08049B08
@@Code08049B0A:
ldrh  r0,[r4,0x38]              ; 08049B0A
sub   r0,0x1                    ; 08049B0C
strh  r0,[r4,0x38]              ; 08049B0E
ldr   r1,=Data0816FE3C          ; 08049B10
ldrh  r0,[r2]                   ; 08049B12
add   r0,r0,r1                  ; 08049B14
ldrb  r0,[r0]                   ; 08049B16
strh  r0,[r3]                   ; 08049B18
@@Code08049B1A:
pop   {r4}                      ; 08049B1A
pop   {r0}                      ; 08049B1C
bx    r0                        ; 08049B1E
.pool                           ; 08049B20

Sub08049B24:
; secondary sprite 21C main
push  {r4,lr}                   ; 08049B24
mov   r4,r0                     ; 08049B26
bl    Sub08047AA8               ; 08049B28
lsl   r0,r0,0x18                ; 08049B2C
cmp   r0,0x0                    ; 08049B2E
bne   @@Code08049B4C            ; 08049B30
ldr   r0,[r4,0x4]               ; 08049B32
asr   r0,r0,0x8                 ; 08049B34
mov   r1,r4                     ; 08049B36
add   r1,0x6A                   ; 08049B38
ldrh  r1,[r1]                   ; 08049B3A
sub   r0,r0,r1                  ; 08049B3C
lsl   r0,r0,0x10                ; 08049B3E
lsr   r0,r0,0x1F                ; 08049B40
ldr   r1,=Data0816FE44          ; 08049B42
lsl   r0,r0,0x2                 ; 08049B44
add   r0,r0,r1                  ; 08049B46
ldr   r0,[r0]                   ; 08049B48
str   r0,[r4,0x1C]              ; 08049B4A
@@Code08049B4C:
pop   {r4}                      ; 08049B4C
pop   {r0}                      ; 08049B4E
bx    r0                        ; 08049B50
.pool                           ; 08049B52

Sub08049B58:
; secondary sprite 21D main
push  {r4,lr}                   ; 08049B58
mov   r4,r0                     ; 08049B5A
bl    Sub08047AA8               ; 08049B5C
lsl   r0,r0,0x18                ; 08049B60
cmp   r0,0x0                    ; 08049B62
bne   @@Code08049B8E            ; 08049B64
mov   r2,r4                     ; 08049B66
add   r2,0x42                   ; 08049B68
ldrh  r0,[r2]                   ; 08049B6A
cmp   r0,0x0                    ; 08049B6C
bne   @@Code08049B8E            ; 08049B6E
ldrh  r0,[r4,0x38]              ; 08049B70
sub   r0,0x1                    ; 08049B72
strh  r0,[r4,0x38]              ; 08049B74
lsl   r0,r0,0x10                ; 08049B76
cmp   r0,0x0                    ; 08049B78
bge   @@Code08049B84            ; 08049B7A
mov   r0,r4                     ; 08049B7C
bl    Sub08047A60               ; 08049B7E
b     @@Code08049B8E            ; 08049B82
@@Code08049B84:
ldr   r0,=Data0816FE4C          ; 08049B84
ldrh  r1,[r4,0x38]              ; 08049B86
add   r1,r1,r0                  ; 08049B88
ldrb  r0,[r1]                   ; 08049B8A
strh  r0,[r2]                   ; 08049B8C
@@Code08049B8E:
pop   {r4}                      ; 08049B8E
pop   {r0}                      ; 08049B90
bx    r0                        ; 08049B92
.pool                           ; 08049B94

Sub08049B98:
; secondary sprite 220,223 main
push  {r4,lr}                   ; 08049B98
mov   r4,r0                     ; 08049B9A
bl    Sub08047AA8               ; 08049B9C
lsl   r0,r0,0x18                ; 08049BA0
cmp   r0,0x0                    ; 08049BA2
bne   @@Code08049BDA            ; 08049BA4
mov   r0,r4                     ; 08049BA6
add   r0,0x42                   ; 08049BA8
ldrh  r0,[r0]                   ; 08049BAA
cmp   r0,0x0                    ; 08049BAC
bne   @@Code08049BB8            ; 08049BAE
mov   r0,r4                     ; 08049BB0
bl    Sub08047A60               ; 08049BB2
b     @@Code08049BDA            ; 08049BB6
@@Code08049BB8:
mov   r1,r4                     ; 08049BB8
add   r1,0x44                   ; 08049BBA
ldrh  r0,[r1]                   ; 08049BBC
cmp   r0,0x0                    ; 08049BBE
bne   @@Code08049BDA            ; 08049BC0
mov   r0,0x2                    ; 08049BC2
strh  r0,[r1]                   ; 08049BC4
ldrh  r0,[r4,0x38]              ; 08049BC6
sub   r0,0x1                    ; 08049BC8
strh  r0,[r4,0x38]              ; 08049BCA
lsl   r0,r0,0x10                ; 08049BCC
cmp   r0,0x0                    ; 08049BCE
bge   @@Code08049BDA            ; 08049BD0
mov   r0,r4                     ; 08049BD2
add   r0,0x6A                   ; 08049BD4
ldrh  r0,[r0]                   ; 08049BD6
strh  r0,[r4,0x38]              ; 08049BD8
@@Code08049BDA:
pop   {r4}                      ; 08049BDA
pop   {r0}                      ; 08049BDC
bx    r0                        ; 08049BDE

Sub08049BE0:
; secondary sprite 221 main
push  {r4,lr}                   ; 08049BE0
mov   r4,r0                     ; 08049BE2
bl    Sub08047AA8               ; 08049BE4
lsl   r0,r0,0x18                ; 08049BE8
cmp   r0,0x0                    ; 08049BEA
bne   @@Code08049C2C            ; 08049BEC
ldrh  r1,[r4,0x3E]              ; 08049BEE
mov   r0,0x1                    ; 08049BF0
and   r0,r1                     ; 08049BF2
cmp   r0,0x0                    ; 08049BF4
beq   @@Code08049C2C            ; 08049BF6
ldrh  r2,[r4,0x38]              ; 08049BF8
mov   r1,r2                     ; 08049BFA
cmp   r1,0x0                    ; 08049BFC
bne   @@Code08049C04            ; 08049BFE
mov   r0,0x1C                   ; 08049C00
strh  r0,[r4,0x28]              ; 08049C02
@@Code08049C04:
cmp   r1,0x3                    ; 08049C04
beq   @@Code08049C0C            ; 08049C06
add   r0,r2,0x1                 ; 08049C08
strh  r0,[r4,0x38]              ; 08049C0A
@@Code08049C0C:
ldr   r0,[r4,0xC]               ; 08049C0C
cmp   r0,0x0                    ; 08049C0E
blt   @@Code08049C2C            ; 08049C10
lsl   r0,r0,0xF                 ; 08049C12
lsr   r0,r0,0x10                ; 08049C14
lsl   r1,r0,0x10                ; 08049C16
lsr   r0,r1,0x10                ; 08049C18
cmp   r0,0x20                   ; 08049C1A
bhi   @@Code08049C26            ; 08049C1C
mov   r0,r4                     ; 08049C1E
bl    Sub08047A60               ; 08049C20
b     @@Code08049C2C            ; 08049C24
@@Code08049C26:
asr   r0,r1,0x10                ; 08049C26
neg   r0,r0                     ; 08049C28
str   r0,[r4,0xC]               ; 08049C2A
@@Code08049C2C:
pop   {r4}                      ; 08049C2C
pop   {r0}                      ; 08049C2E
bx    r0                        ; 08049C30
.pool                           ; 08049C32

Sub08049C34:
; secondary sprite 224 main
push  {r4,lr}                   ; 08049C34
mov   r4,r0                     ; 08049C36
bl    Sub08047AA8               ; 08049C38
lsl   r0,r0,0x18                ; 08049C3C
cmp   r0,0x0                    ; 08049C3E
bne   @@Code08049C88            ; 08049C40
mov   r3,r4                     ; 08049C42
add   r3,0x42                   ; 08049C44
ldrh  r0,[r3]                   ; 08049C46
cmp   r0,0x0                    ; 08049C48
bne   @@Code08049C88            ; 08049C4A
mov   r2,r4                     ; 08049C4C
add   r2,0x6A                   ; 08049C4E
ldrh  r0,[r2]                   ; 08049C50
sub   r0,0x1                    ; 08049C52
strh  r0,[r2]                   ; 08049C54
mov   r1,0x80                   ; 08049C56
and   r0,r1                     ; 08049C58
cmp   r0,0x0                    ; 08049C5A
beq   @@Code08049C66            ; 08049C5C
mov   r0,r4                     ; 08049C5E
bl    Sub08047A60               ; 08049C60
b     @@Code08049C88            ; 08049C64
@@Code08049C66:
ldr   r1,=Data0816FE54          ; 08049C66
ldrh  r0,[r2]                   ; 08049C68
add   r0,r0,r1                  ; 08049C6A
ldrb  r0,[r0]                   ; 08049C6C
strh  r0,[r4,0x38]              ; 08049C6E
ldr   r1,=Data0816FE60          ; 08049C70
ldrh  r0,[r2]                   ; 08049C72
add   r0,r0,r1                  ; 08049C74
ldrb  r0,[r0]                   ; 08049C76
strh  r0,[r3]                   ; 08049C78
ldr   r1,=Data0816FE6C          ; 08049C7A
ldrh  r0,[r2]                   ; 08049C7C
add   r0,r0,r1                  ; 08049C7E
ldrb  r1,[r0]                   ; 08049C80
mov   r0,r4                     ; 08049C82
add   r0,0x94                   ; 08049C84
strb  r1,[r0]                   ; 08049C86
@@Code08049C88:
pop   {r4}                      ; 08049C88
pop   {r0}                      ; 08049C8A
bx    r0                        ; 08049C8C
.pool                           ; 08049C8E

Sub08049C9C:
; secondary sprite 226 main
push  {r4,lr}                   ; 08049C9C
mov   r4,r0                     ; 08049C9E
bl    Sub08047AA8               ; 08049CA0
lsl   r0,r0,0x18                ; 08049CA4
cmp   r0,0x0                    ; 08049CA6
bne   @@Code08049CD2            ; 08049CA8
mov   r2,r4                     ; 08049CAA
add   r2,0x42                   ; 08049CAC
ldrh  r0,[r2]                   ; 08049CAE
cmp   r0,0x0                    ; 08049CB0
bne   @@Code08049CD2            ; 08049CB2
ldrh  r0,[r4,0x38]              ; 08049CB4
sub   r0,0x1                    ; 08049CB6
strh  r0,[r4,0x38]              ; 08049CB8
lsl   r0,r0,0x10                ; 08049CBA
cmp   r0,0x0                    ; 08049CBC
bge   @@Code08049CC8            ; 08049CBE
mov   r0,r4                     ; 08049CC0
bl    Sub08047A60               ; 08049CC2
b     @@Code08049CD2            ; 08049CC6
@@Code08049CC8:
ldr   r0,=Data0816FE78          ; 08049CC8
ldrh  r1,[r4,0x38]              ; 08049CCA
add   r1,r1,r0                  ; 08049CCC
ldrb  r0,[r1]                   ; 08049CCE
strh  r0,[r2]                   ; 08049CD0
@@Code08049CD2:
pop   {r4}                      ; 08049CD2
pop   {r0}                      ; 08049CD4
bx    r0                        ; 08049CD6
.pool                           ; 08049CD8

Sub08049CDC:
; secondary sprite 227 main
push  {r4,lr}                   ; 08049CDC
mov   r4,r0                     ; 08049CDE
bl    Sub08047AA8               ; 08049CE0
lsl   r0,r0,0x18                ; 08049CE4
cmp   r0,0x0                    ; 08049CE6
bne   @@Code08049D0C            ; 08049CE8
mov   r1,r4                     ; 08049CEA
add   r1,0x42                   ; 08049CEC
ldrh  r0,[r1]                   ; 08049CEE
cmp   r0,0x0                    ; 08049CF0
bne   @@Code08049D0C            ; 08049CF2
ldrh  r0,[r4,0x38]              ; 08049CF4
sub   r0,0x1                    ; 08049CF6
strh  r0,[r4,0x38]              ; 08049CF8
lsl   r0,r0,0x10                ; 08049CFA
cmp   r0,0x0                    ; 08049CFC
bge   @@Code08049D08            ; 08049CFE
mov   r0,r4                     ; 08049D00
bl    Sub08047A60               ; 08049D02
b     @@Code08049D0C            ; 08049D06
@@Code08049D08:
mov   r0,0x3                    ; 08049D08
strh  r0,[r1]                   ; 08049D0A
@@Code08049D0C:
pop   {r4}                      ; 08049D0C
pop   {r0}                      ; 08049D0E
bx    r0                        ; 08049D10
.pool                           ; 08049D12

Sub08049D14:
; secondary sprite 229 main
push  {r4,lr}                   ; 08049D14
mov   r4,r0                     ; 08049D16
bl    Sub08047AA8               ; 08049D18
lsl   r0,r0,0x18                ; 08049D1C
cmp   r0,0x0                    ; 08049D1E
bne   @@Code08049D44            ; 08049D20
mov   r1,r4                     ; 08049D22
add   r1,0x42                   ; 08049D24
ldrh  r0,[r1]                   ; 08049D26
cmp   r0,0x0                    ; 08049D28
bne   @@Code08049D44            ; 08049D2A
ldrh  r0,[r4,0x38]              ; 08049D2C
sub   r0,0x1                    ; 08049D2E
strh  r0,[r4,0x38]              ; 08049D30
lsl   r0,r0,0x10                ; 08049D32
cmp   r0,0x0                    ; 08049D34
bge   @@Code08049D40            ; 08049D36
mov   r0,r4                     ; 08049D38
bl    Sub08047A60               ; 08049D3A
b     @@Code08049D44            ; 08049D3E
@@Code08049D40:
mov   r0,0x4                    ; 08049D40
strh  r0,[r1]                   ; 08049D42
@@Code08049D44:
pop   {r4}                      ; 08049D44
pop   {r0}                      ; 08049D46
bx    r0                        ; 08049D48
.pool                           ; 08049D4A

Sub08049D4C:
; secondary sprite 22A main
push  {r4-r5,lr}                ; 08049D4C
mov   r5,r0                     ; 08049D4E
add   r0,0x94                   ; 08049D50
ldrb  r0,[r0]                   ; 08049D52
cmp   r0,0xFF                   ; 08049D54
beq   @@Code08049DA4            ; 08049D56
ldrh  r0,[r5,0x34]              ; 08049D58
lsl   r3,r0,0x10                ; 08049D5A
cmp   r3,0x0                    ; 08049D5C
blt   @@Code08049DA4            ; 08049D5E
ldr   r2,=Data0816FE82          ; 08049D60
mov   r0,r5                     ; 08049D62
add   r0,0x6C                   ; 08049D64
ldrh  r0,[r0]                   ; 08049D66
lsr   r0,r0,0x2                 ; 08049D68
mov   r1,0x7                    ; 08049D6A
and   r0,r1                     ; 08049D6C
lsl   r0,r0,0x1                 ; 08049D6E
add   r0,r0,r2                  ; 08049D70
ldrh  r4,[r0]                   ; 08049D72
lsr   r1,r3,0x12                ; 08049D74
lsl   r1,r1,0x3                 ; 08049D76
ldr   r0,=0x03005A00            ; 08049D78
add   r1,r1,r0                  ; 08049D7A
ldrh  r3,[r1,0x4]               ; 08049D7C
ldr   r2,=0x0FFF                ; 08049D7E
mov   r0,r2                     ; 08049D80
and   r0,r3                     ; 08049D82
orr   r0,r4                     ; 08049D84
strh  r0,[r1,0x4]               ; 08049D86
ldrh  r3,[r1,0xC]               ; 08049D88
mov   r0,r2                     ; 08049D8A
and   r0,r3                     ; 08049D8C
orr   r0,r4                     ; 08049D8E
strh  r0,[r1,0xC]               ; 08049D90
ldrh  r3,[r1,0x14]              ; 08049D92
mov   r0,r2                     ; 08049D94
and   r0,r3                     ; 08049D96
orr   r0,r4                     ; 08049D98
strh  r0,[r1,0x14]              ; 08049D9A
ldrh  r0,[r1,0x1C]              ; 08049D9C
and   r2,r0                     ; 08049D9E
orr   r4,r2                     ; 08049DA0
strh  r4,[r1,0x1C]              ; 08049DA2
@@Code08049DA4:
mov   r0,r5                     ; 08049DA4
bl    Sub08047AA8               ; 08049DA6
lsl   r0,r0,0x18                ; 08049DAA
cmp   r0,0x0                    ; 08049DAC
bne   @@Code08049DE8            ; 08049DAE
mov   r0,r5                     ; 08049DB0
add   r0,0x6C                   ; 08049DB2
ldrh  r1,[r0]                   ; 08049DB4
add   r1,0x1                    ; 08049DB6
strh  r1,[r0]                   ; 08049DB8
mov   r1,r5                     ; 08049DBA
add   r1,0x42                   ; 08049DBC
ldrh  r0,[r1]                   ; 08049DBE
cmp   r0,0x0                    ; 08049DC0
bne   @@Code08049DE8            ; 08049DC2
mov   r0,r5                     ; 08049DC4
add   r0,0x94                   ; 08049DC6
mov   r2,0x1                    ; 08049DC8
strb  r2,[r0]                   ; 08049DCA
mov   r0,0x4                    ; 08049DCC
strh  r0,[r1]                   ; 08049DCE
ldrh  r0,[r5,0x38]              ; 08049DD0
sub   r0,0x1                    ; 08049DD2
strh  r0,[r5,0x38]              ; 08049DD4
lsl   r0,r0,0x10                ; 08049DD6
cmp   r0,0x0                    ; 08049DD8
bge   @@Code08049DE8            ; 08049DDA
strh  r2,[r5,0x38]              ; 08049DDC
ldr   r0,[r5,0x4]               ; 08049DDE
mov   r1,0x80                   ; 08049DE0
lsl   r1,r1,0x4                 ; 08049DE2
add   r0,r0,r1                  ; 08049DE4
str   r0,[r5,0x4]               ; 08049DE6
@@Code08049DE8:
pop   {r4-r5}                   ; 08049DE8
pop   {r0}                      ; 08049DEA
bx    r0                        ; 08049DEC
.pool                           ; 08049DEE

Sub08049DFC:
; secondary sprite 1F8 main
push  {r4,lr}                   ; 08049DFC
mov   r4,r0                     ; 08049DFE
bl    Sub08047AA8               ; 08049E00
lsl   r0,r0,0x18                ; 08049E04
cmp   r0,0x0                    ; 08049E06
bne   @@Code08049E32            ; 08049E08
mov   r2,r4                     ; 08049E0A
add   r2,0x42                   ; 08049E0C
ldrh  r0,[r2]                   ; 08049E0E
cmp   r0,0x0                    ; 08049E10
bne   @@Code08049E32            ; 08049E12
ldrh  r0,[r4,0x38]              ; 08049E14
sub   r0,0x1                    ; 08049E16
strh  r0,[r4,0x38]              ; 08049E18
lsl   r0,r0,0x10                ; 08049E1A
cmp   r0,0x0                    ; 08049E1C
bge   @@Code08049E28            ; 08049E1E
mov   r0,r4                     ; 08049E20
bl    Sub08047A60               ; 08049E22
b     @@Code08049E32            ; 08049E26
@@Code08049E28:
ldr   r0,=Data0816FE92          ; 08049E28
ldrh  r1,[r4,0x38]              ; 08049E2A
add   r1,r1,r0                  ; 08049E2C
ldrb  r0,[r1]                   ; 08049E2E
strh  r0,[r2]                   ; 08049E30
@@Code08049E32:
pop   {r4}                      ; 08049E32
pop   {r0}                      ; 08049E34
bx    r0                        ; 08049E36
.pool                           ; 08049E38

Sub08049E3C:
; secondary sprite 22B main
push  {r4,lr}                   ; 08049E3C
mov   r4,r0                     ; 08049E3E
bl    Sub08047AA8               ; 08049E40
lsl   r0,r0,0x18                ; 08049E44
cmp   r0,0x0                    ; 08049E46
bne   @@Code08049E6C            ; 08049E48
mov   r1,r4                     ; 08049E4A
add   r1,0x42                   ; 08049E4C
ldrh  r0,[r1]                   ; 08049E4E
cmp   r0,0x0                    ; 08049E50
bne   @@Code08049E6C            ; 08049E52
ldrh  r0,[r4,0x38]              ; 08049E54
sub   r0,0x1                    ; 08049E56
strh  r0,[r4,0x38]              ; 08049E58
lsl   r0,r0,0x10                ; 08049E5A
cmp   r0,0x0                    ; 08049E5C
bge   @@Code08049E68            ; 08049E5E
mov   r0,r4                     ; 08049E60
bl    Sub08047A60               ; 08049E62
b     @@Code08049E6C            ; 08049E66
@@Code08049E68:
mov   r0,0x2                    ; 08049E68
strh  r0,[r1]                   ; 08049E6A
@@Code08049E6C:
pop   {r4}                      ; 08049E6C
pop   {r0}                      ; 08049E6E
bx    r0                        ; 08049E70
.pool                           ; 08049E72

Sub08049E74:
; secondary sprite 22E main
push  {lr}                      ; 08049E74
bl    Sub08047A6C               ; 08049E76
pop   {r0}                      ; 08049E7A
bx    r0                        ; 08049E7C
.pool                           ; 08049E7E
