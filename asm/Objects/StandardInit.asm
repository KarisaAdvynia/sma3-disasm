ObjFE_Init:
; object FE init
push  {lr}                      ; 0801A08C
lsl   r1,r1,0x10                ; 0801A08E
lsr   r1,r1,0x10                ; 0801A090
lsl   r2,r2,0x18                ; 0801A092
lsr   r2,r2,0x18                ; 0801A094
bl    ObjMain_NoRelY            ; 0801A096  Object processing main, no relative Y threshold
pop   {r0}                      ; 0801A09A
bx    r0                        ; 0801A09C
.pool                           ; 0801A09E

ObjF7_FC_Init:
; object F7-FD init
push  {lr}                      ; 0801A0A0
lsl   r1,r1,0x10                ; 0801A0A2
lsr   r1,r1,0x10                ; 0801A0A4
lsl   r2,r2,0x18                ; 0801A0A6
lsr   r2,r2,0x18                ; 0801A0A8
bl    ObjMain_NoRelY            ; 0801A0AA  Object processing main, no relative Y threshold
pop   {r0}                      ; 0801A0AE
bx    r0                        ; 0801A0B0
.pool                           ; 0801A0B2

ObjF6_Init:
; object F6 init
push  {lr}                      ; 0801A0B4
lsl   r1,r1,0x10                ; 0801A0B6
lsr   r1,r1,0x10                ; 0801A0B8
lsl   r2,r2,0x18                ; 0801A0BA
lsr   r2,r2,0x18                ; 0801A0BC
bl    ObjMain_Slope0_NoRelY     ; 0801A0BE  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A0C2
bx    r0                        ; 0801A0C4
.pool                           ; 0801A0C6

ObjF5_Init:
; object F5 init
push  {lr}                      ; 0801A0C8
lsl   r1,r1,0x10                ; 0801A0CA
lsr   r1,r1,0x10                ; 0801A0CC
lsl   r2,r2,0x18                ; 0801A0CE
lsr   r2,r2,0x18                ; 0801A0D0
bl    ObjMain_Slope0_NoRelY     ; 0801A0D2  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A0D6
bx    r0                        ; 0801A0D8
.pool                           ; 0801A0DA

ObjF0_F3_Init:
; object F0-F3 init
push  {r4-r7,lr}                ; 0801A0DC
mov   r7,r9                     ; 0801A0DE
mov   r6,r8                     ; 0801A0E0
push  {r6-r7}                   ; 0801A0E2
mov   r12,r0                    ; 0801A0E4
lsl   r1,r1,0x10                ; 0801A0E6
lsr   r1,r1,0x10                ; 0801A0E8
mov   r9,r1                     ; 0801A0EA
lsl   r2,r2,0x18                ; 0801A0EC
lsr   r2,r2,0x18                ; 0801A0EE
mov   r8,r2                     ; 0801A0F0
add   r0,0x48                   ; 0801A0F2  [03007240]+48 (03002254)
ldrh  r1,[r0]                   ; 0801A0F4  r1 = tile YXyx
ldrb  r0,[r0]                   ; 0801A0F6  tile yx
lsr   r5,r0,0x4                 ; 0801A0F8  tile y
mov   r6,0xF                    ; 0801A0FA
and   r6,r1                     ; 0801A0FC  tile x
lsr   r3,r1,0x8                 ; 0801A0FE  tile YX
mov   r0,r3                     ; 0801A100  tile YX
mov   r1,0xF0                   ; 0801A102  r1 = F0
and   r3,r1                     ; 0801A104  tile Y0
orr   r5,r3                     ; 0801A106  r5 = object Y position
lsl   r0,r0,0x1C                ; 0801A108
lsr   r0,r0,0x18                ; 0801A10A  tile X0
orr   r6,r0                     ; 0801A10C  r6 = object X position
mov   r4,0x0                    ; 0801A10E  r4 = 0
mov   r0,0xA3                   ; 0801A110
lsl   r0,r0,0x1                 ; 0801A112  0146  
add   r0,r12                    ; 0801A114  [03007240]+146 (03002352)
ldrb  r3,[r0]                   ; 0801A116  slot 0's width-1
ldr   r7,=ObjF0_F3_MaxYShift    ; 0801A118  pointer to max Y shifts by object (20 40 E0 C0)
cmp   r3,0x0                    ; 0801A11A
beq   @@LoopEnd                 ; 0801A11C  if slot 0 has no width, skip loop
add   r1,0x54                   ; 0801A11E  144
add   r1,r12                    ; 0801A120  r1 = [03007240]+144 (03002350)
@@Loop:                         ;          \ loop: calculate table index
add   r0,r4,0x6                 ; 0801A122  iterate over 0x13 6-byte slots
lsl   r0,r0,0x18                ; 0801A124
lsr   r4,r0,0x18                ; 0801A126
cmp   r4,0x71                   ; 0801A128
bhi   @@LoopEnd                 ; 0801A12A
add   r0,r4,0x2                 ; 0801A12C
add   r0,r1,r0                  ; 0801A12E
ldrb  r3,[r0]                   ; 0801A130
cmp   r3,0x0                    ; 0801A132  if this slot has no width-1, exit loop
bne   @@Loop                    ; 0801A134 /
@@LoopEnd:
mov   r2,0xA2                   ; 0801A136
lsl   r2,r2,0x1                 ; 0801A138  144
add   r2,r12                    ; 0801A13A  [03007240]+144 (03002350)
add   r0,r2,r4                  ; 0801A13C  pointer to first unused 6-byte slot?
strb  r6,[r0]                   ; 0801A13E  byte 0 = object X position
add   r0,r4,0x1                 ; 0801A140
add   r0,r2,r0                  ; 0801A142
strb  r5,[r0]                   ; 0801A144  byte 1 = object Y position
add   r1,r4,0x2                 ; 0801A146
add   r1,r2,r1                  ; 0801A148
mov   r0,r12                    ; 0801A14A
add   r0,0x4E                   ; 0801A14C  [03007240]+4E (0300225A)
ldrb  r0,[r0]                   ; 0801A14E  object width
sub   r0,0x1                    ; 0801A150
strb  r0,[r1]                   ; 0801A152  byte 2 = obj width -1
add   r1,r4,0x3                 ; 0801A154
add   r1,r2,r1                  ; 0801A156
mov   r0,r12                    ; 0801A158
add   r0,0x52                   ; 0801A15A  [03007240]+52 (0300225E)
ldrb  r0,[r0]                   ; 0801A15C  object height
sub   r0,0x1                    ; 0801A15E
strb  r0,[r1]                   ; 0801A160  byte 3 = obj height -1
mov   r5,r12                    ; 0801A162
add   r5,0x42                   ; 0801A164  [03007240]+42 (0300224E)
ldrb  r1,[r5]                   ; 0801A166  object ID
mov   r0,0xF                    ; 0801A168
and   r0,r1                     ; 0801A16A  objID-F0
add   r0,r0,r7                  ; 0801A16C  index 08167E74 with objID-F0
ldrb  r3,[r0]                   ; 0801A16E  20 40 E0 C0 for F0-F3
add   r0,r4,0x4                 ; 0801A170
add   r2,r2,r0                  ; 0801A172
strb  r3,[r2]                   ; 0801A174  byte 4 = max Y shift, from table
mov   r0,r12                    ; 0801A176
add   r0,0x48                   ; 0801A178  [03007240]+48 (03002254)
ldrh  r1,[r0]                   ; 0801A17A  tile YXyx
lsr   r0,r1,0x4                 ; 0801A17C
eor   r0,r1                     ; 0801A17E
mov   r1,0x1                    ; 0801A180
and   r0,r1                     ; 0801A182  tile Y^X parity
mov   r1,r12                    ; 0801A184
strh  r0,[r1,0x3A]              ; 0801A186  [03002246] = tile Y^X parity
mov   r0,0x80                   ; 0801A188
lsl   r0,r0,0x8                 ; 0801A18A  8000
strh  r0,[r5]                   ; 0801A18C  [0300224E] = 8000  
mov   r0,r12                    ; 0801A18E
mov   r1,r9                     ; 0801A190
mov   r2,r8                     ; 0801A192
bl    ObjMain_Slope0_NoRelY     ; 0801A194  Object processing main, slope=0, no relative Y threshold
pop   {r3-r4}                   ; 0801A198
mov   r8,r3                     ; 0801A19A
mov   r9,r4                     ; 0801A19C
pop   {r4-r7}                   ; 0801A19E
pop   {r0}                      ; 0801A1A0
bx    r0                        ; 0801A1A2
.pool                           ; 0801A1A4

ObjEE_EF_Init:
; object EE-EF init
push  {r4-r6,lr}                ; 0801A1A8
mov   r4,r0                     ; 0801A1AA
lsl   r1,r1,0x10                ; 0801A1AC
lsr   r6,r1,0x10                ; 0801A1AE
lsl   r2,r2,0x18                ; 0801A1B0
lsr   r5,r2,0x18                ; 0801A1B2
add   r0,0x48                   ; 0801A1B4
ldrh  r0,[r0]                   ; 0801A1B6  tile YXyx
lsr   r3,r0,0x4                 ; 0801A1B8
eor   r3,r0                     ; 0801A1BA
mov   r2,0x1                    ; 0801A1BC
mov   r1,0x1                    ; 0801A1BE
and   r3,r1                     ; 0801A1C0  tile Y parity ^ X parity
strh  r3,[r4,0x3A]              ; 0801A1C2  [03002246] = tile Y^X parity
mov   r0,0x42                   ; 0801A1C4
add   r0,r0,r4                  ; 0801A1C6  0300224E
mov   r12,r0                    ; 0801A1C8
ldrh  r0,[r0]                   ; 0801A1CA  object ID
mov   r3,r1                     ; 0801A1CC  r3 = 1
and   r3,r0                     ; 0801A1CE  0 for EE, 1 for EF
eor   r3,r2                     ; 0801A1D0  1 for EE, 0 for EF
lsl   r0,r3,0x10                ; 0801A1D2
lsr   r3,r0,0x10                ; 0801A1D4
cmp   r3,0x0                    ; 0801A1D6
bne   @@Code0801A1DC            ; 0801A1D8
ldr   r3,=0xFFFF                ; 0801A1DA
@@Code0801A1DC:
mov   r0,r12                    ; 0801A1DC
strh  r3,[r0]                   ; 0801A1DE  [0300224E] = 1 for EE, FFFF for EF
mov   r0,r4                     ; 0801A1E0
mov   r1,r6                     ; 0801A1E2
mov   r2,r5                     ; 0801A1E4
bl    ObjMain_Slope0_NoRelY     ; 0801A1E6  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                   ; 0801A1EA
pop   {r0}                      ; 0801A1EC
bx    r0                        ; 0801A1EE
.pool                           ; 0801A1F0

ObjED_Init:
; object ED init
push  {r4-r5,lr}                ; 0801A1F4
lsl   r1,r1,0x10                ; 0801A1F6
lsr   r1,r1,0x10                ; 0801A1F8
lsl   r2,r2,0x18                ; 0801A1FA
lsr   r2,r2,0x18                ; 0801A1FC
mov   r3,r0                     ; 0801A1FE
add   r3,0x48                   ; 0801A200
ldrh  r4,[r3]                   ; 0801A202  tile YXyx
mov   r5,0x1                    ; 0801A204
lsr   r3,r4,0x4                 ; 0801A206
eor   r3,r4                     ; 0801A208
and   r3,r5                     ; 0801A20A  tile Y parity ^ X parity
mov   r4,r0                     ; 0801A20C
add   r4,0x42                   ; 0801A20E
strh  r3,[r4]                   ; 0801A210  [0300224E] = tile Y^X parity
bl    ObjMain_Slope0_NoRelY     ; 0801A212  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                   ; 0801A216
pop   {r0}                      ; 0801A218
bx    r0                        ; 0801A21A

ObjE4E5E6E8E9_AdjustHeight:
; called by E4-E6,E8-E9 init: subtract 2 from object Y, add 2 to object height
push  {r4,lr}                   ; 0801A21C
mov   r4,r0                     ; 0801A21E
add   r4,0x48                   ; 0801A220  r4 = [03007240]+48 (03002254)
ldrh  r3,[r4]                   ; 0801A222  r3 = tile YXyx
ldr   r2,=0xF0F0                ; 0801A224
mov   r1,r2                     ; 0801A226
and   r1,r3                     ; 0801A228
sub   r1,0x20                   ; 0801A22A
and   r1,r2                     ; 0801A22C
ldr   r2,=0x0F0F                ; 0801A22E
and   r2,r3                     ; 0801A230
orr   r2,r1                     ; 0801A232
strh  r2,[r4]                   ; 0801A234
add   r0,0x52                   ; 0801A236  r0 = [03007240]+52 (0300225E)
ldrh  r1,[r0]                   ; 0801A238
add   r1,0x2                    ; 0801A23A  add 2 to object's height
strh  r1,[r0]                   ; 0801A23C
pop   {r4}                      ; 0801A23E
pop   {r0}                      ; 0801A240
bx    r0                        ; 0801A242
.pool                           ; 0801A244

ObjEB_EC_Init:
; object EB-EC init
push  {r4-r5,lr}                ; 0801A24C
mov   r12,r0                    ; 0801A24E
lsl   r1,r1,0x10                ; 0801A250
lsr   r1,r1,0x10                ; 0801A252
lsl   r2,r2,0x18                ; 0801A254
lsr   r2,r2,0x18                ; 0801A256
mov   r4,r12                    ; 0801A258
add   r4,0x42                   ; 0801A25A  r4 = [03007240]+42 (0300224E)
ldrh  r3,[r4]                   ; 0801A25C  r3 = object ID (which is already in r1)
mov   r0,0x4                    ; 0801A25E
and   r0,r3                     ; 0801A260  r0 = 0 for EB, 4 for EC
lsl   r0,r0,0x10                ; 0801A262
lsr   r0,r0,0x11                ; 0801A264  r0 = 0 for EB, 2 for EC
lsl   r0,r0,0x10                ; 0801A266
lsr   r0,r0,0x10                ; 0801A268
strh  r0,[r4]                   ; 0801A26A  object ID = 0 for EB, 2 for EC
mov   r5,r12                    ; 0801A26C
add   r5,0x48                   ; 0801A26E  r0 = [03007240]+48 (03002254)
ldrh  r4,[r5]                   ; 0801A270  r4 = tile YXyx
ldr   r3,=0xF0F0                ; 0801A272
mov   r0,r3                     ; 0801A274  Y0y0
and   r0,r4                     ; 0801A276
sub   r0,0x10                   ; 0801A278  subtract 1 from y
and   r0,r3                     ; 0801A27A  handle carry
ldr   r3,=0x0F0F                ; 0801A27C
and   r3,r4                     ; 0801A27E  0X0x
orr   r3,r0                     ; 0801A280  YXyx with y-1
strh  r3,[r5]                   ; 0801A282  store position with y-1
mov   r3,r12                    ; 0801A284
add   r3,0x52                   ; 0801A286  r0 = [03007240]+52 (0300225E)
ldrh  r0,[r3]                   ; 0801A288 \
add   r0,0x1                    ; 0801A28A | increment object's height
strh  r0,[r3]                   ; 0801A28C /
mov   r0,r12                    ; 0801A28E
bl    ObjMain_Slope0_NoRelY     ; 0801A290  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                   ; 0801A294
pop   {r0}                      ; 0801A296
bx    r0                        ; 0801A298
.pool                           ; 0801A29A

ObjEA_Init:
; object EA init
push  {r4-r5,lr}                ; 0801A2A4
mov   r12,r0                    ; 0801A2A6
lsl   r1,r1,0x10                ; 0801A2A8
lsr   r1,r1,0x10                ; 0801A2AA
lsl   r2,r2,0x18                ; 0801A2AC
lsr   r2,r2,0x18                ; 0801A2AE
mov   r5,r12                    ; 0801A2B0
add   r5,0x48                   ; 0801A2B2  r5 = [03007240]+48 (03002254)
ldrh  r4,[r5]                   ; 0801A2B4  r4 = tile YXyx
ldr   r3,=0xF0F0                ; 0801A2B6
mov   r0,r3                     ; 0801A2B8
and   r0,r4                     ; 0801A2BA
sub   r0,0x10                   ; 0801A2BC
and   r0,r3                     ; 0801A2BE
ldr   r3,=0x0F0F                ; 0801A2C0
and   r3,r4                     ; 0801A2C2
orr   r3,r0                     ; 0801A2C4
strh  r3,[r5]                   ; 0801A2C6
mov   r3,r12                    ; 0801A2C8
add   r3,0x52                   ; 0801A2CA  r3 = [03007240]+52 (0300225E)
ldrh  r0,[r3]                   ; 0801A2CC
add   r0,0x1                    ; 0801A2CE  increment object's height
strh  r0,[r3]                   ; 0801A2D0
sub   r3,0xE                    ; 0801A2D2  r3 = [03007240]+44 (03002250)
ldr   r0,=0xFFFE                ; 0801A2D4  diagonal object, slope -2
strh  r0,[r3]                   ; 0801A2D6
mov   r0,r12                    ; 0801A2D8
bl    ObjMain_NoRelY            ; 0801A2DA  Object processing main, no relative Y threshold
pop   {r4-r5}                   ; 0801A2DE
pop   {r0}                      ; 0801A2E0
bx    r0                        ; 0801A2E2
.pool                           ; 0801A2E4

ObjE9_Init:
; object E9 init
push  {r4-r6,lr}                ; 0801A2F0
mov   r6,r0                     ; 0801A2F2
mov   r4,r1                     ; 0801A2F4
mov   r5,r2                     ; 0801A2F6
lsl   r4,r4,0x10                ; 0801A2F8
lsr   r4,r4,0x10                ; 0801A2FA
lsl   r5,r5,0x18                ; 0801A2FC
lsr   r5,r5,0x18                ; 0801A2FE
bl    ObjE4E5E6E8E9_AdjustHeight; 0801A300  objY -= 2, height += 2
mov   r1,r6                     ; 0801A304
add   r1,0x44                   ; 0801A306  r3 = [03007240]+44 (03002250)
ldr   r0,=0xFFFF                ; 0801A308  diagonal object, slope -1
strh  r0,[r1]                   ; 0801A30A
mov   r0,r6                     ; 0801A30C
mov   r1,r4                     ; 0801A30E
mov   r2,r5                     ; 0801A310
bl    ObjMain_NoRelY            ; 0801A312  Object processing main, no relative Y threshold
pop   {r4-r6}                   ; 0801A316
pop   {r0}                      ; 0801A318
bx    r0                        ; 0801A31A
.pool                           ; 0801A31C

ObjE8_Init:
; object E8 init
push  {r4-r6,lr}                ; 0801A320
mov   r6,r0                     ; 0801A322
mov   r4,r1                     ; 0801A324
mov   r5,r2                     ; 0801A326
lsl   r4,r4,0x10                ; 0801A328
lsr   r4,r4,0x10                ; 0801A32A
lsl   r5,r5,0x18                ; 0801A32C
lsr   r5,r5,0x18                ; 0801A32E
bl    ObjE4E5E6E8E9_AdjustHeight; 0801A330  objY -= 2, height += 2
mov   r1,r6                     ; 0801A334
add   r1,0x44                   ; 0801A336  r3 = [03007240]+44 (03002250)
ldr   r0,=0xFFFF                ; 0801A338  diagonal object, slope -1
strh  r0,[r1]                   ; 0801A33A
mov   r0,r6                     ; 0801A33C
mov   r1,r4                     ; 0801A33E
mov   r2,r5                     ; 0801A340
bl    ObjMain_NoRelY            ; 0801A342  Object processing main, no relative Y threshold
pop   {r4-r6}                   ; 0801A346
pop   {r0}                      ; 0801A348
bx    r0                        ; 0801A34A
.pool                           ; 0801A34C

ObjE7_Init:
; object E7 init
push  {r4-r5,lr}                ; 0801A350
mov   r12,r0                    ; 0801A352
lsl   r1,r1,0x10                ; 0801A354
lsr   r1,r1,0x10                ; 0801A356
lsl   r2,r2,0x18                ; 0801A358
lsr   r2,r2,0x18                ; 0801A35A
mov   r5,r12                    ; 0801A35C
add   r5,0x48                   ; 0801A35E  r5 = [03007240]+48 (03002254)
ldrh  r4,[r5]                   ; 0801A360  r4 = tile YXyx
ldr   r3,=0xF0F0                ; 0801A362
mov   r0,r3                     ; 0801A364
and   r0,r4                     ; 0801A366
sub   r0,0x10                   ; 0801A368
and   r0,r3                     ; 0801A36A
ldr   r3,=0x0F0F                ; 0801A36C
and   r3,r4                     ; 0801A36E
orr   r3,r0                     ; 0801A370
strh  r3,[r5]                   ; 0801A372
mov   r3,r12                    ; 0801A374
add   r3,0x52                   ; 0801A376  r3 = [03007240]+52 (0300225E)
ldrh  r0,[r3]                   ; 0801A378
add   r0,0x1                    ; 0801A37A  increment object's height
strh  r0,[r3]                   ; 0801A37C
sub   r3,0xE                    ; 0801A37E  r3 = [03007240]+44 (03002250)
ldr   r0,=0xFFFE                ; 0801A380  diagonal object, slope -2
strh  r0,[r3]                   ; 0801A382
mov   r0,r12                    ; 0801A384
bl    ObjMain_NoRelY            ; 0801A386  Object processing main, no relative Y threshold
pop   {r4-r5}                   ; 0801A38A
pop   {r0}                      ; 0801A38C
bx    r0                        ; 0801A38E
.pool                           ; 0801A390

ObjE6_Init:
; object E6 init
push  {r4-r6,lr}                ; 0801A39C
mov   r6,r0                     ; 0801A39E
mov   r4,r1                     ; 0801A3A0
mov   r5,r2                     ; 0801A3A2
lsl   r4,r4,0x10                ; 0801A3A4
lsr   r4,r4,0x10                ; 0801A3A6
lsl   r5,r5,0x18                ; 0801A3A8
lsr   r5,r5,0x18                ; 0801A3AA
bl    ObjE4E5E6E8E9_AdjustHeight; 0801A3AC  objY -= 2, height += 2
mov   r1,r6                     ; 0801A3B0
add   r1,0x44                   ; 0801A3B2  r1 = [03007240]+44 (03002250)
ldr   r0,=0xFFFF                ; 0801A3B4  diagonal object, slope -1
strh  r0,[r1]                   ; 0801A3B6
mov   r0,r6                     ; 0801A3B8
mov   r1,r4                     ; 0801A3BA
mov   r2,r5                     ; 0801A3BC
bl    ObjMain_NoRelY            ; 0801A3BE  Object processing main, no relative Y threshold
pop   {r4-r6}                   ; 0801A3C2
pop   {r0}                      ; 0801A3C4
bx    r0                        ; 0801A3C6
.pool                           ; 0801A3C8

ObjE5_Init:
; object E5 init
push  {r4-r6,lr}                ; 0801A3CC
mov   r6,r0                     ; 0801A3CE
mov   r4,r1                     ; 0801A3D0
mov   r5,r2                     ; 0801A3D2
lsl   r4,r4,0x10                ; 0801A3D4
lsr   r4,r4,0x10                ; 0801A3D6
lsl   r5,r5,0x18                ; 0801A3D8
lsr   r5,r5,0x18                ; 0801A3DA
bl    ObjE4E5E6E8E9_AdjustHeight; 0801A3DC  objY -= 2, height += 2
mov   r1,r6                     ; 0801A3E0
add   r1,0x44                   ; 0801A3E2  r1 = [03007240]+44 (03002250)
ldr   r0,=0xFFFF                ; 0801A3E4  diagonal object, slope -1
strh  r0,[r1]                   ; 0801A3E6
mov   r0,r6                     ; 0801A3E8
mov   r1,r4                     ; 0801A3EA
mov   r2,r5                     ; 0801A3EC
bl    ObjMain_NoRelY            ; 0801A3EE  Object processing main, no relative Y threshold
pop   {r4-r6}                   ; 0801A3F2
pop   {r0}                      ; 0801A3F4
bx    r0                        ; 0801A3F6
.pool                           ; 0801A3F8

ObjE4_Init:
; object E4 init
push  {r4-r6,lr}                ; 0801A3FC
mov   r4,r0                     ; 0801A3FE
mov   r5,r1                     ; 0801A400
mov   r6,r2                     ; 0801A402
lsl   r5,r5,0x10                ; 0801A404
lsr   r5,r5,0x10                ; 0801A406
lsl   r6,r6,0x18                ; 0801A408
lsr   r6,r6,0x18                ; 0801A40A
bl    ObjE4E5E6E8E9_AdjustHeight; 0801A40C  objY -= 2, height += 2
mov   r0,r4                     ; 0801A410
mov   r1,r5                     ; 0801A412
mov   r2,r6                     ; 0801A414
bl    ObjMain_Slope0_NoRelY     ; 0801A416  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                   ; 0801A41A
pop   {r0}                      ; 0801A41C
bx    r0                        ; 0801A41E

ObjE3_Init:
; object E3 init
push  {lr}                      ; 0801A420
lsl   r1,r1,0x10                ; 0801A422
lsr   r1,r1,0x10                ; 0801A424
lsl   r2,r2,0x18                ; 0801A426
lsr   r2,r2,0x18                ; 0801A428
bl    ObjMain_Slope0_NoRelY     ; 0801A42A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A42E
bx    r0                        ; 0801A430
.pool                           ; 0801A432

