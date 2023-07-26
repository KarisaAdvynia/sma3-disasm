Sub0802F2A4:
push  {r4-r7,lr}                    ; 0802F2A4
mov   r7,r10                        ; 0802F2A6
mov   r6,r9                         ; 0802F2A8
mov   r5,r8                         ; 0802F2AA
push  {r5-r7}                       ; 0802F2AC
lsl   r0,r0,0x10                    ; 0802F2AE
lsr   r3,r0,0x10                    ; 0802F2B0
lsl   r1,r1,0x10                    ; 0802F2B2
lsr   r1,r1,0x10                    ; 0802F2B4
mov   r9,r1                         ; 0802F2B6
lsl   r2,r2,0x10                    ; 0802F2B8
lsr   r2,r2,0x10                    ; 0802F2BA
mov   r7,0x0                        ; 0802F2BC
ldr   r0,=Graphics_Font_main_1bpp   ; 0802F2BE
mov   r10,r0                        ; 0802F2C0
@@Code0802F2C2:
mov   r1,r10                        ; 0802F2C2
add   r0,r3,r1                      ; 0802F2C4
ldrb  r4,[r0]                       ; 0802F2C6
mov   r1,0x7                        ; 0802F2C8
and   r1,r2                         ; 0802F2CA
lsl   r1,r1,0x2                     ; 0802F2CC
mov   r0,0xF8                       ; 0802F2CE
and   r0,r2                         ; 0802F2D0
lsl   r0,r0,0x7                     ; 0802F2D2
orr   r1,r0                         ; 0802F2D4
ldr   r0,=0x0201FC00                ; 0802F2D6  decompressed graphics buffer
add   r5,r1,r0                      ; 0802F2D8
mov   r6,0x0                        ; 0802F2DA
add   r3,0x1                        ; 0802F2DC
mov   r12,r3                        ; 0802F2DE
add   r2,0x1                        ; 0802F2E0
mov   r8,r2                         ; 0802F2E2
add   r7,0x1                        ; 0802F2E4
cmp   r4,0x0                        ; 0802F2E6
beq   @@Code0802F338                ; 0802F2E8
@@Code0802F2EA:
mov   r0,0x80                       ; 0802F2EA
and   r0,r4                         ; 0802F2EC
cmp   r0,0x0                        ; 0802F2EE
beq   @@Code0802F32A                ; 0802F2F0
mov   r1,r9                         ; 0802F2F2
add   r2,r1,r6                      ; 0802F2F4
asr   r0,r2,0x1                     ; 0802F2F6
mov   r1,0x3                        ; 0802F2F8
mov   r3,r0                         ; 0802F2FA
and   r3,r1                         ; 0802F2FC
mov   r1,0xFC                       ; 0802F2FE
and   r0,r1                         ; 0802F300
lsl   r0,r0,0x3                     ; 0802F302
orr   r3,r0                         ; 0802F304
mov   r0,0x1                        ; 0802F306
and   r2,r0                         ; 0802F308
cmp   r2,0x0                        ; 0802F30A
beq   @@Code0802F320                ; 0802F30C
add   r0,r5,r3                      ; 0802F30E
ldrb  r1,[r0]                       ; 0802F310
mov   r2,0xF0                       ; 0802F312
b     @@Code0802F326                ; 0802F314
.pool                               ; 0802F316

@@Code0802F320:
add   r0,r5,r3                      ; 0802F320
ldrb  r1,[r0]                       ; 0802F322
mov   r2,0xF                        ; 0802F324
@@Code0802F326:
orr   r1,r2                         ; 0802F326
strb  r1,[r0]                       ; 0802F328
@@Code0802F32A:
lsl   r0,r4,0x19                    ; 0802F32A
lsr   r4,r0,0x18                    ; 0802F32C
add   r0,r6,0x1                     ; 0802F32E
lsl   r0,r0,0x10                    ; 0802F330
lsr   r6,r0,0x10                    ; 0802F332
cmp   r4,0x0                        ; 0802F334
bne   @@Code0802F2EA                ; 0802F336
@@Code0802F338:
mov   r1,r12                        ; 0802F338
lsl   r0,r1,0x10                    ; 0802F33A
lsr   r3,r0,0x10                    ; 0802F33C
mov   r1,r8                         ; 0802F33E
lsl   r0,r1,0x10                    ; 0802F340
lsr   r2,r0,0x10                    ; 0802F342
lsl   r0,r7,0x10                    ; 0802F344
lsr   r7,r0,0x10                    ; 0802F346
cmp   r7,0xB                        ; 0802F348
bls   @@Code0802F2C2                ; 0802F34A
pop   {r3-r5}                       ; 0802F34C
mov   r8,r3                         ; 0802F34E
mov   r9,r4                         ; 0802F350
mov   r10,r5                        ; 0802F352
pop   {r4-r7}                       ; 0802F354
pop   {r0}                          ; 0802F356
bx    r0                            ; 0802F358
.pool                               ; 0802F35A

StoryIntroText_DispChar:
; Story intro text command 00: Display normal text character
push  {r4-r6,lr}                    ; 0802F35C
mov   r5,r0                         ; 0802F35E
ldr   r3,=0x03002200                ; 0802F360
ldr   r0,=0x4184                    ; 0802F362
add   r3,r3,r0                      ; 0802F364  03006384 (pointer to pointer to code in dynamic region)
ldr   r0,[r5]                       ; 0802F366
ldrb  r1,[r0]                       ; 0802F368  read next byte
lsl   r0,r1,0x1                     ; 0802F36A  byte*2
add   r0,r0,r1                      ; 0802F36C  byte*3
lsl   r0,r0,0x2                     ; 0802F36E  r0 = byte*0C
ldr   r1,=0x1B5A                    ; 0802F370
add   r6,r5,r1                      ; 0802F372  [0300637C]+1B5A (03003D66)
ldrh  r1,[r6]                       ; 0802F374  r1 = X position
ldr   r2,=0x1B5C                    ; 0802F376
add   r4,r5,r2                      ; 0802F378  [0300637C]+1B5C (03003D68)
ldrh  r2,[r4]                       ; 0802F37A  r2 = Y position
ldr   r3,[r3]                       ; 0802F37C  dynamic code pointer
bl    Sub_bx_r3                     ; 0802F37E
ldrh  r2,[r6]                       ; 0802F382
ldr   r1,=Text_CharWidths           ; 0802F384
ldr   r0,[r5]                       ; 0802F386
ldrb  r0,[r0]                       ; 0802F388
add   r0,r0,r1                      ; 0802F38A
ldrb  r0,[r0]                       ; 0802F38C
add   r0,r2,r0                      ; 0802F38E
lsl   r0,r0,0x10                    ; 0802F390
lsr   r2,r0,0x10                    ; 0802F392
cmp   r2,0xFF                       ; 0802F394
bls   @@Code0802F3A2                ; 0802F396
ldrh  r0,[r4]                       ; 0802F398
add   r0,0x20                       ; 0802F39A
strh  r0,[r4]                       ; 0802F39C
mov   r0,0xFF                       ; 0802F39E
and   r2,r0                         ; 0802F3A0
@@Code0802F3A2:
strh  r2,[r6]                       ; 0802F3A2
ldr   r0,[r5]                       ; 0802F3A4
add   r0,0x1                        ; 0802F3A6
str   r0,[r5]                       ; 0802F3A8
pop   {r4-r6}                       ; 0802F3AA
pop   {r0}                          ; 0802F3AC
bx    r0                            ; 0802F3AE
.pool                               ; 0802F3B0

StoryIntroText_Cmd01:
; Story intro text command 01
ldr   r1,[r0]                       ; 0802F3C4 \
add   r1,0x1                        ; 0802F3C6 | increment byte to read
str   r1,[r0]                       ; 0802F3C8 /
bx    lr                            ; 0802F3CA

StoryIntroText_SetY:
; Story intro text command 02: set Y
ldr   r1,[r0]                       ; 0802F3CC
ldrb  r1,[r1]                       ; 0802F3CE  read next byte
lsl   r1,r1,0x1                     ; 0802F3D0
ldr   r3,=0x1B5C                    ; 0802F3D2
add   r2,r0,r3                      ; 0802F3D4  [0300637C]+1B5C (03003D68)
strh  r1,[r2]                       ; 0802F3D6  Y position = byte*2
ldr   r1,[r0]                       ; 0802F3D8 \
add   r1,0x1                        ; 0802F3DA | increment byte to read
str   r1,[r0]                       ; 0802F3DC /
bx    lr                            ; 0802F3DE
.pool                               ; 0802F3E0

StoryIntroText_SetX:
; Story intro text command 03: set X
ldr   r1,[r0]                       ; 0802F3E4
ldrb  r2,[r1]                       ; 0802F3E6  read next byte
ldr   r3,=0x1B5A                    ; 0802F3E8
add   r1,r0,r3                      ; 0802F3EA  [0300637C]+1B5A (03003D66)
strh  r2,[r1]                       ; 0802F3EC  X position = byte
ldr   r1,[r0]                       ; 0802F3EE \
add   r1,0x1                        ; 0802F3F0 | increment byte to read
str   r1,[r0]                       ; 0802F3F2 /
bx    lr                            ; 0802F3F4
.pool                               ; 0802F3F6

StoryIntroText_2xScale:
; Story intro text command 04/31: 2x scale
ldr   r1,=0x1B58                    ; 0802F3FC
add   r0,r0,r1                      ; 0802F3FE  [0300637C]+1B58 (03003D64)
mov   r1,0x1                        ; 0802F400
strh  r1,[r0]                       ; 0802F402  set 2x scale flag
bx    lr                            ; 0802F404
.pool                               ; 0802F406

StoryIntroText_Disp1LargeChar:
; Story intro text command 05: Display large text character
push  {r4-r7,lr}                    ; 0802F40C
mov   r7,r10                        ; 0802F40E
mov   r6,r9                         ; 0802F410
mov   r5,r8                         ; 0802F412
push  {r5-r7}                       ; 0802F414
mov   r12,r0                        ; 0802F416
ldr   r0,=0x1B5A                    ; 0802F418
add   r0,r12                        ; 0802F41A  [0300637C]+1B5A (03003D66)
ldrh  r0,[r0]                       ; 0802F41C
lsr   r7,r0,0x1                     ; 0802F41E  r7 = Y position /2
ldr   r0,=0x1B5C                    ; 0802F420
add   r0,r12                        ; 0802F422  [0300637C]+1B5C (03003D68)
ldrh  r2,[r0]                       ; 0802F424  r2 = X position
mov   r1,r12                        ; 0802F426
ldr   r0,[r1]                       ; 0802F428
ldrb  r1,[r0]                       ; 0802F42A
lsl   r0,r1,0x1                     ; 0802F42C
add   r0,r0,r1                      ; 0802F42E
lsl   r0,r0,0x2                     ; 0802F430
mov   r8,r0                         ; 0802F432
mov   r5,0x0                        ; 0802F434
@@Code0802F436:
ldr   r0,=Graphics_Font_main_1bpp   ; 0802F436
add   r0,r8                         ; 0802F438
ldrb  r3,[r0]                       ; 0802F43A
mov   r1,0x7                        ; 0802F43C
and   r1,r2                         ; 0802F43E
lsl   r1,r1,0x2                     ; 0802F440
mov   r0,0xF8                       ; 0802F442
and   r0,r2                         ; 0802F444
lsl   r0,r0,0x7                     ; 0802F446
orr   r1,r0                         ; 0802F448
ldr   r0,=0x0201FC00                ; 0802F44A  decompressed graphics buffer
add   r6,r1,r0                      ; 0802F44C
mov   r4,0x0                        ; 0802F44E
add   r2,0x1                        ; 0802F450
mov   r9,r2                         ; 0802F452
add   r1,r5,0x1                     ; 0802F454
mov   r10,r1                        ; 0802F456
cmp   r3,0x0                        ; 0802F458
beq   @@Code0802F488                ; 0802F45A
@@Code0802F45C:
mov   r0,0x80                       ; 0802F45C
and   r0,r3                         ; 0802F45E
cmp   r0,0x0                        ; 0802F460
beq   @@Code0802F47A                ; 0802F462
add   r0,r7,r4                      ; 0802F464
mov   r2,0x3                        ; 0802F466
mov   r1,r0                         ; 0802F468
and   r1,r2                         ; 0802F46A
mov   r2,0xFC                       ; 0802F46C
and   r0,r2                         ; 0802F46E
lsl   r0,r0,0x3                     ; 0802F470
orr   r1,r0                         ; 0802F472
add   r1,r6,r1                      ; 0802F474
mov   r0,0xFF                       ; 0802F476
strb  r0,[r1]                       ; 0802F478
@@Code0802F47A:
lsl   r0,r3,0x19                    ; 0802F47A
lsr   r3,r0,0x18                    ; 0802F47C
add   r0,r4,0x1                     ; 0802F47E
lsl   r0,r0,0x10                    ; 0802F480
lsr   r4,r0,0x10                    ; 0802F482
cmp   r3,0x0                        ; 0802F484
bne   @@Code0802F45C                ; 0802F486
@@Code0802F488:
mov   r0,0x1                        ; 0802F488
and   r5,r0                         ; 0802F48A
cmp   r5,0x0                        ; 0802F48C
beq   @@Code0802F49A                ; 0802F48E
mov   r0,r8                         ; 0802F490
add   r0,0x1                        ; 0802F492
lsl   r0,r0,0x10                    ; 0802F494
lsr   r0,r0,0x10                    ; 0802F496
mov   r8,r0                         ; 0802F498
@@Code0802F49A:
mov   r1,r9                         ; 0802F49A
lsl   r0,r1,0x10                    ; 0802F49C
lsr   r2,r0,0x10                    ; 0802F49E
mov   r1,r10                        ; 0802F4A0
lsl   r0,r1,0x10                    ; 0802F4A2
lsr   r5,r0,0x10                    ; 0802F4A4
cmp   r5,0x17                       ; 0802F4A6
bls   @@Code0802F436                ; 0802F4A8
ldr   r2,=0x1B5A                    ; 0802F4AA
add   r2,r12                        ; 0802F4AC
mov   r1,r12                        ; 0802F4AE
ldr   r0,[r1]                       ; 0802F4B0
ldrb  r0,[r0]                       ; 0802F4B2
ldr   r1,=Text_CharWidths           ; 0802F4B4
add   r0,r0,r1                      ; 0802F4B6
ldrb  r0,[r0]                       ; 0802F4B8
lsl   r0,r0,0x1                     ; 0802F4BA
ldrh  r1,[r2]                       ; 0802F4BC
add   r0,r0,r1                      ; 0802F4BE
lsl   r0,r0,0x10                    ; 0802F4C0
lsr   r7,r0,0x10                    ; 0802F4C2
cmp   r7,0xFF                       ; 0802F4C4
bls   @@Code0802F4D6                ; 0802F4C6
ldr   r0,=0x1B5C                    ; 0802F4C8
add   r0,r12                        ; 0802F4CA
ldrh  r1,[r0]                       ; 0802F4CC
add   r1,0x20                       ; 0802F4CE
strh  r1,[r0]                       ; 0802F4D0
mov   r0,0xFF                       ; 0802F4D2
and   r7,r0                         ; 0802F4D4
@@Code0802F4D6:
strh  r7,[r2]                       ; 0802F4D6
mov   r1,r12                        ; 0802F4D8
ldr   r0,[r1]                       ; 0802F4DA
add   r0,0x1                        ; 0802F4DC
str   r0,[r1]                       ; 0802F4DE
pop   {r3-r5}                       ; 0802F4E0
mov   r8,r3                         ; 0802F4E2
mov   r9,r4                         ; 0802F4E4
mov   r10,r5                        ; 0802F4E6
pop   {r4-r7}                       ; 0802F4E8
pop   {r0}                          ; 0802F4EA
bx    r0                            ; 0802F4EC
.pool                               ; 0802F4EE

StoryIntroText_Main:
; Process story intro message
; r0: 0300220C, r1: pointer to message data
push  {r4,lr}                       ; 0802F504
add   sp,-0x4                       ; 0802F506
mov   r4,r0                         ; 0802F508
ldr   r2,=0x1B58                    ; 0802F50A
add   r0,r4,r2                      ; 0802F50C  [0300637C]+1B58 (03003D64)
mov   r2,0x0                        ; 0802F50E
strh  r2,[r0]                       ; 0802F510
str   r1,[r4]                       ; 0802F512  store message pointer to 0300220C
str   r2,[sp]                       ; 0802F514
ldr   r2,=0x040000D4                ; 0802F516
mov   r0,sp                         ; 0802F518
str   r0,[r2]                       ; 0802F51A
ldr   r1,=0x1B62                    ; 0802F51C
add   r0,r4,r1                      ; 0802F51E  [0300637C]+1B62 (03003D6E)
ldrh  r1,[r0]                       ; 0802F520
mov   r0,0x1                        ; 0802F522
and   r0,r1                         ; 0802F524
lsl   r0,r0,0xC                     ; 0802F526
ldr   r1,=0x0201FC00                ; 0802F528  decompressed graphics buffer
add   r0,r0,r1                      ; 0802F52A
str   r0,[r2,0x4]                   ; 0802F52C
ldr   r0,=0x85000400                ; 0802F52E
str   r0,[r2,0x8]                   ; 0802F530
ldr   r0,[r2,0x8]                   ; 0802F532
@@Code0802F534:
ldr   r2,[r4]                       ; 0802F534  message pointer
ldrb  r1,[r2]                       ; 0802F536  load byte from message data
cmp   r1,0xFF                       ; 0802F538
bne   @@Code0802F568                ; 0802F53A
                                    ;          \ runs if byte is a command
add   r0,r2,0x1                     ; 0802F53C  increment message pointer
str   r0,[r4]                       ; 0802F53E
ldrb  r1,[r2,0x1]                   ; 0802F540  read next byte
cmp   r1,0xFF                       ; 0802F542
beq   @@Return                      ; 0802F544  if command FF, return
cmp   r1,0x31                       ; 0802F546
bne   @@Code0802F54C                ; 0802F548
mov   r1,0x4                        ; 0802F54A  if command 31, r1=4
@@Code0802F54C:
add   r0,0x1                        ; 0802F54C  increment messsage pointer
str   r0,[r4]                       ; 0802F54E
b     @@Code0802F576                ; 0802F550 /
.pool                               ; 0802F552

@@Code0802F568:                     ;          \ runs if byte is a character
ldr   r2,=0x1B58                    ; 0802F568
add   r0,r4,r2                      ; 0802F56A  [0300637C]+1B58 (03003D64)
ldrh  r0,[r0]                       ; 0802F56C  2x scale flag
mov   r1,0x0                        ; 0802F56E  r1=0, if normal-size character
cmp   r0,0x0                        ; 0802F570
beq   @@Code0802F576                ; 0802F572
mov   r1,0x5                        ; 0802F574 / r1=5, if large character
@@Code0802F576:
ldr   r0,=CodePtrs0816B7FC          ; 0802F576
lsl   r1,r1,0x2                     ; 0802F578
add   r1,r1,r0                      ; 0802F57A  index with r1 (command ID for 00-03, 04 for command 31, 05 for character)
ldr   r1,[r1]                       ; 0802F57C
mov   r0,r4                         ; 0802F57E
bl    Sub_bx_r1                     ; 0802F580
b     @@Code0802F534                ; 0802F584
.pool                               ; 0802F586

@@Return:
add   sp,0x4                        ; 0802F590
pop   {r4}                          ; 0802F592
pop   {r0}                          ; 0802F594
bx    r0                            ; 0802F596

Sub0802F598:
push  {r4-r7,lr}                    ; 0802F598
mov   r5,r0                         ; 0802F59A
lsl   r1,r1,0x10                    ; 0802F59C
lsr   r7,r1,0x10                    ; 0802F59E
mov   r6,0x17                       ; 0802F5A0
mov   r1,0xFD                       ; 0802F5A2
lsl   r1,r1,0x4                     ; 0802F5A4
add   r0,r5,r1                      ; 0802F5A6
ldrh  r0,[r0,0x2C]                  ; 0802F5A8
cmp   r0,0x0                        ; 0802F5AA
beq   @@Code0802F5C8                ; 0802F5AC
mov   r1,0xB0                       ; 0802F5AE
@@Code0802F5B0:
sub   r0,r6,0x1                     ; 0802F5B0
lsl   r0,r0,0x10                    ; 0802F5B2
lsr   r6,r0,0x10                    ; 0802F5B4
cmp   r6,0x17                       ; 0802F5B6
bls   @@Code0802F5BC                ; 0802F5B8
b     @@Code0802F6EA                ; 0802F5BA
@@Code0802F5BC:
mov   r0,r6                         ; 0802F5BC
mul   r0,r1                         ; 0802F5BE
add   r0,r5,r0                      ; 0802F5C0
ldrh  r0,[r0,0x2C]                  ; 0802F5C2
cmp   r0,0x0                        ; 0802F5C4
bne   @@Code0802F5B0                ; 0802F5C6
@@Code0802F5C8:
cmp   r6,0x17                       ; 0802F5C8
bls   @@Code0802F5CE                ; 0802F5CA
b     @@Code0802F6EA                ; 0802F5CC
@@Code0802F5CE:
mov   r0,0xB0                       ; 0802F5CE
mov   r4,r6                         ; 0802F5D0
mul   r4,r0                         ; 0802F5D2
add   r2,r5,r4                      ; 0802F5D4
mov   r12,r2                        ; 0802F5D6
mov   r3,0x0                        ; 0802F5D8
mov   r1,0x0                        ; 0802F5DA
mov   r0,0x1                        ; 0802F5DC
strh  r0,[r2,0x2C]                  ; 0802F5DE
add   r2,0xA3                       ; 0802F5E0
mov   r0,0xFF                       ; 0802F5E2
strb  r0,[r2]                       ; 0802F5E4
mov   r2,r12                        ; 0802F5E6
add   r2,0xA4                       ; 0802F5E8
mov   r0,0x2                        ; 0802F5EA
strb  r0,[r2]                       ; 0802F5EC
mov   r0,r12                        ; 0802F5EE
add   r0,0x68                       ; 0802F5F0
strh  r1,[r0]                       ; 0802F5F2
mov   r0,r5                         ; 0802F5F4
add   r0,0x10                       ; 0802F5F6
add   r0,r0,r4                      ; 0802F5F8
str   r1,[r0]                       ; 0802F5FA
mov   r0,r5                         ; 0802F5FC
add   r0,0x14                       ; 0802F5FE
add   r0,r0,r4                      ; 0802F600
str   r1,[r0]                       ; 0802F602
mov   r0,r12                        ; 0802F604
add   r0,0x48                       ; 0802F606
strh  r1,[r0]                       ; 0802F608
mov   r0,r12                        ; 0802F60A
strh  r1,[r0,0x3E]                  ; 0802F60C
add   r0,0x9F                       ; 0802F60E
strb  r3,[r0]                       ; 0802F610
add   r0,0x1                        ; 0802F612
strb  r3,[r0]                       ; 0802F614
add   r0,0xB                        ; 0802F616
strb  r3,[r0]                       ; 0802F618
add   r0,0x1                        ; 0802F61A
strb  r3,[r0]                       ; 0802F61C
sub   r0,0x3A                       ; 0802F61E
strh  r1,[r0]                       ; 0802F620
add   r0,0x2                        ; 0802F622
strh  r1,[r0]                       ; 0802F624
add   r0,0x2                        ; 0802F626
strh  r1,[r0]                       ; 0802F628
add   r0,0x2                        ; 0802F62A
strh  r1,[r0]                       ; 0802F62C
add   r0,0x2                        ; 0802F62E
strh  r1,[r0]                       ; 0802F630
add   r0,0x2                        ; 0802F632
strh  r1,[r0]                       ; 0802F634
add   r0,0x2                        ; 0802F636
strh  r1,[r0]                       ; 0802F638
add   r0,0x2                        ; 0802F63A
strh  r1,[r0]                       ; 0802F63C
add   r0,0x2                        ; 0802F63E
strh  r1,[r0]                       ; 0802F640
add   r0,0x2                        ; 0802F642
strh  r1,[r0]                       ; 0802F644
sub   r0,0x1A                       ; 0802F646
strh  r1,[r0]                       ; 0802F648
add   r0,0x2                        ; 0802F64A
strh  r1,[r0]                       ; 0802F64C
add   r0,0x2                        ; 0802F64E
strh  r1,[r0]                       ; 0802F650
add   r0,0x2                        ; 0802F652
strh  r1,[r0]                       ; 0802F654
sub   r0,0x26                       ; 0802F656
strh  r1,[r0]                       ; 0802F658
add   r0,0x2                        ; 0802F65A
strh  r1,[r0]                       ; 0802F65C
add   r0,0x2                        ; 0802F65E
strh  r1,[r0]                       ; 0802F660
add   r0,0x2                        ; 0802F662
strh  r1,[r0]                       ; 0802F664
sub   r0,0x10                       ; 0802F666
strh  r1,[r0]                       ; 0802F668
add   r0,0x6                        ; 0802F66A
strh  r1,[r0]                       ; 0802F66C
add   r0,0x57                       ; 0802F66E
strb  r3,[r0]                       ; 0802F670
add   r0,0x1                        ; 0802F672
strb  r3,[r0]                       ; 0802F674
sub   r0,0x38                       ; 0802F676
strh  r1,[r0]                       ; 0802F678
mov   r2,r12                        ; 0802F67A
strh  r1,[r2,0x28]                  ; 0802F67C
strh  r1,[r2,0x2A]                  ; 0802F67E
mov   r0,r5                         ; 0802F680
add   r0,0x18                       ; 0802F682
add   r0,r0,r4                      ; 0802F684
str   r1,[r0]                       ; 0802F686
mov   r0,r5                         ; 0802F688
add   r0,0x20                       ; 0802F68A
add   r0,r0,r4                      ; 0802F68C
str   r1,[r0]                       ; 0802F68E
mov   r0,r12                        ; 0802F690
add   r0,0xA5                       ; 0802F692
strb  r3,[r0]                       ; 0802F694
add   r0,0x1                        ; 0802F696
strb  r3,[r0]                       ; 0802F698
mov   r0,r5                         ; 0802F69A
add   r0,0x1C                       ; 0802F69C
add   r0,r0,r4                      ; 0802F69E
str   r1,[r0]                       ; 0802F6A0
mov   r0,r5                         ; 0802F6A2
add   r0,0x24                       ; 0802F6A4
add   r0,r0,r4                      ; 0802F6A6
str   r1,[r0]                       ; 0802F6A8
strh  r1,[r2,0x2E]                  ; 0802F6AA
strh  r1,[r2,0x30]                  ; 0802F6AC
mov   r1,r12                        ; 0802F6AE
add   r1,0x44                       ; 0802F6B0
ldr   r0,=0xFFFF                    ; 0802F6B2
strh  r0,[r1]                       ; 0802F6B4
add   r1,0x65                       ; 0802F6B6
mov   r0,0x1                        ; 0802F6B8
neg   r0,r0                         ; 0802F6BA
strb  r0,[r1]                       ; 0802F6BC
add   r1,0x1                        ; 0802F6BE
mov   r0,0x1F                       ; 0802F6C0
strb  r0,[r1]                       ; 0802F6C2
strh  r7,[r2,0x3A]                  ; 0802F6C4
ldr   r2,=Data0816B958              ; 0802F6C6
lsl   r0,r7,0x2                     ; 0802F6C8
add   r0,r0,r2                      ; 0802F6CA
ldrh  r1,[r0]                       ; 0802F6CC
mov   r0,r12                        ; 0802F6CE
add   r0,0x9C                       ; 0802F6D0
strb  r1,[r0]                       ; 0802F6D2
lsl   r1,r7,0x1                     ; 0802F6D4
add   r0,r1,0x1                     ; 0802F6D6
lsl   r0,r0,0x1                     ; 0802F6D8
add   r0,r0,r2                      ; 0802F6DA
ldrh  r0,[r0]                       ; 0802F6DC
mov   r2,r12                        ; 0802F6DE
strh  r0,[r2,0x34]                  ; 0802F6E0
ldr   r0,=Data0816B92C              ; 0802F6E2
add   r1,r1,r0                      ; 0802F6E4
ldrh  r0,[r1]                       ; 0802F6E6
strh  r0,[r2,0x32]                  ; 0802F6E8
@@Code0802F6EA:
mov   r0,r6                         ; 0802F6EA
pop   {r4-r7}                       ; 0802F6EC
pop   {r1}                          ; 0802F6EE
bx    r1                            ; 0802F6F0
.pool                               ; 0802F6F2

Sub0802F700:
push  {r4,lr}                       ; 0802F700
mov   r4,r0                         ; 0802F702
lsl   r1,r1,0x10                    ; 0802F704
lsr   r1,r1,0x10                    ; 0802F706
bl    Sub0802F598                   ; 0802F708
mov   r1,r0                         ; 0802F70C
lsl   r1,r1,0x10                    ; 0802F70E
lsr   r1,r1,0x10                    ; 0802F710
cmp   r1,0x17                       ; 0802F712
bls   @@Code0802F724                ; 0802F714
mov   r2,r4                         ; 0802F716
add   r2,0xA3                       ; 0802F718
mov   r1,0xFF                       ; 0802F71A
strb  r1,[r2]                       ; 0802F71C
add   r2,0x1                        ; 0802F71E
mov   r1,0x2                        ; 0802F720
strb  r1,[r2]                       ; 0802F722
@@Code0802F724:
pop   {r4}                          ; 0802F724
pop   {r1}                          ; 0802F726
bx    r1                            ; 0802F728
.pool                               ; 0802F72A

Sub0802F72C:
push  {r4-r5,lr}                    ; 0802F72C
mov   r5,r0                         ; 0802F72E
mov   r4,r1                         ; 0802F730
@@Code0802F732:
ldrh  r0,[r4]                       ; 0802F732
cmp   r0,0x0                        ; 0802F734
beq   @@Code0802F77C                ; 0802F736
mov   r1,r0                         ; 0802F738
mov   r0,r5                         ; 0802F73A
bl    Sub0802F700                   ; 0802F73C
lsl   r0,r0,0x10                    ; 0802F740
lsr   r0,r0,0x10                    ; 0802F742
add   r4,0x2                        ; 0802F744
mov   r1,0xB0                       ; 0802F746
mov   r2,r0                         ; 0802F748
mul   r2,r1                         ; 0802F74A
mov   r1,r5                         ; 0802F74C
add   r1,0x8                        ; 0802F74E
add   r1,r1,r2                      ; 0802F750
ldrh  r0,[r4]                       ; 0802F752
lsl   r0,r0,0x8                     ; 0802F754
ldr   r3,=0xFFFFF000                ; 0802F756
add   r0,r0,r3                      ; 0802F758
str   r0,[r1]                       ; 0802F75A
add   r4,0x2                        ; 0802F75C
mov   r1,r5                         ; 0802F75E
add   r1,0xC                        ; 0802F760
add   r1,r1,r2                      ; 0802F762
ldrh  r0,[r4]                       ; 0802F764
lsl   r0,r0,0x8                     ; 0802F766
ldr   r2,=0xFFFFFC00                ; 0802F768
add   r0,r0,r2                      ; 0802F76A
str   r0,[r1]                       ; 0802F76C
add   r4,0x2                        ; 0802F76E
b     @@Code0802F732                ; 0802F770
.pool                               ; 0802F772

@@Code0802F77C:
pop   {r4-r5}                       ; 0802F77C
pop   {r0}                          ; 0802F77E
bx    r0                            ; 0802F780
.pool                               ; 0802F782

ToadiesCutsceneInit:
; Game state 11: Toadies take Baby Mario init
push  {r4-r7,lr}                    ; 0802F784
mov   r7,r10                        ; 0802F786
mov   r6,r9                         ; 0802F788
mov   r5,r8                         ; 0802F78A
push  {r5-r7}                       ; 0802F78C
add   sp,-0xC                       ; 0802F78E
ldr   r0,=0x03002200                ; 0802F790
ldr   r2,=0x48F6                    ; 0802F792
add   r1,r0,r2                      ; 0802F794
mov   r4,0x0                        ; 0802F796
mov   r0,0x5                        ; 0802F798
strb  r0,[r1]                       ; 0802F79A
ldr   r3,=0x03002200                ; 0802F79C
ldr   r0,=0x48FB                    ; 0802F79E
add   r1,r3,r0                      ; 0802F7A0
mov   r0,0x1                        ; 0802F7A2
strb  r0,[r1]                       ; 0802F7A4
ldr   r1,=0x48FA                    ; 0802F7A6
add   r0,r3,r1                      ; 0802F7A8
mov   r1,0xF                        ; 0802F7AA
strb  r1,[r0]                       ; 0802F7AC
sub   r2,0x6A                       ; 0802F7AE
add   r0,r3,r2                      ; 0802F7B0
strh  r1,[r0]                       ; 0802F7B2
ldr   r0,=0x4888                    ; 0802F7B4
add   r1,r3,r0                      ; 0802F7B6
mov   r0,0xFF                       ; 0802F7B8
strh  r0,[r1]                       ; 0802F7BA
ldr   r1,=0x418C                    ; 0802F7BC
add   r0,r3,r1                      ; 0802F7BE
str   r4,[r0]                       ; 0802F7C0
ldr   r2,=0x040000D4                ; 0802F7C2
mov   r8,r2                         ; 0802F7C4
ldrh  r1,[r2,0xA]                   ; 0802F7C6
ldr   r0,=0xC5FF                    ; 0802F7C8
and   r0,r1                         ; 0802F7CA
strh  r0,[r2,0xA]                   ; 0802F7CC
ldrh  r1,[r2,0xA]                   ; 0802F7CE
ldr   r0,=0x7FFF                    ; 0802F7D0
and   r0,r1                         ; 0802F7D2
strh  r0,[r2,0xA]                   ; 0802F7D4
ldrh  r0,[r2,0xA]                   ; 0802F7D6
bl    InitOAMBuffer03005A00         ; 0802F7D8
ldr   r3,=0x03002200                ; 0802F7DC
ldr   r0,=0x47C6                    ; 0802F7DE
add   r1,r3,r0                      ; 0802F7E0
mov   r0,0x80                       ; 0802F7E2
lsl   r0,r0,0x5                     ; 0802F7E4
strh  r0,[r1]                       ; 0802F7E6
ldr   r1,=0x47D4                    ; 0802F7E8
add   r0,r3,r1                      ; 0802F7EA
strh  r4,[r0]                       ; 0802F7EC
ldr   r2,=0x47E4                    ; 0802F7EE
add   r0,r3,r2                      ; 0802F7F0
strh  r4,[r0]                       ; 0802F7F2
add   r1,0x8                        ; 0802F7F4
add   r0,r3,r1                      ; 0802F7F6
strh  r4,[r0]                       ; 0802F7F8
add   r2,0x8                        ; 0802F7FA
add   r0,r3,r2                      ; 0802F7FC
strh  r4,[r0]                       ; 0802F7FE
sub   r1,0x6                        ; 0802F800
add   r0,r3,r1                      ; 0802F802
strh  r4,[r0]                       ; 0802F804
sub   r2,0x6                        ; 0802F806
add   r0,r3,r2                      ; 0802F808
strh  r4,[r0]                       ; 0802F80A
add   r1,0x8                        ; 0802F80C
add   r0,r3,r1                      ; 0802F80E
strh  r4,[r0]                       ; 0802F810
add   r2,0x8                        ; 0802F812
add   r0,r3,r2                      ; 0802F814
strh  r4,[r0]                       ; 0802F816
sub   r1,0x6                        ; 0802F818
add   r0,r3,r1                      ; 0802F81A
strh  r4,[r0]                       ; 0802F81C
sub   r2,0x6                        ; 0802F81E
add   r0,r3,r2                      ; 0802F820
strh  r4,[r0]                       ; 0802F822
add   r1,0x8                        ; 0802F824
add   r0,r3,r1                      ; 0802F826
strh  r4,[r0]                       ; 0802F828
add   r2,0x8                        ; 0802F82A
add   r0,r3,r2                      ; 0802F82C
strh  r4,[r0]                       ; 0802F82E
sub   r1,0x6                        ; 0802F830
add   r0,r3,r1                      ; 0802F832
strh  r4,[r0]                       ; 0802F834
sub   r2,0x6                        ; 0802F836
add   r0,r3,r2                      ; 0802F838
strh  r4,[r0]                       ; 0802F83A
add   r1,0x8                        ; 0802F83C
add   r0,r3,r1                      ; 0802F83E
strh  r4,[r0]                       ; 0802F840
add   r2,0x8                        ; 0802F842
add   r0,r3,r2                      ; 0802F844
strh  r4,[r0]                       ; 0802F846
ldr   r0,=0x47C4                    ; 0802F848
add   r1,r3,r0                      ; 0802F84A
mov   r0,0x8                        ; 0802F84C
strh  r0,[r1]                       ; 0802F84E
sub   r2,0x30                       ; 0802F850
add   r1,r3,r2                      ; 0802F852
ldr   r0,=0x2001                    ; 0802F854
strh  r0,[r1]                       ; 0802F856
mov   r0,0x3                        ; 0802F858
bl    Sub08013418                   ; 0802F85A
mov   r0,sp                         ; 0802F85E
strh  r4,[r0]                       ; 0802F860
ldr   r1,=0x02010400                ; 0802F862
ldr   r5,=0x01000100                ; 0802F864
mov   r2,r5                         ; 0802F866
bl    swi_MemoryCopy4or2            ; 0802F868  Memory copy/fill, 4- or 2-byte blocks
mov   r0,sp                         ; 0802F86C
add   r0,0x2                        ; 0802F86E
strh  r4,[r0]                       ; 0802F870
ldr   r1,=0x02010800                ; 0802F872
mov   r2,r5                         ; 0802F874
bl    swi_MemoryCopy4or2            ; 0802F876  Memory copy/fill, 4- or 2-byte blocks
add   r0,sp,0x4                     ; 0802F87A
strh  r4,[r0]                       ; 0802F87C
ldr   r1,=0x02010C00                ; 0802F87E
mov   r2,r5                         ; 0802F880
bl    swi_MemoryCopy4or2            ; 0802F882  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data082DCD30              ; 0802F886
ldr   r1,=0x020106A0                ; 0802F888
mov   r2,0x20                       ; 0802F88A
bl    swi_MemoryCopy4or2            ; 0802F88C  Memory copy/fill, 4- or 2-byte blocks
ldr   r3,=0x03002200                ; 0802F890
ldr   r0,=0x4967                    ; 0802F892
add   r1,r3,r0                      ; 0802F894
mov   r0,0x3                        ; 0802F896
strb  r0,[r1]                       ; 0802F898
bl    Sub0802E020                   ; 0802F89A
ldr   r1,=0x1BE8                    ; 0802F89E
ldr   r0,=0x03002200                ; 0802F8A0
bl    DynamicAllocate               ; 0802F8A2
mov   r6,r0                         ; 0802F8A6
ldr   r1,=0x03002200                ; 0802F8A8
ldr   r2,=0x417C                    ; 0802F8AA
add   r0,r1,r2                      ; 0802F8AC  r0 = 0300637C
str   r6,[r0]                       ; 0802F8AE
ldr   r4,=Sub08033820+1             ; 0802F8B0
ldr   r5,=Sub080335C8+1             ; 0802F8B2
sub   r4,r4,r5                      ; 0802F8B4
lsl   r4,r4,0x10                    ; 0802F8B6
lsr   r7,r4,0x10                    ; 0802F8B8
mov   r0,r1                         ; 0802F8BA
mov   r1,r7                         ; 0802F8BC
bl    DynamicAllocate               ; 0802F8BE
ldr   r3,=0x03002200                ; 0802F8C2
mov   r2,0x83                       ; 0802F8C4
lsl   r2,r2,0x7                     ; 0802F8C6  r2 = 4180
add   r1,r3,r2                      ; 0802F8C8  r1 = 03006380
mov   r3,r8                         ; 0802F8CA
str   r5,[r3]                       ; 0802F8CC
str   r0,[r3,0x4]                   ; 0802F8CE
lsr   r4,r4,0x11                    ; 0802F8D0
mov   r2,0x80                       ; 0802F8D2
lsl   r2,r2,0x18                    ; 0802F8D4
mov   r10,r2                        ; 0802F8D6
orr   r4,r2                         ; 0802F8D8
str   r4,[r3,0x8]                   ; 0802F8DA
ldr   r2,[r3,0x8]                   ; 0802F8DC
add   r0,0x1                        ; 0802F8DE
str   r0,[r1]                       ; 0802F8E0
ldr   r4,=Sub08033224+1             ; 0802F8E2
sub   r5,r5,r4                      ; 0802F8E4
lsl   r5,r5,0x10                    ; 0802F8E6
lsr   r7,r5,0x10                    ; 0802F8E8
ldr   r0,=0x03002200                ; 0802F8EA
mov   r1,r7                         ; 0802F8EC
bl    DynamicAllocate               ; 0802F8EE
ldr   r3,=0x03002200                ; 0802F8F2
ldr   r1,=0x4188                    ; 0802F8F4
add   r2,r3,r1                      ; 0802F8F6
mov   r3,r8                         ; 0802F8F8
str   r4,[r3]                       ; 0802F8FA
str   r0,[r3,0x4]                   ; 0802F8FC
lsr   r5,r5,0x11                    ; 0802F8FE
mov   r1,r10                        ; 0802F900
orr   r5,r1                         ; 0802F902
str   r5,[r3,0x8]                   ; 0802F904
ldr   r1,[r3,0x8]                   ; 0802F906
add   r0,0x1                        ; 0802F908
str   r0,[r2]                       ; 0802F90A
mov   r7,0x0                        ; 0802F90C
mov   r4,0xB0                       ; 0802F90E
mov   r3,0x0                        ; 0802F910
mov   r2,0xFF                       ; 0802F912
@@Code0802F914:
mov   r0,r7                         ; 0802F914
mul   r0,r4                         ; 0802F916
add   r0,r6,r0                      ; 0802F918
strh  r3,[r0,0x2C]                  ; 0802F91A
add   r0,0x9C                       ; 0802F91C
ldrb  r1,[r0]                       ; 0802F91E
orr   r1,r2                         ; 0802F920
strb  r1,[r0]                       ; 0802F922
add   r0,r7,0x1                     ; 0802F924
lsl   r0,r0,0x10                    ; 0802F926
lsr   r7,r0,0x10                    ; 0802F928
cmp   r7,0x17                       ; 0802F92A
bls   @@Code0802F914                ; 0802F92C
mov   r0,r6                         ; 0802F92E
mov   r1,0x0                        ; 0802F930
bl    Sub0802F598                   ; 0802F932
lsl   r0,r0,0x10                    ; 0802F936
lsr   r0,r0,0x10                    ; 0802F938
mov   r2,0xB0                       ; 0802F93A
mov   r1,r0                         ; 0802F93C
mul   r1,r2                         ; 0802F93E
mov   r3,0x8                        ; 0802F940
add   r3,r3,r6                      ; 0802F942
mov   r9,r3                         ; 0802F944
add   r0,r3,r1                      ; 0802F946
mov   r2,0x80                       ; 0802F948
lsl   r2,r2,0x8                     ; 0802F94A
str   r2,[r0]                       ; 0802F94C
mov   r5,r6                         ; 0802F94E
add   r5,0xC                        ; 0802F950
add   r0,r5,r1                      ; 0802F952
str   r2,[r0]                       ; 0802F954
add   r1,r1,r6                      ; 0802F956
mov   r10,r1                        ; 0802F958
add   r1,0x4A                       ; 0802F95A
mov   r0,0x20                       ; 0802F95C
strh  r0,[r1]                       ; 0802F95E
add   r1,0x2                        ; 0802F960
mov   r0,0x8                        ; 0802F962
strh  r0,[r1]                       ; 0802F964
mov   r0,r6                         ; 0802F966
mov   r1,0x1                        ; 0802F968
bl    Sub0802F598                   ; 0802F96A
lsl   r0,r0,0x10                    ; 0802F96E
lsr   r7,r0,0x10                    ; 0802F970
mov   r0,0xB0                       ; 0802F972
mov   r1,r7                         ; 0802F974
mul   r1,r0                         ; 0802F976
add   r3,r6,r1                      ; 0802F978
mov   r4,0x2                        ; 0802F97A
strh  r4,[r3,0x2C]                  ; 0802F97C
mov   r0,r9                         ; 0802F97E
add   r2,r0,r1                      ; 0802F980
mov   r0,0xE4                       ; 0802F982
lsl   r0,r0,0x7                     ; 0802F984
str   r0,[r2]                       ; 0802F986
add   r1,r5,r1                      ; 0802F988
mov   r0,0xE2                       ; 0802F98A
lsl   r0,r0,0x7                     ; 0802F98C
str   r0,[r1]                       ; 0802F98E
mov   r0,r3                         ; 0802F990
add   r0,0x4C                       ; 0802F992
strh  r4,[r0]                       ; 0802F994
add   r3,0x9C                       ; 0802F996
mov   r0,0x3                        ; 0802F998
strb  r0,[r3]                       ; 0802F99A
mov   r0,r10                        ; 0802F99C
add   r0,0x6A                       ; 0802F99E
strh  r7,[r0]                       ; 0802F9A0
mov   r0,r6                         ; 0802F9A2
mov   r1,0x1                        ; 0802F9A4
bl    Sub0802F598                   ; 0802F9A6
lsl   r0,r0,0x10                    ; 0802F9AA
lsr   r7,r0,0x10                    ; 0802F9AC
mov   r2,0xB0                       ; 0802F9AE
mov   r1,r7                         ; 0802F9B0
mul   r1,r2                         ; 0802F9B2
add   r3,r6,r1                      ; 0802F9B4
strh  r4,[r3,0x2C]                  ; 0802F9B6
mov   r0,r9                         ; 0802F9B8
add   r2,r0,r1                      ; 0802F9BA
mov   r0,0xA8                       ; 0802F9BC
lsl   r0,r0,0x8                     ; 0802F9BE
str   r0,[r2]                       ; 0802F9C0
add   r1,r5,r1                      ; 0802F9C2
mov   r0,0xDE                       ; 0802F9C4
lsl   r0,r0,0x7                     ; 0802F9C6
str   r0,[r1]                       ; 0802F9C8
strh  r4,[r3,0x3E]                  ; 0802F9CA
mov   r0,r3                         ; 0802F9CC
add   r0,0x40                       ; 0802F9CE
mov   r1,0x10                       ; 0802F9D0
mov   r8,r1                         ; 0802F9D2
mov   r2,r8                         ; 0802F9D4
strh  r2,[r0]                       ; 0802F9D6
mov   r1,r3                         ; 0802F9D8
add   r1,0x4C                       ; 0802F9DA
mov   r2,0x4                        ; 0802F9DC
mov   r0,0x4                        ; 0802F9DE
strh  r0,[r1]                       ; 0802F9E0
mov   r0,r3                         ; 0802F9E2
add   r0,0x9C                       ; 0802F9E4
strb  r2,[r0]                       ; 0802F9E6
mov   r0,r10                        ; 0802F9E8
add   r0,0x6C                       ; 0802F9EA
strh  r7,[r0]                       ; 0802F9EC
mov   r0,r6                         ; 0802F9EE
mov   r1,0x1                        ; 0802F9F0
bl    Sub0802F598                   ; 0802F9F2
lsl   r0,r0,0x10                    ; 0802F9F6
lsr   r7,r0,0x10                    ; 0802F9F8
mov   r3,0xB0                       ; 0802F9FA
mov   r1,r7                         ; 0802F9FC
mul   r1,r3                         ; 0802F9FE
add   r2,r6,r1                      ; 0802FA00
strh  r4,[r2,0x2C]                  ; 0802FA02
mov   r0,r9                         ; 0802FA04
add   r3,r0,r1                      ; 0802FA06
mov   r0,0x9A                       ; 0802FA08
lsl   r0,r0,0x8                     ; 0802FA0A
str   r0,[r3]                       ; 0802FA0C
add   r1,r5,r1                      ; 0802FA0E
mov   r0,0xFC                       ; 0802FA10
lsl   r0,r0,0x7                     ; 0802FA12
str   r0,[r1]                       ; 0802FA14
strh  r4,[r2,0x3E]                  ; 0802FA16
mov   r0,r2                         ; 0802FA18
add   r0,0x40                       ; 0802FA1A
mov   r1,r8                         ; 0802FA1C
strh  r1,[r0]                       ; 0802FA1E
add   r2,0x4C                       ; 0802FA20
mov   r3,0x6                        ; 0802FA22
mov   r8,r3                         ; 0802FA24
mov   r0,r8                         ; 0802FA26
strh  r0,[r2]                       ; 0802FA28
mov   r0,r10                        ; 0802FA2A
add   r0,0x6E                       ; 0802FA2C
strh  r7,[r0]                       ; 0802FA2E
mov   r0,r6                         ; 0802FA30
mov   r1,0x2                        ; 0802FA32
bl    Sub0802F598                   ; 0802FA34
lsl   r0,r0,0x10                    ; 0802FA38
lsr   r7,r0,0x10                    ; 0802FA3A
mov   r2,0xB0                       ; 0802FA3C
mov   r1,r7                         ; 0802FA3E
mul   r1,r2                         ; 0802FA40
add   r2,r6,r1                      ; 0802FA42
strh  r4,[r2,0x2C]                  ; 0802FA44
mov   r3,r9                         ; 0802FA46
add   r3,r3,r1                      ; 0802FA48
mov   r0,0x90                       ; 0802FA4A
lsl   r0,r0,0x8                     ; 0802FA4C
str   r0,[r3]                       ; 0802FA4E
add   r5,r5,r1                      ; 0802FA50
mov   r0,0xC0                       ; 0802FA52
lsl   r0,r0,0x7                     ; 0802FA54
str   r0,[r5]                       ; 0802FA56
add   r2,0x4C                       ; 0802FA58
mov   r0,r8                         ; 0802FA5A
strh  r0,[r2]                       ; 0802FA5C
mov   r0,r10                        ; 0802FA5E
add   r0,0x70                       ; 0802FA60
strh  r7,[r0]                       ; 0802FA62
ldr   r1,=0x1908                    ; 0802FA64
add   r0,r6,r1                      ; 0802FA66
mov   r2,0x0                        ; 0802FA68
strh  r2,[r0]                       ; 0802FA6A
bl    ToadiesCutsceneMain           ; 0802FA6C
mov   r0,0x0                        ; 0802FA70
bl    Sub0812C248                   ; 0802FA72
mov   r0,0x0                        ; 0802FA76
bl    Sub0812C458                   ; 0802FA78
ldr   r1,=0x03002200                ; 0802FA7C
ldr   r3,=0x4905                    ; 0802FA7E
add   r1,r1,r3                      ; 0802FA80
ldrb  r0,[r1]                       ; 0802FA82
add   r0,0x1                        ; 0802FA84
strb  r0,[r1]                       ; 0802FA86
add   sp,0xC                        ; 0802FA88
pop   {r3-r5}                       ; 0802FA8A
mov   r8,r3                         ; 0802FA8C
mov   r9,r4                         ; 0802FA8E
mov   r10,r5                        ; 0802FA90
pop   {r4-r7}                       ; 0802FA92
pop   {r0}                          ; 0802FA94
bx    r0                            ; 0802FA96
.pool                               ; 0802FA98

Sub0802FB0C:
push  {lr}                          ; 0802FB0C
add   sp,-0x4                       ; 0802FB0E
mov   r1,sp                         ; 0802FB10
mov   r0,0x31                       ; 0802FB12
strh  r0,[r1]                       ; 0802FB14
ldr   r1,=0x0600F800                ; 0802FB16
ldr   r2,=0x01000400                ; 0802FB18
mov   r0,sp                         ; 0802FB1A
bl    swi_MemoryCopy4or2            ; 0802FB1C  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x4                        ; 0802FB20
pop   {r0}                          ; 0802FB22
bx    r0                            ; 0802FB24
.pool                               ; 0802FB26

Sub0802FB30:
push  {r4-r7,lr}                    ; 0802FB30
mov   r7,r10                        ; 0802FB32
mov   r6,r9                         ; 0802FB34
mov   r5,r8                         ; 0802FB36
push  {r5-r7}                       ; 0802FB38
add   sp,-0x4                       ; 0802FB3A
mov   r5,r0                         ; 0802FB3C
mov   r4,0xE1                       ; 0802FB3E
lsl   r4,r4,0x7                     ; 0802FB40
ldr   r3,=0x70A0                    ; 0802FB42
mov   r6,0x0                        ; 0802FB44
ldr   r0,=0x1B10                    ; 0802FB46
add   r0,r5,r0                      ; 0802FB48
str   r0,[sp]                       ; 0802FB4A
ldr   r1,=0x1910                    ; 0802FB4C
add   r1,r1,r5                      ; 0802FB4E
mov   r10,r1                        ; 0802FB50
ldr   r0,=0x1990                    ; 0802FB52
add   r0,r0,r5                      ; 0802FB54
mov   r9,r0                         ; 0802FB56
ldr   r1,=0x1A10                    ; 0802FB58
add   r1,r1,r5                      ; 0802FB5A
mov   r8,r1                         ; 0802FB5C
ldr   r0,=0x1A90                    ; 0802FB5E
add   r0,r0,r5                      ; 0802FB60
mov   r12,r0                        ; 0802FB62
ldr   r1,=0x1950                    ; 0802FB64
add   r7,r5,r1                      ; 0802FB66
@@Code0802FB68:
lsl   r2,r6,0x1                     ; 0802FB68
ldr   r1,[sp]                       ; 0802FB6A
add   r0,r1,r2                      ; 0802FB6C
mov   r1,0x31                       ; 0802FB6E
strh  r1,[r0]                       ; 0802FB70
mov   r1,r10                        ; 0802FB72
add   r0,r1,r2                      ; 0802FB74
strh  r4,[r0]                       ; 0802FB76
mov   r0,r9                         ; 0802FB78
add   r1,r0,r2                      ; 0802FB7A
mov   r0,r4                         ; 0802FB7C
add   r0,0x40                       ; 0802FB7E
strh  r0,[r1]                       ; 0802FB80
mov   r0,r8                         ; 0802FB82
add   r1,r0,r2                      ; 0802FB84
mov   r0,r4                         ; 0802FB86
add   r0,0x80                       ; 0802FB88
strh  r0,[r1]                       ; 0802FB8A
mov   r0,r12                        ; 0802FB8C
add   r1,r0,r2                      ; 0802FB8E
mov   r0,r4                         ; 0802FB90
add   r0,0xC0                       ; 0802FB92
strh  r0,[r1]                       ; 0802FB94
add   r0,r7,r2                      ; 0802FB96
strh  r3,[r0]                       ; 0802FB98
ldr   r1,=0x19D0                    ; 0802FB9A
add   r0,r5,r1                      ; 0802FB9C
add   r0,r0,r2                      ; 0802FB9E
mov   r1,r3                         ; 0802FBA0
add   r1,0x40                       ; 0802FBA2
strh  r1,[r0]                       ; 0802FBA4
ldr   r1,=0x1A50                    ; 0802FBA6
add   r0,r5,r1                      ; 0802FBA8
add   r0,r0,r2                      ; 0802FBAA
mov   r1,r3                         ; 0802FBAC
add   r1,0x80                       ; 0802FBAE
strh  r1,[r0]                       ; 0802FBB0
ldr   r1,=0x1AD0                    ; 0802FBB2
add   r0,r5,r1                      ; 0802FBB4
add   r0,r0,r2                      ; 0802FBB6
mov   r1,r3                         ; 0802FBB8
add   r1,0xC0                       ; 0802FBBA
strh  r1,[r0]                       ; 0802FBBC
add   r0,r4,0x1                     ; 0802FBBE
lsl   r0,r0,0x10                    ; 0802FBC0
lsr   r4,r0,0x10                    ; 0802FBC2
add   r0,r3,0x1                     ; 0802FBC4
lsl   r0,r0,0x10                    ; 0802FBC6
lsr   r3,r0,0x10                    ; 0802FBC8
add   r0,r6,0x1                     ; 0802FBCA
lsl   r0,r0,0x10                    ; 0802FBCC
lsr   r6,r0,0x10                    ; 0802FBCE
cmp   r6,0x1F                       ; 0802FBD0
bls   @@Code0802FB68                ; 0802FBD2
ldr   r6,=0x190E                    ; 0802FBD4
add   r1,r5,r6                      ; 0802FBD6
mov   r4,0x0                        ; 0802FBD8
mov   r0,0xFC                       ; 0802FBDA
lsl   r0,r0,0x8                     ; 0802FBDC
strh  r0,[r1]                       ; 0802FBDE
mov   r0,r5                         ; 0802FBE0
bl    Sub08033158                   ; 0802FBE2
ldr   r0,=0x1BE4                    ; 0802FBE6
add   r1,r5,r0                      ; 0802FBE8
mov   r3,0x1                        ; 0802FBEA
mov   r0,0x1                        ; 0802FBEC
strb  r0,[r1]                       ; 0802FBEE
sub   r6,0x6                        ; 0802FBF0
add   r1,r5,r6                      ; 0802FBF2
mov   r0,0xA0                       ; 0802FBF4
strh  r0,[r1]                       ; 0802FBF6
ldr   r1,=0x190A                    ; 0802FBF8
add   r0,r5,r1                      ; 0802FBFA
strh  r4,[r0]                       ; 0802FBFC
add   r6,0x4                        ; 0802FBFE
add   r0,r5,r6                      ; 0802FC00
strh  r4,[r0]                       ; 0802FC02
ldr   r1,=0x1B50                    ; 0802FC04
add   r0,r5,r1                      ; 0802FC06
strh  r4,[r0]                       ; 0802FC08
ldr   r6,=0x1B52                    ; 0802FC0A
add   r0,r5,r6                      ; 0802FC0C
strh  r4,[r0]                       ; 0802FC0E
add   r1,0x4                        ; 0802FC10
add   r0,r5,r1                      ; 0802FC12
strh  r4,[r0]                       ; 0802FC14
ldr   r2,=0x03002200                ; 0802FC16
ldr   r6,=0x47E2                    ; 0802FC18
add   r0,r2,r6                      ; 0802FC1A
mov   r1,0x5                        ; 0802FC1C
strh  r1,[r0]                       ; 0802FC1E
add   r6,0x10                       ; 0802FC20
add   r0,r2,r6                      ; 0802FC22
strh  r1,[r0]                       ; 0802FC24
ldr   r0,=0x020104F2                ; 0802FC26
strh  r4,[r0]                       ; 0802FC28
add   r0,0x4                        ; 0802FC2A
strh  r4,[r0]                       ; 0802FC2C
add   r0,0x6                        ; 0802FC2E
strh  r4,[r0]                       ; 0802FC30
add   r0,0x2                        ; 0802FC32
strh  r4,[r0]                       ; 0802FC34
ldr   r0,=0x4967                    ; 0802FC36
add   r2,r2,r0                      ; 0802FC38
ldrb  r0,[r2]                       ; 0802FC3A
orr   r3,r0                         ; 0802FC3C
strb  r3,[r2]                       ; 0802FC3E
ldr   r1,=0x1B56                    ; 0802FC40
add   r0,r5,r1                      ; 0802FC42
strh  r4,[r0]                       ; 0802FC44
ldr   r6,=0x1B62                    ; 0802FC46
add   r0,r5,r6                      ; 0802FC48
strh  r4,[r0]                       ; 0802FC4A
add   sp,0x4                        ; 0802FC4C
pop   {r3-r5}                       ; 0802FC4E
mov   r8,r3                         ; 0802FC50
mov   r9,r4                         ; 0802FC52
mov   r10,r5                        ; 0802FC54
pop   {r4-r7}                       ; 0802FC56
pop   {r0}                          ; 0802FC58
bx    r0                            ; 0802FC5A
.pool                               ; 0802FC5C

StoryIntroInit:
; Game state 03: Story intro init
push  {r4-r7,lr}                    ; 0802FCB0
mov   r7,r10                        ; 0802FCB2
mov   r6,r9                         ; 0802FCB4
mov   r5,r8                         ; 0802FCB6
push  {r5-r7}                       ; 0802FCB8
add   sp,-0x10                      ; 0802FCBA
ldr   r5,=0x03002200                ; 0802FCBC
ldr   r1,=0x4904                    ; 0802FCBE
add   r0,r5,r1                      ; 0802FCC0
mov   r2,0x0                        ; 0802FCC2
mov   r10,r2                        ; 0802FCC4
mov   r3,r10                        ; 0802FCC6
strb  r3,[r0]                       ; 0802FCC8
ldr   r0,=0x4071                    ; 0802FCCA
add   r6,r5,r0                      ; 0802FCCC
ldrb  r4,[r6]                       ; 0802FCCE
ldr   r1,=0x4A48                    ; 0802FCD0
add   r3,r5,r1                      ; 0802FCD2
mov   r2,0x3                        ; 0802FCD4
mov   r8,r2                         ; 0802FCD6
mov   r1,r8                         ; 0802FCD8
and   r1,r4                         ; 0802FCDA
lsl   r1,r1,0x3                     ; 0802FCDC
ldrb  r2,[r3]                       ; 0802FCDE
mov   r0,0x19                       ; 0802FCE0
neg   r0,r0                         ; 0802FCE2
and   r0,r2                         ; 0802FCE4
orr   r0,r1                         ; 0802FCE6
strb  r0,[r3]                       ; 0802FCE8
mov   r0,0xFD                       ; 0802FCEA
and   r0,r4                         ; 0802FCEC
strb  r0,[r6]                       ; 0802FCEE
ldr   r3,=0x48F6                    ; 0802FCF0
add   r0,r5,r3                      ; 0802FCF2
mov   r4,0x5                        ; 0802FCF4
strb  r4,[r0]                       ; 0802FCF6
ldr   r0,=0x48FB                    ; 0802FCF8
add   r1,r5,r0                      ; 0802FCFA
mov   r0,0x1                        ; 0802FCFC
strb  r0,[r1]                       ; 0802FCFE
ldr   r1,=0x48FA                    ; 0802FD00
add   r0,r5,r1                      ; 0802FD02
mov   r1,0xF                        ; 0802FD04
strb  r1,[r0]                       ; 0802FD06
ldr   r2,=0x488C                    ; 0802FD08
add   r0,r5,r2                      ; 0802FD0A
strh  r1,[r0]                       ; 0802FD0C
sub   r3,0x6E                       ; 0802FD0E
add   r1,r5,r3                      ; 0802FD10
mov   r0,0xFF                       ; 0802FD12
strh  r0,[r1]                       ; 0802FD14
bl    InitOAMBuffer03005A00         ; 0802FD16
ldr   r0,=0x47C6                    ; 0802FD1A
add   r1,r5,r0                      ; 0802FD1C
mov   r0,0xB8                       ; 0802FD1E
lsl   r0,r0,0x5                     ; 0802FD20
strh  r0,[r1]                       ; 0802FD22
ldr   r2,=0x47C8                    ; 0802FD24
add   r1,r5,r2                      ; 0802FD26
ldr   r0,=0x5A01                    ; 0802FD28
strh  r0,[r1]                       ; 0802FD2A
ldr   r3,=0x47CA                    ; 0802FD2C
add   r1,r5,r3                      ; 0802FD2E
ldr   r0,=0x1C02                    ; 0802FD30
strh  r0,[r1]                       ; 0802FD32
ldr   r0,=0x47CC                    ; 0802FD34
add   r1,r5,r0                      ; 0802FD36
ldr   r0,=0x1E08                    ; 0802FD38
strh  r0,[r1]                       ; 0802FD3A
add   r2,0x6                        ; 0802FD3C
add   r1,r5,r2                      ; 0802FD3E
ldr   r0,=0x1F08                    ; 0802FD40
strh  r0,[r1]                       ; 0802FD42
add   r3,0xA                        ; 0802FD44
add   r0,r5,r3                      ; 0802FD46
mov   r2,0x8                        ; 0802FD48
strh  r2,[r0]                       ; 0802FD4A
ldr   r1,=0x47E4                    ; 0802FD4C
add   r0,r5,r1                      ; 0802FD4E
strh  r2,[r0]                       ; 0802FD50
add   r3,0x8                        ; 0802FD52
add   r0,r5,r3                      ; 0802FD54
mov   r1,0x10                       ; 0802FD56
strh  r1,[r0]                       ; 0802FD58
add   r3,0x10                       ; 0802FD5A
add   r0,r5,r3                      ; 0802FD5C
strh  r1,[r0]                       ; 0802FD5E
sub   r3,0x16                       ; 0802FD60
add   r0,r5,r3                      ; 0802FD62
strh  r2,[r0]                       ; 0802FD64
add   r3,0x10                       ; 0802FD66
add   r0,r5,r3                      ; 0802FD68
strh  r2,[r0]                       ; 0802FD6A
ldr   r2,=0x47DE                    ; 0802FD6C
add   r0,r5,r2                      ; 0802FD6E
strh  r1,[r0]                       ; 0802FD70
add   r3,0x8                        ; 0802FD72
add   r0,r5,r3                      ; 0802FD74
strh  r1,[r0]                       ; 0802FD76
ldr   r1,=0x47D8                    ; 0802FD78
add   r0,r5,r1                      ; 0802FD7A
mov   r2,r10                        ; 0802FD7C
strh  r2,[r0]                       ; 0802FD7E
sub   r3,0x6                        ; 0802FD80
add   r0,r5,r3                      ; 0802FD82
strh  r2,[r0]                       ; 0802FD84
add   r1,0x8                        ; 0802FD86
add   r0,r5,r1                      ; 0802FD88
strh  r2,[r0]                       ; 0802FD8A
ldr   r2,=0x47F0                    ; 0802FD8C
add   r0,r5,r2                      ; 0802FD8E
mov   r3,r10                        ; 0802FD90
strh  r3,[r0]                       ; 0802FD92
sub   r1,0x6                        ; 0802FD94
add   r0,r5,r1                      ; 0802FD96
strh  r3,[r0]                       ; 0802FD98
sub   r2,0x6                        ; 0802FD9A
add   r0,r5,r2                      ; 0802FD9C
strh  r3,[r0]                       ; 0802FD9E
ldr   r3,=0x47E2                    ; 0802FDA0
add   r0,r5,r3                      ; 0802FDA2
strh  r4,[r0]                       ; 0802FDA4
add   r1,0x18                       ; 0802FDA6
add   r0,r5,r1                      ; 0802FDA8
strh  r4,[r0]                       ; 0802FDAA
mov   r0,sp                         ; 0802FDAC
mov   r4,0xA8                       ; 0802FDAE
strh  r4,[r0]                       ; 0802FDB0
ldr   r1,=0x0600D800                ; 0802FDB2
ldr   r6,=0x01000400                ; 0802FDB4
mov   r2,r6                         ; 0802FDB6
bl    swi_MemoryCopy4or2            ; 0802FDB8  Memory copy/fill, 4- or 2-byte blocks
mov   r0,sp                         ; 0802FDBC
add   r0,0x2                        ; 0802FDBE
strh  r4,[r0]                       ; 0802FDC0
ldr   r1,=0x0600E800                ; 0802FDC2
mov   r2,r6                         ; 0802FDC4
bl    swi_MemoryCopy4or2            ; 0802FDC6  Memory copy/fill, 4- or 2-byte blocks
mov   r2,r10                        ; 0802FDCA
str   r2,[sp,0x4]                   ; 0802FDCC
add   r0,sp,0x4                     ; 0802FDCE
ldr   r1,=0x06009000                ; 0802FDD0
ldr   r2,=0x05000800                ; 0802FDD2
bl    swi_MemoryCopy4or2            ; 0802FDD4  Memory copy/fill, 4- or 2-byte blocks
add   r0,sp,0x8                     ; 0802FDD8
mov   r1,0x31                       ; 0802FDDA
strh  r1,[r0]                       ; 0802FDDC
ldr   r1,=0x0600F800                ; 0802FDDE
mov   r2,r6                         ; 0802FDE0
bl    swi_MemoryCopy4or2            ; 0802FDE2  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x4                        ; 0802FDE6
bl    Sub08013418                   ; 0802FDE8
mov   r0,sp                         ; 0802FDEC
add   r0,0xA                        ; 0802FDEE
mov   r3,r10                        ; 0802FDF0
strh  r3,[r0]                       ; 0802FDF2
ldr   r6,=0x02010400                ; 0802FDF4
ldr   r2,=0x01000200                ; 0802FDF6
mov   r1,r6                         ; 0802FDF8
bl    swi_MemoryCopy4or2            ; 0802FDFA  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data082D75F8              ; 0802FDFE
mov   r2,0x80                       ; 0802FE00
lsl   r2,r2,0x1                     ; 0802FE02
mov   r1,r6                         ; 0802FE04
bl    swi_MemoryCopy4or2            ; 0802FE06  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data082D7FD8              ; 0802FE0A
ldr   r1,=0x020104C0                ; 0802FE0C
mov   r2,0xC                        ; 0802FE0E
bl    swi_MemoryCopy4or2            ; 0802FE10  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=Data082D77F8              ; 0802FE14
ldr   r1,=0x02010620                ; 0802FE16
mov   r2,0x70                       ; 0802FE18
bl    swi_MemoryCopy4or2            ; 0802FE1A  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010800                ; 0802FE1E
mov   r4,0x80                       ; 0802FE20
lsl   r4,r4,0x2                     ; 0802FE22
mov   r0,r6                         ; 0802FE24
mov   r2,r4                         ; 0802FE26
bl    swi_MemoryCopy4or2            ; 0802FE28  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010C00                ; 0802FE2C
mov   r0,r6                         ; 0802FE2E
mov   r2,r4                         ; 0802FE30
bl    swi_MemoryCopy4or2            ; 0802FE32  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x4967                    ; 0802FE36
add   r0,r5,r1                      ; 0802FE38
mov   r2,r8                         ; 0802FE3A
strb  r2,[r0]                       ; 0802FE3C
ldr   r1,=0x1BE8                    ; 0802FE3E
mov   r0,r5                         ; 0802FE40
bl    DynamicAllocate               ; 0802FE42
mov   r7,r0                         ; 0802FE46
ldr   r3,=0x417C                    ; 0802FE48
add   r0,r5,r3                      ; 0802FE4A  r0 = 0300637C
str   r7,[r0]                       ; 0802FE4C
ldr   r4,=Sub08033820+1             ; 0802FE4E
ldr   r2,=Sub080335C8+1             ; 0802FE50
sub   r4,r4,r2                      ; 0802FE52  r4 = 0258
lsl   r4,r4,0x10                    ; 0802FE54
lsr   r3,r4,0x10                    ; 0802FE56
mov   r0,r5                         ; 0802FE58
mov   r1,r3                         ; 0802FE5A
str   r2,[sp,0xC]                   ; 0802FE5C
bl    DynamicAllocate               ; 0802FE5E
mov   r3,0x83                       ; 0802FE62
lsl   r3,r3,0x7                     ; 0802FE64  r3 = 4180
add   r1,r5,r3                      ; 0802FE66  r1 = 03006380
ldr   r6,=0x040000D4                ; 0802FE68
ldr   r2,[sp,0xC]                   ; 0802FE6A
str   r2,[r6]                       ; 0802FE6C
str   r0,[r6,0x4]                   ; 0802FE6E
lsr   r4,r4,0x11                    ; 0802FE70
mov   r3,0x80                       ; 0802FE72
lsl   r3,r3,0x18                    ; 0802FE74
mov   r9,r3                         ; 0802FE76
orr   r4,r3                         ; 0802FE78
str   r4,[r6,0x8]                   ; 0802FE7A
ldr   r3,[r6,0x8]                   ; 0802FE7C
add   r0,0x1                        ; 0802FE7E
str   r0,[r1]                       ; 0802FE80
ldr   r4,=StoryIntroText_DispChar+1 ; 0802FE82
ldr   r0,=Sub0802F2A4+1             ; 0802FE84
mov   r8,r0                         ; 0802FE86
sub   r4,r4,r0                      ; 0802FE88
lsl   r4,r4,0x10                    ; 0802FE8A
lsr   r3,r4,0x10                    ; 0802FE8C
mov   r0,r5                         ; 0802FE8E
mov   r1,r3                         ; 0802FE90
str   r2,[sp,0xC]                   ; 0802FE92
bl    DynamicAllocate               ; 0802FE94
ldr   r3,=0x4184                    ; 0802FE98
add   r1,r5,r3                      ; 0802FE9A
mov   r3,r8                         ; 0802FE9C
str   r3,[r6]                       ; 0802FE9E
str   r0,[r6,0x4]                   ; 0802FEA0
lsr   r4,r4,0x11                    ; 0802FEA2
mov   r3,r9                         ; 0802FEA4
orr   r4,r3                         ; 0802FEA6
str   r4,[r6,0x8]                   ; 0802FEA8
ldr   r3,[r6,0x8]                   ; 0802FEAA
add   r0,0x1                        ; 0802FEAC
str   r0,[r1]                       ; 0802FEAE
ldr   r4,=Sub08033224+1             ; 0802FEB0
ldr   r2,[sp,0xC]                   ; 0802FEB2
sub   r2,r2,r4                      ; 0802FEB4
lsl   r2,r2,0x10                    ; 0802FEB6
lsr   r3,r2,0x10                    ; 0802FEB8
mov   r0,r5                         ; 0802FEBA
mov   r1,r3                         ; 0802FEBC
str   r2,[sp,0xC]                   ; 0802FEBE
bl    DynamicAllocate               ; 0802FEC0
ldr   r3,=0x4188                    ; 0802FEC4
add   r1,r5,r3                      ; 0802FEC6
str   r4,[r6]                       ; 0802FEC8
str   r0,[r6,0x4]                   ; 0802FECA
ldr   r2,[sp,0xC]                   ; 0802FECC
lsr   r2,r2,0x11                    ; 0802FECE
mov   r3,r9                         ; 0802FED0
orr   r2,r3                         ; 0802FED2
str   r2,[r6,0x8]                   ; 0802FED4
ldr   r2,[r6,0x8]                   ; 0802FED6
add   r0,0x1                        ; 0802FED8
str   r0,[r1]                       ; 0802FEDA
ldr   r1,=0x1BE4                    ; 0802FEDC
add   r0,r7,r1                      ; 0802FEDE
mov   r2,0x0                        ; 0802FEE0
strb  r2,[r0]                       ; 0802FEE2
ldr   r3,=0x48A2                    ; 0802FEE4
add   r5,r5,r3                      ; 0802FEE6
mov   r0,r10                        ; 0802FEE8
strh  r0,[r5]                       ; 0802FEEA
mov   r1,r10                        ; 0802FEEC
str   r1,[r7,0x4]                   ; 0802FEEE
mov   r3,0x0                        ; 0802FEF0
mov   r5,0xB0                       ; 0802FEF2
mov   r4,0x0                        ; 0802FEF4
mov   r2,0xFF                       ; 0802FEF6
@@Code0802FEF8:
mov   r0,r3                         ; 0802FEF8
mul   r0,r5                         ; 0802FEFA
add   r0,r7,r0                      ; 0802FEFC
strh  r4,[r0,0x2C]                  ; 0802FEFE
add   r0,0x9C                       ; 0802FF00
ldrb  r1,[r0]                       ; 0802FF02
orr   r1,r2                         ; 0802FF04
strb  r1,[r0]                       ; 0802FF06
add   r0,r3,0x1                     ; 0802FF08
lsl   r0,r0,0x10                    ; 0802FF0A
lsr   r3,r0,0x10                    ; 0802FF0C
cmp   r3,0x17                       ; 0802FF0E
bls   @@Code0802FEF8                ; 0802FF10
ldr   r1,=Data0816B884              ; 0802FF12
mov   r0,r7                         ; 0802FF14
bl    Sub0802F72C                   ; 0802FF16
mov   r0,r7                         ; 0802FF1A
bl    Sub0802FB30                   ; 0802FF1C
ldr   r2,=0x1B5E                    ; 0802FF20
add   r1,r7,r2                      ; 0802FF22
mov   r0,0xC4                       ; 0802FF24
lsl   r0,r0,0x6                     ; 0802FF26
strh  r0,[r1]                       ; 0802FF28
ldr   r1,=0x030021C0                ; 0802FF2A
ldr   r0,=Sub08033820+1             ; 0802FF2C
str   r0,[r1,0x10]                  ; 0802FF2E
ldr   r0,=Sub0803387C+1             ; 0802FF30
str   r0,[r1,0x14]                  ; 0802FF32
mov   r0,0x0                        ; 0802FF34  00: Story intro
bl    PlayYIMusic                   ; 0802FF36
ldr   r1,=0x03002200                ; 0802FF3A
ldr   r3,=0x47C4                    ; 0802FF3C
add   r2,r1,r3                      ; 0802FF3E
ldr   r0,=0x7728                    ; 0802FF40
strh  r0,[r2]                       ; 0802FF42
ldr   r0,=0x47C2                    ; 0802FF44
add   r2,r1,r0                      ; 0802FF46
ldr   r0,=0x2085                    ; 0802FF48
strh  r0,[r2]                       ; 0802FF4A
ldr   r2,=0x4905                    ; 0802FF4C
add   r1,r1,r2                      ; 0802FF4E
mov   r0,0x4                        ; 0802FF50
strb  r0,[r1]                       ; 0802FF52
add   sp,0x10                       ; 0802FF54
pop   {r3-r5}                       ; 0802FF56
mov   r8,r3                         ; 0802FF58
mov   r9,r4                         ; 0802FF5A
mov   r10,r5                        ; 0802FF5C
pop   {r4-r7}                       ; 0802FF5E
pop   {r0}                          ; 0802FF60
bx    r0                            ; 0802FF62
.pool                               ; 0802FF64

Sub0803004C:
push  {r4-r7,lr}                    ; 0803004C
mov   r7,r10                        ; 0803004E
mov   r6,r9                         ; 08030050
mov   r5,r8                         ; 08030052
push  {r5-r7}                       ; 08030054
mov   r10,r0                        ; 08030056
lsl   r1,r1,0x10                    ; 08030058
lsr   r6,r1,0x10                    ; 0803005A
ldr   r0,=0x03002200                ; 0803005C
ldr   r1,=0x4886                    ; 0803005E
add   r0,r0,r1                      ; 08030060
mov   r1,0x0                        ; 08030062
strh  r1,[r0]                       ; 08030064
mov   r0,0xB0                       ; 08030066
mul   r0,r6                         ; 08030068
add   r0,r10                        ; 0803006A
add   r0,0x48                       ; 0803006C
ldrh  r0,[r0]                       ; 0803006E
add   r0,0x1                        ; 08030070
lsl   r0,r0,0x10                    ; 08030072
lsr   r4,r0,0x10                    ; 08030074
mov   r5,0x0                        ; 08030076
ldr   r3,=Data082D7AD8              ; 08030078
mov   r9,r3                         ; 0803007A
ldr   r7,=Data082D7CD8              ; 0803007C
mov   r8,r7                         ; 0803007E
ldr   r0,=Data082D78D8              ; 08030080
mov   r12,r0                        ; 08030082
@@Code08030084:
lsl   r1,r5,0x1                     ; 08030084
ldr   r3,=0x02010842                ; 08030086
add   r2,r1,r3                      ; 08030088
ldr   r7,=0x02010442                ; 0803008A
add   r0,r1,r7                      ; 0803008C
ldrh  r0,[r0]                       ; 0803008E
strh  r0,[r2]                       ; 08030090
ldr   r0,=0x02010862                ; 08030092
add   r2,r1,r0                      ; 08030094
ldr   r3,=0x02010462                ; 08030096
add   r0,r1,r3                      ; 08030098
ldrh  r0,[r0]                       ; 0803009A
strh  r0,[r2]                       ; 0803009C
ldr   r7,=0x02010C42                ; 0803009E
add   r3,r1,r7                      ; 080300A0
lsl   r2,r4,0x1                     ; 080300A2
mov   r7,r12                        ; 080300A4
add   r0,r2,r7                      ; 080300A6
ldrh  r0,[r0]                       ; 080300A8
strh  r0,[r3]                       ; 080300AA
ldr   r0,=0x02010C62                ; 080300AC
add   r3,r1,r0                      ; 080300AE
mov   r7,r9                         ; 080300B0
add   r0,r2,r7                      ; 080300B2
ldrh  r0,[r0]                       ; 080300B4
strh  r0,[r3]                       ; 080300B6
ldr   r0,=0x02010E02                ; 080300B8
add   r1,r1,r0                      ; 080300BA
add   r2,r8                         ; 080300BC
ldrh  r0,[r2]                       ; 080300BE
strh  r0,[r1]                       ; 080300C0
add   r0,r5,0x1                     ; 080300C2
lsl   r0,r0,0x10                    ; 080300C4
lsr   r5,r0,0x10                    ; 080300C6
add   r0,r4,0x1                     ; 080300C8
lsl   r0,r0,0x10                    ; 080300CA
lsr   r4,r0,0x10                    ; 080300CC
cmp   r5,0xD                        ; 080300CE
bls   @@Code08030084                ; 080300D0
mov   r0,0xB0                       ; 080300D2
mov   r1,r6                         ; 080300D4
mul   r1,r0                         ; 080300D6
add   r1,r10                        ; 080300D8
add   r1,0x48                       ; 080300DA
ldrh  r0,[r1]                       ; 080300DC
add   r0,0x10                       ; 080300DE
strh  r0,[r1]                       ; 080300E0
pop   {r3-r5}                       ; 080300E2
mov   r8,r3                         ; 080300E4
mov   r9,r4                         ; 080300E6
mov   r10,r5                        ; 080300E8
pop   {r4-r7}                       ; 080300EA
pop   {r0}                          ; 080300EC
bx    r0                            ; 080300EE
.pool                               ; 080300F0

Sub08030120:
push  {r4-r7,lr}                    ; 08030120
mov   r7,r8                         ; 08030122
push  {r7}                          ; 08030124
lsl   r1,r1,0x10                    ; 08030126
lsr   r1,r1,0x10                    ; 08030128
ldr   r5,=0x03002200                ; 0803012A
ldr   r3,=0x4901                    ; 0803012C
add   r2,r5,r3                      ; 0803012E
ldrb  r2,[r2]                       ; 08030130
mov   r4,0x1                        ; 08030132
mov   r3,0x1                        ; 08030134
and   r3,r2                         ; 08030136
eor   r3,r4                         ; 08030138
mov   r2,0xB0                       ; 0803013A
mul   r1,r2                         ; 0803013C
add   r1,r0,r1                      ; 0803013E
add   r1,0x6E                       ; 08030140
ldrh  r2,[r1]                       ; 08030142
add   r4,r2,0x2                     ; 08030144
mov   r2,0xFF                       ; 08030146
and   r4,r2                         ; 08030148
strh  r4,[r1]                       ; 0803014A
mov   r6,0x0                        ; 0803014C
lsl   r1,r3,0x2                     ; 0803014E
add   r1,r1,r3                      ; 08030150
lsl   r7,r1,0x6                     ; 08030152
ldr   r1,=0x1688                    ; 08030154
add   r3,r0,r1                      ; 08030156
ldr   r0,=0x47E6                    ; 08030158
add   r5,r5,r0                      ; 0803015A
ldr   r1,=Data081AF6CE              ; 0803015C
mov   r8,r1                         ; 0803015E
ldr   r0,=Data0816B9B0              ; 08030160
mov   r12,r0                        ; 08030162
@@Code08030164:
mov   r2,r6                         ; 08030164
sub   r2,0x59                       ; 08030166
lsl   r0,r2,0x10                    ; 08030168
lsr   r0,r0,0x10                    ; 0803016A
cmp   r0,0x16                       ; 0803016C
bhi   @@Code080301B8                ; 0803016E
lsl   r0,r4,0x1                     ; 08030170
add   r0,r8                         ; 08030172
ldrh  r1,[r0]                       ; 08030174
lsl   r0,r2,0x1                     ; 08030176
add   r0,r12                        ; 08030178
ldrh  r0,[r0]                       ; 0803017A
mov   r2,r1                         ; 0803017C
mul   r2,r0                         ; 0803017E
lsr   r2,r2,0x8                     ; 08030180
mov   r0,0x80                       ; 08030182
and   r0,r2                         ; 08030184
cmp   r0,0x0                        ; 08030186
beq   @@Code08030190                ; 08030188
mov   r0,0xFF                       ; 0803018A
lsl   r0,r0,0x8                     ; 0803018C
orr   r2,r0                         ; 0803018E
@@Code08030190:
lsl   r1,r6,0x1                     ; 08030190
add   r1,r1,r7                      ; 08030192
add   r1,r3,r1                      ; 08030194
ldrh  r0,[r5]                       ; 08030196
add   r0,r0,r2                      ; 08030198
strh  r0,[r1]                       ; 0803019A
b     @@Code080301C2                ; 0803019C
.pool                               ; 0803019E

@@Code080301B8:
lsl   r0,r6,0x1                     ; 080301B8
add   r0,r0,r7                      ; 080301BA
add   r0,r3,r0                      ; 080301BC
ldrh  r1,[r5]                       ; 080301BE
strh  r1,[r0]                       ; 080301C0
@@Code080301C2:
add   r4,0x30                       ; 080301C2
mov   r0,0xFF                       ; 080301C4
and   r4,r0                         ; 080301C6
add   r0,r6,0x1                     ; 080301C8
lsl   r0,r0,0x10                    ; 080301CA
lsr   r6,r0,0x10                    ; 080301CC
cmp   r6,0x7F                       ; 080301CE
bls   @@Code08030164                ; 080301D0
pop   {r3}                          ; 080301D2
mov   r8,r3                         ; 080301D4
pop   {r4-r7}                       ; 080301D6
pop   {r0}                          ; 080301D8
bx    r0                            ; 080301DA

Sub080301DC:
push  {r4-r5,lr}                    ; 080301DC
ldr   r4,=0x03002200                ; 080301DE
ldr   r2,=0x4901                    ; 080301E0
add   r1,r4,r2                      ; 080301E2
ldrb  r1,[r1]                       ; 080301E4
mov   r3,0x1                        ; 080301E6
mov   r2,0x1                        ; 080301E8
and   r2,r1                         ; 080301EA
eor   r2,r3                         ; 080301EC
mov   r3,0x0                        ; 080301EE
lsl   r1,r2,0x2                     ; 080301F0
add   r1,r1,r2                      ; 080301F2
lsl   r5,r1,0x6                     ; 080301F4
ldr   r1,=0x1688                    ; 080301F6
add   r2,r0,r1                      ; 080301F8
ldr   r0,=0x47E6                    ; 080301FA
add   r4,r4,r0                      ; 080301FC
@@Code080301FE:
cmp   r3,0x16                       ; 080301FE
bhi   @@Code08030220                ; 08030200
lsl   r1,r3,0x1                     ; 08030202
add   r1,r1,r5                      ; 08030204
add   r1,r2,r1                      ; 08030206
ldrh  r0,[r4]                       ; 08030208
lsr   r0,r0,0x2                     ; 0803020A
strh  r0,[r1]                       ; 0803020C
b     @@Code0803023C                ; 0803020E
.pool                               ; 08030210

@@Code08030220:
cmp   r3,0x57                       ; 08030220
bhi   @@Code08030232                ; 08030222
lsl   r1,r3,0x1                     ; 08030224
add   r1,r1,r5                      ; 08030226
add   r1,r2,r1                      ; 08030228
ldrh  r0,[r4]                       ; 0803022A
lsr   r0,r0,0x1                     ; 0803022C
strh  r0,[r1]                       ; 0803022E
b     @@Code0803023C                ; 08030230
@@Code08030232:
lsl   r0,r3,0x1                     ; 08030232
add   r0,r0,r5                      ; 08030234
add   r0,r2,r0                      ; 08030236
ldrh  r1,[r4]                       ; 08030238
strh  r1,[r0]                       ; 0803023A
@@Code0803023C:
add   r0,r3,0x1                     ; 0803023C
lsl   r0,r0,0x10                    ; 0803023E
lsr   r3,r0,0x10                    ; 08030240
cmp   r3,0x7F                       ; 08030242
bls   @@Code080301FE                ; 08030244
pop   {r4-r5}                       ; 08030246
pop   {r0}                          ; 08030248
bx    r0                            ; 0803024A

Sub0803024C:
lsl   r1,r1,0x10                    ; 0803024C
lsr   r1,r1,0x10                    ; 0803024E
mov   r2,0xB0                       ; 08030250
mul   r1,r2                         ; 08030252
add   r0,r0,r1                      ; 08030254
add   r0,0x4E                       ; 08030256
mov   r1,0x9                        ; 08030258
strh  r1,[r0]                       ; 0803025A
bx    lr                            ; 0803025C
.pool                               ; 0803025E

Sub08030260:
lsl   r1,r1,0x10                    ; 08030260
lsr   r1,r1,0x10                    ; 08030262
mov   r2,0xB0                       ; 08030264
mul   r1,r2                         ; 08030266
add   r0,r0,r1                      ; 08030268
add   r0,0x4E                       ; 0803026A
mov   r1,0x9                        ; 0803026C
strh  r1,[r0]                       ; 0803026E
bx    lr                            ; 08030270
.pool                               ; 08030272

Sub08030274:
lsl   r1,r1,0x10                    ; 08030274
lsr   r1,r1,0x10                    ; 08030276
mov   r2,0xB0                       ; 08030278
mul   r1,r2                         ; 0803027A
add   r0,r0,r1                      ; 0803027C
add   r0,0x4E                       ; 0803027E
mov   r1,0x9                        ; 08030280
strh  r1,[r0]                       ; 08030282
bx    lr                            ; 08030284
.pool                               ; 08030286

Sub08030288:
push  {r4,lr}                       ; 08030288
mov   r4,r0                         ; 0803028A
lsl   r1,r1,0x10                    ; 0803028C
lsr   r1,r1,0x10                    ; 0803028E
mov   r0,0xB0                       ; 08030290
mov   r3,r1                         ; 08030292
mul   r3,r0                         ; 08030294
add   r2,r4,r3                      ; 08030296
mov   r1,r2                         ; 08030298
add   r1,0x4E                       ; 0803029A
ldrh  r0,[r1]                       ; 0803029C
cmp   r0,0x0                        ; 0803029E
bne   @@Code080302C6                ; 080302A0
mov   r0,0x8                        ; 080302A2
strh  r0,[r1]                       ; 080302A4
add   r2,0x72                       ; 080302A6
ldrh  r0,[r2]                       ; 080302A8
add   r0,0x1                        ; 080302AA
mov   r1,0x1F                       ; 080302AC
and   r0,r1                         ; 080302AE
strh  r0,[r2]                       ; 080302B0
mov   r2,r4                         ; 080302B2
add   r2,0xC                        ; 080302B4
add   r2,r2,r3                      ; 080302B6
ldr   r1,=Data0816BD74              ; 080302B8
lsl   r0,r0,0x2                     ; 080302BA
add   r0,r0,r1                      ; 080302BC
ldr   r1,[r2]                       ; 080302BE
ldr   r0,[r0]                       ; 080302C0
add   r1,r1,r0                      ; 080302C2
str   r1,[r2]                       ; 080302C4
@@Code080302C6:
pop   {r4}                          ; 080302C6
pop   {r0}                          ; 080302C8
bx    r0                            ; 080302CA
.pool                               ; 080302CC

Sub080302D0:
push  {r4,lr}                       ; 080302D0
mov   r4,r0                         ; 080302D2
lsl   r1,r1,0x10                    ; 080302D4
lsr   r3,r1,0x10                    ; 080302D6
mov   r0,0xB0                       ; 080302D8
mul   r0,r3                         ; 080302DA
add   r1,r4,r0                      ; 080302DC
mov   r0,r1                         ; 080302DE
add   r0,0x4C                       ; 080302E0
ldrh  r0,[r0]                       ; 080302E2
cmp   r0,0x0                        ; 080302E4
bne   @@Code0803031C                ; 080302E6
mov   r2,r1                         ; 080302E8
add   r2,0x40                       ; 080302EA
ldrh  r0,[r2]                       ; 080302EC
add   r0,0x1                        ; 080302EE
strh  r0,[r2]                       ; 080302F0
ldrh  r1,[r1,0x3E]                  ; 080302F2
cmp   r1,0x0                        ; 080302F4
beq   @@Code08030306                ; 080302F6
lsl   r0,r0,0x10                    ; 080302F8
lsr   r0,r0,0x10                    ; 080302FA
cmp   r0,0x1B                       ; 080302FC
bls   @@Code08030310                ; 080302FE
mov   r0,0x10                       ; 08030300
strh  r0,[r2]                       ; 08030302
b     @@Code08030310                ; 08030304
@@Code08030306:
lsl   r0,r0,0x10                    ; 08030306
lsr   r0,r0,0x10                    ; 08030308
cmp   r0,0xB                        ; 0803030A
bls   @@Code08030310                ; 0803030C
strh  r1,[r2]                       ; 0803030E
@@Code08030310:
mov   r0,0xB0                       ; 08030310
mul   r0,r3                         ; 08030312
add   r0,r4,r0                      ; 08030314
add   r0,0x4C                       ; 08030316
mov   r1,0x8                        ; 08030318
strh  r1,[r0]                       ; 0803031A
@@Code0803031C:
mov   r0,r4                         ; 0803031C
mov   r1,r3                         ; 0803031E
bl    Sub08030288                   ; 08030320
pop   {r4}                          ; 08030324
pop   {r0}                          ; 08030326
bx    r0                            ; 08030328
.pool                               ; 0803032A

Sub0803032C:
push  {r4-r7,lr}                    ; 0803032C
mov   r7,r9                         ; 0803032E
mov   r6,r8                         ; 08030330
push  {r6-r7}                       ; 08030332
mov   r8,r0                         ; 08030334
lsl   r1,r1,0x10                    ; 08030336
lsr   r1,r1,0x10                    ; 08030338
mov   r9,r1                         ; 0803033A
mov   r0,0xB0                       ; 0803033C
mov   r12,r0                        ; 0803033E
mov   r1,r9                         ; 08030340
mul   r1,r0                         ; 08030342
mov   r0,r8                         ; 08030344
add   r7,r0,r1                      ; 08030346
mov   r4,r7                         ; 08030348
add   r4,0x76                       ; 0803034A
ldrh  r0,[r4]                       ; 0803034C
cmp   r0,0x1                        ; 0803034E
beq   @@Code08030394                ; 08030350
cmp   r0,0x1                        ; 08030352
ble   @@Code0803035E                ; 08030354
cmp   r0,0x2                        ; 08030356
beq   @@Code080303DE                ; 08030358
cmp   r0,0x3                        ; 0803035A
beq   @@Code08030458                ; 0803035C
@@Code0803035E:
mov   r5,r7                         ; 0803035E
add   r5,0x4A                       ; 08030360
ldrh  r0,[r5]                       ; 08030362
cmp   r0,0x0                        ; 08030364
bne   @@Code08030448                ; 08030366
mov   r0,0x24                       ; 08030368  24: Death (Toadies grab Baby Mario)
bl    PlayYIMusic                   ; 0803036A
ldrh  r6,[r4]                       ; 0803036E
add   r0,r6,0x1                     ; 08030370
strh  r0,[r4]                       ; 08030372
ldr   r1,=Data0816BDB4              ; 08030374
lsl   r0,r6,0x1                     ; 08030376
add   r0,r0,r1                      ; 08030378
ldrh  r0,[r0]                       ; 0803037A
strh  r0,[r5]                       ; 0803037C
mov   r1,r7                         ; 0803037E
add   r1,0x40                       ; 08030380
mov   r0,0xC                        ; 08030382
strh  r0,[r1]                       ; 08030384
add   r1,0xC                        ; 08030386
mov   r0,0xA                        ; 08030388
strh  r0,[r1]                       ; 0803038A
b     @@Code080303D4                ; 0803038C
.pool                               ; 0803038E

@@Code08030394:
mov   r1,r7                         ; 08030394
add   r1,0x4A                       ; 08030396
ldrh  r2,[r1]                       ; 08030398
cmp   r2,0x0                        ; 0803039A
bne   @@Code080303B4                ; 0803039C
mov   r0,0x2                        ; 0803039E
strh  r0,[r4]                       ; 080303A0
mov   r0,0x10                       ; 080303A2
strh  r0,[r1]                       ; 080303A4
add   r1,0x2                        ; 080303A6
mov   r0,0x8                        ; 080303A8
strh  r0,[r1]                       ; 080303AA
mov   r0,r7                         ; 080303AC
add   r0,0x40                       ; 080303AE
strh  r2,[r0]                       ; 080303B0
b     @@Code08030448                ; 080303B2
@@Code080303B4:
mov   r1,r7                         ; 080303B4
add   r1,0x4C                       ; 080303B6
ldrh  r0,[r1]                       ; 080303B8
cmp   r0,0x0                        ; 080303BA
bne   @@Code080303D4                ; 080303BC
mov   r0,0x3                        ; 080303BE
strh  r0,[r1]                       ; 080303C0
sub   r1,0xC                        ; 080303C2
ldrh  r6,[r1]                       ; 080303C4
add   r0,r6,0x1                     ; 080303C6
lsl   r0,r0,0x10                    ; 080303C8
lsr   r6,r0,0x10                    ; 080303CA
cmp   r6,0xF                        ; 080303CC
bls   @@Code080303D2                ; 080303CE
mov   r6,0xC                        ; 080303D0
@@Code080303D2:
strh  r6,[r1]                       ; 080303D2
@@Code080303D4:
mov   r0,r8                         ; 080303D4
mov   r1,r9                         ; 080303D6
bl    Sub08030288                   ; 080303D8
b     @@Code08030478                ; 080303DC
@@Code080303DE:
mov   r0,r7                         ; 080303DE
add   r0,0x4A                       ; 080303E0
ldrh  r0,[r0]                       ; 080303E2
cmp   r0,0x0                        ; 080303E4
bne   @@Code08030478                ; 080303E6
mov   r0,0x3                        ; 080303E8
strh  r0,[r4]                       ; 080303EA
mov   r3,r8                         ; 080303EC
add   r3,0x24                       ; 080303EE
add   r0,r3,r1                      ; 080303F0
ldr   r5,=0xFFFFFC00                ; 080303F2
str   r5,[r0]                       ; 080303F4
mov   r2,r8                         ; 080303F6
add   r2,0x1C                       ; 080303F8
add   r0,r2,r1                      ; 080303FA
mov   r4,0x40                       ; 080303FC
str   r4,[r0]                       ; 080303FE
mov   r0,r7                         ; 08030400
add   r0,0x6A                       ; 08030402
ldrh  r6,[r0]                       ; 08030404
mov   r0,r12                        ; 08030406
mul   r0,r6                         ; 08030408
add   r1,r3,r0                      ; 0803040A
str   r5,[r1]                       ; 0803040C
add   r0,r2,r0                      ; 0803040E
str   r4,[r0]                       ; 08030410
mov   r0,r7                         ; 08030412
add   r0,0x6C                       ; 08030414
ldrh  r6,[r0]                       ; 08030416
mov   r0,r12                        ; 08030418
mul   r0,r6                         ; 0803041A
add   r1,r3,r0                      ; 0803041C
str   r5,[r1]                       ; 0803041E
add   r0,r2,r0                      ; 08030420
str   r4,[r0]                       ; 08030422
mov   r0,r7                         ; 08030424
add   r0,0x6E                       ; 08030426
ldrh  r6,[r0]                       ; 08030428
mov   r0,r12                        ; 0803042A
mul   r0,r6                         ; 0803042C
add   r1,r3,r0                      ; 0803042E
str   r5,[r1]                       ; 08030430
add   r0,r2,r0                      ; 08030432
str   r4,[r0]                       ; 08030434
mov   r0,r7                         ; 08030436
add   r0,0x70                       ; 08030438
ldrh  r6,[r0]                       ; 0803043A
mov   r0,r12                        ; 0803043C
mul   r0,r6                         ; 0803043E
add   r3,r3,r0                      ; 08030440
str   r5,[r3]                       ; 08030442
add   r2,r2,r0                      ; 08030444
str   r4,[r2]                       ; 08030446
@@Code08030448:
mov   r0,r8                         ; 08030448
mov   r1,r9                         ; 0803044A
bl    Sub080302D0                   ; 0803044C
b     @@Code08030478                ; 08030450
.pool                               ; 08030452

@@Code08030458:
mov   r0,r8                         ; 08030458
add   r0,0xC                        ; 0803045A
add   r0,r0,r1                      ; 0803045C
ldr   r1,[r0]                       ; 0803045E
ldr   r0,=0xFFFFD000                ; 08030460
cmp   r1,r0                         ; 08030462
bge   @@Code08030470                ; 08030464
ldr   r1,=0x1908                    ; 08030466
add   r1,r8                         ; 08030468
ldrh  r0,[r1]                       ; 0803046A
add   r0,0x1                        ; 0803046C
strh  r0,[r1]                       ; 0803046E
@@Code08030470:
mov   r0,r8                         ; 08030470
mov   r1,r9                         ; 08030472
bl    Sub080302D0                   ; 08030474
@@Code08030478:
pop   {r3-r4}                       ; 08030478
mov   r8,r3                         ; 0803047A
mov   r9,r4                         ; 0803047C
pop   {r4-r7}                       ; 0803047E
pop   {r0}                          ; 08030480
bx    r0                            ; 08030482
.pool                               ; 08030484

Sub0803048C:
push  {r4-r5,lr}                    ; 0803048C
mov   r5,r0                         ; 0803048E
lsl   r1,r1,0x10                    ; 08030490
lsr   r1,r1,0x10                    ; 08030492
mov   r4,r1                         ; 08030494
mov   r0,0xB0                       ; 08030496
mul   r0,r4                         ; 08030498
add   r2,r5,r0                      ; 0803049A
mov   r3,r2                         ; 0803049C
add   r3,0x4C                       ; 0803049E
ldrh  r0,[r3]                       ; 080304A0
cmp   r0,0x0                        ; 080304A2
bne   @@Code080304B4                ; 080304A4
add   r2,0x40                       ; 080304A6
ldrh  r0,[r2]                       ; 080304A8
mov   r1,0x1                        ; 080304AA
eor   r0,r1                         ; 080304AC
strh  r0,[r2]                       ; 080304AE
mov   r0,0x6                        ; 080304B0
strh  r0,[r3]                       ; 080304B2
@@Code080304B4:
mov   r0,r5                         ; 080304B4
mov   r1,r4                         ; 080304B6
bl    Sub08030288                   ; 080304B8
pop   {r4-r5}                       ; 080304BC
pop   {r0}                          ; 080304BE
bx    r0                            ; 080304C0
.pool                               ; 080304C2

Sub080304C4:
push  {r4-r7,lr}                    ; 080304C4
mov   r6,r0                         ; 080304C6
lsl   r1,r1,0x10                    ; 080304C8
lsr   r7,r1,0x10                    ; 080304CA
mov   r1,r7                         ; 080304CC
bl    Sub0803004C                   ; 080304CE
ldr   r1,=0x03002200                ; 080304D2
ldr   r2,=0x47EC                    ; 080304D4
add   r0,r1,r2                      ; 080304D6
mov   r2,0x10                       ; 080304D8
strh  r2,[r0]                       ; 080304DA
ldr   r3,=0x47EE                    ; 080304DC
add   r0,r1,r3                      ; 080304DE
strh  r2,[r0]                       ; 080304E0
sub   r3,0x12                       ; 080304E2
add   r0,r1,r3                      ; 080304E4
strh  r2,[r0]                       ; 080304E6
add   r3,0x2                        ; 080304E8
add   r0,r1,r3                      ; 080304EA
strh  r2,[r0]                       ; 080304EC
ldr   r2,=0x47E4                    ; 080304EE
add   r0,r1,r2                      ; 080304F0
mov   r2,0x8                        ; 080304F2
strh  r2,[r0]                       ; 080304F4
add   r3,0x8                        ; 080304F6
add   r0,r1,r3                      ; 080304F8
strh  r2,[r0]                       ; 080304FA
sub   r3,0x12                       ; 080304FC
add   r0,r1,r3                      ; 080304FE
strh  r2,[r0]                       ; 08030500
ldr   r0,=0x47D6                    ; 08030502
add   r1,r1,r0                      ; 08030504
strh  r2,[r1]                       ; 08030506
mov   r2,0x0                        ; 08030508
ldr   r3,=0x1688                    ; 0803050A
add   r5,r6,r3                      ; 0803050C
mov   r3,0x8                        ; 0803050E
ldr   r0,=0x17C8                    ; 08030510
add   r4,r6,r0                      ; 08030512
@@Code08030514:
lsl   r1,r2,0x1                     ; 08030514
add   r0,r5,r1                      ; 08030516
strh  r3,[r0]                       ; 08030518
add   r1,r4,r1                      ; 0803051A
strh  r3,[r1]                       ; 0803051C
add   r0,r2,0x1                     ; 0803051E
lsl   r0,r0,0x10                    ; 08030520
lsr   r2,r0,0x10                    ; 08030522
cmp   r2,0x9F                       ; 08030524
bls   @@Code08030514                ; 08030526
mov   r0,0xB0                       ; 08030528
mul   r0,r7                         ; 0803052A
add   r0,r6,r0                      ; 0803052C
mov   r2,r0                         ; 0803052E
add   r2,0x50                       ; 08030530
mov   r3,0x0                        ; 08030532
mov   r1,0x80                       ; 08030534
lsl   r1,r1,0x2                     ; 08030536
strh  r1,[r2]                       ; 08030538
add   r0,0x6A                       ; 0803053A
strh  r3,[r0]                       ; 0803053C
pop   {r4-r7}                       ; 0803053E
pop   {r0}                          ; 08030540
bx    r0                            ; 08030542
.pool                               ; 08030544

Sub08030560:
push  {lr}                          ; 08030560
mov   r3,r0                         ; 08030562
lsl   r1,r1,0x10                    ; 08030564
lsr   r2,r1,0x10                    ; 08030566
ldr   r0,=0x03002200                ; 08030568
ldr   r1,=0x48A2                    ; 0803056A
add   r0,r0,r1                      ; 0803056C
ldrh  r1,[r0]                       ; 0803056E
mov   r0,0x3                        ; 08030570
and   r0,r1                         ; 08030572
cmp   r0,0x0                        ; 08030574
bne   @@Code0803061E                ; 08030576
mov   r0,0xB0                       ; 08030578
mul   r0,r2                         ; 0803057A
add   r0,r3,r0                      ; 0803057C
mov   r1,r0                         ; 0803057E
add   r1,0x6A                       ; 08030580
ldrh  r0,[r1]                       ; 08030582
add   r0,0x50                       ; 08030584
lsl   r0,r0,0x10                    ; 08030586
lsr   r3,r0,0x10                    ; 08030588
cmp   r3,0xEF                       ; 0803058A
bls   @@Code08030590                ; 0803058C
mov   r3,0x0                        ; 0803058E
@@Code08030590:
strh  r3,[r1]                       ; 08030590
mov   r1,0xC2                       ; 08030592
lsl   r1,r1,0x7                     ; 08030594
mov   r0,r1                         ; 08030596
orr   r3,r0                         ; 08030598
ldr   r2,=0x0600D190                ; 0803059A
mov   r1,0x0                        ; 0803059C
@@Code0803059E:
add   r0,r3,r1                      ; 0803059E
strh  r0,[r2]                       ; 080305A0
add   r2,0x2                        ; 080305A2
add   r0,r1,0x1                     ; 080305A4
lsl   r0,r0,0x10                    ; 080305A6
lsr   r1,r0,0x10                    ; 080305A8
cmp   r1,0xF                        ; 080305AA
bls   @@Code0803059E                ; 080305AC
mov   r0,r3                         ; 080305AE
add   r0,0x10                       ; 080305B0
lsl   r0,r0,0x10                    ; 080305B2
lsr   r3,r0,0x10                    ; 080305B4
ldr   r2,=0x0600D1D0                ; 080305B6
mov   r1,0x0                        ; 080305B8
@@Code080305BA:
add   r0,r3,r1                      ; 080305BA
strh  r0,[r2]                       ; 080305BC
add   r2,0x2                        ; 080305BE
add   r0,r1,0x1                     ; 080305C0
lsl   r0,r0,0x10                    ; 080305C2
lsr   r1,r0,0x10                    ; 080305C4
cmp   r1,0xF                        ; 080305C6
bls   @@Code080305BA                ; 080305C8
mov   r0,r3                         ; 080305CA
add   r0,0x10                       ; 080305CC
lsl   r0,r0,0x10                    ; 080305CE
lsr   r3,r0,0x10                    ; 080305D0
ldr   r2,=0x0600D210                ; 080305D2
mov   r1,0x0                        ; 080305D4
@@Code080305D6:
add   r0,r3,r1                      ; 080305D6
strh  r0,[r2]                       ; 080305D8
add   r2,0x2                        ; 080305DA
add   r0,r1,0x1                     ; 080305DC
lsl   r0,r0,0x10                    ; 080305DE
lsr   r1,r0,0x10                    ; 080305E0
cmp   r1,0xF                        ; 080305E2
bls   @@Code080305D6                ; 080305E4
mov   r0,r3                         ; 080305E6
add   r0,0x10                       ; 080305E8
lsl   r0,r0,0x10                    ; 080305EA
lsr   r3,r0,0x10                    ; 080305EC
ldr   r2,=0x0600D250                ; 080305EE
mov   r1,0x0                        ; 080305F0
@@Code080305F2:
add   r0,r3,r1                      ; 080305F2
strh  r0,[r2]                       ; 080305F4
add   r2,0x2                        ; 080305F6
add   r0,r1,0x1                     ; 080305F8
lsl   r0,r0,0x10                    ; 080305FA
lsr   r1,r0,0x10                    ; 080305FC
cmp   r1,0xF                        ; 080305FE
bls   @@Code080305F2                ; 08030600
mov   r0,r3                         ; 08030602
add   r0,0x10                       ; 08030604
lsl   r0,r0,0x10                    ; 08030606
lsr   r3,r0,0x10                    ; 08030608
ldr   r2,=0x0600D290                ; 0803060A
mov   r1,0x0                        ; 0803060C
@@Code0803060E:
add   r0,r3,r1                      ; 0803060E
strh  r0,[r2]                       ; 08030610
add   r2,0x2                        ; 08030612
add   r0,r1,0x1                     ; 08030614
lsl   r0,r0,0x10                    ; 08030616
lsr   r1,r0,0x10                    ; 08030618
cmp   r1,0xF                        ; 0803061A
bls   @@Code0803060E                ; 0803061C
@@Code0803061E:
pop   {r0}                          ; 0803061E
bx    r0                            ; 08030620
.pool                               ; 08030622

Sub08030640:
push  {r4-r6,lr}                    ; 08030640
add   sp,-0x4                       ; 08030642
mov   r5,r0                         ; 08030644
mov   r4,r1                         ; 08030646
mov   r1,sp                         ; 08030648
mov   r0,0xA8                       ; 0803064A
strh  r0,[r1]                       ; 0803064C
ldr   r1,=0x0600D000                ; 0803064E
ldr   r2,=0x01000800                ; 08030650
mov   r0,sp                         ; 08030652
bl    swi_MemoryCopy4or2            ; 08030654  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200                ; 08030658
ldr   r0,=0x47EE                    ; 0803065A
add   r3,r1,r0                      ; 0803065C
ldrh  r2,[r3]                       ; 0803065E
ldr   r6,=0x47EC                    ; 08030660
add   r0,r1,r6                      ; 08030662
strh  r2,[r0]                       ; 08030664
ldr   r2,=0x47E4                    ; 08030666
add   r0,r1,r2                      ; 08030668
mov   r2,0x8                        ; 0803066A
strh  r2,[r0]                       ; 0803066C
sub   r6,0x18                       ; 0803066E
add   r1,r1,r6                      ; 08030670
strh  r2,[r1]                       ; 08030672
mov   r0,0x10                       ; 08030674
strh  r0,[r3]                       ; 08030676
str   r4,[r5,0x4]                   ; 08030678
mov   r3,0x17                       ; 0803067A
mov   r6,0x0                        ; 0803067C
mov   r4,0xB0                       ; 0803067E
@@Code08030680:
mov   r0,r3                         ; 08030680
mul   r0,r4                         ; 08030682
add   r2,r5,r0                      ; 08030684
ldrh  r0,[r2,0x2C]                  ; 08030686
cmp   r0,0x0                        ; 08030688
beq   @@Code080306A2                ; 0803068A
mov   r1,r2                         ; 0803068C
add   r1,0xA3                       ; 0803068E
mov   r0,0xFF                       ; 08030690
strb  r0,[r1]                       ; 08030692
mov   r0,r2                         ; 08030694
add   r0,0xA4                       ; 08030696
strb  r6,[r0]                       ; 08030698
ldrh  r0,[r2,0x34]                  ; 0803069A
mov   r1,0x30                       ; 0803069C
orr   r0,r1                         ; 0803069E
strh  r0,[r2,0x34]                  ; 080306A0
@@Code080306A2:
sub   r0,r3,0x1                     ; 080306A2
lsl   r0,r0,0x10                    ; 080306A4
lsr   r3,r0,0x10                    ; 080306A6
cmp   r3,0x17                       ; 080306A8
bls   @@Code08030680                ; 080306AA
add   sp,0x4                        ; 080306AC
pop   {r4-r6}                       ; 080306AE
pop   {r0}                          ; 080306B0
bx    r0                            ; 080306B2
.pool                               ; 080306B4

Sub080306CC:
push  {lr}                          ; 080306CC
mov   r3,r0                         ; 080306CE
lsl   r1,r1,0x10                    ; 080306D0
lsr   r1,r1,0x10                    ; 080306D2
mov   r0,0xB0                       ; 080306D4
mul   r0,r1                         ; 080306D6
add   r0,r3,r0                      ; 080306D8
add   r0,0x50                       ; 080306DA
ldrh  r2,[r0]                       ; 080306DC
cmp   r2,0x0                        ; 080306DE
bne   @@Code080306FC                ; 080306E0
ldr   r0,=0x1B54                    ; 080306E2
add   r1,r3,r0                      ; 080306E4
ldrh  r0,[r1]                       ; 080306E6
cmp   r0,0x0                        ; 080306E8
beq   @@Code080306F8                ; 080306EA
strh  r2,[r1]                       ; 080306EC
mov   r0,0x1                        ; 080306EE
b     @@Code080306FE                ; 080306F0
.pool                               ; 080306F2

@@Code080306F8:
add   r0,0x1                        ; 080306F8
strh  r0,[r1]                       ; 080306FA
@@Code080306FC:
mov   r0,0x0                        ; 080306FC
@@Code080306FE:
pop   {r1}                          ; 080306FE
bx    r1                            ; 08030700
.pool                               ; 08030702

Sub08030704:
lsl   r1,r1,0x10                    ; 08030704
lsr   r1,r1,0x10                    ; 08030706
mov   r2,0xB0                       ; 08030708
mul   r1,r2                         ; 0803070A
add   r3,r0,r1                      ; 0803070C
mov   r0,r3                         ; 0803070E
add   r0,0xA3                       ; 08030710
ldrb  r0,[r0]                       ; 08030712
lsl   r0,r0,0x1                     ; 08030714
ldr   r1,=0x0201BA00                ; 08030716
add   r0,r0,r1                      ; 08030718
mov   r2,0x0                        ; 0803071A
strh  r2,[r0]                       ; 0803071C
mov   r0,0x0                        ; 0803071E
strh  r0,[r3,0x2C]                  ; 08030720
mov   r1,r3                         ; 08030722
add   r1,0x9C                       ; 08030724
mov   r0,0xFF                       ; 08030726
strb  r0,[r1]                       ; 08030728
mov   r0,r3                         ; 0803072A
add   r0,0xA4                       ; 0803072C
strb  r2,[r0]                       ; 0803072E
bx    lr                            ; 08030730
.pool                               ; 08030732

Sub08030738:
lsl   r1,r1,0x10                    ; 08030738
lsr   r1,r1,0x10                    ; 0803073A
mov   r2,0xB0                       ; 0803073C
mul   r1,r2                         ; 0803073E
add   r0,r0,r1                      ; 08030740
add   r0,0x72                       ; 08030742
ldrh  r1,[r0]                       ; 08030744
add   r1,0x1                        ; 08030746
strh  r1,[r0]                       ; 08030748
bx    lr                            ; 0803074A

Sub0803074C:
push  {r4-r6,lr}                    ; 0803074C
mov   r12,r0                        ; 0803074E
lsl   r3,r1,0x10                    ; 08030750
lsl   r2,r2,0x10                    ; 08030752
lsr   r2,r2,0x10                    ; 08030754
mov   r0,0xB0                       ; 08030756
mov   r4,r2                         ; 08030758
mul   r4,r0                         ; 0803075A
mov   r0,r12                        ; 0803075C
add   r2,r0,r4                      ; 0803075E
mov   r0,r2                         ; 08030760
add   r0,0x7E                       ; 08030762
strh  r1,[r0]                       ; 08030764
lsr   r3,r3,0x18                    ; 08030766
sub   r0,0x3E                       ; 08030768
strh  r3,[r0]                       ; 0803076A
add   r0,0x36                       ; 0803076C
ldrh  r0,[r0]                       ; 0803076E
cmp   r0,0x0                        ; 08030770
beq   @@Code080307D0                ; 08030772
mov   r5,r12                        ; 08030774
add   r5,0x20                       ; 08030776
add   r2,r5,r4                      ; 08030778
ldr   r0,[r2]                       ; 0803077A
sub   r1,r0,0x1                     ; 0803077C
cmp   r1,0xF                        ; 0803077E
bgt   @@Code08030784                ; 08030780
mov   r1,0x10                       ; 08030782
@@Code08030784:
str   r1,[r2]                       ; 08030784
mov   r3,0x16                       ; 08030786
mov   r6,0xB0                       ; 08030788
mov   r4,r2                         ; 0803078A
@@Code0803078C:
mov   r2,r3                         ; 0803078C
mul   r2,r6                         ; 0803078E
mov   r0,r12                        ; 08030790
add   r1,r0,r2                      ; 08030792
ldrh  r0,[r1,0x2C]                  ; 08030794
cmp   r0,0x0                        ; 08030796
beq   @@Code080307C0                ; 08030798
ldrh  r0,[r1,0x3A]                  ; 0803079A
sub   r0,0x4                        ; 0803079C
lsl   r0,r0,0x10                    ; 0803079E
lsr   r0,r0,0x10                    ; 080307A0
cmp   r0,0x2                        ; 080307A2
bhi   @@Code080307C0                ; 080307A4
add   r0,r5,r2                      ; 080307A6
ldr   r0,[r0]                       ; 080307A8
neg   r1,r0                         ; 080307AA
ldr   r0,[r4]                       ; 080307AC
mul   r1,r0                         ; 080307AE
ldr   r0,=0xFFFFFF00                ; 080307B0
and   r1,r0                         ; 080307B2
lsr   r0,r1,0x7                     ; 080307B4
neg   r1,r0                         ; 080307B6
mov   r0,r12                        ; 080307B8
add   r0,0x10                       ; 080307BA
add   r0,r0,r2                      ; 080307BC
str   r1,[r0]                       ; 080307BE
@@Code080307C0:
sub   r0,r3,0x1                     ; 080307C0
lsl   r0,r0,0x10                    ; 080307C2
lsr   r3,r0,0x10                    ; 080307C4
cmp   r3,0x16                       ; 080307C6
bls   @@Code0803078C                ; 080307C8
b     @@Code08030830                ; 080307CA
.pool                               ; 080307CC

@@Code080307D0:
mov   r0,r12                        ; 080307D0
add   r0,0xC                        ; 080307D2
add   r0,r0,r4                      ; 080307D4
ldr   r1,[r0]                       ; 080307D6
ldr   r0,=0x53FF                    ; 080307D8
mov   r3,r2                         ; 080307DA
add   r3,0x4C                       ; 080307DC
cmp   r1,r0                         ; 080307DE
ble   @@Code080307F8                ; 080307E0
ldr   r0,=0x03002200                ; 080307E2
ldr   r1,=0x495C                    ; 080307E4
add   r0,r0,r1                      ; 080307E6
ldrb  r1,[r0]                       ; 080307E8
mov   r0,0x3                        ; 080307EA
and   r0,r1                         ; 080307EC
ldr   r1,=Data0816B9F0              ; 080307EE
lsl   r0,r0,0x1                     ; 080307F0
add   r0,r0,r1                      ; 080307F2
ldrh  r0,[r0]                       ; 080307F4
strh  r0,[r3]                       ; 080307F6
@@Code080307F8:
ldrh  r3,[r3]                       ; 080307F8
cmp   r3,0x0                        ; 080307FA
beq   @@Code08030800                ; 080307FC
mov   r3,0x1                        ; 080307FE
@@Code08030800:
mov   r1,r12                        ; 08030800
add   r1,0x1C                       ; 08030802
add   r1,r1,r4                      ; 08030804
ldr   r0,=Data0816B9E0              ; 08030806
lsl   r3,r3,0x2                     ; 08030808
add   r0,r3,r0                      ; 0803080A
ldr   r2,[r0]                       ; 0803080C
str   r2,[r1]                       ; 0803080E
mov   r0,r12                        ; 08030810
add   r0,0x18                       ; 08030812
add   r0,r0,r4                      ; 08030814
str   r2,[r0]                       ; 08030816
mov   r2,r12                        ; 08030818
add   r2,0x24                       ; 0803081A
add   r2,r2,r4                      ; 0803081C
ldr   r0,=Data0816B9E8              ; 0803081E
add   r3,r3,r0                      ; 08030820
ldr   r1,[r3]                       ; 08030822
str   r1,[r2]                       ; 08030824
mov   r0,r12                        ; 08030826
add   r0,0x20                       ; 08030828
add   r0,r0,r4                      ; 0803082A
neg   r1,r1                         ; 0803082C
str   r1,[r0]                       ; 0803082E
@@Code08030830:
pop   {r4-r6}                       ; 08030830
pop   {r0}                          ; 08030832
bx    r0                            ; 08030834
.pool                               ; 08030836

Sub08030850:
push  {r4-r7,lr}                    ; 08030850
mov   r7,r10                        ; 08030852
mov   r6,r9                         ; 08030854
mov   r5,r8                         ; 08030856
push  {r5-r7}                       ; 08030858
add   sp,-0xC                       ; 0803085A
mov   r3,r0                         ; 0803085C
lsl   r1,r1,0x10                    ; 0803085E
lsr   r1,r1,0x10                    ; 08030860
str   r1,[sp]                       ; 08030862
mov   r7,0x80                       ; 08030864
mov   r0,0xB0                       ; 08030866
mul   r0,r1                         ; 08030868
add   r1,r3,r0                      ; 0803086A
mov   r0,r1                         ; 0803086C
add   r0,0x4C                       ; 0803086E
ldrh  r0,[r0]                       ; 08030870
cmp   r0,0x0                        ; 08030872
bne   @@Code08030892                ; 08030874
mov   r0,r1                         ; 08030876
add   r0,0x76                       ; 08030878
ldrh  r6,[r0]                       ; 0803087A
add   r0,0xC                        ; 0803087C
ldrh  r7,[r0]                       ; 0803087E
ldr   r1,=Data0816B9F8              ; 08030880
lsl   r0,r6,0x1                     ; 08030882
add   r0,r0,r1                      ; 08030884
ldrh  r0,[r0]                       ; 08030886
cmp   r7,r0                         ; 08030888
blo   @@Code08030892                ; 0803088A
sub   r0,r7,0x2                     ; 0803088C
lsl   r0,r0,0x10                    ; 0803088E
lsr   r7,r0,0x10                    ; 08030890
@@Code08030892:
ldr   r1,[sp]                       ; 08030892
mov   r2,0xB0                       ; 08030894
mov   r0,r1                         ; 08030896
mul   r0,r2                         ; 08030898
mov   r8,r0                         ; 0803089A
add   r2,r3,r0                      ; 0803089C
mov   r0,r2                         ; 0803089E
add   r0,0x82                       ; 080308A0
strh  r7,[r0]                       ; 080308A2
sub   r0,0x4                        ; 080308A4
ldrh  r4,[r0]                       ; 080308A6
add   r0,r7,r4                      ; 080308A8
lsl   r1,r0,0x10                    ; 080308AA
lsr   r7,r1,0x10                    ; 080308AC
ldr   r0,=0x0BFF                    ; 080308AE
cmp   r7,r0                         ; 080308B0
bls   @@Code080308C2                ; 080308B2
mov   r0,r2                         ; 080308B4
add   r0,0x76                       ; 080308B6
ldrh  r0,[r0]                       ; 080308B8
cmp   r0,0x0                        ; 080308BA
bne   @@Code080308D8                ; 080308BC
mov   r0,0xFF                       ; 080308BE
and   r7,r0                         ; 080308C0
@@Code080308C2:
mov   r0,r3                         ; 080308C2
mov   r1,r7                         ; 080308C4
ldr   r2,[sp]                       ; 080308C6
bl    Sub0803074C                   ; 080308C8
b     @@Code080309A6                ; 080308CC
.pool                               ; 080308CE

@@Code080308D8:
lsr   r6,r1,0x18                    ; 080308D8
cmp   r6,0x10                       ; 080308DA
bhi   @@Code08030984                ; 080308DC
lsl   r0,r4,0x10                    ; 080308DE
lsr   r0,r0,0x18                    ; 080308E0
str   r0,[sp,0x4]                   ; 080308E2
cmp   r6,0x10                       ; 080308E4
bne   @@Code0803095A                ; 080308E6
cmp   r0,0xF                        ; 080308E8
bne   @@Code0803095A                ; 080308EA
mov   r0,r3                         ; 080308EC
mov   r1,0x9                        ; 080308EE
str   r3,[sp,0x8]                   ; 080308F0
bl    Sub0802F700                   ; 080308F2
lsl   r0,r0,0x10                    ; 080308F6
lsr   r0,r0,0x10                    ; 080308F8
mov   r4,0xB0                       ; 080308FA
mov   r1,r0                         ; 080308FC
mul   r1,r4                         ; 080308FE
ldr   r3,[sp,0x8]                   ; 08030900
mov   r5,r3                         ; 08030902
add   r5,0x8                        ; 08030904
add   r2,r5,r1                      ; 08030906
mov   r0,r5                         ; 08030908
add   r0,r8                         ; 0803090A
mov   r10,r0                        ; 0803090C
ldr   r0,[r0]                       ; 0803090E
mov   r4,0xA0                       ; 08030910
lsl   r4,r4,0x5                     ; 08030912
add   r0,r0,r4                      ; 08030914
str   r0,[r2]                       ; 08030916
mov   r4,r3                         ; 08030918
add   r4,0xC                        ; 0803091A
add   r1,r4,r1                      ; 0803091C
add   r8,r4                         ; 0803091E
mov   r2,r8                         ; 08030920
ldr   r0,[r2]                       ; 08030922
ldr   r2,=0xFFFFE800                ; 08030924
mov   r9,r2                         ; 08030926
add   r0,r9                         ; 08030928
str   r0,[r1]                       ; 0803092A
mov   r0,r3                         ; 0803092C
mov   r1,0xB                        ; 0803092E
str   r3,[sp,0x8]                   ; 08030930
bl    Sub0802F700                   ; 08030932
lsl   r0,r0,0x10                    ; 08030936
lsr   r0,r0,0x10                    ; 08030938
mov   r2,0xB0                       ; 0803093A
mov   r1,r0                         ; 0803093C
mul   r1,r2                         ; 0803093E
add   r5,r5,r1                      ; 08030940
mov   r2,r10                        ; 08030942
ldr   r0,[r2]                       ; 08030944
mov   r2,0xA0                       ; 08030946
lsl   r2,r2,0x5                     ; 08030948
add   r0,r0,r2                      ; 0803094A
str   r0,[r5]                       ; 0803094C
add   r4,r4,r1                      ; 0803094E
mov   r1,r8                         ; 08030950
ldr   r0,[r1]                       ; 08030952
add   r0,r9                         ; 08030954
str   r0,[r4]                       ; 08030956
ldr   r3,[sp,0x8]                   ; 08030958
@@Code0803095A:
cmp   r7,0xF                        ; 0803095A
beq   @@Code08030984                ; 0803095C
ldr   r2,[sp,0x4]                   ; 0803095E
cmp   r6,r2                         ; 08030960
beq   @@Code08030984                ; 08030962
mov   r0,0xB0                       ; 08030964
ldr   r4,[sp]                       ; 08030966
mov   r1,r4                         ; 08030968
mul   r1,r0                         ; 0803096A
add   r1,r3,r1                      ; 0803096C
ldr   r2,=Data0816B9FC              ; 0803096E
mov   r0,r6                         ; 08030970
sub   r0,0xC                        ; 08030972
lsl   r0,r0,0x1                     ; 08030974
add   r0,r0,r2                      ; 08030976
ldrh  r0,[r0]                       ; 08030978
add   r1,0x82                       ; 0803097A
strh  r0,[r1]                       ; 0803097C
mov   r0,0xFF                       ; 0803097E
lsl   r0,r0,0x8                     ; 08030980
and   r7,r0                         ; 08030982
@@Code08030984:
mov   r0,0xFF                       ; 08030984
lsl   r0,r0,0x8                     ; 08030986
and   r0,r7                         ; 08030988
ldr   r1,=0x17FF                    ; 0803098A
cmp   r0,r1                         ; 0803098C
bls   @@Code0803099C                ; 0803098E
mov   r0,0xFF                       ; 08030990
and   r7,r0                         ; 08030992
mov   r1,0x80                       ; 08030994
lsl   r1,r1,0x5                     ; 08030996
mov   r0,r1                         ; 08030998
orr   r7,r0                         ; 0803099A
@@Code0803099C:
mov   r0,r3                         ; 0803099C
mov   r1,r7                         ; 0803099E
ldr   r2,[sp]                       ; 080309A0
bl    Sub0803074C                   ; 080309A2
@@Code080309A6:
add   sp,0xC                        ; 080309A6
pop   {r3-r5}                       ; 080309A8
mov   r8,r3                         ; 080309AA
mov   r9,r4                         ; 080309AC
mov   r10,r5                        ; 080309AE
pop   {r4-r7}                       ; 080309B0
pop   {r0}                          ; 080309B2
bx    r0                            ; 080309B4
.pool                               ; 080309B6

Sub080309C4:
push  {r4-r5,lr}                    ; 080309C4
mov   r4,r0                         ; 080309C6
lsl   r1,r1,0x10                    ; 080309C8
lsr   r5,r1,0x10                    ; 080309CA
mov   r1,r5                         ; 080309CC
bl    Sub08030560                   ; 080309CE
mov   r0,r4                         ; 080309D2
mov   r1,r5                         ; 080309D4
bl    Sub080306CC                   ; 080309D6
lsl   r0,r0,0x18                    ; 080309DA
cmp   r0,0x0                        ; 080309DC
beq   @@Code08030A18                ; 080309DE
ldr   r1,=Data0816B88C              ; 080309E0
mov   r0,r4                         ; 080309E2
bl    Sub0802F72C                   ; 080309E4
mov   r0,0xB0                       ; 080309E8
mul   r0,r5                         ; 080309EA
add   r0,r4,r0                      ; 080309EC
add   r0,0x50                       ; 080309EE
mov   r1,0xA0                       ; 080309F0
lsl   r1,r1,0x3                     ; 080309F2
strh  r1,[r0]                       ; 080309F4
ldr   r2,=0x03002200                ; 080309F6
ldr   r0,=0x47C4                    ; 080309F8
add   r3,r2,r0                      ; 080309FA
ldrh  r0,[r3]                       ; 080309FC
mov   r1,0x10                       ; 080309FE
orr   r0,r1                         ; 08030A00
strh  r0,[r3]                       ; 08030A02
ldr   r0,=0x47C2                    ; 08030A04
add   r2,r2,r0                      ; 08030A06
ldrh  r1,[r2]                       ; 08030A08
mov   r0,0x2                        ; 08030A0A
orr   r0,r1                         ; 08030A0C
strh  r0,[r2]                       ; 08030A0E
mov   r0,r4                         ; 08030A10
mov   r1,r5                         ; 08030A12
bl    Sub08030738                   ; 08030A14
@@Code08030A18:
pop   {r4-r5}                       ; 08030A18
pop   {r0}                          ; 08030A1A
bx    r0                            ; 08030A1C
.pool                               ; 08030A1E

Sub08030A30:
push  {r4-r7,lr}                    ; 08030A30
mov   r7,r10                        ; 08030A32
mov   r6,r9                         ; 08030A34
mov   r5,r8                         ; 08030A36
push  {r5-r7}                       ; 08030A38
mov   r5,r0                         ; 08030A3A
lsl   r1,r1,0x10                    ; 08030A3C
lsr   r6,r1,0x10                    ; 08030A3E
mov   r1,r6                         ; 08030A40
bl    Sub08030120                   ; 08030A42
mov   r0,r5                         ; 08030A46
mov   r1,r6                         ; 08030A48
bl    Sub08030850                   ; 08030A4A
ldr   r4,=0x03002200                ; 08030A4E
ldr   r0,=0x47E4                    ; 08030A50
add   r1,r4,r0                      ; 08030A52
ldrh  r0,[r1]                       ; 08030A54
cmp   r0,0xFF                       ; 08030A56
bhi   @@Code08030A80                ; 08030A58
add   r0,0x2                        ; 08030A5A
strh  r0,[r1]                       ; 08030A5C
ldr   r7,=0x47D4                    ; 08030A5E
add   r1,r4,r7                      ; 08030A60
ldrh  r0,[r1]                       ; 08030A62
add   r0,0x2                        ; 08030A64
strh  r0,[r1]                       ; 08030A66
mov   r0,r5                         ; 08030A68
mov   r1,r6                         ; 08030A6A
bl    Sub08030560                   ; 08030A6C
b     @@Code08030B68                ; 08030A70
.pool                               ; 08030A72

@@Code08030A80:
mov   r0,0xB0                       ; 08030A80
mul   r0,r6                         ; 08030A82
add   r0,r5,r0                      ; 08030A84
add   r0,0x48                       ; 08030A86
ldrh  r1,[r0]                       ; 08030A88
ldr   r0,=0x010F                    ; 08030A8A
cmp   r1,r0                         ; 08030A8C
bhi   @@Code08030AD0                ; 08030A8E
ldr   r1,=0x4886                    ; 08030A90
add   r0,r4,r1                      ; 08030A92
ldrh  r0,[r0]                       ; 08030A94
cmp   r0,0x1F                       ; 08030A96
bls   @@Code08030AA2                ; 08030A98
mov   r0,r5                         ; 08030A9A
mov   r1,r6                         ; 08030A9C
bl    Sub0803004C                   ; 08030A9E
@@Code08030AA2:
ldr   r7,=0x48A2                    ; 08030AA2
add   r0,r4,r7                      ; 08030AA4
ldrh  r1,[r0]                       ; 08030AA6
mov   r0,0x1                        ; 08030AA8
and   r0,r1                         ; 08030AAA
cmp   r0,0x0                        ; 08030AAC
beq   @@Code08030AD0                ; 08030AAE
ldr   r0,=0x02010840                ; 08030AB0
ldr   r1,=0x02010C40                ; 08030AB2
ldr   r2,=0x02010440                ; 08030AB4
mov   r3,0x20                       ; 08030AB6
bl    Sub080DC5AC                   ; 08030AB8
ldr   r0,=0x02010A00                ; 08030ABC
ldr   r1,=0x02010E00                ; 08030ABE
ldr   r2,=0x02010600                ; 08030AC0
mov   r3,0x10                       ; 08030AC2
bl    Sub080DC5AC                   ; 08030AC4
ldr   r0,=0x4967                    ; 08030AC8
add   r1,r4,r0                      ; 08030ACA
mov   r0,0x3                        ; 08030ACC
strb  r0,[r1]                       ; 08030ACE
@@Code08030AD0:
mov   r0,r5                         ; 08030AD0
mov   r1,r6                         ; 08030AD2
bl    Sub080306CC                   ; 08030AD4
lsl   r0,r0,0x18                    ; 08030AD8
cmp   r0,0x0                        ; 08030ADA
beq   @@Code08030B68                ; 08030ADC
ldr   r1,=Data082D68C0              ; 08030ADE
mov   r0,r5                         ; 08030AE0
bl    Sub08030640                   ; 08030AE2
mov   r4,0x0                        ; 08030AE6
ldr   r1,=0x02010482                ; 08030AE8
mov   r9,r1                         ; 08030AEA
ldr   r7,=Data082D78D8              ; 08030AEC
mov   r8,r7                         ; 08030AEE
ldr   r0,=0x020104A2                ; 08030AF0
mov   r12,r0                        ; 08030AF2
ldr   r1,=Data082D7AD8              ; 08030AF4
mov   r10,r1                        ; 08030AF6
@@Code08030AF8:
lsl   r2,r4,0x1                     ; 08030AF8
mov   r7,r9                         ; 08030AFA
add   r3,r2,r7                      ; 08030AFC
mov   r1,r4                         ; 08030AFE
add   r1,0xF1                       ; 08030B00
lsl   r1,r1,0x1                     ; 08030B02
mov   r7,r8                         ; 08030B04
add   r0,r1,r7                      ; 08030B06
ldrh  r0,[r0]                       ; 08030B08
strh  r0,[r3]                       ; 08030B0A
add   r2,r12                        ; 08030B0C
add   r1,r10                        ; 08030B0E
ldrh  r0,[r1]                       ; 08030B10
strh  r0,[r2]                       ; 08030B12
add   r0,r4,0x1                     ; 08030B14
lsl   r0,r0,0x10                    ; 08030B16
lsr   r4,r0,0x10                    ; 08030B18
cmp   r4,0xE                        ; 08030B1A
bls   @@Code08030AF8                ; 08030B1C
ldr   r4,=0x03002200                ; 08030B1E
ldr   r0,=0x4967                    ; 08030B20
add   r1,r4,r0                      ; 08030B22
mov   r0,0x3                        ; 08030B24
strb  r0,[r1]                       ; 08030B26
ldr   r1,=Data0816B8FA              ; 08030B28
mov   r0,r5                         ; 08030B2A
bl    Sub0802F72C                   ; 08030B2C
mov   r0,0xB0                       ; 08030B30
mov   r1,r6                         ; 08030B32
mul   r1,r0                         ; 08030B34
add   r1,r5,r1                      ; 08030B36
mov   r2,r1                         ; 08030B38
add   r2,0x50                       ; 08030B3A
mov   r0,0xE0                       ; 08030B3C
lsl   r0,r0,0x1                     ; 08030B3E
strh  r0,[r2]                       ; 08030B40
add   r1,0x4C                       ; 08030B42
mov   r3,0x2                        ; 08030B44
mov   r0,0x2                        ; 08030B46
strh  r0,[r1]                       ; 08030B48
ldr   r1,=0x47C4                    ; 08030B4A
add   r2,r4,r1                      ; 08030B4C
ldrh  r0,[r2]                       ; 08030B4E
mov   r1,0x10                       ; 08030B50
eor   r0,r1                         ; 08030B52
strh  r0,[r2]                       ; 08030B54
ldr   r7,=0x47C2                    ; 08030B56
add   r4,r4,r7                      ; 08030B58
ldrh  r0,[r4]                       ; 08030B5A
eor   r0,r3                         ; 08030B5C
strh  r0,[r4]                       ; 08030B5E
mov   r0,r5                         ; 08030B60
mov   r1,r6                         ; 08030B62
bl    Sub08030738                   ; 08030B64
@@Code08030B68:
pop   {r3-r5}                       ; 08030B68
mov   r8,r3                         ; 08030B6A
mov   r9,r4                         ; 08030B6C
mov   r10,r5                        ; 08030B6E
pop   {r4-r7}                       ; 08030B70
pop   {r0}                          ; 08030B72
bx    r0                            ; 08030B74
.pool                               ; 08030B76

Sub08030BC4:
push  {r4-r7,lr}                    ; 08030BC4
mov   r7,r10                        ; 08030BC6
mov   r6,r9                         ; 08030BC8
mov   r5,r8                         ; 08030BCA
push  {r5-r7}                       ; 08030BCC
mov   r5,r0                         ; 08030BCE
lsl   r1,r1,0x10                    ; 08030BD0
lsr   r1,r1,0x10                    ; 08030BD2
mov   r7,r1                         ; 08030BD4
ldr   r0,=0x03002200                ; 08030BD6
mov   r9,r0                         ; 08030BD8
ldr   r3,=0x47D4                    ; 08030BDA
add   r3,r9                         ; 08030BDC
ldrh  r2,[r3]                       ; 08030BDE
ldr   r0,=0x02FF                    ; 08030BE0
cmp   r2,r0                         ; 08030BE2
bhi   @@Code08030C10                ; 08030BE4
add   r0,r2,0x2                     ; 08030BE6
strh  r0,[r3]                       ; 08030BE8
ldr   r2,=0x47E4                    ; 08030BEA
add   r2,r9                         ; 08030BEC
ldrh  r0,[r2]                       ; 08030BEE
cmp   r0,0xFF                       ; 08030BF0
bhi   @@Code08030BF8                ; 08030BF2
add   r0,0x2                        ; 08030BF4
strh  r0,[r2]                       ; 08030BF6
@@Code08030BF8:
mov   r0,r5                         ; 08030BF8
bl    Sub08030850                   ; 08030BFA
b     @@Code08030CD8                ; 08030BFE
.pool                               ; 08030C00

@@Code08030C10:
mov   r0,0xB0                       ; 08030C10
mov   r4,r7                         ; 08030C12
mul   r4,r0                         ; 08030C14
add   r6,r5,r4                      ; 08030C16
mov   r1,0x9C                       ; 08030C18
add   r1,r1,r6                      ; 08030C1A
mov   r8,r1                         ; 08030C1C
mov   r2,0x1                        ; 08030C1E
neg   r2,r2                         ; 08030C20
mov   r10,r2                        ; 08030C22
mov   r0,0xFF                       ; 08030C24
strb  r0,[r1]                       ; 08030C26
mov   r0,r5                         ; 08030C28
mov   r1,r7                         ; 08030C2A
bl    Sub080306CC                   ; 08030C2C
lsl   r0,r0,0x18                    ; 08030C30
cmp   r0,0x0                        ; 08030C32
beq   @@Code08030CD8                ; 08030C34
ldr   r1,=Data082D6444              ; 08030C36
mov   r0,r5                         ; 08030C38
bl    Sub08030640                   ; 08030C3A
ldr   r1,=Data0816B902              ; 08030C3E
mov   r0,r5                         ; 08030C40
bl    Sub0802F72C                   ; 08030C42
mov   r0,r5                         ; 08030C46
add   r0,0x8                        ; 08030C48
add   r0,r0,r4                      ; 08030C4A
mov   r1,0x80                       ; 08030C4C
lsl   r1,r1,0x8                     ; 08030C4E
str   r1,[r0]                       ; 08030C50
mov   r0,r5                         ; 08030C52
add   r0,0xC                        ; 08030C54
add   r0,r0,r4                      ; 08030C56
mov   r1,0x88                       ; 08030C58
lsl   r1,r1,0x7                     ; 08030C5A
str   r1,[r0]                       ; 08030C5C
mov   r0,r5                         ; 08030C5E
add   r0,0x10                       ; 08030C60
add   r0,r0,r4                      ; 08030C62
mov   r1,0x0                        ; 08030C64
str   r1,[r0]                       ; 08030C66
mov   r0,r5                         ; 08030C68
add   r0,0x14                       ; 08030C6A
add   r0,r0,r4                      ; 08030C6C
str   r1,[r0]                       ; 08030C6E
mov   r0,r5                         ; 08030C70
add   r0,0x1C                       ; 08030C72
add   r0,r0,r4                      ; 08030C74
str   r1,[r0]                       ; 08030C76
mov   r0,r5                         ; 08030C78
add   r0,0x24                       ; 08030C7A
add   r0,r0,r4                      ; 08030C7C
str   r1,[r0]                       ; 08030C7E
mov   r0,r5                         ; 08030C80
add   r0,0x18                       ; 08030C82
add   r0,r0,r4                      ; 08030C84
str   r1,[r0]                       ; 08030C86
mov   r0,r5                         ; 08030C88
add   r0,0x20                       ; 08030C8A
add   r0,r0,r4                      ; 08030C8C
str   r1,[r0]                       ; 08030C8E
mov   r0,0x5                        ; 08030C90
mov   r1,r8                         ; 08030C92
strb  r0,[r1]                       ; 08030C94
ldrh  r0,[r6,0x34]                  ; 08030C96
mov   r1,0x30                       ; 08030C98
eor   r0,r1                         ; 08030C9A
strh  r0,[r6,0x34]                  ; 08030C9C
mov   r1,r6                         ; 08030C9E
add   r1,0xA3                       ; 08030CA0
ldrb  r0,[r1]                       ; 08030CA2
mov   r2,r10                        ; 08030CA4
orr   r0,r2                         ; 08030CA6
strb  r0,[r1]                       ; 08030CA8
add   r1,0x1                        ; 08030CAA
mov   r0,0x2                        ; 08030CAC
strb  r0,[r1]                       ; 08030CAE
sub   r1,0x54                       ; 08030CB0
mov   r0,0x80                       ; 08030CB2
lsl   r0,r0,0x2                     ; 08030CB4
strh  r0,[r1]                       ; 08030CB6
ldr   r2,=0x47C4                    ; 08030CB8
add   r2,r9                         ; 08030CBA
ldrh  r0,[r2]                       ; 08030CBC
mov   r1,0x10                       ; 08030CBE
orr   r0,r1                         ; 08030CC0
strh  r0,[r2]                       ; 08030CC2
ldr   r2,=0x47C2                    ; 08030CC4
add   r2,r9                         ; 08030CC6
ldrh  r1,[r2]                       ; 08030CC8
mov   r0,0x2                        ; 08030CCA
orr   r0,r1                         ; 08030CCC
strh  r0,[r2]                       ; 08030CCE
mov   r0,r5                         ; 08030CD0
mov   r1,r7                         ; 08030CD2
bl    Sub08030738                   ; 08030CD4
@@Code08030CD8:
pop   {r3-r5}                       ; 08030CD8
mov   r8,r3                         ; 08030CDA
mov   r9,r4                         ; 08030CDC
mov   r10,r5                        ; 08030CDE
pop   {r4-r7}                       ; 08030CE0
pop   {r0}                          ; 08030CE2
bx    r0                            ; 08030CE4
.pool                               ; 08030CE6

Sub08030CF8:
push  {r4-r7,lr}                    ; 08030CF8
mov   r6,r0                         ; 08030CFA
lsl   r1,r1,0x10                    ; 08030CFC
lsr   r7,r1,0x10                    ; 08030CFE
mov   r1,r7                         ; 08030D00
bl    Sub08030120                   ; 08030D02
mov   r0,r6                         ; 08030D06
mov   r1,r7                         ; 08030D08
bl    Sub08030850                   ; 08030D0A
ldr   r1,=0x03002200                ; 08030D0E
ldr   r0,=0x47D4                    ; 08030D10
add   r3,r1,r0                      ; 08030D12
ldrh  r2,[r3]                       ; 08030D14
ldr   r0,=0x02FF                    ; 08030D16
cmp   r2,r0                         ; 08030D18
bhi   @@Code08030D44                ; 08030D1A
add   r0,r2,0x2                     ; 08030D1C
strh  r0,[r3]                       ; 08030D1E
lsl   r0,r0,0x10                    ; 08030D20
lsr   r0,r0,0x10                    ; 08030D22
cmp   r0,0xFF                       ; 08030D24
bhi   @@Code08030DC6                ; 08030D26
ldr   r0,=0x47E4                    ; 08030D28
add   r1,r1,r0                      ; 08030D2A
ldrh  r0,[r1]                       ; 08030D2C
add   r0,0x2                        ; 08030D2E
strh  r0,[r1]                       ; 08030D30
b     @@Code08030DC6                ; 08030D32
.pool                               ; 08030D34

@@Code08030D44:
mov   r0,r6                         ; 08030D44
mov   r1,r7                         ; 08030D46
bl    Sub080306CC                   ; 08030D48
lsl   r0,r0,0x18                    ; 08030D4C
cmp   r0,0x0                        ; 08030D4E
beq   @@Code08030DC6                ; 08030D50
ldr   r1,=Data082D6B68              ; 08030D52
mov   r0,r6                         ; 08030D54
bl    Sub08030640                   ; 08030D56
mov   r1,0x0                        ; 08030D5A
ldr   r4,=0x02010482                ; 08030D5C
ldr   r3,=Data082D7ED8              ; 08030D5E
@@Code08030D60:
lsl   r2,r1,0x1                     ; 08030D60
add   r2,r2,r4                      ; 08030D62
add   r1,0x1                        ; 08030D64
lsl   r0,r1,0x1                     ; 08030D66
add   r0,r0,r3                      ; 08030D68
ldrh  r0,[r0]                       ; 08030D6A
strh  r0,[r2]                       ; 08030D6C
lsl   r1,r1,0x10                    ; 08030D6E
lsr   r1,r1,0x10                    ; 08030D70
cmp   r1,0xE                        ; 08030D72
bls   @@Code08030D60                ; 08030D74
ldr   r4,=0x03002200                ; 08030D76
ldr   r0,=0x4967                    ; 08030D78
add   r1,r4,r0                      ; 08030D7A
mov   r5,0x0                        ; 08030D7C
mov   r0,0x1                        ; 08030D7E
strb  r0,[r1]                       ; 08030D80
ldr   r1,=Data0816B90A              ; 08030D82
mov   r0,r6                         ; 08030D84
bl    Sub0802F72C                   ; 08030D86
ldr   r0,=0x47E6                    ; 08030D8A
add   r1,r4,r0                      ; 08030D8C
ldr   r0,=0xFE2C                    ; 08030D8E
strh  r0,[r1]                       ; 08030D90
ldr   r1,=0x48A2                    ; 08030D92
add   r0,r4,r1                      ; 08030D94
strh  r5,[r0]                       ; 08030D96
mov   r0,0xB0                       ; 08030D98
mul   r0,r7                         ; 08030D9A
add   r0,r6,r0                      ; 08030D9C
add   r0,0x50                       ; 08030D9E
mov   r1,0xC0                       ; 08030DA0
lsl   r1,r1,0x2                     ; 08030DA2
strh  r1,[r0]                       ; 08030DA4
ldr   r0,=0x47C4                    ; 08030DA6
add   r2,r4,r0                      ; 08030DA8
ldrh  r0,[r2]                       ; 08030DAA
mov   r1,0x10                       ; 08030DAC
eor   r0,r1                         ; 08030DAE
strh  r0,[r2]                       ; 08030DB0
ldr   r1,=0x47C2                    ; 08030DB2
add   r4,r4,r1                      ; 08030DB4
ldrh  r0,[r4]                       ; 08030DB6
mov   r1,0x2                        ; 08030DB8
eor   r0,r1                         ; 08030DBA
strh  r0,[r4]                       ; 08030DBC
mov   r0,r6                         ; 08030DBE
mov   r1,r7                         ; 08030DC0
bl    Sub08030738                   ; 08030DC2
@@Code08030DC6:
pop   {r4-r7}                       ; 08030DC6
pop   {r0}                          ; 08030DC8

bx    r0                            ; 08030DCA
.pool                               ; 08030DCC

Sub08030DF8:
push  {r4-r6,lr}                    ; 08030DF8
mov   r5,r0                         ; 08030DFA
lsl   r1,r1,0x10                    ; 08030DFC
lsr   r6,r1,0x10                    ; 08030DFE
ldr   r4,=0x03002200                ; 08030E00
ldr   r1,=0x48A2                    ; 08030E02
add   r0,r4,r1                      ; 08030E04
ldrh  r1,[r0]                       ; 08030E06
mov   r0,0x1                        ; 08030E08
and   r0,r1                         ; 08030E0A
cmp   r0,0x0                        ; 08030E0C
beq   @@Code08030E24                ; 08030E0E
ldr   r0,=0x47E6                    ; 08030E10
add   r1,r4,r0                      ; 08030E12
ldrh  r0,[r1]                       ; 08030E14
add   r0,0x1                        ; 08030E16
strh  r0,[r1]                       ; 08030E18
ldr   r0,=0x47EE                    ; 08030E1A
add   r1,r4,r0                      ; 08030E1C
ldrh  r0,[r1]                       ; 08030E1E
add   r0,0x1                        ; 08030E20
strh  r0,[r1]                       ; 08030E22
@@Code08030E24:
ldr   r0,=0x47E4                    ; 08030E24
add   r1,r4,r0                      ; 08030E26
ldrh  r0,[r1]                       ; 08030E28
cmp   r0,0xFF                       ; 08030E2A
bhi   @@Code08030E60                ; 08030E2C
add   r0,0x2                        ; 08030E2E
strh  r0,[r1]                       ; 08030E30
ldr   r0,=0x47D4                    ; 08030E32
add   r1,r4,r0                      ; 08030E34
ldrh  r0,[r1]                       ; 08030E36
add   r0,0x2                        ; 08030E38
strh  r0,[r1]                       ; 08030E3A
mov   r0,r5                         ; 08030E3C
mov   r1,r6                         ; 08030E3E
bl    Sub08030850                   ; 08030E40
b     @@Code08030ED8                ; 08030E44
.pool                               ; 08030E46

@@Code08030E60:
mov   r0,0xB0                       ; 08030E60
mul   r0,r6                         ; 08030E62
add   r0,r5,r0                      ; 08030E64
add   r0,0x9C                       ; 08030E66
mov   r1,0xFF                       ; 08030E68
strb  r1,[r0]                       ; 08030E6A
mov   r0,r5                         ; 08030E6C
mov   r1,r6                         ; 08030E6E
bl    Sub080306CC                   ; 08030E70
lsl   r0,r0,0x18                    ; 08030E74
cmp   r0,0x0                        ; 08030E76
beq   @@Code08030ED8                ; 08030E78
ldr   r1,=Data082D6D84              ; 08030E7A
mov   r0,r5                         ; 08030E7C
bl    Sub08030640                   ; 08030E7E
ldr   r0,=0x47EE                    ; 08030E82
add   r1,r4,r0                      ; 08030E84
ldrh  r0,[r1]                       ; 08030E86
sub   r0,0x6                        ; 08030E88
strh  r0,[r1]                       ; 08030E8A
mov   r2,0x0                        ; 08030E8C
ldr   r4,=0x020104A0                ; 08030E8E
ldr   r3,=Data082D7EF8              ; 08030E90
@@Code08030E92:
lsl   r0,r2,0x1                     ; 08030E92
add   r1,r0,r4                      ; 08030E94
add   r0,r0,r3                      ; 08030E96
ldrh  r0,[r0]                       ; 08030E98
strh  r0,[r1]                       ; 08030E9A
add   r0,r2,0x1                     ; 08030E9C
lsl   r0,r0,0x10                    ; 08030E9E
lsr   r2,r0,0x10                    ; 08030EA0
cmp   r2,0x1F                       ; 08030EA2
bls   @@Code08030E92                ; 08030EA4
ldr   r4,=0x03002200                ; 08030EA6
ldr   r0,=0x4967                    ; 08030EA8
add   r1,r4,r0                      ; 08030EAA
mov   r0,0x1                        ; 08030EAC
strb  r0,[r1]                       ; 08030EAE
ldr   r1,=Data0816B912              ; 08030EB0
mov   r0,r5                         ; 08030EB2
bl    Sub0802F72C                   ; 08030EB4
ldr   r1,=0x47E6                    ; 08030EB8
add   r4,r4,r1                      ; 08030EBA
mov   r0,0xA8                       ; 08030EBC
lsl   r0,r0,0x1                     ; 08030EBE
strh  r0,[r4]                       ; 08030EC0
mov   r0,0xB0                       ; 08030EC2
mul   r0,r6                         ; 08030EC4
add   r0,r5,r0                      ; 08030EC6
add   r0,0x50                       ; 08030EC8
mov   r1,0x80                       ; 08030ECA
lsl   r1,r1,0x3                     ; 08030ECC
strh  r1,[r0]                       ; 08030ECE
mov   r0,r5                         ; 08030ED0
mov   r1,r6                         ; 08030ED2
bl    Sub08030738                   ; 08030ED4
@@Code08030ED8:
pop   {r4-r6}                       ; 08030ED8
pop   {r0}                          ; 08030EDA
bx    r0                            ; 08030EDC
.pool                               ; 08030EDE

Sub08030F00:
push  {r4-r6,lr}                    ; 08030F00
mov   r5,r0                         ; 08030F02
lsl   r1,r1,0x10                    ; 08030F04
lsr   r6,r1,0x10                    ; 08030F06
ldr   r4,=0x03002200                ; 08030F08
ldr   r0,=0x47E4                    ; 08030F0A
add   r1,r4,r0                      ; 08030F0C
ldrh  r0,[r1]                       ; 08030F0E
cmp   r0,0xFF                       ; 08030F10
bhi   @@Code08030F4C                ; 08030F12
add   r0,0x2                        ; 08030F14
strh  r0,[r1]                       ; 08030F16
ldr   r2,=0x47D4                    ; 08030F18
add   r1,r4,r2                      ; 08030F1A
ldrh  r0,[r1]                       ; 08030F1C
add   r0,0x2                        ; 08030F1E
strh  r0,[r1]                       ; 08030F20
ldr   r1,=0x48A2                    ; 08030F22
add   r0,r4,r1                      ; 08030F24
ldrh  r1,[r0]                       ; 08030F26
mov   r0,0x1                        ; 08030F28
and   r0,r1                         ; 08030F2A
cmp   r0,0x0                        ; 08030F2C
beq   @@Code08030FC8                ; 08030F2E
add   r2,0x18                       ; 08030F30
add   r1,r4,r2                      ; 08030F32
ldrh  r0,[r1]                       ; 08030F34
add   r0,0x1                        ; 08030F36
strh  r0,[r1]                       ; 08030F38
b     @@Code08030FC8                ; 08030F3A
.pool                               ; 08030F3C

@@Code08030F4C:
ldr   r1,=0x47EC                    ; 08030F4C
add   r0,r4,r1                      ; 08030F4E
mov   r1,0x10                       ; 08030F50
strh  r1,[r0]                       ; 08030F52
ldr   r2,=0x47DC                    ; 08030F54
add   r0,r4,r2                      ; 08030F56
strh  r1,[r0]                       ; 08030F58
mov   r0,r5                         ; 08030F5A
mov   r1,r6                         ; 08030F5C
bl    Sub080306CC                   ; 08030F5E
lsl   r0,r0,0x18                    ; 08030F62
cmp   r0,0x0                        ; 08030F64
beq   @@Code08030FC8                ; 08030F66
ldr   r1,=Data082D6FE0              ; 08030F68
mov   r0,r5                         ; 08030F6A
bl    Sub08030640                   ; 08030F6C
ldr   r0,=0x47E6                    ; 08030F70
add   r1,r4,r0                      ; 08030F72
ldrh  r0,[r1]                       ; 08030F74
add   r0,0x3                        ; 08030F76
strh  r0,[r1]                       ; 08030F78
ldr   r2,=0x47EE                    ; 08030F7A
add   r1,r4,r2                      ; 08030F7C
ldrh  r0,[r1]                       ; 08030F7E
sub   r0,0x6                        ; 08030F80
strh  r0,[r1]                       ; 08030F82
mov   r1,0x0                        ; 08030F84
ldr   r4,=0x02010462                ; 08030F86
ldr   r3,=Data082D7F38              ; 08030F88
@@Code08030F8A:
lsl   r2,r1,0x1                     ; 08030F8A
add   r2,r2,r4                      ; 08030F8C
add   r1,0x1                        ; 08030F8E
lsl   r0,r1,0x1                     ; 08030F90
add   r0,r0,r3                      ; 08030F92
ldrh  r0,[r0]                       ; 08030F94
strh  r0,[r2]                       ; 08030F96
lsl   r1,r1,0x10                    ; 08030F98
lsr   r1,r1,0x10                    ; 08030F9A
cmp   r1,0xE                        ; 08030F9C
bls   @@Code08030F8A                ; 08030F9E
ldr   r0,=0x03002200                ; 08030FA0
ldr   r1,=0x4967                    ; 08030FA2
add   r0,r0,r1                      ; 08030FA4
mov   r1,0x1                        ; 08030FA6
strb  r1,[r0]                       ; 08030FA8
ldr   r0,=Data081F7A90              ; 08030FAA  story intro Yoshi with map / level select controls menu grpahics
ldr   r1,=0x06002000                ; 08030FAC
bl    swi_LZ77_VRAM                 ; 08030FAE  LZ77 decompress (VRAM)
mov   r0,0xB0                       ; 08030FB2
mul   r0,r6                         ; 08030FB4
add   r0,r5,r0                      ; 08030FB6
add   r0,0x50                       ; 08030FB8
mov   r1,0x80                       ; 08030FBA
lsl   r1,r1,0x1                     ; 08030FBC
strh  r1,[r0]                       ; 08030FBE
mov   r0,r5                         ; 08030FC0
mov   r1,r6                         ; 08030FC2
bl    Sub08030738                   ; 08030FC4
@@Code08030FC8:
pop   {r4-r6}                       ; 08030FC8
pop   {r0}                          ; 08030FCA
bx    r0                            ; 08030FCC
.pool                               ; 08030FCE

Sub08030FFC:
push  {r4-r7,lr}                    ; 08030FFC
mov   r7,r9                         ; 08030FFE
mov   r6,r8                         ; 08031000
push  {r6-r7}                       ; 08031002
mov   r7,r0                         ; 08031004
lsl   r1,r1,0x10                    ; 08031006
lsr   r1,r1,0x10                    ; 08031008
mov   r9,r1                         ; 0803100A
ldr   r2,=0x03002200                ; 0803100C
ldr   r0,=0x47E4                    ; 0803100E
add   r1,r2,r0                      ; 08031010
ldrh  r0,[r1]                       ; 08031012
cmp   r0,0xFF                       ; 08031014
bhi   @@Code08031034                ; 08031016
add   r0,0x2                        ; 08031018
strh  r0,[r1]                       ; 0803101A
ldr   r3,=0x47D4                    ; 0803101C
add   r1,r2,r3                      ; 0803101E
ldrh  r0,[r1]                       ; 08031020
add   r0,0x2                        ; 08031022
strh  r0,[r1]                       ; 08031024
b     @@Code08031126                ; 08031026
.pool                               ; 08031028

@@Code08031034:
ldr   r1,=0x47EC                    ; 08031034
add   r0,r2,r1                      ; 08031036
mov   r1,0x10                       ; 08031038
strh  r1,[r0]                       ; 0803103A
ldr   r3,=0x47DC                    ; 0803103C
add   r0,r2,r3                      ; 0803103E
strh  r1,[r0]                       ; 08031040
mov   r0,r7                         ; 08031042
mov   r1,r9                         ; 08031044
bl    Sub080306CC                   ; 08031046
lsl   r0,r0,0x18                    ; 0803104A
cmp   r0,0x0                        ; 0803104C
beq   @@Code08031126                ; 0803104E
mov   r5,0x0                        ; 08031050
@@Code08031052:
cmp   r5,r9                         ; 08031052
beq   @@Code0803106A                ; 08031054
mov   r0,0xB0                       ; 08031056
mul   r0,r5                         ; 08031058
add   r0,r7,r0                      ; 0803105A
ldrh  r0,[r0,0x2C]                  ; 0803105C
cmp   r0,0x0                        ; 0803105E
beq   @@Code0803106A                ; 08031060
mov   r0,r7                         ; 08031062
mov   r1,r5                         ; 08031064
bl    Sub08030704                   ; 08031066
@@Code0803106A:
add   r0,r5,0x1                     ; 0803106A
lsl   r0,r0,0x10                    ; 0803106C
lsr   r5,r0,0x10                    ; 0803106E
cmp   r5,0x17                       ; 08031070
bls   @@Code08031052                ; 08031072
ldr   r1,=Data082D71C8              ; 08031074
mov   r0,r7                         ; 08031076
bl    Sub08030640                   ; 08031078
ldr   r1,=0x03002200                ; 0803107C
ldr   r0,=0x47E6                    ; 0803107E
add   r1,r1,r0                      ; 08031080
ldrh  r0,[r1]                       ; 08031082
add   r0,0x4                        ; 08031084
strh  r0,[r1]                       ; 08031086
mov   r5,0x0                        ; 08031088
ldr   r3,=0x020104A0                ; 0803108A
ldr   r2,=Data082D7F58              ; 0803108C
@@Code0803108E:
lsl   r0,r5,0x1                     ; 0803108E
add   r1,r0,r3                      ; 08031090
add   r0,r0,r2                      ; 08031092
ldrh  r0,[r0]                       ; 08031094
strh  r0,[r1]                       ; 08031096
add   r0,r5,0x1                     ; 08031098
lsl   r0,r0,0x10                    ; 0803109A
lsr   r5,r0,0x10                    ; 0803109C
cmp   r5,0x1F                       ; 0803109E
bls   @@Code0803108E                ; 080310A0
ldr   r0,=0x03002200                ; 080310A2
ldr   r1,=0x4967                    ; 080310A4
add   r0,r0,r1                      ; 080310A6
mov   r1,0x1                        ; 080310A8
strb  r1,[r0]                       ; 080310AA
ldr   r1,=Data0816B91C              ; 080310AC
mov   r0,r7                         ; 080310AE
bl    Sub0802F72C                   ; 080310B0
ldr   r0,=DataPtrs082315D4          ; 080310B4
ldr   r0,[r0,0x4]                   ; 080310B6
ldr   r1,=0x0201FC00                ; 080310B8  decompressed graphics buffer
bl    swi_LZ77_WRAM                 ; 080310BA  LZ77 decompress (WRAM)
mov   r5,0x0                        ; 080310BE
ldr   r2,=Data08297EA4              ; 080310C0
mov   r8,r2                         ; 080310C2
@@Code080310C4:
lsl   r0,r5,0x9                     ; 080310C4
ldr   r3,=0x02020400                ; 080310C6
add   r0,r0,r3                      ; 080310C8
lsl   r4,r5,0xA                     ; 080310CA
ldr   r2,=0x06013280                ; 080310CC
add   r1,r4,r2                      ; 080310CE
mov   r2,0x60                       ; 080310D0
bl    swi_MemoryCopy32              ; 080310D2  Memory copy/fill, 32-byte blocks
lsl   r6,r5,0x5                     ; 080310D6
mov   r3,0x84                       ; 080310D8
lsl   r3,r3,0x2                     ; 080310DA
add   r0,r6,r3                      ; 080310DC
lsl   r0,r0,0x5                     ; 080310DE
add   r0,r8                         ; 080310E0
ldr   r2,=0x06013000                ; 080310E2
add   r1,r4,r2                      ; 080310E4
mov   r2,0x20                       ; 080310E6
bl    swi_MemoryCopy32              ; 080310E8  Memory copy/fill, 32-byte blocks
mov   r3,0xA4                       ; 080310EC
lsl   r3,r3,0x2                     ; 080310EE
add   r0,r6,r3                      ; 080310F0
lsl   r0,r0,0x5                     ; 080310F2
add   r0,r8                         ; 080310F4
ldr   r1,=0x06013080                ; 080310F6
add   r4,r4,r1                      ; 080310F8
mov   r1,r4                         ; 080310FA
mov   r2,0x80                       ; 080310FC
bl    swi_MemoryCopy32              ; 080310FE  Memory copy/fill, 32-byte blocks
add   r0,r5,0x1                     ; 08031102
lsl   r0,r0,0x10                    ; 08031104
lsr   r5,r0,0x10                    ; 08031106
cmp   r5,0x3                        ; 08031108
bls   @@Code080310C4                ; 0803110A
mov   r0,0xB0                       ; 0803110C
mov   r2,r9                         ; 0803110E
mul   r2,r0                         ; 08031110
mov   r0,r2                         ; 08031112
add   r0,r7,r0                      ; 08031114
add   r0,0x50                       ; 08031116
mov   r1,0x90                       ; 08031118
lsl   r1,r1,0x3                     ; 0803111A
strh  r1,[r0]                       ; 0803111C
mov   r0,r7                         ; 0803111E
mov   r1,r9                         ; 08031120
bl    Sub08030738                   ; 08031122
@@Code08031126:
pop   {r3-r4}                       ; 08031126
mov   r8,r3                         ; 08031128
mov   r9,r4                         ; 0803112A
pop   {r4-r7}                       ; 0803112C
pop   {r0}                          ; 0803112E
bx    r0                            ; 08031130
.pool                               ; 08031132

Sub08031174:
push  {r4-r7,lr}                    ; 08031174
mov   r7,r8                         ; 08031176
push  {r7}                          ; 08031178
mov   r5,r0                         ; 0803117A
lsl   r1,r1,0x10                    ; 0803117C
lsr   r1,r1,0x10                    ; 0803117E
mov   r8,r1                         ; 08031180
ldr   r1,=0x03002200                ; 08031182
ldr   r0,=0x47E4                    ; 08031184
add   r2,r1,r0                      ; 08031186
ldrh  r0,[r2]                       ; 08031188
cmp   r0,0xFF                       ; 0803118A
bhi   @@Code080311AC                ; 0803118C
add   r0,0x2                        ; 0803118E
strh  r0,[r2]                       ; 08031190
ldr   r0,=0x47D4                    ; 08031192
add   r1,r1,r0                      ; 08031194
ldrh  r0,[r1]                       ; 08031196
add   r0,0x2                        ; 08031198
strh  r0,[r1]                       ; 0803119A
b     @@Code0803124C                ; 0803119C
.pool                               ; 0803119E

@@Code080311AC:
mov   r0,r5                         ; 080311AC
mov   r1,r8                         ; 080311AE
bl    Sub080306CC                   ; 080311B0
lsl   r0,r0,0x18                    ; 080311B4
cmp   r0,0x0                        ; 080311B6
beq   @@Code0803124C                ; 080311B8
ldr   r0,=Data082AE310              ; 080311BA
ldr   r1,=0x06010000                ; 080311BC
bl    swi_LZ77_VRAM                 ; 080311BE  LZ77 decompress (VRAM)
mov   r2,0x0                        ; 080311C2
ldr   r4,=0x02010440                ; 080311C4
ldr   r3,=Data082D7F98              ; 080311C6
@@Code080311C8:
lsl   r0,r2,0x1                     ; 080311C8
add   r1,r0,r4                      ; 080311CA
add   r0,r0,r3                      ; 080311CC
ldrh  r0,[r0]                       ; 080311CE
strh  r0,[r1]                       ; 080311D0
add   r0,r2,0x1                     ; 080311D2
lsl   r0,r0,0x10                    ; 080311D4
lsr   r2,r0,0x10                    ; 080311D6
cmp   r2,0x1F                       ; 080311D8
bls   @@Code080311C8                ; 080311DA
ldr   r4,=0x03002200                ; 080311DC
ldr   r0,=0x4967                    ; 080311DE
add   r1,r4,r0                      ; 080311E0
mov   r0,0x1                        ; 080311E2
strb  r0,[r1]                       ; 080311E4
ldr   r1,=Data082D7414              ; 080311E6
mov   r0,r5                         ; 080311E8
bl    Sub08030640                   ; 080311EA
ldr   r1,=Data0816B924              ; 080311EE
mov   r0,r5                         ; 080311F0
bl    Sub0802F72C                   ; 080311F2
mov   r2,0x0                        ; 080311F6
ldr   r1,=0x1688                    ; 080311F8
add   r7,r5,r1                      ; 080311FA
ldr   r1,=0x47E6                    ; 080311FC
add   r0,r4,r1                      ; 080311FE
ldrh  r3,[r0]                       ; 08031200
ldr   r0,=0x17C8                    ; 08031202
add   r6,r5,r0                      ; 08031204
@@Code08031206:
lsl   r1,r2,0x1                     ; 08031206
add   r0,r7,r1                      ; 08031208
strh  r3,[r0]                       ; 0803120A
add   r1,r6,r1                      ; 0803120C
strh  r3,[r1]                       ; 0803120E
add   r0,r2,0x1                     ; 08031210
lsl   r0,r0,0x10                    ; 08031212
lsr   r2,r0,0x10                    ; 08031214
cmp   r2,0x9F                       ; 08031216
bls   @@Code08031206                ; 08031218
mov   r0,0xB0                       ; 0803121A
mov   r1,r8                         ; 0803121C
mul   r1,r0                         ; 0803121E
mov   r0,r1                         ; 08031220
add   r0,r5,r0                      ; 08031222
add   r0,0x50                       ; 08031224
mov   r1,0xC0                       ; 08031226
lsl   r1,r1,0x2                     ; 08031228
strh  r1,[r0]                       ; 0803122A
ldr   r0,=0x47C4                    ; 0803122C
add   r2,r4,r0                      ; 0803122E
ldrh  r0,[r2]                       ; 08031230
mov   r1,0x10                       ; 08031232
orr   r0,r1                         ; 08031234
strh  r0,[r2]                       ; 08031236
ldr   r1,=0x47C2                    ; 08031238
add   r2,r4,r1                      ; 0803123A
ldrh  r1,[r2]                       ; 0803123C
mov   r0,0x2                        ; 0803123E
orr   r0,r1                         ; 08031240
strh  r0,[r2]                       ; 08031242
mov   r0,r5                         ; 08031244
mov   r1,r8                         ; 08031246
bl    Sub08030738                   ; 08031248
@@Code0803124C:
pop   {r3}                          ; 0803124C
mov   r8,r3                         ; 0803124E
pop   {r4-r7}                       ; 08031250
pop   {r0}                          ; 08031252
bx    r0                            ; 08031254
.pool                               ; 08031256

Sub0803128C:
push  {r4-r5,lr}                    ; 0803128C
mov   r4,r0                         ; 0803128E
lsl   r1,r1,0x10                    ; 08031290
lsr   r5,r1,0x10                    ; 08031292
bl    Sub080301DC                   ; 08031294
ldr   r1,=0x03002200                ; 08031298
ldr   r0,=0x47E4                    ; 0803129A
add   r2,r1,r0                      ; 0803129C
ldrh  r0,[r2]                       ; 0803129E
cmp   r0,0xFF                       ; 080312A0
bhi   @@Code080312C0                ; 080312A2
add   r0,0x2                        ; 080312A4
strh  r0,[r2]                       ; 080312A6
ldr   r0,=0x47D4                    ; 080312A8
add   r1,r1,r0                      ; 080312AA
ldrh  r0,[r1]                       ; 080312AC
add   r0,0x2                        ; 080312AE
strh  r0,[r1]                       ; 080312B0
b     @@Code080312C8                ; 080312B2
.pool                               ; 080312B4

@@Code080312C0:
mov   r0,r4                         ; 080312C0
mov   r1,r5                         ; 080312C2
bl    Sub080306CC                   ; 080312C4
@@Code080312C8:
pop   {r4-r5}                       ; 080312C8
pop   {r0}                          ; 080312CA
bx    r0                            ; 080312CC
.pool                               ; 080312CE

Sub080312D0:
push  {r4-r7,lr}                    ; 080312D0
mov   r7,r10                        ; 080312D2
mov   r6,r9                         ; 080312D4
mov   r5,r8                         ; 080312D6
push  {r5-r7}                       ; 080312D8
mov   r5,r0                         ; 080312DA
mov   r6,r2                         ; 080312DC
mov   r10,r3                        ; 080312DE
ldr   r0,[sp,0x20]                  ; 080312E0
lsl   r1,r1,0x10                    ; 080312E2
lsr   r1,r1,0x10                    ; 080312E4
mov   r9,r1                         ; 080312E6
lsl   r0,r0,0x10                    ; 080312E8
lsr   r4,r0,0x10                    ; 080312EA
mov   r0,0xB0                       ; 080312EC
mov   r1,r9                         ; 080312EE
mul   r1,r0                         ; 080312F0
mov   r0,r1                         ; 080312F2
add   r3,r5,r0                      ; 080312F4
mov   r0,r3                         ; 080312F6
add   r0,0x48                       ; 080312F8
mov   r2,0x0                        ; 080312FA
strh  r4,[r0]                       ; 080312FC
ldr   r1,=0x03002200                ; 080312FE
ldr   r7,=0x3806                    ; 08031300
add   r0,r1,r7                      ; 08031302
strh  r4,[r0]                       ; 08031304
add   r7,0x8                        ; 08031306
add   r0,r1,r7                      ; 08031308
strh  r2,[r0]                       ; 0803130A
add   r7,0x8                        ; 0803130C
add   r0,r1,r7                      ; 0803130E
strh  r2,[r0]                       ; 08031310
ldr   r0,=0x381E                    ; 08031312
add   r1,r1,r0                      ; 08031314
strh  r4,[r1]                       ; 08031316
cmp   r4,0xFF                       ; 08031318
bls   @@Code08031330                ; 0803131A
mov   r1,r3                         ; 0803131C
add   r1,0x9C                       ; 0803131E
mov   r0,0x7                        ; 08031320
b     @@Code08031336                ; 08031322
.pool                               ; 08031324

@@Code08031330:
mov   r1,r3                         ; 08031330
add   r1,0x9C                       ; 08031332
mov   r0,0x3                        ; 08031334
@@Code08031336:
strb  r0,[r1]                       ; 08031336
mov   r1,0x20                       ; 08031338
mov   r3,0x0                        ; 0803133A
mov   r2,0x0                        ; 0803133C
mov   r7,0x10                       ; 0803133E
add   r7,r7,r5                      ; 08031340
mov   r12,r7                        ; 08031342
add   r5,0x14                       ; 08031344
mov   r8,r5                         ; 08031346
ldr   r5,=0xFFFF                    ; 08031348
@@Code0803134A:
lsl   r0,r3,0x11                    ; 0803134A
lsr   r3,r0,0x10                    ; 0803134C
lsl   r1,r1,0x1                     ; 0803134E
lsr   r0,r1,0x10                    ; 08031350
cmp   r0,r4                         ; 08031352
bls   @@Code08031362                ; 08031354
sub   r0,r0,r4                      ; 08031356
lsl   r0,r0,0x10                    ; 08031358
and   r1,r5                         ; 0803135A
orr   r1,r0                         ; 0803135C
mov   r0,0x1                        ; 0803135E
orr   r3,r0                         ; 08031360
@@Code08031362:
add   r0,r2,0x1                     ; 08031362
lsl   r0,r0,0x10                    ; 08031364
lsr   r2,r0,0x10                    ; 08031366
cmp   r2,0x1F                       ; 08031368
bls   @@Code0803134A                ; 0803136A
lsl   r0,r3,0x9                     ; 0803136C
lsr   r3,r0,0x10                    ; 0803136E
mov   r0,r3                         ; 08031370
mul   r0,r3                         ; 08031372
lsl   r0,r0,0x10                    ; 08031374
lsr   r3,r0,0x10                    ; 08031376
mov   r0,r6                         ; 08031378
mul   r0,r3                         ; 0803137A
asr   r6,r0,0x7                     ; 0803137C
mov   r0,0xB0                       ; 0803137E
mov   r1,r9                         ; 08031380
mul   r1,r0                         ; 08031382
mov   r2,r12                        ; 08031384
add   r0,r2,r1                      ; 08031386
str   r6,[r0]                       ; 08031388
mov   r0,r10                        ; 0803138A
mul   r0,r3                         ; 0803138C
asr   r0,r0,0x7                     ; 0803138E
add   r1,r8                         ; 08031390
str   r0,[r1]                       ; 08031392
pop   {r3-r5}                       ; 08031394
mov   r8,r3                         ; 08031396
mov   r9,r4                         ; 08031398
mov   r10,r5                        ; 0803139A
pop   {r4-r7}                       ; 0803139C
pop   {r0}                          ; 0803139E
bx    r0                            ; 080313A0
.pool                               ; 080313A2

Sub080313A8:
push  {lr}                          ; 080313A8
lsl   r1,r1,0x10                    ; 080313AA
lsr   r1,r1,0x10                    ; 080313AC
ldr   r3,=CodePtrs0816BDB8          ; 080313AE
mov   r2,0xB0                       ; 080313B0
mul   r2,r1                         ; 080313B2
add   r2,r0,r2                      ; 080313B4
add   r2,0x72                       ; 080313B6
ldrh  r2,[r2]                       ; 080313B8
lsl   r2,r2,0x2                     ; 080313BA
add   r2,r2,r3                      ; 080313BC
ldr   r2,[r2]                       ; 080313BE
bl    Sub_bx_r2                     ; 080313C0
pop   {r0}                          ; 080313C4
bx    r0                            ; 080313C6
.pool                               ; 080313C8

Sub080313CC:
push  {r4-r7,lr}                    ; 080313CC
mov   r5,r0                         ; 080313CE
lsl   r1,r1,0x10                    ; 080313D0
lsr   r7,r1,0x10                    ; 080313D2
mov   r0,0xB0                       ; 080313D4
mul   r0,r7                         ; 080313D6
add   r0,r5,r0                      ; 080313D8
add   r0,0xA4                       ; 080313DA
ldrb  r0,[r0]                       ; 080313DC
cmp   r0,0x0                        ; 080313DE
beq   @@Code080313F0                ; 080313E0
ldr   r0,=0x03002200                ; 080313E2
ldr   r1,=0x47D6                    ; 080313E4
b     @@Code080313F4                ; 080313E6
.pool                               ; 080313E8

@@Code080313F0:
ldr   r0,=0x03002200                ; 080313F0
ldr   r1,=0x47D4                    ; 080313F2
@@Code080313F4:
add   r0,r0,r1                      ; 080313F4
ldrh  r1,[r0]                       ; 080313F6
cmp   r1,0x8                        ; 080313F8
beq   @@Code080314BE                ; 080313FA
mov   r0,0xB0                       ; 080313FC
mov   r4,r7                         ; 080313FE
mul   r4,r0                         ; 08031400
add   r0,r5,r4                      ; 08031402
mov   r12,r0                        ; 08031404
ldrh  r0,[r0,0x28]                  ; 08031406
cmp   r0,0xFF                       ; 08031408
bls   @@Code080314D6                ; 0803140A
mov   r1,r12                        ; 0803140C
add   r1,0xA3                       ; 0803140E
mov   r0,0xFF                       ; 08031410
strb  r0,[r1]                       ; 08031412
add   r1,0x1                        ; 08031414
mov   r0,0x2                        ; 08031416
strb  r0,[r1]                       ; 08031418
mov   r2,r12                        ; 0803141A
add   r2,0x40                       ; 0803141C
ldrh  r0,[r2]                       ; 0803141E
mov   r1,0x1                        ; 08031420
eor   r0,r1                         ; 08031422
strh  r0,[r2]                       ; 08031424
mov   r3,r5                         ; 08031426
add   r3,0x10                       ; 08031428
add   r6,r3,r4                      ; 0803142A
ldr   r0,[r6]                       ; 0803142C
neg   r0,r0                         ; 0803142E
asr   r0,r0,0x3                     ; 08031430
mov   r1,r0                         ; 08031432
add   r1,0x40                       ; 08031434
mov   r2,r5                         ; 08031436
add   r2,0x8                        ; 08031438
add   r2,r2,r4                      ; 0803143A
ldr   r0,[r2]                       ; 0803143C
mul   r0,r1                         ; 0803143E
asr   r0,r0,0x6                     ; 08031440
mov   r1,0xF0                       ; 08031442
lsl   r1,r1,0x8                     ; 08031444
sub   r0,r1,r0                      ; 08031446
str   r0,[r2]                       ; 08031448
mov   r2,r12                        ; 0803144A
add   r2,0x72                       ; 0803144C
ldrh  r0,[r2]                       ; 0803144E
add   r1,r0,0x1                     ; 08031450
strh  r1,[r2]                       ; 08031452
lsl   r0,r1,0x10                    ; 08031454
lsr   r0,r0,0x10                    ; 08031456
cmp   r0,0x2                        ; 08031458
bls   @@Code08031470                ; 0803145A
mov   r0,r5                         ; 0803145C
mov   r1,r7                         ; 0803145E
bl    Sub08030704                   ; 08031460
b     @@Code080314D6                ; 08031464
.pool                               ; 08031466

@@Code08031470:
mov   r0,0x1                        ; 08031470
and   r1,r0                         ; 08031472
cmp   r1,0x0                        ; 08031474
beq   @@Code08031492                ; 08031476
mov   r0,0x8                        ; 08031478
and   r0,r7                         ; 0803147A
cmp   r0,0x0                        ; 0803147C
beq   @@Code0803148C                ; 0803147E
mov   r0,r12                        ; 08031480
add   r0,0x9C                       ; 08031482
ldrb  r1,[r0]                       ; 08031484
mov   r2,0xF0                       ; 08031486
orr   r1,r2                         ; 08031488
strb  r1,[r0]                       ; 0803148A
@@Code0803148C:
ldr   r0,[r6]                       ; 0803148C
asr   r1,r0,0x2                     ; 0803148E
b     @@Code080314A2                ; 08031490
@@Code08031492:
mov   r2,r12                        ; 08031492
add   r2,0x9C                       ; 08031494
ldrb  r1,[r2]                       ; 08031496
mov   r0,0xF                        ; 08031498
and   r0,r1                         ; 0803149A
strb  r0,[r2]                       ; 0803149C
ldr   r0,[r6]                       ; 0803149E
lsl   r1,r0,0x2                     ; 080314A0
@@Code080314A2:
mov   r0,0xB0                       ; 080314A2
mov   r2,r7                         ; 080314A4
mul   r2,r0                         ; 080314A6
add   r0,r3,r2                      ; 080314A8
str   r1,[r0]                       ; 080314AA
mov   r0,r5                         ; 080314AC
add   r0,0x20                       ; 080314AE
add   r0,r0,r2                      ; 080314B0
str   r1,[r0]                       ; 080314B2
add   r2,r5,r2                      ; 080314B4
ldrh  r0,[r2,0x34]                  ; 080314B6
mov   r1,0x30                       ; 080314B8
eor   r0,r1                         ; 080314BA
strh  r0,[r2,0x34]                  ; 080314BC
@@Code080314BE:
mov   r0,0xB0                       ; 080314BE
mov   r1,r7                         ; 080314C0
mul   r1,r0                         ; 080314C2
mov   r0,r5                         ; 080314C4
add   r0,0x8                        ; 080314C6
add   r1,r0,r1                      ; 080314C8
ldr   r0,[r1]                       ; 080314CA
cmp   r0,0x0                        ; 080314CC
bge   @@Code080314D6                ; 080314CE
mov   r0,0x80                       ; 080314D0
lsl   r0,r0,0x9                     ; 080314D2
str   r0,[r1]                       ; 080314D4
@@Code080314D6:
pop   {r4-r7}                       ; 080314D6
pop   {r0}                          ; 080314D8
bx    r0                            ; 080314DA

Sub080314DC:
push  {r4,lr}                       ; 080314DC
lsl   r1,r1,0x10                    ; 080314DE
lsr   r1,r1,0x10                    ; 080314E0
mov   r2,0xB0                       ; 080314E2
mov   r4,r1                         ; 080314E4
mul   r4,r2                         ; 080314E6
mov   r2,r0                         ; 080314E8
add   r2,0x10                       ; 080314EA
add   r2,r2,r4                      ; 080314EC
ldr   r3,=0xFFFFFC00                ; 080314EE
str   r3,[r2]                       ; 080314F0
mov   r2,r0                         ; 080314F2
add   r2,0x20                       ; 080314F4
add   r2,r2,r4                      ; 080314F6
str   r3,[r2]                       ; 080314F8
bl    Sub080313CC                   ; 080314FA
pop   {r4}                          ; 080314FE
pop   {r0}                          ; 08031500
bx    r0                            ; 08031502
.pool                               ; 08031504

Sub08031508:
push  {r4,lr}                       ; 08031508
lsl   r1,r1,0x10                    ; 0803150A
lsr   r1,r1,0x10                    ; 0803150C
mov   r2,0xB0                       ; 0803150E
mov   r4,r1                         ; 08031510
mul   r4,r2                         ; 08031512
mov   r2,r0                         ; 08031514
add   r2,0x10                       ; 08031516
add   r2,r2,r4                      ; 08031518
ldr   r3,=0xFFFFFEC0                ; 0803151A
str   r3,[r2]                       ; 0803151C
mov   r2,r0                         ; 0803151E
add   r2,0x20                       ; 08031520
add   r2,r2,r4                      ; 08031522
str   r3,[r2]                       ; 08031524
bl    Sub080313CC                   ; 08031526
pop   {r4}                          ; 0803152A
pop   {r0}                          ; 0803152C
bx    r0                            ; 0803152E
.pool                               ; 08031530

Sub08031534:
push  {r4,lr}                       ; 08031534
lsl   r1,r1,0x10                    ; 08031536
lsr   r1,r1,0x10                    ; 08031538
mov   r2,0xB0                       ; 0803153A
mov   r4,r1                         ; 0803153C
mul   r4,r2                         ; 0803153E
mov   r2,r0                         ; 08031540
add   r2,0x10                       ; 08031542
add   r2,r2,r4                      ; 08031544
mov   r3,0x40                       ; 08031546
neg   r3,r3                         ; 08031548
str   r3,[r2]                       ; 0803154A
mov   r2,r0                         ; 0803154C
add   r2,0x20                       ; 0803154E
add   r2,r2,r4                      ; 08031550
str   r3,[r2]                       ; 08031552
bl    Sub080313CC                   ; 08031554
pop   {r4}                          ; 08031558
pop   {r0}                          ; 0803155A
bx    r0                            ; 0803155C
.pool                               ; 0803155E

Sub08031560:
push  {r4-r5,lr}                    ; 08031560
add   sp,-0x4                       ; 08031562
mov   r4,r0                         ; 08031564
lsl   r1,r1,0x10                    ; 08031566
lsr   r1,r1,0x10                    ; 08031568
mov   r5,r1                         ; 0803156A
ldr   r0,=0x03002200                ; 0803156C
ldr   r2,=0x47E4                    ; 0803156E
add   r0,r0,r2                      ; 08031570
ldrh  r0,[r0]                       ; 08031572
cmp   r0,0xFF                       ; 08031574
bls   @@Code080315AE                ; 08031576
mov   r0,0xB0                       ; 08031578
mul   r0,r1                         ; 0803157A
add   r0,r4,r0                      ; 0803157C
add   r0,0x48                       ; 0803157E
ldrh  r0,[r0]                       ; 08031580
sub   r0,0x14                       ; 08031582
lsl   r0,r0,0x10                    ; 08031584
lsr   r0,r0,0x10                    ; 08031586
cmp   r0,0x7F                       ; 08031588
bhi   @@Code0803159C                ; 0803158A
mov   r0,r4                         ; 0803158C
bl    Sub08030704                   ; 0803158E
b     @@Code080315AE                ; 08031592
.pool                               ; 08031594

@@Code0803159C:
mov   r2,0x40                       ; 0803159C
neg   r2,r2                         ; 0803159E
mov   r3,0x1                        ; 080315A0
neg   r3,r3                         ; 080315A2
str   r0,[sp]                       ; 080315A4
mov   r0,r4                         ; 080315A6
mov   r1,r5                         ; 080315A8
bl    Sub080312D0                   ; 080315AA
@@Code080315AE:
add   sp,0x4                        ; 080315AE
pop   {r4-r5}                       ; 080315B0
pop   {r0}                          ; 080315B2
bx    r0                            ; 080315B4
.pool                               ; 080315B6

Sub080315B8:
push  {r4-r6,lr}                    ; 080315B8
mov   r6,r0                         ; 080315BA
lsl   r1,r1,0x10                    ; 080315BC
lsr   r5,r1,0x10                    ; 080315BE
mov   r0,0xB0                       ; 080315C0
mul   r0,r5                         ; 080315C2
add   r0,r6,r0                      ; 080315C4
add   r0,0x48                       ; 080315C6
mov   r1,0xC0                       ; 080315C8
lsl   r1,r1,0x5                     ; 080315CA
strh  r1,[r0]                       ; 080315CC
mov   r4,0x0                        ; 080315CE
@@Code080315D0:
lsl   r0,r4,0x5                     ; 080315D0
add   r0,0x10                       ; 080315D2
lsl   r0,r0,0x5                     ; 080315D4
ldr   r1,=Data08297EA4              ; 080315D6
add   r0,r0,r1                      ; 080315D8
lsl   r1,r4,0xA                     ; 080315DA
ldr   r2,=0x06016000                ; 080315DC
add   r1,r1,r2                      ; 080315DE
mov   r2,0x80                       ; 080315E0
bl    swi_MemoryCopy32              ; 080315E2  Memory copy/fill, 32-byte blocks
add   r0,r4,0x1                     ; 080315E6
lsl   r0,r0,0x10                    ; 080315E8
lsr   r4,r0,0x10                    ; 080315EA
cmp   r4,0x7                        ; 080315EC
bls   @@Code080315D0                ; 080315EE
mov   r0,r6                         ; 080315F0
mov   r1,r5                         ; 080315F2
bl    Sub08031560                   ; 080315F4
pop   {r4-r6}                       ; 080315F8
pop   {r0}                          ; 080315FA
bx    r0                            ; 080315FC
.pool                               ; 080315FE

Sub08031608:
push  {r4-r5,lr}                    ; 08031608
mov   r2,r0                         ; 0803160A
lsl   r1,r1,0x10                    ; 0803160C
lsr   r1,r1,0x10                    ; 0803160E
mov   r0,0xB0                       ; 08031610
mov   r4,r1                         ; 08031612
mul   r4,r0                         ; 08031614
mov   r0,r2                         ; 08031616
add   r0,0x8                        ; 08031618
add   r0,r0,r4                      ; 0803161A
ldr   r3,[r0]                       ; 0803161C
cmp   r3,0x0                        ; 0803161E
bge   @@Code0803162A                ; 08031620
mov   r0,r2                         ; 08031622
bl    Sub08030704                   ; 08031624
b     @@Code080316B0                ; 08031628
@@Code0803162A:
mov   r5,0xE8                       ; 0803162A
lsl   r5,r5,0x9                     ; 0803162C
cmp   r3,r5                         ; 0803162E
bgt   @@Code080316B0                ; 08031630
ldr   r3,=0x1046                    ; 08031632
add   r1,r2,r3                      ; 08031634
ldrh  r3,[r1]                       ; 08031636
cmp   r3,0x0                        ; 08031638
bne   @@Code08031694                ; 0803163A
str   r5,[r0]                       ; 0803163C
ldr   r5,=0x1010                    ; 0803163E
add   r0,r2,r5                      ; 08031640
ldrh  r0,[r0]                       ; 08031642
cmp   r0,0xB                        ; 08031644
bne   @@Code080316B0                ; 08031646
mov   r0,0x1                        ; 08031648
strh  r0,[r1]                       ; 0803164A
mov   r0,0xFF                       ; 0803164C
lsl   r0,r0,0x4                     ; 0803164E
add   r1,r2,r0                      ; 08031650
mov   r0,0x80                       ; 08031652
str   r0,[r1]                       ; 08031654
add   r5,0x42                       ; 08031656
add   r1,r2,r5                      ; 08031658
add   r0,0x80                       ; 0803165A
strh  r0,[r1]                       ; 0803165C
ldr   r1,=0x101C                    ; 0803165E
add   r0,r2,r1                      ; 08031660
strh  r3,[r0]                       ; 08031662
sub   r5,0x72                       ; 08031664
add   r0,r2,r5                      ; 08031666
str   r3,[r0]                       ; 08031668
sub   r1,0x38                       ; 0803166A
add   r0,r2,r1                      ; 0803166C
str   r3,[r0]                       ; 0803166E
add   r5,0x8                        ; 08031670
add   r0,r2,r5                      ; 08031672
str   r3,[r0]                       ; 08031674
add   r1,0x8                        ; 08031676
add   r0,r2,r1                      ; 08031678
str   r3,[r0]                       ; 0803167A
add   r0,r2,r4                      ; 0803167C
add   r0,0x4A                       ; 0803167E
mov   r1,0x29                       ; 08031680
strh  r1,[r0]                       ; 08031682
b     @@Code080316B0                ; 08031684
.pool                               ; 08031686

@@Code08031694:
add   r1,r2,r4                      ; 08031694
mov   r2,r1                         ; 08031696
add   r2,0x4A                       ; 08031698
ldrh  r0,[r2]                       ; 0803169A
cmp   r0,0x0                        ; 0803169C
bne   @@Code080316B0                ; 0803169E
mov   r0,0x4                        ; 080316A0
strh  r0,[r2]                       ; 080316A2
add   r1,0x40                       ; 080316A4
ldrh  r0,[r1]                       ; 080316A6
cmp   r0,0x3                        ; 080316A8
bhi   @@Code080316B0                ; 080316AA
add   r0,0x1                        ; 080316AC
strh  r0,[r1]                       ; 080316AE
@@Code080316B0:
pop   {r4-r5}                       ; 080316B0
pop   {r0}                          ; 080316B2
bx    r0                            ; 080316B4
.pool                               ; 080316B6

Sub080316B8:
push  {r4,lr}                       ; 080316B8
lsl   r1,r1,0x10                    ; 080316BA
lsr   r1,r1,0x10                    ; 080316BC
mov   r2,0xB0                       ; 080316BE
mov   r4,r1                         ; 080316C0
mul   r4,r2                         ; 080316C2
mov   r2,r0                         ; 080316C4
add   r2,0x10                       ; 080316C6
add   r2,r2,r4                      ; 080316C8
ldr   r3,=0xFFFFF7A0                ; 080316CA
str   r3,[r2]                       ; 080316CC
add   r4,r0,r4                      ; 080316CE
add   r4,0x40                       ; 080316D0
mov   r2,0x1                        ; 080316D2
strh  r2,[r4]                       ; 080316D4
bl    Sub08031608                   ; 080316D6
pop   {r4}                          ; 080316DA
pop   {r0}                          ; 080316DC
bx    r0                            ; 080316DE
.pool                               ; 080316E0

Sub080316E4:
mov   r3,r0                         ; 080316E4
lsl   r2,r2,0x10                    ; 080316E6
lsr   r2,r2,0x10                    ; 080316E8
mov   r0,0xB0                       ; 080316EA
mul   r2,r0                         ; 080316EC
mov   r0,r3                         ; 080316EE
add   r0,0x14                       ; 080316F0
add   r0,r0,r2                      ; 080316F2
str   r1,[r0]                       ; 080316F4
mov   r0,r3                         ; 080316F6
add   r0,0x1C                       ; 080316F8
add   r0,r0,r2                      ; 080316FA
mov   r1,0x20                       ; 080316FC
str   r1,[r0]                       ; 080316FE
mov   r0,r3                         ; 08031700
add   r0,0x24                       ; 08031702
add   r0,r0,r2                      ; 08031704
mov   r1,0xC0                       ; 08031706
lsl   r1,r1,0x2                     ; 08031708
str   r1,[r0]                       ; 0803170A
bx    lr                            ; 0803170C
.pool                               ; 0803170E

Sub08031710:
push  {lr}                          ; 08031710
lsl   r2,r1,0x10                    ; 08031712
lsr   r2,r2,0x10                    ; 08031714
mov   r1,0xB0                       ; 08031716
mov   r3,r2                         ; 08031718
mul   r3,r1                         ; 0803171A
mov   r1,r0                         ; 0803171C
add   r1,0x10                       ; 0803171E
add   r1,r1,r3                      ; 08031720
mov   r3,0x80                       ; 08031722
neg   r3,r3                         ; 08031724
str   r3,[r1]                       ; 08031726
ldr   r1,=0xFFFFFD00                ; 08031728
bl    Sub080316E4                   ; 0803172A
pop   {r0}                          ; 0803172E
bx    r0                            ; 08031730
.pool                               ; 08031732

Return08031738:
bx    lr                            ; 08031738
.pool                               ; 0803173A

Sub0803173C:
push  {r4-r6,lr}                    ; 0803173C
add   sp,-0x4                       ; 0803173E
mov   r6,r0                         ; 08031740
lsl   r1,r1,0x10                    ; 08031742
lsr   r5,r1,0x10                    ; 08031744
ldr   r0,=0x03002200                ; 08031746
ldr   r1,=0x47E4                    ; 08031748
add   r0,r0,r1                      ; 0803174A
ldrh  r0,[r0]                       ; 0803174C
cmp   r0,0xFF                       ; 0803174E
bls   @@Code080317FC                ; 08031750
mov   r0,0xB0                       ; 08031752
mul   r0,r5                         ; 08031754
add   r1,r6,r0                      ; 08031756
mov   r0,r1                         ; 08031758
add   r0,0x48                       ; 0803175A
ldrh  r4,[r0]                       ; 0803175C
mov   r0,r4                         ; 0803175E
add   r0,0x10                       ; 08031760
lsl   r0,r0,0x10                    ; 08031762
lsr   r4,r0,0x10                    ; 08031764
ldr   r0,=0x1AFF                    ; 08031766
cmp   r4,r0                         ; 08031768
bhi   @@Code08031788                ; 0803176A
str   r4,[sp]                       ; 0803176C
mov   r0,r6                         ; 0803176E
mov   r1,r5                         ; 08031770
mov   r2,0x0                        ; 08031772
mov   r3,0x0                        ; 08031774
bl    Sub080312D0                   ; 08031776
b     @@Code080317FC                ; 0803177A
.pool                               ; 0803177C

@@Code08031788:
mov   r2,r1                         ; 08031788
add   r2,0x9C                       ; 0803178A
ldrb  r1,[r2]                       ; 0803178C
mov   r0,r1                         ; 0803178E
cmp   r0,0xFF                       ; 08031790
beq   @@Code080317AC                ; 08031792
mov   r0,0xFF                       ; 08031794
strb  r0,[r2]                       ; 08031796
ldr   r0,=Data082AE310              ; 08031798
ldr   r1,=0x06010000                ; 0803179A
bl    swi_LZ77_VRAM                 ; 0803179C  LZ77 decompress (VRAM)
b     @@Code080317FC                ; 080317A0
.pool                               ; 080317A2

@@Code080317AC:
mov   r4,0x0                        ; 080317AC
@@Code080317AE:
lsl   r0,r4,0xA                     ; 080317AE
mov   r2,0x88                       ; 080317B0
lsl   r2,r2,0x6                     ; 080317B2
add   r0,r0,r2                      ; 080317B4
ldr   r1,=Data08297EA4              ; 080317B6
add   r0,r0,r1                      ; 080317B8
lsl   r1,r4,0xA                     ; 080317BA
ldr   r2,=0x06013080                ; 080317BC
add   r1,r1,r2                      ; 080317BE
mov   r2,0x40                       ; 080317C0
bl    swi_MemoryCopy32              ; 080317C2  Memory copy/fill, 32-byte blocks
add   r0,r4,0x1                     ; 080317C6
lsl   r0,r0,0x10                    ; 080317C8
lsr   r4,r0,0x10                    ; 080317CA
cmp   r4,0x3                        ; 080317CC
bls   @@Code080317AE                ; 080317CE
mov   r4,0x0                        ; 080317D0
@@Code080317D2:
lsl   r0,r4,0xA                     ; 080317D2
mov   r1,0xC6                       ; 080317D4
lsl   r1,r1,0x6                     ; 080317D6
add   r0,r0,r1                      ; 080317D8
ldr   r1,=Data08297EA4              ; 080317DA
add   r0,r0,r1                      ; 080317DC
lsl   r1,r4,0xA                     ; 080317DE
ldr   r2,=0x06013180                ; 080317E0
add   r1,r1,r2                      ; 080317E2
mov   r2,0xA0                       ; 080317E4
bl    swi_MemoryCopy32              ; 080317E6  Memory copy/fill, 32-byte blocks
add   r0,r4,0x1                     ; 080317EA
lsl   r0,r0,0x10                    ; 080317EC
lsr   r4,r0,0x10                    ; 080317EE
cmp   r4,0x3                        ; 080317F0
bls   @@Code080317D2                ; 080317F2
mov   r0,r6                         ; 080317F4
mov   r1,r5                         ; 080317F6
bl    Sub08030704                   ; 080317F8
@@Code080317FC:
add   sp,0x4                        ; 080317FC
pop   {r4-r6}                       ; 080317FE
pop   {r0}                          ; 08031800
bx    r0                            ; 08031802
.pool                               ; 08031804

Sub08031810:
push  {r4,lr}                       ; 08031810
lsl   r1,r1,0x10                    ; 08031812
lsr   r1,r1,0x10                    ; 08031814
mov   r2,0xB0                       ; 08031816
mul   r2,r1                         ; 08031818
add   r2,r0,r2                      ; 0803181A
mov   r4,r2                         ; 0803181C
add   r4,0x40                       ; 0803181E
mov   r3,0x1                        ; 08031820
strh  r3,[r4]                       ; 08031822
add   r2,0x48                       ; 08031824
mov   r3,0x80                       ; 08031826
strh  r3,[r2]                       ; 08031828
bl    Sub0803173C                   ; 0803182A
pop   {r4}                          ; 0803182E
pop   {r0}                          ; 08031830
bx    r0                            ; 08031832

Sub08031834:
push  {r4,lr}                       ; 08031834
lsl   r2,r1,0x10                    ; 08031836
lsr   r2,r2,0x10                    ; 08031838
mov   r1,0xB0                       ; 0803183A
mov   r4,r2                         ; 0803183C
mul   r4,r1                         ; 0803183E
add   r1,r0,r4                      ; 08031840
add   r1,0x76                       ; 08031842
mov   r3,0x80                       ; 08031844
strh  r3,[r1]                       ; 08031846
mov   r1,r0                         ; 08031848
add   r1,0x10                       ; 0803184A
add   r1,r1,r4                      ; 0803184C
str   r3,[r1]                       ; 0803184E
ldr   r1,=0xFFFFFC00                ; 08031850
bl    Sub080316E4                   ; 08031852
pop   {r4}                          ; 08031856
pop   {r0}                          ; 08031858
bx    r0                            ; 0803185A
.pool                               ; 0803185C

Sub08031860:
lsl   r1,r1,0x10                    ; 08031860
lsr   r1,r1,0x10                    ; 08031862
mov   r2,0xB0                       ; 08031864
mul   r1,r2                         ; 08031866
add   r2,r0,r1                      ; 08031868
mov   r3,r2                         ; 0803186A
add   r3,0x7A                       ; 0803186C
mov   r0,r2                         ; 0803186E
add   r0,0x76                       ; 08031870
ldrh  r0,[r0]                       ; 08031872
ldrh  r1,[r3]                       ; 08031874
add   r0,r0,r1                      ; 08031876
lsl   r1,r0,0x10                    ; 08031878
strh  r0,[r3]                       ; 0803187A
lsr   r1,r1,0x18                    ; 0803187C
mov   r0,0x7                        ; 0803187E
and   r1,r0                         ; 08031880
mov   r0,r2                         ; 08031882
add   r0,0x40                       ; 08031884
strh  r1,[r0]                       ; 08031886
bx    lr                            ; 08031888
.pool                               ; 0803188A

Sub0803188C:
lsl   r1,r1,0x10                    ; 0803188C
lsr   r1,r1,0x10                    ; 0803188E
mov   r2,0xB0                       ; 08031890
mov   r3,r1                         ; 08031892
mul   r3,r2                         ; 08031894
add   r1,r0,r3                      ; 08031896
add   r1,0x40                       ; 08031898
mov   r2,0x6                        ; 0803189A
strh  r2,[r1]                       ; 0803189C
add   r0,0x10                       ; 0803189E
add   r0,r0,r3                      ; 080318A0
mov   r1,0x40                       ; 080318A2
neg   r1,r1                         ; 080318A4
str   r1,[r0]                       ; 080318A6
bx    lr                            ; 080318A8
.pool                               ; 080318AA

Sub080318AC:
push  {r4-r6,lr}                    ; 080318AC
mov   r5,r0                         ; 080318AE
lsl   r1,r1,0x10                    ; 080318B0
lsr   r6,r1,0x10                    ; 080318B2
mov   r0,0xB0                       ; 080318B4
mov   r4,r6                         ; 080318B6
mul   r4,r0                         ; 080318B8
mov   r0,r5                         ; 080318BA
add   r0,0x8                        ; 080318BC
add   r0,r0,r4                      ; 080318BE
ldr   r1,[r0]                       ; 080318C0
ldr   r0,=0x87FF                    ; 080318C2
cmp   r1,r0                         ; 080318C4
bgt   @@Code080318F8                ; 080318C6
add   r2,r5,r4                      ; 080318C8
mov   r3,r2                         ; 080318CA
add   r3,0x4A                       ; 080318CC
mov   r1,0x0                        ; 080318CE
mov   r0,0x66                       ; 080318D0
strh  r0,[r3]                       ; 080318D2
add   r3,0x4                        ; 080318D4
mov   r0,0x58                       ; 080318D6
strh  r0,[r3]                       ; 080318D8
mov   r0,r5                         ; 080318DA
add   r0,0x10                       ; 080318DC
add   r0,r0,r4                      ; 080318DE
str   r1,[r0]                       ; 080318E0
mov   r1,r2                         ; 080318E2
add   r1,0x4C                       ; 080318E4
mov   r0,0x30                       ; 080318E6
strh  r0,[r1]                       ; 080318E8
add   r1,0x2A                       ; 080318EA
ldrh  r0,[r1]                       ; 080318EC
add   r0,0x1                        ; 080318EE
b     @@Code08031938                ; 080318F0
.pool                               ; 080318F2

@@Code080318F8:
add   r2,r5,r4                      ; 080318F8
mov   r1,r2                         ; 080318FA
add   r1,0x4C                       ; 080318FC
ldrh  r3,[r1]                       ; 080318FE
cmp   r3,0x0                        ; 08031900
bne   @@Code0803191A                ; 08031902
mov   r0,0x6                        ; 08031904
strh  r0,[r1]                       ; 08031906
sub   r1,0xC                        ; 08031908
ldrh  r0,[r1]                       ; 0803190A
add   r0,0x1                        ; 0803190C
strh  r0,[r1]                       ; 0803190E
lsl   r0,r0,0x10                    ; 08031910
lsr   r0,r0,0x10                    ; 08031912
cmp   r0,0x7                        ; 08031914
bls   @@Code0803191A                ; 08031916
strh  r3,[r1]                       ; 08031918
@@Code0803191A:
mov   r0,0xB0                       ; 0803191A
mul   r0,r6                         ; 0803191C
add   r0,r5,r0                      ; 0803191E
mov   r1,r0                         ; 08031920
add   r1,0x50                       ; 08031922
ldrh  r0,[r1]                       ; 08031924
cmp   r0,0x0                        ; 08031926
bne   @@Code0803193A                ; 08031928
mov   r0,0x2                        ; 0803192A
strh  r0,[r1]                       ; 0803192C
ldr   r1,=0x03002200                ; 0803192E
ldr   r0,=0x47E6                    ; 08031930
add   r1,r1,r0                      ; 08031932
ldrh  r0,[r1]                       ; 08031934
sub   r0,0x1                        ; 08031936
@@Code08031938:
strh  r0,[r1]                       ; 08031938
@@Code0803193A:
pop   {r4-r6}                       ; 0803193A
pop   {r0}                          ; 0803193C
bx    r0                            ; 0803193E
.pool                               ; 08031940

Sub08031948:
push  {r4-r7,lr}                    ; 08031948
mov   r4,r0                         ; 0803194A
lsl   r1,r1,0x10                    ; 0803194C
lsr   r1,r1,0x10                    ; 0803194E
mov   r7,0xB0                       ; 08031950
mov   r5,r1                         ; 08031952
mul   r5,r7                         ; 08031954
add   r6,r4,r5                      ; 08031956
mov   r1,r6                         ; 08031958
add   r1,0x4E                       ; 0803195A
ldrh  r0,[r1]                       ; 0803195C
cmp   r0,0x0                        ; 0803195E
bne   @@Code080319B4                ; 08031960
mov   r0,0xFF                       ; 08031962
strh  r0,[r1]                       ; 08031964
mov   r0,r4                         ; 08031966
mov   r1,0xE                        ; 08031968
bl    Sub0802F700                   ; 0803196A
lsl   r0,r0,0x10                    ; 0803196E
lsr   r0,r0,0x10                    ; 08031970
mov   r3,r0                         ; 08031972
mul   r3,r7                         ; 08031974
mov   r0,r4                         ; 08031976
add   r0,0x8                        ; 08031978
add   r1,r0,r3                      ; 0803197A
add   r0,r0,r5                      ; 0803197C
ldr   r0,[r0]                       ; 0803197E
ldr   r2,=0xFFFFD800                ; 08031980
add   r0,r0,r2                      ; 08031982
str   r0,[r1]                       ; 08031984
mov   r0,r4                         ; 08031986
add   r0,0xC                        ; 08031988
add   r1,r0,r3                      ; 0803198A
add   r0,r0,r5                      ; 0803198C
ldr   r0,[r0]                       ; 0803198E
ldr   r2,=0xFFFF7A00                ; 08031990
add   r0,r0,r2                      ; 08031992
str   r0,[r1]                       ; 08031994
mov   r2,r4                         ; 08031996
add   r2,0x24                       ; 08031998
add   r2,r2,r3                      ; 0803199A
mov   r0,r4                         ; 0803199C
add   r0,0x14                       ; 0803199E
add   r0,r0,r3                      ; 080319A0
mov   r1,0xE0                       ; 080319A2
lsl   r1,r1,0x3                     ; 080319A4
str   r1,[r0]                       ; 080319A6
str   r1,[r2]                       ; 080319A8
add   r3,r4,r3                      ; 080319AA
add   r3,0x7E                       ; 080319AC
mov   r0,0x80                       ; 080319AE
lsl   r0,r0,0x1                     ; 080319B0
strh  r0,[r3]                       ; 080319B2
@@Code080319B4:
mov   r2,r6                         ; 080319B4
add   r2,0x40                       ; 080319B6
ldrh  r1,[r2]                       ; 080319B8
mov   r3,r1                         ; 080319BA
cmp   r3,0x9                        ; 080319BC
beq   @@Code080319E8                ; 080319BE
mov   r1,r6                         ; 080319C0
add   r1,0x4C                       ; 080319C2
ldrh  r0,[r1]                       ; 080319C4
cmp   r0,0x0                        ; 080319C6
bne   @@Code08031A0C                ; 080319C8
cmp   r3,0x6                        ; 080319CA
bne   @@Code080319D2                ; 080319CC
mov   r0,0x7                        ; 080319CE
strh  r0,[r2]                       ; 080319D0
@@Code080319D2:
mov   r0,0x2                        ; 080319D2
strh  r0,[r1]                       ; 080319D4
ldrh  r0,[r2]                       ; 080319D6
add   r0,0x1                        ; 080319D8
strh  r0,[r2]                       ; 080319DA
b     @@Code08031A0C                ; 080319DC
.pool                               ; 080319DE

@@Code080319E8:
mov   r3,r6                         ; 080319E8
add   r3,0x4A                       ; 080319EA
ldrh  r0,[r3]                       ; 080319EC
cmp   r0,0x0                        ; 080319EE
bne   @@Code08031A0C                ; 080319F0
add   r0,r1,0x1                     ; 080319F2
strh  r0,[r2]                       ; 080319F4
mov   r1,r6                         ; 080319F6
add   r1,0x72                       ; 080319F8
mov   r0,0x22                       ; 080319FA
strh  r0,[r1]                       ; 080319FC
mov   r0,0xB8                       ; 080319FE
lsl   r0,r0,0x2                     ; 08031A00
strh  r0,[r3]                       ; 08031A02
add   r1,0x4                        ; 08031A04
ldrh  r0,[r1]                       ; 08031A06
add   r0,0x1                        ; 08031A08
strh  r0,[r1]                       ; 08031A0A
@@Code08031A0C:
pop   {r4-r7}                       ; 08031A0C
pop   {r0}                          ; 08031A0E
bx    r0                            ; 08031A10
.pool                               ; 08031A12

Sub08031A14:
push  {r4-r7,lr}                    ; 08031A14
mov   r7,r8                         ; 08031A16
push  {r7}                          ; 08031A18
mov   r4,r0                         ; 08031A1A
lsl   r1,r1,0x10                    ; 08031A1C
lsr   r7,r1,0x10                    ; 08031A1E
mov   r0,0xB0                       ; 08031A20
mov   r8,r0                         ; 08031A22
mov   r6,r8                         ; 08031A24
mul   r6,r7                         ; 08031A26
add   r3,r4,r6                      ; 08031A28
mov   r5,r3                         ; 08031A2A
add   r5,0x4C                       ; 08031A2C
ldrh  r0,[r5]                       ; 08031A2E
cmp   r0,0x0                        ; 08031A30
bne   @@Code08031AD0                ; 08031A32
mov   r2,r3                         ; 08031A34
add   r2,0x72                       ; 08031A36
ldrh  r0,[r2]                       ; 08031A38
sub   r0,0x1                        ; 08031A3A
strh  r0,[r2]                       ; 08031A3C
mov   r1,0x80                       ; 08031A3E
lsl   r1,r1,0x8                     ; 08031A40
and   r0,r1                         ; 08031A42
cmp   r0,0x0                        ; 08031A44
beq   @@Code08031A5C                ; 08031A46
ldr   r0,=0x4005                    ; 08031A48
strh  r0,[r3,0x32]                  ; 08031A4A
mov   r1,r3                         ; 08031A4C
add   r1,0x76                       ; 08031A4E
ldrh  r0,[r1]                       ; 08031A50
add   r0,0x1                        ; 08031A52
strh  r0,[r1]                       ; 08031A54
b     @@Code08031B32                ; 08031A56
.pool                               ; 08031A58

@@Code08031A5C:
ldrh  r0,[r5]                       ; 08031A5C
cmp   r0,0x0                        ; 08031A5E
bne   @@Code08031AD0                ; 08031A60
ldr   r1,=Data0816BA4A              ; 08031A62
ldrh  r0,[r2]                       ; 08031A64
lsl   r0,r0,0x1                     ; 08031A66
add   r0,r0,r1                      ; 08031A68
ldrh  r0,[r0]                       ; 08031A6A
strh  r0,[r5]                       ; 08031A6C
ldr   r1,=Data0816BA06              ; 08031A6E
ldrh  r0,[r2]                       ; 08031A70
lsl   r0,r0,0x1                     ; 08031A72
add   r0,r0,r1                      ; 08031A74
ldrh  r1,[r0]                       ; 08031A76
mov   r0,r3                         ; 08031A78
add   r0,0x40                       ; 08031A7A
strh  r1,[r0]                       ; 08031A7C
mov   r5,r3                         ; 08031A7E
add   r5,0x7A                       ; 08031A80
ldrh  r3,[r5]                       ; 08031A82
cmp   r3,0x0                        ; 08031A84
bne   @@Code08031ABA                ; 08031A86
cmp   r1,0x1C                       ; 08031A88
bne   @@Code08031AB6                ; 08031A8A
mov   r0,r4                         ; 08031A8C
mov   r1,0x10                       ; 08031A8E
bl    Sub0802F700                   ; 08031A90
lsl   r0,r0,0x10                    ; 08031A94
lsr   r3,r0,0x10                    ; 08031A96
mov   r1,r8                         ; 08031A98
mul   r1,r3                         ; 08031A9A
mov   r0,r4                         ; 08031A9C
add   r0,0x8                        ; 08031A9E
add   r2,r0,r1                      ; 08031AA0
add   r0,r0,r6                      ; 08031AA2
ldr   r0,[r0]                       ; 08031AA4
str   r0,[r2]                       ; 08031AA6
mov   r0,r4                         ; 08031AA8
add   r0,0xC                        ; 08031AAA
add   r1,r0,r1                      ; 08031AAC
add   r0,r0,r6                      ; 08031AAE
ldr   r0,[r0]                       ; 08031AB0
str   r0,[r1]                       ; 08031AB2
strh  r3,[r5]                       ; 08031AB4
@@Code08031AB6:
cmp   r3,0x0                        ; 08031AB6
beq   @@Code08031AD0                ; 08031AB8
@@Code08031ABA:
mov   r0,0xB0                       ; 08031ABA
mov   r1,r3                         ; 08031ABC
mul   r1,r0                         ; 08031ABE
add   r1,r4,r1                      ; 08031AC0
mul   r0,r7                         ; 08031AC2
add   r0,r4,r0                      ; 08031AC4
add   r0,0x40                       ; 08031AC6
ldrh  r0,[r0]                       ; 08031AC8
add   r0,0xA                        ; 08031ACA
add   r1,0x40                       ; 08031ACC
strh  r0,[r1]                       ; 08031ACE
@@Code08031AD0:
mov   r6,0xB0                       ; 08031AD0
mov   r5,r7                         ; 08031AD2
mul   r5,r6                         ; 08031AD4
add   r0,r4,r5                      ; 08031AD6
mov   r1,r0                         ; 08031AD8
add   r1,0x4A                       ; 08031ADA
ldrh  r0,[r1]                       ; 08031ADC
cmp   r0,0x0                        ; 08031ADE
bne   @@Code08031B32                ; 08031AE0
ldr   r0,=0xFFFF                    ; 08031AE2
strh  r0,[r1]                       ; 08031AE4
mov   r0,r4                         ; 08031AE6
mov   r1,0xD                        ; 08031AE8
bl    Sub0802F700                   ; 08031AEA
lsl   r0,r0,0x10                    ; 08031AEE
lsr   r3,r0,0x10                    ; 08031AF0
mul   r3,r6                         ; 08031AF2
mov   r0,r4                         ; 08031AF4
add   r0,0x8                        ; 08031AF6
add   r1,r0,r3                      ; 08031AF8
add   r0,r0,r5                      ; 08031AFA
ldr   r0,[r0]                       ; 08031AFC
ldr   r2,=0xFFFFF000                ; 08031AFE
add   r0,r0,r2                      ; 08031B00
str   r0,[r1]                       ; 08031B02
mov   r0,r4                         ; 08031B04
add   r0,0xC                        ; 08031B06
add   r1,r0,r3                      ; 08031B08
add   r0,r0,r5                      ; 08031B0A
ldr   r0,[r0]                       ; 08031B0C
ldr   r2,=0xFFFF9A00                ; 08031B0E
add   r0,r0,r2                      ; 08031B10
str   r0,[r1]                       ; 08031B12
mov   r2,r4                         ; 08031B14
add   r2,0x24                       ; 08031B16
add   r2,r2,r3                      ; 08031B18
mov   r0,r4                         ; 08031B1A
add   r0,0x14                       ; 08031B1C
add   r0,r0,r3                      ; 08031B1E
mov   r1,0x80                       ; 08031B20
lsl   r1,r1,0x3                     ; 08031B22
str   r1,[r0]                       ; 08031B24
str   r1,[r2]                       ; 08031B26
mov   r0,r4                         ; 08031B28
add   r0,0x1C                       ; 08031B2A
add   r0,r0,r3                      ; 08031B2C
mov   r1,0x40                       ; 08031B2E
str   r1,[r0]                       ; 08031B30
@@Code08031B32:
pop   {r3}                          ; 08031B32
mov   r8,r3                         ; 08031B34
pop   {r4-r7}                       ; 08031B36
pop   {r0}                          ; 08031B38
bx    r0                            ; 08031B3A
.pool                               ; 08031B3C

Return08031B50:
bx    lr                            ; 08031B50
.pool                               ; 08031B52

Sub08031B54:
push  {lr}                          ; 08031B54
lsl   r1,r1,0x10                    ; 08031B56
lsr   r1,r1,0x10                    ; 08031B58
mov   r2,0xB0                       ; 08031B5A
mul   r1,r2                         ; 08031B5C
add   r0,r0,r1                      ; 08031B5E
mov   r1,r0                         ; 08031B60
add   r1,0x40                       ; 08031B62
add   r0,0x7E                       ; 08031B64
ldrh  r1,[r1]                       ; 08031B66
ldrh  r2,[r0]                       ; 08031B68
cmp   r1,r2                         ; 08031B6A
beq   @@Code08031B70                ; 08031B6C
strh  r1,[r0]                       ; 08031B6E
@@Code08031B70:
pop   {r0}                          ; 08031B70
bx    r0                            ; 08031B72

Sub08031B74:
push  {r4-r5,lr}                    ; 08031B74
mov   r5,r0                         ; 08031B76
lsl   r4,r1,0x10                    ; 08031B78
lsr   r4,r4,0x10                    ; 08031B7A
ldr   r1,=CodePtrs0816BDDC          ; 08031B7C
mov   r0,0xB0                       ; 08031B7E
mul   r0,r4                         ; 08031B80
add   r0,r5,r0                      ; 08031B82
add   r0,0x76                       ; 08031B84
ldrh  r0,[r0]                       ; 08031B86
lsl   r0,r0,0x2                     ; 08031B88
add   r0,r0,r1                      ; 08031B8A
ldr   r2,[r0]                       ; 08031B8C
mov   r0,r5                         ; 08031B8E
mov   r1,r4                         ; 08031B90
bl    Sub_bx_r2                     ; 08031B92
mov   r0,r5                         ; 08031B96
mov   r1,r4                         ; 08031B98
bl    Sub08031B54                   ; 08031B9A
pop   {r4-r5}                       ; 08031B9E
pop   {r0}                          ; 08031BA0
bx    r0                            ; 08031BA2
.pool                               ; 08031BA4

Sub08031BA8:
lsl   r1,r1,0x10                    ; 08031BA8
lsr   r1,r1,0x10                    ; 08031BAA
mov   r2,0xB0                       ; 08031BAC
mul   r1,r2                         ; 08031BAE
add   r0,r0,r1                      ; 08031BB0
add   r0,0x40                       ; 08031BB2
mov   r1,0x8                        ; 08031BB4
strh  r1,[r0]                       ; 08031BB6

bx    lr                            ; 08031BB8
.pool                               ; 08031BBA

Sub08031BBC:
push  {r4-r6,lr}                    ; 08031BBC
mov   r12,r0                        ; 08031BBE
lsl   r1,r1,0x10                    ; 08031BC0
lsr   r1,r1,0x10                    ; 08031BC2
mov   r0,0xB0                       ; 08031BC4
mov   r4,r1                         ; 08031BC6
mul   r4,r0                         ; 08031BC8
mov   r0,r12                        ; 08031BCA
add   r5,r0,r4                      ; 08031BCC
mov   r6,r5                         ; 08031BCE
add   r6,0x7A                       ; 08031BD0
ldrh  r3,[r6]                       ; 08031BD2
cmp   r3,0x2                        ; 08031BD4
bls   @@Code08031C10                ; 08031BD6
add   r0,0x14                       ; 08031BD8
add   r0,r0,r4                      ; 08031BDA
mov   r1,0x0                        ; 08031BDC
str   r1,[r0]                       ; 08031BDE
mov   r0,r12                        ; 08031BE0
add   r0,0x10                       ; 08031BE2
add   r0,r0,r4                      ; 08031BE4
str   r1,[r0]                       ; 08031BE6
mov   r0,r12                        ; 08031BE8
add   r0,0x1C                       ; 08031BEA
add   r0,r0,r4                      ; 08031BEC
str   r1,[r0]                       ; 08031BEE
mov   r1,r5                         ; 08031BF0
add   r1,0x40                       ; 08031BF2
mov   r0,0x9                        ; 08031BF4
strh  r0,[r1]                       ; 08031BF6
mov   r0,r12                        ; 08031BF8
add   r0,0xC                        ; 08031BFA
add   r0,r0,r4                      ; 08031BFC
mov   r1,0xE4                       ; 08031BFE
lsl   r1,r1,0x7                     ; 08031C00
str   r1,[r0]                       ; 08031C02
ldr   r0,=0x0804                    ; 08031C04
strh  r0,[r5,0x32]                  ; 08031C06
b     @@Code08031C90                ; 08031C08
.pool                               ; 08031C0A

@@Code08031C10:
mov   r0,r12                        ; 08031C10
add   r0,0xC                        ; 08031C12
add   r2,r0,r4                      ; 08031C14
ldr   r1,=Data0816BDFC              ; 08031C16
lsl   r0,r3,0x2                     ; 08031C18
add   r0,r0,r1                      ; 08031C1A
ldr   r1,[r2]                       ; 08031C1C
ldr   r0,[r0]                       ; 08031C1E
cmp   r1,r0                         ; 08031C20
blt   @@Code08031C4C                ; 08031C22
str   r0,[r2]                       ; 08031C24
add   r0,r3,0x1                     ; 08031C26
lsl   r0,r0,0x10                    ; 08031C28
lsr   r3,r0,0x10                    ; 08031C2A
strh  r3,[r6]                       ; 08031C2C
mov   r1,r12                        ; 08031C2E
add   r1,0x14                       ; 08031C30
add   r1,r1,r4                      ; 08031C32
ldr   r2,=Data0816BE0C              ; 08031C34
sub   r0,r3,0x1                     ; 08031C36
lsl   r0,r0,0x2                     ; 08031C38
add   r0,r0,r2                      ; 08031C3A
ldr   r0,[r0]                       ; 08031C3C
str   r0,[r1]                       ; 08031C3E
mov   r0,r12                        ; 08031C40
add   r0,0x10                       ; 08031C42
add   r0,r0,r4                      ; 08031C44
mov   r1,0xE0                       ; 08031C46
neg   r1,r1                         ; 08031C48
str   r1,[r0]                       ; 08031C4A
@@Code08031C4C:
mov   r4,r5                         ; 08031C4C
add   r4,0x4C                       ; 08031C4E
ldrh  r0,[r4]                       ; 08031C50
cmp   r0,0x0                        ; 08031C52
bne   @@Code08031C90                ; 08031C54
ldr   r1,=Data0816BE08              ; 08031C56
mov   r0,0x1                        ; 08031C58
and   r3,r0                         ; 08031C5A
lsl   r0,r3,0x1                     ; 08031C5C
add   r0,r0,r1                      ; 08031C5E
ldrh  r2,[r0]                       ; 08031C60
mov   r1,r5                         ; 08031C62
add   r1,0x72                       ; 08031C64
ldrh  r3,[r1]                       ; 08031C66
add   r0,r3,0x1                     ; 08031C68
lsl   r0,r0,0x10                    ; 08031C6A
lsr   r3,r0,0x10                    ; 08031C6C
cmp   r3,0x7                        ; 08031C6E
bls   @@Code08031C74                ; 08031C70
mov   r3,0x0                        ; 08031C72
@@Code08031C74:
strh  r3,[r1]                       ; 08031C74
ldr   r1,=Data0816BDEC              ; 08031C76
lsl   r0,r3,0x1                     ; 08031C78
add   r0,r0,r1                      ; 08031C7A
ldrh  r0,[r0]                       ; 08031C7C
eor   r2,r0                         ; 08031C7E
strh  r2,[r5,0x3E]                  ; 08031C80
mov   r0,0x2                        ; 08031C82
strh  r0,[r4]                       ; 08031C84
mov   r1,r3                         ; 08031C86
add   r1,0x8                        ; 08031C88
mov   r0,r5                         ; 08031C8A
add   r0,0x40                       ; 08031C8C
strh  r1,[r0]                       ; 08031C8E
@@Code08031C90:
pop   {r4-r6}                       ; 08031C90
pop   {r0}                          ; 08031C92
bx    r0                            ; 08031C94
.pool                               ; 08031C96

Sub08031CA8:
lsl   r1,r1,0x10                    ; 08031CA8
lsr   r1,r1,0x10                    ; 08031CAA
mov   r2,0xB0                       ; 08031CAC
mul   r1,r2                         ; 08031CAE
add   r0,r0,r1                      ; 08031CB0
add   r0,0x40                       ; 08031CB2
mov   r1,0x2                        ; 08031CB4
strh  r1,[r0]                       ; 08031CB6
bx    lr                            ; 08031CB8
.pool                               ; 08031CBA

Sub08031CBC:
push  {r4,lr}                       ; 08031CBC
mov   r4,r0                         ; 08031CBE
lsl   r1,r1,0x10                    ; 08031CC0
lsr   r1,r1,0x10                    ; 08031CC2
mov   r0,0xB0                       ; 08031CC4
mov   r2,r1                         ; 08031CC6
mul   r2,r0                         ; 08031CC8
mov   r0,r4                         ; 08031CCA
add   r0,0xC                        ; 08031CCC
add   r3,r0,r2                      ; 08031CCE
ldr   r1,[r3]                       ; 08031CD0
ldr   r0,=0x39FF                    ; 08031CD2
cmp   r1,r0                         ; 08031CD4
ble   @@Code08031CF0                ; 08031CD6
add   r0,0x1                        ; 08031CD8
str   r0,[r3]                       ; 08031CDA
mov   r0,r4                         ; 08031CDC
add   r0,0x14                       ; 08031CDE
add   r0,r0,r2                      ; 08031CE0
mov   r1,0x0                        ; 08031CE2
str   r1,[r0]                       ; 08031CE4
add   r1,r4,r2                      ; 08031CE6
add   r1,0x76                       ; 08031CE8
ldrh  r0,[r1]                       ; 08031CEA
add   r0,0x1                        ; 08031CEC
strh  r0,[r1]                       ; 08031CEE
@@Code08031CF0:
pop   {r4}                          ; 08031CF0
pop   {r0}                          ; 08031CF2
bx    r0                            ; 08031CF4
.pool                               ; 08031CF6

Sub08031CFC:
push  {r4-r7,lr}                    ; 08031CFC
mov   r3,r0                         ; 08031CFE
lsl   r1,r1,0x10                    ; 08031D00
lsr   r1,r1,0x10                    ; 08031D02
mov   r0,0xB0                       ; 08031D04
mov   r2,r1                         ; 08031D06
mul   r2,r0                         ; 08031D08
add   r0,r3,r2                      ; 08031D0A
mov   r12,r0                        ; 08031D0C
mov   r7,r12                        ; 08031D0E
add   r7,0x7E                       ; 08031D10
ldr   r0,=Data0816BE18              ; 08031D12
mov   r6,r12                        ; 08031D14
add   r6,0x7A                       ; 08031D16
ldrh  r1,[r6]                       ; 08031D18
lsl   r4,r1,0x1                     ; 08031D1A
add   r0,r4,r0                      ; 08031D1C
ldrh  r5,[r7]                       ; 08031D1E
ldrh  r0,[r0]                       ; 08031D20
cmp   r5,r0                         ; 08031D22
beq   @@Code08031D3C                ; 08031D24
ldr   r0,=Data0816BE1C              ; 08031D26
add   r0,r4,r0                      ; 08031D28
ldrh  r0,[r0]                       ; 08031D2A
add   r0,r5,r0                      ; 08031D2C
strh  r0,[r7]                       ; 08031D2E
b     @@Code08031D70                ; 08031D30
.pool                               ; 08031D32

@@Code08031D3C:
add   r0,r1,0x1                     ; 08031D3C
strh  r0,[r6]                       ; 08031D3E
lsl   r0,r0,0x10                    ; 08031D40
lsr   r0,r0,0x10                    ; 08031D42
cmp   r0,0x1                        ; 08031D44
bls   @@Code08031D70                ; 08031D46
mov   r0,r3                         ; 08031D48
add   r0,0x10                       ; 08031D4A
add   r0,r0,r2                      ; 08031D4C
mov   r1,0xBE                       ; 08031D4E
str   r1,[r0]                       ; 08031D50
mov   r0,r3                         ; 08031D52
add   r0,0x14                       ; 08031D54
add   r0,r0,r2                      ; 08031D56
ldr   r1,=0xFFFFFC00                ; 08031D58
str   r1,[r0]                       ; 08031D5A
mov   r0,r3                         ; 08031D5C
add   r0,0x1C                       ; 08031D5E
add   r0,r0,r2                      ; 08031D60
mov   r1,0x40                       ; 08031D62
str   r1,[r0]                       ; 08031D64
mov   r1,r12                        ; 08031D66
add   r1,0x76                       ; 08031D68
ldrh  r0,[r1]                       ; 08031D6A
add   r0,0x1                        ; 08031D6C
strh  r0,[r1]                       ; 08031D6E
@@Code08031D70:
pop   {r4-r7}                       ; 08031D70
pop   {r0}                          ; 08031D72
bx    r0                            ; 08031D74
.pool                               ; 08031D76

Sub08031D7C:
push  {r4,lr}                       ; 08031D7C
mov   r12,r0                        ; 08031D7E
lsl   r1,r1,0x10                    ; 08031D80
lsr   r1,r1,0x10                    ; 08031D82
mov   r0,0xB0                       ; 08031D84
mov   r3,r1                         ; 08031D86
mul   r3,r0                         ; 08031D88
mov   r0,r12                        ; 08031D8A
add   r4,r0,r3                      ; 08031D8C
mov   r2,r4                         ; 08031D8E
add   r2,0x7E                       ; 08031D90
ldrh  r1,[r2]                       ; 08031D92
mov   r0,0x80                       ; 08031D94
lsl   r0,r0,0x1                     ; 08031D96
cmp   r1,r0                         ; 08031D98
beq   @@Code08031DA2                ; 08031D9A
mov   r0,r1                         ; 08031D9C
add   r0,0x10                       ; 08031D9E
strh  r0,[r2]                       ; 08031DA0
@@Code08031DA2:
mov   r0,r12                        ; 08031DA2
add   r0,0xC                        ; 08031DA4
add   r2,r0,r3                      ; 08031DA6
ldr   r1,[r2]                       ; 08031DA8
ldr   r0,=0x4FFF                    ; 08031DAA
cmp   r1,r0                         ; 08031DAC
ble   @@Code08031DD8                ; 08031DAE
add   r0,0x1                        ; 08031DB0
str   r0,[r2]                       ; 08031DB2
mov   r0,r12                        ; 08031DB4
add   r0,0x10                       ; 08031DB6
add   r0,r0,r3                      ; 08031DB8
mov   r1,0x0                        ; 08031DBA
str   r1,[r0]                       ; 08031DBC
mov   r0,r12                        ; 08031DBE
add   r0,0x14                       ; 08031DC0
add   r0,r0,r3                      ; 08031DC2
str   r1,[r0]                       ; 08031DC4
mov   r0,r12                        ; 08031DC6
add   r0,0x1C                       ; 08031DC8
add   r0,r0,r3                      ; 08031DCA
str   r1,[r0]                       ; 08031DCC
mov   r1,r4                         ; 08031DCE
add   r1,0x76                       ; 08031DD0
ldrh  r0,[r1]                       ; 08031DD2
add   r0,0x1                        ; 08031DD4
strh  r0,[r1]                       ; 08031DD6
@@Code08031DD8:
pop   {r4}                          ; 08031DD8
pop   {r0}                          ; 08031DDA
bx    r0                            ; 08031DDC
.pool                               ; 08031DDE

Sub08031DE4:
push  {r4-r6,lr}                    ; 08031DE4
lsl   r1,r1,0x10                    ; 08031DE6
lsr   r1,r1,0x10                    ; 08031DE8
mov   r2,0xB0                       ; 08031DEA
mul   r1,r2                         ; 08031DEC
add   r2,r0,r1                      ; 08031DEE
mov   r0,0x7E                       ; 08031DF0
add   r0,r0,r2                      ; 08031DF2
mov   r12,r0                        ; 08031DF4
ldr   r0,=Data0816BE20              ; 08031DF6
mov   r3,r2                         ; 08031DF8
add   r3,0x7A                       ; 08031DFA
ldrh  r1,[r3]                       ; 08031DFC
lsl   r4,r1,0x1                     ; 08031DFE
add   r0,r4,r0                      ; 08031E00
mov   r6,r12                        ; 08031E02
ldrh  r5,[r6]                       ; 08031E04
ldrh  r0,[r0]                       ; 08031E06
cmp   r5,r0                         ; 08031E08
beq   @@Code08031E20                ; 08031E0A
ldr   r0,=Data0816BE28              ; 08031E0C
add   r0,r4,r0                      ; 08031E0E
ldrh  r0,[r0]                       ; 08031E10
add   r0,r5,r0                      ; 08031E12
strh  r0,[r6]                       ; 08031E14
b     @@Code08031E46                ; 08031E16
.pool                               ; 08031E18

@@Code08031E20:
add   r0,r1,0x1                     ; 08031E20
strh  r0,[r3]                       ; 08031E22
lsl   r0,r0,0x10                    ; 08031E24
lsr   r0,r0,0x10                    ; 08031E26
cmp   r0,0x3                        ; 08031E28
bls   @@Code08031E46                ; 08031E2A
mov   r1,r2                         ; 08031E2C
add   r1,0x4A                       ; 08031E2E
mov   r0,0x40                       ; 08031E30
strh  r0,[r1]                       ; 08031E32
mov   r0,0x0                        ; 08031E34
strh  r0,[r3]                       ; 08031E36
add   r1,0x4                        ; 08031E38
mov   r0,0x7A                       ; 08031E3A
strh  r0,[r1]                       ; 08031E3C
add   r1,0x28                       ; 08031E3E
ldrh  r0,[r1]                       ; 08031E40
add   r0,0x1                        ; 08031E42
strh  r0,[r1]                       ; 08031E44
@@Code08031E46:
pop   {r4-r6}                       ; 08031E46
pop   {r0}                          ; 08031E48
bx    r0                            ; 08031E4A

Sub08031E4C:
push  {r4-r7,lr}                    ; 08031E4C
mov   r7,r10                        ; 08031E4E
mov   r6,r9                         ; 08031E50
mov   r5,r8                         ; 08031E52
push  {r5-r7}                       ; 08031E54
mov   r5,r0                         ; 08031E56
lsl   r1,r1,0x10                    ; 08031E58
lsr   r1,r1,0x10                    ; 08031E5A
mov   r9,r1                         ; 08031E5C
mov   r0,0xB0                       ; 08031E5E
mov   r10,r0                        ; 08031E60
mov   r7,r9                         ; 08031E62
mul   r7,r0                         ; 08031E64
add   r1,r5,r7                      ; 08031E66
mov   r12,r1                        ; 08031E68
mov   r0,r12                        ; 08031E6A
add   r0,0x4A                       ; 08031E6C
ldrh  r0,[r0]                       ; 08031E6E
cmp   r0,0x0                        ; 08031E70
bne   @@Code08031F16                ; 08031E72
mov   r2,0x4C                       ; 08031E74
add   r2,r12                        ; 08031E76
mov   r8,r2                         ; 08031E78
ldrh  r0,[r2]                       ; 08031E7A
cmp   r0,0x0                        ; 08031E7C
bne   @@Code08031F16                ; 08031E7E
mov   r6,r12                        ; 08031E80
add   r6,0x7E                       ; 08031E82
ldr   r1,=Data0816BE30              ; 08031E84
mov   r3,r12                        ; 08031E86
add   r3,0x7A                       ; 08031E88
ldrh  r0,[r3]                       ; 08031E8A
lsl   r2,r0,0x1                     ; 08031E8C
add   r1,r2,r1                      ; 08031E8E
ldrh  r4,[r6]                       ; 08031E90
ldrh  r1,[r1]                       ; 08031E92
cmp   r4,r1                         ; 08031E94
bne   @@Code08031F0C                ; 08031E96
ldr   r0,=Data0816BE48              ; 08031E98
add   r0,r2,r0                      ; 08031E9A
ldrh  r0,[r0]                       ; 08031E9C
mov   r6,r8                         ; 08031E9E
strh  r0,[r6]                       ; 08031EA0
ldrh  r0,[r3]                       ; 08031EA2
add   r0,0x1                        ; 08031EA4
strh  r0,[r3]                       ; 08031EA6
lsl   r0,r0,0x10                    ; 08031EA8
lsr   r0,r0,0x10                    ; 08031EAA
cmp   r0,0x6                        ; 08031EAC
bne   @@Code08031F16                ; 08031EAE
mov   r0,r12                        ; 08031EB0
add   r0,0x72                       ; 08031EB2
ldrh  r3,[r0]                       ; 08031EB4
mov   r0,r10                        ; 08031EB6
mul   r0,r3                         ; 08031EB8
add   r0,r5,r0                      ; 08031EBA
mov   r2,r0                         ; 08031EBC
add   r2,0x76                       ; 08031EBE
mov   r1,0x1                        ; 08031EC0
strh  r1,[r2]                       ; 08031EC2
add   r0,0x4C                       ; 08031EC4
mov   r1,0x80                       ; 08031EC6
strh  r1,[r0]                       ; 08031EC8
ldr   r0,=0x2005                    ; 08031ECA
mov   r1,r12                        ; 08031ECC
strh  r0,[r1,0x32]                  ; 08031ECE
add   r1,0x40                       ; 08031ED0
mov   r0,0x3                        ; 08031ED2
strh  r0,[r1]                       ; 08031ED4
mov   r1,r5                         ; 08031ED6
add   r1,0x8                        ; 08031ED8
add   r1,r1,r7                      ; 08031EDA
ldr   r0,[r1]                       ; 08031EDC
mov   r2,0x80                       ; 08031EDE
lsl   r2,r2,0x5                     ; 08031EE0
add   r0,r0,r2                      ; 08031EE2
str   r0,[r1]                       ; 08031EE4
mov   r1,r5                         ; 08031EE6
add   r1,0xC                        ; 08031EE8
add   r1,r1,r7                      ; 08031EEA
ldr   r0,[r1]                       ; 08031EEC
add   r0,r0,r2                      ; 08031EEE
str   r0,[r1]                       ; 08031EF0
mov   r1,r12                        ; 08031EF2
add   r1,0x76                       ; 08031EF4
ldrh  r0,[r1]                       ; 08031EF6
add   r0,0x1                        ; 08031EF8
strh  r0,[r1]                       ; 08031EFA
b     @@Code08031FAE                ; 08031EFC
.pool                               ; 08031EFE

@@Code08031F0C:
ldr   r0,=Data0816BE3C              ; 08031F0C
add   r0,r2,r0                      ; 08031F0E
ldrh  r0,[r0]                       ; 08031F10
add   r0,r4,r0                      ; 08031F12
strh  r0,[r6]                       ; 08031F14
@@Code08031F16:
mov   r7,0xB0                       ; 08031F16
mov   r6,r9                         ; 08031F18
mul   r6,r7                         ; 08031F1A
add   r0,r5,r6                      ; 08031F1C
mov   r4,r0                         ; 08031F1E
add   r4,0x72                       ; 08031F20
ldrh  r3,[r4]                       ; 08031F22
cmp   r3,0x0                        ; 08031F24
bne   @@Code08031F6E                ; 08031F26
mov   r1,r0                         ; 08031F28
add   r1,0x4E                       ; 08031F2A
ldrh  r0,[r1]                       ; 08031F2C
cmp   r0,0x0                        ; 08031F2E
bne   @@Code08031F6A                ; 08031F30
mov   r0,0xFF                       ; 08031F32
strh  r0,[r1]                       ; 08031F34
mov   r0,r5                         ; 08031F36
mov   r1,0xF                        ; 08031F38
bl    Sub0802F700                   ; 08031F3A
lsl   r0,r0,0x10                    ; 08031F3E
lsr   r3,r0,0x10                    ; 08031F40
mov   r1,r3                         ; 08031F42
mul   r1,r7                         ; 08031F44
mov   r0,r5                         ; 08031F46
add   r0,0x8                        ; 08031F48
add   r2,r0,r1                      ; 08031F4A
add   r0,r0,r6                      ; 08031F4C
ldr   r0,[r0]                       ; 08031F4E
mov   r6,0x80                       ; 08031F50
lsl   r6,r6,0x5                     ; 08031F52
add   r0,r0,r6                      ; 08031F54
str   r0,[r2]                       ; 08031F56
add   r1,r5,r1                      ; 08031F58
mov   r2,r1                         ; 08031F5A
add   r2,0x72                       ; 08031F5C
mov   r0,0xA                        ; 08031F5E
strh  r0,[r2]                       ; 08031F60
add   r1,0x4C                       ; 08031F62
mov   r0,0x2                        ; 08031F64
strh  r0,[r1]                       ; 08031F66
strh  r3,[r4]                       ; 08031F68
@@Code08031F6A:
cmp   r3,0x0                        ; 08031F6A
beq   @@Code08031FAE                ; 08031F6C
@@Code08031F6E:
mov   r0,0xB0                       ; 08031F6E
mul   r3,r0                         ; 08031F70
add   r1,r5,r3                      ; 08031F72
mov   r4,r9                         ; 08031F74
mul   r4,r0                         ; 08031F76
add   r0,r5,r4                      ; 08031F78
add   r0,0x7E                       ; 08031F7A
ldrh  r2,[r0]                       ; 08031F7C
add   r1,0x7E                       ; 08031F7E
strh  r2,[r1]                       ; 08031F80
ldrh  r0,[r0]                       ; 08031F82
mvn   r0,r0                         ; 08031F84
lsl   r0,r0,0x10                    ; 08031F86
lsr   r0,r0,0x10                    ; 08031F88
ldr   r1,=0x0201                    ; 08031F8A
add   r0,r0,r1                      ; 08031F8C
ldr   r1,=0xFFFF                    ; 08031F8E
and   r0,r1                         ; 08031F90
lsl   r1,r0,0x3                     ; 08031F92
sub   r1,r1,r0                      ; 08031F94
lsl   r1,r1,0x2                     ; 08031F96
ldr   r0,=0x00FFFF00                ; 08031F98
and   r1,r0                         ; 08031F9A
mov   r0,r5                         ; 08031F9C
add   r0,0xC                        ; 08031F9E
add   r3,r0,r3                      ; 08031FA0
add   r0,r0,r4                      ; 08031FA2
ldr   r2,=0xFFFFE400                ; 08031FA4
add   r1,r1,r2                      ; 08031FA6
ldr   r0,[r0]                       ; 08031FA8
add   r0,r0,r1                      ; 08031FAA
str   r0,[r3]                       ; 08031FAC
@@Code08031FAE:
pop   {r3-r5}                       ; 08031FAE
mov   r8,r3                         ; 08031FB0
mov   r9,r4                         ; 08031FB2
mov   r10,r5                        ; 08031FB4
pop   {r4-r7}                       ; 08031FB6
pop   {r0}                          ; 08031FB8
bx    r0                            ; 08031FBA
.pool                               ; 08031FBC

Sub08031FD0:
push  {r4,lr}                       ; 08031FD0
lsl   r1,r1,0x10                    ; 08031FD2
lsr   r1,r1,0x10                    ; 08031FD4
ldr   r3,=CodePtrs0816BE54          ; 08031FD6
mov   r2,0xB0                       ; 08031FD8
mul   r2,r1                         ; 08031FDA
add   r4,r0,r2                      ; 08031FDC
mov   r2,r4                         ; 08031FDE
add   r2,0x76                       ; 08031FE0
ldrh  r2,[r2]                       ; 08031FE2
lsl   r2,r2,0x2                     ; 08031FE4
add   r2,r2,r3                      ; 08031FE6
ldr   r2,[r2]                       ; 08031FE8
bl    Sub_bx_r2                     ; 08031FEA
mov   r0,0x7E                       ; 08031FEE
add   r0,r0,r4                      ; 08031FF0
mov   r12,r0                        ; 08031FF2
ldrh  r1,[r0]                       ; 08031FF4
mov   r0,r4                         ; 08031FF6
add   r0,0x48                       ; 08031FF8
mov   r3,0x0                        ; 08031FFA
strh  r1,[r0]                       ; 08031FFC
ldr   r2,=0x03002200                ; 08031FFE
mov   r4,r12                        ; 08032000
ldrh  r1,[r4]                       ; 08032002
ldr   r4,=0x3806                    ; 08032004
add   r0,r2,r4                      ; 08032006
strh  r1,[r0]                       ; 08032008
add   r4,0x8                        ; 0803200A
add   r0,r2,r4                      ; 0803200C
strh  r3,[r0]                       ; 0803200E
add   r4,0x8                        ; 08032010
add   r0,r2,r4                      ; 08032012
strh  r3,[r0]                       ; 08032014
mvn   r1,r1                         ; 08032016
ldr   r0,=0x0201                    ; 08032018
add   r1,r1,r0                      ; 0803201A
add   r4,0x8                        ; 0803201C
add   r2,r2,r4                      ; 0803201E
strh  r1,[r2]                       ; 08032020
pop   {r4}                          ; 08032022
pop   {r0}                          ; 08032024
bx    r0                            ; 08032026
.pool                               ; 08032028

Return08032038:
bx    lr                            ; 08032038
.pool                               ; 0803203A

Sub0803203C:
push  {lr}                          ; 0803203C
lsl   r1,r1,0x10                    ; 0803203E
lsr   r1,r1,0x10                    ; 08032040
mov   r2,0xB0                       ; 08032042
mul   r1,r2                         ; 08032044
add   r2,r0,r1                      ; 08032046
mov   r3,r2                         ; 08032048
add   r3,0x4C                       ; 0803204A
ldrh  r0,[r3]                       ; 0803204C
cmp   r0,0x0                        ; 0803204E
bne   @@Code08032096                ; 08032050
mov   r1,r2                         ; 08032052
add   r1,0x72                       ; 08032054
ldrh  r0,[r1]                       ; 08032056
sub   r0,0x1                        ; 08032058
strh  r0,[r1]                       ; 0803205A
ldrh  r1,[r1]                       ; 0803205C
mov   r0,0x80                       ; 0803205E
lsl   r0,r0,0x8                     ; 08032060
and   r0,r1                         ; 08032062
cmp   r0,0x0                        ; 08032064
beq   @@Code0803207C                ; 08032066
mov   r1,r2                         ; 08032068
add   r1,0x76                       ; 0803206A
ldrh  r0,[r1]                       ; 0803206C
add   r0,0x1                        ; 0803206E
strh  r0,[r1]                       ; 08032070
ldr   r0,=0x2005                    ; 08032072
strh  r0,[r2,0x32]                  ; 08032074
b     @@Code08032096                ; 08032076
.pool                               ; 08032078

@@Code0803207C:
ldr   r0,=Data0816BE82              ; 0803207C
lsl   r1,r1,0x1                     ; 0803207E
add   r0,r1,r0                      ; 08032080
ldrh  r0,[r0]                       ; 08032082
strh  r0,[r3]                       ; 08032084
ldr   r0,=Data0816BE6C              ; 08032086
add   r1,r1,r0                      ; 08032088
ldrh  r1,[r1]                       ; 0803208A
mov   r0,r2                         ; 0803208C
add   r0,0x7A                       ; 0803208E
strh  r1,[r0]                       ; 08032090
sub   r0,0x3A                       ; 08032092
strh  r1,[r0]                       ; 08032094
@@Code08032096:
pop   {r0}                          ; 08032096
bx    r0                            ; 08032098
.pool                               ; 0803209A

Sub080320A4:
push  {r4,lr}                       ; 080320A4
lsl   r1,r1,0x10                    ; 080320A6
lsr   r1,r1,0x10                    ; 080320A8
ldr   r3,=CodePtrs0816BE98          ; 080320AA
mov   r2,0xB0                       ; 080320AC
mov   r4,r1                         ; 080320AE
mul   r4,r2                         ; 080320B0
add   r4,r0,r4                      ; 080320B2
mov   r2,r4                         ; 080320B4
add   r2,0x76                       ; 080320B6
ldrh  r2,[r2]                       ; 080320B8
lsl   r2,r2,0x2                     ; 080320BA
add   r2,r2,r3                      ; 080320BC
ldr   r2,[r2]                       ; 080320BE
bl    Sub_bx_r2                     ; 080320C0
add   r4,0x9C                       ; 080320C4
ldrb  r1,[r4]                       ; 080320C6
mov   r0,0xF0                       ; 080320C8
and   r0,r1                         ; 080320CA
cmp   r0,0xF0                       ; 080320CC
bne   @@Code080320D4                ; 080320CE
mov   r0,0x4                        ; 080320D0
strb  r0,[r4]                       ; 080320D2
@@Code080320D4:
pop   {r4}                          ; 080320D4
pop   {r0}                          ; 080320D6
bx    r0                            ; 080320D8
.pool                               ; 080320DA

Return080320E0:
bx    lr                            ; 080320E0
.pool                               ; 080320E2

Return080320E4:
bx    lr                            ; 080320E4
.pool                               ; 080320E6

Sub080320E8:
push  {r4-r7,lr}                    ; 080320E8
mov   r7,r10                        ; 080320EA
mov   r6,r9                         ; 080320EC
mov   r5,r8                         ; 080320EE
push  {r5-r7}                       ; 080320F0
mov   r4,r0                         ; 080320F2
lsl   r1,r1,0x10                    ; 080320F4
lsr   r1,r1,0x10                    ; 080320F6
mov   r0,0xB0                       ; 080320F8
mov   r2,r1                         ; 080320FA
mul   r2,r0                         ; 080320FC
add   r3,r4,r2                      ; 080320FE
mov   r1,r3                         ; 08032100
add   r1,0x48                       ; 08032102
mov   r0,0x7                        ; 08032104
strh  r0,[r1]                       ; 08032106
mov   r0,r4                         ; 08032108
add   r0,0x24                       ; 0803210A
add   r0,r0,r2                      ; 0803210C
mov   r1,0x80                       ; 0803210E
lsl   r1,r1,0x3                     ; 08032110
str   r1,[r0]                       ; 08032112
mov   r5,0x3                        ; 08032114
mov   r0,0x0                        ; 08032116
mov   r10,r0                        ; 08032118
mov   r6,0x80                       ; 0803211A
lsl   r6,r6,0x1                     ; 0803211C
mov   r7,r3                         ; 0803211E
add   r7,0x9C                       ; 08032120
mov   r1,0x8                        ; 08032122
add   r1,r1,r4                      ; 08032124
mov   r8,r1                         ; 08032126
mov   r0,0xC                        ; 08032128
add   r0,r0,r4                      ; 0803212A
mov   r9,r0                         ; 0803212C
@@Code0803212E:
mov   r0,r4                         ; 0803212E
mov   r1,0x12                       ; 08032130
bl    Sub0802F700                   ; 08032132
lsl   r0,r0,0x10                    ; 08032136
lsr   r3,r0,0x10                    ; 08032138
mov   r1,0xB0                       ; 0803213A
mul   r3,r1                         ; 0803213C
mov   r1,r4                         ; 0803213E
add   r1,0x8                        ; 08032140
add   r1,r1,r3                      ; 08032142
ldr   r0,=Data0816BEA4              ; 08032144
lsl   r2,r5,0x2                     ; 08032146
add   r0,r2,r0                      ; 08032148
ldr   r0,[r0]                       ; 0803214A
str   r0,[r1]                       ; 0803214C
mov   r1,r4                         ; 0803214E
add   r1,0xC                        ; 08032150
add   r1,r1,r3                      ; 08032152
ldr   r0,=Data0816BEB4              ; 08032154
add   r2,r2,r0                      ; 08032156
ldr   r0,[r2]                       ; 08032158
str   r0,[r1]                       ; 0803215A
add   r2,r4,r3                      ; 0803215C
ldr   r1,=Data0816BEC4              ; 0803215E
lsl   r0,r5,0x1                     ; 08032160
add   r0,r0,r1                      ; 08032162
ldrh  r0,[r0]                       ; 08032164
mov   r1,r2                         ; 08032166
add   r1,0x4A                       ; 08032168
strh  r0,[r1]                       ; 0803216A
mov   r0,r2                         ; 0803216C
add   r0,0x44                       ; 0803216E
strh  r5,[r0]                       ; 08032170
add   r0,0x8                        ; 08032172
strh  r6,[r0]                       ; 08032174
add   r1,0x28                       ; 08032176
mov   r0,0x2                        ; 08032178
strh  r0,[r1]                       ; 0803217A
mov   r0,r2                         ; 0803217C
add   r0,0x6A                       ; 0803217E
mov   r1,r10                        ; 08032180
strh  r1,[r0]                       ; 08032182
add   r0,0x14                       ; 08032184
strh  r6,[r0]                       ; 08032186
ldrb  r0,[r7]                       ; 08032188
add   r0,r0,r5                      ; 0803218A
mov   r1,r2                         ; 0803218C
add   r1,0x9C                       ; 0803218E
strb  r0,[r1]                       ; 08032190
sub   r0,r5,0x1                     ; 08032192
lsl   r0,r0,0x10                    ; 08032194
lsr   r5,r0,0x10                    ; 08032196
cmp   r5,0x3                        ; 08032198
bls   @@Code0803212E                ; 0803219A
mov   r0,r4                         ; 0803219C
mov   r1,0x13                       ; 0803219E
bl    Sub0802F700                   ; 080321A0
lsl   r0,r0,0x10                    ; 080321A4
lsr   r3,r0,0x10                    ; 080321A6
mov   r0,0xB0                       ; 080321A8
mul   r0,r3                         ; 080321AA
mov   r1,r8                         ; 080321AC
add   r2,r1,r0                      ; 080321AE
mov   r1,0xC0                       ; 080321B0
lsl   r1,r1,0x7                     ; 080321B2
str   r1,[r2]                       ; 080321B4
mov   r1,r9                         ; 080321B6
add   r2,r1,r0                      ; 080321B8
mov   r1,0xF0                       ; 080321BA
lsl   r1,r1,0x7                     ; 080321BC
str   r1,[r2]                       ; 080321BE
add   r0,r4,r0                      ; 080321C0
add   r0,0x48                       ; 080321C2
mov   r1,0x9                        ; 080321C4
strh  r1,[r0]                       ; 080321C6
pop   {r3-r5}                       ; 080321C8
mov   r8,r3                         ; 080321CA
mov   r9,r4                         ; 080321CC
mov   r10,r5                        ; 080321CE
pop   {r4-r7}                       ; 080321D0
pop   {r0}                          ; 080321D2
bx    r0                            ; 080321D4
.pool                               ; 080321D6

Sub080321E4:
push  {r4-r6,lr}                    ; 080321E4
mov   r5,r0                         ; 080321E6
lsl   r1,r1,0x10                    ; 080321E8
lsr   r1,r1,0x10                    ; 080321EA
mov   r0,0xB0                       ; 080321EC
mov   r3,r1                         ; 080321EE
mul   r3,r0                         ; 080321F0
add   r2,r5,r3                      ; 080321F2
mov   r6,r2                         ; 080321F4
add   r6,0x4C                       ; 080321F6
ldrh  r1,[r6]                       ; 080321F8
cmp   r1,0x0                        ; 080321FA
bne   @@Code08032204                ; 080321FC
mov   r0,r2                         ; 080321FE
add   r0,0x40                       ; 08032200
strh  r1,[r0]                       ; 08032202
@@Code08032204:
mov   r0,r2                         ; 08032204
add   r0,0x4A                       ; 08032206
ldrh  r0,[r0]                       ; 08032208
cmp   r0,0x0                        ; 0803220A
bne   @@Code08032278                ; 0803220C
mov   r0,0x76                       ; 0803220E
add   r0,r0,r2                      ; 08032210
mov   r12,r0                        ; 08032212
ldrh  r0,[r0]                       ; 08032214
add   r0,0x1                        ; 08032216
mov   r1,r12                        ; 08032218
strh  r0,[r1]                       ; 0803221A
mov   r4,r2                         ; 0803221C
add   r4,0x48                       ; 0803221E
ldrh  r0,[r4]                       ; 08032220
sub   r0,0x1                        ; 08032222
strh  r0,[r4]                       ; 08032224
lsl   r0,r0,0x10                    ; 08032226
cmp   r0,0x0                        ; 08032228
bne   @@Code0803225A                ; 0803222A
mov   r0,0x14                       ; 0803222C
strh  r0,[r6]                       ; 0803222E
mov   r0,r2                         ; 08032230
add   r0,0x40                       ; 08032232
mov   r1,0x4                        ; 08032234
strh  r1,[r0]                       ; 08032236
mov   r3,r2                         ; 08032238
add   r3,0x72                       ; 0803223A
mov   r0,0x3                        ; 0803223C
strh  r0,[r3]                       ; 0803223E
mov   r3,r12                        ; 08032240
ldrh  r0,[r3]                       ; 08032242
add   r0,0x1                        ; 08032244
strh  r0,[r3]                       ; 08032246
strh  r1,[r4]                       ; 08032248
mov   r0,r2                         ; 0803224A
add   r0,0x7E                       ; 0803224C
ldrh  r0,[r0]                       ; 0803224E
cmp   r0,0x0                        ; 08032250
beq   @@Code08032278                ; 08032252
mov   r0,0x1                        ; 08032254
strh  r0,[r4]                       ; 08032256
b     @@Code08032278                ; 08032258
@@Code0803225A:
mov   r1,r2                         ; 0803225A
add   r1,0x40                       ; 0803225C
ldrh  r0,[r1]                       ; 0803225E
add   r0,0x1                        ; 08032260
strh  r0,[r1]                       ; 08032262
mov   r0,r5                         ; 08032264
add   r0,0x14                       ; 08032266
add   r0,r0,r3                      ; 08032268
ldr   r1,=0xFFFFFC00                ; 0803226A
str   r1,[r0]                       ; 0803226C
mov   r0,r5                         ; 0803226E
add   r0,0x1C                       ; 08032270
add   r0,r0,r3                      ; 08032272
mov   r1,0x40                       ; 08032274
str   r1,[r0]                       ; 08032276
@@Code08032278:
pop   {r4-r6}                       ; 08032278
pop   {r0}                          ; 0803227A
bx    r0                            ; 0803227C
.pool                               ; 0803227E

Sub08032284:
push  {r4-r7,lr}                    ; 08032284
mov   r4,r0                         ; 08032286
lsl   r1,r1,0x10                    ; 08032288
lsr   r1,r1,0x10                    ; 0803228A
mov   r0,0xB0                       ; 0803228C
mov   r2,r1                         ; 0803228E
mul   r2,r0                         ; 08032290
mov   r0,r4                         ; 08032292
add   r0,0x14                       ; 08032294
add   r5,r0,r2                      ; 08032296
ldr   r0,[r5]                       ; 08032298
cmp   r0,0x0                        ; 0803229A
blt   @@Code080322E2                ; 0803229C
add   r0,r4,r2                      ; 0803229E
mov   r12,r0                        ; 080322A0
mov   r6,r12                        ; 080322A2
add   r6,0x40                       ; 080322A4
mov   r7,0x0                        ; 080322A6
mov   r0,0x2                        ; 080322A8
strh  r0,[r6]                       ; 080322AA
mov   r0,r4                         ; 080322AC
add   r0,0xC                        ; 080322AE
add   r3,r0,r2                      ; 080322B0
ldr   r1,[r3]                       ; 080322B2
ldr   r0,=0x75FF                    ; 080322B4
cmp   r1,r0                         ; 080322B6
ble   @@Code080322E2                ; 080322B8
add   r0,0x1                        ; 080322BA
str   r0,[r3]                       ; 080322BC
str   r7,[r5]                       ; 080322BE
mov   r0,r4                         ; 080322C0
add   r0,0x1C                       ; 080322C2
add   r0,r0,r2                      ; 080322C4
str   r7,[r0]                       ; 080322C6
mov   r0,0x3                        ; 080322C8
strh  r0,[r6]                       ; 080322CA
mov   r1,r12                        ; 080322CC
add   r1,0x4C                       ; 080322CE
mov   r0,0x4                        ; 080322D0
strh  r0,[r1]                       ; 080322D2
sub   r1,0x2                        ; 080322D4
mov   r0,0xA                        ; 080322D6
strh  r0,[r1]                       ; 080322D8
add   r1,0x2C                       ; 080322DA
ldrh  r0,[r1]                       ; 080322DC
sub   r0,0x1                        ; 080322DE
strh  r0,[r1]                       ; 080322E0
@@Code080322E2:
pop   {r4-r7}                       ; 080322E2
pop   {r0}                          ; 080322E4
bx    r0                            ; 080322E6
.pool                               ; 080322E8

Sub080322EC:
push  {r4-r5,lr}                    ; 080322EC
lsl   r1,r1,0x10                    ; 080322EE
lsr   r1,r1,0x10                    ; 080322F0
mov   r2,0xB0                       ; 080322F2
mul   r1,r2                         ; 080322F4
add   r0,r0,r1                      ; 080322F6
mov   r12,r0                        ; 080322F8
mov   r5,r12                        ; 080322FA
add   r5,0x4C                       ; 080322FC
ldrh  r0,[r5]                       ; 080322FE
cmp   r0,0x0                        ; 08032300
bne   @@Code08032394                ; 08032302
mov   r1,r12                        ; 08032304
add   r1,0x40                       ; 08032306
ldrh  r0,[r1]                       ; 08032308
add   r0,0x1                        ; 0803230A
strh  r0,[r1]                       ; 0803230C
lsl   r0,r0,0x10                    ; 0803230E
lsr   r0,r0,0x10                    ; 08032310
cmp   r0,0x7                        ; 08032312
bls   @@Code0803231A                ; 08032314
mov   r0,0x4                        ; 08032316
strh  r0,[r1]                       ; 08032318
@@Code0803231A:
mov   r1,r12                        ; 0803231A
add   r1,0x72                       ; 0803231C
ldrh  r0,[r1]                       ; 0803231E
sub   r0,0x1                        ; 08032320
strh  r0,[r1]                       ; 08032322
mov   r0,0x4                        ; 08032324
strh  r0,[r5]                       ; 08032326
ldrh  r0,[r1]                       ; 08032328
cmp   r0,0x0                        ; 0803232A
bne   @@Code08032394                ; 0803232C
mov   r3,r12                        ; 0803232E
add   r3,0x48                       ; 08032330
ldrh  r0,[r3]                       ; 08032332
sub   r0,0x1                        ; 08032334
strh  r0,[r3]                       ; 08032336
lsl   r0,r0,0x10                    ; 08032338
lsr   r4,r0,0x10                    ; 0803233A
cmp   r4,0x0                        ; 0803233C
bne   @@Code0803238C                ; 0803233E
ldr   r0,=0x5005                    ; 08032340
mov   r1,r12                        ; 08032342
strh  r0,[r1,0x32]                  ; 08032344
mov   r0,0x3                        ; 08032346
strh  r0,[r3]                       ; 08032348
mov   r2,r12                        ; 0803234A
add   r2,0x7E                       ; 0803234C
ldrh  r1,[r2]                       ; 0803234E
cmp   r1,0x0                        ; 08032350
beq   @@Code08032358                ; 08032352
ldr   r0,=0xFFFF                    ; 08032354
strh  r0,[r3]                       ; 08032356
@@Code08032358:
ldrh  r0,[r2]                       ; 08032358
add   r0,0x1                        ; 0803235A
strh  r0,[r2]                       ; 0803235C
mov   r0,r12                        ; 0803235E
add   r0,0x76                       ; 08032360
strh  r4,[r0]                       ; 08032362
ldr   r0,=Data0816BECC              ; 08032364
lsl   r1,r1,0x1                     ; 08032366
add   r0,r1,r0                      ; 08032368
ldrh  r2,[r0]                       ; 0803236A
mov   r0,r12                        ; 0803236C
add   r0,0x4A                       ; 0803236E
strh  r2,[r0]                       ; 08032370
ldr   r0,=Data0816BED0              ; 08032372
add   r1,r1,r0                      ; 08032374
ldrh  r0,[r1]                       ; 08032376
b     @@Code08032392                ; 08032378
.pool                               ; 0803237A

@@Code0803238C:
mov   r0,0x3                        ; 0803238C
strh  r0,[r1]                       ; 0803238E
mov   r0,0x14                       ; 08032390
@@Code08032392:
strh  r0,[r5]                       ; 08032392
@@Code08032394:
pop   {r4-r5}                       ; 08032394
pop   {r0}                          ; 08032396
bx    r0                            ; 08032398
.pool                               ; 0803239A

Sub0803239C:
push  {lr}                          ; 0803239C
lsl   r1,r1,0x10                    ; 0803239E
lsr   r1,r1,0x10                    ; 080323A0
ldr   r3,=CodePtrs0816BED4          ; 080323A2
mov   r2,0xB0                       ; 080323A4
mul   r2,r1                         ; 080323A6
add   r2,r0,r2                      ; 080323A8
add   r2,0x76                       ; 080323AA
ldrh  r2,[r2]                       ; 080323AC
lsl   r2,r2,0x2                     ; 080323AE
add   r2,r2,r3                      ; 080323B0
ldr   r2,[r2]                       ; 080323B2
bl    Sub_bx_r2                     ; 080323B4
pop   {r0}                          ; 080323B8
bx    r0                            ; 080323BA
.pool                               ; 080323BC

Return080323C0:
bx    lr                            ; 080323C0
.pool                               ; 080323C2

Sub080323C4:
push  {r4-r6,lr}                    ; 080323C4
mov   r4,r0                         ; 080323C6
lsl   r1,r1,0x10                    ; 080323C8
lsr   r6,r1,0x10                    ; 080323CA
mov   r0,0xB0                       ; 080323CC
mov   r2,r6                         ; 080323CE
mul   r2,r0                         ; 080323D0
add   r3,r4,r2                      ; 080323D2
mov   r5,r3                         ; 080323D4
add   r5,0x4C                       ; 080323D6
ldrh  r0,[r5]                       ; 080323D8
cmp   r0,0x0                        ; 080323DA
bne   @@Code08032426                ; 080323DC
mov   r1,r3                         ; 080323DE
add   r1,0x72                       ; 080323E0
ldrh  r0,[r1]                       ; 080323E2
sub   r0,0x1                        ; 080323E4
strh  r0,[r1]                       ; 080323E6
lsl   r0,r0,0x10                    ; 080323E8
lsr   r1,r0,0x10                    ; 080323EA
cmp   r1,0x0                        ; 080323EC
bne   @@Code08032404                ; 080323EE
mov   r0,r4                         ; 080323F0
add   r0,0x10                       ; 080323F2
add   r0,r0,r2                      ; 080323F4
str   r1,[r0]                       ; 080323F6
mov   r1,r3                         ; 080323F8
add   r1,0x76                       ; 080323FA
ldrh  r0,[r1]                       ; 080323FC
add   r0,0x1                        ; 080323FE
strh  r0,[r1]                       ; 08032400
b     @@Code0803247C                ; 08032402
@@Code08032404:
mov   r1,r4                         ; 08032404
add   r1,0x10                       ; 08032406
add   r1,r1,r2                      ; 08032408
ldr   r2,=Data0816BEE0              ; 0803240A
mov   r0,r3                         ; 0803240C
add   r0,0x44                       ; 0803240E
ldrh  r0,[r0]                       ; 08032410
lsl   r0,r0,0x2                     ; 08032412
add   r0,r0,r2                      ; 08032414
ldr   r0,[r0]                       ; 08032416
str   r0,[r1]                       ; 08032418
mov   r0,0xE                        ; 0803241A
strh  r0,[r5]                       ; 0803241C
mov   r1,r3                         ; 0803241E
add   r1,0x50                       ; 08032420
mov   r0,0xA                        ; 08032422
strh  r0,[r1]                       ; 08032424
@@Code08032426:
mov   r0,0xB0                       ; 08032426
mul   r0,r6                         ; 08032428
add   r1,r4,r0                      ; 0803242A
mov   r0,r1                         ; 0803242C
add   r0,0x72                       ; 0803242E
ldrh  r0,[r0]                       ; 08032430
cmp   r0,0x1                        ; 08032432
bne   @@Code0803247C                ; 08032434
mov   r0,r1                         ; 08032436
add   r0,0x50                       ; 08032438
ldrh  r0,[r0]                       ; 0803243A
cmp   r0,0x0                        ; 0803243C
bne   @@Code0803245C                ; 0803243E
mov   r0,r1                         ; 08032440
add   r0,0x7E                       ; 08032442
ldrh  r0,[r0]                       ; 08032444
sub   r0,0x30                       ; 08032446
lsl   r0,r0,0x10                    ; 08032448
lsr   r2,r0,0x10                    ; 0803244A
cmp   r2,0xFF                       ; 0803244C
bhi   @@Code08032472                ; 0803244E
mov   r2,0x80                       ; 08032450
lsl   r2,r2,0x1                     ; 08032452
b     @@Code08032472                ; 08032454
.pool                               ; 08032456

@@Code0803245C:
mov   r0,r1                         ; 0803245C
add   r0,0x7E                       ; 0803245E
ldrh  r0,[r0]                       ; 08032460
add   r0,0x10                       ; 08032462
lsl   r0,r0,0x10                    ; 08032464
lsr   r2,r0,0x10                    ; 08032466
mov   r0,0xC0                       ; 08032468
lsl   r0,r0,0x1                     ; 0803246A
cmp   r2,r0                         ; 0803246C
bls   @@Code08032472                ; 0803246E
mov   r2,r0                         ; 08032470
@@Code08032472:
mov   r0,0xB0                       ; 08032472
mul   r0,r6                         ; 08032474
add   r0,r4,r0                      ; 08032476
add   r0,0x7E                       ; 08032478
strh  r2,[r0]                       ; 0803247A
@@Code0803247C:
pop   {r4-r6}                       ; 0803247C
pop   {r0}                          ; 0803247E
bx    r0                            ; 08032480
.pool                               ; 08032482

Sub08032484:
push  {r4,lr}                       ; 08032484
mov   r4,r0                         ; 08032486
lsl   r1,r1,0x10                    ; 08032488
lsr   r1,r1,0x10                    ; 0803248A
mov   r0,0xB0                       ; 0803248C
mov   r3,r1                         ; 0803248E
mul   r3,r0                         ; 08032490
add   r2,r4,r3                      ; 08032492
mov   r0,r2                         ; 08032494
add   r0,0x4A                       ; 08032496
ldrh  r0,[r0]                       ; 08032498
cmp   r0,0x0                        ; 0803249A
bne   @@Code080324F4                ; 0803249C
mov   r0,r2                         ; 0803249E
add   r0,0x44                       ; 080324A0
ldrh  r0,[r0]                       ; 080324A2
cmp   r0,0x0                        ; 080324A4
bne   @@Code080324C2                ; 080324A6
mov   r1,r2                         ; 080324A8
add   r1,0x4C                       ; 080324AA
mov   r0,0x10                       ; 080324AC
strh  r0,[r1]                       ; 080324AE
sub   r1,0x4                        ; 080324B0
mov   r0,0x2                        ; 080324B2
strh  r0,[r1]                       ; 080324B4
add   r1,0x32                       ; 080324B6
mov   r0,0x1                        ; 080324B8
strh  r0,[r1]                       ; 080324BA
sub   r1,0x4                        ; 080324BC
mov   r0,0x4                        ; 080324BE
b     @@Code080324F2                ; 080324C0
@@Code080324C2:
mov   r1,r2                         ; 080324C2
add   r1,0x7A                       ; 080324C4
mov   r0,0x1                        ; 080324C6
strh  r0,[r1]                       ; 080324C8
mov   r0,r4                         ; 080324CA
add   r0,0x18                       ; 080324CC
add   r0,r0,r3                      ; 080324CE
mov   r1,0x10                       ; 080324D0
str   r1,[r0]                       ; 080324D2
mov   r0,r4                         ; 080324D4
add   r0,0x24                       ; 080324D6
add   r0,r0,r3                      ; 080324D8
mov   r1,0x40                       ; 080324DA
str   r1,[r0]                       ; 080324DC
mov   r0,r4                         ; 080324DE
add   r0,0x20                       ; 080324E0
add   r0,r0,r3                      ; 080324E2
mov   r1,0xC0                       ; 080324E4
lsl   r1,r1,0x2                     ; 080324E6
str   r1,[r0]                       ; 080324E8
mov   r1,r2                         ; 080324EA
add   r1,0x76                       ; 080324EC
ldrh  r0,[r1]                       ; 080324EE
add   r0,0x1                        ; 080324F0
@@Code080324F2:
strh  r0,[r1]                       ; 080324F2
@@Code080324F4:
pop   {r4}                          ; 080324F4
pop   {r0}                          ; 080324F6
bx    r0                            ; 080324F8
.pool                               ; 080324FA

Sub080324FC:
push  {r4,lr}                       ; 080324FC
mov   r3,r0                         ; 080324FE
lsl   r1,r1,0x10                    ; 08032500
lsr   r1,r1,0x10                    ; 08032502
mov   r0,0xB0                       ; 08032504
mov   r2,r1                         ; 08032506
mul   r2,r0                         ; 08032508
mov   r0,r3                         ; 0803250A
add   r0,0xC                        ; 0803250C
add   r1,r0,r2                      ; 0803250E
ldr   r0,[r1]                       ; 08032510
mov   r4,0xF0                       ; 08032512
lsl   r4,r4,0x7                     ; 08032514
cmp   r0,r4                         ; 08032516
bne   @@Code08032530                ; 08032518
mov   r0,r3                         ; 0803251A
add   r0,0x1C                       ; 0803251C
add   r0,r0,r2                      ; 0803251E
mov   r1,0x10                       ; 08032520
str   r1,[r0]                       ; 08032522
add   r1,r3,r2                      ; 08032524
add   r1,0x76                       ; 08032526
ldrh  r0,[r1]                       ; 08032528
add   r0,0x1                        ; 0803252A
strh  r0,[r1]                       ; 0803252C
b     @@Code08032544                ; 0803252E
@@Code08032530:
cmp   r0,r4                         ; 08032530
ble   @@Code0803253C                ; 08032532
ldr   r2,=0xFFFFFF00                ; 08032534
b     @@Code08032540                ; 08032536
.pool                               ; 08032538

@@Code0803253C:
mov   r2,0x80                       ; 0803253C
lsl   r2,r2,0x1                     ; 0803253E
@@Code08032540:
add   r0,r0,r2                      ; 08032540
str   r0,[r1]                       ; 08032542
@@Code08032544:
pop   {r4}                          ; 08032544
pop   {r0}                          ; 08032546
bx    r0                            ; 08032548
.pool                               ; 0803254A

Sub0803254C:
push  {r4-r7,lr}                    ; 0803254C
mov   r5,r0                         ; 0803254E
lsl   r1,r1,0x10                    ; 08032550
lsr   r6,r1,0x10                    ; 08032552
mov   r0,0xB0                       ; 08032554
mov   r3,r6                         ; 08032556
mul   r3,r0                         ; 08032558
add   r2,r5,r3                      ; 0803255A
mov   r1,r2                         ; 0803255C
add   r1,0x4A                       ; 0803255E
ldrh  r0,[r1]                       ; 08032560
cmp   r0,0x0                        ; 08032562
bne   @@Code08032584                ; 08032564
mov   r0,0x10                       ; 08032566
strh  r0,[r1]                       ; 08032568
ldrh  r0,[r2,0x3A]                  ; 0803256A
cmp   r0,0x15                       ; 0803256C
bne   @@Code08032574                ; 0803256E
mov   r0,0x40                       ; 08032570
strh  r0,[r1]                       ; 08032572
@@Code08032574:
mov   r0,r5                         ; 08032574
add   r0,0x24                       ; 08032576
add   r0,r0,r3                      ; 08032578
ldr   r1,[r0]                       ; 0803257A
ldr   r2,=0xFFFF                    ; 0803257C
eor   r1,r2                         ; 0803257E
add   r1,0x1                        ; 08032580
str   r1,[r0]                       ; 08032582
@@Code08032584:
mov   r0,0xB0                       ; 08032584
mov   r2,r6                         ; 08032586
mul   r2,r0                         ; 08032588
add   r7,r5,r2                      ; 0803258A
mov   r1,r7                         ; 0803258C
add   r1,0x4E                       ; 0803258E
ldrh  r0,[r1]                       ; 08032590
cmp   r0,0x0                        ; 08032592
bne   @@Code08032628                ; 08032594
mov   r0,0x2                        ; 08032596
strh  r0,[r1]                       ; 08032598
ldr   r1,=0x03002200                ; 0803259A
mov   r0,r5                         ; 0803259C
add   r0,0x10                       ; 0803259E
add   r0,r0,r2                      ; 080325A0
ldr   r0,[r0]                       ; 080325A2
asr   r0,r0,0x8                     ; 080325A4
ldr   r3,=0x47F6                    ; 080325A6
add   r4,r1,r3                      ; 080325A8
strh  r0,[r4]                       ; 080325AA
mov   r0,r5                         ; 080325AC
add   r0,0x14                       ; 080325AE
add   r0,r0,r2                      ; 080325B0
ldr   r0,[r0]                       ; 080325B2
asr   r0,r0,0x8                     ; 080325B4
ldr   r2,=0x47F8                    ; 080325B6
add   r1,r1,r2                      ; 080325B8
strh  r0,[r1]                       ; 080325BA
bl    Sub0805D190                   ; 080325BC
ldrh  r1,[r4]                       ; 080325C0
mov   r0,0xFF                       ; 080325C2
eor   r0,r1                         ; 080325C4
add   r0,0x1                        ; 080325C6
lsr   r1,r0,0x1                     ; 080325C8
mov   r0,0x40                       ; 080325CA
and   r0,r1                         ; 080325CC
cmp   r0,0x0                        ; 080325CE
beq   @@Code080325D6                ; 080325D0
mov   r0,0x80                       ; 080325D2
orr   r1,r0                         ; 080325D4
@@Code080325D6:
mov   r3,r7                         ; 080325D6
add   r3,0x82                       ; 080325D8
ldrh  r2,[r3]                       ; 080325DA
sub   r0,r1,r2                      ; 080325DC
lsl   r0,r0,0x10                    ; 080325DE
lsr   r1,r0,0x10                    ; 080325E0
cmp   r1,0x0                        ; 080325E2
beq   @@Code08032628                ; 080325E4
mov   r0,0x80                       ; 080325E6
lsl   r0,r0,0x8                     ; 080325E8
and   r0,r1                         ; 080325EA
cmp   r0,0x0                        ; 080325EC
beq   @@Code08032610                ; 080325EE
ldr   r0,=0xFF80                    ; 080325F0
cmp   r1,r0                         ; 080325F2
bhi   @@Code08032618                ; 080325F4
add   r0,r2,0x2                     ; 080325F6
b     @@Code0803261A                ; 080325F8
.pool                               ; 080325FA

@@Code08032610:
cmp   r1,0x7F                       ; 08032610
bhi   @@Code08032618                ; 08032612
add   r0,r2,0x2                     ; 08032614
b     @@Code0803261A                ; 08032616
@@Code08032618:
sub   r0,r2,0x2                     ; 08032618
@@Code0803261A:
strh  r0,[r3]                       ; 0803261A
mov   r0,0xB0                       ; 0803261C
mul   r0,r6                         ; 0803261E
add   r0,r5,r0                      ; 08032620
add   r0,0x82                       ; 08032622
ldrb  r1,[r0]                       ; 08032624
strh  r1,[r0]                       ; 08032626
@@Code08032628:
mov   r0,0xB0                       ; 08032628
mul   r0,r6                         ; 0803262A
add   r0,r5,r0                      ; 0803262C
mov   r5,r0                         ; 0803262E
add   r5,0x7A                       ; 08032630
ldr   r1,=Data0816BEF0              ; 08032632
mov   r4,r0                         ; 08032634
add   r4,0x6A                       ; 08032636
ldrh  r3,[r4]                       ; 08032638
lsl   r2,r3,0x1                     ; 0803263A
add   r1,r2,r1                      ; 0803263C
ldrh  r0,[r1]                       ; 0803263E
ldrh  r1,[r5]                       ; 08032640
add   r0,r0,r1                      ; 08032642
lsl   r0,r0,0x10                    ; 08032644
lsr   r1,r0,0x10                    ; 08032646
ldr   r0,=Data0816BEF4              ; 08032648
add   r2,r2,r0                      ; 0803264A
ldrh  r2,[r2]                       ; 0803264C
cmp   r1,r2                         ; 0803264E
bne   @@Code08032662                ; 08032650
mov   r0,0x1                        ; 08032652
eor   r3,r0                         ; 08032654
strh  r3,[r4]                       ; 08032656
ldr   r1,=Data0816BEF8              ; 08032658
ldrh  r0,[r4]                       ; 0803265A
lsl   r0,r0,0x1                     ; 0803265C
add   r0,r0,r1                      ; 0803265E
ldrh  r1,[r0]                       ; 08032660
@@Code08032662:
strh  r1,[r5]                       ; 08032662
pop   {r4-r7}                       ; 08032664
pop   {r0}                          ; 08032666
bx    r0                            ; 08032668
.pool                               ; 0803266A

Sub08032678:
push  {r4-r6,lr}                    ; 08032678
mov   r4,r0                         ; 0803267A
lsl   r1,r1,0x10                    ; 0803267C
lsr   r1,r1,0x10                    ; 0803267E
mov   r0,0xB0                       ; 08032680
mov   r2,r1                         ; 08032682
mul   r2,r0                         ; 08032684
add   r3,r4,r2                      ; 08032686
mov   r6,r3                         ; 08032688
add   r6,0x4C                       ; 0803268A
ldrh  r5,[r6]                       ; 0803268C
cmp   r5,0x0                        ; 0803268E
bne   @@Code080326DE                ; 08032690
mov   r1,r3                         ; 08032692
add   r1,0x48                       ; 08032694
ldrh  r0,[r1]                       ; 08032696
sub   r0,0x1                        ; 08032698
strh  r0,[r1]                       ; 0803269A
lsl   r0,r0,0x10                    ; 0803269C
cmp   r0,0x0                        ; 0803269E
bne   @@Code080326D4                ; 080326A0
mov   r0,r4                         ; 080326A2
add   r0,0x14                       ; 080326A4
add   r0,r0,r2                      ; 080326A6
ldr   r1,=0xFFFFFC00                ; 080326A8
str   r1,[r0]                       ; 080326AA
mov   r0,r4                         ; 080326AC
add   r0,0x1C                       ; 080326AE
add   r0,r0,r2                      ; 080326B0
mov   r1,0x80                       ; 080326B2
str   r1,[r0]                       ; 080326B4
mov   r0,r4                         ; 080326B6
add   r0,0x24                       ; 080326B8
add   r0,r0,r2                      ; 080326BA
mov   r1,0x80                       ; 080326BC
lsl   r1,r1,0x4                     ; 080326BE
str   r1,[r0]                       ; 080326C0
mov   r1,r3                         ; 080326C2
add   r1,0x76                       ; 080326C4
ldrh  r0,[r1]                       ; 080326C6
add   r0,0x1                        ; 080326C8
strh  r0,[r1]                       ; 080326CA
b     @@Code080326DE                ; 080326CC
.pool                               ; 080326CE

@@Code080326D4:
mov   r0,r3                         ; 080326D4
add   r0,0x7A                       ; 080326D6
strh  r5,[r0]                       ; 080326D8
mov   r0,0x20                       ; 080326DA
strh  r0,[r6]                       ; 080326DC
@@Code080326DE:
pop   {r4-r6}                       ; 080326DE
pop   {r0}                          ; 080326E0
bx    r0                            ; 080326E2

Sub080326E4:
push  {r4,lr}                       ; 080326E4
mov   r12,r0                        ; 080326E6
lsl   r1,r1,0x10                    ; 080326E8
lsr   r1,r1,0x10                    ; 080326EA
mov   r0,0xB0                       ; 080326EC
mov   r4,r1                         ; 080326EE
mul   r4,r0                         ; 080326F0
mov   r0,r12                        ; 080326F2
add   r0,0xC                        ; 080326F4
add   r1,r0,r4                      ; 080326F6
ldr   r0,[r1]                       ; 080326F8
mov   r2,0xF6                       ; 080326FA
lsl   r2,r2,0x7                     ; 080326FC
cmp   r0,r2                         ; 080326FE
ble   @@Code0803273E                ; 08032700
str   r2,[r1]                       ; 08032702
mov   r0,r12                        ; 08032704
add   r2,r0,r4                      ; 08032706
mov   r1,r2                         ; 08032708
add   r1,0x7A                       ; 0803270A
mov   r3,0x0                        ; 0803270C
mov   r0,0x1                        ; 0803270E
strh  r0,[r1]                       ; 08032710
mov   r0,r12                        ; 08032712
add   r0,0x14                       ; 08032714
add   r0,r0,r4                      ; 08032716
str   r3,[r0]                       ; 08032718
mov   r0,r12                        ; 0803271A
add   r0,0x18                       ; 0803271C
add   r0,r0,r4                      ; 0803271E
mov   r1,0x10                       ; 08032720
str   r1,[r0]                       ; 08032722
mov   r0,r12                        ; 08032724
add   r0,0x1C                       ; 08032726
add   r0,r0,r4                      ; 08032728
str   r3,[r0]                       ; 0803272A
mov   r0,r12                        ; 0803272C
add   r0,0x20                       ; 0803272E
add   r0,r0,r4                      ; 08032730
mov   r1,0xC0                       ; 08032732
lsl   r1,r1,0x2                     ; 08032734
str   r1,[r0]                       ; 08032736
add   r2,0x76                       ; 08032738
mov   r0,0x2                        ; 0803273A
strh  r0,[r2]                       ; 0803273C
@@Code0803273E:
pop   {r4}                          ; 0803273E
pop   {r0}                          ; 08032740
bx    r0                            ; 08032742

Sub08032744:
push  {r4-r7,lr}                    ; 08032744
add   sp,-0x10                      ; 08032746
mov   r7,r0                         ; 08032748
lsl   r1,r1,0x10                    ; 0803274A
lsr   r6,r1,0x10                    ; 0803274C
mov   r0,0xB0                       ; 0803274E
mul   r0,r6                         ; 08032750
add   r3,r7,r0                      ; 08032752
mov   r0,r3                         ; 08032754
add   r0,0x7A                       ; 08032756
ldrh  r1,[r0]                       ; 08032758
sub   r0,0x3A                       ; 0803275A
strh  r1,[r0]                       ; 0803275C
mov   r1,r3                         ; 0803275E
add   r1,0x7E                       ; 08032760
ldrh  r0,[r1]                       ; 08032762
ldr   r4,=0xFFFF0000                ; 08032764
ldr   r2,[sp]                       ; 08032766
and   r2,r4                         ; 08032768
orr   r2,r0                         ; 0803276A
str   r2,[sp]                       ; 0803276C
ldrh  r0,[r3,0x3E]                  ; 0803276E
cmp   r0,0x0                        ; 08032770
beq   @@Code080327A0                ; 08032772
ldr   r0,=0xFFFF                    ; 08032774
and   r0,r2                         ; 08032776
mov   r1,0x80                       ; 08032778
lsl   r1,r1,0x11                    ; 0803277A
orr   r0,r1                         ; 0803277C
str   r0,[sp]                       ; 0803277E
mov   r0,r3                         ; 08032780
add   r0,0x82                       ; 08032782
ldrh  r0,[r0]                       ; 08032784
sub   r0,0x20                       ; 08032786
lsl   r0,r0,0x18                    ; 08032788
lsr   r0,r0,0x10                    ; 0803278A
ldr   r1,[sp,0x4]                   ; 0803278C
and   r1,r4                         ; 0803278E
orr   r1,r0                         ; 08032790
str   r1,[sp,0x4]                   ; 08032792
b     @@Code080327CE                ; 08032794
.pool                               ; 08032796

@@Code080327A0:
mov   r5,0x0                        ; 080327A0
ldsh  r0,[r1,r5]                    ; 080327A2
neg   r0,r0                         ; 080327A4
mov   r1,0x80                       ; 080327A6
lsl   r1,r1,0x2                     ; 080327A8
add   r0,r0,r1                      ; 080327AA
lsl   r0,r0,0x10                    ; 080327AC
ldr   r1,=0xFFFF                    ; 080327AE
and   r1,r2                         ; 080327B0
orr   r1,r0                         ; 080327B2
str   r1,[sp]                       ; 080327B4
mov   r0,r3                         ; 080327B6
add   r0,0x82                       ; 080327B8
ldrh  r1,[r0]                       ; 080327BA
mov   r0,0xFF                       ; 080327BC
eor   r1,r0                         ; 080327BE
add   r1,0x1                        ; 080327C0
and   r1,r0                         ; 080327C2
lsl   r1,r1,0x8                     ; 080327C4
ldr   r0,[sp,0x4]                   ; 080327C6
and   r0,r4                         ; 080327C8
orr   r0,r1                         ; 080327CA
str   r0,[sp,0x4]                   ; 080327CC
@@Code080327CE:
add   r5,sp,0x8                     ; 080327CE
mov   r0,sp                         ; 080327D0
mov   r1,r5                         ; 080327D2
mov   r2,0x1                        ; 080327D4
mov   r3,0x2                        ; 080327D6
bl    swi_0F                        ; 080327D8
mov   r0,0xB0                       ; 080327DC
mul   r0,r6                         ; 080327DE
add   r0,r7,r0                      ; 080327E0
add   r0,0x44                       ; 080327E2
ldrh  r0,[r0]                       ; 080327E4
lsl   r0,r0,0x12                    ; 080327E6
lsr   r0,r0,0x10                    ; 080327E8
ldr   r4,=0x03002200                ; 080327EA
mov   r1,0x1                        ; 080327EC
orr   r1,r0                         ; 080327EE
lsl   r0,r0,0x3                     ; 080327F0
add   r0,r0,r4                      ; 080327F2
ldrh  r2,[r5]                       ; 080327F4
ldr   r3,=0x3806                    ; 080327F6
add   r0,r0,r3                      ; 080327F8
strh  r2,[r0]                       ; 080327FA
add   r0,r1,0x1                     ; 080327FC
lsl   r0,r0,0x10                    ; 080327FE
lsl   r1,r1,0x3                     ; 08032800
add   r1,r1,r4                      ; 08032802
ldrh  r2,[r5,0x2]                   ; 08032804
add   r1,r1,r3                      ; 08032806
strh  r2,[r1]                       ; 08032808
mov   r2,0x80                       ; 0803280A
lsl   r2,r2,0x9                     ; 0803280C
add   r1,r0,r2                      ; 0803280E
lsr   r0,r0,0xD                     ; 08032810
add   r0,r0,r4                      ; 08032812
ldrh  r2,[r5,0x4]                   ; 08032814
add   r0,r0,r3                      ; 08032816
strh  r2,[r0]                       ; 08032818
lsr   r1,r1,0xD                     ; 0803281A
add   r1,r1,r4                      ; 0803281C
ldrh  r0,[r5,0x6]                   ; 0803281E
add   r1,r1,r3                      ; 08032820
strh  r0,[r1]                       ; 08032822
add   sp,0x10                       ; 08032824
pop   {r4-r7}                       ; 08032826
pop   {r0}                          ; 08032828
bx    r0                            ; 0803282A
.pool                               ; 0803282C

Sub08032838:
push  {r4-r6,lr}                    ; 08032838
mov   r5,r0                         ; 0803283A
lsl   r1,r1,0x10                    ; 0803283C
lsr   r6,r1,0x10                    ; 0803283E
ldr   r1,=CodePtrs0816BEFC          ; 08032840
mov   r0,0xB0                       ; 08032842
mov   r4,r6                         ; 08032844
mul   r4,r0                         ; 08032846
add   r0,r5,r4                      ; 08032848
add   r0,0x76                       ; 0803284A
ldrh  r0,[r0]                       ; 0803284C
lsl   r0,r0,0x2                     ; 0803284E
add   r0,r0,r1                      ; 08032850
ldr   r2,[r0]                       ; 08032852
mov   r0,r5                         ; 08032854
mov   r1,r6                         ; 08032856
bl    Sub_bx_r2                     ; 08032858
mov   r0,r5                         ; 0803285C
add   r0,0x8                        ; 0803285E
add   r0,r0,r4                      ; 08032860
ldr   r1,[r0]                       ; 08032862
ldr   r0,=0xFFFF                    ; 08032864
cmp   r1,r0                         ; 08032866
ble   @@Code0803287C                ; 08032868
mov   r0,r5                         ; 0803286A
mov   r1,r6                         ; 0803286C
bl    Sub08030704                   ; 0803286E
b     @@Code08032884                ; 08032872
.pool                               ; 08032874

@@Code0803287C:
mov   r0,r5                         ; 0803287C
mov   r1,r6                         ; 0803287E
bl    Sub08032744                   ; 08032880
@@Code08032884:
pop   {r4-r6}                       ; 08032884
pop   {r0}                          ; 08032886
bx    r0                            ; 08032888
.pool                               ; 0803288A

Return0803288C:
bx    lr                            ; 0803288C
.pool                               ; 0803288E

Sub08032890:
push  {r4,lr}                       ; 08032890
lsl   r1,r1,0x10                    ; 08032892
lsr   r1,r1,0x10                    ; 08032894
mov   r2,0xB0                       ; 08032896
mul   r1,r2                         ; 08032898
add   r3,r0,r1                      ; 0803289A
mov   r4,r3                         ; 0803289C
add   r4,0x4C                       ; 0803289E
ldrh  r0,[r4]                       ; 080328A0
cmp   r0,0x0                        ; 080328A2
bne   @@Code080328D2                ; 080328A4
mov   r2,r3                         ; 080328A6
add   r2,0x48                       ; 080328A8
ldrh  r0,[r2]                       ; 080328AA
sub   r0,0x1                        ; 080328AC
strh  r0,[r2]                       ; 080328AE
ldrh  r0,[r2]                       ; 080328B0
mov   r1,r0                         ; 080328B2
cmp   r1,0x0                        ; 080328B4
bne   @@Code080328BC                ; 080328B6
mov   r0,0x9                        ; 080328B8
strh  r0,[r2]                       ; 080328BA
@@Code080328BC:
ldr   r0,=Data0816BF14              ; 080328BC
lsl   r1,r1,0x1                     ; 080328BE
add   r0,r1,r0                      ; 080328C0
ldrh  r0,[r0]                       ; 080328C2
strh  r0,[r4]                       ; 080328C4
ldr   r0,=Data0816BF26              ; 080328C6
add   r1,r1,r0                      ; 080328C8
ldrh  r1,[r1]                       ; 080328CA
mov   r0,r3                         ; 080328CC
add   r0,0x40                       ; 080328CE
strh  r1,[r0]                       ; 080328D0
@@Code080328D2:
pop   {r4}                          ; 080328D2
pop   {r0}                          ; 080328D4
bx    r0                            ; 080328D6
.pool                               ; 080328D8

Sub080328E0:
push  {r4-r5,lr}                    ; 080328E0
mov   r4,r0                         ; 080328E2
lsl   r1,r1,0x10                    ; 080328E4
lsr   r1,r1,0x10                    ; 080328E6
mov   r0,0xB0                       ; 080328E8
mul   r1,r0                         ; 080328EA
add   r2,r4,r1                      ; 080328EC
mov   r3,r2                         ; 080328EE
add   r3,0x4A                       ; 080328F0
add   r0,0x50                       ; 080328F2
strh  r0,[r3]                       ; 080328F4
mov   r0,r4                         ; 080328F6
add   r0,0x20                       ; 080328F8
add   r0,r0,r1                      ; 080328FA
mov   r1,0xC0                       ; 080328FC
neg   r1,r1                         ; 080328FE
str   r1,[r0]                       ; 08032900
add   r2,0x76                       ; 08032902
mov   r0,0xC0                       ; 08032904
strh  r0,[r2]                       ; 08032906
mov   r5,0x3                        ; 08032908
@@Code0803290A:
mov   r0,r4                         ; 0803290A
mov   r1,0x15                       ; 0803290C
bl    Sub0802F700                   ; 0803290E
lsl   r0,r0,0x10                    ; 08032912
lsr   r0,r0,0x10                    ; 08032914
mov   r1,0xB0                       ; 08032916
mov   r2,r0                         ; 08032918
mul   r2,r1                         ; 0803291A
mov   r0,r4                         ; 0803291C
add   r0,0x8                        ; 0803291E
add   r0,r0,r2                      ; 08032920
mov   r1,0x9C                       ; 08032922
lsl   r1,r1,0xB                     ; 08032924
str   r1,[r0]                       ; 08032926
mov   r0,r4                         ; 08032928
add   r0,0xC                        ; 0803292A
add   r0,r0,r2                      ; 0803292C
mov   r1,0x80                       ; 0803292E
lsl   r1,r1,0x7                     ; 08032930
str   r1,[r0]                       ; 08032932
add   r2,r4,r2                      ; 08032934
ldr   r1,=Data0816BF38              ; 08032936
lsl   r0,r5,0x1                     ; 08032938
add   r0,r0,r1                      ; 0803293A
ldrh  r1,[r0]                       ; 0803293C
mov   r0,r2                         ; 0803293E
add   r0,0x50                       ; 08032940
strh  r1,[r0]                       ; 08032942
sub   r0,0xC                        ; 08032944
strh  r5,[r0]                       ; 08032946
mov   r1,r2                         ; 08032948
add   r1,0x7E                       ; 0803294A
mov   r0,0xFF                       ; 0803294C
lsl   r0,r0,0x8                     ; 0803294E
strh  r0,[r1]                       ; 08032950
mov   r0,0x2                        ; 08032952
strh  r0,[r2,0x3E]                  ; 08032954
sub   r0,r5,0x1                     ; 08032956
lsl   r0,r0,0x10                    ; 08032958
lsr   r5,r0,0x10                    ; 0803295A
cmp   r5,0x3                        ; 0803295C
bls   @@Code0803290A                ; 0803295E
mov   r0,0xDB                       ; 08032960
lsl   r0,r0,0x5                     ; 08032962
add   r1,r4,r0                      ; 08032964
mov   r0,0x0                        ; 08032966
strh  r0,[r1]                       ; 08032968
pop   {r4-r5}                       ; 0803296A
pop   {r0}                          ; 0803296C
bx    r0                            ; 0803296E
.pool                               ; 08032970

Sub08032974:
push  {r4-r5,lr}                    ; 08032974
mov   r4,r0                         ; 08032976
lsl   r1,r1,0x10                    ; 08032978
lsr   r5,r1,0x10                    ; 0803297A
mov   r0,0xB0                       ; 0803297C
mov   r1,r5                         ; 0803297E
mul   r1,r0                         ; 08032980
add   r2,r4,r1                      ; 08032982
mov   r0,r2                         ; 08032984
add   r0,0x4A                       ; 08032986
ldrh  r3,[r0]                       ; 08032988
cmp   r3,0x0                        ; 0803298A
bne   @@Code080329AC                ; 0803298C
mov   r0,r4                         ; 0803298E
add   r0,0x18                       ; 08032990
add   r0,r0,r1                      ; 08032992
mov   r1,0x1                        ; 08032994
str   r1,[r0]                       ; 08032996
add   r2,0x76                       ; 08032998
ldrh  r0,[r2]                       ; 0803299A
sub   r0,0x1                        ; 0803299C
strh  r0,[r2]                       ; 0803299E
mov   r1,0x80                       ; 080329A0
lsl   r1,r1,0x8                     ; 080329A2
and   r0,r1                         ; 080329A4
cmp   r0,0x0                        ; 080329A6
beq   @@Code080329AC                ; 080329A8
strh  r3,[r2]                       ; 080329AA
@@Code080329AC:
mov   r0,0xB0                       ; 080329AC
mul   r0,r5                         ; 080329AE
add   r2,r4,r0                      ; 080329B0
mov   r1,r2                         ; 080329B2
add   r1,0x4C                       ; 080329B4
ldrh  r3,[r1]                       ; 080329B6
cmp   r3,0x0                        ; 080329B8
bne   @@Code080329D2                ; 080329BA
mov   r0,0x6                        ; 080329BC
strh  r0,[r1]                       ; 080329BE
sub   r1,0xC                        ; 080329C0
ldrh  r0,[r1]                       ; 080329C2
add   r0,0x1                        ; 080329C4
strh  r0,[r1]                       ; 080329C6
lsl   r0,r0,0x10                    ; 080329C8
lsr   r0,r0,0x10                    ; 080329CA
cmp   r0,0x7                        ; 080329CC
bls   @@Code080329D2                ; 080329CE
strh  r3,[r1]                       ; 080329D0
@@Code080329D2:
mov   r0,0xB0                       ; 080329D2
mul   r0,r5                         ; 080329D4
add   r0,r4,r0                      ; 080329D6
mov   r3,r0                         ; 080329D8
add   r3,0x72                       ; 080329DA
add   r0,0x76                       ; 080329DC
ldrh  r0,[r0]                       ; 080329DE
ldrh  r1,[r3]                       ; 080329E0
add   r2,r0,r1                      ; 080329E2
strh  r2,[r3]                       ; 080329E4
mov   r0,0xFF                       ; 080329E6
lsl   r0,r0,0x8                     ; 080329E8
and   r0,r2                         ; 080329EA
cmp   r0,0x0                        ; 080329EC
beq   @@Code08032A02                ; 080329EE
ldr   r0,=0x03002200                ; 080329F0
ldr   r1,=0x47E6                    ; 080329F2
add   r0,r0,r1                      ; 080329F4
ldrh  r1,[r0]                       ; 080329F6
sub   r1,0x1                        ; 080329F8
strh  r1,[r0]                       ; 080329FA
mov   r0,0xFF                       ; 080329FC
and   r2,r0                         ; 080329FE
strh  r2,[r3]                       ; 08032A00
@@Code08032A02:
mov   r0,r4                         ; 08032A02
mov   r1,r5                         ; 08032A04
bl    Sub08031B54                   ; 08032A06
pop   {r4-r5}                       ; 08032A0A
pop   {r0}                          ; 08032A0C
bx    r0                            ; 08032A0E
.pool                               ; 08032A10

Sub08032A18:
lsl   r1,r1,0x10                    ; 08032A18
lsr   r1,r1,0x10                    ; 08032A1A
mov   r2,0xB0                       ; 08032A1C
mul   r1,r2                         ; 08032A1E
add   r0,r0,r1                      ; 08032A20
add   r0,0x9C                       ; 08032A22
mov   r1,0xF0                       ; 08032A24
strb  r1,[r0]                       ; 08032A26
bx    lr                            ; 08032A28
.pool                               ; 08032A2A

Sub08032A2C:
push  {r4-r6,lr}                    ; 08032A2C
mov   r4,r0                         ; 08032A2E
lsl   r1,r1,0x10                    ; 08032A30
lsr   r5,r1,0x10                    ; 08032A32
mov   r0,0xB0                       ; 08032A34
mov   r3,r5                         ; 08032A36
mul   r3,r0                         ; 08032A38
mov   r0,r4                         ; 08032A3A
add   r0,0x8                        ; 08032A3C
add   r6,r0,r3                      ; 08032A3E
ldr   r1,[r6]                       ; 08032A40
mov   r0,0x80                       ; 08032A42
lsl   r0,r0,0xA                     ; 08032A44
cmp   r1,r0                         ; 08032A46
bgt   @@Code08032A56                ; 08032A48
add   r0,r4,r3                      ; 08032A4A
add   r0,0x9C                       ; 08032A4C
ldrb  r2,[r0]                       ; 08032A4E
mov   r1,0xF                        ; 08032A50
and   r1,r2                         ; 08032A52
strb  r1,[r0]                       ; 08032A54
@@Code08032A56:
add   r2,r4,r3                      ; 08032A56
mov   r0,r2                         ; 08032A58
add   r0,0x50                       ; 08032A5A
ldrh  r0,[r0]                       ; 08032A5C
cmp   r0,0x0                        ; 08032A5E
beq   @@Code08032A64                ; 08032A60
b     @@Code08032B62                ; 08032A62
@@Code08032A64:
ldr   r1,[r6]                       ; 08032A64
ldr   r0,=0xFFFFF000                ; 08032A66
cmp   r1,r0                         ; 08032A68
bge   @@Code08032A88                ; 08032A6A
mov   r0,r4                         ; 08032A6C
mov   r1,r5                         ; 08032A6E
bl    Sub08030704                   ; 08032A70
mov   r0,0xDB                       ; 08032A74
lsl   r0,r0,0x5                     ; 08032A76
add   r1,r4,r0                      ; 08032A78
ldrh  r0,[r1]                       ; 08032A7A
add   r0,0x1                        ; 08032A7C
strh  r0,[r1]                       ; 08032A7E
b     @@Code08032B62                ; 08032A80
.pool                               ; 08032A82

@@Code08032A88:
mov   r1,r2                         ; 08032A88
add   r1,0x4C                       ; 08032A8A
ldrh  r0,[r1]                       ; 08032A8C
mov   r6,r4                         ; 08032A8E
add   r6,0x14                       ; 08032A90
cmp   r0,0x0                        ; 08032A92
bne   @@Code08032B0C                ; 08032A94
mov   r0,0xFF                       ; 08032A96
strh  r0,[r1]                       ; 08032A98
mov   r0,r2                         ; 08032A9A
add   r0,0x44                       ; 08032A9C
ldrh  r0,[r0]                       ; 08032A9E
ldr   r2,=0xFFFFFD80                ; 08032AA0
cmp   r0,0x3                        ; 08032AA2
bne   @@Code08032AA8                ; 08032AA4
sub   r2,0x80                       ; 08032AA6
@@Code08032AA8:
mov   r1,0xDB                       ; 08032AA8
lsl   r1,r1,0x5                     ; 08032AAA
add   r0,r4,r1                      ; 08032AAC
ldrh  r0,[r0]                       ; 08032AAE
cmp   r0,0x0                        ; 08032AB0
bne   @@Code08032ADC                ; 08032AB2
lsl   r0,r2,0x6                     ; 08032AB4
add   r0,r0,r2                      ; 08032AB6
lsl   r2,r0,0x1                     ; 08032AB8
mov   r0,r4                         ; 08032ABA
add   r0,0x1C                       ; 08032ABC
add   r0,r0,r3                      ; 08032ABE
mov   r1,0x20                       ; 08032AC0
str   r1,[r0]                       ; 08032AC2
mov   r0,r4                         ; 08032AC4
add   r0,0x24                       ; 08032AC6
add   r0,r0,r3                      ; 08032AC8
mov   r1,0x80                       ; 08032ACA
str   r1,[r0]                       ; 08032ACC
add   r1,r6,r3                      ; 08032ACE
mov   r0,0x80                       ; 08032AD0
neg   r0,r0                         ; 08032AD2
b     @@Code08032AFA                ; 08032AD4
.pool                               ; 08032AD6

@@Code08032ADC:
mov   r0,0xD0                       ; 08032ADC
mul   r2,r0                         ; 08032ADE
mov   r0,r4                         ; 08032AE0
add   r0,0x1C                       ; 08032AE2
add   r0,r0,r3                      ; 08032AE4
mov   r1,0x20                       ; 08032AE6
str   r1,[r0]                       ; 08032AE8
mov   r0,r4                         ; 08032AEA
add   r0,0x24                       ; 08032AEC
add   r0,r0,r3                      ; 08032AEE
mov   r1,0x50                       ; 08032AF0
str   r1,[r0]                       ; 08032AF2
add   r1,r6,r3                      ; 08032AF4
mov   r0,0x50                       ; 08032AF6
neg   r0,r0                         ; 08032AF8
@@Code08032AFA:
str   r0,[r1]                       ; 08032AFA
mov   r0,0xB0                       ; 08032AFC
mov   r1,r5                         ; 08032AFE
mul   r1,r0                         ; 08032B00
mov   r0,r4                         ; 08032B02
add   r0,0x10                       ; 08032B04
add   r0,r0,r1                      ; 08032B06
asr   r1,r2,0x8                     ; 08032B08
str   r1,[r0]                       ; 08032B0A
@@Code08032B0C:
mov   r0,r4                         ; 08032B0C
mov   r1,r5                         ; 08032B0E
bl    Sub0803254C                   ; 08032B10
mov   r0,0xB0                       ; 08032B14
mov   r1,r5                         ; 08032B16
mul   r1,r0                         ; 08032B18
add   r0,r4,r1                      ; 08032B1A
add   r0,0x82                       ; 08032B1C
ldrh  r2,[r0]                       ; 08032B1E
add   r1,r6,r1                      ; 08032B20
ldr   r0,[r1]                       ; 08032B22
cmp   r0,0x0                        ; 08032B24
bge   @@Code08032B34                ; 08032B26
cmp   r2,0x10                       ; 08032B28
bhi   @@Code08032B30                ; 08032B2A
mov   r2,0x10                       ; 08032B2C
b     @@Code08032B42                ; 08032B2E
@@Code08032B30:
sub   r0,r2,0x1                     ; 08032B30
b     @@Code08032B3E                ; 08032B32
@@Code08032B34:
cmp   r2,0x1D                       ; 08032B34
bls   @@Code08032B3C                ; 08032B36
mov   r2,0x1E                       ; 08032B38
b     @@Code08032B42                ; 08032B3A
@@Code08032B3C:
add   r0,r2,0x1                     ; 08032B3C
@@Code08032B3E:
lsl   r0,r0,0x10                    ; 08032B3E
lsr   r2,r0,0x10                    ; 08032B40
@@Code08032B42:
mov   r1,0xDB                       ; 08032B42
lsl   r1,r1,0x5                     ; 08032B44
add   r0,r4,r1                      ; 08032B46
ldrh  r0,[r0]                       ; 08032B48
cmp   r0,0x0                        ; 08032B4A
beq   @@Code08032B50                ; 08032B4C
mov   r2,0x18                       ; 08032B4E
@@Code08032B50:
mov   r0,0xB0                       ; 08032B50
mul   r0,r5                         ; 08032B52
add   r0,r4,r0                      ; 08032B54
add   r0,0x82                       ; 08032B56
strh  r2,[r0]                       ; 08032B58
mov   r0,r4                         ; 08032B5A
mov   r1,r5                         ; 08032B5C
bl    Sub08032744                   ; 08032B5E
@@Code08032B62:
pop   {r4-r6}                       ; 08032B62
pop   {r0}                          ; 08032B64
bx    r0                            ; 08032B66

Sub08032B68:
push  {lr}                          ; 08032B68
lsl   r1,r1,0x10                    ; 08032B6A
lsr   r1,r1,0x10                    ; 08032B6C
mov   r2,0xB0                       ; 08032B6E
mul   r2,r1                         ; 08032B70
add   r2,r0,r2                      ; 08032B72
mov   r3,0x2                        ; 08032B74
strh  r3,[r2,0x2C]                  ; 08032B76
ldr   r3,=CodePtrs0816BF40          ; 08032B78
ldrh  r2,[r2,0x3A]                  ; 08032B7A
lsl   r2,r2,0x2                     ; 08032B7C
add   r2,r2,r3                      ; 08032B7E
ldr   r2,[r2]                       ; 08032B80
bl    Sub_bx_r2                     ; 08032B82
pop   {r0}                          ; 08032B86
bx    r0                            ; 08032B88
.pool                               ; 08032B8A

Sub08032B90:
push  {lr}                          ; 08032B90
lsl   r1,r1,0x10                    ; 08032B92
lsr   r1,r1,0x10                    ; 08032B94
ldr   r3,=CodePtrs0816BF98          ; 08032B96
mov   r2,0xB0                       ; 08032B98
mul   r2,r1                         ; 08032B9A
add   r2,r0,r2                      ; 08032B9C
ldrh  r2,[r2,0x3A]                  ; 08032B9E
lsl   r2,r2,0x2                     ; 08032BA0
add   r2,r2,r3                      ; 08032BA2
ldr   r2,[r2]                       ; 08032BA4
bl    Sub_bx_r2                     ; 08032BA6
pop   {r0}                          ; 08032BAA
bx    r0                            ; 08032BAC
.pool                               ; 08032BAE

Sub08032BB4:
push  {r4,lr}                       ; 08032BB4
mov   r2,r0                         ; 08032BB6
ldr   r0,[r2,0x18]                  ; 08032BB8
ldr   r4,[r2,0x8]                   ; 08032BBA
sub   r0,r0,r4                      ; 08032BBC
lsl   r0,r0,0x10                    ; 08032BBE
lsr   r0,r0,0x10                    ; 08032BC0
ldr   r3,[r2,0x10]                  ; 08032BC2
mov   r1,0x80                       ; 08032BC4
lsl   r1,r1,0x8                     ; 08032BC6
and   r0,r1                         ; 08032BC8
cmp   r0,0x0                        ; 08032BCA
beq   @@Code08032BD0                ; 08032BCC
neg   r3,r3                         ; 08032BCE
@@Code08032BD0:
add   r1,r4,r3                      ; 08032BD0
str   r1,[r2,0x8]                   ; 08032BD2
asr   r0,r1,0x8                     ; 08032BD4
strh  r0,[r2,0x2E]                  ; 08032BD6
ldr   r0,[r2]                       ; 08032BD8
add   r0,r0,r1                      ; 08032BDA
str   r0,[r2]                       ; 08032BDC
pop   {r4}                          ; 08032BDE
pop   {r0}                          ; 08032BE0
bx    r0                            ; 08032BE2

Sub08032BE4:
push  {r4,lr}                       ; 08032BE4
mov   r2,r0                         ; 08032BE6
ldr   r0,[r2,0x1C]                  ; 08032BE8
ldr   r4,[r2,0xC]                   ; 08032BEA
sub   r0,r0,r4                      ; 08032BEC
lsl   r0,r0,0x10                    ; 08032BEE
lsr   r0,r0,0x10                    ; 08032BF0
ldr   r3,[r2,0x14]                  ; 08032BF2
mov   r1,0x80                       ; 08032BF4
lsl   r1,r1,0x8                     ; 08032BF6
and   r0,r1                         ; 08032BF8
cmp   r0,0x0                        ; 08032BFA
beq   @@Code08032C00                ; 08032BFC
neg   r3,r3                         ; 08032BFE
@@Code08032C00:
add   r1,r4,r3                      ; 08032C00
str   r1,[r2,0xC]                   ; 08032C02
asr   r0,r1,0x8                     ; 08032C04
strh  r0,[r2,0x30]                  ; 08032C06
ldr   r0,[r2,0x4]                   ; 08032C08
add   r0,r0,r1                      ; 08032C0A
str   r0,[r2,0x4]                   ; 08032C0C
mov   r0,r2                         ; 08032C0E
bl    Sub08032BB4                   ; 08032C10
pop   {r4}                          ; 08032C14
pop   {r0}                          ; 08032C16
bx    r0                            ; 08032C18
.pool                               ; 08032C1A

Sub08032C1C:
push  {r4-r6,lr}                    ; 08032C1C
mov   r4,r0                         ; 08032C1E
lsl   r1,r1,0x10                    ; 08032C20
lsr   r1,r1,0x10                    ; 08032C22
mov   r6,r1                         ; 08032C24
mov   r0,0xB0                       ; 08032C26
mov   r5,r1                         ; 08032C28
mul   r5,r0                         ; 08032C2A
add   r3,r4,r5                      ; 08032C2C
ldrh  r0,[r3,0x2C]                  ; 08032C2E
cmp   r0,0x0                        ; 08032C30
beq   @@Code08032C90                ; 08032C32
mov   r2,r3                         ; 08032C34
add   r2,0x4A                       ; 08032C36
ldrh  r0,[r2]                       ; 08032C38
cmp   r0,0x0                        ; 08032C3A
beq   @@Code08032C42                ; 08032C3C
sub   r0,0x1                        ; 08032C3E
strh  r0,[r2]                       ; 08032C40
@@Code08032C42:
mov   r2,r3                         ; 08032C42
add   r2,0x4C                       ; 08032C44
ldrh  r0,[r2]                       ; 08032C46
cmp   r0,0x0                        ; 08032C48
beq   @@Code08032C50                ; 08032C4A
sub   r0,0x1                        ; 08032C4C
strh  r0,[r2]                       ; 08032C4E
@@Code08032C50:
mov   r2,r3                         ; 08032C50
add   r2,0x4E                       ; 08032C52
ldrh  r0,[r2]                       ; 08032C54
cmp   r0,0x0                        ; 08032C56
beq   @@Code08032C5E                ; 08032C58
sub   r0,0x1                        ; 08032C5A
strh  r0,[r2]                       ; 08032C5C
@@Code08032C5E:
mov   r2,r3                         ; 08032C5E
add   r2,0x50                       ; 08032C60
ldrh  r0,[r2]                       ; 08032C62
cmp   r0,0x0                        ; 08032C64
beq   @@Code08032C6C                ; 08032C66
sub   r0,0x1                        ; 08032C68
strh  r0,[r2]                       ; 08032C6A
@@Code08032C6C:
ldrh  r0,[r3,0x2C]                  ; 08032C6C
cmp   r0,0x1                        ; 08032C6E
bne   @@Code08032C7A                ; 08032C70
mov   r0,r4                         ; 08032C72
bl    Sub08032B68                   ; 08032C74
b     @@Code08032C90                ; 08032C78
@@Code08032C7A:
cmp   r0,0x2                        ; 08032C7A
bne   @@Code08032C90                ; 08032C7C
mov   r0,r5                         ; 08032C7E
add   r0,0x8                        ; 08032C80
add   r0,r4,r0                      ; 08032C82
bl    Sub08032BE4                   ; 08032C84
mov   r0,r4                         ; 08032C88
mov   r1,r6                         ; 08032C8A
bl    Sub08032B90                   ; 08032C8C
@@Code08032C90:
pop   {r4-r6}                       ; 08032C90
pop   {r0}                          ; 08032C92
bx    r0                            ; 08032C94
.pool                               ; 08032C96

Sub08032C98:
push  {r4-r5,lr}                    ; 08032C98
ldr   r5,=0x03002200                ; 08032C9A
mov   r0,0x83                       ; 08032C9C
lsl   r0,r0,0x7                     ; 08032C9E
add   r4,r5,r0                      ; 08032CA0
ldr   r1,[r4]                       ; 08032CA2
cmp   r1,0x0                        ; 08032CA4
beq   @@Code08032CB6                ; 08032CA6
sub   r1,0x1                        ; 08032CA8
str   r1,[r4]                       ; 08032CAA
mov   r0,r5                         ; 08032CAC
bl    DynamicDeallocate             ; 08032CAE
mov   r0,0x0                        ; 08032CB2
str   r0,[r4]                       ; 08032CB4
@@Code08032CB6:
ldr   r1,=0x4184                    ; 08032CB6
add   r4,r5,r1                      ; 08032CB8
ldr   r1,[r4]                       ; 08032CBA
cmp   r1,0x0                        ; 08032CBC
beq   @@Code08032CCE                ; 08032CBE
sub   r1,0x1                        ; 08032CC0
str   r1,[r4]                       ; 08032CC2
mov   r0,r5                         ; 08032CC4
bl    DynamicDeallocate             ; 08032CC6
mov   r0,0x0                        ; 08032CCA
str   r0,[r4]                       ; 08032CCC
@@Code08032CCE:
ldr   r2,=0x4188                    ; 08032CCE
add   r4,r5,r2                      ; 08032CD0
ldr   r1,[r4]                       ; 08032CD2
cmp   r1,0x0                        ; 08032CD4
beq   @@Code08032CE6                ; 08032CD6
sub   r1,0x1                        ; 08032CD8
str   r1,[r4]                       ; 08032CDA
mov   r0,r5                         ; 08032CDC
bl    DynamicDeallocate             ; 08032CDE
mov   r0,0x0                        ; 08032CE2
str   r0,[r4]                       ; 08032CE4
@@Code08032CE6:
ldr   r0,=0x4905                    ; 08032CE6
add   r1,r5,r0                      ; 08032CE8  03006B05
mov   r2,0x0                        ; 08032CEA
mov   r0,0x44                       ; 08032CEC  44: fade to SMA3 title screen init
strb  r0,[r1]                       ; 08032CEE  change game state
ldr   r1,=0x48FB                    ; 08032CF0
add   r0,r5,r1                      ; 08032CF2
strb  r2,[r0]                       ; 08032CF4
sub   r1,0x1                        ; 08032CF6
add   r0,r5,r1                      ; 08032CF8
strb  r2,[r0]                       ; 08032CFA
mov   r0,0x10                       ; 08032CFC
bl    Sub0812C458                   ; 08032CFE
ldr   r2,=0x4A48                    ; 08032D02
add   r0,r5,r2                      ; 08032D04
ldrb  r0,[r0]                       ; 08032D06
lsl   r0,r0,0x1B                    ; 08032D08
lsr   r0,r0,0x1E                    ; 08032D0A
ldr   r2,=0x4071                    ; 08032D0C
add   r1,r5,r2                      ; 08032D0E
strb  r0,[r1]                       ; 08032D10
pop   {r4-r5}                       ; 08032D12
pop   {r0}                          ; 08032D14
bx    r0                            ; 08032D16
.pool                               ; 08032D18

Sub08032D34:
push  {r4-r5,lr}                    ; 08032D34
mov   r5,r0                         ; 08032D36
ldr   r1,=0x03002200                ; 08032D38
ldr   r0,=0x48A2                    ; 08032D3A
add   r1,r1,r0                      ; 08032D3C
ldrh  r0,[r1]                       ; 08032D3E
add   r0,0x1                        ; 08032D40
strh  r0,[r1]                       ; 08032D42
mov   r4,0x17                       ; 08032D44
@@Code08032D46:
bl    GenRandomByte                 ; 08032D46  Generate pseudo-random byte
mov   r0,r5                         ; 08032D4A
mov   r1,r4                         ; 08032D4C
bl    Sub08032C1C                   ; 08032D4E
sub   r0,r4,0x1                     ; 08032D52
lsl   r0,r0,0x10                    ; 08032D54
lsr   r4,r0,0x10                    ; 08032D56
cmp   r4,0x17                       ; 08032D58
bls   @@Code08032D46                ; 08032D5A
pop   {r4-r5}                       ; 08032D5C
pop   {r0}                          ; 08032D5E
bx    r0                            ; 08032D60
.pool                               ; 08032D62

Sub08032D6C:
push  {r4-r7,lr}                    ; 08032D6C
mov   r5,r0                         ; 08032D6E
mov   r4,0x17                       ; 08032D70
ldr   r7,=0x03006388                ; 08032D72
ldr   r6,=DataPtrs0816BD1C          ; 08032D74
@@Code08032D76:
mov   r0,0xB0                       ; 08032D76
mul   r0,r4                         ; 08032D78
add   r1,r5,r0                      ; 08032D7A
ldrh  r0,[r1,0x2C]                  ; 08032D7C
cmp   r0,0x0                        ; 08032D7E
beq   @@Code08032D94                ; 08032D80
ldrh  r0,[r1,0x3A]                  ; 08032D82
lsl   r0,r0,0x2                     ; 08032D84
add   r0,r0,r6                      ; 08032D86
ldr   r1,[r0]                       ; 08032D88
ldr   r3,[r7]                       ; 08032D8A
mov   r0,r5                         ; 08032D8C
mov   r2,r4                         ; 08032D8E
bl    Sub_bx_r3                     ; 08032D90
@@Code08032D94:
sub   r0,r4,0x1                     ; 08032D94
lsl   r0,r0,0x10                    ; 08032D96
lsr   r4,r0,0x10                    ; 08032D98
cmp   r4,0x17                       ; 08032D9A
bls   @@Code08032D76                ; 08032D9C
ldr   r0,=0x03002200                ; 08032D9E
mov   r1,0x83                       ; 08032DA0
lsl   r1,r1,0x7                     ; 08032DA2
add   r0,r0,r1                      ; 08032DA4
ldr   r1,[r0]                       ; 08032DA6
mov   r0,r5                         ; 08032DA8
bl    Sub_bx_r1                     ; 08032DAA
pop   {r4-r7}                       ; 08032DAE
pop   {r0}                          ; 08032DB0
bx    r0                            ; 08032DB2
.pool                               ; 08032DB4

Sub08032DC0:
push  {r4-r6,lr}                    ; 08032DC0
mov   r5,r0                         ; 08032DC2
ldr   r6,=0x020104F2                ; 08032DC4
ldr   r1,=0xFFFFFBDF                ; 08032DC6
mov   r0,r1                         ; 08032DC8
ldrh  r3,[r6]                       ; 08032DCA
add   r0,r0,r3                      ; 08032DCC
lsl   r0,r0,0x10                    ; 08032DCE
lsr   r1,r0,0x10                    ; 08032DD0
cmp   r0,0x0                        ; 08032DD2
bge   @@Code08032E0A                ; 08032DD4
ldr   r0,=0x190C                    ; 08032DD6
add   r1,r5,r0                      ; 08032DD8
ldrh  r0,[r1]                       ; 08032DDA
add   r0,0x1                        ; 08032DDC
mov   r4,0x0                        ; 08032DDE
strh  r0,[r1]                       ; 08032DE0
mov   r0,r5                         ; 08032DE2
bl    Sub0802FB0C                   ; 08032DE4
ldr   r1,=0x190A                    ; 08032DE8
add   r0,r5,r1                      ; 08032DEA
strh  r4,[r0]                       ; 08032DEC
ldr   r1,=Data0816B820              ; 08032DEE
ldr   r3,=0x1B56                    ; 08032DF0
add   r2,r5,r3                      ; 08032DF2
ldrh  r0,[r2]                       ; 08032DF4
lsl   r0,r0,0x1                     ; 08032DF6
add   r0,r0,r1                      ; 08032DF8
ldrh  r1,[r0]                       ; 08032DFA
ldr   r3,=0x1908                    ; 08032DFC
add   r0,r5,r3                      ; 08032DFE
strh  r1,[r0]                       ; 08032E00
ldrh  r0,[r2]                       ; 08032E02
add   r0,0x1                        ; 08032E04
strh  r0,[r2]                       ; 08032E06
mov   r1,0x0                        ; 08032E08
@@Code08032E0A:
strh  r1,[r6]                       ; 08032E0A
ldr   r0,=0x020104F6                ; 08032E0C
strh  r1,[r0]                       ; 08032E0E
add   r0,0x6                        ; 08032E10
strh  r1,[r0]                       ; 08032E12
add   r0,0x2                        ; 08032E14
strh  r1,[r0]                       ; 08032E16
ldr   r1,=0x03002200                ; 08032E18
ldr   r0,=0x4967                    ; 08032E1A
add   r1,r1,r0                      ; 08032E1C
ldrb  r2,[r1]                       ; 08032E1E
mov   r0,0x1                        ; 08032E20
orr   r0,r2                         ; 08032E22
strb  r0,[r1]                       ; 08032E24
pop   {r4-r6}                       ; 08032E26
pop   {r0}                          ; 08032E28
bx    r0                            ; 08032E2A
.pool                               ; 08032E2C

Sub08032E54:
push  {r4-r7,lr}                    ; 08032E54
mov   r3,r0                         ; 08032E56
ldr   r6,=0x03002200                ; 08032E58
ldr   r0,=0x47F2                    ; 08032E5A
add   r0,r0,r6                      ; 08032E5C
mov   r12,r0                        ; 08032E5E
ldrh  r1,[r0]                       ; 08032E60
add   r0,r1,0x2                     ; 08032E62
lsl   r0,r0,0x10                    ; 08032E64
lsr   r1,r0,0x10                    ; 08032E66
ldr   r5,=Data0816B872              ; 08032E68
ldr   r2,=0x1B50                    ; 08032E6A
add   r4,r3,r2                      ; 08032E6C
ldrh  r0,[r4]                       ; 08032E6E
sub   r0,0x1                        ; 08032E70
lsl   r0,r0,0x1                     ; 08032E72
add   r0,r0,r5                      ; 08032E74
ldrh  r0,[r0]                       ; 08032E76
cmp   r1,r0                         ; 08032E78
blo   @@Code08032EA8                ; 08032E7A
ldr   r7,=0x190A                    ; 08032E7C
add   r1,r3,r7                      ; 08032E7E
mov   r0,0x3                        ; 08032E80
strh  r0,[r1]                       ; 08032E82
ldr   r1,=Data0816B820              ; 08032E84
ldr   r0,=0x1B56                    ; 08032E86
add   r2,r3,r0                      ; 08032E88
ldrh  r0,[r2]                       ; 08032E8A
lsl   r0,r0,0x1                     ; 08032E8C
add   r0,r0,r1                      ; 08032E8E
ldrh  r1,[r0]                       ; 08032E90
sub   r7,0x2                        ; 08032E92
add   r0,r3,r7                      ; 08032E94
strh  r1,[r0]                       ; 08032E96
ldrh  r0,[r2]                       ; 08032E98
add   r0,0x1                        ; 08032E9A
strh  r0,[r2]                       ; 08032E9C
ldrh  r0,[r4]                       ; 08032E9E
sub   r0,0x1                        ; 08032EA0
lsl   r0,r0,0x1                     ; 08032EA2
add   r0,r0,r5                      ; 08032EA4
ldrh  r1,[r0]                       ; 08032EA6
@@Code08032EA8:
ldr   r2,=0x47E2                    ; 08032EA8
add   r0,r6,r2                      ; 08032EAA
strh  r1,[r0]                       ; 08032EAC
mov   r7,r12                        ; 08032EAE
strh  r1,[r7]                       ; 08032EB0
pop   {r4-r7}                       ; 08032EB2
pop   {r0}                          ; 08032EB4
bx    r0                            ; 08032EB6
.pool                               ; 08032EB8

Sub08032ED8:
push  {lr}                          ; 08032ED8
ldr   r1,=0x190E                    ; 08032EDA
add   r2,r0,r1                      ; 08032EDC
ldrh  r1,[r2]                       ; 08032EDE
add   r1,0x40                       ; 08032EE0
ldr   r0,=0xFFFF                    ; 08032EE2
cmp   r1,r0                         ; 08032EE4
bls   @@Code08032EEC                ; 08032EE6
mov   r1,0xF8                       ; 08032EE8
lsl   r1,r1,0x8                     ; 08032EEA
@@Code08032EEC:
strh  r1,[r2]                       ; 08032EEC
pop   {r0}                          ; 08032EEE
bx    r0                            ; 08032EF0
.pool                               ; 08032EF2

Sub08032EFC:
push  {lr}                          ; 08032EFC
mov   r2,r0                         ; 08032EFE
ldr   r0,=0x1B52                    ; 08032F00
add   r1,r2,r0                      ; 08032F02
ldrh  r0,[r1]                       ; 08032F04
add   r0,0x1                        ; 08032F06
strh  r0,[r1]                       ; 08032F08
lsl   r0,r0,0x10                    ; 08032F0A
lsr   r0,r0,0x10                    ; 08032F0C
cmp   r0,0x3                        ; 08032F0E
bls   @@Code08032F16                ; 08032F10
mov   r0,0x0                        ; 08032F12
strh  r0,[r1]                       ; 08032F14
@@Code08032F16:
mov   r0,r2                         ; 08032F16
bl    Sub08032ED8                   ; 08032F18
pop   {r0}                          ; 08032F1C
bx    r0                            ; 08032F1E
.pool                               ; 08032F20

Sub08032F24:
push  {lr}                          ; 08032F24
mov   r1,r0                         ; 08032F26
ldr   r2,=0x1B52                    ; 08032F28
add   r0,r1,r2                      ; 08032F2A
ldrh  r0,[r0]                       ; 08032F2C
cmp   r0,0x0                        ; 08032F2E
beq   @@Code08032F54                ; 08032F30
cmp   r0,0x3                        ; 08032F32
bne   @@Code08032F40                ; 08032F34
sub   r2,0xC2                       ; 08032F36
b     @@Code08032F56                ; 08032F38
.pool                               ; 08032F3A

@@Code08032F40:
cmp   r0,0x2                        ; 08032F40
bne   @@Code08032F4C                ; 08032F42
ldr   r2,=0x1A10                    ; 08032F44
b     @@Code08032F56                ; 08032F46
.pool                               ; 08032F48

@@Code08032F4C:
ldr   r2,=0x1990                    ; 08032F4C
b     @@Code08032F56                ; 08032F4E
.pool                               ; 08032F50

@@Code08032F54:
ldr   r2,=0x1910                    ; 08032F54
@@Code08032F56:
add   r0,r1,r2                      ; 08032F56
pop   {r1}                          ; 08032F58
bx    r1                            ; 08032F5A
.pool                               ; 08032F5C

Sub08032F60:
push  {r4-r7,lr}                    ; 08032F60
mov   r7,r8                         ; 08032F62
push  {r7}                          ; 08032F64
mov   r5,r0                         ; 08032F66
ldr   r0,=0x190A                    ; 08032F68
add   r1,r5,r0                      ; 08032F6A
ldrh  r0,[r1]                       ; 08032F6C
add   r0,0x1                        ; 08032F6E
strh  r0,[r1]                       ; 08032F70
mov   r0,r5                         ; 08032F72
bl    Sub08032F24                   ; 08032F74
mov   r4,r0                         ; 08032F78
ldr   r1,=0x190E                    ; 08032F7A
add   r6,r5,r1                      ; 08032F7C
ldrh  r1,[r6]                       ; 08032F7E
mov   r7,0xC0                       ; 08032F80
lsl   r7,r7,0x13                    ; 08032F82
add   r1,r1,r7                      ; 08032F84
mov   r2,0x20                       ; 08032F86
bl    swi_MemoryCopy4or2            ; 08032F88  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r5                         ; 08032F8C
bl    Sub08032EFC                   ; 08032F8E
add   r4,0x40                       ; 08032F92
ldrh  r1,[r6]                       ; 08032F94
add   r1,r1,r7                      ; 08032F96
mov   r0,r4                         ; 08032F98
mov   r2,0x20                       ; 08032F9A
bl    swi_MemoryCopy4or2            ; 08032F9C  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r5                         ; 08032FA0
bl    Sub08032ED8                   ; 08032FA2
ldr   r0,=0x1B58                    ; 08032FA6
add   r0,r0,r5                      ; 08032FA8
mov   r8,r0                         ; 08032FAA
ldrh  r0,[r0]                       ; 08032FAC
cmp   r0,0x0                        ; 08032FAE
bne   @@Code08032FCA                ; 08032FB0
ldr   r1,=0x1B10                    ; 08032FB2
add   r4,r5,r1                      ; 08032FB4
ldrh  r1,[r6]                       ; 08032FB6
mov   r0,r7                         ; 08032FB8
add   r1,r1,r0                      ; 08032FBA
mov   r0,r4                         ; 08032FBC
mov   r2,0x20                       ; 08032FBE
bl    swi_MemoryCopy4or2            ; 08032FC0  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r5                         ; 08032FC4
bl    Sub08032ED8                   ; 08032FC6
@@Code08032FCA:
mov   r0,r5                         ; 08032FCA
bl    Sub08032F24                   ; 08032FCC
mov   r4,r0                         ; 08032FD0
ldrh  r1,[r6]                       ; 08032FD2
add   r1,r1,r7                      ; 08032FD4
mov   r2,0x20                       ; 08032FD6
bl    swi_MemoryCopy4or2            ; 08032FD8  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r5                         ; 08032FDC
bl    Sub08032EFC                   ; 08032FDE
add   r4,0x40                       ; 08032FE2
ldrh  r1,[r6]                       ; 08032FE4
add   r1,r1,r7                      ; 08032FE6
mov   r0,r4                         ; 08032FE8
mov   r2,0x20                       ; 08032FEA
bl    swi_MemoryCopy4or2            ; 08032FEC  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r5                         ; 08032FF0
bl    Sub08032ED8                   ; 08032FF2
ldr   r1,=0x1B10                    ; 08032FF6
add   r4,r5,r1                      ; 08032FF8
ldrh  r1,[r6]                       ; 08032FFA
add   r1,r1,r7                      ; 08032FFC
mov   r0,r4                         ; 08032FFE
mov   r2,0x20                       ; 08033000
bl    swi_MemoryCopy4or2            ; 08033002  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r5                         ; 08033006
bl    Sub08032ED8                   ; 08033008
mov   r1,r8                         ; 0803300C
ldrh  r0,[r1]                       ; 0803300E
cmp   r0,0x0                        ; 08033010
beq   @@Code08033026                ; 08033012
ldrh  r1,[r6]                       ; 08033014
add   r1,r1,r7                      ; 08033016
mov   r0,r4                         ; 08033018
mov   r2,0x20                       ; 0803301A
bl    swi_MemoryCopy4or2            ; 0803301C  Memory copy/fill, 4- or 2-byte blocks
mov   r0,r5                         ; 08033020
bl    Sub08032ED8                   ; 08033022
@@Code08033026:
pop   {r3}                          ; 08033026
mov   r8,r3                         ; 08033028
pop   {r4-r7}                       ; 0803302A
pop   {r0}                          ; 0803302C
bx    r0                            ; 0803302E
.pool                               ; 08033030

Sub08033040:
push  {r4-r5,lr}                    ; 08033040
mov   r4,r0                         ; 08033042
ldr   r1,=DataPtrs0816B748          ; 08033044
ldr   r0,=0x190C                    ; 08033046
add   r5,r4,r0                      ; 08033048
ldrh  r0,[r5]                       ; 0803304A
lsl   r0,r0,0x2                     ; 0803304C
add   r0,r0,r1                      ; 0803304E
ldr   r2,[r0]                       ; 08033050
cmp   r2,0x0                        ; 08033052
bne   @@Code08033084                ; 08033054
ldr   r1,=0x1B54                    ; 08033056
add   r0,r4,r1                      ; 08033058
ldrh  r0,[r0]                       ; 0803305A
cmp   r0,0x0                        ; 0803305C
beq   @@Code08033068                ; 0803305E
ldr   r0,=0x190A                    ; 08033060
add   r1,r4,r0                      ; 08033062
mov   r0,0x6                        ; 08033064
strh  r0,[r1]                       ; 08033066
@@Code08033068:
ldr   r1,=0x1B62                    ; 08033068
add   r0,r4,r1                      ; 0803306A
strh  r2,[r0]                       ; 0803306C
b     @@Code080330BA                ; 0803306E
.pool                               ; 08033070

@@Code08033084:
mov   r0,r4                         ; 08033084
mov   r1,r2                         ; 08033086
bl    StoryIntroText_Main           ; 08033088
ldr   r0,=0x1BE4                    ; 0803308C
add   r1,r4,r0                      ; 0803308E
ldrb  r0,[r1]                       ; 08033090
add   r0,0x1                        ; 08033092
strb  r0,[r1]                       ; 08033094
ldr   r0,=0x190A                    ; 08033096
add   r1,r4,r0                      ; 08033098
ldrh  r0,[r1]                       ; 0803309A
add   r0,0x1                        ; 0803309C
strh  r0,[r1]                       ; 0803309E
ldrh  r0,[r5]                       ; 080330A0
add   r0,0x1                        ; 080330A2
strh  r0,[r5]                       ; 080330A4
ldr   r0,=0x1B50                    ; 080330A6
add   r1,r4,r0                      ; 080330A8
ldrh  r0,[r1]                       ; 080330AA
add   r0,0x1                        ; 080330AC
strh  r0,[r1]                       ; 080330AE
ldr   r0,=0x1B62                    ; 080330B0
add   r1,r4,r0                      ; 080330B2
ldrh  r0,[r1]                       ; 080330B4
add   r0,0x1                        ; 080330B6
strh  r0,[r1]                       ; 080330B8
@@Code080330BA:
pop   {r4-r5}                       ; 080330BA
pop   {r0}                          ; 080330BC
bx    r0                            ; 080330BE
.pool                               ; 080330C0

Sub080330D0:
push  {r4-r5,lr}                    ; 080330D0
mov   r3,r0                         ; 080330D2
ldr   r4,=0x020104F2                ; 080330D4
ldr   r1,=0x0421                    ; 080330D6
mov   r0,r1                         ; 080330D8
ldrh  r5,[r4]                       ; 080330DA
add   r0,r0,r5                      ; 080330DC
lsl   r0,r0,0x10                    ; 080330DE
lsr   r1,r0,0x10                    ; 080330E0
cmp   r0,0x0                        ; 080330E2
bge   @@Code0803310C                ; 080330E4
ldr   r1,=Data0816B820              ; 080330E6
ldr   r0,=0x1B56                    ; 080330E8
add   r2,r3,r0                      ; 080330EA
ldrh  r0,[r2]                       ; 080330EC
lsl   r0,r0,0x1                     ; 080330EE
add   r0,r0,r1                      ; 080330F0
ldrh  r1,[r0]                       ; 080330F2
ldr   r5,=0x1908                    ; 080330F4
add   r0,r3,r5                      ; 080330F6
strh  r1,[r0]                       ; 080330F8
ldrh  r0,[r2]                       ; 080330FA
add   r0,0x1                        ; 080330FC
strh  r0,[r2]                       ; 080330FE
ldr   r0,=0x190A                    ; 08033100
add   r1,r3,r0                      ; 08033102
ldrh  r0,[r1]                       ; 08033104
add   r0,0x1                        ; 08033106
strh  r0,[r1]                       ; 08033108
ldr   r1,=0x7FFF                    ; 0803310A
@@Code0803310C:
strh  r1,[r4]                       ; 0803310C
ldr   r0,=0x020104F6                ; 0803310E
strh  r1,[r0]                       ; 08033110
add   r0,0x6                        ; 08033112
strh  r1,[r0]                       ; 08033114
add   r0,0x2                        ; 08033116
strh  r1,[r0]                       ; 08033118
ldr   r1,=0x03002200                ; 0803311A
ldr   r5,=0x4967                    ; 0803311C
add   r1,r1,r5                      ; 0803311E
ldrb  r2,[r1]                       ; 08033120
mov   r0,0x1                        ; 08033122
orr   r0,r2                         ; 08033124
strb  r0,[r1]                       ; 08033126
pop   {r4-r5}                       ; 08033128
pop   {r0}                          ; 0803312A
bx    r0                            ; 0803312C
.pool                               ; 0803312E

Sub08033158:
push  {lr}                          ; 08033158
bl    Sub08032F60                   ; 0803315A
pop   {r0}                          ; 0803315E
bx    r0                            ; 08033160
.pool                               ; 08033162

Sub08033164:
push  {r4,lr}                       ; 08033164
mov   r4,r0                         ; 08033166
bl    Sub08033040                   ; 08033168
ldr   r0,=0x190E                    ; 0803316C
add   r1,r4,r0                      ; 0803316E
mov   r3,0x0                        ; 08033170
mov   r0,0xFC                       ; 08033172
lsl   r0,r0,0x8                     ; 08033174
strh  r0,[r1]                       ; 08033176
ldr   r1,=0x1B52                    ; 08033178
add   r0,r4,r1                      ; 0803317A
strh  r3,[r0]                       ; 0803317C
ldr   r0,=0x03002200                ; 0803317E
ldr   r2,=0x47E2                    ; 08033180
add   r1,r0,r2                      ; 08033182
mov   r2,0x5                        ; 08033184
strh  r2,[r1]                       ; 08033186
ldr   r1,=0x47F2                    ; 08033188
add   r0,r0,r1                      ; 0803318A
strh  r2,[r0]                       ; 0803318C
ldr   r2,=0x1B50                    ; 0803318E
add   r4,r4,r2                      ; 08033190
strh  r3,[r4]                       ; 08033192
pop   {r4}                          ; 08033194
pop   {r0}                          ; 08033196
bx    r0                            ; 08033198
.pool                               ; 0803319A

Sub080331B4:
push  {r4,lr}                       ; 080331B4
mov   r4,r0                         ; 080331B6
ldr   r0,=0x1908                    ; 080331B8
add   r1,r4,r0                      ; 080331BA
ldrh  r0,[r1]                       ; 080331BC
cmp   r0,0x0                        ; 080331BE
bne   @@Code080331E4                ; 080331C0
ldr   r1,=CodePtrs0816BFF0          ; 080331C2
ldr   r2,=0x190A                    ; 080331C4
add   r0,r4,r2                      ; 080331C6
ldrh  r0,[r0]                       ; 080331C8
lsl   r0,r0,0x2                     ; 080331CA
add   r0,r0,r1                      ; 080331CC
ldr   r1,[r0]                       ; 080331CE
mov   r0,r4                         ; 080331D0
bl    Sub_bx_r1                     ; 080331D2
b     @@Code080331E8                ; 080331D6
.pool                               ; 080331D8

@@Code080331E4:
sub   r0,0x1                        ; 080331E4
strh  r0,[r1]                       ; 080331E6
@@Code080331E8:
ldr   r1,=0x190A                    ; 080331E8
add   r0,r4,r1                      ; 080331EA
ldrh  r0,[r0]                       ; 080331EC
cmp   r0,0x6                        ; 080331EE
bne   @@Code08033204                ; 080331F0
ldr   r1,=DataPtrs0816B748          ; 080331F2  pointers to story intro messages
ldr   r2,=0x190C                    ; 080331F4
add   r0,r4,r2                      ; 080331F6  [0300637C]+190C (03003B18)
ldrh  r0,[r0]                       ; 080331F8  message ID
lsl   r0,r0,0x2                     ; 080331FA
add   r0,r0,r1                      ; 080331FC
ldr   r0,[r0]                       ; 080331FE
cmp   r0,0x0                        ; 08033200
beq   @@Code0803320C                ; 08033202
@@Code08033204:
ldr   r0,=0x1B54                    ; 08033204
add   r1,r4,r0                      ; 08033206
mov   r0,0x0                        ; 08033208
strh  r0,[r1]                       ; 0803320A
@@Code0803320C:
pop   {r4}                          ; 0803320C
pop   {r0}                          ; 0803320E
bx    r0                            ; 08033210
.pool                               ; 08033212

Sub08033224:
push  {r4-r7,lr}                    ; 08033224
mov   r7,r10                        ; 08033226
mov   r6,r9                         ; 08033228
mov   r5,r8                         ; 0803322A
push  {r5-r7}                       ; 0803322C
add   sp,-0x4                       ; 0803322E
mov   r4,r0                         ; 08033230
mov   r6,r1                         ; 08033232
lsl   r2,r2,0x10                    ; 08033234
lsr   r5,r2,0x10                    ; 08033236
mov   r0,0xB0                       ; 08033238
mov   r3,r5                         ; 0803323A
mul   r3,r0                         ; 0803323C
add   r2,r4,r3                      ; 0803323E
mov   r0,r2                         ; 08033240
add   r0,0x9C                       ; 08033242
ldrb  r1,[r0]                       ; 08033244
mov   r0,0xF0                       ; 08033246
and   r0,r1                         ; 08033248
cmp   r0,0xF0                       ; 0803324A
bne   @@Code08033250                ; 0803324C
b     @@Code080335A2                ; 0803324E
@@Code08033250:
mov   r0,r2                         ; 08033250
add   r0,0xA4                       ; 08033252
ldrb  r0,[r0]                       ; 08033254
cmp   r0,0x0                        ; 08033256
beq   @@Code08033290                ; 08033258
mov   r0,r4                         ; 0803325A
add   r0,0xC                        ; 0803325C
add   r0,r0,r3                      ; 0803325E
ldr   r0,[r0]                       ; 08033260
asr   r0,r0,0x8                     ; 08033262
ldr   r2,=0x03002200                ; 08033264
ldr   r7,=0x47DE                    ; 08033266
add   r1,r2,r7                      ; 08033268
ldrh  r1,[r1]                       ; 0803326A
sub   r0,r0,r1                      ; 0803326C
lsl   r0,r0,0x10                    ; 0803326E
lsr   r0,r0,0x10                    ; 08033270
mov   r12,r0                        ; 08033272
mov   r0,r4                         ; 08033274
add   r0,0x8                        ; 08033276
add   r0,r0,r3                      ; 08033278
ldr   r0,[r0]                       ; 0803327A
asr   r0,r0,0x8                     ; 0803327C
ldr   r3,=0x47D6                    ; 0803327E
b     @@Code080332B6                ; 08033280
.pool                               ; 08033282

@@Code08033290:
mov   r0,r4                         ; 08033290
add   r0,0xC                        ; 08033292
add   r0,r0,r3                      ; 08033294
ldr   r0,[r0]                       ; 08033296
asr   r0,r0,0x8                     ; 08033298
ldr   r2,=0x03002200                ; 0803329A
ldr   r7,=0x47DC                    ; 0803329C
add   r1,r2,r7                      ; 0803329E
ldrh  r1,[r1]                       ; 080332A0
sub   r0,r0,r1                      ; 080332A2
lsl   r0,r0,0x10                    ; 080332A4
lsr   r0,r0,0x10                    ; 080332A6
mov   r12,r0                        ; 080332A8
mov   r0,r4                         ; 080332AA
add   r0,0x8                        ; 080332AC
add   r0,r0,r3                      ; 080332AE
ldr   r0,[r0]                       ; 080332B0
asr   r0,r0,0x8                     ; 080332B2
ldr   r3,=0x47D4                    ; 080332B4
@@Code080332B6:
add   r1,r2,r3                      ; 080332B6
ldrh  r1,[r1]                       ; 080332B8
sub   r0,r0,r1                      ; 080332BA
lsl   r0,r0,0x10                    ; 080332BC
lsr   r7,r0,0x10                    ; 080332BE
mov   r0,0xB0                       ; 080332C0
mul   r0,r5                         ; 080332C2
add   r3,r4,r0                      ; 080332C4
mov   r0,r12                        ; 080332C6
strh  r0,[r3,0x2A]                  ; 080332C8
strh  r7,[r3,0x28]                  ; 080332CA
mov   r0,r3                         ; 080332CC
add   r0,0x40                       ; 080332CE
ldrh  r0,[r0]                       ; 080332D0
lsl   r0,r0,0x2                     ; 080332D2
add   r0,r0,r6                      ; 080332D4
ldr   r5,[r0]                       ; 080332D6
mov   r0,r3                         ; 080332D8
add   r0,0xA4                       ; 080332DA
ldrb  r0,[r0]                       ; 080332DC
add   r0,0x2                        ; 080332DE
lsl   r0,r0,0x7                     ; 080332E0
mov   r1,r3                         ; 080332E2
add   r1,0x9C                       ; 080332E4
ldrb  r1,[r1]                       ; 080332E6
mov   r8,r1                         ; 080332E8
orr   r1,r0                         ; 080332EA
mov   r8,r1                         ; 080332EC
mov   r0,0x0                        ; 080332EE
str   r0,[sp]                       ; 080332F0
ldrh  r0,[r3,0x3A]                  ; 080332F2
cmp   r0,0x12                       ; 080332F4
beq   @@Code080332FC                ; 080332F6
cmp   r0,0x15                       ; 080332F8
bne   @@Code08033304                ; 080332FA
@@Code080332FC:
mov   r0,r3                         ; 080332FC
add   r0,0x44                       ; 080332FE
ldrh  r0,[r0]                       ; 08033300
str   r0,[sp]                       ; 08033302
@@Code08033304:
ldr   r1,=0x47D0                    ; 08033304
add   r2,r2,r1                      ; 08033306
ldrh  r0,[r2]                       ; 08033308
lsl   r1,r0,0x1                     ; 0803330A
add   r1,r1,r0                      ; 0803330C
lsl   r1,r1,0x2                     ; 0803330E
ldr   r3,=0x1088                    ; 08033310
add   r1,r1,r3                      ; 08033312
add   r4,r4,r1                      ; 08033314
ldrb  r0,[r5,0x1]                   ; 08033316
lsl   r0,r0,0x1E                    ; 08033318
cmp   r0,0x0                        ; 0803331A
bne   @@Code08033320                ; 0803331C
b     @@Code08033460                ; 0803331E
@@Code08033320:
ldrh  r0,[r5,0x6]                   ; 08033320
ldr   r1,=0xFFFF                    ; 08033322
cmp   r0,r1                         ; 08033324
bne   @@Code0803332A                ; 08033326
b     @@Code080335A2                ; 08033328
@@Code0803332A:
mov   r6,0x1                        ; 0803332A
mov   r2,0x21                       ; 0803332C
neg   r2,r2                         ; 0803332E
mov   r10,r2                        ; 08033330
mov   r3,0x3F                       ; 08033332
mov   r9,r3                         ; 08033334
@@Code08033336:
ldr   r1,=0x030069D0                ; 08033336
ldrh  r0,[r1]                       ; 08033338
add   r0,0x1                        ; 0803333A
strh  r0,[r1]                       ; 0803333C
ldrb  r0,[r5]                       ; 0803333E
add   r0,r12                        ; 08033340
strb  r0,[r4]                       ; 08033342
ldrb  r0,[r5,0x1]                   ; 08033344
lsl   r0,r0,0x1E                    ; 08033346
lsr   r0,r0,0x1E                    ; 08033348
mov   r2,0x3                        ; 0803334A
and   r0,r2                         ; 0803334C
ldrb  r2,[r4,0x1]                   ; 0803334E
mov   r1,0x4                        ; 08033350
neg   r1,r1                         ; 08033352
and   r1,r2                         ; 08033354
orr   r1,r0                         ; 08033356
strb  r1,[r4,0x1]                   ; 08033358
ldrb  r0,[r5,0x1]                   ; 0803335A
lsl   r0,r0,0x1C                    ; 0803335C
lsr   r0,r0,0x1E                    ; 0803335E
mov   r3,0x3                        ; 08033360
and   r0,r3                         ; 08033362
lsl   r0,r0,0x2                     ; 08033364
mov   r2,0xD                        ; 08033366
neg   r2,r2                         ; 08033368
and   r2,r1                         ; 0803336A
orr   r2,r0                         ; 0803336C
strb  r2,[r4,0x1]                   ; 0803336E
ldrb  r0,[r5,0x1]                   ; 08033370
lsl   r0,r0,0x1B                    ; 08033372
lsr   r0,r0,0x1F                    ; 08033374
and   r0,r6                         ; 08033376
lsl   r0,r0,0x4                     ; 08033378
sub   r3,0x14                       ; 0803337A
and   r3,r2                         ; 0803337C
orr   r3,r0                         ; 0803337E
strb  r3,[r4,0x1]                   ; 08033380
ldrb  r0,[r5,0x1]                   ; 08033382
lsl   r0,r0,0x1A                    ; 08033384
lsr   r0,r0,0x1F                    ; 08033386
and   r0,r6                         ; 08033388
lsl   r0,r0,0x5                     ; 0803338A
mov   r1,r10                        ; 0803338C
and   r1,r3                         ; 0803338E
orr   r1,r0                         ; 08033390
strb  r1,[r4,0x1]                   ; 08033392
ldrb  r0,[r5,0x1]                   ; 08033394
lsr   r0,r0,0x6                     ; 08033396
lsl   r0,r0,0x6                     ; 08033398
mov   r2,r9                         ; 0803339A
and   r1,r2                         ; 0803339C
orr   r1,r0                         ; 0803339E
strb  r1,[r4,0x1]                   ; 080333A0
ldrh  r1,[r5,0x2]                   ; 080333A2
lsl   r1,r1,0x17                    ; 080333A4
lsr   r1,r1,0x17                    ; 080333A6
add   r1,r1,r7                      ; 080333A8
ldr   r3,=0x01FF                    ; 080333AA
mov   r0,r3                         ; 080333AC
and   r1,r0                         ; 080333AE
ldrh  r2,[r4,0x2]                   ; 080333B0
ldr   r0,=0xFFFFFE00                ; 080333B2
and   r0,r2                         ; 080333B4
orr   r0,r1                         ; 080333B6
strh  r0,[r4,0x2]                   ; 080333B8
mov   r1,0x7                        ; 080333BA
ldr   r0,[sp]                       ; 080333BC
and   r0,r1                         ; 080333BE
lsl   r0,r0,0x1                     ; 080333C0
ldrb  r2,[r4,0x3]                   ; 080333C2
mov   r1,0xF                        ; 080333C4
neg   r1,r1                         ; 080333C6
and   r1,r2                         ; 080333C8
orr   r1,r0                         ; 080333CA
strb  r1,[r4,0x3]                   ; 080333CC
ldrb  r0,[r5,0x3]                   ; 080333CE
lsl   r0,r0,0x1B                    ; 080333D0
lsr   r0,r0,0x1F                    ; 080333D2
and   r0,r6                         ; 080333D4
lsl   r0,r0,0x4                     ; 080333D6
mov   r2,0x11                       ; 080333D8
neg   r2,r2                         ; 080333DA
and   r2,r1                         ; 080333DC
orr   r2,r0                         ; 080333DE
strb  r2,[r4,0x3]                   ; 080333E0
ldrb  r0,[r5,0x3]                   ; 080333E2
lsl   r0,r0,0x1A                    ; 080333E4
lsr   r0,r0,0x1F                    ; 080333E6
and   r0,r6                         ; 080333E8
lsl   r0,r0,0x5                     ; 080333EA
mov   r1,r10                        ; 080333EC
and   r1,r2                         ; 080333EE
orr   r1,r0                         ; 080333F0
strb  r1,[r4,0x3]                   ; 080333F2
ldrb  r0,[r5,0x3]                   ; 080333F4
lsr   r0,r0,0x6                     ; 080333F6
lsl   r0,r0,0x6                     ; 080333F8
mov   r2,r9                         ; 080333FA
and   r1,r2                         ; 080333FC
orr   r1,r0                         ; 080333FE
strb  r1,[r4,0x3]                   ; 08033400
ldrh  r1,[r5,0x4]                   ; 08033402
lsl   r1,r1,0x16                    ; 08033404
lsr   r1,r1,0x16                    ; 08033406
ldrh  r2,[r4,0x4]                   ; 08033408
ldr   r0,=0xFFFFFC00                ; 0803340A
and   r0,r2                         ; 0803340C
orr   r0,r1                         ; 0803340E
strh  r0,[r4,0x4]                   ; 08033410
ldrb  r1,[r5,0x5]                   ; 08033412
lsr   r1,r1,0x4                     ; 08033414
lsl   r1,r1,0x2                     ; 08033416
ldrb  r2,[r4,0x5]                   ; 08033418
mov   r0,0x3D                       ; 0803341A
neg   r0,r0                         ; 0803341C
and   r0,r2                         ; 0803341E
orr   r0,r1                         ; 08033420
strb  r0,[r4,0x5]                   ; 08033422
mov   r3,r8                         ; 08033424
strh  r3,[r4,0x8]                   ; 08033426
add   r4,0xC                        ; 08033428
add   r5,0x8                        ; 0803342A
ldrh  r0,[r5,0x6]                   ; 0803342C
ldr   r1,=0xFFFF                    ; 0803342E
cmp   r0,r1                         ; 08033430
bne   @@Code08033336                ; 08033432
b     @@Code080335A2                ; 08033434
.pool                               ; 08033436

@@Code08033460:
cmp   r7,0xF0                       ; 08033460
bls   @@Code08033466                ; 08033462
b     @@Code080335A2                ; 08033464
@@Code08033466:
mov   r3,r12                        ; 08033466
cmp   r3,0xA0                       ; 08033468
bls   @@Code0803346E                ; 0803346A
b     @@Code080335A2                ; 0803346C
@@Code0803346E:
ldrh  r1,[r5,0x6]                   ; 0803346E
ldr   r0,=0xFFFF                    ; 08033470
cmp   r1,r0                         ; 08033472
bne   @@Code08033478                ; 08033474
b     @@Code080335A2                ; 08033476
@@Code08033478:
mov   r6,0x1                        ; 08033478
mov   r10,r2                        ; 0803347A
mov   r0,0x3F                       ; 0803347C
mov   r9,r0                         ; 0803347E
@@Code08033480:
ldrh  r0,[r5,0x2]                   ; 08033480
lsl   r0,r0,0x17                    ; 08033482
lsr   r0,r0,0x17                    ; 08033484
add   r0,r7,r0                      ; 08033486
ldr   r1,=0x01FF                    ; 08033488
and   r0,r1                         ; 0803348A
ldr   r2,=0xFFFFFEF7                ; 0803348C
add   r0,r0,r2                      ; 0803348E
lsl   r0,r0,0x10                    ; 08033490
lsr   r0,r0,0x10                    ; 08033492
cmp   r0,0xE6                       ; 08033494
bls   @@Code08033596                ; 08033496
ldrb  r0,[r5]                       ; 08033498
add   r0,r12                        ; 0803349A
mov   r1,0xFF                       ; 0803349C
and   r0,r1                         ; 0803349E
sub   r0,0xA1                       ; 080334A0
cmp   r0,0x3E                       ; 080334A2
bls   @@Code08033596                ; 080334A4
mov   r3,r10                        ; 080334A6
ldrh  r0,[r3]                       ; 080334A8
add   r0,0x1                        ; 080334AA
strh  r0,[r3]                       ; 080334AC
ldrb  r0,[r5]                       ; 080334AE
add   r0,r12                        ; 080334B0
strb  r0,[r4]                       ; 080334B2
ldrb  r0,[r5,0x1]                   ; 080334B4
lsl   r0,r0,0x1E                    ; 080334B6
lsr   r0,r0,0x1E                    ; 080334B8
mov   r1,0x3                        ; 080334BA
and   r0,r1                         ; 080334BC
ldrb  r2,[r4,0x1]                   ; 080334BE
sub   r1,0x7                        ; 080334C0
and   r1,r2                         ; 080334C2
orr   r1,r0                         ; 080334C4
strb  r1,[r4,0x1]                   ; 080334C6
ldrb  r0,[r5,0x1]                   ; 080334C8
lsl   r0,r0,0x1C                    ; 080334CA
lsr   r0,r0,0x1E                    ; 080334CC
mov   r2,0x3                        ; 080334CE
and   r0,r2                         ; 080334D0
lsl   r0,r0,0x2                     ; 080334D2
sub   r2,0x10                       ; 080334D4
and   r2,r1                         ; 080334D6
orr   r2,r0                         ; 080334D8
strb  r2,[r4,0x1]                   ; 080334DA
ldrb  r0,[r5,0x1]                   ; 080334DC
lsl   r0,r0,0x1B                    ; 080334DE
lsr   r0,r0,0x1F                    ; 080334E0
and   r0,r6                         ; 080334E2
lsl   r0,r0,0x4                     ; 080334E4
mov   r3,0x11                       ; 080334E6
neg   r3,r3                         ; 080334E8
and   r3,r2                         ; 080334EA
orr   r3,r0                         ; 080334EC
strb  r3,[r4,0x1]                   ; 080334EE
ldrb  r0,[r5,0x1]                   ; 080334F0
lsl   r0,r0,0x1A                    ; 080334F2
lsr   r0,r0,0x1F                    ; 080334F4
and   r0,r6                         ; 080334F6
lsl   r0,r0,0x5                     ; 080334F8
mov   r1,0x21                       ; 080334FA
neg   r1,r1                         ; 080334FC
and   r1,r3                         ; 080334FE
orr   r1,r0                         ; 08033500
strb  r1,[r4,0x1]                   ; 08033502
ldrb  r0,[r5,0x1]                   ; 08033504
lsr   r0,r0,0x6                     ; 08033506
lsl   r0,r0,0x6                     ; 08033508
mov   r3,r9                         ; 0803350A
and   r1,r3                         ; 0803350C
orr   r1,r0                         ; 0803350E
strb  r1,[r4,0x1]                   ; 08033510
ldrh  r1,[r5,0x2]                   ; 08033512
lsl   r1,r1,0x17                    ; 08033514
lsr   r1,r1,0x17                    ; 08033516
add   r1,r1,r7                      ; 08033518
ldr   r0,=0x01FF                    ; 0803351A
and   r1,r0                         ; 0803351C
ldrh  r2,[r4,0x2]                   ; 0803351E
ldr   r0,=0xFFFFFE00                ; 08033520
and   r0,r2                         ; 08033522
orr   r0,r1                         ; 08033524
strh  r0,[r4,0x2]                   ; 08033526
ldrb  r1,[r5,0x3]                   ; 08033528
mov   r0,0xE                        ; 0803352A
and   r0,r1                         ; 0803352C
ldrb  r2,[r4,0x3]                   ; 0803352E
mov   r1,0xF                        ; 08033530
neg   r1,r1                         ; 08033532
and   r1,r2                         ; 08033534
orr   r1,r0                         ; 08033536
strb  r1,[r4,0x3]                   ; 08033538
ldrb  r0,[r5,0x3]                   ; 0803353A
lsl   r0,r0,0x1B                    ; 0803353C
lsr   r0,r0,0x1F                    ; 0803353E
and   r0,r6                         ; 08033540
lsl   r0,r0,0x4                     ; 08033542
mov   r2,0x11                       ; 08033544
neg   r2,r2                         ; 08033546
and   r2,r1                         ; 08033548
orr   r2,r0                         ; 0803354A
strb  r2,[r4,0x3]                   ; 0803354C
ldrb  r0,[r5,0x3]                   ; 0803354E
lsl   r0,r0,0x1A                    ; 08033550
lsr   r0,r0,0x1F                    ; 08033552
and   r0,r6                         ; 08033554
lsl   r0,r0,0x5                     ; 08033556
mov   r1,0x21                       ; 08033558
neg   r1,r1                         ; 0803355A
and   r1,r2                         ; 0803355C
orr   r1,r0                         ; 0803355E
strb  r1,[r4,0x3]                   ; 08033560
ldrb  r0,[r5,0x3]                   ; 08033562
lsr   r0,r0,0x6                     ; 08033564
lsl   r0,r0,0x6                     ; 08033566
and   r1,r3                         ; 08033568
orr   r1,r0                         ; 0803356A
strb  r1,[r4,0x3]                   ; 0803356C
ldrh  r1,[r5,0x4]                   ; 0803356E
lsl   r1,r1,0x16                    ; 08033570
lsr   r1,r1,0x16                    ; 08033572
ldrh  r2,[r4,0x4]                   ; 08033574
ldr   r0,=0xFFFFFC00                ; 08033576
and   r0,r2                         ; 08033578
orr   r0,r1                         ; 0803357A
strh  r0,[r4,0x4]                   ; 0803357C
ldrb  r1,[r5,0x5]                   ; 0803357E
lsr   r1,r1,0x4                     ; 08033580
lsl   r1,r1,0x2                     ; 08033582
ldrb  r2,[r4,0x5]                   ; 08033584
mov   r0,0x3D                       ; 08033586
neg   r0,r0                         ; 08033588
and   r0,r2                         ; 0803358A
orr   r0,r1                         ; 0803358C
strb  r0,[r4,0x5]                   ; 0803358E
mov   r1,r8                         ; 08033590
strh  r1,[r4,0x8]                   ; 08033592
add   r4,0xC                        ; 08033594
@@Code08033596:
add   r5,0x8                        ; 08033596
ldrh  r1,[r5,0x6]                   ; 08033598
ldr   r0,=0xFFFF                    ; 0803359A
cmp   r1,r0                         ; 0803359C
beq   @@Code080335A2                ; 0803359E
b     @@Code08033480                ; 080335A0
@@Code080335A2:
add   sp,0x4                        ; 080335A2
pop   {r3-r5}                       ; 080335A4
mov   r8,r3                         ; 080335A6
mov   r9,r4                         ; 080335A8
mov   r10,r5                        ; 080335AA
pop   {r4-r7}                       ; 080335AC
pop   {r0}                          ; 080335AE
bx    r0                            ; 080335B0
.pool                               ; 080335B2

Sub080335C8:
push  {r4-r7,lr}                    ; 080335C8
mov   r7,r10                        ; 080335CA
mov   r6,r9                         ; 080335CC
mov   r5,r8                         ; 080335CE
push  {r5-r7}                       ; 080335D0
add   sp,-0x4                       ; 080335D2
mov   r7,r0                         ; 080335D4
ldr   r0,=0x03002200                ; 080335D6
ldr   r2,=0x47D0                    ; 080335D8
add   r1,r0,r2                      ; 080335DA
ldrh  r1,[r1]                       ; 080335DC
mov   r4,r0                         ; 080335DE
cmp   r1,0x0                        ; 080335E0
bne   @@Code080335E6                ; 080335E2
b     @@Code080337FC                ; 080335E4
@@Code080335E6:
mov   r6,0x0                        ; 080335E6
ldr   r0,=0x1B64                    ; 080335E8
add   r0,r0,r7                      ; 080335EA
mov   r9,r0                         ; 080335EC
ldr   r1,=0x1B64                    ; 080335EE
add   r2,r7,r1                      ; 080335F0
mov   r3,0xFF                       ; 080335F2
@@Code080335F4:
add   r1,r2,r6                      ; 080335F4
ldrb  r0,[r1]                       ; 080335F6
orr   r0,r3                         ; 080335F8
strb  r0,[r1]                       ; 080335FA
mov   r1,r6                         ; 080335FC
add   r1,0x40                       ; 080335FE
add   r1,r2,r1                      ; 08033600
ldrb  r0,[r1]                       ; 08033602
orr   r0,r3                         ; 08033604
strb  r0,[r1]                       ; 08033606
add   r0,r6,0x1                     ; 08033608
lsl   r0,r0,0x10                    ; 0803360A
lsr   r6,r0,0x10                    ; 0803360C
cmp   r6,0x3F                       ; 0803360E
bls   @@Code080335F4                ; 08033610
mov   r6,0x0                        ; 08033612
ldr   r2,=0x47D0                    ; 08033614
add   r0,r4,r2                      ; 08033616
ldrh  r1,[r0]                       ; 08033618
cmp   r6,r1                         ; 0803361A
bhs   @@Code080336BC                ; 0803361C
ldr   r0,=0x1090                    ; 0803361E
mov   r8,r0                         ; 08033620
ldr   r0,=0x1B64                    ; 08033622
add   r5,r7,r0                      ; 08033624
mov   r10,r0                        ; 08033626
str   r1,[sp]                       ; 08033628
@@Code0803362A:
lsl   r0,r6,0x1                     ; 0803362A
add   r0,r0,r6                      ; 0803362C
lsl   r0,r0,0x2                     ; 0803362E
add   r0,r7,r0                      ; 08033630
add   r0,r8                         ; 08033632
ldrh  r3,[r0]                       ; 08033634
mov   r4,0x0                        ; 08033636
add   r1,r6,0x1                     ; 08033638
mov   r12,r1                        ; 0803363A
cmp   r4,r6                         ; 0803363C
bhs   @@Code08033672                ; 0803363E
mov   r2,r9                         ; 08033640
ldrb  r0,[r2]                       ; 08033642
cmp   r0,0xFF                       ; 08033644
beq   @@Code0803367A                ; 08033646
mov   r0,r10                        ; 08033648
add   r1,r7,r0                      ; 0803364A
@@Code0803364C:
add   r0,r1,r4                      ; 0803364C
ldrb  r2,[r0]                       ; 0803364E
lsl   r0,r2,0x1                     ; 08033650
add   r0,r0,r2                      ; 08033652
lsl   r0,r0,0x2                     ; 08033654
add   r0,r7,r0                      ; 08033656
add   r0,r8                         ; 08033658
ldrh  r0,[r0]                       ; 0803365A
cmp   r3,r0                         ; 0803365C
blo   @@Code08033672                ; 0803365E
add   r0,r4,0x1                     ; 08033660
lsl   r0,r0,0x10                    ; 08033662
lsr   r4,r0,0x10                    ; 08033664
cmp   r4,r6                         ; 08033666
bhs   @@Code08033672                ; 08033668
add   r0,r1,r4                      ; 0803366A
ldrb  r0,[r0]                       ; 0803366C
cmp   r0,0xFF                       ; 0803366E
bne   @@Code0803364C                ; 08033670
@@Code08033672:
add   r0,r5,r4                      ; 08033672
ldrb  r0,[r0]                       ; 08033674
cmp   r0,0xFF                       ; 08033676
bne   @@Code08033690                ; 08033678
@@Code0803367A:
add   r0,r5,r4                      ; 0803367A
strb  r6,[r0]                       ; 0803367C
b     @@Code080336B0                ; 0803367E
.pool                               ; 08033680

@@Code08033690:
mov   r1,r6                         ; 08033690
mov   r2,r10                        ; 08033692
add   r3,r7,r2                      ; 08033694
@@Code08033696:
add   r0,r3,r4                      ; 08033696
ldrb  r2,[r0]                       ; 08033698
strb  r1,[r0]                       ; 0803369A
mov   r1,r2                         ; 0803369C
add   r0,r4,0x1                     ; 0803369E
lsl   r0,r0,0x10                    ; 080336A0
lsr   r4,r0,0x10                    ; 080336A2
add   r0,r3,r4                      ; 080336A4
ldrb  r0,[r0]                       ; 080336A6
cmp   r0,0xFF                       ; 080336A8
bne   @@Code08033696                ; 080336AA
add   r0,r5,r4                      ; 080336AC
strb  r2,[r0]                       ; 080336AE
@@Code080336B0:
mov   r1,r12                        ; 080336B0
lsl   r0,r1,0x10                    ; 080336B2
lsr   r6,r0,0x10                    ; 080336B4
ldr   r2,[sp]                       ; 080336B6
cmp   r6,r2                         ; 080336B8
blo   @@Code0803362A                ; 080336BA
@@Code080336BC:
ldr   r5,=0x03005A00                ; 080336BC
mov   r6,0x0                        ; 080336BE
mov   r1,r9                         ; 080336C0
ldrb  r0,[r1]                       ; 080336C2
cmp   r0,0xFF                       ; 080336C4
bne   @@Code080336CA                ; 080336C6
b     @@Code080337FC                ; 080336C8
@@Code080336CA:
ldr   r2,=0x1B64                    ; 080336CA
add   r2,r2,r7                      ; 080336CC
mov   r8,r2                         ; 080336CE
mov   r0,0x3                        ; 080336D0
mov   r9,r0                         ; 080336D2
mov   r1,0x1                        ; 080336D4
mov   r12,r1                        ; 080336D6
mov   r2,0x3F                       ; 080336D8
mov   r10,r2                        ; 080336DA
@@Code080336DC:
mov   r1,r8                         ; 080336DC
add   r0,r1,r6                      ; 080336DE
ldrb  r0,[r0]                       ; 080336E0
lsl   r4,r0,0x1                     ; 080336E2
add   r4,r4,r0                      ; 080336E4
lsl   r4,r4,0x2                     ; 080336E6
ldr   r2,=0x1088                    ; 080336E8
add   r4,r4,r2                      ; 080336EA
add   r4,r7,r4                      ; 080336EC
ldrb  r0,[r4]                       ; 080336EE
strb  r0,[r5]                       ; 080336F0
ldrb  r0,[r4,0x1]                   ; 080336F2
lsl   r0,r0,0x1E                    ; 080336F4
lsr   r0,r0,0x1E                    ; 080336F6
mov   r1,r9                         ; 080336F8
and   r0,r1                         ; 080336FA
ldrb  r2,[r5,0x1]                   ; 080336FC
mov   r1,0x4                        ; 080336FE
neg   r1,r1                         ; 08033700
and   r1,r2                         ; 08033702
orr   r1,r0                         ; 08033704
strb  r1,[r5,0x1]                   ; 08033706
ldrb  r0,[r4,0x1]                   ; 08033708
lsl   r0,r0,0x1C                    ; 0803370A
lsr   r0,r0,0x1E                    ; 0803370C
mov   r2,r9                         ; 0803370E
and   r0,r2                         ; 08033710
lsl   r0,r0,0x2                     ; 08033712
mov   r2,0xD                        ; 08033714
neg   r2,r2                         ; 08033716
and   r2,r1                         ; 08033718
orr   r2,r0                         ; 0803371A
strb  r2,[r5,0x1]                   ; 0803371C
ldrb  r0,[r4,0x1]                   ; 0803371E
lsl   r0,r0,0x1B                    ; 08033720
lsr   r0,r0,0x1F                    ; 08033722
mov   r1,r12                        ; 08033724
and   r0,r1                         ; 08033726
lsl   r0,r0,0x4                     ; 08033728
mov   r3,0x11                       ; 0803372A
neg   r3,r3                         ; 0803372C
and   r3,r2                         ; 0803372E
orr   r3,r0                         ; 08033730
strb  r3,[r5,0x1]                   ; 08033732
ldrb  r0,[r4,0x1]                   ; 08033734
lsl   r0,r0,0x1A                    ; 08033736
lsr   r0,r0,0x1F                    ; 08033738
and   r0,r1                         ; 0803373A
lsl   r0,r0,0x5                     ; 0803373C
mov   r1,0x21                       ; 0803373E
neg   r1,r1                         ; 08033740
and   r1,r3                         ; 08033742
orr   r1,r0                         ; 08033744
strb  r1,[r5,0x1]                   ; 08033746
ldrb  r0,[r4,0x1]                   ; 08033748
lsr   r0,r0,0x6                     ; 0803374A
lsl   r0,r0,0x6                     ; 0803374C
mov   r2,r10                        ; 0803374E
and   r1,r2                         ; 08033750
orr   r1,r0                         ; 08033752
strb  r1,[r5,0x1]                   ; 08033754
ldrh  r1,[r4,0x2]                   ; 08033756
lsl   r1,r1,0x17                    ; 08033758
lsr   r1,r1,0x17                    ; 0803375A
ldrh  r2,[r5,0x2]                   ; 0803375C
ldr   r0,=0xFFFFFE00                ; 0803375E
and   r0,r2                         ; 08033760
orr   r0,r1                         ; 08033762
strh  r0,[r5,0x2]                   ; 08033764
ldrb  r1,[r4,0x3]                   ; 08033766
mov   r0,0xE                        ; 08033768
and   r0,r1                         ; 0803376A
ldrb  r2,[r5,0x3]                   ; 0803376C
mov   r1,0xF                        ; 0803376E
neg   r1,r1                         ; 08033770
and   r1,r2                         ; 08033772
orr   r1,r0                         ; 08033774
strb  r1,[r5,0x3]                   ; 08033776
ldrb  r0,[r4,0x3]                   ; 08033778
lsl   r0,r0,0x1B                    ; 0803377A
lsr   r0,r0,0x1F                    ; 0803377C
mov   r2,r12                        ; 0803377E
and   r0,r2                         ; 08033780
lsl   r0,r0,0x4                     ; 08033782
mov   r2,0x11                       ; 08033784
neg   r2,r2                         ; 08033786
and   r2,r1                         ; 08033788
orr   r2,r0                         ; 0803378A
strb  r2,[r5,0x3]                   ; 0803378C
ldrb  r0,[r4,0x3]                   ; 0803378E
lsl   r0,r0,0x1A                    ; 08033790
lsr   r0,r0,0x1F                    ; 08033792
mov   r1,r12                        ; 08033794
and   r0,r1                         ; 08033796
lsl   r0,r0,0x5                     ; 08033798
mov   r1,0x21                       ; 0803379A
neg   r1,r1                         ; 0803379C
and   r1,r2                         ; 0803379E
orr   r1,r0                         ; 080337A0
strb  r1,[r5,0x3]                   ; 080337A2
ldrb  r0,[r4,0x3]                   ; 080337A4
lsr   r0,r0,0x6                     ; 080337A6
lsl   r0,r0,0x6                     ; 080337A8
mov   r2,r10                        ; 080337AA
and   r1,r2                         ; 080337AC
orr   r1,r0                         ; 080337AE
strb  r1,[r5,0x3]                   ; 080337B0
ldrh  r1,[r4,0x4]                   ; 080337B2
lsl   r1,r1,0x16                    ; 080337B4
lsr   r1,r1,0x16                    ; 080337B6
ldrh  r2,[r5,0x4]                   ; 080337B8
ldr   r0,=0xFFFFFC00                ; 080337BA
and   r0,r2                         ; 080337BC
orr   r0,r1                         ; 080337BE
strh  r0,[r5,0x4]                   ; 080337C0
ldrh  r0,[r4,0x8]                   ; 080337C2
lsr   r0,r0,0x8                     ; 080337C4
mov   r1,r9                         ; 080337C6
and   r0,r1                         ; 080337C8
lsl   r0,r0,0x2                     ; 080337CA
ldrb  r2,[r5,0x5]                   ; 080337CC
mov   r1,0xD                        ; 080337CE
neg   r1,r1                         ; 080337D0
and   r1,r2                         ; 080337D2
orr   r1,r0                         ; 080337D4
strb  r1,[r5,0x5]                   ; 080337D6
ldrb  r0,[r4,0x5]                   ; 080337D8
lsl   r0,r0,0x1A                    ; 080337DA
lsr   r0,r0,0x1C                    ; 080337DC
lsl   r0,r0,0x4                     ; 080337DE
mov   r2,0xF                        ; 080337E0
and   r1,r2                         ; 080337E2
orr   r1,r0                         ; 080337E4
strb  r1,[r5,0x5]                   ; 080337E6
add   r5,0x8                        ; 080337E8
add   r0,r6,0x1                     ; 080337EA
lsl   r0,r0,0x10                    ; 080337EC
lsr   r6,r0,0x10                    ; 080337EE
mov   r2,r8                         ; 080337F0
add   r0,r2,r6                      ; 080337F2
ldrb  r0,[r0]                       ; 080337F4
cmp   r0,0xFF                       ; 080337F6
beq   @@Code080337FC                ; 080337F8
b     @@Code080336DC                ; 080337FA
@@Code080337FC:
add   sp,0x4                        ; 080337FC
pop   {r3-r5}                       ; 080337FE
mov   r8,r3                         ; 08033800
mov   r9,r4                         ; 08033802
mov   r10,r5                        ; 08033804
pop   {r4-r7}                       ; 08033806
pop   {r0}                          ; 08033808
bx    r0                            ; 0803380A
.pool                               ; 0803380C

Sub08033820:
push  {r4-r5,lr}                    ; 08033820
ldr   r1,=0x03002200                ; 08033822
ldr   r2,=0x417C                    ; 08033824
add   r0,r1,r2                      ; 08033826
ldr   r4,[r0]                       ; 08033828
cmp   r4,0x0                        ; 0803382A
beq   @@Code08033858                ; 0803382C
ldr   r3,=0x04000014                ; 0803382E
ldr   r0,=0x04000006                ; 08033830
ldrh  r2,[r0]                       ; 08033832
lsl   r2,r2,0x1                     ; 08033834
ldr   r5,=0x4901                    ; 08033836
add   r0,r1,r5                      ; 08033838
ldrb  r0,[r0]                       ; 0803383A
mov   r1,0x1                        ; 0803383C
and   r1,r0                         ; 0803383E
lsl   r0,r1,0x2                     ; 08033840
add   r0,r0,r1                      ; 08033842
lsl   r0,r0,0x6                     ; 08033844
add   r2,r2,r0                      ; 08033846
ldr   r1,=0x1688                    ; 08033848
add   r0,r4,r1                      ; 0803384A
add   r0,r0,r2                      ; 0803384C
ldrh  r0,[r0]                       ; 0803384E
strh  r0,[r3]                       ; 08033850
ldr   r1,=0x04000202                ; 08033852
mov   r0,0x2                        ; 08033854
strh  r0,[r1]                       ; 08033856
@@Code08033858:
pop   {r4-r5}                       ; 08033858
pop   {r0}                          ; 0803385A
bx    r0                            ; 0803385C
.pool                               ; 0803385E

Sub0803387C:
push  {lr}                          ; 0803387C
ldr   r2,=0x04000004                ; 0803387E
ldrh  r1,[r2]                       ; 08033880
mov   r0,0x4                        ; 08033882
and   r0,r1                         ; 08033884
cmp   r0,0x0                        ; 08033886
beq   @@Code080338A2                ; 08033888
mov   r3,0x2                        ; 0803388A
@@Code0803388C:
ldrh  r1,[r2]                       ; 0803388C
mov   r0,r3                         ; 0803388E
and   r0,r1                         ; 08033890
cmp   r0,0x0                        ; 08033892
beq   @@Code0803388C                ; 08033894
mov   r1,0x80                       ; 08033896
lsl   r1,r1,0x13                    ; 08033898
mov   r2,0x80                       ; 0803389A
lsl   r2,r2,0x4                     ; 0803389C
mov   r0,r2                         ; 0803389E
strh  r0,[r1]                       ; 080338A0
@@Code080338A2:
ldr   r1,=0x04000202                ; 080338A2
mov   r0,0x4                        ; 080338A4
strh  r0,[r1]                       ; 080338A6
pop   {r0}                          ; 080338A8
bx    r0                            ; 080338AA
.pool                               ; 080338AC

StoryIntroMain:
; Game state 05: Story intro
push  {r4-r7,lr}                    ; 080338B4
ldr   r2,=0x03002200                ; 080338B6
ldr   r1,=0x417C                    ; 080338B8
add   r0,r2,r1                      ; 080338BA
ldr   r4,[r0]                       ; 080338BC
ldr   r3,=0x1B5E                    ; 080338BE
add   r1,r4,r3                      ; 080338C0
ldrh  r0,[r1]                       ; 080338C2
sub   r0,0x1                        ; 080338C4
strh  r0,[r1]                       ; 080338C6
lsl   r0,r0,0x10                    ; 080338C8
cmp   r0,0x0                        ; 080338CA
beq   @@Code080338DC                ; 080338CC
ldr   r5,=0x47C0                    ; 080338CE
add   r0,r2,r5                      ; 080338D0
ldrh  r0,[r0]                       ; 080338D2
mov   r1,0x9                        ; 080338D4
and   r1,r0                         ; 080338D6
cmp   r1,0x0                        ; 080338D8
beq   @@Code080338F4                ; 080338DA
@@Code080338DC:
bl    Sub08032C98                   ; 080338DC
b     @@Code0803392E                ; 080338E0
.pool                               ; 080338E2

@@Code080338F4:
ldr   r6,=0x47D0                    ; 080338F4
add   r0,r2,r6                      ; 080338F6
strh  r1,[r0]                       ; 080338F8
bl    InitOAMBuffer03005A00         ; 080338FA
ldr   r7,=0x1088                    ; 080338FE
add   r2,r4,r7                      ; 08033900
mov   r3,0x0                        ; 08033902
ldr   r0,=Data0816B814              ; 08033904
mov   r12,r0                        ; 08033906
@@Code08033908:
mov   r0,r2                         ; 08033908
mov   r1,r12                        ; 0803390A
ldmia r1!,{r5-r7}                   ; 0803390C
stmia r0!,{r5-r7}                   ; 0803390E
add   r2,0xC                        ; 08033910
add   r0,r3,0x1                     ; 08033912
lsl   r0,r0,0x10                    ; 08033914
lsr   r3,r0,0x10                    ; 08033916
cmp   r3,0x7F                       ; 08033918
bls   @@Code08033908                ; 0803391A
mov   r0,r4                         ; 0803391C
bl    Sub080331B4                   ; 0803391E
mov   r0,r4                         ; 08033922
bl    Sub08032D34                   ; 08033924
mov   r0,r4                         ; 08033928
bl    Sub08032D6C                   ; 0803392A
@@Code0803392E:
pop   {r4-r7}                       ; 0803392E
pop   {r0}                          ; 08033930
bx    r0                            ; 08033932
.pool                               ; 08033934

ToadiesCutsceneMain:
; Game state 13: Toadies take Baby Mario cutscene
push  {r4-r7,lr}                    ; 08033940
ldr   r0,=0x03002200                ; 08033942
ldr   r2,=0x417C                    ; 08033944
add   r1,r0,r2                      ; 08033946
ldr   r4,[r1]                       ; 08033948
ldr   r5,=0x47D0                    ; 0803394A
add   r0,r0,r5                      ; 0803394C
mov   r1,0x0                        ; 0803394E
strh  r1,[r0]                       ; 08033950
bl    InitOAMBuffer03005A00         ; 08033952
ldr   r6,=0x1088                    ; 08033956
add   r2,r4,r6                      ; 08033958
mov   r3,0x0                        ; 0803395A
ldr   r7,=Data0816B814              ; 0803395C
mov   r12,r7                        ; 0803395E
@@Code08033960:
mov   r0,r2                         ; 08033960
mov   r1,r12                        ; 08033962
ldmia r1!,{r5-r7}                   ; 08033964
stmia r0!,{r5-r7}                   ; 08033966
add   r2,0xC                        ; 08033968
add   r0,r3,0x1                     ; 0803396A
lsl   r0,r0,0x10                    ; 0803396C
lsr   r3,r0,0x10                    ; 0803396E
cmp   r3,0x7F                       ; 08033970
bls   @@Code08033960                ; 08033972
mov   r0,r4                         ; 08033974
bl    Sub08032D34                   ; 08033976
mov   r0,r4                         ; 0803397A
bl    Sub08032D6C                   ; 0803397C
ldr   r1,=0x1908                    ; 08033980
add   r0,r4,r1                      ; 08033982
ldrh  r0,[r0]                       ; 08033984
cmp   r0,0x0                        ; 08033986
beq   @@Code080339F8                ; 08033988
ldr   r5,=0x03002200                ; 0803398A
ldr   r2,=0x4905                    ; 0803398C
add   r1,r5,r2                      ; 0803398E
mov   r6,0x0                        ; 08033990
mov   r0,0x28                       ; 08033992
strb  r0,[r1]                       ; 08033994
ldr   r7,=0x4A06                    ; 08033996
add   r0,r5,r7                      ; 08033998
ldrb  r0,[r0]                       ; 0803399A
cmp   r0,0x0                        ; 0803399C
beq   @@Code080339A4                ; 0803399E
mov   r0,0x24                       ; 080339A0
strb  r0,[r1]                       ; 080339A2
@@Code080339A4:
ldr   r2,=0x407E                    ; 080339A4
add   r0,r5,r2                      ; 080339A6
ldrh  r0,[r0]                       ; 080339A8
cmp   r0,0x0                        ; 080339AA
bne   @@Code080339B2                ; 080339AC
mov   r0,0x2C                       ; 080339AE
strb  r0,[r1]                       ; 080339B0
@@Code080339B2:
ldr   r7,=0x417C                    ; 080339B2
add   r4,r5,r7                      ; 080339B4
ldr   r1,[r4]                       ; 080339B6
cmp   r1,0x0                        ; 080339B8
beq   @@Code080339C4                ; 080339BA
mov   r0,r5                         ; 080339BC
bl    DynamicDeallocate             ; 080339BE
str   r6,[r4]                       ; 080339C2
@@Code080339C4:
mov   r0,0x83                       ; 080339C4
lsl   r0,r0,0x7                     ; 080339C6
add   r4,r5,r0                      ; 080339C8
ldr   r1,[r4]                       ; 080339CA
cmp   r1,0x0                        ; 080339CC
beq   @@Code080339DC                ; 080339CE
sub   r1,0x1                        ; 080339D0
str   r1,[r4]                       ; 080339D2
mov   r0,r5                         ; 080339D4
bl    DynamicDeallocate             ; 080339D6
str   r6,[r4]                       ; 080339DA
@@Code080339DC:
ldr   r1,=0x4188                    ; 080339DC
add   r4,r5,r1                      ; 080339DE
ldr   r1,[r4]                       ; 080339E0
cmp   r1,0x0                        ; 080339E2
beq   @@Code080339F2                ; 080339E4
sub   r1,0x1                        ; 080339E6
str   r1,[r4]                       ; 080339E8
mov   r0,r5                         ; 080339EA
bl    DynamicDeallocate             ; 080339EC
str   r6,[r4]                       ; 080339F0
@@Code080339F2:
ldr   r2,=0x48F6                    ; 080339F2
add   r0,r5,r2                      ; 080339F4
strb  r6,[r0]                       ; 080339F6
@@Code080339F8:
pop   {r4-r7}                       ; 080339F8
pop   {r0}                          ; 080339FA
bx    r0                            ; 080339FC
.pool                               ; 080339FE
