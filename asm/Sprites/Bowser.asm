Sub08102208:
push  {r4-r5,lr}                ; 08102208
ldr   r5,=0x03006210            ; 0810220A
mov   r0,r5                     ; 0810220C
bl    Sub0810B3D8               ; 0810220E
mov   r4,r0                     ; 08102212
ldr   r0,=0x020293D0            ; 08102214
mov   r1,r4                     ; 08102216
mov   r2,0x50                   ; 08102218
bl    swi_MemoryCopy32          ; 0810221A  Memory copy/fill, 32-byte blocks
mov   r0,0xA0                   ; 0810221E
lsl   r0,r0,0x1                 ; 08102220
add   r4,r4,r0                  ; 08102222
mov   r0,0x0                    ; 08102224
strh  r0,[r4]                   ; 08102226
mov   r0,r5                     ; 08102228
bl    Sub0810B394               ; 0810222A
mov   r1,0xA0                   ; 0810222E
lsl   r1,r1,0x13                ; 08102230
mov   r0,r5                     ; 08102232
mov   r2,0x2                    ; 08102234
bl    Sub0810B308               ; 08102236
mov   r0,r5                     ; 0810223A
bl    Sub0810B354               ; 0810223C
pop   {r4-r5}                   ; 08102240
pop   {r0}                      ; 08102242
bx    r0                        ; 08102244
.pool                           ; 08102246

Sub08102250:
push  {lr}                      ; 08102250
bl    Sub0804BEB8               ; 08102252
pop   {r1}                      ; 08102256
bx    r1                        ; 08102258
.pool                           ; 0810225A

Sub0810225C:
push  {lr}                      ; 0810225C
mov   r3,r0                     ; 0810225E
add   r0,0x94                   ; 08102260
ldrb  r1,[r0]                   ; 08102262
mov   r0,0x80                   ; 08102264
and   r0,r1                     ; 08102266
cmp   r0,0x0                    ; 08102268
bne   @@Code081022A4            ; 0810226A
mov   r1,0x34                   ; 0810226C
ldsh  r0,[r3,r1]                ; 0810226E
cmp   r0,0x0                    ; 08102270
blt   @@Code081022A4            ; 08102272
ldr   r0,=0x03007240            ; 08102274  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 08102276
mov   r0,r3                     ; 08102278
add   r0,0x98                   ; 0810227A
ldrb  r0,[r0]                   ; 0810227C
lsl   r0,r0,0x3                 ; 0810227E
ldr   r2,=0x2A32                ; 08102280
add   r1,r1,r2                  ; 08102282
strh  r0,[r1]                   ; 08102284
ldrh  r0,[r3,0x38]              ; 08102286
lsl   r1,r0,0x3                 ; 08102288
sub   r1,r1,r0                  ; 0810228A
lsl   r1,r1,0x3                 ; 0810228C
sub   r1,r1,r0                  ; 0810228E
ldr   r0,=Data081A6424          ; 08102290
add   r1,r1,r0                  ; 08102292
ldr   r0,=0x03002200            ; 08102294
ldr   r2,=0x480C                ; 08102296
add   r0,r0,r2                  ; 08102298
mov   r2,0xB                    ; 0810229A
strh  r2,[r0]                   ; 0810229C
mov   r0,r3                     ; 0810229E
bl    Sub0810BA98               ; 081022A0
@@Code081022A4:
pop   {r0}                      ; 081022A4
bx    r0                        ; 081022A6
.pool                           ; 081022A8

Sub081022BC:
push  {r4,lr}                   ; 081022BC
mov   r3,r0                     ; 081022BE
ldr   r2,=0x03006D80            ; 081022C0
mov   r0,r2                     ; 081022C2
add   r0,0x52                   ; 081022C4
ldrh  r0,[r0]                   ; 081022C6
cmp   r0,0x0                    ; 081022C8
beq   @@Code081022DA            ; 081022CA
mov   r0,r2                     ; 081022CC
add   r0,0x7A                   ; 081022CE
ldrh  r1,[r0]                   ; 081022D0
mov   r0,0x7                    ; 081022D2
and   r0,r1                     ; 081022D4
cmp   r0,0x0                    ; 081022D6
bne   @@Code081022F4            ; 081022D8
@@Code081022DA:
ldr   r0,=0x0300702C            ; 081022DA  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 081022DC
ldr   r1,=0x119A                ; 081022DE
add   r0,r0,r1                  ; 081022E0
mov   r1,0x0                    ; 081022E2
strh  r1,[r0]                   ; 081022E4
b     @@Code08102326            ; 081022E6
.pool                           ; 081022E8

@@Code081022F4:
ldr   r0,=0x0300702C            ; 081022F4  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 081022F6
ldr   r4,=0x119A                ; 081022F8
add   r1,r0,r4                  ; 081022FA
ldrh  r0,[r1]                   ; 081022FC
cmp   r0,0x0                    ; 081022FE
bne   @@Code08102326            ; 08102300
add   r0,0x1                    ; 08102302
strh  r0,[r1]                   ; 08102304
ldr   r0,=0xFFFFFDAC            ; 08102306
add   r1,r3,r0                  ; 08102308
ldr   r0,=0x03007240            ; 0810230A  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 0810230C
sub   r1,r1,r0                  ; 0810230E
ldr   r0,=0xBA2E8BA3            ; 08102310
mul   r0,r1                     ; 08102312
asr   r0,r0,0x4                 ; 08102314
mov   r1,r2                     ; 08102316
add   r1,0x98                   ; 08102318
mov   r2,0x0                    ; 0810231A
ldsh  r1,[r1,r2]                ; 0810231C
mov   r2,0x0                    ; 0810231E
mov   r3,0x10                   ; 08102320
bl    Sub081027AC               ; 08102322
@@Code08102326:
pop   {r4}                      ; 08102326
pop   {r0}                      ; 08102328
bx    r0                        ; 0810232A
.pool                           ; 0810232C

Sub08102340:
push  {r4-r7,lr}                ; 08102340
mov   r4,r0                     ; 08102342
add   r0,0x48                   ; 08102344
ldrh  r6,[r0]                   ; 08102346
cmp   r6,0x0                    ; 08102348
beq   @@Code0810234E            ; 0810234A
b     @@Code08102494            ; 0810234C
@@Code0810234E:
add   r0,0x5B                   ; 0810234E
ldrb  r0,[r0]                   ; 08102350
lsl   r0,r0,0x18                ; 08102352
asr   r0,r0,0x18                ; 08102354
cmp   r0,0x0                    ; 08102356
blt   @@Code0810235C            ; 08102358
b     @@Code08102494            ; 0810235A
@@Code0810235C:
mov   r0,r4                     ; 0810235C
add   r0,0x54                   ; 0810235E
ldr   r5,=0x03006D80            ; 08102360
mov   r1,r5                     ; 08102362
add   r1,0x9E                   ; 08102364
ldrh  r0,[r0]                   ; 08102366
ldrh  r1,[r1]                   ; 08102368
sub   r0,r0,r1                  ; 0810236A
mov   r1,r4                     ; 0810236C
add   r1,0x50                   ; 0810236E
ldrh  r1,[r1]                   ; 08102370
sub   r0,r0,r1                  ; 08102372
lsl   r0,r0,0x10                ; 08102374
ldr   r1,=0xFFF70000            ; 08102376
cmp   r0,r1                     ; 08102378
bls   @@Code08102400            ; 0810237A
ldr   r0,[r5,0xC]               ; 0810237C
cmp   r0,0x0                    ; 0810237E
bge   @@Code08102384            ; 08102380
b     @@Code08102494            ; 08102382
@@Code08102384:
ldrh  r0,[r5,0x3E]              ; 08102384
cmp   r0,0x0                    ; 08102386
bne   @@Code0810238C            ; 08102388
b     @@Code08102494            ; 0810238A
@@Code0810238C:
mov   r0,r5                     ; 0810238C
add   r0,0x52                   ; 0810238E
strh  r6,[r0]                   ; 08102390
ldr   r0,=0xFFFFFA00            ; 08102392
str   r0,[r5,0xC]               ; 08102394
mov   r0,0x6                    ; 08102396
strh  r0,[r5,0x3E]              ; 08102398
ldr   r1,=0x03002200            ; 0810239A
ldr   r0,[r4]                   ; 0810239C
asr   r0,r0,0x8                 ; 0810239E
ldr   r3,=0x47E4                ; 081023A0
add   r2,r1,r3                  ; 081023A2
ldrh  r2,[r2]                   ; 081023A4
sub   r0,r0,r2                  ; 081023A6
ldr   r2,=0x4058                ; 081023A8
add   r1,r1,r2                  ; 081023AA
strh  r0,[r1]                   ; 081023AC
mov   r0,0x94                   ; 081023AE
bl    PlayYISound               ; 081023B0
mov   r2,r4                     ; 081023B4
add   r2,0x6E                   ; 081023B6
ldrh  r0,[r2]                   ; 081023B8
cmp   r0,0x9                    ; 081023BA
bhi   @@Code08102494            ; 081023BC
str   r6,[r4,0xC]               ; 081023BE
str   r6,[r4,0x8]               ; 081023C0
mov   r0,0x2E                   ; 081023C2
strh  r0,[r4,0x38]              ; 081023C4
mov   r1,r4                     ; 081023C6
add   r1,0x44                   ; 081023C8
mov   r0,0x8                    ; 081023CA
strh  r0,[r1]                   ; 081023CC
add   r1,0x32                   ; 081023CE
mov   r0,0x3B                   ; 081023D0
strh  r0,[r1]                   ; 081023D2
add   r1,0x4                    ; 081023D4
mov   r0,0x3D                   ; 081023D6
strh  r0,[r1]                   ; 081023D8
sub   r1,0x18                   ; 081023DA
mov   r0,0x1                    ; 081023DC
strh  r0,[r1]                   ; 081023DE
mov   r0,0x7                    ; 081023E0
strh  r0,[r2]                   ; 081023E2
b     @@Code08102494            ; 081023E4
.pool                           ; 081023E6

@@Code08102400:
mov   r0,r4                     ; 08102400
add   r0,0x6E                   ; 08102402
ldrh  r0,[r0]                   ; 08102404
cmp   r0,0x3                    ; 08102406
beq   @@Code08102412            ; 08102408
mov   r0,r4                     ; 0810240A
bl    Sub080DEE74               ; 0810240C
b     @@Code08102494            ; 08102410
@@Code08102412:
mov   r3,0xD5                   ; 08102412
lsl   r3,r3,0x1                 ; 08102414
add   r0,r5,r3                  ; 08102416
ldrh  r1,[r0]                   ; 08102418
mov   r7,0x80                   ; 0810241A
lsl   r7,r7,0x8                 ; 0810241C
mov   r0,r7                     ; 0810241E
and   r0,r1                     ; 08102420
cmp   r0,0x0                    ; 08102422
beq   @@Code08102438            ; 08102424
bl    Sub080E1DC4               ; 08102426
ldr   r0,=0x03007240            ; 0810242A  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 0810242C
mov   r1,0xA7                   ; 0810242E
lsl   r1,r1,0x2                 ; 08102430
add   r0,r0,r1                  ; 08102432
mov   r1,0x40                   ; 08102434
strh  r1,[r0]                   ; 08102436
@@Code08102438:
mov   r0,0x5                    ; 08102438
strh  r0,[r4,0x24]              ; 0810243A
ldr   r2,=0xFFFFFDAC            ; 0810243C
add   r1,r4,r2                  ; 0810243E
ldr   r0,=0x03007240            ; 08102440  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08102442
sub   r1,r1,r0                  ; 08102444
ldr   r0,=0xBA2E8BA3            ; 08102446
mul   r0,r1                     ; 08102448
asr   r0,r0,0x4                 ; 0810244A
ldr   r3,=0x0246                ; 0810244C
add   r1,r5,r3                  ; 0810244E
strh  r0,[r1]                   ; 08102450
ldr   r0,=0x0300702C            ; 08102452  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 08102454
ldr   r2,=0x1196                ; 08102456
add   r0,r1,r2                  ; 08102458
strh  r6,[r0]                   ; 0810245A
mov   r0,r4                     ; 0810245C
add   r0,0x6A                   ; 0810245E
strh  r6,[r0]                   ; 08102460
mov   r0,r5                     ; 08102462
add   r0,0xB0                   ; 08102464
strh  r7,[r0]                   ; 08102466
ldr   r3,=0x188C                ; 08102468
add   r1,r1,r3                  ; 0810246A
ldr   r0,=0xFFFF                ; 0810246C
strh  r0,[r1]                   ; 0810246E
mov   r0,0xD6                   ; 08102470
lsl   r0,r0,0x1                 ; 08102472
add   r1,r5,r0                  ; 08102474
mov   r0,0x20                   ; 08102476
strh  r0,[r1]                   ; 08102478
ldr   r1,=0x03002200            ; 0810247A
ldr   r0,[r4]                   ; 0810247C
asr   r0,r0,0x8                 ; 0810247E
ldr   r3,=0x47E4                ; 08102480
add   r2,r1,r3                  ; 08102482
ldrh  r2,[r2]                   ; 08102484
sub   r0,r0,r2                  ; 08102486
ldr   r2,=0x4058                ; 08102488
add   r1,r1,r2                  ; 0810248A
strh  r0,[r1]                   ; 0810248C
mov   r0,0xA4                   ; 0810248E
bl    PlayYISound               ; 08102490
@@Code08102494:
pop   {r4-r7}                   ; 08102494
pop   {r0}                      ; 08102496
bx    r0                        ; 08102498
.pool                           ; 0810249A

Sub081024C8:
push  {r4-r5,lr}                ; 081024C8
mov   r5,r0                     ; 081024CA
add   r0,0xA3                   ; 081024CC
ldrb  r0,[r0]                   ; 081024CE
sub   r2,r0,0x1                 ; 081024D0
mov   r0,0x80                   ; 081024D2
and   r0,r2                     ; 081024D4
cmp   r0,0x0                    ; 081024D6
bne   @@Code08102526            ; 081024D8
ldr   r1,=0x03007240            ; 081024DA  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 081024DC
mul   r0,r2                     ; 081024DE
mov   r3,0x95                   ; 081024E0
lsl   r3,r3,0x2                 ; 081024E2
add   r0,r0,r3                  ; 081024E4
ldr   r1,[r1]                   ; 081024E6
add   r4,r1,r0                  ; 081024E8
ldrh  r0,[r4,0x24]              ; 081024EA
cmp   r0,0x8                    ; 081024EC
bne   @@Code08102526            ; 081024EE
mov   r0,r4                     ; 081024F0
add   r0,0x5E                   ; 081024F2
ldrh  r0,[r0]                   ; 081024F4
cmp   r0,0x0                    ; 081024F6
beq   @@Code08102526            ; 081024F8
mov   r0,r4                     ; 081024FA
mov   r1,r2                     ; 081024FC
bl    Sub0804BA6C               ; 081024FE
mov   r0,r5                     ; 08102502
add   r0,0x6E                   ; 08102504
ldrh  r0,[r0]                   ; 08102506
cmp   r0,0x6                    ; 08102508
bhi   @@Code08102526            ; 0810250A
ldr   r0,[r4,0x8]               ; 0810250C
mov   r2,0x80                   ; 0810250E
cmp   r0,0x0                    ; 08102510
bge   @@Code08102518            ; 08102512
mov   r2,0x80                   ; 08102514
neg   r2,r2                     ; 08102516
@@Code08102518:
str   r2,[r5,0x18]              ; 08102518
str   r2,[r5,0x8]               ; 0810251A
mov   r0,0x40                   ; 0810251C
str   r0,[r5,0x14]              ; 0810251E
mov   r0,r5                     ; 08102520
bl    Sub0810287C               ; 08102522
@@Code08102526:
pop   {r4-r5}                   ; 08102526
pop   {r0}                      ; 08102528
bx    r0                        ; 0810252A
.pool                           ; 0810252C

Return08102530:
; sprite 134 init
bx    lr                        ; 08102530
.pool                           ; 08102532

Sub08102534:
; sprite 134 main
push  {r4-r6,lr}                ; 08102534
mov   r4,r0                     ; 08102536
mov   r6,r4                     ; 08102538
add   r6,0x6E                   ; 0810253A
ldrh  r5,[r6]                   ; 0810253C
cmp   r5,0x27                   ; 0810253E
ble   @@Code08102548            ; 08102540
bl    Sub08102208               ; 08102542
b     @@Code08102566            ; 08102546
@@Code08102548:
cmp   r5,0x24                   ; 08102548
ble   @@Code08102558            ; 0810254A
mov   r0,r4                     ; 0810254C
bl    Sub0810225C               ; 0810254E
bl    Sub08102208               ; 08102552
b     @@Code08102566            ; 08102556
@@Code08102558:
cmp   r5,0x1B                   ; 08102558
ble   @@Code08102562            ; 0810255A
bl    Sub08102208               ; 0810255C
b     @@Code08102566            ; 08102560
@@Code08102562:
cmp   r5,0x16                   ; 08102562
ble   @@Code08102574            ; 08102564
@@Code08102566:
mov   r0,r4                     ; 08102566
bl    Sub08102250               ; 08102568
cmp   r0,0x0                    ; 0810256C
beq   @@Code08102572            ; 0810256E
b     @@Code08102678            ; 08102570
@@Code08102572:
b     @@Code08102664            ; 08102572
@@Code08102574:
mov   r0,r4                     ; 08102574
bl    Sub0810225C               ; 08102576
mov   r0,r4                     ; 0810257A
bl    Sub081022BC               ; 0810257C
ldrh  r5,[r6]                   ; 08102580
cmp   r5,0x12                   ; 08102582
ble   @@Code081025E4            ; 08102584
ldr   r0,=0x03007240            ; 08102586  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 08102588
ldr   r1,=0x2B3A                ; 0810258A
add   r0,r2,r1                  ; 0810258C
ldrb  r1,[r0]                   ; 0810258E
mov   r0,0xF                    ; 08102590
and   r0,r1                     ; 08102592
cmp   r0,0x0                    ; 08102594
bne   @@Code08102678            ; 08102596
ldr   r3,=0x26A9                ; 08102598
add   r0,r2,r3                  ; 0810259A
ldrb  r0,[r0]                   ; 0810259C
cmp   r0,0x0                    ; 0810259E
bne   @@Code08102678            ; 081025A0
ldr   r0,=0x03006D80            ; 081025A2
mov   r1,0xD4                   ; 081025A4
lsl   r1,r1,0x1                 ; 081025A6
add   r0,r0,r1                  ; 081025A8
ldr   r3,=0x29B0                ; 081025AA
add   r1,r2,r3                  ; 081025AC
ldrh  r0,[r0]                   ; 081025AE
ldrh  r1,[r1]                   ; 081025B0
orr   r0,r1                     ; 081025B2
add   r3,0xA                    ; 081025B4
add   r1,r2,r3                  ; 081025B6
ldrh  r1,[r1]                   ; 081025B8
orr   r0,r1                     ; 081025BA
cmp   r0,0x0                    ; 081025BC
beq   @@Code08102654            ; 081025BE
mov   r0,r4                     ; 081025C0
bl    Sub0804C8F0               ; 081025C2
mov   r0,r4                     ; 081025C6
bl    Sub0804C950               ; 081025C8
b     @@Code08102654            ; 081025CC
.pool                           ; 081025CE

@@Code081025E4:
cmp   r5,0xF                    ; 081025E4
ble   @@Code08102614            ; 081025E6
bl    Sub0810A6E4               ; 081025E8
ldr   r1,=0x03002200            ; 081025EC
ldr   r0,=0x48F7                ; 081025EE
add   r2,r1,r0                  ; 081025F0
mov   r0,0x0                    ; 081025F2
strb  r0,[r2]                   ; 081025F4
ldr   r3,=0x47C6                ; 081025F6
add   r1,r1,r3                  ; 081025F8
ldrh  r2,[r1]                   ; 081025FA
ldr   r0,=0xFEFF                ; 081025FC
and   r0,r2                     ; 081025FE
strh  r0,[r1]                   ; 08102600
b     @@Code0810264A            ; 08102602
.pool                           ; 08102604

@@Code08102614:
ldr   r6,=0x03007270            ; 08102614
ldr   r0,[r6,0x24]              ; 08102616
cmp   r0,0x0                    ; 08102618
bne   @@Code08102646            ; 0810261A
bl    Sub0810A608               ; 0810261C
ldr   r2,=0x03002200            ; 08102620
ldr   r1,=0x47EC                ; 08102622
add   r0,r2,r1                  ; 08102624
ldrh  r1,[r0]                   ; 08102626
mov   r0,r6                     ; 08102628
add   r0,0x94                   ; 0810262A
strh  r1,[r0]                   ; 0810262C
ldr   r0,=0x47C8                ; 0810262E
add   r3,r2,r0                  ; 08102630
ldrh  r0,[r3]                   ; 08102632
ldr   r1,=0xFFFC                ; 08102634
and   r1,r0                     ; 08102636
ldr   r0,=0x47CA                ; 08102638
add   r2,r2,r0                  ; 0810263A
ldrh  r2,[r2]                   ; 0810263C
mov   r0,0x3                    ; 0810263E
and   r0,r2                     ; 08102640
orr   r1,r0                     ; 08102642
strh  r1,[r3]                   ; 08102644
@@Code08102646:
bl    Sub08105A94               ; 08102646
@@Code0810264A:
mov   r0,r4                     ; 0810264A
bl    Sub0804BEB8               ; 0810264C
cmp   r0,0x0                    ; 08102650
bne   @@Code08102678            ; 08102652
@@Code08102654:
cmp   r5,0x9                    ; 08102654
bgt   @@Code08102664            ; 08102656
mov   r0,r4                     ; 08102658
bl    Sub08102340               ; 0810265A
mov   r0,r4                     ; 0810265E
bl    Sub081024C8               ; 08102660
@@Code08102664:
ldr   r0,=CodePtrs081A47F8      ; 08102664
mov   r1,r4                     ; 08102666
add   r1,0x6E                   ; 08102668
ldrh  r1,[r1]                   ; 0810266A
lsl   r1,r1,0x2                 ; 0810266C
add   r1,r1,r0                  ; 0810266E
ldr   r1,[r1]                   ; 08102670
mov   r0,r4                     ; 08102672
bl    Sub_bx_r1                 ; 08102674
@@Code08102678:
pop   {r4-r6}                   ; 08102678
pop   {r0}                      ; 0810267A
bx    r0                        ; 0810267C
.pool                           ; 0810267E

Sub0810269C:
push  {r4,lr}                   ; 0810269C
mov   r4,r0                     ; 0810269E
ldr   r2,=0x030069F4            ; 081026A0
strh  r1,[r2,0xE]               ; 081026A2
ldr   r0,[r4]                   ; 081026A4
asr   r0,r0,0x8                 ; 081026A6
ldrh  r1,[r4,0x2E]              ; 081026A8
sub   r0,r0,r1                  ; 081026AA
strh  r0,[r2,0x2]               ; 081026AC
ldr   r0,[r4,0x4]               ; 081026AE
asr   r0,r0,0x8                 ; 081026B0
ldrh  r1,[r4,0x30]              ; 081026B2
sub   r0,r0,r1                  ; 081026B4
strh  r0,[r2,0x4]               ; 081026B6
mov   r0,r4                     ; 081026B8
add   r0,0x66                   ; 081026BA
ldrh  r0,[r0]                   ; 081026BC
strh  r0,[r2,0x6]               ; 081026BE
ldrh  r0,[r4,0x34]              ; 081026C0
strh  r0,[r2,0xA]               ; 081026C2
bl    Sub08107118               ; 081026C4
mov   r0,0x0                    ; 081026C8
strh  r0,[r4,0x2E]              ; 081026CA
strh  r0,[r4,0x30]              ; 081026CC
pop   {r4}                      ; 081026CE
pop   {r0}                      ; 081026D0
bx    r0                        ; 081026D2
.pool                           ; 081026D4

Sub081026D8:
push  {r4-r5,lr}                ; 081026D8
ldr   r0,=0x03007240            ; 081026DA  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 081026DC
mov   r1,0x95                   ; 081026DE
lsl   r1,r1,0x2                 ; 081026E0
add   r2,r0,r1                  ; 081026E2
ldr   r1,=0x12D4                ; 081026E4
add   r4,r0,r1                  ; 081026E6
mov   r3,0x0                    ; 081026E8
cmp   r2,r4                     ; 081026EA
bhs   @@Code08102716            ; 081026EC
mov   r5,0xFF                   ; 081026EE
@@Code081026F0:
ldrh  r1,[r2,0x24]              ; 081026F0
mov   r0,r5                     ; 081026F2
and   r0,r1                     ; 081026F4
cmp   r0,0x0                    ; 081026F6
beq   @@Code08102710            ; 081026F8
ldrh  r0,[r2,0x32]              ; 081026FA
cmp   r0,0xCD                   ; 081026FC
beq   @@Code0810270E            ; 081026FE
cmp   r0,0x26                   ; 08102700
bne   @@Code08102710            ; 08102702
mov   r0,r2                     ; 08102704
add   r0,0x5E                   ; 08102706
ldrh  r0,[r0]                   ; 08102708
cmp   r0,0x0                    ; 0810270A
bne   @@Code08102710            ; 0810270C
@@Code0810270E:
add   r3,0x1                    ; 0810270E
@@Code08102710:
add   r2,0xB0                   ; 08102710
cmp   r2,r4                     ; 08102712
blo   @@Code081026F0            ; 08102714
@@Code08102716:
mov   r0,r3                     ; 08102716
pop   {r4-r5}                   ; 08102718
pop   {r1}                      ; 0810271A
bx    r1                        ; 0810271C
.pool                           ; 0810271E

Sub08102728:
push  {r4-r5,lr}                ; 08102728
mov   r4,r0                     ; 0810272A
add   r4,0x44                   ; 0810272C
ldrh  r0,[r4]                   ; 0810272E
cmp   r0,0x0                    ; 08102730
bne   @@Code08102792            ; 08102732
bl    Sub081026D8               ; 08102734
cmp   r0,0x0                    ; 08102738
bne   @@Code08102792            ; 0810273A
mov   r0,0xCD                   ; 0810273C
bl    Sub0804A23C               ; 0810273E
lsl   r0,r0,0x18                ; 08102742
lsr   r3,r0,0x18                ; 08102744
cmp   r3,0xFF                   ; 08102746
beq   @@Code08102792            ; 08102748
ldr   r1,=0x03007240            ; 0810274A  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 0810274C
mul   r3,r0                     ; 0810274E
mov   r0,0x95                   ; 08102750
lsl   r0,r0,0x2                 ; 08102752
add   r3,r3,r0                  ; 08102754
ldr   r0,[r1]                   ; 08102756
add   r3,r0,r3                  ; 08102758
ldr   r1,=0x29CC                ; 0810275A
add   r0,r0,r1                  ; 0810275C
ldrh  r0,[r0]                   ; 0810275E
mov   r1,0x2                    ; 08102760
and   r1,r0                     ; 08102762
lsl   r1,r1,0x10                ; 08102764
lsr   r0,r1,0x10                ; 08102766
strh  r0,[r3,0x36]              ; 08102768
ldr   r0,=0x03002200            ; 0810276A
ldr   r2,=0x47E4                ; 0810276C
add   r0,r0,r2                  ; 0810276E
mov   r5,0x0                    ; 08102770
ldsh  r2,[r0,r5]                ; 08102772
ldr   r0,=Data081A48A4          ; 08102774
lsr   r1,r1,0x11                ; 08102776
lsl   r1,r1,0x1                 ; 08102778
add   r1,r1,r0                  ; 0810277A
mov   r5,0x0                    ; 0810277C
ldsh  r0,[r1,r5]                ; 0810277E
add   r2,r2,r0                  ; 08102780
lsl   r2,r2,0x8                 ; 08102782
str   r2,[r3]                   ; 08102784
mov   r0,0xEE                   ; 08102786
lsl   r0,r0,0xB                 ; 08102788
str   r0,[r3,0x4]               ; 0810278A
mov   r0,0x80                   ; 0810278C
lsl   r0,r0,0x1                 ; 0810278E
strh  r0,[r4]                   ; 08102790
@@Code08102792:
pop   {r4-r5}                   ; 08102792
pop   {r0}                      ; 08102794
bx    r0                        ; 08102796
.pool                           ; 08102798

Sub081027AC:
push  {r4-r7,lr}                ; 081027AC
mov   r7,r10                    ; 081027AE
mov   r6,r9                     ; 081027B0
mov   r5,r8                     ; 081027B2
push  {r5-r7}                   ; 081027B4
add   sp,-0x4                   ; 081027B6
mov   r5,r1                     ; 081027B8
mov   r9,r2                     ; 081027BA
mov   r8,r3                     ; 081027BC
mov   r4,0x2                    ; 081027BE
mov   r2,0x0                    ; 081027C0
sub   r0,0x1                    ; 081027C2
lsl   r0,r0,0x18                ; 081027C4
str   r0,[sp]                   ; 081027C6
ldr   r0,=0x03007240            ; 081027C8  Normal gameplay IWRAM (0300220C)
mov   r10,r0                    ; 081027CA
@@Code081027CC:
mov   r6,r2                     ; 081027CC
ldr   r0,=Data081A48A8          ; 081027CE
add   r0,r4,r0                  ; 081027D0
mov   r1,0x0                    ; 081027D2
ldsh  r0,[r0,r1]                ; 081027D4
add   r5,r5,r0                  ; 081027D6
mov   r0,0x94                   ; 081027D8
lsl   r0,r0,0x1                 ; 081027DA
ldr   r2,[sp]                   ; 081027DC
lsr   r1,r2,0x18                ; 081027DE
bl    Sub0804A1F8               ; 081027E0
lsl   r0,r0,0x18                ; 081027E4
lsr   r2,r0,0x18                ; 081027E6
cmp   r2,0xFF                   ; 081027E8
beq   @@Code0810283C            ; 081027EA
mov   r3,0xB0                   ; 081027EC
mov   r0,r2                     ; 081027EE
mul   r0,r3                     ; 081027F0
mov   r7,0x95                   ; 081027F2
lsl   r7,r7,0x2                 ; 081027F4
add   r0,r0,r7                  ; 081027F6
mov   r7,r10                    ; 081027F8
ldr   r1,[r7]                   ; 081027FA
add   r1,r1,r0                  ; 081027FC
lsl   r0,r5,0x8                 ; 081027FE
str   r0,[r1]                   ; 08102800
mov   r0,0xF7                   ; 08102802
lsl   r0,r0,0xB                 ; 08102804
str   r0,[r1,0x4]               ; 08102806
ldr   r0,=Data081A48AC          ; 08102808
add   r0,r4,r0                  ; 0810280A
mov   r7,0x0                    ; 0810280C
ldsh  r0,[r0,r7]                ; 0810280E
str   r0,[r1,0x8]               ; 08102810
strh  r4,[r1,0x36]              ; 08102812
mov   r0,r1                     ; 08102814
add   r0,0x46                   ; 08102816
mov   r7,r9                     ; 08102818
strh  r7,[r0]                   ; 0810281A
add   r0,0x2                    ; 0810281C
mov   r7,r8                     ; 0810281E
strh  r7,[r0]                   ; 08102820
add   r0,0x2E                   ; 08102822
strh  r6,[r0]                   ; 08102824
sub   r4,0x2                    ; 08102826
ldr   r1,=0x03007240            ; 08102828  Normal gameplay IWRAM (0300220C)
cmp   r4,0x0                    ; 0810282A
bge   @@Code081027CC            ; 0810282C
mov   r0,r6                     ; 0810282E
mul   r0,r3                     ; 08102830
ldr   r1,[r1]                   ; 08102832
add   r0,r0,r1                  ; 08102834
ldr   r1,=0x02CA                ; 08102836
add   r0,r0,r1                  ; 08102838
strh  r2,[r0]                   ; 0810283A
@@Code0810283C:
add   sp,0x4                    ; 0810283C
pop   {r3-r5}                   ; 0810283E
mov   r8,r3                     ; 08102840
mov   r9,r4                     ; 08102842
mov   r10,r5                    ; 08102844
pop   {r4-r7}                   ; 08102846
pop   {r0}                      ; 08102848
bx    r0                        ; 0810284A
.pool                           ; 0810284C

Sub0810285C:
mov   r1,r0                     ; 0810285C
mov   r2,r1                     ; 0810285E
add   r2,0x76                   ; 08102860
mov   r0,0x3D                   ; 08102862
strh  r0,[r2]                   ; 08102864
add   r2,0x4                    ; 08102866
mov   r0,0x3F                   ; 08102868
strh  r0,[r2]                   ; 0810286A
sub   r2,0x18                   ; 0810286C
mov   r0,0x1                    ; 0810286E
strh  r0,[r2]                   ; 08102870
add   r1,0x6E                   ; 08102872
mov   r0,0x9                    ; 08102874
strh  r0,[r1]                   ; 08102876
bx    lr                        ; 08102878
.pool                           ; 0810287A

Sub0810287C:
push  {lr}                      ; 0810287C
mov   r1,r0                     ; 0810287E
add   r1,0x40                   ; 08102880
mov   r2,0x0                    ; 08102882
strh  r2,[r1]                   ; 08102884
mov   r1,0x26                   ; 08102886
strh  r1,[r0,0x38]              ; 08102888
mov   r1,r0                     ; 0810288A
add   r1,0x44                   ; 0810288C
strh  r2,[r1]                   ; 0810288E
bl    Sub0810285C               ; 08102890
pop   {r0}                      ; 08102894
bx    r0                        ; 08102896

Sub08102898:
; sprite 08E init
push  {r4-r6,lr}                ; 08102898
mov   r5,r0                     ; 0810289A
ldr   r0,=0x03006D80            ; 0810289C
ldr   r1,=0x020A                ; 0810289E
add   r0,r0,r1                  ; 081028A0
mov   r4,0x0                    ; 081028A2
mov   r1,0x80                   ; 081028A4
strh  r1,[r0]                   ; 081028A6
mov   r0,0x9A                   ; 081028A8
lsl   r0,r0,0x1                 ; 081028AA
bl    Sub0804A3A4               ; 081028AC
lsl   r0,r0,0x18                ; 081028B0
lsr   r0,r0,0x18                ; 081028B2
ldr   r2,=0x03007240            ; 081028B4  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 081028B6
mul   r1,r0                     ; 081028B8
mov   r3,0x95                   ; 081028BA
lsl   r3,r3,0x2                 ; 081028BC
add   r1,r1,r3                  ; 081028BE
ldr   r2,[r2]                   ; 081028C0
add   r3,r2,r1                  ; 081028C2
ldr   r1,=0x0300702C            ; 081028C4  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 081028C6
ldr   r6,=0x1194                ; 081028C8
add   r2,r1,r6                  ; 081028CA
strh  r0,[r2]                   ; 081028CC
ldr   r0,=0x1192                ; 081028CE
add   r1,r1,r0                  ; 081028D0
strh  r4,[r1]                   ; 081028D2
ldr   r0,=0x03002200            ; 081028D4
ldr   r2,=0x4A16                ; 081028D6
add   r1,r0,r2                  ; 081028D8
ldrb  r0,[r1]                   ; 081028DA
cmp   r0,0x0                    ; 081028DC
beq   @@Code08102984            ; 081028DE
mov   r0,0x80                   ; 081028E0
lsl   r0,r0,0x9                 ; 081028E2
str   r0,[r3]                   ; 081028E4
mov   r0,0xF6                   ; 081028E6
lsl   r0,r0,0xB                 ; 081028E8
str   r0,[r3,0x4]               ; 081028EA
mov   r0,0xC                    ; 081028EC
strh  r0,[r3,0x38]              ; 081028EE
mov   r1,r3                     ; 081028F0
add   r1,0x6E                   ; 081028F2
mov   r0,0x14                   ; 081028F4
strh  r0,[r1]                   ; 081028F6
ldr   r4,=Data082D1D20          ; 081028F8
ldr   r1,=0x02010AC2            ; 081028FA
mov   r0,r4                     ; 081028FC
mov   r2,0xF                    ; 081028FE
bl    swi_MemoryCopy4or2        ; 08102900  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020106C2            ; 08102904
mov   r0,r4                     ; 08102906
mov   r2,0xF                    ; 08102908
bl    swi_MemoryCopy4or2        ; 0810290A  Memory copy/fill, 4- or 2-byte blocks
sub   r4,0x3C                   ; 0810290E
ldr   r1,=0x020108C2            ; 08102910
mov   r0,r4                     ; 08102912
mov   r2,0xF                    ; 08102914
bl    swi_MemoryCopy4or2        ; 08102916  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020104C2            ; 0810291A
mov   r0,r4                     ; 0810291C
mov   r2,0xF                    ; 0810291E
bl    swi_MemoryCopy4or2        ; 08102920  Memory copy/fill, 4- or 2-byte blocks
add   r4,0x1E                   ; 08102924
ldr   r1,=0x020108E2            ; 08102926
mov   r0,r4                     ; 08102928
mov   r2,0xF                    ; 0810292A
bl    swi_MemoryCopy4or2        ; 0810292C  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020104E2            ; 08102930
mov   r0,r4                     ; 08102932
mov   r2,0xF                    ; 08102934
bl    swi_MemoryCopy4or2        ; 08102936  Memory copy/fill, 4- or 2-byte blocks
bl    Sub08105878               ; 0810293A
mov   r0,r5                     ; 0810293E
bl    Sub0804A6F8               ; 08102940
b     @@Code081029AA            ; 08102944
.pool                           ; 08102946

@@Code08102984:
mov   r0,0x1                    ; 08102984
strb  r0,[r1]                   ; 08102986
mov   r0,0xA8                   ; 08102988
lsl   r0,r0,0x9                 ; 0810298A
str   r0,[r3]                   ; 0810298C
ldr   r0,=0x00077D00            ; 0810298E
str   r0,[r3,0x4]               ; 08102990
mov   r1,r3                     ; 08102992
add   r1,0x72                   ; 08102994
mov   r0,0xA                    ; 08102996
strh  r0,[r1]                   ; 08102998
sub   r1,0x4                    ; 0810299A
mov   r0,0x13                   ; 0810299C
strh  r0,[r1]                   ; 0810299E
ldrh  r0,[r5,0x38]              ; 081029A0
add   r0,0x1                    ; 081029A2
strh  r0,[r5,0x38]              ; 081029A4
bl    Sub08105878               ; 081029A6
@@Code081029AA:
pop   {r4-r6}                   ; 081029AA
pop   {r0}                      ; 081029AC
bx    r0                        ; 081029AE
.pool                           ; 081029B0

Sub081029B4:
; sprite 08E main
push  {r4-r7,lr}                ; 081029B4
mov   r7,r0                     ; 081029B6
ldrh  r0,[r7,0x38]              ; 081029B8
cmp   r0,0x0                    ; 081029BA
bne   @@Code08102A3E            ; 081029BC
mov   r0,r7                     ; 081029BE
bl    Sub0804AC30               ; 081029C0
mov   r0,r7                     ; 081029C4
bl    Sub08105164               ; 081029C6
ldrh  r3,[r7,0x34]              ; 081029CA
lsl   r3,r3,0x1                 ; 081029CC
ldr   r5,=0x03005A00            ; 081029CE
add   r3,r3,r5                  ; 081029D0
ldrh  r2,[r3,0x2]               ; 081029D2
lsl   r1,r2,0x17                ; 081029D4
lsr   r1,r1,0x17                ; 081029D6
sub   r1,0x10                   ; 081029D8
ldr   r4,=0x01FF                ; 081029DA
mov   r0,r4                     ; 081029DC
and   r1,r0                     ; 081029DE
ldr   r0,=0xFFFFFE00            ; 081029E0
and   r0,r2                     ; 081029E2
orr   r0,r1                     ; 081029E4
strh  r0,[r3,0x2]               ; 081029E6
ldrb  r0,[r3,0x1]               ; 081029E8
mov   r4,0x4                    ; 081029EA
neg   r4,r4                     ; 081029EC
and   r4,r0                     ; 081029EE
mov   r6,0x1                    ; 081029F0
orr   r4,r6                     ; 081029F2
strb  r4,[r3,0x1]               ; 081029F4
ldr   r0,=0x0FD2                ; 081029F6
add   r5,r5,r0                  ; 081029F8
ldrh  r1,[r5]                   ; 081029FA
mov   r0,0x7                    ; 081029FC
and   r1,r0                     ; 081029FE
lsl   r1,r1,0x1                 ; 08102A00
ldrb  r0,[r3,0x3]               ; 08102A02
mov   r2,0xF                    ; 08102A04
neg   r2,r2                     ; 08102A06
and   r2,r0                     ; 08102A08
orr   r2,r1                     ; 08102A0A
strb  r2,[r3,0x3]               ; 08102A0C
ldrh  r0,[r5]                   ; 08102A0E
lsr   r0,r0,0x3                 ; 08102A10
and   r0,r6                     ; 08102A12
lsl   r0,r0,0x4                 ; 08102A14
mov   r1,0x11                   ; 08102A16
neg   r1,r1                     ; 08102A18
and   r1,r2                     ; 08102A1A
orr   r1,r0                     ; 08102A1C
strb  r1,[r3,0x3]               ; 08102A1E
ldrh  r0,[r5]                   ; 08102A20
lsr   r0,r0,0x4                 ; 08102A22
and   r0,r6                     ; 08102A24
lsl   r0,r0,0x5                 ; 08102A26
mov   r2,0x21                   ; 08102A28
neg   r2,r2                     ; 08102A2A
and   r1,r2                     ; 08102A2C
orr   r1,r0                     ; 08102A2E
mov   r2,0x3F                   ; 08102A30
and   r1,r2                     ; 08102A32
mov   r0,0x80                   ; 08102A34
orr   r1,r0                     ; 08102A36
strb  r1,[r3,0x3]               ; 08102A38
and   r4,r2                     ; 08102A3A
strb  r4,[r3,0x1]               ; 08102A3C
@@Code08102A3E:
ldr   r0,=0x03007240            ; 08102A3E  Normal gameplay IWRAM (0300220C)
ldr   r2,[r0]                   ; 08102A40
ldr   r1,=0x2B3A                ; 08102A42
add   r0,r2,r1                  ; 08102A44
ldrb  r1,[r0]                   ; 08102A46
mov   r0,0xF                    ; 08102A48
and   r0,r1                     ; 08102A4A
cmp   r0,0x0                    ; 08102A4C
bne   @@Code08102A98            ; 08102A4E
ldr   r3,=0x26A9                ; 08102A50
add   r0,r2,r3                  ; 08102A52
ldrb  r0,[r0]                   ; 08102A54
cmp   r0,0x0                    ; 08102A56
bne   @@Code08102A98            ; 08102A58
ldr   r0,=0x03006D80            ; 08102A5A
mov   r4,0xD4                   ; 08102A5C
lsl   r4,r4,0x1                 ; 08102A5E
add   r0,r0,r4                  ; 08102A60
ldr   r3,=0x29B0                ; 08102A62
add   r1,r2,r3                  ; 08102A64
ldrh  r0,[r0]                   ; 08102A66
ldrh  r1,[r1]                   ; 08102A68
orr   r0,r1                     ; 08102A6A
ldr   r4,=0x29BA                ; 08102A6C
add   r1,r2,r4                  ; 08102A6E
ldrh  r1,[r1]                   ; 08102A70
orr   r0,r1                     ; 08102A72
cmp   r0,0x0                    ; 08102A74
beq   @@Code08102A84            ; 08102A76
mov   r0,r7                     ; 08102A78
bl    Sub0804C8F0               ; 08102A7A
mov   r0,r7                     ; 08102A7E
bl    Sub0804C950               ; 08102A80
@@Code08102A84:
ldr   r0,=CodePtrs081A63FC      ; 08102A84
mov   r1,r7                     ; 08102A86
add   r1,0x6E                   ; 08102A88
ldrh  r1,[r1]                   ; 08102A8A
lsl   r1,r1,0x2                 ; 08102A8C
add   r1,r1,r0                  ; 08102A8E
ldr   r1,[r1]                   ; 08102A90
mov   r0,r7                     ; 08102A92
bl    Sub_bx_r1                 ; 08102A94
@@Code08102A98:
pop   {r4-r7}                   ; 08102A98
pop   {r0}                      ; 08102A9A
bx    r0                        ; 08102A9C
.pool                           ; 08102A9E

Sub08102ACC:
push  {r4-r7,lr}                ; 08102ACC
add   sp,-0x20                  ; 08102ACE
mov   r5,r0                     ; 08102AD0
mov   r7,r5                     ; 08102AD2
add   r7,0x6A                   ; 08102AD4
ldrh  r4,[r7]                   ; 08102AD6
ldr   r6,=0x03006210            ; 08102AD8
mov   r0,r6                     ; 08102ADA
bl    Sub0810B3D8               ; 08102ADC
str   r0,[sp]                   ; 08102AE0
ldr   r0,=Data081A48B0          ; 08102AE2
str   r0,[sp,0x4]               ; 08102AE4
mov   r0,0x6C                   ; 08102AE6
str   r0,[sp,0x8]               ; 08102AE8
mov   r0,0x47                   ; 08102AEA
str   r0,[sp,0xC]               ; 08102AEC
mov   r0,0x50                   ; 08102AEE
str   r0,[sp,0x10]              ; 08102AF0
mov   r0,0x20                   ; 08102AF2
ldsh  r1,[r5,r0]                ; 08102AF4
ldrh  r0,[r5,0x36]              ; 08102AF6
lsl   r0,r0,0x1                 ; 08102AF8
add   r0,0x6                    ; 08102AFA
add   r1,r1,r0                  ; 08102AFC
str   r1,[sp,0x14]              ; 08102AFE
mov   r1,0x22                   ; 08102B00
ldsh  r0,[r5,r1]                ; 08102B02
add   r0,0xC                    ; 08102B04
str   r0,[sp,0x18]              ; 08102B06
str   r4,[sp,0x1C]              ; 08102B08
ldrh  r1,[r5,0x36]              ; 08102B0A
mov   r0,sp                     ; 08102B0C
bl    Sub081037B0               ; 08102B0E
mov   r0,r6                     ; 08102B12
bl    Sub0810B394               ; 08102B14
ldrh  r0,[r7]                   ; 08102B18
add   r0,0x10                   ; 08102B1A
strh  r0,[r7]                   ; 08102B1C
lsl   r0,r0,0x10                ; 08102B1E
ldr   r1,=0x0FFF0000            ; 08102B20
cmp   r0,r1                     ; 08102B22
bls   @@Code08102B48            ; 08102B24
mov   r1,r5                     ; 08102B26
add   r1,0x6E                   ; 08102B28
ldrh  r0,[r1]                   ; 08102B2A
add   r0,0x1                    ; 08102B2C
strh  r0,[r1]                   ; 08102B2E
ldr   r0,=0x03007240            ; 08102B30  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08102B32
ldr   r2,=0x2B38                ; 08102B34
add   r0,r0,r2                  ; 08102B36
mov   r1,0x1                    ; 08102B38
strb  r1,[r0]                   ; 08102B3A
bl    Sub0805EA08               ; 08102B3C
ldr   r0,=0x08EA                ; 08102B40
add   r1,r6,r0                  ; 08102B42
mov   r0,0x0                    ; 08102B44
strb  r0,[r1]                   ; 08102B46
@@Code08102B48:
mov   r1,0x88                   ; 08102B48
lsl   r1,r1,0x4                 ; 08102B4A
add   r0,r6,r1                  ; 08102B4C
mov   r1,0xA0                   ; 08102B4E
strh  r1,[r0]                   ; 08102B50
ldr   r2,=0x0884                ; 08102B52
add   r0,r6,r2                  ; 08102B54
strh  r1,[r0]                   ; 08102B56
ldr   r1,=0x09F3                ; 08102B58
add   r0,r6,r1                  ; 08102B5A
mov   r1,0x20                   ; 08102B5C
strb  r1,[r0]                   ; 08102B5E
ldr   r2,=0x09F4                ; 08102B60
add   r0,r6,r2                  ; 08102B62
strb  r1,[r0]                   ; 08102B64
ldr   r0,=0x08BC                ; 08102B66
add   r1,r6,r0                  ; 08102B68
mov   r0,0x1F                   ; 08102B6A
strh  r0,[r1]                   ; 08102B6C
ldr   r2,=0x0878                ; 08102B6E
add   r1,r6,r2                  ; 08102B70
mov   r0,0xFF                   ; 08102B72
strh  r0,[r1]                   ; 08102B74
ldr   r0,=0x087C                ; 08102B76
add   r1,r6,r0                  ; 08102B78
mov   r0,0x10                   ; 08102B7A
strh  r0,[r1]                   ; 08102B7C
mov   r0,r6                     ; 08102B7E
bl    Sub0810B354               ; 08102B80
add   sp,0x20                   ; 08102B84
pop   {r4-r7}                   ; 08102B86
pop   {r0}                      ; 08102B88
bx    r0                        ; 08102B8A
.pool                           ; 08102B8C

Sub08102BBC:
push  {r4-r6,lr}                ; 08102BBC
ldr   r0,=Data08264458          ; 08102BBE
ldr   r0,[r0]                   ; 08102BC0
ldr   r4,=0x0201FC00            ; 08102BC2  decompressed graphics buffer
mov   r1,r4                     ; 08102BC4
bl    swi_LZ77_WRAM             ; 08102BC6  LZ77 decompress (WRAM)
mov   r0,0x80                   ; 08102BCA
lsl   r0,r0,0x5                 ; 08102BCC
add   r6,r4,r0                  ; 08102BCE
ldr   r5,=0x06010200            ; 08102BD0
@@Code08102BD2:
mov   r0,r4                     ; 08102BD2
mov   r1,r5                     ; 08102BD4
mov   r2,0x80                   ; 08102BD6
bl    swi_MemoryCopy32          ; 08102BD8  Memory copy/fill, 32-byte blocks
mov   r0,0x80                   ; 08102BDC
lsl   r0,r0,0x2                 ; 08102BDE
add   r4,r4,r0                  ; 08102BE0
mov   r0,0x80                   ; 08102BE2
lsl   r0,r0,0x3                 ; 08102BE4
add   r5,r5,r0                  ; 08102BE6
cmp   r4,r6                     ; 08102BE8
blo   @@Code08102BD2            ; 08102BEA
ldr   r0,=Data08264450          ; 08102BEC
ldr   r0,[r0]                   ; 08102BEE
ldr   r4,=0x0201FC00            ; 08102BF0  decompressed graphics buffer
mov   r1,r4                     ; 08102BF2
bl    swi_LZ77_WRAM             ; 08102BF4  LZ77 decompress (WRAM)
mov   r0,0x80                   ; 08102BF8
lsl   r0,r0,0x4                 ; 08102BFA
add   r6,r4,r0                  ; 08102BFC
ldr   r5,=0x06012200            ; 08102BFE
@@Code08102C00:
mov   r0,r4                     ; 08102C00
mov   r1,r5                     ; 08102C02
mov   r2,0x80                   ; 08102C04
bl    swi_MemoryCopy32          ; 08102C06  Memory copy/fill, 32-byte blocks
mov   r0,0x80                   ; 08102C0A
lsl   r0,r0,0x2                 ; 08102C0C
add   r4,r4,r0                  ; 08102C0E
mov   r0,0x80                   ; 08102C10
lsl   r0,r0,0x3                 ; 08102C12
add   r5,r5,r0                  ; 08102C14
cmp   r4,r6                     ; 08102C16
blo   @@Code08102C00            ; 08102C18
pop   {r4-r6}                   ; 08102C1A
pop   {r0}                      ; 08102C1C
bx    r0                        ; 08102C1E
.pool                           ; 08102C20

Sub08102C34:
push  {r4-r7,lr}                ; 08102C34
add   sp,-0x8                   ; 08102C36
ldr   r6,=0x020293D0            ; 08102C38
mov   r0,0x0                    ; 08102C3A
str   r0,[sp]                   ; 08102C3C
ldr   r2,=0x01000050            ; 08102C3E
mov   r0,sp                     ; 08102C40
mov   r1,r6                     ; 08102C42
bl    swi_MemoryCopy32          ; 08102C44  Memory copy/fill, 32-byte blocks
add   r6,0x68                   ; 08102C48
ldr   r4,=Data081A722A          ; 08102C4A
mov   r7,r4                     ; 08102C4C
add   r7,0x1E                   ; 08102C4E
add   r5,sp,0x4                 ; 08102C50
@@Code08102C52:
ldrh  r0,[r4]                   ; 08102C52
strh  r0,[r5]                   ; 08102C54
mov   r0,r5                     ; 08102C56
mov   r1,r6                     ; 08102C58
ldr   r2,=0x01000004            ; 08102C5A
bl    swi_MemoryCopy4or2        ; 08102C5C  Memory copy/fill, 4- or 2-byte blocks
add   r6,0x8                    ; 08102C60
add   r4,0x2                    ; 08102C62
cmp   r4,r7                     ; 08102C64
blo   @@Code08102C52            ; 08102C66
add   sp,0x8                    ; 08102C68
pop   {r4-r7}                   ; 08102C6A
pop   {r0}                      ; 08102C6C
bx    r0                        ; 08102C6E
.pool                           ; 08102C70

Sub08102C80:
push  {r4-r5,lr}                ; 08102C80
mov   r5,r0                     ; 08102C82
ldr   r0,=0x03007240            ; 08102C84  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08102C86
mov   r1,0x8C                   ; 08102C88
lsl   r1,r1,0x2                 ; 08102C8A
add   r4,r0,r1                  ; 08102C8C
mov   r0,0x1A                   ; 08102C8E  1A: Bowser battle
bl    Sub0812C3B4               ; 08102C90  Change music (YI)
ldr   r2,=0x03006D80            ; 08102C94
mov   r0,0x1A                   ; 08102C96
strh  r0,[r2,0x30]              ; 08102C98
ldr   r0,=0x03002200            ; 08102C9A
ldr   r3,=0x47D4                ; 08102C9C
add   r0,r0,r3                  ; 08102C9E
ldrh  r1,[r0]                   ; 08102CA0
ldr   r0,=0x01FF                ; 08102CA2
cmp   r1,r0                     ; 08102CA4
bhi   @@Code08102CF0            ; 08102CA6
add   r1,0x10                   ; 08102CA8
cmp   r1,r0                     ; 08102CAA
bls   @@Code08102CD4            ; 08102CAC
mov   r1,0x80                   ; 08102CAE
lsl   r1,r1,0x2                 ; 08102CB0
mov   r3,0x82                   ; 08102CB2
lsl   r3,r3,0x2                 ; 08102CB4
add   r0,r2,r3                  ; 08102CB6
strh  r1,[r0]                   ; 08102CB8
mov   r0,0x0                    ; 08102CBA
b     @@Code08102CD6            ; 08102CBC
.pool                           ; 08102CBE

@@Code08102CD4:
mov   r0,0x1                    ; 08102CD4
@@Code08102CD6:
strh  r0,[r4,0x12]              ; 08102CD6
lsl   r0,r1,0x8                 ; 08102CD8
str   r0,[r4]                   ; 08102CDA
ldr   r0,=0x03006D80            ; 08102CDC
ldr   r1,=0x020A                ; 08102CDE
add   r0,r0,r1                  ; 08102CE0
add   r1,0x76                   ; 08102CE2
strh  r1,[r0]                   ; 08102CE4
b     @@Code08102CFA            ; 08102CE6
.pool                           ; 08102CE8

@@Code08102CF0:
mov   r1,r5                     ; 08102CF0
add   r1,0x6E                   ; 08102CF2
ldrh  r0,[r1]                   ; 08102CF4
add   r0,0x1                    ; 08102CF6
strh  r0,[r1]                   ; 08102CF8
@@Code08102CFA:
pop   {r4-r5}                   ; 08102CFA
pop   {r0}                      ; 08102CFC
bx    r0                        ; 08102CFE

Sub08102D00:
push  {r4-r5,lr}                ; 08102D00
mov   r1,r0                     ; 08102D02
ldr   r0,=0x03007240            ; 08102D04  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08102D06
mov   r2,0x8C                   ; 08102D08
lsl   r2,r2,0x2                 ; 08102D0A
add   r4,r0,r2                  ; 08102D0C
ldr   r0,=0x03002200            ; 08102D0E
ldr   r5,=0x47DC                ; 08102D10
add   r0,r0,r5                  ; 08102D12
ldrh  r3,[r0]                   ; 08102D14
ldr   r0,=0x073F                ; 08102D16
cmp   r3,r0                     ; 08102D18
bhi   @@Code08102D7C            ; 08102D1A
add   r3,0x1                    ; 08102D1C
cmp   r3,r0                     ; 08102D1E
bls   @@Code08102D60            ; 08102D20
ldr   r1,=0x03006D80            ; 08102D22
mov   r0,0x90                   ; 08102D24
lsl   r0,r0,0xA                 ; 08102D26
str   r0,[r1]                   ; 08102D28
mov   r0,0xF2                   ; 08102D2A
lsl   r0,r0,0xB                 ; 08102D2C
str   r0,[r1,0x4]               ; 08102D2E
mov   r3,r1                     ; 08102D30
add   r3,0xC6                   ; 08102D32
mov   r2,0x0                    ; 08102D34
mov   r0,0x2                    ; 08102D36
strh  r0,[r3]                   ; 08102D38
mov   r3,0xE8                   ; 08102D3A
lsl   r3,r3,0x3                 ; 08102D3C
mov   r5,0x83                   ; 08102D3E
lsl   r5,r5,0x2                 ; 08102D40
add   r0,r1,r5                  ; 08102D42
strh  r3,[r0]                   ; 08102D44
strh  r2,[r4,0x14]              ; 08102D46
b     @@Code08102D66            ; 08102D48
.pool                           ; 08102D4A

@@Code08102D60:
mov   r0,0x1                    ; 08102D60
strh  r0,[r4,0x14]              ; 08102D62
ldr   r1,=0x03006D80            ; 08102D64
@@Code08102D66:
lsl   r0,r3,0x8                 ; 08102D66
str   r0,[r4,0x4]               ; 08102D68
ldr   r0,=0x020E                ; 08102D6A
add   r1,r1,r0                  ; 08102D6C
mov   r0,0xE8                   ; 08102D6E
lsl   r0,r0,0x3                 ; 08102D70
b     @@Code08102D82            ; 08102D72
.pool                           ; 08102D74

@@Code08102D7C:
add   r1,0x6E                   ; 08102D7C
ldrh  r0,[r1]                   ; 08102D7E
add   r0,0x1                    ; 08102D80
@@Code08102D82:
strh  r0,[r1]                   ; 08102D82
pop   {r4-r5}                   ; 08102D84
pop   {r0}                      ; 08102D86
bx    r0                        ; 08102D88
.pool                           ; 08102D8A

Sub08102D8C:
push  {r4-r6,lr}                ; 08102D8C
add   sp,-0x4                   ; 08102D8E
mov   r6,r0                     ; 08102D90
ldr   r0,=Data08264454          ; 08102D92
ldr   r0,[r0]                   ; 08102D94
mov   r1,0xC0                   ; 08102D96
lsl   r1,r1,0x13                ; 08102D98
bl    swi_LZ77_VRAM             ; 08102D9A  LZ77 decompress (VRAM)
ldr   r0,=Data081A4A60          ; 08102D9E
ldr   r1,=0x0600C000            ; 08102DA0
bl    swi_LZ77_VRAM             ; 08102DA2  LZ77 decompress (VRAM)
bl    Sub08102BBC               ; 08102DA6
ldr   r1,=0x02010802            ; 08102DAA
mov   r0,sp                     ; 08102DAC
mov   r4,0x0                    ; 08102DAE
strh  r4,[r0]                   ; 08102DB0
ldr   r5,=0x0100000F            ; 08102DB2
mov   r2,r5                     ; 08102DB4
bl    swi_MemoryCopy4or2        ; 08102DB6  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010402            ; 08102DBA
mov   r0,sp                     ; 08102DBC
add   r0,0x2                    ; 08102DBE
strh  r4,[r0]                   ; 08102DC0
mov   r2,r5                     ; 08102DC2
bl    swi_MemoryCopy4or2        ; 08102DC4  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x02010820            ; 08102DC8
ldr   r1,=0x02010420            ; 08102DCA
mov   r2,0x50                   ; 08102DCC
bl    swi_MemoryCopy4or2        ; 08102DCE  Memory copy/fill, 4- or 2-byte blocks
ldr   r4,=Data081A716A          ; 08102DD2
ldr   r1,=0x02010AE2            ; 08102DD4
mov   r0,r4                     ; 08102DD6
mov   r2,0xF                    ; 08102DD8
bl    swi_MemoryCopy4or2        ; 08102DDA  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020106E2            ; 08102DDE
mov   r0,r4                     ; 08102DE0
mov   r2,0xF                    ; 08102DE2
bl    swi_MemoryCopy4or2        ; 08102DE4  Memory copy/fill, 4- or 2-byte blocks
bl    Sub081058C8               ; 08102DE8
bl    Sub08102C34               ; 08102DEC
add   r6,0x6E                   ; 08102DF0
ldrh  r0,[r6]                   ; 08102DF2
add   r0,0x1                    ; 08102DF4
mov   r5,0x0                    ; 08102DF6
strh  r0,[r6]                   ; 08102DF8
ldr   r0,=0x03006D80            ; 08102DFA
mov   r1,0x2                    ; 08102DFC
strh  r1,[r0,0x30]              ; 08102DFE
mov   r1,r0                     ; 08102E00
add   r1,0xFC                   ; 08102E02
strh  r5,[r1]                   ; 08102E04
add   r0,0xFE                   ; 08102E06
strh  r5,[r0]                   ; 08102E08
ldr   r4,=0x03006210            ; 08102E0A
mov   r0,r4                     ; 08102E0C
bl    Sub0810B38C               ; 08102E0E
mov   r1,0x88                   ; 08102E12
lsl   r1,r1,0x4                 ; 08102E14
add   r0,r4,r1                  ; 08102E16
strh  r5,[r0]                   ; 08102E18
sub   r1,0x2                    ; 08102E1A
add   r0,r4,r1                  ; 08102E1C
strh  r5,[r0]                   ; 08102E1E
add   r1,0x4                    ; 08102E20
add   r0,r4,r1                  ; 08102E22
strh  r5,[r0]                   ; 08102E24
add   r1,0x2                    ; 08102E26
add   r0,r4,r1                  ; 08102E28
strh  r5,[r0]                   ; 08102E2A
ldr   r0,=0x08BC                ; 08102E2C
add   r4,r4,r0                  ; 08102E2E
mov   r0,0x3F                   ; 08102E30
strh  r0,[r4]                   ; 08102E32
add   sp,0x4                    ; 08102E34
pop   {r4-r6}                   ; 08102E36
pop   {r0}                      ; 08102E38
bx    r0                        ; 08102E3A
.pool                           ; 08102E3C

Sub08102E74:
push  {r4-r7,lr}                ; 08102E74
mov   r7,r8                     ; 08102E76
push  {r7}                      ; 08102E78
mov   r0,0xD5                   ; 08102E7A
bl    SpawnSpriteMainLowestSlot ; 08102E7C
lsl   r0,r0,0x18                ; 08102E80
lsr   r1,r0,0x18                ; 08102E82
cmp   r1,0xFF                   ; 08102E84
beq   @@Code08102F1A            ; 08102E86
ldr   r2,=0x03007240            ; 08102E88  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 08102E8A
mul   r0,r1                     ; 08102E8C
mov   r1,0x95                   ; 08102E8E
lsl   r1,r1,0x2                 ; 08102E90
add   r0,r0,r1                  ; 08102E92
ldr   r1,[r2]                   ; 08102E94
add   r1,r1,r0                  ; 08102E96
mov   r0,0x80                   ; 08102E98
lsl   r0,r0,0x8                 ; 08102E9A
str   r0,[r1]                   ; 08102E9C
mov   r0,0xB8                   ; 08102E9E
lsl   r0,r0,0x7                 ; 08102EA0
str   r0,[r1,0x4]               ; 08102EA2
ldr   r0,=0xF801                ; 08102EA4
strh  r0,[r1,0x2A]              ; 08102EA6
mov   r3,r1                     ; 08102EA8
add   r3,0x6A                   ; 08102EAA
strh  r0,[r3]                   ; 08102EAC
add   r1,0x9C                   ; 08102EAE
mov   r0,0x6                    ; 08102EB0
strb  r0,[r1]                   ; 08102EB2
mov   r4,0x1                    ; 08102EB4
mov   r7,r2                     ; 08102EB6
ldr   r5,=0x03002200            ; 08102EB8
ldr   r2,=0x47EE                ; 08102EBA
add   r6,r5,r2                  ; 08102EBC
@@Code08102EBE:
mov   r0,0x83                   ; 08102EBE
bl    Sub0804A23C               ; 08102EC0
lsl   r0,r0,0x18                ; 08102EC4
lsr   r1,r0,0x18                ; 08102EC6
cmp   r1,0xFF                   ; 08102EC8
beq   @@Code08102F1A            ; 08102ECA
mov   r0,0xB0                   ; 08102ECC
mul   r0,r1                     ; 08102ECE
mov   r1,0x95                   ; 08102ED0
lsl   r1,r1,0x2                 ; 08102ED2
add   r0,r0,r1                  ; 08102ED4
ldr   r1,[r7]                   ; 08102ED6
add   r3,r1,r0                  ; 08102ED8
ldr   r2,=0x47E6                ; 08102EDA
add   r0,r5,r2                  ; 08102EDC
ldrh  r1,[r0]                   ; 08102EDE
ldr   r0,=Data081A5EA0          ; 08102EE0
add   r0,r4,r0                  ; 08102EE2
ldrb  r0,[r0]                   ; 08102EE4
add   r1,r1,r0                  ; 08102EE6
lsl   r1,r1,0x8                 ; 08102EE8
str   r1,[r3]                   ; 08102EEA
mov   r0,0x0                    ; 08102EEC
ldsh  r1,[r6,r0]                ; 08102EEE
ldr   r2,=Data081A5EA2          ; 08102EF0
lsl   r0,r4,0x1                 ; 08102EF2
add   r0,r0,r2                  ; 08102EF4
mov   r2,0x0                    ; 08102EF6
ldsh  r0,[r0,r2]                ; 08102EF8
add   r1,r1,r0                  ; 08102EFA
lsl   r1,r1,0x8                 ; 08102EFC
str   r1,[r3,0x4]               ; 08102EFE
ldr   r0,=Data081A5EA6          ; 08102F00
add   r0,r4,r0                  ; 08102F02
ldrb  r0,[r0]                   ; 08102F04
str   r0,[r3,0x8]               ; 08102F06
cmp   r4,0x0                    ; 08102F08
bne   @@Code08102F14            ; 08102F0A
mov   r0,0x2                    ; 08102F0C
strh  r0,[r3,0x38]              ; 08102F0E
ldr   r0,=0x2001                ; 08102F10
strh  r0,[r3,0x2A]              ; 08102F12
@@Code08102F14:
sub   r4,0x1                    ; 08102F14
cmp   r4,0x0                    ; 08102F16
bge   @@Code08102EBE            ; 08102F18
@@Code08102F1A:
pop   {r3}                      ; 08102F1A
mov   r8,r3                     ; 08102F1C
pop   {r4-r7}                   ; 08102F1E
pop   {r0}                      ; 08102F20
bx    r0                        ; 08102F22
.pool                           ; 08102F24

Sub08102F48:
push  {r4-r7,lr}                ; 08102F48
mov   r7,r8                     ; 08102F4A
push  {r7}                      ; 08102F4C
mov   r4,r0                     ; 08102F4E
ldr   r6,=0x03007240            ; 08102F50  Normal gameplay IWRAM (0300220C)
ldr   r0,[r6]                   ; 08102F52
ldr   r1,=0x2618                ; 08102F54
add   r7,r0,r1                  ; 08102F56
ldr   r0,=0x02027C00            ; 08102F58
ldr   r1,=0x0600B800            ; 08102F5A
mov   r2,0x1                    ; 08102F5C
neg   r2,r2                     ; 08102F5E
mov   r3,0x80                   ; 08102F60
lsl   r3,r3,0x1                 ; 08102F62
bl    Sub0810B7AC               ; 08102F64
ldr   r0,=0x0300702C            ; 08102F68  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 08102F6A
ldr   r0,=0x119E                ; 08102F6C
add   r2,r1,r0                  ; 08102F6E
mov   r0,0x0                    ; 08102F70
mov   r8,r0                     ; 08102F72
mov   r0,0xE0                   ; 08102F74
lsl   r0,r0,0x3                 ; 08102F76
strh  r0,[r2]                   ; 08102F78
mov   r0,0x8D                   ; 08102F7A
lsl   r0,r0,0x5                 ; 08102F7C
add   r2,r1,r0                  ; 08102F7E
mov   r0,0xA0                   ; 08102F80
lsl   r0,r0,0x4                 ; 08102F82
strh  r0,[r2]                   ; 08102F84
ldr   r0,=0x11A2                ; 08102F86
add   r1,r1,r0                  ; 08102F88
mov   r0,0xB0                   ; 08102F8A
lsl   r0,r0,0x2                 ; 08102F8C
strh  r0,[r1]                   ; 08102F8E
ldr   r5,=0x03002200            ; 08102F90
ldr   r0,=0x47C6                ; 08102F92
add   r1,r5,r0                  ; 08102F94
ldr   r0,=0x3601                ; 08102F96
strh  r0,[r1]                   ; 08102F98
bl    Sub08102E74               ; 08102F9A
mov   r0,0xCF                   ; 08102F9E
bl    Sub0804A23C               ; 08102FA0
lsl   r0,r0,0x18                ; 08102FA4
lsr   r1,r0,0x18                ; 08102FA6
cmp   r1,0xFF                   ; 08102FA8
beq   @@Code08102FBC            ; 08102FAA
mov   r0,0xB0                   ; 08102FAC
mul   r0,r1                     ; 08102FAE
ldr   r1,[r6]                   ; 08102FB0
add   r0,r0,r1                  ; 08102FB2
ldr   r1,=0x02BA                ; 08102FB4
add   r0,r0,r1                  ; 08102FB6
mov   r1,0x2                    ; 08102FB8
strh  r1,[r0]                   ; 08102FBA
@@Code08102FBC:
ldr   r0,=0x48F7                ; 08102FBC
add   r1,r5,r0                  ; 08102FBE
mov   r0,0x3                    ; 08102FC0
strb  r0,[r1]                   ; 08102FC2
ldr   r1,=0x47CA                ; 08102FC4
add   r2,r5,r1                  ; 08102FC6
ldrh  r1,[r2]                   ; 08102FC8
ldr   r0,=0xFFFC                ; 08102FCA
and   r0,r1                     ; 08102FCC
mov   r1,0x1                    ; 08102FCE
orr   r0,r1                     ; 08102FD0
strh  r0,[r2]                   ; 08102FD2
ldr   r0,=0x47CC                ; 08102FD4
add   r1,r5,r0                  ; 08102FD6
ldr   r0,=0x170E                ; 08102FD8
strh  r0,[r1]                   ; 08102FDA
ldr   r0,[r6]                   ; 08102FDC
ldr   r1,=0x29A8                ; 08102FDE
add   r0,r0,r1                  ; 08102FE0
mov   r1,0xF                    ; 08102FE2
strh  r1,[r0]                   ; 08102FE4
mov   r0,0x2                    ; 08102FE6
strh  r0,[r4,0x38]              ; 08102FE8
mov   r1,r4                     ; 08102FEA
add   r1,0x42                   ; 08102FEC
mov   r0,0xC0                   ; 08102FEE
lsl   r0,r0,0x1                 ; 08102FF0
strh  r0,[r1]                   ; 08102FF2
add   r1,0x38                   ; 08102FF4
mov   r0,0x80                   ; 08102FF6
strh  r0,[r1]                   ; 08102FF8
mov   r0,r4                     ; 08102FFA
add   r0,0x66                   ; 08102FFC
mov   r1,r8                     ; 08102FFE
strh  r1,[r0]                   ; 08103000
strh  r1,[r7,0x6]               ; 08103002
mov   r0,r4                     ; 08103004
bl    Sub08103058               ; 08103006
pop   {r3}                      ; 0810300A
mov   r8,r3                     ; 0810300C
pop   {r4-r7}                   ; 0810300E
pop   {r0}                      ; 08103010
bx    r0                        ; 08103012
.pool                           ; 08103014

Sub08103058:
mov   r3,r0                     ; 08103058
add   r3,0x6E                   ; 0810305A
ldrh  r1,[r3]                   ; 0810305C
add   r1,0x1                    ; 0810305E
mov   r2,0x0                    ; 08103060
strh  r1,[r3]                   ; 08103062
add   r0,0x6A                   ; 08103064
strh  r2,[r0]                   ; 08103066
bx    lr                        ; 08103068
.pool                           ; 0810306A

Sub0810306C:
push  {r4-r7,lr}                ; 0810306C
mov   r6,r0                     ; 0810306E
ldr   r0,=0x03007240            ; 08103070  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08103072
ldr   r1,=0x2618                ; 08103074
add   r7,r0,r1                  ; 08103076
mov   r5,r6                     ; 08103078
add   r5,0x6A                   ; 0810307A
mov   r2,0x0                    ; 0810307C
ldsh  r4,[r5,r2]                ; 0810307E
ldr   r0,=0x7FFF                ; 08103080
mov   r1,0x0                    ; 08103082
mov   r2,r4                     ; 08103084
bl    Sub0810BDC8               ; 08103086
mov   r3,r0                     ; 0810308A
add   r4,0x1                    ; 0810308C
strh  r4,[r5]                   ; 0810308E
cmp   r4,0xFF                   ; 08103090
bls   @@Code0810309E            ; 08103092
mov   r1,r6                     ; 08103094
add   r1,0x6E                   ; 08103096
ldrh  r0,[r1]                   ; 08103098
add   r0,0x1                    ; 0810309A
strh  r0,[r1]                   ; 0810309C
@@Code0810309E:
ldrh  r2,[r7,0x6]               ; 0810309E
cmp   r2,0x0                    ; 081030A0
beq   @@Code081030E0            ; 081030A2
cmp   r4,0xFF                   ; 081030A4
bls   @@Code081030C8            ; 081030A6
ldr   r0,=0x03002200            ; 081030A8
ldr   r5,=0x4888                ; 081030AA
add   r0,r0,r5                  ; 081030AC
mov   r1,0x0                    ; 081030AE
b     @@Code0810311A            ; 081030B0
.pool                           ; 081030B2

@@Code081030C8:
ldr   r0,=0x03002200            ; 081030C8
lsr   r2,r4,0x4                 ; 081030CA
mov   r1,0x10                   ; 081030CC
sub   r1,r1,r2                  ; 081030CE
ldr   r2,=0x488C                ; 081030D0
add   r0,r0,r2                  ; 081030D2
b     @@Code0810311A            ; 081030D4
.pool                           ; 081030D6

@@Code081030E0:
lsr   r0,r3,0xB                 ; 081030E0
mov   r1,0xF                    ; 081030E2
bic   r1,r0                     ; 081030E4
ldr   r3,=0x03002200            ; 081030E6
ldr   r5,=0x48FA                ; 081030E8
add   r0,r3,r5                  ; 081030EA
strb  r1,[r0]                   ; 081030EC
cmp   r4,0xFF                   ; 081030EE
bls   @@Code08103110            ; 081030F0
ldr   r1,=0x4888                ; 081030F2
add   r0,r3,r1                  ; 081030F4
strh  r2,[r0]                   ; 081030F6
ldr   r0,=0x03006D80            ; 081030F8
strh  r2,[r0,0x30]              ; 081030FA
b     @@Code0810311C            ; 081030FC
.pool                           ; 081030FE

@@Code08103110:
lsr   r0,r4,0x4                 ; 08103110
mov   r1,0x10                   ; 08103112
sub   r1,r1,r0                  ; 08103114
ldr   r2,=0x488C                ; 08103116
add   r0,r3,r2                  ; 08103118
@@Code0810311A:
strh  r1,[r0]                   ; 0810311A
@@Code0810311C:
pop   {r4-r7}                   ; 0810311C
pop   {r0}                      ; 0810311E
bx    r0                        ; 08103120
.pool                           ; 08103122

Sub08103128:
push  {r4,lr}                   ; 08103128
mov   r1,r0                     ; 0810312A
ldr   r0,=0x03007240            ; 0810312C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 0810312E
mov   r2,0x8C                   ; 08103130
lsl   r2,r2,0x2                 ; 08103132
add   r4,r0,r2                  ; 08103134
ldr   r0,=0x03002200            ; 08103136
ldr   r2,=0x47DC                ; 08103138
add   r0,r0,r2                  ; 0810313A
ldrh  r3,[r0]                   ; 0810313C
mov   r2,0xE6                   ; 0810313E
lsl   r2,r2,0x3                 ; 08103140
cmp   r3,r2                     ; 08103142
bls   @@Code08103190            ; 08103144
sub   r3,0x1                    ; 08103146
cmp   r3,r2                     ; 08103148
bhi   @@Code08103174            ; 0810314A
ldr   r0,=0x03006D80            ; 0810314C
mov   r3,r2                     ; 0810314E
ldr   r2,=0x020E                ; 08103150
add   r1,r0,r2                  ; 08103152
mov   r2,0x0                    ; 08103154
strh  r3,[r1]                   ; 08103156
strh  r2,[r4,0x14]              ; 08103158
mov   r1,r0                     ; 0810315A
b     @@Code0810317A            ; 0810315C
.pool                           ; 0810315E

@@Code08103174:
mov   r0,0x1                    ; 08103174
strh  r0,[r4,0x14]              ; 08103176
ldr   r1,=0x03006D80            ; 08103178
@@Code0810317A:
lsl   r0,r3,0x8                 ; 0810317A
str   r0,[r4,0x4]               ; 0810317C
mov   r0,0x83                   ; 0810317E
lsl   r0,r0,0x2                 ; 08103180
add   r1,r1,r0                  ; 08103182
mov   r0,0xE6                   ; 08103184
lsl   r0,r0,0x3                 ; 08103186
b     @@Code08103196            ; 08103188
.pool                           ; 0810318A

@@Code08103190:
add   r1,0x6E                   ; 08103190
ldrh  r0,[r1]                   ; 08103192
add   r0,0x1                    ; 08103194
@@Code08103196:
strh  r0,[r1]                   ; 08103196
pop   {r4}                      ; 08103198
pop   {r0}                      ; 0810319A
bx    r0                        ; 0810319C
.pool                           ; 0810319E

Sub081031A0:
push  {r4-r7,lr}                ; 081031A0
mov   r7,r8                     ; 081031A2
push  {r7}                      ; 081031A4
mov   r5,r0                     ; 081031A6
mov   r7,r1                     ; 081031A8
ldr   r4,=0x02010802            ; 081031AA
mov   r0,0x1E                   ; 081031AC
add   r0,r0,r4                  ; 081031AE
mov   r8,r0                     ; 081031B0
ldr   r6,=0x02010402            ; 081031B2
@@Code081031B4:
ldrh  r1,[r5]                   ; 081031B4
mov   r0,0x0                    ; 081031B6
mov   r2,r7                     ; 081031B8
bl    Sub0810BDC8               ; 081031BA
strh  r0,[r4]                   ; 081031BE
strh  r0,[r6]                   ; 081031C0
add   r5,0x2                    ; 081031C2
add   r4,0x2                    ; 081031C4
add   r6,0x2                    ; 081031C6
cmp   r4,r8                     ; 081031C8
blo   @@Code081031B4            ; 081031CA
ldr   r1,=0x03002200            ; 081031CC
ldr   r0,=0x487A                ; 081031CE
add   r2,r1,r0                  ; 081031D0
mov   r0,0x1                    ; 081031D2
strh  r0,[r2]                   ; 081031D4
ldr   r0,=0x487C                ; 081031D6
add   r2,r1,r0                  ; 081031D8
mov   r0,0x2                    ; 081031DA
strh  r0,[r2]                   ; 081031DC
ldr   r0,=0x487E                ; 081031DE
add   r1,r1,r0                  ; 081031E0
mov   r0,0x1E                   ; 081031E2
strh  r0,[r1]                   ; 081031E4
pop   {r3}                      ; 081031E6
mov   r8,r3                     ; 081031E8
pop   {r4-r7}                   ; 081031EA
pop   {r0}                      ; 081031EC
bx    r0                        ; 081031EE
.pool                           ; 081031F0

Sub08103208:
push  {r4-r7,lr}                ; 08103208
mov   r7,r9                     ; 0810320A
mov   r6,r8                     ; 0810320C
push  {r6-r7}                   ; 0810320E
mov   r6,r0                     ; 08103210
bl    Sub081034D0               ; 08103212
cmp   r0,0x0                    ; 08103216
beq   @@Code0810321C            ; 08103218
b     @@Code08103326            ; 0810321A
@@Code0810321C:
ldr   r0,=0x0300702C            ; 0810321C  Sprite RAM structs (03002460)
mov   r8,r0                     ; 0810321E
ldr   r0,[r0]                   ; 08103220
mov   r1,0x8D                   ; 08103222
lsl   r1,r1,0x5                 ; 08103224
mov   r9,r1                     ; 08103226
add   r0,r9                     ; 08103228
ldrh  r4,[r0]                   ; 0810322A
mov   r1,0x99                   ; 0810322C
lsl   r1,r1,0x4                 ; 0810322E
sub   r1,r1,r4                  ; 08103230
cmp   r1,0x0                    ; 08103232
bge   @@Code08103238            ; 08103234
mov   r1,0x0                    ; 08103236
@@Code08103238:
asr   r1,r1,0x1                 ; 08103238
mov   r0,0x80                   ; 0810323A
lsl   r0,r0,0x1                 ; 0810323C
cmp   r1,r0                     ; 0810323E
ble   @@Code08103244            ; 08103240
mov   r1,r0                     ; 08103242
@@Code08103244:
ldr   r7,=Data081A712A          ; 08103244
mov   r0,r7                     ; 08103246
bl    Sub081031A0               ; 08103248
mov   r0,r6                     ; 0810324C
add   r0,0x42                   ; 0810324E
ldrh  r0,[r0]                   ; 08103250
cmp   r0,0x0                    ; 08103252
bne   @@Code08103326            ; 08103254
ldr   r2,=0x03002200            ; 08103256
ldr   r3,=0x48A2                ; 08103258
add   r0,r2,r3                  ; 0810325A
ldrh  r1,[r0]                   ; 0810325C
mov   r0,0xF                    ; 0810325E
and   r1,r0                     ; 08103260
mov   r0,0x40                   ; 08103262
orr   r1,r0                     ; 08103264
ldr   r5,=0x03006D80            ; 08103266
mov   r3,0xE0                   ; 08103268
lsl   r3,r3,0x1                 ; 0810326A
add   r0,r5,r3                  ; 0810326C
strh  r1,[r0]                   ; 0810326E
mov   r1,r8                     ; 08103270
ldr   r0,[r1]                   ; 08103272
sub   r4,0x1                    ; 08103274
add   r0,r9                     ; 08103276
strh  r4,[r0]                   ; 08103278
ldr   r0,=0x074F                ; 0810327A
cmp   r4,r0                     ; 0810327C
bgt   @@Code081032E8            ; 0810327E
mov   r0,r6                     ; 08103280
add   r0,0x62                   ; 08103282
strh  r4,[r0]                   ; 08103284
ldr   r1,=0x02010802            ; 08103286
mov   r0,r7                     ; 08103288
mov   r2,0xF                    ; 0810328A
bl    swi_MemoryCopy4or2        ; 0810328C  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010402            ; 08103290
mov   r0,r7                     ; 08103292
mov   r2,0xF                    ; 08103294
bl    swi_MemoryCopy4or2        ; 08103296  Memory copy/fill, 4- or 2-byte blocks
bl    Sub081058C8               ; 0810329A
mov   r1,r6                     ; 0810329E
add   r1,0x6E                   ; 081032A0
mov   r0,0x1E                   ; 081032A2
strh  r0,[r1]                   ; 081032A4
mov   r0,r6                     ; 081032A6
bl    Sub08104380               ; 081032A8
mov   r1,r5                     ; 081032AC
add   r1,0xA2                   ; 081032AE
mov   r0,0x30                   ; 081032B0
strh  r0,[r1]                   ; 081032B2
ldr   r0,=0x03007240            ; 081032B4  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 081032B6
mov   r3,0x95                   ; 081032B8
lsl   r3,r3,0x2                 ; 081032BA
add   r0,r0,r3                  ; 081032BC
mov   r1,0x3A                   ; 081032BE
strh  r1,[r0,0x2C]              ; 081032C0
b     @@Code08103326            ; 081032C2
.pool                           ; 081032C4

@@Code081032E8:
ldr   r0,=0x08FF                ; 081032E8
cmp   r4,r0                     ; 081032EA
bgt   @@Code081032F8            ; 081032EC
mov   r0,0xE4                   ; 081032EE
lsl   r0,r0,0x1                 ; 081032F0
add   r1,r5,r0                  ; 081032F2
mov   r0,0x1                    ; 081032F4
strh  r0,[r1]                   ; 081032F6
@@Code081032F8:
mov   r4,r6                     ; 081032F8
add   r4,0x44                   ; 081032FA
ldrh  r0,[r4]                   ; 081032FC
cmp   r0,0x0                    ; 081032FE
bne   @@Code08103326            ; 08103300
ldr   r3,=0x4058                ; 08103302
add   r1,r2,r3                  ; 08103304
mov   r0,0x78                   ; 08103306
strh  r0,[r1]                   ; 08103308
mov   r0,0x86                   ; 0810330A
bl    PlayYISound               ; 0810330C
ldr   r2,=Data081A62A0          ; 08103310
ldr   r0,=0x03007240            ; 08103312  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08103314
ldr   r1,=0x29CC                ; 08103316
add   r0,r0,r1                  ; 08103318
ldrh  r1,[r0]                   ; 0810331A
mov   r0,0x3                    ; 0810331C
and   r0,r1                     ; 0810331E
add   r0,r0,r2                  ; 08103320
ldrb  r0,[r0]                   ; 08103322
strh  r0,[r4]                   ; 08103324
@@Code08103326:
pop   {r3-r4}                   ; 08103326
mov   r8,r3                     ; 08103328
mov   r9,r4                     ; 0810332A
pop   {r4-r7}                   ; 0810332C
pop   {r0}                      ; 0810332E
bx    r0                        ; 08103330
.pool                           ; 08103332

Sub08103348:
push  {r4-r6,lr}                ; 08103348
mov   r4,r0                     ; 0810334A
mov   r1,0x0                    ; 0810334C
ldsh  r0,[r4,r1]                ; 0810334E
asr   r5,r0,0x2                 ; 08103350
mov   r1,r0                     ; 08103352
cmp   r1,0x0                    ; 08103354
bne   @@Code0810335A            ; 08103356
mov   r1,0x1                    ; 08103358
@@Code0810335A:
mov   r0,0x80                   ; 0810335A
lsl   r0,r0,0x9                 ; 0810335C
bl    swi_Divide                ; 0810335E
mov   r2,0x4                    ; 08103362
ldsh  r1,[r4,r2]                ; 08103364
ldr   r3,=0x03002200            ; 08103366
ldr   r6,=0x47D4                ; 08103368
add   r2,r3,r6                  ; 0810336A
ldrh  r2,[r2]                   ; 0810336C
sub   r1,r1,r2                  ; 0810336E
sub   r1,0x78                   ; 08103370
mul   r1,r0                     ; 08103372
add   r1,0x80                   ; 08103374
asr   r1,r1,0x8                 ; 08103376
add   r1,0x78                   ; 08103378
strh  r1,[r4,0x8]               ; 0810337A
add   r6,0x4                    ; 0810337C
add   r2,r3,r6                  ; 0810337E
strh  r1,[r2]                   ; 08103380
mov   r2,0x2                    ; 08103382
ldsh  r1,[r4,r2]                ; 08103384
add   r6,0x4                    ; 08103386
add   r2,r3,r6                  ; 08103388
ldrh  r2,[r2]                   ; 0810338A
sub   r1,r1,r2                  ; 0810338C
sub   r1,0x70                   ; 0810338E
mul   r1,r0                     ; 08103390
add   r1,0x80                   ; 08103392
asr   r1,r1,0x8                 ; 08103394
add   r1,0x70                   ; 08103396
strh  r1,[r4,0xA]               ; 08103398
ldr   r2,=0x47E0                ; 0810339A
add   r3,r3,r2                  ; 0810339C
strh  r1,[r3]                   ; 0810339E
strh  r0,[r4,0x6]               ; 081033A0
mov   r0,r5                     ; 081033A2
pop   {r4-r6}                   ; 081033A4
pop   {r1}                      ; 081033A6
bx    r1                        ; 081033A8
.pool                           ; 081033AA

Sub081033B8:
push  {r4-r7,lr}                ; 081033B8
mov   r7,r9                     ; 081033BA
mov   r6,r8                     ; 081033BC
push  {r6-r7}                   ; 081033BE
mov   r6,r0                     ; 081033C0
mov   r5,r1                     ; 081033C2
mov   r8,r2                     ; 081033C4
ldr   r4,=0x02010802            ; 081033C6
mov   r0,0x1E                   ; 081033C8
add   r0,r0,r4                  ; 081033CA
mov   r9,r0                     ; 081033CC
ldr   r7,=0x02010402            ; 081033CE
@@Code081033D0:
ldrh  r0,[r6]                   ; 081033D0
ldrh  r1,[r5]                   ; 081033D2
mov   r2,r8                     ; 081033D4
bl    Sub0810BDC8               ; 081033D6
strh  r0,[r4]                   ; 081033DA
strh  r0,[r7]                   ; 081033DC
add   r6,0x2                    ; 081033DE
add   r5,0x2                    ; 081033E0
add   r4,0x2                    ; 081033E2
add   r7,0x2                    ; 081033E4
cmp   r4,r9                     ; 081033E6
blo   @@Code081033D0            ; 081033E8
ldr   r1,=0x03002200            ; 081033EA
ldr   r0,=0x487A                ; 081033EC
add   r2,r1,r0                  ; 081033EE
mov   r0,0x1                    ; 081033F0
strh  r0,[r2]                   ; 081033F2
ldr   r0,=0x487C                ; 081033F4
add   r2,r1,r0                  ; 081033F6
mov   r0,0x2                    ; 081033F8
strh  r0,[r2]                   ; 081033FA
ldr   r0,=0x487E                ; 081033FC
add   r1,r1,r0                  ; 081033FE
mov   r0,0x1E                   ; 08103400
strh  r0,[r1]                   ; 08103402
pop   {r3-r4}                   ; 08103404
mov   r8,r3                     ; 08103406
mov   r9,r4                     ; 08103408
pop   {r4-r7}                   ; 0810340A
pop   {r0}                      ; 0810340C
bx    r0                        ; 0810340E
.pool                           ; 08103410

Sub08103428:
push  {r4-r7,lr}                ; 08103428
mov   r7,r9                     ; 0810342A
mov   r6,r8                     ; 0810342C
push  {r6-r7}                   ; 0810342E
mov   r6,r0                     ; 08103430
lsl   r2,r1,0x1                 ; 08103432
sub   r2,0x48                   ; 08103434
cmp   r2,0x0                    ; 08103436
bge   @@Code0810343C            ; 08103438
mov   r2,0x0                    ; 0810343A
@@Code0810343C:
mov   r0,0x80                   ; 0810343C
lsl   r0,r0,0x1                 ; 0810343E
cmp   r2,r0                     ; 08103440
ble   @@Code08103446            ; 08103442
mov   r2,r0                     ; 08103444
@@Code08103446:
ldr   r1,=Data081A714A          ; 08103446
mov   r0,r1                     ; 08103448
sub   r0,0x20                   ; 0810344A
bl    Sub081033B8               ; 0810344C
ldr   r0,=0x0300702C            ; 08103450  Sprite RAM structs (03002460)
mov   r9,r0                     ; 08103452
ldr   r1,[r0]                   ; 08103454
ldr   r2,=0x11AA                ; 08103456
mov   r8,r2                     ; 08103458
add   r0,r1,r2                  ; 0810345A
ldrh  r0,[r0]                   ; 0810345C
cmp   r0,0x0                    ; 0810345E
beq   @@Code081034C0            ; 08103460
mov   r7,r6                     ; 08103462
add   r7,0x6E                   ; 08103464
ldrh  r0,[r7]                   ; 08103466
cmp   r0,0x20                   ; 08103468
bhi   @@Code081034C0            ; 0810346A
ldr   r0,=0x11AC                ; 0810346C
add   r1,r1,r0                  ; 0810346E
ldrh  r0,[r1]                   ; 08103470
add   r0,0x1                    ; 08103472
mov   r5,0x0                    ; 08103474
strh  r0,[r1]                   ; 08103476
mov   r0,r6                     ; 08103478
add   r0,0x7A                   ; 0810347A
mov   r4,0x80                   ; 0810347C
strh  r4,[r0]                   ; 0810347E
ldr   r1,=0x03002200            ; 08103480
ldr   r2,=0x4058                ; 08103482
add   r1,r1,r2                  ; 08103484
mov   r0,0x78                   ; 08103486
strh  r0,[r1]                   ; 08103488
mov   r0,0xA9                   ; 0810348A
bl    PlayYISound               ; 0810348C
mov   r0,0x21                   ; 08103490
strh  r0,[r7]                   ; 08103492
mov   r0,r6                     ; 08103494
add   r0,0x48                   ; 08103496
strh  r4,[r0]                   ; 08103498
mov   r1,r9                     ; 0810349A
ldr   r0,[r1]                   ; 0810349C
add   r0,r8                     ; 0810349E
strh  r5,[r0]                   ; 081034A0
mov   r0,0x1                    ; 081034A2
b     @@Code081034C2            ; 081034A4
.pool                           ; 081034A6

@@Code081034C0:
mov   r0,0x0                    ; 081034C0
@@Code081034C2:
pop   {r3-r4}                   ; 081034C2
mov   r8,r3                     ; 081034C4
mov   r9,r4                     ; 081034C6
pop   {r4-r7}                   ; 081034C8
pop   {r1}                      ; 081034CA
bx    r1                        ; 081034CC
.pool                           ; 081034CE

Sub081034D0:
push  {r4-r6,lr}                ; 081034D0
add   sp,-0x20                  ; 081034D2
mov   r6,r0                     ; 081034D4
ldrh  r4,[r6,0x38]              ; 081034D6
lsl   r4,r4,0x3                 ; 081034D8
ldr   r0,=DataPtrs081A6268      ; 081034DA
add   r4,r4,r0                  ; 081034DC
ldrb  r0,[r4,0x4]               ; 081034DE
strh  r0,[r6,0x36]              ; 081034E0
ldr   r0,=0x02027C00            ; 081034E2
ldr   r1,[r4]                   ; 081034E4
ldr   r2,=0x0600B820            ; 081034E6
mov   r3,0xC0                   ; 081034E8
bl    Sub0810B794               ; 081034EA
add   r5,sp,0x14                ; 081034EE
ldr   r0,=0x0300702C            ; 081034F0  Sprite RAM structs (03002460)
ldr   r2,[r0]                   ; 081034F2
ldr   r1,=0x119E                ; 081034F4
add   r0,r2,r1                  ; 081034F6
ldrh  r0,[r0]                   ; 081034F8
strh  r0,[r5]                   ; 081034FA
mov   r3,0x8D                   ; 081034FC
lsl   r3,r3,0x5                 ; 081034FE
add   r0,r2,r3                  ; 08103500
mov   r1,0x6                    ; 08103502
ldsb  r1,[r4,r1]                ; 08103504
ldrh  r0,[r0]                   ; 08103506
add   r1,r1,r0                  ; 08103508
ldr   r0,=0x03006D80            ; 0810350A
ldr   r3,=0x0256                ; 0810350C
add   r0,r0,r3                  ; 0810350E
ldrh  r0,[r0]                   ; 08103510
add   r0,r0,r1                  ; 08103512
strh  r0,[r5,0x2]               ; 08103514
ldr   r0,=0x11A2                ; 08103516
add   r2,r2,r0                  ; 08103518
mov   r0,0x5                    ; 0810351A
ldsb  r0,[r4,r0]                ; 0810351C
ldrh  r2,[r2]                   ; 0810351E
add   r0,r0,r2                  ; 08103520
strh  r0,[r5,0x4]               ; 08103522
mov   r0,r5                     ; 08103524
bl    Sub08103348               ; 08103526
mov   r3,r0                     ; 0810352A
ldr   r1,=0x03002200            ; 0810352C
ldr   r2,=0x47D8                ; 0810352E
add   r0,r1,r2                  ; 08103530
ldrh  r2,[r0]                   ; 08103532
ldr   r4,=0x47E8                ; 08103534
add   r0,r1,r4                  ; 08103536
strh  r2,[r0]                   ; 08103538
ldr   r2,=0x47E0                ; 0810353A
add   r0,r1,r2                  ; 0810353C
ldrh  r0,[r0]                   ; 0810353E
add   r4,0x8                    ; 08103540
add   r1,r1,r4                  ; 08103542
strh  r0,[r1]                   ; 08103544
mov   r0,0x80                   ; 08103546
lsl   r0,r0,0x7                 ; 08103548
str   r0,[sp]                   ; 0810354A
mov   r0,0xA0                   ; 0810354C
lsl   r0,r0,0x7                 ; 0810354E
str   r0,[sp,0x4]               ; 08103550
mov   r1,sp                     ; 08103552
ldrh  r0,[r5,0x8]               ; 08103554
strh  r0,[r1,0x8]               ; 08103556
ldrh  r0,[r5,0xA]               ; 08103558
strh  r0,[r1,0xA]               ; 0810355A
ldrh  r0,[r6,0x36]              ; 0810355C
cmp   r0,0x0                    ; 0810355E
beq   @@Code08103598            ; 08103560
neg   r0,r3                     ; 08103562
strh  r0,[r1,0xC]               ; 08103564
b     @@Code0810359C            ; 08103566
.pool                           ; 08103568

@@Code08103598:
mov   r0,sp                     ; 08103598
strh  r3,[r0,0xC]               ; 0810359A
@@Code0810359C:
mov   r0,sp                     ; 0810359C
mov   r1,0x0                    ; 0810359E
strh  r3,[r0,0xE]               ; 081035A0
strh  r1,[r0,0x10]              ; 081035A2
ldr   r1,=0x03006200            ; 081035A4
mov   r2,0x1                    ; 081035A6
bl    swi_0E                    ; 081035A8
mov   r0,0x6                    ; 081035AC
ldsh  r1,[r5,r0]                ; 081035AE
mov   r0,r6                     ; 081035B0
bl    Sub08103428               ; 081035B2
add   sp,0x20                   ; 081035B6
pop   {r4-r6}                   ; 081035B8
pop   {r1}                      ; 081035BA
bx    r1                        ; 081035BC
.pool                           ; 081035BE

Sub081035C4:
push  {r4-r7,lr}                ; 081035C4
mov   r7,r10                    ; 081035C6
mov   r6,r9                     ; 081035C8
mov   r5,r8                     ; 081035CA
push  {r5-r7}                   ; 081035CC
mov   r4,r0                     ; 081035CE
ldr   r0,[r4,0x1C]              ; 081035D0
cmp   r0,0x0                    ; 081035D2
bne   @@Code081035DA            ; 081035D4
mov   r0,0x1                    ; 081035D6
str   r0,[r4,0x1C]              ; 081035D8
@@Code081035DA:
mov   r0,0x80                   ; 081035DA
lsl   r0,r0,0x9                 ; 081035DC
ldr   r1,[r4,0x1C]              ; 081035DE
bl    swi_Divide                ; 081035E0
mov   r10,r0                    ; 081035E4
ldr   r2,[r4]                   ; 081035E6
mov   r0,0xA0                   ; 081035E8
lsl   r0,r0,0x2                 ; 081035EA
add   r0,r0,r2                  ; 081035EC
mov   r9,r0                     ; 081035EE
ldr   r0,[r4,0x10]              ; 081035F0
lsl   r0,r0,0x8                 ; 081035F2
mov   r8,r0                     ; 081035F4
ldr   r0,[r4,0x18]              ; 081035F6
mov   r1,r10                    ; 081035F8
mul   r1,r0                     ; 081035FA
mov   r0,r1                     ; 081035FC
mov   r3,r8                     ; 081035FE
sub   r3,r3,r0                  ; 08103600
mov   r8,r3                     ; 08103602
cmp   r2,r9                     ; 08103604
bhs   @@Code081036A6            ; 08103606
@@Code08103608:
mov   r5,r8                     ; 08103608
asr   r1,r5,0x8                 ; 0810360A
cmp   r1,0x0                    ; 0810360C
blt   @@Code08103616            ; 0810360E
ldr   r0,[r4,0x8]               ; 08103610
cmp   r1,r0                     ; 08103612
blt   @@Code0810361E            ; 08103614
@@Code08103616:
mov   r0,0x0                    ; 08103616
strh  r0,[r2]                   ; 08103618
add   r2,0x2                    ; 0810361A
b     @@Code0810369C            ; 0810361C
@@Code0810361E:
ldr   r3,[r4,0x4]               ; 0810361E
lsl   r0,r1,0x2                 ; 08103620
add   r3,r3,r0                  ; 08103622
ldr   r1,[r4,0x14]              ; 08103624
ldrb  r0,[r3]                   ; 08103626
ldr   r7,[r4,0xC]               ; 08103628
sub   r0,r0,r7                  ; 0810362A
ldr   r6,[r4,0x1C]              ; 0810362C
mul   r0,r6                     ; 0810362E
asr   r0,r0,0x8                 ; 08103630
sub   r1,r1,r0                  ; 08103632
ldr   r0,[r4,0x14]              ; 08103634
mov   r12,r0                    ; 08103636
cmp   r1,0x0                    ; 08103638
bge   @@Code0810363E            ; 0810363A
mov   r1,0x0                    ; 0810363C
@@Code0810363E:
cmp   r1,0xF0                   ; 0810363E
ble   @@Code08103644            ; 08103640
mov   r1,0xF0                   ; 08103642
@@Code08103644:
mov   r5,r1                     ; 08103644
ldrb  r0,[r3,0x1]               ; 08103646
sub   r0,r0,r7                  ; 08103648
mul   r0,r6                     ; 0810364A
asr   r1,r0,0x8                 ; 0810364C
mov   r0,r12                    ; 0810364E
sub   r1,r0,r1                  ; 08103650
cmp   r1,0x0                    ; 08103652
bge   @@Code08103658            ; 08103654
mov   r1,0x0                    ; 08103656
@@Code08103658:
cmp   r1,0xF0                   ; 08103658
ble   @@Code0810365E            ; 0810365A
mov   r1,0xF0                   ; 0810365C
@@Code0810365E:
lsl   r0,r1,0x8                 ; 0810365E
orr   r0,r5                     ; 08103660
strh  r0,[r2]                   ; 08103662
add   r2,0x2                    ; 08103664
ldrb  r0,[r3,0x2]               ; 08103666
sub   r0,r0,r7                  ; 08103668
mul   r0,r6                     ; 0810366A
asr   r0,r0,0x8                 ; 0810366C
mov   r5,r12                    ; 0810366E
sub   r1,r5,r0                  ; 08103670
cmp   r1,0x0                    ; 08103672
bge   @@Code08103678            ; 08103674
mov   r1,0x0                    ; 08103676
@@Code08103678:
cmp   r1,0xF0                   ; 08103678
ble   @@Code0810367E            ; 0810367A
mov   r1,0xF0                   ; 0810367C
@@Code0810367E:
mov   r5,r1                     ; 0810367E
ldrb  r0,[r3,0x3]               ; 08103680
sub   r0,r0,r7                  ; 08103682
mul   r0,r6                     ; 08103684
asr   r0,r0,0x8                 ; 08103686
mov   r3,r12                    ; 08103688
sub   r1,r3,r0                  ; 0810368A
cmp   r1,0x0                    ; 0810368C
bge   @@Code08103692            ; 0810368E
mov   r1,0x0                    ; 08103690
@@Code08103692:
cmp   r1,0xF0                   ; 08103692
ble   @@Code08103698            ; 08103694
mov   r1,0xF0                   ; 08103696
@@Code08103698:
lsl   r0,r1,0x8                 ; 08103698
orr   r0,r5                     ; 0810369A
@@Code0810369C:
strh  r0,[r2]                   ; 0810369C
add   r2,0x2                    ; 0810369E
add   r8,r10                    ; 081036A0
cmp   r2,r9                     ; 081036A2
blo   @@Code08103608            ; 081036A4
@@Code081036A6:
mov   r0,0x0                    ; 081036A6
strh  r0,[r2]                   ; 081036A8
add   r2,0x2                    ; 081036AA
strh  r0,[r2]                   ; 081036AC
pop   {r3-r5}                   ; 081036AE
mov   r8,r3                     ; 081036B0
mov   r9,r4                     ; 081036B2
mov   r10,r5                    ; 081036B4
pop   {r4-r7}                   ; 081036B6
pop   {r0}                      ; 081036B8
bx    r0                        ; 081036BA

Sub081036BC:
push  {r4-r7,lr}                ; 081036BC
mov   r7,r10                    ; 081036BE
mov   r6,r9                     ; 081036C0
mov   r5,r8                     ; 081036C2
push  {r5-r7}                   ; 081036C4
mov   r5,r0                     ; 081036C6
ldr   r0,[r5,0x1C]              ; 081036C8
cmp   r0,0x0                    ; 081036CA
bne   @@Code081036D2            ; 081036CC
mov   r0,0x1                    ; 081036CE
str   r0,[r5,0x1C]              ; 081036D0
@@Code081036D2:
mov   r0,0x80                   ; 081036D2
lsl   r0,r0,0x9                 ; 081036D4
ldr   r1,[r5,0x1C]              ; 081036D6
bl    swi_Divide                ; 081036D8
mov   r10,r0                    ; 081036DC
ldr   r3,[r5]                   ; 081036DE
mov   r0,0xA0                   ; 081036E0
lsl   r0,r0,0x2                 ; 081036E2
add   r0,r0,r3                  ; 081036E4
mov   r9,r0                     ; 081036E6
ldr   r0,[r5,0x10]              ; 081036E8
lsl   r0,r0,0x8                 ; 081036EA
mov   r8,r0                     ; 081036EC
ldr   r0,[r5,0x18]              ; 081036EE
mov   r1,r10                    ; 081036F0
mul   r1,r0                     ; 081036F2
mov   r0,r1                     ; 081036F4
mov   r2,r8                     ; 081036F6
sub   r2,r2,r0                  ; 081036F8
mov   r8,r2                     ; 081036FA
cmp   r3,r9                     ; 081036FC
bhs   @@Code0810379A            ; 081036FE
@@Code08103700:
mov   r4,r8                     ; 08103700
asr   r1,r4,0x8                 ; 08103702
cmp   r1,0x0                    ; 08103704
blt   @@Code0810370E            ; 08103706
ldr   r0,[r5,0x8]               ; 08103708
cmp   r1,r0                     ; 0810370A
blt   @@Code08103718            ; 0810370C
@@Code0810370E:
mov   r0,0x0                    ; 0810370E
strh  r0,[r3]                   ; 08103710
add   r3,0x2                    ; 08103712
strh  r0,[r3]                   ; 08103714
b     @@Code08103792            ; 08103716
@@Code08103718:
ldr   r4,[r5,0x4]               ; 08103718
lsl   r0,r1,0x2                 ; 0810371A
add   r4,r4,r0                  ; 0810371C
ldr   r1,[r5,0x14]              ; 0810371E
ldrb  r0,[r4]                   ; 08103720
ldr   r7,[r5,0xC]               ; 08103722
sub   r0,r0,r7                  ; 08103724
ldr   r6,[r5,0x1C]              ; 08103726
mul   r0,r6                     ; 08103728
asr   r0,r0,0x8                 ; 0810372A
add   r1,r1,r0                  ; 0810372C
ldr   r2,[r5,0x14]              ; 0810372E
mov   r12,r2                    ; 08103730
cmp   r1,0x0                    ; 08103732
bge   @@Code08103738            ; 08103734
mov   r1,0x0                    ; 08103736
@@Code08103738:
cmp   r1,0xF0                   ; 08103738
ble   @@Code0810373E            ; 0810373A
mov   r1,0xF0                   ; 0810373C
@@Code0810373E:
lsl   r2,r1,0x8                 ; 0810373E
ldrb  r0,[r4,0x1]               ; 08103740
sub   r0,r0,r7                  ; 08103742
mul   r0,r6                     ; 08103744
asr   r1,r0,0x8                 ; 08103746
add   r1,r12                    ; 08103748
cmp   r1,0x0                    ; 0810374A
bge   @@Code08103750            ; 0810374C
mov   r1,0x0                    ; 0810374E
@@Code08103750:
cmp   r1,0xF0                   ; 08103750
ble   @@Code08103756            ; 08103752
mov   r1,0xF0                   ; 08103754
@@Code08103756:
orr   r2,r1                     ; 08103756
strh  r2,[r3]                   ; 08103758
add   r3,0x2                    ; 0810375A
ldrb  r0,[r4,0x2]               ; 0810375C
sub   r0,r0,r7                  ; 0810375E
mul   r0,r6                     ; 08103760
asr   r0,r0,0x8                 ; 08103762
mov   r2,r12                    ; 08103764
add   r1,r2,r0                  ; 08103766
cmp   r1,0x0                    ; 08103768
bge   @@Code0810376E            ; 0810376A
mov   r1,0x0                    ; 0810376C
@@Code0810376E:
cmp   r1,0xF0                   ; 0810376E
ble   @@Code08103774            ; 08103770
mov   r1,0xF0                   ; 08103772
@@Code08103774:
lsl   r2,r1,0x8                 ; 08103774
ldrb  r0,[r4,0x3]               ; 08103776
sub   r0,r0,r7                  ; 08103778
mul   r0,r6                     ; 0810377A
asr   r0,r0,0x8                 ; 0810377C
mov   r4,r12                    ; 0810377E
add   r1,r4,r0                  ; 08103780
cmp   r1,0x0                    ; 08103782
bge   @@Code08103788            ; 08103784
mov   r1,0x0                    ; 08103786
@@Code08103788:
cmp   r1,0xF0                   ; 08103788
ble   @@Code0810378E            ; 0810378A
mov   r1,0xF0                   ; 0810378C
@@Code0810378E:
orr   r2,r1                     ; 0810378E
strh  r2,[r3]                   ; 08103790
@@Code08103792:
add   r3,0x2                    ; 08103792
add   r8,r10                    ; 08103794
cmp   r3,r9                     ; 08103796
blo   @@Code08103700            ; 08103798
@@Code0810379A:
mov   r0,0x0                    ; 0810379A
strh  r0,[r3]                   ; 0810379C
add   r3,0x2                    ; 0810379E
strh  r0,[r3]                   ; 081037A0
pop   {r3-r5}                   ; 081037A2
mov   r8,r3                     ; 081037A4
mov   r9,r4                     ; 081037A6
mov   r10,r5                    ; 081037A8
pop   {r4-r7}                   ; 081037AA
pop   {r0}                      ; 081037AC
bx    r0                        ; 081037AE

Sub081037B0:
push  {lr}                      ; 081037B0
cmp   r1,0x0                    ; 081037B2
beq   @@Code081037BC            ; 081037B4
bl    Sub081035C4               ; 081037B6
b     @@Code081037C0            ; 081037BA
@@Code081037BC:
bl    Sub081036BC               ; 081037BC
@@Code081037C0:
pop   {r0}                      ; 081037C0
bx    r0                        ; 081037C2

Sub081037C4:
push  {r4,lr}                   ; 081037C4
mov   r4,r0                     ; 081037C6
bl    Sub0804B208               ; 081037C8
lsl   r0,r0,0x18                ; 081037CC
cmp   r0,0x0                    ; 081037CE
beq   @@Code081037E4            ; 081037D0
ldr   r1,=Data0829A024          ; 081037D2
mov   r0,r4                     ; 081037D4
bl    LoadDynGfx_32x32          ; 081037D6
mov   r0,0x1                    ; 081037DA
b     @@Code081037E6            ; 081037DC
.pool                           ; 081037DE

@@Code081037E4:
mov   r0,0x0                    ; 081037E4
@@Code081037E6:
pop   {r4}                      ; 081037E6
pop   {r1}                      ; 081037E8
bx    r1                        ; 081037EA

Sub081037EC:
push  {r4-r5,lr}                ; 081037EC
ldr   r5,=Data081A71CA          ; 081037EE
ldr   r4,=0x03002200            ; 081037F0
ldr   r1,=0x48F7                ; 081037F2
add   r0,r4,r1                  ; 081037F4
ldrb  r0,[r0]                   ; 081037F6
cmp   r0,0x0                    ; 081037F8
beq   @@Code08103840            ; 081037FA
ldr   r1,=0x02010AC2            ; 081037FC
mov   r0,r5                     ; 081037FE
mov   r2,0xF                    ; 08103800
bl    swi_MemoryCopy4or2        ; 08103802  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020106C2            ; 08103806
mov   r0,r5                     ; 08103808
mov   r2,0xF                    ; 0810380A
bl    swi_MemoryCopy4or2        ; 0810380C  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x91                   ; 08103810
lsl   r0,r0,0x7                 ; 08103812
add   r1,r4,r0                  ; 08103814
ldr   r0,=0x0161                ; 08103816
strh  r0,[r1]                   ; 08103818
ldr   r0,=0x4882                ; 0810381A
add   r1,r4,r0                  ; 0810381C
mov   r0,0xC2                   ; 0810381E
b     @@Code08103864            ; 08103820
.pool                           ; 08103822

@@Code08103840:
ldr   r1,=0x02010AE2            ; 08103840
mov   r0,r5                     ; 08103842
mov   r2,0xF                    ; 08103844
bl    swi_MemoryCopy4or2        ; 08103846  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020106E2            ; 0810384A
mov   r0,r5                     ; 0810384C
mov   r2,0xF                    ; 0810384E
bl    swi_MemoryCopy4or2        ; 08103850  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x91                   ; 08103854
lsl   r0,r0,0x7                 ; 08103856
add   r1,r4,r0                  ; 08103858
ldr   r0,=0x0171                ; 0810385A
strh  r0,[r1]                   ; 0810385C
ldr   r0,=0x4882                ; 0810385E
add   r1,r4,r0                  ; 08103860
mov   r0,0xE2                   ; 08103862
@@Code08103864:
strh  r0,[r1]                   ; 08103864
ldr   r0,=0x4884                ; 08103866
add   r1,r4,r0                  ; 08103868
mov   r0,0x1E                   ; 0810386A
strh  r0,[r1]                   ; 0810386C
pop   {r4-r5}                   ; 0810386E
pop   {r0}                      ; 08103870
bx    r0                        ; 08103872
.pool                           ; 08103874

Sub08103888:
; sprite 0CF init
push  {r4,lr}                   ; 08103888
mov   r4,r0                     ; 0810388A
bl    Sub081037C4               ; 0810388C
lsl   r0,r0,0x18                ; 08103890
cmp   r0,0x0                    ; 08103892
beq   @@Code081038C4            ; 08103894
bl    Sub081037EC               ; 08103896
mov   r1,0x10                   ; 0810389A
mov   r0,r4                     ; 0810389C
add   r0,0x66                   ; 0810389E
ldrh  r0,[r0]                   ; 081038A0
cmp   r0,0x0                    ; 081038A2
beq   @@Code081038B4            ; 081038A4
ldr   r0,=0x03002200            ; 081038A6
ldr   r2,=0x48F7                ; 081038A8
add   r0,r0,r2                  ; 081038AA
ldrb  r0,[r0]                   ; 081038AC
cmp   r0,0x0                    ; 081038AE
beq   @@Code081038B4            ; 081038B0
mov   r1,0x40                   ; 081038B2
@@Code081038B4:
ldr   r0,=0x0300702C            ; 081038B4  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 081038B6
ldr   r2,=0x11A8                ; 081038B8
add   r0,r0,r2                  ; 081038BA
strh  r1,[r0]                   ; 081038BC
mov   r0,r4                     ; 081038BE
add   r0,0x6A                   ; 081038C0
strh  r1,[r0]                   ; 081038C2
@@Code081038C4:
pop   {r4}                      ; 081038C4
pop   {r0}                      ; 081038C6
bx    r0                        ; 081038C8
.pool                           ; 081038CA

Sub081038DC:
push  {r4-r5,lr}                ; 081038DC
mov   r5,r0                     ; 081038DE
ldr   r0,[r5,0x4]               ; 081038E0
asr   r1,r0,0x8                 ; 081038E2
ldr   r0,=0x07EF                ; 081038E4
cmp   r1,r0                     ; 081038E6
bgt   @@Code0810393E            ; 081038E8
mov   r4,r5                     ; 081038EA
add   r4,0x72                   ; 081038EC
mov   r2,0x0                    ; 081038EE
ldsh  r0,[r4,r2]                ; 081038F0
cmp   r1,r0                     ; 081038F2
blt   @@Code0810393E            ; 081038F4
ldr   r0,=0x03007240            ; 081038F6  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 081038F8
ldr   r2,=0x2678                ; 081038FA
add   r0,r0,r2                  ; 081038FC
strh  r1,[r0,0x4]               ; 081038FE
ldr   r1,[r5]                   ; 08103900
asr   r1,r1,0x8                 ; 08103902
sub   r1,0x10                   ; 08103904
strh  r1,[r0,0x2]               ; 08103906
mov   r1,r5                     ; 08103908
add   r1,0x6E                   ; 0810390A
ldrh  r1,[r1]                   ; 0810390C
add   r1,0x1                    ; 0810390E
asr   r1,r1,0x7                 ; 08103910
sub   r1,0x1                    ; 08103912
strh  r1,[r0,0x6]               ; 08103914
mov   r1,0x3                    ; 08103916
strh  r1,[r0]                   ; 08103918
bl    Sub08018668               ; 0810391A
ldrh  r0,[r4]                   ; 0810391E
add   r0,0x10                   ; 08103920
strh  r0,[r4]                   ; 08103922
lsl   r0,r0,0x10                ; 08103924
mov   r1,0xFA                   ; 08103926
lsl   r1,r1,0x13                ; 08103928
cmp   r0,r1                     ; 0810392A
bne   @@Code0810393E            ; 0810392C
ldr   r1,=0x03002200            ; 0810392E
ldrh  r0,[r5,0x20]              ; 08103930
ldr   r2,=0x4058                ; 08103932
add   r1,r1,r2                  ; 08103934
strh  r0,[r1]                   ; 08103936
mov   r0,0x4F                   ; 08103938
bl    PlayYISound               ; 0810393A
@@Code0810393E:
pop   {r4-r5}                   ; 0810393E
pop   {r0}                      ; 08103940
bx    r0                        ; 08103942
.pool                           ; 08103944

Sub08103958:
push  {r4-r6,lr}                ; 08103958
mov   r4,r0                     ; 0810395A
add   r0,0x94                   ; 0810395C
ldrb  r0,[r0]                   ; 0810395E
lsl   r0,r0,0x18                ; 08103960
asr   r0,r0,0x18                ; 08103962
cmp   r0,0x0                    ; 08103964
blt   @@Code081039D0            ; 08103966
mov   r1,0x34                   ; 08103968
ldsh  r0,[r4,r1]                ; 0810396A
cmp   r0,0x0                    ; 0810396C
blt   @@Code081039D0            ; 0810396E
mov   r0,r4                     ; 08103970
bl    Sub0804AC30               ; 08103972
ldrh  r3,[r4,0x34]              ; 08103976
lsl   r3,r3,0x1                 ; 08103978
ldr   r4,=0x03005A00            ; 0810397A
add   r3,r3,r4                  ; 0810397C
ldrb  r5,[r3,0x1]               ; 0810397E
mov   r0,0x3                    ; 08103980
orr   r5,r0                     ; 08103982
strb  r5,[r3,0x1]               ; 08103984
ldr   r0,=0x0FD2                ; 08103986
add   r4,r4,r0                  ; 08103988
ldrh  r1,[r4]                   ; 0810398A
mov   r0,0x7                    ; 0810398C
and   r1,r0                     ; 0810398E
lsl   r1,r1,0x1                 ; 08103990
ldrb  r0,[r3,0x3]               ; 08103992
mov   r2,0xF                    ; 08103994
neg   r2,r2                     ; 08103996
and   r2,r0                     ; 08103998
orr   r2,r1                     ; 0810399A
strb  r2,[r3,0x3]               ; 0810399C
ldrh  r0,[r4]                   ; 0810399E
lsr   r0,r0,0x3                 ; 081039A0
mov   r6,0x1                    ; 081039A2
and   r0,r6                     ; 081039A4
lsl   r0,r0,0x4                 ; 081039A6
mov   r1,0x11                   ; 081039A8
neg   r1,r1                     ; 081039AA
and   r1,r2                     ; 081039AC
orr   r1,r0                     ; 081039AE
strb  r1,[r3,0x3]               ; 081039B0
ldrh  r0,[r4]                   ; 081039B2
lsr   r0,r0,0x4                 ; 081039B4
and   r0,r6                     ; 081039B6
lsl   r0,r0,0x5                 ; 081039B8
mov   r2,0x21                   ; 081039BA
neg   r2,r2                     ; 081039BC
and   r1,r2                     ; 081039BE
orr   r1,r0                     ; 081039C0
mov   r2,0x3F                   ; 081039C2
and   r1,r2                     ; 081039C4
mov   r0,0x80                   ; 081039C6
orr   r1,r0                     ; 081039C8
strb  r1,[r3,0x3]               ; 081039CA
and   r5,r2                     ; 081039CC
strb  r5,[r3,0x1]               ; 081039CE
@@Code081039D0:
pop   {r4-r6}                   ; 081039D0
pop   {r0}                      ; 081039D2
bx    r0                        ; 081039D4
.pool                           ; 081039D6

Sub081039E0:
push  {r4,lr}                   ; 081039E0
add   sp,-0x8                   ; 081039E2
mov   r2,r0                     ; 081039E4
add   r0,0x94                   ; 081039E6
ldrb  r0,[r0]                   ; 081039E8
lsl   r0,r0,0x18                ; 081039EA
asr   r0,r0,0x18                ; 081039EC
cmp   r0,0x0                    ; 081039EE
blt   @@Code08103A40            ; 081039F0
mov   r1,0x34                   ; 081039F2
ldsh  r0,[r2,r1]                ; 081039F4
cmp   r0,0x0                    ; 081039F6
blt   @@Code08103A40            ; 081039F8
ldr   r1,=Data081AF2CC          ; 081039FA
mov   r0,r2                     ; 081039FC
add   r0,0x6E                   ; 081039FE
ldrh  r0,[r0]                   ; 08103A00
lsl   r0,r0,0x1                 ; 08103A02
add   r0,r0,r1                  ; 08103A04
ldrh  r0,[r0]                   ; 08103A06
ldr   r3,=0xFFFF0000            ; 08103A08
lsl   r1,r0,0x10                ; 08103A0A
orr   r0,r1                     ; 08103A0C
str   r0,[sp]                   ; 08103A0E
ldr   r2,=0x03002200            ; 08103A10
ldr   r4,=0x48A2                ; 08103A12
add   r0,r2,r4                  ; 08103A14
ldrh  r1,[r0]                   ; 08103A16
lsl   r1,r1,0x1B                ; 08103A18
lsr   r1,r1,0x10                ; 08103A1A
ldr   r0,[sp,0x4]               ; 08103A1C
and   r0,r3                     ; 08103A1E
orr   r0,r1                     ; 08103A20
str   r0,[sp,0x4]               ; 08103A22
ldr   r0,=0x47D2                ; 08103A24
add   r3,r2,r0                  ; 08103A26
ldrh  r0,[r3]                   ; 08103A28
lsl   r1,r0,0x5                 ; 08103A2A
ldr   r4,=0x3806                ; 08103A2C
add   r2,r2,r4                  ; 08103A2E
add   r1,r1,r2                  ; 08103A30
add   r0,0x1                    ; 08103A32
strh  r0,[r3]                   ; 08103A34
mov   r0,sp                     ; 08103A36
mov   r2,0x1                    ; 08103A38
mov   r3,0x8                    ; 08103A3A
bl    swi_0F                    ; 08103A3C
@@Code08103A40:
add   sp,0x8                    ; 08103A40
pop   {r4}                      ; 08103A42
pop   {r0}                      ; 08103A44
bx    r0                        ; 08103A46
.pool                           ; 08103A48

Sub08103A60:
push  {r4-r6,lr}                ; 08103A60
mov   r4,r0                     ; 08103A62
ldr   r0,=0x0300702C            ; 08103A64  Sprite RAM structs (03002460)
ldr   r3,[r0]                   ; 08103A66
ldr   r0,=0x11A6                ; 08103A68
add   r3,r3,r0                  ; 08103A6A
ldrh  r0,[r3]                   ; 08103A6C
add   r0,0x2                    ; 08103A6E
strh  r0,[r3]                   ; 08103A70
ldr   r2,=Data081A62A4          ; 08103A72
ldr   r1,=0xFFFE                ; 08103A74
and   r0,r1                     ; 08103A76
add   r0,r0,r2                  ; 08103A78
ldr   r1,=0x03006D80            ; 08103A7A
mov   r2,0x82                   ; 08103A7C
lsl   r2,r2,0x2                 ; 08103A7E
add   r1,r1,r2                  ; 08103A80
mov   r2,0x0                    ; 08103A82
ldsh  r0,[r0,r2]                ; 08103A84
ldrh  r1,[r1]                   ; 08103A86
add   r0,r0,r1                  ; 08103A88
lsl   r0,r0,0x8                 ; 08103A8A
str   r0,[r4]                   ; 08103A8C
ldr   r6,=0x03002200            ; 08103A8E
ldr   r1,=0x47EC                ; 08103A90
add   r0,r6,r1                  ; 08103A92
ldrh  r0,[r0]                   ; 08103A94
ldr   r2,=0xFFFFFE00            ; 08103A96
add   r0,r0,r2                  ; 08103A98
lsl   r0,r0,0x8                 ; 08103A9A
str   r0,[r4,0x4]               ; 08103A9C
ldr   r1,=Data081A62B4          ; 08103A9E
ldrh  r0,[r3]                   ; 08103AA0
lsr   r0,r0,0x1                 ; 08103AA2
lsl   r0,r0,0x1                 ; 08103AA4
add   r0,r0,r1                  ; 08103AA6
ldrh  r0,[r0]                   ; 08103AA8
mov   r5,r4                     ; 08103AAA
add   r5,0x6E                   ; 08103AAC
strh  r0,[r5]                   ; 08103AAE
mov   r1,r4                     ; 08103AB0
add   r1,0x72                   ; 08103AB2
mov   r0,0xF8                   ; 08103AB4
lsl   r0,r0,0x3                 ; 08103AB6
strh  r0,[r1]                   ; 08103AB8
add   r0,0x40                   ; 08103ABA
str   r0,[r4,0xC]               ; 08103ABC
mov   r0,0xAC                   ; 08103ABE
bl    SpawnSpriteMainLowestSlot ; 08103AC0
lsl   r0,r0,0x18                ; 08103AC4
lsr   r2,r0,0x18                ; 08103AC6
cmp   r2,0xFF                   ; 08103AC8
beq   @@Code08103B02            ; 08103ACA
ldr   r1,=0x03007240            ; 08103ACC  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 08103ACE
mul   r0,r2                     ; 08103AD0
mov   r2,0x95                   ; 08103AD2
lsl   r2,r2,0x2                 ; 08103AD4
add   r0,r0,r2                  ; 08103AD6
ldr   r1,[r1]                   ; 08103AD8
add   r2,r1,r0                  ; 08103ADA
ldr   r0,[r4]                   ; 08103ADC
str   r0,[r2]                   ; 08103ADE
mov   r0,0xF8                   ; 08103AE0
lsl   r0,r0,0xB                 ; 08103AE2
str   r0,[r2,0x4]               ; 08103AE4
mov   r1,r2                     ; 08103AE6
add   r1,0x42                   ; 08103AE8
mov   r0,0x80                   ; 08103AEA
strh  r0,[r1]                   ; 08103AEC
ldrh  r0,[r5]                   ; 08103AEE
add   r0,0x1                    ; 08103AF0
lsr   r0,r0,0x8                 ; 08103AF2
lsl   r0,r0,0x1                 ; 08103AF4
add   r0,0x2                    ; 08103AF6
add   r1,0x28                   ; 08103AF8
strh  r0,[r1]                   ; 08103AFA
sub   r1,0x26                   ; 08103AFC
mov   r0,0x40                   ; 08103AFE
strh  r0,[r1]                   ; 08103B00
@@Code08103B02:
ldrh  r0,[r4,0x20]              ; 08103B02
ldr   r2,=0x4058                ; 08103B04
add   r1,r6,r2                  ; 08103B06
strh  r0,[r1]                   ; 08103B08
mov   r0,0x84                   ; 08103B0A
bl    PlayYISound               ; 08103B0C
pop   {r4-r6}                   ; 08103B10
pop   {r0}                      ; 08103B12
bx    r0                        ; 08103B14
.pool                           ; 08103B16

Sub08103B44:
push  {r4-r6,lr}                ; 08103B44
mov   r5,r0                     ; 08103B46
mov   r6,r5                     ; 08103B48
add   r6,0x6A                   ; 08103B4A
ldrh  r0,[r6]                   ; 08103B4C
cmp   r0,0x0                    ; 08103B4E
bne   @@Code08103B62            ; 08103B50
mov   r0,r5                     ; 08103B52
bl    Sub0804BEB8               ; 08103B54
cmp   r0,0x0                    ; 08103B58
bne   @@Code08103C26            ; 08103B5A
ldrh  r0,[r6]                   ; 08103B5C
cmp   r0,0x0                    ; 08103B5E
beq   @@Code08103BC8            ; 08103B60
@@Code08103B62:
mov   r0,r5                     ; 08103B62
bl    Sub08103958               ; 08103B64
mov   r0,r5                     ; 08103B68
bl    Sub081039E0               ; 08103B6A
ldr   r0,=0x03002200            ; 08103B6E
ldr   r1,=0x4876                ; 08103B70
add   r0,r0,r1                  ; 08103B72
ldrh  r1,[r0]                   ; 08103B74
add   r1,0x1                    ; 08103B76
strh  r1,[r0]                   ; 08103B78
mov   r0,r5                     ; 08103B7A
bl    Sub0804BEB8               ; 08103B7C
cmp   r0,0x0                    ; 08103B80
bne   @@Code08103C26            ; 08103B82
mov   r2,0x22                   ; 08103B84
ldsh  r0,[r5,r2]                ; 08103B86
cmp   r0,0xEF                   ; 08103B88
bgt   @@Code08103B9C            ; 08103B8A
mov   r0,r5                     ; 08103B8C
bl    Sub081038DC               ; 08103B8E
b     @@Code08103C26            ; 08103B92
.pool                           ; 08103B94

@@Code08103B9C:
ldr   r0,=0x0300702C            ; 08103B9C  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08103B9E
ldr   r1,=0x11A6                ; 08103BA0
add   r0,r0,r1                  ; 08103BA2
ldrh  r0,[r0]                   ; 08103BA4
cmp   r0,0xD                    ; 08103BA6
bhi   @@Code08103BD2            ; 08103BA8
ldrh  r0,[r6]                   ; 08103BAA
sub   r0,0x1                    ; 08103BAC
strh  r0,[r6]                   ; 08103BAE
lsl   r0,r0,0x10                ; 08103BB0
cmp   r0,0x0                    ; 08103BB2
beq   @@Code08103BD2            ; 08103BB4
mov   r0,r5                     ; 08103BB6
bl    Sub08103A60               ; 08103BB8
b     @@Code08103C26            ; 08103BBC
.pool                           ; 08103BBE

@@Code08103BC8:
mov   r0,r5                     ; 08103BC8
add   r0,0x66                   ; 08103BCA
ldrh  r0,[r0]                   ; 08103BCC
cmp   r0,0x0                    ; 08103BCE
beq   @@Code08103BDA            ; 08103BD0
@@Code08103BD2:
mov   r0,r5                     ; 08103BD2
bl    Sub0804A6F8               ; 08103BD4
b     @@Code08103C26            ; 08103BD8
@@Code08103BDA:
ldr   r4,=Data081A71EA          ; 08103BDA
ldr   r1,=0x02010AC2            ; 08103BDC
mov   r0,r4                     ; 08103BDE
mov   r2,0xF                    ; 08103BE0
bl    swi_MemoryCopy4or2        ; 08103BE2  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020106C2            ; 08103BE6
mov   r0,r4                     ; 08103BE8
mov   r2,0xF                    ; 08103BEA
bl    swi_MemoryCopy4or2        ; 08103BEC  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200            ; 08103BF0
mov   r0,0x91                   ; 08103BF2
lsl   r0,r0,0x7                 ; 08103BF4
add   r2,r1,r0                  ; 08103BF6
mov   r3,0x0                    ; 08103BF8
ldr   r0,=0x0161                ; 08103BFA
strh  r0,[r2]                   ; 08103BFC
ldr   r0,=0x4882                ; 08103BFE
add   r2,r1,r0                  ; 08103C00
mov   r0,0xC2                   ; 08103C02
strh  r0,[r2]                   ; 08103C04
ldr   r0,=0x4884                ; 08103C06
add   r2,r1,r0                  ; 08103C08
mov   r0,0x1E                   ; 08103C0A
strh  r0,[r2]                   ; 08103C0C
mov   r0,r5                     ; 08103C0E
add   r0,0x94                   ; 08103C10
strb  r3,[r0]                   ; 08103C12
ldr   r2,=0x47EC                ; 08103C14
add   r1,r1,r2                  ; 08103C16
mov   r2,0x0                    ; 08103C18
ldsh  r0,[r1,r2]                ; 08103C1A
add   r0,0xF0                   ; 08103C1C
lsl   r0,r0,0x8                 ; 08103C1E
str   r0,[r5,0x4]               ; 08103C20
mov   r0,0x5                    ; 08103C22
strh  r0,[r6]                   ; 08103C24
@@Code08103C26:
pop   {r4-r6}                   ; 08103C26
pop   {r0}                      ; 08103C28
bx    r0                        ; 08103C2A
.pool                           ; 08103C2C

Sub08103C4C:
; sprite 0CF main
push  {r4-r7,lr}                ; 08103C4C
mov   r7,r10                    ; 08103C4E
mov   r6,r9                     ; 08103C50
mov   r5,r8                     ; 08103C52
push  {r5-r7}                   ; 08103C54
add   sp,-0x4                   ; 08103C56
mov   r6,r0                     ; 08103C58
ldr   r0,=0x0300702C            ; 08103C5A  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08103C5C
ldr   r1,=0x11A8                ; 08103C5E
add   r0,r0,r1                  ; 08103C60
ldrh  r0,[r0]                   ; 08103C62
cmp   r0,0x0                    ; 08103C64
bne   @@Code08103C78            ; 08103C66
mov   r0,r6                     ; 08103C68
bl    Sub08103B44               ; 08103C6A
b     @@Code08103E36            ; 08103C6E
.pool                           ; 08103C70

@@Code08103C78:
mov   r0,r6                     ; 08103C78
bl    Sub0804BEB8               ; 08103C7A
cmp   r0,0x0                    ; 08103C7E
beq   @@Code08103C84            ; 08103C80
b     @@Code08103E36            ; 08103C82
@@Code08103C84:
ldr   r2,=0x03002200            ; 08103C84
mov   r9,r2                     ; 08103C86
ldr   r0,=0x48A2                ; 08103C88
add   r0,r9                     ; 08103C8A
ldrh  r1,[r0]                   ; 08103C8C
mov   r3,0xF                    ; 08103C8E
mov   r10,r3                    ; 08103C90
and   r1,r3                     ; 08103C92
mov   r0,0x40                   ; 08103C94
orr   r1,r0                     ; 08103C96
ldr   r0,=0x03006D80            ; 08103C98
mov   r2,0xE0                   ; 08103C9A
lsl   r2,r2,0x1                 ; 08103C9C
add   r0,r0,r2                  ; 08103C9E
strh  r1,[r0]                   ; 08103CA0
mov   r3,r6                     ; 08103CA2
add   r3,0x46                   ; 08103CA4
ldrh  r0,[r3]                   ; 08103CA6
cmp   r0,0x0                    ; 08103CA8
bne   @@Code08103CD0            ; 08103CAA
ldr   r2,=Data081A6302          ; 08103CAC
ldr   r0,=0x03007240            ; 08103CAE  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08103CB0
ldr   r1,=0x29CC                ; 08103CB2
add   r0,r0,r1                  ; 08103CB4
ldrh  r1,[r0]                   ; 08103CB6
mov   r0,0x3                    ; 08103CB8
and   r0,r1                     ; 08103CBA
add   r0,r0,r2                  ; 08103CBC
ldrb  r0,[r0]                   ; 08103CBE
strh  r0,[r3]                   ; 08103CC0
ldr   r1,=0x4058                ; 08103CC2
add   r1,r9                     ; 08103CC4
mov   r0,0x78                   ; 08103CC6
strh  r0,[r1]                   ; 08103CC8
mov   r0,0x4F                   ; 08103CCA
bl    PlayYISound               ; 08103CCC
@@Code08103CD0:
mov   r2,r6                     ; 08103CD0
add   r2,0x42                   ; 08103CD2
ldrh  r0,[r2]                   ; 08103CD4
cmp   r0,0x0                    ; 08103CD6
beq   @@Code08103CDC            ; 08103CD8
b     @@Code08103E36            ; 08103CDA
@@Code08103CDC:
mov   r3,0x10                   ; 08103CDC
strh  r3,[r2]                   ; 08103CDE
mov   r0,r6                     ; 08103CE0
add   r0,0x66                   ; 08103CE2
ldrh  r1,[r0]                   ; 08103CE4
str   r0,[sp]                   ; 08103CE6
cmp   r1,0x0                    ; 08103CE8
beq   @@Code08103CF0            ; 08103CEA
mov   r0,0x8                    ; 08103CEC
strh  r0,[r2]                   ; 08103CEE
@@Code08103CF0:
mov   r4,r6                     ; 08103CF0
add   r4,0x6A                   ; 08103CF2
ldrh  r0,[r4]                   ; 08103CF4
cmp   r0,0x0                    ; 08103CF6
bne   @@Code08103CFC            ; 08103CF8
b     @@Code08103E36            ; 08103CFA
@@Code08103CFC:
mov   r0,0x8                    ; 08103CFC
bl    SpawnSpriteMainLowestSlot ; 08103CFE
lsl   r0,r0,0x18                ; 08103D02
lsr   r1,r0,0x18                ; 08103D04
cmp   r1,0xFF                   ; 08103D06
bne   @@Code08103D0C            ; 08103D08
b     @@Code08103E36            ; 08103D0A
@@Code08103D0C:
ldr   r0,=0x03007240            ; 08103D0C  Normal gameplay IWRAM (0300220C)
mov   r8,r0                     ; 08103D0E
mov   r0,0xB0                   ; 08103D10
mul   r0,r1                     ; 08103D12
mov   r1,0x95                   ; 08103D14
lsl   r1,r1,0x2                 ; 08103D16
add   r0,r0,r1                  ; 08103D18
mov   r2,r8                     ; 08103D1A
ldr   r1,[r2]                   ; 08103D1C
add   r1,r1,r0                  ; 08103D1E
mov   r12,r1                    ; 08103D20
ldrh  r0,[r4]                   ; 08103D22
sub   r0,0x1                    ; 08103D24
strh  r0,[r4]                   ; 08103D26
ldr   r1,=Data081A62C4          ; 08103D28
mov   r3,r10                    ; 08103D2A
and   r0,r3                     ; 08103D2C
add   r0,r0,r1                  ; 08103D2E
ldrb  r7,[r0]                   ; 08103D30
lsr   r0,r7,0x2                 ; 08103D32
mov   r1,r12                    ; 08103D34
strh  r0,[r1,0x38]              ; 08103D36
ldr   r0,=0x0801                ; 08103D38
strh  r0,[r1,0x2A]              ; 08103D3A
mov   r5,r12                    ; 08103D3C
add   r5,0x94                   ; 08103D3E
mov   r0,0x5                    ; 08103D40
strb  r0,[r5]                   ; 08103D42
ldr   r2,[r2]                   ; 08103D44
ldr   r1,=Data081A62D4          ; 08103D46
lsr   r0,r7,0x1                 ; 08103D48
lsl   r0,r0,0x1                 ; 08103D4A
add   r0,r0,r1                  ; 08103D4C
ldrh  r0,[r0]                   ; 08103D4E
ldr   r3,=0x2A12                ; 08103D50
add   r4,r2,r3                  ; 08103D52
strh  r0,[r4]                   ; 08103D54
ldr   r0,=0x47E4                ; 08103D56
add   r0,r9                     ; 08103D58
mov   r3,0x0                    ; 08103D5A
ldsh  r1,[r0,r3]                ; 08103D5C
ldr   r3,=Data081A62DA          ; 08103D5E
ldr   r0,=0x29CC                ; 08103D60
add   r2,r2,r0                  ; 08103D62
ldrh  r2,[r2]                   ; 08103D64
mov   r0,r10                    ; 08103D66
and   r0,r2                     ; 08103D68
lsl   r0,r0,0x1                 ; 08103D6A
add   r0,r0,r3                  ; 08103D6C
mov   r2,0x0                    ; 08103D6E
ldsh  r0,[r0,r2]                ; 08103D70
add   r1,r1,r0                  ; 08103D72
mov   r0,r12                    ; 08103D74
add   r0,0x66                   ; 08103D76
strh  r1,[r0]                   ; 08103D78
ldrh  r0,[r4]                   ; 08103D7A
add   r1,r1,r0                  ; 08103D7C
lsl   r1,r1,0x8                 ; 08103D7E
mov   r3,r12                    ; 08103D80
str   r1,[r3]                   ; 08103D82
ldrh  r2,[r3,0x2C]              ; 08103D84
ldr   r0,=0x48F7                ; 08103D86
add   r0,r9                     ; 08103D88
ldrb  r0,[r0]                   ; 08103D8A
mov   r4,r8                     ; 08103D8C
cmp   r0,0x0                    ; 08103D8E
bne   @@Code08103DD4            ; 08103D90
mov   r0,0x2E                   ; 08103D92
orr   r2,r0                     ; 08103D94
mov   r0,0x0                    ; 08103D96
strb  r0,[r5]                   ; 08103D98
b     @@Code08103DDE            ; 08103D9A
.pool                           ; 08103D9C

@@Code08103DD4:
mov   r0,0x31                   ; 08103DD4
neg   r0,r0                     ; 08103DD6
and   r2,r0                     ; 08103DD8
mov   r0,0x10                   ; 08103DDA
orr   r2,r0                     ; 08103DDC
@@Code08103DDE:
mov   r1,r12                    ; 08103DDE
strh  r2,[r1,0x2C]              ; 08103DE0
ldr   r0,=0x03002200            ; 08103DE2
ldr   r2,=0x47EC                ; 08103DE4
add   r0,r0,r2                  ; 08103DE6
mov   r3,0x0                    ; 08103DE8
ldsh  r1,[r0,r3]                ; 08103DEA
ldr   r2,=Data081A62FA          ; 08103DEC
ldr   r3,[sp]                   ; 08103DEE
ldrh  r0,[r3]                   ; 08103DF0
lsr   r0,r0,0x1                 ; 08103DF2
lsl   r0,r0,0x1                 ; 08103DF4
add   r0,r0,r2                  ; 08103DF6
mov   r2,0x0                    ; 08103DF8
ldsh  r0,[r0,r2]                ; 08103DFA
add   r1,r1,r0                  ; 08103DFC
lsl   r1,r1,0x8                 ; 08103DFE
mov   r3,r12                    ; 08103E00
str   r1,[r3,0x4]               ; 08103E02
ldr   r1,=Data081A62FE          ; 08103E04
ldr   r2,[sp]                   ; 08103E06
ldrh  r0,[r2]                   ; 08103E08
lsr   r0,r0,0x1                 ; 08103E0A
lsl   r0,r0,0x1                 ; 08103E0C
add   r0,r0,r1                  ; 08103E0E
mov   r3,0x0                    ; 08103E10
ldsh  r0,[r0,r3]                ; 08103E12
mov   r1,r12                    ; 08103E14
str   r0,[r1,0xC]               ; 08103E16
lsr   r1,r7,0x1                 ; 08103E18
mov   r3,r12                    ; 08103E1A
add   r3,0x6A                   ; 08103E1C
strh  r1,[r3]                   ; 08103E1E
ldr   r0,[r4]                   ; 08103E20
ldr   r2,=0x29CC                ; 08103E22
add   r0,r0,r2                  ; 08103E24
ldrh  r2,[r0]                   ; 08103E26
mov   r0,0xC                    ; 08103E28
and   r0,r2                     ; 08103E2A
orr   r1,r0                     ; 08103E2C
strh  r1,[r3]                   ; 08103E2E
ldrh  r0,[r6,0x3C]              ; 08103E30
mov   r3,r12                    ; 08103E32
strh  r0,[r3,0x3C]              ; 08103E34
@@Code08103E36:
add   sp,0x4                    ; 08103E36
pop   {r3-r5}                   ; 08103E38
mov   r8,r3                     ; 08103E3A
mov   r9,r4                     ; 08103E3C
mov   r10,r5                    ; 08103E3E
pop   {r4-r7}                   ; 08103E40
pop   {r0}                      ; 08103E42
bx    r0                        ; 08103E44
.pool                           ; 08103E46

Sub08103E5C:
push  {r4-r7,lr}                ; 08103E5C
mov   r7,r8                     ; 08103E5E
push  {r7}                      ; 08103E60
ldr   r0,=0x0300702C            ; 08103E62  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08103E64
ldr   r1,=0x188E                ; 08103E66
add   r0,r0,r1                  ; 08103E68
mov   r2,0x0                    ; 08103E6A
ldsh  r7,[r0,r2]                ; 08103E6C
mov   r0,0x80                   ; 08103E6E
lsl   r0,r0,0x1                 ; 08103E70
sub   r6,r0,r7                  ; 08103E72
ldr   r4,=0x02010AC0            ; 08103E74
mov   r0,0x20                   ; 08103E76
add   r0,r0,r4                  ; 08103E78
mov   r8,r0                     ; 08103E7A
ldr   r5,=0x020106C0            ; 08103E7C
@@Code08103E7E:
ldrh  r1,[r4]                   ; 08103E7E
mov   r0,0x0                    ; 08103E80
mov   r2,r6                     ; 08103E82
bl    Sub0810BDC8               ; 08103E84
strh  r0,[r5]                   ; 08103E88
add   r4,0x2                    ; 08103E8A
add   r5,0x2                    ; 08103E8C
cmp   r4,r8                     ; 08103E8E
blo   @@Code08103E7E            ; 08103E90
ldr   r0,=0x0300702C            ; 08103E92  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08103E94
mov   r1,r7                     ; 08103E96
add   r1,0x8                    ; 08103E98
ldr   r2,=0x188E                ; 08103E9A
add   r0,r0,r2                  ; 08103E9C
strh  r1,[r0]                   ; 08103E9E
ldr   r1,=0x03002200            ; 08103EA0
mov   r0,0x91                   ; 08103EA2
lsl   r0,r0,0x7                 ; 08103EA4
add   r2,r1,r0                  ; 08103EA6
mov   r0,0xB0                   ; 08103EA8
lsl   r0,r0,0x1                 ; 08103EAA
strh  r0,[r2]                   ; 08103EAC
ldr   r0,=0x4882                ; 08103EAE
add   r2,r1,r0                  ; 08103EB0
mov   r0,0xC0                   ; 08103EB2
strh  r0,[r2]                   ; 08103EB4
ldr   r2,=0x4884                ; 08103EB6
add   r1,r1,r2                  ; 08103EB8
mov   r0,0x20                   ; 08103EBA
strh  r0,[r1]                   ; 08103EBC
pop   {r3}                      ; 08103EBE
mov   r8,r3                     ; 08103EC0
pop   {r4-r7}                   ; 08103EC2
pop   {r0}                      ; 08103EC4
bx    r0                        ; 08103EC6
.pool                           ; 08103EC8

Sub08103EE4:
push  {r4-r5,lr}                ; 08103EE4
mov   r4,r0                     ; 08103EE6
ldr   r5,=0x030069F4            ; 08103EE8
mov   r0,0x94                   ; 08103EEA
lsl   r0,r0,0x1                 ; 08103EEC
bl    Sub080DF928               ; 08103EEE
ldrh  r2,[r5,0xC]               ; 08103EF2
cmp   r2,0x0                    ; 08103EF4
bne   @@Code08103F48            ; 08103EF6
mov   r0,r4                     ; 08103EF8
add   r0,0x52                   ; 08103EFA
mov   r1,0x0                    ; 08103EFC
ldsh  r0,[r0,r1]                ; 08103EFE
add   r0,0x80                   ; 08103F00
cmp   r0,0xFF                   ; 08103F02
bhi   @@Code08103F48            ; 08103F04
ldr   r1,=0x03006D80            ; 08103F06
mov   r3,0xD5                   ; 08103F08
lsl   r3,r3,0x1                 ; 08103F0A
add   r0,r1,r3                  ; 08103F0C
mov   r3,0x0                    ; 08103F0E
ldsh  r0,[r0,r3]                ; 08103F10
cmp   r0,0x0                    ; 08103F12
bge   @@Code08103F48            ; 08103F14
mov   r0,0x2                    ; 08103F16
strh  r0,[r1,0x30]              ; 08103F18
mov   r0,r1                     ; 08103F1A
add   r0,0xFC                   ; 08103F1C
strh  r2,[r0]                   ; 08103F1E
add   r0,0x2                    ; 08103F20
strh  r2,[r0]                   ; 08103F22
str   r2,[r1,0x8]               ; 08103F24
str   r2,[r1,0x28]              ; 08103F26
ldr   r0,=0x0300702C            ; 08103F28  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08103F2A
mov   r1,r5                     ; 08103F2C
sub   r1,0x10                   ; 08103F2E
ldrh  r1,[r1]                   ; 08103F30
ldr   r2,=0x11B2                ; 08103F32
add   r0,r0,r2                  ; 08103F34
strh  r1,[r0]                   ; 08103F36
mov   r1,r4                     ; 08103F38
add   r1,0x42                   ; 08103F3A
mov   r0,0x4                    ; 08103F3C
strh  r0,[r1]                   ; 08103F3E
add   r1,0x2C                   ; 08103F40
ldrh  r0,[r1]                   ; 08103F42
add   r0,0x1                    ; 08103F44
strh  r0,[r1]                   ; 08103F46
@@Code08103F48:
pop   {r4-r5}                   ; 08103F48
pop   {r0}                      ; 08103F4A
bx    r0                        ; 08103F4C
.pool                           ; 08103F4E

Sub08103F60:
push  {r4-r6,lr}                ; 08103F60
mov   r4,r0                     ; 08103F62
ldr   r2,=0x03006D80            ; 08103F64
mov   r0,r2                     ; 08103F66
add   r0,0xFC                   ; 08103F68
mov   r1,0x0                    ; 08103F6A
strh  r1,[r0]                   ; 08103F6C
add   r0,0x2                    ; 08103F6E
strh  r1,[r0]                   ; 08103F70
mov   r0,r4                     ; 08103F72
add   r0,0x42                   ; 08103F74
ldrh  r3,[r0]                   ; 08103F76
cmp   r3,0x0                    ; 08103F78
bne   @@Code08103FEC            ; 08103F7A
ldr   r1,=0x03002200            ; 08103F7C
ldr   r0,=0x47E4                ; 08103F7E
add   r1,r1,r0                  ; 08103F80
ldr   r5,=0x0300702C            ; 08103F82  Sprite RAM structs (03002460)
ldr   r0,[r5]                   ; 08103F84
ldr   r6,=0x11B2                ; 08103F86
add   r0,r0,r6                  ; 08103F88
ldrh  r1,[r1]                   ; 08103F8A
ldrh  r6,[r0]                   ; 08103F8C
cmp   r1,r6                     ; 08103F8E
beq   @@Code08103FAC            ; 08103F90
strh  r1,[r0]                   ; 08103F92
b     @@Code08103FEC            ; 08103F94
.pool                           ; 08103F96

@@Code08103FAC:
strh  r3,[r2,0x30]              ; 08103FAC
bl    Sub08038BAC               ; 08103FAE
mov   r0,0x48                   ; 08103FB2
bl    Sub0804A23C               ; 08103FB4
lsl   r0,r0,0x18                ; 08103FB8
asr   r2,r0,0x18                ; 08103FBA
cmp   r2,0x0                    ; 08103FBC
blt   @@Code08103FEC            ; 08103FBE
ldr   r1,=0x03007240            ; 08103FC0  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 08103FC2
mul   r0,r2                     ; 08103FC4
mov   r2,0x95                   ; 08103FC6
lsl   r2,r2,0x2                 ; 08103FC8
add   r0,r0,r2                  ; 08103FCA
ldr   r1,[r1]                   ; 08103FCC
add   r1,r1,r0                  ; 08103FCE
mov   r0,0x80                   ; 08103FD0
lsl   r0,r0,0x5                 ; 08103FD2
str   r0,[r1]                   ; 08103FD4
ldr   r1,[r5]                   ; 08103FD6
ldr   r6,=0x159C                ; 08103FD8
add   r1,r1,r6                  ; 08103FDA
ldrh  r0,[r1]                   ; 08103FDC
add   r0,0x1                    ; 08103FDE
strh  r0,[r1]                   ; 08103FE0
mov   r1,r4                     ; 08103FE2
add   r1,0x6E                   ; 08103FE4
ldrh  r0,[r1]                   ; 08103FE6
add   r0,0x1                    ; 08103FE8
strh  r0,[r1]                   ; 08103FEA
@@Code08103FEC:
pop   {r4-r6}                   ; 08103FEC
pop   {r0}                      ; 08103FEE
bx    r0                        ; 08103FF0
.pool                           ; 08103FF2

Sub08103FFC:
push  {r4,lr}                   ; 08103FFC
mov   r4,r0                     ; 08103FFE
ldr   r0,=0x0300702C            ; 08104000  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08104002
ldr   r1,=0x159C                ; 08104004
add   r0,r0,r1                  ; 08104006
mov   r1,0x0                    ; 08104008
ldsh  r0,[r0,r1]                ; 0810400A
cmp   r0,0x0                    ; 0810400C
bge   @@Code0810401C            ; 0810400E
mov   r0,0x15                   ; 08104010  15: Kamek enlarge to Bowser
bl    Sub0812C3B4               ; 08104012  Change music (YI)
mov   r0,r4                     ; 08104016
bl    Sub08105940               ; 08104018
@@Code0810401C:
pop   {r4}                      ; 0810401C
pop   {r0}                      ; 0810401E
bx    r0                        ; 08104020
.pool                           ; 08104022

Sub0810402C:
push  {r4,lr}                   ; 0810402C
mov   r4,r0                     ; 0810402E
bl    Sub081057AC               ; 08104030
cmp   r0,0x0                    ; 08104034
beq   @@Code0810405A            ; 08104036
ldr   r0,=0x0300702C            ; 08104038  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 0810403A
ldr   r1,=0x159C                ; 0810403C
add   r2,r0,r1                  ; 0810403E
mov   r1,0x0                    ; 08104040
strh  r1,[r2]                   ; 08104042
ldr   r2,=0x188E                ; 08104044
add   r0,r0,r2                  ; 08104046
strh  r1,[r0]                   ; 08104048
mov   r0,r4                     ; 0810404A
add   r0,0x40                   ; 0810404C
strh  r1,[r0]                   ; 0810404E
mov   r1,r4                     ; 08104050
add   r1,0x6E                   ; 08104052
ldrh  r0,[r1]                   ; 08104054
add   r0,0x1                    ; 08104056
strh  r0,[r1]                   ; 08104058
@@Code0810405A:
pop   {r4}                      ; 0810405A
pop   {r0}                      ; 0810405C
bx    r0                        ; 0810405E
.pool                           ; 08104060

Sub0810406C:
push  {r4,lr}                   ; 0810406C
mov   r1,r0                     ; 0810406E
ldr   r0,=0x0300702C            ; 08104070  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08104072
ldr   r2,=0x188E                ; 08104074
add   r0,r0,r2                  ; 08104076
mov   r2,0x0                    ; 08104078
ldsh  r0,[r0,r2]                ; 0810407A
cmp   r0,0x7F                   ; 0810407C
ble   @@Code081040AC            ; 0810407E
mov   r4,r1                     ; 08104080
add   r4,0x40                   ; 08104082
ldrh  r0,[r4]                   ; 08104084
cmp   r0,0x0                    ; 08104086
bne   @@Code081040AC            ; 08104088
mov   r0,0xCF                   ; 0810408A
bl    Sub0804A23C               ; 0810408C
lsl   r0,r0,0x18                ; 08104090
lsr   r2,r0,0x18                ; 08104092
cmp   r2,0xFF                   ; 08104094
beq   @@Code081040B0            ; 08104096
ldr   r1,=0x03007240            ; 08104098  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 0810409A
mul   r0,r2                     ; 0810409C
ldr   r1,[r1]                   ; 0810409E
add   r0,r0,r1                  ; 081040A0
ldr   r1,=0x02BA                ; 081040A2
add   r0,r0,r1                  ; 081040A4
mov   r1,0x2                    ; 081040A6
strh  r1,[r0]                   ; 081040A8
strh  r1,[r4]                   ; 081040AA
@@Code081040AC:
bl    Sub08103E5C               ; 081040AC
@@Code081040B0:
pop   {r4}                      ; 081040B0
pop   {r0}                      ; 081040B2
bx    r0                        ; 081040B4
.pool                           ; 081040B6

Sub081040C8:
push  {r4-r5,lr}                ; 081040C8
mov   r4,r0                     ; 081040CA
ldr   r3,=0x0300702C            ; 081040CC  Sprite RAM structs (03002460)
ldr   r0,=0x03007240            ; 081040CE  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 081040D0
ldr   r1,=0x2618                ; 081040D2
add   r2,r0,r1                  ; 081040D4
ldr   r5,=0x03002200            ; 081040D6
ldr   r1,=0x48A2                ; 081040D8
add   r0,r5,r1                  ; 081040DA
ldrh  r1,[r0]                   ; 081040DC
mov   r0,0x3                    ; 081040DE
and   r0,r1                     ; 081040E0
cmp   r0,0x0                    ; 081040E2
bne   @@Code08104146            ; 081040E4
ldr   r0,[r3]                   ; 081040E6
ldr   r3,=0x188E                ; 081040E8
add   r0,r0,r3                  ; 081040EA
mov   r1,0x0                    ; 081040EC
ldsh  r0,[r0,r1]                ; 081040EE
cmp   r0,0xFF                   ; 081040F0
bgt   @@Code08104114            ; 081040F2
mov   r0,r4                     ; 081040F4
bl    Sub0810406C               ; 081040F6
b     @@Code08104146            ; 081040FA
.pool                           ; 081040FC

@@Code08104114:
mov   r1,r4                     ; 08104114
add   r1,0x6A                   ; 08104116
mov   r0,0x48                   ; 08104118
strh  r0,[r1]                   ; 0810411A
ldrh  r0,[r2,0x6]               ; 0810411C
add   r0,0x1                    ; 0810411E
strh  r0,[r2,0x6]               ; 08104120
ldr   r3,=0x4010                ; 08104122
add   r0,r5,r3                  ; 08104124
ldr   r1,=0x04000040            ; 08104126
mov   r2,0x4                    ; 08104128
bl    Sub0810B308               ; 0810412A
ldr   r0,=0x47C6                ; 0810412E
add   r2,r5,r0                  ; 08104130
ldrh  r1,[r2]                   ; 08104132
mov   r3,0xC0                   ; 08104134
lsl   r3,r3,0x7                 ; 08104136
mov   r0,r3                     ; 08104138
orr   r0,r1                     ; 0810413A
strh  r0,[r2]                   ; 0810413C
mov   r1,r4                     ; 0810413E
add   r1,0x6E                   ; 08104140
mov   r0,0x17                   ; 08104142
strh  r0,[r1]                   ; 08104144
@@Code08104146:
pop   {r4-r5}                   ; 08104146
pop   {r0}                      ; 08104148
bx    r0                        ; 0810414A
.pool                           ; 0810414C

Return08104158:
; sprite 008 init
bx    lr                        ; 08104158
.pool                           ; 0810415A

Sub0810415C:
push  {r4-r7,lr}                ; 0810415C
mov   r4,r0                     ; 0810415E
bl    Sub0804AC30               ; 08104160
ldrh  r0,[r4,0x34]              ; 08104164
lsl   r0,r0,0x1                 ; 08104166
ldr   r6,=0x03005A00            ; 08104168
add   r7,r0,r6                  ; 0810416A
ldrb  r0,[r7,0x1]               ; 0810416C
mov   r3,0x4                    ; 0810416E
neg   r3,r3                     ; 08104170
and   r3,r0                     ; 08104172
mov   r5,0x1                    ; 08104174
orr   r3,r5                     ; 08104176
strb  r3,[r7,0x1]               ; 08104178
ldr   r0,=0x0FD2                ; 0810417A
add   r4,r6,r0                  ; 0810417C
ldrh  r1,[r4]                   ; 0810417E
mov   r0,0x7                    ; 08104180
and   r1,r0                     ; 08104182
lsl   r1,r1,0x1                 ; 08104184
ldrb  r0,[r7,0x3]               ; 08104186
mov   r2,0xF                    ; 08104188
neg   r2,r2                     ; 0810418A
and   r2,r0                     ; 0810418C
orr   r2,r1                     ; 0810418E
strb  r2,[r7,0x3]               ; 08104190
ldrh  r0,[r4]                   ; 08104192
lsr   r0,r0,0x3                 ; 08104194
and   r0,r5                     ; 08104196
lsl   r0,r0,0x4                 ; 08104198
mov   r1,0x11                   ; 0810419A
neg   r1,r1                     ; 0810419C
and   r1,r2                     ; 0810419E
orr   r1,r0                     ; 081041A0
strb  r1,[r7,0x3]               ; 081041A2
ldrh  r0,[r4]                   ; 081041A4
lsr   r0,r0,0x4                 ; 081041A6
and   r0,r5                     ; 081041A8
lsl   r0,r0,0x5                 ; 081041AA
mov   r2,0x21                   ; 081041AC
neg   r2,r2                     ; 081041AE
and   r1,r2                     ; 081041B0
orr   r1,r0                     ; 081041B2
mov   r2,0x3F                   ; 081041B4
and   r1,r2                     ; 081041B6
mov   r0,0x80                   ; 081041B8
orr   r1,r0                     ; 081041BA
strb  r1,[r7,0x3]               ; 081041BC
and   r3,r2                     ; 081041BE
strb  r3,[r7,0x1]               ; 081041C0
ldr   r0,=0x10F7                ; 081041C2
add   r6,r6,r0                  ; 081041C4
ldrb  r0,[r6]                   ; 081041C6
cmp   r0,0x0                    ; 081041C8
beq   @@Code081041E4            ; 081041CA
ldrb  r0,[r7,0x5]               ; 081041CC
mov   r1,0xF                    ; 081041CE
and   r1,r0                     ; 081041D0
mov   r0,0x60                   ; 081041D2
b     @@Code081041EC            ; 081041D4
.pool                           ; 081041D6

@@Code081041E4:
ldrb  r0,[r7,0x5]               ; 081041E4
mov   r1,0xF                    ; 081041E6
and   r1,r0                     ; 081041E8
mov   r0,0x70                   ; 081041EA
@@Code081041EC:
orr   r1,r0                     ; 081041EC
strb  r1,[r7,0x5]               ; 081041EE
pop   {r4-r7}                   ; 081041F0
pop   {r0}                      ; 081041F2
bx    r0                        ; 081041F4
.pool                           ; 081041F6

Sub081041F8:
push  {r4-r6,lr}                ; 081041F8
add   sp,-0x8                   ; 081041FA
mov   r5,r0                     ; 081041FC
mov   r2,0x3                    ; 081041FE
and   r2,r5                     ; 08104200
ldr   r0,=0x03002200            ; 08104202
ldr   r1,=0x47D2                ; 08104204
add   r4,r0,r1                  ; 08104206
ldrh  r1,[r4]                   ; 08104208
lsl   r3,r1,0x5                 ; 0810420A
ldr   r6,=0x3806                ; 0810420C
add   r0,r0,r6                  ; 0810420E
add   r3,r3,r0                  ; 08104210
add   r1,0x1                    ; 08104212
strh  r1,[r4]                   ; 08104214
lsl   r2,r2,0x3                 ; 08104216
ldr   r0,=Data081A6308          ; 08104218
add   r4,r2,r0                  ; 0810421A
mov   r0,0x0                    ; 0810421C
ldsh  r2,[r4,r0]                ; 0810421E
mov   r6,0x2                    ; 08104220
ldsh  r1,[r4,r6]                ; 08104222
mov   r0,0x4                    ; 08104224
and   r0,r5                     ; 08104226
cmp   r0,0x0                    ; 08104228
beq   @@Code0810422E            ; 0810422A
neg   r2,r2                     ; 0810422C
@@Code0810422E:
mov   r0,0x8                    ; 0810422E
and   r0,r5                     ; 08104230
cmp   r0,0x0                    ; 08104232
beq   @@Code08104238            ; 08104234
neg   r1,r1                     ; 08104236
@@Code08104238:
lsl   r0,r2,0x10                ; 08104238
ldr   r2,=0xFFFF0000            ; 0810423A
lsl   r1,r1,0x10                ; 0810423C
lsr   r0,r0,0x10                ; 0810423E
orr   r0,r1                     ; 08104240
str   r0,[sp]                   ; 08104242
ldrh  r1,[r4,0x4]               ; 08104244
ldr   r0,[sp,0x4]               ; 08104246
and   r0,r2                     ; 08104248
orr   r0,r1                     ; 0810424A
str   r0,[sp,0x4]               ; 0810424C
mov   r0,sp                     ; 0810424E
mov   r1,r3                     ; 08104250
mov   r2,0x1                    ; 08104252
mov   r3,0x8                    ; 08104254
bl    swi_0F                    ; 08104256
add   sp,0x8                    ; 0810425A
pop   {r4-r6}                   ; 0810425C
pop   {r0}                      ; 0810425E
bx    r0                        ; 08104260
.pool                           ; 08104262

Sub08104278:
; sprite 008 main
push  {r4,lr}                   ; 08104278
mov   r4,r0                     ; 0810427A
add   r0,0x94                   ; 0810427C
ldrb  r0,[r0]                   ; 0810427E
lsl   r0,r0,0x18                ; 08104280
asr   r0,r0,0x18                ; 08104282
cmp   r0,0x0                    ; 08104284
blt   @@Code081042A8            ; 08104286
mov   r1,0x34                   ; 08104288
ldsh  r0,[r4,r1]                ; 0810428A
cmp   r0,0x0                    ; 0810428C
blt   @@Code081042A8            ; 0810428E
mov   r0,r4                     ; 08104290
bl    Sub0810415C               ; 08104292
mov   r0,r4                     ; 08104296
add   r0,0x6A                   ; 08104298
ldrh  r0,[r0]                   ; 0810429A
bl    Sub081041F8               ; 0810429C
mov   r0,r4                     ; 081042A0
mov   r1,0x1                    ; 081042A2
bl    Sub0810269C               ; 081042A4
@@Code081042A8:
mov   r0,r4                     ; 081042A8
bl    Sub0804BEB8               ; 081042AA
cmp   r0,0x0                    ; 081042AE
bne   @@Code081042E6            ; 081042B0
ldr   r0,[r4,0xC]               ; 081042B2
cmp   r0,0x0                    ; 081042B4
bge   @@Code081042C8            ; 081042B6
mov   r0,0x22                   ; 081042B8
ldsh  r1,[r4,r0]                ; 081042BA
ldr   r0,=0xFFFFF600            ; 081042BC
cmp   r1,r0                     ; 081042BE
bge   @@Code081042E6            ; 081042C0
b     @@Code081042D2            ; 081042C2
.pool                           ; 081042C4

@@Code081042C8:
mov   r0,0x22                   ; 081042C8
ldsh  r1,[r4,r0]                ; 081042CA
ldr   r0,=0x06FF                ; 081042CC
cmp   r1,r0                     ; 081042CE
ble   @@Code081042E6            ; 081042D0
@@Code081042D2:
ldr   r0,=0x0300702C            ; 081042D2  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 081042D4
ldr   r0,=0x11A8                ; 081042D6
add   r1,r1,r0                  ; 081042D8
ldrh  r0,[r1]                   ; 081042DA
sub   r0,0x1                    ; 081042DC
strh  r0,[r1]                   ; 081042DE
mov   r0,r4                     ; 081042E0
bl    Sub0804A6F8               ; 081042E2
@@Code081042E6:
pop   {r4}                      ; 081042E6
pop   {r0}                      ; 081042E8
bx    r0                        ; 081042EA
.pool                           ; 081042EC

Return081042F8:
; sprite 0AC init
bx    lr                        ; 081042F8
.pool                           ; 081042FA

Sub081042FC:
; sprite 0AC main
push  {r4,lr}                   ; 081042FC
mov   r4,r0                     ; 081042FE
add   r0,0x94                   ; 08104300
ldrb  r1,[r0]                   ; 08104302
mov   r0,0x80                   ; 08104304
and   r0,r1                     ; 08104306
cmp   r0,0x0                    ; 08104308
beq   @@Code08104324            ; 0810430A
ldr   r0,=0x03002200            ; 0810430C
ldr   r1,=0x4901                ; 0810430E
add   r0,r0,r1                  ; 08104310
ldrb  r1,[r0]                   ; 08104312
mov   r0,0x8                    ; 08104314
and   r0,r1                     ; 08104316
cmp   r0,0x0                    ; 08104318
beq   @@Code08104324            ; 0810431A
mov   r0,r4                     ; 0810431C
mov   r1,0x2                    ; 0810431E
bl    Sub080D51EC               ; 08104320
@@Code08104324:
mov   r0,r4                     ; 08104324
bl    Sub0804BEB8               ; 08104326
cmp   r0,0x0                    ; 0810432A
bne   @@Code0810437A            ; 0810432C
mov   r0,r4                     ; 0810432E
add   r0,0x42                   ; 08104330
ldrh  r0,[r0]                   ; 08104332
cmp   r0,0x0                    ; 08104334
bne   @@Code08104348            ; 08104336
mov   r0,r4                     ; 08104338
bl    Sub0804A6F8               ; 0810433A
b     @@Code0810437A            ; 0810433E
.pool                           ; 08104340

@@Code08104348:
mov   r1,r4                     ; 08104348
add   r1,0x44                   ; 0810434A
ldrh  r0,[r1]                   ; 0810434C
cmp   r0,0x0                    ; 0810434E
bne   @@Code0810437A            ; 08104350
mov   r0,0x2                    ; 08104352
strh  r0,[r1]                   ; 08104354
mov   r2,r4                     ; 08104356
add   r2,0x94                   ; 08104358
ldrb  r1,[r2]                   ; 0810435A
mov   r0,0x80                   ; 0810435C
and   r0,r1                     ; 0810435E
cmp   r0,0x0                    ; 08104360
beq   @@Code0810436A            ; 08104362
mov   r0,0x4                    ; 08104364
strb  r0,[r2]                   ; 08104366
b     @@Code0810437A            ; 08104368
@@Code0810436A:
mov   r1,r4                     ; 0810436A
add   r1,0x6A                   ; 0810436C
ldrh  r0,[r4,0x38]              ; 0810436E
ldrh  r1,[r1]                   ; 08104370
cmp   r0,r1                     ; 08104372
bhs   @@Code0810437A            ; 08104374
add   r0,0x1                    ; 08104376
strh  r0,[r4,0x38]              ; 08104378
@@Code0810437A:
pop   {r4}                      ; 0810437A
pop   {r0}                      ; 0810437C
bx    r0                        ; 0810437E

Sub08104380:
mov   r3,r0                     ; 08104380
add   r3,0x72                   ; 08104382
mov   r2,0x0                    ; 08104384
mov   r1,0x5                    ; 08104386
strh  r1,[r3]                   ; 08104388
add   r0,0x48                   ; 0810438A
strh  r2,[r0]                   ; 0810438C
bx    lr                        ; 0810438E

Sub08104390:
push  {r4-r5,lr}                ; 08104390
mov   r4,r0                     ; 08104392
bl    Sub081034D0               ; 08104394
cmp   r0,0x0                    ; 08104398
bne   @@Code0810441E            ; 0810439A
ldr   r0,=0x0300702C            ; 0810439C  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 0810439E
ldr   r1,=0x11A6                ; 081043A0
add   r0,r0,r1                  ; 081043A2
ldrh  r0,[r0]                   ; 081043A4
cmp   r0,0x7                    ; 081043A6
bls   @@Code081043B0            ; 081043A8
mov   r0,r4                     ; 081043AA
bl    Sub08102728               ; 081043AC
@@Code081043B0:
mov   r3,r4                     ; 081043B0
add   r3,0x48                   ; 081043B2
ldrh  r0,[r3]                   ; 081043B4
cmp   r0,0x0                    ; 081043B6
bne   @@Code0810441E            ; 081043B8
mov   r1,r4                     ; 081043BA
add   r1,0x72                   ; 081043BC
ldrh  r0,[r1]                   ; 081043BE
sub   r0,0x1                    ; 081043C0
strh  r0,[r1]                   ; 081043C2
ldr   r1,=0xFFFF                ; 081043C4
mov   r5,r1                     ; 081043C6
lsl   r0,r0,0x10                ; 081043C8
asr   r2,r0,0x10                ; 081043CA
cmp   r2,0x0                    ; 081043CC
bge   @@Code081043F0            ; 081043CE
mov   r1,r4                     ; 081043D0
add   r1,0x6E                   ; 081043D2
ldrh  r0,[r1]                   ; 081043D4
add   r0,0x1                    ; 081043D6
strh  r0,[r1]                   ; 081043D8
sub   r1,0x28                   ; 081043DA
mov   r0,0x80                   ; 081043DC
lsl   r0,r0,0x1                 ; 081043DE
strh  r0,[r1]                   ; 081043E0
b     @@Code0810441E            ; 081043E2
.pool                           ; 081043E4

@@Code081043F0:
ldr   r1,=Data081A6326          ; 081043F0
lsl   r0,r2,0x1                 ; 081043F2
add   r0,r0,r1                  ; 081043F4
ldrh  r0,[r0]                   ; 081043F6
strh  r0,[r3]                   ; 081043F8
ldr   r0,=Data081A6320          ; 081043FA
add   r0,r2,r0                  ; 081043FC
ldrb  r0,[r0]                   ; 081043FE
strh  r0,[r4,0x38]              ; 08104400
and   r0,r5                     ; 08104402
cmp   r0,0x6                    ; 08104404
bne   @@Code0810441E            ; 08104406
ldr   r1,=0x03002200            ; 08104408
ldr   r0,=0x4058                ; 0810440A
add   r1,r1,r0                  ; 0810440C
mov   r0,0x78                   ; 0810440E
strh  r0,[r1]                   ; 08104410
mov   r0,0xA8                   ; 08104412
bl    PlayYISound               ; 08104414
mov   r0,0xCF                   ; 08104418
bl    Sub0804A23C               ; 0810441A
@@Code0810441E:
pop   {r4-r5}                   ; 0810441E
pop   {r0}                      ; 08104420
bx    r0                        ; 08104422
.pool                           ; 08104424

Sub08104434:
push  {r4-r7,lr}                ; 08104434
mov   r4,r0                     ; 08104436
add   r0,0x72                   ; 08104438
ldrh  r3,[r0]                   ; 0810443A
add   r3,0x1                    ; 0810443C
cmp   r3,0x5                    ; 0810443E
bls   @@Code08104444            ; 08104440
mov   r3,0x0                    ; 08104442
@@Code08104444:
strh  r3,[r0]                   ; 08104444
ldr   r0,=0x0300702C            ; 08104446  Sprite RAM structs (03002460)
ldr   r2,[r0]                   ; 08104448
ldr   r1,=0x11AC                ; 0810444A
add   r0,r2,r1                  ; 0810444C
ldrh  r1,[r0]                   ; 0810444E
ldr   r0,=Data081A6336          ; 08104450
add   r0,r3,r0                  ; 08104452
ldrb  r5,[r0]                   ; 08104454
ldr   r0,=0x119E                ; 08104456
add   r2,r2,r0                  ; 08104458
ldr   r0,=Data081A633C          ; 0810445A
lsl   r1,r1,0x1                 ; 0810445C
add   r1,r1,r0                  ; 0810445E
ldrh  r0,[r2]                   ; 08104460
ldrh  r1,[r1]                   ; 08104462
cmp   r0,r1                     ; 08104464
bls   @@Code08104490            ; 08104466
mov   r1,r4                     ; 08104468
add   r1,0x46                   ; 0810446A
mov   r0,0x2                    ; 0810446C
strh  r0,[r1]                   ; 0810446E
add   r1,0x34                   ; 08104470
ldrh  r2,[r1]                   ; 08104472
mov   r0,r2                     ; 08104474
sub   r0,0x10                   ; 08104476
strh  r0,[r1]                   ; 08104478
lsl   r0,r0,0x10                ; 0810447A
cmp   r0,0x0                    ; 0810447C
bge   @@Code08104484            ; 0810447E
mov   r0,0x0                    ; 08104480
strh  r0,[r1]                   ; 08104482
@@Code08104484:
mov   r1,r5                     ; 08104484
mul   r1,r2                     ; 08104486
ldr   r0,=0x03FF                ; 08104488
cmp   r1,r0                     ; 0810448A
bgt   @@Code08104490            ; 0810448C
mov   r5,0x4                    ; 0810448E
@@Code08104490:
mov   r0,r4                     ; 08104490
add   r0,0x48                   ; 08104492
strh  r5,[r0]                   ; 08104494
ldr   r0,=Data081A6330          ; 08104496
add   r0,r3,r0                  ; 08104498
ldrb  r0,[r0]                   ; 0810449A
strh  r0,[r4,0x38]              ; 0810449C
cmp   r0,0x2                    ; 0810449E
bne   @@Code08104550            ; 081044A0
ldr   r0,=0x03002200            ; 081044A2
ldr   r1,=0x4058                ; 081044A4
add   r5,r0,r1                  ; 081044A6
mov   r7,0x78                   ; 081044A8
strh  r7,[r5]                   ; 081044AA
mov   r0,0x4F                   ; 081044AC
mov   r1,r5                     ; 081044AE
bl    PlayYISound               ; 081044B0
ldr   r6,=0x03006D80            ; 081044B4
mov   r2,0xE0                   ; 081044B6
lsl   r2,r2,0x1                 ; 081044B8
add   r1,r6,r2                  ; 081044BA
mov   r0,0x20                   ; 081044BC
strh  r0,[r1]                   ; 081044BE
ldr   r0,=0x03007240            ; 081044C0  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 081044C2
ldr   r0,=0x0300702C            ; 081044C4  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 081044C6
ldr   r3,=0x119E                ; 081044C8
add   r0,r0,r3                  ; 081044CA
mov   r3,0x0                    ; 081044CC
ldsh  r2,[r0,r3]                ; 081044CE
ldr   r3,=0x2A12                ; 081044D0
add   r1,r1,r3                  ; 081044D2
strh  r2,[r1]                   ; 081044D4
sub   r2,0x20                   ; 081044D6
cmp   r2,0x0                    ; 081044D8
bge   @@Code081044DE            ; 081044DA
mov   r2,0x0                    ; 081044DC
@@Code081044DE:
strh  r2,[r0]                   ; 081044DE
cmp   r2,0xFF                   ; 081044E0
bgt   @@Code08104530            ; 081044E2
cmp   r2,0xDF                   ; 081044E4
ble   @@Code08104550            ; 081044E6
strh  r7,[r5]                   ; 081044E8
mov   r0,0x98                   ; 081044EA
mov   r1,r5                     ; 081044EC
bl    PlayYISound               ; 081044EE
mov   r0,0xE1                   ; 081044F2
lsl   r0,r0,0x1                 ; 081044F4
add   r1,r6,r0                  ; 081044F6
add   r0,0x3E                   ; 081044F8
strh  r0,[r1]                   ; 081044FA
b     @@Code08104550            ; 081044FC
.pool                           ; 081044FE

@@Code08104530:
ldr   r0,=0x017F                ; 08104530
cmp   r2,r0                     ; 08104532
ble   @@Code08104550            ; 08104534
mov   r0,r4                     ; 08104536
add   r0,0x46                   ; 08104538
ldrh  r0,[r0]                   ; 0810453A
cmp   r0,0x0                    ; 0810453C
bne   @@Code08104550            ; 0810453E
mov   r1,r4                     ; 08104540
add   r1,0x6E                   ; 08104542
ldrh  r0,[r1]                   ; 08104544
add   r0,0x1                    ; 08104546
strh  r0,[r1]                   ; 08104548
mov   r0,r4                     ; 0810454A
bl    Sub08104628               ; 0810454C
@@Code08104550:
pop   {r4-r7}                   ; 08104550
pop   {r0}                      ; 08104552
bx    r0                        ; 08104554
.pool                           ; 08104556

Sub0810455C:
push  {r4-r7,lr}                ; 0810455C
mov   r7,r8                     ; 0810455E
push  {r7}                      ; 08104560
mov   r4,r0                     ; 08104562
ldr   r0,=0x03007240            ; 08104564  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08104566
ldr   r1,=0x2678                ; 08104568
add   r6,r0,r1                  ; 0810456A
mov   r0,r4                     ; 0810456C
bl    Sub081034D0               ; 0810456E
mov   r8,r0                     ; 08104572
cmp   r0,0x0                    ; 08104574
bne   @@Code08104600            ; 08104576
mov   r0,r4                     ; 08104578
bl    Sub08102728               ; 0810457A
mov   r0,r4                     ; 0810457E
add   r0,0x48                   ; 08104580
ldrh  r0,[r0]                   ; 08104582
cmp   r0,0x0                    ; 08104584
bne   @@Code0810458E            ; 08104586
mov   r0,r4                     ; 08104588
bl    Sub08104434               ; 0810458A
@@Code0810458E:
ldr   r0,=0x0300702C            ; 0810458E  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08104590
ldr   r2,=0x119E                ; 08104592
add   r0,r0,r2                  ; 08104594
mov   r1,0x0                    ; 08104596
ldsh  r0,[r0,r1]                ; 08104598
cmp   r0,0xFF                   ; 0810459A
bgt   @@Code08104600            ; 0810459C
mov   r0,r4                     ; 0810459E
bl    Sub080DEE74               ; 081045A0
mov   r7,r4                     ; 081045A4
add   r7,0x66                   ; 081045A6
ldrh  r5,[r7]                   ; 081045A8
cmp   r5,0x5F                   ; 081045AA
bhi   @@Code08104600            ; 081045AC
mov   r4,r5                     ; 081045AE
mov   r0,0x4                    ; 081045B0
and   r0,r5                     ; 081045B2
cmp   r0,0x0                    ; 081045B4
beq   @@Code081045BA            ; 081045B6
neg   r4,r5                     ; 081045B8
@@Code081045BA:
lsl   r4,r4,0x1                 ; 081045BA
mov   r2,0xB0                   ; 081045BC
lsl   r2,r2,0x2                 ; 081045BE
add   r4,r4,r2                  ; 081045C0
strh  r4,[r6,0x2]               ; 081045C2
mov   r0,0x3                    ; 081045C4
and   r0,r5                     ; 081045C6
lsl   r0,r0,0x4                 ; 081045C8
mov   r1,0xF8                   ; 081045CA
lsl   r1,r1,0x3                 ; 081045CC
add   r0,r0,r1                  ; 081045CE
strh  r0,[r6,0x4]               ; 081045D0
mov   r0,0x1                    ; 081045D2
strh  r0,[r6]                   ; 081045D4
mov   r0,r8                     ; 081045D6
strh  r0,[r6,0x6]               ; 081045D8
mov   r0,r6                     ; 081045DA
bl    Sub08018668               ; 081045DC
mov   r0,r6                     ; 081045E0
bl    Sub0805E944               ; 081045E2
ldr   r1,=0x03002200            ; 081045E6
ldr   r2,=0x47E4                ; 081045E8
add   r0,r1,r2                  ; 081045EA
ldrh  r0,[r0]                   ; 081045EC
sub   r0,r4,r0                  ; 081045EE
ldr   r2,=0x4058                ; 081045F0
add   r1,r1,r2                  ; 081045F2
strh  r0,[r1]                   ; 081045F4
mov   r0,0xB0                   ; 081045F6
bl    PlayYISound               ; 081045F8
add   r5,0x1                    ; 081045FC
strh  r5,[r7]                   ; 081045FE
@@Code08104600:
pop   {r3}                      ; 08104600
mov   r8,r3                     ; 08104602
pop   {r4-r7}                   ; 08104604
pop   {r0}                      ; 08104606
bx    r0                        ; 08104608
.pool                           ; 0810460A

Sub08104628:
mov   r2,r0                     ; 08104628
mov   r3,r2                     ; 0810462A
add   r3,0x72                   ; 0810462C
mov   r1,0x0                    ; 0810462E
mov   r0,0xD                    ; 08104630
strh  r0,[r3]                   ; 08104632
add   r3,0x4                    ; 08104634
mov   r0,0x30                   ; 08104636
strh  r0,[r3]                   ; 08104638
mov   r0,r2                     ; 0810463A
add   r0,0x44                   ; 0810463C
strh  r1,[r0]                   ; 0810463E
bx    lr                        ; 08104640
.pool                           ; 08104642

Sub08104644:
push  {r4-r6,lr}                ; 08104644
mov   r5,r0                     ; 08104646
mov   r4,r1                     ; 08104648
ldr   r0,=0x01DD                ; 0810464A
bl    Sub08047B04               ; 0810464C
lsl   r0,r0,0x18                ; 08104650
lsr   r0,r0,0x18                ; 08104652
ldr   r2,=0x03007240            ; 08104654  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 08104656
mul   r0,r1                     ; 08104658
ldr   r1,=0x1AF4                ; 0810465A
add   r0,r0,r1                  ; 0810465C
ldr   r1,[r2]                   ; 0810465E
add   r6,r1,r0                  ; 08104660
ldr   r1,=0x03006D80            ; 08104662
mov   r0,r1                     ; 08104664
add   r0,0x98                   ; 08104666
mov   r2,0x0                    ; 08104668
ldsh  r0,[r0,r2]                ; 0810466A
sub   r0,0x8                    ; 0810466C
lsl   r0,r0,0x8                 ; 0810466E
str   r0,[r6]                   ; 08104670
add   r1,0x9A                   ; 08104672
mov   r3,0x0                    ; 08104674
ldsh  r0,[r1,r3]                ; 08104676
sub   r0,0x8                    ; 08104678
lsl   r0,r0,0x8                 ; 0810467A
str   r0,[r6,0x4]               ; 0810467C
mov   r0,r6                     ; 0810467E
add   r0,0x42                   ; 08104680
strh  r4,[r0]                   ; 08104682
add   r5,0x76                   ; 08104684
ldrh  r0,[r5]                   ; 08104686
mov   r1,r6                     ; 08104688
add   r1,0x6A                   ; 0810468A
strh  r0,[r1]                   ; 0810468C
ldrh  r0,[r5]                   ; 0810468E
cmp   r0,0xF                    ; 08104690
bls   @@Code081046AC            ; 08104692
sub   r0,0x4                    ; 08104694
strh  r0,[r5]                   ; 08104696
b     @@Code081046E0            ; 08104698
.pool                           ; 0810469A

@@Code081046AC:
ldr   r2,=0x03002200            ; 081046AC
ldr   r1,=0x48A2                ; 081046AE
add   r0,r2,r1                  ; 081046B0
ldrh  r4,[r0]                   ; 081046B2
mov   r0,0x7                    ; 081046B4
and   r0,r4                     ; 081046B6
cmp   r0,0x0                    ; 081046B8
bne   @@Code081046D4            ; 081046BA
ldr   r0,[r6]                   ; 081046BC
asr   r0,r0,0x8                 ; 081046BE
ldr   r3,=0x47E4                ; 081046C0
add   r1,r2,r3                  ; 081046C2
ldrh  r1,[r1]                   ; 081046C4
sub   r0,r0,r1                  ; 081046C6
ldr   r3,=0x4058                ; 081046C8
add   r1,r2,r3                  ; 081046CA
strh  r0,[r1]                   ; 081046CC
mov   r0,0xB1                   ; 081046CE
bl    PlayYISound               ; 081046D0
@@Code081046D4:
mov   r0,0x4                    ; 081046D4
and   r4,r0                     ; 081046D6
lsr   r1,r4,0x1                 ; 081046D8
ldrh  r0,[r6,0x2C]              ; 081046DA
add   r0,r0,r1                  ; 081046DC
strh  r0,[r6,0x2C]              ; 081046DE
@@Code081046E0:
mov   r0,r6                     ; 081046E0
pop   {r4-r6}                   ; 081046E2
pop   {r1}                      ; 081046E4
bx    r1                        ; 081046E6
.pool                           ; 081046E8

Sub081046F8:
push  {r4-r7,lr}                ; 081046F8
mov   r7,r10                    ; 081046FA
mov   r6,r9                     ; 081046FC
mov   r5,r8                     ; 081046FE
push  {r5-r7}                   ; 08104700
mov   r4,r0                     ; 08104702
ldr   r6,=0x03002200            ; 08104704
ldr   r0,=0x4058                ; 08104706
add   r1,r6,r0                  ; 08104708
mov   r0,0x78                   ; 0810470A
strh  r0,[r1]                   ; 0810470C
mov   r0,0xB8                   ; 0810470E
bl    PlayYISound               ; 08104710
mov   r0,r4                     ; 08104714
mov   r1,0x10                   ; 08104716
bl    Sub08104644               ; 08104718
ldr   r1,=0x03007240            ; 0810471C  Normal gameplay IWRAM (0300220C)
mov   r10,r1                    ; 0810471E
ldr   r3,[r1]                   ; 08104720
ldr   r1,[r0]                   ; 08104722
asr   r1,r1,0x8                 ; 08104724
ldr   r4,=0x2A12                ; 08104726
add   r2,r3,r4                  ; 08104728
strh  r1,[r2]                   ; 0810472A
ldr   r0,[r0,0x4]               ; 0810472C
asr   r0,r0,0x8                 ; 0810472E
ldr   r1,=0x2A16                ; 08104730
add   r3,r3,r1                  ; 08104732
strh  r0,[r3]                   ; 08104734
mov   r0,0xCE                   ; 08104736
bl    Sub0804A23C               ; 08104738
lsl   r0,r0,0x18                ; 0810473C
lsr   r1,r0,0x18                ; 0810473E
cmp   r1,0xFF                   ; 08104740
beq   @@Code0810480A            ; 08104742
mov   r0,0xB0                   ; 08104744
mul   r0,r1                     ; 08104746
mov   r4,0x95                   ; 08104748
lsl   r4,r4,0x2                 ; 0810474A
add   r0,r0,r4                  ; 0810474C
mov   r1,r10                    ; 0810474E
ldr   r5,[r1]                   ; 08104750
add   r7,r5,r0                  ; 08104752
ldr   r4,=0x0300702C            ; 08104754  Sprite RAM structs (03002460)
ldr   r2,[r4]                   ; 08104756
ldr   r1,=0x11A2                ; 08104758
add   r0,r2,r1                  ; 0810475A
mov   r4,0x0                    ; 0810475C
ldsh  r0,[r0,r4]                ; 0810475E
sub   r0,0x8                    ; 08104760
mov   r1,0x66                   ; 08104762
add   r1,r1,r7                  ; 08104764
mov   r8,r1                     ; 08104766
strh  r0,[r1]                   ; 08104768
ldr   r4,=0x119E                ; 0810476A
mov   r9,r4                     ; 0810476C
add   r3,r2,r4                  ; 0810476E
mov   r4,0x0                    ; 08104770
ldsh  r1,[r3,r4]                ; 08104772
add   r0,r0,r1                  ; 08104774
ldr   r1,=0xFFFFFF00            ; 08104776
add   r0,r0,r1                  ; 08104778
lsl   r0,r0,0x8                 ; 0810477A
str   r0,[r7]                   ; 0810477C
mov   r4,0x8D                   ; 0810477E
lsl   r4,r4,0x5                 ; 08104780
add   r2,r2,r4                  ; 08104782
mov   r1,0x0                    ; 08104784
ldsh  r0,[r2,r1]                ; 08104786
sub   r0,0x50                   ; 08104788
lsl   r0,r0,0x8                 ; 0810478A
str   r0,[r7,0x4]               ; 0810478C
ldr   r0,=0x47F4                ; 0810478E
add   r4,r6,r0                  ; 08104790
ldr   r1,=0x2A12                ; 08104792
add   r0,r5,r1                  ; 08104794
ldrh  r0,[r0]                   ; 08104796
strh  r0,[r4,0x2]               ; 08104798
mov   r0,0x80                   ; 0810479A
lsl   r0,r0,0x1                 ; 0810479C
mov   r6,r0                     ; 0810479E
strh  r6,[r4,0x4]               ; 081047A0
mov   r1,r8                     ; 081047A2
ldrh  r0,[r1]                   ; 081047A4
strh  r0,[r4,0x6]               ; 081047A6
ldrh  r0,[r3]                   ; 081047A8
strh  r0,[r4,0x8]               ; 081047AA
mov   r1,0xC0                   ; 081047AC
lsl   r1,r1,0x2                 ; 081047AE
mov   r0,r1                     ; 081047B0
ldrh  r3,[r3]                   ; 081047B2
add   r0,r0,r3                  ; 081047B4
lsl   r0,r0,0x1                 ; 081047B6
ldr   r1,=0x2A1E                ; 081047B8
mov   r8,r1                     ; 081047BA
add   r5,r8                     ; 081047BC
strh  r0,[r5]                   ; 081047BE
strh  r0,[r4,0xC]               ; 081047C0
bl    Sub080DC778               ; 081047C2
ldrh  r1,[r4,0x2]               ; 081047C6
mov   r0,r7                     ; 081047C8
add   r0,0x40                   ; 081047CA
strh  r1,[r0]                   ; 081047CC
mov   r1,0x4                    ; 081047CE
ldsh  r0,[r4,r1]                ; 081047D0
str   r0,[r7,0x8]               ; 081047D2
mov   r0,r10                    ; 081047D4
ldr   r2,[r0]                   ; 081047D6
ldr   r1,=0x2A16                ; 081047D8
add   r0,r2,r1                  ; 081047DA
ldrh  r0,[r0]                   ; 081047DC
strh  r0,[r4,0x2]               ; 081047DE
strh  r6,[r4,0x4]               ; 081047E0
ldr   r0,[r7,0x4]               ; 081047E2
asr   r0,r0,0x8                 ; 081047E4
strh  r0,[r4,0x6]               ; 081047E6
ldr   r1,=0x0300702C            ; 081047E8  Sprite RAM structs (03002460)
ldr   r0,[r1]                   ; 081047EA
add   r0,r9                     ; 081047EC
ldrh  r1,[r0]                   ; 081047EE
mov   r6,r7                     ; 081047F0
add   r6,0x6E                   ; 081047F2
strh  r1,[r6]                   ; 081047F4
ldrh  r0,[r0]                   ; 081047F6
strh  r0,[r4,0x8]               ; 081047F8
add   r2,r8                     ; 081047FA
ldrh  r0,[r2]                   ; 081047FC
strh  r0,[r4,0xC]               ; 081047FE
bl    Sub080DC778               ; 08104800
mov   r1,0x2                    ; 08104804
ldsh  r0,[r4,r1]                ; 08104806
str   r0,[r7,0xC]               ; 08104808
@@Code0810480A:
pop   {r3-r5}                   ; 0810480A
mov   r8,r3                     ; 0810480C
mov   r9,r4                     ; 0810480E
mov   r10,r5                    ; 08104810
pop   {r4-r7}                   ; 08104812
pop   {r0}                      ; 08104814
bx    r0                        ; 08104816
.pool                           ; 08104818

Sub08104844:
push  {r4,lr}                   ; 08104844
mov   r4,r0                     ; 08104846
ldrh  r0,[r4,0x38]              ; 08104848
cmp   r0,0x5                    ; 0810484A
bne   @@Code08104874            ; 0810484C
mov   r0,r4                     ; 0810484E
add   r0,0x48                   ; 08104850
ldrh  r0,[r0]                   ; 08104852
cmp   r0,0x1F                   ; 08104854
ble   @@Code08104874            ; 08104856
cmp   r0,0x20                   ; 08104858
bne   @@Code0810486C            ; 0810485A
mov   r0,r4                     ; 0810485C
bl    Sub081046F8               ; 0810485E
mov   r1,r4                     ; 08104862
add   r1,0x76                   ; 08104864
mov   r0,0x30                   ; 08104866
strh  r0,[r1]                   ; 08104868
b     @@Code08104874            ; 0810486A
@@Code0810486C:
mov   r0,r4                     ; 0810486C
mov   r1,0x1                    ; 0810486E
bl    Sub08104644               ; 08104870
@@Code08104874:
pop   {r4}                      ; 08104874
pop   {r0}                      ; 08104876
bx    r0                        ; 08104878
.pool                           ; 0810487A

Sub0810487C:
push  {r4-r5,lr}                ; 0810487C
mov   r4,r0                     ; 0810487E
bl    Sub081034D0               ; 08104880
cmp   r0,0x0                    ; 08104884
bne   @@Code081048FA            ; 08104886
mov   r0,r4                     ; 08104888
bl    Sub08102728               ; 0810488A
mov   r2,r4                     ; 0810488E
add   r2,0x48                   ; 08104890
ldrh  r0,[r2]                   ; 08104892
cmp   r0,0x0                    ; 08104894
beq   @@Code081048A0            ; 08104896
mov   r0,r4                     ; 08104898
bl    Sub08104844               ; 0810489A
b     @@Code081048FA            ; 0810489E
@@Code081048A0:
mov   r1,r4                     ; 081048A0
add   r1,0x72                   ; 081048A2
ldrh  r0,[r1]                   ; 081048A4
sub   r0,0x1                    ; 081048A6
strh  r0,[r1]                   ; 081048A8
ldr   r5,=0xFFFF                ; 081048AA
mov   r3,r5                     ; 081048AC
lsl   r0,r0,0x10                ; 081048AE
cmp   r0,0x0                    ; 081048B0
bge   @@Code081048CC            ; 081048B2
sub   r1,0x4                    ; 081048B4
ldrh  r0,[r1]                   ; 081048B6
sub   r0,0x1                    ; 081048B8
strh  r0,[r1]                   ; 081048BA
sub   r1,0x28                   ; 081048BC
mov   r0,0x80                   ; 081048BE
lsl   r0,r0,0x1                 ; 081048C0
strh  r0,[r1]                   ; 081048C2
b     @@Code081048FA            ; 081048C4
.pool                           ; 081048C6

@@Code081048CC:
ldrh  r1,[r1]                   ; 081048CC
ldr   r0,=Data081A6359          ; 081048CE
add   r0,r1,r0                  ; 081048D0
ldrb  r0,[r0]                   ; 081048D2
strh  r0,[r2]                   ; 081048D4
ldr   r0,=Data081A634C          ; 081048D6
add   r1,r1,r0                  ; 081048D8
ldrb  r0,[r1]                   ; 081048DA
strh  r0,[r4,0x38]              ; 081048DC
and   r0,r3                     ; 081048DE
cmp   r0,0x5                    ; 081048E0
bne   @@Code081048F4            ; 081048E2
ldr   r1,=0x03002200            ; 081048E4
ldr   r0,=0x4058                ; 081048E6
add   r1,r1,r0                  ; 081048E8
mov   r0,0x78                   ; 081048EA
strh  r0,[r1]                   ; 081048EC
mov   r0,0xA8                   ; 081048EE
bl    PlayYISound               ; 081048F0
@@Code081048F4:
mov   r0,r4                     ; 081048F4
bl    Sub08104844               ; 081048F6
@@Code081048FA:
pop   {r4-r5}                   ; 081048FA
pop   {r0}                      ; 081048FC
bx    r0                        ; 081048FE
.pool                           ; 08104900

Sub08104910:
push  {lr}                      ; 08104910
mov   r2,r0                     ; 08104912
mov   r1,r2                     ; 08104914
add   r1,0x52                   ; 08104916
mov   r3,0x0                    ; 08104918
ldsh  r0,[r1,r3]                ; 0810491A
cmp   r0,0x0                    ; 0810491C
bge   @@Code08104922            ; 0810491E
neg   r0,r0                     ; 08104920
@@Code08104922:
cmp   r0,0x3F                   ; 08104922
bgt   @@Code08104964            ; 08104924
mov   r1,r0                     ; 08104926
mul   r1,r0                     ; 08104928
mov   r0,r2                     ; 0810492A
add   r0,0x54                   ; 0810492C
mov   r2,0x0                    ; 0810492E
ldsh  r0,[r0,r2]                ; 08104930
cmp   r0,0x0                    ; 08104932
bge   @@Code08104938            ; 08104934
neg   r0,r0                     ; 08104936
@@Code08104938:
cmp   r0,0x3F                   ; 08104938
bgt   @@Code08104964            ; 0810493A
mov   r3,r0                     ; 0810493C
mul   r3,r0                     ; 0810493E
mov   r0,r3                     ; 08104940
add   r1,r1,r0                  ; 08104942
ldr   r0,=0x03006D80            ; 08104944
add   r0,0x9E                   ; 08104946
ldrb  r0,[r0]                   ; 08104948
mov   r2,r0                     ; 0810494A
mul   r2,r0                     ; 0810494C
mov   r0,r2                     ; 0810494E
mov   r3,0xF2                   ; 08104950
lsl   r3,r3,0x3                 ; 08104952
add   r0,r0,r3                  ; 08104954
cmp   r0,r1                     ; 08104956
blo   @@Code08104964            ; 08104958
mov   r0,0x0                    ; 0810495A
b     @@Code08104966            ; 0810495C
.pool                           ; 0810495E

@@Code08104964:
mov   r0,0x1                    ; 08104964
@@Code08104966:
pop   {r1}                      ; 08104966
bx    r1                        ; 08104968
.pool                           ; 0810496A

Sub0810496C:
push  {r4-r5,lr}                ; 0810496C
add   sp,-0x20                  ; 0810496E
mov   r4,0x0                    ; 08104970
strh  r4,[r0,0x38]              ; 08104972
mov   r1,0x3                    ; 08104974
strh  r1,[r0,0x2A]              ; 08104976
str   r4,[sp]                   ; 08104978
ldr   r1,=0x06013200            ; 0810497A
ldr   r5,=0x01000040            ; 0810497C
mov   r0,sp                     ; 0810497E
mov   r2,r5                     ; 08104980
bl    swi_MemoryCopy32          ; 08104982  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x4]               ; 08104986
add   r0,sp,0x4                 ; 08104988
ldr   r1,=0x06013600            ; 0810498A
mov   r2,r5                     ; 0810498C
bl    swi_MemoryCopy32          ; 0810498E  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x8]               ; 08104992
add   r0,sp,0x8                 ; 08104994
ldr   r1,=0x06013A00            ; 08104996
mov   r2,r5                     ; 08104998
bl    swi_MemoryCopy32          ; 0810499A  Memory copy/fill, 32-byte blocks
str   r4,[sp,0xC]               ; 0810499E
add   r0,sp,0xC                 ; 081049A0
ldr   r1,=0x06013E00            ; 081049A2
mov   r2,r5                     ; 081049A4
bl    swi_MemoryCopy32          ; 081049A6  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x10]              ; 081049AA
add   r0,sp,0x10                ; 081049AC
ldr   r1,=0x06014200            ; 081049AE
mov   r2,r5                     ; 081049B0
bl    swi_MemoryCopy32          ; 081049B2  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x14]              ; 081049B6
add   r0,sp,0x14                ; 081049B8
ldr   r1,=0x06014600            ; 081049BA
mov   r2,r5                     ; 081049BC
bl    swi_MemoryCopy32          ; 081049BE  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x18]              ; 081049C2
add   r0,sp,0x18                ; 081049C4
ldr   r1,=0x06014A00            ; 081049C6
mov   r2,r5                     ; 081049C8
bl    swi_MemoryCopy32          ; 081049CA  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x1C]              ; 081049CE
add   r0,sp,0x1C                ; 081049D0
ldr   r1,=0x06014E00            ; 081049D2
mov   r2,r5                     ; 081049D4
bl    swi_MemoryCopy32          ; 081049D6  Memory copy/fill, 32-byte blocks
ldr   r0,=0x02027C00            ; 081049DA
ldr   r1,=Data08299FA4          ; 081049DC
ldr   r2,=0x06013A40            ; 081049DE
ldr   r3,=0x0404                ; 081049E0
bl    Sub0810B7E0               ; 081049E2
ldr   r1,=0x03002200            ; 081049E6
ldr   r0,=0x4876                ; 081049E8
add   r1,r1,r0                  ; 081049EA
ldrh  r0,[r1]                   ; 081049EC
add   r0,0x1                    ; 081049EE
strh  r0,[r1]                   ; 081049F0
add   sp,0x20                   ; 081049F2
pop   {r4-r5}                   ; 081049F4
pop   {r0}                      ; 081049F6
bx    r0                        ; 081049F8
.pool                           ; 081049FA

Sub08104A38:
push  {r4,lr}                   ; 08104A38
add   sp,-0x8                   ; 08104A3A
mov   r1,r0                     ; 08104A3C
add   r1,0x6E                   ; 08104A3E
mov   r3,0x0                    ; 08104A40
ldsh  r2,[r1,r3]                ; 08104A42
sub   r2,0xAB                   ; 08104A44
lsl   r2,r2,0x10                ; 08104A46
ldr   r3,=0xFFFF0000            ; 08104A48
lsr   r1,r2,0x10                ; 08104A4A
orr   r1,r2                     ; 08104A4C
str   r1,[sp]                   ; 08104A4E
add   r0,0x6A                   ; 08104A50
ldrh  r1,[r0]                   ; 08104A52
ldr   r0,[sp,0x4]               ; 08104A54
and   r0,r3                     ; 08104A56
orr   r0,r1                     ; 08104A58
str   r0,[sp,0x4]               ; 08104A5A
ldr   r0,=0x03002200            ; 08104A5C
ldr   r4,=0x47D2                ; 08104A5E
add   r3,r0,r4                  ; 08104A60
ldrh  r2,[r3]                   ; 08104A62
lsl   r1,r2,0x5                 ; 08104A64
ldr   r4,=0x3806                ; 08104A66
add   r0,r0,r4                  ; 08104A68
add   r1,r1,r0                  ; 08104A6A
add   r2,0x1                    ; 08104A6C
strh  r2,[r3]                   ; 08104A6E
mov   r0,sp                     ; 08104A70
mov   r2,0x1                    ; 08104A72
mov   r3,0x8                    ; 08104A74
bl    swi_0F                    ; 08104A76
add   sp,0x8                    ; 08104A7A
pop   {r4}                      ; 08104A7C
pop   {r0}                      ; 08104A7E
bx    r0                        ; 08104A80
.pool                           ; 08104A82

Sub08104A94:
; sprite 0CE init
push  {r4,lr}                   ; 08104A94
mov   r4,r0                     ; 08104A96
bl    Sub0804B208               ; 08104A98
mov   r1,r4                     ; 08104A9C
add   r1,0x94                   ; 08104A9E
mov   r0,0x4                    ; 08104AA0
strb  r0,[r1]                   ; 08104AA2
mov   r0,r4                     ; 08104AA4
bl    Sub0810496C               ; 08104AA6
pop   {r4}                      ; 08104AAA
pop   {r0}                      ; 08104AAC
bx    r0                        ; 08104AAE

Sub08104AB0:
push  {r4-r5,lr}                ; 08104AB0
mov   r12,r0                    ; 08104AB2
mov   r1,r12                    ; 08104AB4
add   r1,0x40                   ; 08104AB6
mov   r2,0x0                    ; 08104AB8
ldsh  r0,[r1,r2]                ; 08104ABA
mov   r2,0x0                    ; 08104ABC
cmp   r0,0x0                    ; 08104ABE
bge   @@Code08104AC4            ; 08104AC0
ldr   r2,=0xFFFF                ; 08104AC2
@@Code08104AC4:
mov   r0,r12                    ; 08104AC4
add   r0,0x76                   ; 08104AC6
ldrh  r3,[r0]                   ; 08104AC8
ldrh  r1,[r1]                   ; 08104ACA
add   r3,r3,r1                  ; 08104ACC
strh  r3,[r0]                   ; 08104ACE
ldr   r1,=0xFFFF                ; 08104AD0
mov   r4,r0                     ; 08104AD2
cmp   r3,r1                     ; 08104AD4
bgt   @@Code08104AFC            ; 08104AD6
ldr   r5,=0xFFFFFF00            ; 08104AD8
mov   r0,r5                     ; 08104ADA
and   r3,r0                     ; 08104ADC
lsl   r0,r2,0x10                ; 08104ADE
asr   r0,r0,0x10                ; 08104AE0
mov   r1,0xFF                   ; 08104AE2
and   r0,r1                     ; 08104AE4
mov   r1,r12                    ; 08104AE6
add   r1,0x7A                   ; 08104AE8
orr   r3,r0                     ; 08104AEA
ldrh  r2,[r1]                   ; 08104AEC
add   r0,r3,r2                  ; 08104AEE
b     @@Code08104B16            ; 08104AF0
.pool                           ; 08104AF2

@@Code08104AFC:
ldr   r5,=0xFFFFFF00            ; 08104AFC
mov   r0,r5                     ; 08104AFE
and   r3,r0                     ; 08104B00
lsl   r0,r2,0x10                ; 08104B02
asr   r0,r0,0x10                ; 08104B04
mov   r1,0xFF                   ; 08104B06
and   r0,r1                     ; 08104B08
mov   r1,r12                    ; 08104B0A
add   r1,0x7A                   ; 08104B0C
orr   r3,r0                     ; 08104B0E
ldrh  r2,[r1]                   ; 08104B10
add   r0,r3,r2                  ; 08104B12
add   r0,0x1                    ; 08104B14
@@Code08104B16:
lsl   r0,r0,0x10                ; 08104B16
lsr   r0,r0,0x10                ; 08104B18
mov   r3,r1                     ; 08104B1A
mov   r1,r0                     ; 08104B1C
strh  r0,[r3]                   ; 08104B1E
mov   r2,r12                    ; 08104B20
add   r2,0x66                   ; 08104B22
lsl   r1,r1,0x8                 ; 08104B24
ldrh  r0,[r4]                   ; 08104B26
lsr   r0,r0,0x8                 ; 08104B28
orr   r1,r0                     ; 08104B2A
mov   r5,0x0                    ; 08104B2C
ldsh  r0,[r2,r5]                ; 08104B2E
add   r0,r0,r1                  ; 08104B30
strh  r0,[r2]                   ; 08104B32
mov   r0,r12                    ; 08104B34
ldr   r1,[r0]                   ; 08104B36
lsl   r1,r1,0x8                 ; 08104B38
ldrh  r2,[r3]                   ; 08104B3A
lsl   r2,r2,0x8                 ; 08104B3C
ldrh  r0,[r4]                   ; 08104B3E
lsr   r0,r0,0x8                 ; 08104B40
orr   r2,r0                     ; 08104B42
asr   r1,r1,0x10                ; 08104B44
add   r1,r1,r2                  ; 08104B46
lsl   r1,r1,0x10                ; 08104B48
asr   r1,r1,0x8                 ; 08104B4A
mov   r2,r12                    ; 08104B4C
str   r1,[r2]                   ; 08104B4E
ldrb  r0,[r4]                   ; 08104B50
strh  r0,[r4]                   ; 08104B52
ldrh  r1,[r3]                   ; 08104B54
mov   r0,0xFF                   ; 08104B56
lsl   r0,r0,0x8                 ; 08104B58
and   r0,r1                     ; 08104B5A
strh  r0,[r3]                   ; 08104B5C
pop   {r4-r5}                   ; 08104B5E
pop   {r0}                      ; 08104B60
bx    r0                        ; 08104B62
.pool                           ; 08104B64

Sub08104B68:
; sprite 0CE main
push  {r4-r7,lr}                ; 08104B68
mov   r7,r0                     ; 08104B6A
ldrh  r0,[r7,0x34]              ; 08104B6C
lsl   r0,r0,0x1                 ; 08104B6E
ldr   r3,=0x03005A00            ; 08104B70
add   r6,r0,r3                  ; 08104B72
mov   r0,0x80                   ; 08104B74
lsl   r0,r0,0x1                 ; 08104B76
add   r0,r0,r6                  ; 08104B78
mov   r12,r0                    ; 08104B7A
ldrb  r4,[r6,0x1]               ; 08104B7C
mov   r0,0x3                    ; 08104B7E
orr   r4,r0                     ; 08104B80
strb  r4,[r6,0x1]               ; 08104B82
ldr   r1,=0x0FD2                ; 08104B84
add   r3,r3,r1                  ; 08104B86
ldrh  r1,[r3]                   ; 08104B88
mov   r0,0x7                    ; 08104B8A
and   r1,r0                     ; 08104B8C
lsl   r1,r1,0x1                 ; 08104B8E
ldrb  r0,[r6,0x3]               ; 08104B90
mov   r2,0xF                    ; 08104B92
neg   r2,r2                     ; 08104B94
and   r2,r0                     ; 08104B96
orr   r2,r1                     ; 08104B98
strb  r2,[r6,0x3]               ; 08104B9A
ldrh  r0,[r3]                   ; 08104B9C
lsr   r0,r0,0x3                 ; 08104B9E
mov   r5,0x1                    ; 08104BA0
and   r0,r5                     ; 08104BA2
lsl   r0,r0,0x4                 ; 08104BA4
mov   r1,0x11                   ; 08104BA6
neg   r1,r1                     ; 08104BA8
and   r1,r2                     ; 08104BAA
orr   r1,r0                     ; 08104BAC
strb  r1,[r6,0x3]               ; 08104BAE
ldrh  r0,[r3]                   ; 08104BB0
lsr   r0,r0,0x4                 ; 08104BB2
and   r0,r5                     ; 08104BB4
lsl   r0,r0,0x5                 ; 08104BB6
mov   r2,0x21                   ; 08104BB8
neg   r2,r2                     ; 08104BBA
and   r1,r2                     ; 08104BBC
orr   r1,r0                     ; 08104BBE
mov   r0,0xC0                   ; 08104BC0
orr   r1,r0                     ; 08104BC2
strb  r1,[r6,0x3]               ; 08104BC4
mov   r0,0x3F                   ; 08104BC6
and   r4,r0                     ; 08104BC8
strb  r4,[r6,0x1]               ; 08104BCA
ldrh  r1,[r6,0x4]               ; 08104BCC
ldr   r0,=0xFFFFFC00            ; 08104BCE
and   r0,r1                     ; 08104BD0
mov   r2,0xC8                   ; 08104BD2
lsl   r2,r2,0x1                 ; 08104BD4
mov   r1,r2                     ; 08104BD6
orr   r0,r1                     ; 08104BD8
strh  r0,[r6,0x4]               ; 08104BDA
ldrb  r1,[r6,0x5]               ; 08104BDC
mov   r0,0xD                    ; 08104BDE
neg   r0,r0                     ; 08104BE0
and   r0,r1                     ; 08104BE2
mov   r1,0x4                    ; 08104BE4
orr   r0,r1                     ; 08104BE6
mov   r1,0xF                    ; 08104BE8
and   r0,r1                     ; 08104BEA
mov   r1,0x10                   ; 08104BEC
orr   r0,r1                     ; 08104BEE
strb  r0,[r6,0x5]               ; 08104BF0
ldrh  r1,[r7,0x34]              ; 08104BF2
lsr   r1,r1,0x2                 ; 08104BF4
lsl   r1,r1,0x2                 ; 08104BF6
ldr   r2,=0x0202C8B0            ; 08104BF8
add   r1,r1,r2                  ; 08104BFA
ldrh  r0,[r1]                   ; 08104BFC
sub   r0,0x20                   ; 08104BFE
strh  r0,[r1]                   ; 08104C00
ldrh  r0,[r7,0x34]              ; 08104C02
lsr   r0,r0,0x2                 ; 08104C04
lsl   r0,r0,0x2                 ; 08104C06
add   r0,r0,r2                  ; 08104C08
ldrh  r1,[r0,0x2]               ; 08104C0A
sub   r1,0x10                   ; 08104C0C
strh  r1,[r0,0x2]               ; 08104C0E
add   r6,0x8                    ; 08104C10
cmp   r6,r12                    ; 08104C12
bhs   @@Code08104C2C            ; 08104C14
mov   r3,0x4                    ; 08104C16
neg   r3,r3                     ; 08104C18
mov   r2,0x2                    ; 08104C1A
@@Code08104C1C:
ldrb  r1,[r6,0x1]               ; 08104C1C
mov   r0,r3                     ; 08104C1E
and   r0,r1                     ; 08104C20
orr   r0,r2                     ; 08104C22
strb  r0,[r6,0x1]               ; 08104C24
add   r6,0x8                    ; 08104C26
cmp   r6,r12                    ; 08104C28
blo   @@Code08104C1C            ; 08104C2A
@@Code08104C2C:
mov   r0,r7                     ; 08104C2C
bl    Sub08104A38               ; 08104C2E
mov   r0,r7                     ; 08104C32
mov   r1,0x1                    ; 08104C34
bl    Sub0810269C               ; 08104C36
ldr   r0,=0x03002200            ; 08104C3A
ldr   r1,=0x4806                ; 08104C3C
add   r0,r0,r1                  ; 08104C3E
ldrh  r1,[r0]                   ; 08104C40
cmp   r1,0xFF                   ; 08104C42
bgt   @@Code08104C78            ; 08104C44
mov   r0,r7                     ; 08104C46
bl    Sub08104910               ; 08104C48
cmp   r0,0x0                    ; 08104C4C
bne   @@Code08104C56            ; 08104C4E
mov   r0,r7                     ; 08104C50
bl    Sub080DEE74               ; 08104C52
@@Code08104C56:
mov   r0,r7                     ; 08104C56
bl    Sub0804A6F8               ; 08104C58
b     @@Code08104C9E            ; 08104C5C
.pool                           ; 08104C5E

@@Code08104C78:
mov   r0,r7                     ; 08104C78
add   r0,0x6E                   ; 08104C7A
strh  r1,[r0]                   ; 08104C7C
mov   r0,r7                     ; 08104C7E
bl    Sub0804BEB8               ; 08104C80
cmp   r0,0x0                    ; 08104C84
bne   @@Code08104C9E            ; 08104C86
mov   r1,r7                     ; 08104C88
add   r1,0x6A                   ; 08104C8A
mov   r2,0x80                   ; 08104C8C
lsl   r2,r2,0x3                 ; 08104C8E
mov   r0,r2                     ; 08104C90
ldrh  r2,[r1]                   ; 08104C92
add   r0,r0,r2                  ; 08104C94
strh  r0,[r1]                   ; 08104C96
mov   r0,r7                     ; 08104C98
bl    Sub08104AB0               ; 08104C9A
@@Code08104C9E:
pop   {r4-r7}                   ; 08104C9E
pop   {r0}                      ; 08104CA0
bx    r0                        ; 08104CA2

Sub08104CA4:
push  {r4-r6,lr}                ; 08104CA4
mov   r3,r0                     ; 08104CA6
ldr   r6,=0x0300702C            ; 08104CA8  Sprite RAM structs (03002460)
mov   r5,r3                     ; 08104CAA
add   r5,0x44                   ; 08104CAC
ldrh  r2,[r5]                   ; 08104CAE
cmp   r2,0x0                    ; 08104CB0
bne   @@Code08104D10            ; 08104CB2
mov   r4,r3                     ; 08104CB4
add   r4,0x40                   ; 08104CB6
ldrh  r1,[r4]                   ; 08104CB8
cmp   r1,0x27                   ; 08104CBA
bls   @@Code08104CEC            ; 08104CBC
ldr   r0,=0x03007240            ; 08104CBE  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08104CC0
mov   r1,0xE0                   ; 08104CC2
lsl   r1,r1,0x1                 ; 08104CC4
add   r0,r0,r1                  ; 08104CC6
strh  r2,[r0,0x8]               ; 08104CC8
ldr   r0,[r6]                   ; 08104CCA
ldr   r1,=0x188E                ; 08104CCC
add   r0,r0,r1                  ; 08104CCE
strh  r2,[r0]                   ; 08104CD0
mov   r1,r3                     ; 08104CD2
add   r1,0x6E                   ; 08104CD4
ldrh  r0,[r1]                   ; 08104CD6
add   r0,0x1                    ; 08104CD8
strh  r0,[r1]                   ; 08104CDA
b     @@Code08104D10            ; 08104CDC
.pool                           ; 08104CDE

@@Code08104CEC:
ldr   r0,=Data081A6368          ; 08104CEC
add   r0,r1,r0                  ; 08104CEE
ldrb  r0,[r0]                   ; 08104CF0
strh  r0,[r3,0x38]              ; 08104CF2
ldr   r0,=Data081A6390          ; 08104CF4
add   r0,r1,r0                  ; 08104CF6
ldrb  r0,[r0]                   ; 08104CF8
strh  r0,[r5]                   ; 08104CFA
add   r1,0x1                    ; 08104CFC
strh  r1,[r4]                   ; 08104CFE
mov   r0,0x7                    ; 08104D00
and   r1,r0                     ; 08104D02
cmp   r1,0x0                    ; 08104D04
bne   @@Code08104D10            ; 08104D06
mov   r0,0x85                   ; 08104D08
mov   r1,0x0                    ; 08104D0A
bl    PlayYISound               ; 08104D0C
@@Code08104D10:
pop   {r4-r6}                   ; 08104D10
pop   {r0}                      ; 08104D12
bx    r0                        ; 08104D14
.pool                           ; 08104D16

Sub08104D20:
push  {r4-r7,lr}                ; 08104D20
add   sp,-0x4                   ; 08104D22
mov   r5,r0                     ; 08104D24
ldr   r0,=0x03007240            ; 08104D26  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08104D28
mov   r1,0x87                   ; 08104D2A
lsl   r1,r1,0x2                 ; 08104D2C
add   r0,r0,r1                  ; 08104D2E
ldrh  r0,[r0]                   ; 08104D30
cmp   r0,0x0                    ; 08104D32
beq   @@Code08104D38            ; 08104D34
b     @@Code08104EAC            ; 08104D36
@@Code08104D38:
ldr   r7,=0x0300702C            ; 08104D38  Sprite RAM structs (03002460)
ldr   r0,[r7]                   ; 08104D3A
ldr   r6,=0x188E                ; 08104D3C
add   r0,r0,r6                  ; 08104D3E
mov   r2,0x0                    ; 08104D40
ldsh  r4,[r0,r2]                ; 08104D42
cmp   r4,0x0                    ; 08104D44
bne   @@Code08104D50            ; 08104D46
mov   r4,0x48                   ; 08104D48
mov   r0,0x14                   ; 08104D4A  14: Kamek encounter
bl    Sub0812C3B4               ; 08104D4C  Change music (YI)
@@Code08104D50:
cmp   r4,0xFF                   ; 08104D50
bgt   @@Code08104E18            ; 08104D52
ldr   r0,=0x020108C2            ; 08104D54
ldr   r4,=Data082D1CE4          ; 08104D56
ldr   r2,=0x020104C2            ; 08104D58
ldr   r1,[r7]                   ; 08104D5A
add   r1,r1,r6                  ; 08104D5C
mov   r5,0x0                    ; 08104D5E
ldsh  r3,[r1,r5]                ; 08104D60
mov   r5,0xF                    ; 08104D62
str   r5,[sp]                   ; 08104D64
mov   r1,r4                     ; 08104D66
bl    Sub0810BE1C               ; 08104D68
ldr   r0,=0x020108E2            ; 08104D6C
add   r4,0x1E                   ; 08104D6E
mov   r12,r4                    ; 08104D70
ldr   r2,=0x020104E2            ; 08104D72
ldr   r1,[r7]                   ; 08104D74
add   r1,r1,r6                  ; 08104D76
mov   r4,0x0                    ; 08104D78
ldsh  r3,[r1,r4]                ; 08104D7A
str   r5,[sp]                   ; 08104D7C
mov   r1,r12                    ; 08104D7E
bl    Sub0810BE1C               ; 08104D80
ldr   r0,=0x02010AC2            ; 08104D84
ldr   r1,=Data081A720A          ; 08104D86
ldr   r2,=0x020106C2            ; 08104D88
ldr   r3,[r7]                   ; 08104D8A
add   r3,r3,r6                  ; 08104D8C
mov   r4,0x0                    ; 08104D8E
ldsh  r3,[r3,r4]                ; 08104D90
str   r5,[sp]                   ; 08104D92
bl    Sub0810BE1C               ; 08104D94
ldr   r1,[r7]                   ; 08104D98
add   r1,r1,r6                  ; 08104D9A
ldrh  r0,[r1]                   ; 08104D9C
add   r0,0x8                    ; 08104D9E
strh  r0,[r1]                   ; 08104DA0
ldr   r1,=0x03002200            ; 08104DA2
ldr   r5,=0x487A                ; 08104DA4
add   r2,r1,r5                  ; 08104DA6
mov   r0,0x61                   ; 08104DA8
strh  r0,[r2]                   ; 08104DAA
ldr   r2,=0x487C                ; 08104DAC
add   r0,r1,r2                  ; 08104DAE
mov   r3,0xC2                   ; 08104DB0
strh  r3,[r0]                   ; 08104DB2
ldr   r4,=0x487E                ; 08104DB4
add   r2,r1,r4                  ; 08104DB6
mov   r0,0x3E                   ; 08104DB8
strh  r0,[r2]                   ; 08104DBA
add   r5,0x6                    ; 08104DBC
add   r2,r1,r5                  ; 08104DBE
ldr   r0,=0x0161                ; 08104DC0
strh  r0,[r2]                   ; 08104DC2
ldr   r2,=0x4882                ; 08104DC4
add   r0,r1,r2                  ; 08104DC6
strh  r3,[r0]                   ; 08104DC8
add   r4,0x6                    ; 08104DCA
add   r1,r1,r4                  ; 08104DCC
mov   r0,0x1E                   ; 08104DCE
b     @@Code08104EAA            ; 08104DD0
.pool                           ; 08104DD2

@@Code08104E18:
ldr   r4,=Data082D1CE4          ; 08104E18
ldr   r1,=0x020108C2            ; 08104E1A
mov   r0,r4                     ; 08104E1C
mov   r2,0xF                    ; 08104E1E
bl    swi_MemoryCopy4or2        ; 08104E20  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020104C2            ; 08104E24
mov   r0,r4                     ; 08104E26
mov   r2,0xF                    ; 08104E28
bl    swi_MemoryCopy4or2        ; 08104E2A  Memory copy/fill, 4- or 2-byte blocks
add   r4,0x1E                   ; 08104E2E
ldr   r1,=0x020108E2            ; 08104E30
mov   r0,r4                     ; 08104E32
mov   r2,0xF                    ; 08104E34
bl    swi_MemoryCopy4or2        ; 08104E36  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020104E2            ; 08104E3A
mov   r0,r4                     ; 08104E3C
mov   r2,0xF                    ; 08104E3E
bl    swi_MemoryCopy4or2        ; 08104E40  Memory copy/fill, 4- or 2-byte blocks
ldr   r4,=Data081A720A          ; 08104E44
ldr   r1,=0x02010AC2            ; 08104E46
mov   r0,r4                     ; 08104E48
mov   r2,0xF                    ; 08104E4A
bl    swi_MemoryCopy4or2        ; 08104E4C  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020106C2            ; 08104E50
mov   r0,r4                     ; 08104E52
mov   r2,0xF                    ; 08104E54
bl    swi_MemoryCopy4or2        ; 08104E56  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200            ; 08104E5A
ldr   r0,=0x487A                ; 08104E5C
add   r2,r1,r0                  ; 08104E5E
mov   r0,0x61                   ; 08104E60
strh  r0,[r2]                   ; 08104E62
ldr   r2,=0x487C                ; 08104E64
add   r0,r1,r2                  ; 08104E66
mov   r3,0xC2                   ; 08104E68
strh  r3,[r0]                   ; 08104E6A
ldr   r4,=0x487E                ; 08104E6C
add   r2,r1,r4                  ; 08104E6E
mov   r0,0x3E                   ; 08104E70
strh  r0,[r2]                   ; 08104E72
mov   r0,0x91                   ; 08104E74
lsl   r0,r0,0x7                 ; 08104E76
add   r2,r1,r0                  ; 08104E78
ldr   r0,=0x0161                ; 08104E7A
strh  r0,[r2]                   ; 08104E7C
ldr   r2,=0x4882                ; 08104E7E
add   r0,r1,r2                  ; 08104E80
strh  r3,[r0]                   ; 08104E82
add   r4,0x6                    ; 08104E84
add   r1,r1,r4                  ; 08104E86
mov   r0,0x1E                   ; 08104E88
strh  r0,[r1]                   ; 08104E8A
ldr   r0,[r7]                   ; 08104E8C
ldr   r1,=0x1192                ; 08104E8E
add   r0,r0,r1                  ; 08104E90
ldrh  r0,[r0]                   ; 08104E92
cmp   r0,0x0                    ; 08104E94
beq   @@Code08104EAC            ; 08104E96
mov   r1,r5                     ; 08104E98
add   r1,0x44                   ; 08104E9A
mov   r0,0x40                   ; 08104E9C
strh  r0,[r1]                   ; 08104E9E
mov   r0,0xB                    ; 08104EA0
strh  r0,[r5,0x38]              ; 08104EA2
add   r1,0x2A                   ; 08104EA4
ldrh  r0,[r1]                   ; 08104EA6
add   r0,0x1                    ; 08104EA8
@@Code08104EAA:
strh  r0,[r1]                   ; 08104EAA
@@Code08104EAC:
add   sp,0x4                    ; 08104EAC
pop   {r4-r7}                   ; 08104EAE
pop   {r0}                      ; 08104EB0
bx    r0                        ; 08104EB2
.pool                           ; 08104EB4

Sub08104EF0:
push  {r4,lr}                   ; 08104EF0
mov   r3,r0                     ; 08104EF2
mov   r1,r3                     ; 08104EF4
add   r1,0x44                   ; 08104EF6
ldrh  r4,[r1]                   ; 08104EF8
cmp   r4,0x0                    ; 08104EFA
bne   @@Code08104F48            ; 08104EFC
ldr   r0,[r3,0x8]               ; 08104EFE
cmp   r0,0x0                    ; 08104F00
beq   @@Code08104F3C            ; 08104F02
ldr   r0,=0x03007240            ; 08104F04  Normal gameplay IWRAM (0300220C)
ldr   r1,[r0]                   ; 08104F06
mov   r0,0xE0                   ; 08104F08
lsl   r0,r0,0x1                 ; 08104F0A  1C0
add   r2,r1,r0                  ; 08104F0C  [03007240]+1C0 (030023CC)
sub   r0,0xAE                   ; 08104F0E  112: Kamek pre-battle 2
strh  r0,[r2,0xC]               ; 08104F10  set message ID
mov   r0,0x87                   ; 08104F12
lsl   r0,r0,0x2                 ; 08104F14  21C
add   r1,r1,r0                  ; 08104F16  [03007240]+21C (03002428)
ldrh  r0,[r1]                   ; 08104F18
add   r0,0x1                    ; 08104F1A  activate message
strh  r0,[r1]                   ; 08104F1C
mov   r0,r3                     ; 08104F1E
add   r0,0x40                   ; 08104F20
strh  r4,[r0]                   ; 08104F22
str   r4,[r3,0x8]               ; 08104F24
ldrh  r0,[r2,0x8]               ; 08104F26
add   r0,0x1                    ; 08104F28
strh  r0,[r2,0x8]               ; 08104F2A
mov   r1,r3                     ; 08104F2C
add   r1,0x6E                   ; 08104F2E
ldrh  r0,[r1]                   ; 08104F30
add   r0,0x1                    ; 08104F32
strh  r0,[r1]                   ; 08104F34
b     @@Code08104F48            ; 08104F36
.pool                           ; 08104F38

@@Code08104F3C:
ldr   r0,=0xFFFFFC00            ; 08104F3C
str   r0,[r3,0x8]               ; 08104F3E
mov   r0,0x4                    ; 08104F40
strh  r0,[r1]                   ; 08104F42
mov   r0,0xC                    ; 08104F44
strh  r0,[r3,0x38]              ; 08104F46
@@Code08104F48:
pop   {r4}                      ; 08104F48
pop   {r0}                      ; 08104F4A
bx    r0                        ; 08104F4C
.pool                           ; 08104F4E

Sub08104F54:
push  {r4,lr}                   ; 08104F54
mov   r3,r0                     ; 08104F56
mov   r4,r3                     ; 08104F58
add   r4,0x44                   ; 08104F5A
ldrh  r2,[r4]                   ; 08104F5C
cmp   r2,0x0                    ; 08104F5E
bne   @@Code08104FBC            ; 08104F60
add   r0,0x40                   ; 08104F62
ldrh  r1,[r0]                   ; 08104F64
cmp   r1,0x18                   ; 08104F66
bls   @@Code08104F98            ; 08104F68
ldr   r0,=0x03007240            ; 08104F6A  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08104F6C
mov   r1,0xE0                   ; 08104F6E
lsl   r1,r1,0x1                 ; 08104F70
add   r0,r0,r1                  ; 08104F72
strh  r2,[r0,0x8]               ; 08104F74
ldr   r0,=0x0300702C            ; 08104F76  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08104F78
ldr   r1,=0x188E                ; 08104F7A
add   r0,r0,r1                  ; 08104F7C
strh  r2,[r0]                   ; 08104F7E
mov   r1,r3                     ; 08104F80
add   r1,0x6E                   ; 08104F82
ldrh  r0,[r1]                   ; 08104F84
add   r0,0x1                    ; 08104F86
strh  r0,[r1]                   ; 08104F88
b     @@Code08104FBC            ; 08104F8A
.pool                           ; 08104F8C

@@Code08104F98:
add   r1,0x1                    ; 08104F98
strh  r1,[r0]                   ; 08104F9A
ldr   r0,=Data081A63B8          ; 08104F9C
add   r0,r1,r0                  ; 08104F9E
ldrb  r0,[r0]                   ; 08104FA0
strh  r0,[r3,0x38]              ; 08104FA2
ldr   r0,=Data081A63D2          ; 08104FA4
add   r0,r1,r0                  ; 08104FA6
ldrb  r0,[r0]                   ; 08104FA8
strh  r0,[r4]                   ; 08104FAA
mov   r0,0x7                    ; 08104FAC
and   r1,r0                     ; 08104FAE
cmp   r1,0x0                    ; 08104FB0
bne   @@Code08104FBC            ; 08104FB2
mov   r0,0x85                   ; 08104FB4
mov   r1,0x0                    ; 08104FB6
bl    PlayYISound               ; 08104FB8
@@Code08104FBC:
pop   {r4}                      ; 08104FBC
pop   {r0}                      ; 08104FBE
bx    r0                        ; 08104FC0
.pool                           ; 08104FC2

Sub08104FCC:
push  {r4-r6,lr}                ; 08104FCC
add   sp,-0x4                   ; 08104FCE
ldr   r4,=Data082D1D20          ; 08104FD0
ldr   r5,=0x0300702C            ; 08104FD2  Sprite RAM structs (03002460)
ldr   r0,[r5]                   ; 08104FD4
ldr   r2,=0x188E                ; 08104FD6
add   r1,r0,r2                  ; 08104FD8
mov   r6,0x0                    ; 08104FDA
ldsh  r0,[r1,r6]                ; 08104FDC
cmp   r0,0xFF                   ; 08104FDE
ble   @@Code0810500C            ; 08104FE0
ldr   r1,=0x02010AC2            ; 08104FE2
mov   r0,r4                     ; 08104FE4
mov   r2,0xF                    ; 08104FE6
bl    swi_MemoryCopy4or2        ; 08104FE8  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020106C2            ; 08104FEC
mov   r0,r4                     ; 08104FEE
mov   r2,0xF                    ; 08104FF0
bl    swi_MemoryCopy4or2        ; 08104FF2  Memory copy/fill, 4- or 2-byte blocks
b     @@Code0810502A            ; 08104FF6
.pool                           ; 08104FF8

@@Code0810500C:
ldr   r0,=0x02010AC2            ; 0810500C
ldr   r2,=0x020106C2            ; 0810500E
mov   r6,0x0                    ; 08105010
ldsh  r3,[r1,r6]                ; 08105012
mov   r1,0xF                    ; 08105014
str   r1,[sp]                   ; 08105016
mov   r1,r4                     ; 08105018
bl    Sub0810BE1C               ; 0810501A
ldr   r1,[r5]                   ; 0810501E
ldr   r0,=0x188E                ; 08105020
add   r1,r1,r0                  ; 08105022
ldrh  r0,[r1]                   ; 08105024
add   r0,0x8                    ; 08105026
strh  r0,[r1]                   ; 08105028
@@Code0810502A:
ldr   r1,=0x03002200            ; 0810502A
mov   r6,0x91                   ; 0810502C
lsl   r6,r6,0x7                 ; 0810502E
add   r2,r1,r6                  ; 08105030
ldr   r0,=0x0161                ; 08105032
strh  r0,[r2]                   ; 08105034
ldr   r0,=0x4882                ; 08105036
add   r2,r1,r0                  ; 08105038
mov   r0,0xC2                   ; 0810503A
strh  r0,[r2]                   ; 0810503C
ldr   r2,=0x4884                ; 0810503E
add   r1,r1,r2                  ; 08105040
mov   r0,0x1E                   ; 08105042
strh  r0,[r1]                   ; 08105044
add   sp,0x4                    ; 08105046
pop   {r4-r6}                   ; 08105048
pop   {r0}                      ; 0810504A
bx    r0                        ; 0810504C
.pool                           ; 0810504E

Sub0810506C:
push  {lr}                      ; 0810506C
add   r0,0x6A                   ; 0810506E
ldrh  r0,[r0]                   ; 08105070
cmp   r0,0x7B                   ; 08105072
bls   @@Code0810507A            ; 08105074
bl    Sub08104FCC               ; 08105076
@@Code0810507A:
pop   {r0}                      ; 0810507A
bx    r0                        ; 0810507C
.pool                           ; 0810507E

Sub08105080:
push  {r4-r6,lr}                ; 08105080
mov   r4,r0                     ; 08105082
ldr   r0,=0x0300702C            ; 08105084  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08105086
ldr   r1,=0x1194                ; 08105088
add   r0,r0,r1                  ; 0810508A
ldrh  r0,[r0]                   ; 0810508C
ldr   r6,=0x03007240            ; 0810508E  Normal gameplay IWRAM (0300220C)
mov   r5,0xB0                   ; 08105090
mul   r0,r5                     ; 08105092
mov   r2,0x95                   ; 08105094
lsl   r2,r2,0x2                 ; 08105096
add   r0,r0,r2                  ; 08105098
ldr   r1,[r6]                   ; 0810509A
add   r2,r1,r0                  ; 0810509C
mov   r0,r2                     ; 0810509E
add   r0,0x5A                   ; 081050A0
ldrh  r0,[r0]                   ; 081050A2
mov   r1,r4                     ; 081050A4
add   r1,0x5A                   ; 081050A6
ldrh  r1,[r1]                   ; 081050A8
sub   r0,r0,r1                  ; 081050AA
cmp   r0,0x11                   ; 081050AC
bgt   @@Code081050CC            ; 081050AE
mov   r0,0xE                    ; 081050B0
strh  r0,[r4,0x38]              ; 081050B2
mov   r1,r4                     ; 081050B4
add   r1,0x6E                   ; 081050B6
ldrh  r0,[r1]                   ; 081050B8
add   r0,0x1                    ; 081050BA
strh  r0,[r1]                   ; 081050BC
b     @@Code0810514E            ; 081050BE
.pool                           ; 081050C0

@@Code081050CC:
mov   r1,r4                     ; 081050CC
add   r1,0x44                   ; 081050CE
ldrh  r0,[r1]                   ; 081050D0
cmp   r0,0x0                    ; 081050D2
bne   @@Code081050E2            ; 081050D4
mov   r0,0x2                    ; 081050D6
strh  r0,[r1]                   ; 081050D8
ldrh  r0,[r4,0x38]              ; 081050DA
mov   r1,0x1                    ; 081050DC
eor   r0,r1                     ; 081050DE
strh  r0,[r4,0x38]              ; 081050E0
@@Code081050E2:
mov   r0,r2                     ; 081050E2
bl    Sub0810506C               ; 081050E4
mov   r1,r4                     ; 081050E8
add   r1,0x42                   ; 081050EA
ldrh  r0,[r1]                   ; 081050EC
cmp   r0,0x0                    ; 081050EE
bne   @@Code0810514E            ; 081050F0
mov   r0,0x4                    ; 081050F2
strh  r0,[r1]                   ; 081050F4
ldr   r0,=0x0231                ; 081050F6
bl    Sub08047B04               ; 081050F8
lsl   r0,r0,0x18                ; 081050FC
lsr   r0,r0,0x18                ; 081050FE
mov   r1,r0                     ; 08105100
mul   r1,r5                     ; 08105102
ldr   r5,=0x1AF4                ; 08105104
add   r1,r1,r5                  ; 08105106
ldr   r3,[r6]                   ; 08105108
add   r1,r3,r1                  ; 0810510A
ldr   r0,[r4]                   ; 0810510C
asr   r0,r0,0x8                 ; 0810510E
add   r0,0xC                    ; 08105110
lsl   r0,r0,0x8                 ; 08105112
str   r0,[r1]                   ; 08105114
ldr   r0,[r4,0x4]               ; 08105116
asr   r0,r0,0x8                 ; 08105118
sub   r0,0xA                    ; 0810511A
lsl   r0,r0,0x8                 ; 0810511C
str   r0,[r1,0x4]               ; 0810511E
ldr   r0,=0x29CC                ; 08105120
add   r3,r3,r0                  ; 08105122
ldrh  r2,[r3]                   ; 08105124
mov   r4,0x6                    ; 08105126
mov   r0,0x6                    ; 08105128
and   r0,r2                     ; 0810512A
ldr   r2,=Data081A63EC          ; 0810512C
add   r0,r0,r2                  ; 0810512E
mov   r5,0x0                    ; 08105130
ldsh  r0,[r0,r5]                ; 08105132
str   r0,[r1,0x8]               ; 08105134
ldrh  r0,[r3]                   ; 08105136
lsr   r0,r0,0x3                 ; 08105138
and   r0,r4                     ; 0810513A
add   r0,r0,r2                  ; 0810513C
mov   r2,0x0                    ; 0810513E
ldsh  r0,[r0,r2]                ; 08105140
str   r0,[r1,0xC]               ; 08105142
mov   r2,r1                     ; 08105144
add   r2,0x42                   ; 08105146
mov   r0,0x10                   ; 08105148
strh  r0,[r2]                   ; 0810514A
str   r0,[r1,0x10]              ; 0810514C
@@Code0810514E:
pop   {r4-r6}                   ; 0810514E
pop   {r0}                      ; 08105150
bx    r0                        ; 08105152
.pool                           ; 08105154

Sub08105164:
push  {r4-r6,lr}                ; 08105164
add   sp,-0x8                   ; 08105166
mov   r6,r0                     ; 08105168
add   r0,0x76                   ; 0810516A
ldrh  r5,[r0]                   ; 0810516C
cmp   r5,0x0                    ; 0810516E
beq   @@Code08105180            ; 08105170
mov   r0,0x80                   ; 08105172
lsl   r0,r0,0x9                 ; 08105174
mov   r1,r5                     ; 08105176
bl    swi_Divide                ; 08105178
mov   r2,r0                     ; 0810517C
b     @@Code08105182            ; 0810517E
@@Code08105180:
mov   r2,0x0                    ; 08105180
@@Code08105182:
ldr   r3,=0xFFFF0000            ; 08105182
ldr   r0,[sp]                   ; 08105184
and   r0,r3                     ; 08105186
mov   r1,0xFF                   ; 08105188
lsl   r1,r1,0x8                 ; 0810518A
orr   r0,r1                     ; 0810518C
lsl   r2,r2,0x10                ; 0810518E
add   r1,0xFF                   ; 08105190
and   r0,r1                     ; 08105192
orr   r0,r2                     ; 08105194
str   r0,[sp]                   ; 08105196
ldr   r0,[sp,0x4]               ; 08105198
and   r0,r3                     ; 0810519A
str   r0,[sp,0x4]               ; 0810519C
ldr   r4,=0x03002200            ; 0810519E
ldr   r1,=0x47D2                ; 081051A0
add   r0,r4,r1                  ; 081051A2
ldrh  r1,[r0]                   ; 081051A4
lsl   r1,r1,0x5                 ; 081051A6
ldr   r2,=0x3806                ; 081051A8
add   r0,r4,r2                  ; 081051AA
add   r1,r1,r0                  ; 081051AC
mov   r0,sp                     ; 081051AE
mov   r2,0x1                    ; 081051B0
mov   r3,0x8                    ; 081051B2
bl    swi_0F                    ; 081051B4
ldrh  r2,[r6,0x34]              ; 081051B8
lsl   r2,r2,0x1                 ; 081051BA
mov   r1,0xE0                   ; 081051BC
lsl   r1,r1,0x6                 ; 081051BE
add   r0,r4,r1                  ; 081051C0
add   r2,r2,r0                  ; 081051C2
asr   r1,r5,0x4                 ; 081051C4
sub   r1,0x10                   ; 081051C6
ldrb  r0,[r2]                   ; 081051C8
sub   r0,r0,r1                  ; 081051CA
strb  r0,[r2]                   ; 081051CC
ldr   r2,=0x4876                ; 081051CE
add   r4,r4,r2                  ; 081051D0
ldrh  r0,[r4]                   ; 081051D2
add   r0,0x1                    ; 081051D4
strh  r0,[r4]                   ; 081051D6
add   sp,0x8                    ; 081051D8
pop   {r4-r6}                   ; 081051DA
pop   {r0}                      ; 081051DC
bx    r0                        ; 081051DE
.pool                           ; 081051E0

Sub081051F4:
push  {r4-r5,lr}                ; 081051F4
mov   r5,r0                     ; 081051F6
add   r0,0xA3                   ; 081051F8
ldrb  r0,[r0]                   ; 081051FA
cmp   r0,0x0                    ; 081051FC
beq   @@Code08105250            ; 081051FE
mov   r0,r5                     ; 08105200
bl    Sub0804AEDC               ; 08105202
mov   r1,r5                     ; 08105206
add   r1,0x76                   ; 08105208
mov   r4,0x0                    ; 0810520A
mov   r0,0x80                   ; 0810520C
lsl   r0,r0,0x1                 ; 0810520E
strh  r0,[r1]                   ; 08105210
ldr   r1,=Data082AA1A4          ; 08105212
mov   r0,r5                     ; 08105214
bl    LoadDynGfx_32x32          ; 08105216
mov   r0,0x2                    ; 0810521A
strh  r0,[r5,0x36]              ; 0810521C
ldr   r0,[r5]                   ; 0810521E
mov   r1,0x80                   ; 08105220
lsl   r1,r1,0x5                 ; 08105222
add   r0,r0,r1                  ; 08105224
str   r0,[r5]                   ; 08105226
strh  r4,[r5,0x38]              ; 08105228
ldrh  r1,[r5,0x2A]              ; 0810522A
ldr   r0,=0x07FF                ; 0810522C
and   r0,r1                     ; 0810522E
mov   r2,0x80                   ; 08105230
lsl   r2,r2,0x4                 ; 08105232
mov   r1,r2                     ; 08105234
orr   r0,r1                     ; 08105236
strh  r0,[r5,0x2A]              ; 08105238
mov   r1,r5                     ; 0810523A
add   r1,0x6E                   ; 0810523C
ldrh  r0,[r1]                   ; 0810523E
add   r0,0x1                    ; 08105240
strh  r0,[r1]                   ; 08105242
b     @@Code0810526A            ; 08105244
.pool                           ; 08105246

@@Code08105250:
mov   r1,r5                     ; 08105250
add   r1,0x44                   ; 08105252
ldrh  r0,[r1]                   ; 08105254
cmp   r0,0x0                    ; 08105256
bne   @@Code08105266            ; 08105258
mov   r0,0x2                    ; 0810525A
strh  r0,[r1]                   ; 0810525C
ldrh  r0,[r5,0x38]              ; 0810525E
mov   r1,0x1                    ; 08105260
eor   r0,r1                     ; 08105262
strh  r0,[r5,0x38]              ; 08105264
@@Code08105266:
bl    Sub08104FCC               ; 08105266
@@Code0810526A:
pop   {r4-r5}                   ; 0810526A
pop   {r0}                      ; 0810526C
bx    r0                        ; 0810526E

Sub08105270:
push  {r4-r6,lr}                ; 08105270
mov   r12,r0                    ; 08105272
ldr   r0,=0x0300702C            ; 08105274  Sprite RAM structs (03002460)
ldr   r2,[r0]                   ; 08105276
ldr   r1,=0x1194                ; 08105278
add   r0,r2,r1                  ; 0810527A
ldrh  r1,[r0]                   ; 0810527C
ldr   r3,=0x03007240            ; 0810527E  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 08105280
mul   r0,r1                     ; 08105282
mov   r1,0x95                   ; 08105284
lsl   r1,r1,0x2                 ; 08105286
add   r0,r0,r1                  ; 08105288
ldr   r1,[r3]                   ; 0810528A
add   r6,r1,r0                  ; 0810528C
ldr   r3,=0x1192                ; 0810528E
add   r2,r2,r3                  ; 08105290
ldrh  r0,[r2]                   ; 08105292
cmp   r0,0x1                    ; 08105294
beq   @@Code0810530C            ; 08105296
ldrh  r0,[r6,0x38]              ; 08105298
cmp   r0,0x17                   ; 0810529A
bls   @@Code08105366            ; 0810529C
ldr   r0,=0xFFFFFD80            ; 0810529E
mov   r1,r12                    ; 081052A0
str   r0,[r1,0x8]               ; 081052A2
mov   r0,0xC0                   ; 081052A4
lsl   r0,r0,0x1                 ; 081052A6
str   r0,[r1,0x18]              ; 081052A8
mov   r0,0x10                   ; 081052AA
str   r0,[r1,0x10]              ; 081052AC
ldr   r0,=0xFFFFFF00            ; 081052AE
str   r0,[r1,0xC]               ; 081052B0
mov   r1,0x0                    ; 081052B2
mov   r0,0x80                   ; 081052B4
lsl   r0,r0,0x6                 ; 081052B6
mov   r2,r12                    ; 081052B8
strh  r0,[r2,0x28]              ; 081052BA
mov   r0,r12                    ; 081052BC
add   r0,0x40                   ; 081052BE
strh  r1,[r0]                   ; 081052C0
mov   r1,r12                    ; 081052C2
add   r1,0x6E                   ; 081052C4
ldrh  r0,[r1]                   ; 081052C6
add   r0,0x1                    ; 081052C8
strh  r0,[r1]                   ; 081052CA
ldr   r1,=0x03002200            ; 081052CC
ldr   r0,[r2]                   ; 081052CE
asr   r0,r0,0x8                 ; 081052D0
ldr   r3,=0x47E4                ; 081052D2
add   r2,r1,r3                  ; 081052D4
ldrh  r2,[r2]                   ; 081052D6
sub   r0,r0,r2                  ; 081052D8
ldr   r2,=0x4058                ; 081052DA
add   r1,r1,r2                  ; 081052DC
strh  r0,[r1]                   ; 081052DE
mov   r0,0xB4                   ; 081052E0
bl    PlayYISound               ; 081052E2
b     @@Code08105366            ; 081052E6
.pool                           ; 081052E8

@@Code0810530C:
ldr   r0,[r6,0xC]               ; 0810530C
cmp   r0,0x0                    ; 0810530E
blt   @@Code08105356            ; 08105310
mov   r3,r12                    ; 08105312
add   r3,0x76                   ; 08105314
ldrh  r0,[r3]                   ; 08105316
lsr   r4,r0,0x4                 ; 08105318
mov   r0,r12                    ; 0810531A
ldr   r1,[r0,0x4]               ; 0810531C
asr   r1,r1,0x8                 ; 0810531E
mov   r0,r4                     ; 08105320
sub   r0,0x18                   ; 08105322
sub   r1,r1,r0                  ; 08105324
ldrh  r5,[r3]                   ; 08105326
lsl   r0,r5,0x1                 ; 08105328
add   r0,r0,r5                  ; 0810532A
lsr   r4,r0,0x6                 ; 0810532C
mov   r0,r6                     ; 0810532E
add   r0,0x5C                   ; 08105330
ldrh  r0,[r0]                   ; 08105332
mov   r2,r6                     ; 08105334
add   r2,0x50                   ; 08105336
sub   r0,r0,r1                  ; 08105338
ldrh  r2,[r2]                   ; 0810533A
add   r1,r0,r2                  ; 0810533C
add   r1,r1,r4                  ; 0810533E
mov   r0,r3                     ; 08105340
cmp   r1,0x0                    ; 08105342
blt   @@Code08105352            ; 08105344
mov   r1,r5                     ; 08105346
sub   r1,0x18                   ; 08105348
cmp   r1,0x0                    ; 0810534A
bge   @@Code08105364            ; 0810534C
mov   r1,0x20                   ; 0810534E
b     @@Code08105364            ; 08105350
@@Code08105352:
add   r1,r5,0x4                 ; 08105352
b     @@Code0810535E            ; 08105354
@@Code08105356:
mov   r0,r12                    ; 08105356
add   r0,0x76                   ; 08105358
ldrh  r1,[r0]                   ; 0810535A
add   r1,0x4                    ; 0810535C
@@Code0810535E:
cmp   r1,0x5F                   ; 0810535E
ble   @@Code08105364            ; 08105360
mov   r1,0x60                   ; 08105362
@@Code08105364:
strh  r1,[r0]                   ; 08105364
@@Code08105366:
pop   {r4-r6}                   ; 08105366
pop   {r0}                      ; 08105368
bx    r0                        ; 0810536A

Sub0810536C:
push  {r4-r6,lr}                ; 0810536C
mov   r4,r0                     ; 0810536E
bl    Sub0804A7C0               ; 08105370
lsl   r0,r0,0x18                ; 08105374
cmp   r0,0x0                    ; 08105376
beq   @@Code08105398            ; 08105378
ldr   r0,=0x0300702C            ; 0810537A  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 0810537C
ldr   r0,=0x1192                ; 0810537E
add   r1,r1,r0                  ; 08105380
ldrh  r0,[r1]                   ; 08105382
add   r0,0x1                    ; 08105384
strh  r0,[r1]                   ; 08105386
mov   r0,r4                     ; 08105388
bl    Sub0804A6F8               ; 0810538A
b     @@Code081053DE            ; 0810538E
.pool                           ; 08105390

@@Code08105398:
mov   r6,r4                     ; 08105398
add   r6,0x40                   ; 0810539A
ldrh  r2,[r6]                   ; 0810539C
lsr   r2,r2,0x1                 ; 0810539E
mov   r3,r4                     ; 081053A0
add   r3,0x76                   ; 081053A2
ldr   r0,=Data081A63F4          ; 081053A4
add   r0,r2,r0                  ; 081053A6
mov   r1,0x0                    ; 081053A8
ldsb  r1,[r0,r1]                ; 081053AA
ldrh  r0,[r3]                   ; 081053AC
add   r1,r1,r0                  ; 081053AE
strh  r1,[r3]                   ; 081053B0
ldr   r0,=Data081A63F6          ; 081053B2
add   r0,r2,r0                  ; 081053B4
ldrb  r5,[r0]                   ; 081053B6
sub   r1,r1,r5                  ; 081053B8
ldr   r0,=Data081A63F8          ; 081053BA
add   r2,r2,r0                  ; 081053BC
mov   r0,0x0                    ; 081053BE
ldsb  r0,[r2,r0]                ; 081053C0
eor   r1,r0                     ; 081053C2
cmp   r1,0x0                    ; 081053C4
blt   @@Code081053D2            ; 081053C6
strh  r5,[r3]                   ; 081053C8
ldrh  r0,[r6]                   ; 081053CA
mov   r1,0x2                    ; 081053CC
eor   r0,r1                     ; 081053CE
strh  r0,[r6]                   ; 081053D0
@@Code081053D2:
ldr   r1,[r4,0x8]               ; 081053D2
ldr   r0,[r4,0x18]              ; 081053D4
cmp   r1,r0                     ; 081053D6
bne   @@Code081053DE            ; 081053D8
neg   r0,r1                     ; 081053DA
str   r0,[r4,0x18]              ; 081053DC
@@Code081053DE:
pop   {r4-r6}                   ; 081053DE
pop   {r0}                      ; 081053E0
bx    r0                        ; 081053E2
.pool                           ; 081053E4

Sub081053F0:
push  {r4-r7,lr}                ; 081053F0
mov   r5,r0                     ; 081053F2
ldr   r4,=0x03006D80            ; 081053F4
ldr   r0,[r4]                   ; 081053F6
asr   r0,r0,0x8                 ; 081053F8
cmp   r0,0x5F                   ; 081053FA
ble   @@Code0810544A            ; 081053FC
mov   r7,0x0                    ; 081053FE
mov   r0,0x2                    ; 08105400
strh  r0,[r4,0x30]              ; 08105402
mov   r6,r4                     ; 08105404
add   r6,0xFC                   ; 08105406
mov   r0,0x10                   ; 08105408
strh  r0,[r6]                   ; 0810540A
mov   r0,r4                     ; 0810540C
add   r0,0xFE                   ; 0810540E
strh  r7,[r0]                   ; 08105410
mov   r0,0x5A                   ; 08105412
bl    Sub0812C458               ; 08105414
mov   r0,r5                     ; 08105418
add   r0,0x52                   ; 0810541A
mov   r1,0x0                    ; 0810541C
ldsh  r0,[r0,r1]                ; 0810541E
cmp   r0,0x67                   ; 08105420
bgt   @@Code0810543C            ; 08105422
strh  r7,[r6]                   ; 08105424
ldr   r0,[r4,0x8]               ; 08105426
cmp   r0,0x0                    ; 08105428
bne   @@Code0810544A            ; 0810542A
mov   r1,r5                     ; 0810542C
add   r1,0x6E                   ; 0810542E
ldrh  r0,[r1]                   ; 08105430
add   r0,0x1                    ; 08105432
strh  r0,[r1]                   ; 08105434
b     @@Code0810544A            ; 08105436
.pool                           ; 08105438

@@Code0810543C:
ldr   r0,[r4,0x8]               ; 0810543C
mov   r1,0x80                   ; 0810543E
lsl   r1,r1,0x1                 ; 08105440
cmp   r0,r1                     ; 08105442
ble   @@Code0810544A            ; 08105444
str   r1,[r4,0x8]               ; 08105446
str   r1,[r4,0x28]              ; 08105448
@@Code0810544A:
pop   {r4-r7}                   ; 0810544A
pop   {r0}                      ; 0810544C
bx    r0                        ; 0810544E

Sub08105450:
push  {r4,lr}                   ; 08105450
mov   r3,r0                     ; 08105452
ldr   r1,=0x03007240            ; 08105454  Normal gameplay IWRAM (0300220C)
ldr   r0,[r1]                   ; 08105456
mov   r4,0x8C                   ; 08105458
lsl   r4,r4,0x2                 ; 0810545A
add   r2,r0,r4                  ; 0810545C
mov   r0,0x1                    ; 0810545E
strh  r0,[r2,0x12]              ; 08105460
ldr   r0,=0x03006D80            ; 08105462
mov   r4,0x2C                   ; 08105464
ldsh  r0,[r0,r4]                ; 08105466
mov   r4,r1                     ; 08105468
cmp   r0,0x1F                   ; 0810546A
ble   @@Code08105494            ; 0810546C
ldr   r1,=0x03002200            ; 0810546E
ldr   r0,=0x47E4                ; 08105470
add   r1,r1,r0                  ; 08105472
ldrh  r0,[r1]                   ; 08105474
add   r0,0x1                    ; 08105476
strh  r0,[r1]                   ; 08105478
lsl   r0,r0,0x10                ; 0810547A
lsr   r0,r0,0x8                 ; 0810547C
str   r0,[r2]                   ; 0810547E
b     @@Code081054DE            ; 08105480
.pool                           ; 08105482

@@Code08105494:
ldrh  r0,[r3,0x32]              ; 08105494
cmp   r0,0x8E                   ; 08105496
bne   @@Code081054A4            ; 08105498
ldr   r0,=0x0111                ; 0810549A \ 111: Kamek pre-battle 1
b     @@Code081054B8            ; 0810549C /
.pool                           ; 0810549E

@@Code081054A4:
mov   r0,r3                     ; 081054A4 \
add   r0,0x6A                   ; 081054A6
mov   r1,0x8A                   ; 081054A8
lsl   r1,r1,0x1                 ; 081054AA  114: Bowser pre-battle 2
strh  r1,[r0]                   ; 081054AC
mov   r2,r3                     ; 081054AE
add   r2,0x72                   ; 081054B0
mov   r0,0xC                    ; 081054B2
strh  r0,[r2]                   ; 081054B4
mov   r0,r1                     ; 081054B6 /
@@Code081054B8:
ldr   r2,[r4]                   ; 081054B8
mov   r4,0xE0                   ; 081054BA
lsl   r4,r4,0x1                 ; 081054BC  1C0
add   r1,r2,r4                  ; 081054BE  [03007240]+1C0 (030023CC)
strh  r0,[r1,0xC]               ; 081054C0  set message ID
ldrh  r0,[r1,0x8]               ; 081054C2
add   r0,0x1                    ; 081054C4
strh  r0,[r1,0x8]               ; 081054C6
mov   r0,0x87                   ; 081054C8
lsl   r0,r0,0x2                 ; 081054CA  21C
add   r1,r2,r0                  ; 081054CC  [03007240]+21C (03002428)
ldrh  r0,[r1]                   ; 081054CE
add   r0,0x1                    ; 081054D0  activate message
strh  r0,[r1]                   ; 081054D2
mov   r1,r3                     ; 081054D4
add   r1,0x6E                   ; 081054D6
ldrh  r0,[r1]                   ; 081054D8
add   r0,0x1                    ; 081054DA
strh  r0,[r1]                   ; 081054DC
@@Code081054DE:
pop   {r4}                      ; 081054DE
pop   {r0}                      ; 081054E0
bx    r0                        ; 081054E2

Sub081054E4:
push  {lr}                      ; 081054E4
bl    Sub081057AC               ; 081054E6
pop   {r1}                      ; 081054EA
bx    r1                        ; 081054EC
.pool                           ; 081054EE

Sub081054F0:
ldr   r1,=0x03006D80            ; 081054F0
add   r0,0x76                   ; 081054F2  03006DF6
ldrh  r0,[r0]                   ; 081054F4
mov   r2,0xE0                   ; 081054F6
lsl   r2,r2,0x1                 ; 081054F8  1C0
add   r1,r1,r2                  ; 081054FA  [03007240]+1C0 (030023CC)
strh  r0,[r1]                   ; 081054FC
mov   r0,0x1                    ; 081054FE
bx    lr                        ; 08105500
.pool                           ; 08105502

Sub08105508:
ldr   r1,=0x03007240            ; 08105508  Normal gameplay IWRAM (0300220C)
ldr   r2,[r1]                   ; 0810550A
mov   r3,0xE0                   ; 0810550C
lsl   r3,r3,0x1                 ; 0810550E  1C0
add   r1,r2,r3                  ; 08105510  [03007240]+1C0 (030023CC)
add   r0,0x76                   ; 08105512  sprite+76
ldrh  r0,[r0]                   ; 08105514
strh  r0,[r1,0xC]               ; 08105516  set message ID
mov   r0,0x87                   ; 08105518
lsl   r0,r0,0x2                 ; 0810551A  21C
add   r1,r2,r0                  ; 0810551C  [03007240]+21C (03002428)
ldrh  r0,[r1]                   ; 0810551E
add   r0,0x1                    ; 08105520  activate message
strh  r0,[r1]                   ; 08105522
mov   r0,0x1                    ; 08105524
bx    lr                        ; 08105526
.pool                           ; 08105528

Sub0810552C:
ldr   r0,=0x03007240            ; 0810552C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 0810552E
mov   r1,0x87                   ; 08105530
lsl   r1,r1,0x2                 ; 08105532
add   r0,r0,r1                  ; 08105534
ldrh  r0,[r0]                   ; 08105536
bx    lr                        ; 08105538
.pool                           ; 0810553A

Sub08105540:
push  {lr}                      ; 08105540
ldr   r0,=0x03007240            ; 08105542  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08105544
mov   r1,0xE0                   ; 08105546
lsl   r1,r1,0x1                 ; 08105548
add   r0,r0,r1                  ; 0810554A
ldrh  r0,[r0,0xE]               ; 0810554C
lsr   r0,r0,0x8                 ; 0810554E
cmp   r0,0x12                   ; 08105550
beq   @@Code0810555C            ; 08105552
mov   r0,0x0                    ; 08105554
b     @@Code0810555E            ; 08105556
.pool                           ; 08105558

@@Code0810555C:
mov   r0,0x1                    ; 0810555C
@@Code0810555E:
pop   {r1}                      ; 0810555E
bx    r1                        ; 08105560
.pool                           ; 08105562

Sub08105564:
push  {lr}                      ; 08105564
ldr   r0,=0x03007240            ; 08105566  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08105568
mov   r1,0x87                   ; 0810556A
lsl   r1,r1,0x2                 ; 0810556C
add   r0,r0,r1                  ; 0810556E
ldrh  r0,[r0]                   ; 08105570
cmp   r0,0x0                    ; 08105572
bne   @@Code08105580            ; 08105574
mov   r0,0x1                    ; 08105576
b     @@Code08105582            ; 08105578
.pool                           ; 0810557A

@@Code08105580:
mov   r0,0x0                    ; 08105580
@@Code08105582:
pop   {r1}                      ; 08105582
bx    r1                        ; 08105584
.pool                           ; 08105586

Sub08105588:
ldr   r0,=0x0300702C            ; 08105588  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 0810558A
ldr   r0,=0x1192                ; 0810558C
add   r1,r1,r0                  ; 0810558E
ldrh  r0,[r1]                   ; 08105590
add   r0,0x1                    ; 08105592
strh  r0,[r1]                   ; 08105594
mov   r0,0x1                    ; 08105596
bx    lr                        ; 08105598
.pool                           ; 0810559A

Sub081055A4:
push  {lr}                      ; 081055A4
add   r0,0x76                   ; 081055A6
ldr   r1,=0x0300702C            ; 081055A8  Sprite RAM structs (03002460)
ldr   r1,[r1]                   ; 081055AA
ldr   r2,=0x1192                ; 081055AC
add   r1,r1,r2                  ; 081055AE
ldrh  r0,[r0]                   ; 081055B0
ldrh  r1,[r1]                   ; 081055B2
cmp   r0,r1                     ; 081055B4
beq   @@Code081055C4            ; 081055B6
mov   r0,0x0                    ; 081055B8
b     @@Code081055C6            ; 081055BA
.pool                           ; 081055BC

@@Code081055C4:
mov   r0,0x1                    ; 081055C4
@@Code081055C6:
pop   {r1}                      ; 081055C6
bx    r1                        ; 081055C8
.pool                           ; 081055CA

Sub081055CC:
push  {r4-r5,lr}                ; 081055CC
mov   r5,r0                     ; 081055CE
ldr   r0,[r5,0x14]              ; 081055D0
ldr   r1,[r5,0xC]               ; 081055D2
add   r0,r0,r1                  ; 081055D4
cmp   r0,0x0                    ; 081055D6
blt   @@Code0810560C            ; 081055D8
ldr   r1,=0x03002200            ; 081055DA
ldr   r2,[r5]                   ; 081055DC
asr   r2,r2,0x8                 ; 081055DE
ldr   r3,=0x47E4                ; 081055E0
add   r0,r1,r3                  ; 081055E2
ldrh  r0,[r0]                   ; 081055E4
sub   r2,r2,r0                  ; 081055E6
ldr   r0,=0x4058                ; 081055E8
add   r1,r1,r0                  ; 081055EA
mov   r4,0x0                    ; 081055EC
strh  r2,[r1]                   ; 081055EE
mov   r0,0xA4                   ; 081055F0
bl    PlayYISound               ; 081055F2
str   r4,[r5,0x8]               ; 081055F6
str   r4,[r5,0xC]               ; 081055F8
str   r4,[r5,0x14]              ; 081055FA
mov   r0,0x1                    ; 081055FC
b     @@Code0810560E            ; 081055FE
.pool                           ; 08105600

@@Code0810560C:
mov   r0,0x0                    ; 0810560C
@@Code0810560E:
pop   {r4-r5}                   ; 0810560E
pop   {r1}                      ; 08105610
bx    r1                        ; 08105612

Sub08105614:
push  {lr}                      ; 08105614
mov   r2,r0                     ; 08105616
ldrh  r1,[r2,0x3E]              ; 08105618
mov   r0,0x1                    ; 0810561A
and   r0,r1                     ; 0810561C
cmp   r0,0x0                    ; 0810561E
beq   @@Code08105654            ; 08105620
mov   r1,0x20                   ; 08105622
ldr   r0,=0x03006D80            ; 08105624
mov   r3,0xE0                   ; 08105626
lsl   r3,r3,0x1                 ; 08105628
add   r0,r0,r3                  ; 0810562A
strh  r1,[r0]                   ; 0810562C
mov   r1,0x40                   ; 0810562E
str   r1,[r2,0x14]              ; 08105630
ldr   r1,=0x03002200            ; 08105632
ldrh  r0,[r2,0x20]              ; 08105634
ldr   r2,=0x4058                ; 08105636
add   r1,r1,r2                  ; 08105638
strh  r0,[r1]                   ; 0810563A
mov   r0,0x82                   ; 0810563C
bl    PlayYISound               ; 0810563E
mov   r0,0x1                    ; 08105642
b     @@Code08105656            ; 08105644
.pool                           ; 08105646

@@Code08105654:
mov   r0,0x0                    ; 08105654
@@Code08105656:
pop   {r1}                      ; 08105656
bx    r1                        ; 08105658
.pool                           ; 0810565A

Sub0810565C:
push  {lr}                      ; 0810565C
mov   r1,r0                     ; 0810565E
ldr   r0,[r1,0xC]               ; 08105660
cmp   r0,0x0                    ; 08105662
blt   @@Code08105684            ; 08105664
ldr   r2,=0x077D                ; 08105666
ldr   r0,[r1,0x4]               ; 08105668
asr   r0,r0,0x8                 ; 0810566A
cmp   r2,r0                     ; 0810566C
bge   @@Code08105684            ; 0810566E
lsl   r0,r2,0x8                 ; 08105670
str   r0,[r1,0x4]               ; 08105672
mov   r0,0x0                    ; 08105674
str   r0,[r1,0xC]               ; 08105676
str   r0,[r1,0x14]              ; 08105678
mov   r0,0x1                    ; 0810567A
b     @@Code08105686            ; 0810567C
.pool                           ; 0810567E

@@Code08105684:
mov   r0,0x0                    ; 08105684
@@Code08105686:
pop   {r1}                      ; 08105686
bx    r1                        ; 08105688
.pool                           ; 0810568A

Sub0810568C:
mov   r1,r0                     ; 0810568C
add   r0,0x76                   ; 0810568E
mov   r2,0x0                    ; 08105690
ldsh  r0,[r0,r2]                ; 08105692
str   r0,[r1,0x8]               ; 08105694
mov   r0,r1                     ; 08105696
add   r0,0x7A                   ; 08105698
mov   r2,0x0                    ; 0810569A
ldsh  r0,[r0,r2]                ; 0810569C
str   r0,[r1,0xC]               ; 0810569E
mov   r0,r1                     ; 081056A0
add   r0,0x62                   ; 081056A2
mov   r2,0x0                    ; 081056A4
ldsh  r0,[r0,r2]                ; 081056A6
str   r0,[r1,0x1C]              ; 081056A8
mov   r0,r1                     ; 081056AA
add   r0,0x66                   ; 081056AC
mov   r2,0x0                    ; 081056AE
ldsh  r0,[r0,r2]                ; 081056B0
str   r0,[r1,0x14]              ; 081056B2
mov   r0,0x1                    ; 081056B4
bx    lr                        ; 081056B6

Sub081056B8:
ldr   r0,=0x03007240            ; 081056B8  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 081056BA
mov   r1,0xE0                   ; 081056BC
lsl   r1,r1,0x1                 ; 081056BE
add   r0,r0,r1                  ; 081056C0
mov   r1,0x1                    ; 081056C2
strh  r1,[r0,0x8]               ; 081056C4
mov   r0,0x1                    ; 081056C6
bx    lr                        ; 081056C8
.pool                           ; 081056CA

Sub081056D0:
ldr   r0,=0x03007240            ; 081056D0  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 081056D2
mov   r1,0xE0                   ; 081056D4
lsl   r1,r1,0x1                 ; 081056D6
add   r0,r0,r1                  ; 081056D8
mov   r1,0x0                    ; 081056DA
strh  r1,[r0,0x8]               ; 081056DC
mov   r0,0x1                    ; 081056DE
bx    lr                        ; 081056E0
.pool                           ; 081056E2

Sub081056E8:
push  {lr}                      ; 081056E8
add   r0,0x76                   ; 081056EA
ldrh  r1,[r0]                   ; 081056EC
sub   r1,0x1                    ; 081056EE
strh  r1,[r0]                   ; 081056F0
lsl   r1,r1,0x10                ; 081056F2
cmp   r1,0x0                    ; 081056F4
bne   @@Code081056FC            ; 081056F6
mov   r0,0x1                    ; 081056F8
b     @@Code081056FE            ; 081056FA
@@Code081056FC:
mov   r0,0x0                    ; 081056FC
@@Code081056FE:
pop   {r1}                      ; 081056FE
bx    r1                        ; 08105700
.pool                           ; 08105702

Sub08105704:
push  {r4-r6,lr}                ; 08105704
mov   r5,r0                     ; 08105706
mov   r6,r5                     ; 08105708
add   r6,0x72                   ; 0810570A
ldrh  r0,[r6]                   ; 0810570C
lsr   r0,r0,0x1                 ; 0810570E
ldr   r1,=CodePtrs081A6E74      ; 08105710
lsl   r0,r0,0x2                 ; 08105712
add   r0,r0,r1                  ; 08105714
ldr   r1,[r0]                   ; 08105716
mov   r0,r5                     ; 08105718
bl    Sub_bx_r1                 ; 0810571A
cmp   r0,0x0                    ; 0810571E
beq   @@Code081057A2            ; 08105720
mov   r4,r5                     ; 08105722
add   r4,0x6A                   ; 08105724
ldrh  r1,[r4]                   ; 08105726
ldr   r0,=Data081A6F84          ; 08105728
add   r1,r1,r0                  ; 0810572A
mov   r0,0x0                    ; 0810572C
ldsh  r3,[r1,r0]                ; 0810572E
cmp   r3,0x0                    ; 08105730
bge   @@Code08105770            ; 08105732
ldr   r0,=0x03007240            ; 08105734  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08105736
mov   r1,0x8C                   ; 08105738
lsl   r1,r1,0x2                 ; 0810573A
add   r0,r0,r1                  ; 0810573C
mov   r4,0x0                    ; 0810573E
strh  r4,[r0,0x12]              ; 08105740
ldr   r0,=0x03006D80            ; 08105742
strh  r4,[r0,0x30]              ; 08105744
mov   r0,0x18                   ; 08105746  18: x-8 boss
bl    Sub0812C3B4               ; 08105748  Change music (YI)
mov   r0,0x80                   ; 0810574C
lsl   r0,r0,0x3                 ; 0810574E
str   r0,[r5,0x1C]              ; 08105750
mov   r0,0x40                   ; 08105752
str   r0,[r5,0x14]              ; 08105754
mov   r0,r5                     ; 08105756
add   r0,0x6E                   ; 08105758
strh  r4,[r0]                   ; 0810575A
b     @@Code081057A2            ; 0810575C
.pool                           ; 0810575E

@@Code08105770:
strh  r3,[r6]                   ; 08105770
add   r1,0x2                    ; 08105772
ldrh  r0,[r1]                   ; 08105774
mov   r2,r5                     ; 08105776
add   r2,0x76                   ; 08105778
strh  r0,[r2]                   ; 0810577A
add   r1,0x2                    ; 0810577C
ldrh  r0,[r1]                   ; 0810577E
add   r2,0x4                    ; 08105780
strh  r0,[r2]                   ; 08105782
add   r1,0x2                    ; 08105784
ldrh  r0,[r1]                   ; 08105786
sub   r2,0x18                   ; 08105788
strh  r0,[r2]                   ; 0810578A
ldrh  r1,[r1,0x2]               ; 0810578C
mov   r0,r5                     ; 0810578E
add   r0,0x66                   ; 08105790
strh  r1,[r0]                   ; 08105792
ldr   r0,=Data081A6EB0          ; 08105794
asr   r1,r3,0x1                 ; 08105796
add   r1,r1,r0                  ; 08105798
ldrh  r0,[r4]                   ; 0810579A
ldrb  r1,[r1]                   ; 0810579C
add   r0,r0,r1                  ; 0810579E
strh  r0,[r4]                   ; 081057A0
@@Code081057A2:
pop   {r4-r6}                   ; 081057A2
pop   {r0}                      ; 081057A4
bx    r0                        ; 081057A6
.pool                           ; 081057A8

Sub081057AC:
push  {r4,lr}                   ; 081057AC
mov   r3,r0                     ; 081057AE
add   r0,0x44                   ; 081057B0
ldrh  r0,[r0]                   ; 081057B2
cmp   r0,0x0                    ; 081057B4
bne   @@Code08105864            ; 081057B6
mov   r0,r3                     ; 081057B8
add   r0,0x76                   ; 081057BA
ldrh  r2,[r0]                   ; 081057BC
mov   r1,r3                     ; 081057BE
add   r1,0x7A                   ; 081057C0
mov   r4,r0                     ; 081057C2
ldrh  r1,[r1]                   ; 081057C4
cmp   r2,r1                     ; 081057C6
blt   @@Code081057E4            ; 081057C8
mov   r1,r3                     ; 081057CA
add   r1,0x62                   ; 081057CC
ldrh  r0,[r1]                   ; 081057CE
sub   r0,0x1                    ; 081057D0
strh  r0,[r1]                   ; 081057D2
lsl   r0,r0,0x10                ; 081057D4
cmp   r0,0x0                    ; 081057D6
bne   @@Code081057DE            ; 081057D8
mov   r0,0x1                    ; 081057DA
b     @@Code08105866            ; 081057DC
@@Code081057DE:
mov   r0,r3                     ; 081057DE
add   r0,0x66                   ; 081057E0
ldrh  r2,[r0]                   ; 081057E2
@@Code081057E4:
add   r2,0x1                    ; 081057E4
strh  r2,[r4]                   ; 081057E6
ldr   r0,=Data081A6F22          ; 081057E8
add   r0,r2,r0                  ; 081057EA
ldrb  r1,[r0]                   ; 081057EC
mov   r0,r3                     ; 081057EE
add   r0,0x44                   ; 081057F0
strh  r1,[r0]                   ; 081057F2
ldr   r0,=Data081A6EC0          ; 081057F4
add   r0,r2,r0                  ; 081057F6
ldrb  r0,[r0]                   ; 081057F8
strh  r0,[r3,0x38]              ; 081057FA
cmp   r2,0x4                    ; 081057FC
bgt   @@Code08105830            ; 081057FE
cmp   r0,0x2                    ; 08105800
bne   @@Code08105864            ; 08105802
ldr   r1,=0x03002200            ; 08105804
ldr   r0,[r3]                   ; 08105806
asr   r0,r0,0x8                 ; 08105808
ldr   r3,=0x47E4                ; 0810580A
add   r2,r1,r3                  ; 0810580C
ldrh  r2,[r2]                   ; 0810580E
sub   r0,r0,r2                  ; 08105810
ldr   r2,=0x4058                ; 08105812
add   r1,r1,r2                  ; 08105814
strh  r0,[r1]                   ; 08105816
mov   r0,0xA6                   ; 08105818
b     @@Code08105860            ; 0810581A
.pool                           ; 0810581C

@@Code08105830:
cmp   r2,0xE                    ; 08105830
ble   @@Code08105864            ; 08105832
cmp   r2,0x13                   ; 08105834
bgt   @@Code0810583E            ; 08105836
cmp   r0,0x3                    ; 08105838
bne   @@Code08105864            ; 0810583A
b     @@Code0810584A            ; 0810583C
@@Code0810583E:
cmp   r2,0x26                   ; 0810583E
ble   @@Code08105864            ; 08105840
cmp   r2,0x2B                   ; 08105842
bgt   @@Code08105864            ; 08105844
cmp   r0,0x1F                   ; 08105846
bne   @@Code08105864            ; 08105848
@@Code0810584A:
ldr   r1,=0x03002200            ; 0810584A
ldr   r0,[r3]                   ; 0810584C
asr   r0,r0,0x8                 ; 0810584E
ldr   r3,=0x47E4                ; 08105850
add   r2,r1,r3                  ; 08105852
ldrh  r2,[r2]                   ; 08105854
sub   r0,r0,r2                  ; 08105856
ldr   r2,=0x4058                ; 08105858
add   r1,r1,r2                  ; 0810585A
strh  r0,[r1]                   ; 0810585C
mov   r0,0xA5                   ; 0810585E
@@Code08105860:
bl    PlayYISound               ; 08105860
@@Code08105864:
mov   r0,0x0                    ; 08105864
@@Code08105866:
pop   {r4}                      ; 08105866
pop   {r1}                      ; 08105868
bx    r1                        ; 0810586A
.pool                           ; 0810586C

Sub08105878:
ldr   r1,=0x03002200            ; 08105878
ldr   r0,=0x487A                ; 0810587A
add   r2,r1,r0                  ; 0810587C
mov   r0,0x60                   ; 0810587E
strh  r0,[r2]                   ; 08105880
ldr   r2,=0x487C                ; 08105882
add   r0,r1,r2                  ; 08105884
mov   r3,0xC0                   ; 08105886
strh  r3,[r0]                   ; 08105888
ldr   r0,=0x487E                ; 0810588A
add   r2,r1,r0                  ; 0810588C
mov   r0,0x40                   ; 0810588E
strh  r0,[r2]                   ; 08105890
mov   r0,0x91                   ; 08105892
lsl   r0,r0,0x7                 ; 08105894
add   r2,r1,r0                  ; 08105896
mov   r0,0xB0                   ; 08105898
lsl   r0,r0,0x1                 ; 0810589A
strh  r0,[r2]                   ; 0810589C
ldr   r2,=0x4882                ; 0810589E
add   r0,r1,r2                  ; 081058A0
strh  r3,[r0]                   ; 081058A2
ldr   r0,=0x4884                ; 081058A4
add   r1,r1,r0                  ; 081058A6
mov   r0,0x20                   ; 081058A8
strh  r0,[r1]                   ; 081058AA
bx    lr                        ; 081058AC
.pool                           ; 081058AE

Sub081058C8:
ldr   r1,=0x03002200            ; 081058C8
ldr   r2,=0x487A                ; 081058CA
add   r0,r1,r2                  ; 081058CC
mov   r2,0x0                    ; 081058CE
strh  r2,[r0]                   ; 081058D0
ldr   r3,=0x487C                ; 081058D2
add   r0,r1,r3                  ; 081058D4
strh  r2,[r0]                   ; 081058D6
ldr   r2,=0x487E                ; 081058D8
add   r0,r1,r2                  ; 081058DA
mov   r3,0x20                   ; 081058DC
strh  r3,[r0]                   ; 081058DE
mov   r0,0x91                   ; 081058E0
lsl   r0,r0,0x7                 ; 081058E2
add   r2,r1,r0                  ; 081058E4
mov   r0,0xB8                   ; 081058E6
lsl   r0,r0,0x1                 ; 081058E8
strh  r0,[r2]                   ; 081058EA
ldr   r0,=0x4882                ; 081058EC
add   r2,r1,r0                  ; 081058EE
mov   r0,0xE0                   ; 081058F0
strh  r0,[r2]                   ; 081058F2
ldr   r2,=0x4884                ; 081058F4
add   r1,r1,r2                  ; 081058F6
strh  r3,[r1]                   ; 081058F8
bx    lr                        ; 081058FA
.pool                           ; 081058FC

Sub08105914:
ldr   r1,[r0,0x8]               ; 08105914
asr   r2,r1,0x4                 ; 08105916
sub   r1,r1,r2                  ; 08105918
str   r1,[r0,0x8]               ; 0810591A
bx    lr                        ; 0810591C
.pool                           ; 0810591E

Sub08105920:
mov   r1,r0                     ; 08105920
mov   r2,r1                     ; 08105922
add   r2,0x76                   ; 08105924
mov   r0,0x4E                   ; 08105926
strh  r0,[r2]                   ; 08105928
add   r2,0x4                    ; 0810592A
mov   r0,0x56                   ; 0810592C
strh  r0,[r2]                   ; 0810592E
sub   r2,0x18                   ; 08105930
mov   r0,0x1                    ; 08105932
strh  r0,[r2]                   ; 08105934
add   r1,0x6E                   ; 08105936
ldrh  r0,[r1]                   ; 08105938
add   r0,0x1                    ; 0810593A
strh  r0,[r1]                   ; 0810593C
bx    lr                        ; 0810593E

Sub08105940:
mov   r2,r0                     ; 08105940
mov   r1,r2                     ; 08105942
add   r1,0x44                   ; 08105944
mov   r0,0x30                   ; 08105946
strh  r0,[r1]                   ; 08105948
add   r1,0x32                   ; 0810594A
mov   r0,0x56                   ; 0810594C
strh  r0,[r1]                   ; 0810594E
add   r1,0x4                    ; 08105950
mov   r0,0x5B                   ; 08105952
strh  r0,[r1]                   ; 08105954
sub   r1,0x18                   ; 08105956
mov   r0,0x1                    ; 08105958
strh  r0,[r1]                   ; 0810595A
add   r1,0xC                    ; 0810595C
ldrh  r0,[r1]                   ; 0810595E
add   r0,0x1                    ; 08105960
strh  r0,[r1]                   ; 08105962
bx    lr                        ; 08105964
.pool                           ; 08105966

Sub08105968:
push  {r4-r6,lr}                ; 08105968
mov   r4,r0                     ; 0810596A
ldr   r2,=0x03002200            ; 0810596C
ldr   r1,=0x48A2                ; 0810596E
add   r0,r2,r1                  ; 08105970
ldrh  r1,[r0]                   ; 08105972
mov   r6,0x7                    ; 08105974
mov   r0,r6                     ; 08105976
and   r0,r1                     ; 08105978
cmp   r0,0x0                    ; 0810597A
bne   @@Code081059F8            ; 0810597C
ldr   r0,[r4]                   ; 0810597E
asr   r0,r0,0x8                 ; 08105980
ldr   r3,=0x47E4                ; 08105982
add   r1,r2,r3                  ; 08105984
ldrh  r1,[r1]                   ; 08105986
sub   r0,r0,r1                  ; 08105988
ldr   r3,=0x4058                ; 0810598A
add   r1,r2,r3                  ; 0810598C
strh  r0,[r1]                   ; 0810598E
mov   r0,0xC                    ; 08105990
bl    PlayYISound               ; 08105992
ldr   r0,[r4,0x8]               ; 08105996
mov   r5,0x40                   ; 08105998
cmp   r0,0x0                    ; 0810599A
bge   @@Code081059A0            ; 0810599C
sub   r5,0x80                   ; 0810599E
@@Code081059A0:
mov   r0,0xF1                   ; 081059A0
lsl   r0,r0,0x1                 ; 081059A2
bl    Sub08047B04               ; 081059A4
lsl   r0,r0,0x18                ; 081059A8
lsr   r0,r0,0x18                ; 081059AA
ldr   r2,=0x03007240            ; 081059AC  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 081059AE
mul   r1,r0                     ; 081059B0
ldr   r0,=0x1AF4                ; 081059B2
add   r1,r1,r0                  ; 081059B4
ldr   r0,[r2]                   ; 081059B6
add   r2,r0,r1                  ; 081059B8
ldr   r1,=0x29CC                ; 081059BA
add   r0,r0,r1                  ; 081059BC
ldrh  r1,[r0]                   ; 081059BE
mov   r0,r6                     ; 081059C0
and   r0,r1                     ; 081059C2
sub   r0,0x4                    ; 081059C4
lsl   r0,r0,0x8                 ; 081059C6
ldr   r1,[r4]                   ; 081059C8
add   r1,r1,r0                  ; 081059CA
str   r1,[r2]                   ; 081059CC
ldr   r0,[r4,0x4]               ; 081059CE
mov   r3,0x80                   ; 081059D0
lsl   r3,r3,0x5                 ; 081059D2
add   r0,r0,r3                  ; 081059D4
str   r0,[r2,0x4]               ; 081059D6
mov   r1,r2                     ; 081059D8
add   r1,0x42                   ; 081059DA
mov   r0,0x8                    ; 081059DC
strh  r0,[r1]                   ; 081059DE
add   r1,0x28                   ; 081059E0
mov   r0,0x3                    ; 081059E2
strh  r0,[r1]                   ; 081059E4
str   r5,[r2,0x8]               ; 081059E6
sub   r0,0x83                   ; 081059E8
str   r0,[r2,0xC]               ; 081059EA
mov   r0,r4                     ; 081059EC
add   r0,0x9F                   ; 081059EE
ldrb  r1,[r0]                   ; 081059F0
mov   r0,0x2                    ; 081059F2
eor   r0,r1                     ; 081059F4
strh  r0,[r2,0x36]              ; 081059F6
@@Code081059F8:
pop   {r4-r6}                   ; 081059F8
pop   {r0}                      ; 081059FA
bx    r0                        ; 081059FC
.pool                           ; 081059FE

Sub08105A1C:
mov   r2,r0                     ; 08105A1C
mov   r1,r2                     ; 08105A1E
add   r1,0x44                   ; 08105A20
mov   r0,0x2                    ; 08105A22
strh  r0,[r1]                   ; 08105A24
add   r1,0x32                   ; 08105A26
mov   r0,0x5E                   ; 08105A28
strh  r0,[r1]                   ; 08105A2A
add   r1,0x4                    ; 08105A2C
mov   r0,0x61                   ; 08105A2E
strh  r0,[r1]                   ; 08105A30
sub   r1,0x18                   ; 08105A32
mov   r0,0x1                    ; 08105A34
strh  r0,[r1]                   ; 08105A36
add   r1,0xC                    ; 08105A38
ldrh  r0,[r1]                   ; 08105A3A
add   r0,0x1                    ; 08105A3C
strh  r0,[r1]                   ; 08105A3E
bx    lr                        ; 08105A40
.pool                           ; 08105A42

Sub08105A44:
mov   r2,r0                     ; 08105A44
add   r0,0x52                   ; 08105A46
mov   r3,0x0                    ; 08105A48
ldsh  r1,[r0,r3]                ; 08105A4A
lsl   r0,r1,0x4                 ; 08105A4C
sub   r0,r0,r1                  ; 08105A4E
lsl   r0,r0,0x7                 ; 08105A50
neg   r0,r0                     ; 08105A52
asr   r0,r0,0x8                 ; 08105A54
str   r0,[r2,0x8]               ; 08105A56
ldr   r0,=0xFFFFF800            ; 08105A58
str   r0,[r2,0xC]               ; 08105A5A
mov   r1,r2                     ; 08105A5C
add   r1,0x76                   ; 08105A5E
mov   r0,0x17                   ; 08105A60
strh  r0,[r1]                   ; 08105A62
add   r1,0x4                    ; 08105A64
mov   r0,0x1A                   ; 08105A66
strh  r0,[r1]                   ; 08105A68
sub   r1,0x18                   ; 08105A6A
mov   r0,0x1                    ; 08105A6C
strh  r0,[r1]                   ; 08105A6E
bx    lr                        ; 08105A70
.pool                           ; 08105A72

Sub08105A78:
push  {lr}                      ; 08105A78
mov   r1,r0                     ; 08105A7A
add   r1,0x9F                   ; 08105A7C
ldrb  r1,[r1]                   ; 08105A7E
strh  r1,[r0,0x36]              ; 08105A80
mov   r2,r0                     ; 08105A82
add   r2,0x6E                   ; 08105A84
mov   r1,0x1                    ; 08105A86
strh  r1,[r2]                   ; 08105A88
bl    Sub08105A44               ; 08105A8A
pop   {r0}                      ; 08105A8E
bx    r0                        ; 08105A90
.pool                           ; 08105A92

Sub08105A94:
push  {lr}                      ; 08105A94
add   sp,-0x4                   ; 08105A96
ldr   r2,=0x03007270            ; 08105A98
ldr   r1,=0x03002200            ; 08105A9A
ldr   r3,=0x47D4                ; 08105A9C
add   r0,r1,r3                  ; 08105A9E
ldrh  r0,[r0]                   ; 08105AA0
mov   r3,r2                     ; 08105AA2
add   r3,0x92                   ; 08105AA4
strh  r0,[r3]                   ; 08105AA6
ldr   r0,=0x47DC                ; 08105AA8
add   r1,r1,r0                  ; 08105AAA
ldrh  r1,[r1]                   ; 08105AAC
mov   r0,r2                     ; 08105AAE
add   r0,0x94                   ; 08105AB0
strh  r1,[r0]                   ; 08105AB2
mov   r0,sp                     ; 08105AB4
strh  r1,[r0]                   ; 08105AB6
mov   r1,r2                     ; 08105AB8
add   r1,0x30                   ; 08105ABA
ldr   r2,=0x01000020            ; 08105ABC
bl    swi_MemoryCopy4or2        ; 08105ABE  Memory copy/fill, 4- or 2-byte blocks
add   sp,0x4                    ; 08105AC2
pop   {r0}                      ; 08105AC4
bx    r0                        ; 08105AC6
.pool                           ; 08105AC8

Sub08105ADC:
push  {r4-r5,lr}                ; 08105ADC
add   sp,-0x4                   ; 08105ADE
ldr   r4,=0x03002200            ; 08105AE0
ldr   r1,=0x47D4                ; 08105AE2
add   r0,r4,r1                  ; 08105AE4
mov   r5,0x0                    ; 08105AE6
ldsh  r3,[r0,r5]                ; 08105AE8
mov   r0,0xB0                   ; 08105AEA
lsl   r0,r0,0x1                 ; 08105AEC
sub   r2,r0,r3                  ; 08105AEE
asr   r0,r2,0x8                 ; 08105AF0
mov   r1,0xFF                   ; 08105AF2
and   r0,r1                     ; 08105AF4
cmp   r0,0x0                    ; 08105AF6
bne   @@Code08105B28            ; 08105AF8
sub   r2,0x7                    ; 08105AFA
mov   r0,0xF8                   ; 08105AFC
and   r2,r0                     ; 08105AFE
lsr   r3,r2,0x2                 ; 08105B00
ldr   r1,=0x030072A0            ; 08105B02
add   r1,r3,r1                  ; 08105B04
mov   r2,0x40                   ; 08105B06
sub   r2,r2,r3                  ; 08105B08
mov   r3,sp                     ; 08105B0A
ldr   r5,=0x47DC                ; 08105B0C
add   r0,r4,r5                  ; 08105B0E
ldrh  r0,[r0]                   ; 08105B10
strh  r0,[r3]                   ; 08105B12
lsr   r0,r2,0x1F                ; 08105B14
add   r2,r2,r0                  ; 08105B16
lsl   r2,r2,0xA                 ; 08105B18
lsr   r2,r2,0xB                 ; 08105B1A
mov   r0,0x80                   ; 08105B1C
lsl   r0,r0,0x11                ; 08105B1E
orr   r2,r0                     ; 08105B20
mov   r0,sp                     ; 08105B22
bl    swi_MemoryCopy4or2        ; 08105B24  Memory copy/fill, 4- or 2-byte blocks
@@Code08105B28:
add   sp,0x4                    ; 08105B28
pop   {r4-r5}                   ; 08105B2A
pop   {r0}                      ; 08105B2C
bx    r0                        ; 08105B2E
.pool                           ; 08105B30

Sub08105B40:
push  {r4,lr}                   ; 08105B40
add   sp,-0x4                   ; 08105B42
mov   r2,0x18                   ; 08105B44
ldr   r3,=0x03002200            ; 08105B46
ldr   r1,=0x47D4                ; 08105B48
add   r0,r3,r1                  ; 08105B4A
mov   r4,0x0                    ; 08105B4C
ldsh  r0,[r0,r4]                ; 08105B4E
cmp   r2,r0                     ; 08105B50
ble   @@Code08105B76            ; 08105B52
sub   r2,r2,r0                  ; 08105B54
add   r2,0x7                    ; 08105B56
mov   r0,0xF8                   ; 08105B58
and   r2,r0                     ; 08105B5A
mov   r1,sp                     ; 08105B5C
ldr   r4,=0x47DC                ; 08105B5E
add   r0,r3,r4                  ; 08105B60
ldrh  r0,[r0]                   ; 08105B62
strh  r0,[r1]                   ; 08105B64
ldr   r1,=0x030072A0            ; 08105B66
lsr   r2,r2,0x3                 ; 08105B68
mov   r0,0x80                   ; 08105B6A
lsl   r0,r0,0x11                ; 08105B6C
orr   r2,r0                     ; 08105B6E
mov   r0,sp                     ; 08105B70
bl    swi_MemoryCopy4or2        ; 08105B72  Memory copy/fill, 4- or 2-byte blocks
@@Code08105B76:
add   sp,0x4                    ; 08105B76
pop   {r4}                      ; 08105B78
pop   {r0}                      ; 08105B7A
bx    r0                        ; 08105B7C
.pool                           ; 08105B7E

Sub08105B90:
push  {r4-r7,lr}                ; 08105B90
mov   r7,r8                     ; 08105B92
push  {r7}                      ; 08105B94
mov   r5,r0                     ; 08105B96
mov   r12,r1                    ; 08105B98
mov   r6,r2                     ; 08105B9A
mov   r0,0x8                    ; 08105B9C
neg   r0,r0                     ; 08105B9E
and   r0,r3                     ; 08105BA0
cmp   r0,0x0                    ; 08105BA2
bge   @@Code08105BA8            ; 08105BA4
add   r0,0x3                    ; 08105BA6
@@Code08105BA8:
asr   r4,r0,0x2                 ; 08105BA8
mov   r0,0x7                    ; 08105BAA
and   r0,r3                     ; 08105BAC
sub   r0,0x4                    ; 08105BAE
mul   r0,r6                     ; 08105BB0
add   r2,r5,r0                  ; 08105BB2
mov   r5,r2                     ; 08105BB4
ldr   r6,=0xFFFFFC00            ; 08105BB6
ldr   r0,=0x03002200            ; 08105BB8
ldr   r1,=0x47DC                ; 08105BBA
add   r0,r0,r1                  ; 08105BBC
ldrh  r7,[r0]                   ; 08105BBE
ldr   r0,=0x030072A0            ; 08105BC0
mov   r8,r0                     ; 08105BC2
@@Code08105BC4:
cmp   r4,0x3F                   ; 08105BC4
bhi   @@Code08105BE0            ; 08105BC6
mov   r0,r2                     ; 08105BC8
cmp   r2,0x0                    ; 08105BCA
bge   @@Code08105BD0            ; 08105BCC
add   r0,0xFF                   ; 08105BCE
@@Code08105BD0:
asr   r0,r0,0x8                 ; 08105BD0
add   r1,r0,r7                  ; 08105BD2
mov   r0,r8                     ; 08105BD4
add   r3,r4,r0                  ; 08105BD6
ldrh  r0,[r3]                   ; 08105BD8
cmp   r0,r1                     ; 08105BDA
bge   @@Code08105BE0            ; 08105BDC
strh  r1,[r3]                   ; 08105BDE
@@Code08105BE0:
add   r4,r12                    ; 08105BE0
add   r5,r5,r6                  ; 08105BE2
cmp   r5,0x0                    ; 08105BE4
bge   @@Code08105BEA            ; 08105BE6
ldr   r6,=0xFFFFFC80            ; 08105BE8
@@Code08105BEA:
add   r2,r2,r5                  ; 08105BEA
cmp   r2,0x0                    ; 08105BEC
bge   @@Code08105BC4            ; 08105BEE
bl    Sub08105B40               ; 08105BF0
bl    Sub08105ADC               ; 08105BF4
ldr   r0,=0x03007270            ; 08105BF8
ldrh  r1,[r0,0x30]              ; 08105BFA
add   r0,0x94                   ; 08105BFC
strh  r1,[r0]                   ; 08105BFE
pop   {r3}                      ; 08105C00
mov   r8,r3                     ; 08105C02
pop   {r4-r7}                   ; 08105C04
pop   {r0}                      ; 08105C06
bx    r0                        ; 08105C08
.pool                           ; 08105C0A

Sub08105C24:
push  {lr}                      ; 08105C24
mov   r1,r0                     ; 08105C26
add   r0,0x9F                   ; 08105C28
ldrb  r0,[r0]                   ; 08105C2A
strh  r0,[r1,0x36]              ; 08105C2C
mov   r0,r1                     ; 08105C2E
add   r0,0x44                   ; 08105C30
ldrh  r0,[r0]                   ; 08105C32
cmp   r0,0x0                    ; 08105C34
bne   @@Code08105C48            ; 08105C36
mov   r2,r1                     ; 08105C38
add   r2,0x6E                   ; 08105C3A
ldrh  r0,[r2]                   ; 08105C3C
add   r0,0x1                    ; 08105C3E
strh  r0,[r2]                   ; 08105C40
mov   r0,r1                     ; 08105C42
bl    Sub08105A44               ; 08105C44
@@Code08105C48:
pop   {r0}                      ; 08105C48
bx    r0                        ; 08105C4A

Sub08105C4C:
push  {r4,lr}                   ; 08105C4C
mov   r4,r0                     ; 08105C4E
bl    Sub081057AC               ; 08105C50
cmp   r0,0x0                    ; 08105C54
beq   @@Code08105C74            ; 08105C56
mov   r1,r4                     ; 08105C58
add   r1,0x76                   ; 08105C5A
mov   r0,0x1A                   ; 08105C5C
strh  r0,[r1]                   ; 08105C5E
add   r1,0x4                    ; 08105C60
mov   r0,0x22                   ; 08105C62
strh  r0,[r1]                   ; 08105C64
sub   r1,0x18                   ; 08105C66
mov   r0,0x1                    ; 08105C68
strh  r0,[r1]                   ; 08105C6A
add   r1,0xC                    ; 08105C6C
ldrh  r0,[r1]                   ; 08105C6E
add   r0,0x1                    ; 08105C70
strh  r0,[r1]                   ; 08105C72
@@Code08105C74:
pop   {r4}                      ; 08105C74
pop   {r0}                      ; 08105C76
bx    r0                        ; 08105C78
.pool                           ; 08105C7A

Sub08105C7C:
push  {r4-r5,lr}                ; 08105C7C
mov   r4,r0                     ; 08105C7E
ldr   r0,[r4,0xC]               ; 08105C80
cmp   r0,0x0                    ; 08105C82
blt   @@Code08105CE6            ; 08105C84
ldr   r0,[r4,0x14]              ; 08105C86
cmp   r0,0x0                    ; 08105C88
beq   @@Code08105CA6            ; 08105C8A
ldr   r1,=0x03002200            ; 08105C8C
ldr   r0,[r4]                   ; 08105C8E
asr   r0,r0,0x8                 ; 08105C90
ldr   r3,=0x47E4                ; 08105C92
add   r2,r1,r3                  ; 08105C94
ldrh  r2,[r2]                   ; 08105C96
sub   r0,r0,r2                  ; 08105C98
ldr   r2,=0x4058                ; 08105C9A
add   r1,r1,r2                  ; 08105C9C
strh  r0,[r1]                   ; 08105C9E
mov   r0,0xA4                   ; 08105CA0
bl    PlayYISound               ; 08105CA2
@@Code08105CA6:
mov   r5,0x0                    ; 08105CA6
str   r5,[r4,0xC]               ; 08105CA8
str   r5,[r4,0x14]              ; 08105CAA
str   r5,[r4,0x8]               ; 08105CAC
mov   r0,r4                     ; 08105CAE
bl    Sub081057AC               ; 08105CB0
cmp   r0,0x0                    ; 08105CB4
beq   @@Code08105CE6            ; 08105CB6
ldr   r0,=0x0300702C            ; 08105CB8  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08105CBA
ldr   r3,=0x119C                ; 08105CBC
add   r0,r0,r3                  ; 08105CBE
strh  r5,[r0]                   ; 08105CC0
mov   r0,0x80                   ; 08105CC2
lsl   r0,r0,0x4                 ; 08105CC4
str   r0,[r4,0xC]               ; 08105CC6
str   r5,[r4,0x14]              ; 08105CC8
mov   r1,r4                     ; 08105CCA
add   r1,0x76                   ; 08105CCC
mov   r0,0x5B                   ; 08105CCE
strh  r0,[r1]                   ; 08105CD0
add   r1,0x4                    ; 08105CD2
mov   r0,0x5E                   ; 08105CD4
strh  r0,[r1]                   ; 08105CD6
sub   r1,0x18                   ; 08105CD8
mov   r0,0x1                    ; 08105CDA
strh  r0,[r1]                   ; 08105CDC
add   r1,0xC                    ; 08105CDE
ldrh  r0,[r1]                   ; 08105CE0
add   r0,0x1                    ; 08105CE2
strh  r0,[r1]                   ; 08105CE4
@@Code08105CE6:
pop   {r4-r5}                   ; 08105CE6
pop   {r0}                      ; 08105CE8
bx    r0                        ; 08105CEA
.pool                           ; 08105CEC

Sub08105D00:
mov   r2,r0                     ; 08105D00
add   r0,0x44                   ; 08105D02
mov   r1,0x4                    ; 08105D04
strh  r1,[r0]                   ; 08105D06
mov   r3,r2                     ; 08105D08
add   r3,0x76                   ; 08105D0A
mov   r0,0xB                    ; 08105D0C
strh  r0,[r3]                   ; 08105D0E
add   r3,0x4                    ; 08105D10
mov   r0,0xF                    ; 08105D12
strh  r0,[r3]                   ; 08105D14
sub   r3,0x18                   ; 08105D16
mov   r0,0x1                    ; 08105D18
strh  r0,[r3]                   ; 08105D1A
mov   r0,r2                     ; 08105D1C
add   r0,0x6E                   ; 08105D1E
strh  r1,[r0]                   ; 08105D20
bx    lr                        ; 08105D22

Sub08105D24:
push  {r4,lr}                   ; 08105D24
mov   r4,r0                     ; 08105D26
ldrh  r1,[r4,0x3E]              ; 08105D28
mov   r0,0x1                    ; 08105D2A
and   r0,r1                     ; 08105D2C
cmp   r0,0x0                    ; 08105D2E
bne   @@Code08105D9C            ; 08105D30
ldr   r0,=0x03002200            ; 08105D32
ldr   r1,=0x48A2                ; 08105D34
add   r0,r0,r1                  ; 08105D36
ldrh  r1,[r0]                   ; 08105D38
mov   r0,0x3                    ; 08105D3A
and   r0,r1                     ; 08105D3C
cmp   r0,0x0                    ; 08105D3E
bne   @@Code08105E18            ; 08105D40
ldr   r0,=0x01E7                ; 08105D42
bl    Sub08047B04               ; 08105D44
lsl   r0,r0,0x18                ; 08105D48
lsr   r0,r0,0x18                ; 08105D4A
ldr   r3,=0x03007240            ; 08105D4C  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 08105D4E
mov   r2,r0                     ; 08105D50
mul   r2,r1                     ; 08105D52
ldr   r0,=0x1AF4                ; 08105D54
add   r2,r2,r0                  ; 08105D56
ldr   r0,[r3]                   ; 08105D58
add   r2,r0,r2                  ; 08105D5A
ldr   r1,=0x29CC                ; 08105D5C
add   r0,r0,r1                  ; 08105D5E
ldrh  r1,[r0]                   ; 08105D60
mov   r0,0xF                    ; 08105D62
and   r0,r1                     ; 08105D64
sub   r0,0x7                    ; 08105D66
lsl   r0,r0,0x8                 ; 08105D68
ldr   r1,[r4]                   ; 08105D6A
add   r1,r1,r0                  ; 08105D6C
str   r1,[r2]                   ; 08105D6E
ldr   r0,[r4,0x4]               ; 08105D70
str   r0,[r2,0x4]               ; 08105D72
mov   r1,r2                     ; 08105D74
add   r1,0x6A                   ; 08105D76
mov   r0,0x4                    ; 08105D78
strh  r0,[r1]                   ; 08105D7A
add   r2,0x42                   ; 08105D7C
mov   r0,0x6                    ; 08105D7E
strh  r0,[r2]                   ; 08105D80
b     @@Code08105E18            ; 08105D82
.pool                           ; 08105D84

@@Code08105D9C:
ldr   r0,=0x0300702C            ; 08105D9C  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08105D9E
ldr   r2,=0x119C                ; 08105DA0
add   r1,r0,r2                  ; 08105DA2
ldrh  r0,[r1]                   ; 08105DA4
cmp   r0,0x0                    ; 08105DA6
bne   @@Code08105E04            ; 08105DA8
add   r0,0x1                    ; 08105DAA
strh  r0,[r1]                   ; 08105DAC
ldr   r0,=0x03006D80            ; 08105DAE
mov   r1,0xE0                   ; 08105DB0
lsl   r1,r1,0x1                 ; 08105DB2
add   r0,r0,r1                  ; 08105DB4
mov   r1,0x40                   ; 08105DB6
strh  r1,[r0]                   ; 08105DB8
ldr   r0,=0x01E7                ; 08105DBA
bl    Sub08047B04               ; 08105DBC
lsl   r0,r0,0x18                ; 08105DC0
lsr   r0,r0,0x18                ; 08105DC2
ldr   r2,=0x03007240            ; 08105DC4  Normal gameplay IWRAM (0300220C)
mov   r1,0xB0                   ; 08105DC6
mul   r0,r1                     ; 08105DC8
ldr   r1,=0x1AF4                ; 08105DCA
add   r0,r0,r1                  ; 08105DCC
ldr   r2,[r2]                   ; 08105DCE
add   r0,r2,r0                  ; 08105DD0
ldr   r1,[r4]                   ; 08105DD2
str   r1,[r0]                   ; 08105DD4
ldr   r1,[r4,0x4]               ; 08105DD6
str   r1,[r0,0x4]               ; 08105DD8
mov   r3,r0                     ; 08105DDA
add   r3,0x42                   ; 08105DDC
mov   r1,0x2                    ; 08105DDE
strh  r1,[r3]                   ; 08105DE0
add   r0,0x6A                   ; 08105DE2
mov   r1,0xB                    ; 08105DE4
strh  r1,[r0]                   ; 08105DE6
ldr   r1,=0xFFFFFDAC            ; 08105DE8
add   r0,r4,r1                  ; 08105DEA
sub   r0,r0,r2                  ; 08105DEC
ldr   r1,=0xBA2E8BA3            ; 08105DEE
mul   r0,r1                     ; 08105DF0
asr   r0,r0,0x4                 ; 08105DF2
mov   r1,r4                     ; 08105DF4
add   r1,0x5A                   ; 08105DF6
mov   r2,0x0                    ; 08105DF8
ldsh  r1,[r1,r2]                ; 08105DFA
mov   r2,0x10                   ; 08105DFC
mov   r3,0x0                    ; 08105DFE
bl    Sub081027AC               ; 08105E00
@@Code08105E04:
mov   r0,0x40                   ; 08105E04
str   r0,[r4,0x14]              ; 08105E06
mov   r0,r4                     ; 08105E08
bl    Sub081057AC               ; 08105E0A
cmp   r0,0x0                    ; 08105E0E
beq   @@Code08105E18            ; 08105E10
mov   r0,r4                     ; 08105E12
bl    Sub08105D00               ; 08105E14
@@Code08105E18:
pop   {r4}                      ; 08105E18
pop   {r0}                      ; 08105E1A
bx    r0                        ; 08105E1C
.pool                           ; 08105E1E

Sub08105E40:
push  {r4,lr}                   ; 08105E40
mov   r4,r0                     ; 08105E42
ldr   r1,=0x03006D80            ; 08105E44
mov   r0,r1                     ; 08105E46
add   r0,0x52                   ; 08105E48
ldrh  r0,[r0]                   ; 08105E4A
cmp   r0,0x0                    ; 08105E4C
beq   @@Code08105E6E            ; 08105E4E
mov   r0,r1                     ; 08105E50
add   r0,0x7A                   ; 08105E52
ldrh  r1,[r0]                   ; 08105E54
mov   r0,0x7                    ; 08105E56
and   r0,r1                     ; 08105E58
cmp   r0,0x0                    ; 08105E5A
bne   @@Code08105E6E            ; 08105E5C
mov   r0,r4                     ; 08105E5E
add   r0,0x52                   ; 08105E60
ldrh  r0,[r0]                   ; 08105E62
add   r0,0x38                   ; 08105E64
lsl   r0,r0,0x10                ; 08105E66
lsr   r0,r0,0x10                ; 08105E68
cmp   r0,0x6F                   ; 08105E6A
bls   @@Code08105EB6            ; 08105E6C
@@Code08105E6E:
mov   r1,0x94                   ; 08105E6E
lsl   r1,r1,0x1                 ; 08105E70
mov   r0,r4                     ; 08105E72
bl    Sub0809C610               ; 08105E74
lsl   r0,r0,0x18                ; 08105E78
lsr   r1,r0,0x18                ; 08105E7A
cmp   r0,0x0                    ; 08105E7C
blt   @@Code08105EC4            ; 08105E7E
ldr   r2,=0x03007240            ; 08105E80  Normal gameplay IWRAM (0300220C)
lsl   r0,r1,0x18                ; 08105E82
asr   r0,r0,0x18                ; 08105E84
mov   r1,0xB0                   ; 08105E86
mul   r0,r1                     ; 08105E88
mov   r1,0x95                   ; 08105E8A
lsl   r1,r1,0x2                 ; 08105E8C
add   r0,r0,r1                  ; 08105E8E
ldr   r1,[r2]                   ; 08105E90
add   r2,r1,r0                  ; 08105E92
mov   r0,r2                     ; 08105E94
add   r0,0x5A                   ; 08105E96
mov   r3,0x0                    ; 08105E98
ldsh  r1,[r0,r3]                ; 08105E9A
mov   r0,r4                     ; 08105E9C
add   r0,0x5A                   ; 08105E9E
mov   r3,0x0                    ; 08105EA0
ldsh  r0,[r0,r3]                ; 08105EA2
sub   r1,r1,r0                  ; 08105EA4
mov   r0,r1                     ; 08105EA6
add   r0,0x38                   ; 08105EA8
cmp   r0,0x6F                   ; 08105EAA
bhi   @@Code08105EC4            ; 08105EAC
ldr   r0,[r2,0x8]               ; 08105EAE
eor   r0,r1                     ; 08105EB0
cmp   r0,0x0                    ; 08105EB2
bge   @@Code08105EC4            ; 08105EB4
@@Code08105EB6:
mov   r0,0x1                    ; 08105EB6
b     @@Code08105EC6            ; 08105EB8
.pool                           ; 08105EBA

@@Code08105EC4:
mov   r0,0x0                    ; 08105EC4
@@Code08105EC6:
pop   {r4}                      ; 08105EC6
pop   {r1}                      ; 08105EC8
bx    r1                        ; 08105ECA

Sub08105ECC:
push  {r4,lr}                   ; 08105ECC
mov   r4,r0                     ; 08105ECE
bl    Sub081057AC               ; 08105ED0
cmp   r0,0x0                    ; 08105ED4
bne   @@Code08105EE2            ; 08105ED6
mov   r0,r4                     ; 08105ED8
bl    Sub08105E40               ; 08105EDA
cmp   r0,0x0                    ; 08105EDE
beq   @@Code08105EFE            ; 08105EE0
@@Code08105EE2:
mov   r1,r4                     ; 08105EE2
add   r1,0x76                   ; 08105EE4
mov   r0,0x13                   ; 08105EE6
strh  r0,[r1]                   ; 08105EE8
add   r1,0x4                    ; 08105EEA
mov   r0,0x15                   ; 08105EEC
strh  r0,[r1]                   ; 08105EEE
sub   r1,0x18                   ; 08105EF0
mov   r0,0x1                    ; 08105EF2
strh  r0,[r1]                   ; 08105EF4
add   r1,0xC                    ; 08105EF6
ldrh  r0,[r1]                   ; 08105EF8
add   r0,0x1                    ; 08105EFA
strh  r0,[r1]                   ; 08105EFC
@@Code08105EFE:
pop   {r4}                      ; 08105EFE
pop   {r0}                      ; 08105F00
bx    r0                        ; 08105F02

Sub08105F04:
push  {r4,lr}                   ; 08105F04
mov   r4,r0                     ; 08105F06
bl    Sub081057AC               ; 08105F08
cmp   r0,0x0                    ; 08105F0C
bne   @@Code08105F28            ; 08105F0E
ldrh  r0,[r4,0x38]              ; 08105F10
cmp   r0,0x9                    ; 08105F12
bne   @@Code08105F48            ; 08105F14
mov   r0,r4                     ; 08105F16
bl    Sub08105E40               ; 08105F18
cmp   r0,0x0                    ; 08105F1C
beq   @@Code08105F48            ; 08105F1E
mov   r1,r4                     ; 08105F20
add   r1,0x44                   ; 08105F22
mov   r0,0x1                    ; 08105F24
b     @@Code08105F46            ; 08105F26
@@Code08105F28:
ldr   r0,=0xFFFFFC00            ; 08105F28
str   r0,[r4,0xC]               ; 08105F2A
mov   r1,r4                     ; 08105F2C
add   r1,0x76                   ; 08105F2E
mov   r0,0x15                   ; 08105F30
strh  r0,[r1]                   ; 08105F32
add   r1,0x4                    ; 08105F34
mov   r0,0x17                   ; 08105F36
strh  r0,[r1]                   ; 08105F38
sub   r1,0x18                   ; 08105F3A
mov   r0,0x1                    ; 08105F3C
strh  r0,[r1]                   ; 08105F3E
add   r1,0xC                    ; 08105F40
ldrh  r0,[r1]                   ; 08105F42
add   r0,0x1                    ; 08105F44
@@Code08105F46:
strh  r0,[r1]                   ; 08105F46
@@Code08105F48:
pop   {r4}                      ; 08105F48
pop   {r0}                      ; 08105F4A
bx    r0                        ; 08105F4C
.pool                           ; 08105F4E

Sub08105F54:
push  {r4-r5,lr}                ; 08105F54
mov   r4,r0                     ; 08105F56
ldrh  r1,[r4,0x3E]              ; 08105F58
mov   r5,0x1                    ; 08105F5A
mov   r0,r5                     ; 08105F5C
and   r0,r1                     ; 08105F5E
cmp   r0,0x0                    ; 08105F60
beq   @@Code08105F9E            ; 08105F62
mov   r0,r4                     ; 08105F64
bl    Sub081057AC               ; 08105F66
cmp   r0,0x0                    ; 08105F6A
bne   @@Code08105F86            ; 08105F6C
ldrh  r0,[r4,0x38]              ; 08105F6E
cmp   r0,0xC                    ; 08105F70
bne   @@Code08105F9E            ; 08105F72
mov   r0,r4                     ; 08105F74
bl    Sub08105E40               ; 08105F76
cmp   r0,0x0                    ; 08105F7A
beq   @@Code08105F9E            ; 08105F7C
mov   r0,r4                     ; 08105F7E
add   r0,0x44                   ; 08105F80
strh  r5,[r0]                   ; 08105F82
b     @@Code08105F9E            ; 08105F84
@@Code08105F86:
mov   r0,r4                     ; 08105F86
add   r0,0x9F                   ; 08105F88
ldrb  r0,[r0]                   ; 08105F8A
mov   r2,0x0                    ; 08105F8C
strh  r0,[r4,0x36]              ; 08105F8E
mov   r1,r4                     ; 08105F90
add   r1,0x44                   ; 08105F92
mov   r0,0x2                    ; 08105F94
strh  r0,[r1]                   ; 08105F96
mov   r0,r4                     ; 08105F98
add   r0,0x6E                   ; 08105F9A
strh  r2,[r0]                   ; 08105F9C
@@Code08105F9E:
pop   {r4-r5}                   ; 08105F9E
pop   {r0}                      ; 08105FA0
bx    r0                        ; 08105FA2

Sub08105FA4:
push  {r4,lr}                   ; 08105FA4
mov   r4,r0                     ; 08105FA6
ldrh  r1,[r4,0x3E]              ; 08105FA8
mov   r0,0x1                    ; 08105FAA
and   r0,r1                     ; 08105FAC
cmp   r0,0x0                    ; 08105FAE
beq   @@Code08105FDC            ; 08105FB0
mov   r0,r4                     ; 08105FB2
bl    Sub081057AC               ; 08105FB4
cmp   r0,0x0                    ; 08105FB8
bne   @@Code08105FD6            ; 08105FBA
ldrh  r0,[r4,0x38]              ; 08105FBC
cmp   r0,0x0                    ; 08105FBE
bne   @@Code08105FDC            ; 08105FC0
mov   r0,r4                     ; 08105FC2
add   r0,0x44                   ; 08105FC4
ldrh  r0,[r0]                   ; 08105FC6
cmp   r0,0xF                    ; 08105FC8
bhi   @@Code08105FDC            ; 08105FCA
mov   r0,r4                     ; 08105FCC
bl    Sub08105E40               ; 08105FCE
cmp   r0,0x0                    ; 08105FD2
beq   @@Code08105FDC            ; 08105FD4
@@Code08105FD6:
mov   r0,r4                     ; 08105FD6
bl    Sub08105A1C               ; 08105FD8
@@Code08105FDC:
pop   {r4}                      ; 08105FDC
pop   {r0}                      ; 08105FDE
bx    r0                        ; 08105FE0
.pool                           ; 08105FE2

Sub08105FE4:
push  {r4,lr}                   ; 08105FE4
mov   r4,r0                     ; 08105FE6
bl    Sub081057AC               ; 08105FE8
cmp   r0,0x0                    ; 08105FEC
beq   @@Code08105FF6            ; 08105FEE
mov   r0,r4                     ; 08105FF0
bl    Sub08105A78               ; 08105FF2
@@Code08105FF6:
pop   {r4}                      ; 08105FF6
pop   {r0}                      ; 08105FF8
bx    r0                        ; 08105FFA

Sub08105FFC:
push  {r4,lr}                   ; 08105FFC
mov   r4,r0                     ; 08105FFE
ldr   r0,[r4,0xC]               ; 08106000
cmp   r0,0x0                    ; 08106002
blt   @@Code0810605E            ; 08106004
ldrh  r1,[r4,0x3E]              ; 08106006
mov   r0,0x1                    ; 08106008
and   r0,r1                     ; 0810600A
cmp   r0,0x0                    ; 0810600C
bne   @@Code08106016            ; 0810600E
mov   r0,0x27                   ; 08106010
strh  r0,[r4,0x38]              ; 08106012
b     @@Code0810605E            ; 08106014
@@Code08106016:
mov   r0,r4                     ; 08106016
bl    Sub08105914               ; 08106018
mov   r0,r4                     ; 0810601C
bl    Sub08105968               ; 0810601E
mov   r0,r4                     ; 08106022
bl    Sub081057AC               ; 08106024
cmp   r0,0x0                    ; 08106028
beq   @@Code0810605E            ; 0810602A
mov   r1,r4                     ; 0810602C
add   r1,0x40                   ; 0810602E
ldrh  r0,[r1]                   ; 08106030
add   r0,0x1                    ; 08106032
strh  r0,[r1]                   ; 08106034
lsl   r0,r0,0x10                ; 08106036
lsr   r0,r0,0x10                ; 08106038
cmp   r0,0x2                    ; 0810603A
bls   @@Code0810604A            ; 0810603C
mov   r0,0x0                    ; 0810603E
str   r0,[r4,0x8]               ; 08106040
mov   r0,r4                     ; 08106042
bl    Sub08105D00               ; 08106044
b     @@Code0810605E            ; 08106048
@@Code0810604A:
ldr   r0,=0xFFFFFF00            ; 0810604A
str   r0,[r4,0xC]               ; 0810604C
mov   r0,0x27                   ; 0810604E
strh  r0,[r4,0x38]              ; 08106050
ldr   r0,[r4,0x18]              ; 08106052
asr   r0,r0,0x1                 ; 08106054
str   r0,[r4,0x8]               ; 08106056
mov   r0,r4                     ; 08106058
bl    Sub0810285C               ; 0810605A
@@Code0810605E:
pop   {r4}                      ; 0810605E
pop   {r0}                      ; 08106060
bx    r0                        ; 08106062
.pool                           ; 08106064

Return08106068:
; sprite 128 init
bx    lr                        ; 08106068
.pool                           ; 0810606A

Sub0810606C:
push  {r4,lr}                   ; 0810606C
ldrh  r2,[r0,0x36]              ; 0810606E
lsl   r2,r2,0x1                 ; 08106070
ldr   r1,=Data081A7118          ; 08106072
add   r2,r2,r1                  ; 08106074
mov   r3,0x20                   ; 08106076
ldsh  r1,[r0,r3]                ; 08106078
mov   r3,0x2                    ; 0810607A
ldsb  r3,[r2,r3]                ; 0810607C
add   r3,r3,r1                  ; 0810607E
add   r0,0x72                   ; 08106080
mov   r4,0x0                    ; 08106082
ldsh  r0,[r0,r4]                ; 08106084
mov   r1,0x3                    ; 08106086
ldsb  r1,[r2,r1]                ; 08106088
mov   r4,0x0                    ; 0810608A
ldsh  r2,[r2,r4]                ; 0810608C
bl    Sub08105B90               ; 0810608E
pop   {r4}                      ; 08106092
pop   {r0}                      ; 08106094
bx    r0                        ; 08106096
.pool                           ; 08106098

Sub0810609C:
push  {r4,lr}                   ; 0810609C
mov   r2,r0                     ; 0810609E
add   r0,0x6E                   ; 081060A0
mov   r3,0x0                    ; 081060A2
ldsh  r1,[r0,r3]                ; 081060A4
cmp   r1,0x0                    ; 081060A6
beq   @@Code081060C4            ; 081060A8
mov   r3,r2                     ; 081060AA
add   r3,0x72                   ; 081060AC
mov   r4,0x0                    ; 081060AE
ldsh  r0,[r3,r4]                ; 081060B0
add   r1,r1,r0                  ; 081060B2
strh  r1,[r3]                   ; 081060B4
cmp   r1,0x0                    ; 081060B6
bge   @@Code081060D8            ; 081060B8
mov   r0,r2                     ; 081060BA
bl    Sub0804A6F8               ; 081060BC
mov   r0,0x1                    ; 081060C0
b     @@Code081060DA            ; 081060C2
@@Code081060C4:
add   r2,0x72                   ; 081060C4
mov   r0,0x0                    ; 081060C6
ldsh  r1,[r2,r0]                ; 081060C8
add   r1,0xC0                   ; 081060CA
ldr   r0,=0x09FF                ; 081060CC
cmp   r1,r0                     ; 081060CE
ble   @@Code081060D6            ; 081060D0
mov   r1,0xA0                   ; 081060D2
lsl   r1,r1,0x4                 ; 081060D4
@@Code081060D6:
strh  r1,[r2]                   ; 081060D6
@@Code081060D8:
mov   r0,0x0                    ; 081060D8
@@Code081060DA:
pop   {r4}                      ; 081060DA
pop   {r1}                      ; 081060DC
bx    r1                        ; 081060DE
.pool                           ; 081060E0

Sub081060E4:
push  {lr}                      ; 081060E4
mov   r3,r0                     ; 081060E6
add   r0,0xA3                   ; 081060E8
ldrb  r0,[r0]                   ; 081060EA
lsl   r0,r0,0x18                ; 081060EC
asr   r0,r0,0x18                ; 081060EE
cmp   r0,0x0                    ; 081060F0
bge   @@Code0810611E            ; 081060F2
mov   r0,r3                     ; 081060F4
add   r0,0x48                   ; 081060F6
ldrh  r1,[r0]                   ; 081060F8
cmp   r1,0x0                    ; 081060FA
bne   @@Code0810611E            ; 081060FC
ldr   r0,=0x03006D80            ; 081060FE
mov   r2,r0                     ; 08106100
add   r2,0x52                   ; 08106102
strh  r1,[r2]                   ; 08106104
add   r0,0x54                   ; 08106106
ldr   r1,=0xFFFF                ; 08106108
strh  r1,[r0]                   ; 0810610A
ldr   r0,=0x0300702C            ; 0810610C  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 0810610E
ldr   r1,=0x1892                ; 08106110
add   r0,r0,r1                  ; 08106112
mov   r1,0x20                   ; 08106114
strb  r1,[r0]                   ; 08106116
mov   r0,r3                     ; 08106118
bl    Sub080DEE74               ; 0810611A
@@Code0810611E:
pop   {r0}                      ; 0810611E
bx    r0                        ; 08106120
.pool                           ; 08106122

Sub08106134:
push  {r4-r7,lr}                ; 08106134
mov   r7,r8                     ; 08106136
push  {r7}                      ; 08106138
mov   r5,r0                     ; 0810613A
add   r0,0x46                   ; 0810613C
ldrh  r0,[r0]                   ; 0810613E
cmp   r0,0x0                    ; 08106140
beq   @@Code08106146            ; 08106142
b     @@Code0810629C            ; 08106144
@@Code08106146:
ldr   r0,=0x030069F4            ; 08106146
mov   r8,r0                     ; 08106148
ldr   r0,=0x0300702C            ; 0810614A  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 0810614C
ldr   r1,=0x156E                ; 0810614E
add   r0,r0,r1                  ; 08106150
ldrb  r0,[r0]                   ; 08106152
mov   r2,r8                     ; 08106154
strh  r0,[r2,0x2]               ; 08106156
bl    Sub0808F6D0               ; 08106158
@@Code0810615C:
mov   r3,r8                     ; 0810615C
mov   r7,0x1C                   ; 0810615E
ldsh  r4,[r3,r7]                ; 08106160
cmp   r4,0x0                    ; 08106162
bgt   @@Code08106168            ; 08106164
b     @@Code0810629C            ; 08106166
@@Code08106168:
ldr   r1,=0x03007240            ; 08106168  Normal gameplay IWRAM (0300220C)
mov   r0,0xB0                   ; 0810616A
mul   r0,r4                     ; 0810616C
mov   r2,0x95                   ; 0810616E
lsl   r2,r2,0x2                 ; 08106170
add   r0,r0,r2                  ; 08106172
ldr   r1,[r1]                   ; 08106174
add   r3,r1,r0                  ; 08106176
ldrh  r0,[r3,0x24]              ; 08106178
cmp   r0,0x8                    ; 0810617A
beq   @@Code08106180            ; 0810617C
b     @@Code08106290            ; 0810617E
@@Code08106180:
ldr   r0,=0x0300702C            ; 08106180  Sprite RAM structs (03002460)
ldr   r6,[r0]                   ; 08106182
ldr   r7,=0x1194                ; 08106184
add   r0,r6,r7                  ; 08106186
ldrh  r0,[r0]                   ; 08106188
cmp   r4,r0                     ; 0810618A
bne   @@Code0810622A            ; 0810618C
mov   r2,r3                     ; 0810618E
add   r2,0x6E                   ; 08106190
ldrh  r0,[r2]                   ; 08106192
cmp   r0,0x8                    ; 08106194
bhi   @@Code08106290            ; 08106196
ldr   r0,[r3,0xC]               ; 08106198
cmp   r0,0x0                    ; 0810619A
blt   @@Code08106290            ; 0810619C
ldrh  r0,[r5,0x36]              ; 0810619E
ldr   r1,=Data081A7120          ; 081061A0
add   r0,r0,r1                  ; 081061A2
mov   r1,0x0                    ; 081061A4
ldsh  r0,[r0,r1]                ; 081061A6
str   r0,[r3,0x8]               ; 081061A8
ldr   r0,=0xFFFFFA00            ; 081061AA
str   r0,[r3,0xC]               ; 081061AC
mov   r0,0x40                   ; 081061AE
str   r0,[r3,0x14]              ; 081061B0
mov   r1,r3                     ; 081061B2
add   r1,0x76                   ; 081061B4
mov   r0,0x47                   ; 081061B6
strh  r0,[r1]                   ; 081061B8
sub   r1,0x10                   ; 081061BA
strh  r0,[r1]                   ; 081061BC
add   r1,0x14                   ; 081061BE
mov   r0,0x4E                   ; 081061C0
strh  r0,[r1]                   ; 081061C2
sub   r1,0x18                   ; 081061C4
ldr   r0,=0xFFFF                ; 081061C6
strh  r0,[r1]                   ; 081061C8
mov   r0,0xA                    ; 081061CA
strh  r0,[r2]                   ; 081061CC
ldr   r2,=0x03002200            ; 081061CE
ldr   r1,[r3]                   ; 081061D0
asr   r1,r1,0x8                 ; 081061D2
ldr   r3,=0x47E4                ; 081061D4
add   r0,r2,r3                  ; 081061D6
ldrh  r0,[r0]                   ; 081061D8
sub   r1,r1,r0                  ; 081061DA
ldr   r7,=0x4058                ; 081061DC
add   r2,r2,r7                  ; 081061DE
strh  r1,[r2]                   ; 081061E0
ldr   r1,=0x1198                ; 081061E2
add   r0,r6,r1                  ; 081061E4
ldrh  r0,[r0]                   ; 081061E6
cmp   r0,0x1                    ; 081061E8
bhi   @@Code08106220            ; 081061EA
mov   r0,0xA3                   ; 081061EC
b     @@Code08106222            ; 081061EE
.pool                           ; 081061F0

@@Code08106220:
mov   r0,0xA7                   ; 08106220
@@Code08106222:
mov   r1,r2                     ; 08106222
bl    PlayYISound               ; 08106224
b     @@Code08106290            ; 08106228
@@Code0810622A:
ldrh  r1,[r3,0x32]              ; 0810622A
mov   r0,0x94                   ; 0810622C
lsl   r0,r0,0x1                 ; 0810622E
cmp   r1,r0                     ; 08106230
bne   @@Code08106290            ; 08106232
mov   r0,r5                     ; 08106234
add   r0,0x76                   ; 08106236
ldrh  r0,[r0]                   ; 08106238
cmp   r4,r0                     ; 0810623A
beq   @@Code08106290            ; 0810623C
mov   r2,0x6A                   ; 0810623E
add   r2,r2,r5                  ; 08106240
mov   r12,r2                    ; 08106242
ldrh  r7,[r2]                   ; 08106244
cmp   r4,r7                     ; 08106246
beq   @@Code08106290            ; 08106248
ldr   r2,[r5,0x8]               ; 0810624A
ldr   r0,[r3,0x8]               ; 0810624C
eor   r0,r2                     ; 0810624E
cmp   r0,0x0                    ; 08106250
bge   @@Code08106290            ; 08106252
mov   r0,r3                     ; 08106254
add   r0,0x5A                   ; 08106256
mov   r7,0x0                    ; 08106258
ldsh  r1,[r0,r7]                ; 0810625A
mov   r0,r5                     ; 0810625C
add   r0,0x5A                   ; 0810625E
mov   r7,0x0                    ; 08106260
ldsh  r0,[r0,r7]                ; 08106262
sub   r1,r1,r0                  ; 08106264
eor   r1,r2                     ; 08106266
cmp   r1,0x0                    ; 08106268
blt   @@Code08106290            ; 0810626A
mov   r1,r3                     ; 0810626C
add   r1,0x6E                   ; 0810626E
ldrh  r0,[r1]                   ; 08106270
sub   r0,0xC0                   ; 08106272
strh  r0,[r1]                   ; 08106274
mov   r1,r5                     ; 08106276
add   r1,0x6E                   ; 08106278
ldrh  r0,[r1]                   ; 0810627A
sub   r0,0xC0                   ; 0810627C
strh  r0,[r1]                   ; 0810627E
mov   r0,r12                    ; 08106280
strh  r4,[r0]                   ; 08106282
ldr   r1,=0x156E                ; 08106284
add   r0,r6,r1                  ; 08106286
ldrb  r1,[r0]                   ; 08106288
mov   r0,r3                     ; 0810628A
add   r0,0x6A                   ; 0810628C
strh  r1,[r0]                   ; 0810628E
@@Code08106290:
bl    Sub0808F688               ; 08106290
b     @@Code0810615C            ; 08106294
.pool                           ; 08106296

@@Code0810629C:
pop   {r3}                      ; 0810629C
mov   r8,r3                     ; 0810629E
pop   {r4-r7}                   ; 081062A0
pop   {r0}                      ; 081062A2
bx    r0                        ; 081062A4
.pool                           ; 081062A6

Sub081062A8:
push  {lr}                      ; 081062A8
mov   r3,r0                     ; 081062AA
mov   r2,r3                     ; 081062AC
add   r2,0x42                   ; 081062AE
ldrh  r0,[r2]                   ; 081062B0
cmp   r0,0x0                    ; 081062B2
bne   @@Code081062E2            ; 081062B4
ldr   r0,=0x03007240            ; 081062B6  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 081062B8
ldr   r1,=0x29CC                ; 081062BA
add   r0,r0,r1                  ; 081062BC
ldrh  r1,[r0]                   ; 081062BE
mov   r0,0x3                    ; 081062C0
and   r0,r1                     ; 081062C2
add   r0,0x4                    ; 081062C4
strh  r0,[r2]                   ; 081062C6
ldr   r1,=0x03002200            ; 081062C8
ldr   r0,[r3]                   ; 081062CA
asr   r0,r0,0x8                 ; 081062CC
ldr   r3,=0x47E4                ; 081062CE
add   r2,r1,r3                  ; 081062D0
ldrh  r2,[r2]                   ; 081062D2
sub   r0,r0,r2                  ; 081062D4
ldr   r2,=0x4058                ; 081062D6
add   r1,r1,r2                  ; 081062D8
strh  r0,[r1]                   ; 081062DA
mov   r0,0x7                    ; 081062DC
bl    PlayYISound               ; 081062DE
@@Code081062E2:
pop   {r0}                      ; 081062E2
bx    r0                        ; 081062E4
.pool                           ; 081062E6

Sub081062FC:
push  {r4,lr}                   ; 081062FC
mov   r3,r0                     ; 081062FE
ldr   r1,[r3]                   ; 08106300
ldr   r0,=0x00017FFF            ; 08106302
cmp   r1,r0                     ; 08106304
bhi   @@Code08106338            ; 08106306
asr   r1,r1,0x8                 ; 08106308
ldr   r2,=0x03002200            ; 0810630A
ldr   r4,=0x47D4                ; 0810630C
add   r0,r2,r4                  ; 0810630E
ldrh  r0,[r0]                   ; 08106310
sub   r1,r1,r0                  ; 08106312
strh  r1,[r3,0x20]              ; 08106314
ldr   r0,[r3,0x4]               ; 08106316
asr   r0,r0,0x8                 ; 08106318
ldr   r1,=0x47DC                ; 0810631A
add   r2,r2,r1                  ; 0810631C
ldrh  r1,[r2]                   ; 0810631E
sub   r0,r0,r1                  ; 08106320
strh  r0,[r3,0x22]              ; 08106322
mov   r0,0x0                    ; 08106324
b     @@Code0810633A            ; 08106326
.pool                           ; 08106328

@@Code08106338:
mov   r0,0x1                    ; 08106338
@@Code0810633A:
pop   {r4}                      ; 0810633A
pop   {r1}                      ; 0810633C
bx    r1                        ; 0810633E

Sub08106340:
; sprite 128 main
push  {r4,lr}                   ; 08106340
mov   r4,r0                     ; 08106342
bl    Sub081062FC               ; 08106344
cmp   r0,0x0                    ; 08106348
beq   @@Code08106354            ; 0810634A
mov   r0,r4                     ; 0810634C
bl    Sub0804A6F8               ; 0810634E
b     @@Code08106380            ; 08106352
@@Code08106354:
mov   r0,r4                     ; 08106354
bl    Sub0810606C               ; 08106356
mov   r0,r4                     ; 0810635A
bl    Sub0804BEB8               ; 0810635C
cmp   r0,0x0                    ; 08106360
bne   @@Code08106380            ; 08106362
mov   r0,r4                     ; 08106364
bl    Sub0810609C               ; 08106366
cmp   r0,0x0                    ; 0810636A
bne   @@Code08106380            ; 0810636C
mov   r0,r4                     ; 0810636E
bl    Sub081060E4               ; 08106370
mov   r0,r4                     ; 08106374
bl    Sub08106134               ; 08106376
mov   r0,r4                     ; 0810637A
bl    Sub081062A8               ; 0810637C
@@Code08106380:
pop   {r4}                      ; 08106380
pop   {r0}                      ; 08106382
bx    r0                        ; 08106384
.pool                           ; 08106386

Sub08106388:
mov   r1,r0                     ; 08106388
mov   r2,r1                     ; 0810638A
add   r2,0x76                   ; 0810638C
mov   r0,0x3F                   ; 0810638E
strh  r0,[r2]                   ; 08106390
sub   r2,0x10                   ; 08106392
strh  r0,[r2]                   ; 08106394
add   r2,0x14                   ; 08106396
mov   r0,0x47                   ; 08106398
strh  r0,[r2]                   ; 0810639A
add   r1,0x62                   ; 0810639C
ldr   r0,=0xFFFF                ; 0810639E
strh  r0,[r1]                   ; 081063A0
bx    lr                        ; 081063A2
.pool                           ; 081063A4

Sub081063A8:
push  {lr}                      ; 081063A8
mov   r1,0x20                   ; 081063AA
strh  r1,[r0,0x38]              ; 081063AC
bl    Sub08106388               ; 081063AE
pop   {r0}                      ; 081063B2
bx    r0                        ; 081063B4
.pool                           ; 081063B6

Sub081063B8:
push  {lr}                      ; 081063B8
mov   r3,r0                     ; 081063BA
ldr   r0,=0x03006D80            ; 081063BC
add   r0,0x40                   ; 081063BE
ldrh  r0,[r0]                   ; 081063C0
cmp   r0,0x0                    ; 081063C2
bne   @@Code081063D4            ; 081063C4
ldr   r0,=0x03007240            ; 081063C6  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 081063C8
ldr   r1,=0x2A64                ; 081063CA
add   r0,r0,r1                  ; 081063CC
ldrh  r0,[r0]                   ; 081063CE
cmp   r0,0x0                    ; 081063D0
bne   @@Code081063F4            ; 081063D2
@@Code081063D4:
ldr   r0,=0x0300702C            ; 081063D4  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 081063D6
ldr   r1,=0x1196                ; 081063D8
add   r2,r0,r1                  ; 081063DA
ldrh  r1,[r2]                   ; 081063DC
add   r0,r1,0x2                 ; 081063DE
lsl   r0,r0,0x10                ; 081063E0
lsr   r1,r0,0x10                ; 081063E2
strh  r1,[r2]                   ; 081063E4
lsl   r0,r1,0x10                ; 081063E6
cmp   r0,0x0                    ; 081063E8
bge   @@Code081063F0            ; 081063EA
mov   r1,0x7F                   ; 081063EC
strh  r1,[r2]                   ; 081063EE
@@Code081063F0:
cmp   r1,0x1F                   ; 081063F0
bhi   @@Code08106410            ; 081063F2
@@Code081063F4:
mov   r0,r3                     ; 081063F4
bl    Sub081063A8               ; 081063F6
b     @@Code08106416            ; 081063FA
.pool                           ; 081063FC

@@Code08106410:
mov   r0,r3                     ; 08106410
bl    Sub081057AC               ; 08106412
@@Code08106416:
pop   {r0}                      ; 08106416
bx    r0                        ; 08106418
.pool                           ; 0810641A

Sub0810641C:
push  {r4,lr}                   ; 0810641C
mov   r4,r0                     ; 0810641E
add   r0,0x6A                   ; 08106420
mov   r2,0x0                    ; 08106422
strh  r2,[r0]                   ; 08106424
mov   r0,0x8                    ; 08106426
strh  r0,[r4,0x24]              ; 08106428
ldr   r0,=0x03006D80            ; 0810642A
mov   r1,r0                     ; 0810642C
add   r1,0xB0                   ; 0810642E
strh  r2,[r1]                   ; 08106430
add   r0,0x42                   ; 08106432
ldrh  r0,[r0]                   ; 08106434
ldr   r1,=Data081A7124          ; 08106436
add   r0,r0,r1                  ; 08106438
mov   r1,0x0                    ; 0810643A
ldsh  r0,[r0,r1]                ; 0810643C
str   r0,[r4,0x8]               ; 0810643E
str   r0,[r4,0x18]              ; 08106440
mov   r0,r4                     ; 08106442
bl    Sub0810287C               ; 08106444
ldr   r0,=0xFFFFFD00            ; 08106448
str   r0,[r4,0xC]               ; 0810644A
mov   r1,r4                     ; 0810644C
add   r1,0x48                   ; 0810644E
mov   r0,0x20                   ; 08106450
strh  r0,[r1]                   ; 08106452
mov   r0,0x40                   ; 08106454
str   r0,[r4,0x14]              ; 08106456
pop   {r4}                      ; 08106458
pop   {r0}                      ; 0810645A
bx    r0                        ; 0810645C
.pool                           ; 0810645E

Sub0810646C:
push  {lr}                      ; 0810646C
mov   r3,r0                     ; 0810646E
ldr   r1,=0x03006D80            ; 08106470
mov   r0,r1                     ; 08106472
add   r0,0x52                   ; 08106474
ldrh  r0,[r0]                   ; 08106476
mov   r2,r1                     ; 08106478
cmp   r0,0x0                    ; 0810647A
beq   @@Code08106498            ; 0810647C
mov   r0,r2                     ; 0810647E
add   r0,0x7A                   ; 08106480
ldrh  r1,[r0]                   ; 08106482
mov   r0,0x7                    ; 08106484
and   r0,r1                     ; 08106486
cmp   r0,0x0                    ; 08106488
beq   @@Code08106498            ; 0810648A
mov   r0,r3                     ; 0810648C
bl    Sub0810641C               ; 0810648E
b     @@Code081064B0            ; 08106492
.pool                           ; 08106494

@@Code08106498:
mov   r1,0xD5                   ; 08106498
lsl   r1,r1,0x1                 ; 0810649A
add   r0,r2,r1                  ; 0810649C
ldrh  r1,[r0]                   ; 0810649E
mov   r0,0x80                   ; 081064A0
lsl   r0,r0,0x8                 ; 081064A2
and   r0,r1                     ; 081064A4
cmp   r0,0x0                    ; 081064A6
beq   @@Code081064B0            ; 081064A8
mov   r0,r3                     ; 081064AA
bl    Sub0810641C               ; 081064AC
@@Code081064B0:
pop   {r0}                      ; 081064B0
bx    r0                        ; 081064B2

Sub081064B4:
push  {lr}                      ; 081064B4
mov   r1,r0                     ; 081064B6
add   r1,0x42                   ; 081064B8
ldrh  r2,[r1]                   ; 081064BA
cmp   r2,0x0                    ; 081064BC
bne   @@Code081064C4            ; 081064BE
add   r1,0x28                   ; 081064C0
strh  r2,[r1]                   ; 081064C2
@@Code081064C4:
bl    Sub0810646C               ; 081064C4
pop   {r0}                      ; 081064C8
bx    r0                        ; 081064CA

Sub081064CC:
push  {lr}                      ; 081064CC
mov   r2,r0                     ; 081064CE
add   r2,0x42                   ; 081064D0
mov   r1,0x40                   ; 081064D2
strh  r1,[r2]                   ; 081064D4
bl    Sub0810646C               ; 081064D6
pop   {r0}                      ; 081064DA
bx    r0                        ; 081064DC
.pool                           ; 081064DE

Sub081064E0:
push  {lr}                      ; 081064E0
mov   r2,r0                     ; 081064E2
add   r2,0x6A                   ; 081064E4
mov   r1,0x1                    ; 081064E6
strh  r1,[r2]                   ; 081064E8
bl    Sub081064CC               ; 081064EA
pop   {r0}                      ; 081064EE
bx    r0                        ; 081064F0
.pool                           ; 081064F2

Sub081064F4:
; sprite 134 riding Yoshi code
push  {r4,lr}                   ; 081064F4
mov   r4,r0                     ; 081064F6
ldr   r0,=0x03006D80            ; 081064F8
ldr   r2,[r0,0x8]               ; 081064FA
cmp   r2,0x0                    ; 081064FC
bne   @@Code0810650C            ; 081064FE
mov   r0,r4                     ; 08106500
bl    Sub081063B8               ; 08106502
b     @@Code08106562            ; 08106506
.pool                           ; 08106508

@@Code0810650C:
ldr   r0,=0x0300702C            ; 0810650C  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 0810650E
ldr   r1,=0x1196                ; 08106510
add   r0,r0,r1                  ; 08106512
mov   r1,0x0                    ; 08106514
strh  r1,[r0]                   ; 08106516
mov   r0,0x80                   ; 08106518
lsl   r0,r0,0x2                 ; 0810651A
add   r1,r2,r0                  ; 0810651C
ldr   r0,=0x03FF                ; 0810651E
cmp   r1,r0                     ; 08106520
bhi   @@Code08106538            ; 08106522
mov   r0,r4                     ; 08106524
bl    Sub081063A8               ; 08106526
b     @@Code08106562            ; 0810652A
.pool                           ; 0810652C

@@Code08106538:
mov   r1,r4                     ; 08106538
add   r1,0x44                   ; 0810653A
ldrh  r0,[r1]                   ; 0810653C
cmp   r0,0x0                    ; 0810653E
bne   @@Code08106554            ; 08106540
mov   r0,0x8                    ; 08106542
strh  r0,[r1]                   ; 08106544
ldrh  r0,[r4,0x38]              ; 08106546
add   r0,0x1                    ; 08106548
strh  r0,[r4,0x38]              ; 0810654A
lsl   r0,r0,0x10                ; 0810654C
lsr   r0,r0,0x10                ; 0810654E
cmp   r0,0x21                   ; 08106550
bne   @@Code0810655C            ; 08106552
@@Code08106554:
mov   r0,r4                     ; 08106554
bl    Sub08106388               ; 08106556
b     @@Code08106562            ; 0810655A
@@Code0810655C:
mov   r0,r4                     ; 0810655C
bl    Sub081063A8               ; 0810655E
@@Code08106562:
ldr   r0,=0x03007240            ; 08106562  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08106564
ldr   r1,=0x2A64                ; 08106566
add   r0,r0,r1                  ; 08106568
ldrh  r0,[r0]                   ; 0810656A
mov   r1,0xC0                   ; 0810656C
lsl   r1,r1,0x2                 ; 0810656E
and   r1,r0                     ; 08106570
ldr   r0,=0x0300702C            ; 08106572  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08106574
ldr   r2,=0x1570                ; 08106576
add   r0,r0,r2                  ; 08106578
ldrh  r2,[r0]                   ; 0810657A
cmp   r1,r2                     ; 0810657C
beq   @@Code08106586            ; 0810657E
strh  r1,[r0]                   ; 08106580
cmp   r1,0x0                    ; 08106582
bne   @@Code081065A0            ; 08106584
@@Code08106586:
mov   r0,r4                     ; 08106586
bl    Sub081064B4               ; 08106588
b     @@Code081065D2            ; 0810658C
.pool                           ; 0810658E

@@Code081065A0:
mov   r2,r4                     ; 081065A0
add   r2,0x6A                   ; 081065A2
ldrh  r1,[r2]                   ; 081065A4
cmp   r1,0x0                    ; 081065A6
beq   @@Code081065B4            ; 081065A8
mov   r0,r4                     ; 081065AA
add   r0,0x42                   ; 081065AC
ldrh  r0,[r0]                   ; 081065AE
cmp   r0,0x0                    ; 081065B0
bne   @@Code081065BC            ; 081065B2
@@Code081065B4:
mov   r0,r4                     ; 081065B4
bl    Sub081064E0               ; 081065B6
b     @@Code081065D2            ; 081065BA
@@Code081065BC:
cmp   r1,0x3                    ; 081065BC
bls   @@Code081065C8            ; 081065BE
mov   r0,r4                     ; 081065C0
bl    Sub0810641C               ; 081065C2
b     @@Code081065D2            ; 081065C6
@@Code081065C8:
add   r0,r1,0x1                 ; 081065C8
strh  r0,[r2]                   ; 081065CA
mov   r0,r4                     ; 081065CC
bl    Sub081064CC               ; 081065CE
@@Code081065D2:
pop   {r4}                      ; 081065D2
pop   {r0}                      ; 081065D4
bx    r0                        ; 081065D6

Sub081065D8:
push  {lr}                      ; 081065D8
ldr   r0,=0x02010AC2            ; 081065DA
ldr   r1,=0x020106C2            ; 081065DC
mov   r2,0xF                    ; 081065DE
bl    swi_MemoryCopy4or2        ; 081065E0  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200            ; 081065E4
mov   r0,0x91                   ; 081065E6
lsl   r0,r0,0x7                 ; 081065E8
add   r2,r1,r0                  ; 081065EA
ldr   r0,=0x0161                ; 081065EC
strh  r0,[r2]                   ; 081065EE
ldr   r0,=0x4882                ; 081065F0
add   r2,r1,r0                  ; 081065F2
mov   r0,0xC2                   ; 081065F4
strh  r0,[r2]                   ; 081065F6
ldr   r0,=0x4884                ; 081065F8
add   r1,r1,r0                  ; 081065FA
mov   r0,0x1E                   ; 081065FC
strh  r0,[r1]                   ; 081065FE
pop   {r0}                      ; 08106600
bx    r0                        ; 08106602
.pool                           ; 08106604

Sub0810661C:
push  {r4,lr}                   ; 0810661C
ldr   r4,=0x03002200            ; 0810661E
ldr   r1,=0x48A2                ; 08106620
add   r0,r4,r1                  ; 08106622
ldrh  r1,[r0]                   ; 08106624
mov   r0,0x2                    ; 08106626
and   r0,r1                     ; 08106628
cmp   r0,0x0                    ; 0810662A
beq   @@Code08106670            ; 0810662C
ldr   r0,=Data082D5E3E          ; 0810662E
ldr   r1,=0x020106C2            ; 08106630
mov   r2,0xF                    ; 08106632
bl    swi_MemoryCopy4or2        ; 08106634  Memory copy/fill, 4- or 2-byte blocks
mov   r0,0x91                   ; 08106638
lsl   r0,r0,0x7                 ; 0810663A
add   r1,r4,r0                  ; 0810663C
ldr   r0,=0x0161                ; 0810663E
strh  r0,[r1]                   ; 08106640
ldr   r0,=0x4882                ; 08106642
add   r1,r4,r0                  ; 08106644
mov   r0,0xC2                   ; 08106646
strh  r0,[r1]                   ; 08106648
ldr   r0,=0x4884                ; 0810664A
add   r1,r4,r0                  ; 0810664C
mov   r0,0x1E                   ; 0810664E
strh  r0,[r1]                   ; 08106650
b     @@Code08106674            ; 08106652
.pool                           ; 08106654

@@Code08106670:
bl    Sub081065D8               ; 08106670
@@Code08106674:
pop   {r4}                      ; 08106674
pop   {r0}                      ; 08106676
bx    r0                        ; 08106678
.pool                           ; 0810667A

Sub0810667C:
push  {r4,lr}                   ; 0810667C
mov   r4,r0                     ; 0810667E
bl    Sub081057AC               ; 08106680
ldrh  r1,[r4,0x3E]              ; 08106684
mov   r0,0x1                    ; 08106686
and   r0,r1                     ; 08106688
cmp   r0,0x0                    ; 0810668A
beq   @@Code081066BA            ; 0810668C
mov   r0,r4                     ; 0810668E
bl    Sub08105914               ; 08106690
ldrh  r0,[r4,0x38]              ; 08106694
cmp   r0,0xF                    ; 08106696
bne   @@Code081066BA            ; 08106698
ldr   r1,=0x03002200            ; 0810669A
ldr   r0,[r4]                   ; 0810669C
asr   r0,r0,0x8                 ; 0810669E
ldr   r3,=0x47E4                ; 081066A0
add   r2,r1,r3                  ; 081066A2
ldrh  r2,[r2]                   ; 081066A4
sub   r0,r0,r2                  ; 081066A6
ldr   r2,=0x4058                ; 081066A8
add   r1,r1,r2                  ; 081066AA
strh  r0,[r1]                   ; 081066AC
mov   r0,0x89                   ; 081066AE
bl    PlayYISound               ; 081066B0
mov   r0,r4                     ; 081066B4
bl    Sub08105920               ; 081066B6
@@Code081066BA:
bl    Sub0810661C               ; 081066BA
pop   {r4}                      ; 081066BE
pop   {r0}                      ; 081066C0
bx    r0                        ; 081066C2
.pool                           ; 081066C4

Sub081066D0:
push  {r4,lr}                   ; 081066D0
mov   r4,r0                     ; 081066D2
bl    Sub08105914               ; 081066D4
mov   r0,r4                     ; 081066D8
bl    Sub081057AC               ; 081066DA
cmp   r0,0x0                    ; 081066DE
beq   @@Code0810671A            ; 081066E0
mov   r0,0x0                    ; 081066E2
str   r0,[r4,0x8]               ; 081066E4
ldr   r0,=0x0300702C            ; 081066E6  Sprite RAM structs (03002460)
ldr   r1,[r0]                   ; 081066E8
ldr   r0,=0x1198                ; 081066EA
add   r1,r1,r0                  ; 081066EC
ldrh  r0,[r1]                   ; 081066EE
add   r0,0x1                    ; 081066F0
strh  r0,[r1]                   ; 081066F2
lsl   r0,r0,0x10                ; 081066F4
lsr   r0,r0,0x10                ; 081066F6
cmp   r0,0x2                    ; 081066F8
bls   @@Code08106714            ; 081066FA
bl    Sub081065D8               ; 081066FC
mov   r1,r4                     ; 08106700
add   r1,0x6E                   ; 08106702
mov   r0,0xE                    ; 08106704
strh  r0,[r1]                   ; 08106706
b     @@Code08106724            ; 08106708
.pool                           ; 0810670A

@@Code08106714:
mov   r0,r4                     ; 08106714
bl    Sub08105940               ; 08106716
@@Code0810671A:
mov   r0,r4                     ; 0810671A
bl    Sub08105968               ; 0810671C
bl    Sub0810661C               ; 08106720
@@Code08106724:
pop   {r4}                      ; 08106724
pop   {r0}                      ; 08106726
bx    r0                        ; 08106728
.pool                           ; 0810672A

Sub0810672C:
push  {r4,lr}                   ; 0810672C
mov   r4,r0                     ; 0810672E
bl    Sub081057AC               ; 08106730
cmp   r0,0x0                    ; 08106734
beq   @@Code08106740            ; 08106736
mov   r0,r4                     ; 08106738
bl    Sub08105A1C               ; 0810673A
b     @@Code08106744            ; 0810673E
@@Code08106740:
bl    Sub0810661C               ; 08106740
@@Code08106744:
pop   {r4}                      ; 08106744
pop   {r0}                      ; 08106746
bx    r0                        ; 08106748
.pool                           ; 0810674A

Sub0810674C:
push  {r4,lr}                   ; 0810674C
mov   r4,r0                     ; 0810674E
bl    Sub081057AC               ; 08106750
cmp   r0,0x0                    ; 08106754
beq   @@Code08106764            ; 08106756
bl    Sub081065D8               ; 08106758
mov   r0,r4                     ; 0810675C
bl    Sub08105A78               ; 0810675E
b     @@Code08106768            ; 08106762
@@Code08106764:
bl    Sub0810661C               ; 08106764
@@Code08106768:
pop   {r4}                      ; 08106768
pop   {r0}                      ; 0810676A
bx    r0                        ; 0810676C
.pool                           ; 0810676E

Sub08106770:
push  {r4-r7,lr}                ; 08106770
mov   r7,r9                     ; 08106772
mov   r6,r8                     ; 08106774
push  {r6-r7}                   ; 08106776
mov   r4,r0                     ; 08106778
bl    Sub081034D0               ; 0810677A
cmp   r0,0x0                    ; 0810677E
beq   @@Code08106784            ; 08106780
b     @@Code08106946            ; 08106782
@@Code08106784:
mov   r0,r4                     ; 08106784
bl    Sub08102728               ; 08106786
mov   r0,0x6                    ; 0810678A
strh  r0,[r4,0x38]              ; 0810678C
ldr   r6,=0x03002200            ; 0810678E
ldr   r1,=0x48A2                ; 08106790
add   r0,r6,r1                  ; 08106792
ldrh  r1,[r0]                   ; 08106794
mov   r2,0x8                    ; 08106796
mov   r8,r2                     ; 08106798
mov   r0,r8                     ; 0810679A
and   r0,r1                     ; 0810679C
cmp   r0,0x0                    ; 0810679E
beq   @@Code081067B0            ; 081067A0
ldr   r0,=Data081A718A          ; 081067A2
ldr   r1,=0x02010402            ; 081067A4
mov   r2,0xF                    ; 081067A6
bl    swi_MemoryCopy4or2        ; 081067A8  Memory copy/fill, 4- or 2-byte blocks
bl    Sub081058C8               ; 081067AC
@@Code081067B0:
ldr   r3,=0x0300702C            ; 081067B0  Sprite RAM structs (03002460)
mov   r9,r3                     ; 081067B2
ldr   r2,[r3]                   ; 081067B4
ldr   r1,=0x11AC                ; 081067B6
add   r0,r2,r1                  ; 081067B8
ldrh  r1,[r0]                   ; 081067BA
mov   r0,r4                     ; 081067BC
add   r0,0x48                   ; 081067BE
ldrh  r3,[r0]                   ; 081067C0
cmp   r3,0x0                    ; 081067C2
beq   @@Code08106868            ; 081067C4
cmp   r1,0x7                    ; 081067C6
bne   @@Code081067F8            ; 081067C8
ldr   r0,=0x03007240            ; 081067CA  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 081067CC
ldr   r2,=0x2618                ; 081067CE
add   r0,r0,r2                  ; 081067D0
mov   r1,0x1                    ; 081067D2
strh  r1,[r0,0x6]               ; 081067D4
b     @@Code08106946            ; 081067D6
.pool                           ; 081067D8

@@Code081067F8:
ldr   r3,=0x119E                ; 081067F8
add   r1,r2,r3                  ; 081067FA
ldrh  r0,[r1]                   ; 081067FC
add   r0,0x4                    ; 081067FE
strh  r0,[r1]                   ; 08106800
mov   r7,0x8D                   ; 08106802
lsl   r7,r7,0x5                 ; 08106804
add   r0,r2,r7                  ; 08106806
mov   r2,0x0                    ; 08106808
ldsh  r1,[r0,r2]                ; 0810680A
mov   r3,0x30                   ; 0810680C
ldsh  r0,[r4,r3]                ; 0810680E
add   r1,r1,r0                  ; 08106810
mov   r5,r4                     ; 08106812
add   r5,0x62                   ; 08106814
mov   r2,0x0                    ; 08106816
ldsh  r0,[r5,r2]                ; 08106818
cmp   r1,r0                     ; 0810681A
blt   @@Code0810684C            ; 0810681C
ldr   r3,=0x4058                ; 0810681E
add   r1,r6,r3                  ; 08106820
mov   r0,0x78                   ; 08106822
strh  r0,[r1]                   ; 08106824
mov   r0,0x4F                   ; 08106826
bl    PlayYISound               ; 08106828
ldr   r0,=0x03006D80            ; 0810682C
mov   r1,0xE0                   ; 0810682E
lsl   r1,r1,0x1                 ; 08106830
add   r0,r0,r1                  ; 08106832
mov   r2,r8                     ; 08106834
strh  r2,[r0]                   ; 08106836
ldr   r0,=0xFFFFF800            ; 08106838
str   r0,[r4,0xC]               ; 0810683A
mov   r0,0x80                   ; 0810683C
lsl   r0,r0,0x1                 ; 0810683E
str   r0,[r4,0x14]              ; 08106840
mov   r0,0x80                   ; 08106842
lsl   r0,r0,0x4                 ; 08106844
str   r0,[r4,0x1C]              ; 08106846
mov   r3,0x0                    ; 08106848
ldsh  r1,[r5,r3]                ; 0810684A
@@Code0810684C:
mov   r2,r9                     ; 0810684C
ldr   r0,[r2]                   ; 0810684E
add   r0,r0,r7                  ; 08106850
strh  r1,[r0]                   ; 08106852
b     @@Code08106946            ; 08106854
.pool                           ; 08106856

@@Code08106868:
cmp   r1,0x7                    ; 08106868
bne   @@Code08106928            ; 0810686A
ldr   r5,=0x03007240            ; 0810686C  Normal gameplay IWRAM (0300220C)
ldr   r0,[r5]                   ; 0810686E
ldr   r1,=0x2618                ; 08106870
add   r0,r0,r1                  ; 08106872
strh  r3,[r0,0x6]               ; 08106874
mov   r0,r4                     ; 08106876
bl    Sub080BD8E4               ; 08106878
mov   r1,r4                     ; 0810687C
add   r1,0x6E                   ; 0810687E
mov   r0,0x22                   ; 08106880
strh  r0,[r1]                   ; 08106882
sub   r1,0x2C                   ; 08106884
mov   r0,0x80                   ; 08106886
lsl   r0,r0,0x2                 ; 08106888
strh  r0,[r1]                   ; 0810688A
mov   r0,0x13                   ; 0810688C
bl    SpawnSpriteMainLowestSlot ; 0810688E
lsl   r0,r0,0x18                ; 08106892
lsr   r1,r0,0x18                ; 08106894
cmp   r0,0x0                    ; 08106896
blt   @@Code08106904            ; 08106898
lsl   r0,r1,0x18                ; 0810689A
asr   r0,r0,0x18                ; 0810689C
mov   r1,0xB0                   ; 0810689E
mul   r0,r1                     ; 081068A0
mov   r2,0x95                   ; 081068A2
lsl   r2,r2,0x2                 ; 081068A4
add   r0,r0,r2                  ; 081068A6
ldr   r1,[r5]                   ; 081068A8
add   r2,r1,r0                  ; 081068AA
ldr   r3,=0x47E8                ; 081068AC
add   r0,r6,r3                  ; 081068AE
mov   r1,0x0                    ; 081068B0
ldsh  r0,[r0,r1]                ; 081068B2
strh  r0,[r2,0x20]              ; 081068B4
sub   r3,0x4                    ; 081068B6
add   r1,r6,r3                  ; 081068B8
mov   r3,0x0                    ; 081068BA
ldsh  r1,[r1,r3]                ; 081068BC
add   r0,r0,r1                  ; 081068BE
lsl   r0,r0,0x8                 ; 081068C0
str   r0,[r2]                   ; 081068C2
ldr   r1,=0x47F0                ; 081068C4
add   r0,r6,r1                  ; 081068C6
mov   r3,0x0                    ; 081068C8
ldsh  r0,[r0,r3]                ; 081068CA
strh  r0,[r2,0x22]              ; 081068CC
ldr   r3,=0x47EC                ; 081068CE
add   r1,r6,r3                  ; 081068D0
mov   r3,0x0                    ; 081068D2
ldsh  r1,[r1,r3]                ; 081068D4
add   r0,r0,r1                  ; 081068D6
lsl   r0,r0,0x8                 ; 081068D8
str   r0,[r2,0x4]               ; 081068DA
mov   r1,r2                     ; 081068DC
add   r1,0x72                   ; 081068DE
ldr   r0,=0x611F                ; 081068E0
strh  r0,[r1]                   ; 081068E2
mov   r0,r2                     ; 081068E4
add   r0,0x40                   ; 081068E6
mov   r1,r8                     ; 081068E8
strh  r1,[r0]                   ; 081068EA
mov   r1,r2                     ; 081068EC
add   r1,0x7A                   ; 081068EE
mov   r0,0x80                   ; 081068F0
lsl   r0,r0,0x4                 ; 081068F2
strh  r0,[r1]                   ; 081068F4
sub   r1,0x38                   ; 081068F6
ldr   r0,=0xFFFF                ; 081068F8
strh  r0,[r1]                   ; 081068FA
mov   r0,0xBF                   ; 081068FC
mov   r1,0x0                    ; 081068FE
bl    PlayYISound               ; 08106900
@@Code08106904:
bl    Sub080C9598               ; 08106904
b     @@Code08106946            ; 08106908
.pool                           ; 0810690A

@@Code08106928:
cmp   r1,0x3                    ; 08106928
bne   @@Code0810693C            ; 0810692A
mov   r1,r4                     ; 0810692C
add   r1,0x6E                   ; 0810692E
mov   r0,0x1E                   ; 08106930
strh  r0,[r1]                   ; 08106932
mov   r0,r4                     ; 08106934
bl    Sub08104380               ; 08106936
b     @@Code08106946            ; 0810693A
@@Code0810693C:
mov   r1,r4                     ; 0810693C
add   r1,0x6E                   ; 0810693E
ldrh  r0,[r1]                   ; 08106940
sub   r0,0x2                    ; 08106942
strh  r0,[r1]                   ; 08106944
@@Code08106946:
pop   {r3-r4}                   ; 08106946
mov   r8,r3                     ; 08106948
mov   r9,r4                     ; 0810694A
pop   {r4-r7}                   ; 0810694C
pop   {r0}                      ; 0810694E
bx    r0                        ; 08106950
.pool                           ; 08106952

Sub08106954:
push  {r4-r7,lr}                ; 08106954
mov   r7,r8                     ; 08106956
push  {r7}                      ; 08106958
ldr   r5,=Data081A7288          ; 0810695A
mov   r0,0x14                   ; 0810695C
add   r0,r0,r5                  ; 0810695E
mov   r8,r0                     ; 08106960
ldr   r6,=0x06014200            ; 08106962
cmp   r5,r8                     ; 08106964
bhs   @@Code08106990            ; 08106966
ldr   r7,=0x0201FC00            ; 08106968  decompressed graphics buffer
@@Code0810696A:
ldmia r5!,{r0}                  ; 0810696A
ldr   r0,[r0]                   ; 0810696C
mov   r1,r7                     ; 0810696E
bl    swi_LZ77_WRAM             ; 08106970  LZ77 decompress (WRAM)
ldr   r4,=0x02020000            ; 08106974
@@Code08106976:
ldr   r0,=0xFFFFFE00            ; 08106976
add   r4,r4,r0                  ; 08106978
ldr   r0,=0xFFFFFC00            ; 0810697A
add   r6,r6,r0                  ; 0810697C
mov   r0,r4                     ; 0810697E
mov   r1,r6                     ; 08106980
mov   r2,0x80                   ; 08106982
bl    swi_MemoryCopy32          ; 08106984  Memory copy/fill, 32-byte blocks
cmp   r4,r7                     ; 08106988
bhi   @@Code08106976            ; 0810698A
cmp   r5,r8                     ; 0810698C
blo   @@Code0810696A            ; 0810698E
@@Code08106990:
pop   {r3}                      ; 08106990
mov   r8,r3                     ; 08106992
pop   {r4-r7}                   ; 08106994
pop   {r0}                      ; 08106996
bx    r0                        ; 08106998
.pool                           ; 0810699A

Sub081069B4:
push  {r4,lr}                   ; 081069B4
ldr   r4,=Data082D0D8C          ; 081069B6
ldr   r1,=0x02010802            ; 081069B8
mov   r0,r4                     ; 081069BA
mov   r2,0xF                    ; 081069BC
bl    swi_MemoryCopy4or2        ; 081069BE  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x02010402            ; 081069C2
mov   r0,r4                     ; 081069C4
mov   r2,0xF                    ; 081069C6
bl    swi_MemoryCopy4or2        ; 081069C8  Memory copy/fill, 4- or 2-byte blocks
ldr   r0,=0x0F94                ; 081069CC
add   r4,r4,r0                  ; 081069CE
ldr   r1,=0x02010AC2            ; 081069D0
mov   r0,r4                     ; 081069D2
mov   r2,0xF                    ; 081069D4
bl    swi_MemoryCopy4or2        ; 081069D6  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x020106C2            ; 081069DA
mov   r0,r4                     ; 081069DC
mov   r2,0xF                    ; 081069DE
bl    swi_MemoryCopy4or2        ; 081069E0  Memory copy/fill, 4- or 2-byte blocks
pop   {r4}                      ; 081069E4
pop   {r0}                      ; 081069E6
bx    r0                        ; 081069E8
.pool                           ; 081069EA

Sub08106A04:
push  {r4-r7,lr}                ; 08106A04
mov   r7,r0                     ; 08106A06
ldr   r0,=0x03007240            ; 08106A08  Normal gameplay IWRAM (0300220C)
ldr   r0,[r0]                   ; 08106A0A
mov   r1,0x8C                   ; 08106A0C
lsl   r1,r1,0x2                 ; 08106A0E
add   r3,r0,r1                  ; 08106A10
mov   r0,r7                     ; 08106A12
add   r0,0x42                   ; 08106A14
ldrh  r6,[r0]                   ; 08106A16
cmp   r6,0x0                    ; 08106A18
beq   @@Code08106AB0            ; 08106A1A
cmp   r6,0x80                   ; 08106A1C
bne   @@Code08106A4A            ; 08106A1E
ldr   r2,=0x03002200            ; 08106A20
ldr   r3,=0x4071                ; 08106A22
add   r5,r2,r3                  ; 08106A24
ldrb  r4,[r5]                   ; 08106A26
ldr   r0,=0x4A48                ; 08106A28
add   r2,r2,r0                  ; 08106A2A
mov   r1,0x3                    ; 08106A2C
and   r1,r4                     ; 08106A2E
lsl   r1,r1,0x3                 ; 08106A30
ldrb  r3,[r2]                   ; 08106A32
mov   r0,0x19                   ; 08106A34
neg   r0,r0                     ; 08106A36
and   r0,r3                     ; 08106A38
orr   r0,r1                     ; 08106A3A
strb  r0,[r2]                   ; 08106A3C
mov   r0,0xFD                   ; 08106A3E
and   r0,r4                     ; 08106A40
strb  r0,[r5]                   ; 08106A42
mov   r0,0x1B                   ; 08106A44  1B: Bowser battle victory
bl    Sub0812C3B4               ; 08106A46  Change music (YI)
@@Code08106A4A:
lsr   r1,r6,0x1                 ; 08106A4A
cmp   r1,0x0                    ; 08106A4C
bne   @@Code08106A82            ; 08106A4E
ldr   r2,=0x03002200            ; 08106A50
ldr   r3,=0x48F7                ; 08106A52
add   r0,r2,r3                  ; 08106A54
strb  r1,[r0]                   ; 08106A56
ldr   r5,=0x47C6                ; 08106A58
add   r1,r2,r5                  ; 08106A5A
mov   r0,0x90                   ; 08106A5C
lsl   r0,r0,0x5                 ; 08106A5E
strh  r0,[r1]                   ; 08106A60
ldr   r0,=0x47CA                ; 08106A62
add   r3,r2,r0                  ; 08106A64
ldrh  r1,[r3]                   ; 08106A66
ldr   r0,=0xFFFC                ; 08106A68
and   r0,r1                     ; 08106A6A
mov   r1,0x2                    ; 08106A6C
orr   r0,r1                     ; 08106A6E
strh  r0,[r3]                   ; 08106A70
ldr   r3,=0x4888                ; 08106A72
add   r1,r2,r3                  ; 08106A74
mov   r0,0xBF                   ; 08106A76
strh  r0,[r1]                   ; 08106A78
add   r5,0xC6                   ; 08106A7A
add   r2,r2,r5                  ; 08106A7C
mov   r0,0x10                   ; 08106A7E
strh  r0,[r2]                   ; 08106A80
@@Code08106A82:
mov   r0,r7                     ; 08106A82
bl    Sub081034D0               ; 08106A84
b     @@Code08106B3E            ; 08106A88
.pool                           ; 08106A8A

@@Code08106AB0:
ldr   r2,=0x03006D80            ; 08106AB0
mov   r0,0x1A                   ; 08106AB2
strh  r0,[r2,0x30]              ; 08106AB4
mov   r1,0xD3                   ; 08106AB6
lsl   r1,r1,0x1                 ; 08106AB8
add   r0,r2,r1                  ; 08106ABA
strh  r6,[r0]                   ; 08106ABC
ldr   r4,=0x03002200            ; 08106ABE
ldr   r5,=0x47D4                ; 08106AC0
add   r0,r4,r5                  ; 08106AC2
mov   r5,0x0                    ; 08106AC4
ldsh  r1,[r0,r5]                ; 08106AC6
ldr   r0,=0x027F                ; 08106AC8
cmp   r1,r0                     ; 08106ACA
bhi   @@Code08106AF0            ; 08106ACC
add   r1,0x10                   ; 08106ACE
cmp   r1,r0                     ; 08106AD0
bls   @@Code08106AD8            ; 08106AD2
mov   r1,0xA0                   ; 08106AD4
lsl   r1,r1,0x2                 ; 08106AD6
@@Code08106AD8:
lsl   r0,r1,0x8                 ; 08106AD8
str   r0,[r3]                   ; 08106ADA
strh  r1,[r3,0x12]              ; 08106ADC
b     @@Code08106B3E            ; 08106ADE
.pool                           ; 08106AE0

@@Code08106AF0:
mov   r5,0x82                   ; 08106AF0
lsl   r5,r5,0x2                 ; 08106AF2
add   r0,r2,r5                  ; 08106AF4
strh  r1,[r0]                   ; 08106AF6
strh  r6,[r3,0x12]              ; 08106AF8
bl    Sub08106954               ; 08106AFA
bl    Sub081069B4               ; 08106AFE
mov   r0,r7                     ; 08106B02
bl    Sub08103058               ; 08106B04
mov   r0,r7                     ; 08106B08
bl    Sub08106B54               ; 08106B0A
ldr   r0,=0x487A                ; 08106B0E
add   r1,r4,r0                  ; 08106B10
mov   r0,0x1                    ; 08106B12
strh  r0,[r1]                   ; 08106B14
ldr   r3,=0x487C                ; 08106B16
add   r1,r4,r3                  ; 08106B18
mov   r0,0x2                    ; 08106B1A
strh  r0,[r1]                   ; 08106B1C
ldr   r5,=0x487E                ; 08106B1E
add   r0,r4,r5                  ; 08106B20
mov   r2,0x1E                   ; 08106B22
strh  r2,[r0]                   ; 08106B24
mov   r0,0x91                   ; 08106B26
lsl   r0,r0,0x7                 ; 08106B28
add   r1,r4,r0                  ; 08106B2A
ldr   r0,=0x0161                ; 08106B2C
strh  r0,[r1]                   ; 08106B2E
add   r3,0x6                    ; 08106B30
add   r1,r4,r3                  ; 08106B32
mov   r0,0xC2                   ; 08106B34
strh  r0,[r1]                   ; 08106B36
add   r5,0x6                    ; 08106B38
add   r0,r4,r5                  ; 08106B3A
strh  r2,[r0]                   ; 08106B3C
@@Code08106B3E:
pop   {r4-r7}                   ; 08106B3E
pop   {r0}                      ; 08106B40
bx    r0                        ; 08106B42
.pool                           ; 08106B44

Sub08106B54:
push  {r4-r6,lr}                ; 08106B54
mov   r5,r0                     ; 08106B56
ldr   r6,=0x03006D80            ; 08106B58
mov   r1,0xE4                   ; 08106B5A
lsl   r1,r1,0x1                 ; 08106B5C
add   r0,r6,r1                  ; 08106B5E
mov   r4,0x0                    ; 08106B60
strh  r4,[r0]                   ; 08106B62
sub   r1,0x22                   ; 08106B64
add   r0,r6,r1                  ; 08106B66
strh  r4,[r0]                   ; 08106B68
bl    Sub080C9584               ; 08106B6A
mov   r0,r6                     ; 08106B6E
add   r0,0x42                   ; 08106B70
strh  r4,[r0]                   ; 08106B72
mov   r0,0xB2                   ; 08106B74
lsl   r0,r0,0xA                 ; 08106B76
str   r0,[r6]                   ; 08106B78
mov   r0,0xF4                   ; 08106B7A
lsl   r0,r0,0xB                 ; 08106B7C
str   r0,[r6,0x4]               ; 08106B7E
mov   r0,0xD6                   ; 08106B80
lsl   r0,r0,0xA                 ; 08106B82
str   r0,[r5]                   ; 08106B84
mov   r0,0xA6                   ; 08106B86
lsl   r0,r0,0xA                 ; 08106B88
str   r0,[r5,0x4]               ; 08106B8A
str   r4,[r5,0x8]               ; 08106B8C
str   r4,[r5,0xC]               ; 08106B8E
mov   r0,0x40                   ; 08106B90
str   r0,[r5,0x14]              ; 08106B92
mov   r0,0x80                   ; 08106B94
lsl   r0,r0,0x3                 ; 08106B96
str   r0,[r5,0x1C]              ; 08106B98
mov   r1,r5                     ; 08106B9A
add   r1,0x76                   ; 08106B9C
mov   r0,0x47                   ; 08106B9E
strh  r0,[r1]                   ; 08106BA0
sub   r1,0x10                   ; 08106BA2
strh  r0,[r1]                   ; 08106BA4
add   r1,0x14                   ; 08106BA6
mov   r0,0x4E                   ; 08106BA8
strh  r0,[r1]                   ; 08106BAA
sub   r1,0x18                   ; 08106BAC
ldr   r0,=0xFFFF                ; 08106BAE
strh  r0,[r1]                   ; 08106BB0
mov   r0,r5                     ; 08106BB2
add   r0,0x40                   ; 08106BB4
strh  r4,[r0]                   ; 08106BB6
add   r1,0x36                   ; 08106BB8
mov   r0,0x2C                   ; 08106BBA
strb  r0,[r1]                   ; 08106BBC
pop   {r4-r6}                   ; 08106BBE
pop   {r0}                      ; 08106BC0
bx    r0                        ; 08106BC2
.pool                           ; 08106BC4

Sub08106BCC:
push  {r4,lr}                   ; 08106BCC
mov   r4,r0                     ; 08106BCE
bl    Sub081057AC               ; 08106BD0
ldrh  r1,[r4,0x3E]              ; 08106BD4
mov   r0,0x1                    ; 08106BD6
and   r0,r1                     ; 08106BD8
cmp   r0,0x0                    ; 08106BDA
beq   @@Code08106C04            ; 08106BDC
ldrh  r0,[r4,0x38]              ; 08106BDE
cmp   r0,0xF                    ; 08106BE0
bne   @@Code08106C04            ; 08106BE2
ldr   r1,=0x03002200            ; 08106BE4
ldr   r0,[r4]                   ; 08106BE6
asr   r0,r0,0x8                 ; 08106BE8
ldr   r3,=0x47E4                ; 08106BEA
add   r2,r1,r3                  ; 08106BEC
ldrh  r2,[r2]                   ; 08106BEE
sub   r0,r0,r2                  ; 08106BF0
ldr   r2,=0x4058                ; 08106BF2
add   r1,r1,r2                  ; 08106BF4
strh  r0,[r1]                   ; 08106BF6
mov   r0,0xA7                   ; 08106BF8
bl    PlayYISound               ; 08106BFA
mov   r0,r4                     ; 08106BFE
bl    Sub08105920               ; 08106C00
@@Code08106C04:
pop   {r4}                      ; 08106C04
pop   {r0}                      ; 08106C06
bx    r0                        ; 08106C08
.pool                           ; 08106C0A

Sub08106C18:
push  {r4,lr}                   ; 08106C18
mov   r4,r0                     ; 08106C1A
bl    Sub081057AC               ; 08106C1C
cmp   r0,0x0                    ; 08106C20
beq   @@Code08106C2E            ; 08106C22
mov   r1,r4                     ; 08106C24
add   r1,0x6E                   ; 08106C26
ldrh  r0,[r1]                   ; 08106C28
add   r0,0x1                    ; 08106C2A
strh  r0,[r1]                   ; 08106C2C
@@Code08106C2E:
pop   {r4}                      ; 08106C2E
pop   {r0}                      ; 08106C30
bx    r0                        ; 08106C32

Sub08106C34:
push  {r4-r5,lr}                ; 08106C34
mov   r5,r0                     ; 08106C36
add   r5,0x40                   ; 08106C38
ldrh  r4,[r5]                   ; 08106C3A
cmp   r4,0x0                    ; 08106C3C
bne   @@Code08106C7E            ; 08106C3E
ldr   r0,=0x0125                ; 08106C40
bl    Sub0804A23C               ; 08106C42
lsl   r0,r0,0x18                ; 08106C46
lsr   r1,r0,0x18                ; 08106C48
cmp   r0,0x0                    ; 08106C4A
blt   @@Code08106C7E            ; 08106C4C
ldr   r2,=0x03007240            ; 08106C4E  Normal gameplay IWRAM (0300220C)
lsl   r0,r1,0x18                ; 08106C50
asr   r0,r0,0x18                ; 08106C52
mov   r1,0xB0                   ; 08106C54
mul   r1,r0                     ; 08106C56
mov   r0,0x95                   ; 08106C58
lsl   r0,r0,0x2                 ; 08106C5A
add   r1,r1,r0                  ; 08106C5C
ldr   r0,[r2]                   ; 08106C5E
add   r0,r0,r1                  ; 08106C60
str   r4,[r0]                   ; 08106C62
ldrh  r0,[r5]                   ; 08106C64
add   r0,0x1                    ; 08106C66
strh  r0,[r5]                   ; 08106C68
ldr   r0,=0x03002200            ; 08106C6A
ldr   r2,=0x47D8                ; 08106C6C
add   r1,r0,r2                  ; 08106C6E
strh  r4,[r1]                   ; 08106C70
add   r2,0x8                    ; 08106C72
add   r1,r0,r2                  ; 08106C74
strh  r4,[r1]                   ; 08106C76
ldr   r1,=0x4888                ; 08106C78
add   r0,r0,r1                  ; 08106C7A
strh  r4,[r0]                   ; 08106C7C
@@Code08106C7E:
pop   {r4-r5}                   ; 08106C7E
pop   {r0}                      ; 08106C80
bx    r0                        ; 08106C82
.pool                           ; 08106C84

Sub08106C98:
push  {r4-r6,lr}                ; 08106C98
ldr   r0,=Data08264450          ; 08106C9A
ldr   r0,[r0]                   ; 08106C9C
ldr   r1,=0x0201FC00            ; 08106C9E  decompressed graphics buffer
bl    swi_LZ77_WRAM             ; 08106CA0  LZ77 decompress (WRAM)
ldr   r4,=0x02020400            ; 08106CA4
ldr   r6,=0x02020C00            ; 08106CA6
ldr   r5,=0x06012200            ; 08106CA8
@@Code08106CAA:
mov   r0,r4                     ; 08106CAA
mov   r1,r5                     ; 08106CAC
mov   r2,0x80                   ; 08106CAE
bl    swi_MemoryCopy32          ; 08106CB0  Memory copy/fill, 32-byte blocks
mov   r0,0x80                   ; 08106CB4
lsl   r0,r0,0x2                 ; 08106CB6
add   r4,r4,r0                  ; 08106CB8
mov   r0,0x80                   ; 08106CBA
lsl   r0,r0,0x3                 ; 08106CBC
add   r5,r5,r0                  ; 08106CBE
cmp   r4,r6                     ; 08106CC0
blo   @@Code08106CAA            ; 08106CC2
pop   {r4-r6}                   ; 08106CC4
pop   {r0}                      ; 08106CC6
bx    r0                        ; 08106CC8
.pool                           ; 08106CCA

Sub08106CE0:
push  {lr}                      ; 08106CE0
ldr   r0,=Data081A71AA          ; 08106CE2
ldr   r1,=0x020106C2            ; 08106CE4
mov   r2,0xF                    ; 08106CE6
bl    swi_MemoryCopy4or2        ; 08106CE8  Memory copy/fill, 4- or 2-byte blocks
ldr   r1,=0x03002200            ; 08106CEC
mov   r0,0x91                   ; 08106CEE
lsl   r0,r0,0x7                 ; 08106CF0
add   r2,r1,r0                  ; 08106CF2
ldr   r0,=0x0161                ; 08106CF4
strh  r0,[r2]                   ; 08106CF6
ldr   r0,=0x4882                ; 08106CF8
add   r2,r1,r0                  ; 08106CFA
mov   r0,0xC2                   ; 08106CFC
strh  r0,[r2]                   ; 08106CFE
ldr   r0,=0x4884                ; 08106D00
add   r1,r1,r0                  ; 08106D02
mov   r0,0x1E                   ; 08106D04
strh  r0,[r1]                   ; 08106D06
pop   {r0}                      ; 08106D08
bx    r0                        ; 08106D0A
.pool                           ; 08106D0C

Sub08106D24:
push  {r4,lr}                   ; 08106D24
mov   r4,r0                     ; 08106D26
bl    Sub08106C98               ; 08106D28
bl    Sub08106CE0               ; 08106D2C
add   r4,0x6E                   ; 08106D30
ldrh  r0,[r4]                   ; 08106D32
add   r0,0x1                    ; 08106D34
mov   r3,0x0                    ; 08106D36
strh  r0,[r4]                   ; 08106D38
ldr   r1,=0x03006D80            ; 08106D3A
ldr   r0,=0x020A                ; 08106D3C
add   r2,r1,r0                  ; 08106D3E
mov   r0,0x90                   ; 08106D40
lsl   r0,r0,0x3                 ; 08106D42
strh  r0,[r2]                   ; 08106D44
mov   r0,0x26                   ; 08106D46
strh  r0,[r1,0x30]              ; 08106D48
mov   r2,0x80                   ; 08106D4A
lsl   r2,r2,0x1                 ; 08106D4C
add   r0,r1,r2                  ; 08106D4E
strh  r3,[r0]                   ; 08106D50
mov   r0,0xFA                   ; 08106D52
lsl   r0,r0,0x1                 ; 08106D54
add   r1,r1,r0                  ; 08106D56
strh  r3,[r1]                   ; 08106D58
pop   {r4}                      ; 08106D5A
pop   {r0}                      ; 08106D5C
bx    r0                        ; 08106D5E
.pool                           ; 08106D60

Sub08106D68:
push  {lr}                      ; 08106D68
mov   r0,0x40                   ; 08106D6A
bl    Sub0804A23C               ; 08106D6C
ldr   r2,=0x03007240            ; 08106D70  Normal gameplay IWRAM (0300220C)
lsl   r0,r0,0x18                ; 08106D72
asr   r0,r0,0x18                ; 08106D74
mov   r1,0xB0                   ; 08106D76
mul   r0,r1                     ; 08106D78
mov   r1,0x95                   ; 08106D7A
lsl   r1,r1,0x2                 ; 08106D7C
add   r0,r0,r1                  ; 08106D7E
ldr   r1,[r2]                   ; 08106D80
add   r1,r1,r0                  ; 08106D82
mov   r0,0x9E                   ; 08106D84
lsl   r0,r0,0xB                 ; 08106D86
str   r0,[r1]                   ; 08106D88
mov   r0,0xF4                   ; 08106D8A
lsl   r0,r0,0xB                 ; 08106D8C
str   r0,[r1,0x4]               ; 08106D8E
pop   {r0}                      ; 08106D90
bx    r0                        ; 08106D92
.pool                           ; 08106D94

Sub08106D98:
push  {lr}                      ; 08106D98
mov   r0,0x41                   ; 08106D9A
bl    Sub0804A23C               ; 08106D9C
ldr   r2,=0x03007240            ; 08106DA0  Normal gameplay IWRAM (0300220C)
lsl   r0,r0,0x18                ; 08106DA2
asr   r0,r0,0x18                ; 08106DA4
mov   r1,0xB0                   ; 08106DA6
mul   r0,r1                     ; 08106DA8
mov   r1,0x95                   ; 08106DAA
lsl   r1,r1,0x2                 ; 08106DAC
add   r0,r0,r1                  ; 08106DAE
ldr   r1,[r2]                   ; 08106DB0
add   r1,r1,r0                  ; 08106DB2
mov   r0,0xA6                   ; 08106DB4
lsl   r0,r0,0xB                 ; 08106DB6
str   r0,[r1]                   ; 08106DB8
ldr   r0,=0x00073200            ; 08106DBA
str   r0,[r1,0x4]               ; 08106DBC
pop   {r0}                      ; 08106DBE
bx    r0                        ; 08106DC0
.pool                           ; 08106DC2

Sub08106DCC:
push  {r4-r7,lr}                ; 08106DCC
add   sp,-0xC                   ; 08106DCE
mov   r4,0x0                    ; 08106DD0
str   r4,[sp]                   ; 08106DD2
ldr   r5,=0x06005000            ; 08106DD4
ldr   r2,=0x01001388            ; 08106DD6
mov   r0,sp                     ; 08106DD8
mov   r1,r5                     ; 08106DDA
bl    swi_MemoryCopy32          ; 08106DDC  Memory copy/fill, 32-byte blocks
str   r4,[sp,0x4]               ; 08106DE0
add   r0,sp,0x4                 ; 08106DE2
ldr   r1,=0x06009FE0            ; 08106DE4
ldr   r2,=0x01000008            ; 08106DE6
bl    swi_MemoryCopy32          ; 08106DE8  Memory copy/fill, 32-byte blocks
ldr   r0,=0x03002200            ; 08106DEC
ldr   r1,=0x47CE                ; 08106DEE
add   r0,r0,r1                  ; 08106DF0
ldr   r1,=0x9A04                ; 08106DF2
strh  r1,[r0]                   ; 08106DF4
ldr   r4,=0x0600D000            ; 08106DF6
ldr   r0,=0x02FF02FF            ; 08106DF8
str   r0,[sp,0x8]               ; 08106DFA
add   r0,sp,0x8                 ; 08106DFC
ldr   r2,=0x01000400            ; 08106DFE
mov   r1,r4                     ; 08106E00
bl    swi_MemoryCopy32          ; 08106E02  Memory copy/fill, 32-byte blocks
mov   r7,0x80                   ; 08106E06
mov   r0,0xD0                   ; 08106E08
lsl   r0,r0,0x3                 ; 08106E0A
add   r4,r4,r0                  ; 08106E0C
ldr   r0,=0x0300702C            ; 08106E0E  Sprite RAM structs (03002460)
ldr   r0,[r0]                   ; 08106E10
ldr   r1,=0x1130                ; 08106E12
add   r6,r0,r1                  ; 08106E14  [0300702C]+1130 (03003590): ending message struct?
ldr   r2,=Data082F5D11          ; 08106E16  Ending message pointer
mov   r0,r6                     ; 08106E18
mov   r1,r5                     ; 08106E1A
bl    Sub081071AC               ; 08106E1C  Init ending message struct
@@Code08106E20:
mov   r0,r6                     ; 08106E20
bl    Sub08107284               ; 08106E22  Process ending message line, ending at command
mov   r5,r0                     ; 08106E26  r5 = returned command ID
mov   r0,r6                     ; 08106E28
bl    Sub081072E4               ; 08106E2A  ldrh r0,[r0,#0xA]
cmp   r0,0x0                    ; 08106E2E
bne   @@Code08106E70            ; 08106E30
mov   r0,r6                     ; 08106E32
bl    Sub081072E8               ; 08106E34  add 10 to [r0+8]
add   r4,0x80                   ; 08106E38
b     @@Code08106E96            ; 08106E3A
.pool                           ; 08106E3C

@@Code08106E70:
mov   r3,r4                     ; 08106E70 \ runs if line width is nonzero
add   r3,0x80                   ; 08106E72
cmp   r4,r3                     ; 08106E74
bhs   @@Code08106E96            ; 08106E76
@@Code08106E78:
mov   r1,r4                     ; 08106E78
mov   r0,r1                     ; 08106E7A
add   r0,0x32                   ; 08106E7C
mov   r2,r1                     ; 08106E7E
add   r2,0x40                   ; 08106E80
cmp   r1,r0                     ; 08106E82
bhs   @@Code08106E90            ; 08106E84
@@Code08106E86:
strh  r7,[r1]                   ; 08106E86
add   r7,0x1                    ; 08106E88
add   r1,0x2                    ; 08106E8A
cmp   r1,r0                     ; 08106E8C
blo   @@Code08106E86            ; 08106E8E
@@Code08106E90:
mov   r4,r2                     ; 08106E90
cmp   r4,r3                     ; 08106E92
blo   @@Code08106E78            ; 08106E94 /
@@Code08106E96:
cmp   r5,0xFF                   ; 08106E96
bne   @@Code08106E20            ; 08106E98
add   sp,0xC                    ; 08106E9A
pop   {r4-r7}                   ; 08106E9C
pop   {r0}                      ; 08106E9E
bx    r0                        ; 08106EA0
.pool                           ; 08106EA2

Sub08106EA4:
push  {r4,lr}                   ; 08106EA4
mov   r4,r0                     ; 08106EA6
bl    Sub08106DCC               ; 08106EA8
mov   r1,r4                     ; 08106EAC
add   r1,0x6E                   ; 08106EAE
ldrh  r0,[r1]                   ; 08106EB0
add   r0,0x1                    ; 08106EB2
mov   r3,0x0                    ; 08106EB4
strh  r0,[r1]                   ; 08106EB6
mov   r0,r4                     ; 08106EB8
add   r0,0x6A                   ; 08106EBA
strh  r3,[r0]                   ; 08106EBC
sub   r1,0x2C                   ; 08106EBE
mov   r0,0xA4                   ; 08106EC0
lsl   r0,r0,0x4                 ; 08106EC2
strh  r0,[r1]                   ; 08106EC4
add   r1,0x2                    ; 08106EC6
mov   r0,0xC0                   ; 08106EC8
lsl   r0,r0,0x2                 ; 08106ECA
strh  r0,[r1]                   ; 08106ECC
ldr   r0,=0x02010802            ; 08106ECE
ldr   r2,=0x7FFF                ; 08106ED0
mov   r1,r2                     ; 08106ED2
strh  r1,[r0]                   ; 08106ED4
ldr   r0,=0x02010402            ; 08106ED6
strh  r1,[r0]                   ; 08106ED8
ldr   r1,=0x03002200            ; 08106EDA
ldr   r4,=0x487A                ; 08106EDC
add   r2,r1,r4                  ; 08106EDE
mov   r0,0x1                    ; 08106EE0
strh  r0,[r2]                   ; 08106EE2
ldr   r2,=0x487C                ; 08106EE4
add   r0,r1,r2                  ; 08106EE6
mov   r2,0x2                    ; 08106EE8
strh  r2,[r0]                   ; 08106EEA
add   r4,0x4                    ; 08106EEC
add   r0,r1,r4                  ; 08106EEE
strh  r2,[r0]                   ; 08106EF0
ldr   r2,=0x47D8                ; 08106EF2
add   r0,r1,r2                  ; 08106EF4
ldr   r2,=0xFFEC                ; 08106EF6
strh  r2,[r0]                   ; 08106EF8
sub   r4,0x96                   ; 08106EFA
add   r0,r1,r4                  ; 08106EFC
strh  r2,[r0]                   ; 08106EFE
ldr   r2,=0x47E0                ; 08106F00
add   r0,r1,r2                  ; 08106F02
strh  r3,[r0]                   ; 08106F04
add   r4,0x8                    ; 08106F06
add   r0,r1,r4                  ; 08106F08
strh  r3,[r0]                   ; 08106F0A
ldr   r0,=0x47C6                ; 08106F0C
add   r2,r1,r0                  ; 08106F0E
mov   r0,0xD0                   ; 08106F10
lsl   r0,r0,0x5                 ; 08106F12
strh  r0,[r2]                   ; 08106F14
add   r4,0x98                   ; 08106F16
add   r2,r1,r4                  ; 08106F18
mov   r0,0xF2                   ; 08106F1A
strh  r0,[r2]                   ; 08106F1C
ldr   r0,=0x488C                ; 08106F1E
add   r1,r1,r0                  ; 08106F20
strh  r3,[r1]                   ; 08106F22
bl    Sub08106D68               ; 08106F24
bl    Sub08106D98               ; 08106F28
pop   {r4}                      ; 08106F2C
pop   {r0}                      ; 08106F2E
bx    r0                        ; 08106F30
.pool                           ; 08106F32

Sub08106F60:
push  {r4-r6,lr}                ; 08106F60
mov   r6,r0                     ; 08106F62
ldr   r5,=0x03002200            ; 08106F64
ldr   r0,=0x47E0                ; 08106F66
add   r3,r5,r0                  ; 08106F68
ldrh  r2,[r3]                   ; 08106F6A
ldr   r0,=0x01AF                ; 08106F6C
cmp   r2,r0                     ; 08106F6E
bhi   @@Code08106FB4            ; 08106F70
mov   r1,r6                     ; 08106F72
add   r1,0x44                   ; 08106F74
ldrh  r0,[r1]                   ; 08106F76
cmp   r0,0x0                    ; 08106F78
bne   @@Code0810702E            ; 08106F7A
add   r0,r2,0x1                 ; 08106F7C
strh  r0,[r3]                   ; 08106F7E
mov   r0,0x4                    ; 08106F80
strh  r0,[r1]                   ; 08106F82
mov   r3,r6                     ; 08106F84
add   r3,0x6A                   ; 08106F86
ldrh  r2,[r3]                   ; 08106F88
lsr   r1,r2,0x4                 ; 08106F8A
ldr   r4,=0x488C                ; 08106F8C
add   r0,r5,r4                  ; 08106F8E
strh  r1,[r0]                   ; 08106F90
add   r2,0x2                    ; 08106F92
mov   r0,0x80                   ; 08106F94
lsl   r0,r0,0x1                 ; 08106F96
cmp   r2,r0                     ; 08106F98
bls   @@Code08106F9E            ; 08106F9A
mov   r2,r0                     ; 08106F9C
@@Code08106F9E:
strh  r2,[r3]                   ; 08106F9E
b     @@Code0810702E            ; 08106FA0
.pool                           ; 08106FA2

@@Code08106FB4:
mov   r0,r6                     ; 08106FB4
add   r0,0x42                   ; 08106FB6
ldrh  r4,[r0]                   ; 08106FB8
cmp   r4,0x0                    ; 08106FBA
bne   @@Code0810702E            ; 08106FBC
ldr   r1,=0x47C6                ; 08106FBE
add   r0,r5,r1                  ; 08106FC0
strh  r4,[r0]                   ; 08106FC2
ldr   r2,=0x4010                ; 08106FC4
add   r0,r5,r2                  ; 08106FC6
bl    Sub0810B38C               ; 08106FC8
ldr   r1,=0x4A48                ; 08106FCC
add   r0,r5,r1                  ; 08106FCE
ldrb  r0,[r0]                   ; 08106FD0
lsl   r0,r0,0x1B                ; 08106FD2
lsr   r0,r0,0x1E                ; 08106FD4
ldr   r2,=0x4071                ; 08106FD6
add   r1,r5,r2                  ; 08106FD8
strb  r0,[r1]                   ; 08106FDA
ldr   r0,=0x02010400            ; 08106FDC
strh  r4,[r0]                   ; 08106FDE
ldr   r1,=0x487A                ; 08106FE0
add   r0,r5,r1                  ; 08106FE2
strh  r4,[r0]                   ; 08106FE4
ldr   r2,=0x487C                ; 08106FE6
add   r0,r5,r2                  ; 08106FE8
strh  r4,[r0]                   ; 08106FEA
ldr   r4,=0x487E                ; 08106FEC
add   r1,r5,r4                  ; 08106FEE
mov   r0,0x2                    ; 08106FF0
strh  r0,[r1]                   ; 08106FF2
mov   r0,0x1                    ; 08106FF4
bl    Sub0812C504               ; 08106FF6
ldr   r0,=0x4888                ; 08106FFA
add   r1,r5,r0                  ; 08106FFC
mov   r0,0xFF                   ; 08106FFE
strh  r0,[r1]                   ; 08107000
ldr   r1,=0x48FA                ; 08107002
add   r0,r5,r1                  ; 08107004
mov   r1,0x10                   ; 08107006
strb  r1,[r0]                   ; 08107008
ldr   r2,=0x488C                ; 0810700A
add   r0,r5,r2                  ; 0810700C
strh  r1,[r0]                   ; 0810700E
sub   r4,0xBC                   ; 08107010
add   r1,r5,r4                  ; 08107012
ldr   r0,=0x2001                ; 08107014
strh  r0,[r1]                   ; 08107016
ldr   r0,=0x47C4                ; 08107018
add   r1,r5,r0                  ; 0810701A
mov   r0,0x8                    ; 0810701C
strh  r0,[r1]                   ; 0810701E
add   r2,0x79                   ; 08107020
add   r1,r5,r2                  ; 08107022
mov   r0,0x23                   ; 08107024
strb  r0,[r1]                   ; 08107026
mov   r0,r6                     ; 08107028
bl    Sub0804A6F8               ; 0810702A
@@Code0810702E:
pop   {r4-r6}                   ; 0810702E
pop   {r0}                      ; 08107030
bx    r0                        ; 08107032
.pool                           ; 08107034

Sub08107068:
push  {r4-r7,lr}                ; 08107068
mov   r7,r9                     ; 0810706A
mov   r6,r8                     ; 0810706C
push  {r6-r7}                   ; 0810706E
mov   r12,r0                    ; 08107070
mov   r7,r1                     ; 08107072
ldr   r1,=0x03002200            ; 08107074
ldr   r2,=0x47FE                ; 08107076
add   r0,r1,r2                  ; 08107078
ldrh  r2,[r0]                   ; 0810707A
lsr   r2,r2,0x2                 ; 0810707C
lsl   r3,r2,0x3                 ; 0810707E
mov   r4,0xE0                   ; 08107080
lsl   r4,r4,0x6                 ; 08107082
add   r0,r1,r4                  ; 08107084
add   r3,r3,r0                  ; 08107086
ldr   r0,=0x4802                ; 08107088
add   r1,r1,r0                  ; 0810708A
ldrh  r0,[r1]                   ; 0810708C
lsl   r0,r0,0x3                 ; 0810708E
add   r6,r3,r0                  ; 08107090
lsl   r2,r2,0x2                 ; 08107092
ldr   r1,=0x0202C8B0            ; 08107094
add   r5,r2,r1                  ; 08107096
cmp   r3,r6                     ; 08107098
bhs   @@Code0810710C            ; 0810709A
ldr   r2,=0xFFFFFE00            ; 0810709C
mov   r9,r2                     ; 0810709E
mov   r4,0x4                    ; 081070A0
neg   r4,r4                     ; 081070A2
mov   r8,r4                     ; 081070A4
@@Code081070A6:
mov   r1,0x0                    ; 081070A6
ldsh  r0,[r5,r1]                ; 081070A8
mov   r4,r12                    ; 081070AA
add   r2,r0,r4                  ; 081070AC
mov   r1,0x2                    ; 081070AE
ldsh  r0,[r5,r1]                ; 081070B0
add   r4,r0,r7                  ; 081070B2
mov   r1,r2                     ; 081070B4
add   r1,0x40                   ; 081070B6
ldr   r0,=0x017F                ; 081070B8
cmp   r1,r0                     ; 081070BA
bhi   @@Code081070F8            ; 081070BC
mov   r0,r4                     ; 081070BE
add   r0,0x20                   ; 081070C0
cmp   r0,0xDF                   ; 081070C2
bhi   @@Code081070F8            ; 081070C4
ldr   r1,=0x01FF                ; 081070C6
mov   r0,r1                     ; 081070C8
and   r2,r0                     ; 081070CA
ldrh  r1,[r3,0x2]               ; 081070CC
mov   r0,r9                     ; 081070CE
and   r0,r1                     ; 081070D0
orr   r0,r2                     ; 081070D2
strh  r0,[r3,0x2]               ; 081070D4
strb  r4,[r3]                   ; 081070D6
b     @@Code08107104            ; 081070D8
.pool                           ; 081070DA

@@Code081070F8:
ldrb  r0,[r3,0x1]               ; 081070F8
mov   r1,r8                     ; 081070FA
and   r1,r0                     ; 081070FC
mov   r0,0x2                    ; 081070FE
orr   r1,r0                     ; 08107100
strb  r1,[r3,0x1]               ; 08107102
@@Code08107104:
add   r5,0x4                    ; 08107104
add   r3,0x8                    ; 08107106
cmp   r3,r6                     ; 08107108
blo   @@Code081070A6            ; 0810710A
@@Code0810710C:
pop   {r3-r4}                   ; 0810710C
mov   r8,r3                     ; 0810710E
mov   r9,r4                     ; 08107110
pop   {r4-r7}                   ; 08107112
pop   {r0}                      ; 08107114
bx    r0                        ; 08107116

Sub08107118:
push  {r4-r6,lr}                ; 08107118
ldr   r5,=0x030069F4            ; 0810711A
ldrh  r1,[r5,0x2]               ; 0810711C
ldrh  r0,[r5,0x6]               ; 0810711E
sub   r1,r1,r0                  ; 08107120
mov   r2,0x80                   ; 08107122
lsl   r2,r2,0x1                 ; 08107124
add   r0,r1,r2                  ; 08107126
strh  r0,[r5,0x12]              ; 08107128
lsl   r0,r0,0x10                ; 0810712A
cmp   r0,0x0                    ; 0810712C
bne   @@Code08107136            ; 0810712E
ldr   r3,=0x0101                ; 08107130
add   r0,r1,r3                  ; 08107132
strh  r0,[r5,0x12]              ; 08107134
@@Code08107136:
mov   r0,0x80                   ; 08107136
lsl   r0,r0,0x9                 ; 08107138
ldrh  r1,[r5,0x12]              ; 0810713A
bl    swi_Divide                ; 0810713C
strh  r0,[r5,0xC]               ; 08107140
mov   r0,r5                     ; 08107142
sub   r0,0x20                   ; 08107144
ldrh  r3,[r5,0x2]               ; 08107146
ldrh  r1,[r0]                   ; 08107148
mov   r6,0x18                   ; 0810714A
neg   r6,r6                     ; 0810714C
add   r6,r6,r5                  ; 0810714E
mov   r12,r6                    ; 08107150
ldrh  r4,[r5,0x4]               ; 08107152
ldrh  r0,[r5,0x6]               ; 08107154
sub   r0,r0,r1                  ; 08107156
sub   r0,0x70                   ; 08107158
mov   r6,0xC                    ; 0810715A
ldsh  r2,[r5,r6]                ; 0810715C
lsl   r0,r0,0x10                ; 0810715E
asr   r0,r0,0x10                ; 08107160
mul   r0,r2                     ; 08107162
lsl   r0,r0,0x8                 ; 08107164
lsr   r0,r0,0x10                ; 08107166
add   r1,0x70                   ; 08107168
add   r0,r0,r1                  ; 0810716A
lsl   r0,r0,0x10                ; 0810716C
lsr   r0,r0,0x10                ; 0810716E
sub   r0,r0,r3                  ; 08107170
strh  r0,[r5,0x2]               ; 08107172
mov   r0,r12                    ; 08107174
ldrh  r1,[r0]                   ; 08107176
sub   r0,r4,r1                  ; 08107178
sub   r0,0x68                   ; 0810717A
lsl   r0,r0,0x10                ; 0810717C
asr   r0,r0,0x10                ; 0810717E
mul   r0,r2                     ; 08107180
lsl   r0,r0,0x8                 ; 08107182
lsr   r0,r0,0x10                ; 08107184
add   r1,0x68                   ; 08107186
add   r0,r0,r1                  ; 08107188
lsl   r0,r0,0x10                ; 0810718A
lsr   r0,r0,0x10                ; 0810718C
sub   r0,r0,r4                  ; 0810718E
strh  r0,[r5,0x4]               ; 08107190
mov   r6,0x2                    ; 08107192
ldsh  r0,[r5,r6]                ; 08107194
mov   r2,0x4                    ; 08107196
ldsh  r1,[r5,r2]                ; 08107198
bl    Sub08107068               ; 0810719A
pop   {r4-r6}                   ; 0810719E
pop   {r0}                      ; 081071A0
bx    r0                        ; 081071A2
.pool                           ; 081071A4

Sub081071AC:
; Initialize ending message struct
; r0: 03003590
; r1: 06005000
; r2: pointer to ending message
str   r1,[r0]                   ; 081071AC
str   r2,[r0,0x4]               ; 081071AE
mov   r1,0x0                    ; 081071B0
strh  r1,[r0,0x8]               ; 081071B2
strh  r1,[r0,0xA]               ; 081071B4
bx    lr                        ; 081071B6

Sub081071B8:
push  {r4,lr}                   ; 081071B8
mov   r3,r0                     ; 081071BA
mov   r4,r1                     ; 081071BC
cmp   r4,0xC7                   ; 081071BE
bhi   @@Code081071F6            ; 081071C0
cmp   r2,0xC7                   ; 081071C2
bhi   @@Code081071F6            ; 081071C4
lsr   r1,r2,0x3                 ; 081071C6
lsl   r0,r1,0x1                 ; 081071C8
add   r0,r0,r1                  ; 081071CA
lsl   r0,r0,0x3                 ; 081071CC
add   r0,r0,r1                  ; 081071CE
lsl   r0,r0,0x5                 ; 081071D0
add   r3,r3,r0                  ; 081071D2
lsr   r0,r4,0x3                 ; 081071D4
lsl   r0,r0,0x5                 ; 081071D6
add   r3,r3,r0                  ; 081071D8
mov   r1,0x7                    ; 081071DA
and   r2,r1                     ; 081071DC
lsl   r0,r2,0x2                 ; 081071DE
add   r3,r3,r0                  ; 081071E0
ldr   r2,[r3]                   ; 081071E2
and   r1,r4                     ; 081071E4
lsl   r1,r1,0x2                 ; 081071E6
mov   r0,0xF                    ; 081071E8
lsl   r0,r1                     ; 081071EA
bic   r2,r0                     ; 081071EC
mov   r0,0x1                    ; 081071EE
lsl   r0,r1                     ; 081071F0
orr   r2,r0                     ; 081071F2
str   r2,[r3]                   ; 081071F4
@@Code081071F6:
pop   {r4}                      ; 081071F6
pop   {r0}                      ; 081071F8
bx    r0                        ; 081071FA

Sub081071FC:
push  {r4-r7,lr}                ; 081071FC
mov   r7,r8                     ; 081071FE
push  {r7}                      ; 08107200
mov   r8,r0                     ; 08107202
mov   r4,r1                     ; 08107204
mov   r6,r2                     ; 08107206
mov   r7,r3                     ; 08107208
ldr   r5,[sp,0x18]              ; 0810720A
cmp   r4,r6                     ; 0810720C
bhs   @@Code08107226            ; 0810720E
@@Code08107210:
cmp   r5,0x0                    ; 08107210
bge   @@Code0810721E            ; 08107212
mov   r0,r8                     ; 08107214
mov   r1,r4                     ; 08107216
mov   r2,r7                     ; 08107218
bl    Sub081071B8               ; 0810721A
@@Code0810721E:
lsl   r5,r5,0x1                 ; 0810721E
add   r4,0x1                    ; 08107220
cmp   r4,r6                     ; 08107222
blo   @@Code08107210            ; 08107224
@@Code08107226:
pop   {r3}                      ; 08107226
mov   r8,r3                     ; 08107228
pop   {r4-r7}                   ; 0810722A
pop   {r0}                      ; 0810722C
bx    r0                        ; 0810722E

Sub08107230:
push  {r4-r7,lr}                ; 08107230
mov   r7,r9                     ; 08107232
mov   r6,r8                     ; 08107234
push  {r6-r7}                   ; 08107236
add   sp,-0x4                   ; 08107238
mov   r9,r0                     ; 0810723A
mov   r7,r2                     ; 0810723C
mov   r4,r3                     ; 0810723E
ldr   r2,[sp,0x20]              ; 08107240
lsl   r0,r2,0x1                 ; 08107242
add   r0,r0,r2                  ; 08107244
lsl   r0,r0,0x2                 ; 08107246
ldr   r2,=Data082F63CC          ; 08107248
add   r5,r0,r2                  ; 0810724A
add   r1,r1,r7                  ; 0810724C
mov   r8,r1                     ; 0810724E
mov   r6,r4                     ; 08107250
add   r6,0xC                    ; 08107252
cmp   r4,r6                     ; 08107254
bhs   @@Code08107272            ; 08107256
@@Code08107258:
ldrb  r0,[r5]                   ; 08107258
lsl   r0,r0,0x18                ; 0810725A
add   r5,0x1                    ; 0810725C
str   r0,[sp]                   ; 0810725E
mov   r0,r9                     ; 08107260
mov   r1,r7                     ; 08107262
mov   r2,r8                     ; 08107264
mov   r3,r4                     ; 08107266
bl    Sub081071FC               ; 08107268
add   r4,0x1                    ; 0810726C
cmp   r4,r6                     ; 0810726E
blo   @@Code08107258            ; 08107270
@@Code08107272:
add   sp,0x4                    ; 08107272
pop   {r3-r4}                   ; 08107274
mov   r8,r3                     ; 08107276
mov   r9,r4                     ; 08107278
pop   {r4-r7}                   ; 0810727A
pop   {r0}                      ; 0810727C
bx    r0                        ; 0810727E
.pool                           ; 08107280

Sub08107284:
; subroutine: Process ending message line
; r0: 03003590
push  {r4-r7,lr}                ; 08107284
add   sp,-0x4                   ; 08107286
mov   r5,r0                     ; 08107288
mov   r6,0x0                    ; 0810728A
ldr   r7,[r5]                   ; 0810728C  VRAM pointer
@@Code0810728E:
ldr   r0,[r5,0x4]               ; 0810728E  pointer to current character
ldrb  r1,[r0]                   ; 08107290  r1 = character ID
add   r0,0x1                    ; 08107292 \
str   r0,[r5,0x4]               ; 08107294 / increment pointer
cmp   r1,0xFF                   ; 08107296
bne   @@Code081072C0            ; 08107298
                                ;           runs if FF: command then return
ldrb  r1,[r0]                   ; 0810729A  load command byte
add   r0,0x1                    ; 0810729C \ increment pointer again
str   r0,[r5,0x4]               ; 0810729E /
cmp   r1,0xA                    ; 081072A0
beq   @@Code081072B4            ; 081072A2
cmp   r1,0x9                    ; 081072A4
bne   @@Code081072AE            ; 081072A6
                                ;          \ command 09
ldrh  r0,[r5,0x8]               ; 081072A8  \
add   r0,0x10                   ; 081072AA  | add 10 to Y position
strh  r0,[r5,0x8]               ; 081072AC  /
@@Code081072AE:
                                ;          ; any other command jumps here
strh  r6,[r5,0xA]               ; 081072AE  [0300359A] = width
mov   r0,r1                     ; 081072B0
b     @@Code081072DC            ; 081072B2 / return command ID
@@Code081072B4:
                                ;          \ command 0A
strh  r6,[r5,0xA]               ; 081072B4  [0300359A] = width
ldrh  r0,[r5,0x8]               ; 081072B6  \
add   r0,0x10                   ; 081072B8  | add 10 to Y position
strh  r0,[r5,0x8]               ; 081072BA  /
mov   r0,0xA                    ; 081072BC
b     @@Code081072DC            ; 081072BE / return command ID
@@Code081072C0:
                                ;          \ runs if not FF: load character then loop
ldr   r0,=Data082F62CC          ; 081072C0  character width table
add   r0,r1,r0                  ; 081072C2
ldrb  r4,[r0]                   ; 081072C4  character width
ldrh  r3,[r5,0x8]               ; 081072C6
str   r1,[sp]                   ; 081072C8
mov   r0,r7                     ; 081072CA  r0 = VRAM pointer
mov   r1,r4                     ; 081072CC  r1 = width
mov   r2,r6                     ; 081072CE  r2 = X position
bl    Sub08107230               ; 081072D0
add   r6,r6,r4                  ; 081072D4  r6 (X pos) += width
b     @@Code0810728E            ; 081072D6 / loop
.pool                           ; 081072D8

@@Code081072DC:
add   sp,0x4                    ; 081072DC
pop   {r4-r7}                   ; 081072DE
pop   {r1}                      ; 081072E0
bx    r1                        ; 081072E2

Sub081072E4:
ldrh  r0,[r0,0xA]               ; 081072E4
bx    lr                        ; 081072E6

Sub081072E8:
ldrh  r1,[r0,0x8]               ; 081072E8
sub   r1,0x10                   ; 081072EA
strh  r1,[r0,0x8]               ; 081072EC
bx    lr                        ; 081072EE