ObjE2_Init:
; object E2 init
push  {r4,lr}                   ; 0801A434
lsl   r1,r1,0x10                ; 0801A436
lsr   r1,r1,0x10                ; 0801A438
lsl   r2,r2,0x18                ; 0801A43A
lsr   r2,r2,0x18                ; 0801A43C
mov   r3,0x4E                   ; 0801A43E
add   r3,r3,r0                  ; 0801A440
mov   r12,r3                    ; 0801A442
mov   r3,0x4                    ; 0801A444
mov   r4,r12                    ; 0801A446
strh  r3,[r4]                   ; 0801A448  set width to 4
bl    ObjMain_Slope0_NoRelY     ; 0801A44A  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801A44E
pop   {r0}                      ; 0801A450
bx    r0                        ; 0801A452

ObjE1_Init:
; object E1 init
push  {r4-r6,lr}                ; 0801A454
mov   r4,r0                     ; 0801A456
lsl   r1,r1,0x10                ; 0801A458
lsr   r6,r1,0x10                ; 0801A45A
lsl   r2,r2,0x18                ; 0801A45C
lsr   r5,r2,0x18                ; 0801A45E
mov   r0,0x0                    ; 0801A460
strh  r0,[r4,0x3A]              ; 0801A462  clear object scratch RAM
bl    GenRandomByte             ; 0801A464  Generate pseudo-random byte
mov   r1,0x3                    ; 0801A468
and   r1,r0                     ; 0801A46A  r1 = random 2-bit value
cmp   r1,0x0                    ; 0801A46C
beq   @@Code0801A474            ; 0801A46E
mov   r0,0x3                    ; 0801A470
eor   r1,r0                     ; 0801A472
@@Code0801A474:                 ;           r1 = random 0,0,1,2
lsl   r0,r1,0x13                ; 0801A474
lsr   r1,r0,0x10                ; 0801A476
mov   r0,r4                     ; 0801A478
add   r0,0x42                   ; 0801A47A
strh  r1,[r0]                   ; 0801A47C  [0300224E] = random 00,00,08,10
mov   r0,r4                     ; 0801A47E
mov   r1,r6                     ; 0801A480
mov   r2,r5                     ; 0801A482
bl    ObjMain_Slope0_NoRelY     ; 0801A484  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                   ; 0801A488
pop   {r0}                      ; 0801A48A
bx    r0                        ; 0801A48C
.pool                           ; 0801A48E

ObjE0_Init:
; object E0 init
push  {lr}                      ; 0801A490
lsl   r1,r1,0x10                ; 0801A492
lsr   r1,r1,0x10                ; 0801A494
lsl   r2,r2,0x18                ; 0801A496
lsr   r2,r2,0x18                ; 0801A498
bl    ObjMain_Slope0_NoRelY     ; 0801A49A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A49E
bx    r0                        ; 0801A4A0
.pool                           ; 0801A4A2

ObjDF_Init:
; object DF init
push  {r4,lr}                   ; 0801A4A4
lsl   r1,r1,0x10                ; 0801A4A6
lsr   r1,r1,0x10                ; 0801A4A8
lsl   r2,r2,0x18                ; 0801A4AA
lsr   r2,r2,0x18                ; 0801A4AC
mov   r3,0x52                   ; 0801A4AE
add   r3,r3,r0                  ; 0801A4B0
mov   r12,r3                    ; 0801A4B2
ldrh  r3,[r3]                   ; 0801A4B4  height
add   r3,0x1                    ; 0801A4B6
mov   r4,r12                    ; 0801A4B8
strh  r3,[r4]                   ; 0801A4BA  add 1 to height (set height to 2)
bl    ObjMain_Slope0_NoRelY     ; 0801A4BC  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801A4C0
pop   {r0}                      ; 0801A4C2
bx    r0                        ; 0801A4C4
.pool                           ; 0801A4C6

ObjDE_Init:
; object DE init
push  {r4,lr}                   ; 0801A4C8
lsl   r1,r1,0x10                ; 0801A4CA
lsr   r1,r1,0x10                ; 0801A4CC
lsl   r2,r2,0x18                ; 0801A4CE
lsr   r2,r2,0x18                ; 0801A4D0
mov   r3,0x4E                   ; 0801A4D2
add   r3,r3,r0                  ; 0801A4D4
mov   r12,r3                    ; 0801A4D6
ldrh  r3,[r3]                   ; 0801A4D8  width
add   r3,0x1                    ; 0801A4DA
mov   r4,r12                    ; 0801A4DC
strh  r3,[r4]                   ; 0801A4DE  add 1 to width
bl    ObjMain_Slope0_NoRelY     ; 0801A4E0  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801A4E4
pop   {r0}                      ; 0801A4E6
bx    r0                        ; 0801A4E8
.pool                           ; 0801A4EA

ObjDD_Init:
; object DD init
push  {r4-r6,lr}                ; 0801A4EC
mov   r6,r0                     ; 0801A4EE
mov   r4,r1                     ; 0801A4F0
mov   r5,r2                     ; 0801A4F2
lsl   r4,r4,0x10                ; 0801A4F4
lsr   r4,r4,0x10                ; 0801A4F6
lsl   r5,r5,0x18                ; 0801A4F8
lsr   r5,r5,0x18                ; 0801A4FA
bl    GenRandomByte             ; 0801A4FC  Generate pseudo-random byte
lsl   r0,r0,0x10                ; 0801A500
mov   r1,0xE0                   ; 0801A502
lsl   r1,r1,0xB                 ; 0801A504  70000
and   r1,r0                     ; 0801A506
lsr   r1,r1,0x10                ; 0801A508
mov   r0,r6                     ; 0801A50A
add   r0,0x42                   ; 0801A50C
strh  r1,[r0]                   ; 0801A50E  [0300224E] = random 3-bit value
mov   r0,r6                     ; 0801A510
mov   r1,r4                     ; 0801A512
mov   r2,r5                     ; 0801A514
bl    ObjMain_Slope0_NoRelY     ; 0801A516  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                   ; 0801A51A
pop   {r0}                      ; 0801A51C
bx    r0                        ; 0801A51E

ObjDC_Init:
; object DC init
push  {lr}                      ; 0801A520
lsl   r1,r1,0x10                ; 0801A522
lsr   r1,r1,0x10                ; 0801A524
lsl   r2,r2,0x18                ; 0801A526
lsr   r2,r2,0x18                ; 0801A528
bl    ObjMain_Slope0_NoRelY     ; 0801A52A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A52E
bx    r0                        ; 0801A530
.pool                           ; 0801A532

ObjDB_Init:
; object DB init
push  {lr}                      ; 0801A534
lsl   r1,r1,0x10                ; 0801A536
lsr   r1,r1,0x10                ; 0801A538
lsl   r2,r2,0x18                ; 0801A53A
lsr   r2,r2,0x18                ; 0801A53C
bl    ObjMain_Slope0_NoRelY     ; 0801A53E  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A542
bx    r0                        ; 0801A544
.pool                           ; 0801A546

ObjDA_Init:
; object DA init
push  {lr}                      ; 0801A548
lsl   r1,r1,0x10                ; 0801A54A
lsr   r1,r1,0x10                ; 0801A54C
lsl   r2,r2,0x18                ; 0801A54E
lsr   r2,r2,0x18                ; 0801A550
bl    ObjMain_Slope0_NoRelY     ; 0801A552  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A556
bx    r0                        ; 0801A558
.pool                           ; 0801A55A

ObjD8_D9_Init:
; object D8-D9 init
push  {r4-r5,lr}                ; 0801A55C
lsl   r1,r1,0x10                ; 0801A55E
lsr   r1,r1,0x10                ; 0801A560
lsl   r2,r2,0x18                ; 0801A562
lsr   r2,r2,0x18                ; 0801A564
mov   r3,0x42                   ; 0801A566
add   r3,r3,r0                  ; 0801A568
mov   r12,r3                    ; 0801A56A
ldrh  r4,[r3]                   ; 0801A56C  object ID
mov   r3,0x1                    ; 0801A56E
and   r3,r4                     ; 0801A570  objID&1
lsl   r4,r3,0x4                 ; 0801A572
mov   r5,r12                    ; 0801A574
strh  r4,[r5]                   ; 0801A576  [0300224E] = 00,10 for D8,D9
ldr   r4,=ObjD8_D9_Heights      ; 0801A578
lsl   r3,r3,0x1                 ; 0801A57A
add   r3,r3,r4                  ; 0801A57C
ldrh  r3,[r3]                   ; 0801A57E  04,03 for D8,D9
mov   r4,r0                     ; 0801A580
add   r4,0x52                   ; 0801A582
strh  r3,[r4]                   ; 0801A584  set height
bl    ObjMain_Slope0_NoRelY     ; 0801A586  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                   ; 0801A58A
pop   {r0}                      ; 0801A58C
bx    r0                        ; 0801A58E
.pool                           ; 0801A590

ObjD4_D7_Init:
; object D4-D7 init
push  {lr}                      ; 0801A594
lsl   r1,r1,0x10                ; 0801A596
lsr   r1,r1,0x10                ; 0801A598
lsl   r2,r2,0x18                ; 0801A59A
lsr   r2,r2,0x18                ; 0801A59C
mov   r3,0x0                    ; 0801A59E
strh  r3,[r0,0x3A]              ; 0801A5A0  clear scratch RAM
bl    ObjMain_Slope0_NoRelY     ; 0801A5A2  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A5A6
bx    r0                        ; 0801A5A8
.pool                           ; 0801A5AA

ObjD3_Init:
; object D3 init
push  {lr}                      ; 0801A5AC
lsl   r1,r1,0x10                ; 0801A5AE
lsr   r1,r1,0x10                ; 0801A5B0
lsl   r2,r2,0x18                ; 0801A5B2
lsr   r2,r2,0x18                ; 0801A5B4
bl    ObjMain_Slope0_NoRelY     ; 0801A5B6  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A5BA
bx    r0                        ; 0801A5BC
.pool                           ; 0801A5BE

ObjD2_Init:
; object D2 init
push  {lr}                      ; 0801A5C0
lsl   r1,r1,0x10                ; 0801A5C2
lsr   r1,r1,0x10                ; 0801A5C4
lsl   r2,r2,0x18                ; 0801A5C6
lsr   r2,r2,0x18                ; 0801A5C8
bl    ObjMain_Slope0_NoRelY     ; 0801A5CA  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A5CE
bx    r0                        ; 0801A5D0
.pool                           ; 0801A5D2

ObjD1_Init:
; object D1 init
push  {lr}                      ; 0801A5D4
lsl   r1,r1,0x10                ; 0801A5D6
lsr   r1,r1,0x10                ; 0801A5D8
lsl   r2,r2,0x18                ; 0801A5DA
lsr   r2,r2,0x18                ; 0801A5DC
bl    ObjMain_Slope0_NoRelY     ; 0801A5DE  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A5E2
bx    r0                        ; 0801A5E4
.pool                           ; 0801A5E6

ObjD0_Init:
; object D0 init
push  {r4-r5,lr}                ; 0801A5E8
mov   r3,r0                     ; 0801A5EA
lsl   r1,r1,0x10                ; 0801A5EC
lsr   r4,r1,0x10                ; 0801A5EE
lsl   r2,r2,0x18                ; 0801A5F0
lsr   r2,r2,0x18                ; 0801A5F2
mov   r1,r3                     ; 0801A5F4
add   r1,0x42                   ; 0801A5F6
mov   r0,0x2                    ; 0801A5F8
strh  r0,[r1]                   ; 0801A5FA  set 0300224E (object ID) to 2
mov   r0,r3                     ; 0801A5FC
add   r0,0x4E                   ; 0801A5FE
mov   r5,0x0                    ; 0801A600
ldsh  r0,[r0,r5]                ; 0801A602  load width as signed
cmp   r0,0x0                    ; 0801A604
bge   @@Code0801A60C            ; 0801A606
mov   r0,0x0                    ; 0801A608
strh  r0,[r1]                   ; 0801A60A  if negative width, set 0300224E to 0
@@Code0801A60C:
mov   r1,r3                     ; 0801A60C
add   r1,0x44                   ; 0801A60E
ldr   r0,=0xFFFF                ; 0801A610
strh  r0,[r1]                   ; 0801A612  set slope to -1
mov   r0,r3                     ; 0801A614
mov   r1,r4                     ; 0801A616
bl    ObjMain_NoRelY            ; 0801A618  Object processing main, no relative Y threshold
pop   {r4-r5}                   ; 0801A61C
pop   {r0}                      ; 0801A61E
bx    r0                        ; 0801A620
.pool                           ; 0801A622

ObjCF_Init:
; object CF init
push  {r4-r5,lr}                ; 0801A628
mov   r3,r0                     ; 0801A62A
lsl   r1,r1,0x10                ; 0801A62C
lsr   r4,r1,0x10                ; 0801A62E
lsl   r2,r2,0x18                ; 0801A630
lsr   r2,r2,0x18                ; 0801A632
mov   r1,r3                     ; 0801A634
add   r1,0x42                   ; 0801A636
mov   r0,0x2                    ; 0801A638
strh  r0,[r1]                   ; 0801A63A  set 0300224E (object ID) to 2
mov   r0,r3                     ; 0801A63C
add   r0,0x4E                   ; 0801A63E
mov   r5,0x0                    ; 0801A640
ldsh  r0,[r0,r5]                ; 0801A642  load width as signed
cmp   r0,0x0                    ; 0801A644
bge   @@Code0801A64C            ; 0801A646
mov   r0,0x0                    ; 0801A648
strh  r0,[r1]                   ; 0801A64A  if negative width, set 0300224E to 0
@@Code0801A64C:
mov   r1,r3                     ; 0801A64C
add   r1,0x44                   ; 0801A64E
ldr   r0,=0xFFFF                ; 0801A650
strh  r0,[r1]                   ; 0801A652  set slope to -1
mov   r0,r3                     ; 0801A654
mov   r1,r4                     ; 0801A656
bl    ObjMain_NoRelY            ; 0801A658  Object processing main, no relative Y threshold
pop   {r4-r5}                   ; 0801A65C
pop   {r0}                      ; 0801A65E
bx    r0                        ; 0801A660
.pool                           ; 0801A662

ObjCE_Init:
; object CE init
push  {r4-r5,lr}                ; 0801A668
mov   r3,r0                     ; 0801A66A
lsl   r1,r1,0x10                ; 0801A66C
lsr   r4,r1,0x10                ; 0801A66E
lsl   r2,r2,0x18                ; 0801A670
lsr   r2,r2,0x18                ; 0801A672
mov   r1,r3                     ; 0801A674
add   r1,0x42                   ; 0801A676
mov   r0,0x1                    ; 0801A678
strh  r0,[r1]                   ; 0801A67A  set 0300224E (object ID) to 1
mov   r0,r3                     ; 0801A67C
add   r0,0x4E                   ; 0801A67E
mov   r5,0x0                    ; 0801A680
ldsh  r0,[r0,r5]                ; 0801A682  load width as signed
cmp   r0,0x0                    ; 0801A684
bge   @@Code0801A68C            ; 0801A686
mov   r0,0x0                    ; 0801A688
strh  r0,[r1]                   ; 0801A68A  if negative width, set 0300224E to 0
@@Code0801A68C:
mov   r1,r3                     ; 0801A68C
add   r1,0x44                   ; 0801A68E
ldr   r0,=0xFFFF                ; 0801A690
strh  r0,[r1]                   ; 0801A692  set slope to -1
mov   r0,r3                     ; 0801A694
mov   r1,r4                     ; 0801A696
bl    ObjMain_NoRelY            ; 0801A698  Object processing main, no relative Y threshold
pop   {r4-r5}                   ; 0801A69C
pop   {r0}                      ; 0801A69E
bx    r0                        ; 0801A6A0
.pool                           ; 0801A6A2

ObjCC_CD_Init:
; object CC-CD init
push  {r4,lr}                   ; 0801A6A8
lsl   r1,r1,0x10                ; 0801A6AA
lsr   r1,r1,0x10                ; 0801A6AC
lsl   r2,r2,0x18                ; 0801A6AE
lsr   r2,r2,0x18                ; 0801A6B0
mov   r3,0x0                    ; 0801A6B2
strh  r3,[r0,0x3A]              ; 0801A6B4  clear scratch RAM
mov   r4,r0                     ; 0801A6B6
add   r4,0x44                   ; 0801A6B8
mov   r3,0x1                    ; 0801A6BA
strh  r3,[r4]                   ; 0801A6BC  set slope to 1
bl    ObjMain_NoRelY            ; 0801A6BE  Object processing main, no relative Y threshold
pop   {r4}                      ; 0801A6C2
pop   {r0}                      ; 0801A6C4
bx    r0                        ; 0801A6C6

ObjCB_Init:
; object CB init
push  {lr}                      ; 0801A6C8
lsl   r1,r1,0x10                ; 0801A6CA
lsr   r1,r1,0x10                ; 0801A6CC
lsl   r2,r2,0x18                ; 0801A6CE
lsr   r2,r2,0x18                ; 0801A6D0
mov   r3,0x0                    ; 0801A6D2
strh  r3,[r0,0x3A]              ; 0801A6D4  clear scratch RAM
bl    ObjMain_Slope0_NoRelY     ; 0801A6D6  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A6DA
bx    r0                        ; 0801A6DC
.pool                           ; 0801A6DE

ObjCA_Init:
; object CA init
push  {lr}                      ; 0801A6E0
lsl   r1,r1,0x10                ; 0801A6E2
lsr   r1,r1,0x10                ; 0801A6E4
lsl   r2,r2,0x18                ; 0801A6E6
lsr   r2,r2,0x18                ; 0801A6E8
bl    ObjMain_Slope0_NoRelY     ; 0801A6EA  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A6EE
bx    r0                        ; 0801A6F0
.pool                           ; 0801A6F2

ObjC4_C9_Init:
; object C4-C9 init
push  {r4-r6,lr}                ; 0801A6F4
mov   r3,r0                     ; 0801A6F6
lsl   r1,r1,0x10                ; 0801A6F8
lsr   r5,r1,0x10                ; 0801A6FA  r5 = object ID
lsl   r2,r2,0x18                ; 0801A6FC
lsr   r6,r2,0x18                ; 0801A6FE  r6 = 1
add   r0,0x42                   ; 0801A700  [03007240]+42 (0300224E)
ldrh  r1,[r0]                   ; 0801A702  r1 = object ID, again
cmp   r1,0xC6                   ; 0801A704
bls   @@Code0801A70E            ; 0801A706
add   r0,r1,0x1                 ; 0801A708 \ if object C7-C9...
lsl   r0,r0,0x10                ; 0801A70A |
lsr   r1,r0,0x10                ; 0801A70C / r1 = object ID +1
@@Code0801A70E:
mov   r2,r1                     ; 0801A70E  r2 = adjusted object ID
mov   r0,0x1                    ; 0801A710
mov   r4,0x1                    ; 0801A712
and   r1,r4                     ; 0801A714  low bit of adjusted object ID
eor   r1,r0                     ; 0801A716  inverted low bit of adjusted object ID
                                ;           1 for C4/C6/C7/C9, 0 for C5/C8
lsl   r0,r1,0x12                ; 0801A718  ???
cmp   r0,0x0                    ; 0801A71A
bne   @@Code0801A724            ; 0801A71C
mov   r0,r3                     ; 0801A71E \ if object C5/C8
add   r0,0x4E                   ; 0801A720 /  0300225A (width)
b     @@Code0801A728            ; 0801A722
@@Code0801A724:
mov   r0,r3                     ; 0801A724 \ if object C4/C6/C7/C9
add   r0,0x52                   ; 0801A726 /  0300225E (height)
@@Code0801A728:
strh  r4,[r0]                   ; 0801A728  set unused dimension to 1 (even though it should already be 1 from 4-byte object init?)
lsl   r0,r2,0xE                 ; 0801A72A
lsr   r1,r0,0x10                ; 0801A72C  r1 = adjusted object ID >> 2
mov   r0,0x2                    ; 0801A72E
and   r1,r0                     ; 0801A730  bit 1 of (adjusted object ID >> 2)
                                ;           0 for C4-C6, 2 for C7-C9
lsl   r0,r1,0x10                ; 0801A732
lsr   r1,r0,0x10                ; 0801A734
mov   r0,r3                     ; 0801A736
add   r0,0x42                   ; 0801A738  [03007240]+42 (0300224E)
strh  r1,[r0]                   ; 0801A73A  store 0 or 2 to object ID?!
mov   r1,r3                     ; 0801A73C
add   r1,0x44                   ; 0801A73E  [03007240]+44 (03002250)
ldr   r0,=0xFFFF                ; 0801A740  set slope to -1
strh  r0,[r1]                   ; 0801A742
mov   r0,0x3                    ; 0801A744
and   r2,r0                     ; 0801A746  bits 0-1 of adjusted object ID
lsl   r0,r2,0x1                 ; 0801A748  (bits 0-1 of adjusted object ID) << 1
cmp   r0,0x3                    ; 0801A74A
bhi   @@ObjC6C9                 ; 0801A74C
                                ;           runs if object C4/C5/C7/C8
mov   r0,r3                     ; 0801A74E  r0 = [03007240] (0300220C)
mov   r1,r5                     ; 0801A750  r1 = (unadjusted) object ID
mov   r2,r6                     ; 0801A752  r2 = 1
bl    ObjMain_Slope0_NoRelY     ; 0801A754  Object processing main, slope=0, no relative Y threshold
b     @@Return                  ; 0801A758
.pool                           ; 0801A75A

@@ObjC6C9:
                                ;           runs if object C6 or C9
mov   r0,r3                     ; 0801A760  r0 = [03007240] (0300220C)
mov   r1,r5                     ; 0801A762  r1 = (unadjusted) object ID
mov   r2,r6                     ; 0801A764  r2 = 1
bl    ObjMain_NoRelY            ; 0801A766  Object processing main, no relative Y threshold
@@Return:
pop   {r4-r6}                   ; 0801A76A
pop   {r0}                      ; 0801A76C
bx    r0                        ; 0801A76E

ObjC0_C3_Init:
; object C0-C3 init
push  {r4,lr}                   ; 0801A770
mov   r3,r0                     ; 0801A772
lsl   r1,r1,0x10                ; 0801A774
lsr   r4,r1,0x10                ; 0801A776
lsl   r2,r2,0x18                ; 0801A778
lsr   r2,r2,0x18                ; 0801A77A
mov   r1,r3                     ; 0801A77C
add   r1,0x52                   ; 0801A77E
mov   r0,0x2                    ; 0801A780
strh  r0,[r1]                   ; 0801A782  set height to 2
sub   r1,0xE                    ; 0801A784  +44
ldr   r0,=0xFFFF                ; 0801A786
strh  r0,[r1]                   ; 0801A788  set slope to -1
mov   r0,r3                     ; 0801A78A
add   r0,0x42                   ; 0801A78C
ldrh  r1,[r0]                   ; 0801A78E  object ID
mov   r0,0x3                    ; 0801A790
and   r0,r1                     ; 0801A792
lsl   r0,r0,0x1                 ; 0801A794  (objID-C0)*2
cmp   r0,0x3                    ; 0801A796
bhi   @@ObjC0_C1                ; 0801A798

mov   r0,r3                     ; 0801A79A  runs if C0-C1
mov   r1,r4                     ; 0801A79C
bl    ObjMain_Slope0_NoRelY     ; 0801A79E  Object processing main, slope=0, no relative Y threshold
b     @@Return                  ; 0801A7A2
.pool                           ; 0801A7A4

@@ObjC0_C1:
mov   r0,r3                     ; 0801A7A8  runs if C2-C3
mov   r1,r4                     ; 0801A7AA
bl    ObjMain_NoRelY            ; 0801A7AC  Object processing main, no relative Y threshold
@@Return:
pop   {r4}                      ; 0801A7B0
pop   {r0}                      ; 0801A7B2
bx    r0                        ; 0801A7B4
.pool                           ; 0801A7B6

ObjBE_BF_Init:
; object BE-BF init
push  {lr}                      ; 0801A7B8
lsl   r1,r1,0x10                ; 0801A7BA
lsr   r1,r1,0x10                ; 0801A7BC
lsl   r2,r2,0x18                ; 0801A7BE
lsr   r2,r2,0x18                ; 0801A7C0
bl    ObjMain_Slope0_NoRelY     ; 0801A7C2  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A7C6
bx    r0                        ; 0801A7C8
.pool                           ; 0801A7CA

ObjBA_BD_Init:
; object BA-BD init
push  {lr}                      ; 0801A7CC
lsl   r1,r1,0x10                ; 0801A7CE
lsr   r1,r1,0x10                ; 0801A7D0
lsl   r2,r2,0x18                ; 0801A7D2
lsr   r2,r2,0x18                ; 0801A7D4
bl    ObjMain_Slope0_NoRelY     ; 0801A7D6  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A7DA
bx    r0                        ; 0801A7DC
.pool                           ; 0801A7DE

ObjB8_B9_Init:
; object B8-B9 init
push  {r4,lr}                   ; 0801A7E0
lsl   r1,r1,0x10                ; 0801A7E2
lsr   r1,r1,0x10                ; 0801A7E4
lsl   r2,r2,0x18                ; 0801A7E6
lsr   r2,r2,0x18                ; 0801A7E8
mov   r4,r0                     ; 0801A7EA
add   r4,0x52                   ; 0801A7EC
mov   r3,0x4                    ; 0801A7EE
strh  r3,[r4]                   ; 0801A7F0  set height to 4
sub   r4,0xE                    ; 0801A7F2  +44
ldr   r3,=0xFFFF                ; 0801A7F4
strh  r3,[r4]                   ; 0801A7F6  set slope to -1
bl    ObjMain_NoRelY            ; 0801A7F8  Object processing main, no relative Y threshold
pop   {r4}                      ; 0801A7FC
pop   {r0}                      ; 0801A7FE
bx    r0                        ; 0801A800
.pool                           ; 0801A802

