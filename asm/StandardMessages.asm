Sub080E8118:
ldr   r0,=0x03002200            ; 080E8118
ldr   r1,=0x4A48                ; 080E811A
add   r0,r0,r1                  ; 080E811C
ldrb  r2,[r0]                   ; 080E811E
mov   r1,0x3                    ; 080E8120
neg   r1,r1                     ; 080E8122
and   r1,r2                     ; 080E8124
strb  r1,[r0]                   ; 080E8126
bx    lr                        ; 080E8128
.pool                           ; 080E812A

Sub080E8134:
; subroutine: Display message character, scaled
push  {r4-r7,lr}                ; 080E8134
mov   r7,r10                    ; 080E8136
mov   r6,r9                     ; 080E8138
mov   r5,r8                     ; 080E813A
push  {r5-r7}                   ; 080E813C
add   sp,-0x28                  ; 080E813E
mov   r9,r0                     ; 080E8140
ldrh  r0,[r0,0x1C]              ; 080E8142
mov   r1,r9                     ; 080E8144
ldrh  r1,[r1,0x1E]              ; 080E8146
mov   r10,r1                    ; 080E8148
add   r0,0x1                    ; 080E814A
str   r0,[sp,0x4]               ; 080E814C
mov   r2,0x1                    ; 080E814E
add   r10,r2                    ; 080E8150
mov   r1,r10                    ; 080E8152
lsl   r0,r1,0x1                 ; 080E8154
add   r4,r0,r1                  ; 080E8156
mov   r2,r9                     ; 080E8158
ldrh  r2,[r2,0x22]              ; 080E815A
add   r4,r4,r2                  ; 080E815C
str   r4,[sp]                   ; 080E815E
mov   r0,r9                     ; 080E8160
ldrh  r0,[r0,0x20]              ; 080E8162
str   r0,[sp,0x10]              ; 080E8164
mov   r1,r9                     ; 080E8166
ldrb  r4,[r1,0xE]               ; 080E8168
lsl   r0,r4,0x1                 ; 080E816A
add   r0,r0,r4                  ; 080E816C
lsl   r0,r0,0x2                 ; 080E816E
str   r0,[sp,0xC]               ; 080E8170
mov   r2,0xC                    ; 080E8172
@@Code080E8174:
ldr   r0,=Data082F63CC          ; 080E8174
ldr   r1,[sp,0xC]               ; 080E8176
add   r0,r1,r0                  ; 080E8178
ldrb  r0,[r0]                   ; 080E817A
str   r0,[sp,0x14]              ; 080E817C
add   r1,0x1                    ; 080E817E
str   r1,[sp,0xC]               ; 080E8180
mov   r1,0x0                    ; 080E8182
mov   r3,0x0                    ; 080E8184
ldr   r0,[sp]                   ; 080E8186
add   r0,r10                    ; 080E8188
str   r0,[sp,0x24]              ; 080E818A
sub   r2,0x1                    ; 080E818C
str   r2,[sp,0x18]              ; 080E818E
@@Code080E8190:
ldr   r0,=Data08195558          ; 080E8190
add   r0,r1,r0                  ; 080E8192
ldrb  r0,[r0]                   ; 080E8194
ldr   r2,[sp,0x14]              ; 080E8196
and   r0,r2                     ; 080E8198
ldr   r2,[sp,0x4]               ; 080E819A
add   r2,r3,r2                  ; 080E819C
str   r2,[sp,0x20]              ; 080E819E
add   r1,0x1                    ; 080E81A0
str   r1,[sp,0x1C]              ; 080E81A2
cmp   r0,0x0                    ; 080E81A4
beq   @@Code080E81DA            ; 080E81A6
ldr   r0,[sp,0x10]              ; 080E81A8
add   r3,r0,r3                  ; 080E81AA
str   r3,[sp,0x8]               ; 080E81AC
ldr   r6,[sp]                   ; 080E81AE
mov   r0,r10                    ; 080E81B0
@@Code080E81B2:
ldr   r5,[sp,0x8]               ; 080E81B2
ldr   r4,[sp,0x4]               ; 080E81B4
sub   r7,r0,0x1                 ; 080E81B6
add   r1,r6,0x1                 ; 080E81B8
mov   r8,r1                     ; 080E81BA
@@Code080E81BC:
sub   r4,0x1                    ; 080E81BC
add   r5,0x1                    ; 080E81BE
ldr   r2,=0x03007248            ; 080E81C0  pointer to message buffer
ldr   r0,[r2]                   ; 080E81C2
mov   r1,r5                     ; 080E81C4
mov   r2,r6                     ; 080E81C6
mov   r3,0xB                    ; 080E81C8
bl    Sub08000558               ; 080E81CA  Write one pixel's color to graphics buffer
cmp   r4,0x0                    ; 080E81CE
bne   @@Code080E81BC            ; 080E81D0
mov   r0,r7                     ; 080E81D2
mov   r6,r8                     ; 080E81D4
cmp   r0,0x0                    ; 080E81D6
bne   @@Code080E81B2            ; 080E81D8
@@Code080E81DA:
ldr   r3,[sp,0x20]              ; 080E81DA
ldr   r1,[sp,0x1C]              ; 080E81DC
cmp   r1,0x7                    ; 080E81DE
bls   @@Code080E8190            ; 080E81E0
ldr   r0,[sp,0x24]              ; 080E81E2
str   r0,[sp]                   ; 080E81E4
ldr   r2,[sp,0x18]              ; 080E81E6
cmp   r2,0x0                    ; 080E81E8
bne   @@Code080E8174            ; 080E81EA
mov   r1,r9                     ; 080E81EC
ldr   r0,[r1,0x4]               ; 080E81EE
add   r0,0x1                    ; 080E81F0
str   r0,[r1,0x4]               ; 080E81F2
ldrb  r2,[r1,0xE]               ; 080E81F4
ldr   r0,=Data082F62CC          ; 080E81F6
add   r0,r2,r0                  ; 080E81F8
ldrb  r4,[r0]                   ; 080E81FA
ldr   r0,[sp,0x4]               ; 080E81FC
mul   r4,r0                     ; 080E81FE
ldr   r1,[sp,0x10]              ; 080E8200
add   r5,r4,r1                  ; 080E8202
mov   r4,r5                     ; 080E8204
sub   r4,0x82                   ; 080E8206
cmp   r4,0x0                    ; 080E8208
blt   @@Code080E8220            ; 080E820A
mov   r5,0x0                    ; 080E820C
mov   r2,r10                    ; 080E820E
lsl   r6,r2,0x4                 ; 080E8210
mov   r4,r6                     ; 080E8212
sub   r4,0x40                   ; 080E8214
cmp   r4,0x0                    ; 080E8216
blt   @@Code080E821C            ; 080E8218
mov   r6,0x10                   ; 080E821A
@@Code080E821C:
mov   r0,r9                     ; 080E821C
strh  r6,[r0,0x22]              ; 080E821E
@@Code080E8220:
mov   r1,r9                     ; 080E8220
strh  r5,[r1,0x20]              ; 080E8222
add   sp,0x28                   ; 080E8224
pop   {r3-r5}                   ; 080E8226
mov   r8,r3                     ; 080E8228
mov   r9,r4                     ; 080E822A
mov   r10,r5                    ; 080E822C
pop   {r4-r7}                   ; 080E822E
pop   {r0}                      ; 080E8230
bx    r0                        ; 080E8232
.pool                           ; 080E8234

Sub080E8244:
; subroutine: Display message character, unscaled
push  {r4-r7,lr}                ; 080E8244
mov   r7,r10                    ; 080E8246
mov   r6,r9                     ; 080E8248
mov   r5,r8                     ; 080E824A
push  {r5-r7}                   ; 080E824C
mov   r8,r0                     ; 080E824E
ldrb  r4,[r0,0xE]               ; 080E8250
lsl   r0,r4,0x1                 ; 080E8252
add   r0,r0,r4                  ; 080E8254
lsl   r1,r0,0x2                 ; 080E8256
ldr   r0,=Data082F63CC          ; 080E8258
add   r1,r1,r0                  ; 080E825A
mov   r9,r1                     ; 080E825C
mov   r0,r8                     ; 080E825E
ldrh  r4,[r0,0x22]              ; 080E8260  character Y
add   r5,r4,0x3                 ; 080E8262  add 3 to character Y
ldrh  r6,[r0,0x20]              ; 080E8264  character X
add   r4,0xF                    ; 080E8266
mov   r10,r4                    ; 080E8268
ldr   r7,=0x03007248            ; 080E826A  pointer to message buffer
@@Code080E826C:
mov   r1,r9                     ; 080E826C
ldrb  r4,[r1]                   ; 080E826E
mov   r0,0x1                    ; 080E8270
add   r9,r0                     ; 080E8272
mov   r0,0x80                   ; 080E8274
and   r0,r4                     ; 080E8276
cmp   r0,0x0                    ; 080E8278
beq   @@Code080E8288            ; 080E827A
ldr   r0,[r7]                   ; 080E827C
mov   r1,r6                     ; 080E827E
mov   r2,r5                     ; 080E8280
mov   r3,0xB                    ; 080E8282
bl    Sub08000558               ; 080E8284  Write one pixel's color to graphics buffer
@@Code080E8288:
mov   r0,0x40                   ; 080E8288
and   r0,r4                     ; 080E828A
cmp   r0,0x0                    ; 080E828C
beq   @@Code080E829C            ; 080E828E
ldr   r0,[r7]                   ; 080E8290
add   r1,r6,0x1                 ; 080E8292
mov   r2,r5                     ; 080E8294
mov   r3,0xB                    ; 080E8296
bl    Sub08000558               ; 080E8298  Write one pixel's color to graphics buffer
@@Code080E829C:
mov   r0,0x20                   ; 080E829C
and   r0,r4                     ; 080E829E
cmp   r0,0x0                    ; 080E82A0
beq   @@Code080E82B0            ; 080E82A2
ldr   r0,[r7]                   ; 080E82A4
add   r1,r6,0x2                 ; 080E82A6
mov   r2,r5                     ; 080E82A8
mov   r3,0xB                    ; 080E82AA
bl    Sub08000558               ; 080E82AC  Write one pixel's color to graphics buffer
@@Code080E82B0:
mov   r0,0x10                   ; 080E82B0
and   r0,r4                     ; 080E82B2
cmp   r0,0x0                    ; 080E82B4
beq   @@Code080E82C4            ; 080E82B6
ldr   r0,[r7]                   ; 080E82B8
add   r1,r6,0x3                 ; 080E82BA
mov   r2,r5                     ; 080E82BC
mov   r3,0xB                    ; 080E82BE
bl    Sub08000558               ; 080E82C0  Write one pixel's color to graphics buffer
@@Code080E82C4:
mov   r0,0x8                    ; 080E82C4
and   r0,r4                     ; 080E82C6
cmp   r0,0x0                    ; 080E82C8
beq   @@Code080E82D8            ; 080E82CA
ldr   r0,[r7]                   ; 080E82CC
add   r1,r6,0x4                 ; 080E82CE
mov   r2,r5                     ; 080E82D0
mov   r3,0xB                    ; 080E82D2
bl    Sub08000558               ; 080E82D4  Write one pixel's color to graphics buffer
@@Code080E82D8:
mov   r0,0x4                    ; 080E82D8
and   r0,r4                     ; 080E82DA
cmp   r0,0x0                    ; 080E82DC
beq   @@Code080E82EC            ; 080E82DE
ldr   r0,[r7]                   ; 080E82E0
add   r1,r6,0x5                 ; 080E82E2
mov   r2,r5                     ; 080E82E4
mov   r3,0xB                    ; 080E82E6
bl    Sub08000558               ; 080E82E8  Write one pixel's color to graphics buffer
@@Code080E82EC:
mov   r0,0x2                    ; 080E82EC
and   r0,r4                     ; 080E82EE
cmp   r0,0x0                    ; 080E82F0
beq   @@Code080E8300            ; 080E82F2
ldr   r0,[r7]                   ; 080E82F4
add   r1,r6,0x6                 ; 080E82F6
mov   r2,r5                     ; 080E82F8
mov   r3,0xB                    ; 080E82FA
bl    Sub08000558               ; 080E82FC  Write one pixel's color to graphics buffer
@@Code080E8300:
mov   r0,0x1                    ; 080E8300
and   r4,r0                     ; 080E8302
cmp   r4,0x0                    ; 080E8304
beq   @@Code080E8314            ; 080E8306
ldr   r0,[r7]                   ; 080E8308
add   r1,r6,0x7                 ; 080E830A
mov   r2,r5                     ; 080E830C
mov   r3,0xB                    ; 080E830E
bl    Sub08000558               ; 080E8310  Write one pixel's color to graphics buffer
@@Code080E8314:
add   r5,0x1                    ; 080E8314
cmp   r5,r10                    ; 080E8316
blo   @@Code080E826C            ; 080E8318
mov   r1,r8                     ; 080E831A
ldr   r0,[r1,0x4]               ; 080E831C
add   r0,0x1                    ; 080E831E
str   r0,[r1,0x4]               ; 080E8320
ldrb  r1,[r1,0xE]               ; 080E8322
ldr   r0,=Data082F62CC          ; 080E8324
add   r0,r1,r0                  ; 080E8326
ldrb  r4,[r0]                   ; 080E8328
add   r1,r4,r6                  ; 080E832A
mov   r4,r1                     ; 080E832C
sub   r4,0x82                   ; 080E832E
cmp   r4,0x0                    ; 080E8330
blt   @@Code080E834C            ; 080E8332
mov   r1,0x0                    ; 080E8334
mov   r0,r8                     ; 080E8336
ldrh  r4,[r0,0x22]              ; 080E8338
mov   r5,r4                     ; 080E833A
add   r5,0x10                   ; 080E833C
mov   r4,r5                     ; 080E833E
sub   r4,0x40                   ; 080E8340
cmp   r4,0x0                    ; 080E8342
blt   @@Code080E8348            ; 080E8344
mov   r5,0x10                   ; 080E8346
@@Code080E8348:
mov   r0,r8                     ; 080E8348
strh  r5,[r0,0x22]              ; 080E834A
@@Code080E834C:
mov   r0,r8                     ; 080E834C
strh  r1,[r0,0x20]              ; 080E834E
pop   {r3-r5}                   ; 080E8350
mov   r8,r3                     ; 080E8352
mov   r9,r4                     ; 080E8354
mov   r10,r5                    ; 080E8356
pop   {r4-r7}                   ; 080E8358
pop   {r0}                      ; 080E835A
bx    r0                        ; 080E835C
.pool                           ; 080E835E

Sub080E836C:
; subroutine: Display message character
push  {lr}                      ; 080E836C
ldrh  r1,[r0,0x1E]              ; 080E836E  text vertical scale
lsl   r1,r1,0x12                ; 080E8370
ldrh  r2,[r0,0x1C]              ; 080E8372  text horizontal scale
lsr   r1,r1,0x10                ; 080E8374
orr   r1,r2                     ; 080E8376  vertical scale *4 + horizontal scale
ldr   r2,=CodePtrs08195560      ; 080E8378
lsl   r1,r1,0x2                 ; 080E837A  use as code pointer table index
add   r1,r1,r2                  ; 080E837C
ldr   r1,[r1]                   ; 080E837E  080E8245 if text is unscaled, 080E8135 if text is scaled at all
bl    Sub_bx_r1                 ; 080E8380  bx r1
pop   {r0}                      ; 080E8384
bx    r0                        ; 080E8386
.pool                           ; 080E8388

Return080E838C:
bx    lr                        ; 080E838C
.pool                           ; 080E838E

Return080E8390:
bx    lr                        ; 080E8390
.pool                           ; 080E8392

Return080E8394:
bx    lr                        ; 080E8394
.pool                           ; 080E8396

Return080E8398:
bx    lr                        ; 080E8398
.pool                           ; 080E839A

Return080E839C:
bx    lr                        ; 080E839C
.pool                           ; 080E839E

Return080E83A0:
bx    lr                        ; 080E83A0
.pool                           ; 080E83A2

Return080E83A4:
bx    lr                        ; 080E83A4
.pool                           ; 080E83A6

Return080E83A8:
bx    lr                        ; 080E83A8
.pool                           ; 080E83AA

Return080E83AC:
bx    lr                        ; 080E83AC
.pool                           ; 080E83AE

Return080E83B0:
bx    lr                        ; 080E83B0
.pool                           ; 080E83B2

Return080E83B4:
bx    lr                        ; 080E83B4
.pool                           ; 080E83B6

Return080E83B8:
bx    lr                        ; 080E83B8
.pool                           ; 080E83BA

Return080E83BC:
bx    lr                        ; 080E83BC
.pool                           ; 080E83BE

Return080E83C0:
bx    lr                        ; 080E83C0
.pool                           ; 080E83C2

Return080E83C4:
bx    lr                        ; 080E83C4
.pool                           ; 080E83C6

