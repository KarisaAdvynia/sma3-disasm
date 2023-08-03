SlimeDrop_Init:
; sprite 132 init
add   r0,0x6E                       ; 080BC190
mov   r1,0x5                        ; 080BC192
strh  r1,[r0]                       ; 080BC194  start in substate 5
bx    lr                            ; 080BC196

SlimeDrop_Main:
; sprite 132 main
push  {r4-r5,lr}                    ; 080BC198
mov   r4,r0                         ; 080BC19A
ldrh  r0,[r4,0x24]                  ; 080BC19C
cmp   r0,0x8                        ; 080BC19E
beq   @@Code080BC1C0                ; 080BC1A0
@@Code080BC1A2:
ldr   r2,=0x03006D80                ; 080BC1A2
ldrh  r1,[r2,0x30]                  ; 080BC1A4
cmp   r1,0x2                        ; 080BC1A6
bne   @@Code080BC1F2                ; 080BC1A8
mov   r0,r4                         ; 080BC1AA
add   r0,0x72                       ; 080BC1AC
ldrh  r0,[r0]                       ; 080BC1AE
cmp   r1,r0                         ; 080BC1B0
bne   @@Code080BC1F2                ; 080BC1B2
mov   r0,0x0                        ; 080BC1B4
strh  r0,[r2,0x30]                  ; 080BC1B6
b     @@Code080BC1F2                ; 080BC1B8
.pool                               ; 080BC1BA

@@Code080BC1C0:
mov   r0,r4                         ; 080BC1C0
add   r0,0x60                       ; 080BC1C2
ldrh  r2,[r0]                       ; 080BC1C4
cmp   r2,0x0                        ; 080BC1C6
beq   @@Code080BC1D0                ; 080BC1C8
mov   r0,0x0                        ; 080BC1CA
strh  r0,[r4,0x28]                  ; 080BC1CC
b     @@Code080BC1A2                ; 080BC1CE
@@Code080BC1D0:
mov   r0,r4                         ; 080BC1D0
add   r0,0x5E                       ; 080BC1D2
ldrh  r0,[r0]                       ; 080BC1D4
cmp   r0,0x0                        ; 080BC1D6
beq   @@Code080BC1F2                ; 080BC1D8
mov   r1,r4                         ; 080BC1DA
add   r1,0x94                       ; 080BC1DC
mov   r0,0x2                        ; 080BC1DE
strb  r0,[r1]                       ; 080BC1E0
strh  r2,[r4,0x38]                  ; 080BC1E2
sub   r1,0x2E                       ; 080BC1E4
ldr   r0,=0xFFFF                    ; 080BC1E6
strh  r0,[r1]                       ; 080BC1E8
sub   r1,0x4                        ; 080BC1EA
mov   r0,0x1                        ; 080BC1EC
neg   r0,r0                         ; 080BC1EE
strh  r0,[r1]                       ; 080BC1F0
@@Code080BC1F2:
mov   r0,r4                         ; 080BC1F2
bl    Sub0804BEB8                   ; 080BC1F4
cmp   r0,0x0                        ; 080BC1F8
bne   @@Return                      ; 080BC1FA
ldr   r1,=SlimeDrop_SubstatePtrs    ; 080BC1FC
mov   r5,r4                         ; 080BC1FE
add   r5,0x6E                       ; 080BC200
ldrh  r0,[r5]                       ; 080BC202  +6E: sprite substate
lsl   r0,r0,0x2                     ; 080BC204
add   r0,r0,r1                      ; 080BC206
ldr   r1,[r0]                       ; 080BC208
mov   r0,r4                         ; 080BC20A
bl    Sub_bx_r1                     ; 080BC20C
ldrh  r1,[r5]                       ; 080BC210
mov   r2,0x0                        ; 080BC212
ldsh  r0,[r5,r2]                    ; 080BC214
cmp   r0,0x0                        ; 080BC216
bge   @@Code080BC230                ; 080BC218
ldr   r0,=0x7FFF                    ; 080BC21A
and   r0,r1                         ; 080BC21C
strh  r0,[r5]                       ; 080BC21E
b     @@Return                      ; 080BC220
.pool                               ; 080BC222

@@Code080BC230:
mov   r0,r4                         ; 080BC230
bl    Sub080BC258                   ; 080BC232
mov   r0,r4                         ; 080BC236
add   r0,0x46                       ; 080BC238
ldrh  r0,[r0]                       ; 080BC23A
cmp   r0,0x0                        ; 080BC23C
bne   @@Code080BC24C                ; 080BC23E
ldrh  r1,[r4,0x26]                  ; 080BC240
mov   r2,0xC0                       ; 080BC242
lsl   r2,r2,0x3                     ; 080BC244
mov   r0,r2                         ; 080BC246
orr   r0,r1                         ; 080BC248
strh  r0,[r4,0x26]                  ; 080BC24A
@@Code080BC24C:
mov   r0,r4                         ; 080BC24C
bl    Sub0804BAA4                   ; 080BC24E
@@Return:
pop   {r4-r5}                       ; 080BC252
pop   {r0}                          ; 080BC254
bx    r0                            ; 080BC256