ObjB6_B7_Init:
; object B6-B7 init
push  {r4,lr}                   ; 0801A808
lsl   r1,r1,0x10                ; 0801A80A
lsr   r1,r1,0x10                ; 0801A80C
lsl   r2,r2,0x18                ; 0801A80E
lsr   r2,r2,0x18                ; 0801A810
mov   r4,r0                     ; 0801A812
add   r4,0x52                   ; 0801A814
mov   r3,0x3                    ; 0801A816
strh  r3,[r4]                   ; 0801A818  set height to 3
sub   r4,0xE                    ; 0801A81A  +44
ldr   r3,=0xFFFF                ; 0801A81C
strh  r3,[r4]                   ; 0801A81E  set slope to -1
bl    ObjMain_NoRelY            ; 0801A820  Object processing main, no relative Y threshold
pop   {r4}                      ; 0801A824
pop   {r0}                      ; 0801A826
bx    r0                        ; 0801A828
.pool                           ; 0801A82A

ObjB4_B5_Init:
; object B4-B5 init
push  {r4,lr}                   ; 0801A830
lsl   r1,r1,0x10                ; 0801A832
lsr   r1,r1,0x10                ; 0801A834
lsl   r2,r2,0x18                ; 0801A836
lsr   r2,r2,0x18                ; 0801A838
mov   r4,r0                     ; 0801A83A
add   r4,0x52                   ; 0801A83C
mov   r3,0x4                    ; 0801A83E
strh  r3,[r4]                   ; 0801A840  set height to 4
sub   r4,0xE                    ; 0801A842  +44
ldr   r3,=0xFFFF                ; 0801A844
strh  r3,[r4]                   ; 0801A846  set slope to -1
bl    ObjMain_NoRelY            ; 0801A848  Object processing main, no relative Y threshold
pop   {r4}                      ; 0801A84C
pop   {r0}                      ; 0801A84E
bx    r0                        ; 0801A850
.pool                           ; 0801A852

ObjB2_B3_Init:
; object B2-B3 init
push  {r4,lr}                   ; 0801A858
lsl   r1,r1,0x10                ; 0801A85A
lsr   r1,r1,0x10                ; 0801A85C
lsl   r2,r2,0x18                ; 0801A85E
lsr   r2,r2,0x18                ; 0801A860
mov   r4,r0                     ; 0801A862
add   r4,0x52                   ; 0801A864
mov   r3,0x3                    ; 0801A866
strh  r3,[r4]                   ; 0801A868  set height to 3
sub   r4,0xE                    ; 0801A86A  +44
ldr   r3,=0xFFFF                ; 0801A86C
strh  r3,[r4]                   ; 0801A86E  set slope to -1
bl    ObjMain_NoRelY            ; 0801A870  Object processing main, no relative Y threshold
pop   {r4}                      ; 0801A874
pop   {r0}                      ; 0801A876
bx    r0                        ; 0801A878
.pool                           ; 0801A87A

ObjB1_Init:
; object B1 init
push  {lr}                      ; 0801A880
lsl   r1,r1,0x10                ; 0801A882
lsr   r1,r1,0x10                ; 0801A884
lsl   r2,r2,0x18                ; 0801A886
lsr   r2,r2,0x18                ; 0801A888
bl    ObjMain_Slope0_NoRelY     ; 0801A88A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A88E
bx    r0                        ; 0801A890
.pool                           ; 0801A892

ObjB0_Init:
; object B0 init
push  {lr}                      ; 0801A894
lsl   r1,r1,0x10                ; 0801A896
lsr   r1,r1,0x10                ; 0801A898
lsl   r2,r2,0x18                ; 0801A89A
lsr   r2,r2,0x18                ; 0801A89C
bl    ObjMain_Slope0_NoRelY     ; 0801A89E  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801A8A2
bx    r0                        ; 0801A8A4
.pool                           ; 0801A8A6

ObjAE_AF_Init:
; object AE-AF init
push  {r4,lr}                   ; 0801A8A8
mov   r3,r0                     ; 0801A8AA
lsl   r1,r1,0x10                ; 0801A8AC
lsr   r4,r1,0x10                ; 0801A8AE
lsl   r2,r2,0x18                ; 0801A8B0
lsr   r2,r2,0x18                ; 0801A8B2
add   r0,0x42                   ; 0801A8B4
ldrh  r1,[r0]                   ; 0801A8B6  object ID
mov   r0,0x1                    ; 0801A8B8
and   r0,r1                     ; 0801A8BA  objID-AE
lsl   r0,r0,0x2                 ; 0801A8BC
mov   r1,0x2                    ; 0801A8BE
cmp   r0,0x0                    ; 0801A8C0
beq   @@Code0801A8CA            ; 0801A8C2
mov   r0,r3                     ; 0801A8C4
add   r0,0x52                   ; 0801A8C6  +52: height
b     @@Code0801A8CE            ; 0801A8C8
@@Code0801A8CA:
mov   r0,r3                     ; 0801A8CA
add   r0,0x4E                   ; 0801A8CC  +4E: width
@@Code0801A8CE:
strh  r1,[r0]                   ; 0801A8CE  if AE, width 2; if AF, height 2
mov   r0,r3                     ; 0801A8D0
mov   r1,r4                     ; 0801A8D2
bl    ObjMain_Slope0_NoRelY     ; 0801A8D4  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801A8D8
pop   {r0}                      ; 0801A8DA
bx    r0                        ; 0801A8DC
.pool                           ; 0801A8DE

ObjAC_AD_Init:
; object AC-AD init
push  {r4,lr}                   ; 0801A8E0
mov   r4,r0                     ; 0801A8E2
lsl   r1,r1,0x10                ; 0801A8E4
lsr   r1,r1,0x10                ; 0801A8E6
lsl   r2,r2,0x18                ; 0801A8E8
lsr   r2,r2,0x18                ; 0801A8EA
ldr   r0,=0x03007240            ; 0801A8EC  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 0801A8EE
ldr   r3,=0x2992                ; 0801A8F0
add   r0,r0,r3                  ; 0801A8F2  [03007240]+2992 (03004B9E)
ldrh  r0,[r0]                   ; 0801A8F4  r0 = layer 1 tileset ID
cmp   r0,0xB                    ; 0801A8F6  0B: sewer
bne   @@Code0801A902            ; 0801A8F8
mov   r3,r4                     ; 0801A8FA \
add   r3,0x52                   ; 0801A8FC
mov   r0,0x2                    ; 0801A8FE
strh  r0,[r3]                   ; 0801A900 / if sewer tileset, set height to 2
@@Code0801A902:
mov   r0,r4                     ; 0801A902
bl    ObjMain_Slope0_NoRelY     ; 0801A904  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801A908
pop   {r0}                      ; 0801A90A
bx    r0                        ; 0801A90C
.pool                           ; 0801A90E

ObjAA_AB_Init:
; object AA-AB init
push  {r4,lr}                   ; 0801A918
lsl   r1,r1,0x10                ; 0801A91A
lsr   r1,r1,0x10                ; 0801A91C
lsl   r2,r2,0x18                ; 0801A91E
lsr   r2,r2,0x18                ; 0801A920
mov   r3,0x4E                   ; 0801A922
add   r3,r3,r0                  ; 0801A924
mov   r12,r3                    ; 0801A926
mov   r3,0x2                    ; 0801A928
mov   r4,r12                    ; 0801A92A
strh  r3,[r4]                   ; 0801A92C  set width to 2
bl    ObjMain_Slope0_NoRelY     ; 0801A92E  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801A932
pop   {r0}                      ; 0801A934
bx    r0                        ; 0801A936

ObjA9_Init:
; object A9 init
push  {r4,lr}                   ; 0801A938
mov   r4,r0                     ; 0801A93A
lsl   r1,r1,0x10                ; 0801A93C
lsr   r1,r1,0x10                ; 0801A93E
lsl   r2,r2,0x18                ; 0801A940
lsr   r2,r2,0x18                ; 0801A942
ldr   r0,=0x03007240            ; 0801A944  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 0801A946
ldr   r3,=0x2992                ; 0801A948
add   r0,r0,r3                  ; 0801A94A  [03007240]+2992
ldrh  r0,[r0]                   ; 0801A94C  layer 1 tileset ID
cmp   r0,0x3                    ; 0801A94E
bne   @@Code0801A96C            ; 0801A950

mov   r0,0x2                    ; 0801A952  runs if tileset 3
mov   r3,r4                     ; 0801A954
add   r3,0x4E                   ; 0801A956
strh  r0,[r3]                   ; 0801A958  set width to 2
mov   r0,r4                     ; 0801A95A
bl    ObjMain_Slope0_NoRelY     ; 0801A95C  Object processing main, slope=0, no relative Y threshold
b     @@Code0801A972            ; 0801A960
.pool                           ; 0801A962

@@Code0801A96C:
mov   r0,r4                     ; 0801A96C  runs if not tileset 3
bl    ObjMain_Slope0_NoRelY     ; 0801A96E  Object processing main, slope=0, no relative Y threshold
@@Code0801A972:
pop   {r4}                      ; 0801A972
pop   {r0}                      ; 0801A974
bx    r0                        ; 0801A976

ObjA7_A8_Init:
; object A7-A8 init
push  {r4-r6,lr}                ; 0801A978
mov   r12,r0                    ; 0801A97A
lsl   r1,r1,0x10                ; 0801A97C
lsr   r1,r1,0x10                ; 0801A97E
lsl   r2,r2,0x18                ; 0801A980
lsr   r2,r2,0x18                ; 0801A982
mov   r6,r12                    ; 0801A984
add   r6,0x48                   ; 0801A986  [03007240]+48 (03002254)
ldrh  r5,[r6]                   ; 0801A988  tile YXyx
ldr   r0,=0xF0F0                ; 0801A98A
mov   r3,r0                     ; 0801A98C
and   r3,r5                     ; 0801A98E
sub   r3,0x10                   ; 0801A990  subtract 1 from initial Y
and   r3,r0                     ; 0801A992
ldr   r4,=0x0F0F                ; 0801A994
mov   r0,r4                     ; 0801A996
and   r0,r5                     ; 0801A998
sub   r0,0x1                    ; 0801A99A  subtract 1 from initial X
and   r0,r4                     ; 0801A99C
orr   r0,r3                     ; 0801A99E
strh  r0,[r6]                   ; 0801A9A0
mov   r3,r12                    ; 0801A9A2
add   r3,0x4E                   ; 0801A9A4  r3 = [03007240]+4E (0300225A)
ldrh  r0,[r3]                   ; 0801A9A6
add   r0,0x2                    ; 0801A9A8  add 2 to width
strh  r0,[r3]                   ; 0801A9AA
add   r3,0x4                    ; 0801A9AC
ldrh  r0,[r3]                   ; 0801A9AE
add   r0,0x2                    ; 0801A9B0  add 2 to height
strh  r0,[r3]                   ; 0801A9B2
mov   r0,r12                    ; 0801A9B4
bl    ObjMain_Slope0_NoRelY     ; 0801A9B6  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                   ; 0801A9BA
pop   {r0}                      ; 0801A9BC
bx    r0                        ; 0801A9BE
.pool                           ; 0801A9C0

ObjA5_A6_Init:
; object A5-A6 init
push  {r4-r6,lr}                ; 0801A9C8
mov   r12,r0                    ; 0801A9CA
lsl   r1,r1,0x10                ; 0801A9CC
lsr   r6,r1,0x10                ; 0801A9CE
lsl   r2,r2,0x18                ; 0801A9D0
lsr   r5,r2,0x18                ; 0801A9D2
mov   r3,r12                    ; 0801A9D4
add   r3,0x42                   ; 0801A9D6  [03007240]+42 (0300224E)
ldrh  r1,[r3]                   ; 0801A9D8  r1 = object ID
mov   r0,0x2                    ; 0801A9DA
and   r0,r1                     ; 0801A9DC
lsl   r0,r0,0x10                ; 0801A9DE
lsr   r2,r0,0x10                ; 0801A9E0
strh  r2,[r3]                   ; 0801A9E2  [0300224E] = 00,02 for A5,A6
lsl   r0,r2,0x11                ; 0801A9E4
lsr   r4,r0,0x10                ; 0801A9E6  r4 = 00,04 for A5,A6
mov   r2,0x2                    ; 0801A9E8
ldr   r0,=0x03007240            ; 0801A9EA  Normal gameplay IWRAM (Ptr to 0300220C)
ldr   r0,[r0]                   ; 0801A9EC
ldr   r1,=0x2992                ; 0801A9EE
add   r0,r0,r1                  ; 0801A9F0  [0300220C]+2992
ldrh  r0,[r0]                   ; 0801A9F2  r0 = layer 1 tileset ID
cmp   r0,0x3                    ; 0801A9F4  03: 2.5D/Hookbill
bne   @@Code0801AA0C            ; 0801A9F6

ldrh  r2,[r3]                   ; 0801A9F8 \ runs if tileset 3
mov   r1,0x4                    ; 0801A9FA
mov   r0,r2                     ; 0801A9FC
orr   r0,r1                     ; 0801A9FE
strh  r0,[r3]                   ; 0801AA00  set bit 2 of 0300224E if tileset 3
ldr   r1,=ObjA5_A6_Init_Data    ; 0801AA02
ldr   r0,=0x0001FFFE            ; 0801AA04
and   r0,r2                     ; 0801AA06
add   r0,r0,r1                  ; 0801AA08  index with 00,02 for A5,A6
ldrh  r2,[r0]                   ; 0801AA0A / 02,04 for A5,A6
@@Code0801AA0C:
cmp   r4,0x0                    ; 0801AA0C
bne   @@Code0801AA28            ; 0801AA0E
mov   r0,r12                    ; 0801AA10 \ runs if A5
add   r0,0x4E                   ; 0801AA12
b     @@Code0801AA2C            ; 0801AA14 /
.pool                           ; 0801AA16

@@Code0801AA28:
mov   r0,r12                    ; 0801AA28 \ runs if A6
add   r0,0x52                   ; 0801AA2A /
@@Code0801AA2C:
strh  r2,[r0]                   ; 0801AA2C  set width(A5)/height(A6) to 02 if not tileset 3, 02,04 for A5,A6 if tileset 3
mov   r0,r12                    ; 0801AA2E
mov   r1,r6                     ; 0801AA30
mov   r2,r5                     ; 0801AA32
bl    ObjMain_Slope0_NoRelY     ; 0801AA34  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                   ; 0801AA38
pop   {r0}                      ; 0801AA3A
bx    r0                        ; 0801AA3C
.pool                           ; 0801AA3E

ObjA3_A4_Init:
; object A3-A4 init
push  {r4-r5,lr}                ; 0801AA40
mov   r4,r0                     ; 0801AA42
lsl   r1,r1,0x10                ; 0801AA44
lsr   r1,r1,0x10                ; 0801AA46
lsl   r2,r2,0x18                ; 0801AA48
lsr   r2,r2,0x18                ; 0801AA4A
mov   r0,0x42                   ; 0801AA4C
add   r0,r0,r4                  ; 0801AA4E  r0 = [03007240]+42 (0300224E)
mov   r12,r0                    ; 0801AA50
ldrh  r3,[r0]                   ; 0801AA52  r3 = object ID
mov   r0,0x4                    ; 0801AA54
and   r0,r3                     ; 0801AA56
lsl   r0,r0,0x10                ; 0801AA58
lsr   r0,r0,0x10                ; 0801AA5A
mov   r3,r12                    ; 0801AA5C
strh  r0,[r3]                   ; 0801AA5E  [0300224E] = 00,04 if A3,A4
mov   r5,0x4E                   ; 0801AA60
ldrh  r0,[r5,r4]                ; 0801AA62  width
add   r0,0x1                    ; 0801AA64
lsl   r0,r0,0x10                ; 0801AA66
lsr   r0,r0,0x10                ; 0801AA68
ldr   r3,=0xFFFE                ; 0801AA6A
and   r0,r3                     ; 0801AA6C
strh  r0,[r5,r4]                ; 0801AA6E  add 1 to width if odd
mov   r0,0x52                   ; 0801AA70
add   r0,r0,r4                  ; 0801AA72
mov   r12,r0                    ; 0801AA74
ldrh  r0,[r0]                   ; 0801AA76  height
add   r0,0x1                    ; 0801AA78
lsl   r0,r0,0x10                ; 0801AA7A
lsr   r0,r0,0x10                ; 0801AA7C
and   r0,r3                     ; 0801AA7E
mov   r3,r12                    ; 0801AA80
strh  r0,[r3]                   ; 0801AA82  add 1 to height if odd
mov   r0,r4                     ; 0801AA84
bl    ObjMain_Slope0_NoRelY     ; 0801AA86  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                   ; 0801AA8A
pop   {r0}                      ; 0801AA8C
bx    r0                        ; 0801AA8E
.pool                           ; 0801AA90

ObjA0_A2_Init:
; object A0-A2 init
push  {r4,lr}                   ; 0801AA94
lsl   r1,r1,0x10                ; 0801AA96
lsr   r1,r1,0x10                ; 0801AA98
lsl   r2,r2,0x18                ; 0801AA9A
lsr   r2,r2,0x18                ; 0801AA9C
mov   r3,0x42                   ; 0801AA9E
add   r3,r3,r0                  ; 0801AAA0  r3 = [03007240]+42 (0300224E)
mov   r12,r3                    ; 0801AAA2
ldrh  r4,[r3]                   ; 0801AAA4  r4 = object ID
mov   r3,0xF                    ; 0801AAA6
and   r3,r4                     ; 0801AAA8
lsl   r3,r3,0x1                 ; 0801AAAA  (objID-A0)*2
mov   r4,r12                    ; 0801AAAC
strh  r3,[r4]                   ; 0801AAAE  [0300224E] = (objID-A0)*2
mov   r3,0x4E                   ; 0801AAB0
add   r3,r3,r0                  ; 0801AAB2  width
mov   r12,r3                    ; 0801AAB4
ldrh  r4,[r3]                   ; 0801AAB6
add   r4,0x1                    ; 0801AAB8
lsl   r4,r4,0x10                ; 0801AABA
ldr   r3,=0xFFFE0000            ; 0801AABC
and   r3,r4                     ; 0801AABE
lsr   r3,r3,0x10                ; 0801AAC0
mov   r4,r12                    ; 0801AAC2
strh  r3,[r4]                   ; 0801AAC4  add 1 to width if odd
bl    ObjMain_Slope0_NoRelY     ; 0801AAC6  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801AACA
pop   {r0}                      ; 0801AACC
bx    r0                        ; 0801AACE
.pool                           ; 0801AAD0

Obj9F_Init:
; object 9F init
push  {r4,lr}                   ; 0801AAD4
lsl   r1,r1,0x10                ; 0801AAD6
lsr   r1,r1,0x10                ; 0801AAD8
lsl   r2,r2,0x18                ; 0801AADA
lsr   r2,r2,0x18                ; 0801AADC
mov   r4,r0                     ; 0801AADE
add   r4,0x52                   ; 0801AAE0
mov   r3,0x2                    ; 0801AAE2
strh  r3,[r4]                   ; 0801AAE4  set height to 2
mov   r3,0x4E                   ; 0801AAE6
add   r3,r3,r0                  ; 0801AAE8
mov   r12,r3                    ; 0801AAEA
ldrh  r4,[r3]                   ; 0801AAEC  width
add   r4,0x1                    ; 0801AAEE
lsl   r4,r4,0x10                ; 0801AAF0
ldr   r3,=0xFFFE0000            ; 0801AAF2
and   r3,r4                     ; 0801AAF4
lsr   r3,r3,0x10                ; 0801AAF6
mov   r4,r12                    ; 0801AAF8
strh  r3,[r4]                   ; 0801AAFA  add 1 to width if odd
bl    ObjMain_Slope0_NoRelY     ; 0801AAFC  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801AB00
pop   {r0}                      ; 0801AB02
bx    r0                        ; 0801AB04
.pool                           ; 0801AB06

Obj9E_Init:
; object 9E init
push  {lr}                      ; 0801AB0C
lsl   r1,r1,0x10                ; 0801AB0E
lsr   r1,r1,0x10                ; 0801AB10
lsl   r2,r2,0x18                ; 0801AB12
lsr   r2,r2,0x18                ; 0801AB14
bl    ObjMain_Slope0_NoRelY     ; 0801AB16  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801AB1A
bx    r0                        ; 0801AB1C
.pool                           ; 0801AB1E

Obj9D_Init:
; object 9D init
push  {lr}                      ; 0801AB20
lsl   r1,r1,0x10                ; 0801AB22
lsr   r1,r1,0x10                ; 0801AB24
lsl   r2,r2,0x18                ; 0801AB26
lsr   r2,r2,0x18                ; 0801AB28
bl    ObjMain_Slope0_NoRelY     ; 0801AB2A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801AB2E
bx    r0                        ; 0801AB30
.pool                           ; 0801AB32

Obj9B_9C_Init:
; object 9B-9C init
push  {r4-r7,lr}                ; 0801AB34
mov   r6,r0                     ; 0801AB36
mov   r4,r1                     ; 0801AB38
mov   r5,r2                     ; 0801AB3A
lsl   r4,r4,0x10                ; 0801AB3C
lsr   r4,r4,0x10                ; 0801AB3E
lsl   r5,r5,0x18                ; 0801AB40
lsr   r5,r5,0x18                ; 0801AB42
mov   r7,r6                     ; 0801AB44
add   r7,0x42                   ; 0801AB46
bl    GenRandomByte             ; 0801AB48  Generate pseudo-random byte
lsl   r0,r0,0x10                ; 0801AB4C
mov   r2,0x3                    ; 0801AB4E
mov   r1,0xC0                   ; 0801AB50
lsl   r1,r1,0xA                 ; 0801AB52  30000
and   r1,r0                     ; 0801AB54
lsr   r1,r1,0x10                ; 0801AB56  random 2-bit value
strh  r1,[r7]                   ; 0801AB58  [0300224E] = random 2-bit value
eor   r1,r2                     ; 0801AB5A
lsl   r1,r1,0x1                 ; 0801AB5C
strh  r1,[r6,0x3A]              ; 0801AB5E  [03002246] = same random 2-bit value with bits inverted, << 1
mov   r0,r6                     ; 0801AB60
mov   r1,r4                     ; 0801AB62
mov   r2,r5                     ; 0801AB64
bl    ObjMain_Slope0_NoRelY     ; 0801AB66  Object processing main, slope=0, no relative Y threshold
pop   {r4-r7}                   ; 0801AB6A
pop   {r0}                      ; 0801AB6C
bx    r0                        ; 0801AB6E

Obj9A_Init:
; object 9A init
push  {r4-r7,lr}                ; 0801AB70
mov   r7,r0                     ; 0801AB72
mov   r4,r1                     ; 0801AB74
mov   r5,r2                     ; 0801AB76
lsl   r4,r4,0x10                ; 0801AB78
lsr   r4,r4,0x10                ; 0801AB7A
lsl   r5,r5,0x18                ; 0801AB7C
lsr   r5,r5,0x18                ; 0801AB7E
mov   r1,r7                     ; 0801AB80
add   r1,0x4E                   ; 0801AB82
mov   r0,0x4                    ; 0801AB84
strh  r0,[r1]                   ; 0801AB86  set width to 4
mov   r6,r7                     ; 0801AB88
add   r6,0x48                   ; 0801AB8A
ldrh  r3,[r6]                   ; 0801AB8C  tile YXyx
ldr   r1,=0xF0F0                ; 0801AB8E
and   r1,r3                     ; 0801AB90
ldr   r2,=0x0F0F                ; 0801AB92
mov   r0,r2                     ; 0801AB94
and   r0,r3                     ; 0801AB96
sub   r0,0x2                    ; 0801AB98  subtract 2 from x
and   r0,r2                     ; 0801AB9A
orr   r0,r1                     ; 0801AB9C
strh  r0,[r6]                   ; 0801AB9E
bl    GenRandomByte             ; 0801ABA0  Generate pseudo-random byte
lsl   r0,r0,0x10                ; 0801ABA4
mov   r1,0xC0                   ; 0801ABA6
lsl   r1,r1,0xA                 ; 0801ABA8  30000
and   r1,r0                     ; 0801ABAA
lsr   r1,r1,0x10                ; 0801ABAC  random 2-bit value
mov   r0,r7                     ; 0801ABAE
add   r0,0x42                   ; 0801ABB0
strh  r1,[r0]                   ; 0801ABB2  [0300224E] = random 2-bit value
lsl   r1,r1,0x1                 ; 0801ABB4
strh  r1,[r7,0x3A]              ; 0801ABB6  [03002246] = same random 2-bit value <<1
mov   r0,r7                     ; 0801ABB8
mov   r1,r4                     ; 0801ABBA
mov   r2,r5                     ; 0801ABBC
bl    ObjMain_Slope0_NoRelY     ; 0801ABBE  Object processing main, slope=0, no relative Y threshold
pop   {r4-r7}                   ; 0801ABC2
pop   {r0}                      ; 0801ABC4
bx    r0                        ; 0801ABC6
.pool                           ; 0801ABC8