Sub080E83C8:
push  {r4-r7,lr}                ; 080E83C8
mov   r7,r10                    ; 080E83CA
mov   r6,r9                     ; 080E83CC
mov   r5,r8                     ; 080E83CE
push  {r5-r7}                   ; 080E83D0
add   sp,-0x4                   ; 080E83D2
mov   r8,r0                     ; 080E83D4
ldrh  r0,[r0,0x2C]              ; 080E83D6
mov   r6,0xFF                   ; 080E83D8
and   r6,r0                     ; 080E83DA
lsl   r0,r6,0x1                 ; 080E83DC
add   r0,r0,r6                  ; 080E83DE
lsl   r0,r0,0x2                 ; 080E83E0
mov   r9,r0                     ; 080E83E2
mov   r1,r8                     ; 080E83E4
ldrh  r0,[r1,0x2A]              ; 080E83E6
add   r0,0x3                    ; 080E83E8
lsl   r0,r0,0x10                ; 080E83EA
lsr   r5,r0,0x10                ; 080E83EC
ldrh  r2,[r1,0x28]              ; 080E83EE
mov   r10,r2                    ; 080E83F0
mov   r0,0x0                    ; 080E83F2
str   r0,[sp]                   ; 080E83F4
ldr   r7,=0x03007248            ; 080E83F6  pointer to message buffer
@@Code080E83F8:
mov   r4,r10                    ; 080E83F8
ldr   r0,=Data082F63CC          ; 080E83FA
add   r0,r9                     ; 080E83FC
ldrb  r6,[r0]                   ; 080E83FE
mov   r0,r9                     ; 080E8400
add   r0,0x1                    ; 080E8402
lsl   r0,r0,0x10                ; 080E8404
lsr   r0,r0,0x10                ; 080E8406
mov   r9,r0                     ; 080E8408
mov   r0,0x80                   ; 080E840A
and   r0,r6                     ; 080E840C
cmp   r0,0x0                    ; 080E840E
beq   @@Code080E841E            ; 080E8410
ldr   r0,[r7]                   ; 080E8412
mov   r1,r4                     ; 080E8414
mov   r2,r5                     ; 080E8416
mov   r3,0xB                    ; 080E8418
bl    Sub08000558               ; 080E841A  Write one pixel's color to graphics buffer
@@Code080E841E:
add   r0,r4,0x1                 ; 080E841E
lsl   r0,r0,0x10                ; 080E8420
lsr   r4,r0,0x10                ; 080E8422
mov   r0,0x40                   ; 080E8424
and   r0,r6                     ; 080E8426
cmp   r0,0x0                    ; 080E8428
beq   @@Code080E8438            ; 080E842A
ldr   r0,[r7]                   ; 080E842C
mov   r1,r4                     ; 080E842E
mov   r2,r5                     ; 080E8430
mov   r3,0xB                    ; 080E8432
bl    Sub08000558               ; 080E8434  Write one pixel's color to graphics buffer
@@Code080E8438:
add   r0,r4,0x1                 ; 080E8438
lsl   r0,r0,0x10                ; 080E843A
lsr   r4,r0,0x10                ; 080E843C
mov   r0,0x20                   ; 080E843E
and   r0,r6                     ; 080E8440
cmp   r0,0x0                    ; 080E8442
beq   @@Code080E8452            ; 080E8444
ldr   r0,[r7]                   ; 080E8446
mov   r1,r4                     ; 080E8448
mov   r2,r5                     ; 080E844A
mov   r3,0xB                    ; 080E844C
bl    Sub08000558               ; 080E844E  Write one pixel's color to graphics buffer
@@Code080E8452:
add   r0,r4,0x1                 ; 080E8452
lsl   r0,r0,0x10                ; 080E8454
lsr   r4,r0,0x10                ; 080E8456
mov   r0,0x10                   ; 080E8458
and   r0,r6                     ; 080E845A
cmp   r0,0x0                    ; 080E845C
beq   @@Code080E846C            ; 080E845E
ldr   r0,[r7]                   ; 080E8460
mov   r1,r4                     ; 080E8462
mov   r2,r5                     ; 080E8464
mov   r3,0xB                    ; 080E8466
bl    Sub08000558               ; 080E8468  Write one pixel's color to graphics buffer
@@Code080E846C:
add   r0,r4,0x1                 ; 080E846C
lsl   r0,r0,0x10                ; 080E846E
lsr   r4,r0,0x10                ; 080E8470
mov   r0,0x8                    ; 080E8472
and   r0,r6                     ; 080E8474
cmp   r0,0x0                    ; 080E8476
beq   @@Code080E8486            ; 080E8478
ldr   r0,[r7]                   ; 080E847A
mov   r1,r4                     ; 080E847C
mov   r2,r5                     ; 080E847E
mov   r3,0xB                    ; 080E8480
bl    Sub08000558               ; 080E8482  Write one pixel's color to graphics buffer
@@Code080E8486:
add   r0,r4,0x1                 ; 080E8486
lsl   r0,r0,0x10                ; 080E8488
lsr   r4,r0,0x10                ; 080E848A
mov   r0,0x4                    ; 080E848C
and   r0,r6                     ; 080E848E
cmp   r0,0x0                    ; 080E8490
beq   @@Code080E84A0            ; 080E8492
ldr   r0,[r7]                   ; 080E8494
mov   r1,r4                     ; 080E8496
mov   r2,r5                     ; 080E8498
mov   r3,0xB                    ; 080E849A
bl    Sub08000558               ; 080E849C  Write one pixel's color to graphics buffer
@@Code080E84A0:
add   r0,r4,0x1                 ; 080E84A0
lsl   r0,r0,0x10                ; 080E84A2
lsr   r4,r0,0x10                ; 080E84A4
mov   r0,0x2                    ; 080E84A6
and   r0,r6                     ; 080E84A8
cmp   r0,0x0                    ; 080E84AA
beq   @@Code080E84BA            ; 080E84AC
ldr   r0,[r7]                   ; 080E84AE
mov   r1,r4                     ; 080E84B0
mov   r2,r5                     ; 080E84B2
mov   r3,0xB                    ; 080E84B4
bl    Sub08000558               ; 080E84B6  Write one pixel's color to graphics buffer
@@Code080E84BA:
add   r0,r4,0x1                 ; 080E84BA
lsl   r0,r0,0x10                ; 080E84BC
lsr   r4,r0,0x10                ; 080E84BE
mov   r0,0x1                    ; 080E84C0
and   r6,r0                     ; 080E84C2
cmp   r6,0x0                    ; 080E84C4
beq   @@Code080E84D4            ; 080E84C6
ldr   r0,[r7]                   ; 080E84C8
mov   r1,r4                     ; 080E84CA
mov   r2,r5                     ; 080E84CC
mov   r3,0xB                    ; 080E84CE
bl    Sub08000558               ; 080E84D0  Write one pixel's color to graphics buffer
@@Code080E84D4:
add   r0,r5,0x1                 ; 080E84D4
lsl   r0,r0,0x10                ; 080E84D6
lsr   r5,r0,0x10                ; 080E84D8
ldr   r0,[sp]                   ; 080E84DA
add   r0,0x1                    ; 080E84DC
lsl   r0,r0,0x10                ; 080E84DE
lsr   r0,r0,0x10                ; 080E84E0
str   r0,[sp]                   ; 080E84E2
cmp   r0,0xB                    ; 080E84E4
bls   @@Code080E83F8            ; 080E84E6
mov   r2,r8                     ; 080E84E8
ldrh  r1,[r2,0x2C]              ; 080E84EA
mov   r0,0xFF                   ; 080E84EC
and   r0,r1                     ; 080E84EE
ldr   r1,=Data082F62CC          ; 080E84F0
add   r0,r0,r1                  ; 080E84F2
ldrb  r6,[r0]                   ; 080E84F4
mov   r1,r10                    ; 080E84F6
add   r0,r6,r1                  ; 080E84F8
lsl   r0,r0,0x10                ; 080E84FA
lsr   r4,r0,0x10                ; 080E84FC
ldr   r2,=0xFF7E0000            ; 080E84FE
add   r0,r0,r2                  ; 080E8500
lsr   r6,r0,0x10                ; 080E8502
mov   r1,0x80                   ; 080E8504
lsl   r1,r1,0x8                 ; 080E8506
and   r6,r1                     ; 080E8508
cmp   r6,0x0                    ; 080E850A
bne   @@Code080E852E            ; 080E850C
mov   r4,0x0                    ; 080E850E
mov   r0,r8                     ; 080E8510
ldrh  r6,[r0,0x22]              ; 080E8512
lsl   r0,r6,0x10                ; 080E8514
mov   r2,0x80                   ; 080E8516
lsl   r2,r2,0xD                 ; 080E8518
add   r0,r0,r2                  ; 080E851A
lsr   r5,r0,0x10                ; 080E851C
mov   r0,r5                     ; 080E851E
sub   r0,0x40                   ; 080E8520
and   r0,r1                     ; 080E8522
cmp   r0,0x0                    ; 080E8524
bne   @@Code080E852A            ; 080E8526
mov   r5,0x10                   ; 080E8528
@@Code080E852A:
mov   r0,r8                     ; 080E852A
strh  r5,[r0,0x22]              ; 080E852C
@@Code080E852E:
mov   r1,r8                     ; 080E852E
strh  r4,[r1,0x20]              ; 080E8530
add   sp,0x4                    ; 080E8532
pop   {r3-r5}                   ; 080E8534
mov   r8,r3                     ; 080E8536
mov   r9,r4                     ; 080E8538
mov   r10,r5                    ; 080E853A
pop   {r4-r7}                   ; 080E853C
pop   {r0}                      ; 080E853E
bx    r0                        ; 080E8540
.pool                           ; 080E8542

Sub080E8554:
; Called by 50-52
push  {r4-r7,lr}                ; 080E8554
mov   r7,r10                    ; 080E8556
mov   r6,r9                     ; 080E8558
mov   r5,r8                     ; 080E855A
push  {r5-r7}                   ; 080E855C
add   sp,-0x8                   ; 080E855E
mov   r8,r0                     ; 080E8560
ldrh  r0,[r0,0x28]              ; 080E8562
str   r0,[sp,0x4]               ; 080E8564
mov   r1,r8                     ; 080E8566
ldrh  r6,[r1,0x2A]              ; 080E8568
mov   r1,0xA                    ; 080E856A
mov   r0,r8                     ; 080E856C
ldrh  r4,[r0,0x1C]              ; 080E856E
add   r0,r4,0x1                 ; 080E8570
lsl   r0,r0,0x10                ; 080E8572
lsr   r4,r0,0x10                ; 080E8574
mov   r0,r4                     ; 080E8576
mul   r0,r1                     ; 080E8578
lsl   r0,r0,0x10                ; 080E857A
lsr   r0,r0,0x10                ; 080E857C
mov   r10,r0                    ; 080E857E
mov   r1,r8                     ; 080E8580
ldrh  r4,[r1,0x1E]              ; 080E8582
add   r0,r4,0x1                 ; 080E8584
lsl   r0,r0,0x14                ; 080E8586
lsr   r0,r0,0x10                ; 080E8588
str   r0,[sp]                   ; 080E858A
mov   r0,0x0                    ; 080E858C
b     @@Code080E85C6            ; 080E858E
@@Code080E8590:
ldr   r4,[sp,0x4]               ; 080E8590
mov   r5,0x0                    ; 080E8592
add   r7,r6,0x1                 ; 080E8594
add   r0,0x1                    ; 080E8596
mov   r9,r0                     ; 080E8598
cmp   r5,r10                    ; 080E859A
bhs   @@Code080E85BC            ; 080E859C
@@Code080E859E:
ldr   r0,=0x03007248            ; 080E859E  pointer to message buffer
ldr   r0,[r0]                   ; 080E85A0
mov   r1,r4                     ; 080E85A2
mov   r2,r6                     ; 080E85A4
mov   r3,0xD                    ; 080E85A6
bl    Sub08000558               ; 080E85A8  Write one pixel's color to graphics buffer
add   r0,r4,0x1                 ; 080E85AC
lsl   r0,r0,0x10                ; 080E85AE
lsr   r4,r0,0x10                ; 080E85B0
add   r0,r5,0x1                 ; 080E85B2
lsl   r0,r0,0x10                ; 080E85B4
lsr   r5,r0,0x10                ; 080E85B6
cmp   r5,r10                    ; 080E85B8
blo   @@Code080E859E            ; 080E85BA
@@Code080E85BC:
lsl   r0,r7,0x10                ; 080E85BC
lsr   r6,r0,0x10                ; 080E85BE
mov   r1,r9                     ; 080E85C0
lsl   r0,r1,0x10                ; 080E85C2
lsr   r0,r0,0x10                ; 080E85C4
@@Code080E85C6:
ldr   r1,[sp]                   ; 080E85C6
cmp   r0,r1                     ; 080E85C8
blo   @@Code080E8590            ; 080E85CA
mov   r0,r8                     ; 080E85CC
ldrh  r1,[r0,0x1E]              ; 080E85CE
lsl   r0,r1,0x12                ; 080E85D0
mov   r1,r8                     ; 080E85D2
ldrh  r4,[r1,0x1C]              ; 080E85D4
lsr   r0,r0,0x10                ; 080E85D6
orr   r0,r4                     ; 080E85D8
ldr   r1,=CodePtrs081955A0      ; 080E85DA
lsl   r0,r0,0x2                 ; 080E85DC
add   r0,r0,r1                  ; 080E85DE
ldr   r1,[r0]                   ; 080E85E0
mov   r0,r8                     ; 080E85E2
bl    Sub_bx_r1                 ; 080E85E4  bx r1
add   sp,0x8                    ; 080E85E8
pop   {r3-r5}                   ; 080E85EA
mov   r8,r3                     ; 080E85EC
mov   r9,r4                     ; 080E85EE
mov   r10,r5                    ; 080E85F0
pop   {r4-r7}                   ; 080E85F2
pop   {r0}                      ; 080E85F4
bx    r0                        ; 080E85F6
.pool                           ; 080E85F8

Sub080E8600:
; subroutine: add 2 to current message's byte to read
; Called by FF 00-09, 0B-0E, 20-3B, possibly others
ldr   r1,[r0,0x4]               ; 080E8600
add   r1,0x2                    ; 080E8602
str   r1,[r0,0x4]               ; 080E8604
bx    lr                        ; 080E8606

Sub080E8608:
; Message command FF 61-FF: close message
mov   r1,0x2                    ; 080E8608
strh  r1,[r0,0xA]               ; 080E860A  set message closing animation
mov   r0,0x1                    ; 080E860C
bx    lr                        ; 080E860E

Sub080E8610:
; Message command FF 60: large image
; r0: 030023CC
; vanilla byte sequence: FF 60 00 {00/30/80} 00 80 30 00 10
; where byte is 00 for Making Eggs, 30 for Pound the Ground, 80 for Throwing Eggs
push  {r4-r7,lr}                ; 080E8610
mov   r7,r10                    ; 080E8612
mov   r6,r9                     ; 080E8614
mov   r5,r8                     ; 080E8616
push  {r5-r7}                   ; 080E8618
add   sp,-0x20                  ; 080E861A
str   r0,[sp]                   ; 080E861C  [sp] = 030023CC
ldr   r2,[r0,0x4]               ; 080E861E  pointer to start of command
add   r2,0x2                    ; 080E8620  pointer to byte 2
ldrb  r5,[r2]                   ; 080E8622  r5 = byte2 (00)
add   r2,0x1                    ; 080E8624  pointer to byte 3
lsr   r5,r5,0x3                 ; 080E8626
str   r5,[sp,0x10]              ; 080E8628  [sp+10] = byte2 >> 3 (00)
ldrb  r5,[r2]                   ; 080E862A  r5 = byte3 (varies, image offset?)
add   r2,0x1                    ; 080E862C
ldrb  r0,[r2]                   ; 080E862E  r0 = byte4 (00) (high byte of image offset?)
add   r2,0x1                    ; 080E8630
lsl   r0,r0,0x8                 ; 080E8632
orr   r5,r0                     ; 080E8634  r5 = 16-bit bytes3-4
lsl   r0,r5,0x14                ; 080E8636
lsr   r0,r0,0x10                ; 080E8638
mov   r9,r0                     ; 080E863A  r9 = 16-bit bytes3-4, << 4, capped to 16-bit
ldrb  r5,[r2]                   ; 080E863C  r5 = byte 5 (80)
add   r2,0x1                    ; 080E863E
add   r0,r5,0x7                 ; 080E8640
lsl   r0,r0,0x10                ; 080E8642
lsr   r0,r0,0x13                ; 080E8644
str   r0,[sp,0xC]               ; 080E8646  [sp+C] = byte5 >> 3, rounded up (10)
ldrb  r0,[r2]                   ; 080E8648  byte 6 (30)
str   r0,[sp,0x8]               ; 080E864A  [sp+8] = byte6 (30)
add   r2,0x1                    ; 080E864C
ldrb  r0,[r2]                   ; 080E864E  byte7 (00)
add   r0,0x8                    ; 080E8650
str   r0,[sp,0x4]               ; 080E8652  [sp+4] = byte7 + 8 (08)
ldrb  r6,[r2,0x1]               ; 080E8654  r6 = byte8 (10)
mov   r0,0x0                    ; 080E8656
b     @@Code080E8780            ; 080E8658  jump to end of outer loop
@@Code080E865A:
; Current register state as of entering outer loop:
; [sp] = 030023CC
; [sp+4] = byte7 + 8 (08) (starting X in pixels)
; [sp+8] = byte6 (30) (image height in pixels)
; [sp+C] = byte5 >> 3, rounded up (10) (image width in 8x8 tiles)
; [sp+10] = byte2 >> 3 (00) (starting offset in 8-pixel increments)
; r6 = byte8 (10) (starting Y in pixels)
; r9 = 16-bit bytes3-4, << 4, capped to 16-bit (image start offset)

                                ;          \ outer loop: ?
