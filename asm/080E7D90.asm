Sub080E7D90:
push  {lr}                      ; 080E7D90
mov   r1,r0                     ; 080E7D92
add   r0,0x21                   ; 080E7D94
ldrb  r0,[r0]                   ; 080E7D96
cmp   r0,0x7                    ; 080E7D98
bls   @@Code080E7DCC            ; 080E7D9A
add   r1,0x2B                   ; 080E7D9C
mov   r0,0x1                    ; 080E7D9E
strb  r0,[r1]                   ; 080E7DA0
ldr   r0,=0x03002200            ; 080E7DA2
ldr   r1,=0x4901                ; 080E7DA4
add   r0,r0,r1                  ; 080E7DA6
ldrb  r1,[r0]                   ; 080E7DA8
mov   r0,0x38                   ; 080E7DAA
and   r0,r1                     ; 080E7DAC
ldr   r1,=Data08194AA4          ; 080E7DAE
lsr   r0,r0,0x2                 ; 080E7DB0
add   r0,r0,r1                  ; 080E7DB2
ldrh  r1,[r0]                   ; 080E7DB4
ldr   r0,=0x0201043C            ; 080E7DB6
strh  r1,[r0]                   ; 080E7DB8
b     @@Code080E7DD2            ; 080E7DBA
.pool                           ; 080E7DBC

@@Code080E7DCC:
add   r1,0x2B                   ; 080E7DCC
mov   r0,0x0                    ; 080E7DCE
strb  r0,[r1]                   ; 080E7DD0
@@Code080E7DD2:
pop   {r0}                      ; 080E7DD2
bx    r0                        ; 080E7DD4
.pool                           ; 080E7DD6