Obj99_Init:
; object 99 init
push  {r4-r6,lr}                ; 0801ABD0
mov   r6,r8                     ; 0801ABD2
push  {r6}                      ; 0801ABD4
lsl   r1,r1,0x10                ; 0801ABD6
lsr   r1,r1,0x10                ; 0801ABD8
lsl   r2,r2,0x18                ; 0801ABDA
lsr   r2,r2,0x18                ; 0801ABDC
mov   r4,r0                     ; 0801ABDE
add   r4,0x4E                   ; 0801ABE0
mov   r3,0x3                    ; 0801ABE2
strh  r3,[r4]                   ; 0801ABE4  set width to 3
mov   r3,0x48                   ; 0801ABE6
add   r3,r3,r0                  ; 0801ABE8
mov   r8,r3                     ; 0801ABEA
ldrh  r6,[r3]                   ; 0801ABEC  tile YXyx
ldr   r4,=0xF0F0                ; 0801ABEE
and   r4,r6                     ; 0801ABF0
ldr   r5,=0x0F0F                ; 0801ABF2
mov   r3,r5                     ; 0801ABF4
and   r3,r6                     ; 0801ABF6
sub   r3,0x1                    ; 0801ABF8  subtract 1 from x
and   r3,r5                     ; 0801ABFA
orr   r3,r4                     ; 0801ABFC
mov   r4,r8                     ; 0801ABFE
strh  r3,[r4]                   ; 0801AC00
bl    ObjMain_Slope0_NoRelY     ; 0801AC02  Object processing main, slope=0, no relative Y threshold
pop   {r3}                      ; 0801AC06
mov   r8,r3                     ; 0801AC08
pop   {r4-r6}                   ; 0801AC0A
pop   {r0}                      ; 0801AC0C
bx    r0                        ; 0801AC0E
.pool                           ; 0801AC10

Obj98_Init:
; object 98 init
push  {lr}                      ; 0801AC18
lsl   r1,r1,0x10                ; 0801AC1A
lsr   r1,r1,0x10                ; 0801AC1C
lsl   r2,r2,0x18                ; 0801AC1E
lsr   r2,r2,0x18                ; 0801AC20
bl    ObjMain_Slope0_NoRelY     ; 0801AC22  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801AC26
bx    r0                        ; 0801AC28
.pool                           ; 0801AC2A

Obj94_97_Init:
; object 94-97 init
push  {r4-r5,lr}                ; 0801AC2C
lsl   r1,r1,0x10                ; 0801AC2E
lsr   r1,r1,0x10                ; 0801AC30
lsl   r2,r2,0x18                ; 0801AC32
lsr   r2,r2,0x18                ; 0801AC34
mov   r3,0x4E                   ; 0801AC36  r3 = [03007240]+4E (0300225A)
add   r3,r3,r0                  ; 0801AC38
mov   r12,r3                    ; 0801AC3A
ldrh  r3,[r3]                   ; 0801AC3C  width
add   r3,0x1                    ; 0801AC3E
ldr   r4,=0xFFFE                ; 0801AC40
and   r3,r4                     ; 0801AC42
mov   r5,r12                    ; 0801AC44
strh  r3,[r5]                   ; 0801AC46  add 1 to width if odd
mov   r3,0x52                   ; 0801AC48
add   r3,r3,r0                  ; 0801AC4A  r3 = [03007240]+52 (0300225E)
mov   r12,r3                    ; 0801AC4C
ldrh  r3,[r3]                   ; 0801AC4E
add   r3,0x1                    ; 0801AC50
and   r3,r4                     ; 0801AC52
mov   r4,r12                    ; 0801AC54
strh  r3,[r4]                   ; 0801AC56  add 1 to width if odd
bl    ObjMain_Slope0_NoRelY     ; 0801AC58  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                   ; 0801AC5C
pop   {r0}                      ; 0801AC5E
bx    r0                        ; 0801AC60
.pool                           ; 0801AC62

Obj93_Init:
; object 93 init
push  {r4-r6,lr}                ; 0801AC68
mov   r6,r8                     ; 0801AC6A
push  {r6}                      ; 0801AC6C
lsl   r1,r1,0x10                ; 0801AC6E
lsr   r1,r1,0x10                ; 0801AC70
lsl   r2,r2,0x18                ; 0801AC72
lsr   r2,r2,0x18                ; 0801AC74
mov   r4,r0                     ; 0801AC76
add   r4,0x4E                   ; 0801AC78
mov   r3,0x4                    ; 0801AC7A
strh  r3,[r4]                   ; 0801AC7C  set width to 4
mov   r3,0x48                   ; 0801AC7E
add   r3,r3,r0                  ; 0801AC80
mov   r8,r3                     ; 0801AC82
ldrh  r6,[r3]                   ; 0801AC84  tile YXyx
ldr   r4,=0xF0F0                ; 0801AC86
and   r4,r6                     ; 0801AC88  Y0y0
ldr   r5,=0x0F0F                ; 0801AC8A
mov   r3,r5                     ; 0801AC8C
and   r3,r6                     ; 0801AC8E  0X0x
sub   r3,0x1                    ; 0801AC90
and   r3,r5                     ; 0801AC92  0X0x with x-1
orr   r3,r4                     ; 0801AC94
mov   r4,r8                     ; 0801AC96
strh  r3,[r4]                   ; 0801AC98  store YXyx with x-1
bl    ObjMain_Slope0_NoRelY     ; 0801AC9A  Object processing main, slope=0, no relative Y threshold
pop   {r3}                      ; 0801AC9E
mov   r8,r3                     ; 0801ACA0
pop   {r4-r6}                   ; 0801ACA2
pop   {r0}                      ; 0801ACA4
bx    r0                        ; 0801ACA6
.pool                           ; 0801ACA8

Obj91_92_Init:
; object 91-92 init
push  {r4-r6,lr}                ; 0801ACB0
mov   r6,r8                     ; 0801ACB2
push  {r6}                      ; 0801ACB4
lsl   r1,r1,0x10                ; 0801ACB6
lsr   r1,r1,0x10                ; 0801ACB8
lsl   r2,r2,0x18                ; 0801ACBA
lsr   r2,r2,0x18                ; 0801ACBC
mov   r4,r0                     ; 0801ACBE
add   r4,0x4E                   ; 0801ACC0
mov   r3,0x3                    ; 0801ACC2
strh  r3,[r4]                   ; 0801ACC4  set width to 3
mov   r3,0x48                   ; 0801ACC6
add   r3,r3,r0                  ; 0801ACC8
mov   r8,r3                     ; 0801ACCA
ldrh  r6,[r3]                   ; 0801ACCC  tile YXyx
ldr   r4,=0xF0F0                ; 0801ACCE
and   r4,r6                     ; 0801ACD0
ldr   r5,=0x0F0F                ; 0801ACD2
mov   r3,r5                     ; 0801ACD4
and   r3,r6                     ; 0801ACD6
sub   r3,0x1                    ; 0801ACD8  subtract 1 from x
and   r3,r5                     ; 0801ACDA
orr   r3,r4                     ; 0801ACDC
mov   r4,r8                     ; 0801ACDE
strh  r3,[r4]                   ; 0801ACE0
bl    ObjMain_Slope0_NoRelY     ; 0801ACE2  Object processing main, slope=0, no relative Y threshold
pop   {r3}                      ; 0801ACE6
mov   r8,r3                     ; 0801ACE8
pop   {r4-r6}                   ; 0801ACEA
pop   {r0}                      ; 0801ACEC
bx    r0                        ; 0801ACEE
.pool                           ; 0801ACF0

Obj90_Init:
; object 90 init
push  {r4,lr}                   ; 0801ACF8
lsl   r1,r1,0x10                ; 0801ACFA
lsr   r1,r1,0x10                ; 0801ACFC
lsl   r2,r2,0x18                ; 0801ACFE
lsr   r2,r2,0x18                ; 0801AD00
mov   r4,r0                     ; 0801AD02
add   r4,0x46                   ; 0801AD04
ldr   r3,=0x7FFF                ; 0801AD06
strh  r3,[r4]                   ; 0801AD08  disable relative Y threshold
sub   r4,0x2                    ; 0801AD0A  +44
ldr   r3,=0xFFFF                ; 0801AD0C
strh  r3,[r4]                   ; 0801AD0E  set slope to -1
bl    ObjMain_Shared            ; 0801AD10  Object processing main
pop   {r4}                      ; 0801AD14
pop   {r0}                      ; 0801AD16
bx    r0                        ; 0801AD18
.pool                           ; 0801AD1A

Obj8F_Init:
; object 8F init
push  {r4,lr}                   ; 0801AD24
lsl   r1,r1,0x10                ; 0801AD26
lsr   r1,r1,0x10                ; 0801AD28
lsl   r2,r2,0x18                ; 0801AD2A
lsr   r2,r2,0x18                ; 0801AD2C
mov   r4,r0                     ; 0801AD2E
add   r4,0x46                   ; 0801AD30
ldr   r3,=0x7FFF                ; 0801AD32
strh  r3,[r4]                   ; 0801AD34  disable relative Y threshold
sub   r4,0x2                    ; 0801AD36  +44
ldr   r3,=0xFFFF                ; 0801AD38
strh  r3,[r4]                   ; 0801AD3A  set slope to -1
bl    ObjMain_Shared            ; 0801AD3C  Object processing main
pop   {r4}                      ; 0801AD40
pop   {r0}                      ; 0801AD42
bx    r0                        ; 0801AD44
.pool                           ; 0801AD46

Obj8E_Init:
; object 8E init
push  {r4,lr}                   ; 0801AD50
lsl   r1,r1,0x10                ; 0801AD52
lsr   r1,r1,0x10                ; 0801AD54
lsl   r2,r2,0x18                ; 0801AD56
lsr   r2,r2,0x18                ; 0801AD58
mov   r3,0x4E                   ; 0801AD5A
add   r3,r3,r0                  ; 0801AD5C  [03007240]+4E (0300225A)
mov   r12,r3                    ; 0801AD5E
ldrh  r4,[r3]                   ; 0801AD60  width
add   r4,0x1                    ; 0801AD62
lsl   r4,r4,0x10                ; 0801AD64
ldr   r3,=0xFFFE0000            ; 0801AD66
and   r3,r4                     ; 0801AD68
lsr   r3,r3,0x10                ; 0801AD6A
mov   r4,r12                    ; 0801AD6C
strh  r3,[r4]                   ; 0801AD6E  add 1 to width if odd
mov   r4,r0                     ; 0801AD70
add   r4,0x52                   ; 0801AD72
mov   r3,0x2                    ; 0801AD74
strh  r3,[r4]                   ; 0801AD76  set height to 2
bl    ObjMain_Slope0_NoRelY     ; 0801AD78  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801AD7C
pop   {r0}                      ; 0801AD7E
bx    r0                        ; 0801AD80
.pool                           ; 0801AD82

Obj8D_Init:
; object 8D init
push  {lr}                      ; 0801AD88
lsl   r1,r1,0x10                ; 0801AD8A
lsr   r1,r1,0x10                ; 0801AD8C
lsl   r2,r2,0x18                ; 0801AD8E
lsr   r2,r2,0x18                ; 0801AD90
bl    ObjMain_Slope0_NoRelY     ; 0801AD92  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801AD96
bx    r0                        ; 0801AD98
.pool                           ; 0801AD9A

Obj8C_Init:
; object 8C init
push  {r4,lr}                   ; 0801AD9C
lsl   r1,r1,0x10                ; 0801AD9E
lsr   r1,r1,0x10                ; 0801ADA0
lsl   r2,r2,0x18                ; 0801ADA2
lsr   r2,r2,0x18                ; 0801ADA4
mov   r3,0x52                   ; 0801ADA6
add   r3,r3,r0                  ; 0801ADA8
mov   r12,r3                    ; 0801ADAA
mov   r3,0x3                    ; 0801ADAC
mov   r4,r12                    ; 0801ADAE
strh  r3,[r4]                   ; 0801ADB0  set height to 3
bl    ObjMain_Slope0_NoRelY     ; 0801ADB2  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801ADB6
pop   {r0}                      ; 0801ADB8
bx    r0                        ; 0801ADBA

Obj89_Init:
; object 89 init
push  {lr}                      ; 0801ADBC
lsl   r1,r1,0x10                ; 0801ADBE
lsr   r1,r1,0x10                ; 0801ADC0
lsl   r2,r2,0x18                ; 0801ADC2
lsr   r2,r2,0x18                ; 0801ADC4
bl    ObjMain_Slope0_NoRelY     ; 0801ADC6  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801ADCA
bx    r0                        ; 0801ADCC
.pool                           ; 0801ADCE

Obj87_88_Init:
; object 87-88 init
push  {r4-r5,lr}                ; 0801ADD0
lsl   r1,r1,0x10                ; 0801ADD2
lsr   r1,r1,0x10                ; 0801ADD4
lsl   r2,r2,0x18                ; 0801ADD6
lsr   r2,r2,0x18                ; 0801ADD8
mov   r3,0x46                   ; 0801ADDA
add   r3,r3,r0                  ; 0801ADDC
mov   r12,r3                    ; 0801ADDE
mov   r4,0x0                    ; 0801ADE0
mov   r3,0x2                    ; 0801ADE2
mov   r5,r12                    ; 0801ADE4
strh  r3,[r5]                   ; 0801ADE6  set relative Y threshold to 2
mov   r3,r0                     ; 0801ADE8
add   r3,0x44                   ; 0801ADEA
strh  r4,[r3]                   ; 0801ADEC  clear slope
bl    ObjMain_Shared            ; 0801ADEE  Object processing main
pop   {r4-r5}                   ; 0801ADF2
pop   {r0}                      ; 0801ADF4
bx    r0                        ; 0801ADF6

Obj86_Init:
; object 86 init
push  {r4-r5,lr}                ; 0801ADF8
mov   r4,r0                     ; 0801ADFA
lsl   r1,r1,0x10                ; 0801ADFC
lsr   r5,r1,0x10                ; 0801ADFE
lsl   r2,r2,0x18                ; 0801AE00
lsr   r2,r2,0x18                ; 0801AE02
add   r0,0x4E                   ; 0801AE04
ldrh  r0,[r0]                   ; 0801AE06
mov   r1,0x52                   ; 0801AE08
add   r1,r1,r4                  ; 0801AE0A
mov   r12,r1                    ; 0801AE0C
ldrh  r3,[r1]                   ; 0801AE0E
sub   r0,r3,r0                  ; 0801AE10
lsl   r0,r0,0x10                ; 0801AE12
lsr   r3,r0,0x10                ; 0801AE14
ldr   r1,=0xFFFF0000            ; 0801AE16
add   r0,r0,r1                  ; 0801AE18
ldr   r1,=0x7FFE0000            ; 0801AE1A
cmp   r0,r1                     ; 0801AE1C
bls   @@Code0801AE22            ; 0801AE1E
mov   r3,0x1                    ; 0801AE20
@@Code0801AE22:
mov   r0,r12                    ; 0801AE22
strh  r3,[r0]                   ; 0801AE24
mov   r0,r4                     ; 0801AE26
mov   r1,r5                     ; 0801AE28
bl    ObjMain_Slope0_NoRelY     ; 0801AE2A  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                   ; 0801AE2E
pop   {r0}                      ; 0801AE30
bx    r0                        ; 0801AE32
.pool                           ; 0801AE34

Obj85_Init:
; object 85 init
push  {lr}                      ; 0801AE3C
lsl   r1,r1,0x10                ; 0801AE3E
lsr   r1,r1,0x10                ; 0801AE40
lsl   r2,r2,0x18                ; 0801AE42
lsr   r2,r2,0x18                ; 0801AE44
bl    ObjMain_Slope0_NoRelY     ; 0801AE46  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801AE4A
bx    r0                        ; 0801AE4C
.pool                           ; 0801AE4E

Obj84_Init:
; object 84 init
push  {r4,lr}                   ; 0801AE50
lsl   r1,r1,0x10                ; 0801AE52
lsr   r1,r1,0x10                ; 0801AE54
lsl   r2,r2,0x18                ; 0801AE56
lsr   r2,r2,0x18                ; 0801AE58
mov   r4,r0                     ; 0801AE5A
add   r4,0x44                   ; 0801AE5C
ldr   r3,=0xFFFF                ; 0801AE5E
strh  r3,[r4]                   ; 0801AE60  set slope to -1
bl    ObjMain_NoRelY            ; 0801AE62  Object processing main, no relative Y threshold
pop   {r4}                      ; 0801AE66
pop   {r0}                      ; 0801AE68
bx    r0                        ; 0801AE6A
.pool                           ; 0801AE6C

Obj82_83_Init:
; object 82-83 init
push  {lr}                      ; 0801AE70
lsl   r1,r1,0x10                ; 0801AE72
lsr   r1,r1,0x10                ; 0801AE74
lsl   r2,r2,0x18                ; 0801AE76
lsr   r2,r2,0x18                ; 0801AE78
bl    ObjMain_Slope0_NoRelY     ; 0801AE7A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801AE7E
bx    r0                        ; 0801AE80
.pool                           ; 0801AE82

Obj81_Init:
; object 81 init
push  {r4-r5,lr}                ; 0801AE84
mov   r3,r0                     ; 0801AE86
lsl   r1,r1,0x10                ; 0801AE88
lsr   r4,r1,0x10                ; 0801AE8A
lsl   r2,r2,0x18                ; 0801AE8C
lsr   r2,r2,0x18                ; 0801AE8E
mov   r1,r3                     ; 0801AE90
add   r1,0x46                   ; 0801AE92
ldr   r0,=0x7FFF                ; 0801AE94
strh  r0,[r1]                   ; 0801AE96
sub   r1,0x2                    ; 0801AE98
ldr   r0,=0xFFFF                ; 0801AE9A
strh  r0,[r1]                   ; 0801AE9C
mov   r0,r3                     ; 0801AE9E
add   r0,0x4E                   ; 0801AEA0
ldrh  r1,[r0]                   ; 0801AEA2
mov   r5,0x0                    ; 0801AEA4
ldsh  r0,[r0,r5]                ; 0801AEA6
cmp   r0,0x0                    ; 0801AEA8
bge   @@Code0801AEB8            ; 0801AEAA
mvn   r0,r1                     ; 0801AEAC
lsl   r0,r0,0x10                ; 0801AEAE
mov   r1,0x80                   ; 0801AEB0
lsl   r1,r1,0x9                 ; 0801AEB2
add   r0,r0,r1                  ; 0801AEB4
lsr   r1,r0,0x10                ; 0801AEB6
@@Code0801AEB8:
mov   r0,r3                     ; 0801AEB8
add   r0,0x52                   ; 0801AEBA
strh  r1,[r0]                   ; 0801AEBC
mov   r0,r3                     ; 0801AEBE
mov   r1,r4                     ; 0801AEC0
bl    ObjMain_Shared            ; 0801AEC2  Object processing main
pop   {r4-r5}                   ; 0801AEC6
pop   {r0}                      ; 0801AEC8
bx    r0                        ; 0801AECA
.pool                           ; 0801AECC

Obj80_Init:
; object 80 init
push  {r4-r5,lr}                ; 0801AED4
mov   r4,r0                     ; 0801AED6
lsl   r1,r1,0x10                ; 0801AED8
lsr   r1,r1,0x10                ; 0801AEDA
lsl   r2,r2,0x18                ; 0801AEDC
lsr   r2,r2,0x18                ; 0801AEDE
add   r0,0x4E                   ; 0801AEE0
ldrh  r3,[r0]                   ; 0801AEE2
mov   r5,0x0                    ; 0801AEE4
ldsh  r0,[r0,r5]                ; 0801AEE6
cmp   r0,0x0                    ; 0801AEE8
bge   @@Code0801AEF8            ; 0801AEEA
mvn   r0,r3                     ; 0801AEEC
lsl   r0,r0,0x10                ; 0801AEEE
mov   r3,0x80                   ; 0801AEF0
lsl   r3,r3,0x9                 ; 0801AEF2
add   r0,r0,r3                  ; 0801AEF4
lsr   r3,r0,0x10                ; 0801AEF6
@@Code0801AEF8:
mov   r0,r4                     ; 0801AEF8
add   r0,0x52                   ; 0801AEFA
strh  r3,[r0]                   ; 0801AEFC
mov   r0,r4                     ; 0801AEFE
bl    ObjMain_Slope0_NoRelY     ; 0801AF00  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                   ; 0801AF04
pop   {r0}                      ; 0801AF06
bx    r0                        ; 0801AF08
.pool                           ; 0801AF0A

Obj7F_Init:
; object 7F init
push  {r4,lr}                   ; 0801AF0C
mov   r4,r0                     ; 0801AF0E
lsl   r1,r1,0x10                ; 0801AF10
lsr   r1,r1,0x10                ; 0801AF12
lsl   r2,r2,0x18                ; 0801AF14
lsr   r2,r2,0x18                ; 0801AF16
mov   r3,r4                     ; 0801AF18
add   r3,0x4E                   ; 0801AF1A
ldrh  r0,[r3]                   ; 0801AF1C  width
cmp   r0,0x1                    ; 0801AF1E
bhi   @@Code0801AF26            ; 0801AF20
mov   r0,0x2                    ; 0801AF22
strh  r0,[r3]                   ; 0801AF24  if width <= 1, width = 2
@@Code0801AF26:
mov   r3,r4                     ; 0801AF26
add   r3,0x52                   ; 0801AF28
ldrh  r0,[r3]                   ; 0801AF2A  height
cmp   r0,0x1                    ; 0801AF2C
bhi   @@Code0801AF34            ; 0801AF2E
mov   r0,0x2                    ; 0801AF30
strh  r0,[r3]                   ; 0801AF32  if height <= 1, height = 2
@@Code0801AF34:
mov   r0,r4                     ; 0801AF34
bl    ObjMain_Slope0_NoRelY     ; 0801AF36  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801AF3A
pop   {r0}                      ; 0801AF3C
bx    r0                        ; 0801AF3E

Obj7D_Init:
; object 7D init
push  {r4,lr}                   ; 0801AF40
lsl   r1,r1,0x10                ; 0801AF42
lsr   r1,r1,0x10                ; 0801AF44
lsl   r2,r2,0x18                ; 0801AF46
lsr   r2,r2,0x18                ; 0801AF48
mov   r3,0x52                   ; 0801AF4A
add   r3,r3,r0                  ; 0801AF4C
mov   r12,r3                    ; 0801AF4E
mov   r3,0x2                    ; 0801AF50
mov   r4,r12                    ; 0801AF52
strh  r3,[r4]                   ; 0801AF54
bl    ObjMain_Slope0_NoRelY     ; 0801AF56  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801AF5A
pop   {r0}                      ; 0801AF5C
bx    r0                        ; 0801AF5E

Obj7C_Init:
; object 7C init
push  {r4-r5,lr}                ; 0801AF60
mov   r4,r0                     ; 0801AF62
lsl   r1,r1,0x10                ; 0801AF64
lsr   r1,r1,0x10                ; 0801AF66
lsl   r2,r2,0x18                ; 0801AF68
lsr   r2,r2,0x18                ; 0801AF6A
add   r0,0x4E                   ; 0801AF6C
ldrh  r3,[r0]                   ; 0801AF6E
mov   r5,0x0                    ; 0801AF70
ldsh  r0,[r0,r5]                ; 0801AF72
cmp   r0,0x0                    ; 0801AF74
bge   @@Code0801AF84            ; 0801AF76
mvn   r0,r3                     ; 0801AF78
lsl   r0,r0,0x10                ; 0801AF7A
mov   r3,0x80                   ; 0801AF7C
lsl   r3,r3,0x9                 ; 0801AF7E
add   r0,r0,r3                  ; 0801AF80
lsr   r3,r0,0x10                ; 0801AF82
@@Code0801AF84:
mov   r0,r4                     ; 0801AF84
add   r0,0x52                   ; 0801AF86
strh  r3,[r0]                   ; 0801AF88
mov   r0,r4                     ; 0801AF8A
bl    ObjMain_Slope0_NoRelY     ; 0801AF8C  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                   ; 0801AF90
pop   {r0}                      ; 0801AF92
bx    r0                        ; 0801AF94
.pool                           ; 0801AF96

Obj7B_Init:
; object 7B init
push  {r4,lr}                   ; 0801AF98
lsl   r1,r1,0x10                ; 0801AF9A
lsr   r1,r1,0x10                ; 0801AF9C
lsl   r2,r2,0x18                ; 0801AF9E
lsr   r2,r2,0x18                ; 0801AFA0
mov   r4,r0                     ; 0801AFA2
add   r4,0x44                   ; 0801AFA4
ldr   r3,=0xFFFF                ; 0801AFA6
strh  r3,[r4]                   ; 0801AFA8  set slope to -1
bl    ObjMain_NoRelY            ; 0801AFAA  Object processing main, no relative Y threshold
pop   {r4}                      ; 0801AFAE
pop   {r0}                      ; 0801AFB0
bx    r0                        ; 0801AFB2
.pool                           ; 0801AFB4

Obj7A_Init:
; object 7A init
push  {lr}                      ; 0801AFB8
lsl   r1,r1,0x10                ; 0801AFBA
lsr   r1,r1,0x10                ; 0801AFBC
lsl   r2,r2,0x18                ; 0801AFBE
lsr   r2,r2,0x18                ; 0801AFC0
bl    ObjMain_Slope0_NoRelY     ; 0801AFC2  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801AFC6
bx    r0                        ; 0801AFC8
.pool                           ; 0801AFCA