ldr   r4,[sp,0x4]               ; 080E865A  r4 = byte7 + 8 (08)
ldr   r1,[sp,0x10]              ; 080E865C
mov   r8,r1                     ; 080E865E  r8 = byte2 << 8 (00)
mov   r1,0x0                    ; 080E8660
mov   r10,r1                    ; 080E8662  r10 = 0
mov   r1,r9                     ; 080E8664
add   r1,0x10                   ; 080E8666
str   r1,[sp,0x1C]              ; 080E8668  [sp+1C] = image offset? + 10
add   r1,r6,0x1                 ; 080E866A
str   r1,[sp,0x14]              ; 080E866C  [sp+14] = byte8 + 1 (11)
add   r0,0x1                    ; 080E866E
str   r0,[sp,0x18]              ; 080E8670  [sp+18] = Y pixel index within message?
ldr   r0,[sp,0xC]               ; 080E8672  image width in 8px increments
cmp   r10,r0                    ; 080E8674
bhs   @@Code080E876C            ; 080E8676  if width == 0, skip inner loop
ldr   r7,=0x03007248            ; 080E8678  pointer to message buffer
@@Code080E867A:
                                ;          \ inner loop: ?
mov   r0,r9                     ; 080E867A
add   r0,r8                     ; 080E867C
lsl   r0,r0,0x10                ; 080E867E
lsr   r0,r0,0x10                ; 080E8680
ldr   r1,=Data082F6FCC          ; 080E8682
add   r0,r0,r1                  ; 080E8684
ldrb  r5,[r0]                   ; 080E8686
mov   r0,0x80                   ; 080E8688
and   r0,r5                     ; 080E868A
cmp   r0,0x0                    ; 080E868C
beq   @@Code080E869C            ; 080E868E
ldr   r0,[r7]                   ; 080E8690  r0 = pointer to message buffer
mov   r1,r4                     ; 080E8692  r1 = X
mov   r2,r6                     ; 080E8694  r2 = Y
mov   r3,0xB                    ; 080E8696  r3 = pixel color
bl    Sub08000558               ; 080E8698  Write one pixel's color to graphics buffer
@@Code080E869C:
add   r0,r4,0x1                 ; 080E869C  increment X, capping to 16-bit
lsl   r0,r0,0x10                ; 080E869E
lsr   r4,r0,0x10                ; 080E86A0
mov   r0,0x40                   ; 080E86A2
and   r0,r5                     ; 080E86A4
cmp   r0,0x0                    ; 080E86A6
beq   @@Code080E86B6            ; 080E86A8
ldr   r0,[r7]                   ; 080E86AA
mov   r1,r4                     ; 080E86AC
mov   r2,r6                     ; 080E86AE
mov   r3,0xB                    ; 080E86B0
bl    Sub08000558               ; 080E86B2  Write one pixel's color to graphics buffer
@@Code080E86B6:
add   r0,r4,0x1                 ; 080E86B6
lsl   r0,r0,0x10                ; 080E86B8
lsr   r4,r0,0x10                ; 080E86BA
mov   r0,0x20                   ; 080E86BC
and   r0,r5                     ; 080E86BE
cmp   r0,0x0                    ; 080E86C0
beq   @@Code080E86D0            ; 080E86C2
ldr   r0,[r7]                   ; 080E86C4
mov   r1,r4                     ; 080E86C6
mov   r2,r6                     ; 080E86C8
mov   r3,0xB                    ; 080E86CA
bl    Sub08000558               ; 080E86CC  Write one pixel's color to graphics buffer
@@Code080E86D0:
add   r0,r4,0x1                 ; 080E86D0
lsl   r0,r0,0x10                ; 080E86D2
lsr   r4,r0,0x10                ; 080E86D4
mov   r0,0x10                   ; 080E86D6
and   r0,r5                     ; 080E86D8
cmp   r0,0x0                    ; 080E86DA
beq   @@Code080E86EA            ; 080E86DC
ldr   r0,[r7]                   ; 080E86DE
mov   r1,r4                     ; 080E86E0
mov   r2,r6                     ; 080E86E2
mov   r3,0xB                    ; 080E86E4
bl    Sub08000558               ; 080E86E6  Write one pixel's color to graphics buffer
@@Code080E86EA:
add   r0,r4,0x1                 ; 080E86EA
lsl   r0,r0,0x10                ; 080E86EC
lsr   r4,r0,0x10                ; 080E86EE
mov   r0,0x8                    ; 080E86F0
and   r0,r5                     ; 080E86F2
cmp   r0,0x0                    ; 080E86F4
beq   @@Code080E8704            ; 080E86F6
ldr   r0,[r7]                   ; 080E86F8
mov   r1,r4                     ; 080E86FA
mov   r2,r6                     ; 080E86FC
mov   r3,0xB                    ; 080E86FE
bl    Sub08000558               ; 080E8700  Write one pixel's color to graphics buffer
@@Code080E8704:
add   r0,r4,0x1                 ; 080E8704
lsl   r0,r0,0x10                ; 080E8706
lsr   r4,r0,0x10                ; 080E8708
mov   r0,0x4                    ; 080E870A
and   r0,r5                     ; 080E870C
cmp   r0,0x0                    ; 080E870E
beq   @@Code080E871E            ; 080E8710
ldr   r0,[r7]                   ; 080E8712
mov   r1,r4                     ; 080E8714
mov   r2,r6                     ; 080E8716
mov   r3,0xB                    ; 080E8718
bl    Sub08000558               ; 080E871A  Write one pixel's color to graphics buffer
@@Code080E871E:
add   r0,r4,0x1                 ; 080E871E
lsl   r0,r0,0x10                ; 080E8720
lsr   r4,r0,0x10                ; 080E8722
mov   r0,0x2                    ; 080E8724
and   r0,r5                     ; 080E8726
cmp   r0,0x0                    ; 080E8728
beq   @@Code080E8738            ; 080E872A
ldr   r0,[r7]                   ; 080E872C
mov   r1,r4                     ; 080E872E
mov   r2,r6                     ; 080E8730
mov   r3,0xB                    ; 080E8732
bl    Sub08000558               ; 080E8734  Write one pixel's color to graphics buffer
@@Code080E8738:
add   r0,r4,0x1                 ; 080E8738
lsl   r0,r0,0x10                ; 080E873A
lsr   r4,r0,0x10                ; 080E873C
mov   r0,0x1                    ; 080E873E
and   r5,r0                     ; 080E8740
cmp   r5,0x0                    ; 080E8742
beq   @@Code080E8752            ; 080E8744
ldr   r0,[r7]                   ; 080E8746
mov   r1,r4                     ; 080E8748
mov   r2,r6                     ; 080E874A
mov   r3,0xB                    ; 080E874C
bl    Sub08000558               ; 080E874E  Write one pixel's color to graphics buffer
@@Code080E8752:
mov   r0,r8                     ; 080E8752
add   r0,0x1                    ; 080E8754
lsl   r0,r0,0x10                ; 080E8756
lsr   r0,r0,0x10                ; 080E8758
mov   r8,r0                     ; 080E875A
mov   r0,r10                    ; 080E875C
add   r0,0x1                    ; 080E875E
lsl   r0,r0,0x10                ; 080E8760
lsr   r0,r0,0x10                ; 080E8762
mov   r10,r0                    ; 080E8764
ldr   r1,[sp,0xC]               ; 080E8766  image width in 8px increments
cmp   r10,r1                    ; 080E8768
blo   @@Code080E867A            ; 080E876A / end inner loop
@@Code080E876C:
ldr   r1,[sp,0x1C]              ; 080E876C
lsl   r0,r1,0x10                ; 080E876E
lsr   r0,r0,0x10                ; 080E8770
mov   r9,r0                     ; 080E8772
ldr   r1,[sp,0x14]              ; 080E8774
lsl   r0,r1,0x10                ; 080E8776
lsr   r6,r0,0x10                ; 080E8778
ldr   r1,[sp,0x18]              ; 080E877A
lsl   r0,r1,0x10                ; 080E877C
lsr   r0,r0,0x10                ; 080E877E
@@Code080E8780:
ldr   r1,[sp,0x8]               ; 080E8780  loop entry point
cmp   r0,r1                     ; 080E8782
bhs   @@Code080E8788            ; 080E8784  if all Y-values have been processed, end loop
b     @@Code080E865A            ; 080E8786
@@Code080E8788:
                                ;          / end outer loop
ldr   r0,[sp]                   ; 080E8788
ldr   r2,[r0,0x4]               ; 080E878A
add   r2,0x9                    ; 080E878C
str   r2,[r0,0x4]               ; 080E878E
mov   r0,0x1                    ; 080E8790
add   sp,0x20                   ; 080E8792
pop   {r3-r5}                   ; 080E8794
mov   r8,r3                     ; 080E8796
mov   r9,r4                     ; 080E8798
mov   r10,r5                    ; 080E879A
pop   {r4-r7}                   ; 080E879C
pop   {r1}                      ; 080E879E
bx    r1                        ; 080E87A0
.pool                           ; 080E87A2

Sub080E87AC:
; Message command FF 53-5F
mov   r0,0x1                    ; 080E87AC
bx    lr                        ; 080E87AE

Sub080E87B0:
; Message command FF 50
push  {r4-r7,lr}                ; 080E87B0
mov   r7,r8                     ; 080E87B2
push  {r7}                      ; 080E87B4
mov   r5,r0                     ; 080E87B6
ldrh  r2,[r5,0x12]              ; 080E87B8
mov   r7,0xFF                   ; 080E87BA
lsr   r0,r2,0x8                 ; 080E87BC
ldr   r1,=0xFFFFFF00            ; 080E87BE
mov   r8,r1                     ; 080E87C0
lsl   r1,r2,0x8                 ; 080E87C2
orr   r0,r1                     ; 080E87C4
lsl   r0,r0,0x10                ; 080E87C6
ldr   r1,=0xC0C00000            ; 080E87C8
and   r1,r0                     ; 080E87CA
cmp   r1,0x0                    ; 080E87CC
beq   @@Code080E8818            ; 080E87CE
mov   r2,0x30                   ; 080E87D0
mov   r0,r5                     ; 080E87D2
add   r0,0x56                   ; 080E87D4
ldrh  r1,[r0]                   ; 080E87D6
mov   r0,0x1                    ; 080E87D8
and   r0,r1                     ; 080E87DA
cmp   r0,0x0                    ; 080E87DC
beq   @@Code080E87E6            ; 080E87DE
mov   r2,0x75                   ; 080E87E0
mov   r0,0x2                    ; 080E87E2
strh  r0,[r5,0xA]               ; 080E87E4
@@Code080E87E6:
ldr   r1,=0x03002200            ; 080E87E6
ldr   r3,=0x4905                ; 080E87E8
add   r0,r1,r3                  ; 080E87EA
ldrb  r0,[r0]                   ; 080E87EC
cmp   r0,0xD                    ; 080E87EE
bne   @@Code080E87FC            ; 080E87F0
ldr   r0,=0x4058                ; 080E87F2
add   r1,r1,r0                  ; 080E87F4
mov   r0,r2                     ; 080E87F6
bl    PlayYISound               ; 080E87F8
@@Code080E87FC:
ldr   r0,[r5,0x4]               ; 080E87FC
add   r0,0x2                    ; 080E87FE
str   r0,[r5,0x4]               ; 080E8800
b     @@Code080E8912            ; 080E8802
.pool                           ; 080E8804

@@Code080E8818:
mov   r6,r5                     ; 080E8818
add   r6,0x56                   ; 080E881A
ldrh  r4,[r6]                   ; 080E881C
ldr   r0,=0x03002200            ; 080E881E
ldr   r1,=0x47C0                ; 080E8820
add   r0,r0,r1                  ; 080E8822
ldrh  r0,[r0]                   ; 080E8824
lsr   r0,r0,0x4                 ; 080E8826
mov   r1,0x3                    ; 080E8828
and   r0,r1                     ; 080E882A
cmp   r0,0x0                    ; 080E882C
beq   @@Code080E8912            ; 080E882E
mov   r0,0x1                    ; 080E8830
eor   r4,r0                     ; 080E8832
mov   r0,0x22                   ; 080E8834
mov   r1,0x0                    ; 080E8836
bl    PlayYISound               ; 080E8838
strh  r4,[r6]                   ; 080E883C
cmp   r4,0x0                    ; 080E883E
bne   @@Code080E88A8            ; 080E8840
mov   r0,0xD4                   ; 080E8842
strh  r0,[r5,0x2C]              ; 080E8844
ldrh  r1,[r5,0xE]               ; 080E8846
lsr   r0,r1,0x8                 ; 080E8848
and   r0,r7                     ; 080E884A
lsl   r1,r1,0x8                 ; 080E884C
mov   r2,r8                     ; 080E884E
and   r1,r2                     ; 080E8850
orr   r0,r1                     ; 080E8852
lsl   r0,r0,0x10                ; 080E8854
lsr   r1,r0,0x10                ; 080E8856
mov   r4,0x1                    ; 080E8858
and   r1,r4                     ; 080E885A
lsl   r1,r1,0x1                 ; 080E885C
mov   r0,r1                     ; 080E885E
ldr   r2,=Data081955E0          ; 080E8860
add   r1,r0,r2                  ; 080E8862
ldrb  r1,[r1]                   ; 080E8864
strh  r1,[r5,0x28]              ; 080E8866
add   r0,0x1                    ; 080E8868
lsl   r0,r0,0x10                ; 080E886A
lsr   r0,r0,0x10                ; 080E886C
add   r2,r0,r2                  ; 080E886E
ldrb  r1,[r2]                   ; 080E8870
strh  r1,[r5,0x2A]              ; 080E8872
mov   r0,r5                     ; 080E8874
bl    Sub080E8554               ; 080E8876
mov   r1,0xD0                   ; 080E887A
strh  r1,[r5,0x2C]              ; 080E887C
ldrh  r1,[r5,0xE]               ; 080E887E
lsr   r0,r1,0x8                 ; 080E8880
and   r0,r7                     ; 080E8882
lsl   r1,r1,0x8                 ; 080E8884
mov   r3,r8                     ; 080E8886
and   r1,r3                     ; 080E8888
orr   r1,r0                     ; 080E888A
and   r1,r4                     ; 080E888C
lsl   r1,r1,0x1                 ; 080E888E
mov   r0,r1                     ; 080E8890
ldr   r2,=Data081955E4          ; 080E8892
b     @@Code080E88FA            ; 080E8894
.pool                           ; 080E8896

@@Code080E88A8:
mov   r0,0xD4                   ; 080E88A8
strh  r0,[r5,0x2C]              ; 080E88AA
ldrh  r1,[r5,0xE]               ; 080E88AC
lsr   r0,r1,0x8                 ; 080E88AE
and   r0,r7                     ; 080E88B0
lsl   r1,r1,0x8                 ; 080E88B2
mov   r2,r8                     ; 080E88B4
and   r1,r2                     ; 080E88B6
orr   r0,r1                     ; 080E88B8
lsl   r0,r0,0x10                ; 080E88BA
lsr   r1,r0,0x10                ; 080E88BC
mov   r4,0x1                    ; 080E88BE
and   r1,r4                     ; 080E88C0
lsl   r1,r1,0x1                 ; 080E88C2
mov   r0,r1                     ; 080E88C4
ldr   r2,=Data081955E4          ; 080E88C6
add   r1,r0,r2                  ; 080E88C8
ldrb  r1,[r1]                   ; 080E88CA
strh  r1,[r5,0x28]              ; 080E88CC
add   r0,0x1                    ; 080E88CE
lsl   r0,r0,0x10                ; 080E88D0
lsr   r0,r0,0x10                ; 080E88D2
add   r2,r0,r2                  ; 080E88D4
ldrb  r1,[r2]                   ; 080E88D6
strh  r1,[r5,0x2A]              ; 080E88D8
mov   r0,r5                     ; 080E88DA
bl    Sub080E8554               ; 080E88DC
mov   r1,0xD0                   ; 080E88E0
strh  r1,[r5,0x2C]              ; 080E88E2
ldrh  r1,[r5,0xE]               ; 080E88E4
lsr   r0,r1,0x8                 ; 080E88E6
and   r0,r7                     ; 080E88E8
lsl   r1,r1,0x8                 ; 080E88EA
mov   r3,r8                     ; 080E88EC
and   r1,r3                     ; 080E88EE
orr   r1,r0                     ; 080E88F0
and   r1,r4                     ; 080E88F2
lsl   r1,r1,0x1                 ; 080E88F4
mov   r0,r1                     ; 080E88F6
ldr   r2,=Data081955E0          ; 080E88F8
@@Code080E88FA:
add   r1,r0,r2                  ; 080E88FA
ldrb  r1,[r1]                   ; 080E88FC
strh  r1,[r5,0x28]              ; 080E88FE
add   r0,0x1                    ; 080E8900
lsl   r0,r0,0x10                ; 080E8902
lsr   r0,r0,0x10                ; 080E8904
add   r2,r0,r2                  ; 080E8906
ldrb  r1,[r2]                   ; 080E8908
strh  r1,[r5,0x2A]              ; 080E890A
mov   r0,r5                     ; 080E890C
bl    Sub080E8554               ; 080E890E
@@Code080E8912:
mov   r0,0x1                    ; 080E8912
pop   {r3}                      ; 080E8914
mov   r8,r3                     ; 080E8916
pop   {r4-r7}                   ; 080E8918
pop   {r1}                      ; 080E891A
bx    r1                        ; 080E891C
.pool                           ; 080E891E

