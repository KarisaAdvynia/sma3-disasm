Sub0805111C:
push  {lr}                          ; 0805111C
mov   r1,r0                         ; 0805111E
add   r0,0x94                       ; 08051120
ldrb  r0,[r0]                       ; 08051122
cmp   r0,0xFF                       ; 08051124
beq   @@Code08051148                ; 08051126
ldrh  r0,[r1,0x34]                  ; 08051128
lsl   r0,r0,0x10                    ; 0805112A
cmp   r0,0x0                        ; 0805112C
blt   @@Code08051148                ; 0805112E
lsr   r2,r0,0x12                    ; 08051130
lsl   r2,r2,0x3                     ; 08051132
ldr   r0,=0x03005A00                ; 08051134
add   r2,r2,r0                      ; 08051136
ldrh  r1,[r2,0x2]                   ; 08051138
ldr   r0,=0x3FFF                    ; 0805113A
and   r0,r1                         ; 0805113C
mov   r3,0x80                       ; 0805113E
lsl   r3,r3,0x8                     ; 08051140
mov   r1,r3                         ; 08051142
orr   r0,r1                         ; 08051144
strh  r0,[r2,0x2]                   ; 08051146
@@Code08051148:
pop   {r0}                          ; 08051148
bx    r0                            ; 0805114A
.pool                               ; 0805114C

SuperBabyEgg_Main:
; sprite 029 main
push  {r4-r7,lr}                    ; 08051154
mov   r7,r8                         ; 08051156
push  {r7}                          ; 08051158
mov   r7,r0                         ; 0805115A
ldr   r0,=0x03007240                ; 0805115C  Normal gameplay IWRAM (Ptr to 0300220C)
mov   r8,r0                         ; 0805115E
ldr   r4,[r0]                       ; 08051160
mov   r0,r7                         ; 08051162
bl    Sub0805111C                   ; 08051164
mov   r6,r7                         ; 08051168
add   r6,0x48                       ; 0805116A
ldrh  r0,[r6]                       ; 0805116C
cmp   r0,0x0                        ; 0805116E
beq   @@Code08051220                ; 08051170
sub   r0,0x1                        ; 08051172
strh  r0,[r6]                       ; 08051174
lsl   r0,r0,0x10                    ; 08051176
lsr   r5,r0,0x10                    ; 08051178
cmp   r5,0x0                        ; 0805117A
beq   @@Code08051194                ; 0805117C
cmp   r5,0x2                        ; 0805117E
beq   @@Code08051184                ; 08051180
b     @@Return                      ; 08051182
@@Code08051184:
mov   r1,r7                         ; 08051184
add   r1,0x94                       ; 08051186
mov   r0,0xFF                       ; 08051188
strb  r0,[r1]                       ; 0805118A
b     @@Return                      ; 0805118C
.pool                               ; 0805118E

@@Code08051194:
bl    Sub08046B88                   ; 08051194
mov   r2,r4                         ; 08051198
add   r2,0xA6                       ; 0805119A
ldrh  r1,[r2]                       ; 0805119C
ldr   r0,=0xFFEF                    ; 0805119E
and   r0,r1                         ; 080511A0
strh  r0,[r2]                       ; 080511A2
ldr   r6,=0x03006D80                ; 080511A4
strh  r5,[r6,0x32]                  ; 080511A6
bl    Sub0804197C                   ; 080511A8
ldr   r0,[r6,0x4]                   ; 080511AC
mov   r1,0x80                       ; 080511AE
lsl   r1,r1,0x3                     ; 080511B0
mov   r8,r1                         ; 080511B2
add   r0,r8                         ; 080511B4
str   r0,[r6,0x4]                   ; 080511B6
mov   r0,0x8                        ; 080511B8
strh  r0,[r6,0x3E]                  ; 080511BA
strh  r0,[r6,0x3C]                  ; 080511BC
ldr   r0,=0xFFFFFC00                ; 080511BE
str   r0,[r6,0xC]                   ; 080511C0
str   r5,[r6,0x28]                  ; 080511C2
mov   r0,r6                         ; 080511C4
add   r0,0x50                       ; 080511C6
strh  r5,[r0]                       ; 080511C8
mov   r0,r7                         ; 080511CA
bl    RemoveFromEggSlotsIfPresent   ; 080511CC
mov   r0,r7                         ; 080511D0
bl    ClearSpriteSlot               ; 080511D2
mov   r0,r7                         ; 080511D6
mov   r1,0x61                       ; 080511D8
bl    Sub0804A250                   ; 080511DA
mov   r4,0x1                        ; 080511DE
strh  r4,[r7,0x24]                  ; 080511E0
ldr   r0,[r6,0x4]                   ; 080511E2
add   r0,r8                         ; 080511E4
str   r0,[r7,0x4]                   ; 080511E6
ldr   r0,[r6]                       ; 080511E8
str   r0,[r7]                       ; 080511EA
mov   r0,r7                         ; 080511EC
add   r0,0x72                       ; 080511EE
strh  r4,[r0]                       ; 080511F0
mov   r0,r7                         ; 080511F2
bl    Sub080E0BD0                   ; 080511F4
mov   r3,0x99                       ; 080511F8
lsl   r3,r3,0x2                     ; 080511FA
add   r0,r6,r3                      ; 080511FC
strh  r4,[r0]                       ; 080511FE
mov   r1,0xD4                       ; 08051200
lsl   r1,r1,0x1                     ; 08051202
add   r0,r6,r1                      ; 08051204
strh  r5,[r0]                       ; 08051206
sub   r3,0xBE                       ; 08051208
add   r0,r6,r3                      ; 0805120A
strh  r5,[r0]                       ; 0805120C
bl    ProcessSublevelHeaderMusic    ; 0805120E  revert to music from header
b     @@Return                      ; 08051212
.pool                               ; 08051214

