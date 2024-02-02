Sub08049E80:
push  {r4-r6,lr}                    ; 08049E80
ldr   r0,=0x03007240                ; 08049E82  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 08049E84
ldr   r0,=0x1AF4                    ; 08049E86
add   r5,r1,r0                      ; 08049E88
ldr   r2,=0x2544                    ; 08049E8A
add   r4,r1,r2                      ; 08049E8C
ldr   r0,=0x03006D80                ; 08049E8E
mov   r3,0xD4                       ; 08049E90
lsl   r3,r3,0x1                     ; 08049E92
add   r0,r0,r3                      ; 08049E94
ldr   r2,=0x29B0                    ; 08049E96
add   r3,r1,r2                      ; 08049E98
ldrh  r2,[r0]                       ; 08049E9A
ldrh  r0,[r3]                       ; 08049E9C
orr   r2,r0                         ; 08049E9E
ldr   r3,=0x29BA                    ; 08049EA0
add   r0,r1,r3                      ; 08049EA2
ldrh  r0,[r0]                       ; 08049EA4
orr   r2,r0                         ; 08049EA6
ldr   r0,=0x29C8                    ; 08049EA8
add   r1,r1,r0                      ; 08049EAA
strh  r2,[r1]                       ; 08049EAC
ldr   r0,=0x03002200                ; 08049EAE
ldr   r1,=0x4905                    ; 08049EB0
add   r0,r0,r1                      ; 08049EB2
ldrb  r0,[r0]                       ; 08049EB4
cmp   r0,0x21                       ; 08049EB6
bne   @@Code08049F10                ; 08049EB8
ldr   r6,=SecondarySprPtrs          ; 08049EBA
@@Code08049EBC:
ldrh  r0,[r4,0x24]                  ; 08049EBC
cmp   r0,0x0                        ; 08049EBE
beq   @@Code08049ED4                ; 08049EC0
ldrh  r0,[r4,0x32]                  ; 08049EC2
ldr   r2,=0xFFFFFE3C                ; 08049EC4
add   r0,r0,r2                      ; 08049EC6
lsl   r0,r0,0x2                     ; 08049EC8
add   r0,r0,r6                      ; 08049ECA
ldr   r1,[r0]                       ; 08049ECC
mov   r0,r4                         ; 08049ECE
bl    Sub_bx_r1                     ; 08049ED0
@@Code08049ED4:
ldr   r0,=0x03007240                ; 08049ED4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 08049ED6
cmp   r0,0x0                        ; 08049ED8
beq   @@Code08049F30                ; 08049EDA
sub   r4,0xB0                       ; 08049EDC
cmp   r4,r5                         ; 08049EDE
bhs   @@Code08049EBC                ; 08049EE0
b     @@Code08049F30                ; 08049EE2
.pool                               ; 08049EE4

@@Code08049F10:
ldr   r6,=SecondarySprPtrs          ; 08049F10
@@Code08049F12:
ldrh  r0,[r4,0x24]                  ; 08049F12
cmp   r0,0x0                        ; 08049F14
beq   @@Code08049F2A                ; 08049F16
ldrh  r0,[r4,0x32]                  ; 08049F18
ldr   r3,=0xFFFFFE3C                ; 08049F1A
add   r0,r0,r3                      ; 08049F1C
lsl   r0,r0,0x2                     ; 08049F1E
add   r0,r0,r6                      ; 08049F20
ldr   r1,[r0]                       ; 08049F22
mov   r0,r4                         ; 08049F24
bl    Sub_bx_r1                     ; 08049F26
@@Code08049F2A:
sub   r4,0xB0                       ; 08049F2A
cmp   r4,r5                         ; 08049F2C
bhs   @@Code08049F12                ; 08049F2E
@@Code08049F30:
pop   {r4-r6}                       ; 08049F30
pop   {r0}                          ; 08049F32
bx    r0                            ; 08049F34
.pool                               ; 08049F36

Return08049F40:
; sprite 01A,087,0A1,0B3,0D4,13B,1BE-1C1 init
; sprite 05D,086,0F1,162,1B9 init+main (unused sprite IDs)
bx    lr                            ; 08049F40
.pool                               ; 08049F42

Return08049F44:
; command sprite 1DF-1E0,1E2-1E5,1E7,1E9,1EB,1ED-1EE,1F0,1F2,1F4,1F6,1F8,1FB-1FD main
bx    lr                            ; 08049F44
.pool                               ; 08049F46

Sub08049F48:
push  {r4,lr}                       ; 08049F48
lsl   r0,r0,0x10                    ; 08049F4A
lsr   r3,r0,0x10                    ; 08049F4C
lsl   r1,r1,0x10                    ; 08049F4E
mov   r4,0x0                        ; 08049F50
lsr   r2,r1,0x10                    ; 08049F52
asr   r0,r1,0x10                    ; 08049F54
cmp   r0,0x0                        ; 08049F56
bge   @@Code08049F62                ; 08049F58
neg   r0,r0                         ; 08049F5A
lsl   r0,r0,0x10                    ; 08049F5C
lsr   r2,r0,0x10                    ; 08049F5E
mov   r4,0x1                        ; 08049F60
@@Code08049F62:
ldr   r0,=Data081AF2CC              ; 08049F62
lsl   r1,r3,0x1                     ; 08049F64
add   r1,r1,r0                      ; 08049F66
lsl   r0,r2,0x10                    ; 08049F68
asr   r0,r0,0x8                     ; 08049F6A
mov   r2,0x0                        ; 08049F6C
ldsh  r1,[r1,r2]                    ; 08049F6E
mul   r0,r1                         ; 08049F70
mov   r1,0x80                       ; 08049F72
lsl   r1,r1,0x7                     ; 08049F74
add   r0,r0,r1                      ; 08049F76
asr   r0,r0,0x10                    ; 08049F78
cmp   r4,0x1                        ; 08049F7A
bne   @@Code08049F80                ; 08049F7C
neg   r0,r0                         ; 08049F7E
@@Code08049F80:
pop   {r4}                          ; 08049F80
pop   {r1}                          ; 08049F82
bx    r1                            ; 08049F84
.pool                               ; 08049F86

InitSpriteSlot:
; r0: pointer to sprite slot
; r1: sprite ID
push  {r4-r7,lr}                    ; 08049F8C
mov   r7,r10                        ; 08049F8E
mov   r6,r9                         ; 08049F90
mov   r5,r8                         ; 08049F92
push  {r5-r7}                       ; 08049F94
mov   r12,r0                        ; 08049F96
lsl   r1,r1,0x10                    ; 08049F98
lsr   r1,r1,0x10                    ; 08049F9A
mov   r10,r1                        ; 08049F9C
mov   r0,0x0                        ; 08049F9E
mov   r1,r12                        ; 08049FA0
str   r0,[r1,0x8]                   ; 08049FA2
str   r0,[r1,0xC]                   ; 08049FA4
str   r0,[r1,0x10]                  ; 08049FA6
str   r0,[r1,0x18]                  ; 08049FA8
mov   r2,0x0                        ; 08049FAA
strh  r0,[r1,0x20]                  ; 08049FAC
strh  r0,[r1,0x22]                  ; 08049FAE
strh  r0,[r1,0x38]                  ; 08049FB0
strh  r0,[r1,0x3A]                  ; 08049FB2
strh  r0,[r1,0x3E]                  ; 08049FB4
add   r1,0x40                       ; 08049FB6  +40
strh  r0,[r1]                       ; 08049FB8
add   r1,0x2                        ; 08049FBA  +42
strh  r0,[r1]                       ; 08049FBC
add   r1,0x2                        ; 08049FBE  +44
strh  r0,[r1]                       ; 08049FC0
add   r1,0x2                        ; 08049FC2  +46
strh  r0,[r1]                       ; 08049FC4
add   r1,0x2                        ; 08049FC6  +48
strh  r0,[r1]                       ; 08049FC8
add   r1,0x16                       ; 08049FCA  +5E
strh  r0,[r1]                       ; 08049FCC
add   r1,0x6                        ; 08049FCE  +64
strh  r0,[r1]                       ; 08049FD0
add   r1,0x4                        ; 08049FD2  +68
strh  r0,[r1]                       ; 08049FD4
add   r1,0x2                        ; 08049FD6  +6A
strh  r0,[r1]                       ; 08049FD8
add   r1,0x2                        ; 08049FDA  +6C
strh  r0,[r1]                       ; 08049FDC
add   r1,0x2                        ; 08049FDE  +6E
strh  r0,[r1]                       ; 08049FE0
add   r1,0x2                        ; 08049FE2  +70
strh  r0,[r1]                       ; 08049FE4
add   r1,0x2                        ; 08049FE6  +72
strh  r0,[r1]                       ; 08049FE8
add   r1,0x2                        ; 08049FEA  +74
strh  r0,[r1]                       ; 08049FEC
add   r1,0x2                        ; 08049FEE  +76
strh  r0,[r1]                       ; 08049FF0
add   r1,0x2                        ; 08049FF2  +78
strh  r0,[r1]                       ; 08049FF4
add   r1,0x2                        ; 08049FF6  +7A
strh  r0,[r1]                       ; 08049FF8
add   r1,0x2                        ; 08049FFA  +7C
strh  r0,[r1]                       ; 08049FFC
add   r1,0xC                        ; 08049FFE  +88
strh  r0,[r1]                       ; 0804A000
add   r1,0x6                        ; 0804A002  +8E
strh  r0,[r1]                       ; 0804A004
add   r1,0x2                        ; 0804A006  +90
strh  r0,[r1]                       ; 0804A008
add   r1,0x2                        ; 0804A00A  +92
strh  r0,[r1]                       ; 0804A00C
mov   r0,r12                        ; 0804A00E
add   r0,0x95                       ; 0804A010  +95
strb  r2,[r0]                       ; 0804A012
add   r0,0x1                        ; 0804A014  +96
strb  r2,[r0]                       ; 0804A016
add   r0,0x1                        ; 0804A018  +97
strb  r2,[r0]                       ; 0804A01A
add   r0,0x6                        ; 0804A01C  +9D
strb  r2,[r0]                       ; 0804A01E
add   r0,0x1                        ; 0804A020  +9E
strb  r2,[r0]                       ; 0804A022
add   r0,0x5                        ; 0804A024  +A3
strb  r2,[r0]                       ; 0804A026
add   r0,0x1                        ; 0804A028  +A4
strb  r2,[r0]                       ; 0804A02A
add   r0,0x7                        ; 0804A02C  +AB
strb  r2,[r0]                       ; 0804A02E
add   r0,0x1                        ; 0804A030  +AC
strb  r2,[r0]                       ; 0804A032
add   r0,0x1                        ; 0804A034  +AD
strb  r2,[r0]                       ; 0804A036
sub   r0,0x21                       ; 0804A038  +8C
mov   r1,0x80                       ; 0804A03A
lsl   r1,r1,0x1                     ; 0804A03C  0100
strh  r1,[r0]                       ; 0804A03E
sub   r0,0x2                        ; 0804A040  +8A
strh  r1,[r0]                       ; 0804A042
ldr   r0,=0xFFFF                    ; 0804A044
mov   r2,r12                        ; 0804A046
strh  r0,[r2,0x3C]                  ; 0804A048
mov   r0,0x1                        ; 0804A04A
neg   r0,r0                         ; 0804A04C  FFFFFFFF
strh  r0,[r2,0x34]                  ; 0804A04E
mov   r1,r12                        ; 0804A050
add   r1,0xA1                       ; 0804A052  +A1
mov   r0,0xFF                       ; 0804A054
strb  r0,[r1]                       ; 0804A056
add   r1,0x1                        ; 0804A058  +A2
mov   r0,0x1F                       ; 0804A05A
strb  r0,[r1]                       ; 0804A05C
mov   r3,r10                        ; 0804A05E
strh  r3,[r2,0x32]                  ; 0804A060  set sprite ID
ldr   r0,=0x03007240                ; 0804A062  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0804A064
mov   r0,0xA6                       ; 0804A066
lsl   r0,r0,0x6                     ; 0804A068  2980
add   r5,r1,r0                      ; 0804A06A
ldr   r2,=StdSprStripeIDs           ; 0804A06C
mov   r3,r12                        ; 0804A06E
ldrh  r0,[r3,0x32]                  ; 0804A070
lsl   r0,r0,0x1                     ; 0804A072
add   r0,r0,r2                      ; 0804A074
ldrh  r3,[r0]                       ; 0804A076
mov   r4,0x0                        ; 0804A078
mov   r2,0x5                        ; 0804A07A
ldr   r0,=0x298A                    ; 0804A07C
add   r1,r1,r0                      ; 0804A07E
ldr   r6,=StdSprData_94_2C          ; 0804A080
ldr   r7,=StdSprData_14_1C          ; 0804A082
ldr   r0,=StdSprData_2A             ; 0804A084
mov   r8,r0                         ; 0804A086
ldr   r0,=StdSprHitboxParam         ; 0804A088
mov   r9,r0                         ; 0804A08A
ldrh  r1,[r1]                       ; 0804A08C
cmp   r3,r1                         ; 0804A08E
bne   @@Code0804A0B8                ; 0804A090
mov   r4,0x34                       ; 0804A092
b     @@Code0804A0CE                ; 0804A094
.pool                               ; 0804A096

@@Code0804A0B8:
sub   r2,0x1                        ; 0804A0B8
cmp   r2,0x0                        ; 0804A0BA
blt   @@Code0804A0CE                ; 0804A0BC
lsl   r0,r2,0x1                     ; 0804A0BE
add   r0,r0,r5                      ; 0804A0C0
ldrh  r0,[r0]                       ; 0804A0C2
cmp   r3,r0                         ; 0804A0C4
bne   @@Code0804A0B8                ; 0804A0C6
mov   r0,r2                         ; 0804A0C8
add   r0,0x8                        ; 0804A0CA
lsl   r4,r0,0x2                     ; 0804A0CC
@@Code0804A0CE:
mov   r0,r12                        ; 0804A0CE
add   r0,0x98                       ; 0804A0D0
strb  r4,[r0]                       ; 0804A0D2
mov   r1,r10                        ; 0804A0D4
lsl   r3,r1,0x1                     ; 0804A0D6
add   r2,r3,0x1                     ; 0804A0D8
add   r0,r2,r6                      ; 0804A0DA
ldrb  r1,[r0]                       ; 0804A0DC
mov   r0,0x20                       ; 0804A0DE
eor   r0,r1                         ; 0804A0E0
mov   r1,r12                        ; 0804A0E2
strh  r0,[r1,0x2C]                  ; 0804A0E4
add   r0,r3,r6                      ; 0804A0E6
ldrb  r1,[r0]                       ; 0804A0E8
mov   r0,r12                        ; 0804A0EA
add   r0,0x94                       ; 0804A0EC
strb  r1,[r0]                       ; 0804A0EE
add   r0,r3,r7                      ; 0804A0F0
ldrb  r0,[r0]                       ; 0804A0F2
lsl   r0,r0,0x18                    ; 0804A0F4
asr   r0,r0,0x18                    ; 0804A0F6
mov   r1,r12                        ; 0804A0F8
str   r0,[r1,0x14]                  ; 0804A0FA
add   r2,r2,r7                      ; 0804A0FC
mov   r0,0x0                        ; 0804A0FE
ldsb  r0,[r2,r0]                    ; 0804A100
lsl   r0,r0,0x4                     ; 0804A102
str   r0,[r1,0x1C]                  ; 0804A104
add   r3,r8                         ; 0804A106
ldrh  r0,[r3]                       ; 0804A108
strh  r0,[r1,0x2A]                  ; 0804A10A
ldr   r1,=0xFFFFFC78                ; 0804A10C
add   r3,r3,r1                      ; 0804A10E
ldrh  r0,[r3]                       ; 0804A110
mov   r2,r12                        ; 0804A112
strh  r0,[r2,0x28]                  ; 0804A114
add   r3,r3,r1                      ; 0804A116
ldrh  r0,[r3]                       ; 0804A118
strh  r0,[r2,0x26]                  ; 0804A11A
ldrh  r1,[r3]                       ; 0804A11C
mov   r0,0x1F                       ; 0804A11E
and   r0,r1                         ; 0804A120
lsl   r0,r0,0x3                     ; 0804A122
mov   r1,r9                         ; 0804A124
add   r3,r0,r1                      ; 0804A126
ldrh  r0,[r3]                       ; 0804A128
mov   r1,r12                        ; 0804A12A
add   r1,0x4A                       ; 0804A12C
strh  r0,[r1]                       ; 0804A12E
ldrh  r1,[r3,0x2]                   ; 0804A130
mov   r0,r12                        ; 0804A132
add   r0,0x4C                       ; 0804A134
strh  r1,[r0]                       ; 0804A136
ldrh  r0,[r3,0x4]                   ; 0804A138
mov   r1,r12                        ; 0804A13A
add   r1,0x4E                       ; 0804A13C
strh  r0,[r1]                       ; 0804A13E
ldrh  r1,[r3,0x6]                   ; 0804A140
mov   r0,r12                        ; 0804A142
add   r0,0x50                       ; 0804A144
strh  r1,[r0]                       ; 0804A146
pop   {r3-r5}                       ; 0804A148
mov   r8,r3                         ; 0804A14A
mov   r9,r4                         ; 0804A14C
mov   r10,r5                        ; 0804A14E
pop   {r4-r7}                       ; 0804A150
pop   {r0}                          ; 0804A152
bx    r0                            ; 0804A154
.pool                               ; 0804A156

InitSpriteSlotWithStatus:
; r0: sprite ID
; r1: sprite status
; r2: pointer to sprite slot
push  {r4,lr}                       ; 0804A15C
mov   r3,r0                         ; 0804A15E
mov   r12,r2                        ; 0804A160
lsl   r3,r3,0x10                    ; 0804A162
lsr   r3,r3,0x10                    ; 0804A164
lsl   r1,r1,0x18                    ; 0804A166
lsr   r1,r1,0x18                    ; 0804A168
mov   r4,0x0                        ; 0804A16A
mov   r2,0x0                        ; 0804A16C
mov   r0,r12                        ; 0804A16E
strh  r1,[r0,0x24]                  ; 0804A170  set sprite status
mov   r1,r12                        ; 0804A172
add   r1,0x9B                       ; 0804A174
mov   r0,0xFF                       ; 0804A176
strb  r0,[r1]                       ; 0804A178
mov   r0,r12                        ; 0804A17A
add   r0,0x9C                       ; 0804A17C
strb  r4,[r0]                       ; 0804A17E
sub   r0,0x3C                       ; 0804A180
strh  r2,[r0]                       ; 0804A182
mov   r0,r12                        ; 0804A184
strh  r2,[r0,0x36]                  ; 0804A186
add   r0,0x66                       ; 0804A188
strh  r2,[r0]                       ; 0804A18A
sub   r0,0x4                        ; 0804A18C
strh  r2,[r0]                       ; 0804A18E
mov   r0,r12                        ; 0804A190  r0 = pointer to sprite slot
mov   r1,r3                         ; 0804A192  r1 = sprite ID
bl    InitSpriteSlot                ; 0804A194
pop   {r4}                          ; 0804A198
pop   {r0}                          ; 0804A19A
bx    r0                            ; 0804A19C
.pool                               ; 0804A19E

Sub0804A1A0:
push  {r4,lr}                       ; 0804A1A0
lsl   r0,r0,0x10                    ; 0804A1A2
lsr   r3,r0,0x10                    ; 0804A1A4
lsl   r1,r1,0x18                    ; 0804A1A6
lsr   r1,r1,0x18                    ; 0804A1A8
ldr   r0,=0x03007240                ; 0804A1AA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804A1AC
mov   r4,0x95                       ; 0804A1AE
lsl   r4,r4,0x2                     ; 0804A1B0  0254
add   r2,r0,r4                      ; 0804A1B2  pointer to sprite structs
mov   r4,0x0                        ; 0804A1B4
cmp   r4,r1                         ; 0804A1B6
bhi   @@Code0804A1DC                ; 0804A1B8
@@Code0804A1BA:
ldrh  r0,[r2,0x24]                  ; 0804A1BA
cmp   r0,0x0                        ; 0804A1BC
bne   @@Code0804A1D0                ; 0804A1BE
mov   r0,r3                         ; 0804A1C0
mov   r1,0x8                        ; 0804A1C2
bl    InitSpriteSlotWithStatus      ; 0804A1C4
mov   r0,r4                         ; 0804A1C8
b     @@Code0804A1DE                ; 0804A1CA
.pool                               ; 0804A1CC

@@Code0804A1D0:
add   r2,0xB0                       ; 0804A1D0
add   r0,r4,0x1                     ; 0804A1D2
lsl   r0,r0,0x18                    ; 0804A1D4
lsr   r4,r0,0x18                    ; 0804A1D6
cmp   r4,r1                         ; 0804A1D8
bls   @@Code0804A1BA                ; 0804A1DA
@@Code0804A1DC:
mov   r0,0xFF                       ; 0804A1DC
@@Code0804A1DE:
pop   {r4}                          ; 0804A1DE
pop   {r1}                          ; 0804A1E0
bx    r1                            ; 0804A1E2

SpawnSpriteMainLowestSlot:
push  {lr}                          ; 0804A1E4
lsl   r0,r0,0x10                    ; 0804A1E6
lsr   r0,r0,0x10                    ; 0804A1E8
mov   r1,0x17                       ; 0804A1EA
bl    Sub0804A1A0                   ; 0804A1EC  Spawn sprite in lowest slot (max r1)
lsl   r0,r0,0x18                    ; 0804A1F0
lsr   r0,r0,0x18                    ; 0804A1F2
pop   {r1}                          ; 0804A1F4
bx    r1                            ; 0804A1F6

Sub0804A1F8:
push  {r4,lr}                       ; 0804A1F8
lsl   r0,r0,0x10                    ; 0804A1FA
lsr   r3,r0,0x10                    ; 0804A1FC
lsl   r1,r1,0x18                    ; 0804A1FE
lsr   r1,r1,0x18                    ; 0804A200
ldr   r0,=0x03007240                ; 0804A202  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804A204
mov   r4,0x95                       ; 0804A206
lsl   r4,r4,0x2                     ; 0804A208
add   r2,r0,r4                      ; 0804A20A
mov   r4,0x0                        ; 0804A20C
cmp   r4,r1                         ; 0804A20E
bhi   @@Code0804A234                ; 0804A210
@@Code0804A212:
ldrh  r0,[r2,0x24]                  ; 0804A212
cmp   r0,0x0                        ; 0804A214
bne   @@Code0804A228                ; 0804A216
mov   r0,r3                         ; 0804A218
mov   r1,0x1                        ; 0804A21A
bl    InitSpriteSlotWithStatus      ; 0804A21C
mov   r0,r4                         ; 0804A220
b     @@Code0804A236                ; 0804A222
.pool                               ; 0804A224

@@Code0804A228:
add   r2,0xB0                       ; 0804A228
add   r0,r4,0x1                     ; 0804A22A
lsl   r0,r0,0x18                    ; 0804A22C
lsr   r4,r0,0x18                    ; 0804A22E
cmp   r4,r1                         ; 0804A230
bls   @@Code0804A212                ; 0804A232
@@Code0804A234:
mov   r0,0xFF                       ; 0804A234
@@Code0804A236:
pop   {r4}                          ; 0804A236
pop   {r1}                          ; 0804A238
bx    r1                            ; 0804A23A

Sub0804A23C:
push  {lr}                          ; 0804A23C
lsl   r0,r0,0x10                    ; 0804A23E
lsr   r0,r0,0x10                    ; 0804A240
mov   r1,0x17                       ; 0804A242
bl    Sub0804A1F8                   ; 0804A244
lsl   r0,r0,0x18                    ; 0804A248
lsr   r0,r0,0x18                    ; 0804A24A
pop   {r1}                          ; 0804A24C
bx    r1                            ; 0804A24E

Sub0804A250:
push  {lr}                          ; 0804A250
lsl   r1,r1,0x10                    ; 0804A252
lsr   r1,r1,0x10                    ; 0804A254
bl    InitSpriteSlot                ; 0804A256
pop   {r0}                          ; 0804A25A
bx    r0                            ; 0804A25C
.pool                               ; 0804A25E

Sub0804A260:
push  {r4,lr}                       ; 0804A260
lsl   r0,r0,0x10                    ; 0804A262
lsr   r3,r0,0x10                    ; 0804A264
lsl   r1,r1,0x18                    ; 0804A266
lsr   r1,r1,0x18                    ; 0804A268
ldr   r2,=0x03007240                ; 0804A26A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0804A26C
mul   r0,r1                         ; 0804A26E
mov   r4,0x95                       ; 0804A270
lsl   r4,r4,0x2                     ; 0804A272
add   r0,r0,r4                      ; 0804A274
ldr   r2,[r2]                       ; 0804A276
add   r2,r2,r0                      ; 0804A278
mov   r4,r1                         ; 0804A27A
lsl   r0,r4,0x18                    ; 0804A27C
cmp   r0,0x0                        ; 0804A27E
blt   @@Code0804A2A4                ; 0804A280
@@Code0804A282:
ldrh  r0,[r2,0x24]                  ; 0804A282
cmp   r0,0x0                        ; 0804A284
bne   @@Code0804A298                ; 0804A286
mov   r0,r3                         ; 0804A288
mov   r1,0x8                        ; 0804A28A
bl    InitSpriteSlotWithStatus      ; 0804A28C
mov   r0,r4                         ; 0804A290
b     @@Code0804A2A6                ; 0804A292
.pool                               ; 0804A294

@@Code0804A298:
sub   r2,0xB0                       ; 0804A298
sub   r0,r4,0x1                     ; 0804A29A
lsl   r0,r0,0x18                    ; 0804A29C
lsr   r4,r0,0x18                    ; 0804A29E
cmp   r0,0x0                        ; 0804A2A0
bge   @@Code0804A282                ; 0804A2A2
@@Code0804A2A4:
mov   r0,0xFF                       ; 0804A2A4
@@Code0804A2A6:
pop   {r4}                          ; 0804A2A6
pop   {r1}                          ; 0804A2A8
bx    r1                            ; 0804A2AA

Sub0804A2AC:
push  {r4,lr}                       ; 0804A2AC
lsl   r0,r0,0x10                    ; 0804A2AE
lsr   r1,r0,0x10                    ; 0804A2B0
ldr   r0,=0x03007240                ; 0804A2B2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804A2B4
ldr   r3,=0x1224                    ; 0804A2B6
add   r2,r0,r3                      ; 0804A2B8
mov   r4,0x17                       ; 0804A2BA
@@Code0804A2BC:
ldrh  r0,[r2,0x24]                  ; 0804A2BC
cmp   r0,0x0                        ; 0804A2BE
bne   @@Code0804A2D8                ; 0804A2C0
mov   r0,r1                         ; 0804A2C2
mov   r1,0x1                        ; 0804A2C4
bl    InitSpriteSlotWithStatus      ; 0804A2C6
mov   r0,r4                         ; 0804A2CA
b     @@Code0804A2E6                ; 0804A2CC
.pool                               ; 0804A2CE

@@Code0804A2D8:
sub   r2,0xB0                       ; 0804A2D8
sub   r0,r4,0x1                     ; 0804A2DA
lsl   r0,r0,0x18                    ; 0804A2DC
lsr   r4,r0,0x18                    ; 0804A2DE
cmp   r0,0x0                        ; 0804A2E0
bge   @@Code0804A2BC                ; 0804A2E2
mov   r0,0xFF                       ; 0804A2E4
@@Code0804A2E6:
pop   {r4}                          ; 0804A2E6
pop   {r1}                          ; 0804A2E8
bx    r1                            ; 0804A2EA

Sub0804A2EC:
push  {r4,lr}                       ; 0804A2EC
lsl   r0,r0,0x10                    ; 0804A2EE
lsr   r3,r0,0x10                    ; 0804A2F0
lsl   r1,r1,0x18                    ; 0804A2F2
lsr   r1,r1,0x18                    ; 0804A2F4
mov   r4,r1                         ; 0804A2F6
ldr   r1,=0x03007240                ; 0804A2F8  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0804A2FA
mul   r0,r4                         ; 0804A2FC
mov   r2,0x95                       ; 0804A2FE
lsl   r2,r2,0x2                     ; 0804A300
add   r0,r0,r2                      ; 0804A302
ldr   r1,[r1]                       ; 0804A304
add   r2,r1,r0                      ; 0804A306
ldrh  r0,[r2,0x24]                  ; 0804A308
cmp   r0,0x0                        ; 0804A30A
bne   @@Code0804A316                ; 0804A30C
mov   r0,r3                         ; 0804A30E
mov   r1,0x8                        ; 0804A310
bl    InitSpriteSlotWithStatus      ; 0804A312
@@Code0804A316:
mov   r0,r4                         ; 0804A316
pop   {r4}                          ; 0804A318
pop   {r1}                          ; 0804A31A
bx    r1                            ; 0804A31C
.pool                               ; 0804A31E

Sub0804A324:
push  {r4,lr}                       ; 0804A324
lsl   r0,r0,0x10                    ; 0804A326
lsr   r1,r0,0x10                    ; 0804A328
ldr   r0,=0x03007240                ; 0804A32A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804A32C
ldr   r3,=0x1224                    ; 0804A32E
add   r2,r0,r3                      ; 0804A330
mov   r4,0x17                       ; 0804A332
@@Code0804A334:
ldrh  r0,[r2,0x24]                  ; 0804A334
cmp   r0,0x0                        ; 0804A336
bne   @@Code0804A350                ; 0804A338
mov   r0,r1                         ; 0804A33A
mov   r1,0x8                        ; 0804A33C
bl    InitSpriteSlotWithStatus      ; 0804A33E
mov   r0,r4                         ; 0804A342
b     @@Code0804A35E                ; 0804A344
.pool                               ; 0804A346

@@Code0804A350:
sub   r2,0xB0                       ; 0804A350
sub   r0,r4,0x1                     ; 0804A352
lsl   r0,r0,0x18                    ; 0804A354
lsr   r4,r0,0x18                    ; 0804A356
cmp   r0,0x0                        ; 0804A358
bge   @@Code0804A334                ; 0804A35A
mov   r0,0xFF                       ; 0804A35C
@@Code0804A35E:
pop   {r4}                          ; 0804A35E
pop   {r1}                          ; 0804A360
bx    r1                            ; 0804A362

Sub0804A364:
push  {r4,lr}                       ; 0804A364
lsl   r0,r0,0x10                    ; 0804A366
lsr   r1,r0,0x10                    ; 0804A368
ldr   r0,=0x03007240                ; 0804A36A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804A36C
ldr   r3,=0x1224                    ; 0804A36E
add   r2,r0,r3                      ; 0804A370
mov   r4,0x17                       ; 0804A372
@@Code0804A374:
ldrh  r0,[r2,0x24]                  ; 0804A374
cmp   r0,0x0                        ; 0804A376
bne   @@Code0804A390                ; 0804A378
mov   r0,r1                         ; 0804A37A
mov   r1,0x1                        ; 0804A37C
bl    InitSpriteSlotWithStatus      ; 0804A37E
mov   r0,r4                         ; 0804A382
b     @@Code0804A39E                ; 0804A384
.pool                               ; 0804A386

@@Code0804A390:
sub   r2,0xB0                       ; 0804A390
sub   r0,r4,0x1                     ; 0804A392
lsl   r0,r0,0x18                    ; 0804A394
lsr   r4,r0,0x18                    ; 0804A396
cmp   r0,0x0                        ; 0804A398
bge   @@Code0804A374                ; 0804A39A
mov   r0,0xFF                       ; 0804A39C
@@Code0804A39E:
pop   {r4}                          ; 0804A39E
pop   {r1}                          ; 0804A3A0
bx    r1                            ; 0804A3A2

Sub0804A3A4:
push  {lr}                          ; 0804A3A4
lsl   r0,r0,0x10                    ; 0804A3A6
lsr   r0,r0,0x10                    ; 0804A3A8
mov   r1,0x17                       ; 0804A3AA
bl    Sub0804A324                   ; 0804A3AC
lsl   r0,r0,0x18                    ; 0804A3B0
lsr   r0,r0,0x18                    ; 0804A3B2
pop   {r1}                          ; 0804A3B4
bx    r1                            ; 0804A3B6

Sub0804A3B8:
push  {r4,lr}                       ; 0804A3B8
mov   r4,r0                         ; 0804A3BA
mov   r0,0xEF                       ; 0804A3BC
lsl   r0,r0,0x1                     ; 0804A3BE
bl    SpawnSecondarySprite          ; 0804A3C0
lsl   r0,r0,0x18                    ; 0804A3C4
lsr   r0,r0,0x18                    ; 0804A3C6
ldr   r2,=0x03007240                ; 0804A3C8  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0804A3CA
mul   r1,r0                         ; 0804A3CC
ldr   r3,=0x1AF4                    ; 0804A3CE
add   r1,r1,r3                      ; 0804A3D0
ldr   r2,[r2]                       ; 0804A3D2
add   r2,r2,r1                      ; 0804A3D4
mov   r3,r2                         ; 0804A3D6
add   r3,0x6A                       ; 0804A3D8
mov   r1,0xB                        ; 0804A3DA
strh  r1,[r3]                       ; 0804A3DC
sub   r3,0x28                       ; 0804A3DE
mov   r1,0x6                        ; 0804A3E0
strh  r1,[r3]                       ; 0804A3E2
ldr   r1,[r4]                       ; 0804A3E4
str   r1,[r2]                       ; 0804A3E6
ldr   r1,[r4,0x4]                   ; 0804A3E8
str   r1,[r2,0x4]                   ; 0804A3EA
pop   {r4}                          ; 0804A3EC
pop   {r1}                          ; 0804A3EE
bx    r1                            ; 0804A3F0
.pool                               ; 0804A3F2

Sub0804A3FC:
push  {lr}                          ; 0804A3FC
bl    Sub0804A3B8                   ; 0804A3FE
mov   r1,r0                         ; 0804A402
lsl   r1,r1,0x18                    ; 0804A404
lsr   r1,r1,0x18                    ; 0804A406
ldr   r3,=0x03007240                ; 0804A408  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r2,0xB0                       ; 0804A40A
mul   r1,r2                         ; 0804A40C
ldr   r2,[r3]                       ; 0804A40E
add   r1,r1,r2                      ; 0804A410
ldr   r2,=0x1B62                    ; 0804A412
add   r1,r1,r2                      ; 0804A414
mov   r2,0x1                        ; 0804A416
strh  r2,[r1]                       ; 0804A418
pop   {r1}                          ; 0804A41A
bx    r1                            ; 0804A41C
.pool                               ; 0804A41E

Sub0804A428:
push  {r4-r5,lr}                    ; 0804A428
ldr   r0,=0x01C9                    ; 0804A42A
bl    SpawnSecondarySprite          ; 0804A42C
lsl   r0,r0,0x18                    ; 0804A430
lsr   r0,r0,0x18                    ; 0804A432
mov   r4,r0                         ; 0804A434
ldr   r1,=0x03007240                ; 0804A436  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0804A438
mul   r0,r4                         ; 0804A43A
ldr   r2,=0x1AF4                    ; 0804A43C
add   r0,r0,r2                      ; 0804A43E
ldr   r1,[r1]                       ; 0804A440
add   r3,r1,r0                      ; 0804A442
ldr   r5,=0x29D2                    ; 0804A444
add   r0,r1,r5                      ; 0804A446
ldrh  r0,[r0]                       ; 0804A448
lsl   r0,r0,0x8                     ; 0804A44A
str   r0,[r3]                       ; 0804A44C
ldr   r2,=0x29D6                    ; 0804A44E
add   r0,r1,r2                      ; 0804A450
ldrh  r0,[r0]                       ; 0804A452
lsl   r0,r0,0x8                     ; 0804A454
str   r0,[r3,0x4]                   ; 0804A456
mov   r5,0x42                       ; 0804A458
mov   r2,0x0                        ; 0804A45A
mov   r0,0x48                       ; 0804A45C
strh  r0,[r5,r3]                    ; 0804A45E
str   r2,[r3,0xC]                   ; 0804A460
ldr   r0,=0x29DA                    ; 0804A462
add   r1,r1,r0                      ; 0804A464
ldrh  r0,[r1]                       ; 0804A466
strh  r0,[r3,0x38]                  ; 0804A468
ldrh  r0,[r1]                       ; 0804A46A
cmp   r0,0x1                        ; 0804A46C
bhi   @@Code0804A478                ; 0804A46E
mov   r1,r3                         ; 0804A470
add   r1,0x76                       ; 0804A472
mov   r0,0x80                       ; 0804A474
strh  r0,[r1]                       ; 0804A476
@@Code0804A478:
mov   r0,r4                         ; 0804A478
pop   {r4-r5}                       ; 0804A47A
pop   {r1}                          ; 0804A47C
bx    r1                            ; 0804A47E
.pool                               ; 0804A480

SpawnLifeSecSpr:
; Gives lives, plays sound effect, and spawns secondary sprite
; r0: number of lives to give. Seems to only work properly with 1, 3, or (partially implemented) 5
push  {r4-r7,lr}                    ; 0804A498
lsl   r0,r0,0x10                    ; 0804A49A
lsr   r0,r0,0x10                    ; 0804A49C
mov   r3,r0                         ; 0804A49E
ldr   r7,=0x03007240                ; 0804A4A0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r7]                       ; 0804A4A2
ldr   r1,=0x266C                    ; 0804A4A4
add   r4,r0,r1                      ; 0804A4A6
ldr   r6,=0x29DA                    ; 0804A4A8
add   r0,r0,r6                      ; 0804A4AA
strh  r3,[r0]                       ; 0804A4AC
ldr   r5,=0x03002200                ; 0804A4AE
ldr   r0,=0x407E                    ; 0804A4B0
add   r1,r5,r0                      ; 0804A4B2
ldrh  r0,[r1]                       ; 0804A4B4
add   r0,r3,r0                      ; 0804A4B6
strh  r0,[r1]                       ; 0804A4B8
lsl   r0,r0,0x10                    ; 0804A4BA
lsr   r0,r0,0x10                    ; 0804A4BC
ldr   r2,=0x03E7                    ; 0804A4BE
cmp   r0,r2                         ; 0804A4C0
bls   @@Code0804A4C6                ; 0804A4C2
strh  r2,[r1]                       ; 0804A4C4
@@Code0804A4C6:
ldrh  r0,[r4,0x2]                   ; 0804A4C6
add   r0,r3,r0                      ; 0804A4C8
strh  r0,[r4,0x2]                   ; 0804A4CA
ldr   r0,=0x4058                    ; 0804A4CC
add   r1,r5,r0                      ; 0804A4CE
mov   r0,0x6E                       ; 0804A4D0
bl    PlayYISound                   ; 0804A4D2
ldr   r1,[r7]                       ; 0804A4D6
add   r1,r1,r6                      ; 0804A4D8
ldrh  r0,[r1]                       ; 0804A4DA
lsr   r0,r0,0x1                     ; 0804A4DC
strh  r0,[r1]                       ; 0804A4DE
bl    Sub0804A428                   ; 0804A4E0
lsl   r0,r0,0x18                    ; 0804A4E4
lsr   r0,r0,0x18                    ; 0804A4E6
pop   {r4-r7}                       ; 0804A4E8
pop   {r1}                          ; 0804A4EA
bx    r1                            ; 0804A4EC
.pool                               ; 0804A4EE

Spawn1upSecSpr:
push  {lr}                          ; 0804A50C
mov   r0,0x1                        ; 0804A50E
bl    SpawnLifeSecSpr               ; 0804A510
lsl   r0,r0,0x18                    ; 0804A514
lsr   r0,r0,0x18                    ; 0804A516
pop   {r1}                          ; 0804A518
bx    r1                            ; 0804A51A

Spawn1upAtSprCoords:
; r0: pointer to sprite struct
push  {r4,lr}                       ; 0804A51C
ldr   r1,=0x03007240                ; 0804A51E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r1]                       ; 0804A520
ldr   r1,[r0]                       ; 0804A522  sprite X, in pixels, *0x100
asr   r1,r1,0x8                     ; 0804A524  sprite X, in pixels
ldr   r4,=0x29D2                    ; 0804A526
add   r2,r3,r4                      ; 0804A528  [03007240]+29D2 (03004BDE)
strh  r1,[r2]                       ; 0804A52A
ldr   r0,[r0,0x4]                   ; 0804A52C  sprite Y, in pixels, *0x100
asr   r0,r0,0x8                     ; 0804A52E  sprite Y, in pixels
ldr   r1,=0x29D6                    ; 0804A530
add   r3,r3,r1                      ; 0804A532
strh  r0,[r3]                       ; 0804A534  [03007240]+29D6 (03004BE2)
mov   r0,0x1                        ; 0804A536
bl    SpawnLifeSecSpr               ; 0804A538
pop   {r4}                          ; 0804A53C
pop   {r0}                          ; 0804A53E
bx    r0                            ; 0804A540
.pool                               ; 0804A542

Spawn3upSecSpr:
push  {lr}                          ; 0804A550
mov   r0,0x3                        ; 0804A552
bl    SpawnLifeSecSpr               ; 0804A554
pop   {r0}                          ; 0804A558
bx    r0                            ; 0804A55A

Sub0804A55C:
push  {r4-r5,lr}                    ; 0804A55C
ldr   r5,=0x03007240                ; 0804A55E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x03002200                ; 0804A560
mov   r1,0x81                       ; 0804A562
lsl   r1,r1,0x7                     ; 0804A564
add   r4,r0,r1                      ; 0804A566
ldrh  r0,[r4]                       ; 0804A568
add   r0,0x1                        ; 0804A56A
strh  r0,[r4]                       ; 0804A56C
lsl   r0,r0,0x10                    ; 0804A56E
lsr   r0,r0,0x10                    ; 0804A570
cmp   r0,0x63                       ; 0804A572
bls   @@Code0804A592                ; 0804A574
bl    Spawn1upSecSpr                ; 0804A576
lsl   r0,r0,0x18                    ; 0804A57A
lsr   r0,r0,0x18                    ; 0804A57C
mov   r1,0xB0                       ; 0804A57E
mul   r0,r1                         ; 0804A580
ldr   r1,[r5]                       ; 0804A582
add   r0,r0,r1                      ; 0804A584
ldr   r1,=0x1B36                    ; 0804A586
add   r0,r0,r1                      ; 0804A588
mov   r1,0x50                       ; 0804A58A
strh  r1,[r0]                       ; 0804A58C
mov   r0,0x0                        ; 0804A58E
strh  r0,[r4]                       ; 0804A590
@@Code0804A592:
pop   {r4-r5}                       ; 0804A592
pop   {r0}                          ; 0804A594
bx    r0                            ; 0804A596
.pool                               ; 0804A598

Sub0804A5A4:
push  {r4-r5,lr}                    ; 0804A5A4
ldr   r5,=0x03007240                ; 0804A5A6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r5]                       ; 0804A5A8
ldr   r4,=0x29D6                    ; 0804A5AA
add   r1,r1,r4                      ; 0804A5AC
strh  r0,[r1]                       ; 0804A5AE
mov   r0,0x8C                       ; 0804A5B0
lsl   r0,r0,0x2                     ; 0804A5B2
bl    SpawnSecondarySprite          ; 0804A5B4
lsl   r0,r0,0x18                    ; 0804A5B8
lsr   r0,r0,0x18                    ; 0804A5BA
mov   r1,0xB0                       ; 0804A5BC
mul   r0,r1                         ; 0804A5BE
ldr   r1,=0x1AF4                    ; 0804A5C0
add   r0,r0,r1                      ; 0804A5C2
ldr   r5,[r5]                       ; 0804A5C4
add   r2,r5,r0                      ; 0804A5C6
ldr   r3,=0x29D2                    ; 0804A5C8
add   r0,r5,r3                      ; 0804A5CA
ldrh  r0,[r0]                       ; 0804A5CC
lsl   r0,r0,0x8                     ; 0804A5CE
str   r0,[r2]                       ; 0804A5D0
add   r4,r5,r4                      ; 0804A5D2
ldrh  r0,[r4]                       ; 0804A5D4
lsl   r0,r0,0x8                     ; 0804A5D6
str   r0,[r2,0x4]                   ; 0804A5D8
ldr   r1,=0x299A                    ; 0804A5DA
add   r0,r5,r1                      ; 0804A5DC
ldrh  r0,[r0]                       ; 0804A5DE
cmp   r0,0x1C                       ; 0804A5E0
bne   @@Code0804A610                ; 0804A5E2
ldrh  r1,[r2,0x2C]                  ; 0804A5E4
ldr   r0,=0xFFCF                    ; 0804A5E6
and   r0,r1                         ; 0804A5E8
add   r3,0xC                        ; 0804A5EA
add   r1,r5,r3                      ; 0804A5EC
ldrh  r1,[r1]                       ; 0804A5EE
orr   r0,r1                         ; 0804A5F0
strh  r0,[r2,0x2C]                  ; 0804A5F2
b     @@Code0804A61C                ; 0804A5F4
.pool                               ; 0804A5F6

@@Code0804A610:
ldr   r1,=0x29DE                    ; 0804A610
add   r0,r5,r1                      ; 0804A612
ldrh  r1,[r2,0x2C]                  ; 0804A614
ldrh  r0,[r0]                       ; 0804A616
orr   r1,r0                         ; 0804A618
strh  r1,[r2,0x2C]                  ; 0804A61A
@@Code0804A61C:
mov   r1,r2                         ; 0804A61C
add   r1,0x42                       ; 0804A61E
mov   r0,0x40                       ; 0804A620
strh  r0,[r1]                       ; 0804A622
ldr   r0,=0xFFFFFE80                ; 0804A624
str   r0,[r2,0xC]                   ; 0804A626
bl    Sub0804A55C                   ; 0804A628
pop   {r4-r5}                       ; 0804A62C
pop   {r0}                          ; 0804A62E
bx    r0                            ; 0804A630
.pool                               ; 0804A632

Sub0804A63C:
push  {r4,lr}                       ; 0804A63C
ldr   r2,=0x03007240                ; 0804A63E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r2]                       ; 0804A640
ldr   r4,=0x29DE                    ; 0804A642
add   r2,r3,r4                      ; 0804A644
strh  r1,[r2]                       ; 0804A646
ldr   r1,[r0]                       ; 0804A648
asr   r1,r1,0x8                     ; 0804A64A
ldr   r2,=0x29D2                    ; 0804A64C
add   r3,r3,r2                      ; 0804A64E
strh  r1,[r3]                       ; 0804A650
ldr   r0,[r0,0x4]                   ; 0804A652
lsl   r0,r0,0x8                     ; 0804A654
lsr   r0,r0,0x10                    ; 0804A656
bl    Sub0804A5A4                   ; 0804A658
pop   {r4}                          ; 0804A65C
pop   {r0}                          ; 0804A65E
bx    r0                            ; 0804A660
.pool                               ; 0804A662

Sub0804A670:
push  {r4-r5,lr}                    ; 0804A670
mov   r2,r0                         ; 0804A672
add   r0,0x94                       ; 0804A674
mov   r1,0xFF                       ; 0804A676
strb  r1,[r0]                       ; 0804A678
mov   r1,0x3C                       ; 0804A67A
ldsh  r0,[r2,r1]                    ; 0804A67C
ldr   r5,=0x0300702C                ; 0804A67E  Sprite RAM structs (03002460)
cmp   r0,0x0                        ; 0804A680
blt   @@Code0804A6BA                ; 0804A682
ldr   r3,[r5]                       ; 0804A684
ldrh  r2,[r2,0x3C]                  ; 0804A686
lsl   r1,r2,0x1                     ; 0804A688
ldr   r4,=0x114C                    ; 0804A68A
add   r0,r3,r4                      ; 0804A68C
add   r0,r0,r1                      ; 0804A68E
ldrh  r0,[r0]                       ; 0804A690
mvn   r0,r0                         ; 0804A692
lsl   r0,r0,0x10                    ; 0804A694
lsr   r4,r0,0x10                    ; 0804A696
mov   r0,0x10                       ; 0804A698
and   r2,r0                         ; 0804A69A
cmp   r2,0x0                        ; 0804A69C
beq   @@Code0804A6B0                ; 0804A69E
ldr   r0,=0x114A                    ; 0804A6A0
b     @@Code0804A6B2                ; 0804A6A2
.pool                               ; 0804A6A4

@@Code0804A6B0:
ldr   r0,=0x1148                    ; 0804A6B0
@@Code0804A6B2:
add   r1,r3,r0                      ; 0804A6B2
ldrh  r0,[r1]                       ; 0804A6B4
and   r0,r4                         ; 0804A6B6
strh  r0,[r1]                       ; 0804A6B8
@@Code0804A6BA:
ldr   r0,=0x03006D80                ; 0804A6BA
mov   r1,0xD8                       ; 0804A6BC
lsl   r1,r1,0x1                     ; 0804A6BE
add   r2,r0,r1                      ; 0804A6C0
ldr   r0,[r5]                       ; 0804A6C2
ldr   r4,=0x156E                    ; 0804A6C4
add   r0,r0,r4                      ; 0804A6C6
ldrh  r1,[r2]                       ; 0804A6C8
ldrb  r0,[r0]                       ; 0804A6CA
cmp   r1,r0                         ; 0804A6CC
bne   @@Code0804A6D4                ; 0804A6CE
mov   r0,0x0                        ; 0804A6D0
strh  r0,[r2]                       ; 0804A6D2
@@Code0804A6D4:
pop   {r4-r5}                       ; 0804A6D4
pop   {r0}                          ; 0804A6D6
bx    r0                            ; 0804A6D8
.pool                               ; 0804A6DA

ClearSpriteSlot:
push  {lr}                          ; 0804A6E8
mov   r1,0x0                        ; 0804A6EA  00: empty slot
strh  r1,[r0,0x24]                  ; 0804A6EC  clear sprite status
bl    Sub0804A670                   ; 0804A6EE
pop   {r0}                          ; 0804A6F2
bx    r0                            ; 0804A6F4
.pool                               ; 0804A6F6

DespawnSprite:
push  {lr}                          ; 0804A6F8
mov   r1,r0                         ; 0804A6FA
add   r1,0x9B                       ; 0804A6FC
ldrb  r1,[r1]                       ; 0804A6FE  sprite index in sublevel data
lsl   r1,r1,0x1                     ; 0804A700
ldr   r2,=0x0201BA00                ; 0804A702  sprite spawn flags
add   r1,r1,r2                      ; 0804A704
mov   r2,0x0                        ; 0804A706
strh  r2,[r1]                       ; 0804A708  clear this sprite's spawn flag
bl    ClearSpriteSlot               ; 0804A70A
pop   {r0}                          ; 0804A70E
bx    r0                            ; 0804A710
.pool                               ; 0804A712

Sub0804A718:
push  {lr}                          ; 0804A718
mov   r2,r0                         ; 0804A71A
lsl   r1,r1,0x18                    ; 0804A71C
ldr   r0,=0x03006D80                ; 0804A71E
ldr   r3,=0x021A                    ; 0804A720
add   r0,r0,r3                      ; 0804A722
ldrh  r0,[r0]                       ; 0804A724
cmp   r0,0x0                        ; 0804A726
beq   @@Code0804A750                ; 0804A728
ldr   r0,=0x03007240                ; 0804A72A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804A72C
lsr   r1,r1,0x1A                    ; 0804A72E
ldr   r3,=0x2B0F                    ; 0804A730
add   r0,r0,r3                      ; 0804A732
add   r0,r0,r1                      ; 0804A734
ldrb  r0,[r0]                       ; 0804A736
cmp   r0,0x0                        ; 0804A738
beq   @@Code0804A750                ; 0804A73A
mov   r0,0x0                        ; 0804A73C
b     @@Code0804A758                ; 0804A73E
.pool                               ; 0804A740

@@Code0804A750:
mov   r0,r2                         ; 0804A750
bl    DespawnSprite                 ; 0804A752
mov   r0,0x1                        ; 0804A756
@@Code0804A758:
pop   {r1}                          ; 0804A758
bx    r1                            ; 0804A75A

Sub0804A75C:
push  {lr}                          ; 0804A75C
mov   r2,r0                         ; 0804A75E
mov   r1,0x20                       ; 0804A760
ldsh  r0,[r2,r1]                    ; 0804A762
mov   r3,0x80                       ; 0804A764
lsl   r3,r3,0x1                     ; 0804A766
add   r1,r0,r3                      ; 0804A768
ldr   r0,=0x02FF                    ; 0804A76A
cmp   r1,r0                         ; 0804A76C
bhi   @@Code0804A788                ; 0804A76E
mov   r1,0x22                       ; 0804A770
ldsh  r0,[r2,r1]                    ; 0804A772
add   r1,r0,r3                      ; 0804A774
ldr   r0,=0x02DF                    ; 0804A776
cmp   r1,r0                         ; 0804A778
bhi   @@Code0804A788                ; 0804A77A
mov   r0,0x0                        ; 0804A77C
b     @@Code0804A78A                ; 0804A77E
.pool                               ; 0804A780

@@Code0804A788:
mov   r0,0x1                        ; 0804A788
@@Code0804A78A:
pop   {r1}                          ; 0804A78A
bx    r1                            ; 0804A78C
.pool                               ; 0804A78E

Sub0804A790:
push  {lr}                          ; 0804A790
mov   r2,r0                         ; 0804A792
ldrh  r0,[r2,0x20]                  ; 0804A794
add   r0,0x80                       ; 0804A796
lsl   r0,r0,0x10                    ; 0804A798
ldr   r1,=0x01FF0000                ; 0804A79A
cmp   r0,r1                         ; 0804A79C
bhi   @@Code0804A7B8                ; 0804A79E
ldrh  r0,[r2,0x22]                  ; 0804A7A0
add   r0,0x80                       ; 0804A7A2
lsl   r0,r0,0x10                    ; 0804A7A4
ldr   r1,=0x01DF0000                ; 0804A7A6
cmp   r0,r1                         ; 0804A7A8
bhi   @@Code0804A7B8                ; 0804A7AA
mov   r0,0x0                        ; 0804A7AC
b     @@Code0804A7BA                ; 0804A7AE
.pool                               ; 0804A7B0

@@Code0804A7B8:
mov   r0,0x1                        ; 0804A7B8
@@Code0804A7BA:
pop   {r1}                          ; 0804A7BA
bx    r1                            ; 0804A7BC
.pool                               ; 0804A7BE

Sub0804A7C0:
push  {lr}                          ; 0804A7C0
mov   r2,r0                         ; 0804A7C2
ldrh  r0,[r2,0x20]                  ; 0804A7C4
add   r0,0x40                       ; 0804A7C6
lsl   r0,r0,0x10                    ; 0804A7C8
ldr   r1,=0x017F0000                ; 0804A7CA
cmp   r0,r1                         ; 0804A7CC
bhi   @@Code0804A7E8                ; 0804A7CE
ldrh  r0,[r2,0x22]                  ; 0804A7D0
add   r0,0x40                       ; 0804A7D2
lsl   r0,r0,0x10                    ; 0804A7D4
ldr   r1,=0x015F0000                ; 0804A7D6
cmp   r0,r1                         ; 0804A7D8
bhi   @@Code0804A7E8                ; 0804A7DA
mov   r0,0x0                        ; 0804A7DC
b     @@Code0804A7EA                ; 0804A7DE
.pool                               ; 0804A7E0

@@Code0804A7E8:
mov   r0,0x1                        ; 0804A7E8
@@Code0804A7EA:
pop   {r1}                          ; 0804A7EA
bx    r1                            ; 0804A7EC
.pool                               ; 0804A7EE

Sub0804A7F0:
push  {lr}                          ; 0804A7F0
mov   r2,r0                         ; 0804A7F2
ldrh  r0,[r2,0x20]                  ; 0804A7F4
add   r0,0x80                       ; 0804A7F6
lsl   r0,r0,0x10                    ; 0804A7F8
ldr   r1,=0x01FF0000                ; 0804A7FA
cmp   r0,r1                         ; 0804A7FC
bhi   @@Code0804A818                ; 0804A7FE
ldrh  r0,[r2,0x22]                  ; 0804A800
add   r0,0x80                       ; 0804A802
lsl   r0,r0,0x10                    ; 0804A804
ldr   r1,=0x01DF0000                ; 0804A806
cmp   r0,r1                         ; 0804A808
bhi   @@Code0804A818                ; 0804A80A
mov   r0,0x0                        ; 0804A80C
b     @@Code0804A82A                ; 0804A80E
.pool                               ; 0804A810

@@Code0804A818:
ldr   r0,=0x0300702C                ; 0804A818  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804A81A
ldr   r1,=0x156E                    ; 0804A81C
add   r0,r0,r1                      ; 0804A81E
ldrb  r1,[r0]                       ; 0804A820
mov   r0,r2                         ; 0804A822
bl    Sub0804A718                   ; 0804A824
mov   r0,0x1                        ; 0804A828
@@Code0804A82A:
pop   {r1}                          ; 0804A82A
bx    r1                            ; 0804A82C
.pool                               ; 0804A82E

Sub0804A838:
push  {lr}                          ; 0804A838
mov   r2,r0                         ; 0804A83A
ldrh  r0,[r2,0x20]                  ; 0804A83C
add   r0,0x40                       ; 0804A83E
lsl   r0,r0,0x10                    ; 0804A840
ldr   r1,=0x017F0000                ; 0804A842
cmp   r0,r1                         ; 0804A844
bhi   @@Code0804A860                ; 0804A846
ldrh  r0,[r2,0x22]                  ; 0804A848
add   r0,0x40                       ; 0804A84A
lsl   r0,r0,0x10                    ; 0804A84C
ldr   r1,=0x015F0000                ; 0804A84E
cmp   r0,r1                         ; 0804A850
bhi   @@Code0804A860                ; 0804A852
mov   r0,0x0                        ; 0804A854
b     @@Code0804A874                ; 0804A856
.pool                               ; 0804A858

@@Code0804A860:
ldr   r0,=0x0300702C                ; 0804A860  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804A862
ldr   r1,=0x156E                    ; 0804A864
add   r0,r0,r1                      ; 0804A866
ldrb  r1,[r0]                       ; 0804A868
mov   r0,r2                         ; 0804A86A
bl    Sub0804A718                   ; 0804A86C
lsl   r0,r0,0x18                    ; 0804A870
lsr   r0,r0,0x18                    ; 0804A872
@@Code0804A874:
pop   {r1}                          ; 0804A874
bx    r1                            ; 0804A876
.pool                               ; 0804A878

Sub0804A880:
push  {r4-r6,lr}                    ; 0804A880
mov   r5,r0                         ; 0804A882
lsl   r0,r1,0x10                    ; 0804A884
lsr   r0,r0,0x10                    ; 0804A886
ldr   r4,=0x03002200                ; 0804A888
ldr   r2,[r5]                       ; 0804A88A
asr   r2,r2,0x8                     ; 0804A88C
ldr   r3,=0x47E4                    ; 0804A88E
add   r1,r4,r3                      ; 0804A890
ldrh  r1,[r1]                       ; 0804A892
sub   r2,r2,r1                      ; 0804A894
ldr   r6,=0x4058                    ; 0804A896
add   r1,r4,r6                      ; 0804A898
strh  r2,[r1]                       ; 0804A89A
ldr   r2,[r5,0x4]                   ; 0804A89C
asr   r2,r2,0x8                     ; 0804A89E
ldr   r6,=0x47EC                    ; 0804A8A0
add   r3,r4,r6                      ; 0804A8A2
ldrh  r3,[r3]                       ; 0804A8A4
sub   r2,r2,r3                      ; 0804A8A6
ldr   r3,=0x405A                    ; 0804A8A8
add   r4,r4,r3                      ; 0804A8AA
strh  r2,[r4]                       ; 0804A8AC
bl    PlayYISound                   ; 0804A8AE
ldr   r0,=0x03006D80                ; 0804A8B2
mov   r6,0xF7                       ; 0804A8B4
lsl   r6,r6,0x1                     ; 0804A8B6
add   r1,r0,r6                      ; 0804A8B8
mov   r0,0x40                       ; 0804A8BA
strh  r0,[r1]                       ; 0804A8BC
ldr   r0,=0x0300702C                ; 0804A8BE  Sprite RAM structs (03002460)
ldr   r2,[r0]                       ; 0804A8C0
ldr   r0,[r5]                       ; 0804A8C2
asr   r0,r0,0x8                     ; 0804A8C4
ldr   r3,=0x17EC                    ; 0804A8C6
add   r1,r2,r3                      ; 0804A8C8
strh  r0,[r1]                       ; 0804A8CA
ldr   r0,[r5,0x4]                   ; 0804A8CC
asr   r0,r0,0x8                     ; 0804A8CE
ldr   r6,=0x17EE                    ; 0804A8D0
add   r2,r2,r6                      ; 0804A8D2
strh  r0,[r2]                       ; 0804A8D4
pop   {r4-r6}                       ; 0804A8D6
pop   {r0}                          ; 0804A8D8
bx    r0                            ; 0804A8DA
.pool                               ; 0804A8DC

Sub0804A900:
push  {r4,lr}                       ; 0804A900
mov   r4,r0                         ; 0804A902
mov   r1,0x8D                       ; 0804A904
bl    Sub0804A880                   ; 0804A906
ldr   r0,=0x0212                    ; 0804A90A
bl    SpawnSecondarySprite          ; 0804A90C
lsl   r0,r0,0x18                    ; 0804A910
lsr   r0,r0,0x18                    ; 0804A912
ldr   r2,=0x03007240                ; 0804A914  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0804A916
mul   r0,r1                         ; 0804A918
ldr   r1,=0x1AF4                    ; 0804A91A
add   r0,r0,r1                      ; 0804A91C
ldr   r1,[r2]                       ; 0804A91E
add   r1,r1,r0                      ; 0804A920
ldr   r0,[r4]                       ; 0804A922
str   r0,[r1]                       ; 0804A924
ldr   r0,[r4,0x4]                   ; 0804A926
str   r0,[r1,0x4]                   ; 0804A928
mov   r2,r1                         ; 0804A92A
add   r2,0x42                       ; 0804A92C
mov   r0,0x3                        ; 0804A92E
strh  r0,[r2]                       ; 0804A930
mov   r0,0x16                       ; 0804A932
strh  r0,[r1,0x38]                  ; 0804A934
pop   {r4}                          ; 0804A936
pop   {r0}                          ; 0804A938
bx    r0                            ; 0804A93A
.pool                               ; 0804A93C

Sub0804A948:
push  {lr}                          ; 0804A948
lsl   r0,r1,0x10                    ; 0804A94A
lsr   r0,r0,0x10                    ; 0804A94C
bl    SpawnSecondarySprite          ; 0804A94E
lsl   r0,r0,0x18                    ; 0804A952
lsr   r0,r0,0x18                    ; 0804A954
ldr   r2,=0x03007240                ; 0804A956  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0804A958
mul   r0,r1                         ; 0804A95A
ldr   r1,=0x1AF4                    ; 0804A95C
add   r0,r0,r1                      ; 0804A95E
ldr   r1,[r2]                       ; 0804A960
add   r2,r1,r0                      ; 0804A962
ldr   r3,=0x2A12                    ; 0804A964
add   r0,r1,r3                      ; 0804A966
ldrh  r0,[r0]                       ; 0804A968
lsl   r0,r0,0x8                     ; 0804A96A
str   r0,[r2]                       ; 0804A96C
ldr   r0,=0x2A16                    ; 0804A96E
add   r1,r1,r0                      ; 0804A970
ldrh  r0,[r1]                       ; 0804A972
lsl   r0,r0,0x8                     ; 0804A974
str   r0,[r2,0x4]                   ; 0804A976
mov   r1,r2                         ; 0804A978
add   r1,0x42                       ; 0804A97A
mov   r0,0x4                        ; 0804A97C
strh  r0,[r1]                       ; 0804A97E
add   r1,0x28                       ; 0804A980
mov   r0,0x7                        ; 0804A982
strh  r0,[r1]                       ; 0804A984
strh  r0,[r2,0x38]                  ; 0804A986
pop   {r0}                          ; 0804A988
bx    r0                            ; 0804A98A
.pool                               ; 0804A98C

Sub0804A99C:
push  {r4-r5,lr}                    ; 0804A99C
mov   r5,r0                         ; 0804A99E
lsl   r4,r1,0x10                    ; 0804A9A0
lsr   r4,r4,0x10                    ; 0804A9A2
mov   r1,0x94                       ; 0804A9A4
bl    Sub0804A880                   ; 0804A9A6
mov   r0,r5                         ; 0804A9AA
mov   r1,r4                         ; 0804A9AC
bl    Sub0804A948                   ; 0804A9AE
pop   {r4-r5}                       ; 0804A9B2
pop   {r0}                          ; 0804A9B4
bx    r0                            ; 0804A9B6

Sub0804A9B8:
push  {r4,lr}                       ; 0804A9B8
ldr   r1,=0x03007240                ; 0804A9BA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r1]                       ; 0804A9BC
ldr   r1,[r0]                       ; 0804A9BE
asr   r1,r1,0x8                     ; 0804A9C0
add   r1,0x8                        ; 0804A9C2
ldr   r4,=0x2A12                    ; 0804A9C4
add   r2,r3,r4                      ; 0804A9C6
strh  r1,[r2]                       ; 0804A9C8
ldr   r1,[r0,0x4]                   ; 0804A9CA
asr   r1,r1,0x8                     ; 0804A9CC
add   r1,0x8                        ; 0804A9CE
ldr   r2,=0x2A16                    ; 0804A9D0
add   r3,r3,r2                      ; 0804A9D2
strh  r1,[r3]                       ; 0804A9D4
mov   r1,0xF8                       ; 0804A9D6
lsl   r1,r1,0x1                     ; 0804A9D8
bl    Sub0804A99C                   ; 0804A9DA
pop   {r4}                          ; 0804A9DE
pop   {r0}                          ; 0804A9E0
bx    r0                            ; 0804A9E2
.pool                               ; 0804A9E4

Sub0804A9F0:
push  {r4,lr}                       ; 0804A9F0
mov   r4,r0                         ; 0804A9F2
lsl   r1,r1,0x18                    ; 0804A9F4
lsr   r1,r1,0x18                    ; 0804A9F6
bl    Sub0804B9A4                   ; 0804A9F8
mov   r0,r4                         ; 0804A9FC
bl    Sub0804A9B8                   ; 0804A9FE
pop   {r4}                          ; 0804AA02
pop   {r0}                          ; 0804AA04
bx    r0                            ; 0804AA06

Sub0804AA08:
push  {r4-r6,lr}                    ; 0804AA08
mov   r5,r0                         ; 0804AA0A
ldr   r4,=0x03006D80                ; 0804AA0C
ldr   r0,[r5]                       ; 0804AA0E
ldr   r1,[r4]                       ; 0804AA10
add   r0,r0,r1                      ; 0804AA12
asr   r0,r0,0x8                     ; 0804AA14
lsl   r0,r0,0x10                    ; 0804AA16
asr   r1,r0,0x1F                    ; 0804AA18
mov   r3,0x80                       ; 0804AA1A
lsl   r3,r3,0x8                     ; 0804AA1C
and   r1,r3                         ; 0804AA1E
ldr   r2,=0x03007240                ; 0804AA20  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r2]                       ; 0804AA22
lsr   r0,r0,0x11                    ; 0804AA24
orr   r1,r0                         ; 0804AA26
add   r1,0x8                        ; 0804AA28
ldr   r6,=0x2A12                    ; 0804AA2A
add   r0,r2,r6                      ; 0804AA2C
strh  r1,[r0]                       ; 0804AA2E
ldr   r0,[r5,0x4]                   ; 0804AA30
ldr   r1,[r4,0x4]                   ; 0804AA32
add   r0,r0,r1                      ; 0804AA34
asr   r0,r0,0x8                     ; 0804AA36
lsl   r0,r0,0x10                    ; 0804AA38
asr   r1,r0,0x1F                    ; 0804AA3A
and   r1,r3                         ; 0804AA3C
lsr   r0,r0,0x11                    ; 0804AA3E
orr   r1,r0                         ; 0804AA40
add   r1,0x2                        ; 0804AA42
ldr   r3,=0x2A16                    ; 0804AA44
add   r0,r2,r3                      ; 0804AA46
strh  r1,[r0]                       ; 0804AA48
add   r6,0x90                       ; 0804AA4A
add   r2,r2,r6                      ; 0804AA4C
ldrh  r0,[r2]                       ; 0804AA4E
cmp   r0,0x0                        ; 0804AA50
bne   @@Code0804AA62                ; 0804AA52
mov   r0,0x10                       ; 0804AA54
strh  r0,[r2]                       ; 0804AA56
mov   r1,0xF8                       ; 0804AA58
lsl   r1,r1,0x1                     ; 0804AA5A
mov   r0,r5                         ; 0804AA5C
bl    Sub0804A99C                   ; 0804AA5E
@@Code0804AA62:
pop   {r4-r6}                       ; 0804AA62
pop   {r0}                          ; 0804AA64
bx    r0                            ; 0804AA66
.pool                               ; 0804AA68

Sub0804AA78:
push  {r4,lr}                       ; 0804AA78
mov   r4,r0                         ; 0804AA7A
ldr   r0,=0x0300702C                ; 0804AA7C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804AA7E
ldr   r1,=0x156E                    ; 0804AA80
add   r0,r0,r1                      ; 0804AA82
ldrb  r1,[r0]                       ; 0804AA84
mov   r0,r4                         ; 0804AA86
bl    Sub0804B9A4                   ; 0804AA88
mov   r0,r4                         ; 0804AA8C
bl    Sub0804AA08                   ; 0804AA8E
pop   {r4}                          ; 0804AA92
pop   {r0}                          ; 0804AA94
bx    r0                            ; 0804AA96
.pool                               ; 0804AA98

Sub0804AAA0:
push  {r4-r5,lr}                    ; 0804AAA0
mov   r4,r0                         ; 0804AAA2
ldr   r0,=0x03007240                ; 0804AAA4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r3,[r0]                       ; 0804AAA6
ldr   r0,[r4]                       ; 0804AAA8
ldr   r2,[r1]                       ; 0804AAAA
add   r0,r0,r2                      ; 0804AAAC
asr   r0,r0,0x9                     ; 0804AAAE
add   r0,0x8                        ; 0804AAB0
ldr   r5,=0x2A12                    ; 0804AAB2
add   r2,r3,r5                      ; 0804AAB4
strh  r0,[r2]                       ; 0804AAB6
ldr   r0,[r4,0x4]                   ; 0804AAB8
ldr   r1,[r1,0x4]                   ; 0804AABA
add   r0,r0,r1                      ; 0804AABC
asr   r0,r0,0x9                     ; 0804AABE
add   r0,0x2                        ; 0804AAC0
ldr   r2,=0x2A16                    ; 0804AAC2
add   r1,r3,r2                      ; 0804AAC4
strh  r0,[r1]                       ; 0804AAC6
add   r5,0x90                       ; 0804AAC8
add   r3,r3,r5                      ; 0804AACA
ldrh  r0,[r3]                       ; 0804AACC
cmp   r0,0x0                        ; 0804AACE
bne   @@Code0804AAE0                ; 0804AAD0
mov   r0,0x10                       ; 0804AAD2
strh  r0,[r3]                       ; 0804AAD4
mov   r1,0xF8                       ; 0804AAD6
lsl   r1,r1,0x1                     ; 0804AAD8
mov   r0,r4                         ; 0804AADA
bl    Sub0804A99C                   ; 0804AADC
@@Code0804AAE0:
pop   {r4-r5}                       ; 0804AAE0
pop   {r0}                          ; 0804AAE2
bx    r0                            ; 0804AAE4
.pool                               ; 0804AAE6

Sub0804AAF4:
push  {r4,lr}                       ; 0804AAF4
mov   r4,r0                         ; 0804AAF6
mov   r0,0xF8                       ; 0804AAF8
lsl   r0,r0,0x1                     ; 0804AAFA
bl    SpawnSecondarySprite          ; 0804AAFC
lsl   r0,r0,0x18                    ; 0804AB00
lsr   r0,r0,0x18                    ; 0804AB02
ldr   r2,=0x03007240                ; 0804AB04  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0804AB06
mul   r0,r1                         ; 0804AB08
ldr   r1,=0x1AF4                    ; 0804AB0A
add   r0,r0,r1                      ; 0804AB0C
ldr   r1,[r2]                       ; 0804AB0E
add   r1,r1,r0                      ; 0804AB10
mov   r0,r4                         ; 0804AB12
add   r0,0x5A                       ; 0804AB14
ldrh  r0,[r0]                       ; 0804AB16
lsl   r0,r0,0x8                     ; 0804AB18
str   r0,[r1]                       ; 0804AB1A
add   r4,0x5C                       ; 0804AB1C
ldrh  r0,[r4]                       ; 0804AB1E
lsl   r0,r0,0x8                     ; 0804AB20
str   r0,[r1,0x4]                   ; 0804AB22
mov   r2,r1                         ; 0804AB24
add   r2,0x42                       ; 0804AB26
mov   r0,0x4                        ; 0804AB28
strh  r0,[r2]                       ; 0804AB2A
add   r2,0x28                       ; 0804AB2C
mov   r0,0x6                        ; 0804AB2E
strh  r0,[r2]                       ; 0804AB30
strh  r0,[r1,0x38]                  ; 0804AB32
pop   {r4}                          ; 0804AB34
pop   {r0}                          ; 0804AB36
bx    r0                            ; 0804AB38
.pool                               ; 0804AB3A

Sub0804AB44:
push  {r4,lr}                       ; 0804AB44
mov   r4,r0                         ; 0804AB46
ldr   r1,=0x03002200                ; 0804AB48
ldrh  r0,[r4,0x20]                  ; 0804AB4A
ldr   r2,=0x4058                    ; 0804AB4C
add   r1,r1,r2                      ; 0804AB4E
strh  r0,[r1]                       ; 0804AB50
mov   r0,0x80                       ; 0804AB52
bl    PlayYISound                   ; 0804AB54
mov   r0,0xFE                       ; 0804AB58
lsl   r0,r0,0x1                     ; 0804AB5A
bl    SpawnSecondarySprite          ; 0804AB5C
lsl   r0,r0,0x18                    ; 0804AB60
lsr   r0,r0,0x18                    ; 0804AB62
ldr   r2,=0x03007240                ; 0804AB64  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 0804AB66
mul   r1,r0                         ; 0804AB68
ldr   r0,=0x1AF4                    ; 0804AB6A
add   r1,r1,r0                      ; 0804AB6C
ldr   r0,[r2]                       ; 0804AB6E
add   r0,r0,r1                      ; 0804AB70
ldr   r1,[r4]                       ; 0804AB72
str   r1,[r0]                       ; 0804AB74
ldr   r1,[r4,0x4]                   ; 0804AB76
str   r1,[r0,0x4]                   ; 0804AB78
mov   r1,0xB                        ; 0804AB7A
strh  r1,[r0,0x38]                  ; 0804AB7C
add   r0,0x42                       ; 0804AB7E
mov   r1,0x4                        ; 0804AB80
strh  r1,[r0]                       ; 0804AB82
ldr   r0,=0x0300702C                ; 0804AB84  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804AB86
ldr   r1,=0x156E                    ; 0804AB88
add   r0,r0,r1                      ; 0804AB8A
ldrb  r1,[r0]                       ; 0804AB8C
mov   r0,r4                         ; 0804AB8E
bl    Sub0804B784                   ; 0804AB90
mov   r0,r4                         ; 0804AB94
bl    DespawnSprite                 ; 0804AB96
pop   {r4}                          ; 0804AB9A
pop   {r0}                          ; 0804AB9C
bx    r0                            ; 0804AB9E
.pool                               ; 0804ABA0

Sub0804ABB8:
lsl   r1,r1,0x10                    ; 0804ABB8
lsr   r1,r1,0x12                    ; 0804ABBA
lsl   r1,r1,0x3                     ; 0804ABBC
ldr   r2,=0x03005A00                ; 0804ABBE
add   r1,r1,r2                      ; 0804ABC0
ldrh  r3,[r1,0x4]                   ; 0804ABC2
mov   r2,0xFC                       ; 0804ABC4
lsl   r2,r2,0x8                     ; 0804ABC6
and   r2,r3                         ; 0804ABC8
ldr   r3,=Data08171E88              ; 0804ABCA
ldrh  r0,[r0,0x3C]                  ; 0804ABCC
lsl   r0,r0,0x1                     ; 0804ABCE
add   r0,r0,r3                      ; 0804ABD0
ldrh  r0,[r0]                       ; 0804ABD2
orr   r2,r0                         ; 0804ABD4
strh  r2,[r1,0x4]                   ; 0804ABD6
bx    lr                            ; 0804ABD8
.pool                               ; 0804ABDA

Sub0804ABE4:
push  {lr}                          ; 0804ABE4
mov   r2,r0                         ; 0804ABE6
add   r0,0x94                       ; 0804ABE8
ldrb  r0,[r0]                       ; 0804ABEA
cmp   r0,0xFF                       ; 0804ABEC
beq   @@Code0804AC00                ; 0804ABEE
mov   r1,0x34                       ; 0804ABF0
ldsh  r0,[r2,r1]                    ; 0804ABF2
cmp   r0,0x0                        ; 0804ABF4
blt   @@Code0804AC00                ; 0804ABF6
ldrh  r1,[r2,0x34]                  ; 0804ABF8
mov   r0,r2                         ; 0804ABFA
bl    Sub0804ABB8                   ; 0804ABFC
@@Code0804AC00:
pop   {r0}                          ; 0804AC00
bx    r0                            ; 0804AC02

Sub0804AC04:
ldrh  r2,[r0,0x34]                  ; 0804AC04
lsr   r2,r2,0x2                     ; 0804AC06
lsl   r2,r2,0x3                     ; 0804AC08
ldr   r1,=0x03005A00                ; 0804AC0A
add   r2,r2,r1                      ; 0804AC0C
ldrh  r3,[r2,0x4]                   ; 0804AC0E
mov   r1,0xFC                       ; 0804AC10
lsl   r1,r1,0x8                     ; 0804AC12
and   r1,r3                         ; 0804AC14
ldr   r3,=Data08171E88              ; 0804AC16
ldrh  r0,[r0,0x3C]                  ; 0804AC18
lsl   r0,r0,0x1                     ; 0804AC1A
add   r0,r0,r3                      ; 0804AC1C
ldrh  r0,[r0]                       ; 0804AC1E
orr   r1,r0                         ; 0804AC20
strh  r1,[r2,0x4]                   ; 0804AC22
bx    lr                            ; 0804AC24
.pool                               ; 0804AC26

Sub0804AC30:
push  {lr}                          ; 0804AC30
mov   r1,r0                         ; 0804AC32
add   r0,0x94                       ; 0804AC34
ldrb  r0,[r0]                       ; 0804AC36
cmp   r0,0xFF                       ; 0804AC38
beq   @@Code0804AC4A                ; 0804AC3A
mov   r2,0x34                       ; 0804AC3C
ldsh  r0,[r1,r2]                    ; 0804AC3E
cmp   r0,0x0                        ; 0804AC40
blt   @@Code0804AC4A                ; 0804AC42
mov   r0,r1                         ; 0804AC44
bl    Sub0804AC04                   ; 0804AC46
@@Code0804AC4A:
pop   {r0}                          ; 0804AC4A
bx    r0                            ; 0804AC4C
.pool                               ; 0804AC4E

Sub0804AC50:
push  {r4,lr}                       ; 0804AC50
ldrh  r3,[r0,0x34]                  ; 0804AC52
lsr   r3,r3,0x2                     ; 0804AC54
lsl   r3,r3,0x3                     ; 0804AC56
ldr   r1,=0x03005A00                ; 0804AC58
add   r3,r3,r1                      ; 0804AC5A
ldrh  r2,[r3,0x2]                   ; 0804AC5C
ldr   r1,=0x3FFF                    ; 0804AC5E
and   r1,r2                         ; 0804AC60
mov   r4,0x80                       ; 0804AC62
lsl   r4,r4,0x8                     ; 0804AC64
mov   r2,r4                         ; 0804AC66
orr   r1,r2                         ; 0804AC68
strh  r1,[r3,0x2]                   ; 0804AC6A
ldrh  r2,[r3,0x4]                   ; 0804AC6C
mov   r1,0xFC                       ; 0804AC6E
lsl   r1,r1,0x8                     ; 0804AC70
and   r1,r2                         ; 0804AC72
ldr   r2,=Data08171E88              ; 0804AC74
ldrh  r0,[r0,0x3C]                  ; 0804AC76
lsl   r0,r0,0x1                     ; 0804AC78
add   r0,r0,r2                      ; 0804AC7A
ldrh  r0,[r0]                       ; 0804AC7C
orr   r1,r0                         ; 0804AC7E
strh  r1,[r3,0x4]                   ; 0804AC80
pop   {r4}                          ; 0804AC82
pop   {r0}                          ; 0804AC84
bx    r0                            ; 0804AC86
.pool                               ; 0804AC88

Sub0804AC94:
push  {lr}                          ; 0804AC94
mov   r1,r0                         ; 0804AC96
add   r0,0x94                       ; 0804AC98
ldrb  r0,[r0]                       ; 0804AC9A
cmp   r0,0xFF                       ; 0804AC9C
beq   @@Code0804ACAE                ; 0804AC9E
mov   r2,0x34                       ; 0804ACA0
ldsh  r0,[r1,r2]                    ; 0804ACA2
cmp   r0,0x0                        ; 0804ACA4
blt   @@Code0804ACAE                ; 0804ACA6
mov   r0,r1                         ; 0804ACA8
bl    Sub0804AC50                   ; 0804ACAA
@@Code0804ACAE:
pop   {r0}                          ; 0804ACAE
bx    r0                            ; 0804ACB0
.pool                               ; 0804ACB2

Sub0804ACB4:
push  {r4-r7,lr}                    ; 0804ACB4
mov   r7,r8                         ; 0804ACB6
push  {r7}                          ; 0804ACB8
mov   r8,r0                         ; 0804ACBA
mov   r3,0x80                       ; 0804ACBC
lsl   r3,r3,0x8                     ; 0804ACBE
mov   r4,0x3                        ; 0804ACC0
ldr   r0,=0x0300702C                ; 0804ACC2  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804ACC4
ldr   r1,=0x1148                    ; 0804ACC6
add   r0,r0,r1                      ; 0804ACC8
ldr   r1,=Data08171EDE              ; 0804ACCA
ldrh  r5,[r0]                       ; 0804ACCC
add   r1,0x6                        ; 0804ACCE
@@Code0804ACD0:
ldrh  r2,[r1]                       ; 0804ACD0
mov   r0,r5                         ; 0804ACD2
and   r0,r2                         ; 0804ACD4
cmp   r0,0x0                        ; 0804ACD6
bne   @@Code0804ACEC                ; 0804ACD8
lsl   r0,r4,0x10                    ; 0804ACDA
lsr   r3,r0,0x10                    ; 0804ACDC
b     @@Code0804ACF0                ; 0804ACDE
.pool                               ; 0804ACE0

@@Code0804ACEC:
cmp   r0,r2                         ; 0804ACEC
bne   @@Code0804AD00                ; 0804ACEE
@@Code0804ACF0:
sub   r1,0x2                        ; 0804ACF0
sub   r4,0x1                        ; 0804ACF2
cmp   r4,0x7F                       ; 0804ACF4
bls   @@Code0804ACD0                ; 0804ACF6
lsl   r0,r3,0x10                    ; 0804ACF8
cmp   r0,0x0                        ; 0804ACFA
blt   @@Code0804AD30                ; 0804ACFC
mov   r4,r3                         ; 0804ACFE
@@Code0804AD00:
lsl   r0,r4,0x1A                    ; 0804AD00
lsr   r3,r0,0x18                    ; 0804AD02
mov   r4,0x0                        ; 0804AD04
ldr   r0,=0x0300702C                ; 0804AD06  Sprite RAM structs (03002460)
ldr   r7,[r0]                       ; 0804AD08
ldr   r0,=0x1148                    ; 0804AD0A
add   r5,r7,r0                      ; 0804AD0C
ldr   r1,=BitTable16Desc_08171EEC   ; 0804AD0E
mov   r12,r1                        ; 0804AD10
ldrh  r6,[r5]                       ; 0804AD12
@@Code0804AD14:
lsl   r2,r3,0x1                     ; 0804AD14
mov   r1,r12                        ; 0804AD16
add   r0,r2,r1                      ; 0804AD18
ldrh  r1,[r0]                       ; 0804AD1A
mov   r0,r6                         ; 0804AD1C
and   r0,r1                         ; 0804AD1E
cmp   r0,0x0                        ; 0804AD20
beq   @@Code0804AD40                ; 0804AD22
add   r0,r3,0x1                     ; 0804AD24
lsl   r0,r0,0x18                    ; 0804AD26
lsr   r3,r0,0x18                    ; 0804AD28
add   r4,0x1                        ; 0804AD2A
cmp   r4,0x3                        ; 0804AD2C
bls   @@Code0804AD14                ; 0804AD2E
@@Code0804AD30:
mov   r0,0x0                        ; 0804AD30
b     @@Code0804AD54                ; 0804AD32
.pool                               ; 0804AD34

@@Code0804AD40:
ldr   r4,=0x114C                    ; 0804AD40
add   r0,r7,r4                      ; 0804AD42
add   r0,r0,r2                      ; 0804AD44
strh  r1,[r0]                       ; 0804AD46
ldrh  r0,[r5]                       ; 0804AD48
orr   r0,r1                         ; 0804AD4A
strh  r0,[r5]                       ; 0804AD4C
mov   r0,r8                         ; 0804AD4E
strh  r3,[r0,0x3C]                  ; 0804AD50
mov   r0,0x1                        ; 0804AD52
@@Code0804AD54:
pop   {r3}                          ; 0804AD54
mov   r8,r3                         ; 0804AD56
pop   {r4-r7}                       ; 0804AD58
pop   {r1}                          ; 0804AD5A
bx    r1                            ; 0804AD5C
.pool                               ; 0804AD5E

Sub0804AD64:
push  {r4-r7,lr}                    ; 0804AD64
mov   r7,r8                         ; 0804AD66
push  {r7}                          ; 0804AD68
mov   r8,r0                         ; 0804AD6A
mov   r3,0x80                       ; 0804AD6C
lsl   r3,r3,0x8                     ; 0804AD6E
mov   r4,0x3                        ; 0804AD70
ldr   r0,=0x0300702C                ; 0804AD72  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804AD74
ldr   r1,=0x114A                    ; 0804AD76
add   r0,r0,r1                      ; 0804AD78
ldr   r1,=Data08171EDE              ; 0804AD7A
ldrh  r5,[r0]                       ; 0804AD7C
add   r1,0x6                        ; 0804AD7E
@@Code0804AD80:
ldrh  r2,[r1]                       ; 0804AD80
mov   r0,r5                         ; 0804AD82
and   r0,r2                         ; 0804AD84
cmp   r0,0x0                        ; 0804AD86
bne   @@Code0804AD9C                ; 0804AD88
lsl   r0,r4,0x10                    ; 0804AD8A
lsr   r3,r0,0x10                    ; 0804AD8C
b     @@Code0804ADA0                ; 0804AD8E
.pool                               ; 0804AD90

@@Code0804AD9C:
cmp   r0,r2                         ; 0804AD9C
bne   @@Code0804ADB0                ; 0804AD9E
@@Code0804ADA0:
sub   r1,0x2                        ; 0804ADA0
sub   r4,0x1                        ; 0804ADA2
cmp   r4,0x7F                       ; 0804ADA4
bls   @@Code0804AD80                ; 0804ADA6
lsl   r0,r3,0x10                    ; 0804ADA8
cmp   r0,0x0                        ; 0804ADAA
blt   @@Code0804ADE0                ; 0804ADAC
mov   r4,r3                         ; 0804ADAE
@@Code0804ADB0:
lsl   r0,r4,0x1A                    ; 0804ADB0
lsr   r3,r0,0x18                    ; 0804ADB2
mov   r4,0x0                        ; 0804ADB4
ldr   r2,=BitTable16Desc_08171EEC   ; 0804ADB6
mov   r12,r2                        ; 0804ADB8
ldr   r0,=0x0300702C                ; 0804ADBA  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 0804ADBC
ldr   r0,=0x114A                    ; 0804ADBE
add   r5,r1,r0                      ; 0804ADC0
mov   r7,r12                        ; 0804ADC2
ldrh  r2,[r5]                       ; 0804ADC4
@@Code0804ADC6:
mov   r6,r3                         ; 0804ADC6
lsl   r0,r3,0x1                     ; 0804ADC8
add   r0,r0,r7                      ; 0804ADCA
ldrh  r0,[r0]                       ; 0804ADCC
and   r0,r2                         ; 0804ADCE
cmp   r0,0x0                        ; 0804ADD0
beq   @@Code0804ADF0                ; 0804ADD2
add   r0,r3,0x1                     ; 0804ADD4
lsl   r0,r0,0x18                    ; 0804ADD6
lsr   r3,r0,0x18                    ; 0804ADD8
add   r4,0x1                        ; 0804ADDA
cmp   r4,0x3                        ; 0804ADDC
bls   @@Code0804ADC6                ; 0804ADDE
@@Code0804ADE0:
mov   r0,0x0                        ; 0804ADE0
b     @@Code0804AE14                ; 0804ADE2
.pool                               ; 0804ADE4

@@Code0804ADF0:
mov   r0,0x10                       ; 0804ADF0
orr   r3,r0                         ; 0804ADF2
lsl   r0,r3,0x18                    ; 0804ADF4
lsr   r3,r0,0x18                    ; 0804ADF6
lsl   r0,r3,0x1                     ; 0804ADF8
ldr   r2,=0x114C                    ; 0804ADFA
add   r1,r1,r2                      ; 0804ADFC
add   r1,r1,r0                      ; 0804ADFE
lsl   r0,r6,0x1                     ; 0804AE00
add   r0,r12                        ; 0804AE02
ldrh  r2,[r0]                       ; 0804AE04
strh  r2,[r1]                       ; 0804AE06
ldrh  r0,[r5]                       ; 0804AE08
orr   r0,r2                         ; 0804AE0A
strh  r0,[r5]                       ; 0804AE0C
mov   r0,r8                         ; 0804AE0E
strh  r3,[r0,0x3C]                  ; 0804AE10
mov   r0,0x1                        ; 0804AE12
@@Code0804AE14:
pop   {r3}                          ; 0804AE14
mov   r8,r3                         ; 0804AE16
pop   {r4-r7}                       ; 0804AE18
pop   {r1}                          ; 0804AE1A
bx    r1                            ; 0804AE1C
.pool                               ; 0804AE1E

Sub0804AE24:
push  {r4-r7,lr}                    ; 0804AE24
mov   r7,r8                         ; 0804AE26
push  {r7}                          ; 0804AE28
mov   r8,r0                         ; 0804AE2A
mov   r3,0x80                       ; 0804AE2C
lsl   r3,r3,0x8                     ; 0804AE2E
mov   r4,0x3                        ; 0804AE30
ldr   r0,=0x0300702C                ; 0804AE32  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804AE34
ldr   r1,=0x1148                    ; 0804AE36
add   r0,r0,r1                      ; 0804AE38
ldr   r1,=Data08171EDE              ; 0804AE3A
ldrh  r5,[r0]                       ; 0804AE3C
add   r1,0x6                        ; 0804AE3E
@@Code0804AE40:
ldrh  r2,[r1]                       ; 0804AE40
mov   r0,r5                         ; 0804AE42
and   r0,r2                         ; 0804AE44
cmp   r0,0x0                        ; 0804AE46
bne   @@Code0804AE5C                ; 0804AE48
lsl   r0,r4,0x10                    ; 0804AE4A
lsr   r3,r0,0x10                    ; 0804AE4C
b     @@Code0804AE60                ; 0804AE4E
.pool                               ; 0804AE50

@@Code0804AE5C:
cmp   r0,r2                         ; 0804AE5C
bne   @@Code0804AE70                ; 0804AE5E
@@Code0804AE60:
sub   r1,0x2                        ; 0804AE60
sub   r4,0x1                        ; 0804AE62
cmp   r4,0x7F                       ; 0804AE64
bls   @@Code0804AE40                ; 0804AE66
lsl   r0,r3,0x10                    ; 0804AE68
cmp   r0,0x0                        ; 0804AE6A
blt   @@Code0804AEA0                ; 0804AE6C
mov   r4,r3                         ; 0804AE6E
@@Code0804AE70:
lsl   r0,r4,0x1A                    ; 0804AE70
lsr   r3,r0,0x18                    ; 0804AE72
mov   r4,0x0                        ; 0804AE74
ldr   r0,=0x0300702C                ; 0804AE76  Sprite RAM structs (03002460)
ldr   r7,[r0]                       ; 0804AE78
ldr   r0,=0x1148                    ; 0804AE7A
add   r5,r7,r0                      ; 0804AE7C
ldr   r1,=BitTable16Desc_08171EEC   ; 0804AE7E
mov   r12,r1                        ; 0804AE80
ldrh  r6,[r5]                       ; 0804AE82
@@Code0804AE84:
lsl   r2,r3,0x1                     ; 0804AE84
mov   r1,r12                        ; 0804AE86
add   r0,r2,r1                      ; 0804AE88
ldrh  r1,[r0]                       ; 0804AE8A
mov   r0,r6                         ; 0804AE8C
and   r0,r1                         ; 0804AE8E
cmp   r0,0x0                        ; 0804AE90
beq   @@Code0804AEB8                ; 0804AE92
add   r0,r3,0x1                     ; 0804AE94
lsl   r0,r0,0x18                    ; 0804AE96
lsr   r3,r0,0x18                    ; 0804AE98
add   r4,0x1                        ; 0804AE9A
cmp   r4,0x3                        ; 0804AE9C
bls   @@Code0804AE84                ; 0804AE9E
@@Code0804AEA0:
mov   r0,r8                         ; 0804AEA0
bl    DespawnSprite                 ; 0804AEA2
mov   r0,0x0                        ; 0804AEA6
b     @@Code0804AECC                ; 0804AEA8
.pool                               ; 0804AEAA

@@Code0804AEB8:
ldr   r4,=0x114C                    ; 0804AEB8
add   r0,r7,r4                      ; 0804AEBA
add   r0,r0,r2                      ; 0804AEBC
strh  r1,[r0]                       ; 0804AEBE
ldrh  r0,[r5]                       ; 0804AEC0
orr   r0,r1                         ; 0804AEC2
strh  r0,[r5]                       ; 0804AEC4
mov   r0,r8                         ; 0804AEC6
strh  r3,[r0,0x3C]                  ; 0804AEC8
mov   r0,0x1                        ; 0804AECA
@@Code0804AECC:
pop   {r3}                          ; 0804AECC
mov   r8,r3                         ; 0804AECE
pop   {r4-r7}                       ; 0804AED0
pop   {r1}                          ; 0804AED2
bx    r1                            ; 0804AED4
.pool                               ; 0804AED6

Sub0804AEDC:
push  {r4-r7,lr}                    ; 0804AEDC
mov   r6,r0                         ; 0804AEDE
mov   r2,0x3                        ; 0804AEE0
ldr   r0,=0x0300702C                ; 0804AEE2  Sprite RAM structs (03002460)
mov   r12,r0                        ; 0804AEE4
ldr   r7,=Data08171EDE              ; 0804AEE6
@@Code0804AEE8:
mov   r0,r12                        ; 0804AEE8
ldr   r5,[r0]                       ; 0804AEEA
ldr   r0,=0x1148                    ; 0804AEEC
add   r4,r5,r0                      ; 0804AEEE
lsl   r0,r2,0x1                     ; 0804AEF0
add   r0,r0,r7                      ; 0804AEF2
ldrh  r1,[r4]                       ; 0804AEF4
ldrh  r3,[r0]                       ; 0804AEF6
and   r1,r3                         ; 0804AEF8
cmp   r1,0x0                        ; 0804AEFA
bne   @@Code0804AF28                ; 0804AEFC
lsl   r2,r2,0x1A                    ; 0804AEFE
lsr   r2,r2,0x18                    ; 0804AF00
lsl   r1,r2,0x1                     ; 0804AF02
ldr   r7,=0x114C                    ; 0804AF04
add   r0,r5,r7                      ; 0804AF06
add   r0,r0,r1                      ; 0804AF08
strh  r3,[r0]                       ; 0804AF0A
ldrh  r0,[r4]                       ; 0804AF0C
orr   r0,r3                         ; 0804AF0E
strh  r0,[r4]                       ; 0804AF10
strh  r2,[r6,0x3C]                  ; 0804AF12
mov   r0,0x1                        ; 0804AF14
b     @@Code0804AF34                ; 0804AF16
.pool                               ; 0804AF18

@@Code0804AF28:
sub   r0,r2,0x1                     ; 0804AF28
lsl   r0,r0,0x18                    ; 0804AF2A
lsr   r2,r0,0x18                    ; 0804AF2C
cmp   r0,0x0                        ; 0804AF2E
bge   @@Code0804AEE8                ; 0804AF30
mov   r0,0x0                        ; 0804AF32
@@Code0804AF34:
pop   {r4-r7}                       ; 0804AF34
pop   {r1}                          ; 0804AF36
bx    r1                            ; 0804AF38
.pool                               ; 0804AF3A

Sub0804AF3C:
push  {r4-r7,lr}                    ; 0804AF3C
mov   r6,r0                         ; 0804AF3E
mov   r2,0x3                        ; 0804AF40
ldr   r0,=0x0300702C                ; 0804AF42  Sprite RAM structs (03002460)
mov   r12,r0                        ; 0804AF44
ldr   r7,=Data08171EDE              ; 0804AF46
@@Code0804AF48:
mov   r0,r12                        ; 0804AF48
ldr   r5,[r0]                       ; 0804AF4A
ldr   r0,=0x114A                    ; 0804AF4C
add   r4,r5,r0                      ; 0804AF4E
lsl   r0,r2,0x1                     ; 0804AF50
add   r0,r0,r7                      ; 0804AF52
ldrh  r1,[r4]                       ; 0804AF54
ldrh  r3,[r0]                       ; 0804AF56
and   r1,r3                         ; 0804AF58
cmp   r1,0x0                        ; 0804AF5A
bne   @@Code0804AF90                ; 0804AF5C
lsl   r1,r2,0x2                     ; 0804AF5E
mov   r0,0x10                       ; 0804AF60
orr   r1,r0                         ; 0804AF62
lsl   r1,r1,0x18                    ; 0804AF64
lsr   r1,r1,0x18                    ; 0804AF66
lsl   r2,r1,0x1                     ; 0804AF68
ldr   r7,=0x114C                    ; 0804AF6A
add   r0,r5,r7                      ; 0804AF6C
add   r0,r0,r2                      ; 0804AF6E
strh  r3,[r0]                       ; 0804AF70
ldrh  r0,[r4]                       ; 0804AF72
orr   r0,r3                         ; 0804AF74
strh  r0,[r4]                       ; 0804AF76
strh  r1,[r6,0x3C]                  ; 0804AF78
mov   r0,0x1                        ; 0804AF7A
b     @@Code0804AF9C                ; 0804AF7C
.pool                               ; 0804AF7E

@@Code0804AF90:
sub   r0,r2,0x1                     ; 0804AF90
lsl   r0,r0,0x18                    ; 0804AF92
lsr   r2,r0,0x18                    ; 0804AF94
cmp   r0,0x0                        ; 0804AF96
bge   @@Code0804AF48                ; 0804AF98
mov   r0,0x0                        ; 0804AF9A
@@Code0804AF9C:
pop   {r4-r7}                       ; 0804AF9C
pop   {r1}                          ; 0804AF9E
bx    r1                            ; 0804AFA0
.pool                               ; 0804AFA2

Sub0804AFA4:
push  {r4-r7,lr}                    ; 0804AFA4
mov   r6,r0                         ; 0804AFA6
mov   r2,0x3                        ; 0804AFA8
ldr   r0,=0x0300702C                ; 0804AFAA  Sprite RAM structs (03002460)
mov   r12,r0                        ; 0804AFAC
ldr   r7,=Data08171EDE              ; 0804AFAE
@@Code0804AFB0:
mov   r0,r12                        ; 0804AFB0
ldr   r5,[r0]                       ; 0804AFB2
ldr   r0,=0x1148                    ; 0804AFB4
add   r4,r5,r0                      ; 0804AFB6
lsl   r0,r2,0x1                     ; 0804AFB8
add   r0,r0,r7                      ; 0804AFBA
ldrh  r1,[r4]                       ; 0804AFBC
ldrh  r3,[r0]                       ; 0804AFBE
and   r1,r3                         ; 0804AFC0
cmp   r1,0x0                        ; 0804AFC2
bne   @@Code0804AFF0                ; 0804AFC4
lsl   r2,r2,0x1A                    ; 0804AFC6
lsr   r2,r2,0x18                    ; 0804AFC8
lsl   r1,r2,0x1                     ; 0804AFCA
ldr   r7,=0x114C                    ; 0804AFCC
add   r0,r5,r7                      ; 0804AFCE
add   r0,r0,r1                      ; 0804AFD0
strh  r3,[r0]                       ; 0804AFD2
ldrh  r0,[r4]                       ; 0804AFD4
orr   r0,r3                         ; 0804AFD6
strh  r0,[r4]                       ; 0804AFD8
strh  r2,[r6,0x3C]                  ; 0804AFDA
mov   r0,0x1                        ; 0804AFDC
b     @@Code0804B002                ; 0804AFDE
.pool                               ; 0804AFE0

@@Code0804AFF0:
sub   r0,r2,0x1                     ; 0804AFF0
lsl   r0,r0,0x18                    ; 0804AFF2
lsr   r2,r0,0x18                    ; 0804AFF4
cmp   r0,0x0                        ; 0804AFF6
bge   @@Code0804AFB0                ; 0804AFF8
mov   r0,r6                         ; 0804AFFA
bl    DespawnSprite                 ; 0804AFFC
mov   r0,0x0                        ; 0804B000
@@Code0804B002:
pop   {r4-r7}                       ; 0804B002
pop   {r1}                          ; 0804B004
bx    r1                            ; 0804B006

Sub0804B008:
push  {r4-r7,lr}                    ; 0804B008
mov   r6,r0                         ; 0804B00A
mov   r2,0x3                        ; 0804B00C
ldr   r0,=0x0300702C                ; 0804B00E  Sprite RAM structs (03002460)
mov   r12,r0                        ; 0804B010
ldr   r7,=Data08171EDE              ; 0804B012
@@Code0804B014:
mov   r0,r12                        ; 0804B014
ldr   r5,[r0]                       ; 0804B016
ldr   r0,=0x114A                    ; 0804B018
add   r4,r5,r0                      ; 0804B01A
lsl   r0,r2,0x1                     ; 0804B01C
add   r0,r0,r7                      ; 0804B01E
ldrh  r1,[r4]                       ; 0804B020
ldrh  r3,[r0]                       ; 0804B022
and   r1,r3                         ; 0804B024
cmp   r1,0x0                        ; 0804B026
bne   @@Code0804B05C                ; 0804B028
lsl   r1,r2,0x2                     ; 0804B02A
mov   r0,0x10                       ; 0804B02C
orr   r1,r0                         ; 0804B02E
lsl   r1,r1,0x18                    ; 0804B030
lsr   r1,r1,0x18                    ; 0804B032
lsl   r2,r1,0x1                     ; 0804B034
ldr   r7,=0x114C                    ; 0804B036
add   r0,r5,r7                      ; 0804B038
add   r0,r0,r2                      ; 0804B03A
strh  r3,[r0]                       ; 0804B03C
ldrh  r0,[r4]                       ; 0804B03E
orr   r0,r3                         ; 0804B040
strh  r0,[r4]                       ; 0804B042
strh  r1,[r6,0x3C]                  ; 0804B044
mov   r0,0x1                        ; 0804B046
b     @@Code0804B06E                ; 0804B048
.pool                               ; 0804B04A

@@Code0804B05C:
sub   r0,r2,0x1                     ; 0804B05C
lsl   r0,r0,0x18                    ; 0804B05E
lsr   r2,r0,0x18                    ; 0804B060
cmp   r0,0x0                        ; 0804B062
bge   @@Code0804B014                ; 0804B064
mov   r0,r6                         ; 0804B066
bl    DespawnSprite                 ; 0804B068
mov   r0,0x0                        ; 0804B06C
@@Code0804B06E:
pop   {r4-r7}                       ; 0804B06E
pop   {r1}                          ; 0804B070
bx    r1                            ; 0804B072

Sub0804B074:
push  {r4-r7,lr}                    ; 0804B074
mov   r6,r0                         ; 0804B076
mov   r2,0x2                        ; 0804B078
ldr   r0,=0x0300702C                ; 0804B07A  Sprite RAM structs (03002460)
mov   r12,r0                        ; 0804B07C
ldr   r7,=Data08171EE6              ; 0804B07E
@@Code0804B080:
mov   r0,r12                        ; 0804B080
ldr   r5,[r0]                       ; 0804B082
ldr   r0,=0x1148                    ; 0804B084
add   r4,r5,r0                      ; 0804B086
lsl   r0,r2,0x1                     ; 0804B088
add   r0,r0,r7                      ; 0804B08A
ldrh  r1,[r4]                       ; 0804B08C
ldrh  r3,[r0]                       ; 0804B08E
and   r1,r3                         ; 0804B090
cmp   r1,0x0                        ; 0804B092
bne   @@Code0804B0C0                ; 0804B094
lsl   r2,r2,0x1A                    ; 0804B096
lsr   r2,r2,0x18                    ; 0804B098
lsl   r1,r2,0x1                     ; 0804B09A
ldr   r7,=0x114C                    ; 0804B09C
add   r0,r5,r7                      ; 0804B09E
add   r0,r0,r1                      ; 0804B0A0
strh  r3,[r0]                       ; 0804B0A2
ldrh  r0,[r4]                       ; 0804B0A4
orr   r0,r3                         ; 0804B0A6
strh  r0,[r4]                       ; 0804B0A8
strh  r2,[r6,0x3C]                  ; 0804B0AA
mov   r0,0x1                        ; 0804B0AC
b     @@Code0804B0CC                ; 0804B0AE
.pool                               ; 0804B0B0

@@Code0804B0C0:
sub   r0,r2,0x1                     ; 0804B0C0
lsl   r0,r0,0x18                    ; 0804B0C2
lsr   r2,r0,0x18                    ; 0804B0C4
cmp   r0,0x0                        ; 0804B0C6
bge   @@Code0804B080                ; 0804B0C8
mov   r0,0x0                        ; 0804B0CA
@@Code0804B0CC:
pop   {r4-r7}                       ; 0804B0CC
pop   {r1}                          ; 0804B0CE
bx    r1                            ; 0804B0D0
.pool                               ; 0804B0D2

push  {r4-r7,lr}                    ; 0804B0D4
mov   r6,r0                         ; 0804B0D6
mov   r2,0x2                        ; 0804B0D8
ldr   r0,=0x0300702C                ; 0804B0DA  Sprite RAM structs (03002460)
mov   r12,r0                        ; 0804B0DC
ldr   r7,=Data08171EE6              ; 0804B0DE
@@Code0804B0E0:
mov   r0,r12                        ; 0804B0E0
ldr   r5,[r0]                       ; 0804B0E2
ldr   r0,=0x1148                    ; 0804B0E4
add   r4,r5,r0                      ; 0804B0E6
lsl   r0,r2,0x1                     ; 0804B0E8
add   r0,r0,r7                      ; 0804B0EA
ldrh  r1,[r4]                       ; 0804B0EC
ldrh  r3,[r0]                       ; 0804B0EE
and   r1,r3                         ; 0804B0F0
cmp   r1,0x0                        ; 0804B0F2
bne   @@Code0804B120                ; 0804B0F4
lsl   r2,r2,0x1A                    ; 0804B0F6
lsr   r2,r2,0x18                    ; 0804B0F8
lsl   r1,r2,0x1                     ; 0804B0FA
ldr   r7,=0x114C                    ; 0804B0FC
add   r0,r5,r7                      ; 0804B0FE
add   r0,r0,r1                      ; 0804B100
strh  r3,[r0]                       ; 0804B102
ldrh  r0,[r4]                       ; 0804B104
orr   r0,r3                         ; 0804B106
strh  r0,[r4]                       ; 0804B108
strh  r2,[r6,0x3C]                  ; 0804B10A
mov   r0,0x1                        ; 0804B10C
b     @@Code0804B132                ; 0804B10E
.pool                               ; 0804B110

@@Code0804B120:
sub   r0,r2,0x1                     ; 0804B120
lsl   r0,r0,0x18                    ; 0804B122
lsr   r2,r0,0x18                    ; 0804B124
cmp   r0,0x0                        ; 0804B126
bge   @@Code0804B0E0                ; 0804B128
mov   r0,r6                         ; 0804B12A
bl    DespawnSprite                 ; 0804B12C
mov   r0,0x0                        ; 0804B130
@@Code0804B132:
pop   {r4-r7}                       ; 0804B132
pop   {r1}                          ; 0804B134
bx    r1                            ; 0804B136

Sub0804B138:
push  {r4-r7,lr}                    ; 0804B138
mov   r6,r0                         ; 0804B13A
mov   r2,0x2                        ; 0804B13C
ldr   r0,=0x0300702C                ; 0804B13E  Sprite RAM structs (03002460)
mov   r12,r0                        ; 0804B140
ldr   r7,=Data08171EE6              ; 0804B142
@@Code0804B144:
mov   r0,r12                        ; 0804B144
ldr   r5,[r0]                       ; 0804B146
ldr   r0,=0x114A                    ; 0804B148
add   r4,r5,r0                      ; 0804B14A
lsl   r0,r2,0x1                     ; 0804B14C
add   r0,r0,r7                      ; 0804B14E
ldrh  r1,[r4]                       ; 0804B150
ldrh  r3,[r0]                       ; 0804B152
and   r1,r3                         ; 0804B154
cmp   r1,0x0                        ; 0804B156
bne   @@Code0804B18C                ; 0804B158
lsl   r1,r2,0x2                     ; 0804B15A
mov   r0,0x10                       ; 0804B15C
orr   r1,r0                         ; 0804B15E
lsl   r1,r1,0x18                    ; 0804B160
lsr   r1,r1,0x18                    ; 0804B162
lsl   r2,r1,0x1                     ; 0804B164
ldr   r7,=0x114C                    ; 0804B166
add   r0,r5,r7                      ; 0804B168
add   r0,r0,r2                      ; 0804B16A
strh  r3,[r0]                       ; 0804B16C
ldrh  r0,[r4]                       ; 0804B16E
orr   r0,r3                         ; 0804B170
strh  r0,[r4]                       ; 0804B172
strh  r1,[r6,0x3C]                  ; 0804B174
mov   r0,0x1                        ; 0804B176
b     @@Code0804B19E                ; 0804B178
.pool                               ; 0804B17A

@@Code0804B18C:
sub   r0,r2,0x1                     ; 0804B18C
lsl   r0,r0,0x18                    ; 0804B18E
lsr   r2,r0,0x18                    ; 0804B190
cmp   r0,0x0                        ; 0804B192
bge   @@Code0804B144                ; 0804B194
mov   r0,r6                         ; 0804B196
bl    DespawnSprite                 ; 0804B198
mov   r0,0x0                        ; 0804B19C
@@Code0804B19E:
pop   {r4-r7}                       ; 0804B19E
pop   {r1}                          ; 0804B1A0
bx    r1                            ; 0804B1A2

Sub0804B1A4:
push  {r4-r7,lr}                    ; 0804B1A4
mov   r6,r0                         ; 0804B1A6
mov   r2,0x2                        ; 0804B1A8
ldr   r0,=0x0300702C                ; 0804B1AA  Sprite RAM structs (03002460)
mov   r12,r0                        ; 0804B1AC
ldr   r7,=Data08171ED8              ; 0804B1AE
@@Code0804B1B0:
mov   r0,r12                        ; 0804B1B0
ldr   r5,[r0]                       ; 0804B1B2
ldr   r0,=0x1148                    ; 0804B1B4
add   r4,r5,r0                      ; 0804B1B6
lsl   r0,r2,0x1                     ; 0804B1B8
add   r0,r0,r7                      ; 0804B1BA
ldrh  r1,[r4]                       ; 0804B1BC
ldrh  r3,[r0]                       ; 0804B1BE
and   r1,r3                         ; 0804B1C0
cmp   r1,0x0                        ; 0804B1C2
bne   @@Code0804B1F0                ; 0804B1C4
lsl   r2,r2,0x1A                    ; 0804B1C6
lsr   r2,r2,0x18                    ; 0804B1C8
lsl   r1,r2,0x1                     ; 0804B1CA
ldr   r7,=0x114C                    ; 0804B1CC
add   r0,r5,r7                      ; 0804B1CE
add   r0,r0,r1                      ; 0804B1D0
strh  r3,[r0]                       ; 0804B1D2
ldrh  r0,[r4]                       ; 0804B1D4
orr   r0,r3                         ; 0804B1D6
strh  r0,[r4]                       ; 0804B1D8
strh  r2,[r6,0x3C]                  ; 0804B1DA
mov   r0,0x1                        ; 0804B1DC
b     @@Code0804B202                ; 0804B1DE
.pool                               ; 0804B1E0

@@Code0804B1F0:
sub   r0,r2,0x1                     ; 0804B1F0
lsl   r0,r0,0x18                    ; 0804B1F2
lsr   r2,r0,0x18                    ; 0804B1F4
cmp   r0,0x0                        ; 0804B1F6
bge   @@Code0804B1B0                ; 0804B1F8
mov   r0,r6                         ; 0804B1FA
bl    DespawnSprite                 ; 0804B1FC
mov   r0,0x0                        ; 0804B200
@@Code0804B202:
pop   {r4-r7}                       ; 0804B202
pop   {r1}                          ; 0804B204
bx    r1                            ; 0804B206

Sub0804B208:
push  {r4,lr}                       ; 0804B208
mov   r4,r0                         ; 0804B20A
ldr   r0,=0x0300702C                ; 0804B20C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804B20E
ldr   r1,=0x1148                    ; 0804B210
add   r3,r0,r1                      ; 0804B212
ldrh  r2,[r3]                       ; 0804B214
cmp   r2,0x0                        ; 0804B216
bne   @@Code0804B23C                ; 0804B218
add   r1,0x4                        ; 0804B21A
add   r0,r0,r1                      ; 0804B21C
ldr   r1,=0xFFFF                    ; 0804B21E
strh  r1,[r0]                       ; 0804B220
mov   r0,0x1                        ; 0804B222
neg   r0,r0                         ; 0804B224
strh  r0,[r3]                       ; 0804B226
strh  r2,[r4,0x3C]                  ; 0804B228
mov   r0,0x1                        ; 0804B22A
b     @@Code0804B244                ; 0804B22C
.pool                               ; 0804B22E

@@Code0804B23C:
mov   r0,r4                         ; 0804B23C
bl    DespawnSprite                 ; 0804B23E
mov   r0,0x0                        ; 0804B242
@@Code0804B244:
pop   {r4}                          ; 0804B244
pop   {r1}                          ; 0804B246
bx    r1                            ; 0804B248
.pool                               ; 0804B24A

Sub0804B24C:
push  {r4-r5,lr}                    ; 0804B24C
mov   r4,r0                         ; 0804B24E
ldr   r0,=0x0300702C                ; 0804B250  Sprite RAM structs (03002460)
ldr   r3,[r0]                       ; 0804B252
ldrh  r1,[r4,0x3C]                  ; 0804B254
lsl   r2,r1,0x1                     ; 0804B256
ldr   r5,=0x114C                    ; 0804B258
add   r0,r3,r5                      ; 0804B25A
add   r0,r0,r2                      ; 0804B25C
ldrh  r0,[r0]                       ; 0804B25E
mvn   r0,r0                         ; 0804B260
lsl   r0,r0,0x10                    ; 0804B262
lsr   r2,r0,0x10                    ; 0804B264
mov   r0,0x10                       ; 0804B266
and   r1,r0                         ; 0804B268
cmp   r1,0x0                        ; 0804B26A
beq   @@Code0804B280                ; 0804B26C
ldr   r0,=0x114A                    ; 0804B26E
add   r1,r3,r0                      ; 0804B270
b     @@Code0804B284                ; 0804B272
.pool                               ; 0804B274

@@Code0804B280:
ldr   r5,=0x1148                    ; 0804B280
add   r1,r3,r5                      ; 0804B282
@@Code0804B284:
ldrh  r0,[r1]                       ; 0804B284
and   r0,r2                         ; 0804B286
strh  r0,[r1]                       ; 0804B288
ldr   r0,=0xFFFF                    ; 0804B28A
strh  r0,[r4,0x3C]                  ; 0804B28C
pop   {r4-r5}                       ; 0804B28E
pop   {r0}                          ; 0804B290
bx    r0                            ; 0804B292
.pool                               ; 0804B294

Sub0804B29C:
push  {r4-r5,lr}                    ; 0804B29C
mov   r4,r0                         ; 0804B29E
mov   r1,0x3C                       ; 0804B2A0
ldsh  r0,[r4,r1]                    ; 0804B2A2
cmp   r0,0x0                        ; 0804B2A4
blt   @@Code0804B2E6                ; 0804B2A6
ldr   r0,=0x0300702C                ; 0804B2A8  Sprite RAM structs (03002460)
ldr   r3,[r0]                       ; 0804B2AA
ldrh  r1,[r4,0x3C]                  ; 0804B2AC
lsl   r2,r1,0x1                     ; 0804B2AE
ldr   r5,=0x114C                    ; 0804B2B0
add   r0,r3,r5                      ; 0804B2B2
add   r0,r0,r2                      ; 0804B2B4
ldrh  r0,[r0]                       ; 0804B2B6
mvn   r0,r0                         ; 0804B2B8
lsl   r0,r0,0x10                    ; 0804B2BA
lsr   r2,r0,0x10                    ; 0804B2BC
mov   r0,0x10                       ; 0804B2BE
and   r1,r0                         ; 0804B2C0
cmp   r1,0x0                        ; 0804B2C2
beq   @@Code0804B2D8                ; 0804B2C4
ldr   r0,=0x114A                    ; 0804B2C6
add   r1,r3,r0                      ; 0804B2C8
b     @@Code0804B2DC                ; 0804B2CA
.pool                               ; 0804B2CC

@@Code0804B2D8:
ldr   r5,=0x1148                    ; 0804B2D8
add   r1,r3,r5                      ; 0804B2DA
@@Code0804B2DC:
ldrh  r0,[r1]                       ; 0804B2DC
and   r0,r2                         ; 0804B2DE
strh  r0,[r1]                       ; 0804B2E0
ldr   r0,=0xFFFF                    ; 0804B2E2
strh  r0,[r4,0x3C]                  ; 0804B2E4
@@Code0804B2E6:
pop   {r4-r5}                       ; 0804B2E6
pop   {r0}                          ; 0804B2E8
bx    r0                            ; 0804B2EA
.pool                               ; 0804B2EC

Sub0804B2F4:
push  {r4-r5,lr}                    ; 0804B2F4
ldr   r0,=0x03007240                ; 0804B2F6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804B2F8
ldr   r1,=0x1224                    ; 0804B2FA
add   r4,r0,r1                      ; 0804B2FC
mov   r5,0x17                       ; 0804B2FE
@@Code0804B300:
ldrh  r0,[r4,0x24]                  ; 0804B300
cmp   r0,0x0                        ; 0804B302
beq   @@Code0804B314                ; 0804B304
mov   r0,r4                         ; 0804B306
bl    Sub0804B29C                   ; 0804B308
ldrh  r1,[r4,0x38]                  ; 0804B30C
mov   r0,0xFF                       ; 0804B30E
and   r0,r1                         ; 0804B310
strh  r0,[r4,0x38]                  ; 0804B312
@@Code0804B314:
sub   r4,0xB0                       ; 0804B314
sub   r5,0x1                        ; 0804B316
cmp   r5,0x0                        ; 0804B318
bge   @@Code0804B300                ; 0804B31A
ldr   r0,=0x0300702C                ; 0804B31C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804B31E
ldr   r1,=0x1148                    ; 0804B320
add   r0,r0,r1                      ; 0804B322
ldr   r1,=0xFFFF                    ; 0804B324
strh  r1,[r0]                       ; 0804B326
pop   {r4-r5}                       ; 0804B328
pop   {r0}                          ; 0804B32A
bx    r0                            ; 0804B32C
.pool                               ; 0804B32E

ClearDynamicSlot:
; Clear a sprite's dynamic slot
; input r0: sprite
push  {r4-r6,lr}                    ; 0804B344
add   sp,-0x10                      ; 0804B346
ldrh  r0,[r0,0x3C]                  ; 0804B348
lsl   r0,r0,0x10                    ; 0804B34A
cmp   r0,0x0                        ; 0804B34C
blt   @@Code0804B398                ; 0804B34E
ldr   r1,=Data08171F0C              ; 0804B350
lsr   r0,r0,0x12                    ; 0804B352
lsl   r0,r0,0x1                     ; 0804B354
add   r0,r0,r1                      ; 0804B356
ldrh  r4,[r0]                       ; 0804B358
mov   r5,0x0                        ; 0804B35A
str   r5,[sp]                       ; 0804B35C
ldr   r0,=0x06013200                ; 0804B35E
add   r1,r4,r0                      ; 0804B360
ldr   r6,=0x05000020                ; 0804B362
mov   r0,sp                         ; 0804B364
mov   r2,r6                         ; 0804B366
bl    swi_MemoryCopy4or2            ; 0804B368  Memory copy/fill, 4- or 2-byte blocks
str   r5,[sp,0x4]                   ; 0804B36C
add   r0,sp,0x4                     ; 0804B36E
ldr   r2,=0x06013600                ; 0804B370
add   r1,r4,r2                      ; 0804B372
mov   r2,r6                         ; 0804B374
bl    swi_MemoryCopy4or2            ; 0804B376  Memory copy/fill, 4- or 2-byte blocks
str   r5,[sp,0x8]                   ; 0804B37A
add   r0,sp,0x8                     ; 0804B37C
ldr   r2,=0x06013A00                ; 0804B37E
add   r1,r4,r2                      ; 0804B380
mov   r2,r6                         ; 0804B382
bl    swi_MemoryCopy4or2            ; 0804B384  Memory copy/fill, 4- or 2-byte blocks
str   r5,[sp,0xC]                   ; 0804B388
add   r0,sp,0xC                     ; 0804B38A
ldr   r1,=0x06013E00                ; 0804B38C
add   r4,r4,r1                      ; 0804B38E
mov   r1,r4                         ; 0804B390
mov   r2,r6                         ; 0804B392
bl    swi_MemoryCopy4or2            ; 0804B394  Memory copy/fill, 4- or 2-byte blocks
@@Code0804B398:
add   sp,0x10                       ; 0804B398
pop   {r4-r6}                       ; 0804B39A
pop   {r0}                          ; 0804B39C
bx    r0                            ; 0804B39E
.pool                               ; 0804B3A0

LoadDynGfx_16x16Corner:
; Load a 16x16 dynamic sprite's graphics, into one corner of its dynamic slot, starting from the top left
; input r0: sprite, r1: pointer to dynamic graphics
push  {r4-r5,lr}                    ; 0804B3B8
mov   r2,r0                         ; 0804B3BA
mov   r5,r1                         ; 0804B3BC
mov   r1,0x3C                       ; 0804B3BE
ldsh  r0,[r2,r1]                    ; 0804B3C0
cmp   r0,0x0                        ; 0804B3C2
blt   @@Code0804B3EE                ; 0804B3C4
ldr   r1,=Data08171F1C              ; 0804B3C6
ldrh  r0,[r2,0x3C]                  ; 0804B3C8
lsl   r0,r0,0x1                     ; 0804B3CA
add   r0,r0,r1                      ; 0804B3CC
ldrh  r4,[r0]                       ; 0804B3CE
ldr   r0,=0x06013200                ; 0804B3D0
add   r1,r4,r0                      ; 0804B3D2
mov   r0,r5                         ; 0804B3D4
mov   r2,0x10                       ; 0804B3D6
bl    swi_MemoryCopy32              ; 0804B3D8  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 0804B3DC
lsl   r1,r1,0x3                     ; 0804B3DE
add   r0,r5,r1                      ; 0804B3E0
ldr   r1,=0x06013600                ; 0804B3E2
add   r4,r4,r1                      ; 0804B3E4
mov   r1,r4                         ; 0804B3E6
mov   r2,0x10                       ; 0804B3E8
bl    swi_MemoryCopy32              ; 0804B3EA  Memory copy/fill, 32-byte blocks
@@Code0804B3EE:
pop   {r4-r5}                       ; 0804B3EE
pop   {r0}                          ; 0804B3F0
bx    r0                            ; 0804B3F2
.pool                               ; 0804B3F4

LoadDynGfx_16x16Center:
; Load a 16x16 dynamic sprite's graphics, centered in its dynamic slot
; input r0: sprite, r1: pointer to dynamic graphics
push  {r4-r5,lr}                    ; 0804B400
mov   r5,r1                         ; 0804B402
ldrh  r0,[r0,0x3C]                  ; 0804B404
lsl   r0,r0,0x10                    ; 0804B406
cmp   r0,0x0                        ; 0804B408
blt   @@Code0804B434                ; 0804B40A
ldr   r1,=Data08171F5C              ; 0804B40C
lsr   r0,r0,0x12                    ; 0804B40E
lsl   r0,r0,0x1                     ; 0804B410
add   r0,r0,r1                      ; 0804B412
ldrh  r4,[r0]                       ; 0804B414
ldr   r0,=0x06013200                ; 0804B416
add   r1,r4,r0                      ; 0804B418
mov   r0,r5                         ; 0804B41A
mov   r2,0x10                       ; 0804B41C
bl    swi_MemoryCopy32              ; 0804B41E  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 0804B422
lsl   r1,r1,0x3                     ; 0804B424
add   r0,r5,r1                      ; 0804B426
ldr   r1,=0x06013600                ; 0804B428
add   r4,r4,r1                      ; 0804B42A
mov   r1,r4                         ; 0804B42C
mov   r2,0x10                       ; 0804B42E
bl    swi_MemoryCopy32              ; 0804B430  Memory copy/fill, 32-byte blocks
@@Code0804B434:
pop   {r4-r5}                       ; 0804B434
pop   {r0}                          ; 0804B436
bx    r0                            ; 0804B438
.pool                               ; 0804B43A

LoadDynGfx_16x32:
; Load a 16x32 dynamic sprite's graphics, with position within dynamic slot determined by r2?
; input r0: sprite, r1: pointer to dynamic graphics, r2: offset of some kind?
push  {r4-r5,lr}                    ; 0804B448
mov   r5,r1                         ; 0804B44A
lsl   r2,r2,0x10                    ; 0804B44C
lsr   r2,r2,0x10                    ; 0804B44E
ldrh  r0,[r0,0x3C]                  ; 0804B450
lsl   r0,r0,0x10                    ; 0804B452
cmp   r0,0x0                        ; 0804B454
blt   @@Code0804B4A8                ; 0804B456
ldr   r1,=Data08171F7A              ; 0804B458
lsr   r0,r0,0x12                    ; 0804B45A
lsl   r0,r0,0x1                     ; 0804B45C
add   r0,r0,r1                      ; 0804B45E
lsl   r4,r2,0x2                     ; 0804B460
ldrh  r0,[r0]                       ; 0804B462
add   r4,r4,r0                      ; 0804B464
lsl   r4,r4,0x10                    ; 0804B466
lsr   r4,r4,0x10                    ; 0804B468
ldr   r0,=0x06013200                ; 0804B46A
add   r1,r4,r0                      ; 0804B46C
mov   r0,r5                         ; 0804B46E
mov   r2,0x10                       ; 0804B470
bl    swi_MemoryCopy32              ; 0804B472  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 0804B476
lsl   r1,r1,0x3                     ; 0804B478
add   r0,r5,r1                      ; 0804B47A
ldr   r2,=0x06013600                ; 0804B47C
add   r1,r4,r2                      ; 0804B47E
mov   r2,0x10                       ; 0804B480
bl    swi_MemoryCopy32              ; 0804B482  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 0804B486
lsl   r1,r1,0x4                     ; 0804B488
add   r0,r5,r1                      ; 0804B48A
ldr   r2,=0x06013A00                ; 0804B48C
add   r1,r4,r2                      ; 0804B48E
mov   r2,0x10                       ; 0804B490
bl    swi_MemoryCopy32              ; 0804B492  Memory copy/fill, 32-byte blocks
mov   r1,0xC0                       ; 0804B496
lsl   r1,r1,0x4                     ; 0804B498
add   r0,r5,r1                      ; 0804B49A
ldr   r2,=0x06013E00                ; 0804B49C
add   r4,r4,r2                      ; 0804B49E
mov   r1,r4                         ; 0804B4A0
mov   r2,0x10                       ; 0804B4A2
bl    swi_MemoryCopy32              ; 0804B4A4  Memory copy/fill, 32-byte blocks
@@Code0804B4A8:
pop   {r4-r5}                       ; 0804B4A8
pop   {r0}                          ; 0804B4AA
bx    r0                            ; 0804B4AC
.pool                               ; 0804B4AE

LoadDynGfx_32x32:
; Load a 32x32 dynamic sprite's graphics
; input r0: sprite, r1: pointer to dynamic graphics
push  {r4-r5,lr}                    ; 0804B4C4
mov   r5,r1                         ; 0804B4C6
ldrh  r0,[r0,0x3C]                  ; 0804B4C8
lsl   r0,r0,0x10                    ; 0804B4CA
cmp   r0,0x0                        ; 0804B4CC
blt   @@Code0804B518                ; 0804B4CE
ldr   r1,=Data08171F7A              ; 0804B4D0
lsr   r0,r0,0x12                    ; 0804B4D2
lsl   r0,r0,0x1                     ; 0804B4D4
add   r0,r0,r1                      ; 0804B4D6
ldrh  r4,[r0]                       ; 0804B4D8
ldr   r0,=0x06013200                ; 0804B4DA
add   r1,r4,r0                      ; 0804B4DC
mov   r0,r5                         ; 0804B4DE
mov   r2,0x20                       ; 0804B4E0
bl    swi_MemoryCopy32              ; 0804B4E2  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 0804B4E6
lsl   r1,r1,0x3                     ; 0804B4E8
add   r0,r5,r1                      ; 0804B4EA
ldr   r2,=0x06013600                ; 0804B4EC
add   r1,r4,r2                      ; 0804B4EE
mov   r2,0x20                       ; 0804B4F0
bl    swi_MemoryCopy32              ; 0804B4F2  Memory copy/fill, 32-byte blocks
mov   r1,0x80                       ; 0804B4F6
lsl   r1,r1,0x4                     ; 0804B4F8
add   r0,r5,r1                      ; 0804B4FA
ldr   r2,=0x06013A00                ; 0804B4FC
add   r1,r4,r2                      ; 0804B4FE
mov   r2,0x20                       ; 0804B500
bl    swi_MemoryCopy32              ; 0804B502  Memory copy/fill, 32-byte blocks
mov   r1,0xC0                       ; 0804B506
lsl   r1,r1,0x4                     ; 0804B508
add   r0,r5,r1                      ; 0804B50A
ldr   r2,=0x06013E00                ; 0804B50C
add   r4,r4,r2                      ; 0804B50E
mov   r1,r4                         ; 0804B510
mov   r2,0x20                       ; 0804B512
bl    swi_MemoryCopy32              ; 0804B514  Memory copy/fill, 32-byte blocks
@@Code0804B518:
pop   {r4-r5}                       ; 0804B518
pop   {r0}                          ; 0804B51A
bx    r0                            ; 0804B51C
.pool                               ; 0804B51E

Sub0804B534:
push  {lr}                          ; 0804B534
ldr   r1,=0x03007240                ; 0804B536  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r1]                       ; 0804B538
ldr   r1,=0x2A76                    ; 0804B53A
add   r2,r2,r1                      ; 0804B53C
ldrh  r1,[r2]                       ; 0804B53E
add   r1,0x1                        ; 0804B540
strh  r1,[r2]                       ; 0804B542
bl    DespawnSprite                 ; 0804B544
pop   {r0}                          ; 0804B548
bx    r0                            ; 0804B54A
.pool                               ; 0804B54C

Sub0804B554:
mov   r2,r0                         ; 0804B554
mov   r1,r2                         ; 0804B556
add   r1,0x42                       ; 0804B558
mov   r0,0x80                       ; 0804B55A
lsl   r0,r0,0x1                     ; 0804B55C
strh  r0,[r1]                       ; 0804B55E
add   r1,0x2                        ; 0804B560
add   r0,0x40                       ; 0804B562
strh  r0,[r1]                       ; 0804B564
add   r1,0x2                        ; 0804B566
mov   r0,0x10                       ; 0804B568
strh  r0,[r1]                       ; 0804B56A
bx    lr                            ; 0804B56C
.pool                               ; 0804B56E

Sub0804B570:
push  {r4,lr}                       ; 0804B570
mov   r4,r0                         ; 0804B572
ldr   r1,=0x0115                    ; 0804B574
bl    Sub0804A250                   ; 0804B576
ldrh  r0,[r4,0x2C]                  ; 0804B57A
mov   r1,0x6                        ; 0804B57C
eor   r0,r1                         ; 0804B57E
strh  r0,[r4,0x2C]                  ; 0804B580
mov   r0,r4                         ; 0804B582
bl    Sub0804B554                   ; 0804B584
pop   {r4}                          ; 0804B588
pop   {r0}                          ; 0804B58A
bx    r0                            ; 0804B58C
.pool                               ; 0804B58E

Sub0804B594:
push  {r4,lr}                       ; 0804B594
mov   r4,r0                         ; 0804B596
ldr   r1,=0x0115                    ; 0804B598
bl    Sub0804A250                   ; 0804B59A
mov   r0,r4                         ; 0804B59E
bl    Sub0804B554                   ; 0804B5A0
pop   {r4}                          ; 0804B5A4
pop   {r0}                          ; 0804B5A6
bx    r0                            ; 0804B5A8
.pool                               ; 0804B5AA

Sub0804B5B0:
push  {r4-r6,lr}                    ; 0804B5B0
mov   r4,r0                         ; 0804B5B2
ldr   r0,=0x03007240                ; 0804B5B4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804B5B6
ldr   r2,=0x2A22                    ; 0804B5B8
add   r0,r0,r2                      ; 0804B5BA
strh  r1,[r0]                       ; 0804B5BC
ldr   r0,=0x03002200                ; 0804B5BE
ldr   r1,=0x48CE                    ; 0804B5C0
add   r6,r0,r1                      ; 0804B5C2  03006ACE
ldrh  r0,[r6]                       ; 0804B5C4
ldr   r5,=0x012B                    ; 0804B5C6
mov   r1,0xD1                       ; 0804B5C8
lsl   r1,r1,0x1                     ; 0804B5CA  01A2
cmp   r0,r5                         ; 0804B5CC
bls   @@Code0804B5D2                ; 0804B5CE
sub   r1,0x8D                       ; 0804B5D0
@@Code0804B5D2:
mov   r0,r4                         ; 0804B5D2
bl    Sub0804A250                   ; 0804B5D4
mov   r0,r4                         ; 0804B5D8
add   r0,0x60                       ; 0804B5DA
mov   r1,0x0                        ; 0804B5DC
strh  r1,[r0]                       ; 0804B5DE
ldrh  r0,[r6]                       ; 0804B5E0
cmp   r0,r5                         ; 0804B5E2
bls   @@Code0804B604                ; 0804B5E4
mov   r0,r4                         ; 0804B5E6
bl    Sub0804B554                   ; 0804B5E8
b     @@Code0804B614                ; 0804B5EC
.pool                               ; 0804B5EE

@@Code0804B604:
mov   r1,r4                         ; 0804B604
add   r1,0x42                       ; 0804B606
mov   r0,0xC0                       ; 0804B608
lsl   r0,r0,0x1                     ; 0804B60A
strh  r0,[r1]                       ; 0804B60C
add   r1,0x59                       ; 0804B60E
mov   r0,0xFF                       ; 0804B610
strb  r0,[r1]                       ; 0804B612
@@Code0804B614:
ldr   r0,=0x03007240                ; 0804B614  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804B616
ldr   r2,=0x2A22                    ; 0804B618
add   r0,r0,r2                      ; 0804B61A
ldrh  r0,[r0]                       ; 0804B61C
cmp   r0,0x0                        ; 0804B61E
beq   @@Code0804B634                ; 0804B620
ldr   r0,=0x03002200                ; 0804B622
ldr   r1,=0x48CE                    ; 0804B624
add   r0,r0,r1                      ; 0804B626
ldrh  r0,[r0]                       ; 0804B628  stars (fixed-point)
add   r0,0xA                        ; 0804B62A
lsl   r0,r0,0x10                    ; 0804B62C
lsr   r0,r0,0x10                    ; 0804B62E
bl    Sub080DB6D8                   ; 0804B630
@@Code0804B634:
pop   {r4-r6}                       ; 0804B634
pop   {r0}                          ; 0804B636
bx    r0                            ; 0804B638
.pool                               ; 0804B63A

Sub0804B64C:
push  {lr}                          ; 0804B64C
mov   r1,0x0                        ; 0804B64E
bl    Sub0804B5B0                   ; 0804B650
pop   {r0}                          ; 0804B654
bx    r0                            ; 0804B656

Sub0804B658:
push  {lr}                          ; 0804B658
mov   r1,0x1                        ; 0804B65A
bl    Sub0804B5B0                   ; 0804B65C
pop   {r0}                          ; 0804B660
bx    r0                            ; 0804B662

Sub0804B664:
push  {r4-r6,lr}                    ; 0804B664
mov   r5,r0                         ; 0804B666
ldr   r4,=0x03007240                ; 0804B668  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r4]                       ; 0804B66A
ldr   r0,[r5]                       ; 0804B66C
asr   r0,r0,0x8                     ; 0804B66E
ldr   r3,=0x29D2                    ; 0804B670
add   r1,r2,r3                      ; 0804B672
mov   r3,0x0                        ; 0804B674
strh  r0,[r1]                       ; 0804B676
ldr   r0,[r5,0x4]                   ; 0804B678
asr   r0,r0,0x8                     ; 0804B67A
ldr   r6,=0x29D6                    ; 0804B67C
add   r1,r2,r6                      ; 0804B67E
strh  r0,[r1]                       ; 0804B680
ldrh  r1,[r5,0x2C]                  ; 0804B682
add   r6,0x4                        ; 0804B684
add   r0,r2,r6                      ; 0804B686
strh  r1,[r0]                       ; 0804B688
ldr   r0,=0x2A76                    ; 0804B68A
add   r2,r2,r0                      ; 0804B68C
strh  r3,[r2]                       ; 0804B68E
bl    Sub0803E92C                   ; 0804B690
ldrh  r0,[r5,0x32]                  ; 0804B694
sub   r0,0x22                       ; 0804B696
lsl   r0,r0,0x18                    ; 0804B698
lsr   r2,r0,0x18                    ; 0804B69A
ldr   r0,=0x0300702C                ; 0804B69C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804B69E
ldr   r1,=0x156E                    ; 0804B6A0
add   r0,r0,r1                      ; 0804B6A2
ldrb  r1,[r0]                       ; 0804B6A4
mov   r0,0xB0                       ; 0804B6A6
mul   r1,r0                         ; 0804B6A8
mov   r3,0x95                       ; 0804B6AA
lsl   r3,r3,0x2                     ; 0804B6AC
add   r1,r1,r3                      ; 0804B6AE
ldr   r0,[r4]                       ; 0804B6B0
add   r0,r0,r1                      ; 0804B6B2
ldrh  r1,[r0,0x32]                  ; 0804B6B4
mov   r0,0x9E                       ; 0804B6B6
lsl   r0,r0,0x1                     ; 0804B6B8
cmp   r1,r0                         ; 0804B6BA
beq   @@Code0804B6C4                ; 0804B6BC
add   r0,0x8                        ; 0804B6BE
cmp   r1,r0                         ; 0804B6C0
bne   @@Code0804B6C6                ; 0804B6C2
@@Code0804B6C4:
mov   r2,0x3                        ; 0804B6C4
@@Code0804B6C6:
ldr   r0,=CodePtrs08171F8C          ; 0804B6C6
lsl   r1,r2,0x2                     ; 0804B6C8
add   r1,r1,r0                      ; 0804B6CA
ldr   r1,[r1]                       ; 0804B6CC
mov   r0,r5                         ; 0804B6CE
bl    Sub_bx_r1                     ; 0804B6D0
pop   {r4-r6}                       ; 0804B6D4
pop   {r0}                          ; 0804B6D6
bx    r0                            ; 0804B6D8
.pool                               ; 0804B6DA

Sub0804B6F8:
push  {r4,lr}                       ; 0804B6F8
mov   r4,r0                         ; 0804B6FA
lsl   r1,r1,0x10                    ; 0804B6FC
lsr   r1,r1,0x10                    ; 0804B6FE
bl    Sub0804A63C                   ; 0804B700
ldr   r3,=0x03002200                ; 0804B704
ldr   r0,=0x48D6                    ; 0804B706
add   r2,r3,r0                      ; 0804B708  03006AD6
ldrh  r1,[r2]                       ; 0804B70A  red coins
add   r0,r1,0x1                     ; 0804B70C
strh  r0,[r2]                       ; 0804B70E  increment red coins
sub   r1,0x13                       ; 0804B710
ldrh  r0,[r4,0x20]                  ; 0804B712
ldr   r2,=0x4058                    ; 0804B714
add   r3,r3,r2                      ; 0804B716  03006258
strh  r0,[r3]                       ; 0804B718  set [03006258] (stereo sound X position on screen?) to sprite+20 (sprite X position on screen)
lsl   r1,r1,0x10                    ; 0804B71A
cmp   r1,0x0                        ; 0804B71C
blt   @@Code0804B738                ; 0804B71E
                                    ;          \ runs if red coins >= 20 (decimal)
mov   r0,0x7A                       ; 0804B720  7A: final red coin
mov   r1,r3                         ; 0804B722
bl    PlayYISound                   ; 0804B724
b     @@Return                      ; 0804B728 /
.pool                               ; 0804B72A

@@Code0804B738:                     ;          \ runs if red coins < 20 (decimal)
mov   r0,0x79                       ; 0804B738  79: red coin
mov   r1,r3                         ; 0804B73A
bl    PlayYISound                   ; 0804B73C /

@@Return:
pop   {r4}                          ; 0804B740
pop   {r0}                          ; 0804B742
bx    r0                            ; 0804B744
.pool                               ; 0804B746

Sub0804B748:
push  {r4,lr}                       ; 0804B748
mov   r4,r0                         ; 0804B74A
ldrh  r1,[r4,0x2C]                  ; 0804B74C
mov   r0,0x2                        ; 0804B74E
and   r0,r1                         ; 0804B750
cmp   r0,0x0                        ; 0804B752
beq   @@Code0804B760                ; 0804B754
ldrh  r1,[r4,0x2C]                  ; 0804B756
mov   r0,r4                         ; 0804B758
bl    Sub0804B6F8                   ; 0804B75A
b     @@Code0804B774                ; 0804B75E
@@Code0804B760:
bl    Sub0804A55C                   ; 0804B760
ldr   r1,=0x03002200                ; 0804B764
ldrh  r0,[r4,0x20]                  ; 0804B766
ldr   r2,=0x4058                    ; 0804B768
add   r1,r1,r2                      ; 0804B76A
strh  r0,[r1]                       ; 0804B76C
mov   r0,0x6B                       ; 0804B76E
bl    PlayYISound                   ; 0804B770
@@Code0804B774:
pop   {r4}                          ; 0804B774
pop   {r0}                          ; 0804B776
bx    r0                            ; 0804B778
.pool                               ; 0804B77A

Sub0804B784:
push  {r4-r5,lr}                    ; 0804B784
mov   r4,r0                         ; 0804B786
mov   r5,r1                         ; 0804B788
ldrh  r1,[r4,0x32]                  ; 0804B78A
cmp   r1,0x21                       ; 0804B78C
bls   @@Code0804B7E0                ; 0804B78E
cmp   r1,0x2B                       ; 0804B790
bhi   @@Code0804B7E0                ; 0804B792
cmp   r1,0x25                       ; 0804B794
bls   @@Code0804B7BC                ; 0804B796
cmp   r1,0x27                       ; 0804B798
beq   @@Code0804B7A6                ; 0804B79A
ldr   r0,[r4,0x14]                  ; 0804B79C
cmp   r0,0x3F                       ; 0804B79E
ble   @@Code0804B858                ; 0804B7A0
cmp   r1,0x28                       ; 0804B7A2
bhi   @@Code0804B858                ; 0804B7A4
@@Code0804B7A6:
mov   r2,r4                         ; 0804B7A6
add   r2,0x6A                       ; 0804B7A8
mov   r0,0x0                        ; 0804B7AA
mov   r1,0x1                        ; 0804B7AC
strh  r1,[r2]                       ; 0804B7AE
mov   r1,0x40                       ; 0804B7B0
str   r1,[r4,0x14]                  ; 0804B7B2
mov   r1,r4                         ; 0804B7B4
add   r1,0x5E                       ; 0804B7B6
strh  r0,[r1]                       ; 0804B7B8
b     @@Code0804B840                ; 0804B7BA
@@Code0804B7BC:
mov   r0,r4                         ; 0804B7BC
bl    Sub0804B664                   ; 0804B7BE
ldr   r0,=0x03007240                ; 0804B7C2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804B7C4
ldr   r1,=0x2A76                    ; 0804B7C6
add   r0,r0,r1                      ; 0804B7C8
ldrh  r0,[r0]                       ; 0804B7CA
cmp   r0,0x0                        ; 0804B7CC
beq   @@Code0804B7D2                ; 0804B7CE
b     @@Return                      ; 0804B7D0
@@Code0804B7D2:
mov   r0,0x40                       ; 0804B7D2
str   r0,[r4,0x14]                  ; 0804B7D4
b     @@Code0804B840                ; 0804B7D6
.pool                               ; 0804B7D8

@@Code0804B7E0:
ldrh  r0,[r4,0x32]                  ; 0804B7E0
mov   r2,r0                         ; 0804B7E2
ldr   r1,=0x0107                    ; 0804B7E4
mov   r3,r0                         ; 0804B7E6
cmp   r2,r1                         ; 0804B7E8
bne   @@Code0804B7F8                ; 0804B7EA
mov   r0,r4                         ; 0804B7EC
bl    Sub08051A20                   ; 0804B7EE
b     @@Return                      ; 0804B7F2
.pool                               ; 0804B7F4

@@Code0804B7F8:
mov   r0,0x40                       ; 0804B7F8
str   r0,[r4,0x14]                  ; 0804B7FA
mov   r0,0xD2                       ; 0804B7FC
lsl   r0,r0,0x1                     ; 0804B7FE  1A4
cmp   r2,r0                         ; 0804B800
bls   @@Code0804B8C8                ; 0804B802
add   r0,0x5                        ; 0804B804  1A9
cmp   r2,r0                         ; 0804B806
bhi   @@Code0804B8C8                ; 0804B808
mov   r0,r4                         ; 0804B80A
add   r0,0x44                       ; 0804B80C
ldrh  r0,[r0]                       ; 0804B80E
cmp   r0,0x0                        ; 0804B810
beq   @@Code0804B816                ; 0804B812
b     @@Code0804B95C                ; 0804B814
@@Code0804B816:
mov   r0,r4                         ; 0804B816
bl    Sub080B1CF4                   ; 0804B818
ldr   r2,=0x03007240                ; 0804B81C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0300702C                ; 0804B81E  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804B820
ldr   r3,=0x156E                    ; 0804B822
add   r0,r0,r3                      ; 0804B824
ldrb  r1,[r0]                       ; 0804B826
mov   r0,0xB0                       ; 0804B828
mul   r0,r1                         ; 0804B82A
mov   r1,0x95                       ; 0804B82C
lsl   r1,r1,0x2                     ; 0804B82E
add   r0,r0,r1                      ; 0804B830
ldr   r1,[r2]                       ; 0804B832
add   r1,r1,r0                      ; 0804B834
ldrh  r1,[r1,0x32]                  ; 0804B836
ldr   r0,=0x0199                    ; 0804B838
cmp   r1,r0                         ; 0804B83A
bne   @@Code0804B840                ; 0804B83C
b     @@Code0804B954                ; 0804B83E
@@Code0804B840:
mov   r0,0x8                        ; 0804B840
strh  r0,[r4,0x24]                  ; 0804B842
b     @@Code0804B864                ; 0804B844
.pool                               ; 0804B846

@@Code0804B858:
mov   r1,0x0                        ; 0804B858
mov   r0,0x7                        ; 0804B85A
strh  r0,[r4,0x24]                  ; 0804B85C
mov   r0,r4                         ; 0804B85E
add   r0,0x5E                       ; 0804B860
strh  r1,[r0]                       ; 0804B862
@@Code0804B864:
ldr   r2,=0x03007240                ; 0804B864  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0300702C                ; 0804B866  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804B868
ldr   r3,=0x156E                    ; 0804B86A
add   r0,r0,r3                      ; 0804B86C
ldrb  r1,[r0]                       ; 0804B86E
mov   r0,0xB0                       ; 0804B870
mul   r0,r1                         ; 0804B872
mov   r1,0x95                       ; 0804B874
lsl   r1,r1,0x2                     ; 0804B876
add   r0,r0,r1                      ; 0804B878
ldr   r1,[r2]                       ; 0804B87A
add   r1,r1,r0                      ; 0804B87C
mov   r0,r1                         ; 0804B87E
add   r0,0x56                       ; 0804B880
mov   r2,0x0                        ; 0804B882
ldsh  r0,[r0,r2]                    ; 0804B884
cmp   r0,0x0                        ; 0804B886
bne   @@Code0804B8A0                ; 0804B888
mov   r2,0x0                        ; 0804B88A
cmp   r4,r1                         ; 0804B88C
blo   @@Code0804B8A8                ; 0804B88E
mov   r2,0x1                        ; 0804B890
b     @@Code0804B8A8                ; 0804B892
.pool                               ; 0804B894

@@Code0804B8A0:
cmp   r4,r1                         ; 0804B8A0
beq   @@Code0804B8A6                ; 0804B8A2
neg   r0,r0                         ; 0804B8A4
@@Code0804B8A6:
lsr   r2,r0,0x1F                    ; 0804B8A6
@@Code0804B8A8:
ldr   r0,=0xFFFFFF00                ; 0804B8A8
cmp   r2,0x0                        ; 0804B8AA
beq   @@Code0804B8B2                ; 0804B8AC
mov   r0,0x80                       ; 0804B8AE
lsl   r0,r0,0x1                     ; 0804B8B0
@@Code0804B8B2:
str   r0,[r4,0x8]                   ; 0804B8B2
ldr   r0,=0xFFFFFE00                ; 0804B8B4
str   r0,[r4,0xC]                   ; 0804B8B6
mov   r0,0x40                       ; 0804B8B8
str   r0,[r4,0x14]                  ; 0804B8BA
b     @@Code0804B95C                ; 0804B8BC
.pool                               ; 0804B8BE

@@Code0804B8C8:
lsl   r0,r3,0x10                    ; 0804B8C8
lsr   r1,r0,0x10                    ; 0804B8CA
ldr   r0,=0x0115                    ; 0804B8CC  115: gravity-affected coin, can be red
cmp   r1,r0                         ; 0804B8CE
bne   @@Code0804B8E0                ; 0804B8D0
mov   r0,r4                         ; 0804B8D2
bl    Sub0804B748                   ; 0804B8D4
b     @@Return                      ; 0804B8D8
.pool                               ; 0804B8DA

@@Code0804B8E0:
mov   r0,0x80                       ; 0804B8E0
lsl   r0,r0,0x1                     ; 0804B8E2
cmp   r1,r0                         ; 0804B8E4
bne   @@Code0804B912                ; 0804B8E6
ldr   r0,=0x03007240                ; 0804B8E8  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0804B8EA
ldr   r0,[r4]                       ; 0804B8EC
asr   r0,r0,0x8                     ; 0804B8EE
ldr   r3,=0x29D2                    ; 0804B8F0
add   r1,r2,r3                      ; 0804B8F2
strh  r0,[r1]                       ; 0804B8F4
ldr   r0,[r4,0x4]                   ; 0804B8F6
asr   r0,r0,0x8                     ; 0804B8F8
sub   r0,0x4                        ; 0804B8FA
ldr   r1,=0x29D6                    ; 0804B8FC
add   r2,r2,r1                      ; 0804B8FE
strh  r0,[r2]                       ; 0804B900
mov   r0,r4                         ; 0804B902
add   r0,0x6A                       ; 0804B904
ldrh  r0,[r0]                       ; 0804B906
add   r0,0x1                        ; 0804B908
lsl   r0,r0,0x10                    ; 0804B90A
lsr   r0,r0,0x10                    ; 0804B90C
bl    SpawnLifeSecSpr               ; 0804B90E
@@Code0804B912:
ldr   r2,=0x03007240                ; 0804B912  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,=0x0300702C                ; 0804B914  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804B916
ldr   r3,=0x156E                    ; 0804B918
add   r0,r0,r3                      ; 0804B91A
ldrb  r1,[r0]                       ; 0804B91C
mov   r0,0xB0                       ; 0804B91E
mul   r0,r1                         ; 0804B920
mov   r1,0x95                       ; 0804B922
lsl   r1,r1,0x2                     ; 0804B924
add   r0,r0,r1                      ; 0804B926
ldr   r1,[r2]                       ; 0804B928
add   r1,r1,r0                      ; 0804B92A
ldrh  r1,[r1,0x32]                  ; 0804B92C
ldr   r0,=0x0107                    ; 0804B92E
cmp   r1,r0                         ; 0804B930
bne   @@Code0804B954                ; 0804B932
mov   r0,r4                         ; 0804B934
bl    Sub0804B64C                   ; 0804B936
b     @@Code0804B840                ; 0804B93A
.pool                               ; 0804B93C

@@Code0804B954:
mov   r1,r4                         ; 0804B954
add   r1,0x9B                       ; 0804B956
mov   r0,0xFF                       ; 0804B958
strb  r0,[r1]                       ; 0804B95A
@@Code0804B95C:
ldr   r0,=0x03006D80                ; 0804B95C
mov   r2,0xD8                       ; 0804B95E
lsl   r2,r2,0x1                     ; 0804B960
add   r1,r0,r2                      ; 0804B962
ldrh  r3,[r1]                       ; 0804B964
cmp   r5,r3                         ; 0804B966
bne   @@Return                      ; 0804B968
mov   r0,0x0                        ; 0804B96A
strh  r0,[r1]                       ; 0804B96C
@@Return:
pop   {r4-r5}                       ; 0804B96E
pop   {r0}                          ; 0804B970
bx    r0                            ; 0804B972
.pool                               ; 0804B974

Sub0804B978:
push  {lr}                          ; 0804B978
mov   r2,r0                         ; 0804B97A
ldrh  r0,[r2,0x32]                  ; 0804B97C
cmp   r0,0x4D                       ; 0804B97E
bne   @@Code0804B986                ; 0804B980
mov   r0,0x7                        ; 0804B982
b     @@Code0804B988                ; 0804B984
@@Code0804B986:
mov   r0,0x6                        ; 0804B986
@@Code0804B988:
strh  r0,[r2,0x24]                  ; 0804B988
mov   r0,0x80                       ; 0804B98A
lsl   r0,r0,0x3                     ; 0804B98C
str   r0,[r2,0x1C]                  ; 0804B98E
mov   r0,0x0                        ; 0804B990
str   r0,[r2,0x10]                  ; 0804B992
str   r0,[r2,0xC]                   ; 0804B994
str   r0,[r2,0x8]                   ; 0804B996
mov   r0,r2                         ; 0804B998
bl    Sub0804B784                   ; 0804B99A
pop   {r0}                          ; 0804B99E
bx    r0                            ; 0804B9A0
.pool                               ; 0804B9A2

Sub0804B9A4:
push  {r4-r6,lr}                    ; 0804B9A4
mov   r4,r0                         ; 0804B9A6
mov   r6,r1                         ; 0804B9A8
ldrh  r0,[r4,0x32]                  ; 0804B9AA
cmp   r0,0x28                       ; 0804B9AC
beq   @@Code0804BA00                ; 0804B9AE
cmp   r0,0x2B                       ; 0804B9B0
bne   @@Code0804B9C0                ; 0804B9B2
ldr   r1,[r4,0x1C]                  ; 0804B9B4
mov   r0,0x80                       ; 0804B9B6
lsl   r0,r0,0x3                     ; 0804B9B8
cmp   r1,r0                         ; 0804B9BA
bgt   @@Code0804BA00                ; 0804B9BC
b     @@Code0804BA18                ; 0804B9BE
@@Code0804B9C0:
cmp   r0,0x37                       ; 0804B9C0
bne   @@Code0804BA18                ; 0804B9C2
mov   r0,r4                         ; 0804B9C4
add   r0,0x6E                       ; 0804B9C6
ldrh  r0,[r0]                       ; 0804B9C8
cmp   r0,0x3                        ; 0804B9CA
bne   @@Code0804BA18                ; 0804B9CC
ldr   r5,=0x0300702C                ; 0804B9CE  Sprite RAM structs (03002460)
ldr   r0,[r5]                       ; 0804B9D0
ldr   r2,=0x1893                    ; 0804B9D2
add   r1,r0,r2                      ; 0804B9D4
ldr   r2,=0x156E                    ; 0804B9D6
add   r0,r0,r2                      ; 0804B9D8
ldrb  r1,[r1]                       ; 0804B9DA
ldrb  r0,[r0]                       ; 0804B9DC
cmp   r1,r0                         ; 0804B9DE
bne   @@Code0804BA18                ; 0804B9E0
bl    Sub0805F350                   ; 0804B9E2
ldr   r0,[r5]                       ; 0804B9E6
ldr   r1,=0x1893                    ; 0804B9E8
add   r0,r0,r1                      ; 0804B9EA
mov   r1,0xFF                       ; 0804B9EC
strb  r1,[r0]                       ; 0804B9EE
b     @@Code0804BA18                ; 0804B9F0
.pool                               ; 0804B9F2

@@Code0804BA00:
ldr   r0,=0x03006D80                ; 0804BA00
mov   r2,0xD8                       ; 0804BA02
lsl   r2,r2,0x1                     ; 0804BA04
add   r1,r0,r2                      ; 0804BA06
ldrh  r0,[r1]                       ; 0804BA08
cmp   r6,r0                         ; 0804BA0A
bne   @@Return                      ; 0804BA0C
mov   r0,0x0                        ; 0804BA0E
strh  r0,[r1]                       ; 0804BA10
b     @@Return                      ; 0804BA12
.pool                               ; 0804BA14

@@Code0804BA18:
mov   r0,r4                         ; 0804BA18
mov   r1,r6                         ; 0804BA1A
bl    Sub0804B978                   ; 0804BA1C
@@Return:
pop   {r4-r6}                       ; 0804BA20
pop   {r0}                          ; 0804BA22
bx    r0                            ; 0804BA24
.pool                               ; 0804BA26

Sub0804BA28:
push  {lr}                          ; 0804BA28
ldrh  r1,[r0,0x32]                  ; 0804BA2A
cmp   r1,0x1E                       ; 0804BA2C
beq   @@Return_0                    ; 0804BA2E
ldr   r0,=0x0133                    ; 0804BA30
cmp   r1,r0                         ; 0804BA32
beq   @@Return_0                    ; 0804BA34
sub   r0,0x9                        ; 0804BA36
cmp   r1,r0                         ; 0804BA38
beq   @@Return_0                    ; 0804BA3A
cmp   r1,0x9B                       ; 0804BA3C
beq   @@Return_0                    ; 0804BA3E
cmp   r1,0x74                       ; 0804BA40
bne   @@Return_1                    ; 0804BA42
@@Return_0:
mov   r0,0x0                        ; 0804BA44
b     @@Return_r0                   ; 0804BA46
.pool                               ; 0804BA48

@@Return_1:
mov   r0,0x1                        ; 0804BA4C
@@Return_r0:
pop   {r1}                          ; 0804BA4E
bx    r1                            ; 0804BA50
.pool                               ; 0804BA52

Sub0804BA54:
push  {lr}                          ; 0804BA54
ldrh  r1,[r0,0x32]                  ; 0804BA56
mov   r0,0xAB                       ; 0804BA58
lsl   r0,r0,0x1                     ; 0804BA5A
cmp   r1,r0                         ; 0804BA5C
beq   @@Return_0                    ; 0804BA5E
mov   r0,0x1                        ; 0804BA60
b     @@Return_r0                   ; 0804BA62
@@Return_0:
mov   r0,0x0                        ; 0804BA64
@@Return_r0:
pop   {r1}                          ; 0804BA66
bx    r1                            ; 0804BA68
.pool                               ; 0804BA6A

Sub0804BA6C:
push  {r4-r5,lr}                    ; 0804BA6C
mov   r4,r0                         ; 0804BA6E
mov   r5,r1                         ; 0804BA70
ldrh  r0,[r4,0x32]                  ; 0804BA72
cmp   r0,0x4D                       ; 0804BA74
beq   @@Code0804BA98                ; 0804BA76
mov   r0,r4                         ; 0804BA78
bl    Sub0804BA28                   ; 0804BA7A
cmp   r0,0x0                        ; 0804BA7E
beq   @@Return_1                    ; 0804BA80
mov   r0,r4                         ; 0804BA82
bl    Sub0804BA54                   ; 0804BA84
cmp   r0,0x0                        ; 0804BA88
beq   @@Return_1                    ; 0804BA8A
mov   r0,r4                         ; 0804BA8C
mov   r1,r5                         ; 0804BA8E
bl    Sub0804B9A4                   ; 0804BA90
mov   r0,0x0                        ; 0804BA94
b     @@Return_r0                   ; 0804BA96
@@Code0804BA98:
mov   r0,0x7                        ; 0804BA98
strh  r0,[r4,0x24]                  ; 0804BA9A
@@Return_1:
mov   r0,0x1                        ; 0804BA9C
@@Return_r0:
pop   {r4-r5}                       ; 0804BA9E
pop   {r1}                          ; 0804BAA0
bx    r1                            ; 0804BAA2

Sub0804BAA4:
push  {r4-r6,lr}                    ; 0804BAA4
mov   r5,r0                         ; 0804BAA6
add   r0,0xA3                       ; 0804BAA8
ldrb  r0,[r0]                       ; 0804BAAA
sub   r0,0x1                        ; 0804BAAC
lsl   r0,r0,0x18                    ; 0804BAAE
lsr   r6,r0,0x18                    ; 0804BAB0
asr   r2,r0,0x18                    ; 0804BAB2
cmp   r2,0x0                        ; 0804BAB4
blt   @@Return_0                    ; 0804BAB6
ldr   r1,=0x03007240                ; 0804BAB8  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0804BABA
mul   r0,r2                         ; 0804BABC
mov   r2,0x95                       ; 0804BABE
lsl   r2,r2,0x2                     ; 0804BAC0
add   r0,r0,r2                      ; 0804BAC2
ldr   r1,[r1]                       ; 0804BAC4
add   r4,r1,r0                      ; 0804BAC6
ldrh  r0,[r4,0x24]                  ; 0804BAC8
cmp   r0,0x8                        ; 0804BACA
bne   @@Code0804BB38                ; 0804BACC
mov   r0,r4                         ; 0804BACE
bl    Sub0804BA28                   ; 0804BAD0
cmp   r0,0x0                        ; 0804BAD4
beq   @@Code0804BAE2                ; 0804BAD6
mov   r0,r4                         ; 0804BAD8
bl    Sub0804BA54                   ; 0804BADA
cmp   r0,0x0                        ; 0804BADE
bne   @@Code0804BAF8                ; 0804BAE0
@@Code0804BAE2:
ldrh  r1,[r5,0x26]                  ; 0804BAE2
mov   r2,0x80                       ; 0804BAE4
lsl   r2,r2,0x2                     ; 0804BAE6
mov   r0,r2                         ; 0804BAE8
orr   r0,r1                         ; 0804BAEA
strh  r0,[r5,0x26]                  ; 0804BAEC
mov   r0,0x1                        ; 0804BAEE
b     @@Return_r0                   ; 0804BAF0
.pool                               ; 0804BAF2

@@Code0804BAF8:
mov   r0,r4                         ; 0804BAF8
add   r0,0x5E                       ; 0804BAFA
ldrh  r0,[r0]                       ; 0804BAFC
cmp   r0,0x0                        ; 0804BAFE
beq   @@Code0804BB38                ; 0804BB00
ldrh  r0,[r4,0x32]                  ; 0804BB02
cmp   r0,0x21                       ; 0804BB04
bls   @@Code0804BB0C                ; 0804BB06
cmp   r0,0x2B                       ; 0804BB08
bhi   @@Code0804BB12                ; 0804BB0A
@@Code0804BB0C:
ldr   r0,[r4,0x14]                  ; 0804BB0C
cmp   r0,0x3F                       ; 0804BB0E
ble   @@Code0804BB1C                ; 0804BB10
@@Code0804BB12:
lsl   r1,r6,0x18                    ; 0804BB12
asr   r1,r1,0x18                    ; 0804BB14
mov   r0,r4                         ; 0804BB16
bl    Sub0804B9A4                   ; 0804BB18
@@Code0804BB1C:
ldr   r0,=0x0300702C                ; 0804BB1C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804BB1E
ldr   r1,=0x156E                    ; 0804BB20
add   r0,r0,r1                      ; 0804BB22
ldrb  r1,[r0]                       ; 0804BB24
mov   r0,r5                         ; 0804BB26
bl    Sub0804B9A4                   ; 0804BB28
mov   r0,0x1                        ; 0804BB2C
b     @@Return_r0                   ; 0804BB2E
.pool                               ; 0804BB30

@@Code0804BB38:
mov   r0,r5                         ; 0804BB38
bl    Sub080DF2CC                   ; 0804BB3A
@@Return_0:
mov   r0,0x0                        ; 0804BB3E
@@Return_r0:
pop   {r4-r6}                       ; 0804BB40
pop   {r1}                          ; 0804BB42
bx    r1                            ; 0804BB44
.pool                               ; 0804BB46

Sub0804BB48:
push  {r4-r5,lr}                    ; 0804BB48
mov   r5,r0                         ; 0804BB4A
add   r0,0xA3                       ; 0804BB4C
ldrb  r0,[r0]                       ; 0804BB4E
sub   r0,0x1                        ; 0804BB50
lsl   r0,r0,0x18                    ; 0804BB52
asr   r2,r0,0x18                    ; 0804BB54
cmp   r2,0x0                        ; 0804BB56
blt   @@Return_0                    ; 0804BB58
ldr   r1,=0x03007240                ; 0804BB5A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0804BB5C
mul   r0,r2                         ; 0804BB5E
mov   r3,0x95                       ; 0804BB60
lsl   r3,r3,0x2                     ; 0804BB62
add   r0,r0,r3                      ; 0804BB64
ldr   r1,[r1]                       ; 0804BB66
add   r4,r1,r0                      ; 0804BB68
ldrh  r0,[r4,0x24]                  ; 0804BB6A
cmp   r0,0x8                        ; 0804BB6C
bne   @@Return_0                    ; 0804BB6E
mov   r0,r4                         ; 0804BB70
add   r0,0x5E                       ; 0804BB72
ldrh  r0,[r0]                       ; 0804BB74
cmp   r0,0x0                        ; 0804BB76
bne   @@Code0804BB84                ; 0804BB78
@@Return_0:
mov   r0,0x0                        ; 0804BB7A
b     @@Return_r0                   ; 0804BB7C
.pool                               ; 0804BB7E

@@Code0804BB84:
mov   r0,r4                         ; 0804BB84
mov   r1,r2                         ; 0804BB86
bl    Sub0804BA6C                   ; 0804BB88
cmp   r0,0x0                        ; 0804BB8C
beq   @@Code0804BB9E                ; 0804BB8E
ldrh  r1,[r4,0x26]                  ; 0804BB90
mov   r2,0x80                       ; 0804BB92
lsl   r2,r2,0x2                     ; 0804BB94
mov   r0,r2                         ; 0804BB96
orr   r0,r1                         ; 0804BB98
strh  r0,[r4,0x26]                  ; 0804BB9A
b     @@Return_1                    ; 0804BB9C
@@Code0804BB9E:
ldr   r0,=0x0300702C                ; 0804BB9E  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804BBA0
ldr   r3,=0x156E                    ; 0804BBA2
add   r0,r0,r3                      ; 0804BBA4
ldrb  r1,[r0]                       ; 0804BBA6
mov   r0,r5                         ; 0804BBA8
bl    Sub0804B9A4                   ; 0804BBAA
@@Return_1:
mov   r0,0x1                        ; 0804BBAE
@@Return_r0:
pop   {r4-r5}                       ; 0804BBB0
pop   {r1}                          ; 0804BBB2
bx    r1                            ; 0804BBB4
.pool                               ; 0804BBB6

Sub0804BBC0:
push  {lr}                          ; 0804BBC0
mov   r2,r0                         ; 0804BBC2
mov   r1,r2                         ; 0804BBC4
add   r1,0xA3                       ; 0804BBC6
mov   r0,0x0                        ; 0804BBC8
ldsb  r0,[r1,r0]                    ; 0804BBCA
cmp   r0,0x0                        ; 0804BBCC
bge   @@Code0804BBD8                ; 0804BBCE
mov   r0,r2                         ; 0804BBD0
bl    Sub080DF3E4                   ; 0804BBD2
b     @@Code0804BC0A                ; 0804BBD6
@@Code0804BBD8:
cmp   r0,0x0                        ; 0804BBD8
beq   @@Return_0                    ; 0804BBDA
sub   r0,0x1                        ; 0804BBDC
ldr   r1,=0x03007240                ; 0804BBDE  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 0804BBE0
asr   r2,r0,0x18                    ; 0804BBE2
mov   r0,0xB0                       ; 0804BBE4
mul   r0,r2                         ; 0804BBE6
mov   r3,0x95                       ; 0804BBE8
lsl   r3,r3,0x2                     ; 0804BBEA
add   r0,r0,r3                      ; 0804BBEC
ldr   r1,[r1]                       ; 0804BBEE
add   r1,r1,r0                      ; 0804BBF0
ldrh  r0,[r1,0x24]                  ; 0804BBF2
cmp   r0,0x8                        ; 0804BBF4
bne   @@Return_0                    ; 0804BBF6
mov   r0,r1                         ; 0804BBF8
add   r0,0x5E                       ; 0804BBFA
ldrh  r0,[r0]                       ; 0804BBFC
cmp   r0,0x0                        ; 0804BBFE
beq   @@Return_0                    ; 0804BC00
mov   r0,r1                         ; 0804BC02
mov   r1,r2                         ; 0804BC04
bl    Sub0804BA6C                   ; 0804BC06
@@Code0804BC0A:
lsl   r0,r0,0x18                    ; 0804BC0A
lsr   r0,r0,0x18                    ; 0804BC0C
b     @@Return_r0                   ; 0804BC0E
.pool                               ; 0804BC10

@@Return_0:
mov   r0,0x0                        ; 0804BC14
@@Return_r0:
pop   {r1}                          ; 0804BC16
bx    r1                            ; 0804BC18
.pool                               ; 0804BC1A

Sub0804BC1C:
push  {lr}                          ; 0804BC1C
lsl   r1,r1,0x10                    ; 0804BC1E
ldr   r2,=0xFFFF0000                ; 0804BC20
add   r1,r1,r2                      ; 0804BC22
lsr   r3,r1,0x10                    ; 0804BC24
cmp   r1,0x0                        ; 0804BC26
bge   @@Code0804BC34                ; 0804BC28
mov   r3,0x0                        ; 0804BC2A
b     @@Code0804BC3A                ; 0804BC2C
.pool                               ; 0804BC2E

@@Code0804BC34:
cmp   r3,0x3                        ; 0804BC34
bls   @@Code0804BC3A                ; 0804BC36
mov   r3,0x3                        ; 0804BC38
@@Code0804BC3A:
ldr   r1,=0x03002200                ; 0804BC3A
ldrh  r0,[r0,0x20]                  ; 0804BC3C
ldr   r2,=0x4058                    ; 0804BC3E
add   r1,r1,r2                      ; 0804BC40
strh  r0,[r1]                       ; 0804BC42
ldr   r2,=Data08171F9C              ; 0804BC44
lsl   r0,r3,0x1                     ; 0804BC46
add   r0,r0,r2                      ; 0804BC48
ldrh  r0,[r0]                       ; 0804BC4A
bl    PlayYISound                   ; 0804BC4C
pop   {r0}                          ; 0804BC50
bx    r0                            ; 0804BC52
.pool                               ; 0804BC54

Sub0804BC60:
push  {r4-r7,lr}                    ; 0804BC60
mov   r5,r0                         ; 0804BC62
ldrh  r1,[r5,0x32]                  ; 0804BC64
mov   r0,0xC2                       ; 0804BC66
lsl   r0,r0,0x1                     ; 0804BC68
cmp   r1,r0                         ; 0804BC6A
bne   @@Code0804BC78                ; 0804BC6C
mov   r0,r5                         ; 0804BC6E
add   r0,0x5E                       ; 0804BC70
ldrh  r7,[r0]                       ; 0804BC72
mov   r6,r0                         ; 0804BC74
b     @@Code0804BC7E                ; 0804BC76
@@Code0804BC78:
mov   r7,0x0                        ; 0804BC78
mov   r6,r5                         ; 0804BC7A
add   r6,0x5E                       ; 0804BC7C
@@Code0804BC7E:
mov   r0,r5                         ; 0804BC7E
bl    Sub0804B29C                   ; 0804BC80
ldrh  r4,[r5,0x34]                  ; 0804BC84
ldrh  r1,[r5,0x32]                  ; 0804BC86
mov   r0,r5                         ; 0804BC88
bl    Sub0804A250                   ; 0804BC8A
strh  r4,[r5,0x34]                  ; 0804BC8E
strh  r7,[r6]                       ; 0804BC90
mov   r0,r5                         ; 0804BC92
bl    SpriteStatus1_Init            ; 0804BC94  Sprite status 1-2: init
mov   r0,r5                         ; 0804BC98
add   r0,0x60                       ; 0804BC9A
ldrh  r0,[r0]                       ; 0804BC9C
cmp   r0,0x0                        ; 0804BC9E
beq   @@Return                      ; 0804BCA0
mov   r0,0x0                        ; 0804BCA2
str   r0,[r5,0x8]                   ; 0804BCA4
ldrh  r1,[r5,0x2C]                  ; 0804BCA6
mov   r0,0xF1                       ; 0804BCA8
and   r0,r1                         ; 0804BCAA
mov   r1,0x6                        ; 0804BCAC
orr   r0,r1                         ; 0804BCAE
strh  r0,[r5,0x2C]                  ; 0804BCB0
@@Return:
pop   {r4-r7}                       ; 0804BCB2
pop   {r0}                          ; 0804BCB4
bx    r0                            ; 0804BCB6

Sub0804BCB8:
push  {r4-r5,lr}                    ; 0804BCB8
mov   r4,r0                         ; 0804BCBA
mov   r1,r4                         ; 0804BCBC
add   r1,0x5E                       ; 0804BCBE
ldrh  r0,[r1]                       ; 0804BCC0
cmp   r0,0x1                        ; 0804BCC2
bls   @@Code0804BCCA                ; 0804BCC4
sub   r0,0x1                        ; 0804BCC6
strh  r0,[r1]                       ; 0804BCC8
@@Code0804BCCA:
mov   r1,0x3C                       ; 0804BCCA
ldsh  r0,[r4,r1]                    ; 0804BCCC
cmp   r0,0x0                        ; 0804BCCE
blt   @@Code0804BD02                ; 0804BCD0
ldrh  r1,[r4,0x38]                  ; 0804BCD2
mov   r0,0xFF                       ; 0804BCD4
lsl   r0,r0,0x8                     ; 0804BCD6
and   r0,r1                         ; 0804BCD8
cmp   r0,0x0                        ; 0804BCDA
beq   @@Code0804BD02                ; 0804BCDC
mov   r2,r4                         ; 0804BCDE
add   r2,0x40                       ; 0804BCE0
ldrh  r0,[r2]                       ; 0804BCE2
add   r0,0x10                       ; 0804BCE4
mov   r1,0xFF                       ; 0804BCE6
and   r0,r1                         ; 0804BCE8
strh  r0,[r2]                       ; 0804BCEA
ldr   r3,=0xFFFFFEA7                ; 0804BCEC
mov   r0,r3                         ; 0804BCEE
ldrh  r1,[r4,0x32]                  ; 0804BCF0
add   r0,r0,r1                      ; 0804BCF2
lsl   r0,r0,0x10                    ; 0804BCF4
lsr   r0,r0,0x10                    ; 0804BCF6
cmp   r0,0x1                        ; 0804BCF8
bhi   @@Code0804BD02                ; 0804BCFA
mov   r0,r4                         ; 0804BCFC
bl    Sub080A9D50                   ; 0804BCFE
@@Code0804BD02:
ldrh  r1,[r4,0x3E]                  ; 0804BD02
mov   r0,0xC                        ; 0804BD04
and   r0,r1                         ; 0804BD06
cmp   r0,0x0                        ; 0804BD08
beq   @@Code0804BD5C                ; 0804BD0A
ldr   r1,[r4,0x14]                  ; 0804BD0C
cmp   r1,0x3F                       ; 0804BD0E
bgt   @@Code0804BD24                ; 0804BD10
lsl   r1,r1,0x10                    ; 0804BD12
lsr   r1,r1,0x10                    ; 0804BD14
mov   r0,r4                         ; 0804BD16
bl    Sub0804BC1C                   ; 0804BD18
b     @@Code0804BD5C                ; 0804BD1C
.pool                               ; 0804BD1E

@@Code0804BD24:
ldr   r0,[r4,0x8]                   ; 0804BD24
asr   r0,r0,0x2                     ; 0804BD26
str   r0,[r4,0x8]                   ; 0804BD28
mov   r0,0x40                       ; 0804BD2A
str   r0,[r4,0x14]                  ; 0804BD2C
mov   r0,r4                         ; 0804BD2E
add   r0,0x60                       ; 0804BD30
ldrh  r0,[r0]                       ; 0804BD32
cmp   r0,0x0                        ; 0804BD34
beq   @@Code0804BD40                ; 0804BD36
mov   r0,r4                         ; 0804BD38
bl    Sub0804AB44                   ; 0804BD3A
b     @@Return_1                    ; 0804BD3E
@@Code0804BD40:
ldr   r2,=0x03002200                ; 0804BD40
ldr   r0,[r4]                       ; 0804BD42
asr   r0,r0,0x8                     ; 0804BD44
ldr   r3,=0x47E4                    ; 0804BD46
add   r1,r2,r3                      ; 0804BD48
ldrh  r1,[r1]                       ; 0804BD4A
sub   r0,r0,r1                      ; 0804BD4C
ldr   r1,=0x4058                    ; 0804BD4E
add   r2,r2,r1                      ; 0804BD50
strh  r0,[r2]                       ; 0804BD52
mov   r0,r4                         ; 0804BD54
mov   r1,0xC                        ; 0804BD56
bl    Sub0804A880                   ; 0804BD58
@@Code0804BD5C:
ldrh  r1,[r4,0x3E]                  ; 0804BD5C
mov   r2,0x1                        ; 0804BD5E
and   r2,r1                         ; 0804BD60
cmp   r2,0x0                        ; 0804BD62
bne   @@Code0804BDA0                ; 0804BD64
mov   r0,0x2                        ; 0804BD66
and   r0,r1                         ; 0804BD68
cmp   r0,0x0                        ; 0804BD6A
beq   @@Code0804BE18                ; 0804BD6C
ldr   r1,[r4,0x14]                  ; 0804BD6E
cmp   r1,0x3F                       ; 0804BD70
ble   @@Code0804BDA6                ; 0804BD72
str   r2,[r4,0xC]                   ; 0804BD74
ldr   r2,=0x03002200                ; 0804BD76
ldr   r0,[r4]                       ; 0804BD78
asr   r0,r0,0x8                     ; 0804BD7A
ldr   r3,=0x47E4                    ; 0804BD7C
add   r1,r2,r3                      ; 0804BD7E
ldrh  r1,[r1]                       ; 0804BD80
sub   r0,r0,r1                      ; 0804BD82
ldr   r1,=0x4058                    ; 0804BD84
add   r2,r2,r1                      ; 0804BD86
strh  r0,[r2]                       ; 0804BD88
mov   r0,r4                         ; 0804BD8A
mov   r1,0xC                        ; 0804BD8C
bl    Sub0804A880                   ; 0804BD8E
b     @@Code0804BE18                ; 0804BD92
.pool                               ; 0804BD94

@@Code0804BDA0:
ldr   r1,[r4,0x14]                  ; 0804BDA0
cmp   r1,0x3F                       ; 0804BDA2
bgt   @@Code0804BDB2                ; 0804BDA4
@@Code0804BDA6:
lsl   r1,r1,0x10                    ; 0804BDA6
lsr   r1,r1,0x10                    ; 0804BDA8
mov   r0,r4                         ; 0804BDAA
bl    Sub0804BC1C                   ; 0804BDAC
b     @@Code0804BE18                ; 0804BDB0
@@Code0804BDB2:
ldr   r2,=0x03002200                ; 0804BDB2
ldr   r0,[r4]                       ; 0804BDB4
asr   r0,r0,0x8                     ; 0804BDB6
ldr   r3,=0x47E4                    ; 0804BDB8
add   r1,r2,r3                      ; 0804BDBA
ldrh  r1,[r1]                       ; 0804BDBC
sub   r0,r0,r1                      ; 0804BDBE
ldr   r1,=0x4058                    ; 0804BDC0
add   r2,r2,r1                      ; 0804BDC2
strh  r0,[r2]                       ; 0804BDC4
mov   r0,r4                         ; 0804BDC6
mov   r1,0xC                        ; 0804BDC8
bl    Sub0804A880                   ; 0804BDCA
mov   r0,r4                         ; 0804BDCE
bl    Sub0804C89C                   ; 0804BDD0
mov   r2,r4                         ; 0804BDD4
add   r2,0x6A                       ; 0804BDD6
ldrh  r0,[r2]                       ; 0804BDD8
cmp   r0,0x3                        ; 0804BDDA
bls   @@Code0804BE04                ; 0804BDDC
ldrh  r0,[r4,0x28]                  ; 0804BDDE
mov   r1,0xC0                       ; 0804BDE0
lsl   r1,r1,0x7                     ; 0804BDE2
and   r1,r0                         ; 0804BDE4
cmp   r1,0x0                        ; 0804BDE6
bne   @@Code0804BDEC                ; 0804BDE8
str   r1,[r4,0x8]                   ; 0804BDEA
@@Code0804BDEC:
mov   r0,r4                         ; 0804BDEC
bl    Sub0804BC60                   ; 0804BDEE
mov   r0,0x0                        ; 0804BDF2
b     @@Return_r0                   ; 0804BDF4
.pool                               ; 0804BDF6

@@Code0804BE04:
add   r0,0x1                        ; 0804BE04
strh  r0,[r2]                       ; 0804BE06
ldr   r1,=Data08171FA4              ; 0804BE08
ldrh  r0,[r2]                       ; 0804BE0A
lsl   r0,r0,0x2                     ; 0804BE0C
add   r0,r0,r1                      ; 0804BE0E
ldr   r0,[r0]                       ; 0804BE10
str   r0,[r4,0xC]                   ; 0804BE12
mov   r0,0x40                       ; 0804BE14
str   r0,[r4,0x14]                  ; 0804BE16
@@Code0804BE18:
mov   r0,r4                         ; 0804BE18
add   r0,0xA3                       ; 0804BE1A
ldrb  r0,[r0]                       ; 0804BE1C
sub   r0,0x1                        ; 0804BE1E
lsl   r0,r0,0x18                    ; 0804BE20
asr   r2,r0,0x18                    ; 0804BE22
cmp   r2,0x0                        ; 0804BE24
blt   @@Return_1                    ; 0804BE26
ldr   r1,=0x03007240                ; 0804BE28  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0804BE2A
mul   r0,r2                         ; 0804BE2C
mov   r3,0x95                       ; 0804BE2E
lsl   r3,r3,0x2                     ; 0804BE30
add   r0,r0,r3                      ; 0804BE32
ldr   r1,[r1]                       ; 0804BE34
add   r5,r1,r0                      ; 0804BE36
ldrh  r0,[r5,0x24]                  ; 0804BE38
cmp   r0,0x8                        ; 0804BE3A
bne   @@Return_1                    ; 0804BE3C
mov   r0,r5                         ; 0804BE3E
add   r0,0x60                       ; 0804BE40
ldrh  r0,[r0]                       ; 0804BE42
cmp   r0,0x0                        ; 0804BE44
beq   @@Code0804BE58                ; 0804BE46
mov   r0,r5                         ; 0804BE48
bl    Sub0804AB44                   ; 0804BE4A
b     @@Code0804BE6E                ; 0804BE4E
.pool                               ; 0804BE50

@@Code0804BE58:
ldrh  r1,[r5,0x26]                  ; 0804BE58
mov   r0,0x20                       ; 0804BE5A
and   r0,r1                         ; 0804BE5C
cmp   r0,0x0                        ; 0804BE5E
bne   @@Return_1                    ; 0804BE60
mov   r0,r5                         ; 0804BE62
mov   r1,r2                         ; 0804BE64
bl    Sub0804BA6C                   ; 0804BE66
cmp   r0,0x0                        ; 0804BE6A
bne   @@Return_1                    ; 0804BE6C
@@Code0804BE6E:
ldr   r0,[r4,0x14]                  ; 0804BE6E
cmp   r0,0x3F                       ; 0804BE70
bgt   @@Code0804BE84                ; 0804BE72
ldrh  r0,[r4,0x32]                  ; 0804BE74
cmp   r0,0x21                       ; 0804BE76
bls   @@Code0804BE84                ; 0804BE78
cmp   r0,0x2B                       ; 0804BE7A
bhi   @@Code0804BE84                ; 0804BE7C
mov   r0,0x4                        ; 0804BE7E
str   r0,[r4,0x14]                  ; 0804BE80
b     @@Return_1                    ; 0804BE82
@@Code0804BE84:
mov   r0,r4                         ; 0804BE84
add   r0,0x60                       ; 0804BE86
ldrh  r0,[r0]                       ; 0804BE88
cmp   r0,0x0                        ; 0804BE8A
beq   @@Code0804BE98                ; 0804BE8C
mov   r0,r5                         ; 0804BE8E
bl    Sub0804AB44                   ; 0804BE90
mov   r0,0x0                        ; 0804BE94
b     @@Return_r0                   ; 0804BE96
@@Code0804BE98:
ldr   r0,=0x0300702C                ; 0804BE98  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804BE9A
ldr   r1,=0x156E                    ; 0804BE9C
add   r0,r0,r1                      ; 0804BE9E
ldrb  r1,[r0]                       ; 0804BEA0
mov   r0,r4                         ; 0804BEA2
bl    Sub0804BA6C                   ; 0804BEA4
@@Return_1:
mov   r0,0x1                        ; 0804BEA8
@@Return_r0:
pop   {r4-r5}                       ; 0804BEAA
pop   {r1}                          ; 0804BEAC
bx    r1                            ; 0804BEAE
.pool                               ; 0804BEB0

Sub0804BEB8:
push  {r4-r5,lr}                    ; 0804BEB8
mov   r4,r0                         ; 0804BEBA
add   r0,0x5E                       ; 0804BEBC
ldrh  r0,[r0]                       ; 0804BEBE
cmp   r0,0x0                        ; 0804BEC0
beq   @@Code0804BEE6                ; 0804BEC2
mov   r1,0x3C                       ; 0804BEC4
ldsh  r0,[r4,r1]                    ; 0804BEC6
cmp   r0,0x0                        ; 0804BEC8
blt   @@Code0804BEE6                ; 0804BECA
ldrh  r0,[r4,0x38]                  ; 0804BECC
lsr   r0,r0,0x8                     ; 0804BECE
cmp   r0,0x0                        ; 0804BED0
beq   @@Code0804BEE6                ; 0804BED2
cmp   r0,0x1                        ; 0804BED4
bne   @@Code0804BEE0                ; 0804BED6
mov   r0,r4                         ; 0804BED8
bl    Sub0804ABE4                   ; 0804BEDA
b     @@Code0804BEE6                ; 0804BEDE
@@Code0804BEE0:
mov   r0,r4                         ; 0804BEE0
bl    Sub0804AC30                   ; 0804BEE2
@@Code0804BEE6:
ldrh  r0,[r4,0x24]                  ; 0804BEE6
cmp   r0,0x8                        ; 0804BEE8
bne   @@Return_1                    ; 0804BEEA
ldr   r1,=0x03006D80                ; 0804BEEC
mov   r2,0xD4                       ; 0804BEEE
lsl   r2,r2,0x1                     ; 0804BEF0
add   r1,r1,r2                      ; 0804BEF2
ldr   r0,=0x03007240                ; 0804BEF4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0804BEF6
ldr   r0,=0x29B0                    ; 0804BEF8
add   r3,r2,r0                      ; 0804BEFA
ldrh  r0,[r1]                       ; 0804BEFC
ldrh  r1,[r3]                       ; 0804BEFE
orr   r0,r1                         ; 0804BF00
ldr   r1,=0x29BA                    ; 0804BF02
add   r2,r2,r1                      ; 0804BF04
ldrh  r1,[r2]                       ; 0804BF06
orr   r0,r1                         ; 0804BF08
cmp   r0,0x0                        ; 0804BF0A
bne   @@Return_1                    ; 0804BF0C
mov   r0,r4                         ; 0804BF0E
add   r0,0x60                       ; 0804BF10
ldrh  r2,[r0]                       ; 0804BF12
mov   r1,r2                         ; 0804BF14
mov   r5,r0                         ; 0804BF16
cmp   r1,0x0                        ; 0804BF18
beq   @@Code0804BFC8                ; 0804BF1A
cmp   r1,0x1F                       ; 0804BF1C
bhi   @@Code0804BF56                ; 0804BF1E
mov   r0,0x1                        ; 0804BF20
and   r0,r2                         ; 0804BF22
cmp   r0,0x0                        ; 0804BF24
bne   @@Code0804BF42                ; 0804BF26
ldr   r1,=0x03002200                ; 0804BF28
ldr   r0,[r4]                       ; 0804BF2A
asr   r0,r0,0x8                     ; 0804BF2C
ldr   r3,=0x47E4                    ; 0804BF2E
add   r2,r1,r3                      ; 0804BF30
ldrh  r2,[r2]                       ; 0804BF32
sub   r0,r0,r2                      ; 0804BF34
ldr   r2,=0x4058                    ; 0804BF36
add   r1,r1,r2                      ; 0804BF38
strh  r0,[r1]                       ; 0804BF3A
mov   r0,0x8B                       ; 0804BF3C
bl    PlayYISound                   ; 0804BF3E
@@Code0804BF42:
ldrh  r1,[r5]                       ; 0804BF42
mov   r0,0x2                        ; 0804BF44
and   r0,r1                         ; 0804BF46
lsl   r0,r0,0x10                    ; 0804BF48
lsr   r0,r0,0x10                    ; 0804BF4A
sub   r0,0x1                        ; 0804BF4C
lsl   r1,r0,0x8                     ; 0804BF4E
ldr   r0,[r4]                       ; 0804BF50
add   r0,r0,r1                      ; 0804BF52
str   r0,[r4]                       ; 0804BF54
@@Code0804BF56:
ldrh  r1,[r4,0x2C]                  ; 0804BF56
mov   r0,0xF1                       ; 0804BF58
and   r0,r1                         ; 0804BF5A
mov   r1,0x6                        ; 0804BF5C
orr   r0,r1                         ; 0804BF5E
strh  r0,[r4,0x2C]                  ; 0804BF60
mov   r1,r4                         ; 0804BF62
add   r1,0x44                       ; 0804BF64
ldrh  r0,[r1]                       ; 0804BF66
cmp   r0,0x0                        ; 0804BF68
bne   @@Code0804BF76                ; 0804BF6A
mov   r0,0xC                        ; 0804BF6C
strh  r0,[r1]                       ; 0804BF6E
mov   r0,r4                         ; 0804BF70
bl    Sub080DFA0C                   ; 0804BF72
@@Code0804BF76:
mov   r0,r4                         ; 0804BF76
add   r0,0x5E                       ; 0804BF78
ldrh  r0,[r0]                       ; 0804BF7A
cmp   r0,0x0                        ; 0804BF7C
bne   @@Code0804BFD6                ; 0804BF7E
ldrh  r0,[r5]                       ; 0804BF80
sub   r0,0x1                        ; 0804BF82
strh  r0,[r5]                       ; 0804BF84
lsl   r0,r0,0x10                    ; 0804BF86
cmp   r0,0x0                        ; 0804BF88
bne   @@Code0804BF9C                ; 0804BF8A
mov   r0,r4                         ; 0804BF8C
bl    Sub080D56DC                   ; 0804BF8E
mov   r0,r4                         ; 0804BF92
bl    Sub0804BC60                   ; 0804BF94
ldr   r0,=0xFFFFFD00                ; 0804BF98
str   r0,[r4,0xC]                   ; 0804BF9A
@@Code0804BF9C:
mov   r0,r4                         ; 0804BF9C
bl    Sub080DFC58                   ; 0804BF9E
@@Return_1:
mov   r0,0x1                        ; 0804BFA2
b     @@Return_r0                   ; 0804BFA4
.pool                               ; 0804BFA6

@@Code0804BFC8:
mov   r0,r4                         ; 0804BFC8
add   r0,0x5E                       ; 0804BFCA
ldrh  r0,[r0]                       ; 0804BFCC
cmp   r0,0x0                        ; 0804BFCE
bne   @@Code0804BFD6                ; 0804BFD0
mov   r0,0x0                        ; 0804BFD2
b     @@Return_r0                   ; 0804BFD4
@@Code0804BFD6:
mov   r0,r4                         ; 0804BFD6
bl    Sub0804BCB8                   ; 0804BFD8
@@Return_r0:
pop   {r4-r5}                       ; 0804BFDC
pop   {r1}                          ; 0804BFDE
bx    r1                            ; 0804BFE0
.pool                               ; 0804BFE2

Sub0804BFE4:
push  {r4-r5,lr}                    ; 0804BFE4
mov   r4,r0                         ; 0804BFE6
ldrh  r0,[r4,0x24]                  ; 0804BFE8
cmp   r0,0x8                        ; 0804BFEA
bne   @@Return_1                    ; 0804BFEC
ldr   r1,=0x03006D80                ; 0804BFEE
mov   r0,0xD4                       ; 0804BFF0
lsl   r0,r0,0x1                     ; 0804BFF2
add   r1,r1,r0                      ; 0804BFF4
ldr   r0,=0x03007240                ; 0804BFF6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0804BFF8
ldr   r0,=0x29B0                    ; 0804BFFA
add   r3,r2,r0                      ; 0804BFFC
ldrh  r0,[r1]                       ; 0804BFFE
ldrh  r1,[r3]                       ; 0804C000
orr   r0,r1                         ; 0804C002
ldr   r1,=0x29BA                    ; 0804C004
add   r2,r2,r1                      ; 0804C006
ldrh  r1,[r2]                       ; 0804C008
orr   r0,r1                         ; 0804C00A
cmp   r0,0x0                        ; 0804C00C
bne   @@Return_1                    ; 0804C00E
mov   r0,r4                         ; 0804C010
add   r0,0x60                       ; 0804C012
ldrh  r2,[r0]                       ; 0804C014
mov   r1,r2                         ; 0804C016
mov   r5,r0                         ; 0804C018
cmp   r1,0x0                        ; 0804C01A
beq   @@Return_0                    ; 0804C01C
cmp   r1,0x1F                       ; 0804C01E
bhi   @@Code0804C058                ; 0804C020
mov   r0,0x1                        ; 0804C022
and   r0,r2                         ; 0804C024
cmp   r0,0x0                        ; 0804C026
bne   @@Code0804C044                ; 0804C028
ldr   r1,=0x03002200                ; 0804C02A
ldr   r0,[r4]                       ; 0804C02C
asr   r0,r0,0x8                     ; 0804C02E
ldr   r3,=0x47E4                    ; 0804C030
add   r2,r1,r3                      ; 0804C032
ldrh  r2,[r2]                       ; 0804C034
sub   r0,r0,r2                      ; 0804C036
ldr   r2,=0x4058                    ; 0804C038
add   r1,r1,r2                      ; 0804C03A
strh  r0,[r1]                       ; 0804C03C
mov   r0,0x8B                       ; 0804C03E
bl    PlayYISound                   ; 0804C040
@@Code0804C044:
ldrh  r0,[r5]                       ; 0804C044
mov   r1,0x2                        ; 0804C046
and   r1,r0                         ; 0804C048
lsl   r1,r1,0x10                    ; 0804C04A
lsr   r1,r1,0x10                    ; 0804C04C
sub   r1,0x1                        ; 0804C04E
lsl   r1,r1,0x8                     ; 0804C050
ldr   r0,[r4]                       ; 0804C052
add   r0,r0,r1                      ; 0804C054
str   r0,[r4]                       ; 0804C056
@@Code0804C058:
ldrh  r1,[r4,0x2C]                  ; 0804C058
mov   r0,0xF1                       ; 0804C05A
and   r0,r1                         ; 0804C05C
mov   r1,0x6                        ; 0804C05E
orr   r0,r1                         ; 0804C060
strh  r0,[r4,0x2C]                  ; 0804C062
mov   r1,r4                         ; 0804C064
add   r1,0x44                       ; 0804C066
ldrh  r0,[r1]                       ; 0804C068
cmp   r0,0x0                        ; 0804C06A
bne   @@Code0804C078                ; 0804C06C
mov   r0,0xC                        ; 0804C06E
strh  r0,[r1]                       ; 0804C070
mov   r0,r4                         ; 0804C072
bl    Sub080DFA0C                   ; 0804C074
@@Code0804C078:
ldrh  r0,[r5]                       ; 0804C078
sub   r0,0x1                        ; 0804C07A
strh  r0,[r5]                       ; 0804C07C
lsl   r0,r0,0x10                    ; 0804C07E
cmp   r0,0x0                        ; 0804C080
bne   @@Code0804C094                ; 0804C082
mov   r0,r4                         ; 0804C084
bl    Sub080D56DC                   ; 0804C086
mov   r0,r4                         ; 0804C08A
bl    Sub0804BC60                   ; 0804C08C
ldr   r0,=0xFFFFFD00                ; 0804C090
str   r0,[r4,0xC]                   ; 0804C092
@@Code0804C094:
mov   r0,r4                         ; 0804C094
bl    Sub080DFC58                   ; 0804C096
@@Return_1:
mov   r0,0x1                        ; 0804C09A
b     @@Return_r0                   ; 0804C09C
.pool                               ; 0804C09E

@@Return_0:
mov   r0,0x0                        ; 0804C0C0
@@Return_r0:
pop   {r4-r5}                       ; 0804C0C2
pop   {r1}                          ; 0804C0C4
bx    r1                            ; 0804C0C6

Sub0804C0C8:
push  {r4,lr}                       ; 0804C0C8
mov   r4,r0                         ; 0804C0CA
add   r0,0x5E                       ; 0804C0CC
ldrh  r0,[r0]                       ; 0804C0CE
cmp   r0,0x0                        ; 0804C0D0
beq   @@Code0804C134                ; 0804C0D2
mov   r1,0x3C                       ; 0804C0D4
ldsh  r0,[r4,r1]                    ; 0804C0D6
cmp   r0,0x0                        ; 0804C0D8
blt   @@Code0804C0F6                ; 0804C0DA
ldrh  r0,[r4,0x38]                  ; 0804C0DC
lsr   r0,r0,0x8                     ; 0804C0DE
cmp   r0,0x0                        ; 0804C0E0
beq   @@Code0804C0F6                ; 0804C0E2
cmp   r0,0x1                        ; 0804C0E4
bne   @@Code0804C0F0                ; 0804C0E6
mov   r0,r4                         ; 0804C0E8
bl    Sub0804ABE4                   ; 0804C0EA
b     @@Code0804C0F6                ; 0804C0EE
@@Code0804C0F0:
mov   r0,r4                         ; 0804C0F0
bl    Sub0804AC30                   ; 0804C0F2
@@Code0804C0F6:
ldrh  r0,[r4,0x24]                  ; 0804C0F6
cmp   r0,0x8                        ; 0804C0F8
beq   @@Code0804C0FE                ; 0804C0FA
b     @@Return_1                    ; 0804C0FC
@@Code0804C0FE:
ldr   r1,=0x03006D80                ; 0804C0FE
mov   r2,0xD4                       ; 0804C100
lsl   r2,r2,0x1                     ; 0804C102
add   r1,r1,r2                      ; 0804C104
ldr   r0,=0x03007240                ; 0804C106  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0804C108
ldr   r0,=0x29B0                    ; 0804C10A
add   r3,r2,r0                      ; 0804C10C
ldrh  r0,[r1]                       ; 0804C10E
ldrh  r1,[r3]                       ; 0804C110
orr   r0,r1                         ; 0804C112
ldr   r1,=0x29BA                    ; 0804C114
add   r2,r2,r1                      ; 0804C116
ldrh  r1,[r2]                       ; 0804C118
orr   r0,r1                         ; 0804C11A
cmp   r0,0x0                        ; 0804C11C
beq   @@Code0804C174                ; 0804C11E
b     @@Return_1                    ; 0804C120
.pool                               ; 0804C122

@@Code0804C134:
ldrh  r0,[r4,0x24]                  ; 0804C134
cmp   r0,0x8                        ; 0804C136
beq   @@Code0804C13C                ; 0804C138
b     @@Return_1                    ; 0804C13A
@@Code0804C13C:
ldr   r1,=0x03006D80                ; 0804C13C
mov   r2,0xD4                       ; 0804C13E
lsl   r2,r2,0x1                     ; 0804C140
add   r1,r1,r2                      ; 0804C142
ldr   r0,=0x03007240                ; 0804C144  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0804C146
ldr   r0,=0x29B0                    ; 0804C148
add   r3,r2,r0                      ; 0804C14A
ldrh  r0,[r1]                       ; 0804C14C
ldrh  r1,[r3]                       ; 0804C14E
orr   r0,r1                         ; 0804C150
ldr   r1,=0x29BA                    ; 0804C152
add   r2,r2,r1                      ; 0804C154
ldrh  r1,[r2]                       ; 0804C156
orr   r0,r1                         ; 0804C158
cmp   r0,0x0                        ; 0804C15A
beq   @@Code0804C160                ; 0804C15C
b     @@Return_1                    ; 0804C15E
@@Code0804C160:
b     @@Code0804C27E                ; 0804C160
.pool                               ; 0804C162

@@Code0804C174:
mov   r1,r4                         ; 0804C174
add   r1,0x5E                       ; 0804C176
ldrh  r0,[r1]                       ; 0804C178
cmp   r0,0x1                        ; 0804C17A
bls   @@Code0804C182                ; 0804C17C
sub   r0,0x1                        ; 0804C17E
strh  r0,[r1]                       ; 0804C180
@@Code0804C182:
mov   r2,0x3C                       ; 0804C182
ldsh  r0,[r4,r2]                    ; 0804C184
cmp   r0,0x0                        ; 0804C186
blt   @@Code0804C1A4                ; 0804C188
ldrh  r1,[r4,0x38]                  ; 0804C18A
mov   r0,0xFF                       ; 0804C18C
lsl   r0,r0,0x8                     ; 0804C18E
and   r0,r1                         ; 0804C190
cmp   r0,0x0                        ; 0804C192
beq   @@Code0804C1A4                ; 0804C194
mov   r0,r4                         ; 0804C196
add   r0,0x40                       ; 0804C198
ldrh  r1,[r0]                       ; 0804C19A
add   r1,0x10                       ; 0804C19C
mov   r2,0xFF                       ; 0804C19E
and   r1,r2                         ; 0804C1A0
strh  r1,[r0]                       ; 0804C1A2
@@Code0804C1A4:
ldrh  r1,[r4,0x3E]                  ; 0804C1A4
mov   r0,0xC                        ; 0804C1A6
and   r0,r1                         ; 0804C1A8
cmp   r0,0x0                        ; 0804C1AA
beq   @@Code0804C1E6                ; 0804C1AC
ldr   r1,[r4,0x14]                  ; 0804C1AE
cmp   r1,0x3F                       ; 0804C1B0
bgt   @@Code0804C1C0                ; 0804C1B2
lsl   r1,r1,0x10                    ; 0804C1B4
lsr   r1,r1,0x10                    ; 0804C1B6
mov   r0,r4                         ; 0804C1B8
bl    Sub0804BC1C                   ; 0804C1BA
b     @@Code0804C1E6                ; 0804C1BE
@@Code0804C1C0:
ldr   r0,[r4,0x8]                   ; 0804C1C0
asr   r0,r0,0x2                     ; 0804C1C2
str   r0,[r4,0x8]                   ; 0804C1C4
mov   r0,0x40                       ; 0804C1C6
str   r0,[r4,0x14]                  ; 0804C1C8
ldr   r2,=0x03002200                ; 0804C1CA
ldr   r0,[r4]                       ; 0804C1CC
asr   r0,r0,0x8                     ; 0804C1CE
ldr   r3,=0x47E4                    ; 0804C1D0
add   r1,r2,r3                      ; 0804C1D2
ldrh  r1,[r1]                       ; 0804C1D4
sub   r0,r0,r1                      ; 0804C1D6
ldr   r1,=0x4058                    ; 0804C1D8
add   r2,r2,r1                      ; 0804C1DA
strh  r0,[r2]                       ; 0804C1DC
mov   r0,r4                         ; 0804C1DE
mov   r1,0xC                        ; 0804C1E0
bl    Sub0804A880                   ; 0804C1E2
@@Code0804C1E6:
ldrh  r1,[r4,0x3E]                  ; 0804C1E6
mov   r2,0x1                        ; 0804C1E8
and   r2,r1                         ; 0804C1EA
cmp   r2,0x0                        ; 0804C1EC
bne   @@Code0804C22C                ; 0804C1EE
mov   r0,0x2                        ; 0804C1F0
and   r0,r1                         ; 0804C1F2
cmp   r0,0x0                        ; 0804C1F4
beq   @@Code0804C2A4                ; 0804C1F6
ldr   r1,[r4,0x14]                  ; 0804C1F8
cmp   r1,0x3F                       ; 0804C1FA
ble   @@Code0804C232                ; 0804C1FC
str   r2,[r4,0xC]                   ; 0804C1FE
ldr   r2,=0x03002200                ; 0804C200
ldr   r0,[r4]                       ; 0804C202
asr   r0,r0,0x8                     ; 0804C204
ldr   r3,=0x47E4                    ; 0804C206
add   r1,r2,r3                      ; 0804C208
ldrh  r1,[r1]                       ; 0804C20A
sub   r0,r0,r1                      ; 0804C20C
ldr   r1,=0x4058                    ; 0804C20E
add   r2,r2,r1                      ; 0804C210
strh  r0,[r2]                       ; 0804C212
mov   r0,r4                         ; 0804C214
mov   r1,0xC                        ; 0804C216
bl    Sub0804A880                   ; 0804C218
b     @@Code0804C2A4                ; 0804C21C
.pool                               ; 0804C21E

@@Code0804C22C:
ldr   r1,[r4,0x14]                  ; 0804C22C
cmp   r1,0x3F                       ; 0804C22E
bgt   @@Code0804C23E                ; 0804C230
@@Code0804C232:
lsl   r1,r1,0x10                    ; 0804C232
lsr   r1,r1,0x10                    ; 0804C234
mov   r0,r4                         ; 0804C236
bl    Sub0804BC1C                   ; 0804C238
b     @@Code0804C2A4                ; 0804C23C
@@Code0804C23E:
ldr   r2,=0x03002200                ; 0804C23E
ldr   r0,[r4]                       ; 0804C240
asr   r0,r0,0x8                     ; 0804C242
ldr   r3,=0x47E4                    ; 0804C244
add   r1,r2,r3                      ; 0804C246
ldrh  r1,[r1]                       ; 0804C248
sub   r0,r0,r1                      ; 0804C24A
ldr   r1,=0x4058                    ; 0804C24C
add   r2,r2,r1                      ; 0804C24E
strh  r0,[r2]                       ; 0804C250
mov   r0,r4                         ; 0804C252
mov   r1,0xC                        ; 0804C254
bl    Sub0804A880                   ; 0804C256
mov   r0,r4                         ; 0804C25A
bl    Sub0804C89C                   ; 0804C25C
mov   r2,r4                         ; 0804C260
add   r2,0x6A                       ; 0804C262
ldrh  r0,[r2]                       ; 0804C264
cmp   r0,0x3                        ; 0804C266
bls   @@Code0804C290                ; 0804C268
ldrh  r0,[r4,0x28]                  ; 0804C26A
mov   r1,0xC0                       ; 0804C26C
lsl   r1,r1,0x7                     ; 0804C26E
and   r1,r0                         ; 0804C270
cmp   r1,0x0                        ; 0804C272
bne   @@Code0804C278                ; 0804C274
str   r1,[r4,0x8]                   ; 0804C276
@@Code0804C278:
mov   r0,r4                         ; 0804C278
bl    Sub0804BC60                   ; 0804C27A
@@Code0804C27E:
mov   r0,0x0                        ; 0804C27E
b     @@Return_r0                   ; 0804C280
.pool                               ; 0804C282

@@Code0804C290:
add   r0,0x1                        ; 0804C290
strh  r0,[r2]                       ; 0804C292
ldr   r1,=Data08171FA4              ; 0804C294
ldrh  r0,[r2]                       ; 0804C296
lsl   r0,r0,0x2                     ; 0804C298
add   r0,r0,r1                      ; 0804C29A
ldr   r0,[r0]                       ; 0804C29C
str   r0,[r4,0xC]                   ; 0804C29E
mov   r0,0x40                       ; 0804C2A0
str   r0,[r4,0x14]                  ; 0804C2A2
@@Code0804C2A4:
mov   r0,r4                         ; 0804C2A4
add   r0,0xA3                       ; 0804C2A6
ldrb  r0,[r0]                       ; 0804C2A8
sub   r0,0x1                        ; 0804C2AA
lsl   r0,r0,0x18                    ; 0804C2AC
asr   r3,r0,0x18                    ; 0804C2AE
cmp   r3,0x0                        ; 0804C2B0
blt   @@Return_1                    ; 0804C2B2
ldr   r1,=0x03007240                ; 0804C2B4  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0804C2B6
mul   r0,r3                         ; 0804C2B8
mov   r2,0x95                       ; 0804C2BA
lsl   r2,r2,0x2                     ; 0804C2BC
add   r0,r0,r2                      ; 0804C2BE
ldr   r1,[r1]                       ; 0804C2C0
add   r2,r1,r0                      ; 0804C2C2
ldrh  r0,[r2,0x24]                  ; 0804C2C4
cmp   r0,0x8                        ; 0804C2C6
bne   @@Return_1                    ; 0804C2C8
mov   r0,r2                         ; 0804C2CA
add   r0,0x60                       ; 0804C2CC
ldrh  r0,[r0]                       ; 0804C2CE
cmp   r0,0x0                        ; 0804C2D0
beq   @@Code0804C2E4                ; 0804C2D2
mov   r0,r2                         ; 0804C2D4
bl    Sub0804AB44                   ; 0804C2D6
b     @@Code0804C2FA                ; 0804C2DA
.pool                               ; 0804C2DC

@@Code0804C2E4:
ldrh  r1,[r2,0x26]                  ; 0804C2E4
mov   r0,0x20                       ; 0804C2E6
and   r0,r1                         ; 0804C2E8
cmp   r0,0x0                        ; 0804C2EA
bne   @@Return_1                    ; 0804C2EC
mov   r0,r2                         ; 0804C2EE
mov   r1,r3                         ; 0804C2F0
bl    Sub0804BA6C                   ; 0804C2F2
cmp   r0,0x0                        ; 0804C2F6
bne   @@Return_1                    ; 0804C2F8
@@Code0804C2FA:
ldr   r0,[r4,0x14]                  ; 0804C2FA
cmp   r0,0x3F                       ; 0804C2FC
bgt   @@Code0804C310                ; 0804C2FE
ldrh  r0,[r4,0x32]                  ; 0804C300
cmp   r0,0x21                       ; 0804C302
bls   @@Code0804C310                ; 0804C304
cmp   r0,0x2B                       ; 0804C306
bhi   @@Code0804C310                ; 0804C308
mov   r0,0x4                        ; 0804C30A
str   r0,[r4,0x14]                  ; 0804C30C
b     @@Return_1                    ; 0804C30E
@@Code0804C310:
ldr   r0,=0x0300702C                ; 0804C310  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804C312
ldr   r3,=0x156E                    ; 0804C314
add   r0,r0,r3                      ; 0804C316
ldrb  r1,[r0]                       ; 0804C318
mov   r0,r4                         ; 0804C31A
bl    Sub0804BA6C                   ; 0804C31C
@@Return_1:
mov   r0,0x1                        ; 0804C320
@@Return_r0:
pop   {r4}                          ; 0804C322
pop   {r1}                          ; 0804C324
bx    r1                            ; 0804C326
.pool                               ; 0804C328

Sub0804C330:
push  {lr}                          ; 0804C330
ldrh  r0,[r0,0x24]                  ; 0804C332
cmp   r0,0x8                        ; 0804C334
bne   @@Return_1                    ; 0804C336
ldr   r1,=0x03006D80                ; 0804C338
mov   r0,0xD4                       ; 0804C33A
lsl   r0,r0,0x1                     ; 0804C33C
add   r1,r1,r0                      ; 0804C33E
ldr   r0,=0x03007240                ; 0804C340  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0804C342
ldr   r0,=0x29B0                    ; 0804C344
add   r3,r2,r0                      ; 0804C346
ldrh  r0,[r1]                       ; 0804C348
ldrh  r1,[r3]                       ; 0804C34A
orr   r0,r1                         ; 0804C34C
ldr   r1,=0x29BA                    ; 0804C34E
add   r2,r2,r1                      ; 0804C350
ldrh  r1,[r2]                       ; 0804C352
orr   r0,r1                         ; 0804C354
cmp   r0,0x0                        ; 0804C356
bne   @@Return_1                    ; 0804C358
mov   r0,0x0                        ; 0804C35A
b     @@Return_r0                   ; 0804C35C
.pool                               ; 0804C35E

@@Return_1:
mov   r0,0x1                        ; 0804C370
@@Return_r0:
pop   {r1}                          ; 0804C372
bx    r1                            ; 0804C374
.pool                               ; 0804C376

Sub0804C378:
push  {r4-r5,lr}                    ; 0804C378
mov   r4,r0                         ; 0804C37A
ldrh  r0,[r4,0x24]                  ; 0804C37C
cmp   r0,0x8                        ; 0804C37E
bne   @@Return_1                    ; 0804C380
ldr   r1,=0x03006D80                ; 0804C382
mov   r0,0xD4                       ; 0804C384
lsl   r0,r0,0x1                     ; 0804C386
add   r1,r1,r0                      ; 0804C388
ldr   r0,=0x03007240                ; 0804C38A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0804C38C
ldr   r0,=0x29B0                    ; 0804C38E
add   r3,r2,r0                      ; 0804C390
ldrh  r0,[r1]                       ; 0804C392
ldrh  r1,[r3]                       ; 0804C394
orr   r0,r1                         ; 0804C396
ldr   r1,=0x29BA                    ; 0804C398
add   r2,r2,r1                      ; 0804C39A
ldrh  r1,[r2]                       ; 0804C39C
orr   r0,r1                         ; 0804C39E
cmp   r0,0x0                        ; 0804C3A0
bne   @@Return_1                    ; 0804C3A2
mov   r0,r4                         ; 0804C3A4
add   r0,0x60                       ; 0804C3A6
ldrh  r2,[r0]                       ; 0804C3A8
mov   r1,r2                         ; 0804C3AA
mov   r5,r0                         ; 0804C3AC
cmp   r1,0x0                        ; 0804C3AE
beq   @@Code0804C45C                ; 0804C3B0
cmp   r1,0x1F                       ; 0804C3B2
bhi   @@Code0804C3EC                ; 0804C3B4
mov   r0,0x1                        ; 0804C3B6
and   r0,r2                         ; 0804C3B8
cmp   r0,0x0                        ; 0804C3BA
bne   @@Code0804C3D8                ; 0804C3BC
ldr   r1,=0x03002200                ; 0804C3BE
ldr   r0,[r4]                       ; 0804C3C0
asr   r0,r0,0x8                     ; 0804C3C2
ldr   r3,=0x47E4                    ; 0804C3C4
add   r2,r1,r3                      ; 0804C3C6
ldrh  r2,[r2]                       ; 0804C3C8
sub   r0,r0,r2                      ; 0804C3CA
ldr   r2,=0x4058                    ; 0804C3CC
add   r1,r1,r2                      ; 0804C3CE
strh  r0,[r1]                       ; 0804C3D0
mov   r0,0x8B                       ; 0804C3D2
bl    PlayYISound                   ; 0804C3D4
@@Code0804C3D8:
ldrh  r0,[r5]                       ; 0804C3D8
mov   r1,0x2                        ; 0804C3DA
and   r1,r0                         ; 0804C3DC
lsl   r1,r1,0x10                    ; 0804C3DE
lsr   r1,r1,0x10                    ; 0804C3E0
sub   r1,0x1                        ; 0804C3E2
lsl   r1,r1,0x8                     ; 0804C3E4
ldr   r0,[r4]                       ; 0804C3E6
add   r0,r0,r1                      ; 0804C3E8
str   r0,[r4]                       ; 0804C3EA
@@Code0804C3EC:
ldrh  r1,[r4,0x2C]                  ; 0804C3EC
mov   r0,0xF1                       ; 0804C3EE
and   r0,r1                         ; 0804C3F0
mov   r1,0x6                        ; 0804C3F2
orr   r0,r1                         ; 0804C3F4
strh  r0,[r4,0x2C]                  ; 0804C3F6
mov   r1,r4                         ; 0804C3F8
add   r1,0x44                       ; 0804C3FA
ldrh  r0,[r1]                       ; 0804C3FC
cmp   r0,0x0                        ; 0804C3FE
bne   @@Code0804C40C                ; 0804C400
mov   r0,0xC                        ; 0804C402
strh  r0,[r1]                       ; 0804C404
mov   r0,r4                         ; 0804C406
bl    Sub080DFA0C                   ; 0804C408
@@Code0804C40C:
mov   r0,r4                         ; 0804C40C
add   r0,0x5E                       ; 0804C40E
ldrh  r0,[r0]                       ; 0804C410
cmp   r0,0x0                        ; 0804C412
bne   @@Code0804C46A                ; 0804C414
ldrh  r0,[r5]                       ; 0804C416
sub   r0,0x1                        ; 0804C418
strh  r0,[r5]                       ; 0804C41A
lsl   r0,r0,0x10                    ; 0804C41C
cmp   r0,0x0                        ; 0804C41E
bne   @@Code0804C432                ; 0804C420
mov   r0,r4                         ; 0804C422
bl    Sub080D56DC                   ; 0804C424
mov   r0,r4                         ; 0804C428
bl    Sub0804BC60                   ; 0804C42A
ldr   r0,=0xFFFFFD00                ; 0804C42E
str   r0,[r4,0xC]                   ; 0804C430
@@Code0804C432:
mov   r0,r4                         ; 0804C432
bl    Sub080DFC58                   ; 0804C434
@@Return_1:
mov   r0,0x1                        ; 0804C438
b     @@Return_r0                   ; 0804C43A
.pool                               ; 0804C43C

@@Code0804C45C:
mov   r0,r4                         ; 0804C45C
add   r0,0x5E                       ; 0804C45E
ldrh  r0,[r0]                       ; 0804C460
cmp   r0,0x0                        ; 0804C462
bne   @@Code0804C46A                ; 0804C464
mov   r0,0x0                        ; 0804C466
b     @@Return_r0                   ; 0804C468
@@Code0804C46A:
mov   r0,r4                         ; 0804C46A
bl    Sub0804BCB8                   ; 0804C46C
@@Return_r0:
pop   {r4-r5}                       ; 0804C470
pop   {r1}                          ; 0804C472
bx    r1                            ; 0804C474
.pool                               ; 0804C476

Sub0804C478:
push  {lr}                          ; 0804C478
mov   r1,r0                         ; 0804C47A
ldrh  r0,[r1,0x24]                  ; 0804C47C
cmp   r0,0x8                        ; 0804C47E
bne   @@Code0804C490                ; 0804C480
ldr   r0,=0x03006D80                ; 0804C482
mov   r2,0xD4                       ; 0804C484
lsl   r2,r2,0x1                     ; 0804C486
add   r0,r0,r2                      ; 0804C488
ldrh  r0,[r0]                       ; 0804C48A
cmp   r0,0x0                        ; 0804C48C
beq   @@Code0804C498                ; 0804C48E
@@Code0804C490:
mov   r0,0x1                        ; 0804C490
b     @@Return_r0                   ; 0804C492
.pool                               ; 0804C494

@@Code0804C498:
mov   r0,r1                         ; 0804C498
add   r0,0x5E                       ; 0804C49A
ldrh  r0,[r0]                       ; 0804C49C
cmp   r0,0x0                        ; 0804C49E
beq   @@Return_0                    ; 0804C4A0
mov   r0,r1                         ; 0804C4A2
bl    Sub0804BCB8                   ; 0804C4A4
b     @@Return_r0                   ; 0804C4A8
@@Return_0:
mov   r0,0x0                        ; 0804C4AA
@@Return_r0:
pop   {r1}                          ; 0804C4AC
bx    r1                            ; 0804C4AE

Sub0804C4B0:
push  {r4,lr}                       ; 0804C4B0
mov   r4,r0                         ; 0804C4B2
mov   r2,r4                         ; 0804C4B4
add   r2,0x66                       ; 0804C4B6
ldrh  r3,[r2]                       ; 0804C4B8
mov   r1,0x0                        ; 0804C4BA
ldsh  r0,[r2,r1]                    ; 0804C4BC
cmp   r0,0x0                        ; 0804C4BE
bge   @@Return                      ; 0804C4C0
ldr   r0,=0x03007240                ; 0804C4C2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0804C4C4
mov   r0,0xFF                       ; 0804C4C6
and   r0,r3                         ; 0804C4C8
lsl   r0,r0,0x4                     ; 0804C4CA
ldr   r3,=0x29DA                    ; 0804C4CC
add   r1,r1,r3                      ; 0804C4CE
strh  r0,[r1]                       ; 0804C4D0
ldrh  r0,[r2]                       ; 0804C4D2
mov   r1,0xFE                       ; 0804C4D4
lsl   r1,r1,0x7                     ; 0804C4D6  7F00
and   r1,r0                         ; 0804C4D8
lsr   r1,r1,0x4                     ; 0804C4DA
mov   r0,r4                         ; 0804C4DC
bl    SprShared_SetItemMemory       ; 0804C4DE
@@Return:
pop   {r4}                          ; 0804C4E2
pop   {r0}                          ; 0804C4E4
bx    r0                            ; 0804C4E6
.pool                               ; 0804C4E8

AddToEggSlots:
; Add new sprite to player egg slots
; r0: pointer to new egg's struct
push  {r4-r7,lr}                    ; 0804C4F0
mov   r7,r10                        ; 0804C4F2
mov   r6,r9                         ; 0804C4F4
mov   r5,r8                         ; 0804C4F6
push  {r5-r7}                       ; 0804C4F8
add   sp,-0xC                       ; 0804C4FA
mov   r4,r0                         ; 0804C4FC
bl    Sub0804C4B0                   ; 0804C4FE
ldrh  r0,[r4,0x32]                  ; 0804C502  sprite ID
cmp   r0,0x27                       ; 0804C504  27: key
beq   @@Code0804C536                ; 0804C506
ldr   r1,=0x03002200                ; 0804C508
ldr   r2,=0x4905                    ; 0804C50A
add   r0,r1,r2                      ; 0804C50C  03006B05
ldrb  r0,[r0]                       ; 0804C50E  Game state
sub   r0,0x9                        ; 0804C510
lsl   r0,r0,0x18                    ; 0804C512
lsr   r0,r0,0x18                    ; 0804C514
cmp   r0,0x1                        ; 0804C516
bls   @@Code0804C528                ; 0804C518  branch if game state 09 (fade to sublevel) or 0A (sublevel load)
ldrh  r0,[r4,0x20]                  ; 0804C51A
ldr   r2,=0x4058                    ; 0804C51C
add   r1,r1,r2                      ; 0804C51E
strh  r0,[r1]                       ; 0804C520
mov   r0,0x16                       ; 0804C522
bl    PlayYISound                   ; 0804C524
@@Code0804C528:
ldrh  r0,[r4,0x32]                  ; 0804C528
cmp   r0,0x28                       ; 0804C52A  28: Huffin Puffin baby
bne   @@Code0804C536                ; 0804C52C
mov   r1,r4                         ; 0804C52E
add   r1,0x70                       ; 0804C530
mov   r0,0x1                        ; 0804C532
strh  r0,[r1]                       ; 0804C534
@@Code0804C536:
ldr   r1,=0x03006D80                ; 0804C536
mov   r0,0x92                       ; 0804C538
lsl   r0,r0,0x2                     ; 0804C53A  248
add   r5,r1,r0                      ; 0804C53C  03006FC8
ldrh  r0,[r5]                       ; 0804C53E  byte length of egg slots used
add   r0,0x2                        ; 0804C540
lsl   r0,r0,0x10                    ; 0804C542
lsr   r2,r0,0x10                    ; 0804C544  r2 = byte length of egg slots used, +2
ldr   r0,=0x024A                    ; 0804C546
add   r6,r1,r0                      ; 0804C548  r6 = pointer to egg slot table (03006FCA)
ldr   r1,=0x03007240                ; 0804C54A  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r12,r1                        ; 0804C54C
mov   r0,0x72                       ; 0804C54E
add   r0,r0,r4                      ; 0804C550  new sprite +72?
mov   r8,r0                         ; 0804C552  r8 = pointer to new sprite's egg slot index?
mov   r1,0x6E                       ; 0804C554
add   r1,r1,r4                      ; 0804C556
mov   r9,r1                         ; 0804C558
ldr   r0,=0x0300702C                ; 0804C55A  Sprite RAM structs (03002460)
mov   r10,r0                        ; 0804C55C
mov   r1,r4                         ; 0804C55E
add   r1,0x94                       ; 0804C560
str   r1,[sp]                       ; 0804C562
mov   r0,r4                         ; 0804C564
add   r0,0x5E                       ; 0804C566
str   r0,[sp,0x8]                   ; 0804C568
sub   r1,0x4E                       ; 0804C56A
str   r1,[sp,0x4]                   ; 0804C56C
cmp   r2,0xD                        ; 0804C56E
bls   @@Code0804C5F6                ; 0804C570
                                    ;          \ if more than 6 slots are now used, destroy first egg
ldrh  r1,[r6]                       ; 0804C572  sprite slot index of first egg slot, to be destroyed
mov   r0,0xB0                       ; 0804C574
mul   r0,r1                         ; 0804C576  offset to sprite slot from start of table
mov   r2,0x95                       ; 0804C578
lsl   r2,r2,0x2                     ; 0804C57A  254
add   r0,r0,r2                      ; 0804C57C
mov   r2,r12                        ; 0804C57E  03007240
ldr   r1,[r2]                       ; 0804C580  0300220C
add   r2,r1,r0                      ; 0804C582  pointer to sprite struct
mov   r1,0x0                        ; 0804C584
mov   r0,0x7                        ; 0804C586
strh  r0,[r2,0x24]                  ; 0804C588  set sprite status to 7 (falling off screen)
mov   r0,r2                         ; 0804C58A
add   r0,0x5E                       ; 0804C58C  sprite+5E
strh  r1,[r0]                       ; 0804C58E
add   r0,0x1C                       ; 0804C590  sprite+7A
strh  r1,[r0]                       ; 0804C592
sub   r0,0x4                        ; 0804C594  sprite+76
strh  r1,[r0]                       ; 0804C596
sub   r0,0x4                        ; 0804C598  sprite+72
strh  r1,[r0]                       ; 0804C59A
sub   r0,0x4                        ; 0804C59C  sprite+6E
strh  r1,[r0]                       ; 0804C59E
sub   r0,0x4                        ; 0804C5A0  sprite+6A
strh  r1,[r0]                       ; 0804C5A2
ldr   r1,=Data08171FB0              ; 0804C5A4  sprite X velocities (00000100, FFFFFF00)
add   r0,0x35                       ; 0804C5A6  sprite+9F: X direction of sprite relative to Yoshi
ldrb  r0,[r0]                       ; 0804C5A8
lsr   r0,r0,0x1                     ; 0804C5AA
lsl   r0,r0,0x2                     ; 0804C5AC
add   r0,r0,r1                      ; 0804C5AE  offset table with [sprite+9F]*2
ldr   r0,[r0]                       ; 0804C5B0
str   r0,[r2,0x8]                   ; 0804C5B2  set sprite X velocity
ldr   r0,=0xFFFFFC00                ; 0804C5B4
str   r0,[r2,0xC]                   ; 0804C5B6  set sprite Y velocity
mov   r0,0x40                       ; 0804C5B8
str   r0,[r2,0x14]                  ; 0804C5BA  set sprite Y accel?
mov   r3,0x2                        ; 0804C5BC
ldrh  r0,[r5]                       ; 0804C5BE  byte length of egg slots used
cmp   r3,r0                         ; 0804C5C0
bhs   @@Code0804C5F4                ; 0804C5C2
mov   r7,r12                        ; 0804C5C4
@@Code0804C5C6:                     ;           r6: pointer to egg slot table (03006FCA)
sub   r1,r3,0x2                     ; 0804C5C6  \
asr   r1,r1,0x1                     ; 0804C5C8  |
lsl   r1,r1,0x1                     ; 0804C5CA  |
add   r1,r1,r6                      ; 0804C5CC  | r1,r0 = two adjacent egg slots
lsr   r0,r3,0x1                     ; 0804C5CE  |
lsl   r0,r0,0x1                     ; 0804C5D0  |
add   r0,r0,r6                      ; 0804C5D2  /
ldrh  r0,[r0]                       ; 0804C5D4  \ copy sprite slot number, one slot earlier
strh  r0,[r1]                       ; 0804C5D6  /
ldrh  r1,[r1]                       ; 0804C5D8
mov   r0,0xB0                       ; 0804C5DA
mul   r1,r0                         ; 0804C5DC  offset to sprite slot of that egg, from start of table
ldr   r0,[r7]                       ; 0804C5DE
add   r2,r1,r0                      ; 0804C5E0
ldr   r1,=0x02C6                    ; 0804C5E2
add   r0,r2,r1                      ; 0804C5E4  sprite+72 in that slot
strh  r3,[r0]                       ; 0804C5E6  update sprite struct egg slot offset
add   r0,r3,0x2                     ; 0804C5E8
lsl   r0,r0,0x10                    ; 0804C5EA
lsr   r3,r0,0x10                    ; 0804C5EC
ldrh  r2,[r5]                       ; 0804C5EE
cmp   r3,r2                         ; 0804C5F0
blo   @@Code0804C5C6                ; 0804C5F2
@@Code0804C5F4:
mov   r2,r3                         ; 0804C5F4 /
@@Code0804C5F6:
mov   r3,r2                         ; 0804C5F6
ldr   r1,=0x03006D80                ; 0804C5F8
mov   r2,0x92                       ; 0804C5FA
lsl   r2,r2,0x2                     ; 0804C5FC  248
add   r0,r1,r2                      ; 0804C5FE  03006FC8
strh  r3,[r0]                       ; 0804C600  set new length of egg table
cmp   r3,0x3                        ; 0804C602
bls   @@Code0804C644                ; 0804C604
@@Loop0804C606:                     ;          \ check for sprite IDs that should be preserved in the later slots, and shift them back
sub   r0,r3,0x4                     ; 0804C606  offset of new last egg slot(at most 5th slot of 6?)
asr   r0,r0,0x1                     ; 0804C608
lsl   r0,r0,0x1                     ; 0804C60A
add   r0,r0,r6                      ; 0804C60C
ldrh  r0,[r0]                       ; 0804C60E
mov   r5,r0                         ; 0804C610
mov   r0,0xB0                       ; 0804C612
mul   r0,r5                         ; 0804C614  offset to sprite slot
mov   r1,0x95                       ; 0804C616
lsl   r1,r1,0x2                     ; 0804C618  254
add   r0,r0,r1                      ; 0804C61A
mov   r2,r12                        ; 0804C61C
ldr   r1,[r2]                       ; 0804C61E
add   r2,r1,r0                      ; 0804C620  pointer to sprite slot
ldrh  r0,[r2,0x32]                  ; 0804C622  sprite ID
cmp   r0,0x27                       ; 0804C624  27: key
beq   @@Code0804C62C                ; 0804C626
cmp   r0,0x29                       ; 0804C628  29: Super Baby giant egg
bne   @@Code0804C644                ; 0804C62A
@@Code0804C62C:
mov   r0,r2                         ; 0804C62C
add   r0,0x72                       ; 0804C62E  sprite+72: egg slot offset
strh  r3,[r0]                       ; 0804C630
sub   r1,r3,0x2                     ; 0804C632
asr   r0,r1,0x1                     ; 0804C634
lsl   r0,r0,0x1                     ; 0804C636
add   r0,r0,r6                      ; 0804C638
strh  r5,[r0]                       ; 0804C63A
lsl   r1,r1,0x10                    ; 0804C63C
lsr   r3,r1,0x10                    ; 0804C63E
cmp   r3,0x3                        ; 0804C640
bhi   @@Loop0804C606                ; 0804C642 /
@@Code0804C644:
mov   r2,r3                         ; 0804C644
mov   r3,0x0                        ; 0804C646
mov   r0,r8                         ; 0804C648
strh  r2,[r0]                       ; 0804C64A
mov   r0,0x2                        ; 0804C64C
mov   r1,r9                         ; 0804C64E
strh  r0,[r1]                       ; 0804C650
sub   r1,r2,0x2                     ; 0804C652
asr   r1,r1,0x1                     ; 0804C654
lsl   r1,r1,0x1                     ; 0804C656
add   r1,r1,r6                      ; 0804C658
mov   r2,r10                        ; 0804C65A
ldr   r0,[r2]                       ; 0804C65C
ldr   r2,=0x156E                    ; 0804C65E
add   r0,r0,r2                      ; 0804C660
ldrb  r0,[r0]                       ; 0804C662
strh  r0,[r1]                       ; 0804C664
ldrh  r1,[r4,0x2A]                  ; 0804C666
ldr   r0,=0xFFF3                    ; 0804C668
and   r0,r1                         ; 0804C66A
strh  r0,[r4,0x2A]                  ; 0804C66C
ldrh  r0,[r4,0x26]                  ; 0804C66E
ldr   r2,=0xF9FF                    ; 0804C670
and   r2,r0                         ; 0804C672
mov   r0,0x40                       ; 0804C674
orr   r2,r0                         ; 0804C676
mov   r1,r12                        ; 0804C678
ldr   r0,[r1]                       ; 0804C67A
ldr   r1,=0x29A2                    ; 0804C67C
add   r0,r0,r1                      ; 0804C67E
ldrh  r0,[r0]                       ; 0804C680
cmp   r0,0xD                        ; 0804C682
bne   @@Code0804C692                ; 0804C684
mov   r1,0x80                       ; 0804C686
lsl   r1,r1,0x2                     ; 0804C688
mov   r0,r1                         ; 0804C68A
orr   r2,r0                         ; 0804C68C
lsl   r0,r2,0x10                    ; 0804C68E
lsr   r2,r0,0x10                    ; 0804C690
@@Code0804C692:
strh  r2,[r4,0x26]                  ; 0804C692
ldrh  r0,[r4,0x28]                  ; 0804C694
ldr   r1,=0xFFC0                    ; 0804C696
and   r1,r0                         ; 0804C698
strh  r1,[r4,0x28]                  ; 0804C69A
mov   r0,0x5                        ; 0804C69C
ldr   r2,[sp]                       ; 0804C69E
strb  r0,[r2]                       ; 0804C6A0
ldr   r0,[sp,0x8]                   ; 0804C6A2
strh  r3,[r0]                       ; 0804C6A4
str   r3,[r4,0x14]                  ; 0804C6A6
ldr   r1,[sp,0x4]                   ; 0804C6A8
strh  r3,[r1]                       ; 0804C6AA
add   sp,0xC                        ; 0804C6AC
pop   {r3-r5}                       ; 0804C6AE
mov   r8,r3                         ; 0804C6B0
mov   r9,r4                         ; 0804C6B2
mov   r10,r5                        ; 0804C6B4
pop   {r4-r7}                       ; 0804C6B6
pop   {r0}                          ; 0804C6B8
bx    r0                            ; 0804C6BA
.pool                               ; 0804C6BC

RemoveFromEggSlots:
push  {r4-r7,lr}                    ; 0804C6F8
mov   r3,r0                         ; 0804C6FA
mov   r0,0x72                       ; 0804C6FC
add   r0,r0,r3                      ; 0804C6FE
mov   r12,r0                        ; 0804C700
ldrb  r5,[r0]                       ; 0804C702
ldr   r4,=0x03006FCA                ; 0804C704
mov   r1,r3                         ; 0804C706
add   r1,0x7A                       ; 0804C708
mov   r0,0x0                        ; 0804C70A
strh  r0,[r1]                       ; 0804C70C
sub   r1,0x4                        ; 0804C70E
strh  r0,[r1]                       ; 0804C710
mov   r1,r12                        ; 0804C712
strh  r0,[r1]                       ; 0804C714
mov   r1,r3                         ; 0804C716
add   r1,0x6E                       ; 0804C718
strh  r0,[r1]                       ; 0804C71A
sub   r1,0x4                        ; 0804C71C
strh  r0,[r1]                       ; 0804C71E
ldrh  r0,[r3,0x32]                  ; 0804C720
cmp   r0,0x28                       ; 0804C722
beq   @@Code0804C736                ; 0804C724
ldrh  r0,[r3,0x26]                  ; 0804C726
ldr   r1,=0xFFBF                    ; 0804C728
and   r1,r0                         ; 0804C72A
mov   r2,0x80                       ; 0804C72C
lsl   r2,r2,0x2                     ; 0804C72E
mov   r0,r2                         ; 0804C730
orr   r1,r0                         ; 0804C732
strh  r1,[r3,0x26]                  ; 0804C734
@@Code0804C736:
ldrh  r0,[r3,0x32]                  ; 0804C736
mov   r2,0x1                        ; 0804C738
cmp   r0,0x28                       ; 0804C73A
bls   @@Code0804C740                ; 0804C73C
mov   r2,0x1A                       ; 0804C73E
@@Code0804C740:
ldrh  r1,[r3,0x28]                  ; 0804C740
ldr   r0,=0xFFC0                    ; 0804C742
and   r0,r1                         ; 0804C744
orr   r2,r0                         ; 0804C746
strh  r2,[r3,0x28]                  ; 0804C748
ldrh  r0,[r3,0x2A]                  ; 0804C74A
mov   r1,0x4                        ; 0804C74C
orr   r0,r1                         ; 0804C74E
strh  r0,[r3,0x2A]                  ; 0804C750
lsl   r3,r5,0x18                    ; 0804C752
asr   r0,r3,0x18                    ; 0804C754
sub   r1,r4,0x2                     ; 0804C756
ldr   r2,=0xFFFFFDB6                ; 0804C758
add   r7,r4,r2                      ; 0804C75A
ldrh  r2,[r1]                       ; 0804C75C
cmp   r0,r2                         ; 0804C75E
bge   @@Code0804C79A                ; 0804C760
ldr   r6,=0x03007240                ; 0804C762  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r5,r1                         ; 0804C764
@@Code0804C766:
asr   r2,r3,0x18                    ; 0804C766
sub   r1,r2,0x2                     ; 0804C768
asr   r1,r1,0x1                     ; 0804C76A
lsl   r1,r1,0x1                     ; 0804C76C
add   r1,r1,r4                      ; 0804C76E
asr   r0,r3,0x19                    ; 0804C770
lsl   r0,r0,0x1                     ; 0804C772
add   r0,r0,r4                      ; 0804C774
ldrh  r0,[r0]                       ; 0804C776
strh  r0,[r1]                       ; 0804C778
ldrh  r1,[r1]                       ; 0804C77A
mov   r0,0xB0                       ; 0804C77C
mul   r0,r1                         ; 0804C77E
ldr   r1,[r6]                       ; 0804C780
add   r0,r0,r1                      ; 0804C782
ldr   r1,=0x02C6                    ; 0804C784
add   r0,r0,r1                      ; 0804C786
strh  r2,[r0]                       ; 0804C788
lsl   r2,r2,0x18                    ; 0804C78A
mov   r0,0x80                       ; 0804C78C
lsl   r0,r0,0x12                    ; 0804C78E
add   r3,r2,r0                      ; 0804C790
asr   r0,r3,0x18                    ; 0804C792
ldrh  r1,[r5]                       ; 0804C794
cmp   r0,r1                         ; 0804C796
blt   @@Code0804C766                ; 0804C798
@@Code0804C79A:
mov   r2,0x92                       ; 0804C79A
lsl   r2,r2,0x2                     ; 0804C79C
add   r1,r7,r2                      ; 0804C79E
ldrh  r0,[r1]                       ; 0804C7A0
sub   r0,0x2                        ; 0804C7A2
strh  r0,[r1]                       ; 0804C7A4
pop   {r4-r7}                       ; 0804C7A6
pop   {r0}                          ; 0804C7A8
bx    r0                            ; 0804C7AA
.pool                               ; 0804C7AC

RemoveFromEggSlotsIfPresent:
push  {lr}                          ; 0804C7C4
mov   r1,r0                         ; 0804C7C6
add   r0,0x72                       ; 0804C7C8
ldrb  r0,[r0]                       ; 0804C7CA
lsl   r0,r0,0x18                    ; 0804C7CC
asr   r0,r0,0x18                    ; 0804C7CE
cmp   r0,0x0                        ; 0804C7D0
ble   @@Code0804C7DA                ; 0804C7D2
mov   r0,r1                         ; 0804C7D4
bl    RemoveFromEggSlots            ; 0804C7D6
@@Code0804C7DA:
pop   {r0}                          ; 0804C7DA
bx    r0                            ; 0804C7DC
.pool                               ; 0804C7DE

Sub0804C7E0:
push  {r4,lr}                       ; 0804C7E0
mov   r2,r0                         ; 0804C7E2
ldr   r1,=Data081AB8BA              ; 0804C7E4
ldr   r3,=0x03006D80                ; 0804C7E6
ldrh  r0,[r3,0x3C]                  ; 0804C7E8
add   r0,r0,r1                      ; 0804C7EA
mov   r1,0x0                        ; 0804C7EC
ldsb  r1,[r0,r1]                    ; 0804C7EE
ldr   r0,[r3,0x4]                   ; 0804C7F0
asr   r0,r0,0x8                     ; 0804C7F2
add   r1,r1,r0                      ; 0804C7F4
lsl   r1,r1,0x8                     ; 0804C7F6
str   r1,[r2,0x4]                   ; 0804C7F8
mov   r1,r2                         ; 0804C7FA
add   r1,0x94                       ; 0804C7FC
mov   r0,0x2                        ; 0804C7FE
strb  r0,[r1]                       ; 0804C800
ldr   r1,=Data081AB6B6              ; 0804C802
ldrh  r0,[r3,0x3C]                  ; 0804C804
add   r0,r0,r1                      ; 0804C806
ldrb  r0,[r0]                       ; 0804C808
mov   r1,0xBF                       ; 0804C80A
and   r1,r0                         ; 0804C80C
mov   r0,0x80                       ; 0804C80E
and   r0,r1                         ; 0804C810
cmp   r0,0x0                        ; 0804C812
beq   @@Code0804C81C                ; 0804C814
ldr   r4,=0xFF40                    ; 0804C816
mov   r0,r4                         ; 0804C818
orr   r1,r0                         ; 0804C81A
@@Code0804C81C:
mov   r0,r3                         ; 0804C81C
add   r0,0x42                       ; 0804C81E
ldrh  r4,[r0]                       ; 0804C820
cmp   r4,0x0                        ; 0804C822
bne   @@Code0804C82C                ; 0804C824
neg   r0,r1                         ; 0804C826
lsl   r0,r0,0x10                    ; 0804C828
lsr   r1,r0,0x10                    ; 0804C82A
@@Code0804C82C:
ldr   r0,[r3]                       ; 0804C82C
asr   r0,r0,0x8                     ; 0804C82E
add   r0,r1,r0                      ; 0804C830
lsl   r0,r0,0x10                    ; 0804C832
asr   r0,r0,0x8                     ; 0804C834
str   r0,[r2]                       ; 0804C836
ldrh  r0,[r2,0x32]                  ; 0804C838
cmp   r0,0x28                       ; 0804C83A
beq   @@Code0804C840                ; 0804C83C
strh  r4,[r2,0x36]                  ; 0804C83E
@@Code0804C840:
pop   {r4}                          ; 0804C840
pop   {r0}                          ; 0804C842
bx    r0                            ; 0804C844
.pool                               ; 0804C846

Sub0804C858:
push  {lr}                          ; 0804C858
mov   r3,r0                         ; 0804C85A
lsl   r1,r1,0x18                    ; 0804C85C
lsr   r0,r1,0x18                    ; 0804C85E
ldr   r2,[r3,0x8]                   ; 0804C860
cmp   r2,0x0                        ; 0804C862
beq   @@Code0804C886                ; 0804C864
cmp   r2,0x0                        ; 0804C866
bge   @@Code0804C870                ; 0804C868
add   r0,0x1                        ; 0804C86A
lsl   r0,r0,0x18                    ; 0804C86C
lsr   r0,r0,0x18                    ; 0804C86E
@@Code0804C870:
ldr   r1,=Data08171FB8              ; 0804C870
lsl   r0,r0,0x2                     ; 0804C872
add   r0,r0,r1                      ; 0804C874
ldr   r1,[r0]                       ; 0804C876
add   r0,r2,r1                      ; 0804C878
str   r0,[r3,0x8]                   ; 0804C87A
eor   r0,r1                         ; 0804C87C
cmp   r0,0x0                        ; 0804C87E
blt   @@Code0804C886                ; 0804C880
mov   r0,0x0                        ; 0804C882
str   r0,[r3,0x8]                   ; 0804C884
@@Code0804C886:
pop   {r0}                          ; 0804C886
bx    r0                            ; 0804C888
.pool                               ; 0804C88A

Sub0804C890:
push  {lr}                          ; 0804C890
mov   r1,0x0                        ; 0804C892
bl    Sub0804C858                   ; 0804C894
pop   {r0}                          ; 0804C898
bx    r0                            ; 0804C89A

Sub0804C89C:
push  {lr}                          ; 0804C89C
mov   r1,0x2                        ; 0804C89E
bl    Sub0804C858                   ; 0804C8A0
pop   {r0}                          ; 0804C8A4
bx    r0                            ; 0804C8A6

Sub0804C8A8:
push  {lr}                          ; 0804C8A8
mov   r2,r0                         ; 0804C8AA
ldr   r0,[r2,0x1C]                  ; 0804C8AC
ldr   r1,[r2,0xC]                   ; 0804C8AE
cmp   r0,r1                         ; 0804C8B0
bge   @@Code0804C8BA                ; 0804C8B2
ldr   r0,[r2,0x14]                  ; 0804C8B4
sub   r0,r1,r0                      ; 0804C8B6
b     @@Code0804C8BE                ; 0804C8B8
@@Code0804C8BA:
ldr   r0,[r2,0x14]                  ; 0804C8BA
add   r0,r1,r0                      ; 0804C8BC
@@Code0804C8BE:
str   r0,[r2,0xC]                   ; 0804C8BE
ldr   r1,[r2,0xC]                   ; 0804C8C0
asr   r0,r1,0x8                     ; 0804C8C2
strh  r0,[r2,0x30]                  ; 0804C8C4
ldr   r0,[r2,0x4]                   ; 0804C8C6
add   r0,r0,r1                      ; 0804C8C8
str   r0,[r2,0x4]                   ; 0804C8CA
ldr   r0,[r2,0x18]                  ; 0804C8CC
ldr   r1,[r2,0x8]                   ; 0804C8CE
cmp   r0,r1                         ; 0804C8D0
bge   @@Code0804C8DA                ; 0804C8D2
ldr   r0,[r2,0x10]                  ; 0804C8D4
sub   r0,r1,r0                      ; 0804C8D6
b     @@Code0804C8DE                ; 0804C8D8
@@Code0804C8DA:
ldr   r0,[r2,0x10]                  ; 0804C8DA
add   r0,r1,r0                      ; 0804C8DC
@@Code0804C8DE:
str   r0,[r2,0x8]                   ; 0804C8DE
ldr   r1,[r2,0x8]                   ; 0804C8E0
asr   r0,r1,0x8                     ; 0804C8E2
strh  r0,[r2,0x2E]                  ; 0804C8E4
ldr   r0,[r2]                       ; 0804C8E6
add   r0,r0,r1                      ; 0804C8E8
str   r0,[r2]                       ; 0804C8EA
pop   {r0}                          ; 0804C8EC
bx    r0                            ; 0804C8EE

Sub0804C8F0:
push  {lr}                          ; 0804C8F0
mov   r2,r0                         ; 0804C8F2
ldrh  r1,[r2,0x3E]                  ; 0804C8F4
mov   r0,0x1                        ; 0804C8F6
and   r0,r1                         ; 0804C8F8
cmp   r0,0x0                        ; 0804C8FA
beq   @@Code0804C90C                ; 0804C8FC
ldr   r0,[r2,0x18]                  ; 0804C8FE
ldr   r1,[r2,0x8]                   ; 0804C900
cmp   r0,r1                         ; 0804C902
bge   @@Code0804C93A                ; 0804C904
ldr   r0,[r2,0x10]                  ; 0804C906
sub   r0,r1,r0                      ; 0804C908
b     @@Code0804C93E                ; 0804C90A
@@Code0804C90C:
ldr   r0,[r2,0x1C]                  ; 0804C90C
ldr   r1,[r2,0xC]                   ; 0804C90E
cmp   r0,r1                         ; 0804C910
bge   @@Code0804C91A                ; 0804C912
ldr   r0,[r2,0x14]                  ; 0804C914
sub   r0,r1,r0                      ; 0804C916
b     @@Code0804C91E                ; 0804C918
@@Code0804C91A:
ldr   r0,[r2,0x14]                  ; 0804C91A
add   r0,r1,r0                      ; 0804C91C
@@Code0804C91E:
str   r0,[r2,0xC]                   ; 0804C91E
ldr   r1,[r2,0xC]                   ; 0804C920
asr   r0,r1,0x8                     ; 0804C922
strh  r0,[r2,0x30]                  ; 0804C924
ldr   r0,[r2,0x4]                   ; 0804C926
add   r0,r0,r1                      ; 0804C928
str   r0,[r2,0x4]                   ; 0804C92A
ldr   r0,[r2,0x18]                  ; 0804C92C
ldr   r1,[r2,0x8]                   ; 0804C92E
cmp   r0,r1                         ; 0804C930
bge   @@Code0804C93A                ; 0804C932
ldr   r0,[r2,0x10]                  ; 0804C934
sub   r0,r1,r0                      ; 0804C936
b     @@Code0804C93E                ; 0804C938
@@Code0804C93A:
ldr   r0,[r2,0x10]                  ; 0804C93A
add   r0,r1,r0                      ; 0804C93C
@@Code0804C93E:
str   r0,[r2,0x8]                   ; 0804C93E
ldr   r1,[r2,0x8]                   ; 0804C940
asr   r0,r1,0x8                     ; 0804C942
strh  r0,[r2,0x2E]                  ; 0804C944
ldr   r0,[r2]                       ; 0804C946
add   r0,r0,r1                      ; 0804C948
str   r0,[r2]                       ; 0804C94A
pop   {r0}                          ; 0804C94C
bx    r0                            ; 0804C94E

Sub0804C950:
push  {r4,lr}                       ; 0804C950
mov   r4,r0                         ; 0804C952
ldr   r1,=0x03006D80                ; 0804C954
mov   r0,0xD4                       ; 0804C956
lsl   r0,r0,0x1                     ; 0804C958
add   r1,r1,r0                      ; 0804C95A
ldr   r0,=0x03007240                ; 0804C95C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0804C95E
ldr   r0,=0x29B0                    ; 0804C960
add   r3,r2,r0                      ; 0804C962
ldrh  r0,[r1]                       ; 0804C964
ldrh  r1,[r3]                       ; 0804C966
orr   r0,r1                         ; 0804C968
ldr   r1,=0x29BA                    ; 0804C96A
add   r2,r2,r1                      ; 0804C96C
ldrh  r1,[r2]                       ; 0804C96E
orr   r0,r1                         ; 0804C970
cmp   r0,0x0                        ; 0804C972
beq   @@Code0804C98E                ; 0804C974
mov   r1,r4                         ; 0804C976
add   r1,0x42                       ; 0804C978
mov   r2,r4                         ; 0804C97A
add   r2,0x4A                       ; 0804C97C
@@Code0804C97E:
ldrh  r0,[r1]                       ; 0804C97E
cmp   r0,0x0                        ; 0804C980
beq   @@Code0804C988                ; 0804C982
sub   r0,0x1                        ; 0804C984
strh  r0,[r1]                       ; 0804C986
@@Code0804C988:
add   r1,0x2                        ; 0804C988
cmp   r1,r2                         ; 0804C98A
bne   @@Code0804C97E                ; 0804C98C
@@Code0804C98E:
pop   {r4}                          ; 0804C98E
pop   {r0}                          ; 0804C990
bx    r0                            ; 0804C992
.pool                               ; 0804C994

Sub0804C9A4:
push  {r4-r7,lr}                    ; 0804C9A4
mov   r7,r8                         ; 0804C9A6
push  {r7}                          ; 0804C9A8
add   sp,-0x4                       ; 0804C9AA
ldr   r1,=0x03007240                ; 0804C9AC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 0804C9AE
mov   r3,0x95                       ; 0804C9B0
lsl   r3,r3,0x2                     ; 0804C9B2
add   r2,r0,r3                      ; 0804C9B4
ldr   r5,=0x12D4                    ; 0804C9B6
add   r4,r0,r5                      ; 0804C9B8
ldr   r5,=0x1AF4                    ; 0804C9BA
add   r3,r0,r5                      ; 0804C9BC
ldr   r5,=0x25F4                    ; 0804C9BE
add   r7,r0,r5                      ; 0804C9C0
mov   r12,r1                        ; 0804C9C2
ldr   r0,=0x0300702C                ; 0804C9C4  Sprite RAM structs (03002460)
mov   r8,r0                         ; 0804C9C6
mov   r6,0x0                        ; 0804C9C8
mov   r5,0xFF                       ; 0804C9CA
@@Code0804C9CC:
strh  r6,[r2,0x24]                  ; 0804C9CC
mov   r1,r2                         ; 0804C9CE
add   r1,0x94                       ; 0804C9D0
ldrb  r0,[r1]                       ; 0804C9D2
orr   r0,r5                         ; 0804C9D4
strb  r0,[r1]                       ; 0804C9D6
add   r2,0xB0                       ; 0804C9D8
cmp   r2,r4                         ; 0804C9DA
blo   @@Code0804C9CC                ; 0804C9DC
mov   r4,0x0                        ; 0804C9DE
mov   r2,0xFF                       ; 0804C9E0
@@Code0804C9E2:
strh  r4,[r3,0x24]                  ; 0804C9E2
mov   r1,r3                         ; 0804C9E4
add   r1,0x94                       ; 0804C9E6
ldrb  r0,[r1]                       ; 0804C9E8
orr   r0,r2                         ; 0804C9EA
strb  r0,[r1]                       ; 0804C9EC
add   r3,0xB0                       ; 0804C9EE
cmp   r3,r7                         ; 0804C9F0
blo   @@Code0804C9E2                ; 0804C9F2
mov   r1,r12                        ; 0804C9F4
ldr   r0,[r1]                       ; 0804C9F6
ldr   r3,=0x25F8                    ; 0804C9F8
add   r2,r0,r3                      ; 0804C9FA
ldr   r5,=0x2618                    ; 0804C9FC
add   r0,r0,r5                      ; 0804C9FE
mov   r4,0x0                        ; 0804CA00
mov   r3,0x0                        ; 0804CA02
mov   r1,0xFF                       ; 0804CA04
@@Code0804CA06:
strh  r3,[r2]                       ; 0804CA06
strh  r1,[r2,0x2]                   ; 0804CA08
strb  r4,[r2,0x4]                   ; 0804CA0A
add   r2,0x8                        ; 0804CA0C
cmp   r2,r0                         ; 0804CA0E
blo   @@Code0804CA06                ; 0804CA10
mov   r1,r8                         ; 0804CA12
ldr   r0,[r1]                       ; 0804CA14
ldr   r3,=0x16AE                    ; 0804CA16
add   r0,r0,r3                      ; 0804CA18
mov   r1,0xFF                       ; 0804CA1A
strb  r1,[r0]                       ; 0804CA1C
mov   r1,sp                         ; 0804CA1E
mov   r0,0x0                        ; 0804CA20
strh  r0,[r1]                       ; 0804CA22
mov   r5,r8                         ; 0804CA24
ldr   r1,[r5]                       ; 0804CA26
ldr   r0,=0x16B0                    ; 0804CA28
add   r1,r1,r0                      ; 0804CA2A
ldr   r2,=0x01000024                ; 0804CA2C
mov   r0,sp                         ; 0804CA2E
bl    swi_MemoryCopy4or2            ; 0804CA30  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,[r5]                       ; 0804CA34
ldr   r1,=0x1893                    ; 0804CA36
add   r0,r0,r1                      ; 0804CA38
mov   r1,0x1                        ; 0804CA3A
neg   r1,r1                         ; 0804CA3C
strb  r1,[r0]                       ; 0804CA3E
add   sp,0x4                        ; 0804CA40
pop   {r3}                          ; 0804CA42
mov   r8,r3                         ; 0804CA44
pop   {r4-r7}                       ; 0804CA46
pop   {r0}                          ; 0804CA48
bx    r0                            ; 0804CA4A
.pool                               ; 0804CA4C

Sub0804CA78:
push  {r4-r5,lr}                    ; 0804CA78
mov   r4,r0                         ; 0804CA7A
lsl   r4,r4,0x18                    ; 0804CA7C
lsr   r4,r4,0x18                    ; 0804CA7E
ldr   r0,=0x030021A8                ; 0804CA80
ldr   r5,=0x03007030                ; 0804CA82
mov   r1,r5                         ; 0804CA84
mov   r2,0x1                        ; 0804CA86
mov   r3,0x2                        ; 0804CA88
bl    swi_0F                        ; 0804CA8A
lsl   r4,r4,0x3                     ; 0804CA8E
ldr   r0,=0x03005A00                ; 0804CA90
add   r4,r4,r0                      ; 0804CA92
ldrh  r0,[r5]                       ; 0804CA94
strh  r0,[r4,0x6]                   ; 0804CA96
ldrh  r0,[r5,0x2]                   ; 0804CA98
strh  r0,[r4,0xE]                   ; 0804CA9A
ldrh  r0,[r5,0x4]                   ; 0804CA9C
strh  r0,[r4,0x16]                  ; 0804CA9E
ldrh  r0,[r5,0x6]                   ; 0804CAA0
strh  r0,[r4,0x1E]                  ; 0804CAA2
pop   {r4-r5}                       ; 0804CAA4
pop   {r0}                          ; 0804CAA6
bx    r0                            ; 0804CAA8
.pool                               ; 0804CAAA

Sub0804CAB8:
push  {r4-r7,lr}                    ; 0804CAB8
mov   r3,r0                         ; 0804CABA
lsl   r1,r1,0x10                    ; 0804CABC
lsr   r4,r1,0x10                    ; 0804CABE
lsl   r2,r2,0x10                    ; 0804CAC0
lsr   r7,r2,0x10                    ; 0804CAC2
add   r0,0x94                       ; 0804CAC4
ldrb  r0,[r0]                       ; 0804CAC6
cmp   r0,0xFF                       ; 0804CAC8
beq   @@Code0804CB44                ; 0804CACA
ldrh  r0,[r3,0x34]                  ; 0804CACC
lsl   r0,r0,0x10                    ; 0804CACE
cmp   r0,0x0                        ; 0804CAD0
blt   @@Code0804CB44                ; 0804CAD2
lsr   r0,r0,0x12                    ; 0804CAD4
lsl   r0,r0,0x3                     ; 0804CAD6
ldr   r3,=0x03005A00                ; 0804CAD8
add   r6,r0,r3                      ; 0804CADA
ldrh  r0,[r6]                       ; 0804CADC
mov   r2,0x80                       ; 0804CADE
lsl   r2,r2,0x1                     ; 0804CAE0
mov   r1,r2                         ; 0804CAE2
orr   r0,r1                         ; 0804CAE4
strh  r0,[r6]                       ; 0804CAE6
ldrh  r0,[r6,0x2]                   ; 0804CAE8
ldr   r1,=0x01FF                    ; 0804CAEA
and   r1,r0                         ; 0804CAEC
mov   r2,0x80                       ; 0804CAEE
lsl   r2,r2,0x8                     ; 0804CAF0
mov   r0,r2                         ; 0804CAF2
orr   r1,r0                         ; 0804CAF4
ldr   r0,=0x0FD2                    ; 0804CAF6
add   r5,r3,r0                      ; 0804CAF8
ldrh  r2,[r5]                       ; 0804CAFA
mov   r0,0x1F                       ; 0804CAFC
and   r0,r2                         ; 0804CAFE
lsl   r0,r0,0x9                     ; 0804CB00
orr   r1,r0                         ; 0804CB02
strh  r1,[r6,0x2]                   ; 0804CB04
ldrh  r0,[r5]                       ; 0804CB06
lsl   r0,r0,0x5                     ; 0804CB08
add   r6,r0,r3                      ; 0804CB0A
ldr   r0,=0x030021A8                ; 0804CB0C
ldr   r2,=Data081AF2CC              ; 0804CB0E
lsl   r1,r4,0x1                     ; 0804CB10
add   r1,r1,r2                      ; 0804CB12
ldrh  r1,[r1]                       ; 0804CB14
strh  r1,[r0,0x2]                   ; 0804CB16
strh  r1,[r0]                       ; 0804CB18
lsl   r1,r7,0x8                     ; 0804CB1A
strh  r1,[r0,0x4]                   ; 0804CB1C
ldr   r4,=0x03007030                ; 0804CB1E
mov   r1,r4                         ; 0804CB20
mov   r2,0x1                        ; 0804CB22
mov   r3,0x2                        ; 0804CB24
bl    swi_0F                        ; 0804CB26
ldrh  r0,[r4]                       ; 0804CB2A
strh  r0,[r6,0x6]                   ; 0804CB2C
add   r6,0x8                        ; 0804CB2E
ldrh  r0,[r4,0x2]                   ; 0804CB30
strh  r0,[r6,0x6]                   ; 0804CB32
add   r6,0x8                        ; 0804CB34
ldrh  r0,[r4,0x4]                   ; 0804CB36
strh  r0,[r6,0x6]                   ; 0804CB38
ldrh  r0,[r4,0x6]                   ; 0804CB3A
strh  r0,[r6,0xE]                   ; 0804CB3C
ldrh  r0,[r5]                       ; 0804CB3E
add   r0,0x1                        ; 0804CB40
strh  r0,[r5]                       ; 0804CB42
@@Code0804CB44:
pop   {r4-r7}                       ; 0804CB44
pop   {r0}                          ; 0804CB46
bx    r0                            ; 0804CB48
.pool                               ; 0804CB4A

Sub0804CB64:
push  {r4-r7,lr}                    ; 0804CB64
mov   r7,r8                         ; 0804CB66
push  {r7}                          ; 0804CB68
mov   r4,r0                         ; 0804CB6A
lsl   r1,r1,0x10                    ; 0804CB6C
lsr   r7,r1,0x10                    ; 0804CB6E
lsl   r2,r2,0x10                    ; 0804CB70
lsr   r2,r2,0x10                    ; 0804CB72
mov   r12,r2                        ; 0804CB74
lsl   r3,r3,0x10                    ; 0804CB76
lsr   r3,r3,0x10                    ; 0804CB78
mov   r8,r3                         ; 0804CB7A
add   r0,0x94                       ; 0804CB7C
ldrb  r0,[r0]                       ; 0804CB7E
cmp   r0,0xFF                       ; 0804CB80
beq   @@Code0804CC06                ; 0804CB82
ldrh  r0,[r4,0x34]                  ; 0804CB84
lsl   r0,r0,0x10                    ; 0804CB86
cmp   r0,0x0                        ; 0804CB88
blt   @@Code0804CC06                ; 0804CB8A
lsr   r0,r0,0x12                    ; 0804CB8C
lsl   r0,r0,0x3                     ; 0804CB8E
ldr   r3,=0x03005A00                ; 0804CB90
add   r6,r0,r3                      ; 0804CB92
ldrh  r0,[r6]                       ; 0804CB94
mov   r2,0x80                       ; 0804CB96
lsl   r2,r2,0x1                     ; 0804CB98
mov   r1,r2                         ; 0804CB9A
orr   r0,r1                         ; 0804CB9C
strh  r0,[r6]                       ; 0804CB9E
ldrh  r0,[r6,0x2]                   ; 0804CBA0
ldr   r1,=0x01FF                    ; 0804CBA2
and   r1,r0                         ; 0804CBA4
mov   r2,0x80                       ; 0804CBA6
lsl   r2,r2,0x8                     ; 0804CBA8
mov   r0,r2                         ; 0804CBAA
orr   r1,r0                         ; 0804CBAC
ldr   r0,=0x0FD2                    ; 0804CBAE
add   r5,r3,r0                      ; 0804CBB0
ldrh  r2,[r5]                       ; 0804CBB2
mov   r0,0x1F                       ; 0804CBB4
and   r0,r2                         ; 0804CBB6
lsl   r0,r0,0x9                     ; 0804CBB8
orr   r1,r0                         ; 0804CBBA
strh  r1,[r6,0x2]                   ; 0804CBBC
ldrh  r0,[r5]                       ; 0804CBBE
lsl   r0,r0,0x5                     ; 0804CBC0
add   r6,r0,r3                      ; 0804CBC2
ldr   r0,=0x030021A8                ; 0804CBC4
ldr   r2,=Data081AF2CC              ; 0804CBC6
lsl   r1,r7,0x1                     ; 0804CBC8
add   r1,r1,r2                      ; 0804CBCA
ldrh  r1,[r1]                       ; 0804CBCC
strh  r1,[r0]                       ; 0804CBCE
mov   r3,r12                        ; 0804CBD0
lsl   r1,r3,0x1                     ; 0804CBD2
add   r1,r1,r2                      ; 0804CBD4
ldrh  r1,[r1]                       ; 0804CBD6
strh  r1,[r0,0x2]                   ; 0804CBD8
mov   r2,r8                         ; 0804CBDA
lsl   r1,r2,0x8                     ; 0804CBDC
strh  r1,[r0,0x4]                   ; 0804CBDE
ldr   r4,=0x03007030                ; 0804CBE0
mov   r1,r4                         ; 0804CBE2
mov   r2,0x1                        ; 0804CBE4
mov   r3,0x2                        ; 0804CBE6
bl    swi_0F                        ; 0804CBE8
ldrh  r0,[r4]                       ; 0804CBEC
strh  r0,[r6,0x6]                   ; 0804CBEE
add   r6,0x8                        ; 0804CBF0
ldrh  r0,[r4,0x2]                   ; 0804CBF2
strh  r0,[r6,0x6]                   ; 0804CBF4
add   r6,0x8                        ; 0804CBF6
ldrh  r0,[r4,0x4]                   ; 0804CBF8
strh  r0,[r6,0x6]                   ; 0804CBFA
ldrh  r0,[r4,0x6]                   ; 0804CBFC
strh  r0,[r6,0xE]                   ; 0804CBFE
ldrh  r0,[r5]                       ; 0804CC00
add   r0,0x1                        ; 0804CC02
strh  r0,[r5]                       ; 0804CC04
@@Code0804CC06:
pop   {r3}                          ; 0804CC06
mov   r8,r3                         ; 0804CC08
pop   {r4-r7}                       ; 0804CC0A
pop   {r0}                          ; 0804CC0C
bx    r0                            ; 0804CC0E
.pool                               ; 0804CC10

Sub0804CC28:
push  {r4-r7,lr}                    ; 0804CC28
mov   r4,r0                         ; 0804CC2A
add   r0,0x94                       ; 0804CC2C
ldrb  r0,[r0]                       ; 0804CC2E
lsl   r0,r0,0x18                    ; 0804CC30
asr   r0,r0,0x18                    ; 0804CC32
cmp   r0,0x0                        ; 0804CC34
blt   @@Code0804CC8A                ; 0804CC36
ldrh  r0,[r4,0x34]                  ; 0804CC38
lsl   r0,r0,0x10                    ; 0804CC3A
cmp   r0,0x0                        ; 0804CC3C
blt   @@Code0804CC8A                ; 0804CC3E
asr   r0,r0,0x12                    ; 0804CC40
lsl   r1,r0,0x2                     ; 0804CC42
ldr   r2,=0x0202C8B0                ; 0804CC44
add   r3,r1,r2                      ; 0804CC46
lsl   r0,r0,0x3                     ; 0804CC48
ldr   r1,=0x03005A00                ; 0804CC4A
add   r2,r0,r1                      ; 0804CC4C
ldrh  r0,[r4,0x2A]                  ; 0804CC4E
lsr   r0,r0,0xB                     ; 0804CC50
lsl   r0,r0,0x3                     ; 0804CC52
add   r4,r2,r0                      ; 0804CC54
cmp   r2,r4                         ; 0804CC56
bhs   @@Code0804CC8A                ; 0804CC58
ldr   r6,=0x017F                    ; 0804CC5A
mov   r7,0x4                        ; 0804CC5C
neg   r7,r7                         ; 0804CC5E
mov   r12,r7                        ; 0804CC60
mov   r5,0x2                        ; 0804CC62
@@Code0804CC64:
mov   r0,0x0                        ; 0804CC64
ldsh  r1,[r3,r0]                    ; 0804CC66
add   r1,0x40                       ; 0804CC68
mov   r7,0x2                        ; 0804CC6A
ldsh  r0,[r3,r7]                    ; 0804CC6C
add   r0,0x20                       ; 0804CC6E
cmp   r1,r6                         ; 0804CC70
bhi   @@Code0804CC78                ; 0804CC72
cmp   r0,0xDF                       ; 0804CC74
bls   @@Code0804CC82                ; 0804CC76
@@Code0804CC78:
ldrb  r1,[r2,0x1]                   ; 0804CC78
mov   r0,r12                        ; 0804CC7A
and   r0,r1                         ; 0804CC7C
orr   r0,r5                         ; 0804CC7E
strb  r0,[r2,0x1]                   ; 0804CC80
@@Code0804CC82:
add   r3,0x4                        ; 0804CC82
add   r2,0x8                        ; 0804CC84
cmp   r2,r4                         ; 0804CC86
blo   @@Code0804CC64                ; 0804CC88
@@Code0804CC8A:
pop   {r4-r7}                       ; 0804CC8A
pop   {r0}                          ; 0804CC8C
bx    r0                            ; 0804CC8E
.pool                               ; 0804CC90

Sub0804CC9C:
push  {r4-r7,lr}                    ; 0804CC9C
mov   r7,r10                        ; 0804CC9E
mov   r6,r9                         ; 0804CCA0
mov   r5,r8                         ; 0804CCA2
push  {r5-r7}                       ; 0804CCA4
add   sp,-0x8                       ; 0804CCA6
mov   r7,r0                         ; 0804CCA8
mov   r5,r1                         ; 0804CCAA
ldr   r6,=0x030069F4                ; 0804CCAC
mov   r1,0x34                       ; 0804CCAE
ldsh  r0,[r7,r1]                    ; 0804CCB0
cmp   r0,0x0                        ; 0804CCB2
bge   @@Code0804CCB8                ; 0804CCB4
b     @@Code0804CEA6                ; 0804CCB6
@@Code0804CCB8:
ldrh  r0,[r7,0x36]                  ; 0804CCB8
lsl   r0,r0,0x5                     ; 0804CCBA
ldrh  r1,[r7,0x2C]                  ; 0804CCBC
eor   r0,r1                         ; 0804CCBE
strh  r0,[r6]                       ; 0804CCC0
lsl   r1,r0,0x10                    ; 0804CCC2
lsr   r1,r1,0x18                    ; 0804CCC4
lsl   r0,r0,0x8                     ; 0804CCC6
orr   r1,r0                         ; 0804CCC8
strh  r1,[r6,0x6]                   ; 0804CCCA
ldrh  r2,[r7,0x20]                  ; 0804CCCC
str   r2,[sp]                       ; 0804CCCE
ldrh  r3,[r7,0x22]                  ; 0804CCD0
str   r3,[sp,0x4]                   ; 0804CCD2
ldr   r3,=0x03007240                ; 0804CCD4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r3]                       ; 0804CCD6
mov   r0,r7                         ; 0804CCD8
add   r0,0x98                       ; 0804CCDA
ldrb  r0,[r0]                       ; 0804CCDC
lsl   r0,r0,0x3                     ; 0804CCDE
ldr   r4,=0x29D2                    ; 0804CCE0
add   r1,r1,r4                      ; 0804CCE2
strh  r0,[r1]                       ; 0804CCE4
ldrh  r0,[r7,0x34]                  ; 0804CCE6
lsr   r0,r0,0x2                     ; 0804CCE8
lsl   r2,r0,0x3                     ; 0804CCEA
ldr   r4,=0xFFFFF00C                ; 0804CCEC
add   r1,r6,r4                      ; 0804CCEE
add   r2,r2,r1                      ; 0804CCF0
mov   r12,r2                        ; 0804CCF2
lsl   r0,r0,0x2                     ; 0804CCF4
ldr   r1,=0x0202C8B0                ; 0804CCF6
add   r1,r1,r0                      ; 0804CCF8
mov   r8,r1                         ; 0804CCFA
ldrh  r0,[r7,0x2A]                  ; 0804CCFC
lsr   r0,r0,0xB                     ; 0804CCFE
sub   r0,0x1                        ; 0804CD00
mov   r9,r0                         ; 0804CD02
cmp   r0,0x0                        ; 0804CD04
bge   @@Code0804CD0A                ; 0804CD06
b     @@Code0804CEA6                ; 0804CD08
@@Code0804CD0A:
ldr   r2,=0x01FF                    ; 0804CD0A
mov   r10,r2                        ; 0804CD0C
@@Code0804CD0E:
mov   r2,0x0                        ; 0804CD0E
ldsb  r2,[r5,r2]                    ; 0804CD10
strh  r2,[r6]                       ; 0804CD12
add   r5,0x1                        ; 0804CD14
ldrh  r1,[r6,0x6]                   ; 0804CD16
mov   r0,0x80                       ; 0804CD18
lsl   r0,r0,0x7                     ; 0804CD1A
and   r0,r1                         ; 0804CD1C
lsl   r0,r0,0x10                    ; 0804CD1E
lsr   r0,r0,0x10                    ; 0804CD20
mov   r3,r1                         ; 0804CD22
cmp   r0,0x0                        ; 0804CD24
beq   @@Code0804CD2E                ; 0804CD26
neg   r0,r2                         ; 0804CD28
strh  r0,[r6]                       ; 0804CD2A
mov   r0,0x8                        ; 0804CD2C
@@Code0804CD2E:
strh  r0,[r6,0x12]                  ; 0804CD2E
ldrh  r0,[r6]                       ; 0804CD30
ldr   r4,[sp]                       ; 0804CD32
add   r0,r0,r4                      ; 0804CD34
strh  r0,[r6,0xA]                   ; 0804CD36
mov   r1,0x0                        ; 0804CD38
ldsb  r1,[r5,r1]                    ; 0804CD3A
strh  r1,[r6]                       ; 0804CD3C
add   r5,0x1                        ; 0804CD3E
lsl   r0,r3,0x10                    ; 0804CD40
cmp   r0,0x0                        ; 0804CD42
bge   @@Code0804CD68                ; 0804CD44
neg   r0,r1                         ; 0804CD46
strh  r0,[r6]                       ; 0804CD48
mov   r0,0x8                        ; 0804CD4A
b     @@Code0804CD6A                ; 0804CD4C
.pool                               ; 0804CD4E

@@Code0804CD68:
mov   r0,0x0                        ; 0804CD68
@@Code0804CD6A:
strh  r0,[r6,0x10]                  ; 0804CD6A
ldrh  r0,[r6]                       ; 0804CD6C
ldr   r1,[sp,0x4]                   ; 0804CD6E
add   r2,r0,r1                      ; 0804CD70
strh  r2,[r6,0xC]                   ; 0804CD72
ldrb  r1,[r5]                       ; 0804CD74
strh  r1,[r6]                       ; 0804CD76
add   r5,0x1                        ; 0804CD78
ldrb  r0,[r5]                       ; 0804CD7A
lsl   r0,r0,0x8                     ; 0804CD7C
orr   r1,r0                         ; 0804CD7E
strh  r1,[r6]                       ; 0804CD80
add   r5,0x1                        ; 0804CD82
ldrb  r1,[r5]                       ; 0804CD84
mov   r0,0x2                        ; 0804CD86
and   r0,r1                         ; 0804CD88
cmp   r0,0x0                        ; 0804CD8A
bne   @@Code0804CD9C                ; 0804CD8C
ldrh  r0,[r6,0x12]                  ; 0804CD8E
ldrh  r4,[r6,0xA]                   ; 0804CD90
add   r0,r0,r4                      ; 0804CD92
strh  r0,[r6,0xA]                   ; 0804CD94
ldrh  r0,[r6,0x10]                  ; 0804CD96
add   r0,r2,r0                      ; 0804CD98
strh  r0,[r6,0xC]                   ; 0804CD9A
@@Code0804CD9C:
ldrh  r0,[r6]                       ; 0804CD9C
eor   r0,r3                         ; 0804CD9E
strh  r0,[r6]                       ; 0804CDA0
ldr   r2,=0x03007240                ; 0804CDA2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r2]                       ; 0804CDA4
ldr   r3,=0x29D2                    ; 0804CDA6
add   r1,r1,r3                      ; 0804CDA8
mov   r4,r10                        ; 0804CDAA
and   r0,r4                         ; 0804CDAC
ldrh  r1,[r1]                       ; 0804CDAE
add   r0,r0,r1                      ; 0804CDB0
lsl   r1,r0,0x10                    ; 0804CDB2
lsr   r4,r1,0x10                    ; 0804CDB4
cmp   r4,0xFF                       ; 0804CDB6
bls   @@Code0804CDDC                ; 0804CDB8
mov   r0,0xF                        ; 0804CDBA
and   r4,r0                         ; 0804CDBC
lsr   r0,r1,0x14                    ; 0804CDBE
sub   r0,0x10                       ; 0804CDC0
lsl   r0,r0,0x1                     ; 0804CDC2
ldr   r1,=Data08172028              ; 0804CDC4
add   r0,r0,r1                      ; 0804CDC6
ldrh  r0,[r0]                       ; 0804CDC8
orr   r4,r0                         ; 0804CDCA
b     @@Code0804CDE8                ; 0804CDCC
.pool                               ; 0804CDCE

@@Code0804CDDC:
mov   r1,0xF                        ; 0804CDDC
and   r1,r4                         ; 0804CDDE
mov   r0,0xF0                       ; 0804CDE0
and   r4,r0                         ; 0804CDE2
lsl   r4,r4,0x1                     ; 0804CDE4
orr   r4,r1                         ; 0804CDE6
@@Code0804CDE8:
ldrh  r0,[r6,0xA]                   ; 0804CDE8
mov   r2,r8                         ; 0804CDEA
strh  r0,[r2]                       ; 0804CDEC
ldrh  r0,[r6,0xC]                   ; 0804CDEE
strh  r0,[r2,0x2]                   ; 0804CDF0
mov   r3,0x4                        ; 0804CDF2
add   r8,r3                         ; 0804CDF4
mov   r2,0x0                        ; 0804CDF6
ldrh  r0,[r7,0x32]                  ; 0804CDF8
ldr   r1,=0x02FF                    ; 0804CDFA
cmp   r0,r1                         ; 0804CDFC
bhi   @@Code0804CE1C                ; 0804CDFE
mov   r2,r0                         ; 0804CE00
lsr   r0,r2,0x3                     ; 0804CE02
ldr   r3,=Data08171FC8              ; 0804CE04
add   r0,r0,r3                      ; 0804CE06
ldrb  r0,[r0]                       ; 0804CE08
mov   r1,0x7                        ; 0804CE0A
and   r2,r1                         ; 0804CE0C
lsl   r0,r2                         ; 0804CE0E
mov   r2,0x80                       ; 0804CE10
neg   r2,r2                         ; 0804CE12
mov   r1,r2                         ; 0804CE14
and   r0,r1                         ; 0804CE16
lsl   r0,r0,0x18                    ; 0804CE18
lsr   r2,r0,0x18                    ; 0804CE1A
@@Code0804CE1C:
ldrh  r1,[r6,0xC]                   ; 0804CE1C
cmp   r2,0x0                        ; 0804CE1E
bne   @@Code0804CE3A                ; 0804CE20
mov   r0,r1                         ; 0804CE22
add   r0,0x20                       ; 0804CE24
lsl   r0,r0,0x10                    ; 0804CE26
lsr   r0,r0,0x10                    ; 0804CE28
cmp   r0,0xDF                       ; 0804CE2A
bhi   @@Code0804CE96                ; 0804CE2C
ldrh  r0,[r6,0xA]                   ; 0804CE2E
add   r0,0x10                       ; 0804CE30
lsl   r0,r0,0x10                    ; 0804CE32
lsr   r0,r0,0x10                    ; 0804CE34
cmp   r0,0xFF                       ; 0804CE36
bhi   @@Code0804CE96                ; 0804CE38
@@Code0804CE3A:
mov   r0,0xFF                       ; 0804CE3A
and   r0,r1                         ; 0804CE3C
mov   r3,r12                        ; 0804CE3E
strh  r0,[r3]                       ; 0804CE40
ldrb  r2,[r5]                       ; 0804CE42
lsl   r2,r2,0xD                     ; 0804CE44
ldr   r1,=0xFFFFC000                ; 0804CE46
mov   r0,r1                         ; 0804CE48
and   r2,r0                         ; 0804CE4A
ldrh  r0,[r6]                       ; 0804CE4C
lsr   r0,r0,0x2                     ; 0804CE4E
mov   r3,0xC0                       ; 0804CE50
lsl   r3,r3,0x6                     ; 0804CE52
mov   r1,r3                         ; 0804CE54
and   r0,r1                         ; 0804CE56
orr   r2,r0                         ; 0804CE58
ldrh  r1,[r6,0xA]                   ; 0804CE5A
mov   r0,r10                        ; 0804CE5C
and   r0,r1                         ; 0804CE5E
orr   r2,r0                         ; 0804CE60
mov   r0,r12                        ; 0804CE62
strh  r2,[r0,0x2]                   ; 0804CE64
ldrh  r2,[r6]                       ; 0804CE66
lsl   r1,r2,0x3                     ; 0804CE68
mov   r3,0xE0                       ; 0804CE6A
lsl   r3,r3,0x7                     ; 0804CE6C
mov   r0,r3                         ; 0804CE6E
and   r1,r0                         ; 0804CE70
lsr   r2,r2,0x2                     ; 0804CE72
mov   r0,0xC0                       ; 0804CE74
lsl   r0,r0,0x4                     ; 0804CE76
mov   r3,r0                         ; 0804CE78
mov   r0,r3                         ; 0804CE7A
bic   r0,r2                         ; 0804CE7C
mov   r2,0x80                       ; 0804CE7E
lsl   r2,r2,0x3                     ; 0804CE80
add   r0,r0,r2                      ; 0804CE82
and   r0,r3                         ; 0804CE84
orr   r1,r0                         ; 0804CE86
ldr   r0,=0x03FF                    ; 0804CE88
and   r4,r0                         ; 0804CE8A
orr   r1,r4                         ; 0804CE8C
mov   r3,r12                        ; 0804CE8E
strh  r1,[r3,0x4]                   ; 0804CE90
mov   r4,0x8                        ; 0804CE92
add   r12,r4                        ; 0804CE94
@@Code0804CE96:
add   r5,0x1                        ; 0804CE96
mov   r0,0x1                        ; 0804CE98
neg   r0,r0                         ; 0804CE9A
add   r9,r0                         ; 0804CE9C
mov   r1,r9                         ; 0804CE9E
cmp   r1,0x0                        ; 0804CEA0
blt   @@Code0804CEA6                ; 0804CEA2
b     @@Code0804CD0E                ; 0804CEA4
@@Code0804CEA6:
add   sp,0x8                        ; 0804CEA6
pop   {r3-r5}                       ; 0804CEA8
mov   r8,r3                         ; 0804CEAA
mov   r9,r4                         ; 0804CEAC
mov   r10,r5                        ; 0804CEAE
pop   {r4-r7}                       ; 0804CEB0
pop   {r0}                          ; 0804CEB2
bx    r0                            ; 0804CEB4
.pool                               ; 0804CEB6

Sub0804CEC8:
push  {r4-r7,lr}                    ; 0804CEC8
mov   r7,r10                        ; 0804CECA
mov   r6,r9                         ; 0804CECC
mov   r5,r8                         ; 0804CECE
push  {r5-r7}                       ; 0804CED0
add   sp,-0x10                      ; 0804CED2
mov   r4,r0                         ; 0804CED4
ldr   r0,=0x03002200                ; 0804CED6
mov   r8,r0                         ; 0804CED8
ldr   r0,=0x4806                    ; 0804CEDA
add   r0,r8                         ; 0804CEDC
ldrh  r0,[r0]                       ; 0804CEDE
lsl   r0,r0,0x1                     ; 0804CEE0
add   r1,r1,r0                      ; 0804CEE2
ldrh  r0,[r4,0x36]                  ; 0804CEE4
lsl   r0,r0,0x15                    ; 0804CEE6
ldrh  r2,[r4,0x2C]                  ; 0804CEE8
lsr   r0,r0,0x10                    ; 0804CEEA
eor   r0,r2                         ; 0804CEEC
lsl   r5,r0,0x8                     ; 0804CEEE
mov   r0,0xFF                       ; 0804CEF0
lsl   r0,r0,0x8                     ; 0804CEF2
and   r5,r0                         ; 0804CEF4
ldrh  r2,[r1]                       ; 0804CEF6
ldrb  r0,[r1]                       ; 0804CEF8
orr   r5,r0                         ; 0804CEFA
mov   r0,r4                         ; 0804CEFC
add   r0,0x97                       ; 0804CEFE
ldrb  r0,[r0]                       ; 0804CF00
lsl   r6,r0,0x8                     ; 0804CF02
lsr   r2,r2,0x8                     ; 0804CF04
mov   r0,0xF1                       ; 0804CF06
and   r0,r2                         ; 0804CF08
lsl   r0,r0,0x8                     ; 0804CF0A
eor   r5,r0                         ; 0804CF0C
mov   r3,0x2                        ; 0804CF0E
mov   r0,r3                         ; 0804CF10
and   r0,r2                         ; 0804CF12
mov   r1,r0                         ; 0804CF14
eor   r1,r3                         ; 0804CF16
lsl   r1,r1,0x1                     ; 0804CF18
eor   r6,r0                         ; 0804CF1A
mov   r2,0x20                       ; 0804CF1C
ldsh  r0,[r4,r2]                    ; 0804CF1E
add   r0,r0,r1                      ; 0804CF20
mov   r9,r0                         ; 0804CF22
mov   r2,0x22                       ; 0804CF24
ldsh  r0,[r4,r2]                    ; 0804CF26
add   r0,r0,r1                      ; 0804CF28
mov   r10,r0                        ; 0804CF2A
ldr   r7,=0x47D0                    ; 0804CF2C
add   r7,r8                         ; 0804CF2E
ldrh  r1,[r7]                       ; 0804CF30
lsl   r0,r1,0x10                    ; 0804CF32
mov   r12,r0                        ; 0804CF34
ldr   r0,=0x03FF                    ; 0804CF36
cmp   r1,r0                         ; 0804CF38
bls   @@Code0804CF58                ; 0804CF3A
ldr   r0,=0xFFFF                    ; 0804CF3C
strh  r0,[r4,0x34]                  ; 0804CF3E
b     @@Code0804CFB8                ; 0804CF40
.pool                               ; 0804CF42

@@Code0804CF58:
strh  r1,[r4,0x34]                  ; 0804CF58
mov   r3,0x0                        ; 0804CF5A
ldrh  r1,[r4,0x32]                  ; 0804CF5C
ldr   r0,=0x02FF                    ; 0804CF5E
cmp   r1,r0                         ; 0804CF60
bhi   @@Code0804CF80                ; 0804CF62
ldr   r1,=Data08171FC8              ; 0804CF64
ldrh  r2,[r4,0x32]                  ; 0804CF66
lsr   r0,r2,0x3                     ; 0804CF68
add   r0,r0,r1                      ; 0804CF6A
ldrb  r0,[r0]                       ; 0804CF6C
mov   r1,0x7                        ; 0804CF6E
and   r2,r1                         ; 0804CF70
lsl   r0,r2                         ; 0804CF72
mov   r2,0x80                       ; 0804CF74
neg   r2,r2                         ; 0804CF76
mov   r1,r2                         ; 0804CF78
and   r0,r1                         ; 0804CF7A
lsl   r0,r0,0x18                    ; 0804CF7C
lsr   r3,r0,0x18                    ; 0804CF7E
@@Code0804CF80:
ldr   r0,=0x03007240                ; 0804CF80  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804CF82
ldr   r1,=0x2A32                    ; 0804CF84
add   r0,r0,r1                      ; 0804CF86
ldrh  r0,[r0]                       ; 0804CF88
str   r0,[sp]                       ; 0804CF8A
mov   r2,r12                        ; 0804CF8C
lsr   r1,r2,0x12                    ; 0804CF8E
lsl   r0,r1,0x3                     ; 0804CF90
mov   r2,0xE0                       ; 0804CF92
lsl   r2,r2,0x6                     ; 0804CF94
add   r2,r8                         ; 0804CF96
add   r0,r0,r2                      ; 0804CF98
str   r0,[sp,0x4]                   ; 0804CF9A
lsl   r1,r1,0x2                     ; 0804CF9C
ldr   r0,=0x0202C8B0                ; 0804CF9E
add   r1,r1,r0                      ; 0804CFA0
str   r1,[sp,0x8]                   ; 0804CFA2
str   r3,[sp,0xC]                   ; 0804CFA4
mov   r0,r6                         ; 0804CFA6
mov   r1,r9                         ; 0804CFA8
mov   r2,r5                         ; 0804CFAA
mov   r3,r10                        ; 0804CFAC
bl    Sub08000814                   ; 0804CFAE
ldrh  r0,[r7]                       ; 0804CFB2
add   r0,0x4                        ; 0804CFB4
strh  r0,[r7]                       ; 0804CFB6
@@Code0804CFB8:
add   sp,0x10                       ; 0804CFB8
pop   {r3-r5}                       ; 0804CFBA
mov   r8,r3                         ; 0804CFBC
mov   r9,r4                         ; 0804CFBE
mov   r10,r5                        ; 0804CFC0
pop   {r4-r7}                       ; 0804CFC2
pop   {r0}                          ; 0804CFC4
bx    r0                            ; 0804CFC6
.pool                               ; 0804CFC8

Sub0804CFDC:
push  {lr}                          ; 0804CFDC
ldr   r2,=DataPtrs0818F72C          ; 0804CFDE
ldrh  r1,[r0,0x32]                  ; 0804CFE0
lsl   r1,r1,0x2                     ; 0804CFE2
add   r1,r1,r2                      ; 0804CFE4
ldr   r1,[r1]                       ; 0804CFE6
bl    Sub0804CEC8                   ; 0804CFE8
pop   {r0}                          ; 0804CFEC
bx    r0                            ; 0804CFEE
.pool                               ; 0804CFF0

Sub0804CFF4:
push  {r4-r7,lr}                    ; 0804CFF4
mov   r7,r10                        ; 0804CFF6
mov   r6,r9                         ; 0804CFF8
mov   r5,r8                         ; 0804CFFA
push  {r5-r7}                       ; 0804CFFC
add   sp,-0x24                      ; 0804CFFE
mov   r3,r0                         ; 0804D000
str   r1,[sp,0x18]                  ; 0804D002
ldrh  r0,[r3,0x36]                  ; 0804D004
lsl   r0,r0,0x5                     ; 0804D006
ldrh  r1,[r3,0x2C]                  ; 0804D008
eor   r0,r1                         ; 0804D00A
lsl   r0,r0,0x10                    ; 0804D00C
lsr   r0,r0,0x10                    ; 0804D00E
lsr   r1,r0,0x8                     ; 0804D010
lsl   r0,r0,0x8                     ; 0804D012
orr   r1,r0                         ; 0804D014
lsl   r1,r1,0x10                    ; 0804D016
lsr   r1,r1,0x10                    ; 0804D018
str   r1,[sp,0x1C]                  ; 0804D01A
ldr   r5,=0x03002200                ; 0804D01C
ldr   r0,=0x47D0                    ; 0804D01E
add   r0,r0,r5                      ; 0804D020
mov   r8,r0                         ; 0804D022
ldrh  r2,[r0]                       ; 0804D024
strh  r2,[r3,0x34]                  ; 0804D026
lsl   r1,r2,0x10                    ; 0804D028
ldr   r0,=0x03FF0000                ; 0804D02A
cmp   r1,r0                         ; 0804D02C
bhi   @@Code0804D03C                ; 0804D02E
lsr   r1,r1,0x12                    ; 0804D030
ldr   r0,=0x03006A0C                ; 0804D032
ldrh  r4,[r0]                       ; 0804D034
add   r0,r1,r4                      ; 0804D036
cmp   r0,0xFF                       ; 0804D038
ble   @@Code0804D05C                ; 0804D03A
@@Code0804D03C:
ldr   r1,=0xFFFF                    ; 0804D03C
mov   r0,r1                         ; 0804D03E
orr   r0,r2                         ; 0804D040
strh  r0,[r3,0x34]                  ; 0804D042
b     @@Code0804D0FC                ; 0804D044
.pool                               ; 0804D046

@@Code0804D05C:
mov   r0,r3                         ; 0804D05C
add   r0,0x60                       ; 0804D05E
ldrh  r0,[r0]                       ; 0804D060
sub   r0,0x1                        ; 0804D062
lsl   r0,r0,0x10                    ; 0804D064
ldr   r2,=0xFFFFF1FF                ; 0804D066
str   r2,[sp,0x20]                  ; 0804D068
cmp   r0,0x0                        ; 0804D06A
bge   @@Code0804D074                ; 0804D06C
mov   r0,0x1                        ; 0804D06E
neg   r0,r0                         ; 0804D070
str   r0,[sp,0x20]                  ; 0804D072
@@Code0804D074:
mov   r0,0x20                       ; 0804D074
ldsh  r2,[r3,r0]                    ; 0804D076
mov   r12,r2                        ; 0804D078
mov   r0,0x22                       ; 0804D07A
ldsh  r2,[r3,r0]                    ; 0804D07C
mov   r9,r2                         ; 0804D07E
ldr   r0,=0x03007240                ; 0804D080  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804D082
ldr   r2,=0x2A32                    ; 0804D084
add   r0,r0,r2                      ; 0804D086
ldrh  r7,[r0]                       ; 0804D088
lsl   r1,r1,0x3                     ; 0804D08A
mov   r2,0xE0                       ; 0804D08C
lsl   r2,r2,0x6                     ; 0804D08E
add   r0,r5,r2                      ; 0804D090
add   r6,r1,r0                      ; 0804D092
lsl   r0,r4,0x3                     ; 0804D094
add   r0,r0,r6                      ; 0804D096
mov   r10,r0                        ; 0804D098
ldr   r0,=0x47FA                    ; 0804D09A
add   r4,r5,r0                      ; 0804D09C
mov   r0,0x0                        ; 0804D09E
strh  r0,[r4]                       ; 0804D0A0
ldrh  r1,[r3,0x32]                  ; 0804D0A2
ldr   r0,=0x02FF                    ; 0804D0A4
cmp   r1,r0                         ; 0804D0A6
bhi   @@Code0804D0C0                ; 0804D0A8
ldr   r1,=Data08171FC8              ; 0804D0AA
ldrh  r2,[r3,0x32]                  ; 0804D0AC
lsr   r0,r2,0x3                     ; 0804D0AE
add   r0,r0,r1                      ; 0804D0B0
ldrb  r0,[r0]                       ; 0804D0B2
mov   r1,0x7                        ; 0804D0B4
and   r2,r1                         ; 0804D0B6
lsl   r0,r2                         ; 0804D0B8
mov   r1,0x80                       ; 0804D0BA
and   r0,r1                         ; 0804D0BC
strh  r0,[r4]                       ; 0804D0BE
@@Code0804D0C0:
str   r7,[sp]                       ; 0804D0C0
mov   r1,r12                        ; 0804D0C2
str   r1,[sp,0x4]                   ; 0804D0C4
mov   r2,r9                         ; 0804D0C6
str   r2,[sp,0x8]                   ; 0804D0C8
ldr   r0,[sp,0x20]                  ; 0804D0CA
str   r0,[sp,0xC]                   ; 0804D0CC
mov   r1,r8                         ; 0804D0CE
ldrh  r0,[r1]                       ; 0804D0D0
lsr   r0,r0,0x2                     ; 0804D0D2
lsl   r0,r0,0x2                     ; 0804D0D4
ldr   r2,=0x0202C8B0                ; 0804D0D6
add   r0,r0,r2                      ; 0804D0D8
str   r0,[sp,0x10]                  ; 0804D0DA
ldrh  r0,[r4]                       ; 0804D0DC
str   r0,[sp,0x14]                  ; 0804D0DE
mov   r0,r6                         ; 0804D0E0
ldr   r1,[sp,0x18]                  ; 0804D0E2
mov   r2,r10                        ; 0804D0E4
ldr   r3,[sp,0x1C]                  ; 0804D0E6
bl    Sub080006F8                   ; 0804D0E8
ldr   r1,=0x03006A0C                ; 0804D0EC
ldrh  r0,[r1]                       ; 0804D0EE
lsl   r0,r0,0x2                     ; 0804D0F0
mov   r2,r8                         ; 0804D0F2
ldrh  r2,[r2]                       ; 0804D0F4
add   r0,r0,r2                      ; 0804D0F6
mov   r1,r8                         ; 0804D0F8
strh  r0,[r1]                       ; 0804D0FA
@@Code0804D0FC:
add   sp,0x24                       ; 0804D0FC
pop   {r3-r5}                       ; 0804D0FE
mov   r8,r3                         ; 0804D100
mov   r9,r4                         ; 0804D102
mov   r10,r5                        ; 0804D104
pop   {r4-r7}                       ; 0804D106
pop   {r0}                          ; 0804D108
bx    r0                            ; 0804D10A
.pool                               ; 0804D10C

Sub0804D12C:
push  {r4-r7,lr}                    ; 0804D12C
mov   r5,r0                         ; 0804D12E
mov   r4,r2                         ; 0804D130
lsl   r1,r1,0x10                    ; 0804D132
ldr   r6,=0x03002200                ; 0804D134
lsr   r3,r1,0x13                    ; 0804D136
mov   r2,r3                         ; 0804D138
ldr   r0,=0x480C                    ; 0804D13A
add   r7,r6,r0                      ; 0804D13C
strh  r3,[r7]                       ; 0804D13E
mov   r0,r5                         ; 0804D140
add   r0,0xAB                       ; 0804D142
ldrb  r0,[r0]                       ; 0804D144
cmp   r0,0x0                        ; 0804D146
beq   @@Code0804D180                ; 0804D148
ldr   r1,=0x47D0                    ; 0804D14A
add   r2,r6,r1                      ; 0804D14C
ldrh  r0,[r2]                       ; 0804D14E
strh  r0,[r5,0x34]                  ; 0804D150
ldr   r0,=0x03007240                ; 0804D152  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0804D154
ldr   r0,=0x29CE                    ; 0804D156
add   r1,r1,r0                      ; 0804D158
ldrh  r0,[r1]                       ; 0804D15A
add   r0,r0,r3                      ; 0804D15C
strh  r0,[r1]                       ; 0804D15E
ldrh  r0,[r7]                       ; 0804D160
lsl   r0,r0,0x2                     ; 0804D162
ldrh  r1,[r2]                       ; 0804D164
add   r0,r0,r1                      ; 0804D166
strh  r0,[r2]                       ; 0804D168
b     @@Code0804D19A                ; 0804D16A
.pool                               ; 0804D16C

@@Code0804D180:
ldr   r1,=0x4806                    ; 0804D180
add   r0,r6,r1                      ; 0804D182
ldrh  r1,[r0]                       ; 0804D184
lsl   r0,r1,0x2                     ; 0804D186
add   r0,r0,r1                      ; 0804D188
mul   r0,r2                         ; 0804D18A
lsl   r0,r0,0x10                    ; 0804D18C
lsr   r2,r0,0x10                    ; 0804D18E
add   r4,r4,r2                      ; 0804D190
mov   r0,r5                         ; 0804D192
mov   r1,r4                         ; 0804D194
bl    Sub0804CFF4                   ; 0804D196
@@Code0804D19A:
pop   {r4-r7}                       ; 0804D19A
pop   {r0}                          ; 0804D19C
bx    r0                            ; 0804D19E
.pool                               ; 0804D1A0

Sub0804D1A4:
push  {lr}                          ; 0804D1A4
ldr   r2,=Data08190068              ; 0804D1A6
ldrh  r1,[r0,0x32]                  ; 0804D1A8
lsl   r1,r1,0x2                     ; 0804D1AA
add   r1,r1,r2                      ; 0804D1AC
ldr   r2,[r1]                       ; 0804D1AE
ldrh  r1,[r0,0x2A]                  ; 0804D1B0
lsr   r1,r1,0x8                     ; 0804D1B2
mov   r3,0xF8                       ; 0804D1B4
and   r1,r3                         ; 0804D1B6
bl    Sub0804D12C                   ; 0804D1B8
pop   {r0}                          ; 0804D1BC
bx    r0                            ; 0804D1BE
.pool                               ; 0804D1C0

Sub0804D1C4:
push  {r4-r5,lr}                    ; 0804D1C4
mov   r3,r0                         ; 0804D1C6
ldrh  r0,[r3,0x2A]                  ; 0804D1C8
lsr   r5,r0,0xB                     ; 0804D1CA
ldr   r2,=0x03002200                ; 0804D1CC
ldr   r1,=0x47D0                    ; 0804D1CE
add   r0,r2,r1                      ; 0804D1D0
ldrh  r1,[r0]                       ; 0804D1D2
lsl   r4,r1,0x10                    ; 0804D1D4
ldr   r0,=0x03FF                    ; 0804D1D6
cmp   r1,r0                         ; 0804D1D8
bhi   @@Code0804D1E4                ; 0804D1DA
lsr   r0,r4,0x12                    ; 0804D1DC
add   r0,r0,r5                      ; 0804D1DE
cmp   r0,0xFF                       ; 0804D1E0
ble   @@Code0804D1FC                ; 0804D1E2
@@Code0804D1E4:
ldr   r0,=0xFFFF                    ; 0804D1E4
strh  r0,[r3,0x34]                  ; 0804D1E6
b     @@Code0804D230                ; 0804D1E8
.pool                               ; 0804D1EA

@@Code0804D1FC:
mov   r0,r3                         ; 0804D1FC
add   r0,0x92                       ; 0804D1FE
ldrh  r0,[r0]                       ; 0804D200
cmp   r0,0x0                        ; 0804D202
beq   @@Code0804D21C                ; 0804D204
ldrh  r1,[r3,0x32]                  ; 0804D206
ldr   r0,=0x0222                    ; 0804D208
cmp   r1,r0                         ; 0804D20A
beq   @@Code0804D21C                ; 0804D20C
mov   r0,0x80                       ; 0804D20E
lsl   r0,r0,0x8                     ; 0804D210
strh  r0,[r3,0x34]                  ; 0804D212
b     @@Code0804D230                ; 0804D214
.pool                               ; 0804D216

@@Code0804D21C:
ldrh  r0,[r3,0x2A]                  ; 0804D21C
lsr   r0,r0,0x9                     ; 0804D21E
mov   r1,0x7C                       ; 0804D220
and   r0,r1                         ; 0804D222
ldr   r1,=0x47D0                    ; 0804D224
add   r2,r2,r1                      ; 0804D226
ldrh  r1,[r2]                       ; 0804D228
strh  r1,[r3,0x34]                  ; 0804D22A
add   r0,r0,r1                      ; 0804D22C
strh  r0,[r2]                       ; 0804D22E
@@Code0804D230:
pop   {r4-r5}                       ; 0804D230
pop   {r0}                          ; 0804D232
bx    r0                            ; 0804D234
.pool                               ; 0804D236

Sub0804D23C:
push  {r4,lr}                       ; 0804D23C
ldr   r2,=Data08190068              ; 0804D23E
ldrh  r1,[r0,0x32]                  ; 0804D240
lsl   r1,r1,0x2                     ; 0804D242
add   r1,r1,r2                      ; 0804D244
ldr   r2,[r1]                       ; 0804D246
ldrh  r1,[r0,0x2A]                  ; 0804D248
lsr   r1,r1,0x8                     ; 0804D24A
mov   r3,0xF8                       ; 0804D24C
and   r1,r3                         ; 0804D24E
mov   r4,0x80                       ; 0804D250
lsl   r4,r4,0x1                     ; 0804D252
mov   r3,r4                         ; 0804D254
orr   r1,r3                         ; 0804D256
bl    Sub0804D12C                   ; 0804D258
pop   {r4}                          ; 0804D25C
pop   {r0}                          ; 0804D25E
bx    r0                            ; 0804D260
.pool                               ; 0804D262

Sub0804D268:
mov   r1,r0                         ; 0804D268
add   r1,0x9C                       ; 0804D26A
ldrb  r3,[r1]                       ; 0804D26C
lsr   r3,r3,0x1                     ; 0804D26E
lsl   r3,r3,0x1                     ; 0804D270
ldr   r1,=0x030069D4                ; 0804D272
add   r2,r3,r1                      ; 0804D274
add   r1,0x8                        ; 0804D276
add   r3,r3,r1                      ; 0804D278
ldr   r1,[r0]                       ; 0804D27A
asr   r1,r1,0x8                     ; 0804D27C
ldrh  r2,[r2]                       ; 0804D27E
sub   r1,r1,r2                      ; 0804D280
strh  r1,[r0,0x20]                  ; 0804D282
ldr   r1,[r0,0x4]                   ; 0804D284
asr   r1,r1,0x8                     ; 0804D286
ldrh  r2,[r3]                       ; 0804D288
sub   r1,r1,r2                      ; 0804D28A
strh  r1,[r0,0x22]                  ; 0804D28C
bx    lr                            ; 0804D28E
.pool                               ; 0804D290

Sub0804D294:
push  {r4-r6,lr}                    ; 0804D294
mov   r12,r0                        ; 0804D296
add   r0,0x9C                       ; 0804D298
ldrb  r0,[r0]                       ; 0804D29A
lsr   r1,r0,0x1                     ; 0804D29C
mov   r2,r12                        ; 0804D29E
ldr   r0,[r2]                       ; 0804D2A0
asr   r0,r0,0x8                     ; 0804D2A2
lsl   r3,r1,0x1                     ; 0804D2A4
ldr   r2,=0x030069D4                ; 0804D2A6
add   r1,r3,r2                      ; 0804D2A8
ldrh  r1,[r1]                       ; 0804D2AA
sub   r0,r0,r1                      ; 0804D2AC
mov   r4,0x0                        ; 0804D2AE
mov   r6,r12                        ; 0804D2B0
strh  r0,[r6,0x20]                  ; 0804D2B2
lsl   r0,r0,0x10                    ; 0804D2B4
lsr   r5,r0,0x10                    ; 0804D2B6
ldr   r0,[r6,0x4]                   ; 0804D2B8
asr   r0,r0,0x8                     ; 0804D2BA
add   r2,0x8                        ; 0804D2BC
add   r3,r3,r2                      ; 0804D2BE
ldrh  r1,[r3]                       ; 0804D2C0
sub   r0,r0,r1                      ; 0804D2C2
strh  r0,[r6,0x22]                  ; 0804D2C4
lsl   r0,r0,0x10                    ; 0804D2C6
lsr   r6,r0,0x10                    ; 0804D2C8
mov   r2,r12                        ; 0804D2CA
add   r2,0x92                       ; 0804D2CC
strh  r4,[r2]                       ; 0804D2CE
mov   r1,r12                        ; 0804D2D0
ldrh  r0,[r1,0x2A]                  ; 0804D2D2
mov   r1,0xC                        ; 0804D2D4
and   r1,r0                         ; 0804D2D6
cmp   r1,0x0                        ; 0804D2D8
bne   @@Code0804D304                ; 0804D2DA
ldr   r0,=Data08172058              ; 0804D2DC
ldrh  r1,[r0]                       ; 0804D2DE
add   r0,r5,r1                      ; 0804D2E0
lsl   r0,r0,0x10                    ; 0804D2E2
lsr   r3,r0,0x10                    ; 0804D2E4
lsl   r0,r1,0x11                    ; 0804D2E6
mov   r6,0xF0                       ; 0804D2E8
lsl   r6,r6,0x10                    ; 0804D2EA
add   r0,r0,r6                      ; 0804D2EC
lsr   r1,r0,0x10                    ; 0804D2EE
cmp   r1,r3                         ; 0804D2F0
bhs   @@Code0804D390                ; 0804D2F2
mov   r0,0x1                        ; 0804D2F4
strh  r0,[r2]                       ; 0804D2F6
b     @@Code0804D390                ; 0804D2F8
.pool                               ; 0804D2FA

@@Code0804D304:
sub   r0,r1,0x4                     ; 0804D304
lsl   r0,r0,0xF                     ; 0804D306
lsr   r2,r0,0x10                    ; 0804D308
ldr   r4,=Data08172058              ; 0804D30A
lsl   r0,r2,0x1                     ; 0804D30C
add   r0,r0,r4                      ; 0804D30E
ldrh  r1,[r0]                       ; 0804D310
add   r0,r5,r1                      ; 0804D312
lsl   r0,r0,0x10                    ; 0804D314
lsr   r3,r0,0x10                    ; 0804D316
lsl   r0,r1,0x11                    ; 0804D318
mov   r1,0xF0                       ; 0804D31A
lsl   r1,r1,0x10                    ; 0804D31C
add   r0,r0,r1                      ; 0804D31E
lsr   r1,r0,0x10                    ; 0804D320
mov   r5,0x0                        ; 0804D322
cmp   r1,r3                         ; 0804D324
blo   @@Code0804D346                ; 0804D326
mov   r5,0x1                        ; 0804D328
add   r0,r2,0x1                     ; 0804D32A
lsl   r0,r0,0x1                     ; 0804D32C
add   r0,r0,r4                      ; 0804D32E
ldrh  r1,[r0]                       ; 0804D330
add   r0,r6,r1                      ; 0804D332
lsl   r0,r0,0x10                    ; 0804D334
lsr   r3,r0,0x10                    ; 0804D336
lsl   r0,r1,0x11                    ; 0804D338
mov   r2,0xC8                       ; 0804D33A
lsl   r2,r2,0x10                    ; 0804D33C
add   r0,r0,r2                      ; 0804D33E
lsr   r1,r0,0x10                    ; 0804D340
cmp   r1,r3                         ; 0804D342
bhs   @@Code0804D390                ; 0804D344
@@Code0804D346:
mov   r3,r12                        ; 0804D346
ldrh  r1,[r3,0x32]                  ; 0804D348
mov   r0,r1                         ; 0804D34A
sub   r0,0x22                       ; 0804D34C
lsl   r0,r0,0x10                    ; 0804D34E
lsr   r0,r0,0x10                    ; 0804D350
mov   r3,r1                         ; 0804D352
cmp   r0,0x9                        ; 0804D354
bhi   @@Code0804D362                ; 0804D356
mov   r0,r12                        ; 0804D358
add   r0,0x72                       ; 0804D35A
ldrh  r0,[r0]                       ; 0804D35C
cmp   r0,0x0                        ; 0804D35E
bne   @@Code0804D390                ; 0804D360
@@Code0804D362:
ldr   r6,=0xFFFFFE46                ; 0804D362
add   r0,r3,r6                      ; 0804D364
lsl   r0,r0,0x10                    ; 0804D366
lsr   r0,r0,0x10                    ; 0804D368
ldr   r4,=0x0300702C                ; 0804D36A  Sprite RAM structs (03002460)
cmp   r0,0x9                        ; 0804D36C
bhi   @@Code0804D3C0                ; 0804D36E
ldr   r2,[r4]                       ; 0804D370
ldr   r1,=0x15E8                    ; 0804D372
add   r0,r2,r1                      ; 0804D374
ldrb  r1,[r0]                       ; 0804D376
mov   r0,0x30                       ; 0804D378
and   r0,r1                         ; 0804D37A
cmp   r0,0x0                        ; 0804D37C
beq   @@Code0804D3A8                ; 0804D37E
ldr   r6,=0x15F0                    ; 0804D380
add   r0,r2,r6                      ; 0804D382
sub   r6,0x82                       ; 0804D384
add   r1,r2,r6                      ; 0804D386
ldrh  r0,[r0]                       ; 0804D388
ldrb  r1,[r1]                       ; 0804D38A
cmp   r0,r1                         ; 0804D38C
bne   @@Code0804D3C0                ; 0804D38E
@@Code0804D390:
mov   r0,0x0                        ; 0804D390
b     @@Code0804D506                ; 0804D392
.pool                               ; 0804D394

@@Code0804D3A8:
ldr   r1,=0x15E9                    ; 0804D3A8
add   r0,r2,r1                      ; 0804D3AA
ldrb  r0,[r0]                       ; 0804D3AC
lsl   r0,r0,0x18                    ; 0804D3AE
asr   r0,r0,0x18                    ; 0804D3B0
cmp   r0,0x0                        ; 0804D3B2
beq   @@Code0804D3C0                ; 0804D3B4
mov   r0,r12                        ; 0804D3B6
add   r0,0x6A                       ; 0804D3B8
ldrh  r0,[r0]                       ; 0804D3BA
cmp   r0,0x0                        ; 0804D3BC
bne   @@Code0804D390                ; 0804D3BE
@@Code0804D3C0:
ldr   r2,=0xFFFFFE3E                ; 0804D3C0
add   r0,r3,r2                      ; 0804D3C2
lsl   r0,r0,0x10                    ; 0804D3C4
lsr   r0,r0,0x10                    ; 0804D3C6
ldr   r6,=0x03006D80                ; 0804D3C8
cmp   r0,0x1                        ; 0804D3CA
bhi   @@Code0804D426                ; 0804D3CC
cmp   r5,0x0                        ; 0804D3CE
beq   @@Code0804D426                ; 0804D3D0
ldr   r0,=0x03007240                ; 0804D3D2  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804D3D4
ldr   r3,=0x2AAC                    ; 0804D3D6
add   r0,r0,r3                      ; 0804D3D8
ldrh  r0,[r0]                       ; 0804D3DA
cmp   r0,0x69                       ; 0804D3DC
bne   @@Code0804D426                ; 0804D3DE
mov   r1,r12                        ; 0804D3E0
ldr   r0,[r1,0x4]                   ; 0804D3E2
asr   r0,r0,0x8                     ; 0804D3E4
ldr   r1,=0x05FF                    ; 0804D3E6
cmp   r0,r1                         ; 0804D3E8
bgt   @@Code0804D426                ; 0804D3EA
ldr   r0,[r4]                       ; 0804D3EC
ldr   r2,=0x15E8                    ; 0804D3EE
add   r3,r0,r2                      ; 0804D3F0
ldrb  r2,[r3]                       ; 0804D3F2
lsl   r0,r2,0x1C                    ; 0804D3F4
lsr   r0,r0,0x1C                    ; 0804D3F6
mov   r1,0x8                        ; 0804D3F8
and   r1,r0                         ; 0804D3FA
cmp   r1,0x0                        ; 0804D3FC
beq   @@Code0804D426                ; 0804D3FE
mov   r0,0x10                       ; 0804D400
neg   r0,r0                         ; 0804D402
and   r0,r2                         ; 0804D404
strb  r0,[r3]                       ; 0804D406
ldr   r1,[r4]                       ; 0804D408
ldr   r3,=0x15E8                    ; 0804D40A
add   r1,r1,r3                      ; 0804D40C
ldrb  r2,[r1]                       ; 0804D40E
mov   r0,0x31                       ; 0804D410
neg   r0,r0                         ; 0804D412
and   r0,r2                         ; 0804D414
strb  r0,[r1]                       ; 0804D416
ldr   r0,[r4]                       ; 0804D418
ldr   r1,=0x15F2                    ; 0804D41A
add   r0,r0,r1                      ; 0804D41C
ldrh  r1,[r0]                       ; 0804D41E
ldr   r2,=0x020E                    ; 0804D420
add   r0,r6,r2                      ; 0804D422
strh  r1,[r0]                       ; 0804D424
@@Code0804D426:
mov   r0,0x0                        ; 0804D426
mov   r3,r12                        ; 0804D428
strh  r0,[r3,0x24]                  ; 0804D42A
mov   r1,r12                        ; 0804D42C
add   r1,0x94                       ; 0804D42E
mov   r0,0xFF                       ; 0804D430
strb  r0,[r1]                       ; 0804D432
add   r1,0x19                       ; 0804D434
ldrb  r0,[r1]                       ; 0804D436
cmp   r0,0x0                        ; 0804D438
beq   @@Code0804D480                ; 0804D43A
ldrh  r0,[r3,0x32]                  ; 0804D43C
cmp   r0,0xCB                       ; 0804D43E
bne   @@Code0804D47C                ; 0804D440
ldr   r0,[r4]                       ; 0804D442
ldrb  r1,[r1]                       ; 0804D444
add   r0,r0,r1                      ; 0804D446
ldr   r1,=0x1893                    ; 0804D448
add   r0,r0,r1                      ; 0804D44A
ldrb  r1,[r0]                       ; 0804D44C
sub   r1,0x1                        ; 0804D44E
strb  r1,[r0]                       ; 0804D450
b     @@Code0804D480                ; 0804D452
.pool                               ; 0804D454

@@Code0804D47C:
mov   r0,0x0                        ; 0804D47C
strb  r0,[r1]                       ; 0804D47E
@@Code0804D480:
mov   r2,r12                        ; 0804D480
ldrh  r1,[r2,0x3C]                  ; 0804D482
mov   r3,0x3C                       ; 0804D484
ldsh  r0,[r2,r3]                    ; 0804D486
cmp   r0,0x0                        ; 0804D488
blt   @@Code0804D4D8                ; 0804D48A
mov   r0,0x10                       ; 0804D48C
and   r0,r1                         ; 0804D48E
cmp   r0,0x0                        ; 0804D490
beq   @@Code0804D4B8                ; 0804D492
ldr   r2,[r4]                       ; 0804D494
mov   r0,r12                        ; 0804D496
ldrh  r1,[r0,0x3C]                  ; 0804D498
lsl   r1,r1,0x1                     ; 0804D49A
ldr   r3,=0x114C                    ; 0804D49C
add   r0,r2,r3                      ; 0804D49E
add   r0,r0,r1                      ; 0804D4A0
ldrh  r0,[r0]                       ; 0804D4A2
mvn   r0,r0                         ; 0804D4A4
lsl   r0,r0,0x10                    ; 0804D4A6
lsr   r1,r0,0x10                    ; 0804D4A8
ldr   r0,=0x114A                    ; 0804D4AA
b     @@Code0804D4D0                ; 0804D4AC
.pool                               ; 0804D4AE

@@Code0804D4B8:
ldr   r2,[r4]                       ; 0804D4B8
mov   r3,r12                        ; 0804D4BA
ldrh  r1,[r3,0x3C]                  ; 0804D4BC
lsl   r1,r1,0x1                     ; 0804D4BE
ldr   r3,=0x114C                    ; 0804D4C0
add   r0,r2,r3                      ; 0804D4C2
add   r0,r0,r1                      ; 0804D4C4
ldrh  r0,[r0]                       ; 0804D4C6
mvn   r0,r0                         ; 0804D4C8
lsl   r0,r0,0x10                    ; 0804D4CA
lsr   r1,r0,0x10                    ; 0804D4CC
ldr   r0,=0x1148                    ; 0804D4CE
@@Code0804D4D0:
add   r2,r2,r0                      ; 0804D4D0
ldrh  r0,[r2]                       ; 0804D4D2
and   r1,r0                         ; 0804D4D4
strh  r1,[r2]                       ; 0804D4D6
@@Code0804D4D8:
mov   r0,r12                        ; 0804D4D8
add   r0,0x9B                       ; 0804D4DA
ldrb  r0,[r0]                       ; 0804D4DC
lsl   r0,r0,0x1                     ; 0804D4DE
ldr   r1,=0x0201BA00                ; 0804D4E0
add   r0,r0,r1                      ; 0804D4E2
mov   r1,0x0                        ; 0804D4E4
strh  r1,[r0]                       ; 0804D4E6
mov   r1,0xD8                       ; 0804D4E8
lsl   r1,r1,0x1                     ; 0804D4EA
add   r2,r6,r1                      ; 0804D4EC
ldr   r0,[r4]                       ; 0804D4EE
ldr   r3,=0x156E                    ; 0804D4F0
add   r0,r0,r3                      ; 0804D4F2
ldrb  r1,[r0]                       ; 0804D4F4
ldrh  r0,[r2]                       ; 0804D4F6
sub   r0,r0,r1                      ; 0804D4F8
lsl   r0,r0,0x10                    ; 0804D4FA
lsr   r1,r0,0x10                    ; 0804D4FC
cmp   r1,0x0                        ; 0804D4FE
bne   @@Code0804D504                ; 0804D500
strh  r1,[r2]                       ; 0804D502
@@Code0804D504:
mov   r0,0x1                        ; 0804D504
@@Code0804D506:
pop   {r4-r6}                       ; 0804D506
pop   {r1}                          ; 0804D508
bx    r1                            ; 0804D50A
.pool                               ; 0804D50C

Sub0804D51C:
push  {r4-r6,lr}                    ; 0804D51C
mov   r3,r0                         ; 0804D51E
add   r0,0x94                       ; 0804D520
ldrb  r0,[r0]                       ; 0804D522
cmp   r0,0xFF                       ; 0804D524
beq   @@Code0804D5AA                ; 0804D526
ldr   r5,=0x03002200                ; 0804D528
ldrh  r0,[r3,0x38]                  ; 0804D52A
ldr   r1,=0x4806                    ; 0804D52C
add   r4,r5,r1                      ; 0804D52E
mov   r2,0x0                        ; 0804D530
strh  r0,[r4]                       ; 0804D532
lsr   r1,r0,0x8                     ; 0804D534
cmp   r1,0x0                        ; 0804D536
beq   @@Code0804D584                ; 0804D538
ldr   r0,=0x03007240                ; 0804D53A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804D53C
ldr   r6,=0x2A32                    ; 0804D53E
add   r0,r0,r6                      ; 0804D540
strh  r2,[r0]                       ; 0804D542
strh  r2,[r4]                       ; 0804D544
cmp   r1,0x1                        ; 0804D546
beq   @@Code0804D568                ; 0804D548
ldr   r1,=Data0817D820              ; 0804D54A
mov   r0,r3                         ; 0804D54C
bl    Sub0804CEC8                   ; 0804D54E
b     @@Code0804D5AA                ; 0804D552
.pool                               ; 0804D554

@@Code0804D568:
ldr   r1,=0x480C                    ; 0804D568
add   r0,r5,r1                      ; 0804D56A
mov   r1,0x1                        ; 0804D56C
strh  r1,[r0]                       ; 0804D56E
ldr   r1,=Data0817D822              ; 0804D570
mov   r0,r3                         ; 0804D572
bl    Sub0804CFF4                   ; 0804D574
b     @@Code0804D5AA                ; 0804D578
.pool                               ; 0804D57A

@@Code0804D584:
ldr   r0,=0x03007240                ; 0804D584  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0804D586
mov   r0,r3                         ; 0804D588
add   r0,0x98                       ; 0804D58A
ldrb  r0,[r0]                       ; 0804D58C
lsl   r0,r0,0x3                     ; 0804D58E
ldr   r2,=0x2A32                    ; 0804D590
add   r1,r1,r2                      ; 0804D592
strh  r0,[r1]                       ; 0804D594
ldr   r2,=CodePtrs08172048          ; 0804D596
ldrh  r1,[r3,0x2A]                  ; 0804D598
mov   r0,0x3                        ; 0804D59A
and   r0,r1                         ; 0804D59C
lsl   r0,r0,0x2                     ; 0804D59E
add   r0,r0,r2                      ; 0804D5A0
ldr   r1,[r0]                       ; 0804D5A2
mov   r0,r3                         ; 0804D5A4
bl    Sub_bx_r1                     ; 0804D5A6
@@Code0804D5AA:
pop   {r4-r6}                       ; 0804D5AA
pop   {r0}                          ; 0804D5AC
bx    r0                            ; 0804D5AE
.pool                               ; 0804D5B0

Sub0804D5BC:
push  {r4-r7,lr}                    ; 0804D5BC
mov   r7,r10                        ; 0804D5BE
mov   r6,r9                         ; 0804D5C0
mov   r5,r8                         ; 0804D5C2
push  {r5-r7}                       ; 0804D5C4
add   sp,-0x4                       ; 0804D5C6
lsl   r0,r0,0x18                    ; 0804D5C8
lsr   r0,r0,0x18                    ; 0804D5CA
str   r0,[sp]                       ; 0804D5CC
ldr   r3,=0x03007240                ; 0804D5CE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r6,[r3]                       ; 0804D5D0
ldr   r5,=0x030069F4                ; 0804D5D2
ldr   r1,=0x03006D80                ; 0804D5D4
ldr   r2,=0x021A                    ; 0804D5D6
add   r0,r1,r2                      ; 0804D5D8
ldrh  r2,[r1,0x30]                  ; 0804D5DA
ldrh  r0,[r0]                       ; 0804D5DC
orr   r2,r0                         ; 0804D5DE
mov   r4,r2                         ; 0804D5E0
mov   r3,r1                         ; 0804D5E2
cmp   r4,0x0                        ; 0804D5E4
beq   @@Code0804D5EA                ; 0804D5E6
b     @@Code0804D742                ; 0804D5E8
@@Code0804D5EA:
ldr   r0,[r3]                       ; 0804D5EA
asr   r0,r0,0x8                     ; 0804D5EC
mov   r1,r5                         ; 0804D5EE
sub   r1,0x20                       ; 0804D5F0
ldrh  r1,[r1]                       ; 0804D5F2
sub   r0,r0,r1                      ; 0804D5F4
lsl   r0,r0,0x10                    ; 0804D5F6
lsr   r2,r0,0x10                    ; 0804D5F8
mov   r0,0x60                       ; 0804D5FA
strh  r0,[r5,0x4]                   ; 0804D5FC
mov   r0,r2                         ; 0804D5FE
sub   r0,0x8                        ; 0804D600
strh  r0,[r5,0xC]                   ; 0804D602
lsl   r0,r0,0x10                    ; 0804D604
cmp   r0,0x0                        ; 0804D606
blt   @@Code0804D684                ; 0804D608
mov   r7,0xC0                       ; 0804D60A
lsl   r7,r7,0x1                     ; 0804D60C
mov   r0,r7                         ; 0804D60E
strh  r0,[r5,0x4]                   ; 0804D610
mov   r0,r2                         ; 0804D612
sub   r0,0xD8                       ; 0804D614
strh  r0,[r5,0xC]                   ; 0804D616
sub   r0,0x1                        ; 0804D618
lsl   r0,r0,0x10                    ; 0804D61A
cmp   r0,0x0                        ; 0804D61C
bge   @@Code0804D622                ; 0804D61E
b     @@Code0804D742                ; 0804D620
@@Code0804D622:
ldrh  r0,[r5,0x6]                   ; 0804D622
cmp   r0,0x0                        ; 0804D624
beq   @@Code0804D684                ; 0804D626
mov   r0,r2                         ; 0804D628
sub   r0,0xE4                       ; 0804D62A
lsl   r0,r0,0x10                    ; 0804D62C
cmp   r0,0x0                        ; 0804D62E
bge   @@Code0804D634                ; 0804D630
b     @@Code0804D742                ; 0804D632
@@Code0804D634:
mov   r2,0xD5                       ; 0804D634
lsl   r2,r2,0x1                     ; 0804D636
add   r0,r3,r2                      ; 0804D638
mov   r7,0x0                        ; 0804D63A
ldsh  r0,[r0,r7]                    ; 0804D63C
cmp   r0,0x0                        ; 0804D63E
bge   @@Code0804D648                ; 0804D640
ldrh  r0,[r3,0x3E]                  ; 0804D642
cmp   r0,0x0                        ; 0804D644
beq   @@Code0804D67C                ; 0804D646
@@Code0804D648:
ldr   r2,=0x2AAC                    ; 0804D648
add   r0,r6,r2                      ; 0804D64A
ldrh  r0,[r0]                       ; 0804D64C
cmp   r0,0xB4                       ; 0804D64E
beq   @@Code0804D742                ; 0804D650
mov   r0,r1                         ; 0804D652
add   r0,0xE4                       ; 0804D654
lsl   r0,r0,0x10                    ; 0804D656
asr   r0,r0,0x8                     ; 0804D658
str   r0,[r3]                       ; 0804D65A
ldr   r0,[r3,0x8]                   ; 0804D65C
cmp   r0,0x0                        ; 0804D65E
ble   @@Code0804D742                ; 0804D660
str   r4,[r3,0x8]                   ; 0804D662
str   r4,[r3,0x28]                  ; 0804D664
b     @@Code0804D742                ; 0804D666
.pool                               ; 0804D668

@@Code0804D67C:
mov   r0,0xA                        ; 0804D67C
bl    Sub080E2A50                   ; 0804D67E
b     @@Code0804D742                ; 0804D682
@@Code0804D684:
mov   r7,0x86                       ; 0804D684
lsl   r7,r7,0x2                     ; 0804D686
add   r0,r3,r7                      ; 0804D688
ldrh  r0,[r0]                       ; 0804D68A
strh  r0,[r5,0xA]                   ; 0804D68C
ldrh  r1,[r5,0xC]                   ; 0804D68E
eor   r0,r1                         ; 0804D690
lsl   r0,r0,0x10                    ; 0804D692
cmp   r0,0x0                        ; 0804D694
bge   @@Code0804D6C2                ; 0804D696
mov   r0,r3                         ; 0804D698
add   r0,0x7A                       ; 0804D69A
ldrh  r1,[r0]                       ; 0804D69C
ldrh  r0,[r5,0x4]                   ; 0804D69E
and   r0,r1                         ; 0804D6A0
cmp   r0,0x0                        ; 0804D6A2
beq   @@Code0804D6C2                ; 0804D6A4
ldrh  r2,[r5,0xC]                   ; 0804D6A6
mov   r1,0xC                        ; 0804D6A8
ldsh  r0,[r5,r1]                    ; 0804D6AA
cmp   r0,0x0                        ; 0804D6AC
bge   @@Code0804D6B6                ; 0804D6AE
neg   r0,r2                         ; 0804D6B0
lsl   r0,r0,0x10                    ; 0804D6B2
lsr   r2,r0,0x10                    ; 0804D6B4
@@Code0804D6B6:
cmp   r2,0xE                        ; 0804D6B6
bls   @@Code0804D742                ; 0804D6B8
mov   r0,0x8                        ; 0804D6BA
bl    Sub080E2A50                   ; 0804D6BC
b     @@Code0804D742                ; 0804D6C0
@@Code0804D6C2:
ldr   r0,[r3,0x8]                   ; 0804D6C2
asr   r0,r0,0x8                     ; 0804D6C4
strh  r0,[r5,0xE]                   ; 0804D6C6
ldrh  r1,[r5,0xA]                   ; 0804D6C8
sub   r1,r0,r1                      ; 0804D6CA
eor   r0,r1                         ; 0804D6CC
lsl   r0,r0,0x10                    ; 0804D6CE
cmp   r0,0x0                        ; 0804D6D0
blt   @@Code0804D6E4                ; 0804D6D2
mov   r2,0xA                        ; 0804D6D4
ldsh  r0,[r5,r2]                    ; 0804D6D6
str   r0,[r3,0x8]                   ; 0804D6D8
str   r0,[r3,0x28]                  ; 0804D6DA
ldr   r7,=0x0216                    ; 0804D6DC
add   r0,r3,r7                      ; 0804D6DE
ldrh  r0,[r0]                       ; 0804D6E0
str   r0,[r3,0x18]                  ; 0804D6E2
@@Code0804D6E4:
ldrh  r1,[r5,0xC]                   ; 0804D6E4
add   r0,r1,0x4                     ; 0804D6E6
lsl   r0,r0,0x10                    ; 0804D6E8
lsr   r2,r0,0x10                    ; 0804D6EA
cmp   r0,0x0                        ; 0804D6EC
blt   @@Code0804D6FC                ; 0804D6EE
cmp   r2,0x8                        ; 0804D6F0
bls   @@Code0804D706                ; 0804D6F2
mov   r0,r2                         ; 0804D6F4
sub   r0,0x8                        ; 0804D6F6
lsl   r0,r0,0x10                    ; 0804D6F8
lsr   r2,r0,0x10                    ; 0804D6FA
@@Code0804D6FC:
neg   r0,r2                         ; 0804D6FC
lsl   r0,r0,0x10                    ; 0804D6FE
lsr   r2,r0,0x10                    ; 0804D700
add   r0,r2,r1                      ; 0804D702
strh  r0,[r5,0xC]                   ; 0804D704
@@Code0804D706:
ldr   r0,[r3]                       ; 0804D706
lsl   r0,r0,0x8                     ; 0804D708
lsr   r2,r0,0x10                    ; 0804D70A
ldrh  r0,[r5,0xC]                   ; 0804D70C
sub   r0,r2,r0                      ; 0804D70E
lsl   r0,r0,0x10                    ; 0804D710
lsr   r0,r0,0x8                     ; 0804D712
str   r0,[r3]                       ; 0804D714
ldr   r1,=0x0246                    ; 0804D716
add   r0,r3,r1                      ; 0804D718
ldrh  r0,[r0]                       ; 0804D71A
strh  r0,[r5,0xA]                   ; 0804D71C
lsl   r0,r0,0x10                    ; 0804D71E
cmp   r0,0x0                        ; 0804D720
blt   @@Code0804D742                ; 0804D722
ldrh  r1,[r5,0xA]                   ; 0804D724
mov   r0,0xB0                       ; 0804D726
mul   r0,r1                         ; 0804D728
mov   r2,0x95                       ; 0804D72A
lsl   r2,r2,0x2                     ; 0804D72C
add   r0,r0,r2                      ; 0804D72E
ldr   r3,=0x03007240                ; 0804D730  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r3]                       ; 0804D732
add   r4,r1,r0                      ; 0804D734
ldr   r0,[r4]                       ; 0804D736
asr   r0,r0,0x8                     ; 0804D738
ldrh  r1,[r5,0xC]                   ; 0804D73A
sub   r0,r0,r1                      ; 0804D73C
lsl   r0,r0,0x8                     ; 0804D73E
str   r0,[r4]                       ; 0804D740
@@Code0804D742:
bl    Sub0810C93C                   ; 0804D742
mov   r9,r0                         ; 0804D746
mov   r6,0x0                        ; 0804D748
cmp   r6,r9                         ; 0804D74A
blo   @@Code0804D750                ; 0804D74C
b     @@Code0804D866                ; 0804D74E
@@Code0804D750:
ldr   r7,=0x03007240                ; 0804D750  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r7                         ; 0804D752
mov   r7,0x1                        ; 0804D754
ldr   r0,=0x030069D0                ; 0804D756
mov   r10,r0                        ; 0804D758
@@Code0804D75A:
mov   r1,r8                         ; 0804D75A
ldr   r0,[r1]                       ; 0804D75C
ldr   r2,=0x2AB2                    ; 0804D75E
add   r0,r0,r2                      ; 0804D760
add   r0,r0,r6                      ; 0804D762
ldrb  r2,[r0]                       ; 0804D764
cmp   r2,0x80                       ; 0804D766
bne   @@Code0804D790                ; 0804D768
mov   r3,r10                        ; 0804D76A
ldrh  r0,[r3]                       ; 0804D76C
ldr   r1,=0x03006E14                ; 0804D76E
strh  r0,[r1]                       ; 0804D770
add   r0,0x44                       ; 0804D772
strh  r0,[r3]                       ; 0804D774
b     @@Code0804D85C                ; 0804D776
.pool                               ; 0804D778

@@Code0804D790:
ldr   r0,=0x0300702C                ; 0804D790  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804D792
ldr   r3,=0x156E                    ; 0804D794
add   r0,r0,r3                      ; 0804D796
strb  r2,[r0]                       ; 0804D798
cmp   r2,0x17                       ; 0804D79A
bls   @@Code0804D7EC                ; 0804D79C
mov   r0,0xB0                       ; 0804D79E
mov   r1,r2                         ; 0804D7A0
mul   r1,r0                         ; 0804D7A2
ldr   r0,=0x0A74                    ; 0804D7A4
add   r1,r1,r0                      ; 0804D7A6
mov   r2,r8                         ; 0804D7A8
ldr   r0,[r2]                       ; 0804D7AA
add   r4,r0,r1                      ; 0804D7AC
ldr   r3,=0x2AB2                    ; 0804D7AE
add   r0,r0,r3                      ; 0804D7B0
add   r0,r0,r7                      ; 0804D7B2
ldrb  r1,[r0]                       ; 0804D7B4
mov   r0,0x80                       ; 0804D7B6
and   r0,r1                         ; 0804D7B8
cmp   r0,0x0                        ; 0804D7BA
beq   @@Code0804D7D8                ; 0804D7BC
mov   r0,r4                         ; 0804D7BE
bl    Sub0804D294                   ; 0804D7C0
b     @@Code0804D85C                ; 0804D7C4
.pool                               ; 0804D7C6

@@Code0804D7D8:
mov   r0,r4                         ; 0804D7D8
bl    Sub0804D294                   ; 0804D7DA
lsl   r0,r0,0x18                    ; 0804D7DE
cmp   r0,0x0                        ; 0804D7E0
bne   @@Code0804D85C                ; 0804D7E2
mov   r0,r4                         ; 0804D7E4
bl    Sub0804D51C                   ; 0804D7E6
b     @@Code0804D85C                ; 0804D7EA
@@Code0804D7EC:
mov   r0,0xB0                       ; 0804D7EC
mul   r0,r2                         ; 0804D7EE
mov   r1,0x95                       ; 0804D7F0
lsl   r1,r1,0x2                     ; 0804D7F2
add   r0,r0,r1                      ; 0804D7F4
mov   r3,r8                         ; 0804D7F6
ldr   r1,[r3]                       ; 0804D7F8
add   r4,r1,r0                      ; 0804D7FA
ldrh  r5,[r4,0x2A]                  ; 0804D7FC
ldr   r0,[sp]                       ; 0804D7FE
cmp   r0,0x0                        ; 0804D800
beq   @@Code0804D81A                ; 0804D802
ldr   r3,=0x2B0F                    ; 0804D804
add   r0,r1,r3                      ; 0804D806
add   r0,r0,r2                      ; 0804D808
ldrb  r0,[r0]                       ; 0804D80A
cmp   r0,0x0                        ; 0804D80C
beq   @@Code0804D81A                ; 0804D80E
ldr   r0,=0xFFF3                    ; 0804D810
mov   r1,r0                         ; 0804D812
mov   r0,r5                         ; 0804D814
and   r0,r1                         ; 0804D816
strh  r0,[r4,0x2A]                  ; 0804D818
@@Code0804D81A:
ldr   r1,=0x03007240                ; 0804D81A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 0804D81C
ldr   r2,=0x2AB2                    ; 0804D81E
add   r0,r0,r2                      ; 0804D820
add   r0,r0,r7                      ; 0804D822
ldrb  r1,[r0]                       ; 0804D824
mov   r0,0x80                       ; 0804D826
and   r0,r1                         ; 0804D828
cmp   r0,0x0                        ; 0804D82A
beq   @@Code0804D848                ; 0804D82C
mov   r0,r4                         ; 0804D82E
bl    Sub0804D294                   ; 0804D830
b     @@Code0804D85A                ; 0804D834
.pool                               ; 0804D836

@@Code0804D848:
mov   r0,r4                         ; 0804D848
bl    Sub0804D294                   ; 0804D84A
lsl   r0,r0,0x18                    ; 0804D84E
cmp   r0,0x0                        ; 0804D850
bne   @@Code0804D85A                ; 0804D852
mov   r0,r4                         ; 0804D854
bl    Sub0804D51C                   ; 0804D856
@@Code0804D85A:
strh  r5,[r4,0x2A]                  ; 0804D85A
@@Code0804D85C:
add   r7,0x2                        ; 0804D85C
add   r6,0x2                        ; 0804D85E
cmp   r6,r9                         ; 0804D860
bhs   @@Code0804D866                ; 0804D862
b     @@Code0804D75A                ; 0804D864
@@Code0804D866:
add   sp,0x4                        ; 0804D866
pop   {r3-r5}                       ; 0804D868
mov   r8,r3                         ; 0804D86A
mov   r9,r4                         ; 0804D86C
mov   r10,r5                        ; 0804D86E
pop   {r4-r7}                       ; 0804D870
pop   {r0}                          ; 0804D872
bx    r0                            ; 0804D874
.pool                               ; 0804D876

Sub0804D878:
push  {r4,lr}                       ; 0804D878
ldr   r3,=0x03006D80                ; 0804D87A
ldr   r1,=0x021A                    ; 0804D87C
add   r0,r3,r1                      ; 0804D87E  r0 = 03006F9A
ldrh  r0,[r0]                       ; 0804D880
cmp   r0,0x0                        ; 0804D882
bne   @@Code0804D8CC                ; 0804D884

ldr   r0,=0x03002200                ; 0804D886
ldr   r2,=0x4088                    ; 0804D888
add   r1,r0,r2                      ; 0804D88A  r1 = 03006288
ldrh  r2,[r1]                       ; 0804D88C  r2 = level ID
ldr   r4,=0x47FA                    ; 0804D88E
add   r1,r0,r4                      ; 0804D890  r1 = 030069FA
strh  r2,[r1]                       ; 0804D892  set 030069FA to level ID
mov   r1,r0                         ; 0804D894
cmp   r2,0xB                        ; 0804D896  0B: intro level
beq   @@Code0804D8B0                ; 0804D898
cmp   r2,0x32                       ; 0804D89A  32: 5-3
beq   @@Code0804D8A2                ; 0804D89C
cmp   r2,0x39                       ; 0804D89E  39: 5-Extra
bne   @@Code0804D8A8                ; 0804D8A0
@@Code0804D8A2:
ldrh  r0,[r3,0x32]                  ; 0804D8A2  Yoshi transformation (03006DB2)
cmp   r0,0xE                        ; 0804D8A4  0E: skis
beq   @@Code0804D8B0                ; 0804D8A6
@@Code0804D8A8:
ldr   r0,=0x47FA                    ; 0804D8A8
add   r1,r1,r0                      ; 0804D8AA  r1 = 030069FA
mov   r0,0x0                        ; 0804D8AC
strh  r0,[r1]                       ; 0804D8AE  clear 030069FA
@@Code0804D8B0:
mov   r0,0x0                        ; 0804D8B0
bl    Sub0804D5BC                   ; 0804D8B2
b     @@Code0804D8E2                ; 0804D8B6
.pool                               ; 0804D8B8

@@Code0804D8CC:
ldr   r0,=0x03002200                ; 0804D8CC
ldr   r2,=0x4088                    ; 0804D8CE
add   r1,r0,r2                      ; 0804D8D0  r1 = 03006288
ldrh  r1,[r1]                       ; 0804D8D2  r1 = level ID
sub   r1,0xB                        ; 0804D8D4
ldr   r4,=0x47FA                    ; 0804D8D6
add   r0,r0,r4                      ; 0804D8D8  r0 = 030069FA
strh  r1,[r0]                       ; 0804D8DA  set 030069FA to level ID again
mov   r0,0x1                        ; 0804D8DC
bl    Sub0804D5BC                   ; 0804D8DE
@@Code0804D8E2:
pop   {r4}                          ; 0804D8E2
pop   {r0}                          ; 0804D8E4
bx    r0                            ; 0804D8E6
.pool                               ; 0804D8E8

SpriteStatus1_Init:
; Sprite status 1-2: init
push  {lr}                          ; 0804D8F4
mov   r1,0x8                        ; 0804D8F6
strh  r1,[r0,0x24]                  ; 0804D8F8  set sprite status to 8
ldr   r2,=StdSprInitPtrs            ; 0804D8FA
ldrh  r1,[r0,0x32]                  ; 0804D8FC
lsl   r1,r1,0x2                     ; 0804D8FE
add   r1,r1,r2                      ; 0804D900
ldr   r1,[r1]                       ; 0804D902
bl    Sub_bx_r1                     ; 0804D904
pop   {r0}                          ; 0804D908
bx    r0                            ; 0804D90A
.pool                               ; 0804D90C

SpriteStatus8_Main:
; Sprite status 8: main
push  {lr}                          ; 0804D910
ldr   r2,=StdSprMainPtrs            ; 0804D912
ldrh  r1,[r0,0x32]                  ; 0804D914  sprite ID
lsl   r1,r1,0x2                     ; 0804D916
add   r1,r1,r2                      ; 0804D918  index with sprite ID
ldr   r1,[r1]                       ; 0804D91A
bl    Sub_bx_r1                     ; 0804D91C
pop   {r0}                          ; 0804D920
bx    r0                            ; 0804D922
.pool                               ; 0804D924

SpriteStatus3:
; Sprite status 3: transforming (e.g. into star/coin/winged cloud)
push  {r4-r7,lr}                    ; 0804D928
mov   r4,r0                         ; 0804D92A
add   r0,0xA6                       ; 0804D92C
ldrh  r0,[r0]                       ; 0804D92E
cmp   r0,0xCB                       ; 0804D930  CB: ? cloud
bne   @@Code0804D948                ; 0804D932
ldr   r0,=0x0300702C                ; 0804D934  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804D936
ldr   r1,=0x189D                    ; 0804D938
add   r0,r0,r1                      ; 0804D93A
ldrb  r0,[r0]                       ; 0804D93C
cmp   r0,0x9                        ; 0804D93E
bhi   @@Code0804D948                ; 0804D940
mov   r0,r4                         ; 0804D942
bl    Sub0804A3B8                   ; 0804D944
@@Code0804D948:
mov   r0,r4                         ; 0804D948
bl    SpriteStatus8_Main            ; 0804D94A
ldr   r1,=0x03002200                ; 0804D94E
ldr   r0,[r4]                       ; 0804D950
asr   r0,r0,0x8                     ; 0804D952
ldr   r3,=0x47E4                    ; 0804D954
add   r2,r1,r3                      ; 0804D956
ldrh  r2,[r2]                       ; 0804D958
sub   r0,r0,r2                      ; 0804D95A
ldr   r2,=0x4058                    ; 0804D95C
add   r1,r1,r2                      ; 0804D95E
strh  r0,[r1]                       ; 0804D960
mov   r0,0x8D                       ; 0804D962
bl    PlayYISound                   ; 0804D964
mov   r1,r4                         ; 0804D968
add   r1,0x9B                       ; 0804D96A
ldrb  r7,[r1]                       ; 0804D96C
mov   r6,0xFF                       ; 0804D96E
mov   r0,r7                         ; 0804D970
orr   r0,r6                         ; 0804D972
strb  r0,[r1]                       ; 0804D974
ldrh  r0,[r4,0x32]                  ; 0804D976
cmp   r0,0xEF                       ; 0804D978
bne   @@Code0804D9B0                ; 0804D97A
ldr   r0,=0x0300702C                ; 0804D97C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804D97E
ldr   r3,=0x169A                    ; 0804D980
add   r0,r0,r3                      ; 0804D982
mov   r1,0x0                        ; 0804D984
strh  r1,[r0]                       ; 0804D986
ldr   r0,[r4,0x4]                   ; 0804D988
ldr   r1,=0xFFFFF000                ; 0804D98A
add   r0,r0,r1                      ; 0804D98C
str   r0,[r4,0x4]                   ; 0804D98E
b     @@Code0804D9D8                ; 0804D990
.pool                               ; 0804D992

@@Code0804D9B0:
cmp   r0,0x37                       ; 0804D9B0
bne   @@Code0804D9D8                ; 0804D9B2
ldr   r5,=0x0300702C                ; 0804D9B4  Sprite RAM structs (03002460)
ldr   r0,[r5]                       ; 0804D9B6
ldr   r2,=0x1893                    ; 0804D9B8
add   r1,r0,r2                      ; 0804D9BA
ldr   r3,=0x156E                    ; 0804D9BC
add   r0,r0,r3                      ; 0804D9BE
ldrb  r1,[r1]                       ; 0804D9C0
ldrb  r0,[r0]                       ; 0804D9C2
cmp   r1,r0                         ; 0804D9C4
bne   @@Code0804D9D8                ; 0804D9C6
bl    Sub0805F350                   ; 0804D9C8
ldr   r1,[r5]                       ; 0804D9CC
ldr   r0,=0x1893                    ; 0804D9CE
add   r1,r1,r0                      ; 0804D9D0
ldrb  r0,[r1]                       ; 0804D9D2
orr   r0,r6                         ; 0804D9D4
strb  r0,[r1]                       ; 0804D9D6
@@Code0804D9D8:
mov   r0,r4                         ; 0804D9D8
add   r0,0xAD                       ; 0804D9DA
ldrb  r6,[r0]                       ; 0804D9DC
mov   r5,r4                         ; 0804D9DE
add   r5,0xA6                       ; 0804D9E0
cmp   r6,0x0                        ; 0804D9E2
beq   @@Code0804D9FC                ; 0804D9E4
ldrh  r0,[r5]                       ; 0804D9E6
cmp   r0,0xCB                       ; 0804D9E8
bne   @@Code0804D9FC                ; 0804D9EA
ldr   r0,=0x0300702C                ; 0804D9EC  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 0804D9EE
add   r1,r1,r6                      ; 0804D9F0
ldr   r2,=0x1893                    ; 0804D9F2
add   r1,r1,r2                      ; 0804D9F4
ldrb  r0,[r1]                       ; 0804D9F6
add   r0,0x1                        ; 0804D9F8
strb  r0,[r1]                       ; 0804D9FA
@@Code0804D9FC:
mov   r0,r4                         ; 0804D9FC
bl    DespawnSprite                 ; 0804D9FE
mov   r3,0x0                        ; 0804DA02
ldsh  r0,[r5,r3]                    ; 0804DA04  sprite ID to become (sprite+A6)
cmp   r0,0x0                        ; 0804DA06
bge   @@Code0804DA48                ; 0804DA08
mov   r0,r4                         ; 0804DA0A
mov   r1,0x4                        ; 0804DA0C
bl    Sub0804A63C                   ; 0804DA0E
ldr   r1,=0x03002200                ; 0804DA12
ldr   r0,[r4]                       ; 0804DA14
asr   r0,r0,0x8                     ; 0804DA16
ldr   r3,=0x47E4                    ; 0804DA18
add   r2,r1,r3                      ; 0804DA1A
ldrh  r2,[r2]                       ; 0804DA1C
sub   r0,r0,r2                      ; 0804DA1E
ldr   r2,=0x4058                    ; 0804DA20
add   r1,r1,r2                      ; 0804DA22
strh  r0,[r1]                       ; 0804DA24
mov   r0,0x6B                       ; 0804DA26
bl    PlayYISound                   ; 0804DA28
b     @@Code0804DB18                ; 0804DA2C
.pool                               ; 0804DA2E

@@Code0804DA48:
ldrh  r0,[r5]                       ; 0804DA48
ldr   r5,=0x0300702C                ; 0804DA4A  Sprite RAM structs (03002460)
ldr   r1,[r5]                       ; 0804DA4C
ldr   r3,=0x156E                    ; 0804DA4E
add   r1,r1,r3                      ; 0804DA50  [03002460]+156E (030039CE)
ldrb  r1,[r1]                       ; 0804DA52
bl    Sub0804A260                   ; 0804DA54
lsl   r0,r0,0x18                    ; 0804DA58
lsr   r1,r0,0x18                    ; 0804DA5A
cmp   r0,0x0                        ; 0804DA5C
blt   @@Code0804DB18                ; 0804DA5E
ldr   r3,=0x03007240                ; 0804DA60  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0804DA62
mul   r0,r1                         ; 0804DA64
mov   r1,0x95                       ; 0804DA66
lsl   r1,r1,0x2                     ; 0804DA68
add   r0,r0,r1                      ; 0804DA6A
ldr   r1,[r3]                       ; 0804DA6C
add   r2,r1,r0                      ; 0804DA6E
mov   r4,0x0                        ; 0804DA70
mov   r0,0x1                        ; 0804DA72
strh  r0,[r2,0x24]                  ; 0804DA74
mov   r0,r2                         ; 0804DA76
add   r0,0x9B                       ; 0804DA78
strb  r7,[r0]                       ; 0804DA7A
add   r0,0x12                       ; 0804DA7C
strb  r6,[r0]                       ; 0804DA7E
ldrh  r7,[r2,0x32]                  ; 0804DA80
cmp   r7,0xCB                       ; 0804DA82
bne   @@Code0804DAF0                ; 0804DA84
ldr   r0,[r3]                       ; 0804DA86
ldr   r1,=0x2AAC                    ; 0804DA88
add   r0,r0,r1                      ; 0804DA8A
ldrh  r0,[r0]                       ; 0804DA8C
cmp   r0,0xBB                       ; 0804DA8E
bne   @@Code0804DAA0                ; 0804DA90
ldrh  r0,[r2,0x2C]                  ; 0804DA92
ldr   r1,=0xFFCF                    ; 0804DA94
and   r1,r0                         ; 0804DA96
strh  r1,[r2,0x2C]                  ; 0804DA98
mov   r0,r2                         ; 0804DA9A
add   r0,0x94                       ; 0804DA9C
strb  r4,[r0]                       ; 0804DA9E
@@Code0804DAA0:
ldr   r0,[r3]                       ; 0804DAA0
ldr   r3,=0x29CC                    ; 0804DAA2
add   r0,r0,r3                      ; 0804DAA4
ldrh  r1,[r0]                       ; 0804DAA6
mov   r0,0xF                        ; 0804DAA8
and   r0,r1                         ; 0804DAAA
mov   r3,0x90                       ; 0804DAAC
lsl   r3,r3,0x3                     ; 0804DAAE
mov   r1,r3                         ; 0804DAB0
add   r0,r0,r1                      ; 0804DAB2
mov   r1,r2                         ; 0804DAB4
add   r1,0x44                       ; 0804DAB6
strh  r0,[r1]                       ; 0804DAB8
add   r1,0x38                       ; 0804DABA
mov   r0,0x4                        ; 0804DABC
strh  r0,[r1]                       ; 0804DABE
mov   r0,0x2                        ; 0804DAC0
strh  r0,[r2,0x38]                  ; 0804DAC2
ldr   r1,[r5]                       ; 0804DAC4
ldr   r0,=0x189D                    ; 0804DAC6
add   r1,r1,r0                      ; 0804DAC8
ldrb  r0,[r1]                       ; 0804DACA
add   r0,0x1                        ; 0804DACC
strb  r0,[r1]                       ; 0804DACE
b     @@Code0804DB18                ; 0804DAD0
.pool                               ; 0804DAD2

@@Code0804DAF0:
ldr   r0,=0x0115                    ; 0804DAF0
cmp   r7,r0                         ; 0804DAF2
bne   @@Code0804DB10                ; 0804DAF4
ldr   r0,=0xFFFFFD00                ; 0804DAF6
str   r0,[r2,0xC]                   ; 0804DAF8
ldr   r0,[r5]                       ; 0804DAFA
ldr   r1,=0x189D                    ; 0804DAFC
add   r0,r0,r1                      ; 0804DAFE
b     @@Code0804DB16                ; 0804DB00
.pool                               ; 0804DB02

@@Code0804DB10:
ldr   r0,[r5]                       ; 0804DB10
ldr   r2,=0x189D                    ; 0804DB12
add   r0,r0,r2                      ; 0804DB14
@@Code0804DB16:
strb  r4,[r0]                       ; 0804DB16
@@Code0804DB18:
pop   {r4-r7}                       ; 0804DB18
pop   {r0}                          ; 0804DB1A
bx    r0                            ; 0804DB1C
.pool                               ; 0804DB1E

Sub0804DB24:
push  {lr}                          ; 0804DB24
mov   r3,r0                         ; 0804DB26
mov   r0,0x8                        ; 0804DB28
strh  r0,[r3,0x24]                  ; 0804DB2A
mov   r1,r3                         ; 0804DB2C
add   r1,0xA1                       ; 0804DB2E
mov   r0,0xFF                       ; 0804DB30
strb  r0,[r1]                       ; 0804DB32
ldr   r1,=StdSprData_94_2C          ; 0804DB34
ldrh  r0,[r3,0x32]                  ; 0804DB36
lsl   r0,r0,0x1                     ; 0804DB38
add   r0,r0,r1                      ; 0804DB3A
ldrb  r0,[r0]                       ; 0804DB3C
mov   r1,r3                         ; 0804DB3E
add   r1,0x94                       ; 0804DB40
strb  r0,[r1]                       ; 0804DB42
ldrh  r2,[r3,0x32]                  ; 0804DB44
cmp   r0,0xFF                       ; 0804DB46
bne   @@Code0804DB88                ; 0804DB48
cmp   r2,0x5C                       ; 0804DB4A
beq   @@Code0804DB56                ; 0804DB4C
cmp   r2,0x80                       ; 0804DB4E
beq   @@Code0804DB56                ; 0804DB50
cmp   r2,0x81                       ; 0804DB52
bne   @@Code0804DB64                ; 0804DB54
@@Code0804DB56:
mov   r1,r3                         ; 0804DB56
add   r1,0x94                       ; 0804DB58
mov   r0,0x2                        ; 0804DB5A
b     @@Code0804DB86                ; 0804DB5C
.pool                               ; 0804DB5E

@@Code0804DB64:
mov   r0,r2                         ; 0804DB64
sub   r0,0x7B                       ; 0804DB66
lsl   r0,r0,0x10                    ; 0804DB68
lsr   r0,r0,0x10                    ; 0804DB6A
cmp   r0,0x2                        ; 0804DB6C
bhi   @@Code0804DB74                ; 0804DB6E
mov   r0,0x4                        ; 0804DB70
b     @@Code0804DB86                ; 0804DB72
@@Code0804DB74:
cmp   r2,0x8D                       ; 0804DB74
beq   @@Code0804DB80                ; 0804DB76
cmp   r2,0xEC                       ; 0804DB78
beq   @@Code0804DB80                ; 0804DB7A
cmp   r2,0xED                       ; 0804DB7C
bne   @@Code0804DB88                ; 0804DB7E
@@Code0804DB80:
mov   r1,r3                         ; 0804DB80
add   r1,0x94                       ; 0804DB82
mov   r0,0x5                        ; 0804DB84
@@Code0804DB86:
strb  r0,[r1]                       ; 0804DB86
@@Code0804DB88:
mov   r0,0x84                       ; 0804DB88
lsl   r0,r0,0x1                     ; 0804DB8A
cmp   r2,r0                         ; 0804DB8C
bne   @@Code0804DB96                ; 0804DB8E
mov   r0,r3                         ; 0804DB90
add   r0,0x62                       ; 0804DB92
b     @@Code0804DC36                ; 0804DB94
@@Code0804DB96:
cmp   r2,0x9E                       ; 0804DB96
bne   @@Code0804DBEA                ; 0804DB98
ldr   r0,=0x03002200                ; 0804DB9A
ldr   r1,=0x4088                    ; 0804DB9C
add   r0,r0,r1                      ; 0804DB9E
ldrh  r1,[r0]                       ; 0804DBA0
cmp   r1,0x0                        ; 0804DBA2
bne   @@Code0804DBC8                ; 0804DBA4
ldr   r0,=0x03007240                ; 0804DBA6  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804DBA8
ldr   r1,=0x29AC                    ; 0804DBAA
add   r0,r0,r1                      ; 0804DBAC
ldrh  r0,[r0]                       ; 0804DBAE
cmp   r0,0x1                        ; 0804DBB0
bne   @@Code0804DC30                ; 0804DBB2
b     @@Code0804DBFA                ; 0804DBB4
.pool                               ; 0804DBB6

@@Code0804DBC8:
cmp   r1,0x44                       ; 0804DBC8
bne   @@Code0804DBE4                ; 0804DBCA
ldr   r0,=0x03007240                ; 0804DBCC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804DBCE
ldr   r1,=0x29AC                    ; 0804DBD0
add   r0,r0,r1                      ; 0804DBD2
ldrh  r0,[r0]                       ; 0804DBD4
cmp   r0,0x2                        ; 0804DBD6
beq   @@Code0804DBFA                ; 0804DBD8
b     @@Code0804DC30                ; 0804DBDA
.pool                               ; 0804DBDC

@@Code0804DBE4:
cmp   r1,0x28                       ; 0804DBE4
beq   @@Code0804DBFA                ; 0804DBE6
b     @@Code0804DC30                ; 0804DBE8
@@Code0804DBEA:
cmp   r2,0xDC                       ; 0804DBEA
bne   @@Code0804DC18                ; 0804DBEC
ldr   r0,=0x03002200                ; 0804DBEE
ldr   r1,=0x4088                    ; 0804DBF0
add   r0,r0,r1                      ; 0804DBF2
ldrh  r0,[r0]                       ; 0804DBF4
cmp   r0,0x31                       ; 0804DBF6
bne   @@Code0804DC0C                ; 0804DBF8
@@Code0804DBFA:
ldr   r1,=0x0801                    ; 0804DBFA
b     @@Code0804DC38                ; 0804DBFC
.pool                               ; 0804DBFE

@@Code0804DC0C:
ldr   r0,=StdSprData_2A             ; 0804DC0C
lsl   r1,r2,0x1                     ; 0804DC0E
b     @@Code0804DC34                ; 0804DC10
.pool                               ; 0804DC12

@@Code0804DC18:
cmp   r2,0xF0                       ; 0804DC18
bne   @@Code0804DC30                ; 0804DC1A
mov   r0,0x7                        ; 0804DC1C
strh  r0,[r3,0x24]                  ; 0804DC1E
mov   r0,0x40                       ; 0804DC20
str   r0,[r3,0x14]                  ; 0804DC22
ldr   r0,=StdSprData_2A             ; 0804DC24
lsl   r1,r2,0x1                     ; 0804DC26
b     @@Code0804DC34                ; 0804DC28
.pool                               ; 0804DC2A

@@Code0804DC30:
ldr   r1,=StdSprData_2A             ; 0804DC30
lsl   r0,r2,0x1                     ; 0804DC32
@@Code0804DC34:
add   r0,r0,r1                      ; 0804DC34
@@Code0804DC36:
ldrh  r1,[r0]                       ; 0804DC36
@@Code0804DC38:
mov   r0,0xC                        ; 0804DC38
and   r1,r0                         ; 0804DC3A
ldrh  r0,[r3,0x2A]                  ; 0804DC3C
orr   r1,r0                         ; 0804DC3E
strh  r1,[r3,0x2A]                  ; 0804DC40
pop   {r0}                          ; 0804DC42
bx    r0                            ; 0804DC44
.pool                               ; 0804DC46

SpriteStatus4:
; Sprite status 4: in Yoshi's mouth / on Yoshi's tongue
push  {r4-r7,lr}                    ; 0804DC4C
mov   r7,r10                        ; 0804DC4E
mov   r6,r9                         ; 0804DC50
mov   r5,r8                         ; 0804DC52
push  {r5-r7}                       ; 0804DC54
add   sp,-0x4                       ; 0804DC56
mov   r7,r0                         ; 0804DC58
ldr   r5,=0x03007240                ; 0804DC5A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r5]                       ; 0804DC5C
ldr   r1,=0x2618                    ; 0804DC5E
add   r1,r0,r1                      ; 0804DC60
str   r1,[sp]                       ; 0804DC62
ldr   r4,=0x0300702C                ; 0804DC64  Sprite RAM structs (03002460)
ldr   r0,[r4]                       ; 0804DC66
ldr   r2,=0x156E                    ; 0804DC68
add   r0,r0,r2                      ; 0804DC6A
ldrb  r0,[r0]                       ; 0804DC6C
mov   r10,r0                        ; 0804DC6E
mov   r0,r7                         ; 0804DC70
bl    SpriteStatus8_Main            ; 0804DC72
ldr   r0,[r4]                       ; 0804DC76
ldr   r3,=0x11B0                    ; 0804DC78
add   r0,r0,r3                      ; 0804DC7A
ldrh  r0,[r0]                       ; 0804DC7C
cmp   r0,0x0                        ; 0804DC7E
beq   @@Code0804DC84                ; 0804DC80
b     @@Return                      ; 0804DC82
@@Code0804DC84:
ldrh  r4,[r7,0x32]                  ; 0804DC84  sprite ID
mov   r9,r4                         ; 0804DC86  r9 = sprite ID
ldrh  r1,[r7,0x2A]                  ; 0804DC88
ldr   r0,=0xFFF3                    ; 0804DC8A
and   r0,r1                         ; 0804DC8C
strh  r0,[r7,0x2A]                  ; 0804DC8E
ldr   r3,=0x03006D80                ; 0804DC90
mov   r0,0xD4                       ; 0804DC92
lsl   r0,r0,0x1                     ; 0804DC94
add   r2,r3,r0                      ; 0804DC96
ldr   r1,[r5]                       ; 0804DC98
ldr   r4,=0x29B0                    ; 0804DC9A
add   r0,r1,r4                      ; 0804DC9C
ldrh  r2,[r2]                       ; 0804DC9E
ldrh  r0,[r0]                       ; 0804DCA0
orr   r2,r0                         ; 0804DCA2
ldr   r0,=0x29BA                    ; 0804DCA4
add   r1,r1,r0                      ; 0804DCA6
ldrh  r0,[r1]                       ; 0804DCA8
orr   r2,r0                         ; 0804DCAA
mov   r8,r3                         ; 0804DCAC
cmp   r2,0x0                        ; 0804DCAE
beq   @@Code0804DCB4                ; 0804DCB0
b     @@Return                      ; 0804DCB2
@@Code0804DCB4:
mov   r4,r8                         ; 0804DCB4
add   r4,0xE4                       ; 0804DCB6
ldrh  r3,[r4]                       ; 0804DCB8
lsl   r0,r3,0x10                    ; 0804DCBA
cmp   r0,0x0                        ; 0804DCBC
beq   @@Code0804DCD8                ; 0804DCBE
lsr   r5,r0,0x1F                    ; 0804DCC0
ldr   r1,=Data0817206C              ; 0804DCC2
lsl   r0,r5,0x1                     ; 0804DCC4
add   r0,r0,r1                      ; 0804DCC6
ldrh  r1,[r0]                       ; 0804DCC8
add   r0,r3,r1                      ; 0804DCCA
strh  r0,[r4]                       ; 0804DCCC
eor   r0,r1                         ; 0804DCCE
lsl   r0,r0,0x10                    ; 0804DCD0
cmp   r0,0x0                        ; 0804DCD2
blt   @@Code0804DCD8                ; 0804DCD4
strh  r2,[r4]                       ; 0804DCD6
@@Code0804DCD8:
mov   r3,r8                         ; 0804DCD8
add   r3,0xE6                       ; 0804DCDA
ldrh  r2,[r3]                       ; 0804DCDC
lsl   r0,r2,0x10                    ; 0804DCDE
cmp   r0,0x0                        ; 0804DCE0
beq   @@Code0804DCFE                ; 0804DCE2
lsr   r5,r0,0x1F                    ; 0804DCE4
ldr   r1,=Data0817206C              ; 0804DCE6
lsl   r0,r5,0x1                     ; 0804DCE8
add   r0,r0,r1                      ; 0804DCEA
ldrh  r1,[r0]                       ; 0804DCEC
add   r0,r2,r1                      ; 0804DCEE
strh  r0,[r3]                       ; 0804DCF0
eor   r0,r1                         ; 0804DCF2
lsl   r0,r0,0x10                    ; 0804DCF4
cmp   r0,0x0                        ; 0804DCF6
blt   @@Code0804DCFE                ; 0804DCF8
mov   r0,0x0                        ; 0804DCFA
strh  r0,[r3]                       ; 0804DCFC
@@Code0804DCFE:
mov   r4,r8                         ; 0804DCFE
mov   r0,r4                         ; 0804DD00
add   r0,0xDA                       ; 0804DD02
mov   r1,r4                         ; 0804DD04
add   r1,0xE4                       ; 0804DD06
mov   r2,0x0                        ; 0804DD08
ldsh  r0,[r0,r2]                    ; 0804DD0A
ldrh  r1,[r1]                       ; 0804DD0C
add   r0,r0,r1                      ; 0804DD0E
sub   r0,0x8                        ; 0804DD10
lsl   r0,r0,0x8                     ; 0804DD12
str   r0,[r7]                       ; 0804DD14
mov   r0,r4                         ; 0804DD16
add   r0,0xDC                       ; 0804DD18
mov   r1,r4                         ; 0804DD1A
add   r1,0xE6                       ; 0804DD1C
mov   r3,0x0                        ; 0804DD1E
ldsh  r0,[r0,r3]                    ; 0804DD20
ldrh  r1,[r1]                       ; 0804DD22
add   r0,r0,r1                      ; 0804DD24
sub   r0,0x8                        ; 0804DD26
lsl   r0,r0,0x8                     ; 0804DD28
str   r0,[r7,0x4]                   ; 0804DD2A
mov   r1,r4                         ; 0804DD2C
add   r1,0xD2                       ; 0804DD2E
mov   r0,r4                         ; 0804DD30
add   r0,0xD4                       ; 0804DD32
ldrh  r1,[r1]                       ; 0804DD34
ldrh  r0,[r0]                       ; 0804DD36
mov   r6,r0                         ; 0804DD38
orr   r6,r1                         ; 0804DD3A
cmp   r6,0x0                        ; 0804DD3C
beq   @@Code0804DD42                ; 0804DD3E
b     @@Return                      ; 0804DD40
@@Code0804DD42:
mov   r1,r7                         ; 0804DD42
add   r1,0x94                       ; 0804DD44
mov   r0,0xFF                       ; 0804DD46
strb  r0,[r1]                       ; 0804DD48
mov   r0,r4                         ; 0804DD4A
add   r0,0xE8                       ; 0804DD4C
ldrh  r0,[r0]                       ; 0804DD4E
cmp   r0,0x0                        ; 0804DD50
bne   @@Code0804DD56                ; 0804DD52
b     @@Code0804E170                ; 0804DD54
@@Code0804DD56:
mov   r0,r4                         ; 0804DD56
add   r0,0xE2                       ; 0804DD58
ldrh  r0,[r0]                       ; 0804DD5A
cmp   r0,0x0                        ; 0804DD5C
beq   @@Code0804DE12                ; 0804DD5E
mov   r4,r9                         ; 0804DD60
cmp   r4,0x21                       ; 0804DD62
bls   @@Code0804DD9C                ; 0804DD64
cmp   r4,0x2B                       ; 0804DD66
bhi   @@Code0804DD9C                ; 0804DD68
mov   r0,r7                         ; 0804DD6A \ runs if 022-02B (eggs and egg variants)
bl    RemoveFromEggSlotsIfPresent   ; 0804DD6C
b     @@Return                      ; 0804DD70 /
.pool                               ; 0804DD72

@@Code0804DD9C:
mov   r5,0x1                        ; 0804DD9C
mov   r0,r9                         ; 0804DD9E
cmp   r0,0x9                        ; 0804DDA0  009: fire melon
beq   @@Code0804DDD4                ; 0804DDA2
sub   r0,0xEC                       ; 0804DDA4  sprite ID -0EC
lsl   r0,r0,0x10                    ; 0804DDA6
lsr   r0,r0,0x10                    ; 0804DDA8
cmp   r0,0x1                        ; 0804DDAA  0EC-0ED: Pyro Guys
bls   @@Code0804DDB8                ; 0804DDAC
mov   r1,r9                         ; 0804DDAE
cmp   r1,0x80                       ; 0804DDB0  080: Lava Bubble, vertical
beq   @@Code0804DDB8                ; 0804DDB2
cmp   r1,0x81                       ; 0804DDB4  081: Lava Bubble, diagonal
bne   @@Code0804DDBE                ; 0804DDB6
@@Code0804DDB8:
mov   r0,0x0                        ; 0804DDB8 \ runs if sprite gives fire breath
strh  r0,[r7,0x38]                  ; 0804DDBA
b     @@Code0804DDD4                ; 0804DDBC /

@@Code0804DDBE:
mov   r5,0x2                        ; 0804DDBE
mov   r2,r9                         ; 0804DDC0
cmp   r2,0x19                       ; 0804DDC2  019: bubble
beq   @@Code0804DDD4                ; 0804DDC4
mov   r5,0x3                        ; 0804DDC6
cmp   r2,0x7                        ; 0804DDC8  007: watermelon
beq   @@Code0804DDD4                ; 0804DDCA
mov   r5,0x4                        ; 0804DDCC
cmp   r2,0x5                        ; 0804DDCE  005: ice melon
beq   @@Code0804DDD4                ; 0804DDD0
b     @@Return                      ; 0804DDD2

@@Code0804DDD4:
mov   r0,r8                         ; 0804DDD4 \ runs if sprite gives any melon/bubble effect
add   r0,0xEA                       ; 0804DDD6
strh  r5,[r0]                       ; 0804DDD8
ldrh  r0,[r7,0x38]                  ; 0804DDDA
cmp   r0,0x0                        ; 0804DDDC
beq   @@Code0804DDE8                ; 0804DDDE
mov   r1,r8                         ; 0804DDE0
add   r1,0xF0                       ; 0804DDE2  03006E70
mov   r0,0xA                        ; 0804DDE4
b     @@Code0804DDEE                ; 0804DDE6

@@Code0804DDE8:
mov   r1,r8                         ; 0804DDE8
add   r1,0xF0                       ; 0804DDEA  03006E70
mov   r0,0x1E                       ; 0804DDEC
@@Code0804DDEE:
strh  r0,[r1]                       ; 0804DDEE  set remaining melon/bubble uses
mov   r1,r8                         ; 0804DDF0
add   r1,0xEC                       ; 0804DDF2  03006E6C
mov   r0,0x0                        ; 0804DDF4
strh  r0,[r1]                       ; 0804DDF6  clear melon/bubble spit cooldown
mov   r0,r8                         ; 0804DDF8
add   r0,0xEE                       ; 0804DDFA  03006E6E
mov   r1,0x10                       ; 0804DDFC
strh  r1,[r0]                       ; 0804DDFE
mov   r0,0xD3                       ; 0804DE00
lsl   r0,r0,0x1                     ; 0804DE02  1A6
add   r0,r8                         ; 0804DE04  03006F26
strh  r1,[r0]                       ; 0804DE06
mov   r0,0xD4                       ; 0804DE08
lsl   r0,r0,0x1                     ; 0804DE0A  1A8
add   r0,r8                         ; 0804DE0C  03006F28
strh  r1,[r0]                       ; 0804DE0E
b     @@Code0804E17E                ; 0804DE10

@@Code0804DE12:
mov   r3,0xEE                       ; 0804DE12
lsl   r3,r3,0x1                     ; 0804DE14  1DC
add   r0,r4,r3                      ; 0804DE16
ldrh  r0,[r0]                       ; 0804DE18
cmp   r0,0x3                        ; 0804DE1A
bls   @@Code0804DE20                ; 0804DE1C
b     @@Return                      ; 0804DE1E
@@Code0804DE20:
mov   r0,r4                         ; 0804DE20
add   r0,0xD0                       ; 0804DE22
ldrb  r0,[r0]                       ; 0804DE24
sub   r0,0x1                        ; 0804DE26
lsl   r0,r0,0x1                     ; 0804DE28
mov   r1,r4                         ; 0804DE2A
add   r1,0x42                       ; 0804DE2C  03006DC2
ldrb  r1,[r1]                       ; 0804DE2E  Yoshi facing direction (00=right, 02=left)
orr   r0,r1                         ; 0804DE30
lsl   r0,r0,0x18                    ; 0804DE32
lsr   r5,r0,0x18                    ; 0804DE34
ldr   r1,=Data08172070              ; 0804DE36
lsr   r0,r0,0x19                    ; 0804DE38
lsl   r0,r0,0x2                     ; 0804DE3A
add   r0,r0,r1                      ; 0804DE3C
ldr   r1,[r7]                       ; 0804DE3E
ldr   r0,[r0]                       ; 0804DE40
add   r1,r1,r0                      ; 0804DE42
str   r1,[r7]                       ; 0804DE44
ldr   r2,=0x03002200                ; 0804DE46
asr   r1,r1,0x8                     ; 0804DE48
add   r1,0x8                        ; 0804DE4A
ldr   r3,=0x4804                    ; 0804DE4C
add   r0,r2,r3                      ; 0804DE4E  03006A04
strh  r1,[r0]                       ; 0804DE50
ldr   r0,[r4,0x8]                   ; 0804DE52
mov   r10,r2                        ; 0804DE54  r10 = 03002200
cmp   r0,0x0                        ; 0804DE56
bge   @@Code0804DE5C                ; 0804DE58
neg   r0,r0                         ; 0804DE5A
@@Code0804DE5C:
add   r0,0x80                       ; 0804DE5C
lsl   r0,r0,0x8                     ; 0804DE5E
lsr   r6,r0,0x10                    ; 0804DE60
cmp   r6,0x3                        ; 0804DE62
bls   @@Code0804DE68                ; 0804DE64
mov   r6,0x3                        ; 0804DE66
@@Code0804DE68:
lsl   r1,r6,0x1                     ; 0804DE68
mov   r0,r8                         ; 0804DE6A
add   r0,0x42                       ; 0804DE6C
ldrh  r0,[r0]                       ; 0804DE6E
lsr   r0,r0,0x1                     ; 0804DE70
orr   r1,r0                         ; 0804DE72
lsl   r1,r1,0x10                    ; 0804DE74
lsr   r6,r1,0x10                    ; 0804DE76
ldr   r1,=0x4804                    ; 0804DE78
add   r1,r10                        ; 0804DE7A  03006A04
ldr   r0,=Data08172090              ; 0804DE7C
add   r0,r6,r0                      ; 0804DE7E
ldrb  r0,[r0]                       ; 0804DE80
lsl   r0,r0,0x18                    ; 0804DE82
asr   r0,r0,0x18                    ; 0804DE84
ldrh  r4,[r1]                       ; 0804DE86
add   r0,r0,r4                      ; 0804DE88
mov   r4,0x0                        ; 0804DE8A
strh  r0,[r1]                       ; 0804DE8C
ldr   r0,=Data08172080              ; 0804DE8E
lsr   r1,r5,0x1                     ; 0804DE90
lsl   r1,r1,0x2                     ; 0804DE92
add   r1,r1,r0                      ; 0804DE94
ldr   r0,[r7,0x4]                   ; 0804DE96
ldr   r1,[r1]                       ; 0804DE98
add   r0,r0,r1                      ; 0804DE9A
str   r0,[r7,0x4]                   ; 0804DE9C
asr   r0,r0,0x8                     ; 0804DE9E
add   r0,0x8                        ; 0804DEA0
lsl   r0,r0,0x10                    ; 0804DEA2
lsr   r6,r0,0x10                    ; 0804DEA4
mov   r0,r6                         ; 0804DEA6
bl    Sub0804353C                   ; 0804DEA8
ldr   r0,=0x4802                    ; 0804DEAC  03006A02
add   r0,r10                        ; 0804DEAE
ldrh  r0,[r0]                       ; 0804DEB0
mov   r6,0x6                        ; 0804DEB2
and   r6,r0                         ; 0804DEB4
mov   r0,r8                         ; 0804DEB6
add   r0,0xD0                       ; 0804DEB8
strh  r4,[r0]                       ; 0804DEBA
cmp   r6,0x0                        ; 0804DEBC
beq   @@Code0804DEE4                ; 0804DEBE
add   r0,0x18                       ; 0804DEC0
ldrh  r1,[r0]                       ; 0804DEC2
sub   r0,0x6                        ; 0804DEC4
strh  r1,[r0]                       ; 0804DEC6
b     @@Return                      ; 0804DEC8
.pool                               ; 0804DECA

@@Code0804DEE4:
mov   r0,r8                         ; 0804DEE4
add   r0,0xE8                       ; 0804DEE6
strh  r6,[r0]                       ; 0804DEE8
mov   r0,r9                         ; 0804DEEA
cmp   r0,0x1E                       ; 0804DEEC  01E: Shy Guy
beq   @@Code0804DF02                ; 0804DEEE
ldr   r0,=0x0133                    ; 0804DEF0  133: Lantern Ghost
cmp   r9,r0                         ; 0804DEF2
beq   @@Code0804DF02                ; 0804DEF4
sub   r0,0x9                        ; 0804DEF6  12A: Shy Guy, hiding behind terrain
cmp   r9,r0                         ; 0804DEF8
beq   @@Code0804DF02                ; 0804DEFA
mov   r1,r9                         ; 0804DEFC
cmp   r1,0x74                       ; 0804DEFE  074: Spike (Mace Penguin)
bne   @@Code0804DF54                ; 0804DF00
@@Code0804DF02:
mov   r1,r7                         ; 0804DF02 \ runs if any of the previous 4 sprites
add   r1,0x48                       ; 0804DF04
mov   r2,0x0                        ; 0804DF06
mov   r0,0x8                        ; 0804DF08
strh  r0,[r1]                       ; 0804DF0A
cmp   r5,0x3                        ; 0804DF0C
bhi   @@Code0804DF30                ; 0804DF0E
ldr   r0,=0x03006D80                ; 0804DF10
add   r0,0x42                       ; 0804DF12
ldrh  r0,[r0]                       ; 0804DF14
mov   r1,0x2                        ; 0804DF16
eor   r0,r1                         ; 0804DF18
strh  r0,[r7,0x36]                  ; 0804DF1A
str   r2,[r7,0x8]                   ; 0804DF1C
mov   r0,r7                         ; 0804DF1E
bl    Sub0808F81C                   ; 0804DF20
b     @@Code0804E08C                ; 0804DF24
.pool                               ; 0804DF26

@@Code0804DF30:
ldr   r0,=0x0E81                    ; 0804DF30
strh  r0,[r7,0x28]                  ; 0804DF32
ldrh  r0,[r7,0x2C]                  ; 0804DF34
mov   r1,0x20                       ; 0804DF36
orr   r0,r1                         ; 0804DF38
strh  r0,[r7,0x2C]                  ; 0804DF3A
mov   r1,r7                         ; 0804DF3C
add   r1,0x6E                       ; 0804DF3E
ldrh  r0,[r1]                       ; 0804DF40
cmp   r0,0x4                        ; 0804DF42
bne   @@Code0804DF4C                ; 0804DF44
mov   r0,r7                         ; 0804DF46
add   r0,0x72                       ; 0804DF48
strh  r2,[r0]                       ; 0804DF4A
@@Code0804DF4C:
strh  r2,[r1]                       ; 0804DF4C
b     @@Code0804DFEE                ; 0804DF4E /
.pool                               ; 0804DF50

@@Code0804DF54:
mov   r2,r9                         ; 0804DF54
cmp   r2,0x17                       ; 0804DF56  017: Frog Pirate
bne   @@Code0804DF62                ; 0804DF58
mov   r0,r7                         ; 0804DF5A \ runs if Frog Pirate
bl    Sub080B4398                   ; 0804DF5C
b     @@Code0804E08C                ; 0804DF60 /

@@Code0804DF62:
mov   r3,r9                         ; 0804DF62
cmp   r3,0x92                       ; 0804DF64  092: Melon Bug
bne   @@Code0804DF7E                ; 0804DF66
mov   r0,r7                         ; 0804DF68 \ runs if Melon Bug
add   r0,0x5E                       ; 0804DF6A
strh  r6,[r0]                       ; 0804DF6C
mov   r1,r7                         ; 0804DF6E
add   r1,0x46                       ; 0804DF70
mov   r0,0x10                       ; 0804DF72
strh  r0,[r1]                       ; 0804DF74
mov   r0,0x2                        ; 0804DF76
strh  r0,[r7,0x38]                  ; 0804DF78
add   r1,0x28                       ; 0804DF7A
b     @@Code0804E08A                ; 0804DF7C /

@@Code0804DF7E:
cmp   r5,0x3                        ; 0804DF7E
bls   @@Code0804DF92                ; 0804DF80
mov   r4,r9                         ; 0804DF82
cmp   r4,0xF3                       ; 0804DF84  0F3: Woozy Guy
bne   @@Code0804DFEE                ; 0804DF86
mov   r1,r7                         ; 0804DF88 \ runs if Woozy Guy
add   r1,0x48                       ; 0804DF8A
mov   r0,0x8                        ; 0804DF8C
strh  r0,[r1]                       ; 0804DF8E
b     @@Code0804DFEE                ; 0804DF90 /

@@Code0804DF92:
mov   r0,0xCD                       ; 0804DF92
lsl   r0,r0,0x1                     ; 0804DF94  19A: Boo Guy
cmp   r9,r0                         ; 0804DF96
bne   @@Code0804DFD4                ; 0804DF98
mov   r0,r7                         ; 0804DF9A \ runs if Boo Guy
bl    Sub0807D764                   ; 0804DF9C
mov   r0,r7                         ; 0804DFA0
bl    Sub0804B29C                   ; 0804DFA2
mov   r0,r7                         ; 0804DFA6
bl    Sub0804ACB4                   ; 0804DFA8
mov   r0,r7                         ; 0804DFAC
add   r0,0x72                       ; 0804DFAE
strh  r6,[r0]                       ; 0804DFB0
sub   r0,0x6                        ; 0804DFB2
strh  r6,[r0]                       ; 0804DFB4
ldrh  r1,[r7,0x2A]                  ; 0804DFB6
ldr   r0,=0x07FF                    ; 0804DFB8
and   r0,r1                         ; 0804DFBA
mov   r2,0x80                       ; 0804DFBC
lsl   r2,r2,0x4                     ; 0804DFBE
mov   r1,r2                         ; 0804DFC0
orr   r0,r1                         ; 0804DFC2
strh  r0,[r7,0x2A]                  ; 0804DFC4
mov   r1,r7                         ; 0804DFC6
add   r1,0x48                       ; 0804DFC8
mov   r0,0x8                        ; 0804DFCA
strh  r0,[r1]                       ; 0804DFCC
b     @@Return                      ; 0804DFCE /
.pool                               ; 0804DFD0

@@Code0804DFD4:
mov   r3,r9                         ; 0804DFD4
cmp   r3,0xF3                       ; 0804DFD6  0F3: Woozy Guy
bne   @@Code0804DFEE                ; 0804DFD8
mov   r0,r7                         ; 0804DFDA \ runs if Woozy Guy
bl    Sub0807D764                   ; 0804DFDC
mov   r0,r7                         ; 0804DFE0
bl    Sub08090BA4                   ; 0804DFE2
mov   r0,r7                         ; 0804DFE6
add   r0,0x64                       ; 0804DFE8
strh  r6,[r0]                       ; 0804DFEA
b     @@Return                      ; 0804DFEC /

@@Code0804DFEE:
ldr   r0,=StdSprData08192806        ; 0804DFEE
mov   r4,r9                         ; 0804DFF0  sprite ID
lsl   r1,r4,0x1                     ; 0804DFF2
add   r1,r1,r0                      ; 0804DFF4  index with sprite ID
ldrh  r0,[r1]                       ; 0804DFF6
lsl   r4,r0,0x10                    ; 0804DFF8
cmp   r4,0x0                        ; 0804DFFA
beq   @@Code0804E060                ; 0804DFFC
mov   r0,r7                         ; 0804DFFE
bl    Sub0804B29C                   ; 0804E000
cmp   r4,0x0                        ; 0804E004
blt   @@Code0804E048                ; 0804E006
mov   r0,r7                         ; 0804E008
bl    Sub0804ACB4                   ; 0804E00A
lsl   r0,r0,0x18                    ; 0804E00E
cmp   r0,0x0                        ; 0804E010
bne   @@Code0804E020                ; 0804E012
mov   r0,r7                         ; 0804E014
bl    Sub0804AD64                   ; 0804E016
lsl   r0,r0,0x18                    ; 0804E01A
cmp   r0,0x0                        ; 0804E01C
beq   @@Code0804E060                ; 0804E01E
@@Code0804E020:
ldrh  r0,[r7,0x38]                  ; 0804E020
mov   r2,0x80                       ; 0804E022
lsl   r2,r2,0x1                     ; 0804E024
mov   r1,r2                         ; 0804E026
orr   r1,r0                         ; 0804E028
strh  r1,[r7,0x38]                  ; 0804E02A
ldr   r0,=0xFFFFFEA7                ; 0804E02C
add   r0,r9                         ; 0804E02E
lsl   r0,r0,0x10                    ; 0804E030
lsr   r0,r0,0x10                    ; 0804E032
cmp   r0,0x1                        ; 0804E034
bhi   @@Code0804E060                ; 0804E036
mov   r0,r7                         ; 0804E038
bl    Sub080A9D40                   ; 0804E03A
b     @@Code0804E060                ; 0804E03E
.pool                               ; 0804E040

@@Code0804E048:
mov   r0,r7                         ; 0804E048
bl    Sub0804AEDC                   ; 0804E04A
lsl   r0,r0,0x18                    ; 0804E04E
cmp   r0,0x0                        ; 0804E050
beq   @@Code0804E060                ; 0804E052
ldrh  r1,[r7,0x38]                  ; 0804E054
mov   r3,0x80                       ; 0804E056
lsl   r3,r3,0x2                     ; 0804E058
mov   r0,r3                         ; 0804E05A
orr   r0,r1                         ; 0804E05C
strh  r0,[r7,0x38]                  ; 0804E05E
@@Code0804E060:
mov   r1,r7                         ; 0804E060
add   r1,0x6A                       ; 0804E062
mov   r0,0x0                        ; 0804E064
strh  r0,[r1]                       ; 0804E066
sub   r1,0x2A                       ; 0804E068
strh  r0,[r1]                       ; 0804E06A
str   r0,[r7,0x10]                  ; 0804E06C
mov   r0,0x80                       ; 0804E06E
lsl   r0,r0,0x3                     ; 0804E070
str   r0,[r7,0x1C]                  ; 0804E072
mov   r0,0x40                       ; 0804E074
str   r0,[r7,0x14]                  ; 0804E076
ldrh  r1,[r7,0x28]                  ; 0804E078
ldr   r0,=0xF83F                    ; 0804E07A
and   r0,r1                         ; 0804E07C
mov   r1,0x40                       ; 0804E07E
orr   r0,r1                         ; 0804E080
strh  r0,[r7,0x28]                  ; 0804E082
mov   r1,r7                         ; 0804E084
add   r1,0x5E                       ; 0804E086
mov   r0,0x20                       ; 0804E088
@@Code0804E08A:
strh  r0,[r1]                       ; 0804E08A
@@Code0804E08C:
ldr   r2,=0x03006D80                ; 0804E08C
mov   r3,r2                         ; 0804E08E
add   r3,0x62                       ; 0804E090
ldr   r4,[r2,0x8]                   ; 0804E092
ldrh  r1,[r3]                       ; 0804E094
mov   r0,r4                         ; 0804E096
eor   r0,r1                         ; 0804E098
lsl   r0,r0,0x10                    ; 0804E09A
mov   r8,r2                         ; 0804E09C
cmp   r0,0x0                        ; 0804E09E
blt   @@Code0804E0B4                ; 0804E0A0
mov   r1,0x0                        ; 0804E0A2
ldsh  r0,[r3,r1]                    ; 0804E0A4
add   r0,r0,r4                      ; 0804E0A6
b     @@Code0804E0B8                ; 0804E0A8
.pool                               ; 0804E0AA

@@Code0804E0B4:
mov   r2,0x0                        ; 0804E0B4
ldsh  r0,[r3,r2]                    ; 0804E0B6
@@Code0804E0B8:
str   r0,[r7,0x8]                   ; 0804E0B8
mov   r3,r8                         ; 0804E0BA
add   r3,0x64                       ; 0804E0BC
ldr   r4,=0xFFFFFD00                ; 0804E0BE
mov   r0,r4                         ; 0804E0C0
ldrh  r1,[r3]                       ; 0804E0C2
add   r0,r0,r1                      ; 0804E0C4
lsl   r0,r0,0x10                    ; 0804E0C6
lsr   r6,r0,0x10                    ; 0804E0C8
mov   r0,0xCD                       ; 0804E0CA
lsl   r0,r0,0x1                     ; 0804E0CC
cmp   r9,r0                         ; 0804E0CE
bne   @@Code0804E0FA                ; 0804E0D0
mov   r1,r7                         ; 0804E0D2
add   r1,0x6C                       ; 0804E0D4
mov   r2,0x0                        ; 0804E0D6
mov   r0,0x1                        ; 0804E0D8
strh  r0,[r1]                       ; 0804E0DA
mov   r0,r7                         ; 0804E0DC
add   r0,0x72                       ; 0804E0DE
strh  r2,[r0]                       ; 0804E0E0
ldrh  r1,[r7,0x2A]                  ; 0804E0E2
ldr   r0,=0x07FF                    ; 0804E0E4
and   r0,r1                         ; 0804E0E6
mov   r2,0x80                       ; 0804E0E8
lsl   r2,r2,0x4                     ; 0804E0EA
mov   r1,r2                         ; 0804E0EC
orr   r0,r1                         ; 0804E0EE
strh  r0,[r7,0x2A]                  ; 0804E0F0
mov   r1,r7                         ; 0804E0F2
add   r1,0x48                       ; 0804E0F4
mov   r0,0x8                        ; 0804E0F6
strh  r0,[r1]                       ; 0804E0F8
@@Code0804E0FA:
lsl   r0,r6,0x10                    ; 0804E0FA
cmp   r0,0x0                        ; 0804E0FC
bge   @@Code0804E110                ; 0804E0FE
mov   r4,0xFE                       ; 0804E100
lsl   r4,r4,0x8                     ; 0804E102
mov   r0,r4                         ; 0804E104
b     @@Code0804E116                ; 0804E106
.pool                               ; 0804E108

@@Code0804E110:
mov   r1,0xFE                       ; 0804E110
lsl   r1,r1,0x8                     ; 0804E112
add   r0,r6,r1                      ; 0804E114
@@Code0804E116:
ldrh  r3,[r3]                       ; 0804E116
add   r0,r0,r3                      ; 0804E118
lsl   r0,r0,0x10                    ; 0804E11A
asr   r0,r0,0x10                    ; 0804E11C
str   r0,[r7,0xC]                   ; 0804E11E
ldr   r0,=0xFFFFFEE2                ; 0804E120
add   r0,r9                         ; 0804E122
lsl   r0,r0,0x10                    ; 0804E124
lsr   r0,r0,0x10                    ; 0804E126
cmp   r0,0x2                        ; 0804E128
bhi   @@Code0804E134                ; 0804E12A
mov   r0,0x0                        ; 0804E12C
b     @@Code0804E13E                ; 0804E12E
.pool                               ; 0804E130

@@Code0804E134:
mov   r0,r8                         ; 0804E134
add   r0,0x42                       ; 0804E136
ldrh  r0,[r0]                       ; 0804E138
mov   r1,0x2                        ; 0804E13A
eor   r0,r1                         ; 0804E13C
@@Code0804E13E:
strh  r0,[r7,0x36]                  ; 0804E13E
ldr   r1,=0x03002200                ; 0804E140
ldr   r0,[r7]                       ; 0804E142
asr   r0,r0,0x8                     ; 0804E144
ldr   r3,=0x47E4                    ; 0804E146
add   r2,r1,r3                      ; 0804E148
ldrh  r2,[r2]                       ; 0804E14A
sub   r0,r0,r2                      ; 0804E14C
ldr   r4,=0x4058                    ; 0804E14E
add   r1,r1,r4                      ; 0804E150
strh  r0,[r1]                       ; 0804E152
mov   r0,0x62                       ; 0804E154
bl    PlayYISound                   ; 0804E156
mov   r0,r7                         ; 0804E15A
bl    Sub0804DB24                   ; 0804E15C
b     @@Return                      ; 0804E160
.pool                               ; 0804E162

@@Code0804E170:
ldr   r0,[sp]                       ; 0804E170
ldrh  r1,[r0,0x4]                   ; 0804E172
ldrh  r0,[r0,0x6]                   ; 0804E174
mov   r6,r0                         ; 0804E176
orr   r6,r1                         ; 0804E178
cmp   r6,0x0                        ; 0804E17A
beq   @@Code0804E186                ; 0804E17C
@@Code0804E17E:
mov   r0,r7                         ; 0804E17E
bl    ClearSpriteSlot               ; 0804E180
b     @@Return                      ; 0804E184

@@Code0804E186:
mov   r0,r4                         ; 0804E186
add   r0,0xD0                       ; 0804E188
ldrh  r0,[r0]                       ; 0804E18A
cmp   r0,0x0                        ; 0804E18C
beq   @@Code0804E196                ; 0804E18E
cmp   r0,0x43                       ; 0804E190
bhi   @@Code0804E196                ; 0804E192
b     @@Return                      ; 0804E194
@@Code0804E196:
mov   r1,0x28                       ; 0804E196
ldsh  r0,[r7,r1]                    ; 0804E198
cmp   r0,0x0                        ; 0804E19A
bge   @@Code0804E1A0                ; 0804E19C
b     @@Code0804E2F4                ; 0804E19E
@@Code0804E1A0:
mov   r0,r7                         ; 0804E1A0
bl    Sub080CAD28                   ; 0804E1A2
mov   r0,r7                         ; 0804E1A6
mov   r1,0x8D                       ; 0804E1A8
bl    Sub0804A880                   ; 0804E1AA
mov   r0,r7                         ; 0804E1AE
bl    Sub0804B29C                   ; 0804E1B0
mov   r2,r9                         ; 0804E1B4
cmp   r2,0x8B                       ; 0804E1B6
bne   @@Code0804E20C                ; 0804E1B8
mov   r0,r7                         ; 0804E1BA
bl    ClearSpriteSlot               ; 0804E1BC
mov   r0,0x87                       ; 0804E1C0
mov   r1,r10                        ; 0804E1C2
bl    Sub0804A1A0                   ; 0804E1C4  Spawn sprite in lowest slot (max r1)
lsl   r0,r0,0x18                    ; 0804E1C8
lsr   r0,r0,0x18                    ; 0804E1CA
mov   r10,r0                        ; 0804E1CC
cmp   r0,0xFF                       ; 0804E1CE
bne   @@Code0804E1D4                ; 0804E1D0
b     @@Return                      ; 0804E1D2
@@Code0804E1D4:
ldr   r1,=0x03007240                ; 0804E1D4  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0804E1D6
mov   r3,r10                        ; 0804E1D8
mul   r3,r0                         ; 0804E1DA
mov   r0,r3                         ; 0804E1DC
mov   r2,0x95                       ; 0804E1DE
lsl   r2,r2,0x2                     ; 0804E1E0
add   r0,r0,r2                      ; 0804E1E2
ldr   r1,[r1]                       ; 0804E1E4
add   r7,r1,r0                      ; 0804E1E6
ldr   r1,=Data08172064              ; 0804E1E8
mov   r0,r4                         ; 0804E1EA
add   r0,0x42                       ; 0804E1EC
ldrh  r0,[r0]                       ; 0804E1EE
lsr   r0,r0,0x1                     ; 0804E1F0
lsl   r0,r0,0x2                     ; 0804E1F2
add   r0,r0,r1                      ; 0804E1F4
ldr   r0,[r0]                       ; 0804E1F6
str   r0,[r7,0x8]                   ; 0804E1F8
ldr   r0,=0xFFFFFE00                ; 0804E1FA
str   r0,[r7,0xC]                   ; 0804E1FC
b     @@Code0804E2BC                ; 0804E1FE
.pool                               ; 0804E200

@@Code0804E20C:
ldr   r0,=0x0129                    ; 0804E20C
cmp   r9,r0                         ; 0804E20E
bne   @@Code0804E220                ; 0804E210
mov   r0,r7                         ; 0804E212
bl    Sub0805F800                   ; 0804E214
b     @@Return                      ; 0804E218
.pool                               ; 0804E21A

@@Code0804E220:
ldr   r0,=0x012B                    ; 0804E220
cmp   r9,r0                         ; 0804E222
beq   @@Code0804E236                ; 0804E224
mov   r6,0x25                       ; 0804E226
ldr   r0,=0x03007240                ; 0804E228  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804E22A
ldr   r3,=0x29A2                    ; 0804E22C
add   r0,r0,r3                      ; 0804E22E
ldrh  r0,[r0]                       ; 0804E230
cmp   r0,0xD                        ; 0804E232
bne   @@Code0804E238                ; 0804E234
@@Code0804E236:
mov   r6,0x2B                       ; 0804E236
@@Code0804E238:
ldrh  r0,[r7,0x32]                  ; 0804E238
cmp   r0,0x37                       ; 0804E23A
bne   @@Code0804E26A                ; 0804E23C
mov   r0,r7                         ; 0804E23E
add   r0,0x6E                       ; 0804E240
ldrh  r0,[r0]                       ; 0804E242
cmp   r0,0x3                        ; 0804E244
bne   @@Code0804E26A                ; 0804E246
ldr   r4,=0x0300702C                ; 0804E248  Sprite RAM structs (03002460)
ldr   r0,[r4]                       ; 0804E24A
ldr   r2,=0x1893                    ; 0804E24C
add   r1,r0,r2                      ; 0804E24E
ldr   r3,=0x156E                    ; 0804E250
add   r0,r0,r3                      ; 0804E252
ldrb  r1,[r1]                       ; 0804E254
ldrb  r0,[r0]                       ; 0804E256
cmp   r1,r0                         ; 0804E258
bne   @@Code0804E26A                ; 0804E25A
bl    Sub0805F350                   ; 0804E25C
ldr   r0,[r4]                       ; 0804E260
ldr   r4,=0x1893                    ; 0804E262
add   r0,r0,r4                      ; 0804E264
mov   r1,0xFF                       ; 0804E266
strb  r1,[r0]                       ; 0804E268
@@Code0804E26A:
mov   r0,0x0                        ; 0804E26A
strh  r0,[r7,0x24]                  ; 0804E26C
mov   r0,r6                         ; 0804E26E
mov   r1,r10                        ; 0804E270
bl    Sub0804A1A0                   ; 0804E272  Spawn sprite in lowest slot (max r1)
lsl   r0,r0,0x18                    ; 0804E276
lsr   r0,r0,0x18                    ; 0804E278
mov   r10,r0                        ; 0804E27A
cmp   r0,0xFF                       ; 0804E27C
bne   @@Code0804E282                ; 0804E27E
b     @@Return                      ; 0804E280
@@Code0804E282:
ldr   r1,=0x03007240                ; 0804E282  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0804E284
mov   r2,r10                        ; 0804E286
mul   r2,r0                         ; 0804E288
mov   r0,r2                         ; 0804E28A
mov   r3,0x95                       ; 0804E28C
lsl   r3,r3,0x2                     ; 0804E28E
add   r0,r0,r3                      ; 0804E290
ldr   r1,[r1]                       ; 0804E292
add   r7,r1,r0                      ; 0804E294
ldr   r5,=0x0300702C                ; 0804E296  Sprite RAM structs (03002460)
ldr   r0,[r5]                       ; 0804E298
ldr   r4,=0x156E                    ; 0804E29A
add   r0,r0,r4                      ; 0804E29C
ldrb  r6,[r0]                       ; 0804E29E
mov   r1,r10                        ; 0804E2A0
strb  r1,[r0]                       ; 0804E2A2
mov   r0,0x8                        ; 0804E2A4
strh  r0,[r7,0x24]                  ; 0804E2A6
mov   r0,r7                         ; 0804E2A8
bl    AddToEggSlots                 ; 0804E2AA
ldr   r0,[r5]                       ; 0804E2AE
add   r0,r0,r4                      ; 0804E2B0
strb  r6,[r0]                       ; 0804E2B2
mov   r1,r7                         ; 0804E2B4
add   r1,0x6E                       ; 0804E2B6
ldr   r0,=0xFFA1                    ; 0804E2B8
strh  r0,[r1]                       ; 0804E2BA
@@Code0804E2BC:
ldr   r1,=0x03006D80                ; 0804E2BC
ldr   r0,[r1]                       ; 0804E2BE
str   r0,[r7]                       ; 0804E2C0
ldr   r0,[r1,0x4]                   ; 0804E2C2
mov   r2,0x80                       ; 0804E2C4
lsl   r2,r2,0x5                     ; 0804E2C6
add   r0,r0,r2                      ; 0804E2C8
str   r0,[r7,0x4]                   ; 0804E2CA
add   r1,0x42                       ; 0804E2CC
ldrh  r0,[r1]                       ; 0804E2CE
strh  r0,[r7,0x36]                  ; 0804E2D0
b     @@Return                      ; 0804E2D2
.pool                               ; 0804E2D4

@@Code0804E2F4:
mov   r0,0xD1                       ; 0804E2F4
lsl   r0,r0,0x1                     ; 0804E2F6
cmp   r9,r0                         ; 0804E2F8
bne   @@Code0804E364                ; 0804E2FA
ldr   r1,=0x03002200                ; 0804E2FC
ldrh  r0,[r4,0x2C]                  ; 0804E2FE
ldr   r3,=0x4058                    ; 0804E300
add   r1,r1,r3                      ; 0804E302
strh  r0,[r1]                       ; 0804E304
mov   r0,0x78                       ; 0804E306
bl    PlayYISound                   ; 0804E308
ldr   r4,=0x03007240                ; 0804E30C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r4]                       ; 0804E30E
ldr   r0,[r7]                       ; 0804E310
asr   r0,r0,0x8                     ; 0804E312
ldr   r3,=0x29D2                    ; 0804E314
add   r1,r2,r3                      ; 0804E316
strh  r0,[r1]                       ; 0804E318
ldr   r0,[r7,0x4]                   ; 0804E31A
asr   r0,r0,0x8                     ; 0804E31C
add   r3,0x4                        ; 0804E31E
add   r1,r2,r3                      ; 0804E320
strh  r0,[r1]                       ; 0804E322
ldr   r0,=0x29DA                    ; 0804E324
add   r2,r2,r0                      ; 0804E326
mov   r0,0x3                        ; 0804E328
strh  r0,[r2]                       ; 0804E32A
bl    Sub0804A428                   ; 0804E32C
ldr   r1,[r4]                       ; 0804E330
ldr   r3,=0x29B6                    ; 0804E332
add   r2,r1,r3                      ; 0804E334
ldrh  r0,[r2]                       ; 0804E336
add   r0,0xA                        ; 0804E338
strh  r0,[r2]                       ; 0804E33A
ldr   r4,=0x2A6E                    ; 0804E33C
add   r1,r1,r4                      ; 0804E33E
mov   r0,0x82                       ; 0804E340
strh  r0,[r1]                       ; 0804E342
b     @@Code0804E3F8                ; 0804E344
.pool                               ; 0804E346

@@Code0804E364:
ldr   r0,=0x0115                    ; 0804E364
cmp   r9,r0                         ; 0804E366
bne   @@Code0804E3D4                ; 0804E368
ldrh  r1,[r7,0x2C]                  ; 0804E36A
mov   r0,0x2                        ; 0804E36C
and   r0,r1                         ; 0804E36E
cmp   r0,0x0                        ; 0804E370
beq   @@Code0804E3AE                ; 0804E372
ldr   r3,=0x03002200                ; 0804E374
ldr   r0,=0x48D6                    ; 0804E376
add   r2,r3,r0                      ; 0804E378
ldrh  r1,[r2]                       ; 0804E37A
add   r0,r1,0x1                     ; 0804E37C
strh  r0,[r2]                       ; 0804E37E
ldrh  r0,[r4,0x2C]                  ; 0804E380
ldr   r2,=0x4058                    ; 0804E382
add   r3,r3,r2                      ; 0804E384
strh  r0,[r3]                       ; 0804E386
sub   r1,0x13                       ; 0804E388
lsl   r1,r1,0x10                    ; 0804E38A
cmp   r1,0x0                        ; 0804E38C
blt   @@Code0804E3A4                ; 0804E38E
mov   r0,0x7A                       ; 0804E390
b     @@Code0804E3A6                ; 0804E392
.pool                               ; 0804E394

@@Code0804E3A4:
mov   r0,0x79                       ; 0804E3A4
@@Code0804E3A6:
mov   r1,r3                         ; 0804E3A6
bl    PlayYISound                   ; 0804E3A8
b     @@Code0804E3BE                ; 0804E3AC
@@Code0804E3AE:
ldr   r1,=0x03002200                ; 0804E3AE
ldrh  r0,[r4,0x2C]                  ; 0804E3B0
ldr   r3,=0x4058                    ; 0804E3B2
add   r1,r1,r3                      ; 0804E3B4
strh  r0,[r1]                       ; 0804E3B6
mov   r0,0x6B                       ; 0804E3B8
bl    PlayYISound                   ; 0804E3BA
@@Code0804E3BE:
bl    Sub0804A55C                   ; 0804E3BE
mov   r0,r7                         ; 0804E3C2
bl    Sub0804C4B0                   ; 0804E3C4
b     @@Code0804E408                ; 0804E3C8
.pool                               ; 0804E3CA

@@Code0804E3D4:
mov   r0,0xD9                       ; 0804E3D4
lsl   r0,r0,0x1                     ; 0804E3D6
cmp   r9,r0                         ; 0804E3D8
bne   @@Code0804E3F8                ; 0804E3DA
ldr   r4,=0x03002200                ; 0804E3DC
mov   r1,r8                         ; 0804E3DE
ldrh  r0,[r1,0x2C]                  ; 0804E3E0
ldr   r2,=0x4058                    ; 0804E3E2
add   r1,r4,r2                      ; 0804E3E4
strh  r0,[r1]                       ; 0804E3E6
mov   r0,0x6B                       ; 0804E3E8
bl    PlayYISound                   ; 0804E3EA
ldr   r3,=0x489C                    ; 0804E3EE
add   r4,r4,r3                      ; 0804E3F0
ldrh  r0,[r4]                       ; 0804E3F2
add   r0,0x1                        ; 0804E3F4
strh  r0,[r4]                       ; 0804E3F6
@@Code0804E3F8:
ldr   r0,=0x0300702C                ; 0804E3F8  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804E3FA
ldr   r4,=0x156E                    ; 0804E3FC
add   r0,r0,r4                      ; 0804E3FE
ldrb  r1,[r0]                       ; 0804E400
mov   r0,r7                         ; 0804E402
bl    Sub0804B784                   ; 0804E404
@@Code0804E408:
mov   r0,r7                         ; 0804E408
bl    ClearSpriteSlot               ; 0804E40A
@@Return:
add   sp,0x4                        ; 0804E40E
pop   {r3-r5}                       ; 0804E410
mov   r8,r3                         ; 0804E412
mov   r9,r4                         ; 0804E414
mov   r10,r5                        ; 0804E416
pop   {r4-r7}                       ; 0804E418
pop   {r0}                          ; 0804E41A
bx    r0                            ; 0804E41C
.pool                               ; 0804E41E

SpriteStatus5:
; Sprite status 5: on Yoshi's back
push  {r4-r5,lr}                    ; 0804E434
mov   r4,r0                         ; 0804E436
bl    SpriteStatus8_Main            ; 0804E438
mov   r0,0x0                        ; 0804E43C
str   r0,[r4,0xC]                   ; 0804E43E
str   r0,[r4,0x8]                   ; 0804E440
mov   r1,r4                         ; 0804E442
add   r1,0x48                       ; 0804E444
ldrh  r0,[r1]                       ; 0804E446
cmp   r0,0x0                        ; 0804E448
beq   @@Code0804E46C                ; 0804E44A
mov   r1,0x10                       ; 0804E44C
sub   r1,r1,r0                      ; 0804E44E
lsl   r1,r1,0xF                     ; 0804E450
lsr   r1,r1,0x10                    ; 0804E452
add   r0,r1,0x1                     ; 0804E454
lsl   r0,r0,0x10                    ; 0804E456
lsr   r1,r0,0x10                    ; 0804E458
cmp   r1,0x3                        ; 0804E45A
bls   @@Code0804E460                ; 0804E45C
mov   r1,0x3                        ; 0804E45E
@@Code0804E460:
ldr   r0,=0x03006D80                ; 0804E460
add   r0,0x40                       ; 0804E462
ldrh  r2,[r0]                       ; 0804E464
cmp   r1,r2                         ; 0804E466
blo   @@Code0804E46C                ; 0804E468
strh  r1,[r0]                       ; 0804E46A
@@Code0804E46C:
ldr   r1,=Data081AB4B2              ; 0804E46C
ldr   r2,=0x03006D80                ; 0804E46E
ldrh  r0,[r2,0x3C]                  ; 0804E470
add   r0,r0,r1                      ; 0804E472
mov   r1,0x0                        ; 0804E474
ldsb  r1,[r0,r1]                    ; 0804E476
lsl   r1,r1,0x8                     ; 0804E478
ldr   r0,[r2,0x4]                   ; 0804E47A
add   r0,r0,r1                      ; 0804E47C
str   r0,[r4,0x4]                   ; 0804E47E
mov   r0,r2                         ; 0804E480
add   r0,0x96                       ; 0804E482
ldrb  r0,[r0]                       ; 0804E484
sub   r0,0x1                        ; 0804E486
lsl   r0,r0,0x18                    ; 0804E488
lsr   r1,r0,0x18                    ; 0804E48A
ldr   r3,=Data081AB2AE              ; 0804E48C
cmp   r0,0x0                        ; 0804E48E
blt   @@Code0804E4A4                ; 0804E490
ldrh  r0,[r2,0x3C]                  ; 0804E492
add   r0,r0,r3                      ; 0804E494
ldrb  r1,[r0]                       ; 0804E496
mov   r0,0x40                       ; 0804E498
and   r0,r1                         ; 0804E49A
mov   r1,0x4                        ; 0804E49C
cmp   r0,0x0                        ; 0804E49E
beq   @@Code0804E4A4                ; 0804E4A0
mov   r1,0x2                        ; 0804E4A2
@@Code0804E4A4:
mov   r0,r4                         ; 0804E4A4
add   r0,0x94                       ; 0804E4A6
strb  r1,[r0]                       ; 0804E4A8
mov   r5,r2                         ; 0804E4AA
ldrh  r0,[r5,0x3C]                  ; 0804E4AC
add   r0,r0,r3                      ; 0804E4AE
ldrb  r1,[r0]                       ; 0804E4B0
mov   r0,0xBF                       ; 0804E4B2
and   r0,r1                         ; 0804E4B4
lsl   r0,r0,0x18                    ; 0804E4B6
asr   r0,r0,0x8                     ; 0804E4B8
lsr   r1,r0,0x10                    ; 0804E4BA
cmp   r0,0x0                        ; 0804E4BC
bge   @@Code0804E4C8                ; 0804E4BE
mov   r0,0x40                       ; 0804E4C0
orr   r1,r0                         ; 0804E4C2
lsl   r0,r1,0x10                    ; 0804E4C4
lsr   r1,r0,0x10                    ; 0804E4C6
@@Code0804E4C8:
mov   r0,r5                         ; 0804E4C8
add   r0,0x42                       ; 0804E4CA
ldrh  r3,[r0]                       ; 0804E4CC
cmp   r3,0x0                        ; 0804E4CE
bne   @@Code0804E4D8                ; 0804E4D0
neg   r0,r1                         ; 0804E4D2
lsl   r0,r0,0x10                    ; 0804E4D4
lsr   r1,r0,0x10                    ; 0804E4D6
@@Code0804E4D8:
lsl   r1,r1,0x10                    ; 0804E4D8
asr   r1,r1,0x8                     ; 0804E4DA
ldr   r0,[r2]                       ; 0804E4DC
add   r0,r0,r1                      ; 0804E4DE
str   r0,[r4]                       ; 0804E4E0
strh  r3,[r4,0x36]                  ; 0804E4E2
ldr   r1,=StdSprRideYoshiPtrs       ; 0804E4E4
ldrh  r0,[r4,0x32]                  ; 0804E4E6
lsl   r0,r0,0x2                     ; 0804E4E8
add   r0,r0,r1                      ; 0804E4EA
ldr   r1,[r0]                       ; 0804E4EC
mov   r0,r4                         ; 0804E4EE
bl    Sub_bx_r1                     ; 0804E4F0
pop   {r4-r5}                       ; 0804E4F4
pop   {r0}                          ; 0804E4F6
bx    r0                            ; 0804E4F8
.pool                               ; 0804E4FA

SpriteStatus6:
; Sprite status 6
push  {r4-r5,lr}                    ; 0804E50C
mov   r5,r0                         ; 0804E50E
ldr   r0,=0x03007240                ; 0804E510  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r0]                       ; 0804E512
ldr   r0,=0x2708                    ; 0804E514
add   r4,r4,r0                      ; 0804E516
mov   r0,r5                         ; 0804E518
bl    SpriteStatus8_Main            ; 0804E51A
ldrh  r0,[r4,0x28]                  ; 0804E51E
cmp   r0,0x0                        ; 0804E520
bne   @@Code0804E530                ; 0804E522
mov   r0,r5                         ; 0804E524
bl    DespawnSprite                 ; 0804E526
mov   r0,r5                         ; 0804E52A
bl    Sub0804A900                   ; 0804E52C
@@Code0804E530:
pop   {r4-r5}                       ; 0804E530
pop   {r0}                          ; 0804E532
bx    r0                            ; 0804E534
.pool                               ; 0804E536

SpriteStatus7:
; Sprite status 7
push  {lr}                          ; 0804E540
ldr   r2,=StdSprStatus7Ptrs         ; 0804E542
ldrh  r1,[r0,0x32]                  ; 0804E544
lsl   r1,r1,0x2                     ; 0804E546
add   r1,r1,r2                      ; 0804E548
ldr   r1,[r1]                       ; 0804E54A
bl    Sub_bx_r1                     ; 0804E54C
pop   {r0}                          ; 0804E550
bx    r0                            ; 0804E552
.pool                               ; 0804E554

SpriteStatus9:
; Sprite status 9: dying to fire
push  {r4-r6,lr}                    ; 0804E558
mov   r5,r0                         ; 0804E55A
ldr   r6,=0x03007240                ; 0804E55C  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r4,[r6]                       ; 0804E55E
ldr   r0,=0x2708                    ; 0804E560
add   r4,r4,r0                      ; 0804E562
mov   r0,r5                         ; 0804E564
bl    SpriteStatus8_Main            ; 0804E566
ldrh  r0,[r4,0x28]                  ; 0804E56A
cmp   r0,0x0                        ; 0804E56C
bne   @@Code0804E5FC                ; 0804E56E
mov   r0,0x60                       ; 0804E570
strh  r0,[r5,0x26]                  ; 0804E572
ldrh  r1,[r5,0x28]                  ; 0804E574
ldr   r0,=0xFFE0                    ; 0804E576
and   r0,r1                         ; 0804E578
strh  r0,[r5,0x28]                  ; 0804E57A
ldrh  r1,[r5,0x2A]                  ; 0804E57C
ldr   r0,=0xFFF3                    ; 0804E57E
and   r0,r1                         ; 0804E580
mov   r1,0x4                        ; 0804E582
orr   r0,r1                         ; 0804E584
strh  r0,[r5,0x2A]                  ; 0804E586
ldrh  r0,[r5,0x2C]                  ; 0804E588
mov   r1,0xCF                       ; 0804E58A
and   r1,r0                         ; 0804E58C
mov   r0,0x20                       ; 0804E58E
orr   r1,r0                         ; 0804E590
mov   r0,r5                         ; 0804E592
add   r0,0xA1                       ; 0804E594
ldrb  r0,[r0]                       ; 0804E596
sub   r0,0x1                        ; 0804E598
lsl   r0,r0,0x18                    ; 0804E59A
cmp   r0,0x0                        ; 0804E59C
bge   @@Code0804E5A4                ; 0804E59E
mov   r0,0x30                       ; 0804E5A0
orr   r1,r0                         ; 0804E5A2
@@Code0804E5A4:
strh  r1,[r5,0x2C]                  ; 0804E5A4
mov   r1,r5                         ; 0804E5A6
add   r1,0x94                       ; 0804E5A8
mov   r0,0x0                        ; 0804E5AA
strb  r0,[r1]                       ; 0804E5AC
mov   r0,0x40                       ; 0804E5AE
str   r0,[r5,0x14]                  ; 0804E5B0
mov   r0,0x80                       ; 0804E5B2
lsl   r0,r0,0x3                     ; 0804E5B4
str   r0,[r5,0x1C]                  ; 0804E5B6
sub   r1,0x52                       ; 0804E5B8
ldrh  r0,[r1]                       ; 0804E5BA
cmp   r0,0x0                        ; 0804E5BC
bne   @@Code0804E5FC                ; 0804E5BE
mov   r0,0x8                        ; 0804E5C0
strh  r0,[r1]                       ; 0804E5C2
ldr   r0,=0x01E9                    ; 0804E5C4
bl    SpawnSecondarySprite          ; 0804E5C6
lsl   r0,r0,0x18                    ; 0804E5CA
lsr   r1,r0,0x18                    ; 0804E5CC
mov   r0,0xB0                       ; 0804E5CE
mul   r0,r1                         ; 0804E5D0
ldr   r1,=0x1AF4                    ; 0804E5D2
add   r0,r0,r1                      ; 0804E5D4
ldr   r1,[r6]                       ; 0804E5D6
add   r2,r1,r0                      ; 0804E5D8
ldr   r0,[r5]                       ; 0804E5DA
str   r0,[r2]                       ; 0804E5DC
ldr   r0,[r5,0x4]                   ; 0804E5DE
str   r0,[r2,0x4]                   ; 0804E5E0
mov   r1,r2                         ; 0804E5E2
add   r1,0x6A                       ; 0804E5E4
mov   r0,0x5                        ; 0804E5E6
strh  r0,[r1]                       ; 0804E5E8
strh  r0,[r2,0x38]                  ; 0804E5EA
mov   r0,r2                         ; 0804E5EC
add   r0,0x42                       ; 0804E5EE
mov   r1,0x4                        ; 0804E5F0
strh  r1,[r0]                       ; 0804E5F2
add   r0,0x2A                       ; 0804E5F4
strh  r1,[r0]                       ; 0804E5F6
ldr   r0,=0xFFFFFE80                ; 0804E5F8
str   r0,[r2,0xC]                   ; 0804E5FA
@@Code0804E5FC:
pop   {r4-r6}                       ; 0804E5FC
pop   {r0}                          ; 0804E5FE
bx    r0                            ; 0804E600
.pool                               ; 0804E602

Sub0804E620:
push  {lr}                          ; 0804E620
mov   r12,r0                        ; 0804E622
mov   r2,r12                        ; 0804E624
add   r2,0x48                       ; 0804E626
ldrh  r0,[r2]                       ; 0804E628
cmp   r0,0x0                        ; 0804E62A
bne   @@Code0804E656                ; 0804E62C
mov   r1,0x3                        ; 0804E62E
mov   r0,0x3                        ; 0804E630
strh  r0,[r2]                       ; 0804E632
mov   r3,r12                        ; 0804E634
add   r3,0x6C                       ; 0804E636
ldrh  r0,[r3]                       ; 0804E638
add   r0,0x1                        ; 0804E63A
and   r0,r1                         ; 0804E63C
strh  r0,[r3]                       ; 0804E63E
mov   r1,r12                        ; 0804E640
ldrh  r0,[r1,0x2C]                  ; 0804E642
mov   r1,0xF1                       ; 0804E644
and   r1,r0                         ; 0804E646
ldr   r2,=Data0817209A              ; 0804E648
ldrh  r0,[r3]                       ; 0804E64A
add   r0,r0,r2                      ; 0804E64C
ldrb  r0,[r0]                       ; 0804E64E
orr   r0,r1                         ; 0804E650
mov   r1,r12                        ; 0804E652
strh  r0,[r1,0x2C]                  ; 0804E654
@@Code0804E656:
pop   {r0}                          ; 0804E656
bx    r0                            ; 0804E658
.pool                               ; 0804E65A

Sub0804E660:
; sprite 005,007,009,023-025,027-02B,107,1A5-1A9,1B7 status 7 code
push  {r4,lr}                       ; 0804E660
mov   r4,r0                         ; 0804E662
bl    SpriteStatus8_Main            ; 0804E664
ldrh  r1,[r4,0x2A]                  ; 0804E668
ldr   r0,=0xFFF3                    ; 0804E66A
and   r0,r1                         ; 0804E66C
mov   r1,0x4                        ; 0804E66E
mov   r3,0x0                        ; 0804E670
orr   r0,r1                         ; 0804E672
strh  r0,[r4,0x2A]                  ; 0804E674
ldrh  r0,[r4,0x2C]                  ; 0804E676
mov   r2,0xCF                       ; 0804E678
and   r2,r0                         ; 0804E67A
mov   r0,0xA0                       ; 0804E67C
orr   r2,r0                         ; 0804E67E
mov   r0,r4                         ; 0804E680
add   r0,0xA1                       ; 0804E682
ldrb  r0,[r0]                       ; 0804E684
sub   r0,0x1                        ; 0804E686
lsl   r0,r0,0x10                    ; 0804E688
lsr   r0,r0,0x10                    ; 0804E68A
mov   r1,0x80                       ; 0804E68C
and   r0,r1                         ; 0804E68E
cmp   r0,0x0                        ; 0804E690
beq   @@Code0804E698                ; 0804E692
mov   r0,0x30                       ; 0804E694
orr   r2,r0                         ; 0804E696
@@Code0804E698:
strh  r2,[r4,0x2C]                  ; 0804E698
mov   r0,r4                         ; 0804E69A
add   r0,0x94                       ; 0804E69C
strb  r3,[r0]                       ; 0804E69E
mov   r0,0x40                       ; 0804E6A0
str   r0,[r4,0x14]                  ; 0804E6A2
mov   r0,0x80                       ; 0804E6A4
lsl   r0,r0,0x3                     ; 0804E6A6
str   r0,[r4,0x1C]                  ; 0804E6A8
ldrh  r1,[r4,0x26]                  ; 0804E6AA
ldr   r0,=0xF9FF                    ; 0804E6AC
and   r0,r1                         ; 0804E6AE
strh  r0,[r4,0x26]                  ; 0804E6B0
ldrh  r1,[r4,0x28]                  ; 0804E6B2
ldr   r0,=0xFFE0                    ; 0804E6B4
and   r0,r1                         ; 0804E6B6
strh  r0,[r4,0x28]                  ; 0804E6B8
pop   {r4}                          ; 0804E6BA
pop   {r0}                          ; 0804E6BC
bx    r0                            ; 0804E6BE
.pool                               ; 0804E6C0

Sub0804E6CC:
; sprite 030,033,043-044,058,05C,0F3,124,184,19B-19C status 7 code: wrapper for the above subroutine
push  {lr}                          ; 0804E6CC
bl    Sub0804E660                   ; 0804E6CE
pop   {r0}                          ; 0804E6D2
bx    r0                            ; 0804E6D4
.pool                               ; 0804E6D6

Sub0804E6D8:
; sprite 022 status 7 code
push  {r4,lr}                       ; 0804E6D8
mov   r4,r0                         ; 0804E6DA
bl    Sub0804E620                   ; 0804E6DC
mov   r0,r4                         ; 0804E6E0
bl    Sub0804E660                   ; 0804E6E2
pop   {r4}                          ; 0804E6E6
pop   {r0}                          ; 0804E6E8
bx    r0                            ; 0804E6EA

Sub0804E6EC:
push  {r4-r6,lr}                    ; 0804E6EC
mov   r6,r8                         ; 0804E6EE
push  {r6}                          ; 0804E6F0
add   sp,-0xC                       ; 0804E6F2
ldr   r0,=0x03007240                ; 0804E6F4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804E6F6
mov   r8,r0                         ; 0804E6F8
ldr   r1,=0x03002200                ; 0804E6FA
ldr   r2,=0x47E4                    ; 0804E6FC
add   r0,r1,r2                      ; 0804E6FE
mov   r3,0x0                        ; 0804E700
ldsh  r6,[r0,r3]                    ; 0804E702
ldr   r2,=Data0817209E              ; 0804E704
mov   r3,r8                         ; 0804E706
ldrh  r0,[r3,0x1A]                  ; 0804E708
lsl   r0,r0,0x1                     ; 0804E70A
add   r0,r0,r2                      ; 0804E70C
mov   r2,0x0                        ; 0804E70E
ldsh  r3,[r0,r2]                    ; 0804E710
add   r3,r6,r3                      ; 0804E712
asr   r3,r3,0x4                     ; 0804E714
ldr   r0,=0x47EC                    ; 0804E716
add   r1,r1,r0                      ; 0804E718
mov   r2,0x0                        ; 0804E71A
ldsh  r4,[r1,r2]                    ; 0804E71C
mov   r5,r4                         ; 0804E71E
sub   r5,0x30                       ; 0804E720
asr   r5,r5,0x4                     ; 0804E722
ldr   r1,=Data081720A2              ; 0804E724
mov   r2,r8                         ; 0804E726
ldrh  r0,[r2,0x1C]                  ; 0804E728
lsl   r0,r0,0x1                     ; 0804E72A
add   r0,r0,r1                      ; 0804E72C
mov   r1,0x0                        ; 0804E72E
ldsh  r0,[r0,r1]                    ; 0804E730
add   r4,r4,r0                      ; 0804E732
asr   r4,r4,0x4                     ; 0804E734
sub   r6,0x30                       ; 0804E736
asr   r6,r6,0x4                     ; 0804E738
ldr   r2,=0x2968                    ; 0804E73A
add   r8,r2                         ; 0804E73C
mov   r1,r8                         ; 0804E73E
ldr   r0,[r1]                       ; 0804E740
ldr   r1,=0x0201BA00                ; 0804E742
ldr   r2,=0x0201B900                ; 0804E744
str   r5,[sp]                       ; 0804E746
str   r4,[sp,0x4]                   ; 0804E748
str   r6,[sp,0x8]                   ; 0804E74A
bl    FindSpritesToSpawn            ; 0804E74C
add   sp,0xC                        ; 0804E750
pop   {r3}                          ; 0804E752
mov   r8,r3                         ; 0804E754
pop   {r4-r6}                       ; 0804E756
pop   {r0}                          ; 0804E758
bx    r0                            ; 0804E75A
.pool                               ; 0804E75C

Sub0804E780:
push  {r4-r7,lr}                    ; 0804E780
lsl   r0,r0,0x10                    ; 0804E782
lsl   r1,r1,0x10                    ; 0804E784
lsr   r3,r1,0x10                    ; 0804E786
ldr   r2,=0x03007240                ; 0804E788  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r2]                       ; 0804E78A  r1 = [03007240] (0300220C)
ldr   r4,=0x25F8                    ; 0804E78C
add   r5,r1,r4                      ; 0804E78E  r5 = [03007240]+25F8 (03004804)
ldr   r6,=0x2610                    ; 0804E790
add   r4,r1,r6                      ; 0804E792  r4 = [03007240]+2610 (0300481C)
ldr   r1,=0xFE3C0000                ; 0804E794
add   r0,r0,r1                      ; 0804E796  r0 = 013C220C?
lsr   r1,r0,0x10                    ; 0804E798  r1 = 013C?
mov   r6,0x3                        ; 0804E79A
cmp   r4,r5                         ; 0804E79C
blo   @@Code0804E820                ; 0804E79E
lsl   r3,r3,0x1                     ; 0804E7A0
ldr   r0,=0x0201B904                ; 0804E7A2
add   r7,r3,r0                      ; 0804E7A4
ldr   r0,=CmdSprInitPtrs            ; 0804E7A6
mov   r12,r0                        ; 0804E7A8
@@Code0804E7AA:
ldrh  r0,[r4]                       ; 0804E7AA
cmp   r0,0x0                        ; 0804E7AC
bne   @@Code0804E810                ; 0804E7AE
add   r0,r1,0x1                     ; 0804E7B0
strh  r0,[r4]                       ; 0804E7B2
ldr   r1,=0x0201B906                ; 0804E7B4
add   r0,r3,r1                      ; 0804E7B6
ldrh  r0,[r0]                       ; 0804E7B8
strh  r0,[r4,0x2]                   ; 0804E7BA
ldr   r1,[r2]                       ; 0804E7BC
ldr   r2,=0x0201B902                ; 0804E7BE
add   r0,r3,r2                      ; 0804E7C0
ldrh  r2,[r0]                       ; 0804E7C2
ldr   r3,=0x2A12                    ; 0804E7C4
add   r0,r1,r3                      ; 0804E7C6
strh  r2,[r0]                       ; 0804E7C8
ldrh  r0,[r7]                       ; 0804E7CA
ldr   r2,=0x2A16                    ; 0804E7CC
add   r1,r1,r2                      ; 0804E7CE
strh  r0,[r1]                       ; 0804E7D0
ldrh  r0,[r4]                       ; 0804E7D2
sub   r0,0x1                        ; 0804E7D4
lsl   r0,r0,0x2                     ; 0804E7D6
add   r0,r12                        ; 0804E7D8
ldr   r1,[r0]                       ; 0804E7DA
mov   r0,r4                         ; 0804E7DC
bl    Sub_bx_r1                     ; 0804E7DE
mov   r0,0xFF                       ; 0804E7E2
strh  r0,[r4,0x2]                   ; 0804E7E4
b     @@Code0804E820                ; 0804E7E6
.pool                               ; 0804E7E8

@@Code0804E810:
sub   r4,0x8                        ; 0804E810
lsl   r0,r6,0x18                    ; 0804E812
mov   r6,0xFF                       ; 0804E814
lsl   r6,r6,0x18                    ; 0804E816
add   r0,r0,r6                      ; 0804E818
lsr   r6,r0,0x18                    ; 0804E81A
cmp   r4,r5                         ; 0804E81C
bhs   @@Code0804E7AA                ; 0804E81E
@@Code0804E820:
lsl   r0,r6,0x18                    ; 0804E820
asr   r0,r0,0x18                    ; 0804E822
pop   {r4-r7}                       ; 0804E824
pop   {r1}                          ; 0804E826
bx    r1                            ; 0804E828
.pool                               ; 0804E82A

Sub0804E82C:
push  {r4-r6,lr}                    ; 0804E82C
mov   r4,r1                         ; 0804E82E
lsl   r0,r0,0x10                    ; 0804E830
lsr   r5,r0,0x10                    ; 0804E832
ldr   r1,=0x03007240                ; 0804E834  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r1]                       ; 0804E836
ldr   r2,=0x25F8                    ; 0804E838
add   r3,r0,r2                      ; 0804E83A
ldr   r6,=0x2618                    ; 0804E83C
add   r2,r0,r6                      ; 0804E83E
@@Code0804E840:
ldrh  r0,[r3]                       ; 0804E840
cmp   r0,0x0                        ; 0804E842
beq   @@Code0804E85C                ; 0804E844
add   r3,0x8                        ; 0804E846
cmp   r3,r2                         ; 0804E848
blo   @@Code0804E840                ; 0804E84A
mov   r0,0x1                        ; 0804E84C
b     @@Code0804E88A                ; 0804E84E
.pool                               ; 0804E850

@@Code0804E85C:
add   r0,r5,0x1                     ; 0804E85C
strh  r0,[r3]                       ; 0804E85E
ldrh  r0,[r4,0x6]                   ; 0804E860
strh  r0,[r3,0x2]                   ; 0804E862
ldr   r1,[r1]                       ; 0804E864
ldrh  r2,[r4,0x2]                   ; 0804E866
ldr   r5,=0x2A12                    ; 0804E868
add   r0,r1,r5                      ; 0804E86A
strh  r2,[r0]                       ; 0804E86C
ldrh  r0,[r4,0x4]                   ; 0804E86E
ldr   r6,=0x2A16                    ; 0804E870
add   r1,r1,r6                      ; 0804E872
strh  r0,[r1]                       ; 0804E874
ldr   r1,=CmdSprInitPtrs            ; 0804E876
ldrh  r0,[r3]                       ; 0804E878
sub   r0,0x1                        ; 0804E87A
lsl   r0,r0,0x2                     ; 0804E87C
add   r0,r0,r1                      ; 0804E87E
ldr   r1,[r0]                       ; 0804E880
mov   r0,r3                         ; 0804E882
bl    Sub_bx_r1                     ; 0804E884
mov   r0,0x0                        ; 0804E888
@@Code0804E88A:
pop   {r4-r6}                       ; 0804E88A
pop   {r1}                          ; 0804E88C
bx    r1                            ; 0804E88E
.pool                               ; 0804E890

Sub0804E89C:
push  {r4-r6,lr}                    ; 0804E89C
mov   r4,0xFF                       ; 0804E89E
ldr   r0,=0x03007240                ; 0804E8A0  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804E8A2
mov   r2,0xC1                       ; 0804E8A4
lsl   r2,r2,0x2                     ; 0804E8A6
add   r1,r0,r2                      ; 0804E8A8
mov   r2,0x1                        ; 0804E8AA
ldr   r6,=StdSprData08192B8E        ; 0804E8AC
ldr   r5,=0x010F                    ; 0804E8AE
@@Code0804E8B0:
ldrh  r0,[r1,0x32]                  ; 0804E8B0  sprite ID
add   r0,r0,r6                      ; 0804E8B2
ldrb  r3,[r0]                       ; 0804E8B4
ldrb  r0,[r0]                       ; 0804E8B6
lsl   r0,r0,0x18                    ; 0804E8B8
asr   r0,r0,0x18                    ; 0804E8BA
cmp   r0,0x0                        ; 0804E8BC
bge   @@Code0804E8EE                ; 0804E8BE
ldrh  r0,[r1,0x22]                  ; 0804E8C0
add   r0,0x20                       ; 0804E8C2
lsl   r0,r0,0x10                    ; 0804E8C4
lsr   r0,r0,0x10                    ; 0804E8C6
cmp   r0,0xDF                       ; 0804E8C8
bhi   @@Code0804E8D8                ; 0804E8CA
ldrh  r0,[r1,0x20]                  ; 0804E8CC
add   r0,0x20                       ; 0804E8CE
lsl   r0,r0,0x10                    ; 0804E8D0
lsr   r0,r0,0x10                    ; 0804E8D2
cmp   r0,r5                         ; 0804E8D4
bls   @@Code0804E8E8                ; 0804E8D6
@@Code0804E8D8:
mov   r0,r2                         ; 0804E8D8
b     @@Code0804E8FC                ; 0804E8DA
.pool                               ; 0804E8DC

@@Code0804E8E8:
cmp   r3,0x82                       ; 0804E8E8
bne   @@Code0804E8EE                ; 0804E8EA
mov   r4,r2                         ; 0804E8EC
@@Code0804E8EE:
add   r1,0xB0                       ; 0804E8EE
add   r0,r2,0x1                     ; 0804E8F0
lsl   r0,r0,0x18                    ; 0804E8F2
lsr   r2,r0,0x18                    ; 0804E8F4
cmp   r2,0x17                       ; 0804E8F6
bls   @@Code0804E8B0                ; 0804E8F8
mov   r0,r4                         ; 0804E8FA
@@Code0804E8FC:
pop   {r4-r6}                       ; 0804E8FC
pop   {r1}                          ; 0804E8FE
bx    r1                            ; 0804E900
.pool                               ; 0804E902

Sub0804E904:
push  {r4-r7,lr}                    ; 0804E904
mov   r7,r10                        ; 0804E906
mov   r6,r9                         ; 0804E908
mov   r5,r8                         ; 0804E90A
push  {r5-r7}                       ; 0804E90C
add   sp,-0x20                      ; 0804E90E
ldr   r7,=0x0201B900                ; 0804E910
ldr   r0,=0x03007240                ; 0804E912  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804E914
str   r0,[sp,0x8]                   ; 0804E916
mov   r1,0x95                       ; 0804E918
lsl   r1,r1,0x2                     ; 0804E91A
add   r1,r0,r1                      ; 0804E91C
str   r1,[sp,0xC]                   ; 0804E91E
bl    Sub0804E6EC                   ; 0804E920
ldr   r0,=0x03006D80                ; 0804E924
ldr   r2,=0x021A                    ; 0804E926
add   r0,r0,r2                      ; 0804E928
ldrh  r0,[r0]                       ; 0804E92A
str   r0,[sp,0x4]                   ; 0804E92C
ldrh  r1,[r7]                       ; 0804E92E  sprite ID
ldr   r0,=0xFFFF                    ; 0804E930  FFFF: end of data
cmp   r1,r0                         ; 0804E932
bne   @@LoopAcross0201B900          ; 0804E934
b     @@Return                      ; 0804E936
@@LoopAcross0201B900:
ldr   r0,=0x01C3                    ; 0804E938
cmp   r1,r0                         ; 0804E93A
bls   @@StandardSprite              ; 0804E93C
                                    ;          \ runs if command sprite
ldr   r2,=0xFFFFFE3C                ; 0804E93E  -1C4
add   r0,r1,r2                      ; 0804E940
lsl   r0,r0,0x10                    ; 0804E942
lsr   r0,r0,0x10                    ; 0804E944
mov   r1,r7                         ; 0804E946
bl    Sub0804E82C                   ; 0804E948
lsl   r0,r0,0x18                    ; 0804E94C
cmp   r0,0x0                        ; 0804E94E
bne   @@Code0804E9D4                ; 0804E950
b     @@ContinueLoop                ; 0804E952 /
.pool                               ; 0804E954

@@StandardSprite:
ldr   r0,[sp,0x4]                   ; 0804E970  runs if standard sprite
cmp   r0,0x0                        ; 0804E972
beq   @@Code0804E9BE                ; 0804E974
ldr   r1,=StdSprData_28             ; 0804E976
ldrh  r0,[r7]                       ; 0804E978
lsl   r0,r0,0x1                     ; 0804E97A
add   r0,r0,r1                      ; 0804E97C
ldrh  r1,[r0]                       ; 0804E97E
mov   r2,0xC0                       ; 0804E980
lsl   r2,r2,0x7                     ; 0804E982
mov   r0,r2                         ; 0804E984
and   r0,r1                         ; 0804E986
cmp   r0,0x0                        ; 0804E988
beq   @@Code0804E9BE                ; 0804E98A
ldr   r0,[sp,0x4]                   ; 0804E98C
add   r0,0x1                        ; 0804E98E
cmp   r0,0x0                        ; 0804E990
beq   @@Code0804E9D4                ; 0804E992
ldrh  r1,[r7,0x2]                   ; 0804E994
lsl   r1,r1,0x4                     ; 0804E996
ldr   r2,=0x03006D80                ; 0804E998
ldr   r0,[r2]                       ; 0804E99A
asr   r0,r0,0x8                     ; 0804E99C
sub   r1,r1,r0                      ; 0804E99E
add   r1,0x60                       ; 0804E9A0
lsl   r1,r1,0x10                    ; 0804E9A2
lsr   r4,r1,0x10                    ; 0804E9A4
cmp   r4,0xC1                       ; 0804E9A6
bhi   @@Code0804E9BE                ; 0804E9A8
ldrh  r1,[r7,0x4]                   ; 0804E9AA
lsl   r1,r1,0x4                     ; 0804E9AC
ldr   r0,[r2,0x4]                   ; 0804E9AE
asr   r0,r0,0x8                     ; 0804E9B0
sub   r1,r1,r0                      ; 0804E9B2
add   r1,0x60                       ; 0804E9B4
lsl   r1,r1,0x10                    ; 0804E9B6
lsr   r4,r1,0x10                    ; 0804E9B8
cmp   r4,0xC1                       ; 0804E9BA
bls   @@Code0804E9D4                ; 0804E9BC
@@Code0804E9BE:
ldr   r0,[sp,0xC]                   ; 0804E9BE
mov   r1,0xFD                       ; 0804E9C0
lsl   r1,r1,0x4                     ; 0804E9C2
add   r5,r0,r1                      ; 0804E9C4
@@Code0804E9C6:
ldrh  r0,[r5,0x24]                  ; 0804E9C6
cmp   r0,0x0                        ; 0804E9C8
beq   @@Code0804EA40                ; 0804E9CA
sub   r5,0xB0                       ; 0804E9CC
ldr   r2,[sp,0xC]                   ; 0804E9CE
cmp   r5,r2                         ; 0804E9D0
bhs   @@Code0804E9C6                ; 0804E9D2
@@Code0804E9D4:
bl    Sub0804E89C                   ; 0804E9D4
lsl   r0,r0,0x18                    ; 0804E9D8
lsr   r4,r0,0x18                    ; 0804E9DA
cmp   r4,0xFF                       ; 0804E9DC
beq   @@Code0804EA04                ; 0804E9DE
ldr   r1,=0x03007240                ; 0804E9E0  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r0,0xB0                       ; 0804E9E2
mul   r0,r4                         ; 0804E9E4
mov   r2,0x95                       ; 0804E9E6
lsl   r2,r2,0x2                     ; 0804E9E8
add   r0,r0,r2                      ; 0804E9EA
ldr   r1,[r1]                       ; 0804E9EC
add   r5,r1,r0                      ; 0804E9EE
mov   r0,0x0                        ; 0804E9F0
strh  r0,[r5,0x24]                  ; 0804E9F2
b     @@Code0804EA40                ; 0804E9F4
.pool                               ; 0804E9F6

@@Code0804EA04:
ldr   r1,=0xFFFFFE46                ; 0804EA04  -1BA
mov   r0,r1                         ; 0804EA06
ldrh  r2,[r7]                       ; 0804EA08
add   r0,r0,r2                      ; 0804EA0A
lsl   r0,r0,0x10                    ; 0804EA0C
lsr   r0,r0,0x10                    ; 0804EA0E
cmp   r0,0x3                        ; 0804EA10
bhi   @@Code0804EA2C                ; 0804EA12
                                    ;          \ runs if sprite 1BA-1BD
ldrh  r0,[r7,0x8]                   ; 0804EA14  sublevel sprite index
lsl   r0,r0,0x1                     ; 0804EA16
ldr   r1,=0x0201BA00                ; 0804EA18
add   r0,r0,r1                      ; 0804EA1A
mov   r1,0x0                        ; 0804EA1C
strh  r1,[r0]                       ; 0804EA1E
b     @@Add2ToPtr_Continue          ; 0804EA20 /
.pool                               ; 0804EA22

@@Code0804EA2C:                     ;          \ runs if not sprite 1BA-1BD
ldrh  r0,[r7,0x6]                   ; 0804EA2C  sublevel sprite index
lsl   r0,r0,0x1                     ; 0804EA2E
ldr   r2,=0x0201BA00                ; 0804EA30
add   r0,r0,r2                      ; 0804EA32
mov   r1,0x0                        ; 0804EA34
strh  r1,[r0]                       ; 0804EA36
b     @@ContinueLoop                ; 0804EA38 /
.pool                               ; 0804EA3A

@@Code0804EA40:
mov   r0,0x0                        ; 0804EA40
str   r0,[sp]                       ; 0804EA42
mov   r0,sp                         ; 0804EA44
mov   r1,r5                         ; 0804EA46
ldr   r2,=0x0500002C                ; 0804EA48
bl    swi_MemoryCopy4or2            ; 0804EA4A  Memory copy/fill, 4- or 2-byte blocks
ldrh  r0,[r7,0x2]                   ; 0804EA4E
lsl   r0,r0,0xC                     ; 0804EA50
str   r0,[r5]                       ; 0804EA52
ldrh  r0,[r7,0x4]                   ; 0804EA54
lsl   r0,r0,0xC                     ; 0804EA56
str   r0,[r5,0x4]                   ; 0804EA58
mov   r0,r5                         ; 0804EA5A
add   r0,0x8C                       ; 0804EA5C
mov   r1,0x80                       ; 0804EA5E
lsl   r1,r1,0x1                     ; 0804EA60
strh  r1,[r0]                       ; 0804EA62
sub   r0,0x2                        ; 0804EA64
strh  r1,[r0]                       ; 0804EA66
ldrh  r0,[r5,0x3C]                  ; 0804EA68
ldr   r1,=0xFFFF                    ; 0804EA6A
orr   r0,r1                         ; 0804EA6C
strh  r0,[r5,0x3C]                  ; 0804EA6E
ldrh  r0,[r5,0x34]                  ; 0804EA70
orr   r0,r1                         ; 0804EA72
strh  r0,[r5,0x34]                  ; 0804EA74
mov   r1,r5                         ; 0804EA76
add   r1,0xA1                       ; 0804EA78
mov   r0,0xFF                       ; 0804EA7A
strb  r0,[r1]                       ; 0804EA7C
add   r1,0x1                        ; 0804EA7E
mov   r0,0x1F                       ; 0804EA80
strb  r0,[r1]                       ; 0804EA82
ldrh  r0,[r7]                       ; 0804EA84
strh  r0,[r5,0x32]                  ; 0804EA86
ldr   r0,=0x03007240                ; 0804EA88  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0804EA8A
mov   r0,0xA6                       ; 0804EA8C
lsl   r0,r0,0x6                     ; 0804EA8E
add   r3,r2,r0                      ; 0804EA90
ldr   r1,=StdSprStripeIDs           ; 0804EA92
ldrh  r0,[r5,0x32]                  ; 0804EA94
lsl   r0,r0,0x1                     ; 0804EA96
add   r0,r0,r1                      ; 0804EA98
ldrh  r4,[r0]                       ; 0804EA9A
mov   r6,0x0                        ; 0804EA9C
mov   r1,0x5                        ; 0804EA9E
ldr   r0,=0x298A                    ; 0804EAA0
add   r2,r2,r0                      ; 0804EAA2  r2 = [03007240]+298A (03004B86)
mov   r0,0x98                       ; 0804EAA4
add   r0,r0,r5                      ; 0804EAA6
mov   r12,r0                        ; 0804EAA8  r12 = sprite+98
mov   r0,0x94                       ; 0804EAAA
add   r0,r0,r5                      ; 0804EAAC
mov   r8,r0                         ; 0804EAAE  r8 = sprite+94
mov   r0,0x4A                       ; 0804EAB0
add   r0,r0,r5                      ; 0804EAB2
mov   r10,r0                        ; 0804EAB4  r10 = sprite+4A
mov   r0,r5                         ; 0804EAB6
add   r0,0x4C                       ; 0804EAB8
str   r0,[sp,0x10]                  ; 0804EABA  [sp+10] = sprite+4C
add   r0,0x2                        ; 0804EABC
str   r0,[sp,0x14]                  ; 0804EABE  [sp+14] = sprite+4E
add   r0,0x2                        ; 0804EAC0
str   r0,[sp,0x18]                  ; 0804EAC2  [sp+18] = sprite+50
mov   r0,0x9B                       ; 0804EAC4
add   r0,r0,r5                      ; 0804EAC6
mov   r9,r0                         ; 0804EAC8  r9 = sprite+9B (pointer to this sprite's index in sublevel sprite data)
mov   r0,r5                         ; 0804EACA
add   r0,0x9C                       ; 0804EACC
str   r0,[sp,0x1C]                  ; 0804EACE  [sp+1C] = sprite+9C
ldrh  r2,[r2]                       ; 0804EAD0
cmp   r4,r2                         ; 0804EAD2
bne   @@Code0804EAF0                ; 0804EAD4
mov   r6,0x34                       ; 0804EAD6
b     @@Code0804EB06                ; 0804EAD8
.pool                               ; 0804EADA

@@Code0804EAF0:
sub   r1,0x1                        ; 0804EAF0
cmp   r1,0x0                        ; 0804EAF2
blt   @@Code0804EB06                ; 0804EAF4
lsl   r0,r1,0x1                     ; 0804EAF6
add   r0,r0,r3                      ; 0804EAF8
ldrh  r0,[r0]                       ; 0804EAFA
cmp   r4,r0                         ; 0804EAFC
bne   @@Code0804EAF0                ; 0804EAFE
mov   r0,r1                         ; 0804EB00
add   r0,0x8                        ; 0804EB02
lsl   r6,r0,0x2                     ; 0804EB04
@@Code0804EB06:
ldrh  r0,[r5,0x32]                  ; 0804EB06
lsl   r0,r0,0x11                    ; 0804EB08
lsr   r4,r0,0x10                    ; 0804EB0A
mov   r1,r12                        ; 0804EB0C  sprite+98
strb  r6,[r1]                       ; 0804EB0E
ldr   r2,=StdSprData_94_2C          ; 0804EB10
add   r3,r4,0x1                     ; 0804EB12
add   r0,r3,r2                      ; 0804EB14
ldrb  r1,[r0]                       ; 0804EB16
mov   r0,0x20                       ; 0804EB18
eor   r0,r1                         ; 0804EB1A
strh  r0,[r5,0x2C]                  ; 0804EB1C
add   r2,r4,r2                      ; 0804EB1E
ldrb  r0,[r2]                       ; 0804EB20
mov   r2,r8                         ; 0804EB22
strb  r0,[r2]                       ; 0804EB24
ldr   r1,=StdSprData_14_1C          ; 0804EB26
add   r0,r4,r1                      ; 0804EB28
ldrb  r0,[r0]                       ; 0804EB2A
lsl   r0,r0,0x18                    ; 0804EB2C
asr   r0,r0,0x18                    ; 0804EB2E
str   r0,[r5,0x14]                  ; 0804EB30
add   r3,r3,r1                      ; 0804EB32
mov   r0,0x0                        ; 0804EB34
ldsb  r0,[r3,r0]                    ; 0804EB36
lsl   r0,r0,0x4                     ; 0804EB38
str   r0,[r5,0x1C]                  ; 0804EB3A
ldrh  r0,[r5,0x32]                  ; 0804EB3C
lsl   r0,r0,0x1                     ; 0804EB3E
ldr   r1,=StdSprData_2A             ; 0804EB40
add   r3,r0,r1                      ; 0804EB42
ldrh  r0,[r3]                       ; 0804EB44
strh  r0,[r5,0x2A]                  ; 0804EB46
ldr   r1,=StdSprData_26-StdSprData_28; 0804EB48  also StdSprData_28-StdSprData_2A
add   r3,r3,r1                      ; 0804EB4A
ldrh  r0,[r3]                       ; 0804EB4C
strh  r0,[r5,0x28]                  ; 0804EB4E
add   r3,r3,r1                      ; 0804EB50
ldrh  r0,[r3]                       ; 0804EB52
strh  r0,[r5,0x26]                  ; 0804EB54
ldrh  r1,[r3]                       ; 0804EB56
mov   r0,0x1F                       ; 0804EB58
and   r0,r1                         ; 0804EB5A  filter lower 5 bits
lsl   r0,r0,0x3                     ; 0804EB5C
ldr   r1,=StdSprHitboxParam         ; 0804EB5E
add   r3,r0,r1                      ; 0804EB60  offset with lower 5 bits of sprite+26, *8
ldrh  r0,[r3]                       ; 0804EB62
mov   r1,r10                        ; 0804EB64  sprite+4A
strh  r0,[r1]                       ; 0804EB66  [sprite+4A] = halfword 0 from table
ldrh  r0,[r3,0x2]                   ; 0804EB68
ldr   r2,[sp,0x10]                  ; 0804EB6A  sprite+4C
strh  r0,[r2]                       ; 0804EB6C  [sprite+4C] = halfword 1 from table
ldrh  r0,[r3,0x4]                   ; 0804EB6E
ldr   r1,[sp,0x14]                  ; 0804EB70  sprite+4E
strh  r0,[r1]                       ; 0804EB72  [sprite+4E] = halfword 2 from table
ldrh  r0,[r3,0x6]                   ; 0804EB74
ldr   r2,[sp,0x18]                  ; 0804EB76  sprite+50
strh  r0,[r2]                       ; 0804EB78  [sprite+50] = halfword 3 from table
ldr   r1,[sp,0x8]                   ; 0804EB7A
ldrh  r0,[r1,0x1A]                  ; 0804EB7C
lsl   r0,r0,0x1                     ; 0804EB7E
strh  r0,[r5,0x36]                  ; 0804EB80
mov   r0,0x1                        ; 0804EB82
strh  r0,[r5,0x24]                  ; 0804EB84
ldrh  r0,[r7,0x6]                   ; 0804EB86  sublevel data index
mov   r2,r9                         ; 0804EB88  sprite+9B
strb  r0,[r2]                       ; 0804EB8A
ldrh  r0,[r7,0x6]                   ; 0804EB8C
lsr   r0,r0,0x8                     ; 0804EB8E  always 0, since sublevel data index is 8-bit
ldr   r1,[sp,0x1C]                  ; 0804EB90  sprite+9C
strb  r0,[r1]                       ; 0804EB92
ldr   r2,=0xFFFFFE46                ; 0804EB94  -1BA
mov   r0,r2                         ; 0804EB96
ldrh  r1,[r5,0x32]                  ; 0804EB98  sprite ID
add   r0,r0,r1                      ; 0804EB9A
lsl   r0,r0,0x10                    ; 0804EB9C
lsr   r0,r0,0x10                    ; 0804EB9E  sprID -1BA
cmp   r0,0x3                        ; 0804EBA0
bhi   @@ContinueLoop                ; 0804EBA2
                                    ;          \ runs if sprite ID is 1BA-1BD
ldrh  r1,[r7,0x6]                   ; 0804EBA4  sprite data extra byte
mov   r0,0xF0                       ; 0804EBA6
and   r0,r1                         ; 0804EBA8  extra byte, high digit filtered
mov   r1,r5                         ; 0804EBAA
add   r1,0x6C                       ; 0804EBAC
strh  r0,[r1]                       ; 0804EBAE  store to sprite+6C
ldrh  r1,[r7,0x6]                   ; 0804EBB0  sprite data extra byte
mov   r0,0xF                        ; 0804EBB2
and   r0,r1                         ; 0804EBB4  extra byte, low digit
lsl   r0,r0,0x4                     ; 0804EBB6  extra byte, low digit *10
mov   r1,r5                         ; 0804EBB8
add   r1,0x6E                       ; 0804EBBA
strh  r0,[r1]                       ; 0804EBBC  store to sprite+6E
ldrh  r0,[r7,0x8]                   ; 0804EBBE  sublevel data index
mov   r2,r9                         ; 0804EBC0  sprite+9B
strb  r0,[r2]                       ; 0804EBC2
ldrh  r0,[r7,0x8]                   ; 0804EBC4
lsr   r0,r0,0x8                     ; 0804EBC6  always 0, since sublevel data index is 8-bit
ldr   r1,[sp,0x1C]                  ; 0804EBC8  sprite+9C
strb  r0,[r1]                       ; 0804EBCA
@@Add2ToPtr_Continue:
add   r7,0x2                        ; 0804EBCC /
@@ContinueLoop:
add   r7,0x8                        ; 0804EBCE
ldrh  r1,[r7]                       ; 0804EBD0
ldr   r2,=0xFFFF                    ; 0804EBD2
cmp   r1,r2                         ; 0804EBD4
beq   @@Return                      ; 0804EBD6
b     @@LoopAcross0201B900          ; 0804EBD8
@@Return:
add   sp,0x20                       ; 0804EBDA
pop   {r3-r5}                       ; 0804EBDC
mov   r8,r3                         ; 0804EBDE
mov   r9,r4                         ; 0804EBE0
mov   r10,r5                        ; 0804EBE2
pop   {r4-r7}                       ; 0804EBE4
pop   {r0}                          ; 0804EBE6
bx    r0                            ; 0804EBE8
.pool                               ; 0804EBEA

Sub0804EC08:
push  {r4,lr}                       ; 0804EC08
mov   r3,r0                         ; 0804EC0A
ldr   r0,=0x0300702C                ; 0804EC0C  Sprite RAM structs (03002460)
ldr   r2,[r0]                       ; 0804EC0E
ldr   r0,[r3]                       ; 0804EC10
asr   r0,r0,0x8                     ; 0804EC12
mov   r4,0x8A                       ; 0804EC14
lsl   r4,r4,0x5                     ; 0804EC16
add   r1,r2,r4                      ; 0804EC18
strh  r0,[r1]                       ; 0804EC1A
ldr   r0,[r3,0x4]                   ; 0804EC1C
asr   r0,r0,0x8                     ; 0804EC1E
ldr   r1,=0x1142                    ; 0804EC20
add   r2,r2,r1                      ; 0804EC22
strh  r0,[r2]                       ; 0804EC24
ldr   r1,=0x03006D80                ; 0804EC26
mov   r4,0xD4                       ; 0804EC28
lsl   r4,r4,0x1                     ; 0804EC2A
add   r1,r1,r4                      ; 0804EC2C
ldr   r0,=0x03007240                ; 0804EC2E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r0]                       ; 0804EC30
ldr   r4,=0x29B0                    ; 0804EC32
add   r0,r2,r4                      ; 0804EC34
ldrh  r1,[r1]                       ; 0804EC36
ldrh  r0,[r0]                       ; 0804EC38
orr   r1,r0                         ; 0804EC3A
ldr   r0,=0x29BA                    ; 0804EC3C
add   r2,r2,r0                      ; 0804EC3E
ldrh  r0,[r2]                       ; 0804EC40
orr   r1,r0                         ; 0804EC42
ldr   r4,=SpriteStatusPtrs          ; 0804EC44
cmp   r1,0x0                        ; 0804EC46
bne   @@Code0804EC62                ; 0804EC48
mov   r1,r3                         ; 0804EC4A
add   r1,0x42                       ; 0804EC4C
mov   r2,r3                         ; 0804EC4E
add   r2,0x4A                       ; 0804EC50
@@Code0804EC52:
ldrh  r0,[r1]                       ; 0804EC52
cmp   r0,0x0                        ; 0804EC54
beq   @@Code0804EC5C                ; 0804EC56
sub   r0,0x1                        ; 0804EC58
strh  r0,[r1]                       ; 0804EC5A
@@Code0804EC5C:
add   r1,0x2                        ; 0804EC5C
cmp   r1,r2                         ; 0804EC5E
bne   @@Code0804EC52                ; 0804EC60
@@Code0804EC62:
mov   r1,r3                         ; 0804EC62
add   r1,0x9E                       ; 0804EC64
ldrb  r0,[r1]                       ; 0804EC66
cmp   r0,0x0                        ; 0804EC68
beq   @@Code0804EC70                ; 0804EC6A
sub   r0,0x1                        ; 0804EC6C
strb  r0,[r1]                       ; 0804EC6E
@@Code0804EC70:
ldrh  r0,[r3,0x24]                  ; 0804EC70
sub   r0,0x1                        ; 0804EC72
lsl   r0,r0,0x2                     ; 0804EC74
add   r0,r0,r4                      ; 0804EC76
ldr   r1,[r0]                       ; 0804EC78
mov   r0,r3                         ; 0804EC7A
bl    Sub_bx_r1                     ; 0804EC7C
pop   {r4}                          ; 0804EC80
pop   {r0}                          ; 0804EC82
bx    r0                            ; 0804EC84
.pool                               ; 0804EC86

Sub0804ECA4:
ldr   r1,[r0]                       ; 0804ECA4
ldr   r2,[r0,0x8]                   ; 0804ECA6
add   r1,r1,r2                      ; 0804ECA8
str   r1,[r0]                       ; 0804ECAA
ldr   r1,[r0,0x4]                   ; 0804ECAC
ldr   r2,[r0,0xC]                   ; 0804ECAE
add   r1,r1,r2                      ; 0804ECB0
str   r1,[r0,0x4]                   ; 0804ECB2
bx    lr                            ; 0804ECB4
.pool                               ; 0804ECB6

Sub0804ECB8:
push  {lr}                          ; 0804ECB8
ldr   r3,=0x03007240                ; 0804ECBA  Normal gameplay IWRAM (Ptr to 0300220C)
ldrh  r1,[r0,0x10]                  ; 0804ECBC
lsl   r2,r1,0x3                     ; 0804ECBE
ldr   r0,=0x25F8                    ; 0804ECC0
add   r2,r2,r0                      ; 0804ECC2
ldr   r0,[r3]                       ; 0804ECC4
add   r0,r0,r2                      ; 0804ECC6
ldr   r2,=CmdSprMainPtrs            ; 0804ECC8
sub   r1,0x1                        ; 0804ECCA
lsl   r1,r1,0x2                     ; 0804ECCC
add   r1,r1,r2                      ; 0804ECCE
ldr   r1,[r1]                       ; 0804ECD0
bl    Sub_bx_r1                     ; 0804ECD2
pop   {r0}                          ; 0804ECD6
bx    r0                            ; 0804ECD8
.pool                               ; 0804ECDA

Sub0804ECE8:
push  {r4-r7,lr}                    ; 0804ECE8
mov   r7,r9                         ; 0804ECEA
mov   r6,r8                         ; 0804ECEC
push  {r6-r7}                       ; 0804ECEE
ldr   r3,=Data081AF94E              ; 0804ECF0
ldr   r1,=0x03002200                ; 0804ECF2
ldr   r2,=0x47F6                    ; 0804ECF4
add   r0,r1,r2                      ; 0804ECF6
ldrb  r2,[r0]                       ; 0804ECF8
add   r0,r2,r3                      ; 0804ECFA
ldrb  r0,[r0]                       ; 0804ECFC
lsl   r0,r0,0x18                    ; 0804ECFE
asr   r0,r0,0x18                    ; 0804ED00
lsl   r0,r0,0x10                    ; 0804ED02
lsr   r5,r0,0x10                    ; 0804ED04
mov   r6,r5                         ; 0804ED06
mov   r8,r6                         ; 0804ED08
ldr   r4,=0x03006D80                ; 0804ED0A
mov   r5,0x9E                       ; 0804ED0C
add   r5,r5,r4                      ; 0804ED0E
mov   r9,r5                         ; 0804ED10
lsl   r0,r6,0x18                    ; 0804ED12
asr   r0,r0,0x18                    ; 0804ED14
mov   r7,0x0                        ; 0804ED16
ldsb  r7,[r5,r7]                    ; 0804ED18
mul   r0,r7                         ; 0804ED1A
lsl   r0,r0,0x12                    ; 0804ED1C
asr   r0,r0,0x18                    ; 0804ED1E
lsl   r0,r0,0x10                    ; 0804ED20
lsr   r5,r0,0x10                    ; 0804ED22
ldr   r0,=0x47FC                    ; 0804ED24
add   r1,r1,r0                      ; 0804ED26
mvn   r0,r5                         ; 0804ED28
ldrh  r1,[r1]                       ; 0804ED2A
add   r0,r0,r1                      ; 0804ED2C
lsl   r0,r0,0x10                    ; 0804ED2E
lsr   r5,r0,0x10                    ; 0804ED30
ldr   r0,[r4,0x4]                   ; 0804ED32
asr   r0,r0,0x8                     ; 0804ED34
add   r0,r5,r0                      ; 0804ED36
mov   r1,r4                         ; 0804ED38
add   r1,0x9A                       ; 0804ED3A
strh  r0,[r1]                       ; 0804ED3C
add   r3,0x40                       ; 0804ED3E
add   r2,r2,r3                      ; 0804ED40
mov   r0,0x0                        ; 0804ED42
ldsb  r0,[r2,r0]                    ; 0804ED44
lsl   r0,r0,0x10                    ; 0804ED46
lsr   r5,r0,0x10                    ; 0804ED48
mov   r2,r5                         ; 0804ED4A
mov   r12,r2                        ; 0804ED4C
lsl   r0,r2,0x18                    ; 0804ED4E
asr   r0,r0,0x18                    ; 0804ED50
mul   r0,r7                         ; 0804ED52
lsl   r0,r0,0x12                    ; 0804ED54
asr   r0,r0,0x18                    ; 0804ED56
lsl   r0,r0,0x10                    ; 0804ED58
mov   r1,0x80                       ; 0804ED5A
lsl   r1,r1,0xC                     ; 0804ED5C
add   r0,r0,r1                      ; 0804ED5E
lsr   r5,r0,0x10                    ; 0804ED60
ldr   r0,[r4]                       ; 0804ED62
asr   r0,r0,0x8                     ; 0804ED64
add   r0,r5,r0                      ; 0804ED66
mov   r1,r4                         ; 0804ED68
add   r1,0x98                       ; 0804ED6A
strh  r0,[r1]                       ; 0804ED6C
sub   r0,r6,0x1                     ; 0804ED6E
lsl   r0,r0,0x10                    ; 0804ED70
cmp   r0,0x0                        ; 0804ED72
bge   @@Code0804ED7E                ; 0804ED74
neg   r0,r6                         ; 0804ED76
lsl   r0,r0,0x10                    ; 0804ED78
lsr   r0,r0,0x10                    ; 0804ED7A
mov   r8,r0                         ; 0804ED7C
@@Code0804ED7E:
sub   r0,r2,0x1                     ; 0804ED7E
lsl   r0,r0,0x10                    ; 0804ED80
cmp   r0,0x0                        ; 0804ED82
bge   @@Code0804ED8E                ; 0804ED84
neg   r0,r2                         ; 0804ED86
lsl   r0,r0,0x10                    ; 0804ED88
lsr   r0,r0,0x10                    ; 0804ED8A
mov   r12,r0                        ; 0804ED8C
@@Code0804ED8E:
add   r4,0x9C                       ; 0804ED8E
mov   r2,0x0                        ; 0804ED90
ldsb  r2,[r4,r2]                    ; 0804ED92
mov   r5,r8                         ; 0804ED94
lsl   r3,r5,0x18                    ; 0804ED96
asr   r3,r3,0x18                    ; 0804ED98
mov   r1,r2                         ; 0804ED9A
mul   r1,r3                         ; 0804ED9C
lsl   r1,r1,0x10                    ; 0804ED9E
lsr   r1,r1,0x10                    ; 0804EDA0
mov   r5,r12                        ; 0804EDA2
lsl   r0,r5,0x18                    ; 0804EDA4
asr   r0,r0,0x18                    ; 0804EDA6
mul   r2,r0                         ; 0804EDA8
lsl   r2,r2,0x10                    ; 0804EDAA
lsr   r2,r2,0x10                    ; 0804EDAC
mul   r0,r7                         ; 0804EDAE
lsl   r0,r0,0x10                    ; 0804EDB0
lsr   r5,r0,0x10                    ; 0804EDB2
add   r1,r5,r1                      ; 0804EDB4
lsl   r1,r1,0x12                    ; 0804EDB6
lsr   r1,r1,0x18                    ; 0804EDB8
strh  r1,[r4]                       ; 0804EDBA
mov   r0,r7                         ; 0804EDBC
mul   r0,r3                         ; 0804EDBE
lsl   r0,r0,0x10                    ; 0804EDC0
lsr   r5,r0,0x10                    ; 0804EDC2
add   r2,r5,r2                      ; 0804EDC4
lsl   r2,r2,0x12                    ; 0804EDC6
lsr   r2,r2,0x18                    ; 0804EDC8
mov   r0,r9                         ; 0804EDCA
strh  r2,[r0]                       ; 0804EDCC
pop   {r3-r4}                       ; 0804EDCE
mov   r8,r3                         ; 0804EDD0
mov   r9,r4                         ; 0804EDD2
pop   {r4-r7}                       ; 0804EDD4
pop   {r0}                          ; 0804EDD6
bx    r0                            ; 0804EDD8
.pool                               ; 0804EDDA

Sub0804EDF0:
push  {r4,lr}                       ; 0804EDF0
ldr   r3,=0x03006D80                ; 0804EDF2
mov   r4,r3                         ; 0804EDF4
add   r4,0x9C                       ; 0804EDF6
mov   r0,0x8                        ; 0804EDF8
strh  r0,[r4]                       ; 0804EDFA
ldr   r0,[r3]                       ; 0804EDFC
asr   r0,r0,0x8                     ; 0804EDFE
add   r0,0x8                        ; 0804EE00
mov   r1,r3                         ; 0804EE02
add   r1,0x98                       ; 0804EE04
strh  r0,[r1]                       ; 0804EE06
mov   r2,0xC                        ; 0804EE08
ldrh  r0,[r3,0x32]                  ; 0804EE0A
cmp   r0,0x8                        ; 0804EE0C
bne   @@Code0804EE68                ; 0804EE0E
mov   r1,0xB2                       ; 0804EE10
lsl   r1,r1,0x1                     ; 0804EE12
add   r0,r3,r1                      ; 0804EE14
ldrh  r0,[r0]                       ; 0804EE16
cmp   r0,0x0                        ; 0804EE18
beq   @@Code0804EE88                ; 0804EE1A
mov   r1,r3                         ; 0804EE1C
add   r1,0x9E                       ; 0804EE1E
mov   r0,0x4                        ; 0804EE20
strh  r0,[r1]                       ; 0804EE22
strh  r0,[r4]                       ; 0804EE24
mov   r2,0xFF                       ; 0804EE26
mov   r0,r3                         ; 0804EE28
add   r0,0x42                       ; 0804EE2A
ldrh  r0,[r0]                       ; 0804EE2C
cmp   r0,0x0                        ; 0804EE2E
beq   @@Code0804EE34                ; 0804EE30
mov   r2,0x7F                       ; 0804EE32
@@Code0804EE34:
ldr   r1,=0x03002200                ; 0804EE34
mov   r4,0x84                       ; 0804EE36
lsl   r4,r4,0x1                     ; 0804EE38
add   r0,r3,r4                      ; 0804EE3A
ldrh  r0,[r0]                       ; 0804EE3C
eor   r2,r0                         ; 0804EE3E
add   r2,0x1                        ; 0804EE40
ldr   r3,=0x47F6                    ; 0804EE42
add   r0,r1,r3                      ; 0804EE44
strh  r2,[r0]                       ; 0804EE46
ldr   r4,=0x47FC                    ; 0804EE48
add   r1,r1,r4                      ; 0804EE4A
mov   r0,0x14                       ; 0804EE4C
strh  r0,[r1]                       ; 0804EE4E
bl    Sub0804ECE8                   ; 0804EE50
b     @@Code0804EEF4                ; 0804EE54
.pool                               ; 0804EE56

@@Code0804EE68:
mov   r0,r3                         ; 0804EE68
add   r0,0x40                       ; 0804EE6A
ldrh  r0,[r0]                       ; 0804EE6C
cmp   r0,0x0                        ; 0804EE6E
beq   @@Code0804EE76                ; 0804EE70
mov   r2,0x6                        ; 0804EE72
b     @@Code0804EE88                ; 0804EE74
@@Code0804EE76:
ldrh  r0,[r3,0x3E]                  ; 0804EE76
cmp   r0,0x0                        ; 0804EE78
beq   @@Code0804EE88                ; 0804EE7A
mov   r0,r3                         ; 0804EE7C
add   r0,0x50                       ; 0804EE7E
ldrh  r0,[r0]                       ; 0804EE80
cmp   r0,0x2                        ; 0804EE82
bls   @@Code0804EE88                ; 0804EE84
mov   r2,0xE                        ; 0804EE86
@@Code0804EE88:
mov   r1,r3                         ; 0804EE88
add   r1,0x9E                       ; 0804EE8A
strh  r2,[r1]                       ; 0804EE8C
ldrh  r0,[r3,0x32]                  ; 0804EE8E
cmp   r0,0x10                       ; 0804EE90
bne   @@Code0804EEE0                ; 0804EE92
mov   r4,0xBB                       ; 0804EE94
lsl   r4,r4,0x1                     ; 0804EE96
add   r0,r3,r4                      ; 0804EE98
ldrh  r0,[r0]                       ; 0804EE9A
cmp   r0,0x0                        ; 0804EE9C
beq   @@Code0804EEE0                ; 0804EE9E
add   r0,r2,0x1                     ; 0804EEA0
strh  r0,[r1]                       ; 0804EEA2
mov   r1,0x84                       ; 0804EEA4
lsl   r1,r1,0x1                     ; 0804EEA6
add   r0,r3,r1                      ; 0804EEA8
ldrh  r2,[r0]                       ; 0804EEAA
mov   r0,r3                         ; 0804EEAC
add   r0,0x42                       ; 0804EEAE
ldrh  r0,[r0]                       ; 0804EEB0
cmp   r0,0x0                        ; 0804EEB2
bne   @@Code0804EEBC                ; 0804EEB4
neg   r0,r2                         ; 0804EEB6
lsl   r0,r0,0x10                    ; 0804EEB8
lsr   r2,r0,0x10                    ; 0804EEBA
@@Code0804EEBC:
ldr   r0,=0x03002200                ; 0804EEBC
ldr   r3,=0x47F6                    ; 0804EEBE
add   r1,r0,r3                      ; 0804EEC0
strh  r2,[r1]                       ; 0804EEC2
ldr   r4,=0x47FC                    ; 0804EEC4
add   r0,r0,r4                      ; 0804EEC6
mov   r1,0x21                       ; 0804EEC8
strh  r1,[r0]                       ; 0804EECA
bl    Sub0804ECE8                   ; 0804EECC
b     @@Code0804EEF4                ; 0804EED0
.pool                               ; 0804EED2

@@Code0804EEE0:
mov   r0,0x20                       ; 0804EEE0
sub   r0,r0,r2                      ; 0804EEE2
lsl   r0,r0,0x10                    ; 0804EEE4
lsr   r2,r0,0x10                    ; 0804EEE6
ldr   r0,[r3,0x4]                   ; 0804EEE8
asr   r0,r0,0x8                     ; 0804EEEA
add   r0,r2,r0                      ; 0804EEEC
mov   r1,r3                         ; 0804EEEE
add   r1,0x9A                       ; 0804EEF0
strh  r0,[r1]                       ; 0804EEF2
@@Code0804EEF4:
pop   {r4}                          ; 0804EEF4
pop   {r0}                          ; 0804EEF6
bx    r0                            ; 0804EEF8
.pool                               ; 0804EEFA

Sub0804EEFC:
push  {r4-r6,lr}                    ; 0804EEFC
ldr   r0,=0x03007240                ; 0804EEFE  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804EF00
mov   r1,0x95                       ; 0804EF02
lsl   r1,r1,0x2                     ; 0804EF04
add   r6,r0,r1                      ; 0804EF06
ldr   r1,=0x1224                    ; 0804EF08
add   r4,r0,r1                      ; 0804EF0A
ldr   r0,=0x0300702C                ; 0804EF0C  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804EF0E
ldr   r1,=0x156E                    ; 0804EF10
add   r5,r0,r1                      ; 0804EF12
mov   r0,0x17                       ; 0804EF14
strb  r0,[r5]                       ; 0804EF16
@@Code0804EF18:
ldrh  r0,[r4,0x24]                  ; 0804EF18
cmp   r0,0x0                        ; 0804EF1A
beq   @@Code0804EF34                ; 0804EF1C
bl    Sub08035648                   ; 0804EF1E
ldr   r0,=0x0300702C                ; 0804EF22  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 0804EF24
ldr   r1,=0x11B0                    ; 0804EF26
add   r0,r0,r1                      ; 0804EF28
mov   r1,0x0                        ; 0804EF2A
strh  r1,[r0]                       ; 0804EF2C
mov   r0,r4                         ; 0804EF2E
bl    Sub0804EC08                   ; 0804EF30
@@Code0804EF34:
ldrb  r0,[r5]                       ; 0804EF34
sub   r0,0x1                        ; 0804EF36
strb  r0,[r5]                       ; 0804EF38
sub   r4,0xB0                       ; 0804EF3A
cmp   r4,r6                         ; 0804EF3C
bhs   @@Code0804EF18                ; 0804EF3E
pop   {r4-r6}                       ; 0804EF40
pop   {r0}                          ; 0804EF42
bx    r0                            ; 0804EF44
.pool                               ; 0804EF46

Sub0804EF5C:
push  {r4-r6,lr}                    ; 0804EF5C
ldr   r0,=0x03007240                ; 0804EF5E  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0804EF60
ldr   r0,=0x25F8                    ; 0804EF62
add   r5,r1,r0                      ; 0804EF64
ldr   r2,=0x2610                    ; 0804EF66
add   r4,r1,r2                      ; 0804EF68
ldr   r0,=0x03006D80                ; 0804EF6A
mov   r3,0xD4                       ; 0804EF6C
lsl   r3,r3,0x1                     ; 0804EF6E
add   r0,r0,r3                      ; 0804EF70
ldr   r2,=0x29B0                    ; 0804EF72
add   r3,r1,r2                      ; 0804EF74
ldrh  r2,[r0]                       ; 0804EF76
ldrh  r0,[r3]                       ; 0804EF78
orr   r2,r0                         ; 0804EF7A
ldr   r3,=0x29BA                    ; 0804EF7C
add   r0,r1,r3                      ; 0804EF7E
ldrh  r0,[r0]                       ; 0804EF80
orr   r2,r0                         ; 0804EF82
ldr   r0,=0x29C8                    ; 0804EF84
add   r1,r1,r0                      ; 0804EF86
strh  r2,[r1]                       ; 0804EF88
ldr   r6,=CmdSprMainPtrs            ; 0804EF8A
@@Code0804EF8C:
ldrh  r0,[r4]                       ; 0804EF8C
cmp   r0,0x0                        ; 0804EF8E
beq   @@Code0804EFA0                ; 0804EF90
sub   r0,0x1                        ; 0804EF92
lsl   r0,r0,0x2                     ; 0804EF94
add   r0,r0,r6                      ; 0804EF96
ldr   r1,[r0]                       ; 0804EF98
mov   r0,r4                         ; 0804EF9A
bl    Sub_bx_r1                     ; 0804EF9C
@@Code0804EFA0:
sub   r4,0x8                        ; 0804EFA0
cmp   r4,r5                         ; 0804EFA2
bhs   @@Code0804EF8C                ; 0804EFA4
pop   {r4-r6}                       ; 0804EFA6
pop   {r0}                          ; 0804EFA8
bx    r0                            ; 0804EFAA
.pool                               ; 0804EFAC

Sub0804EFCC:
push  {r4-r7,lr}                    ; 0804EFCC
mov   r7,r9                         ; 0804EFCE
mov   r6,r8                         ; 0804EFD0
push  {r6-r7}                       ; 0804EFD2
ldr   r0,=0x03007240                ; 0804EFD4  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r1,[r0]                       ; 0804EFD6
mov   r2,0xE0                       ; 0804EFD8
lsl   r2,r2,0x1                     ; 0804EFDA
add   r2,r2,r1                      ; 0804EFDC
mov   r9,r2                         ; 0804EFDE
mov   r3,0x8C                       ; 0804EFE0
lsl   r3,r3,0x2                     ; 0804EFE2
add   r6,r1,r3                      ; 0804EFE4
ldr   r1,=0x0300702C                ; 0804EFE6  Sprite RAM structs (03002460)
ldr   r1,[r1]                       ; 0804EFE8
ldr   r5,=0x1892                    ; 0804EFEA
add   r1,r1,r5                      ; 0804EFEC
ldrb  r3,[r1]                       ; 0804EFEE
mov   r4,r0                         ; 0804EFF0
ldr   r7,=0x03006D80                ; 0804EFF2
cmp   r3,0x0                        ; 0804EFF4
beq   @@Code0804F00A                ; 0804EFF6
sub   r0,r3,0x1                     ; 0804EFF8
strb  r0,[r1]                       ; 0804EFFA
lsl   r0,r0,0x18                    ; 0804EFFC
cmp   r0,0x0                        ; 0804EFFE
beq   @@Code0804F00A                ; 0804F000
mov   r1,r7                         ; 0804F002
add   r1,0x54                       ; 0804F004
mov   r0,0x0                        ; 0804F006
strh  r0,[r1]                       ; 0804F008
@@Code0804F00A:
mov   r8,r7                         ; 0804F00A
mov   r0,0xD4                       ; 0804F00C
lsl   r0,r0,0x1                     ; 0804F00E
add   r0,r8                         ; 0804F010
ldr   r2,[r4]                       ; 0804F012
ldr   r3,=0x29B0                    ; 0804F014
add   r1,r2,r3                      ; 0804F016
ldrh  r0,[r0]                       ; 0804F018
ldrh  r1,[r1]                       ; 0804F01A
orr   r0,r1                         ; 0804F01C
ldr   r5,=0x29BA                    ; 0804F01E
add   r2,r2,r5                      ; 0804F020
ldrh  r1,[r2]                       ; 0804F022
orr   r0,r1                         ; 0804F024
cmp   r0,0x0                        ; 0804F026
bne   @@Code0804F036                ; 0804F028
ldr   r1,=0x03002200                ; 0804F02A
ldr   r0,=0x48A2                    ; 0804F02C
add   r1,r1,r0                      ; 0804F02E
ldrh  r0,[r1]                       ; 0804F030
add   r0,0x1                        ; 0804F032
strh  r0,[r1]                       ; 0804F034
@@Code0804F036:
ldr   r0,[r4]                       ; 0804F036
ldr   r1,=0x2A72                    ; 0804F038
add   r0,r0,r1                      ; 0804F03A
mov   r5,0x0                        ; 0804F03C
strh  r5,[r0]                       ; 0804F03E
bl    Sub080DEBA4                   ; 0804F040
bl    Sub0804EDF0                   ; 0804F044
bl    Sub0810C700                   ; 0804F048
bl    Sub08049E80                   ; 0804F04C
ldr   r0,[r4]                       ; 0804F050
cmp   r0,0x0                        ; 0804F052
bne   @@Code0804F058                ; 0804F054
b     @@Code0804F274                ; 0804F056
@@Code0804F058:
ldr   r1,=0x021A                    ; 0804F058
add   r1,r8                         ; 0804F05A
ldrh  r0,[r1]                       ; 0804F05C
sub   r0,0x1                        ; 0804F05E
lsl   r0,r0,0x10                    ; 0804F060
cmp   r0,0x0                        ; 0804F062
blt   @@Code0804F06A                ; 0804F064
ldr   r0,=0xFFF8                    ; 0804F066
strh  r0,[r1]                       ; 0804F068
@@Code0804F06A:
ldr   r4,=0x0300702C                ; 0804F06A  Sprite RAM structs (03002460)
ldr   r1,[r4]                       ; 0804F06C
ldr   r2,=0x1146                    ; 0804F06E
add   r0,r1,r2                      ; 0804F070
strh  r5,[r0]                       ; 0804F072
mov   r3,0xDA                       ; 0804F074
lsl   r3,r3,0x1                     ; 0804F076
add   r0,r7,r3                      ; 0804F078
strh  r5,[r0]                       ; 0804F07A
ldr   r0,=0x1144                    ; 0804F07C
add   r2,r1,r0                      ; 0804F07E
ldr   r0,=0xFFFF                    ; 0804F080
strh  r0,[r2]                       ; 0804F082
ldr   r2,=0x1686                    ; 0804F084
add   r0,r1,r2                      ; 0804F086
strh  r5,[r0]                       ; 0804F088
ldr   r3,=0x1684                    ; 0804F08A
add   r1,r1,r3                      ; 0804F08C
strh  r5,[r1]                       ; 0804F08E
bl    Sub0804EEFC                   ; 0804F090
ldr   r4,[r4]                       ; 0804F094
ldr   r5,=0x16C6                    ; 0804F096
add   r0,r4,r5                      ; 0804F098
ldrh  r0,[r0]                       ; 0804F09A
cmp   r0,0x0                        ; 0804F09C
beq   @@Code0804F0FC                ; 0804F09E
ldr   r0,=0x16CA                    ; 0804F0A0
add   r4,r4,r0                      ; 0804F0A2
ldrh  r0,[r4]                       ; 0804F0A4
cmp   r0,0x2F                       ; 0804F0A6
bls   @@Code0804F0F8                ; 0804F0A8
mov   r0,0x1                        ; 0804F0AA
b     @@Code0804F0FA                ; 0804F0AC
.pool                               ; 0804F0AE

@@Code0804F0F8:
add   r0,0x1                        ; 0804F0F8
@@Code0804F0FA:
strh  r0,[r4]                       ; 0804F0FA
@@Code0804F0FC:
bl    Sub0804EF5C                   ; 0804F0FC
ldr   r3,=0x03006D80                ; 0804F100
ldr   r1,=0x021A                    ; 0804F102
add   r2,r3,r1                      ; 0804F104
ldrh  r4,[r2]                       ; 0804F106
mov   r5,0x0                        ; 0804F108
ldsh  r0,[r2,r5]                    ; 0804F10A
cmp   r0,0x0                        ; 0804F10C
blt   @@Code0804F112                ; 0804F10E
b     @@Code0804F274                ; 0804F110
@@Code0804F112:
mov   r1,r9                         ; 0804F112
add   r1,0x5C                       ; 0804F114
ldr   r0,=0x03007240                ; 0804F116  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                       ; 0804F118
ldr   r5,=0x2B3A                    ; 0804F11A
add   r0,r0,r5                      ; 0804F11C
ldrb  r0,[r0]                       ; 0804F11E
lsl   r0,r0,0x1C                    ; 0804F120
lsr   r0,r0,0x1C                    ; 0804F122
ldrh  r1,[r1]                       ; 0804F124
orr   r0,r1                         ; 0804F126
cmp   r0,0x0                        ; 0804F128
bne   @@Code0804F162                ; 0804F12A
add   r0,r4,0x1                     ; 0804F12C
strh  r0,[r2]                       ; 0804F12E
lsl   r0,r0,0x10                    ; 0804F130
cmp   r0,0x0                        ; 0804F132
bge   @@Code0804F1BC                ; 0804F134
ldrh  r1,[r3,0x2C]                  ; 0804F136
mov   r0,r1                         ; 0804F138
sub   r0,0x38                       ; 0804F13A
lsl   r0,r0,0x10                    ; 0804F13C
cmp   r0,0x0                        ; 0804F13E
blt   @@Code0804F162                ; 0804F140
mov   r0,r1                         ; 0804F142
sub   r0,0xB8                       ; 0804F144
lsl   r0,r0,0x10                    ; 0804F146
cmp   r0,0x0                        ; 0804F148
bge   @@Code0804F162                ; 0804F14A
ldrh  r1,[r3,0x2E]                  ; 0804F14C
mov   r0,r1                         ; 0804F14E
sub   r0,0x40                       ; 0804F150
lsl   r0,r0,0x10                    ; 0804F152
cmp   r0,0x0                        ; 0804F154
blt   @@Code0804F162                ; 0804F156
mov   r0,r1                         ; 0804F158
sub   r0,0x80                       ; 0804F15A
lsl   r0,r0,0x10                    ; 0804F15C
cmp   r0,0x0                        ; 0804F15E
blt   @@Code0804F258                ; 0804F160
@@Code0804F162:
ldr   r2,=0x03006D80                ; 0804F162
mov   r0,0xD3                       ; 0804F164
lsl   r0,r0,0x1                     ; 0804F166
add   r1,r2,r0                      ; 0804F168
mov   r0,0x1                        ; 0804F16A
strh  r0,[r1]                       ; 0804F16C
mov   r3,0xD4                       ; 0804F16E
lsl   r3,r3,0x1                     ; 0804F170
add   r1,r2,r3                      ; 0804F172
strh  r0,[r1]                       ; 0804F174
strh  r0,[r6,0x14]                  ; 0804F176
strh  r0,[r6,0x12]                  ; 0804F178
ldr   r1,=0x03002200                ; 0804F17A
ldr   r5,=0x47E4                    ; 0804F17C
add   r0,r1,r5                      ; 0804F17E
ldrh  r0,[r0]                       ; 0804F180
lsl   r0,r0,0x8                     ; 0804F182
str   r0,[r6]                       ; 0804F184
ldr   r0,=0x47EC                    ; 0804F186
add   r1,r1,r0                      ; 0804F188
ldrh  r0,[r1]                       ; 0804F18A
ldr   r1,=0x025E                    ; 0804F18C
add   r2,r2,r1                      ; 0804F18E
ldrh  r1,[r2]                       ; 0804F190
sub   r0,r0,r1                      ; 0804F192
lsl   r0,r0,0x8                     ; 0804F194
str   r0,[r6,0x4]                   ; 0804F196
b     @@Code0804F274                ; 0804F198
.pool                               ; 0804F19A

@@Code0804F1BC:
strh  r4,[r2]                       ; 0804F1BC
ldr   r2,=0x03002200                ; 0804F1BE
ldr   r5,=0x0242                    ; 0804F1C0
add   r7,r3,r5                      ; 0804F1C2
ldrh  r0,[r7]                       ; 0804F1C4
ldr   r1,=0x47F6                    ; 0804F1C6
add   r5,r2,r1                      ; 0804F1C8
strh  r0,[r5]                       ; 0804F1CA
mov   r0,0x91                       ; 0804F1CC
lsl   r0,r0,0x2                     ; 0804F1CE
add   r0,r0,r3                      ; 0804F1D0
mov   r8,r0                         ; 0804F1D2
ldrh  r0,[r0]                       ; 0804F1D4
add   r1,0x2                        ; 0804F1D6
add   r4,r2,r1                      ; 0804F1D8
strh  r0,[r4]                       ; 0804F1DA
ldr   r0,[r6]                       ; 0804F1DC
asr   r0,r0,0x8                     ; 0804F1DE
ldr   r3,=0x47FA                    ; 0804F1E0
add   r1,r2,r3                      ; 0804F1E2
strh  r0,[r1]                       ; 0804F1E4
ldr   r0,[r6,0x4]                   ; 0804F1E6
asr   r0,r0,0x8                     ; 0804F1E8
add   r3,0x2                        ; 0804F1EA
add   r1,r2,r3                      ; 0804F1EC
strh  r0,[r1]                       ; 0804F1EE
mov   r0,0x90                       ; 0804F1F0
lsl   r0,r0,0x7                     ; 0804F1F2
add   r2,r2,r0                      ; 0804F1F4
mov   r0,0xC0                       ; 0804F1F6
lsl   r0,r0,0x3                     ; 0804F1F8
strh  r0,[r2]                       ; 0804F1FA
bl    Sub080DC778                   ; 0804F1FC
mov   r1,0x0                        ; 0804F200
ldsh  r0,[r5,r1]                    ; 0804F202
str   r0,[r6,0x8]                   ; 0804F204
mov   r2,0x0                        ; 0804F206
ldsh  r0,[r4,r2]                    ; 0804F208
str   r0,[r6,0xC]                   ; 0804F20A
mov   r0,r6                         ; 0804F20C
bl    Sub0804ECA4                   ; 0804F20E
ldr   r1,[r6]                       ; 0804F212
asr   r1,r1,0x8                     ; 0804F214
ldrh  r0,[r7]                       ; 0804F216
sub   r0,r0,r1                      ; 0804F218
lsl   r0,r0,0x10                    ; 0804F21A
lsr   r1,r0,0x10                    ; 0804F21C
cmp   r1,0x0                        ; 0804F21E
beq   @@Code0804F232                ; 0804F220
ldr   r0,[r6,0x8]                   ; 0804F222
eor   r1,r0                         ; 0804F224
lsl   r0,r1,0x10                    ; 0804F226
cmp   r0,0x0                        ; 0804F228
bge   @@Code0804F274                ; 0804F22A
ldrh  r0,[r7]                       ; 0804F22C
lsl   r0,r0,0x8                     ; 0804F22E
str   r0,[r6]                       ; 0804F230
@@Code0804F232:
ldr   r1,[r6,0x4]                   ; 0804F232
asr   r1,r1,0x8                     ; 0804F234
mov   r3,r8                         ; 0804F236
ldrh  r0,[r3]                       ; 0804F238
sub   r0,r0,r1                      ; 0804F23A
lsl   r0,r0,0x10                    ; 0804F23C
lsr   r1,r0,0x10                    ; 0804F23E
cmp   r1,0x0                        ; 0804F240
beq   @@Code0804F254                ; 0804F242
ldr   r0,[r6,0xC]                   ; 0804F244
eor   r1,r0                         ; 0804F246
lsl   r0,r1,0x10                    ; 0804F248
cmp   r0,0x0                        ; 0804F24A
bge   @@Code0804F274                ; 0804F24C
ldrh  r0,[r3]                       ; 0804F24E
lsl   r0,r0,0x8                     ; 0804F250
str   r0,[r6,0x4]                   ; 0804F252
@@Code0804F254:
bl    Sub080375B8                   ; 0804F254
@@Code0804F258:
ldr   r0,=0x03006D80                ; 0804F258
ldr   r5,=0x021A                    ; 0804F25A
add   r2,r0,r5                      ; 0804F25C
mov   r1,0x0                        ; 0804F25E
strh  r1,[r2]                       ; 0804F260
mov   r3,0xD3                       ; 0804F262
lsl   r3,r3,0x1                     ; 0804F264
add   r2,r0,r3                      ; 0804F266
strh  r1,[r2]                       ; 0804F268
sub   r5,0x72                       ; 0804F26A
add   r0,r0,r5                      ; 0804F26C
strh  r1,[r0]                       ; 0804F26E
strh  r1,[r6,0x14]                  ; 0804F270
strh  r1,[r6,0x12]                  ; 0804F272
@@Code0804F274:
pop   {r3-r4}                       ; 0804F274
mov   r8,r3                         ; 0804F276
mov   r9,r4                         ; 0804F278
pop   {r4-r7}                       ; 0804F27A
pop   {r0}                          ; 0804F27C
bx    r0                            ; 0804F27E
.pool                               ; 0804F280

Sub0804F298:
push  {r4-r6,lr}                    ; 0804F298
ldr   r0,=0x03007240                ; 0804F29A  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r6,[r0]                       ; 0804F29C
ldr   r0,=0x25F4                    ; 0804F29E
add   r1,r6,r0                      ; 0804F2A0
mov   r2,0x0                        ; 0804F2A2
mov   r0,0x10                       ; 0804F2A4
strh  r0,[r1]                       ; 0804F2A6
ldr   r0,=0x03002200                ; 0804F2A8
ldr   r3,=0x47E4                    ; 0804F2AA
add   r1,r0,r3                      ; 0804F2AC
ldrh  r5,[r1]                       ; 0804F2AE
ldr   r3,=0xFFFFFEA0                ; 0804F2B0
add   r0,r5,r3                      ; 0804F2B2
strh  r0,[r1]                       ; 0804F2B4
strh  r2,[r6,0x1A]                  ; 0804F2B6
ldrh  r0,[r1]                       ; 0804F2B8
cmp   r0,r5                         ; 0804F2BA
beq   @@Code0804F2D0                ; 0804F2BC
mov   r4,r1                         ; 0804F2BE
@@Code0804F2C0:
ldrh  r0,[r4]                       ; 0804F2C0
add   r0,0x10                       ; 0804F2C2
strh  r0,[r4]                       ; 0804F2C4
bl    Sub0804E904                   ; 0804F2C6
ldrh  r0,[r4]                       ; 0804F2CA
cmp   r0,r5                         ; 0804F2CC
bne   @@Code0804F2C0                ; 0804F2CE
@@Code0804F2D0:
mov   r0,r6                         ; 0804F2D0
add   r0,0x66                       ; 0804F2D2
mov   r1,0x80                       ; 0804F2D4
lsl   r1,r1,0x7                     ; 0804F2D6
strh  r1,[r0]                       ; 0804F2D8
sub   r0,0x2                        ; 0804F2DA
strh  r1,[r0]                       ; 0804F2DC
pop   {r4-r6}                       ; 0804F2DE
pop   {r0}                          ; 0804F2E0
bx    r0                            ; 0804F2E2
.pool                               ; 0804F2E4

Sub0804F2F8:
push  {lr}                          ; 0804F2F8
bl    Sub0804EFCC                   ; 0804F2FA
pop   {r0}                          ; 0804F2FE
bx    r0                            ; 0804F300
.pool                               ; 0804F302

Sub0804F304:
push  {lr}                          ; 0804F304
bl    Sub0804E904                   ; 0804F306
bl    Sub0804EFCC                   ; 0804F30A
pop   {r0}                          ; 0804F30E
bx    r0                            ; 0804F310
.pool                               ; 0804F312