Sub080BC258:
push  {r4-r6,lr}                    ; 080BC258
mov   r12,r0                        ; 080BC25A
add   r0,0x6A                       ; 080BC25C
ldrh  r4,[r0]                       ; 080BC25E
cmp   r4,0x0                        ; 080BC260
bne   @@Return                      ; 080BC262
add   r0,0x39                       ; 080BC264
ldrb  r0,[r0]                       ; 080BC266
lsl   r0,r0,0x18                    ; 080BC268
asr   r0,r0,0x18                    ; 080BC26A
cmp   r0,0x0                        ; 080BC26C
bge   @@Code080BC31C                ; 080BC26E
mov   r6,r12                        ; 080BC270
add   r6,0x6E                       ; 080BC272
ldrh  r0,[r6]                       ; 080BC274
sub   r0,0x3                        ; 080BC276
lsl   r0,r0,0x10                    ; 080BC278
lsr   r0,r0,0x10                    ; 080BC27A
cmp   r0,0x1                        ; 080BC27C
bls   @@Return                      ; 080BC27E
mov   r0,r12                        ; 080BC280
add   r0,0x54                       ; 080BC282
ldr   r3,=0x03006D80                ; 080BC284
mov   r1,r3                         ; 080BC286
add   r1,0x9E                       ; 080BC288
ldrh  r0,[r0]                       ; 080BC28A
ldrh  r1,[r1]                       ; 080BC28C
sub   r0,r0,r1                      ; 080BC28E
mov   r1,r12                        ; 080BC290
add   r1,0x50                       ; 080BC292
ldrh  r1,[r1]                       ; 080BC294
sub   r0,r0,r1                      ; 080BC296
lsl   r0,r0,0x10                    ; 080BC298
ldr   r1,=0xFFF70000                ; 080BC29A
cmp   r0,r1                         ; 080BC29C
bhi   @@Code080BC2B0                ; 080BC29E
@@Code080BC2A0:
mov   r0,r12                        ; 080BC2A0
bl    Sub080DEE74                   ; 080BC2A2
b     @@Return                      ; 080BC2A6
.pool                               ; 080BC2A8

@@Code080BC2B0:
ldr   r0,[r3,0xC]                   ; 080BC2B0
cmp   r0,0x0                        ; 080BC2B2
blt   @@Return                      ; 080BC2B4
ldrh  r0,[r3,0x3E]                  ; 080BC2B6
cmp   r0,0x0                        ; 080BC2B8
beq   @@Code080BC2A0                ; 080BC2BA
mov   r0,r12                        ; 080BC2BC
ldrh  r1,[r0,0x3E]                  ; 080BC2BE
mov   r0,0x1                        ; 080BC2C0
and   r0,r1                         ; 080BC2C2
cmp   r0,0x0                        ; 080BC2C4
beq   @@Return                      ; 080BC2C6
mov   r0,0xE9                       ; 080BC2C8
lsl   r0,r0,0x1                     ; 080BC2CA
add   r1,r3,r0                      ; 080BC2CC
ldrh  r0,[r1]                       ; 080BC2CE
cmp   r0,0x1F                       ; 080BC2D0
bls   @@Code080BC2D8                ; 080BC2D2
mov   r0,0x20                       ; 080BC2D4
strh  r0,[r1]                       ; 080BC2D6
@@Code080BC2D8:
mov   r1,r3                         ; 080BC2D8
add   r1,0xFC                       ; 080BC2DA
mov   r5,r3                         ; 080BC2DC
add   r5,0xFE                       ; 080BC2DE
mov   r0,r3                         ; 080BC2E0
add   r0,0x52                       ; 080BC2E2
strh  r4,[r0]                       ; 080BC2E4
mov   r2,r12                        ; 080BC2E6
add   r2,0x72                       ; 080BC2E8
mov   r0,0x2                        ; 080BC2EA
strh  r0,[r2]                       ; 080BC2EC
strh  r0,[r3,0x30]                  ; 080BC2EE
strh  r4,[r1]                       ; 080BC2F0
strh  r4,[r5]                       ; 080BC2F2
ldr   r0,=0x7C60                    ; 080BC2F4
mov   r1,r12                        ; 080BC2F6
strh  r0,[r1,0x26]                  ; 080BC2F8
str   r4,[r1,0x8]                   ; 080BC2FA
mov   r0,r12                        ; 080BC2FC
add   r0,0x40                       ; 080BC2FE
strh  r4,[r0]                       ; 080BC300
str   r4,[r3,0xC]                   ; 080BC302
str   r4,[r3,0x28]                  ; 080BC304
str   r4,[r3,0x8]                   ; 080BC306
mov   r1,0x4                        ; 080BC308
mov   r0,r12                        ; 080BC30A
strh  r1,[r0,0x38]                  ; 080BC30C
add   r0,0x44                       ; 080BC30E
strh  r1,[r0]                       ; 080BC310
mov   r0,0x3                        ; 080BC312
strh  r0,[r6]                       ; 080BC314
b     @@Return                      ; 080BC316
.pool                               ; 080BC318