@@Code08051220:
mov   r0,r7                         ; 08051220
bl    Sub08050B58                   ; 08051222
lsl   r0,r0,0x18                    ; 08051226
cmp   r0,0x0                        ; 08051228
bne   @@Return                      ; 0805122A
ldr   r4,=0x03006D80                ; 0805122C
mov   r0,r4                         ; 0805122E
add   r0,0xAE                       ; 08051230
ldrh  r5,[r0]                       ; 08051232
cmp   r5,0x1                        ; 08051234
bne   @@Code0805129C                ; 08051236
mov   r0,r8                         ; 08051238
ldr   r2,[r0]                       ; 0805123A
mov   r0,r4                         ; 0805123C
add   r0,0x98                       ; 0805123E
mov   r1,r7                         ; 08051240
add   r1,0x5A                       ; 08051242
mov   r3,0x0                        ; 08051244
ldsh  r0,[r0,r3]                    ; 08051246
ldrh  r1,[r1]                       ; 08051248
add   r0,r0,r1                      ; 0805124A
asr   r0,r0,0x1                     ; 0805124C
ldr   r3,=0x2A12                    ; 0805124E
add   r1,r2,r3                      ; 08051250
strh  r0,[r1]                       ; 08051252
mov   r0,r4                         ; 08051254
add   r0,0x9A                       ; 08051256
mov   r1,r7                         ; 08051258
add   r1,0x5C                       ; 0805125A
mov   r3,0x0                        ; 0805125C
ldsh  r0,[r0,r3]                    ; 0805125E
ldrh  r1,[r1]                       ; 08051260
add   r0,r0,r1                      ; 08051262
asr   r0,r0,0x1                     ; 08051264
ldr   r1,=0x2A16                    ; 08051266
add   r2,r2,r1                      ; 08051268
strh  r0,[r2]                       ; 0805126A
ldr   r1,=0x01F1                    ; 0805126C
mov   r0,r7                         ; 0805126E
bl    Sub0804A99C                   ; 08051270
mov   r0,0x12                       ; 08051274
strh  r0,[r6]                       ; 08051276
mov   r3,0xD4                       ; 08051278
lsl   r3,r3,0x1                     ; 0805127A
add   r0,r4,r3                      ; 0805127C
strh  r5,[r0]                       ; 0805127E
mov   r1,0xD3                       ; 08051280
lsl   r1,r1,0x1                     ; 08051282
add   r0,r4,r1                      ; 08051284
strh  r5,[r0]                       ; 08051286
b     @@Return                      ; 08051288
.pool                               ; 0805128A

@@Code0805129C:
mov   r0,r7                         ; 0805129C
bl    Sub08050E68                   ; 0805129E
@@Return:
pop   {r3}                          ; 080512A2
mov   r8,r3                         ; 080512A4
pop   {r4-r7}                       ; 080512A6
pop   {r0}                          ; 080512A8
bx    r0                            ; 080512AA