Sub080E7DD8:
push  {r4-r7,lr}                ; 080E7DD8
mov   r7,r10                    ; 080E7DDA
mov   r6,r9                     ; 080E7DDC
mov   r5,r8                     ; 080E7DDE
push  {r5-r7}                   ; 080E7DE0
mov   r9,r0                     ; 080E7DE2
mov   r6,0x0                    ; 080E7DE4
ldr   r7,=0x030021B0            ; 080E7DE6
mov   r0,0x3F                   ; 080E7DE8
mov   r8,r0                     ; 080E7DEA
ldr   r2,=Data08194AD2          ; 080E7DEC
mov   r12,r2                    ; 080E7DEE
ldr   r0,=0x03FF                ; 080E7DF0
mov   r10,r0                    ; 080E7DF2
@@Code080E7DF4:
mov   r0,r9                     ; 080E7DF4
add   r0,0x27                   ; 080E7DF6
add   r0,r0,r6                  ; 080E7DF8
ldrb  r5,[r0]                   ; 080E7DFA
cmp   r5,0x0                    ; 080E7DFC
beq   @@Code080E7E72            ; 080E7DFE
lsl   r2,r6,0x3                 ; 080E7E00
ldr   r0,=0x03005B40            ; 080E7E02
add   r2,r2,r0                  ; 080E7E04
str   r2,[r7]                   ; 080E7E06
ldrb  r1,[r2,0x3]               ; 080E7E08
mov   r0,r8                     ; 080E7E0A
and   r0,r1                     ; 080E7E0C
mov   r1,0x40                   ; 080E7E0E
orr   r0,r1                     ; 080E7E10
strb  r0,[r2,0x3]               ; 080E7E12
ldr   r2,[r7]                   ; 080E7E14
ldrb  r1,[r2,0x1]               ; 080E7E16
mov   r0,r8                     ; 080E7E18
and   r0,r1                     ; 080E7E1A
strb  r0,[r2,0x1]               ; 080E7E1C
ldr   r2,[r7]                   ; 080E7E1E
ldrb  r1,[r2,0x1]               ; 080E7E20
mov   r0,0x21                   ; 080E7E22
neg   r0,r0                     ; 080E7E24
and   r0,r1                     ; 080E7E26
strb  r0,[r2,0x1]               ; 080E7E28
ldr   r3,[r7]                   ; 080E7E2A
ldr   r0,=Data08194AC8          ; 080E7E2C
add   r0,r5,r0                  ; 080E7E2E
ldrb  r1,[r0]                   ; 080E7E30
lsl   r1,r1,0x4                 ; 080E7E32
ldrb  r2,[r3,0x5]               ; 080E7E34
mov   r0,0xF                    ; 080E7E36
and   r0,r2                     ; 080E7E38
orr   r0,r1                     ; 080E7E3A
strb  r0,[r3,0x5]               ; 080E7E3C
ldr   r3,[r7]                   ; 080E7E3E
lsl   r1,r6,0x1                 ; 080E7E40
mov   r2,r12                    ; 080E7E42
add   r0,r1,r2                  ; 080E7E44
ldrb  r4,[r0]                   ; 080E7E46
ldrh  r2,[r3,0x2]               ; 080E7E48
ldr   r0,=0xFFFFFE00            ; 080E7E4A
and   r0,r2                     ; 080E7E4C
orr   r0,r4                     ; 080E7E4E
strh  r0,[r3,0x2]               ; 080E7E50
add   r1,0x1                    ; 080E7E52
add   r1,r12                    ; 080E7E54
ldrb  r0,[r1]                   ; 080E7E56
strb  r0,[r3]                   ; 080E7E58
ldr   r3,[r7]                   ; 080E7E5A
ldr   r1,=Data08194AB4          ; 080E7E5C
lsl   r0,r5,0x1                 ; 080E7E5E
add   r0,r0,r1                  ; 080E7E60
ldrh  r0,[r0]                   ; 080E7E62
mov   r1,r10                    ; 080E7E64
and   r1,r0                     ; 080E7E66
ldrh  r2,[r3,0x4]               ; 080E7E68
ldr   r0,=0xFFFFFC00            ; 080E7E6A
and   r0,r2                     ; 080E7E6C
orr   r0,r1                     ; 080E7E6E
strh  r0,[r3,0x4]               ; 080E7E70
@@Code080E7E72:
add   r0,r6,0x1                 ; 080E7E72
lsl   r0,r0,0x10                ; 080E7E74
lsr   r6,r0,0x10                ; 080E7E76
cmp   r6,0x3                    ; 080E7E78
bls   @@Code080E7DF4            ; 080E7E7A
pop   {r3-r5}                   ; 080E7E7C
mov   r8,r3                     ; 080E7E7E
mov   r9,r4                     ; 080E7E80
mov   r10,r5                    ; 080E7E82
pop   {r4-r7}                   ; 080E7E84
pop   {r0}                      ; 080E7E86
bx    r0                        ; 080E7E88
.pool                           ; 080E7E8A

Sub080E7EAC:
push  {r4-r7,lr}                ; 080E7EAC
mov   r5,r0                     ; 080E7EAE
mov   r4,0x0                    ; 080E7EB0
ldr   r7,=CodePtrs08194A7C      ; 080E7EB2
ldr   r2,=0x03006B60            ; 080E7EB4
mov   r1,0x0                    ; 080E7EB6
add   r3,r2,0x3                 ; 080E7EB8
@@Code080E7EBA:
add   r0,r4,r2                  ; 080E7EBA
strb  r1,[r0]                   ; 080E7EBC
add   r0,r4,r3                  ; 080E7EBE
strb  r1,[r0]                   ; 080E7EC0
add   r0,r4,0x1                 ; 080E7EC2
lsl   r0,r0,0x10                ; 080E7EC4
lsr   r4,r0,0x10                ; 080E7EC6
cmp   r4,0x2                    ; 080E7EC8
bls   @@Code080E7EBA            ; 080E7ECA
mov   r0,r5                     ; 080E7ECC
add   r0,0x22                   ; 080E7ECE
ldrb  r0,[r0]                   ; 080E7ED0
lsl   r4,r0,0x1                 ; 080E7ED2
mov   r6,r5                     ; 080E7ED4
add   r6,0x21                   ; 080E7ED6
ldrb  r0,[r6]                   ; 080E7ED8
lsl   r0,r0,0x2                 ; 080E7EDA
add   r0,r0,r7                  ; 080E7EDC
ldr   r2,[r0]                   ; 080E7EDE
mov   r0,r5                     ; 080E7EE0
mov   r1,r4                     ; 080E7EE2
bl    Sub_bx_r2                 ; 080E7EE4
lsl   r0,r0,0x10                ; 080E7EE8
lsr   r4,r0,0x10                ; 080E7EEA
ldrb  r0,[r6]                   ; 080E7EEC
cmp   r0,0x5                    ; 080E7EEE
bls   @@Code080E7EFE            ; 080E7EF0
mov   r0,r5                     ; 080E7EF2
bl    Sub080E7DD8               ; 080E7EF4
mov   r0,r5                     ; 080E7EF8
bl    Sub080E7D90               ; 080E7EFA
@@Code080E7EFE:
mov   r0,r4                     ; 080E7EFE
pop   {r4-r7}                   ; 080E7F00
pop   {r1}                      ; 080E7F02
bx    r1                        ; 080E7F04
.pool                           ; 080E7F06