Sub080E8928:
; Message command FF 51; called by FF 52
push  {r4-r7,lr}                ; 080E8928
mov   r7,r10                    ; 080E892A
mov   r6,r9                     ; 080E892C
mov   r5,r8                     ; 080E892E
push  {r5-r7}                   ; 080E8930
add   sp,-0x4                   ; 080E8932
mov   r5,r0                     ; 080E8934
ldrh  r2,[r5,0x12]              ; 080E8936
mov   r7,0xFF                   ; 080E8938
lsr   r0,r2,0x8                 ; 080E893A
ldr   r1,=0xFFFFFF00            ; 080E893C
mov   r8,r1                     ; 080E893E
lsl   r1,r2,0x8                 ; 080E8940
orr   r0,r1                     ; 080E8942
lsl   r0,r0,0x10                ; 080E8944
lsr   r6,r0,0x10                ; 080E8946
mov   r2,r6                     ; 080E8948
ldr   r0,=0xC0C0                ; 080E894A
and   r0,r6                     ; 080E894C
mov   r9,r0                     ; 080E894E
cmp   r0,0x0                    ; 080E8950
beq   @@Code080E8988            ; 080E8952
mov   r2,0x30                   ; 080E8954
mov   r0,r5                     ; 080E8956
add   r0,0x56                   ; 080E8958
ldrh  r1,[r0]                   ; 080E895A
mov   r0,0x1                    ; 080E895C
and   r0,r1                     ; 080E895E
cmp   r0,0x0                    ; 080E8960
beq   @@Code080E896A            ; 080E8962
mov   r2,0x75                   ; 080E8964
mov   r0,0x2                    ; 080E8966
strh  r0,[r5,0xA]               ; 080E8968
@@Code080E896A:
ldr   r1,=0x03006258            ; 080E896A
mov   r0,r2                     ; 080E896C
bl    PlayYISound               ; 080E896E
ldr   r0,[r5,0x4]               ; 080E8972
add   r0,0x2                    ; 080E8974
str   r0,[r5,0x4]               ; 080E8976
b     @@Code080E8B7A            ; 080E8978
.pool                           ; 080E897A

@@Code080E8988:
mov   r3,0x56                   ; 080E8988
add   r3,r3,r5                  ; 080E898A
mov   r12,r3                    ; 080E898C
ldrh  r0,[r3]                   ; 080E898E
str   r0,[sp]                   ; 080E8990
ldrh  r3,[r5,0xE]               ; 080E8992
mov   r4,r3                     ; 080E8994
lsr   r0,r4,0x8                 ; 080E8996
and   r0,r7                     ; 080E8998
lsl   r1,r4,0x8                 ; 080E899A
mov   r3,r8                     ; 080E899C
and   r1,r3                     ; 080E899E
orr   r0,r1                     ; 080E89A0
lsl   r0,r0,0x10                ; 080E89A2
lsr   r3,r0,0x10                ; 080E89A4
mov   r0,0x1                    ; 080E89A6
mov   r10,r0                    ; 080E89A8
and   r3,r0                     ; 080E89AA
ldr   r0,=Data081955F0          ; 080E89AC
add   r0,r3,r0                  ; 080E89AE
ldrb  r3,[r0]                   ; 080E89B0
and   r3,r6                     ; 080E89B2
cmp   r3,0x0                    ; 080E89B4
beq   @@Code080E8A88            ; 080E89B6
mov   r2,r9                     ; 080E89B8
mov   r1,r12                    ; 080E89BA
strh  r2,[r1]                   ; 080E89BC
ldr   r3,[sp]                   ; 080E89BE
cmp   r3,0x0                    ; 080E89C0
beq   @@Code080E89CC            ; 080E89C2
mov   r0,0x22                   ; 080E89C4
mov   r1,0x0                    ; 080E89C6
bl    PlayYISound               ; 080E89C8
@@Code080E89CC:
mov   r0,0xD4                   ; 080E89CC
strh  r0,[r5,0x2C]              ; 080E89CE
ldrh  r3,[r5,0xE]               ; 080E89D0
mov   r1,r3                     ; 080E89D2
lsr   r3,r1,0x8                 ; 080E89D4
and   r3,r7                     ; 080E89D6
lsl   r0,r1,0x8                 ; 080E89D8
mov   r2,r8                     ; 080E89DA
and   r0,r2                     ; 080E89DC
orr   r3,r0                     ; 080E89DE
mov   r0,r10                    ; 080E89E0
and   r3,r0                     ; 080E89E2
lsl   r3,r3,0x1                 ; 080E89E4
mov   r4,r3                     ; 080E89E6
lsr   r1,r1,0x8                 ; 080E89E8
cmp   r1,0x52                   ; 080E89EA
beq   @@Code080E89FC            ; 080E89EC
ldr   r0,=Data081955E0          ; 080E89EE
b     @@Code080E89FE            ; 080E89F0
.pool                           ; 080E89F2

@@Code080E89FC:
ldr   r0,=Data081955E8          ; 080E89FC
@@Code080E89FE:
add   r0,r3,r0                  ; 080E89FE
ldrb  r3,[r0]                   ; 080E8A00
strh  r3,[r5,0x28]              ; 080E8A02
add   r0,r4,0x1                 ; 080E8A04
lsl   r0,r0,0x10                ; 080E8A06
lsr   r4,r0,0x10                ; 080E8A08
ldrh  r0,[r5,0xE]               ; 080E8A0A
lsr   r0,r0,0x8                 ; 080E8A0C
cmp   r0,0x52                   ; 080E8A0E
beq   @@Code080E8A20            ; 080E8A10
ldr   r0,=Data081955E0          ; 080E8A12
b     @@Code080E8A22            ; 080E8A14
.pool                           ; 080E8A16

@@Code080E8A20:
ldr   r0,=Data081955E8          ; 080E8A20
@@Code080E8A22:
add   r0,r4,r0                  ; 080E8A22
ldrb  r3,[r0]                   ; 080E8A24
strh  r3,[r5,0x2A]              ; 080E8A26
mov   r0,r5                     ; 080E8A28
bl    Sub080E8554               ; 080E8A2A
mov   r3,0xD0                   ; 080E8A2E
strh  r3,[r5,0x2C]              ; 080E8A30
ldrh  r3,[r5,0xE]               ; 080E8A32
mov   r2,r3                     ; 080E8A34
lsr   r0,r2,0x8                 ; 080E8A36
lsl   r1,r2,0x8                 ; 080E8A38
orr   r0,r1                     ; 080E8A3A
lsl   r0,r0,0x10                ; 080E8A3C
lsr   r3,r0,0x10                ; 080E8A3E
mov   r0,0x1                    ; 080E8A40
and   r3,r0                     ; 080E8A42
lsl   r3,r3,0x1                 ; 080E8A44
mov   r4,r3                     ; 080E8A46
lsr   r2,r2,0x8                 ; 080E8A48
cmp   r2,0x52                   ; 080E8A4A
beq   @@Code080E8A5C            ; 080E8A4C
ldr   r0,=Data081955E4          ; 080E8A4E
b     @@Code080E8A5E            ; 080E8A50
.pool                           ; 080E8A52

@@Code080E8A5C:
ldr   r0,=Data081955EC          ; 080E8A5C
@@Code080E8A5E:
add   r0,r3,r0                  ; 080E8A5E
ldrb  r3,[r0]                   ; 080E8A60
strh  r3,[r5,0x28]              ; 080E8A62
add   r0,r4,0x1                 ; 080E8A64
lsl   r0,r0,0x10                ; 080E8A66
lsr   r4,r0,0x10                ; 080E8A68
ldrh  r0,[r5,0xE]               ; 080E8A6A
lsr   r0,r0,0x8                 ; 080E8A6C
cmp   r0,0x52                   ; 080E8A6E
beq   @@Code080E8A80            ; 080E8A70
ldr   r0,=Data081955E4          ; 080E8A72
b     @@Code080E8B6E            ; 080E8A74
.pool                           ; 080E8A76

@@Code080E8A80:
ldr   r0,=Data081955EC          ; 080E8A80
b     @@Code080E8B6E            ; 080E8A82
.pool                           ; 080E8A84

@@Code080E8A88:
mov   r3,r4                     ; 080E8A88
lsr   r0,r3,0x8                 ; 080E8A8A
and   r0,r7                     ; 080E8A8C
lsl   r1,r3,0x8                 ; 080E8A8E
mov   r3,r8                     ; 080E8A90
and   r1,r3                     ; 080E8A92
orr   r0,r1                     ; 080E8A94
mov   r1,r10                    ; 080E8A96
and   r0,r1                     ; 080E8A98
ldr   r1,=Data081955F2          ; 080E8A9A
add   r0,r0,r1                  ; 080E8A9C
ldrb  r3,[r0]                   ; 080E8A9E
and   r2,r3                     ; 080E8AA0
cmp   r2,0x0                    ; 080E8AA2
beq   @@Code080E8B7A            ; 080E8AA4
mov   r3,r10                    ; 080E8AA6
mov   r2,r12                    ; 080E8AA8
strh  r3,[r2]                   ; 080E8AAA
ldr   r0,[sp]                   ; 080E8AAC
cmp   r0,0x1                    ; 080E8AAE
beq   @@Code080E8ABA            ; 080E8AB0
mov   r0,0x22                   ; 080E8AB2
mov   r1,0x0                    ; 080E8AB4
bl    PlayYISound               ; 080E8AB6
@@Code080E8ABA:
mov   r0,0xD4                   ; 080E8ABA
strh  r0,[r5,0x2C]              ; 080E8ABC
ldrh  r3,[r5,0xE]               ; 080E8ABE
mov   r1,r3                     ; 080E8AC0
lsr   r3,r1,0x8                 ; 080E8AC2
and   r3,r7                     ; 080E8AC4
lsl   r0,r1,0x8                 ; 080E8AC6
mov   r2,r8                     ; 080E8AC8
and   r0,r2                     ; 080E8ACA
orr   r3,r0                     ; 080E8ACC
mov   r0,r10                    ; 080E8ACE
and   r3,r0                     ; 080E8AD0
lsl   r3,r3,0x1                 ; 080E8AD2
mov   r4,r3                     ; 080E8AD4
lsr   r1,r1,0x8                 ; 080E8AD6
cmp   r1,0x52                   ; 080E8AD8
beq   @@Code080E8AE8            ; 080E8ADA
ldr   r0,=Data081955E4          ; 080E8ADC
b     @@Code080E8AEA            ; 080E8ADE
.pool                           ; 080E8AE0

@@Code080E8AE8:
ldr   r0,=Data081955EC          ; 080E8AE8
@@Code080E8AEA:
add   r0,r3,r0                  ; 080E8AEA
ldrb  r3,[r0]                   ; 080E8AEC
strh  r3,[r5,0x28]              ; 080E8AEE
add   r0,r4,0x1                 ; 080E8AF0
lsl   r0,r0,0x10                ; 080E8AF2
lsr   r4,r0,0x10                ; 080E8AF4
ldrh  r0,[r5,0xE]               ; 080E8AF6
lsr   r0,r0,0x8                 ; 080E8AF8
cmp   r0,0x52                   ; 080E8AFA
beq   @@Code080E8B0C            ; 080E8AFC
ldr   r0,=Data081955E4          ; 080E8AFE
b     @@Code080E8B0E            ; 080E8B00
.pool                           ; 080E8B02

@@Code080E8B0C:
ldr   r0,=Data081955EC          ; 080E8B0C
@@Code080E8B0E:
add   r0,r4,r0                  ; 080E8B0E
ldrb  r3,[r0]                   ; 080E8B10
strh  r3,[r5,0x2A]              ; 080E8B12
mov   r0,r5                     ; 080E8B14
bl    Sub080E8554               ; 080E8B16
mov   r3,0xD0                   ; 080E8B1A
strh  r3,[r5,0x2C]              ; 080E8B1C
ldrh  r3,[r5,0xE]               ; 080E8B1E
mov   r2,r3                     ; 080E8B20
lsr   r0,r2,0x8                 ; 080E8B22
lsl   r1,r2,0x8                 ; 080E8B24
orr   r0,r1                     ; 080E8B26
lsl   r0,r0,0x10                ; 080E8B28
lsr   r3,r0,0x10                ; 080E8B2A
mov   r0,0x1                    ; 080E8B2C
and   r3,r0                     ; 080E8B2E
lsl   r3,r3,0x1                 ; 080E8B30
mov   r4,r3                     ; 080E8B32
lsr   r2,r2,0x8                 ; 080E8B34
cmp   r2,0x52                   ; 080E8B36
beq   @@Code080E8B48            ; 080E8B38
ldr   r0,=Data081955E0          ; 080E8B3A
b     @@Code080E8B4A            ; 080E8B3C
.pool                           ; 080E8B3E

@@Code080E8B48:
ldr   r0,=Data081955E8          ; 080E8B48
@@Code080E8B4A:
add   r0,r3,r0                  ; 080E8B4A
ldrb  r3,[r0]                   ; 080E8B4C
strh  r3,[r5,0x28]              ; 080E8B4E
add   r0,r4,0x1                 ; 080E8B50
lsl   r0,r0,0x10                ; 080E8B52
lsr   r4,r0,0x10                ; 080E8B54
ldrh  r0,[r5,0xE]               ; 080E8B56
lsr   r0,r0,0x8                 ; 080E8B58
cmp   r0,0x52                   ; 080E8B5A
beq   @@Code080E8B6C            ; 080E8B5C
ldr   r0,=Data081955E0          ; 080E8B5E
b     @@Code080E8B6E            ; 080E8B60
.pool                           ; 080E8B62

@@Code080E8B6C:
ldr   r0,=Data081955E8          ; 080E8B6C
@@Code080E8B6E:
add   r0,r4,r0                  ; 080E8B6E
ldrb  r3,[r0]                   ; 080E8B70
strh  r3,[r5,0x2A]              ; 080E8B72
mov   r0,r5                     ; 080E8B74
bl    Sub080E8554               ; 080E8B76
@@Code080E8B7A:
mov   r0,0x1                    ; 080E8B7A
add   sp,0x4                    ; 080E8B7C
pop   {r3-r5}                   ; 080E8B7E
mov   r8,r3                     ; 080E8B80
mov   r9,r4                     ; 080E8B82
mov   r10,r5                    ; 080E8B84
pop   {r4-r7}                   ; 080E8B86
pop   {r1}                      ; 080E8B88
bx    r1                        ; 080E8B8A
.pool                           ; 080E8B8C

Sub080E8B90:
; Message command FF 52
push  {lr}                      ; 080E8B90
mov   r3,r0                     ; 080E8B92
ldrh  r0,[r3,0x12]              ; 080E8B94
ldr   r1,=0xC0C0                ; 080E8B96
and   r0,r1                     ; 080E8B98
cmp   r0,0x0                    ; 080E8B9A
beq   @@Code080E8BBA            ; 080E8B9C
mov   r0,r3                     ; 080E8B9E
add   r0,0x56                   ; 080E8BA0
ldrh  r1,[r0]                   ; 080E8BA2
mov   r0,0x1                    ; 080E8BA4
and   r0,r1                     ; 080E8BA6
cmp   r0,0x0                    ; 080E8BA8
beq   @@Code080E8BBA            ; 080E8BAA
ldr   r0,=0x03002200            ; 080E8BAC
ldr   r1,=0x4082                ; 080E8BAE
add   r0,r0,r1                  ; 080E8BB0
ldrh  r1,[r0]                   ; 080E8BB2
mov   r2,0x2                    ; 080E8BB4
eor   r1,r2                     ; 080E8BB6
strh  r1,[r0]                   ; 080E8BB8
@@Code080E8BBA:
mov   r0,r3                     ; 080E8BBA
bl    Sub080E8928               ; 080E8BBC
lsl   r0,r0,0x18                ; 080E8BC0
lsr   r0,r0,0x18                ; 080E8BC2
pop   {r1}                      ; 080E8BC4
bx    r1                        ; 080E8BC6
.pool                           ; 080E8BC8

Sub080E8BD4:
; Message command FF 40-4F
mov   r0,0x1                    ; 080E8BD4
bx    lr                        ; 080E8BD6

Sub080E8BD8:
; Called by FF 3C-3F
push  {lr}                      ; 080E8BD8
ldr   r1,=0x03002200            ; 080E8BDA
ldr   r2,=0x47FE                ; 080E8BDC
add   r1,r1,r2                  ; 080E8BDE  r2 = 030069FE
ldrh  r1,[r1]                   ; 080E8BE0  r1 = current character
strh  r1,[r0,0xE]               ; 080E8BE2
ldr   r1,[r0,0x4]               ; 080E8BE4 \
add   r1,0x1                    ; 080E8BE6 | add 1 to byte to read
str   r1,[r0,0x4]               ; 080E8BE8 /
bl    Sub080E836C               ; 080E8BEA  Display message character
pop   {r0}                      ; 080E8BEE
bx    r0                        ; 080E8BF0
.pool                           ; 080E8BF2