@@Code080BC31C:
mov   r0,r12                        ; 080BC31C
bl    Sub080DF2CC                   ; 080BC31E
@@Return:
pop   {r4-r6}                       ; 080BC322
pop   {r0}                          ; 080BC324
bx    r0                            ; 080BC326

Sub080BC328:
push  {r4-r5,lr}                    ; 080BC328
mov   r3,r0                         ; 080BC32A
mov   r5,r3                         ; 080BC32C
add   r5,0x44                       ; 080BC32E
ldrh  r4,[r5]                       ; 080BC330
cmp   r4,0x0                        ; 080BC332
bne   @@Return                      ; 080BC334
mov   r2,r3                         ; 080BC336
add   r2,0x40                       ; 080BC338
ldrh  r0,[r2]                       ; 080BC33A
add   r0,0x1                        ; 080BC33C
strh  r0,[r2]                       ; 080BC33E
lsl   r0,r0,0x18                    ; 080BC340
lsr   r1,r0,0x18                    ; 080BC342
cmp   r1,0x5                        ; 080BC344
bne   @@Code080BC35C                ; 080BC346
mov   r0,0x40                       ; 080BC348
str   r0,[r3,0x14]                  ; 080BC34A
strh  r4,[r3,0x38]                  ; 080BC34C
strh  r4,[r2]                       ; 080BC34E
mov   r1,r3                         ; 080BC350
add   r1,0x6E                       ; 080BC352
ldrh  r0,[r1]                       ; 080BC354
add   r0,0x1                        ; 080BC356
strh  r0,[r1]                       ; 080BC358
b     @@Return                      ; 080BC35A
@@Code080BC35C:
ldr   r0,=Data08179684              ; 080BC35C
add   r0,r1,r0                      ; 080BC35E
ldrb  r0,[r0]                       ; 080BC360
strh  r0,[r3,0x38]                  ; 080BC362
ldr   r0,=Data08179689              ; 080BC364
add   r0,r1,r0                      ; 080BC366
ldrb  r0,[r0]                       ; 080BC368
strh  r0,[r5]                       ; 080BC36A
@@Return:
pop   {r4-r5}                       ; 080BC36C
pop   {r0}                          ; 080BC36E
bx    r0                            ; 080BC370
.pool                               ; 080BC372

Sub080BC37C:
push  {r4-r5,lr}                    ; 080BC37C
mov   r2,r0                         ; 080BC37E
ldrh  r1,[r2,0x3E]                  ; 080BC380
mov   r0,0x1                        ; 080BC382
and   r0,r1                         ; 080BC384
cmp   r0,0x0                        ; 080BC386
beq   @@Return                      ; 080BC388
mov   r5,r2                         ; 080BC38A
add   r5,0x44                       ; 080BC38C
ldrh  r0,[r5]                       ; 080BC38E
cmp   r0,0x0                        ; 080BC390
bne   @@Return                      ; 080BC392
mov   r4,r2                         ; 080BC394
add   r4,0x40                       ; 080BC396
ldrh  r0,[r4]                       ; 080BC398
add   r0,0x1                        ; 080BC39A
strh  r0,[r4]                       ; 080BC39C
lsl   r0,r0,0x18                    ; 080BC39E
lsr   r1,r0,0x18                    ; 080BC3A0
ldr   r0,=Data0817968E              ; 080BC3A2
add   r0,r1,r0                      ; 080BC3A4
ldrb  r0,[r0]                       ; 080BC3A6
strh  r0,[r2,0x38]                  ; 080BC3A8
ldr   r0,=Data08179698              ; 080BC3AA
add   r0,r1,r0                      ; 080BC3AC
ldrb  r3,[r0]                       ; 080BC3AE
strh  r3,[r5]                       ; 080BC3B0
cmp   r1,0x2                        ; 080BC3B2
bne   @@Code080BC3E8                ; 080BC3B4
ldr   r1,=0x03002200                ; 080BC3B6
ldr   r0,[r2]                       ; 080BC3B8
asr   r0,r0,0x8                     ; 080BC3BA
ldr   r3,=0x47E4                    ; 080BC3BC
add   r2,r1,r3                      ; 080BC3BE
ldrh  r2,[r2]                       ; 080BC3C0
sub   r0,r0,r2                      ; 080BC3C2
ldr   r2,=0x4058                    ; 080BC3C4
add   r1,r1,r2                      ; 080BC3C6
strh  r0,[r1]                       ; 080BC3C8
mov   r0,0x15                       ; 080BC3CA
bl    PlayYISound                   ; 080BC3CC
b     @@Return                      ; 080BC3D0
.pool                               ; 080BC3D2