Sub080E7F10:
push  {r4-r7,lr}                ; 080E7F10
mov   r7,r9                     ; 080E7F12
mov   r6,r8                     ; 080E7F14
push  {r6-r7}                   ; 080E7F16
add   sp,-0x4                   ; 080E7F18
ldr   r0,=0x03007240            ; 080E7F1A  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 080E7F1C
ldr   r0,=0x2688                ; 080E7F1E
add   r7,r2,r0                  ; 080E7F20
ldr   r1,=0x2618                ; 080E7F22
add   r3,r2,r1                  ; 080E7F24
add   r1,0x91                   ; 080E7F26
add   r0,r2,r1                  ; 080E7F28
ldrb  r1,[r0]                   ; 080E7F2A
cmp   r1,0x0                    ; 080E7F2C
beq   @@Code080E7F32            ; 080E7F2E
b     @@Code080E8050            ; 080E7F30
@@Code080E7F32:
ldr   r0,=0x03002200            ; 080E7F32
ldr   r1,=0x47C0                ; 080E7F34
add   r0,r0,r1                  ; 080E7F36
ldrh  r1,[r0]                   ; 080E7F38
mov   r0,0x4                    ; 080E7F3A
and   r0,r1                     ; 080E7F3C
cmp   r0,0x0                    ; 080E7F3E
bne   @@Code080E7F44            ; 080E7F40
b     @@Code080E80C4            ; 080E7F42
@@Code080E7F44:
ldr   r1,=0x298C                ; 080E7F44
add   r0,r2,r1                  ; 080E7F46
ldrh  r1,[r0]                   ; 080E7F48
ldrh  r0,[r3,0x6]               ; 080E7F4A
orr   r1,r0                     ; 080E7F4C
ldr   r3,=0x29BA                ; 080E7F4E
add   r0,r2,r3                  ; 080E7F50
ldrh  r0,[r0]                   ; 080E7F52
orr   r1,r0                     ; 080E7F54
ldr   r2,=0x03006D80            ; 080E7F56
mov   r3,0xD3                   ; 080E7F58
lsl   r3,r3,0x1                 ; 080E7F5A
add   r0,r2,r3                  ; 080E7F5C
ldrh  r0,[r0]                   ; 080E7F5E
orr   r1,r0                     ; 080E7F60
add   r3,0x2                    ; 080E7F62
add   r0,r2,r3                  ; 080E7F64
ldrh  r0,[r0]                   ; 080E7F66
orr   r1,r0                     ; 080E7F68
cmp   r1,0x0                    ; 080E7F6A
beq   @@Code080E7F70            ; 080E7F6C
b     @@Code080E80C4            ; 080E7F6E
@@Code080E7F70:
ldrh  r1,[r2,0x30]              ; 080E7F70
cmp   r1,0x12                   ; 080E7F72
beq   @@Code080E7F8E            ; 080E7F74
cmp   r1,0x5                    ; 080E7F76
bls   @@Code080E7F7C            ; 080E7F78
b     @@Code080E80C4            ; 080E7F7A
@@Code080E7F7C:
cmp   r1,0x2                    ; 080E7F7C
bne   @@Code080E7F8E            ; 080E7F7E
mov   r1,0xD8                   ; 080E7F80
lsl   r1,r1,0x1                 ; 080E7F82
add   r0,r2,r1                  ; 080E7F84
ldrh  r0,[r0]                   ; 080E7F86
cmp   r0,0x0                    ; 080E7F88
bne   @@Code080E7F8E            ; 080E7F8A
b     @@Code080E80C4            ; 080E7F8C
@@Code080E7F8E:
mov   r2,r7                     ; 080E7F8E
add   r2,0x22                   ; 080E7F90
ldrb  r1,[r2]                   ; 080E7F92
mov   r0,0x1                    ; 080E7F94
eor   r1,r0                     ; 080E7F96
mov   r3,0x1                    ; 080E7F98
mov   r8,r3                     ; 080E7F9A
and   r1,r3                     ; 080E7F9C
mov   r3,0x0                    ; 080E7F9E
mov   r9,r3                     ; 080E7FA0
strb  r1,[r2]                   ; 080E7FA2
mov   r1,r7                     ; 080E7FA4
add   r1,0x21                   ; 080E7FA6
strb  r0,[r1]                   ; 080E7FA8
ldr   r4,=0x03002200            ; 080E7FAA
ldr   r1,=0x488E                ; 080E7FAC
add   r0,r4,r1                  ; 080E7FAE
ldrh  r0,[r0]                   ; 080E7FB0
strh  r0,[r7,0xA]               ; 080E7FB2
ldr   r2,=0x4892                ; 080E7FB4
add   r0,r4,r2                  ; 080E7FB6
ldrh  r0,[r0]                   ; 080E7FB8
strh  r0,[r7,0xC]               ; 080E7FBA
ldr   r3,=0x4890                ; 080E7FBC
add   r0,r4,r3                  ; 080E7FBE
ldrh  r0,[r0]                   ; 080E7FC0
strh  r0,[r7,0xE]               ; 080E7FC2
add   r1,0x6                    ; 080E7FC4
add   r0,r4,r1                  ; 080E7FC6
ldrh  r0,[r0]                   ; 080E7FC8
strh  r0,[r7,0x10]              ; 080E7FCA
sub   r2,0xA                    ; 080E7FCC
add   r0,r4,r2                  ; 080E7FCE
ldrh  r0,[r0]                   ; 080E7FD0
strh  r0,[r7,0x12]              ; 080E7FD2
sub   r3,0x6                    ; 080E7FD4
add   r0,r4,r3                  ; 080E7FD6
ldrh  r0,[r0]                   ; 080E7FD8
strh  r0,[r7,0x14]              ; 080E7FDA
sub   r1,0x8                    ; 080E7FDC
add   r0,r4,r1                  ; 080E7FDE
ldrh  r0,[r0]                   ; 080E7FE0
strh  r0,[r7,0x16]              ; 080E7FE2
ldr   r2,=0x4A03                ; 080E7FE4
add   r0,r4,r2                  ; 080E7FE6
ldrb  r0,[r0]                   ; 080E7FE8
strb  r0,[r7,0x1C]              ; 080E7FEA
ldr   r3,=0x4A04                ; 080E7FEC
add   r0,r4,r3                  ; 080E7FEE
ldrb  r0,[r0]                   ; 080E7FF0
strb  r0,[r7,0x1D]              ; 080E7FF2
mov   r0,0x1                    ; 080E7FF4
bl    Sub0812C504               ; 080E7FF6
ldr   r1,=0x47C6                ; 080E7FFA
add   r0,r4,r1                  ; 080E7FFC
ldrh  r0,[r0]                   ; 080E7FFE
strh  r0,[r7,0x18]              ; 080E8000
ldr   r6,=0x02010800            ; 080E8002
ldr   r1,=0x0201FC00            ; 080E8004  decompressed graphics buffer
mov   r5,0x80                   ; 080E8006
lsl   r5,r5,0x2                 ; 080E8008
mov   r0,r6                     ; 080E800A
mov   r2,r5                     ; 080E800C
bl    swi_MemoryCopy4or2        ; 080E800E  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010400            ; 080E8012
mov   r0,r6                     ; 080E8014
mov   r2,r5                     ; 080E8016
bl    swi_MemoryCopy4or2        ; 080E8018  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x020293D0            ; 080E801C
ldr   r1,=0x02020C00            ; 080E801E
mov   r2,r5                     ; 080E8020
bl    swi_MemoryCopy4or2        ; 080E8022  Memory copy/fill, 4- or 2-byte blocks
mov   r2,r9                     ; 080E8026
str   r2,[sp]                   ; 080E8028
ldr   r1,=0x02010C00            ; 080E802A
ldr   r2,=0x01000100            ; 080E802C
mov   r0,sp                     ; 080E802E
bl    swi_MemoryCopy32          ; 080E8030  Memory copy/fill, 32-byte blocks
ldr   r3,=0x4886                ; 080E8034
add   r4,r4,r3                  ; 080E8036
mov   r0,r9                     ; 080E8038
strh  r0,[r4]                   ; 080E803A
ldr   r0,=0x03006D80            ; 080E803C
mov   r2,0xD3                   ; 080E803E
lsl   r2,r2,0x1                 ; 080E8040
add   r1,r0,r2                  ; 080E8042
mov   r3,r8                     ; 080E8044
strh  r3,[r1]                   ; 080E8046
mov   r1,0xD4                   ; 080E8048
lsl   r1,r1,0x1                 ; 080E804A
add   r0,r0,r1                  ; 080E804C
strh  r3,[r0]                   ; 080E804E
@@Code080E8050:
ldr   r0,=0x03002200            ; 080E8050
ldr   r2,=0x47C0                ; 080E8052
add   r0,r0,r2                  ; 080E8054
ldrh  r1,[r0]                   ; 080E8056
mov   r0,0x8                    ; 080E8058
and   r0,r1                     ; 080E805A
mov   r0,r7                     ; 080E805C
bl    Sub080E7EAC               ; 080E805E
lsl   r0,r0,0x10                ; 080E8062
cmp   r0,0x0                    ; 080E8064
bne   @@Code080E80C4            ; 080E8066
mov   r0,0x1                    ; 080E8068
b     @@Code080E80C6            ; 080E806A
.pool                           ; 080E806C