Sub080E8BFC:
; Message command FF 3F
push  {lr}                      ; 080E8BFC
ldr   r2,=0x03002200            ; 080E8BFE
mov   r1,r0                     ; 080E8C00
add   r1,0x5A                   ; 080E8C02  r1 = 03002426
ldrb  r1,[r1]                   ; 080E8C04  ones digit of lives
add   r1,0xA0                   ; 080E8C06  set current character to A0+digit
ldr   r3,=0x47FE                ; 080E8C08
add   r2,r2,r3                  ; 080E8C0A  r2 = 030069FE
strh  r1,[r2]                   ; 080E8C0C
bl    Sub080E8BD8               ; 080E8C0E
mov   r0,0x0                    ; 080E8C12
pop   {r1}                      ; 080E8C14
bx    r1                        ; 080E8C16
.pool                           ; 080E8C18

Sub080E8C20:
; Message command FF 3E
push  {r4,lr}                   ; 080E8C20
mov   r1,r0                     ; 080E8C22
add   r0,0x5A                   ; 080E8C24  r0 = 03002426
ldrh  r0,[r0]                   ; 080E8C26  tens digit of lives * 0x100 + ones digit
lsr   r2,r0,0x8                 ; 080E8C28  tens digit of lives
ldr   r0,=0x03002200            ; 080E8C2A
ldr   r4,=0x47FE                ; 080E8C2C
add   r3,r0,r4                  ; 080E8C2E  r3 = 030069FE
mov   r0,0xD0                   ; 080E8C30  set current character to space
strh  r0,[r3]                   ; 080E8C32
mov   r0,r1                     ; 080E8C34
add   r0,0x58                   ; 080E8C36  r0 = 03002424 (copy of lives)
ldrh  r0,[r0]                   ; 080E8C38  lives
cmp   r0,0x9                    ; 080E8C3A
bls   @@Code080E8C44            ; 080E8C3C
mov   r0,r2                     ; 080E8C3E \ runs if lives > 9:
add   r0,0xA0                   ; 080E8C40  set current character to A0+digit
strh  r0,[r3]                   ; 080E8C42 /
@@Code080E8C44:
mov   r0,r1                     ; 080E8C44
bl    Sub080E8BD8               ; 080E8C46
mov   r0,0x0                    ; 080E8C4A
pop   {r4}                      ; 080E8C4C
pop   {r1}                      ; 080E8C4E
bx    r1                        ; 080E8C50
.pool                           ; 080E8C52

Sub080E8C5C:
; Message command FF 3C-3D
push  {r4-r5,lr}                ; 080E8C5C
mov   r4,r0                     ; 080E8C5E
mov   r3,0x0                    ; 080E8C60
mov   r1,0x0                    ; 080E8C62
add   r0,0x58                   ; 080E8C64  r0 = 03002424 (copy of lives)
ldrh  r2,[r0]                   ; 080E8C66  r2 = lives
ldr   r5,=0x03002200            ; 080E8C68
cmp   r2,0x63                   ; 080E8C6A  99 dec
bls   @@Code080E8C80            ; 080E8C6C
@@Code080E8C6E:
mov   r0,r2                     ; 080E8C6E \ runs if 3-digit lives:
sub   r0,0x64                   ; 080E8C70  extract 100s digit by subtraction
lsl   r0,r0,0x10                ; 080E8C72
lsr   r2,r0,0x10                ; 080E8C74
add   r0,r1,0x1                 ; 080E8C76
lsl   r0,r0,0x10                ; 080E8C78
lsr   r1,r0,0x10                ; 080E8C7A
cmp   r2,0x63                   ; 080E8C7C
bhi   @@Code080E8C6E            ; 080E8C7E /
@@Code080E8C80:
                                ;           r1=hundreds digit, r2=remainder
mov   r0,0x5A                   ; 080E8C80
add   r0,r0,r4                  ; 080E8C82  r0 = 03002426
mov   r12,r0                    ; 080E8C84
cmp   r2,0x9                    ; 080E8C86
bls   @@Code080E8C9C            ; 080E8C88
@@Code080E8C8A:
mov   r0,r2                     ; 080E8C8A \ runs if remainder >9:
sub   r0,0xA                    ; 080E8C8C  convert to decimal by subtraction
lsl   r0,r0,0x10                ; 080E8C8E
lsr   r2,r0,0x10                ; 080E8C90
add   r0,r3,0x1                 ; 080E8C92
lsl   r0,r0,0x10                ; 080E8C94
lsr   r3,r0,0x10                ; 080E8C96
cmp   r2,0x9                    ; 080E8C98
bhi   @@Code080E8C8A            ; 080E8C9A /
@@Code080E8C9C:
                                ;           r2=ones digit, r3=tens digit
lsl   r0,r3,0x8                 ; 080E8C9C
orr   r2,r0                     ; 080E8C9E  r2 = tens digit * 0x100 + ones digit
mov   r0,r12                    ; 080E8CA0
strh  r2,[r0]                   ; 080E8CA2  store to 03002426
cmp   r1,0x0                    ; 080E8CA4
beq   @@Code080E8CBC            ; 080E8CA6
                                ;          \ if 100s digit is nonzero
add   r1,0xA0                   ; 080E8CA8  set current character to A0+digit
ldr   r2,=0x47FE                ; 080E8CAA
add   r0,r5,r2                  ; 080E8CAC  r0 = 030069FE
strh  r1,[r0]                   ; 080E8CAE
b     @@Code080E8CC4            ; 080E8CB0 /
.pool                           ; 080E8CB2

@@Code080E8CBC:
ldr   r0,=0x47FE                ; 080E8CBC \ if 100s digit is zero
add   r1,r5,r0                  ; 080E8CBE  r1 = 030069FE
mov   r0,0xD0                   ; 080E8CC0  set current character to space
strh  r0,[r1]                   ; 080E8CC2
@@Code080E8CC4:
mov   r0,r4                     ; 080E8CC4 /
bl    Sub080E8BD8               ; 080E8CC6
mov   r0,0x0                    ; 080E8CCA
pop   {r4-r5}                   ; 080E8CCC
pop   {r1}                      ; 080E8CCE
bx    r1                        ; 080E8CD0
.pool                           ; 080E8CD2

Sub080E8CD8:
; Message command FF 3B: set horizontal scale to 4x
push  {lr}                      ; 080E8CD8
mov   r1,0x3                    ; 080E8CDA
strh  r1,[r0,0x1C]              ; 080E8CDC
bl    Sub080E8600               ; 080E8CDE  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8CE2
pop   {r1}                      ; 080E8CE4
bx    r1                        ; 080E8CE6

Sub080E8CE8:
; Message command FF 3A: set horizontal scale to 3x
push  {lr}                      ; 080E8CE8
mov   r1,0x2                    ; 080E8CEA
strh  r1,[r0,0x1C]              ; 080E8CEC
bl    Sub080E8600               ; 080E8CEE  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8CF2
pop   {r1}                      ; 080E8CF4
bx    r1                        ; 080E8CF6

Sub080E8CF8:
; Message command FF 39: set horizontal scale to 2x
push  {lr}                      ; 080E8CF8
mov   r1,0x1                    ; 080E8CFA
strh  r1,[r0,0x1C]              ; 080E8CFC
bl    Sub080E8600               ; 080E8CFE  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8D02
pop   {r1}                      ; 080E8D04
bx    r1                        ; 080E8D06

Sub080E8D08:
; Message command FF 38: set horizontal scale to 1x
push  {lr}                      ; 080E8D08
mov   r1,0x0                    ; 080E8D0A
strh  r1,[r0,0x1C]              ; 080E8D0C
bl    Sub080E8600               ; 080E8D0E  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8D12
pop   {r1}                      ; 080E8D14
bx    r1                        ; 080E8D16

Sub080E8D18:
; Message command FF 37: set vertical scale to 4x
push  {lr}                      ; 080E8D18
mov   r1,0x3                    ; 080E8D1A
strh  r1,[r0,0x1E]              ; 080E8D1C
bl    Sub080E8600               ; 080E8D1E  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8D22
pop   {r1}                      ; 080E8D24
bx    r1                        ; 080E8D26

Sub080E8D28:
; Message command FF 36: set vertical scale to 3x
push  {lr}                      ; 080E8D28
mov   r1,0x2                    ; 080E8D2A
strh  r1,[r0,0x1E]              ; 080E8D2C
bl    Sub080E8600               ; 080E8D2E  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8D32
pop   {r1}                      ; 080E8D34
bx    r1                        ; 080E8D36

Sub080E8D38:
; Message command FF 35: set vertical scale to 2x
push  {lr}                      ; 080E8D38
mov   r1,0x1                    ; 080E8D3A
strh  r1,[r0,0x1E]              ; 080E8D3C
bl    Sub080E8600               ; 080E8D3E  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8D42
pop   {r1}                      ; 080E8D44
bx    r1                        ; 080E8D46

Sub080E8D48:
; Message command FF 34: set vertical scale to 1x
push  {lr}                      ; 080E8D48
mov   r1,0x0                    ; 080E8D4A
strh  r1,[r0,0x1E]              ; 080E8D4C
bl    Sub080E8600               ; 080E8D4E  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8D52
pop   {r1}                      ; 080E8D54
bx    r1                        ; 080E8D56

Sub080E8D58:
; Message command FF 33: set scale to 4x
push  {lr}                      ; 080E8D58
mov   r1,0x3                    ; 080E8D5A
strh  r1,[r0,0x1C]              ; 080E8D5C
strh  r1,[r0,0x1E]              ; 080E8D5E
bl    Sub080E8600               ; 080E8D60  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8D64
pop   {r1}                      ; 080E8D66
bx    r1                        ; 080E8D68
.pool                           ; 080E8D6A

Sub080E8D6C:
; Message command FF 32: set scale to 3x
push  {lr}                      ; 080E8D6C
mov   r1,0x2                    ; 080E8D6E
strh  r1,[r0,0x1C]              ; 080E8D70
strh  r1,[r0,0x1E]              ; 080E8D72
bl    Sub080E8600               ; 080E8D74  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8D78
pop   {r1}                      ; 080E8D7A
bx    r1                        ; 080E8D7C
.pool                           ; 080E8D7E

Sub080E8D80:
; Message command FF 31: set scale to 2x
push  {lr}                      ; 080E8D80
mov   r1,0x1                    ; 080E8D82
strh  r1,[r0,0x1C]              ; 080E8D84
strh  r1,[r0,0x1E]              ; 080E8D86
bl    Sub080E8600               ; 080E8D88  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8D8C
pop   {r1}                      ; 080E8D8E
bx    r1                        ; 080E8D90
.pool                           ; 080E8D92

Sub080E8D94:
; Message command FF 20-30: set scale to 1x (reset scale)
push  {lr}                      ; 080E8D94
mov   r1,0x0                    ; 080E8D96
strh  r1,[r0,0x1C]              ; 080E8D98
strh  r1,[r0,0x1E]              ; 080E8D9A
bl    Sub080E8600               ; 080E8D9C  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8DA0
pop   {r1}                      ; 080E8DA2
bx    r1                        ; 080E8DA4
.pool                           ; 080E8DA6

Sub080E8DA8:
; Called by FF 10-1F
; r1: pixel offset to shift message upward?
push  {r4,lr}                   ; 080E8DA8
mov   r4,r0                     ; 080E8DAA
lsl   r1,r1,0x10                ; 080E8DAC
lsr   r1,r1,0x10                ; 080E8DAE
ldr   r0,=0x03007248            ; 080E8DB0  pointer to message buffer
ldr   r0,[r0]                   ; 080E8DB2
mov   r2,0x0                    ; 080E8DB4  start of region to shift?
mov   r3,0x50                   ; 080E8DB6  height of region to shift?
bl    Sub080FCB88               ; 080E8DB8  shift message buffer?
ldr   r0,[r4,0x4]               ; 080E8DBC \
add   r0,0x2                    ; 080E8DBE | add 2 to byte to read
str   r0,[r4,0x4]               ; 080E8DC0 /
pop   {r4}                      ; 080E8DC2
pop   {r0}                      ; 080E8DC4
bx    r0                        ; 080E8DC6
.pool                           ; 080E8DC8

Sub080E8DCC:
; Message command FF 15-1F
push  {lr}                      ; 080E8DCC
mov   r1,0x0                    ; 080E8DCE
bl    Sub080E8DA8               ; 080E8DD0
mov   r0,0x1                    ; 080E8DD4
pop   {r1}                      ; 080E8DD6
bx    r1                        ; 080E8DD8
.pool                           ; 080E8DDA

Sub080E8DDC:
; Message command FF 14
push  {lr}                      ; 080E8DDC
mov   r1,0x4                    ; 080E8DDE
bl    Sub080E8DA8               ; 080E8DE0
mov   r0,0x1                    ; 080E8DE4
pop   {r1}                      ; 080E8DE6
bx    r1                        ; 080E8DE8
.pool                           ; 080E8DEA

Sub080E8DEC:
; Message command FF 13
push  {lr}                      ; 080E8DEC
mov   r1,0x3                    ; 080E8DEE
bl    Sub080E8DA8               ; 080E8DF0
mov   r0,0x1                    ; 080E8DF4
pop   {r1}                      ; 080E8DF6
bx    r1                        ; 080E8DF8
.pool                           ; 080E8DFA

Sub080E8DFC:
; Message command FF 12
push  {lr}                      ; 080E8DFC
mov   r1,0x2                    ; 080E8DFE
bl    Sub080E8DA8               ; 080E8E00
mov   r0,0x1                    ; 080E8E04
pop   {r1}                      ; 080E8E06
bx    r1                        ; 080E8E08
.pool                           ; 080E8E0A

Sub080E8E0C:
; Message command FF 11
push  {lr}                      ; 080E8E0C
mov   r1,0x1                    ; 080E8E0E
bl    Sub080E8DA8               ; 080E8E10
mov   r0,0x1                    ; 080E8E14
pop   {r1}                      ; 080E8E16
bx    r1                        ; 080E8E18
.pool                           ; 080E8E1A

Sub080E8E1C:
; Message command FF 10
mov   r0,0x0                    ; 080E8E1C
bx    lr                        ; 080E8E1E

Sub080E8E20:
; Called by FF 00-04, 0B-0E: erase r2 pixel rows, starting at y=r1
push  {r4,lr}                   ; 080E8E20
mov   r4,r0                     ; 080E8E22
lsl   r1,r1,0x10                ; 080E8E24
lsr   r1,r1,0x10                ; 080E8E26
lsl   r2,r2,0x10                ; 080E8E28
lsr   r2,r2,0x10                ; 080E8E2A
ldr   r0,=0x03007248            ; 080E8E2C  pointer to message buffer
ldr   r0,[r0]                   ; 080E8E2E
mov   r3,0xD                    ; 080E8E30
bl    Sub080FCA88               ; 080E8E32  fill message buffer rows with single color
mov   r0,r4                     ; 080E8E36
bl    Sub080E8600               ; 080E8E38  add 2 to byte to read (030023D0)
pop   {r4}                      ; 080E8E3C
pop   {r0}                      ; 080E8E3E
bx    r0                        ; 080E8E40
.pool                           ; 080E8E42

Sub080E8E48:
; Message command FF 0B-0E: x=0 y=40, fill next 0x10 pixels with color D
push  {r4-r5,lr}                ; 080E8E48
mov   r4,r0                     ; 080E8E4A
mov   r5,0x40                   ; 080E8E4C
mov   r1,0x40                   ; 080E8E4E
mov   r2,0x10                   ; 080E8E50
bl    Sub080E8E20               ; 080E8E52  erase r2 pixel rows, starting at y=r1
mov   r0,0x0                    ; 080E8E56
strh  r0,[r4,0x20]              ; 080E8E58
strh  r5,[r4,0x22]              ; 080E8E5A
pop   {r4-r5}                   ; 080E8E5C
pop   {r1}                      ; 080E8E5E
bx    r1                        ; 080E8E60
.pool                           ; 080E8E62

Sub080E8E64:
; Message command FF 0F; called by FF 0A
push  {lr}                      ; 080E8E64
mov   r2,r0                     ; 080E8E66
mov   r1,0x98                   ; 080E8E68
lsl   r1,r1,0x3                 ; 080E8E6A  r1 = 4C0
ldrh  r0,[r2,0x12]              ; 080E8E6C  030023DE (shuffled button flags, changed this frame)
and   r0,r1                     ; 080E8E6E  check down/A flags
cmp   r0,0x0                    ; 080E8E70
beq   @@Code080E8E7A            ; 080E8E72
ldr   r0,[r2,0x4]               ; 080E8E74 \ if down or A was changed this frame:
add   r0,0x2                    ; 080E8E76 | add 2 to byte to read
str   r0,[r2,0x4]               ; 080E8E78 /
@@Code080E8E7A:
mov   r0,0x1                    ; 080E8E7A
pop   {r1}                      ; 080E8E7C
bx    r1                        ; 080E8E7E

Sub080E8E80:
; Message command FF 0A
push  {r4,lr}                   ; 080E8E80
mov   r4,r0                     ; 080E8E82
mov   r1,0x98                   ; 080E8E84
lsl   r1,r1,0x3                 ; 080E8E86  r1 = 4C0
ldrh  r0,[r4,0x12]              ; 080E8E88  030023DE (shuffled button flags, changed this frame)
and   r0,r1                     ; 080E8E8A  check down/A flags
cmp   r0,0x0                    ; 080E8E8C
beq   @@Code080E8E98            ; 080E8E8E
                                ;          \ if down or A was changed this frame:
mov   r0,0x22                   ; 080E8E90  22: move cursor/advance message text
mov   r1,0x0                    ; 080E8E92
bl    PlayYISound               ; 080E8E94 /
@@Code080E8E98:
mov   r0,r4                     ; 080E8E98
bl    Sub080E8E64               ; 080E8E9A  Message command FF 0F
mov   r0,0x1                    ; 080E8E9E
pop   {r4}                      ; 080E8EA0
pop   {r1}                      ; 080E8EA2
bx    r1                        ; 080E8EA4
.pool                           ; 080E8EA6

Sub080E8EA8:
; Message command FF 09
push  {lr}                      ; 080E8EA8
mov   r1,r0                     ; 080E8EAA
ldrh  r0,[r1,0x22]              ; 080E8EAC  030023EE: character Y position
lsl   r0,r0,0x10                ; 080E8EAE \
mov   r2,0x80                   ; 080E8EB0
lsl   r2,r2,0xD                 ; 080E8EB2  100000
add   r0,r0,r2                  ; 080E8EB4
lsr   r0,r0,0x10                ; 080E8EB6 / add 10 to Y position
cmp   r0,0x3F                   ; 080E8EB8
bls   @@Code080E8EBE            ; 080E8EBA
mov   r0,0x10                   ; 080E8EBC  if Y position >3F, set it to 10
@@Code080E8EBE:
strh  r0,[r1,0x22]              ; 080E8EBE
mov   r0,r1                     ; 080E8EC0
bl    Sub080E8600               ; 080E8EC2  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8EC6
pop   {r1}                      ; 080E8EC8
bx    r1                        ; 080E8ECA

Sub080E8ECC:
; Message command FF 08: x=0 y=30
push  {lr}                      ; 080E8ECC
mov   r1,0x0                    ; 080E8ECE
strh  r1,[r0,0x20]              ; 080E8ED0  030023EC: character X position
mov   r1,0x30                   ; 080E8ED2
strh  r1,[r0,0x22]              ; 080E8ED4  030023EE: character Y position
bl    Sub080E8600               ; 080E8ED6  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8EDA
pop   {r1}                      ; 080E8EDC
bx    r1                        ; 080E8EDE

Sub080E8EE0:
; Message command FF 07: x=0 y=20
push  {lr}                      ; 080E8EE0
mov   r1,0x0                    ; 080E8EE2
strh  r1,[r0,0x20]              ; 080E8EE4  030023EC: character X position
mov   r1,0x20                   ; 080E8EE6
strh  r1,[r0,0x22]              ; 080E8EE8  030023EE: character Y position
bl    Sub080E8600               ; 080E8EEA  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8EEE
pop   {r1}                      ; 080E8EF0
bx    r1                        ; 080E8EF2

Sub080E8EF4:
; Message command FF 06: x=0 y=10
push  {lr}                      ; 080E8EF4
mov   r1,0x0                    ; 080E8EF6
strh  r1,[r0,0x20]              ; 080E8EF8  030023EC: character X position
mov   r1,0x10                   ; 080E8EFA
strh  r1,[r0,0x22]              ; 080E8EFC  030023EE: character Y position
bl    Sub080E8600               ; 080E8EFE  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8F02
pop   {r1}                      ; 080E8F04
bx    r1                        ; 080E8F06

Sub080E8F08:
; Message command FF 05: x=0 y=0
push  {lr}                      ; 080E8F08
mov   r1,0x0                    ; 080E8F0A
strh  r1,[r0,0x20]              ; 080E8F0C  030023EC: character X position
strh  r1,[r0,0x22]              ; 080E8F0E  030023EE: character Y position
bl    Sub080E8600               ; 080E8F10  add 2 to byte to read (030023D0)
mov   r0,0x0                    ; 080E8F14
pop   {r1}                      ; 080E8F16
bx    r1                        ; 080E8F18
.pool                           ; 080E8F1A

Sub080E8F1C:
; Message command FF 04: erase line at y=30
push  {lr}                      ; 080E8F1C
mov   r1,0x30                   ; 080E8F1E
mov   r2,0x10                   ; 080E8F20
bl    Sub080E8E20               ; 080E8F22  erase r2 pixel rows, starting at y=r1
mov   r0,0x0                    ; 080E8F26
pop   {r1}                      ; 080E8F28
bx    r1                        ; 080E8F2A

Sub080E8F2C:
; Message command FF 03: erase line at y=20
push  {lr}                      ; 080E8F2C
mov   r1,0x20                   ; 080E8F2E
mov   r2,0x10                   ; 080E8F30
bl    Sub080E8E20               ; 080E8F32  erase r2 pixel rows, starting at y=r1
mov   r0,0x0                    ; 080E8F36
pop   {r1}                      ; 080E8F38
bx    r1                        ; 080E8F3A

Sub080E8F3C:
; Message command FF 02: erase line at y=10
push  {lr}                      ; 080E8F3C
mov   r1,0x10                   ; 080E8F3E
mov   r2,0x10                   ; 080E8F40
bl    Sub080E8E20               ; 080E8F42  erase r2 pixel rows, starting at y=r1
mov   r0,0x0                    ; 080E8F46
pop   {r1}                      ; 080E8F48
bx    r1                        ; 080E8F4A

Sub080E8F4C:
; Message command FF 01: erase line at y=0
push  {lr}                      ; 080E8F4C
mov   r1,0x0                    ; 080E8F4E
mov   r2,0x10                   ; 080E8F50
bl    Sub080E8E20               ; 080E8F52  erase r2 pixel rows, starting at y=r1
mov   r0,0x0                    ; 080E8F56
pop   {r1}                      ; 080E8F58
bx    r1                        ; 080E8F5A

Sub080E8F5C:
; Message command FF 00
push  {lr}                      ; 080E8F5C
mov   r2,0xA0                   ; 080E8F5E
lsl   r2,r2,0x3                 ; 080E8F60  r2 = 500
mov   r1,0x0                    ; 080E8F62
bl    Sub080E8E20               ; 080E8F64  erase r2 pixel rows, starting at y=r1
mov   r0,0x0                    ; 080E8F68
pop   {r1}                      ; 080E8F6A
bx    r1                        ; 080E8F6C
.pool                           ; 080E8F6E

Sub080E8F70:
; Call message command subroutine
push  {lr}                      ; 080E8F70
ldrh  r1,[r0,0xE]               ; 080E8F72
lsr   r1,r1,0x8                 ; 080E8F74  r1 = command byte
ldr   r2,=CodePtrs081955F4      ; 080E8F76
lsl   r1,r1,0x2                 ; 080E8F78  use as pointer table index
add   r1,r1,r2                  ; 080E8F7A
ldr   r1,[r1]                   ; 080E8F7C  pointer to message command code
bl    Sub_bx_r1                 ; 080E8F7E  bx r1
lsl   r0,r0,0x18                ; 080E8F82
lsr   r0,r0,0x18                ; 080E8F84
pop   {r1}                      ; 080E8F86
bx    r1                        ; 080E8F88
.pool                           ; 080E8F8A

Sub080E8F90:
; Process message character or command
push  {r4-r6,lr}                ; 080E8F90
add   sp,-0x8                   ; 080E8F92
mov   r4,r0                     ; 080E8F94
b     @@Code080E8FCE            ; 080E8F96
@@Code080E8F98:
ldrh  r1,[r4,0x26]              ; 080E8F98
strh  r1,[r4,0x24]              ; 080E8F9A
ldr   r0,[r4,0x4]               ; 080E8F9C  pointer to current message byte
ldrb  r1,[r0]                   ; 080E8F9E  r1 = byte from message data
ldrb  r0,[r0,0x1]               ; 080E8FA0  r2 = next byte from message data
lsl   r0,r0,0x8                 ; 080E8FA2
orr   r1,r0                     ; 080E8FA4  r1 = halfword from message data
strh  r1,[r4,0xE]               ; 080E8FA6
lsl   r1,r1,0x10                ; 080E8FA8 \ convoluted way to check if first byte is FF (command)
mov   r0,0x80                   ; 080E8FAA
lsl   r0,r0,0x9                 ; 080E8FAC  r0 = 10000
add   r1,r1,r0                  ; 080E8FAE
mov   r0,0xFF                   ; 080E8FB0
lsl   r0,r0,0x10                ; 080E8FB2  r0 = FF0000
and   r0,r1                     ; 080E8FB4
cmp   r0,0x0                    ; 080E8FB6 /
bne   @@Code080E8FC2            ; 080E8FB8
mov   r0,r4                     ; 080E8FBA \ runs if byte is FF
bl    Sub080E8F70               ; 080E8FBC  process message command
b     @@Code080E8FCA            ; 080E8FC0 /
@@Code080E8FC2:
mov   r0,r4                     ; 080E8FC2 \ runs if byte is not FF
bl    Sub080E836C               ; 080E8FC4  Display message character
mov   r0,0x0                    ; 080E8FC8 /
@@Code080E8FCA:
cmp   r0,0x0                    ; 080E8FCA
bne   @@Code080E8FDA            ; 080E8FCC
@@Code080E8FCE:
                                ;          \ runs if nonzero return value:
                                ;           wait out multi-frame commands somehow
mov   r1,0x24                   ; 080E8FCE
ldsh  r0,[r4,r1]                ; 080E8FD0
sub   r0,0x1                    ; 080E8FD2
lsl   r0,r0,0x10                ; 080E8FD4
cmp   r0,0x0                    ; 080E8FD6
blt   @@Code080E8F98            ; 080E8FD8 /
@@Code080E8FDA:
ldr   r0,=0x03002200            ; 080E8FDA
ldr   r1,=0x4905                ; 080E8FDC
add   r0,r0,r1                  ; 080E8FDE  03006B05
ldrb  r0,[r0]                   ; 080E8FE0  r0 = game state
cmp   r0,0xD                    ; 080E8FE2  0D: normal gameplay
beq   @@Code080E9010            ; 080E8FE4

                                ; runs if game state is not 0D: copy message graphics to layer 3
ldr   r0,=0x03007248            ; 080E8FE6  pointer to message buffer
ldr   r0,[r0]                   ; 080E8FE8
ldr   r1,=0x06009000            ; 080E8FEA
mov   r2,0x10                   ; 080E8FEC
str   r2,[sp]                   ; 080E8FEE
mov   r2,0x8                    ; 080E8FF0
str   r2,[sp,0x4]               ; 080E8FF2
mov   r2,0x0                    ; 080E8FF4
mov   r3,0x0                    ; 080E8FF6
bl    Sub080FC9E0               ; 080E8FF8
b     @@Code080E9096            ; 080E8FFC  return
.pool                           ; 080E8FFE

@@Code080E9010:
                                ; runs if game state 0D: copy message graphics to sprite graphics
ldr   r6,=0x03007248            ; 080E9010  pointer to message buffer
ldr   r0,[r6]                   ; 080E9012
ldr   r1,=0x06015840            ; 080E9014
mov   r5,0x10                   ; 080E9016
str   r5,[sp]                   ; 080E9018
mov   r4,0x1                    ; 080E901A
str   r4,[sp,0x4]               ; 080E901C
mov   r2,0x0                    ; 080E901E
mov   r3,0x0                    ; 080E9020
bl    Sub080FC9E0               ; 080E9022
ldr   r0,[r6]                   ; 080E9026
ldr   r1,=0x06015C40            ; 080E9028
str   r5,[sp]                   ; 080E902A
str   r4,[sp,0x4]               ; 080E902C
mov   r2,0x0                    ; 080E902E
mov   r3,0x8                    ; 080E9030
bl    Sub080FC9E0               ; 080E9032
ldr   r0,[r6]                   ; 080E9036
ldr   r1,=0x06016040            ; 080E9038
str   r5,[sp]                   ; 080E903A
str   r4,[sp,0x4]               ; 080E903C
mov   r2,0x0                    ; 080E903E
mov   r3,0x10                   ; 080E9040
bl    Sub080FC9E0               ; 080E9042
ldr   r0,[r6]                   ; 080E9046
ldr   r1,=0x06016440            ; 080E9048
str   r5,[sp]                   ; 080E904A
str   r4,[sp,0x4]               ; 080E904C
mov   r2,0x0                    ; 080E904E
mov   r3,0x18                   ; 080E9050
bl    Sub080FC9E0               ; 080E9052
ldr   r0,[r6]                   ; 080E9056
ldr   r1,=0x06016840            ; 080E9058
str   r5,[sp]                   ; 080E905A
str   r4,[sp,0x4]               ; 080E905C
mov   r2,0x0                    ; 080E905E
mov   r3,0x20                   ; 080E9060
bl    Sub080FC9E0               ; 080E9062
ldr   r0,[r6]                   ; 080E9066
ldr   r1,=0x06016C40            ; 080E9068
str   r5,[sp]                   ; 080E906A
str   r4,[sp,0x4]               ; 080E906C
mov   r2,0x0                    ; 080E906E
mov   r3,0x28                   ; 080E9070
bl    Sub080FC9E0               ; 080E9072
ldr   r0,[r6]                   ; 080E9076
ldr   r1,=0x06017040            ; 080E9078
str   r5,[sp]                   ; 080E907A
str   r4,[sp,0x4]               ; 080E907C
mov   r2,0x0                    ; 080E907E
mov   r3,0x30                   ; 080E9080
bl    Sub080FC9E0               ; 080E9082
ldr   r0,[r6]                   ; 080E9086
ldr   r1,=0x06017440            ; 080E9088
str   r5,[sp]                   ; 080E908A
str   r4,[sp,0x4]               ; 080E908C
mov   r2,0x0                    ; 080E908E
mov   r3,0x38                   ; 080E9090
bl    Sub080FC9E0               ; 080E9092
@@Code080E9096:
add   sp,0x8                    ; 080E9096
pop   {r4-r6}                   ; 080E9098
pop   {r0}                      ; 080E909A
bx    r0                        ; 080E909C
.pool                           ; 080E909E

Sub080E90C4:
push  {r4,lr}                   ; 080E90C4
mov   r4,r0                     ; 080E90C6
mov   r0,0x0                    ; 080E90C8
mov   r1,0x1                    ; 080E90CA
strh  r1,[r4,0xA]               ; 080E90CC
strh  r0,[r4,0x1A]              ; 080E90CE
strh  r0,[r4,0x20]              ; 080E90D0
strh  r0,[r4,0x24]              ; 080E90D2
strh  r0,[r4,0x26]              ; 080E90D4
strh  r0,[r4,0x1C]              ; 080E90D6
strh  r0,[r4,0x1E]              ; 080E90D8
mov   r1,r4                     ; 080E90DA
add   r1,0x56                   ; 080E90DC
strh  r0,[r1]                   ; 080E90DE
strh  r0,[r4,0x22]              ; 080E90E0
ldr   r0,[r4]                   ; 080E90E2
str   r0,[r4,0x4]               ; 080E90E4
ldr   r0,=0x03007248            ; 080E90E6  pointer to message buffer
ldr   r0,[r0]                   ; 080E90E8
mov   r1,0xD                    ; 080E90EA
bl    Sub080FCA60               ; 080E90EC
mov   r0,r4                     ; 080E90F0
bl    Sub080E8F90               ; 080E90F2
pop   {r4}                      ; 080E90F6
pop   {r0}                      ; 080E90F8
bx    r0                        ; 080E90FA
.pool                           ; 080E90FC

Sub080E9100:
push  {lr}                      ; 080E9100
ldrh  r1,[r0,0xA]               ; 080E9102
ldr   r2,=CodePtrs081959F4      ; 080E9104
lsl   r1,r1,0x2                 ; 080E9106
add   r1,r1,r2                  ; 080E9108
ldr   r1,[r1]                   ; 080E910A
bl    Sub_bx_r1                 ; 080E910C  bx r1
pop   {r0}                      ; 080E9110
bx    r0                        ; 080E9112
.pool                           ; 080E9114

Sub080E9118:
add   r0,0x5C                   ; 080E9118
ldrh  r1,[r0]                   ; 080E911A
add   r1,0x2                    ; 080E911C
strh  r1,[r0]                   ; 080E911E
bx    lr                        ; 080E9120
.pool                           ; 080E9122

