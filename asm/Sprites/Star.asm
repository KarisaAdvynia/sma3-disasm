StarSpr_Init:
; sprite 1A2 init
add   r0,0x42                       ; 08052FA0
mov   r1,0xA0                       ; 08052FA2
lsl   r1,r1,0x2                     ; 08052FA4
strh  r1,[r0]                       ; 08052FA6
bx    lr                            ; 08052FA8
.pool                               ; 08052FAA

Sub08052FAC:
push  {r4,lr}                       ; 08052FAC
mov   r4,r0                         ; 08052FAE
ldr   r0,=0x01F9                    ; 08052FB0
bl    SpawnSecondarySprite          ; 08052FB2
lsl   r0,r0,0x18                    ; 08052FB6
lsr   r0,r0,0x18                    ; 08052FB8
ldr   r2,=0x03007240                ; 08052FBA  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r1,0xB0                       ; 08052FBC
mul   r0,r1                         ; 08052FBE
ldr   r1,=0x1AF4                    ; 08052FC0
add   r0,r0,r1                      ; 08052FC2
ldr   r1,[r2]                       ; 08052FC4
add   r1,r1,r0                      ; 08052FC6
ldr   r0,[r4]                       ; 08052FC8
mov   r2,0x80                       ; 08052FCA
lsl   r2,r2,0x4                     ; 08052FCC
add   r0,r0,r2                      ; 08052FCE
str   r0,[r1]                       ; 08052FD0
ldr   r0,[r4,0x4]                   ; 08052FD2
add   r0,r0,r2                      ; 08052FD4
str   r0,[r1,0x4]                   ; 08052FD6
mov   r0,0x4                        ; 08052FD8
strh  r0,[r1,0x38]                  ; 08052FDA
add   r1,0x42                       ; 08052FDC
mov   r0,0x2                        ; 08052FDE
strh  r0,[r1]                       ; 08052FE0
pop   {r4}                          ; 08052FE2
pop   {r0}                          ; 08052FE4
bx    r0                            ; 08052FE6
.pool                               ; 08052FE8

StarSpr_Main:
; sprite 1A2 main
push  {r4-r6,lr}                    ; 08052FF4
mov   r4,r0                         ; 08052FF6
bl    Sub0805EDA0                   ; 08052FF8
ldr   r6,=0x03006D80                ; 08052FFC
mov   r1,0xD4                       ; 08052FFE
lsl   r1,r1,0x1                     ; 08053000
add   r0,r6,r1                      ; 08053002
ldr   r5,=0x03007240                ; 08053004  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r2,[r5]                       ; 08053006
ldr   r3,=0x29B0                    ; 08053008
add   r1,r2,r3                      ; 0805300A
ldrh  r0,[r0]                       ; 0805300C
ldrh  r1,[r1]                       ; 0805300E
orr   r0,r1                         ; 08053010
ldr   r1,=0x29BA                    ; 08053012
add   r2,r2,r1                      ; 08053014
ldrh  r1,[r2]                       ; 08053016
orr   r0,r1                         ; 08053018
cmp   r0,0x0                        ; 0805301A
beq   @@Code08053020                ; 0805301C
b     @@Return                      ; 0805301E
@@Code08053020:
ldrh  r1,[r4,0x28]                  ; 08053020
mov   r0,0x1F                       ; 08053022
and   r0,r1                         ; 08053024
cmp   r0,0x0                        ; 08053026
bne   @@Code08053030                ; 08053028
mov   r0,r4                         ; 0805302A
bl    Sub080DEA48                   ; 0805302C
@@Code08053030:
mov   r0,r4                         ; 08053030
add   r0,0x46                       ; 08053032
ldrh  r0,[r0]                       ; 08053034
cmp   r0,0x0                        ; 08053036
bne   @@Code080530C4                ; 08053038
mov   r0,r4                         ; 0805303A
add   r0,0xA3                       ; 0805303C
ldrb  r1,[r0]                       ; 0805303E
mov   r0,0x80                       ; 08053040
and   r0,r1                         ; 08053042
cmp   r0,0x0                        ; 08053044
beq   @@Code080530C4                ; 08053046
ldr   r1,=0x03002200                ; 08053048
ldrh  r0,[r6,0x2C]                  ; 0805304A
ldr   r2,=0x4058                    ; 0805304C
add   r1,r1,r2                      ; 0805304E
strh  r0,[r1]                       ; 08053050
mov   r0,0x78                       ; 08053052
bl    PlayYISound                   ; 08053054
mov   r0,r4                         ; 08053058
bl    Sub08052FAC                   ; 0805305A
ldr   r2,[r5]                       ; 0805305E
ldr   r0,[r4]                       ; 08053060
asr   r0,r0,0x8                     ; 08053062
ldr   r3,=0x29D2                    ; 08053064
add   r1,r2,r3                      ; 08053066
strh  r0,[r1]                       ; 08053068
ldr   r0,[r4,0x4]                   ; 0805306A
asr   r0,r0,0x8                     ; 0805306C
add   r3,0x4                        ; 0805306E
add   r1,r2,r3                      ; 08053070
strh  r0,[r1]                       ; 08053072
ldr   r0,=0x29DA                    ; 08053074
add   r2,r2,r0                      ; 08053076
mov   r0,0x3                        ; 08053078
strh  r0,[r2]                       ; 0805307A
bl    Sub0804A428                   ; 0805307C
ldr   r1,[r5]                       ; 08053080
ldr   r3,=0x29B6                    ; 08053082
add   r2,r1,r3                      ; 08053084
ldrh  r0,[r2]                       ; 08053086
add   r0,0xA                        ; 08053088
strh  r0,[r2]                       ; 0805308A
ldr   r0,=0x2A6E                    ; 0805308C
add   r1,r1,r0                      ; 0805308E
mov   r0,0x82                       ; 08053090
strh  r0,[r1]                       ; 08053092
mov   r0,r4                         ; 08053094
bl    ClearSpriteSlot               ; 08053096
b     @@Return                      ; 0805309A
.pool                               ; 0805309C