@@Code080BC3E8:
cmp   r1,0x8                        ; 080BC3E8
bls   @@Return                      ; 080BC3EA
mov   r0,r2                         ; 080BC3EC
add   r0,0x42                       ; 080BC3EE
strh  r3,[r0]                       ; 080BC3F0
add   r0,0x5D                       ; 080BC3F2
ldrb  r0,[r0]                       ; 080BC3F4
strh  r0,[r2,0x36]                  ; 080BC3F6
mov   r1,r2                         ; 080BC3F8
add   r1,0x6E                       ; 080BC3FA
ldrh  r0,[r1]                       ; 080BC3FC
add   r0,0x1                        ; 080BC3FE
strh  r0,[r1]                       ; 080BC400
lsl   r0,r0,0x10                    ; 080BC402
lsr   r0,r0,0x10                    ; 080BC404
cmp   r0,0x8                        ; 080BC406
bne   @@Return                      ; 080BC408
mov   r0,0x7                        ; 080BC40A
strh  r0,[r4]                       ; 080BC40C
ldr   r0,=0x0300702C                ; 080BC40E  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080BC410
ldr   r3,=0x159C                    ; 080BC412
add   r1,r1,r3                      ; 080BC414
ldrh  r0,[r1]                       ; 080BC416
add   r0,0x1                        ; 080BC418
strh  r0,[r1]                       ; 080BC41A
@@Return:
pop   {r4-r5}                       ; 080BC41C
pop   {r0}                          ; 080BC41E
bx    r0                            ; 080BC420
.pool                               ; 080BC422

Sub080BC42C:
push  {lr}                          ; 080BC42C
mov   r2,r0                         ; 080BC42E
add   r0,0x42                       ; 080BC430
ldrh  r1,[r0]                       ; 080BC432
cmp   r1,0x0                        ; 080BC434
bne   @@Return                      ; 080BC436
add   r0,0x28                       ; 080BC438
strh  r1,[r0]                       ; 080BC43A
ldrh  r1,[r2,0x3E]                  ; 080BC43C
mov   r0,0x1                        ; 080BC43E
and   r0,r1                         ; 080BC440
cmp   r0,0x0                        ; 080BC442
beq   @@Return                      ; 080BC444
ldr   r1,=Data081796A2              ; 080BC446
ldrh  r0,[r2,0x36]                  ; 080BC448
lsr   r0,r0,0x1                     ; 080BC44A
add   r0,r0,r1                      ; 080BC44C
ldrb  r0,[r0]                       ; 080BC44E
lsl   r0,r0,0x18                    ; 080BC450
asr   r0,r0,0x18                    ; 080BC452
str   r0,[r2,0x8]                   ; 080BC454
mov   r1,r2                         ; 080BC456
add   r1,0x44                       ; 080BC458
ldrh  r0,[r1]                       ; 080BC45A
cmp   r0,0x0                        ; 080BC45C
bne   @@Return                      ; 080BC45E
mov   r0,0x4                        ; 080BC460
strh  r0,[r1]                       ; 080BC462
ldrh  r0,[r2,0x38]                  ; 080BC464
add   r0,0x1                        ; 080BC466
mov   r1,0x3                        ; 080BC468
and   r0,r1                         ; 080BC46A
strh  r0,[r2,0x38]                  ; 080BC46C
@@Return:
pop   {r0}                          ; 080BC46E
bx    r0                            ; 080BC470
.pool                               ; 080BC472