Sub080E9124:
push  {r4-r7,lr}                ; 080E9124
mov   r7,r9                     ; 080E9126
mov   r6,r8                     ; 080E9128
push  {r6-r7}                   ; 080E912A
mov   r4,r0                     ; 080E912C
ldr   r3,=0x03002200            ; 080E912E
ldr   r1,=0x47E8                ; 080E9130
add   r0,r3,r1                  ; 080E9132
ldrh  r2,[r0]                   ; 080E9134
mov   r1,0x7                    ; 080E9136
mov   r0,r1                     ; 080E9138
and   r0,r2                     ; 080E913A
neg   r0,r0                     ; 080E913C
lsl   r0,r0,0x10                ; 080E913E
mov   r2,0xA0                   ; 080E9140
lsl   r2,r2,0x10                ; 080E9142
add   r0,r0,r2                  ; 080E9144
lsr   r7,r0,0x10                ; 080E9146
ldr   r2,=0x47F0                ; 080E9148
add   r0,r3,r2                  ; 080E914A
ldrh  r0,[r0]                   ; 080E914C
and   r1,r0                     ; 080E914E
neg   r1,r1                     ; 080E9150
lsl   r1,r1,0x10                ; 080E9152
mov   r0,0xBE                   ; 080E9154
lsl   r0,r0,0xF                 ; 080E9156
add   r1,r1,r0                  ; 080E9158
lsr   r5,r1,0x10                ; 080E915A
ldrh  r0,[r4,0xE]               ; 080E915C
lsr   r0,r0,0x8                 ; 080E915E
cmp   r0,0xF                    ; 080E9160
beq   @@Code080E91E2            ; 080E9162
cmp   r0,0x51                   ; 080E9164
beq   @@Code080E91E2            ; 080E9166
cmp   r0,0xFF                   ; 080E9168
beq   @@Code080E91E2            ; 080E916A
ldrh  r0,[r4,0xA]               ; 080E916C
cmp   r0,0x1                    ; 080E916E
bhi   @@Code080E91E2            ; 080E9170
ldr   r1,=0x4901                ; 080E9172
add   r0,r3,r1                  ; 080E9174
ldrb  r1,[r0]                   ; 080E9176
mov   r0,0x10                   ; 080E9178
and   r0,r1                     ; 080E917A
cmp   r0,0x0                    ; 080E917C
beq   @@Code080E91E2            ; 080E917E
mov   r0,0xE0                   ; 080E9180
lsl   r0,r0,0x6                 ; 080E9182
add   r2,r3,r0                  ; 080E9184
mov   r1,0x0                    ; 080E9186
mov   r9,r1                     ; 080E9188
strb  r5,[r2]                   ; 080E918A
mov   r3,0xD                    ; 080E918C
neg   r3,r3                     ; 080E918E
mov   r8,r3                     ; 080E9190
mov   r4,0x11                   ; 080E9192
neg   r4,r4                     ; 080E9194
mov   r5,0x21                   ; 080E9196
neg   r5,r5                     ; 080E9198
mov   r6,0x3F                   ; 080E919A
mov   r0,0x40                   ; 080E919C
strb  r0,[r2,0x1]               ; 080E919E
ldr   r1,=0x01FF                ; 080E91A0
mov   r0,r1                     ; 080E91A2
mov   r1,r7                     ; 080E91A4
and   r1,r0                     ; 080E91A6
ldrh  r3,[r2,0x2]               ; 080E91A8
ldr   r0,=0xFFFFFE00            ; 080E91AA
and   r0,r3                     ; 080E91AC
orr   r0,r1                     ; 080E91AE
strh  r0,[r2,0x2]               ; 080E91B0
ldrb  r1,[r2,0x3]               ; 080E91B2
mov   r0,0xF                    ; 080E91B4
neg   r0,r0                     ; 080E91B6
and   r0,r1                     ; 080E91B8
and   r0,r4                     ; 080E91BA
and   r0,r5                     ; 080E91BC
and   r0,r6                     ; 080E91BE
strb  r0,[r2,0x3]               ; 080E91C0
ldrh  r1,[r2,0x4]               ; 080E91C2
ldr   r0,=0xFFFFFC00            ; 080E91C4
and   r0,r1                     ; 080E91C6
mov   r3,0xFD                   ; 080E91C8
lsl   r3,r3,0x2                 ; 080E91CA
mov   r1,r3                     ; 080E91CC
orr   r0,r1                     ; 080E91CE
strh  r0,[r2,0x4]               ; 080E91D0
ldrb  r0,[r2,0x5]               ; 080E91D2
mov   r1,0xF0                   ; 080E91D4
orr   r0,r1                     ; 080E91D6
mov   r1,r9                     ; 080E91D8
strh  r1,[r2,0x6]               ; 080E91DA
mov   r3,r8                     ; 080E91DC
and   r0,r3                     ; 080E91DE
strb  r0,[r2,0x5]               ; 080E91E0
@@Code080E91E2:
pop   {r3-r4}                   ; 080E91E2
mov   r8,r3                     ; 080E91E4
mov   r9,r4                     ; 080E91E6
pop   {r4-r7}                   ; 080E91E8
pop   {r0}                      ; 080E91EA
bx    r0                        ; 080E91EC
.pool                           ; 080E91EE

Sub080E920C:
push  {r4-r7,lr}                ; 080E920C
mov   r12,r0                    ; 080E920E
ldr   r1,=0x03002200            ; 080E9210
ldr   r2,=0x47F0                ; 080E9212
add   r0,r1,r2                  ; 080E9214
ldrh  r4,[r0]                   ; 080E9216
mov   r0,r4                     ; 080E9218
add   r0,0x68                   ; 080E921A
lsl   r0,r0,0x10                ; 080E921C
lsr   r4,r0,0x13                ; 080E921E
sub   r0,r4,0x1                 ; 080E9220
lsl   r3,r0,0x10                ; 080E9222
mov   r2,0x1F                   ; 080E9224
lsr   r7,r3,0x10                ; 080E9226
and   r7,r2                     ; 080E9228
ldr   r4,=0x47E8                ; 080E922A
add   r0,r1,r4                  ; 080E922C
ldrh  r4,[r0]                   ; 080E922E
mov   r0,r4                     ; 080E9230
add   r0,0xA8                   ; 080E9232
lsl   r0,r0,0x10                ; 080E9234
lsr   r4,r0,0x13                ; 080E9236
mov   r0,0x3F                   ; 080E9238
and   r4,r0                     ; 080E923A
lsl   r1,r4,0x10                ; 080E923C
mov   r4,0x1                    ; 080E923E
lsr   r0,r1,0x15                ; 080E9240
neg   r0,r0                     ; 080E9242
asr   r5,r0,0x1F                ; 080E9244
mov   r0,0x80                   ; 080E9246
lsl   r0,r0,0x4                 ; 080E9248
and   r5,r0                     ; 080E924A
lsr   r6,r1,0x10                ; 080E924C
and   r6,r2                     ; 080E924E
ldr   r0,=0x03007240            ; 080E9250  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E9252
mov   r1,0xDE                   ; 080E9254
lsl   r1,r1,0x1                 ; 080E9256
add   r0,r0,r1                  ; 080E9258
ldrb  r0,[r0]                   ; 080E925A
ldr   r2,=0x03002200            ; 080E925C
cmp   r0,0x0                    ; 080E925E
beq   @@Code080E9274            ; 080E9260
lsr   r0,r3,0x15                ; 080E9262
and   r0,r4                     ; 080E9264
cmp   r0,0x0                    ; 080E9266
beq   @@Code080E9274            ; 080E9268
mov   r4,0x80                   ; 080E926A
lsl   r4,r4,0x5                 ; 080E926C
add   r0,r5,r4                  ; 080E926E
lsl   r0,r0,0x10                ; 080E9270
lsr   r5,r0,0x10                ; 080E9272
@@Code080E9274:
mov   r1,r12                    ; 080E9274
ldrh  r0,[r1,0xE]               ; 080E9276
lsr   r4,r0,0x8                 ; 080E9278
cmp   r4,0xF                    ; 080E927A
beq   @@Code080E929C            ; 080E927C
cmp   r4,0x51                   ; 080E927E
beq   @@Code080E929C            ; 080E9280
cmp   r4,0xFF                   ; 080E9282
beq   @@Code080E929C            ; 080E9284
mov   r0,r12                    ; 080E9286
ldrh  r4,[r0,0xA]               ; 080E9288
cmp   r4,0x1                    ; 080E928A
bhi   @@Code080E929C            ; 080E928C
ldr   r1,=0x4901                ; 080E928E
add   r0,r2,r1                  ; 080E9290
ldrb  r1,[r0]                   ; 080E9292
mov   r0,0x10                   ; 080E9294
and   r0,r1                     ; 080E9296
cmp   r0,0x0                    ; 080E9298
beq   @@Code080E92B8            ; 080E929A
@@Code080E929C:
ldr   r4,=0x0251                ; 080E929C
b     @@Code080E92BA            ; 080E929E
.pool                           ; 080E92A0

@@Code080E92B8:
ldr   r4,=0x0245                ; 080E92B8
@@Code080E92BA:
lsl   r0,r6,0x1                 ; 080E92BA
lsl   r1,r7,0x6                 ; 080E92BC
add   r0,r0,r1                  ; 080E92BE
add   r0,r0,r5                  ; 080E92C0
ldr   r2,=0x0600CFFE            ; 080E92C2
add   r1,r0,r2                  ; 080E92C4
strh  r4,[r1]                   ; 080E92C6
ldr   r1,=0x0600D000            ; 080E92C8
add   r0,r0,r1                  ; 080E92CA
add   r1,r4,0x1                 ; 080E92CC
strh  r1,[r0]                   ; 080E92CE
pop   {r4-r7}                   ; 080E92D0
pop   {r0}                      ; 080E92D2
bx    r0                        ; 080E92D4
.pool                           ; 080E92D6

Sub080E92E4:
; Message main?
; starts with 030023CC in r0
push  {r4-r7,lr}                ; 080E92E4
mov   r7,r9                     ; 080E92E6
mov   r6,r8                     ; 080E92E8
push  {r6-r7}                   ; 080E92EA
mov   r7,r0                     ; 080E92EC  r7 = 030023CC
ldrh  r0,[r7,0xC]               ; 080E92EE  r0 = message ID [030023D8]
ldr   r1,=DataPtrs082F5E18      ; 080E92F0
lsl   r0,r0,0x2                 ; 080E92F2  use as table index
add   r0,r0,r1                  ; 080E92F4
ldr   r0,[r0]                   ; 080E92F6  load pointer to message data
str   r0,[r7]                   ; 080E92F8  [030023CC] = pointer to message data
ldr   r0,=0x03002200            ; 080E92FA
mov   r8,r0                     ; 080E92FC
ldr   r0,=0x407E                ; 080E92FE
add   r0,r8                     ; 080E9300  r0 = 0300627E
ldrh  r1,[r0]                   ; 080E9302  r1 = lives
mov   r0,r7                     ; 080E9304
add   r0,0x58                   ; 080E9306  03002424
mov   r2,0x0                    ; 080E9308
mov   r9,r2                     ; 080E930A
strh  r1,[r0]                   ; 080E930C  set 03002424 to lives
mov   r0,r9                     ; 080E930E
strh  r0,[r7,0x10]              ; 080E9310
strh  r0,[r7,0x12]              ; 080E9312
ldrh  r0,[r7,0x8]               ; 080E9314
cmp   r0,0x0                    ; 080E9316
bne   @@Code080E936A            ; 080E9318
ldr   r0,=0x47BE                ; 080E931A \ runs if 030023D4 is 0
add   r0,r8                     ; 080E931C  r0 = 030069BE
ldrh  r6,[r0]                   ; 080E931E  r6 = button flags
mov   r2,0x80                   ; 080E9320  check for bit 7 = down button flag
mov   r1,r2                     ; 080E9322
and   r1,r6                     ; 080E9324
lsl   r1,r1,0x10                ; 080E9326
lsr   r1,r1,0x11                ; 080E9328  bit 6 = down button flag
mov   r4,0x40                   ; 080E932A  check for bit 6 = up button flag
mov   r0,r4                     ; 080E932C
and   r0,r6                     ; 080E932E
lsl   r0,r0,0x1                 ; 080E9330  bit 7 = up button flag
orr   r1,r0                     ; 080E9332  up/down button flags but with bits swapped?
mov   r5,0x30                   ; 080E9334  bits 4-5 = left/right button flags
mov   r0,r5                     ; 080E9336
and   r0,r6                     ; 080E9338
orr   r1,r0                     ; 080E933A  bits 4-7 but with up/down bits swapped?
lsl   r1,r1,0x4                 ; 080E933C
mov   r3,0x1                    ; 080E933E
mov   r0,r3                     ; 080E9340
and   r0,r6                     ; 080E9342
lsl   r0,r0,0x7                 ; 080E9344
orr   r1,r0                     ; 080E9346
strh  r1,[r7,0x10]              ; 080E9348  030023DC = button flags for A and all directions but with bits shuffled around
ldr   r0,=0x47C0                ; 080E934A
add   r0,r8                     ; 080E934C  r0 = 030069C0
ldrh  r0,[r0]                   ; 080E934E  r0 = button flags, changed this frame
and   r2,r0                     ; 080E9350
lsl   r2,r2,0x10                ; 080E9352
lsr   r2,r2,0x11                ; 080E9354
and   r4,r0                     ; 080E9356
lsl   r4,r4,0x1                 ; 080E9358
orr   r2,r4                     ; 080E935A
and   r5,r0                     ; 080E935C
orr   r2,r5                     ; 080E935E
lsl   r2,r2,0x4                 ; 080E9360
and   r3,r0                     ; 080E9362
lsl   r3,r3,0x7                 ; 080E9364
orr   r2,r3                     ; 080E9366
strh  r2,[r7,0x12]              ; 080E9368 /
@@Code080E936A:
mov   r0,r7                     ; 080E936A
bl    Sub080E9100               ; 080E936C
mov   r1,r7                     ; 080E9370
add   r1,0x62                   ; 080E9372
ldrh  r0,[r1]                   ; 080E9374
add   r0,0x1                    ; 080E9376
strh  r0,[r1]                   ; 080E9378
ldr   r0,=0x4905                ; 080E937A
add   r0,r8                     ; 080E937C
ldrb  r0,[r0]                   ; 080E937E
cmp   r0,0xD                    ; 080E9380
bne   @@Code080E93F0            ; 080E9382
ldrh  r0,[r7,0xE]               ; 080E9384
lsr   r0,r0,0x8                 ; 080E9386
cmp   r0,0x52                   ; 080E9388
beq   @@Code080E9392            ; 080E938A
mov   r0,r7                     ; 080E938C
bl    Sub080E9124               ; 080E938E
@@Code080E9392:
ldr   r0,=0x47C0                ; 080E9392
add   r0,r8                     ; 080E9394
ldrh  r1,[r0]                   ; 080E9396
mov   r2,0x2                    ; 080E9398
mov   r0,r2                     ; 080E939A
and   r0,r1                     ; 080E939C
cmp   r0,0x0                    ; 080E939E
beq   @@Code080E948A            ; 080E93A0
ldr   r1,=0x4088                ; 080E93A2
add   r1,r8                     ; 080E93A4
ldr   r0,=0x496D                ; 080E93A6
add   r0,r8                     ; 080E93A8
ldrh  r1,[r1]                   ; 080E93AA
add   r0,r0,r1                  ; 080E93AC
ldrb  r1,[r0]                   ; 080E93AE
mov   r0,0xF                    ; 080E93B0
and   r0,r1                     ; 080E93B2
cmp   r0,0x0                    ; 080E93B4
beq   @@Code080E948A            ; 080E93B6
ldr   r0,=0x4A48                ; 080E93B8
add   r0,r8                     ; 080E93BA
ldrb  r1,[r0]                   ; 080E93BC
mov   r0,r2                     ; 080E93BE
and   r0,r1                     ; 080E93C0
cmp   r0,0x0                    ; 080E93C2
beq   @@Code080E948A            ; 080E93C4
strh  r2,[r7,0xA]               ; 080E93C6
b     @@Code080E948A            ; 080E93C8
.pool                           ; 080E93CA

@@Code080E93F0:
cmp   r0,0x1D                   ; 080E93F0
bne   @@Code080E941C            ; 080E93F2
mov   r0,r7                     ; 080E93F4
bl    Sub080E920C               ; 080E93F6
ldr   r0,=0x47C0                ; 080E93FA
add   r0,r8                     ; 080E93FC
ldrh  r1,[r0]                   ; 080E93FE
mov   r2,0x2                    ; 080E9400
mov   r0,r2                     ; 080E9402
and   r0,r1                     ; 080E9404
cmp   r0,0x0                    ; 080E9406
beq   @@Code080E948A            ; 080E9408
strh  r2,[r7,0xA]               ; 080E940A
mov   r0,r7                     ; 080E940C
add   r0,0x56                   ; 080E940E
mov   r1,r9                     ; 080E9410
strh  r1,[r0]                   ; 080E9412
b     @@Code080E948A            ; 080E9414
.pool                           ; 080E9416

@@Code080E941C:
cmp   r0,0x22                   ; 080E941C
bne   @@Code080E9484            ; 080E941E
mov   r0,r7                     ; 080E9420
bl    Sub080E920C               ; 080E9422
ldr   r0,=0x47C0                ; 080E9426
add   r0,r8                     ; 080E9428
ldrh  r1,[r0]                   ; 080E942A
mov   r3,0x2                    ; 080E942C
mov   r0,r3                     ; 080E942E
and   r0,r1                     ; 080E9430
cmp   r0,0x0                    ; 080E9432
beq   @@Code080E948A            ; 080E9434
ldr   r0,=0x4A09                ; 080E9436
add   r0,r8                     ; 080E9438
ldrb  r2,[r0]                   ; 080E943A
cmp   r2,0x0                    ; 080E943C
beq   @@Code080E945A            ; 080E943E
ldr   r1,=0x4088                ; 080E9440
add   r1,r8                     ; 080E9442
ldr   r0,=0x496D                ; 080E9444
add   r0,r8                     ; 080E9446
ldrh  r1,[r1]                   ; 080E9448
add   r0,r0,r1                  ; 080E944A
ldrb  r1,[r0]                   ; 080E944C
mov   r0,0xF                    ; 080E944E
and   r0,r1                     ; 080E9450
cmp   r0,0x0                    ; 080E9452
beq   @@Code080E9470            ; 080E9454
cmp   r2,0xFF                   ; 080E9456
bne   @@Code080E948A            ; 080E9458
@@Code080E945A:
strh  r3,[r7,0xA]               ; 080E945A
b     @@Code080E948A            ; 080E945C
.pool                           ; 080E945E