@@Code080530C4:
mov   r0,r4                         ; 080530C4
add   r0,0x42                       ; 080530C6
ldrh  r2,[r0]                       ; 080530C8
cmp   r2,0x0                        ; 080530CA
bne   @@Code080530D6                ; 080530CC
mov   r0,r4                         ; 080530CE
bl    DespawnSprite                 ; 080530D0
b     @@Return                      ; 080530D4
@@Code080530D6:
lsr   r2,r2,0x4                     ; 080530D6
mov   r0,0x3F                       ; 080530D8
and   r2,r0                         ; 080530DA
ldr   r0,=0x03002200                ; 080530DC
ldr   r1,=0x48A2                    ; 080530DE
add   r0,r0,r1                      ; 080530E0
ldrh  r1,[r0]                       ; 080530E2
ldr   r0,=Data08172308              ; 080530E4
add   r2,r2,r0                      ; 080530E6
ldrb  r0,[r2]                       ; 080530E8
and   r1,r0                         ; 080530EA
cmp   r1,0x0                        ; 080530EC
beq   @@Code08053104                ; 080530EE
mov   r1,r4                         ; 080530F0
add   r1,0x94                       ; 080530F2
mov   r0,0xFF                       ; 080530F4
b     @@Code0805310A                ; 080530F6
.pool                               ; 080530F8

@@Code08053104:
mov   r1,r4                         ; 08053104
add   r1,0x94                       ; 08053106
mov   r0,0x5                        ; 08053108
@@Code0805310A:
strb  r0,[r1]                       ; 0805310A
mov   r3,r4                         ; 0805310C
add   r3,0x6A                       ; 0805310E
ldrh  r2,[r3]                       ; 08053110
cmp   r2,0x0                        ; 08053112
bne   @@Code0805315C                ; 08053114
ldrh  r1,[r4,0x3E]                  ; 08053116
mov   r0,0x1                        ; 08053118
and   r0,r1                         ; 0805311A
cmp   r0,0x0                        ; 0805311C
bne   @@Code08053148                ; 0805311E
ldrh  r0,[r4,0xC]                   ; 08053120
lsl   r0,r0,0x10                    ; 08053122
asr   r1,r0,0x10                    ; 08053124
cmp   r1,0x0                        ; 08053126
blt   @@Code08053138                ; 08053128
ldr   r1,=Data08172348              ; 0805312A
asr   r0,r0,0x17                    ; 0805312C
add   r0,r0,r1                      ; 0805312E
ldrb  r2,[r0]                       ; 08053130
b     @@Code08053144                ; 08053132
.pool                               ; 08053134

@@Code08053138:
mov   r0,0x80                       ; 08053138
neg   r0,r0                         ; 0805313A
mov   r2,0x2                        ; 0805313C
cmp   r1,r0                         ; 0805313E
bge   @@Code08053144                ; 08053140
mov   r2,0x1                        ; 08053142
@@Code08053144:
strh  r2,[r4,0x38]                  ; 08053144
b     @@Return                      ; 08053146
@@Code08053148:
strh  r2,[r4,0x38]                  ; 08053148
str   r2,[r4,0x8]                   ; 0805314A
mov   r1,r4                         ; 0805314C
add   r1,0x44                       ; 0805314E
mov   r0,0x2                        ; 08053150
strh  r0,[r1]                       ; 08053152
ldrh  r0,[r3]                       ; 08053154
add   r0,0x1                        ; 08053156
strh  r0,[r3]                       ; 08053158
b     @@Return                      ; 0805315A
@@Code0805315C:
mov   r0,r4                         ; 0805315C
add   r0,0x44                       ; 0805315E
ldrh  r5,[r0]                       ; 08053160
cmp   r5,0x0                        ; 08053162
bne   @@Return                      ; 08053164
mov   r2,r4                         ; 08053166
add   r2,0x76                       ; 08053168
ldrh  r0,[r2]                       ; 0805316A
cmp   r0,0x0                        ; 0805316C
bne   @@Code08053182                ; 0805316E
mov   r0,r4                         ; 08053170
add   r0,0x9F                       ; 08053172
ldrb  r0,[r0]                       ; 08053174
mov   r1,0x2                        ; 08053176
eor   r1,r0                         ; 08053178
strh  r1,[r4,0x36]                  ; 0805317A
ldrh  r0,[r2]                       ; 0805317C
add   r0,0x1                        ; 0805317E
strh  r0,[r2]                       ; 08053180
@@Code08053182:
ldr   r1,=Data08172300              ; 08053182
ldrh  r0,[r4,0x36]                  ; 08053184
lsr   r0,r0,0x1                     ; 08053186
lsl   r0,r0,0x2                     ; 08053188
add   r0,r0,r1                      ; 0805318A
ldr   r0,[r0]                       ; 0805318C
str   r0,[r4,0x8]                   ; 0805318E
ldr   r0,=0xFFFFFE00                ; 08053190
str   r0,[r4,0xC]                   ; 08053192
strh  r5,[r3]                       ; 08053194
@@Return:
pop   {r4-r6}                       ; 08053196
pop   {r0}                          ; 08053198
bx    r0                            ; 0805319A
.pool                               ; 0805319C