Sub080BC478:
push  {r4,lr}                       ; 080BC478
mov   r4,r0                         ; 080BC47A
mov   r2,r4                         ; 080BC47C
add   r2,0x44                       ; 080BC47E
ldrh  r0,[r2]                       ; 080BC480
cmp   r0,0x0                        ; 080BC482
bne   @@Code080BC4F6                ; 080BC484
mov   r1,r4                         ; 080BC486
add   r1,0x40                       ; 080BC488
ldrh  r0,[r1]                       ; 080BC48A
add   r0,0x1                        ; 080BC48C
strh  r0,[r1]                       ; 080BC48E
lsl   r0,r0,0x10                    ; 080BC490
lsr   r0,r0,0x10                    ; 080BC492
cmp   r0,0x2                        ; 080BC494
bls   @@Code080BC4EC                ; 080BC496
add   r1,0x2                        ; 080BC498
mov   r0,0x3                        ; 080BC49A
strh  r0,[r1]                       ; 080BC49C
mov   r0,0xEE                       ; 080BC49E
lsl   r0,r0,0x1                     ; 080BC4A0
bl    SpawnSecondarySprite          ; 080BC4A2
ldr   r2,=0x03007240                ; 080BC4A6  Normal gameplay IWRAM (Ptr to 0300220C)
lsl   r0,r0,0x18                    ; 080BC4A8
lsr   r0,r0,0x18                    ; 080BC4AA
mov   r1,0xB0                       ; 080BC4AC
mul   r0,r1                         ; 080BC4AE
ldr   r1,=0x1AF4                    ; 080BC4B0
add   r0,r0,r1                      ; 080BC4B2
ldr   r1,[r2]                       ; 080BC4B4
add   r1,r1,r0                      ; 080BC4B6
mov   r0,r4                         ; 080BC4B8
add   r0,0x5A                       ; 080BC4BA
ldrh  r0,[r0]                       ; 080BC4BC
lsl   r0,r0,0x8                     ; 080BC4BE
str   r0,[r1]                       ; 080BC4C0
mov   r0,r4                         ; 080BC4C2
add   r0,0x5C                       ; 080BC4C4
ldrh  r0,[r0]                       ; 080BC4C6
lsl   r0,r0,0x8                     ; 080BC4C8
str   r0,[r1,0x4]                   ; 080BC4CA
mov   r0,0x5                        ; 080BC4CC
strh  r0,[r1,0x38]                  ; 080BC4CE
mov   r2,r1                         ; 080BC4D0
add   r2,0x42                       ; 080BC4D2
mov   r0,0x2                        ; 080BC4D4
strh  r0,[r2]                       ; 080BC4D6
add   r1,0xA2                       ; 080BC4D8
mov   r0,0xFF                       ; 080BC4DA
strb  r0,[r1]                       ; 080BC4DC
mov   r1,r4                         ; 080BC4DE
add   r1,0x6E                       ; 080BC4E0
b     @@Code080BC52A                ; 080BC4E2
.pool                               ; 080BC4E4

@@Code080BC4EC:
mov   r0,0x4                        ; 080BC4EC
strh  r0,[r2]                       ; 080BC4EE
ldrh  r0,[r4,0x38]                  ; 080BC4F0
add   r0,0x1                        ; 080BC4F2
strh  r0,[r4,0x38]                  ; 080BC4F4
@@Code080BC4F6:
ldr   r2,=0x03006D80                ; 080BC4F6
mov   r0,r2                         ; 080BC4F8
add   r0,0x7A                       ; 080BC4FA
ldrh  r0,[r0]                       ; 080BC4FC
mov   r3,0x7                        ; 080BC4FE
and   r3,r0                         ; 080BC500
cmp   r3,0x0                        ; 080BC502
bne   @@Return                      ; 080BC504
ldr   r1,=Data081796A4              ; 080BC506
mov   r0,r4                         ; 080BC508
add   r0,0x40                       ; 080BC50A
ldrh  r0,[r0]                       ; 080BC50C
add   r0,r0,r1                      ; 080BC50E
ldrb  r1,[r0]                       ; 080BC510
mov   r0,r2                         ; 080BC512
add   r0,0x90                       ; 080BC514
ldrh  r0,[r0]                       ; 080BC516
add   r1,r1,r0                      ; 080BC518
lsl   r1,r1,0x8                     ; 080BC51A
ldr   r0,[r4,0x4]                   ; 080BC51C
sub   r0,r0,r1                      ; 080BC51E
str   r0,[r2,0x4]                   ; 080BC520
str   r3,[r2,0xC]                   ; 080BC522
mov   r0,0xD7                       ; 080BC524
lsl   r0,r0,0x1                     ; 080BC526
add   r1,r2,r0                      ; 080BC528
@@Code080BC52A:
ldrh  r0,[r1]                       ; 080BC52A
add   r0,0x1                        ; 080BC52C
strh  r0,[r1]                       ; 080BC52E
@@Return:
pop   {r4}                          ; 080BC530
pop   {r0}                          ; 080BC532
bx    r0                            ; 080BC534
.pool                               ; 080BC536