Obj79_Init:
; object 79 init (same as object 78 init)
push  {lr}                      ; 0801AFCC
mov   r12,r0                    ; 0801AFCE
lsl   r1,r1,0x10                ; 0801AFD0
lsr   r1,r1,0x10                ; 0801AFD2
lsl   r2,r2,0x18                ; 0801AFD4
lsr   r2,r2,0x18                ; 0801AFD6
mov   r3,r12                    ; 0801AFD8
add   r3,0x52                   ; 0801AFDA  r3 = [03007240]+52 (0300225E)
mov   r0,0x2                    ; 0801AFDC
strh  r0,[r3]                   ; 0801AFDE  set object height to 2
sub   r3,0xC                    ; 0801AFE0  r3 = [03007240]+46 (03002252)
ldr   r0,=0x7FFF                ; 0801AFE2
strh  r0,[r3]                   ; 0801AFE4  no relative Y threshold
sub   r3,0x2                    ; 0801AFE6  r3 = [03007240]+44 (03002250)
ldr   r0,=0xFFFF                ; 0801AFE8  set slope to -1
strh  r0,[r3]                   ; 0801AFEA
mov   r0,r12                    ; 0801AFEC
bl    ObjMain_Shared            ; 0801AFEE  Object processing main
pop   {r0}                      ; 0801AFF2
bx    r0                        ; 0801AFF4
.pool                           ; 0801AFF6

Obj78_Init:
; object 78 init
push  {lr}                      ; 0801B000
mov   r12,r0                    ; 0801B002
lsl   r1,r1,0x10                ; 0801B004
lsr   r1,r1,0x10                ; 0801B006
lsl   r2,r2,0x18                ; 0801B008
lsr   r2,r2,0x18                ; 0801B00A
mov   r3,r12                    ; 0801B00C
add   r3,0x52                   ; 0801B00E  r3 = [03007240]+52 (0300225E)
mov   r0,0x2                    ; 0801B010
strh  r0,[r3]                   ; 0801B012  set object height to 2
sub   r3,0xC                    ; 0801B014  r3 = [03007240]+46 (03002252)
ldr   r0,=0x7FFF                ; 0801B016
strh  r0,[r3]                   ; 0801B018  no relative Y threshold
sub   r3,0x2                    ; 0801B01A  r3 = [03007240]+44 (03002250)
ldr   r0,=0xFFFF                ; 0801B01C  set slope to -1
strh  r0,[r3]                   ; 0801B01E
mov   r0,r12                    ; 0801B020
bl    ObjMain_Shared            ; 0801B022  Object processing main
pop   {r0}                      ; 0801B026
bx    r0                        ; 0801B028
.pool                           ; 0801B02A

Obj77_Init:
; object 77 init
push  {lr}                      ; 0801B034
lsl   r1,r1,0x10                ; 0801B036
lsr   r1,r1,0x10                ; 0801B038
lsl   r2,r2,0x18                ; 0801B03A
lsr   r2,r2,0x18                ; 0801B03C
bl    ObjMain_Slope0_NoRelY     ; 0801B03E  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B042
bx    r0                        ; 0801B044
.pool                           ; 0801B046

Obj76_Init:
; object 76 init
push  {r4,lr}                   ; 0801B048
lsl   r1,r1,0x10                ; 0801B04A
lsr   r1,r1,0x10                ; 0801B04C
lsl   r2,r2,0x18                ; 0801B04E
lsr   r2,r2,0x18                ; 0801B050
mov   r3,0x4E                   ; 0801B052
add   r3,r3,r0                  ; 0801B054
mov   r12,r3                    ; 0801B056
mov   r3,0x2                    ; 0801B058
mov   r4,r12                    ; 0801B05A
strh  r3,[r4]                   ; 0801B05C  set width to 2
bl    ObjMain_Slope0_NoRelY     ; 0801B05E  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801B062
pop   {r0}                      ; 0801B064
bx    r0                        ; 0801B066

Obj75_Init:
; obejct 75 init
push  {r4,lr}                   ; 0801B068
lsl   r1,r1,0x10                ; 0801B06A
lsr   r1,r1,0x10                ; 0801B06C
lsl   r2,r2,0x18                ; 0801B06E
lsr   r2,r2,0x18                ; 0801B070
mov   r3,0x4E                   ; 0801B072
add   r3,r3,r0                  ; 0801B074
mov   r12,r3                    ; 0801B076
mov   r3,0x2                    ; 0801B078
mov   r4,r12                    ; 0801B07A
strh  r3,[r4]                   ; 0801B07C  set width to 2
bl    ObjMain_Slope0_NoRelY     ; 0801B07E  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801B082
pop   {r0}                      ; 0801B084
bx    r0                        ; 0801B086

Obj74_Init:
; object 74 init
push  {r4,lr}                   ; 0801B088
lsl   r1,r1,0x10                ; 0801B08A
lsr   r1,r1,0x10                ; 0801B08C
lsl   r2,r2,0x18                ; 0801B08E
lsr   r2,r2,0x18                ; 0801B090
mov   r3,0x4E                   ; 0801B092
add   r3,r3,r0                  ; 0801B094
mov   r12,r3                    ; 0801B096
mov   r3,0x3                    ; 0801B098
mov   r4,r12                    ; 0801B09A
strh  r3,[r4]                   ; 0801B09C  set width to 3
bl    ObjMain_Slope0_NoRelY     ; 0801B09E  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801B0A2
pop   {r0}                      ; 0801B0A4
bx    r0                        ; 0801B0A6

Obj73_Init:
; object 73 init
push  {r4,lr}                   ; 0801B0A8
mov   r4,r0                     ; 0801B0AA
lsl   r1,r1,0x10                ; 0801B0AC
lsr   r1,r1,0x10                ; 0801B0AE
lsl   r2,r2,0x18                ; 0801B0B0
lsr   r2,r2,0x18                ; 0801B0B2
mov   r3,r4                     ; 0801B0B4
add   r3,0x4E                   ; 0801B0B6
mov   r0,0x3                    ; 0801B0B8
strh  r0,[r3]                   ; 0801B0BA  set width to 3
mov   r0,0x52                   ; 0801B0BC
add   r0,r0,r4                  ; 0801B0BE
mov   r12,r0                    ; 0801B0C0
ldrh  r3,[r0]                   ; 0801B0C2  height
mov   r0,0x1                    ; 0801B0C4
and   r0,r3                     ; 0801B0C6  height parity
cmp   r0,0x0                    ; 0801B0C8
beq   @@Code0801B0D2            ; 0801B0CA
add   r0,r3,0x1                 ; 0801B0CC
mov   r3,r12                    ; 0801B0CE
strh  r0,[r3]                   ; 0801B0D0  if height is odd, add 1
@@Code0801B0D2:
mov   r0,r4                     ; 0801B0D2
bl    ObjMain_Slope0_NoRelY     ; 0801B0D4  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801B0D8
pop   {r0}                      ; 0801B0DA
bx    r0                        ; 0801B0DC
.pool                           ; 0801B0DE

Obj72_Init:
; object 72 init
push  {r4,lr}                   ; 0801B0E0
mov   r4,r0                     ; 0801B0E2
lsl   r1,r1,0x10                ; 0801B0E4
lsr   r1,r1,0x10                ; 0801B0E6
lsl   r2,r2,0x18                ; 0801B0E8
lsr   r2,r2,0x18                ; 0801B0EA
mov   r0,0x4E                   ; 0801B0EC
add   r0,r0,r4                  ; 0801B0EE
mov   r12,r0                    ; 0801B0F0
ldrh  r3,[r0]                   ; 0801B0F2  width
mov   r0,0x1                    ; 0801B0F4
and   r0,r3                     ; 0801B0F6  width parity
cmp   r0,0x0                    ; 0801B0F8
beq   @@Code0801B102            ; 0801B0FA
add   r0,r3,0x1                 ; 0801B0FC
mov   r3,r12                    ; 0801B0FE
strh  r0,[r3]                   ; 0801B100  if width is odd, add 1
@@Code0801B102:
mov   r3,r4                     ; 0801B102
add   r3,0x52                   ; 0801B104
mov   r0,0x2                    ; 0801B106  set height to 2
strh  r0,[r3]                   ; 0801B108
mov   r0,r4                     ; 0801B10A
bl    ObjMain_Slope0_NoRelY     ; 0801B10C  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801B110
pop   {r0}                      ; 0801B112
bx    r0                        ; 0801B114
.pool                           ; 0801B116

Obj71_Init:
; object 71 init
push  {r4,lr}                   ; 0801B118
mov   r4,r0                     ; 0801B11A
lsl   r1,r1,0x10                ; 0801B11C
lsr   r1,r1,0x10                ; 0801B11E
lsl   r2,r2,0x18                ; 0801B120
lsr   r2,r2,0x18                ; 0801B122
mov   r0,0x4E                   ; 0801B124
add   r0,r0,r4                  ; 0801B126
mov   r12,r0                    ; 0801B128
ldrh  r3,[r0]                   ; 0801B12A  width
mov   r0,0x1                    ; 0801B12C
and   r0,r3                     ; 0801B12E  width parity
cmp   r0,0x0                    ; 0801B130
beq   @@Code0801B13A            ; 0801B132
add   r0,r3,0x1                 ; 0801B134
mov   r3,r12                    ; 0801B136
strh  r0,[r3]                   ; 0801B138  if width is odd, add 1
@@Code0801B13A:
mov   r3,r4                     ; 0801B13A
add   r3,0x52                   ; 0801B13C
mov   r0,0x2                    ; 0801B13E
strh  r0,[r3]                   ; 0801B140  set height to 2
mov   r0,r4                     ; 0801B142
bl    ObjMain_Slope0_NoRelY     ; 0801B144  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801B148
pop   {r0}                      ; 0801B14A
bx    r0                        ; 0801B14C
.pool                           ; 0801B14E

Obj70_Init:
; object 70 init
push  {r4,lr}                   ; 0801B150
mov   r4,r0                     ; 0801B152
lsl   r1,r1,0x10                ; 0801B154
lsr   r1,r1,0x10                ; 0801B156
lsl   r2,r2,0x18                ; 0801B158
lsr   r2,r2,0x18                ; 0801B15A
mov   r0,0x4E                   ; 0801B15C
add   r0,r0,r4                  ; 0801B15E
mov   r12,r0                    ; 0801B160
ldrh  r3,[r0]                   ; 0801B162  width
mov   r0,0x1                    ; 0801B164
and   r0,r3                     ; 0801B166  width parity
cmp   r0,0x0                    ; 0801B168
beq   @@Code0801B172            ; 0801B16A
add   r0,r3,0x1                 ; 0801B16C
mov   r3,r12                    ; 0801B16E
strh  r0,[r3]                   ; 0801B170  if width is odd, add 1
@@Code0801B172:
mov   r3,r4                     ; 0801B172
add   r3,0x52                   ; 0801B174
mov   r0,0x2                    ; 0801B176
strh  r0,[r3]                   ; 0801B178  set height to 2
mov   r0,r4                     ; 0801B17A
bl    ObjMain_Slope0_NoRelY     ; 0801B17C  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801B180
pop   {r0}                      ; 0801B182
bx    r0                        ; 0801B184
.pool                           ; 0801B186

Obj6F_Init:
; object 6F init
push  {lr}                      ; 0801B188
lsl   r1,r1,0x10                ; 0801B18A
lsr   r1,r1,0x10                ; 0801B18C
lsl   r2,r2,0x18                ; 0801B18E
lsr   r2,r2,0x18                ; 0801B190
bl    ObjMain_Slope0_NoRelY     ; 0801B192  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B196
bx    r0                        ; 0801B198
.pool                           ; 0801B19A

Obj6E_8B_Init:
; object 6E/8B init
push  {lr}                      ; 0801B19C
lsl   r1,r1,0x10                ; 0801B19E
lsr   r1,r1,0x10                ; 0801B1A0
lsl   r2,r2,0x18                ; 0801B1A2
lsr   r2,r2,0x18                ; 0801B1A4
bl    ObjMain_Slope0_NoRelY     ; 0801B1A6  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B1AA
bx    r0                        ; 0801B1AC
.pool                           ; 0801B1AE

Obj6D_Init:
; object 6D init
push  {lr}                      ; 0801B1B0
lsl   r1,r1,0x10                ; 0801B1B2
lsr   r1,r1,0x10                ; 0801B1B4
lsl   r2,r2,0x18                ; 0801B1B6
lsr   r2,r2,0x18                ; 0801B1B8
bl    ObjMain_Slope0_NoRelY     ; 0801B1BA  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B1BE
bx    r0                        ; 0801B1C0
.pool                           ; 0801B1C2

Obj6C_Init:
; object 6C init
push  {lr}                      ; 0801B1C4
lsl   r1,r1,0x10                ; 0801B1C6
lsr   r1,r1,0x10                ; 0801B1C8
lsl   r2,r2,0x18                ; 0801B1CA
lsr   r2,r2,0x18                ; 0801B1CC
bl    ObjMain_Slope0_NoRelY     ; 0801B1CE  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B1D2
bx    r0                        ; 0801B1D4
.pool                           ; 0801B1D6

Obj6B_Init:
; object 6B init
push  {r4-r6,lr}                ; 0801B1D8
lsl   r1,r1,0x10                ; 0801B1DA
lsr   r1,r1,0x10                ; 0801B1DC
lsl   r2,r2,0x18                ; 0801B1DE
lsr   r2,r2,0x18                ; 0801B1E0
mov   r4,r0                     ; 0801B1E2
add   r4,0x52                   ; 0801B1E4  [03007240]+52 (0300225E)
ldrh  r3,[r4]                   ; 0801B1E6 \
add   r3,0x1                    ; 0801B1E8 | add 1 to height
strh  r3,[r4]                   ; 0801B1EA /
mov   r6,r0                     ; 0801B1EC
add   r6,0x48                   ; 0801B1EE  [03007240]+48 (03002254)
ldrh  r5,[r6]                   ; 0801B1F0  tile YXyx
ldr   r4,=0xF0F0                ; 0801B1F2
mov   r3,r4                     ; 0801B1F4 \
and   r3,r5                     ; 0801B1F6 |
sub   r3,0x10                   ; 0801B1F8 | subtract 1 from initial Y
and   r3,r4                     ; 0801B1FA /
ldr   r4,=0x0F0F                ; 0801B1FC
and   r4,r5                     ; 0801B1FE
orr   r4,r3                     ; 0801B200  new YXyx
strh  r4,[r6]                   ; 0801B202  set new YXyx
bl    ObjMain_Slope0_NoRelY     ; 0801B204  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                   ; 0801B208
pop   {r0}                      ; 0801B20A
bx    r0                        ; 0801B20C
.pool                           ; 0801B20E

Obj6A_Init:
; object 6A init
push  {lr}                      ; 0801B218
lsl   r1,r1,0x10                ; 0801B21A
lsr   r1,r1,0x10                ; 0801B21C
lsl   r2,r2,0x18                ; 0801B21E
lsr   r2,r2,0x18                ; 0801B220
bl    ObjMain_Slope0_NoRelY     ; 0801B222  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B226
bx    r0                        ; 0801B228
.pool                           ; 0801B22A

Obj69_Init:
; object 69 init
push  {r4,lr}                   ; 0801B22C
mov   r4,r0                     ; 0801B22E
lsl   r1,r1,0x10                ; 0801B230
lsr   r1,r1,0x10                ; 0801B232
lsl   r2,r2,0x18                ; 0801B234
lsr   r2,r2,0x18                ; 0801B236
mov   r3,r4                     ; 0801B238
add   r3,0x4E                   ; 0801B23A
ldrh  r0,[r3]                   ; 0801B23C  width
cmp   r0,0x3                    ; 0801B23E
bhi   @@Code0801B246            ; 0801B240
mov   r0,0x4                    ; 0801B242
strh  r0,[r3]                   ; 0801B244  if width <= 3, set width to 4
@@Code0801B246:
mov   r3,r4                     ; 0801B246
add   r3,0x52                   ; 0801B248
ldrh  r0,[r3]                   ; 0801B24A  height
cmp   r0,0x3                    ; 0801B24C
bhi   @@Code0801B254            ; 0801B24E
mov   r0,0x4                    ; 0801B250
strh  r0,[r3]                   ; 0801B252  if height <= 3, set height to 4
@@Code0801B254:
mov   r0,r4                     ; 0801B254
bl    ObjMain_Slope0_NoRelY     ; 0801B256  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801B25A
pop   {r0}                      ; 0801B25C
bx    r0                        ; 0801B25E

Obj68_8A_Init:
; object 68/8A init
push  {lr}                      ; 0801B260
lsl   r1,r1,0x10                ; 0801B262
lsr   r1,r1,0x10                ; 0801B264
lsl   r2,r2,0x18                ; 0801B266
lsr   r2,r2,0x18                ; 0801B268
bl    ObjMain_Slope0_NoRelY     ; 0801B26A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B26E
bx    r0                        ; 0801B270
.pool                           ; 0801B272

Obj67_Init:
; object 67 init
push  {lr}                      ; 0801B274
lsl   r1,r1,0x10                ; 0801B276
lsr   r1,r1,0x10                ; 0801B278
lsl   r2,r2,0x18                ; 0801B27A
lsr   r2,r2,0x18                ; 0801B27C
bl    ObjMain_Slope0_NoRelY     ; 0801B27E  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B282
bx    r0                        ; 0801B284
.pool                           ; 0801B286

Obj66_Init:
; object 66 init
push  {r4-r5,lr}                ; 0801B288
lsl   r1,r1,0x10                ; 0801B28A
lsr   r1,r1,0x10                ; 0801B28C
lsl   r2,r2,0x18                ; 0801B28E
lsr   r2,r2,0x18                ; 0801B290
mov   r3,0x46                   ; 0801B292
add   r3,r3,r0                  ; 0801B294  r3 = [03007240]+46 (03002252)
mov   r12,r3                    ; 0801B296
mov   r4,0x0                    ; 0801B298
ldr   r3,=0x7FFF                ; 0801B29A
mov   r5,r12                    ; 0801B29C
strh  r3,[r5]                   ; 0801B29E  no relative Y threshold
mov   r3,r0                     ; 0801B2A0
add   r3,0x44                   ; 0801B2A2  r3 = [03007240]+44 (03002250)
strh  r4,[r3]                   ; 0801B2A4  clear slope
bl    ObjMain_Shared            ; 0801B2A6  Object processing main
pop   {r4-r5}                   ; 0801B2AA
pop   {r0}                      ; 0801B2AC
bx    r0                        ; 0801B2AE
.pool                           ; 0801B2B0

Obj63_65_Init:
; object 63-65 init
push  {r4-r5,lr}                ; 0801B2B4
lsl   r1,r1,0x10                ; 0801B2B6
lsr   r1,r1,0x10                ; 0801B2B8
lsl   r2,r2,0x18                ; 0801B2BA
lsr   r2,r2,0x18                ; 0801B2BC
mov   r3,0x46                   ; 0801B2BE
add   r3,r3,r0                  ; 0801B2C0  r3 = [03007240]+46 (03002252)
mov   r12,r3                    ; 0801B2C2
mov   r4,0x0                    ; 0801B2C4
ldr   r3,=0x7FFF                ; 0801B2C6
mov   r5,r12                    ; 0801B2C8  no relative Y threshold
strh  r3,[r5]                   ; 0801B2CA
mov   r3,r0                     ; 0801B2CC
add   r3,0x44                   ; 0801B2CE  r3 = [03007240]+44 (03002250)
strh  r4,[r3]                   ; 0801B2D0  clear slope
bl    ObjMain_Shared            ; 0801B2D2  Object processing main
pop   {r4-r5}                   ; 0801B2D6
pop   {r0}                      ; 0801B2D8
bx    r0                        ; 0801B2DA
.pool                           ; 0801B2DC

Obj61_62_Init:
; object 61-62 init
push  {r4-r7,lr}                ; 0801B2E0
mov   r12,r0                    ; 0801B2E2
lsl   r1,r1,0x10                ; 0801B2E4
lsr   r7,r1,0x10                ; 0801B2E6
lsl   r2,r2,0x18                ; 0801B2E8
lsr   r6,r2,0x18                ; 0801B2EA
mov   r2,r12                    ; 0801B2EC
add   r2,0x46                   ; 0801B2EE
mov   r1,0x0                    ; 0801B2F0
ldr   r0,=0x7FFF                ; 0801B2F2
strh  r0,[r2]                   ; 0801B2F4
mov   r0,r12                    ; 0801B2F6
add   r0,0x44                   ; 0801B2F8
strh  r1,[r0]                   ; 0801B2FA
sub   r0,0x2                    ; 0801B2FC
ldrh  r1,[r0]                   ; 0801B2FE
mov   r0,0x2                    ; 0801B300
and   r0,r1                     ; 0801B302
cmp   r0,0x0                    ; 0801B304
beq   @@Code0801B33A            ; 0801B306
add   r2,0x8                    ; 0801B308
ldrh  r4,[r2]                   ; 0801B30A
mov   r3,r4                     ; 0801B30C
mov   r1,r12                    ; 0801B30E
add   r1,0x52                   ; 0801B310
ldrh  r0,[r1]                   ; 0801B312
orr   r4,r0                     ; 0801B314
mov   r5,r1                     ; 0801B316
cmp   r4,0x1                    ; 0801B318
bne   @@Code0801B328            ; 0801B31A
add   r0,r3,0x2                 ; 0801B31C
strh  r0,[r2]                   ; 0801B31E
b     @@Code0801B362            ; 0801B320
.pool                           ; 0801B322

@@Code0801B328:
add   r0,r3,0x2                 ; 0801B328
strh  r0,[r2]                   ; 0801B32A
ldrh  r4,[r5]                   ; 0801B32C
cmp   r4,0x1                    ; 0801B32E
bls   @@Code0801B362            ; 0801B330
add   r0,r4,0x2                 ; 0801B332
strh  r0,[r5]                   ; 0801B334
ldrh  r0,[r2]                   ; 0801B336
b     @@Code0801B358            ; 0801B338
@@Code0801B33A:
mov   r1,r12                    ; 0801B33A
add   r1,0x4E                   ; 0801B33C
ldrh  r0,[r1]                   ; 0801B33E
add   r0,0x2                    ; 0801B340
strh  r0,[r1]                   ; 0801B342
mov   r0,r12                    ; 0801B344
add   r0,0x52                   ; 0801B346
ldrh  r4,[r0]                   ; 0801B348
mov   r5,r0                     ; 0801B34A
cmp   r4,0x1                    ; 0801B34C
bls   @@Code0801B362            ; 0801B34E
add   r0,r4,0x2                 ; 0801B350
strh  r0,[r5]                   ; 0801B352
ldrh  r0,[r1]                   ; 0801B354
lsr   r0,r0,0x1                 ; 0801B356
@@Code0801B358:
ldrh  r4,[r5]                   ; 0801B358
sub   r0,r4,r0                  ; 0801B35A
lsl   r0,r0,0x10                ; 0801B35C
lsr   r4,r0,0x10                ; 0801B35E
strh  r4,[r5]                   ; 0801B360
@@Code0801B362:
mov   r3,r12                    ; 0801B362
add   r3,0x48                   ; 0801B364
ldrh  r2,[r3]                   ; 0801B366
ldr   r0,=0xF0F0                ; 0801B368
and   r0,r2                     ; 0801B36A
ldr   r1,=0x0F0F                ; 0801B36C
mov   r4,r1                     ; 0801B36E
and   r4,r2                     ; 0801B370
sub   r4,0x1                    ; 0801B372
and   r4,r1                     ; 0801B374
orr   r4,r0                     ; 0801B376
mov   r0,0x0                    ; 0801B378
strh  r4,[r3]                   ; 0801B37A
mov   r1,r12                    ; 0801B37C
strh  r0,[r1,0x3A]              ; 0801B37E
ldrh  r4,[r5]                   ; 0801B380
sub   r0,r4,0x1                 ; 0801B382
lsl   r0,r0,0x10                ; 0801B384
ldr   r1,=0x7FFE0000            ; 0801B386
cmp   r0,r1                     ; 0801B388
bls   @@Code0801B390            ; 0801B38A
mov   r0,0x1                    ; 0801B38C
strh  r0,[r5]                   ; 0801B38E
@@Code0801B390:
mov   r0,r12                    ; 0801B390
mov   r1,r7                     ; 0801B392
mov   r2,r6                     ; 0801B394
bl    ObjMain_Shared            ; 0801B396  Object processing main
pop   {r4-r7}                   ; 0801B39A
pop   {r0}                      ; 0801B39C
bx    r0                        ; 0801B39E
.pool                           ; 0801B3A0

Obj5F_60_Init:
; object 5F-60 init
push  {r4-r7,lr}                ; 0801B3AC
mov   r12,r0                    ; 0801B3AE
lsl   r1,r1,0x10                ; 0801B3B0
lsr   r6,r1,0x10                ; 0801B3B2
lsl   r2,r2,0x18                ; 0801B3B4
lsr   r5,r2,0x18                ; 0801B3B6
mov   r1,r12                    ; 0801B3B8
add   r1,0x46                   ; 0801B3BA
mov   r7,0x0                    ; 0801B3BC
ldr   r0,=0x7FFF                ; 0801B3BE
strh  r0,[r1]                   ; 0801B3C0
mov   r0,r12                    ; 0801B3C2
add   r0,0x44                   ; 0801B3C4
strh  r7,[r0]                   ; 0801B3C6
mov   r3,r12                    ; 0801B3C8
add   r3,0x4E                   ; 0801B3CA
ldrh  r2,[r3]                   ; 0801B3CC
sub   r0,0x2                    ; 0801B3CE
ldrh  r1,[r0]                   ; 0801B3D0
mov   r0,0xF                    ; 0801B3D2
and   r0,r1                     ; 0801B3D4
cmp   r0,0x0                    ; 0801B3D6
beq   @@Code0801B3DC            ; 0801B3D8
lsr   r2,r2,0x1                 ; 0801B3DA
@@Code0801B3DC:
mov   r4,r2                     ; 0801B3DC
mov   r1,r12                    ; 0801B3DE
add   r1,0x52                   ; 0801B3E0
ldrh  r0,[r1]                   ; 0801B3E2
cmp   r4,r0                     ; 0801B3E4
blo   @@Code0801B3EA            ; 0801B3E6
strh  r4,[r1]                   ; 0801B3E8
@@Code0801B3EA:
ldrh  r0,[r3]                   ; 0801B3EA
add   r0,0x2                    ; 0801B3EC
strh  r0,[r3]                   ; 0801B3EE
ldrh  r0,[r1]                   ; 0801B3F0
add   r0,0x1                    ; 0801B3F2
strh  r0,[r1]                   ; 0801B3F4
mov   r3,r12                    ; 0801B3F6
add   r3,0x48                   ; 0801B3F8
ldrh  r0,[r3]                   ; 0801B3FA
ldr   r1,=0xF0F0                ; 0801B3FC
and   r1,r0                     ; 0801B3FE
ldr   r2,=0x0F0F                ; 0801B400
mov   r4,r2                     ; 0801B402
and   r4,r0                     ; 0801B404
sub   r0,r4,0x1                 ; 0801B406
and   r0,r2                     ; 0801B408
orr   r1,r0                     ; 0801B40A
strh  r1,[r3]                   ; 0801B40C
mov   r0,r12                    ; 0801B40E
strh  r7,[r0,0x3A]              ; 0801B410
mov   r1,r6                     ; 0801B412
mov   r2,r5                     ; 0801B414
bl    ObjMain_Shared            ; 0801B416  Object processing main
pop   {r4-r7}                   ; 0801B41A
pop   {r0}                      ; 0801B41C
bx    r0                        ; 0801B41E
.pool                           ; 0801B420