@@Code080E9470:
cmp   r2,0xFF                   ; 080E9470
bne   @@Code080E948A            ; 080E9472
ldr   r0,=0x48E6                ; 080E9474
add   r0,r8                     ; 080E9476
ldrh  r0,[r0]                   ; 080E9478
cmp   r0,0x0                    ; 080E947A
beq   @@Code080E948A            ; 080E947C
b     @@Code080E945A            ; 080E947E
.pool                           ; 080E9480

@@Code080E9484:
mov   r0,r7                     ; 080E9484
bl    Sub080E920C               ; 080E9486
@@Code080E948A:
pop   {r3-r4}                   ; 080E948A
mov   r8,r3                     ; 080E948C
mov   r9,r4                     ; 080E948E
pop   {r4-r7}                   ; 080E9490
pop   {r0}                      ; 080E9492
bx    r0                        ; 080E9494
.pool                           ; 080E9496

Sub080E9498:
push  {r4-r7,lr}                ; 080E9498
mov   r7,r10                    ; 080E949A
mov   r6,r9                     ; 080E949C
mov   r5,r8                     ; 080E949E
push  {r5-r7}                   ; 080E94A0
add   sp,-0x4                   ; 080E94A2
ldr   r2,=0x03002200            ; 080E94A4
ldr   r1,=0x4905                ; 080E94A6  03006B05
add   r0,r2,r1                  ; 080E94A8
ldrb  r0,[r0]                   ; 080E94AA  Game state
cmp   r0,0xD                    ; 080E94AC  0D: Normal gameplay
bne   @@Code080E94B2            ; 080E94AE
b     @@Code080E960A            ; 080E94B0
@@Code080E94B2:                 ;           Runs if game state != 0D
ldr   r0,=0x03007240            ; 080E94B2  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 080E94B4
mov   r3,0xDE                   ; 080E94B6
lsl   r3,r3,0x1                 ; 080E94B8
add   r0,r0,r3                  ; 080E94BA
ldrb  r0,[r0]                   ; 080E94BC
cmp   r0,0x0                    ; 080E94BE
beq   @@Code080E9584            ; 080E94C0
ldr   r4,=0x47F0                ; 080E94C2
add   r0,r2,r4                  ; 080E94C4
ldrh  r0,[r0]                   ; 080E94C6
add   r0,0x18                   ; 080E94C8
lsl   r0,r0,0x10                ; 080E94CA
lsr   r0,r0,0x13                ; 080E94CC
mov   r9,r0                     ; 080E94CE
mov   r1,0x3F                   ; 080E94D0
and   r0,r1                     ; 080E94D2
mov   r9,r0                     ; 080E94D4
ldr   r3,=0x47E8                ; 080E94D6
add   r0,r2,r3                  ; 080E94D8
ldrh  r0,[r0]                   ; 080E94DA
add   r0,0x28                   ; 080E94DC
lsl   r0,r0,0x10                ; 080E94DE
lsr   r0,r0,0x13                ; 080E94E0
and   r0,r1                     ; 080E94E2
mov   r4,0x0                    ; 080E94E4
mov   r12,r4                    ; 080E94E6
mov   r1,0x0                    ; 080E94E8
lsl   r0,r0,0x10                ; 080E94EA
str   r0,[sp]                   ; 080E94EC
@@Code080E94EE:
mov   r7,0x0                    ; 080E94EE
mov   r2,r9                     ; 080E94F0
add   r0,r2,r1                  ; 080E94F2
add   r1,0x1                    ; 080E94F4
mov   r8,r1                     ; 080E94F6
lsl   r0,r0,0x10                ; 080E94F8
mov   r10,r0                    ; 080E94FA
ldr   r2,[sp]                   ; 080E94FC
mov   r3,r12                    ; 080E94FE
lsl   r0,r3,0x1                 ; 080E9500
ldr   r4,=Data082F8ECC          ; 080E9502
add   r5,r0,r4                  ; 080E9504
@@Code080E9506:
lsr   r3,r2,0x10                ; 080E9506
mov   r6,0x0                    ; 080E9508
lsr   r0,r2,0x15                ; 080E950A
mov   r1,0x1                    ; 080E950C
and   r0,r1                     ; 080E950E
cmp   r0,0x0                    ; 080E9510
beq   @@Code080E9518            ; 080E9512
mov   r6,0x80                   ; 080E9514
lsl   r6,r6,0x4                 ; 080E9516
@@Code080E9518:
mov   r4,0x1F                   ; 080E9518
and   r3,r4                     ; 080E951A
ldr   r0,=0xFFFF0000            ; 080E951C
add   r0,r10                    ; 080E951E
lsr   r1,r0,0x10                ; 080E9520
lsr   r0,r0,0x15                ; 080E9522
mov   r4,0x1                    ; 080E9524
and   r0,r4                     ; 080E9526
cmp   r0,0x0                    ; 080E9528
beq   @@Code080E9536            ; 080E952A
mov   r0,0x80                   ; 080E952C
lsl   r0,r0,0x5                 ; 080E952E
add   r6,r6,r0                  ; 080E9530
lsl   r0,r6,0x10                ; 080E9532
lsr   r6,r0,0x10                ; 080E9534
@@Code080E9536:
mov   r4,0x1F                   ; 080E9536
and   r1,r4                     ; 080E9538
lsl   r0,r3,0x1                 ; 080E953A
lsl   r1,r1,0x6                 ; 080E953C
add   r0,r0,r1                  ; 080E953E
add   r0,r0,r6                  ; 080E9540
ldr   r1,=0x0600D000            ; 080E9542
add   r0,r0,r1                  ; 080E9544
ldrh  r1,[r5]                   ; 080E9546
strh  r1,[r0]                   ; 080E9548
add   r5,0x2                    ; 080E954A
mov   r3,0x1                    ; 080E954C
add   r12,r3                    ; 080E954E
mov   r4,0x80                   ; 080E9550
lsl   r4,r4,0x9                 ; 080E9552
add   r2,r2,r4                  ; 080E9554
add   r7,0x1                    ; 080E9556
cmp   r7,0x13                   ; 080E9558
bls   @@Code080E9506            ; 080E955A
mov   r1,r8                     ; 080E955C
cmp   r1,0xB                    ; 080E955E
bls   @@Code080E94EE            ; 080E9560
b     @@Code080E960A            ; 080E9562
.pool                           ; 080E9564

@@Code080E9584:
ldr   r1,=0x47F0                ; 080E9584
add   r0,r2,r1                  ; 080E9586
ldrh  r0,[r0]                   ; 080E9588
add   r0,0x18                   ; 080E958A
lsl   r0,r0,0x10                ; 080E958C
lsr   r0,r0,0x13                ; 080E958E
sub   r0,0x1                    ; 080E9590
mov   r9,r0                     ; 080E9592
mov   r1,0x3F                   ; 080E9594
mov   r3,r9                     ; 080E9596
and   r3,r1                     ; 080E9598
mov   r9,r3                     ; 080E959A
ldr   r4,=0x47E8                ; 080E959C
add   r0,r2,r4                  ; 080E959E
ldrh  r0,[r0]                   ; 080E95A0
add   r0,0x28                   ; 080E95A2
lsl   r0,r0,0x10                ; 080E95A4
lsr   r0,r0,0x13                ; 080E95A6
and   r0,r1                     ; 080E95A8
mov   r1,0x0                    ; 080E95AA
mov   r12,r1                    ; 080E95AC
lsl   r0,r0,0x10                ; 080E95AE
mov   r10,r0                    ; 080E95B0
@@Code080E95B2:
mov   r7,0x0                    ; 080E95B2
mov   r2,r9                     ; 080E95B4
add   r0,r2,r1                  ; 080E95B6
add   r1,0x1                    ; 080E95B8
mov   r8,r1                     ; 080E95BA
mov   r3,0x1F                   ; 080E95BC
and   r0,r3                     ; 080E95BE
lsl   r6,r0,0x6                 ; 080E95C0
mov   r4,r10                    ; 080E95C2
mov   r1,r12                    ; 080E95C4
lsl   r0,r1,0x1                 ; 080E95C6
ldr   r2,=Data082F8ECC          ; 080E95C8
add   r5,r0,r2                  ; 080E95CA
@@Code080E95CC:
lsr   r3,r4,0x10                ; 080E95CC
lsr   r1,r4,0x15                ; 080E95CE
mov   r0,0x1                    ; 080E95D0
and   r1,r0                     ; 080E95D2
neg   r2,r1                     ; 080E95D4
orr   r2,r1                     ; 080E95D6
asr   r2,r2,0x1F                ; 080E95D8
mov   r0,0x80                   ; 080E95DA
lsl   r0,r0,0x4                 ; 080E95DC
and   r2,r0                     ; 080E95DE
mov   r0,0x1F                   ; 080E95E0
and   r3,r0                     ; 080E95E2
lsl   r0,r3,0x1                 ; 080E95E4
add   r0,r0,r6                  ; 080E95E6
add   r0,r0,r2                  ; 080E95E8
ldr   r3,=0x0600D000            ; 080E95EA
add   r0,r0,r3                  ; 080E95EC
ldrh  r1,[r5]                   ; 080E95EE
strh  r1,[r0]                   ; 080E95F0
add   r5,0x2                    ; 080E95F2
mov   r0,0x1                    ; 080E95F4
add   r12,r0                    ; 080E95F6
mov   r1,0x80                   ; 080E95F8
lsl   r1,r1,0x9                 ; 080E95FA
add   r4,r4,r1                  ; 080E95FC
add   r7,0x1                    ; 080E95FE
cmp   r7,0x13                   ; 080E9600
bls   @@Code080E95CC            ; 080E9602
mov   r1,r8                     ; 080E9604
cmp   r1,0xB                    ; 080E9606
bls   @@Code080E95B2            ; 080E9608
@@Code080E960A:
add   sp,0x4                    ; 080E960A
pop   {r3-r5}                   ; 080E960C
mov   r8,r3                     ; 080E960E
mov   r9,r4                     ; 080E9610
mov   r10,r5                    ; 080E9612
pop   {r4-r7}                   ; 080E9614
pop   {r0}                      ; 080E9616
bx    r0                        ; 080E9618
.pool                           ; 080E961A

Sub080E962C:
push  {r4-r5,lr}                ; 080E962C
add   sp,-0x20                  ; 080E962E
ldr   r0,=0x03002200            ; 080E9630
ldr   r1,=0x4905                ; 080E9632
add   r0,r0,r1                  ; 080E9634  r0 = 03006B05
ldrb  r0,[r0]                   ; 080E9636  r0 = game state
sub   r0,0xB                    ; 080E9638
lsl   r0,r0,0x18                ; 080E963A
lsr   r0,r0,0x18                ; 080E963C
cmp   r0,0x2                    ; 080E963E
bls   @@Code080E9644            ; 080E9640
b     @@Code080E9756            ; 080E9642  if game state is not in range 0B-0D, return
@@Code080E9644:
ldr   r0,=Data082F99A8          ; 080E9644  Message border top edge graphics
ldr   r1,=0x06015000            ; 080E9646
bl    swi_LZ77_VRAM             ; 080E9648  LZ77 decompress (VRAM)
ldr   r0,=Data082F9A6C          ; 080E964C  Message border middle row graphics
ldr   r4,=0x0201FC00            ; 080E964E  decompressed graphics buffer
mov   r1,r4                     ; 080E9650
bl    swi_LZ77_WRAM             ; 080E9652  LZ77 decompress (WRAM)
                                ; copy buffered message border single row to fill in the main body of the message
ldr   r1,=0x06015400            ; 080E9656
mov   r0,r4                     ; 080E9658
mov   r2,0xA0                   ; 080E965A
bl    swi_MemoryCopy32          ; 080E965C  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06015800            ; 080E9660
mov   r0,r4                     ; 080E9662
mov   r2,0xA0                   ; 080E9664
bl    swi_MemoryCopy32          ; 080E9666  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06015C00            ; 080E966A
mov   r0,r4                     ; 080E966C
mov   r2,0xA0                   ; 080E966E
bl    swi_MemoryCopy32          ; 080E9670  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06016000            ; 080E9674
mov   r0,r4                     ; 080E9676
mov   r2,0xA0                   ; 080E9678
bl    swi_MemoryCopy32          ; 080E967A  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06016400            ; 080E967E
mov   r0,r4                     ; 080E9680
mov   r2,0xA0                   ; 080E9682
bl    swi_MemoryCopy32          ; 080E9684  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06016800            ; 080E9688
mov   r0,r4                     ; 080E968A
mov   r2,0xA0                   ; 080E968C
bl    swi_MemoryCopy32          ; 080E968E  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06016C00            ; 080E9692
mov   r0,r4                     ; 080E9694
mov   r2,0xA0                   ; 080E9696
bl    swi_MemoryCopy32          ; 080E9698  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06017000            ; 080E969C
mov   r0,r4                     ; 080E969E
mov   r2,0xA0                   ; 080E96A0
bl    swi_MemoryCopy32          ; 080E96A2  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06017400            ; 080E96A6
mov   r0,r4                     ; 080E96A8
mov   r2,0xA0                   ; 080E96AA
bl    swi_MemoryCopy32          ; 080E96AC  Memory copy/fill, 32-byte blocks
ldr   r1,=0x06017800            ; 080E96B0
mov   r0,r4                     ; 080E96B2
mov   r2,0xA0                   ; 080E96B4
bl    swi_MemoryCopy32          ; 080E96B6  Memory copy/fill, 32-byte blocks
ldr   r0,=Data082F9B18          ; 080E96BA  Message border bottom edge graphics
ldr   r1,=0x06017C00            ; 080E96BC
bl    swi_LZ77_VRAM             ; 080E96BE  LZ77 decompress (VRAM)

                                ; fill in more of sprite VRAM (outside the message) with black
ldr   r4,=0x11111111            ; 080E96C2  all color 1 (black)
str   r4,[sp]                   ; 080E96C4
ldr   r1,=0x06016300            ; 080E96C6
ldr   r5,=0x01000040            ; 080E96C8
mov   r0,sp                     ; 080E96CA
mov   r2,r5                     ; 080E96CC
bl    swi_MemoryCopy32          ; 080E96CE  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x4]               ; 080E96D2
add   r0,sp,0x4                 ; 080E96D4
ldr   r1,=0x06016700            ; 080E96D6
mov   r2,r5                     ; 080E96D8
bl    swi_MemoryCopy32          ; 080E96DA  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x8]               ; 080E96DE
add   r0,sp,0x8                 ; 080E96E0
ldr   r1,=0x06016B00            ; 080E96E2
mov   r2,r5                     ; 080E96E4
bl    swi_MemoryCopy32          ; 080E96E6  Memory copy/fill, 32-byte blocks
str   r4,[sp,0xC]               ; 080E96EA
add   r0,sp,0xC                 ; 080E96EC
ldr   r1,=0x06016F00            ; 080E96EE
mov   r2,r5                     ; 080E96F0
bl    swi_MemoryCopy32          ; 080E96F2  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x10]              ; 080E96F6
add   r0,sp,0x10                ; 080E96F8
ldr   r1,=0x06017300            ; 080E96FA
mov   r2,r5                     ; 080E96FC
bl    swi_MemoryCopy32          ; 080E96FE  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x14]              ; 080E9702
add   r0,sp,0x14                ; 080E9704
ldr   r1,=0x06017700            ; 080E9706
mov   r2,r5                     ; 080E9708
bl    swi_MemoryCopy32          ; 080E970A  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x18]              ; 080E970E
add   r0,sp,0x18                ; 080E9710
ldr   r1,=0x06017B00            ; 080E9712
mov   r2,r5                     ; 080E9714
bl    swi_MemoryCopy32          ; 080E9716  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x1C]              ; 080E971A
add   r0,sp,0x1C                ; 080E971C
ldr   r1,=0x06017F00            ; 080E971E
mov   r2,r5                     ; 080E9720
bl    swi_MemoryCopy32          ; 080E9722  Memory copy/fill, 32-byte blocks

ldr   r0,=Data08195A00          ; 080E9726  message palette
ldr   r4,=0x020107F0            ; 080E9728  write to colors 1F7-1FF
mov   r1,r4                     ; 080E972A
mov   r2,0x8                    ; 080E972C
bl    swi_MemoryCopy4or2        ; 080E972E  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020107E2            ; 080E9732
mov   r0,0x0                    ; 080E9734
strh  r0,[r1]                   ; 080E9736  set color 1F2 to black
ldr   r1,=0x02010BF0            ; 080E9738
mov   r0,r4                     ; 080E973A
mov   r2,0x8                    ; 080E973C
bl    swi_MemoryCopy4or2        ; 080E973E  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010FF0            ; 080E9742
mov   r0,r4                     ; 080E9744
mov   r2,0x8                    ; 080E9746
bl    swi_MemoryCopy4or2        ; 080E9748  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x050003F0            ; 080E974C
mov   r0,r4                     ; 080E974E
mov   r2,0x8                    ; 080E9750
bl    swi_MemoryCopy4or2        ; 080E9752  Memory copy/fill, 4- or 2-byte blocks
@@Code080E9756:
add   sp,0x20                   ; 080E9756
pop   {r4-r5}                   ; 080E9758
pop   {r0}                      ; 080E975A
bx    r0                        ; 080E975C
.pool                           ; 080E975E