Sub080BC540:
push  {r4-r5,lr}                    ; 080BC540
mov   r5,r0                         ; 080BC542
add   r0,0x42                       ; 080BC544
ldrh  r4,[r0]                       ; 080BC546
cmp   r4,0x0                        ; 080BC548
bne   @@Code080BC59C                ; 080BC54A
ldr   r1,=0x03002200                ; 080BC54C
ldr   r0,[r5]                       ; 080BC54E
asr   r0,r0,0x8                     ; 080BC550
ldr   r3,=0x47E4                    ; 080BC552
add   r2,r1,r3                      ; 080BC554
ldrh  r2,[r2]                       ; 080BC556
sub   r0,r0,r2                      ; 080BC558
ldr   r2,=0x4058                    ; 080BC55A
add   r1,r1,r2                      ; 080BC55C
strh  r0,[r1]                       ; 080BC55E
mov   r0,0x8D                       ; 080BC560
bl    PlayYISound                   ; 080BC562
ldr   r0,=0x03006D80                ; 080BC566
strh  r4,[r0,0x30]                  ; 080BC568
mov   r1,r0                         ; 080BC56A
add   r1,0xFE                       ; 080BC56C
strh  r4,[r1]                       ; 080BC56E
add   r0,0xFC                       ; 080BC570
strh  r4,[r0]                       ; 080BC572
mov   r0,r5                         ; 080BC574
bl    ClearSpriteSlot               ; 080BC576
mov   r2,r5                         ; 080BC57A
add   r2,0x6E                       ; 080BC57C
ldrh  r1,[r2]                       ; 080BC57E
mov   r3,0x80                       ; 080BC580
lsl   r3,r3,0x8                     ; 080BC582
mov   r0,r3                         ; 080BC584
orr   r0,r1                         ; 080BC586
strh  r0,[r2]                       ; 080BC588
b     @@Return                      ; 080BC58A
.pool                               ; 080BC58C

@@Code080BC59C:
ldr   r1,=0x03002200                ; 080BC59C
mov   r0,r5                         ; 080BC59E
add   r0,0x5A                       ; 080BC5A0
ldrh  r2,[r0]                       ; 080BC5A2
ldr   r3,=0x47F6                    ; 080BC5A4
add   r0,r1,r3                      ; 080BC5A6
strh  r2,[r0]                       ; 080BC5A8
mov   r0,r5                         ; 080BC5AA
add   r0,0x5C                       ; 080BC5AC
ldrh  r2,[r0]                       ; 080BC5AE
add   r3,0x2                        ; 080BC5B0
add   r0,r1,r3                      ; 080BC5B2
strh  r2,[r0]                       ; 080BC5B4
ldr   r0,=0x4808                    ; 080BC5B6
add   r2,r1,r0                      ; 080BC5B8
mov   r0,0x40                       ; 080BC5BA
strh  r0,[r2]                       ; 080BC5BC
add   r3,0x22                       ; 080BC5BE
add   r2,r1,r3                      ; 080BC5C0
mov   r0,0x80                       ; 080BC5C2
lsl   r0,r0,0x2                     ; 080BC5C4
strh  r0,[r2]                       ; 080BC5C6
ldr   r0,=0x481C                    ; 080BC5C8
add   r1,r1,r0                      ; 080BC5CA
mov   r0,0xFE                       ; 080BC5CC
lsl   r0,r0,0x8                     ; 080BC5CE
strh  r0,[r1]                       ; 080BC5D0
bl    Sub080CAE40                   ; 080BC5D2
@@Return:
pop   {r4-r5}                       ; 080BC5D6
pop   {r0}                          ; 080BC5D8
bx    r0                            ; 080BC5DA
.pool                               ; 080BC5DC

Sub080BC5EC:
push  {lr}                          ; 080BC5EC
mov   r3,r0                         ; 080BC5EE
add   r0,0x62                       ; 080BC5F0
mov   r1,r3                         ; 080BC5F2
add   r1,0x66                       ; 080BC5F4
ldrh  r2,[r0]                       ; 080BC5F6
ldrh  r1,[r1]                       ; 080BC5F8
cmp   r2,r1                         ; 080BC5FA
bne   @@Code080BC630                ; 080BC5FC
ldr   r0,=0xFFFF                    ; 080BC5FE
cmp   r2,r0                         ; 080BC600
bne   @@Code080BC630                ; 080BC602
mov   r0,0x1                        ; 080BC604
strh  r0,[r3,0x38]                  ; 080BC606
mov   r2,r3                         ; 080BC608
add   r2,0x6E                       ; 080BC60A
mov   r1,0x2                        ; 080BC60C
mov   r0,0x2                        ; 080BC60E
strh  r0,[r2]                       ; 080BC610
mov   r0,r3                         ; 080BC612
add   r0,0x94                       ; 080BC614
strb  r1,[r0]                       ; 080BC616
mov   r1,r3                         ; 080BC618
add   r1,0x42                       ; 080BC61A
mov   r0,0x30                       ; 080BC61C
strh  r0,[r1]                       ; 080BC61E
mov   r0,r3                         ; 080BC620
add   r0,0x9F                       ; 080BC622
ldrb  r0,[r0]                       ; 080BC624
strh  r0,[r3,0x36]                  ; 080BC626
b     @@Return                      ; 080BC628
.pool                               ; 080BC62A