Obj5C_5E_Init:
; object 5C-5E init
push  {r4-r6,lr}                ; 0801B42C
mov   r12,r0                    ; 0801B42E
lsl   r1,r1,0x10                ; 0801B430
lsr   r1,r1,0x10                ; 0801B432
lsl   r2,r2,0x18                ; 0801B434
lsr   r2,r2,0x18                ; 0801B436
mov   r3,r12                    ; 0801B438
add   r3,0x46                   ; 0801B43A
ldr   r0,=0x7FFF                ; 0801B43C
strh  r0,[r3]                   ; 0801B43E
mov   r0,r12                    ; 0801B440
add   r0,0x42                   ; 0801B442
ldrh  r3,[r0]                   ; 0801B444
mov   r0,0x3                    ; 0801B446
and   r0,r3                     ; 0801B448
ldr   r3,=Obj5C_5E_Init_Data    ; 0801B44A
lsl   r0,r0,0x1                 ; 0801B44C
add   r0,r0,r3                  ; 0801B44E
ldrh  r3,[r0]                   ; 0801B450
mov   r0,r12                    ; 0801B452
add   r0,0x44                   ; 0801B454
strh  r3,[r0]                   ; 0801B456
mov   r3,r12                    ; 0801B458
add   r3,0x4E                   ; 0801B45A
ldrh  r0,[r3]                   ; 0801B45C
add   r0,0x2                    ; 0801B45E
strh  r0,[r3]                   ; 0801B460
mov   r6,r12                    ; 0801B462
add   r6,0x48                   ; 0801B464
ldrh  r5,[r6]                   ; 0801B466
ldr   r3,=0xF0F0                ; 0801B468
and   r3,r5                     ; 0801B46A
ldr   r4,=0x0F0F                ; 0801B46C
mov   r0,r4                     ; 0801B46E
and   r0,r5                     ; 0801B470
sub   r0,0x1                    ; 0801B472
and   r0,r4                     ; 0801B474
orr   r0,r3                     ; 0801B476
strh  r0,[r6]                   ; 0801B478
mov   r0,r12                    ; 0801B47A
bl    ObjMain_Shared            ; 0801B47C  Object processing main
pop   {r4-r6}                   ; 0801B480
pop   {r0}                      ; 0801B482
bx    r0                        ; 0801B484
.pool                           ; 0801B486

Obj59_5B_Init:
; object 59-5B init
push  {r4-r6,lr}                ; 0801B498
mov   r12,r0                    ; 0801B49A
lsl   r1,r1,0x10                ; 0801B49C
lsr   r1,r1,0x10                ; 0801B49E
lsl   r2,r2,0x18                ; 0801B4A0
lsr   r2,r2,0x18                ; 0801B4A2
mov   r3,r12                    ; 0801B4A4
add   r3,0x46                   ; 0801B4A6
ldr   r0,=0x7FFF                ; 0801B4A8
strh  r0,[r3]                   ; 0801B4AA
mov   r0,r12                    ; 0801B4AC
add   r0,0x42                   ; 0801B4AE
ldrh  r3,[r0]                   ; 0801B4B0
mov   r0,0x3                    ; 0801B4B2
and   r0,r3                     ; 0801B4B4
sub   r0,0x1                    ; 0801B4B6
lsl   r0,r0,0x10                ; 0801B4B8
ldr   r3,=Obj59_5B_Init_Data    ; 0801B4BA
lsr   r0,r0,0xF                 ; 0801B4BC
add   r0,r0,r3                  ; 0801B4BE
ldrh  r3,[r0]                   ; 0801B4C0
mov   r0,r12                    ; 0801B4C2
add   r0,0x44                   ; 0801B4C4
strh  r3,[r0]                   ; 0801B4C6
mov   r3,r12                    ; 0801B4C8
add   r3,0x52                   ; 0801B4CA
ldrh  r0,[r3]                   ; 0801B4CC
add   r0,0x1                    ; 0801B4CE
strh  r0,[r3]                   ; 0801B4D0
sub   r3,0x4                    ; 0801B4D2
ldrh  r0,[r3]                   ; 0801B4D4
add   r0,0x2                    ; 0801B4D6
strh  r0,[r3]                   ; 0801B4D8
mov   r6,r12                    ; 0801B4DA
add   r6,0x48                   ; 0801B4DC
ldrh  r5,[r6]                   ; 0801B4DE
ldr   r0,=0xF0F0                ; 0801B4E0
mov   r3,r0                     ; 0801B4E2
and   r3,r5                     ; 0801B4E4
sub   r3,0x10                   ; 0801B4E6
and   r3,r0                     ; 0801B4E8
ldr   r4,=0x0F0F                ; 0801B4EA
mov   r0,r4                     ; 0801B4EC
and   r0,r5                     ; 0801B4EE
sub   r0,0x1                    ; 0801B4F0
and   r0,r4                     ; 0801B4F2
orr   r0,r3                     ; 0801B4F4
strh  r0,[r6]                   ; 0801B4F6
mov   r0,r12                    ; 0801B4F8
bl    ObjMain_Shared            ; 0801B4FA  Object processing main
pop   {r4-r6}                   ; 0801B4FE
pop   {r0}                      ; 0801B500
bx    r0                        ; 0801B502
.pool                           ; 0801B504

Obj58_Init:
; object 58 init
push  {r4-r5,lr}                ; 0801B514
lsl   r1,r1,0x10                ; 0801B516
lsr   r1,r1,0x10                ; 0801B518
lsl   r2,r2,0x18                ; 0801B51A
lsr   r2,r2,0x18                ; 0801B51C
mov   r3,0x46                   ; 0801B51E
add   r3,r3,r0                  ; 0801B520
mov   r12,r3                    ; 0801B522
mov   r4,0x0                    ; 0801B524
ldr   r3,=0x7FFF                ; 0801B526
mov   r5,r12                    ; 0801B528  r5 = [03007240]+46 (03002252)
strh  r3,[r5]                   ; 0801B52A  no relative Y threshold
mov   r3,r0                     ; 0801B52C
add   r3,0x44                   ; 0801B52E
strh  r4,[r3]                   ; 0801B530  clear slope
strh  r4,[r0,0x3A]              ; 0801B532  clear scratch RAM (03002246)
bl    ObjMain_Shared            ; 0801B534  Object processing main
pop   {r4-r5}                   ; 0801B538
pop   {r0}                      ; 0801B53A
bx    r0                        ; 0801B53C
.pool                           ; 0801B53E

Obj57_7E_Init:
; object 57/7E init
push  {r4-r5,lr}                ; 0801B544
lsl   r1,r1,0x10                ; 0801B546
lsr   r1,r1,0x10                ; 0801B548
lsl   r2,r2,0x18                ; 0801B54A
lsr   r2,r2,0x18                ; 0801B54C
mov   r3,0x46                   ; 0801B54E
add   r3,r3,r0                  ; 0801B550
mov   r12,r3                    ; 0801B552
mov   r4,0x0                    ; 0801B554
ldr   r3,=0x7FFF                ; 0801B556
mov   r5,r12                    ; 0801B558  r5 = [03007240]+46 (03002252)
strh  r3,[r5]                   ; 0801B55A  no relative Y threshold
mov   r3,r0                     ; 0801B55C
add   r3,0x44                   ; 0801B55E
strh  r4,[r3]                   ; 0801B560  clear slope
bl    ObjMain_Shared            ; 0801B562  Object processing main
pop   {r4-r5}                   ; 0801B566
pop   {r0}                      ; 0801B568
bx    r0                        ; 0801B56A
.pool                           ; 0801B56C

Obj54_56_Init:
; object 54-56 init
push  {lr}                      ; 0801B570
mov   r12,r0                    ; 0801B572
lsl   r1,r1,0x10                ; 0801B574
lsr   r1,r1,0x10                ; 0801B576
lsl   r2,r2,0x18                ; 0801B578
lsr   r2,r2,0x18                ; 0801B57A
mov   r3,r12                    ; 0801B57C
add   r3,0x46                   ; 0801B57E
ldr   r0,=0x7FFF                ; 0801B580
strh  r0,[r3]                   ; 0801B582
mov   r0,r12                    ; 0801B584
add   r0,0x42                   ; 0801B586
ldrh  r3,[r0]                   ; 0801B588
mov   r0,0x3                    ; 0801B58A
and   r0,r3                     ; 0801B58C
ldr   r3,=Obj54_56_Init_Data    ; 0801B58E
lsl   r0,r0,0x1                 ; 0801B590
add   r0,r0,r3                  ; 0801B592
ldrh  r3,[r0]                   ; 0801B594
mov   r0,r12                    ; 0801B596
add   r0,0x44                   ; 0801B598
strh  r3,[r0]                   ; 0801B59A
mov   r0,r12                    ; 0801B59C
bl    ObjMain_Shared            ; 0801B59E  Object processing main
pop   {r0}                      ; 0801B5A2
bx    r0                        ; 0801B5A4
.pool                           ; 0801B5A6

Obj53_Init:
; object 53 init
push  {lr}                      ; 0801B5B0
lsl   r1,r1,0x10                ; 0801B5B2
lsr   r1,r1,0x10                ; 0801B5B4
lsl   r2,r2,0x18                ; 0801B5B6
lsr   r2,r2,0x18                ; 0801B5B8
bl    ObjMain_Slope0_NoRelY     ; 0801B5BA  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B5BE
bx    r0                        ; 0801B5C0
.pool                           ; 0801B5C2

Obj52_Init:
; object 52 init
push  {r4,lr}                   ; 0801B5C4
lsl   r1,r1,0x10                ; 0801B5C6
lsr   r1,r1,0x10                ; 0801B5C8
lsl   r2,r2,0x18                ; 0801B5CA
lsr   r2,r2,0x18                ; 0801B5CC
mov   r4,r0                     ; 0801B5CE
add   r4,0x46                   ; 0801B5D0
ldr   r3,=0x7FFF                ; 0801B5D2
strh  r3,[r4]                   ; 0801B5D4  no relative Y threshold
sub   r4,0x2                    ; 0801B5D6
ldr   r3,=0xFFFF                ; 0801B5D8
strh  r3,[r4]                   ; 0801B5DA  set slope to -1
bl    ObjMain_Shared            ; 0801B5DC  Object processing main
pop   {r4}                      ; 0801B5E0
pop   {r0}                      ; 0801B5E2
bx    r0                        ; 0801B5E4
.pool                           ; 0801B5E6

Obj50_51_Init:
; object 50-51 init
push  {r4-r5,lr}                ; 0801B5F0
lsl   r1,r1,0x10                ; 0801B5F2
lsr   r1,r1,0x10                ; 0801B5F4
lsl   r2,r2,0x18                ; 0801B5F6
lsr   r2,r2,0x18                ; 0801B5F8
mov   r3,0x46                   ; 0801B5FA
add   r3,r3,r0                  ; 0801B5FC
mov   r12,r3                    ; 0801B5FE
mov   r4,0x0                    ; 0801B600
ldr   r3,=0x7FFF                ; 0801B602
mov   r5,r12                    ; 0801B604
strh  r3,[r5]                   ; 0801B606  no relative Y threshold
mov   r3,r0                     ; 0801B608
add   r3,0x44                   ; 0801B60A
strh  r4,[r3]                   ; 0801B60C  clear slope
bl    ObjMain_Shared            ; 0801B60E  Object processing main
pop   {r4-r5}                   ; 0801B612
pop   {r0}                      ; 0801B614
bx    r0                        ; 0801B616
.pool                           ; 0801B618

Obj4F_Init:
; object 4F init
push  {r4-r5,lr}                ; 0801B61C
lsl   r1,r1,0x10                ; 0801B61E
lsr   r1,r1,0x10                ; 0801B620
lsl   r2,r2,0x18                ; 0801B622
lsr   r2,r2,0x18                ; 0801B624
mov   r3,0x46                   ; 0801B626
add   r3,r3,r0                  ; 0801B628
mov   r12,r3                    ; 0801B62A
mov   r4,0x0                    ; 0801B62C
ldr   r3,=0x7FFF                ; 0801B62E
mov   r5,r12                    ; 0801B630
strh  r3,[r5]                   ; 0801B632  no relative Y threshold
mov   r3,r0                     ; 0801B634
add   r3,0x44                   ; 0801B636
strh  r4,[r3]                   ; 0801B638  clear slope
bl    ObjMain_Shared            ; 0801B63A  Object processing main
pop   {r4-r5}                   ; 0801B63E
pop   {r0}                      ; 0801B640
bx    r0                        ; 0801B642
.pool                           ; 0801B644

Obj4E_Init:
; object 4E init
push  {r4-r5,lr}                ; 0801B648
lsl   r1,r1,0x10                ; 0801B64A
lsr   r1,r1,0x10                ; 0801B64C
lsl   r2,r2,0x18                ; 0801B64E
lsr   r2,r2,0x18                ; 0801B650
mov   r3,0x46                   ; 0801B652  r3 = [03007240]+46 (03002252)
add   r3,r3,r0                  ; 0801B654
mov   r12,r3                    ; 0801B656
mov   r4,0x0                    ; 0801B658
ldr   r3,=0x7FFF                ; 0801B65A
mov   r5,r12                    ; 0801B65C
strh  r3,[r5]                   ; 0801B65E  no relative Y threshold
mov   r3,r0                     ; 0801B660
add   r3,0x44                   ; 0801B662  r3 = [03007240]+44 (03002250)
strh  r4,[r3]                   ; 0801B664  clear slope
bl    ObjMain_Shared            ; 0801B666  Object processing main
pop   {r4-r5}                   ; 0801B66A
pop   {r0}                      ; 0801B66C
bx    r0                        ; 0801B66E
.pool                           ; 0801B670

Obj4B_4D_Init:
; object 4B-4D init
push  {r4,lr}                   ; 0801B674
mov   r12,r0                    ; 0801B676
lsl   r1,r1,0x10                ; 0801B678
lsr   r1,r1,0x10                ; 0801B67A
lsl   r2,r2,0x18                ; 0801B67C
lsr   r2,r2,0x18                ; 0801B67E
mov   r4,r12                    ; 0801B680
add   r4,0x46                   ; 0801B682
mov   r3,0x0                    ; 0801B684
ldr   r0,=0x7FFF                ; 0801B686
strh  r0,[r4]                   ; 0801B688  no relative Y threshold
mov   r0,r12                    ; 0801B68A
add   r0,0x44                   ; 0801B68C
strh  r3,[r0]                   ; 0801B68E  clear slope
sub   r0,0x2                    ; 0801B690  +42
ldrh  r3,[r0]                   ; 0801B692  object ID
mov   r0,0x7                    ; 0801B694
and   r0,r3                     ; 0801B696  3,4,5 for 4B-4D
sub   r0,0x3                    ; 0801B698  0,1,2 for 4B-4D
lsl   r0,r0,0x11                ; 0801B69A
ldr   r3,=Obj4B_4D_Init_Data    ; 0801B69C
lsr   r0,r0,0x10                ; 0801B69E  0,2,4 for 4B-4D
add   r0,r0,r3                  ; 0801B6A0
ldrh  r0,[r0]                   ; 0801B6A2  4,6,8 for 4B-4D
mov   r3,r12                    ; 0801B6A4
add   r3,0x4E                   ; 0801B6A6
strh  r0,[r3]                   ; 0801B6A8  set width
mov   r0,r12                    ; 0801B6AA
bl    ObjMain_Shared            ; 0801B6AC  Object processing main
pop   {r4}                      ; 0801B6B0
pop   {r0}                      ; 0801B6B2
bx    r0                        ; 0801B6B4
.pool                           ; 0801B6B6

Obj49_4A_Init:
; object 49-4A init
push  {r4,lr}                   ; 0801B6C0
mov   r12,r0                    ; 0801B6C2
lsl   r1,r1,0x10                ; 0801B6C4
lsr   r1,r1,0x10                ; 0801B6C6
lsl   r2,r2,0x18                ; 0801B6C8
lsr   r2,r2,0x18                ; 0801B6CA
mov   r4,r12                    ; 0801B6CC
add   r4,0x46                   ; 0801B6CE
mov   r3,0x0                    ; 0801B6D0
ldr   r0,=0x7FFF                ; 0801B6D2
strh  r0,[r4]                   ; 0801B6D4  no relative Y threshold
mov   r0,r12                    ; 0801B6D6
add   r0,0x44                   ; 0801B6D8
strh  r3,[r0]                   ; 0801B6DA  clear slope
mov   r3,r12                    ; 0801B6DC
add   r3,0x4E                   ; 0801B6DE
mov   r0,0x2                    ; 0801B6E0
strh  r0,[r3]                   ; 0801B6E2  set width to 2
mov   r0,r12                    ; 0801B6E4
bl    ObjMain_Shared            ; 0801B6E6  Object processing main
pop   {r4}                      ; 0801B6EA
pop   {r0}                      ; 0801B6EC
bx    r0                        ; 0801B6EE
.pool                           ; 0801B6F0

Obj48_Init:
; object 48 init
push  {r4-r5,lr}                ; 0801B6F4
lsl   r1,r1,0x10                ; 0801B6F6
lsr   r1,r1,0x10                ; 0801B6F8
lsl   r2,r2,0x18                ; 0801B6FA
lsr   r2,r2,0x18                ; 0801B6FC
ldr   r3,=0x7FFF                ; 0801B6FE
mov   r4,0x46                   ; 0801B700
add   r4,r4,r0                  ; 0801B702
mov   r12,r4                    ; 0801B704
mov   r4,0x0                    ; 0801B706
mov   r5,r12                    ; 0801B708  r5 = [03007240]+46 (03002252)
strh  r3,[r5]                   ; 0801B70A  no relative Y threshold
mov   r3,r0                     ; 0801B70C
add   r3,0x44                   ; 0801B70E  r5 = [03007240]+44 (03002250)
strh  r4,[r3]                   ; 0801B710  clear slope
bl    ObjMain_Shared            ; 0801B712  Object processing main
pop   {r4-r5}                   ; 0801B716
pop   {r0}                      ; 0801B718
bx    r0                        ; 0801B71A
.pool                           ; 0801B71C

Obj47_Init:
; object 47 init
push  {lr}                      ; 0801B720
lsl   r1,r1,0x10                ; 0801B722
lsr   r1,r1,0x10                ; 0801B724
lsl   r2,r2,0x18                ; 0801B726
lsr   r2,r2,0x18                ; 0801B728
bl    ObjMain_Slope0_NoRelY     ; 0801B72A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B72E
bx    r0                        ; 0801B730
.pool                           ; 0801B732

Obj45_46_Init:
; object 45-46 init
push  {r4-r5,lr}                ; 0801B734
mov   r12,r0                    ; 0801B736
lsl   r1,r1,0x10                ; 0801B738
lsr   r1,r1,0x10                ; 0801B73A
lsl   r2,r2,0x18                ; 0801B73C
lsr   r2,r2,0x18                ; 0801B73E
mov   r3,r12                    ; 0801B740
add   r3,0x46                   ; 0801B742
mov   r0,0x2                    ; 0801B744
strh  r0,[r3]                   ; 0801B746
sub   r3,0x4                    ; 0801B748
ldrh  r3,[r3]                   ; 0801B74A
and   r0,r3                     ; 0801B74C
lsl   r0,r0,0x10                ; 0801B74E
ldr   r3,=Obj45_46_Slopes       ; 0801B750
lsr   r0,r0,0x11                ; 0801B752
lsl   r0,r0,0x1                 ; 0801B754
add   r0,r0,r3                  ; 0801B756
ldrh  r3,[r0]                   ; 0801B758
mov   r0,r12                    ; 0801B75A
add   r0,0x44                   ; 0801B75C
strh  r3,[r0]                   ; 0801B75E  set slope
mov   r5,r12                    ; 0801B760
add   r5,0x48                   ; 0801B762
ldrh  r4,[r5]                   ; 0801B764
ldr   r3,=0xF0F0                ; 0801B766
mov   r0,r3                     ; 0801B768
and   r0,r4                     ; 0801B76A
sub   r0,0x10                   ; 0801B76C
and   r0,r3                     ; 0801B76E
ldr   r3,=0x0F0F                ; 0801B770
and   r3,r4                     ; 0801B772
orr   r3,r0                     ; 0801B774
strh  r3,[r5]                   ; 0801B776
mov   r3,r12                    ; 0801B778
add   r3,0x52                   ; 0801B77A
ldrh  r0,[r3]                   ; 0801B77C
add   r0,0x1                    ; 0801B77E
strh  r0,[r3]                   ; 0801B780
mov   r0,r12                    ; 0801B782
bl    ObjMain_Shared            ; 0801B784  Object processing main
pop   {r4-r5}                   ; 0801B788
pop   {r0}                      ; 0801B78A
bx    r0                        ; 0801B78C
.pool                           ; 0801B78E

Obj44_Init:
; object 44 init
push  {lr}                      ; 0801B79C
lsl   r1,r1,0x10                ; 0801B79E
lsr   r1,r1,0x10                ; 0801B7A0
lsl   r2,r2,0x18                ; 0801B7A2
lsr   r2,r2,0x18                ; 0801B7A4
mov   r3,0x0                    ; 0801B7A6
strh  r3,[r0,0x3A]              ; 0801B7A8
bl    ObjMain_Slope0_NoRelY     ; 0801B7AA  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B7AE
bx    r0                        ; 0801B7B0
.pool                           ; 0801B7B2

Obj42_43_Init:
; object 42-43 init
push  {lr}                      ; 0801B7B4
lsl   r1,r1,0x10                ; 0801B7B6
lsr   r1,r1,0x10                ; 0801B7B8
lsl   r2,r2,0x18                ; 0801B7BA
lsr   r2,r2,0x18                ; 0801B7BC
bl    ObjMain_Slope0_NoRelY     ; 0801B7BE  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B7C2
bx    r0                        ; 0801B7C4
.pool                           ; 0801B7C6

Obj41_Init:
; object 41 init
push  {lr}                      ; 0801B7C8
lsl   r1,r1,0x10                ; 0801B7CA
lsr   r1,r1,0x10                ; 0801B7CC
lsl   r2,r2,0x18                ; 0801B7CE
lsr   r2,r2,0x18                ; 0801B7D0
bl    ObjMain_Slope0_NoRelY     ; 0801B7D2  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B7D6
bx    r0                        ; 0801B7D8
.pool                           ; 0801B7DA

Obj3F_40_Init:
; object 3F-40 init
push  {lr}                      ; 0801B7DC
lsl   r1,r1,0x10                ; 0801B7DE
lsr   r1,r1,0x10                ; 0801B7E0
lsl   r2,r2,0x18                ; 0801B7E2
lsr   r2,r2,0x18                ; 0801B7E4
bl    ObjMain_Slope0_NoRelY     ; 0801B7E6  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B7EA
bx    r0                        ; 0801B7EC
.pool                           ; 0801B7EE

Obj3E_Init:
; object 3E init
push  {lr}                      ; 0801B7F0
lsl   r1,r1,0x10                ; 0801B7F2
lsr   r1,r1,0x10                ; 0801B7F4
lsl   r2,r2,0x18                ; 0801B7F6
lsr   r2,r2,0x18                ; 0801B7F8
bl    ObjMain_Slope0_NoRelY     ; 0801B7FA  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B7FE
bx    r0                        ; 0801B800
.pool                           ; 0801B802

Obj3D_Init:
; object 3D init
push  {r4,lr}                   ; 0801B804
lsl   r1,r1,0x10                ; 0801B806
lsr   r1,r1,0x10                ; 0801B808
lsl   r2,r2,0x18                ; 0801B80A
lsr   r2,r2,0x18                ; 0801B80C
mov   r3,0x52                   ; 0801B80E
add   r3,r3,r0                  ; 0801B810
mov   r12,r3                    ; 0801B812
mov   r3,0x3                    ; 0801B814
mov   r4,r12                    ; 0801B816
strh  r3,[r4]                   ; 0801B818  set height to 3
bl    ObjMain_Slope0_NoRelY     ; 0801B81A  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801B81E
pop   {r0}                      ; 0801B820
bx    r0                        ; 0801B822