@@Code080E80C4:
mov   r0,0x0                    ; 080E80C4
@@Code080E80C6:
add   sp,0x4                    ; 080E80C6
pop   {r3-r4}                   ; 080E80C8
mov   r8,r3                     ; 080E80CA
mov   r9,r4                     ; 080E80CC
pop   {r4-r7}                   ; 080E80CE
pop   {r1}                      ; 080E80D0
bx    r1                        ; 080E80D2

Sub080E80D4:
push  {r4,lr}                   ; 080E80D4
ldr   r0,=0x03007240            ; 080E80D6  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E80D8
ldr   r1,=0x26B3                ; 080E80DA
add   r0,r0,r1                  ; 080E80DC
ldrb  r0,[r0]                   ; 080E80DE
cmp   r0,0x0                    ; 080E80E0
beq   @@Code080E80FE            ; 080E80E2
ldr   r0,=0x02010400            ; 080E80E4
mov   r1,0xA0                   ; 080E80E6
lsl   r1,r1,0x13                ; 080E80E8
mov   r4,0x80                   ; 080E80EA
lsl   r4,r4,0x1                 ; 080E80EC
mov   r2,r4                     ; 080E80EE
bl    swi_MemoryCopy4or2        ; 080E80F0  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x02010600            ; 080E80F4
ldr   r1,=0x05000200            ; 080E80F6
mov   r2,r4                     ; 080E80F8
bl    swi_MemoryCopy4or2        ; 080E80FA  Memory copy/fill, 4- or 2-byte blocks
@@Code080E80FE:
pop   {r4}                      ; 080E80FE
pop   {r0}                      ; 080E8100
bx    r0                        ; 080E8102
.pool                           ; 080E8104