@@Code080BC630:
mov   r0,r3                         ; 080BC630
add   r0,0x52                       ; 080BC632
ldrh  r0,[r0]                       ; 080BC634
add   r0,0x30                       ; 080BC636
lsl   r0,r0,0x10                    ; 080BC638
lsr   r0,r0,0x10                    ; 080BC63A
cmp   r0,0x5F                       ; 080BC63C
bhi   @@Return                      ; 080BC63E
mov   r1,r3                         ; 080BC640
add   r1,0x66                       ; 080BC642
ldr   r0,=0xFFFF                    ; 080BC644
strh  r0,[r1]                       ; 080BC646
sub   r1,0x4                        ; 080BC648
mov   r0,0x1                        ; 080BC64A
neg   r0,r0                         ; 080BC64C
strh  r0,[r1]                       ; 080BC64E
mov   r2,0x0                        ; 080BC650
mov   r0,0x7                        ; 080BC652
strh  r0,[r3,0x38]                  ; 080BC654
sub   r1,0x1E                       ; 080BC656
mov   r0,0x8                        ; 080BC658
strh  r0,[r1]                       ; 080BC65A
add   r1,0x50                       ; 080BC65C
mov   r0,0x2                        ; 080BC65E
strb  r0,[r1]                       ; 080BC660
mov   r0,r3                         ; 080BC662
add   r0,0x6E                       ; 080BC664
strh  r2,[r0]                       ; 080BC666
@@Return:
pop   {r0}                          ; 080BC668
bx    r0                            ; 080BC66A
.pool                               ; 080BC66C

Sub080BC670:
push  {r4,lr}                       ; 080BC670
mov   r3,r0                         ; 080BC672
ldr   r0,=0x0300702C                ; 080BC674  Sprite RAM structs (03002460)
ldr   r0,[r0]                       ; 080BC676
ldr   r1,=0x159C                    ; 080BC678
add   r0,r0,r1                      ; 080BC67A
mov   r2,0x0                        ; 080BC67C
ldsh  r0,[r0,r2]                    ; 080BC67E
cmp   r0,0x0                        ; 080BC680
bge   @@Return                      ; 080BC682
mov   r4,r3                         ; 080BC684
add   r4,0x44                       ; 080BC686
ldrh  r1,[r4]                       ; 080BC688
cmp   r1,0x0                        ; 080BC68A
bne   @@Return                      ; 080BC68C
mov   r2,r3                         ; 080BC68E
add   r2,0x40                       ; 080BC690
ldrh  r0,[r2]                       ; 080BC692
sub   r0,0x1                        ; 080BC694
strh  r0,[r2]                       ; 080BC696
lsl   r0,r0,0x10                    ; 080BC698
cmp   r0,0x0                        ; 080BC69A
bge   @@Code080BC6EC                ; 080BC69C
mov   r0,0x2                        ; 080BC69E
strh  r0,[r2]                       ; 080BC6A0
strh  r0,[r3,0x38]                  ; 080BC6A2
ldr   r0,=0xFFFFFA00                ; 080BC6A4
str   r0,[r3,0xC]                   ; 080BC6A6
strh  r1,[r3,0x3E]                  ; 080BC6A8
str   r1,[r3,0x14]                  ; 080BC6AA
mov   r1,r3                         ; 080BC6AC
add   r1,0x6E                       ; 080BC6AE
ldrh  r0,[r1]                       ; 080BC6B0
add   r0,0x1                        ; 080BC6B2
strh  r0,[r1]                       ; 080BC6B4
ldr   r1,=0x03002200                ; 080BC6B6
ldr   r0,[r3]                       ; 080BC6B8
asr   r0,r0,0x8                     ; 080BC6BA
ldr   r3,=0x47E4                    ; 080BC6BC
add   r2,r1,r3                      ; 080BC6BE
ldrh  r2,[r2]                       ; 080BC6C0
sub   r0,r0,r2                      ; 080BC6C2
ldr   r2,=0x4058                    ; 080BC6C4
add   r1,r1,r2                      ; 080BC6C6
strh  r0,[r1]                       ; 080BC6C8
mov   r0,0xD                        ; 080BC6CA
bl    PlayYISound                   ; 080BC6CC
b     @@Return                      ; 080BC6D0
.pool                               ; 080BC6D2

@@Code080BC6EC:
ldr   r1,=Data081796A7              ; 080BC6EC
ldrh  r0,[r2]                       ; 080BC6EE
add   r0,r0,r1                      ; 080BC6F0
ldrb  r0,[r0]                       ; 080BC6F2
strh  r0,[r3,0x38]                  ; 080BC6F4
mov   r0,0x2                        ; 080BC6F6
strh  r0,[r4]                       ; 080BC6F8
@@Return:
pop   {r4}                          ; 080BC6FA
pop   {r0}                          ; 080BC6FC
bx    r0                            ; 080BC6FE
.pool                               ; 080BC700