Obj3C_F4_Init:
; object 3C/F4 init
push  {r4,lr}                   ; 0801B824
lsl   r1,r1,0x10                ; 0801B826
lsr   r1,r1,0x10                ; 0801B828
lsl   r2,r2,0x18                ; 0801B82A
lsr   r2,r2,0x18                ; 0801B82C
mov   r3,0x42                   ; 0801B82E
add   r3,r3,r0                  ; 0801B830  r3 = [03007240]+42 (0300224E)
mov   r12,r3                    ; 0801B832
ldrh  r3,[r3]                   ; 0801B834  r3 = object ID
mov   r4,0x80                   ; 0801B836
and   r3,r4                     ; 0801B838  r3 = high bit of object ID
lsl   r3,r3,0x10                ; 0801B83A
lsr   r3,r3,0x10                ; 0801B83C
mov   r4,r12                    ; 0801B83E
strh  r3,[r4]                   ; 0801B840  0300224E = 00 if 3C, 80 if F4
mov   r4,r0                     ; 0801B842
add   r4,0x4E                   ; 0801B844  r4 = [03007240]+4E (0300225A)
mov   r3,0x2                    ; 0801B846
strh  r3,[r4]                   ; 0801B848  set width to 2
bl    ObjMain_Slope0_NoRelY     ; 0801B84A  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801B84E
pop   {r0}                      ; 0801B850
bx    r0                        ; 0801B852

Obj3B_Init:
; object 3B init
push  {r4-r5,lr}                ; 0801B854
mov   r4,r0                     ; 0801B856
lsl   r1,r1,0x10                ; 0801B858
lsr   r1,r1,0x10                ; 0801B85A
lsl   r2,r2,0x18                ; 0801B85C
lsr   r2,r2,0x18                ; 0801B85E
add   r0,0x4E                   ; 0801B860
ldrh  r0,[r0]                   ; 0801B862
lsl   r0,r0,0x11                ; 0801B864
lsr   r0,r0,0x10                ; 0801B866
mov   r3,0x52                   ; 0801B868
add   r3,r3,r4                  ; 0801B86A
mov   r12,r3                    ; 0801B86C
ldrh  r3,[r3]                   ; 0801B86E
sub   r0,r3,r0                  ; 0801B870
lsl   r0,r0,0x10                ; 0801B872
lsr   r3,r0,0x10                ; 0801B874
cmp   r3,0x0                    ; 0801B876
bne   @@Code0801B87C            ; 0801B878
mov   r3,0x1                    ; 0801B87A
@@Code0801B87C:
lsl   r0,r3,0x10                ; 0801B87C
cmp   r0,0x0                    ; 0801B87E
bge   @@Code0801B884            ; 0801B880
mov   r3,0x1                    ; 0801B882
@@Code0801B884:
mov   r5,r12                    ; 0801B884
strh  r3,[r5]                   ; 0801B886
mov   r0,r4                     ; 0801B888
bl    ObjMain_Slope0_NoRelY     ; 0801B88A  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                   ; 0801B88E
pop   {r0}                      ; 0801B890
bx    r0                        ; 0801B892

Obj3A_Init:
; object 3A init
push  {lr}                      ; 0801B894
lsl   r1,r1,0x10                ; 0801B896
lsr   r1,r1,0x10                ; 0801B898
lsl   r2,r2,0x18                ; 0801B89A
lsr   r2,r2,0x18                ; 0801B89C
bl    ObjMain_Slope0_NoRelY     ; 0801B89E  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B8A2
bx    r0                        ; 0801B8A4
.pool                           ; 0801B8A6

Obj39_Init:
; object 39 init
push  {r4-r5,lr}                ; 0801B8A8
lsl   r1,r1,0x10                ; 0801B8AA
lsr   r1,r1,0x10                ; 0801B8AC
lsl   r2,r2,0x18                ; 0801B8AE
lsr   r2,r2,0x18                ; 0801B8B0
mov   r3,0x4E                   ; 0801B8B2
add   r3,r3,r0                  ; 0801B8B4
mov   r12,r3                    ; 0801B8B6
ldrh  r3,[r3]                   ; 0801B8B8  width
add   r3,0x1                    ; 0801B8BA  add 1
ldr   r4,=0xFFFE                ; 0801B8BC
and   r3,r4                     ; 0801B8BE  force width to even
mov   r5,r12                    ; 0801B8C0
strh  r3,[r5]                   ; 0801B8C2  if width is odd, add 1
mov   r3,0x52                   ; 0801B8C4
add   r3,r3,r0                  ; 0801B8C6
mov   r12,r3                    ; 0801B8C8
ldrh  r3,[r3]                   ; 0801B8CA  height
add   r3,0x1                    ; 0801B8CC  add 1
and   r3,r4                     ; 0801B8CE  force height to even
mov   r4,r12                    ; 0801B8D0
strh  r3,[r4]                   ; 0801B8D2  height
bl    ObjMain_Slope0_NoRelY     ; 0801B8D4  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                   ; 0801B8D8
pop   {r0}                      ; 0801B8DA
bx    r0                        ; 0801B8DC
.pool                           ; 0801B8DE

Obj38_Init:
; object 38 init
push  {r4-r6,lr}                ; 0801B8E4
mov   r6,r0                     ; 0801B8E6
mov   r4,r1                     ; 0801B8E8
mov   r5,r2                     ; 0801B8EA
lsl   r4,r4,0x10                ; 0801B8EC
lsr   r4,r4,0x10                ; 0801B8EE
lsl   r5,r5,0x18                ; 0801B8F0
lsr   r5,r5,0x18                ; 0801B8F2
bl    GenRandomByte             ; 0801B8F4  Generate pseudo-random byte
lsl   r0,r0,0x10                ; 0801B8F8
lsr   r0,r0,0x10                ; 0801B8FA
mov   r1,0x2                    ; 0801B8FC
and   r0,r1                     ; 0801B8FE  random 0 or 2
lsl   r0,r0,0x10                ; 0801B900
lsr   r0,r0,0x10                ; 0801B902
mov   r1,r6                     ; 0801B904
add   r1,0x42                   ; 0801B906
strh  r0,[r1]                   ; 0801B908  [0300224E] = random 0 or 2
mov   r0,r6                     ; 0801B90A
mov   r1,r4                     ; 0801B90C
mov   r2,r5                     ; 0801B90E
bl    ObjMain_Slope0_NoRelY     ; 0801B910  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                   ; 0801B914
pop   {r0}                      ; 0801B916
bx    r0                        ; 0801B918
.pool                           ; 0801B91A

Obj37_Init:
; object 37 init
push  {lr}                      ; 0801B91C
lsl   r1,r1,0x10                ; 0801B91E
lsr   r1,r1,0x10                ; 0801B920
lsl   r2,r2,0x18                ; 0801B922
lsr   r2,r2,0x18                ; 0801B924
bl    ObjMain_Slope0_NoRelY     ; 0801B926  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B92A
bx    r0                        ; 0801B92C
.pool                           ; 0801B92E

Obj36_Init:
; object 36 init
push  {lr}                      ; 0801B930
lsl   r1,r1,0x10                ; 0801B932
lsr   r1,r1,0x10                ; 0801B934
lsl   r2,r2,0x18                ; 0801B936
lsr   r2,r2,0x18                ; 0801B938
mov   r3,0xB                    ; 0801B93A
strh  r3,[r0,0x3A]              ; 0801B93C
bl    ObjMain_Slope0_NoRelY     ; 0801B93E  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B942
bx    r0                        ; 0801B944
.pool                           ; 0801B946

Obj35_Init:
; object 35 init
push  {r4,lr}                   ; 0801B948
lsl   r1,r1,0x10                ; 0801B94A
lsr   r1,r1,0x10                ; 0801B94C
lsl   r2,r2,0x18                ; 0801B94E
lsr   r2,r2,0x18                ; 0801B950
mov   r3,0x42                   ; 0801B952
add   r3,r3,r0                  ; 0801B954
mov   r12,r3                    ; 0801B956
mov   r3,0x0                    ; 0801B958
mov   r4,r12                    ; 0801B95A
strh  r3,[r4]                   ; 0801B95C  set 0300244E to 0
bl    ObjMain_Slope0_NoRelY     ; 0801B95E  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801B962
pop   {r0}                      ; 0801B964
bx    r0                        ; 0801B966

Obj34_Init:
; object 34 init
push  {r4-r5,lr}                ; 0801B968
lsl   r1,r1,0x10                ; 0801B96A
lsr   r1,r1,0x10                ; 0801B96C
lsl   r2,r2,0x18                ; 0801B96E
lsr   r2,r2,0x18                ; 0801B970
mov   r3,0x52                   ; 0801B972
add   r3,r3,r0                  ; 0801B974
mov   r12,r3                    ; 0801B976
ldrh  r3,[r3]                   ; 0801B978
add   r3,0x1                    ; 0801B97A
mov   r4,0x0                    ; 0801B97C
mov   r5,r12                    ; 0801B97E
strh  r3,[r5]                   ; 0801B980  add 1 to height (set height to 2)
strh  r4,[r0,0x3A]              ; 0801B982  clear scratch RAM
bl    ObjMain_Slope0_NoRelY     ; 0801B984  Object processing main, slope=0, no relative Y threshold
pop   {r4-r5}                   ; 0801B988
pop   {r0}                      ; 0801B98A
bx    r0                        ; 0801B98C
.pool                           ; 0801B98E

Obj32_33_Init:
; object 32-33 init
push  {lr}                      ; 0801B990
lsl   r1,r1,0x10                ; 0801B992
lsr   r1,r1,0x10                ; 0801B994
lsl   r2,r2,0x18                ; 0801B996
lsr   r2,r2,0x18                ; 0801B998
bl    ObjMain_Slope0_NoRelY     ; 0801B99A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B99E
bx    r0                        ; 0801B9A0
.pool                           ; 0801B9A2

Obj30_31_Init:
; object 30-31 init
push  {r4-r6,lr}                ; 0801B9A4
mov   r4,r0                     ; 0801B9A6
lsl   r1,r1,0x10                ; 0801B9A8
lsr   r6,r1,0x10                ; 0801B9AA
lsl   r2,r2,0x18                ; 0801B9AC
lsr   r5,r2,0x18                ; 0801B9AE
mov   r0,0x0                    ; 0801B9B0
strh  r0,[r4,0x3A]              ; 0801B9B2  clear 03002246
bl    GenRandomByte             ; 0801B9B4  Generate pseudo-random byte
mov   r1,0x2                    ; 0801B9B8
and   r1,r0                     ; 0801B9BA  random 0,2
cmp   r1,0x0                    ; 0801B9BC
beq   @@Code0801B9C4            ; 0801B9BE
mov   r0,0xB                    ; 0801B9C0 \
strh  r0,[r4,0x3A]              ; 0801B9C2 / if random 2, set 03002246 to B
@@Code0801B9C4:
mov   r0,r4                     ; 0801B9C4
mov   r1,r6                     ; 0801B9C6
mov   r2,r5                     ; 0801B9C8
bl    ObjMain_Slope0_NoRelY     ; 0801B9CA  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                   ; 0801B9CE
pop   {r0}                      ; 0801B9D0
bx    r0                        ; 0801B9D2

Obj2F_Init:
; object 2F init
push  {lr}                      ; 0801B9D4
lsl   r1,r1,0x10                ; 0801B9D6
lsr   r1,r1,0x10                ; 0801B9D8
lsl   r2,r2,0x18                ; 0801B9DA
lsr   r2,r2,0x18                ; 0801B9DC
bl    ObjMain_Slope0_NoRelY     ; 0801B9DE  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801B9E2
bx    r0                        ; 0801B9E4
.pool                           ; 0801B9E6

Obj2D_2E_Init:
; object 2D-2E init
push  {r4-r6,lr}                ; 0801B9E8
mov   r6,r0                     ; 0801B9EA
mov   r4,r1                     ; 0801B9EC
mov   r5,r2                     ; 0801B9EE
lsl   r4,r4,0x10                ; 0801B9F0
lsr   r4,r4,0x10                ; 0801B9F2
lsl   r5,r5,0x18                ; 0801B9F4
lsr   r5,r5,0x18                ; 0801B9F6
bl    GenRandomByte             ; 0801B9F8  Generate pseudo-random byte
lsl   r0,r0,0x10                ; 0801B9FC
lsr   r0,r0,0x10                ; 0801B9FE
mov   r1,0x2                    ; 0801BA00
and   r0,r1                     ; 0801BA02  random 0,2
lsl   r0,r0,0x10                ; 0801BA04
lsr   r0,r0,0x10                ; 0801BA06
strh  r0,[r6,0x3A]              ; 0801BA08  set scratch RAM to random 0,2
mov   r0,r6                     ; 0801BA0A
mov   r1,r4                     ; 0801BA0C
mov   r2,r5                     ; 0801BA0E
bl    ObjMain_Slope0_NoRelY     ; 0801BA10  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                   ; 0801BA14
pop   {r0}                      ; 0801BA16
bx    r0                        ; 0801BA18
.pool                           ; 0801BA1A

Obj2C_Init:
; object 2C init
push  {r4,lr}                   ; 0801BA1C
lsl   r1,r1,0x10                ; 0801BA1E
lsr   r1,r1,0x10                ; 0801BA20
lsl   r2,r2,0x18                ; 0801BA22
lsr   r2,r2,0x18                ; 0801BA24
mov   r3,0x4E                   ; 0801BA26
add   r3,r3,r0                  ; 0801BA28
mov   r12,r3                    ; 0801BA2A
ldrh  r3,[r3]                   ; 0801BA2C
add   r3,0x1                    ; 0801BA2E
mov   r4,r12                    ; 0801BA30
strh  r3,[r4]                   ; 0801BA32  add 1 to width (set width to 2)
bl    ObjMain_Slope0_NoRelY     ; 0801BA34  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801BA38
pop   {r0}                      ; 0801BA3A
bx    r0                        ; 0801BA3C
.pool                           ; 0801BA3E

Obj2B_Init:
; object 2B init
push  {lr}                      ; 0801BA40
lsl   r1,r1,0x10                ; 0801BA42
lsr   r1,r1,0x10                ; 0801BA44
lsl   r2,r2,0x18                ; 0801BA46
lsr   r2,r2,0x18                ; 0801BA48
bl    ObjMain_Slope0_NoRelY     ; 0801BA4A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801BA4E
bx    r0                        ; 0801BA50
.pool                           ; 0801BA52

Obj29_2A_Init:
; object 29-2A init
push  {r4-r6,lr}                ; 0801BA54
lsl   r1,r1,0x10                ; 0801BA56
lsr   r1,r1,0x10                ; 0801BA58
lsl   r2,r2,0x18                ; 0801BA5A
lsr   r2,r2,0x18                ; 0801BA5C
mov   r3,0x42                   ; 0801BA5E
add   r3,r3,r0                  ; 0801BA60
mov   r12,r3                    ; 0801BA62
ldrh  r4,[r3]                   ; 0801BA64  object ID
mov   r5,0x2                    ; 0801BA66
mov   r3,r5                     ; 0801BA68
and   r3,r4                     ; 0801BA6A  0,2 for 29,2A
lsl   r3,r3,0x10                ; 0801BA6C
lsr   r3,r3,0x10                ; 0801BA6E
lsl   r3,r3,0x11                ; 0801BA70
lsr   r3,r3,0x10                ; 0801BA72  0,4 for 29,2A
mov   r4,0x0                    ; 0801BA74
mov   r6,r12                    ; 0801BA76
strh  r3,[r6]                   ; 0801BA78  [0300224E] = 0,4 for 29,2A
strh  r4,[r0,0x3A]              ; 0801BA7A  clear scratch RAM
mov   r3,r0                     ; 0801BA7C
add   r3,0x44                   ; 0801BA7E
strh  r5,[r3]                   ; 0801BA80  set slope to 2
bl    ObjMain_NoRelY            ; 0801BA82  Object processing main, no relative Y threshold
pop   {r4-r6}                   ; 0801BA86
pop   {r0}                      ; 0801BA88
bx    r0                        ; 0801BA8A

Obj27_28_Init:
; object 27-28 init
push  {r4,lr}                   ; 0801BA8C
lsl   r1,r1,0x10                ; 0801BA8E
lsr   r1,r1,0x10                ; 0801BA90
lsl   r2,r2,0x18                ; 0801BA92
lsr   r2,r2,0x18                ; 0801BA94
mov   r3,0x42                   ; 0801BA96
add   r3,r3,r0                  ; 0801BA98
mov   r12,r3                    ; 0801BA9A
ldrh  r4,[r3]                   ; 0801BA9C  object ID
mov   r3,0x8                    ; 0801BA9E
and   r3,r4                     ; 0801BAA0  0,8 for object 27,28
lsl   r3,r3,0x10                ; 0801BAA2
lsr   r3,r3,0x12                ; 0801BAA4
lsl   r3,r3,0x10                ; 0801BAA6
lsr   r3,r3,0x10                ; 0801BAA8
mov   r4,r12                    ; 0801BAAA
strh  r3,[r4]                   ; 0801BAAC  [0300224E] = (objID-27)*2
mov   r4,r0                     ; 0801BAAE
add   r4,0x44                   ; 0801BAB0
ldr   r3,=0xFFFF                ; 0801BAB2
strh  r3,[r4]                   ; 0801BAB4  set slope to -1
bl    ObjMain_NoRelY            ; 0801BAB6  Object processing main, no relative Y threshold
pop   {r4}                      ; 0801BABA
pop   {r0}                      ; 0801BABC
bx    r0                        ; 0801BABE
.pool                           ; 0801BAC0

Obj25_26_Init:
; object 25-26 init
push  {r4,lr}                   ; 0801BAC4
lsl   r1,r1,0x10                ; 0801BAC6
lsr   r1,r1,0x10                ; 0801BAC8
lsl   r2,r2,0x18                ; 0801BACA
lsr   r2,r2,0x18                ; 0801BACC
mov   r3,0x42                   ; 0801BACE
add   r3,r3,r0                  ; 0801BAD0
mov   r12,r3                    ; 0801BAD2
ldrh  r4,[r3]                   ; 0801BAD4  object ID
mov   r3,0x2                    ; 0801BAD6
and   r3,r4                     ; 0801BAD8  0,2 for object 25,26
lsl   r3,r3,0x10                ; 0801BADA
lsr   r3,r3,0x10                ; 0801BADC
mov   r4,r12                    ; 0801BADE
strh  r3,[r4]                   ; 0801BAE0  [0300224E] = (objID-25)*2
bl    ObjMain_Slope0_NoRelY     ; 0801BAE2  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801BAE6
pop   {r0}                      ; 0801BAE8
bx    r0                        ; 0801BAEA

Obj24_Init:
; object 24 init
push  {lr}                      ; 0801BAEC
lsl   r1,r1,0x10                ; 0801BAEE
lsr   r1,r1,0x10                ; 0801BAF0
lsl   r2,r2,0x18                ; 0801BAF2
lsr   r2,r2,0x18                ; 0801BAF4
bl    ObjMain_Slope0_NoRelY     ; 0801BAF6  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801BAFA
bx    r0                        ; 0801BAFC
.pool                           ; 0801BAFE

Obj23_Init:
; object 23 init
push  {r4,lr}                   ; 0801BB00
lsl   r1,r1,0x10                ; 0801BB02
lsr   r1,r1,0x10                ; 0801BB04
lsl   r2,r2,0x18                ; 0801BB06
lsr   r2,r2,0x18                ; 0801BB08
mov   r3,0x4E                   ; 0801BB0A
add   r3,r3,r0                  ; 0801BB0C
mov   r12,r3                    ; 0801BB0E
ldrh  r3,[r3]                   ; 0801BB10
add   r3,0x1                    ; 0801BB12
mov   r4,r12                    ; 0801BB14
strh  r3,[r4]                   ; 0801BB16  add 1 to width
bl    ObjMain_Slope0_NoRelY     ; 0801BB18  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801BB1C
pop   {r0}                      ; 0801BB1E
bx    r0                        ; 0801BB20
.pool                           ; 0801BB22

Obj22_Init:
; object 22 init
push  {r4,lr}                   ; 0801BB24
lsl   r1,r1,0x10                ; 0801BB26
lsr   r1,r1,0x10                ; 0801BB28
lsl   r2,r2,0x18                ; 0801BB2A
lsr   r2,r2,0x18                ; 0801BB2C
mov   r3,0x4E                   ; 0801BB2E
add   r3,r3,r0                  ; 0801BB30
mov   r12,r3                    ; 0801BB32
ldrh  r3,[r3]                   ; 0801BB34
add   r3,0x1                    ; 0801BB36
mov   r4,r12                    ; 0801BB38
strh  r3,[r4]                   ; 0801BB3A  add 1 to width
bl    ObjMain_Slope0_NoRelY     ; 0801BB3C  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801BB40
pop   {r0}                      ; 0801BB42
bx    r0                        ; 0801BB44
.pool                           ; 0801BB46

Obj21_Init:
; object 21 init
push  {lr}                      ; 0801BB48
lsl   r1,r1,0x10                ; 0801BB4A
lsr   r1,r1,0x10                ; 0801BB4C
lsl   r2,r2,0x18                ; 0801BB4E
lsr   r2,r2,0x18                ; 0801BB50
mov   r3,0x0                    ; 0801BB52
strh  r3,[r0,0x3A]              ; 0801BB54  clear scratch RAM
bl    ObjMain_Slope0_NoRelY     ; 0801BB56  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801BB5A
bx    r0                        ; 0801BB5C
.pool                           ; 0801BB5E

Obj1F_20_Init:
; object 1F-20 init
push  {r4-r7,lr}                ; 0801BB60
mov   r7,r10                    ; 0801BB62
mov   r6,r9                     ; 0801BB64
mov   r5,r8                     ; 0801BB66
push  {r5-r7}                   ; 0801BB68
add   sp,-0x8                   ; 0801BB6A
mov   r12,r0                    ; 0801BB6C
lsl   r1,r1,0x10                ; 0801BB6E
lsr   r1,r1,0x10                ; 0801BB70
str   r1,[sp]                   ; 0801BB72  [sp] = object ID
lsl   r2,r2,0x18                ; 0801BB74
lsr   r2,r2,0x18                ; 0801BB76
str   r2,[sp,0x4]               ; 0801BB78  [sp+4] = 1
mov   r2,r12                    ; 0801BB7A
add   r2,0x48                   ; 0801BB7C
ldrh  r0,[r2]                   ; 0801BB7E  tile YXyx
lsr   r3,r0,0x4                 ; 0801BB80
eor   r3,r0                     ; 0801BB82
mov   r0,0x1                    ; 0801BB84
and   r3,r0                     ; 0801BB86  object Y^X parity
mov   r0,r12                    ; 0801BB88
strh  r3,[r0,0x3A]              ; 0801BB8A  store to scratch RAM
add   r0,0x42                   ; 0801BB8C
ldrh  r1,[r0]                   ; 0801BB8E  object ID
mov   r0,0x2                    ; 0801BB90
and   r0,r1                     ; 0801BB92  2,0 for 1F,20
lsl   r0,r0,0x10                ; 0801BB94
lsr   r0,r0,0x10                ; 0801BB96
mov   r9,r0                     ; 0801BB98
ldr   r0,=Obj1F_20_YThresholds  ; 0801BB9A
mov   r10,r0                    ; 0801BB9C
mov   r0,r9                     ; 0801BB9E  2,0 for 1F,20
cmp   r0,0x0                    ; 0801BBA0
beq   @@Code0801BC10            ; 0801BBA2
                                ;          \ runs if object 1F