Sub080BC704:
push  {r4,lr}                       ; 080BC704
mov   r2,r0                         ; 080BC706
ldr   r0,[r2,0xC]                   ; 080BC708
cmp   r0,0x0                        ; 080BC70A
beq   @@Code080BC730                ; 080BC70C
ldrh  r1,[r2,0x3E]                  ; 080BC70E
mov   r0,0x2                        ; 080BC710
and   r0,r1                         ; 080BC712
cmp   r0,0x0                        ; 080BC714
beq   @@Return                      ; 080BC716
ldr   r0,[r2,0x4]                   ; 080BC718
mov   r1,0x80                       ; 080BC71A
lsl   r1,r1,0x4                     ; 080BC71C
add   r0,r0,r1                      ; 080BC71E
ldr   r1,=0xFFFFF000                ; 080BC720
and   r0,r1                         ; 080BC722
str   r0,[r2,0x4]                   ; 080BC724
mov   r0,0x0                        ; 080BC726
str   r0,[r2,0xC]                   ; 080BC728
b     @@Return                      ; 080BC72A
.pool                               ; 080BC72C

@@Code080BC730:
mov   r4,r2                         ; 080BC730
add   r4,0x44                       ; 080BC732
ldrh  r0,[r4]                       ; 080BC734
cmp   r0,0x0                        ; 080BC736
bne   @@Return                      ; 080BC738
mov   r3,r2                         ; 080BC73A
add   r3,0x40                       ; 080BC73C
ldrh  r0,[r3]                       ; 080BC73E
sub   r0,0x1                        ; 080BC740
strh  r0,[r3]                       ; 080BC742
lsl   r0,r0,0x10                    ; 080BC744
cmp   r0,0x0                        ; 080BC746
bge   @@Code080BC762                ; 080BC748
mov   r1,r2                         ; 080BC74A
add   r1,0x42                       ; 080BC74C
mov   r0,0x20                       ; 080BC74E
strh  r0,[r1]                       ; 080BC750
add   r1,0x52                       ; 080BC752
mov   r0,0xFF                       ; 080BC754
strb  r0,[r1]                       ; 080BC756
sub   r1,0x26                       ; 080BC758
ldrh  r0,[r1]                       ; 080BC75A
add   r0,0x1                        ; 080BC75C
strh  r0,[r1]                       ; 080BC75E
b     @@Return                      ; 080BC760
@@Code080BC762:
ldr   r1,=Data081796AE              ; 080BC762
ldrh  r0,[r3]                       ; 080BC764
add   r0,r0,r1                      ; 080BC766
ldrb  r0,[r0]                       ; 080BC768
strh  r0,[r2,0x38]                  ; 080BC76A
ldr   r1,=Data081796B0              ; 080BC76C
ldrh  r0,[r3]                       ; 080BC76E
add   r0,r0,r1                      ; 080BC770
ldrb  r0,[r0]                       ; 080BC772
strh  r0,[r4]                       ; 080BC774
@@Return:
pop   {r4}                          ; 080BC776
pop   {r0}                          ; 080BC778
bx    r0                            ; 080BC77A
.pool                               ; 080BC77C

Sub080BC784:
push  {r4-r5,lr}                    ; 080BC784
mov   r5,r0                         ; 080BC786
add   r0,0x42                       ; 080BC788
ldrh  r4,[r0]                       ; 080BC78A
cmp   r4,0x0                        ; 080BC78C
bne   @@Return                      ; 080BC78E
mov   r0,0x18                       ; 080BC790  18: x-8 boss
bl    PlayYIMusic                   ; 080BC792
ldr   r0,=0x0300702C                ; 080BC796  Sprite RAM structs (03002460)
ldr   r1,[r0]                       ; 080BC798
ldr   r2,=0x159C                    ; 080BC79A
add   r0,r1,r2                      ; 080BC79C
strh  r4,[r0]                       ; 080BC79E
ldr   r0,=0x15E2                    ; 080BC7A0
add   r1,r1,r0                      ; 080BC7A2
ldrh  r0,[r1]                       ; 080BC7A4
add   r0,0x1                        ; 080BC7A6
strh  r0,[r1]                       ; 080BC7A8
mov   r0,r5                         ; 080BC7AA
bl    DespawnSprite                 ; 080BC7AC
@@Return:
pop   {r4-r5}                       ; 080BC7B0
pop   {r0}                          ; 080BC7B2
bx    r0                            ; 080BC7B4
.pool                               ; 080BC7B6