ldrh  r1,[r2]                   ; 0801BBA4  tile YXyx
ldrb  r0,[r2]                   ; 0801BBA6  tile yx
lsr   r5,r0,0x4                 ; 0801BBA8  r5 = tile y, low digit
mov   r6,0xF                    ; 0801BBAA
and   r6,r1                     ; 0801BBAC  r6 = tile x, low digit
lsr   r3,r1,0x8                 ; 0801BBAE  r3 = tile YX
mov   r0,r3                     ; 0801BBB0  r0 = tile YX
mov   r1,0xF0                   ; 0801BBB2
and   r3,r1                     ; 0801BBB4  r3 = tile Y0
orr   r5,r3                     ; 0801BBB6  r5 = tile Y
lsl   r0,r0,0x14                ; 0801BBB8
lsr   r0,r0,0x10                ; 0801BBBA  r0 = tile YX0
orr   r6,r0                     ; 0801BBBC  r6 = tile YXx
mov   r2,0x0                    ; 0801BBBE
mov   r0,r12                    ; 0801BBC0
add   r0,0xF6                   ; 0801BBC2  r0 = [03007240]+F6 (03002302)
ldrb  r3,[r0]                   ; 0801BBC4  ?
mov   r4,r12                    ; 0801BBC6
add   r4,0xF4                   ; 0801BBC8  r4 = [03007240]+F4 (03002300)
mov   r7,r12                    ; 0801BBCA
add   r7,0x4E                   ; 0801BBCC  r7 = pointer to width
mov   r0,0x52                   ; 0801BBCE
add   r0,r12                    ; 0801BBD0
mov   r8,r0                     ; 0801BBD2  r8 = pointer to height
cmp   r3,0x0                    ; 0801BBD4
beq   @@Code0801BBEE            ; 0801BBD6
mov   r1,r4                     ; 0801BBD8
@@Code0801BBDA:
add   r0,r2,0x4                 ; 0801BBDA
lsl   r0,r0,0x10                ; 0801BBDC
lsr   r2,r0,0x10                ; 0801BBDE
cmp   r2,0x4F                   ; 0801BBE0
bhi   @@Code0801BBEE            ; 0801BBE2
add   r0,r2,0x2                 ; 0801BBE4
add   r0,r1,r0                  ; 0801BBE6
ldrb  r3,[r0]                   ; 0801BBE8
cmp   r3,0x0                    ; 0801BBEA
bne   @@Code0801BBDA            ; 0801BBEC
@@Code0801BBEE:
add   r0,r4,r2                  ; 0801BBEE
strb  r6,[r0]                   ; 0801BBF0
sub   r1,r5,0x2                 ; 0801BBF2
add   r0,r2,0x1                 ; 0801BBF4
add   r0,r4,r0                  ; 0801BBF6
strb  r1,[r0]                   ; 0801BBF8
ldrh  r1,[r7]                   ; 0801BBFA
sub   r1,0x1                    ; 0801BBFC
add   r0,r2,0x2                 ; 0801BBFE
add   r0,r4,r0                  ; 0801BC00
strb  r1,[r0]                   ; 0801BC02
mov   r0,r8                     ; 0801BC04
ldrh  r1,[r0]                   ; 0801BC06
sub   r1,0x1                    ; 0801BC08
add   r0,r2,0x3                 ; 0801BC0A
add   r0,r4,r0                  ; 0801BC0C
strb  r1,[r0]                   ; 0801BC0E /
@@Code0801BC10:
mov   r0,r12                    ; 0801BC10
add   r0,0x42                   ; 0801BC12
mov   r1,0x0                    ; 0801BC14
strh  r1,[r0]                   ; 0801BC16  clear 0300224E
mov   r2,r9                     ; 0801BC18  2,0 for 1F,20
lsr   r0,r2,0x1                 ; 0801BC1A
lsl   r0,r0,0x1                 ; 0801BC1C
add   r0,r10                    ; 0801BC1E  index 081BEFEC with 2,0 for 1F,20
ldrh  r0,[r0]                   ; 0801BC20  5,2 for 1F,20
mov   r3,r12                    ; 0801BC22
add   r3,0x46                   ; 0801BC24
strh  r0,[r3]                   ; 0801BC26  set relative Y threshold
mov   r0,r12                    ; 0801BC28
add   r0,0x44                   ; 0801BC2A
strh  r1,[r0]                   ; 0801BC2C  clear slope
mov   r0,r12                    ; 0801BC2E
ldr   r1,[sp]                   ; 0801BC30  object ID
ldr   r2,[sp,0x4]               ; 0801BC32  r2 = 1
bl    ObjMain_Shared            ; 0801BC34  Object processing main
add   sp,0x8                    ; 0801BC38
pop   {r3-r5}                   ; 0801BC3A
mov   r8,r3                     ; 0801BC3C
mov   r9,r4                     ; 0801BC3E
mov   r10,r5                    ; 0801BC40
pop   {r4-r7}                   ; 0801BC42
pop   {r0}                      ; 0801BC44
bx    r0                        ; 0801BC46
.pool                           ; 0801BC48

Obj1D_1E_Init:
; object 1D-1E init
push  {lr}                      ; 0801BC4C
lsl   r1,r1,0x10                ; 0801BC4E
lsr   r1,r1,0x10                ; 0801BC50
lsl   r2,r2,0x18                ; 0801BC52
lsr   r2,r2,0x18                ; 0801BC54
bl    ObjMain_Slope0_NoRelY     ; 0801BC56  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801BC5A
bx    r0                        ; 0801BC5C
.pool                           ; 0801BC5E

Obj1C_Init:
; object 1C init
push  {r4,lr}                   ; 0801BC60
lsl   r1,r1,0x10                ; 0801BC62
lsr   r1,r1,0x10                ; 0801BC64
lsl   r2,r2,0x18                ; 0801BC66
lsr   r2,r2,0x18                ; 0801BC68
mov   r3,0x4E                   ; 0801BC6A
add   r3,r3,r0                  ; 0801BC6C
mov   r12,r3                    ; 0801BC6E
mov   r3,0x2                    ; 0801BC70
mov   r4,r12                    ; 0801BC72
strh  r3,[r4]                   ; 0801BC74  set width to 2
bl    ObjMain_Slope0_NoRelY     ; 0801BC76  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801BC7A
pop   {r0}                      ; 0801BC7C
bx    r0                        ; 0801BC7E

Obj1A_1B_Init:
; object 1A-1B init
push  {lr}                      ; 0801BC80
lsl   r1,r1,0x10                ; 0801BC82
lsr   r1,r1,0x10                ; 0801BC84
lsl   r2,r2,0x18                ; 0801BC86
lsr   r2,r2,0x18                ; 0801BC88
bl    ObjMain_Slope0_NoRelY     ; 0801BC8A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801BC8E
bx    r0                        ; 0801BC90
.pool                           ; 0801BC92

Obj18_19_Init:
; object 18-19 init
push  {lr}                      ; 0801BC94
lsl   r1,r1,0x10                ; 0801BC96
lsr   r1,r1,0x10                ; 0801BC98
lsl   r2,r2,0x18                ; 0801BC9A
lsr   r2,r2,0x18                ; 0801BC9C
bl    ObjMain_Slope0_NoRelY     ; 0801BC9E  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801BCA2
bx    r0                        ; 0801BCA4
.pool                           ; 0801BCA6

Obj17_Init:
; object 17 init
push  {r4-r6,lr}                ; 0801BCA8
lsl   r1,r1,0x10                ; 0801BCAA
lsr   r1,r1,0x10                ; 0801BCAC
lsl   r2,r2,0x18                ; 0801BCAE
lsr   r2,r2,0x18                ; 0801BCB0
mov   r6,r0                     ; 0801BCB2
add   r6,0x48                   ; 0801BCB4
ldrh  r5,[r6]                   ; 0801BCB6  tile YXyx
ldr   r4,=0xF0F0                ; 0801BCB8
mov   r3,r4                     ; 0801BCBA
and   r3,r5                     ; 0801BCBC
sub   r3,0x10                   ; 0801BCBE  subtract 1 from y
and   r3,r4                     ; 0801BCC0
ldr   r4,=0x0F0F                ; 0801BCC2
and   r4,r5                     ; 0801BCC4
orr   r4,r3                     ; 0801BCC6
strh  r4,[r6]                   ; 0801BCC8  adjusted YXyx
mov   r4,r0                     ; 0801BCCA
add   r4,0x52                   ; 0801BCCC
ldrh  r3,[r4]                   ; 0801BCCE
add   r3,0x1                    ; 0801BCD0
strh  r3,[r4]                   ; 0801BCD2  add 1 to height
bl    ObjMain_Slope0_NoRelY     ; 0801BCD4  Object processing main, slope=0, no relative Y threshold
pop   {r4-r6}                   ; 0801BCD8
pop   {r0}                      ; 0801BCDA
bx    r0                        ; 0801BCDC
.pool                           ; 0801BCDE

Obj16_Init:
; object 16 init
push  {lr}                      ; 0801BCE8
lsl   r1,r1,0x10                ; 0801BCEA
lsr   r1,r1,0x10                ; 0801BCEC
lsl   r2,r2,0x18                ; 0801BCEE
lsr   r2,r2,0x18                ; 0801BCF0
bl    ObjMain_Slope0_NoRelY     ; 0801BCF2  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801BCF6
bx    r0                        ; 0801BCF8
.pool                           ; 0801BCFA

Obj15_Init:
; object 15 init
push  {r4,lr}                   ; 0801BCFC
lsl   r1,r1,0x10                ; 0801BCFE
lsr   r1,r1,0x10                ; 0801BD00
lsl   r2,r2,0x18                ; 0801BD02
lsr   r2,r2,0x18                ; 0801BD04
mov   r3,0x52                   ; 0801BD06
add   r3,r3,r0                  ; 0801BD08  r3 = [03007240]+52 (0300225E)
mov   r12,r3                    ; 0801BD0A
mov   r3,0x2                    ; 0801BD0C
mov   r4,r12                    ; 0801BD0E
strh  r3,[r4]                   ; 0801BD10  set height to 2
bl    ObjMain_Slope0_NoRelY     ; 0801BD12  Object processing main, slope=0, no relative Y threshold
pop   {r4}                      ; 0801BD16
pop   {r0}                      ; 0801BD18
bx    r0                        ; 0801BD1A

Obj14_Init:
; object 14 init
push  {lr}                      ; 0801BD1C
lsl   r1,r1,0x10                ; 0801BD1E
lsr   r1,r1,0x10                ; 0801BD20
lsl   r2,r2,0x18                ; 0801BD22
lsr   r2,r2,0x18                ; 0801BD24
bl    ObjMain_Slope0_NoRelY     ; 0801BD26  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801BD2A
bx    r0                        ; 0801BD2C
.pool                           ; 0801BD2E

Obj13_Init:
; object 13 init
push  {lr}                      ; 0801BD30
lsl   r1,r1,0x10                ; 0801BD32
lsr   r1,r1,0x10                ; 0801BD34
lsl   r2,r2,0x18                ; 0801BD36
lsr   r2,r2,0x18                ; 0801BD38
bl    ObjMain_Slope0_NoRelY     ; 0801BD3A  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801BD3E
bx    r0                        ; 0801BD40
.pool                           ; 0801BD42

Obj11_12_Init:
; object 11-12 init
push  {r4-r5,lr}                ; 0801BD44
mov   r4,r0                     ; 0801BD46
lsl   r1,r1,0x10                ; 0801BD48
lsr   r1,r1,0x10                ; 0801BD4A
lsl   r2,r2,0x18                ; 0801BD4C
lsr   r2,r2,0x18                ; 0801BD4E
add   r0,0x42                   ; 0801BD50
ldrh  r3,[r0]                   ; 0801BD52  object ID
mov   r0,0x2                    ; 0801BD54
and   r0,r3                     ; 0801BD56
lsl   r0,r0,0x10                ; 0801BD58
ldr   r3,=Obj11_12_Heights      ; 0801BD5A
lsr   r0,r0,0x11                ; 0801BD5C
lsl   r0,r0,0x1                 ; 0801BD5E
add   r3,r0,r3                  ; 0801BD60  index with objID-11
ldrh  r3,[r3]                   ; 0801BD62  r3 = 02,03 for 11,12
mov   r5,0x52                   ; 0801BD64
strh  r3,[r5,r4]                ; 0801BD66  set height
ldr   r3,=Obj11_12_Slopes       ; 0801BD68
add   r0,r0,r3                  ; 0801BD6A
ldrh  r3,[r0]                   ; 0801BD6C  -1,-2 for 11,12
mov   r0,r4                     ; 0801BD6E
add   r0,0x44                   ; 0801BD70
strh  r3,[r0]                   ; 0801BD72  set slope
mov   r0,r4                     ; 0801BD74
bl    ObjMain_NoRelY            ; 0801BD76  Object processing main, no relative Y threshold
pop   {r4-r5}                   ; 0801BD7A
pop   {r0}                      ; 0801BD7C
bx    r0                        ; 0801BD7E
.pool                           ; 0801BD80

Obj10_Init:
; object 10 init
push  {r4,lr}                   ; 0801BD88
lsl   r1,r1,0x10                ; 0801BD8A
lsr   r1,r1,0x10                ; 0801BD8C
lsl   r2,r2,0x18                ; 0801BD8E
lsr   r2,r2,0x18                ; 0801BD90
mov   r4,r0                     ; 0801BD92
add   r4,0x52                   ; 0801BD94
mov   r3,0x2                    ; 0801BD96
strh  r3,[r4]                   ; 0801BD98  set height to 2
sub   r4,0xE                    ; 0801BD9A  +44
ldr   r3,=0xFFFF                ; 0801BD9C
strh  r3,[r4]                   ; 0801BD9E  set slope to -1
bl    ObjMain_NoRelY            ; 0801BDA0  Object processing main, no relative Y threshold
pop   {r4}                      ; 0801BDA4
pop   {r0}                      ; 0801BDA6
bx    r0                        ; 0801BDA8
.pool                           ; 0801BDAA

Obj0D_Init:
; object 0D init
push  {lr}                      ; 0801BDB0
lsl   r1,r1,0x10                ; 0801BDB2
lsr   r1,r1,0x10                ; 0801BDB4
lsl   r2,r2,0x18                ; 0801BDB6
lsr   r2,r2,0x18                ; 0801BDB8
bl    ObjMain_Slope0_NoRelY     ; 0801BDBA  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801BDBE
bx    r0                        ; 0801BDC0
.pool                           ; 0801BDC2

Obj0C_0E_0F_Init:
; object 0C,0E-0F init
push  {lr}                      ; 0801BDC4
lsl   r1,r1,0x10                ; 0801BDC6
lsr   r1,r1,0x10                ; 0801BDC8
lsl   r2,r2,0x18                ; 0801BDCA
lsr   r2,r2,0x18                ; 0801BDCC
bl    ObjMain_Slope0_NoRelY     ; 0801BDCE  Object processing main, slope=0, no relative Y threshold
pop   {r0}                      ; 0801BDD2
bx    r0                        ; 0801BDD4
.pool                           ; 0801BDD6

Sub0801BDD8:
; y -= 1, height += 1 (called twice each by objects 04-09 init)
push  {r4-r5,lr}                ; 0801BDD8
mov   r5,r0                     ; 0801BDDA
add   r5,0x48                   ; 0801BDDC
ldrh  r4,[r5]                   ; 0801BDDE  tile YXyx
ldr   r2,=0x0F0F                ; 0801BDE0
and   r2,r4                     ; 0801BDE2  0X0x
ldr   r3,=0xF0F0                ; 0801BDE4
mov   r1,r3                     ; 0801BDE6
and   r1,r4                     ; 0801BDE8  Y0y0
sub   r1,0x10                   ; 0801BDEA
and   r1,r3                     ; 0801BDEC  Y?y0 with y-1
orr   r1,r2                     ; 0801BDEE  YXyx
strh  r1,[r5]                   ; 0801BDF0  start with y-1
add   r0,0x52                   ; 0801BDF2
ldrh  r1,[r0]                   ; 0801BDF4
add   r1,0x1                    ; 0801BDF6  add 1 to height
strh  r1,[r0]                   ; 0801BDF8
pop   {r4-r5}                   ; 0801BDFA
pop   {r0}                      ; 0801BDFC
bx    r0                        ; 0801BDFE
.pool                           ; 0801BE00

Obj06_09_Init:
; object 06-09 init
push  {r4-r6,lr}                ; 0801BE08
mov   r4,r0                     ; 0801BE0A
lsl   r1,r1,0x10                ; 0801BE0C
lsr   r6,r1,0x10                ; 0801BE0E
lsl   r2,r2,0x18                ; 0801BE10
lsr   r5,r2,0x18                ; 0801BE12
bl    Sub0801BDD8               ; 0801BE14  y -= 1, height += 1
mov   r0,r4                     ; 0801BE18
add   r0,0x42                   ; 0801BE1A
ldrh  r0,[r0]                   ; 0801BE1C  object ID
cmp   r0,0x7                    ; 0801BE1E
beq   @@Code0801BE26            ; 0801BE20
cmp   r0,0x9                    ; 0801BE22
bne   @@Code0801BE2C            ; 0801BE24
@@Code0801BE26:
mov   r0,r4                     ; 0801BE26 \ runs if object 07/09
bl    Sub0801BDD8               ; 0801BE28 / y -= 1, height += 1 (again)
@@Code0801BE2C:
mov   r0,r4                     ; 0801BE2C
add   r0,0x42                   ; 0801BE2E
ldrh  r0,[r0]                   ; 0801BE30  r0 = object ID again
sub   r0,0x4                    ; 0801BE32
lsl   r0,r0,0x11                ; 0801BE34
ldr   r1,=Obj06_09_YThresholds  ; 0801BE36  relative Y threshold table
lsr   r0,r0,0x10                ; 0801BE38  r0 = (objID-4)*2
add   r1,r0,r1                  ; 0801BE3A  index with objID-4
ldrh  r1,[r1]                   ; 0801BE3C  r1 = 4 for 06/07, 5 for 08/09
mov   r2,r4                     ; 0801BE3E
add   r2,0x46                   ; 0801BE40
strh  r1,[r2]                   ; 0801BE42  set relative Y threshold
ldr   r1,=Obj06_09_Slopes       ; 0801BE44  slope table
add   r0,r0,r1                  ; 0801BE46  index with objID-4
ldrh  r1,[r0]                   ; 0801BE48  -1,1,-2,2 for 06-09
mov   r0,r4                     ; 0801BE4A
add   r0,0x44                   ; 0801BE4C
strh  r1,[r0]                   ; 0801BE4E  set slope
mov   r0,r4                     ; 0801BE50
mov   r1,r6                     ; 0801BE52
mov   r2,r5                     ; 0801BE54
bl    ObjMain_Shared            ; 0801BE56  Object processing main
pop   {r4-r6}                   ; 0801BE5A
pop   {r0}                      ; 0801BE5C
bx    r0                        ; 0801BE5E
.pool                           ; 0801BE60

Obj04_05_Init:
; object 04-05 init
push  {r4-r6,lr}                ; 0801BE68
mov   r4,r0                     ; 0801BE6A
lsl   r1,r1,0x10                ; 0801BE6C
lsr   r6,r1,0x10                ; 0801BE6E
lsl   r2,r2,0x18                ; 0801BE70
lsr   r5,r2,0x18                ; 0801BE72
bl    Sub0801BDD8               ; 0801BE74  y -= 1, height += 1
mov   r3,r4                     ; 0801BE78
add   r3,0x42                   ; 0801BE7A
ldrh  r1,[r3]                   ; 0801BE7C  object ID
mov   r0,0x1                    ; 0801BE7E
and   r0,r1                     ; 0801BE80  0,1 for 04,05
lsl   r0,r0,0x11                ; 0801BE82
lsr   r2,r0,0x10                ; 0801BE84
strh  r2,[r3]                   ; 0801BE86  set 0300224E to 0,2 for 04,05
ldr   r1,=Obj04_05_Init_Data    ; 0801BE88
lsr   r0,r0,0x11                ; 0801BE8A
lsl   r0,r0,0x1                 ; 0801BE8C
add   r0,r0,r1                  ; 0801BE8E
ldrh  r1,[r0]                   ; 0801BE90  -1,1 for 04,05
mov   r0,r4                     ; 0801BE92
add   r0,0x44                   ; 0801BE94
strh  r1,[r0]                   ; 0801BE96  set slope
cmp   r2,0x0                    ; 0801BE98
beq   @@Code0801BEA2            ; 0801BE9A
mov   r0,r4                     ; 0801BE9C \ runs if object 05
bl    Sub0801BDD8               ; 0801BE9E / y -= 1, height += 1 (again)
@@Code0801BEA2:
mov   r0,r4                     ; 0801BEA2
mov   r1,r6                     ; 0801BEA4
mov   r2,r5                     ; 0801BEA6
bl    ObjMain_NoRelY            ; 0801BEA8  Object processing main, no relative Y threshold
pop   {r4-r6}                   ; 0801BEAC
pop   {r0}                      ; 0801BEAE
bx    r0                        ; 0801BEB0
.pool                           ; 0801BEB2

Obj02_03_0A_0B_Init:
; object 02-03,0A-0B init
push  {r4-r7,lr}                ; 0801BEB8
mov   r7,r9                     ; 0801BEBA
mov   r6,r8                     ; 0801BEBC
push  {r6-r7}                   ; 0801BEBE
mov   r3,r0                     ; 0801BEC0
lsl   r1,r1,0x10                ; 0801BEC2
lsr   r1,r1,0x10                ; 0801BEC4
mov   r9,r1                     ; 0801BEC6  r9 = object ID
lsl   r2,r2,0x18                ; 0801BEC8
lsr   r2,r2,0x18                ; 0801BECA
mov   r8,r2                     ; 0801BECC  r8 = 1
add   r0,0x42                   ; 0801BECE
ldrh  r0,[r0]                   ; 0801BED0  r0 = object ID
lsl   r0,r0,0x11                ; 0801BED2
lsr   r5,r0,0x10                ; 0801BED4  r5 = object ID *2
ldr   r1,=Obj02030A0B_YThresholds; 0801BED6
sub   r0,r5,0x4                 ; 0801BED8  index with: 02,03,0A,0B -> 00,02,10,12
add   r0,r0,r1                  ; 0801BEDA
ldrh  r0,[r0]                   ; 0801BEDC  02,03,0A,0B -> 03,03,01,01
mov   r2,r3                     ; 0801BEDE
add   r2,0x46                   ; 0801BEE0
mov   r1,0x0                    ; 0801BEE2
strh  r0,[r2]                   ; 0801BEE4  set relative Y threshold to 03,03,01,01
mov   r0,r3                     ; 0801BEE6
add   r0,0x44                   ; 0801BEE8
strh  r1,[r0]                   ; 0801BEEA  clear slope
strh  r1,[r3,0x3A]              ; 0801BEEC  clear 03002246
cmp   r5,0x7                    ; 0801BEEE  if object ID *2 <= 7...
bhi   @@Code0801BF36            ; 0801BEF0

mov   r7,r3                     ; 0801BEF2 \ runs if object 02-03
add   r7,0x48                   ; 0801BEF4
ldrh  r2,[r7]                   ; 0801BEF6  r2 = tile YXyx
ldr   r1,=0xF0F0                ; 0801BEF8
mov   r0,r1                     ; 0801BEFA
and   r0,r2                     ; 0801BEFC  Y0y0
mov   r4,r0                     ; 0801BEFE
sub   r4,0x10                   ; 0801BF00  subtract 1 from y
and   r4,r1                     ; 0801BF02  r4 = Y0y0 with y-1
ldr   r0,=0x0F0F                ; 0801BF04
mov   r12,r0                    ; 0801BF06
mov   r1,r12                    ; 0801BF08
and   r1,r2                     ; 0801BF0A  r1 = 0X0x
mov   r2,r3                     ; 0801BF0C
add   r2,0x4E                   ; 0801BF0E
ldrh  r0,[r2]                   ; 0801BF10
add   r0,0x1                    ; 0801BF12  add 1 to width
strh  r0,[r2]                   ; 0801BF14
add   r2,0x4                    ; 0801BF16
ldrh  r0,[r2]                   ; 0801BF18
add   r0,0x1                    ; 0801BF1A  add 1 to height
strh  r0,[r2]                   ; 0801BF1C
mov   r6,0x2                    ; 0801BF1E
strh  r6,[r3,0x3A]              ; 0801BF20  set 03002246 to 2
cmp   r5,0x5                    ; 0801BF22  if object ID *2 <= 5...
bhi   @@Code0801BF32            ; 0801BF24 /

                                ;          \ runs if object 02
sub   r1,0x1                    ; 0801BF26  0X?x with x-1
mov   r0,r12                    ; 0801BF28
and   r1,r0                     ; 0801BF2A  0X0x with x-1
ldrh  r0,[r2]                   ; 0801BF2C
strh  r0,[r3,0x3A]              ; 0801BF2E  set 03002246 to new height
strh  r6,[r2]                   ; 0801BF30 /
@@Code0801BF32:
orr   r4,r1                     ; 0801BF32  YXyx with y-1 and possibly x-1
strh  r4,[r7]                   ; 0801BF34  set new YXyx
@@Code0801BF36:
mov   r0,r3                     ; 0801BF36
mov   r1,r9                     ; 0801BF38
mov   r2,r8                     ; 0801BF3A
bl    ObjMain_Shared            ; 0801BF3C  Object processing main
pop   {r3-r4}                   ; 0801BF40
mov   r8,r3                     ; 0801BF42
mov   r9,r4                     ; 0801BF44
pop   {r4-r7}                   ; 0801BF46
pop   {r0}                      ; 0801BF48
bx    r0                        ; 0801BF4A
.pool                           ; 0801BF4C

Obj01_Init:
; object 01 init
push  {r4-r6,lr}                ; 0801BF58
mov   r12,r0                    ; 0801BF5A
lsl   r1,r1,0x10                ; 0801BF5C
lsr   r1,r1,0x10                ; 0801BF5E
lsl   r2,r2,0x18                ; 0801BF60
lsr   r2,r2,0x18                ; 0801BF62
mov   r6,r12                    ; 0801BF64
add   r6,0x48                   ; 0801BF66  [03007240]+48 (03002254)
ldrh  r5,[r6]                   ; 0801BF68  r5 = tile YXyx
ldr   r3,=0x0F0F                ; 0801BF6A
and   r3,r5                     ; 0801BF6C
ldr   r4,=0xF0F0                ; 0801BF6E
mov   r0,r4                     ; 0801BF70
and   r0,r5                     ; 0801BF72
sub   r0,0x10                   ; 0801BF74  subtract 1 from initial Y
and   r0,r4                     ; 0801BF76
orr   r0,r3                     ; 0801BF78
mov   r3,0x0                    ; 0801BF7A
strh  r0,[r6]                   ; 0801BF7C
mov   r4,r12                    ; 0801BF7E
add   r4,0x52                   ; 0801BF80  [03007240]+52 (0300225E)
ldrh  r0,[r4]                   ; 0801BF82
add   r0,0x1                    ; 0801BF84  increment object's height
strh  r0,[r4]                   ; 0801BF86
sub   r4,0xC                    ; 0801BF88  [03007240]+46 (03002252)
mov   r0,0x3                    ; 0801BF8A
strh  r0,[r4]                   ; 0801BF8C  set relative Y threshold to 3
mov   r0,r12                    ; 0801BF8E
add   r0,0x44                   ; 0801BF90  [03007240]+44 (03002250)
strh  r3,[r0]                   ; 0801BF92  clear slope
mov   r0,r12                    ; 0801BF94
bl    ObjMain_Shared            ; 0801BF96  Object processing main
pop   {r4-r6}                   ; 0801BF9A
pop   {r0}                      ; 0801BF9C
bx    r0                        ; 0801BF9E
.pool                           ; 0801BFA0
